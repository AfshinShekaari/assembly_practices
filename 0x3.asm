global _start 

section .text 
_start:
    mov ecx, 99     ; => Loop counter 
    mov ebx, 42
    mov eax, 1      ; => sys_exit system call
    cmp ecx, 100   
    jl skip         ; => jump if ecx < 100
    mov ebx, 13
skip:
    int 0x80