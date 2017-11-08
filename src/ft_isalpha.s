global _ft_isalpha

section .text
_ft_isalpha:
    cmp rdi, 65
	jl false
	cmp rdi, 122
	jg false
    cmp rdi, 91
	jl true
	cmp rdi, 96
	jg true

false:
	mov rax, 0
	ret

true:
	mov rax, 1
	ret