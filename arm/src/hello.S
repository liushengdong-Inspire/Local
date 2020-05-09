.global _start
_start:
	ldr r1,=0x001f
	ldr r2,=0x30008000
	str r1,[r2]
loop:
	bl loop
