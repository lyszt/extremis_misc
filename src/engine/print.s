.data 
.text


.macro     startF
addi       sp, sp, -16
sw         ra, 12(sp)
sw         s0, 8(sp)
sw         s1, 4(sp)
sw         s2, 0(sp)
.endm 

.macro     endF
lw         ra, 12(sp)
lw         s0, 8(sp)
lw         s1, 4(sp)
lw         s2, 0(sp)
addi       sp, sp, 16
.endm

# receives input in a0
.global print
print: 
  startF
  li a7, 4
  ecall
  endF
  ret 

