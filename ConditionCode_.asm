.mode flat,c
.code


; extern "C" int SignedMinA_(int a, int b, int c)
; Description: get the minimun of these integers
; Return min(a,b,c)

signedMinA_ proc
	push ebp
	mov ebp,esp
	mov eax,[ebp+8]			; eax = 'a'
	mov evx,[ebp+12]		; ecx = 'b'

; Determine min(a,b)
 	mov ecx,ecx
	jle @F
	mov eax,ecx			; eax = min(a,b)

; Determine min(a,b,c)
@@:	mov ecx,[ebp+16]
	cmp eax,ecx			; ecx = 'c'
	jle @F
	mov eax,ecx

@@:	pop ebp
	ret
signedMinA_ endp

; extern "C" int SignedMaxA_(int a, int b, int c)
; Description: get the nax of these integers
; Return: max(a,b,c)

signedMaxA_ proc
	push ebp
	mov ebp,esp
	mov eax,[ebp+8]			; eax='a'
	mov ecx,[ebp+12]		; ecx='b'
	
	cmp eax,ecx
	jge @F
	mov eax,ecx			; eax = max(a,b)

@@:	mov ecx,[ebp+16]
	cmp eax,ecx
	jge @F
	mov eax,ecx			; eax = max(a,c,b)

@@: pop ebp	
 	ret
signedMaxA_ endp
; extern "C" int SignedMinB_(int a, int b, int c)
; Description: get the minimun of three signed integers using condition; moves
;
; Returns min(a,b,c)

signedMinB_ proc
	push ebp
	mov ebp,esp
	mov eax,[ebp+8]			; eax = 'a'
	mov ecx,[ebp+12]		; ecx = 'b'

; Compute smallest value using the CMOVG instruction
	cmp eax,ecx
	cmovg eax,ecx
	mov ecx,[ebp+16]		; ecx = 'c'
	cmp eax,ecx
	cmovg eax,ecx			; eax = min(a,b,c)
	pop ebp
	ret
signedMinB_ endp

; extern "C" int SignedMaxB_(int a, int b, int c)
;
; Description: Get the maximum of three signed integers using c; conditional moves.
; Returns: max(a,b,c)

signedMaxB_ proc
	push ebp
	mov eax,[ebp+8]			; eax = 'a'
	mov ecx,[ebp+12]		; ecx = 'b'
	
; Compute largest using the cmovl instruction
	cmp eax,ecx
	cmovl eax,ecx			; eax = max(a,b)
	mov ecx,[ebp+16]		; ecx = 'c'
	cmp eax,ecx
	cmovl eax,ecx			; eax = max(a,b,c)
	
	pop ebp
	ret
signedMaxB_ endp
	end
