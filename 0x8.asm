global _start

_start: 
    call func 
    mov eax, 1
    int 0x80
func:
;prologue
;;;;;;;;;;;;;;;;;;;;;;;;;
    push ebp                 ; => save base pointer for nested functions
    mov ebp , esp            ; => set ebp to current stack pointer
    sub esp, 2               ; => allocating the stack 
;;;;;;;;;;;;;;;;;;;;;;;;;
    mov [esp], byte 'H'
    mov [esp+1], byte 'i'    ; => using stack to say Hi
    mov eax, 4          
    mov ebx, 1               ; => stdout 
    mov ecx, esp
    mov edx, 2
    int 0x80
;epilogue
    ;;;;;;;;;;;;;;;;;;;;;
    mov esp, ebp             ; => deallocating 
    pop ebp                  ; => restore stack pointer
    ret                      
    ;;;;;;;;;;;;;;;;;;;;;