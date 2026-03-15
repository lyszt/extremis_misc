.include "src/include/function.s"
# string printing in linux is hell


.data

.text
.globl printl

printl:
  startF
  # a0 = address of table of defstr pointers
  # a1 = number of strings
  mv s0, a0          # s0 = current table entry
  mv s1, a1          # s1 = count
  li s2, 0           # s2 = index
printl_loop:
  lw t0, 0(s0)       # t0 = address of defstr (points to length word)
  lw a2, 0(t0)       # a2 = length
  addi a1, t0, 4     # a1 = pointer to string data (after length word)
  li a0, 1           # a0 = stdout fd
  li a7, 64
  ecall
  addi s2, s2, 1
  addi s0, s0, 4
  beq s2, s1, printl_end
  j printl_loop
printl_end:
  endF
  ret
