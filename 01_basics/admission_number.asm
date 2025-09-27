section .data
    msg db "166488", 0xA    ; my student ID
    len equ $ - msg          ; length of string

section .text
    global _start

_start:
    ; syscall: write(stdout, msg, len)
    mov eax, 4               ; syscall number for sys_write
    mov ebx, 1               ; file descriptor 1 = stdout
    mov ecx, msg             ; pointer to message
    mov edx, len             ; message length
    int 0x80                 ; call kernel

    ; syscall: exit(0)
    mov eax, 1               ; syscall number for sys_exit
    xor ebx, ebx             ; exit code 0
    int 0x80
