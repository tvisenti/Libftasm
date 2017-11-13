global _ft_strcat

section .text
_ft_strcat:
    push rbp
    mov rbp, rsp
    mov rbx, rdi
    mov rdx, rsi
    cmp rbx, 0
	jz return
    cmp rdx, 0
    jz return

go_end: ; go to the end of s1
    cmp byte[rbx], 0
    jz strcat
    inc rbx
    jmp go_end

strcat: ; cpy s2[i] in s1[j]
    cmp byte[rdx], 0
    jz return
    mov al, byte[rdx] ; tmp is necessary for cpy
    mov byte[rbx], al
    inc rbx
    inc rdx
    jmp strcat

return:
    mov byte[rbx], 0
    mov rax, rdi
    leave
	ret
