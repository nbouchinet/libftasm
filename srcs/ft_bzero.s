section .text
global _ft_bzero

_ft_bzero:
	push rbp						; push rbp register on stack
	mov rbp, rsp					; move rsp register on rbp register
	sub rsp, 16						; align memory
	
	mov rcx, rsi					; mov rsi content into rcx counter register
	cmp rcx, 0						; compare rcx with 0
	je _end							; jump to return if ecx is equal to 0

_loop1:
	mov byte [rdi + rcx - 1], 0		; mov 0 to rbx + rcx - 1
	loop _loop1						; jump to loop name if ecx is not equal to 0

_end:
	mov rsp, rbp					; move rbp on rsp register
	pop rbp							; pop rbp register from stack
	ret								; return program
