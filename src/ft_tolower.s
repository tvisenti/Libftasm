global _ft_tolower

section .text
_ft_tolower:
    mov rax, rdi
    cmp rdi, 65
	jl return
	cmp rdi, 90
	jg return
    add rax, 32
	ret

return:
	ret
