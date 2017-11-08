global _ft_toupper

section .text
_ft_toupper:
    mov rax, rdi
    cmp rdi, 97
	jl return
	cmp rdi, 122
	jg return
    sub rax, 32
	ret

return:
	ret
