#include <stdio.h>
#include <stdlib.h>
#include <uv.h>

uv_loop_t *loop;

void alloc_buffer(uv_handle_t *handle, size_t suggested_size,uv_buf_t* buf)
{
  //*buf=uv_buf_init((char*) malloc(suggested_size), suggested_size);
  static char base[1024];
  buf->base = base;
  buf->len = sizeof(base);
}

void echo_write(uv_write_t *req, int status)
{
  if (status == -1)
  {
    fprintf(stderr, "Write error!\n");
  }
  char *base = (char*) req->data;
  //free(base);
  free(req);
}

void echo_read(uv_stream_t *client, ssize_t nread, uv_buf_t* buf)
{
  if (nread == -1)
  {
    fprintf(stderr, "Read error!\n");
    uv_close((uv_handle_t*)client, NULL);
    return;
  }
  if(nread == UV__EOF )
  {
    printf("remote closed.\r\n");
    return;
  }
  uv_buf_t sndbuf;
  printf("nread:%ld\r\n",nread);
  uv_write_t *write_req = (uv_write_t*)malloc(sizeof(uv_write_t));
  write_req->data = (void*)buf->base;
  buf->len = nread;
  sndbuf=*buf;
  sndbuf.len=nread;
  uv_write(write_req, client, &sndbuf, 1, echo_write);
}

void on_new_connection(uv_stream_t *server, int status)
{

  if(0 != status)
  {
    
    return;
  }
  printf("status:%d\r\n",status);
  if (status == -1)
  {
    return;
  }

  uv_tcp_t *client = (uv_tcp_t*) malloc(sizeof(uv_tcp_t));
  uv_tcp_init(server->loop, client);
  if (uv_accept(server, (uv_stream_t*) client) == 0)
  {
    uv_read_start((uv_stream_t*) client, (uv_alloc_cb)alloc_buffer, (uv_read_cb)echo_read);
  }
  else
  {
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
