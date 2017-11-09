global _ft_strcat

section .text
_ft_strcat:
    mov rbx, rdi
    mov rdx, rsi
    cmp rbx, 0
	jz return
    cmp rdx, 0
    jz return

go_end:
    cmp byte[rbx], 0
    jz strcat
    inc rbx
    jmp go_end

strcat:
    cmp byte[rdx], 0
    jz return
    mov al, byte[rdx]
    mov byte[rbx], al
    inc rbx
    inc rdx
    jmp strcat

return:
    mov byte[rbx], 0
    mov rax, rdi
	ret
