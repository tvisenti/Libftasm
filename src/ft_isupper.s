global _ft_isupper

section .text
_ft_isupper:
    push rbp
    mov rbp, rsp
    cmp rdi, 65
	jl false
	cmp rdi, 90
	jg false
    mov rax, 1
	leave
    ret

false:
	mov rax, 0
	leave
	ret