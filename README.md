<div align="center">
  <img src="docs/logo.png"  width="100" height="100"/>
</div>

<div align="center">
  <h1>x86-Assembly</h1>
</div>

<div align="center">
  <strong>A lot of x86-Assembly programs with their counterpart in C/C++ </strong>
</div>

<a href="https://github.com/RolEYder/x86-Assembly"><img alt="GitHub license" src="https://img.shields.io/github/license/RolEYder/x86-Assembly?style=plastic"></a>

### Quickly Assembly x86 References
####  General-Purpose Register

> *General-purpose registers (GPRs) can store both data and addresses, i.e., they are combined data/address registers; in some architectures, the register file is unified so that the GPRs can store floating-point numbers as well.*
> 
> *Wikipedia*

| Register | Common Use  |
|--|--|
| EAX | *Accumulator*|
| EBX | *Memory pointer, base register*
| ECX | *Loop control an counters*
| EDX | *Interger multiplication and division*
| ESI | *String instruction source pointer and index register*
| EDI | *String instruction destination  pointer and index register*
| ESP | *Stack pointer*
| EBP | *Stack frame pointer*

### Instruction Operants
|Type| Example  |  Equal to|
|--|--|--|
| Immediate | *mov eax,45*  |*eax = 45*|
|| *imul ebx, 12h* | ebx *= 0x12|
|| *xor dl, 44h* | ebx *= 0x44
|| *add esi,8* | *esi ^= 8*
|Register| *mov eax, ebx* | *eax = ebx*
|| *inc ecx* | *ecx += 1*
|| *add ebx,esi* | *ebx += esi*
|| *mul ebx* | edx:eax = eax * ebx
|Memory| *mov eax,[ebx]* | eax= *ebx
|| add eax,[val] | eax += *val
|| or ecx,[ebx+esi] | ecx |= *(ebx + asi)
|| sub word ptr [edi],12 | *  (short*) edit -=12
