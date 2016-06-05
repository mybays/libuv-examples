# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Default target executed when no arguments are given to make.
default_target: all

.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/local/bin/cmake

# The command to remove a file.
RM = /opt/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/mybays/ClionProjects/uvtest

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/mybays/ClionProjects/uvtest

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/opt/local/bin/cmake -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache

.PHONY : rebuild_cache/fast

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake cache editor..."
	/opt/local/bin/ccmake -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache

.PHONY : edit_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /Users/mybays/ClionProjects/uvtest/CMakeFiles /Users/mybays/ClionProjects/uvtest/CMakeFiles/progress.marks
	$(MAKE) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /Users/mybays/ClionProjects/uvtest/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean

.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named tcp-server

# Build rule for target.
tcp-server: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 tcp-server
.PHONY : tcp-server

# fast build rule for target.
tcp-server/fast:
	$(MAKE) -f CMakeFiles/tcp-server.dir/build.make CMakeFiles/tcp-server.dir/build
.PHONY : tcp-server/fast

#=============================================================================
# Target rules for targets named monitor

# Build rule for target.
monitor: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 monitor
.PHONY : monitor

# fast build rule for target.
monitor/fast:
	$(MAKE) -f CMakeFiles/monitor.dir/build.make CMakeFiles/monitor.dir/build
.PHONY : monitor/fast

#=============================================================================
# Target rules for targets named fs

# Build rule for target.
fs: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 fs
.PHONY : fs

# fast build rule for target.
fs/fast:
	$(MAKE) -f CMakeFiles/fs.dir/build.make CMakeFiles/fs.dir/build
.PHONY : fs/fast

#=============================================================================
# Target rules for targets named stream

# Build rule for target.
stream: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 stream
.PHONY : stream

# fast build rule for target.
stream/fast:
	$(MAKE) -f CMakeFiles/stream.dir/build.make CMakeFiles/stream.dir/build
.PHONY : stream/fast

#=============================================================================
# Target rules for targets named signal

# Build rule for target.
signal: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 signal
.PHONY : signal

# fast build rule for target.
signal/fast:
	$(MAKE) -f CMakeFiles/signal.dir/build.make CMakeFiles/signal.dir/build
.PHONY : signal/fast

#=============================================================================
# Target rules for targets named hello

# Build rule for target.
hello: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 hello
.PHONY : hello

# fast build rule for target.
hello/fast:
	$(MAKE) -f CMakeFiles/hello.dir/build.make CMakeFiles/hello.dir/build
.PHONY : hello/fast

#=============================================================================
# Target rules for targets named interface

# Build rule for target.
interface: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 interface
.PHONY : interface

# fast build rule for target.
interface/fast:
	$(MAKE) -f CMakeFiles/interface.dir/build.make CMakeFiles/interface.dir/build
.PHONY : interface/fast

#=============================================================================
# Target rules for targets named itc

# Build rule for target.
itc: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 itc
.PHONY : itc

# fast build rule for target.
itc/fast:
	$(MAKE) -f CMakeFiles/itc.dir/build.make CMakeFiles/itc.dir/build
.PHONY : itc/fast

#=============================================================================
# Target rules for targets named udp

# Build rule for target.
udp: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 udp
.PHONY : udp

# fast build rule for target.
udp/fast:
	$(MAKE) -f CMakeFiles/udp.dir/build.make CMakeFiles/udp.dir/build
.PHONY : udp/fast

#=============================================================================
# Target rules for targets named lock

# Build rule for target.
lock: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 lock
.PHONY : lock

# fast build rule for target.
lock/fast:
	$(MAKE) -f CMakeFiles/lock.dir/build.make CMakeFiles/lock.dir/build
.PHONY : lock/fast

#=============================================================================
# Target rules for targets named process

# Build rule for target.
process: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 process
.PHONY : process

# fast build rule for target.
process/fast:
	$(MAKE) -f CMakeFiles/process.dir/build.make CMakeFiles/process.dir/build
.PHONY : process/fast

#=============================================================================
# Target rules for targets named queue-work

