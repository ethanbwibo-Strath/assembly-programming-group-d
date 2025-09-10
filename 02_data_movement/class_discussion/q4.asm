
section .data
    ; define byte array
    array db 10, 20, 30, 40

section .text
    global _start

_start:

    mov ebx, array          ; ebx = address of array

    movzx edx, byte [ebx]   ; edx = array[0] (zero-extended)
    movzx ecx, byte [ebx+1] ; ecx = array[1] (zero-extended)

    ; Exit program
    mov eax, 1
    xor ebx, ebx
    int 0x80
