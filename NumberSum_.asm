
%use masm

section .text

global NumberSum_

NumberSum_:
            mov ebp, esp; for correct debugging
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

