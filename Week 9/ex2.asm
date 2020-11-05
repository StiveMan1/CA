.data
op1: .asciiz "Enter n : "
op2: .asciiz "The Result is : "
.text
li $v0, 4
la $a0, op1
syscall

li $v0, 5
syscall

add $s1 , $zero , $v0
add $s0, $zero,$zero
addi $t1 , $zero , 1
addi $t2 , $zero , 2
addi $s1 , $s1 , 1

jal loop
#
subi $t1 , $t1 , 2
move $a0 , $t1
li $v0 , 1
syscall

li $v0, 10
syscall

loop:
	addi $sp, $sp, -8
	sw   $ra, 0($sp)
	sw   $s0, 4($sp)
    
	beq  $s0, $s1, return0
    
	addi $s0 , $s0, 1
    
	jal loop
	mul $t1 , $t1 , $t2

	exit:
    	lw   $ra, 0($sp)
    	lw   $s0, 4($sp)
    	addi $sp, $sp, 8
    	jr $ra

	return0:
    	j exit