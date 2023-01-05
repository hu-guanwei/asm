ORG 0x7c00
BITS 16

start:
    mov ah, 0eh
    mov al, 'A'
    mov bx, 20
    int 0x10
    

    jmp $

times 510-($ - $$) db 0 ; $ means current address, $$ means segment start address
                        ; fill 0 until reach address of 510
dw 0xAA55  ; stop sign, 2 bytes
           ; 512 bytes are needed to fill in total