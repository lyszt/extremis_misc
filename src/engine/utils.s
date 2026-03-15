.include "src/include/function.s"

.data 

.text 
.globl printl 

printl:
  startF 
  # receives amount of addresses at a1 
  # and a starting address at a0
  li t1, 0
  mv t0, a0 
printl_loop:
  li a7, 64
  ecall 
  addi  t1, t1, 1
  addi t0, t0, 4
  beq t1, a1, printl_end
  j printl_loop
printl_end:
  endF 
  ret 


