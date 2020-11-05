.data
output1: .asciiz " Enter the number : "
posit: .asciiz " 1 "
zro: .asciiz " 0 "
nega: .asciiz " -1 "

.text 
li $v0 , 4
la $a0 , output1
syscall
li $v0, 5
syscall

bgtz $v0, m1
beq $v0, $zero, m2
slt $t1, $v0, $zero
beq $t1, 1,m3

m1:
	li $v0 ,4
	la $a0 ,posit
	syscall
	li $v0, 10
	syscall

m2: 
	li $v0 ,4
	la $a0 ,zro
	syscall
	li $v0, 10
	syscall

m3:
	li $v0 ,4
	la $a0 ,nega
	syscall
	li $v0, 10
	syscall