.data 
pi: .float 3.1415
e: .float 2.71828
.text
l.s $f1, pi #load 3.1415 into $f1
l.s $f2, e #load 2.71828 into $f1
 
mul.s $f0, $f2, $f2 #multiply e by itself and store it in $f0

li $v0, 2
div.s $f12, $f0,$f1 #divide e^2 over pi
syscall

li $v0, 10
syscall