# Build rule for target.
queue-work: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 queue-work
.PHONY : queue-work

# fast build rule for target.
queue-work/fast:
	$(MAKE) -f CMakeFiles/queue-work.dir/build.make CMakeFiles/queue-work.dir/build
.PHONY : queue-work/fast

#=============================================================================
# Target rules for targets named dns

# Build rule for target.
dns: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 dns
.PHONY : dns

# fast build rule for target.
dns/fast:
	$(MAKE) -f CMakeFiles/dns.dir/build.make CMakeFiles/dns.dir/build
.PHONY : dns/fast

#=============================================================================
# Target rules for targets named udp-echo

# Build rule for target.
udp-echo: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 udp-echo
.PHONY : udp-echo

# fast build rule for target.
udp-echo/fast:
	$(MAKE) -f CMakeFiles/udp-echo.dir/build.make CMakeFiles/udp-echo.dir/build
.PHONY : udp-echo/fast

#=============================================================================
# Target rules for targets named idle

# Build rule for target.
idle: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 idle
.PHONY : idle

# fast build rule for target.
idle/fast:
	$(MAKE) -f CMakeFiles/idle.dir/build.make CMakeFiles/idle.dir/build
.PHONY : idle/fast

#=============================================================================
# Target rules for targets named tcp-client

# Build rule for target.
tcp-client: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 tcp-client
.PHONY : tcp-client

# fast build rule for target.
tcp-client/fast:
	$(MAKE) -f CMakeFiles/tcp-client.dir/build.make CMakeFiles/tcp-client.dir/build
.PHONY : tcp-client/fast

#=============================================================================
# Target rules for targets named thread

# Build rule for target.
thread: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 thread
.PHONY : thread

# fast build rule for target.
thread/fast:
	$(MAKE) -f CMakeFiles/thread.dir/build.make CMakeFiles/thread.dir/build
.PHONY : thread/fast

#=============================================================================
# Target rules for targets named watcher

# Build rule for target.
watcher: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 watcher
.PHONY : watcher

# fast build rule for target.
watcher/fast:
	$(MAKE) -f CMakeFiles/watcher.dir/build.make CMakeFiles/watcher.dir/build
.PHONY : watcher/fast

#=============================================================================
# Target rules for targets named uvtest

# Build rule for target.
uvtest: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 uvtest
.PHONY : uvtest

# fast build rule for target.
uvtest/fast:
	$(MAKE) -f CMakeFiles/uvtest.dir/build.make CMakeFiles/uvtest.dir/build
.PHONY : uvtest/fast

dns.o: dns.c.o

.PHONY : dns.o

# target to build an object file
dns.c.o:
	$(MAKE) -f CMakeFiles/dns.dir/build.make CMakeFiles/dns.dir/dns.c.o
.PHONY : dns.c.o

dns.i: dns.c.i

.PHONY : dns.i

# target to preprocess a source file
dns.c.i:
	$(MAKE) -f CMakeFiles/dns.dir/build.make CMakeFiles/dns.dir/dns.c.i
.PHONY : dns.c.i

dns.s: dns.c.s

.PHONY : dns.s

# target to generate assembly for a file
dns.c.s:
	$(MAKE) -f CMakeFiles/dns.dir/build.make CMakeFiles/dns.dir/dns.c.s
.PHONY : dns.c.s

fs.o: fs.c.o

.PHONY : fs.o

# target to build an object file
fs.c.o:
	$(MAKE) -f CMakeFiles/fs.dir/build.make CMakeFiles/fs.dir/fs.c.o
.PHONY : fs.c.o

fs.i: fs.c.i

.PHONY : fs.i

# target to preprocess a source file
fs.c.i:
	$(MAKE) -f CMakeFiles/fs.dir/build.make CMakeFiles/fs.dir/fs.c.i
.PHONY : fs.c.i

fs.s: fs.c.s

.PHONY : fs.s

# target to generate assembly for a file
fs.c.s:
	$(MAKE) -f CMakeFiles/fs.dir/build.make CMakeFiles/fs.dir/fs.c.s
.PHONY : fs.c.s

hello.o: hello.c.o

