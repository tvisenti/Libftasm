global _ft_tolower

section .text
_ft_tolower:
    push rbp
    mov rbp, rsp
    mov rax, rdi
    cmp rdi, 65
	jl return
	cmp rdi, 90
	jg return
    add rax, 32
	leave
	ret

return:
	leave
	ret
