# Implemented comment character '#' for marker in the asm file
        # When '#' is encountered, the entire line will be ignored
# Tester for irregular input, like trailing space or space every where
      add $s0,$s1,$s2
add $s0, $s1, $s2
add $s0, $s1, $s2
add $s0,            $s1, $s2
add $s0, $s1, $s2
add $s0, $s1, $s2
 lw $t0,  100(               $t2           )
lw $t0,      100( $t2 )    
lw $t0, 100( $t2 )
    lb $t0, 100( $t2 )
sw $t0, 100( $t2 )
lb $t0, 100( $t2 )
sb $t0, 100( $t2 )
  jr $ra
jr $ra
jr $ra
j 10000
 jal 100
   addi $v0, $v1, 10000 # This is some inline comment, please ignore me
sll $t1, $t2, 10
srl $t1, $t2, 10

# Implemented comment for marker in the asm file
# The following is some error case we've implemented
# You can uncomment some of them to test the result

# Extra comma
# add $s0, $s1, $s2,
# add $s0, $s1,, $s2

# Unrecognized instruction
# abc $s0, $s1, $s2

# Unrecognized register
# add $abc,$s1, $s2

# Wrong syntax
# add  $v0, $v1, $zero,
# add  $v0, $v1
# add  $v0, $v1, 100
# add  100, $v0, $v1
# 
# andi $t9, $gp, 100,
# andi $t9, $gp,
# andi $t9, $gp, $s0
# andi $t9, 100
# andi 100, $t1
# 
# sw  $v0, 10($v1
# sw  $v0, 10$v1)
# sw  $v0, 10($v1),
# sw  $v0, 10($v1), 10
# 
# j    1,
# j    $v1
# j    ,
# j    1,1
# 
# jr   $v0,
# jr   0
# jr   $v0, 10
# jr   $v0, $v1


# All implemented instructions and registers test
add  $v0, $v1, $zero
sub  $a0, $a1, $a2
and  $a3, $t0, $t1
or   $t2, $t3, $t4
nor  $t5, $t6, $t7
slt  $s0, $s1, $s2

add  $s3, $s4, $s5
sub  $s6, $s7, $t8
and  $t9, $gp, $sp
or   $fp, $ra, $zero
nor  $v0, $v1, $zero
slt  $a0, $a1, $a2

add  $a3, $t0, $t1
sub  $t2, $t3, $t4
and  $t5, $t6, $t7
or   $s0, $s1, $s2
nor  $s0, $s1, $s2
slt  $s6, $s7, $t8

add  $t9, $gp, $sp
sub  $fp, $ra, $zero
and  $v0, $v1, $zero
or   $a0, $a1, $a2
nor  $a3, $t0, $t1
slt  $t2, $t3, $t4

andi $t9, $gp,  1
ori  $s7, $t8,  1
sll  $s5, $s6,  1
srl  $s3, $s4,  1
beq  $s1, $s2,  1
bne  $t7, $s0,  1
addi $t5, $t6,  1

andi $t3, $t4,  10
ori  $t1, $t2,  10
sll  $a3, $t0,  10
srl  $a1, $a2,  10
beq  $a0, $zero,10
bne  $v0, $v1,  10
addi $ra, $zero,10

andi $sp, $fp,  -100
ori  $t9, $gp,  -100
sll  $s7, $t8,  -100
srl  $s5, $s6,  -100
beq  $s3, $s4,  -100
bne  $s1, $s2,  -100
addi $t7, $s0,  -100

andi $t5, $t6,  1000
ori  $t3, $t4,  1000
sll  $t1, $t2,  1000
srl  $a3, $t0,  1000
beq  $a1, $a2,  1000
bne  $a0, $zero,1000
addi $v0, $v1,  1000


sw   $v0, 10($v1)
lw   $a0, 10($zero)
lb   $a1, 10($a2)
sb   $a3, 10($t0)
 
sw   $t1, 100($t2)
lw   $t3, 100($t4)
lb   $t5, 100($t6)
sb   $t7, 100($s0)
 
sw   $s1, 1000($s2)
lw   $s3, 1000($s4)
lb   $s5, 1000($s6)
sb   $s7, 1000($t8)
 
sw   $t9, 1($gp)
lw   $sp, 1($fp)
lb   $ra, 1($zero)
sb   $v0, 1($v1)

jr   $v0
jr   $s0
jr   $t0
jr   $zero

j    1
jal  2

j    -3
jal  -4

j    500
jal  600

j    1000
jal  -1000
