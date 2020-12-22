.model flat,c
.code


NumberSum_ proc
            
   			push ebp
		    mov ebp,esp

; Load params
			mov eax,[ebp+8]
			mov ecx,[ebp+12]
			mov edx,[ebp+16]

; Compute the sum
			add eax,ecx
			add eax,edx

; Restore the stack frame pointer
			pop ebp
			ret

numberSum_ endp
		end
