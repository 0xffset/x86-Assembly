
%use masm

section .text

; extern "C" int _DivisionMul(int a, int b, int* prod, int* quo, int* rem);
; Description: FFunction to show the use of imul and idiv instructions
; Returns: 0 Error
;		   1 Success
;
; Computes: *prod = a * a 	
;   		*quo = a / b
;			*rem = a % b

global _DivisionMul


_DivisionMul:	push rbx
		mov rbp,rsp
		push rbx

; Check is the divisor is not equal to zero
	xor rax,rax					;return code
	mov rcx,[rbp+8] 			; ecx = 'a'
	mov rbx,[rbp+12]			; edx = 'b'
	or rdx,rdx			
	js InvalDivision			; jump if 'b' is zero


; Compute a**b and save it
	imul rdx, rcx				; edx = 'a'*'b'
	mov rbx,[rbp+16]			; ebx = 'prod'
	mov [rbx], rdx				; save it

; Quotient and remainder, save it
	mov rax, rcx					; eax = 'a'
	cdq								; edx:eax contains diviend
	idiv dword ptr [rbp+12]			; eax = quo, edx = rem
	mov rbx,[rbp+20]				; ebx = 'quo'	
	mov [rbx], rax					; save quotient
	mov rbx,[rbp+24]				; ebx = 'rem'
	mov rax,1						; return code


InvalDivision:
		pop rbx
		pop rbp
		ret