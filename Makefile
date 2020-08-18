all: server client

server: WTFserver.c
	gcc -g WTFserver.c -o WTFserver -L/usr/local/lib/ -lssl -lcrypto -lm -lpthread
client: WTF.c
	gcc -g WTF.c -o WTF -L/usr/local/lib/ -lssl -lcrypto -lm
test: WTFtest.c
	gcc -g WTFtest.c -o WTFtest
clean:
	rm -f WTFserver WTF WTFtest
delete: 
	rm -rf client1 client2 server
