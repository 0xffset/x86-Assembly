.model flat,c
.code

; extern "C" int NumberSum_(int a, int b, int c)
; Description: This function sum three numbers
; Returns: a + b + c

NumberSum_ proc
; Initialize a stack
	push ebp
	mov ebp,esp

; Load params
	mov eax,[ebp+8]
	mov ecx,[ebp+12]
	mov edx,[ebp+18]

; Compute the sum
	add eax,ecx
	add eax,edx

; Restore the stack frame pointer
	pop ebp
	ret

NumberSum_ endp
	end
