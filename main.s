.include "src/include/function.s"

.data 
turn: .word 0 

.text
.global _start
_start:
  la t0, turn 
  