.PHONY : hello.o

# target to build an object file
hello.c.o:
	$(MAKE) -f CMakeFiles/hello.dir/build.make CMakeFiles/hello.dir/hello.c.o
.PHONY : hello.c.o

hello.i: hello.c.i

.PHONY : hello.i

# target to preprocess a source file
hello.c.i:
	$(MAKE) -f CMakeFiles/hello.dir/build.make CMakeFiles/hello.dir/hello.c.i
.PHONY : hello.c.i

hello.s: hello.c.s

.PHONY : hello.s

# target to generate assembly for a file
hello.c.s:
	$(MAKE) -f CMakeFiles/hello.dir/build.make CMakeFiles/hello.dir/hello.c.s
.PHONY : hello.c.s

idle.o: idle.cpp.o

.PHONY : idle.o

# target to build an object file
idle.cpp.o:
	$(MAKE) -f CMakeFiles/idle.dir/build.make CMakeFiles/idle.dir/idle.cpp.o
.PHONY : idle.cpp.o

idle.i: idle.cpp.i

.PHONY : idle.i

# target to preprocess a source file
idle.cpp.i:
	$(MAKE) -f CMakeFiles/idle.dir/build.make CMakeFiles/idle.dir/idle.cpp.i
.PHONY : idle.cpp.i

idle.s: idle.cpp.s

.PHONY : idle.s

# target to generate assembly for a file
idle.cpp.s:
	$(MAKE) -f CMakeFiles/idle.dir/build.make CMakeFiles/idle.dir/idle.cpp.s
.PHONY : idle.cpp.s

interface.o: interface.c.o

.PHONY : interface.o

# target to build an object file
interface.c.o:
	$(MAKE) -f CMakeFiles/interface.dir/build.make CMakeFiles/interface.dir/interface.c.o
.PHONY : interface.c.o

interface.i: interface.c.i

.PHONY : interface.i

# target to preprocess a source file
interface.c.i:
	$(MAKE) -f CMakeFiles/interface.dir/build.make CMakeFiles/interface.dir/interface.c.i
.PHONY : interface.c.i

interface.s: interface.c.s

.PHONY : interface.s

# target to generate assembly for a file
interface.c.s:
	$(MAKE) -f CMakeFiles/interface.dir/build.make CMakeFiles/interface.dir/interface.c.s
.PHONY : interface.c.s

itc.o: itc.c.o

.PHONY : itc.o

# target to build an object file
itc.c.o:
	$(MAKE) -f CMakeFiles/itc.dir/build.make CMakeFiles/itc.dir/itc.c.o
.PHONY : itc.c.o

itc.i: itc.c.i

.PHONY : itc.i

# target to preprocess a source file
itc.c.i:
	$(MAKE) -f CMakeFiles/itc.dir/build.make CMakeFiles/itc.dir/itc.c.i
.PHONY : itc.c.i

itc.s: itc.c.s

.PHONY : itc.s

# target to generate assembly for a file
itc.c.s:
	$(MAKE) -f CMakeFiles/itc.dir/build.make CMakeFiles/itc.dir/itc.c.s
.PHONY : itc.c.s

lock.o: lock.c.o

.PHONY : lock.o

# target to build an object file
lock.c.o:
	$(MAKE) -f CMakeFiles/lock.dir/build.make CMakeFiles/lock.dir/lock.c.o
.PHONY : lock.c.o

lock.i: lock.c.i

.PHONY : lock.i

# target to preprocess a source file
lock.c.i:
	$(MAKE) -f CMakeFiles/lock.dir/build.make CMakeFiles/lock.dir/lock.c.i
.PHONY : lock.c.i

lock.s: lock.c.s

.PHONY : lock.s

# target to generate assembly for a file
lock.c.s:
	$(MAKE) -f CMakeFiles/lock.dir/build.make CMakeFiles/lock.dir/lock.c.s
.PHONY : lock.c.s

main.o: main.cpp.o

.PHONY : main.o

# target to build an object file
main.cpp.o:
	$(MAKE) -f CMakeFiles/uvtest.dir/build.make CMakeFiles/uvtest.dir/main.cpp.o
