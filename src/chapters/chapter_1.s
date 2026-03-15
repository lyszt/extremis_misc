.include "src/include/function.s"
.include "src/dialogue/intro.s"

.data 

.text
.globl run_chapter_1
run_chapter_1: 
  startF 
  la a0, chapter_1_strings 
  li a1, 3
  call printl 
  endF 
  ret 


chapter_1_strings: 
  .word intro 
  .word intro_reason
  .word intro_reason_2 
