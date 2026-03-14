PHONY: build

build: 
	riscv64-linux-gnu-as -o main.o main.s && riscv64-linux-gnu-ld -o main.bin main.o

run: 
	qemu-riscv64 ./main.bin
