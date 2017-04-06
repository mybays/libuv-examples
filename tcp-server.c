#include <stdio.h>
#include <stdlib.h>
#include <uv.h>

uv_loop_t *loop;

/* uv_alloc_cb示例
* void (*uv_alloc_cb)(uv_handle_t* handle, size_t suggested_size, uv_buf_t* buf)
*/
void alloc_buffer(uv_handle_t *handle, size_t suggested_size,uv_buf_t* buf)
{
  printf("debug:buf0:%p\r\n",buf);
  *buf=uv_buf_init((char*) malloc(suggested_size), suggested_size);
  printf("debug:buf1:%p\r\n",buf);
  //uv_buf_init前后的buf指针是一样的,为什么?
}

/* uv_write_cb示例
* void (*uv_write_cb)(uv_write_t* req, int status)
* 根据uv_write_t做收尾工作
*/
void echo_write(uv_write_t *req, int status)
{
  if (status < 0)
  {
    printf("error:%s:%s:%s\r\n",__FUNCTION__,uv_strerror(status),uv_err_name(status));
  }
  //此req和uv_write的req是同一个


  uv_buf_t* temp=(uv_buf_t*)req->data;

  char *base = (char*) temp->base;
  free(base);
  free(req);
}

/* uv_read_cb示例
* void (*uv_read_cb)(uv_stream_t* stream, ssize_t nread, const uv_buf_t* buf)
* 
*/
void echo_read(uv_stream_t *client, ssize_t nread, uv_buf_t* buf)
{
  if (nread < 0)
  {
    if(nread == UV__EOF )
    {
      printf("remote closed.\r\n");
    }

    fprintf(stderr, "Read error!\n");
    uv_close((uv_handle_t*)client, NULL);
    return;
  }

  if (nread == 0)
  {
    printf("nread == 0\r\n");
    return;
  }

  printf("nread:%ld\r\n",nread);


  
  uv_buf_t sndbuf;

  uv_write_t *write_req = (uv_write_t*)malloc(sizeof(uv_write_t));
  write_req->data = (void*)buf;
  
  //uv_write的返回值是不是传给uv_write_cb函数了?
  uv_write(write_req, client, write_req->data, 1, echo_write);

}

/* uv_connection_cb示例
* void (*uv_connection_cb)(uv_stream_t* server, int status)
* 有客户端连接时的操作
*/
void on_new_connection(uv_stream_t *server, int status)
{

  //status不为0则异常
  if(0 > status)
  {
    printf("error:%s:%s\r\n",uv_strerror(status),uv_err_name(status));
    return;
  }

  //uv_tcp_t里包含对端的各种信息,通过此信息来区分不同的client
  uv_tcp_t *client = (uv_tcp_t*) malloc(sizeof(uv_tcp_t));
  uv_tcp_init(server->loop, client);
  int r = uv_accept(server, (uv_stream_t*) client);

  if (r == 0)
  {
    uv_read_start((uv_stream_t*) client, (uv_alloc_cb)alloc_buffer, (uv_read_cb)echo_read);
  }
  else
  {
    printf("uv_accept error:%s:%s\r\n",uv_strerror(r),uv_err_name(r));
    uv_close((uv_handle_t*) client, NULL);
  }
}

int main()
{
  loop = uv_default_loop();

  uv_tcp_t server;
  uv_tcp_init(loop, &server);

  struct sockaddr_in bind_addr;
  uv_ip4_addr("0.0.0.0", 7000,&bind_addr);
  uv_tcp_bind(&server, (const struct sockaddr *)&bind_addr,0);
  int r = uv_listen((uv_stream_t*) &server, 128, on_new_connection);
  if (r)
  {
    printf("error:%s:%s\r\n",uv_strerror(r),uv_err_name(r));
    fprintf(stderr, "Listen error!\n");
    return 1;
  }
  return uv_run(loop, UV_RUN_DEFAULT);
}
