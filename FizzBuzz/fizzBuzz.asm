.data
out_string:    .asciiz    "\nHello, World!\n"

.text
.globl  main

# out_string:    .asciiz    "\nHello, World!\n"

main:
    li $v0, 4
    li $t0, 10 # number of iterations
    li $t1, 0 # t1 is our counter (i)
    li $t2, 0 # t2 holds value to modify
loop:
    beq $t1, $t0, end # if t1 == t0 end loop
    add $t2, $t2, 1 # body
    addi $t1, $t1, 1 # add 1 to t1
    la $a0, out_string # print "Hello, World!"
    syscall
    j loop # jump back to the top
end:
    li $v0, 10
    syscall