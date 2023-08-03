global _start 

_start:
    sub esp, 4      ; => allocate 4 bytes on the stack
    mov [esp], byte 'H'
    mov [esp+1], byte 'E'
    mov [esp+2], byte 'Y'
    mov [esp+3], byte '!'
    mov eax, 4
    mov ebx, 1
    mov ecx, esp    ; => point ecx to the beginning of the string
    mov edx, 4     ; => length = 4
    int 0x80        
    mov eax, 1
    mov ebx, 0            
    int 0x80
