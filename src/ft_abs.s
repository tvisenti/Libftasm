global _ft_abs

section .text
_ft_abs:
    push rbp
    mov rbp, rsp
    cmp edi, 0
	jge return
    not rdi
    inc rdi

return:
    mov rax, rdi
    leave
	ret
