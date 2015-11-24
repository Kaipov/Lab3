proc=0

all: make

make:
	gcc Client.c -o client.out
	@if [ $(proc) = 1 ] ; then  gcc Server.c -Dproc=0 -o serv.out;  else  gcc Server.c -pthread -Dproc=$(proc) -o serv.out; fi
clean:
	rm -rf *.out
