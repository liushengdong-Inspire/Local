CROSS_COMPILE=arm-none-linux-gnueabi-
CC=$(CROSS_COMPILE)gcc
AS=$(CROSS_COMPILE)as
LD=$(CROSS_COMPILE)ld

src_file += $(wildcard src/*.S)
out_file += $(patsubst src/%.S,out/%.o,$(src_file))
obj += $(patsubst %.S,%.o,$(wildcard src/*.S))
OUT=out
target = $(OUT)/main
all:$(target)

$(target):$(out_file)
	$(LD) $^ -o $@ -g
$(out_file):$(src_file)
	@mkdir -p $(OUT)
	$(AS) $< -o $@ -g
PHONY += clean
clean:
	@-rm -rf $(obj) $(target) $(OUT)
PHONY += run
run:
	qemu-arm -g 1024 $(target) &
	$(CROSS_COMPILE)gdb $(target) 
	
