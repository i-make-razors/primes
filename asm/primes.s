.section .data
  f: .string "%d\n" 	#define strings
.section .text 		#empty section for text
.globl main		#define entry point
main:
  movl $2, %eax		#move value of 2 (starting number) into eax register (loop counter)
  xor %r8d, %r8d	#the xor here will effectivly zero out the r8d register
loop:
  cmpl $250000, %eax	#compare if 250000 = eax
  jg end_loop		#jump based on result of previous instruction
  movl $2, %r10d	#movel (4 bytes) value of 2 into register r10d
  movl %eax, %r11d	#movel (4 bytes) value of eax into register r11d
  shr $1, %r11d		#bit shift right value in r11d by 1 (count down by 1)
prime_loop:
  cmpl %r11d, %r10d     #compare value between r11d and r10d
  jg prime              #jump based on result of previous instruction
  push %rax
  xor %edx, %edx	#clear out the edx register
  div %r10d
  test %edx, %edx
  pop %rax
  je not_prime
  inc %r10d
  jmp prime_loop
prime:
  inc %r8d
not_prime:
  inc %eax		#increment out loop counter
  jmp loop		#jump back to top of loop
end_loop:
  lea f(%rip), %rdi
  mov %r8d, %esi
  xor %eax, %eax
  call printf
