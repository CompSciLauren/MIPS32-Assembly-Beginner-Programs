.data
fizz_string:    .asciiz    ", Fizz"
buzz_string:    .asciiz    ", Buzz"
fizzbuzz_string:    .asciiz    ", Fizz Buzz"
comma_string:    .asciiz    ", "

.text
.globl  main

main:
    li $v0, 4
    li $t0, 100 # total number of iterations
    li $t1, 0 # current number (start at 1, will end at 100)
    li $t2, 15 # for checking $t1 % $t3 AND $t1 % $t5
    li $t3, 3 # for checking $t1 % $t3
    li $t5, 5 # for checking $t1 % $t5
loop:
    beq $t1, $t0, end # if t1 == t0 then end loop
    addi $t1, $t1, 1 # add 1 to t1

    beq $t1, 1, firstPrint # if t1 == 1 then print without comma

    div $t1, $t2
    mfhi $s0
    beq $s0 $0 fizzbuzz # if $t1 % $t2 == 0, go to fizzbuzz

    div $t1, $t3
    mfhi $s0
    beq $s0 $0 fizz # if $t1 % $t3 == 0, go to fizz

    div $t1, $t5
    mfhi $s0
    beq $s0 $0 buzz # if $t1 % $t5 == 0, go to buzz

    la $a0, comma_string # print comma
    li $v0, 4
    syscall
    la $a0, ($t1) # print number
    li $v0, 1
    syscall

    j loop
fizz:
    la $a0, fizz_string # print fizz
    li $v0, 4
    syscall
    j loop
buzz:
    la $a0, buzz_string # print buzz
    li $v0, 4
    syscall
    j loop
fizzbuzz:
    la $a0, fizzbuzz_string # print fizzbuzz
    li $v0, 4
    syscall
    j loop
firstPrint:
    la $a0, ($t1)
    li $v0, 1
    syscall
    j loop
end:
    li $v0, 10
    syscall