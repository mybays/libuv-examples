#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include <uv.h>

uv_loop_t *loop;
uv_udp_t udp_clinet;
uv_timer_t timer;
int64_t ta,tb;

//获取当前ticket
int64_t GetTickCount(int nType)
{
    struct timespec tp;
    clock_gettime(CLOCK_MONOTONIC,&tp);
    if (0==nType)
    {
        return ((int64_t)tp.tv_sec);
    }
    if (1==nType)
    {
        return ((int64_t)tp.tv_sec)*1000 + ((int64_t)tp.tv_nsec)/1000000;
    }
    if (2==nType)
    {
        return ((int64_t)tp.tv_sec)*1000000 + ((int64_t)tp.tv_nsec)/1000;
    }
    return 0;
}

//
static void close_cb(uv_handle_t* handle) {
}


//申请内存的回调函数
static void on_alloc(uv_handle_t* client, size_t suggested_size, uv_buf_t* buf) {
    buf->base = malloc(suggested_size);
    buf->len = suggested_size;
    memset(buf->base,0,suggested_size);
    //printf("malloc:%lu %p\n",buf->len,buf->base);
}


static void on_recv(uv_udp_t* handle,ssize_t nread,const uv_buf_t* buf,
                    const struct sockaddr* addr,unsigned flags)
{
  if (nread < 0)
  {
    printf("unexpected error");
  }

  if (nread == 0) {
    /* Returning unused buffer */
    /* Don't count towards cl_recv_cb_called */
    free(buf->base);
    return;
  }
  //printf("read::%ld of %ld:%s\r\n",nread,buf->len,buf->base);
  printf("Recv:%s\r\n",buf->base);
  free(buf->base);
  
  tb=GetTickCount(1);
  printf("Cost:%lld ms\r\n",tb-ta);

  //关闭定时器?
  uv_timer_stop(&timer);
  uv_udp_recv_stop(&udp_clinet);
  uv_loop_close(loop);

  //uv_close((uv_handle_t*) handle, close_cb);
}

static void on_timeout(uv_timer_t *handle,int status)
{
  uv_udp_recv_stop(&udp_clinet);
  printf("Recv Timeout(5s)\r\n");
}

//消息发送后的操作
static void on_send(uv_udp_send_t* req, int status)  
{
  //printf("on_send start\r\n");

  if (status != 0)
  {
    printf("Send error!\n");
    return;
  }

  int r = uv_udp_recv_start(req->handle, on_alloc, (uv_udp_recv_cb)on_recv);
  if(r != 0)
  {
    printf("recv error:%d\r\n",r);
    printf("%s:%s\r\n",uv_strerror(r),uv_err_name(r));
    return;
  }
}


int main(int argc, const char *argv[])
{
  //使用系统默认loop
  loop = uv_default_loop();


  uv_udp_init(loop, &udp_clinet);
  
  //ip及端口
  struct sockaddr_in server_addr;
  uv_ip4_addr(argv[1], atoi(argv[2]), &server_addr);
    

  //发送字符串
  uv_buf_t send_buf;
  send_buf.base = malloc(strlen(argv[3])+1);
  send_buf.len = strlen(argv[3]);
  memcpy(send_buf.base,argv[3],send_buf.len);



  //启动timer
  int s = uv_timer_init(loop,&timer);
  if(s != 0)
  {
    printf("timer init error:%d\r\n",s);
    printf("%s:%s\r\n",uv_strerror(s),uv_err_name(s));
    return -1;
  }
  s = uv_timer_start(&timer,(uv_timer_cb)on_timeout,5000,0);
    
    
  printf("Send:%s\r\n",send_buf.base);
  uv_udp_send_t req;
  ta=GetTickCount(1);
  int r = uv_udp_send(&req, &udp_clinet, &send_buf , 1, (const struct sockaddr *)&server_addr, on_send);
  if(0 != r)
  {
    printf("uv_udp_send failed.\r\n");
  }

  return uv_run(loop, UV_RUN_DEFAULT);
}