.include "src/include/function.s"

.data 
defstr says " says: \n"
speech_table: .space 12

.text
# a0: char name addr
# a1: dialogue address
.global speak
speak:
    startF
    la t0, speech_table

    # saves char name and dialogue sequentially
    sw a0, 0(t0)
    la t1, says 
    sw t1, 4(t0)

    sw a1, 8(t0)
    
    call printl
    mv a0, t0     # table address
    li a1, 3      # count of strings

    endF
    ret


