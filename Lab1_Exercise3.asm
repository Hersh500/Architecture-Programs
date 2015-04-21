#Seven Nation Army - The White Stripes

li $t6, 15
li $a2, 39
li $a3, 100
li $t1, 0
li $t7, 0
la $t2, pitches
la $t3, duration

play:
add $t4, $t2, $t1
add $t5, $t3, $t7
lb $a0, 0($t4)
lw $a1, 0($t5)
li $v0, 33
syscall
addi $t1, $t1, 1
addi $t7, $t7, 4
bne  $t1, $t6, play

.data 
pitches: .byte 40 40 43 40 38 36 35 40 40 43 40 38 36 35
duration: .word 600 200 300 300 200 900 600 600 200 300 300 200 900 600