.PHONY : main.cpp.o

main.i: main.cpp.i

.PHONY : main.i

# target to preprocess a source file
main.cpp.i:
	$(MAKE) -f CMakeFiles/uvtest.dir/build.make CMakeFiles/uvtest.dir/main.cpp.i
.PHONY : main.cpp.i

main.s: main.cpp.s

.PHONY : main.s

# target to generate assembly for a file
main.cpp.s:
	$(MAKE) -f CMakeFiles/uvtest.dir/build.make CMakeFiles/uvtest.dir/main.cpp.s
.PHONY : main.cpp.s

monitor.o: monitor.c.o

.PHONY : monitor.o

# target to build an object file
monitor.c.o:
	$(MAKE) -f CMakeFiles/monitor.dir/build.make CMakeFiles/monitor.dir/monitor.c.o
.PHONY : monitor.c.o

monitor.i: monitor.c.i

.PHONY : monitor.i

# target to preprocess a source file
monitor.c.i:
	$(MAKE) -f CMakeFiles/monitor.dir/build.make CMakeFiles/monitor.dir/monitor.c.i
.PHONY : monitor.c.i

monitor.s: monitor.c.s

.PHONY : monitor.s

# target to generate assembly for a file
monitor.c.s:
	$(MAKE) -f CMakeFiles/monitor.dir/build.make CMakeFiles/monitor.dir/monitor.c.s
.PHONY : monitor.c.s

process.o: process.c.o

.PHONY : process.o

# target to build an object file
process.c.o:
	$(MAKE) -f CMakeFiles/process.dir/build.make CMakeFiles/process.dir/process.c.o
.PHONY : process.c.o

process.i: process.c.i

.PHONY : process.i

# target to preprocess a source file
process.c.i:
	$(MAKE) -f CMakeFiles/process.dir/build.make CMakeFiles/process.dir/process.c.i
.PHONY : process.c.i

process.s: process.c.s

.PHONY : process.s

# target to generate assembly for a file
process.c.s:
	$(MAKE) -f CMakeFiles/process.dir/build.make CMakeFiles/process.dir/process.c.s
.PHONY : process.c.s

queue-work.o: queue-work.c.o

.PHONY : queue-work.o

# target to build an object file
queue-work.c.o:
	$(MAKE) -f CMakeFiles/queue-work.dir/build.make CMakeFiles/queue-work.dir/queue-work.c.o
.PHONY : queue-work.c.o

queue-work.i: queue-work.c.i

.PHONY : queue-work.i

# target to preprocess a source file
queue-work.c.i:
	$(MAKE) -f CMakeFiles/queue-work.dir/build.make CMakeFiles/queue-work.dir/queue-work.c.i
.PHONY : queue-work.c.i

queue-work.s: queue-work.c.s

.PHONY : queue-work.s

# target to generate assembly for a file
queue-work.c.s:
	$(MAKE) -f CMakeFiles/queue-work.dir/build.make CMakeFiles/queue-work.dir/queue-work.c.s
.PHONY : queue-work.c.s

signal.o: signal.c.o

.PHONY : signal.o

# target to build an object file
signal.c.o:
	$(MAKE) -f CMakeFiles/signal.dir/build.make CMakeFiles/signal.dir/signal.c.o
.PHONY : signal.c.o

signal.i: signal.c.i

.PHONY : signal.i

# target to preprocess a source file
signal.c.i:
	$(MAKE) -f CMakeFiles/signal.dir/build.make CMakeFiles/signal.dir/signal.c.i
.PHONY : signal.c.i

signal.s: signal.c.s

.PHONY : signal.s

# target to generate assembly for a file
signal.c.s:
	$(MAKE) -f CMakeFiles/signal.dir/build.make CMakeFiles/signal.dir/signal.c.s
.PHONY : signal.c.s

stream.o: stream.c.o

.PHONY : stream.o

# target to build an object file
stream.c.o:
	$(MAKE) -f CMakeFiles/stream.dir/build.make CMakeFiles/stream.dir/stream.c.o
