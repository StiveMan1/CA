.data
msg1: .asciiz "Enter n : "
msg2: .asciiz "\nThe sum of all natural numbers upto n is : "
input: .word 0
answer: .word 0
.text 


li $v0,4
la $a0, msg1 #outputting the msg "Enter n : "
syscall

li $v0,5 #taking input
syscall
sw $v0, input

lw $a0,input
jal rec #call the function
sw $v0, answer

li $v0, 4
la $a0, msg2 #outputting the msg "\nThe sum of all natural numbers upto n is : "
syscall

li $v0, 1
lw $a0,answer #outputting the answer
syscall

li $v0, 10
syscall
 
rec : 
	subu $sp,$sp,8
	sw $ra, 0($sp)
	sw $s0, 4($sp)
	li $v0, 0
	beq $a0,$zero,done  # go to done if we've reached 0
    	move $s0, $a0
    	subi $a0, $a0, 1 
    	jal rec
    	
    	add $v0,$s0,$v0
    	
done : 
	lw $ra, 0($sp)
	lw $s0, 4($sp)
	addu $sp, $sp, 8
	jr $ra