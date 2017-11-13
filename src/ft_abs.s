global _ft_abs

section .text
_ft_abs:
    push rbp
    mov rbp, rsp
    cmp rdi, 48
	jle return
    not rdi
    inc rdi

return:
    mov rax, rdi
    leave
	ret
