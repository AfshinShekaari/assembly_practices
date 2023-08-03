global _start 

_start:
    call func       ; => pushes the location of func to the stack 
    mov eax, 1
    int 0x80

func:
    mov ebx, 42    
    pop eax         ; => this is nesseccory for returning back to latest function before this one 
    jmp eax