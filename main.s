.include "src/include/function.s"


.data 
turn: .word 0 

.text
.global _start
_start:
  la t0, turn
  call run_chapter_1 


  li a7, 10
  ecall
  
