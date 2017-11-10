global _ft_bzero

section .text
_ft_bzero:
    push rbp
    mov rbp, rsp
    mov rbx, rdi
    mov rcx, rsi
    cmp rbx, 0
	jz return
    cmp rcx, 0
    jle return

bzero:
    cmp rcx, 0
    jz return
    mov byte[rbx], 0
    inc rbx
    loop bzero

return:
    leave
	ret
