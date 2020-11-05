
.data
mes: .asciiz "Enter a number: "
INF: .float 1000000.0
.text

addi $s0 , $zero , 0
addi $s1 , $zero , 8
l.s $f1 , INF

loop:
	beq $s0 , $s1 , brek
	li $v0 , 4
	la $a0 , mes
	syscall
	addi $s0 , $s0 , 1
	li $v0 , 6
	syscall
	c.lt.s  $f0 , $f1
	bc1f something
	mov.s  $f1 , $f0
	something:
   	 j loop
brek:

li $v0 , 2
mov.s $f12 , $f1
syscall

li $v0 , 10
syscall
