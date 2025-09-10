section .data
    num dd 55

    ; contains ADDRESS of num
 dd num

section .text
    global _start

_start:
    mov eax, [num]

    ; Exit
    mov eax, 1
    xor ebx, ebx
    int 0x80
