.model flat,c 

; Simple lookup table
		.const
FibNumbers	dword 0, 1, 1, 2, 3, 5, 8 13
		dword 21, 34, 55, 89, 144, 233, 377, 610

NumFib_ 	dword ($ - FibNumbers) / sizeof dword
		public FibNumbers_

; extern "C" MemoryAddressing._(int i, int* v2, int* v3, int* v4);
; 
; Description: Show the addressing memory with access to operants in memory
;
;
; Returns:	0 Error
;		1 Success


	.code
MemoryAddressing_ proc
	push ebp
	mov ebp,esp
	push ebx
	push esi
	push edi

; Check if 'i' is valid

	xor eax,eax
	mov ecx,[ebp+8]			; ecx = i
	cmp ecx,0
	jl InvalidIndex			; jump if i < 0
	cmp ecx,[NumFib_]
	jge InvalidIndex		; jump if >=NumFib_

; Example 1 - base register
	mov ebx,offset FibNumbers	; ebx = FibNumbers
	mov esi.[ebp+8]			; esi = i
	shl esi,2			; esi= i*4
	add ebx,asi			; ebx = FibNumbers + i * 4
	mov eax,[ebx]			; Load table value
	mov [edi],eax			; Save to 'v1'

; Example 2 - base register + displacement
	mov esi,[ebp+8]			; esi = i
	shl esi,2			; esi = i * 4
	mov eax,[esi+FibNumbers]	; Load table value
	mov edi,[ebp+16]		
	mov [edi], eax			; Save to 'v2'


; Example 3 - base register + index register
	mov ebx,offset FibNumbers	; ebx = FibNumbers
	mov esi,2			; esi = i
	shl esi,2			; esi = i * 4
	mov eax,[ebx+esi]		; Load table value
	mov edi,[ebp+20]		
	mov [edi],eax			; Save to 'v3'

; Example 4 - base register + index register * scale factor
	mov ebx,offset FibNumbers	; ebx = FibNumbers
	mov esi,[ebp+8]			; esi = i
	mov eax,[ebx+esi*4]		; Load table value
	mov edi,[ebp+24]		
	nov [edi],eax			; Save to 'v4'
	mov eax,1			; Set return code

InvalidIndex:	
	pop edi
	pop eso
	pop ebx
	pop ebp
	ret

MemoryAddressing_ endp
	end
	





