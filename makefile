proc=0

all: make

make:
	gcc Client.c -o client.out
	gcc Server.c -pthread -Dproc=$(proc) -o serv.out
clean:
	rm -rf *.out
