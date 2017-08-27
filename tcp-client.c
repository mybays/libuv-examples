#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include <uv.h>

static uv_timer_t pacemaker;

static char* _command = "hello world";


void alloc_buffer(uv_handle_t *handle, size_t suggested_size,uv_buf_t* buf)
{
  //printf("debug:buf0:%p,%p,%ld\r\n",buf,buf->base,buf->len);
  *buf=uv_buf_init((char*) malloc(suggested_size), suggested_size);
  //printf("debug:buf1:%p,%p,%ld\r\n",buf,buf->base,buf->len);
  //uv_buf_init前后的buf指针是一样的,为什么?
  //buf->base才是变化的
  //tcmalloc优化
}

static void on_write(uv_write_t* req, int status)
{
	free(req->data);
	free(req);
	if (status < 0)
	{
		printf("error:%s:%d:%s:%s\r\n",__FUNCTION__,status,uv_strerror(status),uv_err_name(status));
		uv_read_stop((uv_stream_t*)req->handle);
		uv_close((uv_handle_t*)req->handle, NULL);
		uv_timer_stop(&pacemaker);
		uv_loop_close(uv_default_loop());
	}
}


void on_read(uv_stream_t *stream, ssize_t nread, const uv_buf_t* buf)
{
  if (nread < 0)
  {
    if(nread == UV__EOF)
    {
      printf("remote closed.\r\n");
    }

    fprintf(stderr, "Read error!\n");
    uv_close((uv_handle_t*)stream, NULL);
    uv_timer_stop(&pacemaker);
    uv_read_stop(stream);
    uv_loop_close(uv_default_loop());
    return;
  }

  if (nread == 0)
  {
    printf("nread == 0\r\n");
    return;
  }
  //处理接收到的数据
  printf("debugread:%s:%ld:%ld\r\n",buf->base,nread,buf->len);

  free(buf->base);
}

static void on_pace_timer(uv_timer_t* handle)
{
	uv_stream_t* stream = handle->data;
	uv_buf_t buffer = uv_buf_init(_command, strlen(_command));
	uv_write_t*  write_req = malloc(sizeof(*write_req));

	uv_write(write_req, stream, &buffer, 1, on_write);
}

static void on_connect(uv_connect_t* req, int status)
{
	if (status < 0)
	{
		printf("error:%s:%d:%s:%s\r\n",__FUNCTION__,status,uv_strerror(status),uv_err_name(status));
    	uv_loop_close(uv_default_loop());
    	return;
	}
	uv_buf_t buffer = uv_buf_init(_command, strlen(_command));
	uv_stream_t* stream = req->handle;
	
	printf("connected.\r\n");
	uv_read_start(stream,alloc_buffer,on_read);

	uv_write_t* write_req = malloc(sizeof(*write_req));
	uv_write(write_req, stream, &buffer, 1, on_write);

	uv_timer_init(uv_default_loop(), &pacemaker);
	pacemaker.data = stream;
	uv_timer_start(&pacemaker, on_pace_timer, 1000, 1000);
}

int main(int argc, char** argv)
{
	uv_loop_t* loop = uv_default_loop();

	static uv_connect_t connect;

	static uv_tcp_t socket;
	uv_tcp_init(loop, &socket);

	struct sockaddr_in server_addr;
	uv_ip4_addr(argv[1], atoi(argv[2]), &server_addr);

	uv_tcp_connect(&connect, &socket, (const struct sockaddr*)&server_addr, on_connect);

	uv_run(loop, UV_RUN_DEFAULT);

	return 0;
}