global _ft_tolower

section .text
_ft_tolower:
    mov rax, rdi
    mov rbx, rsi
    mov rcx, 0
    cmp rdi, 0
	jle return

bzero:
    
    inc rcx
    dec rbx
    jmp bzero


return:
	ret
