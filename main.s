.include "src/include/function.s"


.data 
turn: .word 0 

.text
.global _start
_start: 
  startF
  la t0, turn
  call run_chapter_1 

end: 
  endF 
  li a0, 0
  li a7, 93
  ecall
  
