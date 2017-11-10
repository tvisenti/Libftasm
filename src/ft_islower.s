global _ft_islower

section .text
_ft_islower:
    push rbp
    mov rbp, rsp
    cmp rdi, 97
	jl false
	cmp rdi, 122
	jg false
    mov rax, 1
	leave
    ret

false:
	mov rax, 0
	leave
	ret