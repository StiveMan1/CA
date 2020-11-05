.data
op1: .asciiz "Enter the Fahrenheit temperature  : "
op2: .asciiz "\nThe Celcius temperature is : "
fv : .float 5.0
nn : .float 9.0
tt : .float 32.0
.text
li $v0,4
la $a0, op1
syscall
li $v0,6
syscall

l.s $f2, fv #load 5.0 into $f2
l.s $f4, nn #load 9.0 into $f4
l.s $f6, tt #load 32.0 into $f6
div.s $f8,$f2, $f4 #divide 5.0 over 9.0 and store in $f8
sub.s $f3, $f0, $f6 # input - 32.0 and store in $f3
li $v0,4
la $a0, op2
syscall
li $v0, 2
mul.s $f12, $f3, $f8 # multiply (input - 32.0) by (5.0/9.0) 
syscall
li $v0, 10