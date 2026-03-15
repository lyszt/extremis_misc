.include "src/include/function.s"

.data 
.text
# receives input in a0
.global print
print: 
  startF
  li a7, 4
  ecall
  endF
  ret 

