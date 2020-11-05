.data
	mytext: .ascii "Please enter your string:\n"
	input: .space 100
	counter: .word 0
.text
	main:
	#store "space in t3"
	addi $t3,$0,32
	li $t8,1 
	#print mytext
	la $a0,mytext 
	li $v0,4
	syscall
	#get input string from user
	li $v0,8
	la $a0,input
	la $a1,100
	syscall
	#counts the number of spaces in the input string
	li $t0,0
	loop:                    
		add $t1,$a0,$t0
		lb $t2,0($t1)                   
		beq $t2,$zero,exit  #jump to exit when the string ends
		beq $t2,$t3,add1 #jump to counter when encounter a space
		addi $t0,$t0,1      #increase i
		j loop
	add1: 
		addi $t8,$t8,1     
addi $t0,$t0,1                  
j loop

	exit: 
		sw $t8,counter

	li $v0 ,1
	move $a0, $t8
	syscall
	#end of main
	li $v0,10
	syscall
	
