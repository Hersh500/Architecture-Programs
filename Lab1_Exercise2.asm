li $v0, 4 #Loads service num
la $a0, ask_name #loads prompt string
syscall #prints 

li $v0, 8 #Loads service num
la $a0, name #loads address of variable called "name"
lw $a1, name_length
syscall #reads string from stdin into address "name"

li $v0, 4 #Loads service num
la $a0, ask_age #Loads prompt string 
syscall #prints prompt string

li $v0, 5 #Loads service num
syscall #reads integer into $v0
move $t1, $v0 #stores integer in $t1

li $v0, 4 #Loads service num
la $a0, hello #loads address of string
syscall #prints string

li $v0, 4 #Loads service num
la $a0, name #loads address of variable called name
syscall #prints string at address of variable: "name"

addi $t1, $t1, 4 #Immediate addition of int at $t1 and 4, stored in $t1

li $v0, 4 #Loads service num
la $a0, age_sum1 #loads string
syscall #prints string

li $v0, 1 #Loads service num
move $a0, $t1 #moves sum into $a0
syscall #prints integer

li $v0, 4 #Loads service num
la $a0, age_sum2 #loads last string
syscall #prints string 

# the null-terminated string must be defined in data segment
.data
ask_name: .asciiz "What is your name? "
ask_age: .asciiz "What is your age? "
name: .space 51 #will hold up to 50 chars
name_length: .word 50  
hello: .asciiz "Hello, "
age_sum1: .asciiz "You will be "
age_sum2: .asciiz " years old in four years."
