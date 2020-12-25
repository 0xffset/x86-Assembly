.model flat,c

; There are difined in IntegerAddition.h
	extern GlChar:byte
	extern GlShort:word
	extern GlInt:dword	
	extern GlLongLong:qword

; extern "C" void IntegerAdd_(char a, short b, int c, long long d);
;
; Description: Addition using various-sized integers
;
; Return: None.

	.code
IntegerAdd_ proc
; Function prolog
	push ebp
	mov ebp,esp

; Compute GlChar += a
	mov al,[ebp+8]
	add [GlChar],al

; Compute GlShort += b, note offset of 'b' on starck
	mov ax,[ebp+12]
	add [GlShort],ax

; Compute GlInt += c, note offset of 'c' on stack
	mov eax,[ebp+16]
	add [GlInt],eax

; Compute GlLongLong += d, note use of dword ptr operator and adc
	mov eax, [ebp+20]
	mov edx,[ebp+14]
	add dword ptr [GlLongLong],eax
	adc dword ptr [GlLongLong],edx

; Function epilog
	pop ebp
	ret
	
IntegerAdd_ endp
	end