.PHONY : stream.c.o

stream.i: stream.c.i

.PHONY : stream.i

# target to preprocess a source file
stream.c.i:
	$(MAKE) -f CMakeFiles/stream.dir/build.make CMakeFiles/stream.dir/stream.c.i
.PHONY : stream.c.i

stream.s: stream.c.s

.PHONY : stream.s

# target to generate assembly for a file
stream.c.s:
	$(MAKE) -f CMakeFiles/stream.dir/build.make CMakeFiles/stream.dir/stream.c.s
.PHONY : stream.c.s

tcp-client.o: tcp-client.c.o

.PHONY : tcp-client.o

# target to build an object file
tcp-client.c.o:
	$(MAKE) -f CMakeFiles/tcp-client.dir/build.make CMakeFiles/tcp-client.dir/tcp-client.c.o
.PHONY : tcp-client.c.o

tcp-client.i: tcp-client.c.i

.PHONY : tcp-client.i

# target to preprocess a source file
tcp-client.c.i:
	$(MAKE) -f CMakeFiles/tcp-client.dir/build.make CMakeFiles/tcp-client.dir/tcp-client.c.i
.PHONY : tcp-client.c.i

tcp-client.s: tcp-client.c.s

.PHONY : tcp-client.s

# target to generate assembly for a file
tcp-client.c.s:
	$(MAKE) -f CMakeFiles/tcp-client.dir/build.make CMakeFiles/tcp-client.dir/tcp-client.c.s
.PHONY : tcp-client.c.s

tcp-server.o: tcp-server.c.o

.PHONY : tcp-server.o

# target to build an object file
tcp-server.c.o:
	$(MAKE) -f CMakeFiles/tcp-server.dir/build.make CMakeFiles/tcp-server.dir/tcp-server.c.o
.PHONY : tcp-server.c.o

tcp-server.i: tcp-server.c.i

.PHONY : tcp-server.i

# target to preprocess a source file
tcp-server.c.i:
	$(MAKE) -f CMakeFiles/tcp-server.dir/build.make CMakeFiles/tcp-server.dir/tcp-server.c.i
.PHONY : tcp-server.c.i

tcp-server.s: tcp-server.c.s

.PHONY : tcp-server.s

# target to generate assembly for a file
tcp-server.c.s:
	$(MAKE) -f CMakeFiles/tcp-server.dir/build.make CMakeFiles/tcp-server.dir/tcp-server.c.s
.PHONY : tcp-server.c.s

thread.o: thread.c.o

.PHONY : thread.o

# target to build an object file
thread.c.o:
	$(MAKE) -f CMakeFiles/thread.dir/build.make CMakeFiles/thread.dir/thread.c.o
.PHONY : thread.c.o

thread.i: thread.c.i

.PHONY : thread.i

# target to preprocess a source file
thread.c.i:
	$(MAKE) -f CMakeFiles/thread.dir/build.make CMakeFiles/thread.dir/thread.c.i
.PHONY : thread.c.i

thread.s: thread.c.s

.PHONY : thread.s

# target to generate assembly for a file
thread.c.s:
	$(MAKE) -f CMakeFiles/thread.dir/build.make CMakeFiles/thread.dir/thread.c.s
.PHONY : thread.c.s

udp-echo.o: udp-echo.c.o

.PHONY : udp-echo.o

# target to build an object file
udp-echo.c.o:
	$(MAKE) -f CMakeFiles/udp-echo.dir/build.make CMakeFiles/udp-echo.dir/udp-echo.c.o
.PHONY : udp-echo.c.o

udp-echo.i: udp-echo.c.i

.PHONY : udp-echo.i

# target to preprocess a source file
udp-echo.c.i:
	$(MAKE) -f CMakeFiles/udp-echo.dir/build.make CMakeFiles/udp-echo.dir/udp-echo.c.i
.PHONY : udp-echo.c.i

udp-echo.s: udp-echo.c.s

.PHONY : udp-echo.s

# target to generate assembly for a file
udp-echo.c.s:
	$(MAKE) -f CMakeFiles/udp-echo.dir/build.make CMakeFiles/udp-echo.dir/udp-echo.c.s
