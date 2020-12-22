.model flat,c
.code

; extern "C" int DivisionMul_(int a, int b, int* prod, int* quo, int* rem);
; Description: Show the use of imul and idiv
; Returns: 0 Error
;		   1 Success
; Computes: *prod a * b	
;			*quo = a / b
;			*rem = a % b

DivisionMul_ proc
		push ebp
		mov ebp, esp
		push ebx
; Check is no zero
		xor eax,eax				; 0 Error code
		mov ecx,[ebp+8]			; ecx = 'a'
		mov edx,[ebp+12]		; edx = 'b'
		or edx, edx			
		js _InvalidDiv			; jump if cannot be divisible by 0 'b'

; Compute the product and savit it
		imul edx,ecx			; edx = a*b
		mov ebx,[ebp+16]		; ebx = 'prod'
		mov	[ebx],edx			; save it

; Compute quotient and remainder, save it
		mov eax, ecx			; eax = 'a'
		cdq						; edx:eax contains dividend
		idiv dword ptr [ebp+12]	;eax = quo, edx = rem
		mov ebx,[ebp+20]		; ebx = 'quo'
		mov	[ebx], eax			; save quo
		mov [ebx],edx			; save remainder
		mov eax, 1				; 1 return code

; Function helpers
	_InvalidDiv: 
		pop ebx
		pop ebp
		ret
DivisionMul_ endp
		end