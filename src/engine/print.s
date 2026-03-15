.include "src/include/function.s"

.data 
.text
# receives input in a0
.global print
print:
    startF
    lw   a2, 0(a0)      # length
    addi a1, a0, 4      # string data
    li   a0, 1          # stdout
    li   a7, 64
    ecall
    endF
    ret
