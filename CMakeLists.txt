cmake_minimum_required(VERSION 3.5)
project(uvtest)

INCLUDE_DIRECTORIES("/opt/local/include")
link_directories("/opt/local/lib")

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11 -g")



set(SOURCE_FILES main.cpp)
add_executable(uvtest ${SOURCE_FILES})
target_link_libraries (uvtest LINK_PUBLIC uv)

add_executable(idle idle.cpp)
target_link_libraries (idle LINK_PUBLIC uv)

add_executable(udp udp.c)
target_link_libraries (udp LINK_PUBLIC uv)

add_executable(udp-echo udp-echo.c)
target_link_libraries (udp-echo LINK_PUBLIC uv)

add_executable(hello hello.c)
target_link_libraries (hello LINK_PUBLIC uv)

add_executable(thread thread.c)
target_link_libraries (thread LINK_PUBLIC uv)

add_executable(process process.c)
target_link_libraries (process LINK_PUBLIC uv)

add_executable(itc itc.c)
target_link_libraries (itc LINK_PUBLIC uv)

add_executable(lock lock.c)
target_link_libraries (lock LINK_PUBLIC uv)

add_executable(dns dns.c)
target_link_libraries (dns LINK_PUBLIC uv)

add_executable(interface interface.c)
target_link_libraries (interface LINK_PUBLIC uv)

add_executable(queue-work queue-work.c)
target_link_libraries (queue-work LINK_PUBLIC uv)

add_executable(watcher watcher.c)
target_link_libraries (watcher LINK_PUBLIC uv)

add_executable(signal signal.c)
target_link_libraries (signal LINK_PUBLIC uv)

add_executable(stream stream.c)
target_link_libraries (stream LINK_PUBLIC uv)

add_executable(fs fs.c)
target_link_libraries (fs LINK_PUBLIC uv)

add_executable(monitor monitor.c)
target_link_libraries (monitor LINK_PUBLIC uv)

add_executable(tcp-server tcp-server.c)
target_link_libraries (tcp-server LINK_PUBLIC uv)

add_executable(tcp-client tcp-client.c)
target_link_libraries (tcp-client LINK_PUBLIC uv)