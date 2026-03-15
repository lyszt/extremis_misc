AS = riscv32-elf-as 
LD = riscv32-elf-ld

SRCS = $(shell find src -name "*.s" -not -path "*/include/*")
OBJS = $(patsubst src/%.s, build/%.o, $(SRCS))

.PHONY: build run

build: $(OBJS)
	$(LD) -v -o main.bin $(OBJS)

build/%.o: src/%.s
	@mkdir -p $(dir $@)
	$(AS) -v -o $@ $<

run: build
	qemu-riscv32 ./main.bin
