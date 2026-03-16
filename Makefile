AS = riscv32-elf-as 
LD = riscv32-elf-ld

SRCS = $(shell find src -name "*.s" -not -path "*/include/*")
OBJS = $(patsubst src/%.s, build/%.o, $(SRCS)) build/main.o
.PHONY: build run

build: $(OBJS)
	$(LD) -v -o main.bin $(OBJS)

build/%.o: src/%.s
	@mkdir -p $(dir $@)
	$(AS) -v -o $@ $<

build/main.o: main.s
	$(AS) -v -o $@ $<
	
run: build
	qemu-riscv32 ./main.bin || true

debug:
	qemu-riscv32 -strace ./main.bin 2>&1 | head -30
	riscv32-elf-objdump -s -j .data build/dialogue/main.o
