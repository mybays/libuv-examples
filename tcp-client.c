#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include <uv.h>


static uv_tcp_t      _socket;
static uv_connect_t  _connect;
//static uv_shutdown_t _shutdown;
static uv_timer_t    _pacemaker;

static char* _command = "hello world";


static void _on_write(uv_write_t* req, int status)
{
	free(req);
/*
	uv_stream_t* stream;

	stream = req->handle;

	uv_shutdown(&_shutdown, stream, NULL);
*/
}

static void _on_pace_timer(uv_timer_t* handle)
{
	uv_buf_t buffer;
	uv_stream_t* stream;
	uv_write_t*  write_req;

	stream = handle->data;
	buffer = uv_buf_init(_command, strlen(_command));

	write_req = malloc(sizeof(*write_req));
	uv_write(write_req, stream, &buffer, 1, _on_write);
}

static void _on_connect(uv_connect_t* req, int status)
{
	uv_buf_t buffer;
	uv_stream_t* stream;
	uv_write_t*  write_req;

	stream = req->handle;
	buffer = uv_buf_init(_command, strlen(_command));

	write_req = malloc(sizeof(*write_req));
	uv_write(write_req, stream, &buffer, 1, _on_write);

	uv_timer_init(uv_default_loop(), &_pacemaker);
	_pacemaker.data = stream;
	uv_timer_start(&_pacemaker, _on_pace_timer, 2000, 2000);
}

int main(int argc, char** argv)
{
	uv_loop_t* loop;
	struct sockaddr_in dest;

	loop = uv_default_loop();

	//uv_timer_init(server->loop, &server->watchdog);
	//server->watchdog.data = server;
	//uv_timer_start(&server->watchdog, _on_watchdog_timer, 5000, 5000);

	uv_tcp_init(loop, &_socket);
	//_socket.data = server;

	uv_ip4_addr("127.0.0.1", 7000 ,&dest);
	uv_tcp_connect(&_connect, &_socket, (const struct sockaddr*)&dest, _on_connect);

	uv_run(loop, UV_RUN_DEFAULT);

	return 0;
}