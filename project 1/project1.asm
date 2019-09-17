#######lucas Heredia project 1

.data
ask: .asciiz "Enter 4 integers for A,B,C,D respectively:\n"  
F:"f_ten="
b:"f_two="
g:"g_ten="
b1:"g_two="
line:"\n"
.text
li  $v0,4
la $a0,ask

syscall


li  $v0,5
syscall
move $t0,$v0


li  $v0,5
syscall
move $t1,$v0

li  $v0,5
syscall
move $t2,$v0

li  $v0,5
syscall
move $t3,$v0


li $a0,0

#a,b,c,d, = $t0,$t1,$t2,$t3


###########

li $s0,0
li $t7,0

loop:

bge $s0,$t0,exit
add $t7,$t7,$t0
addi $s0,$s0,1

j loop

exit:

################

li $s0,0
li $t8,0
loop1:

bge $s0,$t3,exit1
add $t8,$t8,$t1
addi $s0,$s0,1
j loop1

exit1:


li $v0,4
la $a0,F
syscall

sub $s7,$t7,$t8



li $v0,1
move $a0, $s7
syscall

li $v0,4
la $a0,line
syscall


li $v0,4
la $a0,b
syscall



li $v0,35
move $a0, $s7
syscall



li $v0,4
la $a0,line
syscall


############# second equation

li $s0,0
li $t8,0
loop2:

bge $s0,$t3,exit2
add $t8,$t8,$t0
addi $s0,$s0,1
j loop2

exit2:


li $s0,0
li $t7,0

loop3:

bge $s0,6,exit3
add $t7,$t7,$t2
addi $s0,$s0,1

j loop3

exit3:


add $s7,$t7,$t8



li $v0,4
la $a0,g
syscall

li $v0,1
move $a0, $s7
syscall


li $v0,4
la $a0,line
syscall


li $v0,4
la $a0,b1
syscall



li $v0,35
move $a0, $s7
syscall



li $v0,4
la $a0,line
syscall
