%include "io.inc"

; extern "C" int DivisionMul_(int a, int b, int* prod, int* quo, int* rem);
; Description: FFunction to show the use of imul and idiv instructions
; Returns: 0 Error
;		   1 Success
;
; Computes: *prod = a * a 	
;   		*quo = a / b
;			*rem = a % b

DivisionMul_ proc
	push ebp
	mov ebp,esp
	push ebx

; Check is the divisor is not equal to zero
	xor eax,eax					;return code
	mov ecx,[ebp+8] 			; ecx = 'a'
	mov edx,[ebp+12]			; edx = 'b'
	or edx,edx			
	js InvalDivision			; jump if 'b' is zero


; Compute a**b and save it
	imul edx, ecx				; edx = 'a'*'b'
	mov ebx,[ebp+16]			; ebx = 'prod'
	mov [ebx], edx				; save it

; Quotient and remainder, save it
mov eax, ecx					; eax = 'a'
cdp								; edx:eax contains diviend
idiv dword ptr [ebp+12]			; eax = quo, edx = rem

mov ebx,[ebp+20]				; ebx = 'quo'
mov [ebx], eax					; save quotient
mov ebx,[ebp+24]				; ebx = 'rem'
mov eax,1						; return code


InvalDivision:
		pop ebx
		pop ebp
		ret