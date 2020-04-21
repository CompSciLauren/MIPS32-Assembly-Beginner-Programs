.data
fizz_string:    .asciiz    ", Fizz"
buzz_string:    .asciiz    ", Buzz"
fizzbuzz_string:    .asciiz    ", Fizz Buzz"

.text
.globl  main

main:
    li $v0, 4
    li $t0, 10 # number of iterations
    li $t1, 0 # t1 is our counter (i)
    li $t2, 0 # t2 holds value to modify
loop:
    beq $t1, $t0, end # if t1 == t0 end loop
    add $t2, $t2, 1 # body
    addi $t1, $t1, 1 # add 1 to t1
    j fizz
    j loop
fizz:
    la $a0, fizz_string
    li $v0, 4
    syscall
    j loop
buzz:
    la $a0, buzz_string
    li $v0, 4
    syscall
    j loop
fizzbuzz:
    la $a0, fizzbuzz_string
    li $v0, 4
    syscall
    j loop
end:
    li $v0, 10
    syscall