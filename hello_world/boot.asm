ORG 0x7c00
BITS 16

start:
	mov si, message
	call print
	jmp $

print_char:
	mov ah, 0x0e
	int 0x10
	ret

print:
.loop:
	lodsb ; load what si pointed into al
	cmp al, 0
	je .done
	call print_char
	jmp .loop
.done:
	ret

message: db 'Hello, world!', 0
times 510-($-$$) db 0
dw 0xAA55
