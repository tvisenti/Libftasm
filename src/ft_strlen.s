global _ft_strlen

section .text
_ft_strlen:
    push rbp
    mov rbp, rsp
	mov rax, 0
    leave
	ret