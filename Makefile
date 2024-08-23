CC = gcc
CFLAGS = -Wall -Wextra -Werror -std=c11 -lncurses

all : start
	$(CC) $(CFLAGS) ping_pong.c -o ./build/ping_pong

start :
	mkdir -p ./build

clean :
	rm ./build/*
	rm -rf ./build 

format :
	clang-format -n *.c
	clang-format -i *.c