CROSS_COMPILE=arm-none-linux-gnueabi-
CC=$(CROSS_COMPILE)gcc
AS=$(CROSS_COMPILE)as
LD=$(CROSS_COMPILE)ld

src_file += $(wildcard src/*.S)
out_file += $(patsubst src/%.S,out/%.o,$(src_file))
obj += $(patsubst %.S,%.o,$(wildcard src/*.S))
target = out/main
all:$(target)

$(target):$(out_file)
	$(LD) $^ -o $@ -g
$(out_file):$(src_file)
	@mkdir -p out
	$(AS) $< -o $@ -g
PHONY += clean
clean:
	@-rm -rf $(obj) main out 
	
