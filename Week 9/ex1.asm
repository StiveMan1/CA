.data 
op1: .asciiz "Enter x : "
op2: .asciiz "Enter y : "
op3: .asciiz "(5.4xy-12.3y+18.23x-8.23) = "
n: .float 5.4
m: .float 12.3
i: .float 18.23
k: .float 8.23
.text
l.s $f1, n
l.s $f2, m
l.s $f3, i
l.s $f4, k
li $v0, 4
la $a0, op1
syscall
li $v0, 6
syscall
mul.s $f1,$f1, $f0
mul.s $f3,$f3, $f0
li $v0, 4
la $a0, op2
syscall
li $v0, 6
syscall
mul.s $f1,$f1, $f0
mul.s $f2,$f2, $f0
sub.s $f5, $f1, $f2
add.s $f6, $f5, $f3
li $v0, 4
la $a0, op3
syscall
li $v0, 2
sub.s $f12, $f6, $f4
syscall
li $v0, 10
syscall