.PHONY : udp-echo.c.s

udp.o: udp.c.o

.PHONY : udp.o

# target to build an object file
udp.c.o:
	$(MAKE) -f CMakeFiles/udp.dir/build.make CMakeFiles/udp.dir/udp.c.o
.PHONY : udp.c.o

udp.i: udp.c.i

.PHONY : udp.i

# target to preprocess a source file
udp.c.i:
	$(MAKE) -f CMakeFiles/udp.dir/build.make CMakeFiles/udp.dir/udp.c.i
.PHONY : udp.c.i

udp.s: udp.c.s

.PHONY : udp.s

# target to generate assembly for a file
udp.c.s:
	$(MAKE) -f CMakeFiles/udp.dir/build.make CMakeFiles/udp.dir/udp.c.s
.PHONY : udp.c.s

watcher.o: watcher.c.o

.PHONY : watcher.o

# target to build an object file
watcher.c.o:
	$(MAKE) -f CMakeFiles/watcher.dir/build.make CMakeFiles/watcher.dir/watcher.c.o
.PHONY : watcher.c.o

watcher.i: watcher.c.i

.PHONY : watcher.i

# target to preprocess a source file
watcher.c.i:
	$(MAKE) -f CMakeFiles/watcher.dir/build.make CMakeFiles/watcher.dir/watcher.c.i
.PHONY : watcher.c.i

watcher.s: watcher.c.s

.PHONY : watcher.s

# target to generate assembly for a file
watcher.c.s:
	$(MAKE) -f CMakeFiles/watcher.dir/build.make CMakeFiles/watcher.dir/watcher.c.s
.PHONY : watcher.c.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... tcp-server"
	@echo "... monitor"
	@echo "... fs"
	@echo "... stream"
	@echo "... signal"
	@echo "... rebuild_cache"
	@echo "... hello"
	@echo "... interface"
	@echo "... itc"
	@echo "... udp"
	@echo "... lock"
	@echo "... process"
	@echo "... queue-work"
	@echo "... dns"
	@echo "... udp-echo"
	@echo "... idle"
	@echo "... tcp-client"
	@echo "... thread"
	@echo "... edit_cache"
	@echo "... watcher"
	@echo "... uvtest"
	@echo "... dns.o"
	@echo "... dns.i"
	@echo "... dns.s"
	@echo "... fs.o"
	@echo "... fs.i"
	@echo "... fs.s"
	@echo "... hello.o"
	@echo "... hello.i"
	@echo "... hello.s"
	@echo "... idle.o"
	@echo "... idle.i"
	@echo "... idle.s"
	@echo "... interface.o"
	@echo "... interface.i"
	@echo "... interface.s"
	@echo "... itc.o"
	@echo "... itc.i"
	@echo "... itc.s"
	@echo "... lock.o"
	@echo "... lock.i"
	@echo "... lock.s"
	@echo "... main.o"
	@echo "... main.i"
	@echo "... main.s"
	@echo "... monitor.o"
	@echo "... monitor.i"
	@echo "... monitor.s"
	@echo "... process.o"
	@echo "... process.i"
	@echo "... process.s"
	@echo "... queue-work.o"
	@echo "... queue-work.i"
	@echo "... queue-work.s"
	@echo "... signal.o"
	@echo "... signal.i"
	@echo "... signal.s"
	@echo "... stream.o"
	@echo "... stream.i"
	@echo "... stream.s"
	@echo "... tcp-client.o"
	@echo "... tcp-client.i"
	@echo "... tcp-client.s"
	@echo "... tcp-server.o"
	@echo "... tcp-server.i"
	@echo "... tcp-server.s"
	@echo "... thread.o"
	@echo "... thread.i"
	@echo "... thread.s"
	@echo "... udp-echo.o"
	@echo "... udp-echo.i"
	@echo "... udp-echo.s"
	@echo "... udp.o"
	@echo "... udp.i"
	@echo "... udp.s"
	@echo "... watcher.o"
	@echo "... watcher.i"
	@echo "... watcher.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

