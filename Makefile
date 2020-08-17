client:
	gcc client.c -o client.o -lwsock32

server:
	gcc server.c -o server.o -lwsock32