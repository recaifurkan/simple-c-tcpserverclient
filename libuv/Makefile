prepare:
	mkdir out
	mkdir deps
	git clone https://github.com/libuv/libuv ./deps/libuv
	cd deps/libuv
	sh autogen.sh
	./configure
	make
	cd ../../

server:
	gcc -g -Wall -I ./deps/libuv/include ./deps/libuv/.libs/libuv.a -framework CoreServices ./src/server.c -o ./out/server
client:
	gcc -g -Wall -I ./deps/libuv/include ./deps/libuv/.libs/libuv.a -framework CoreServices ./src/client.c -o ./out/client

main:
	gcc -g -Wall -I ./deps/libuv/include ./deps/libuv/.libs/libuv.a -framework CoreServices ./src/main.c -o ./out/main
