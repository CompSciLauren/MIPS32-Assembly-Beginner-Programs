.text
.globl  main

main:
    add $t0, 10 # number of iterations
    add $t1, 0 # t1 is our counter (i)
    add $t2, 17 # t2 holds value to modify
loop:
    beq $t1, $t0, end # if t1 == t0 end loop
    add $t2, $t2, $t1 # body
    addi $t1, $t1, 1 # add 1 to t1
    j loop # jump back to the top
end:
    add $v0, 10
    syscall