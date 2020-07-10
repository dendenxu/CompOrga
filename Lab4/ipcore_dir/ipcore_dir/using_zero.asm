lw  $at, 0($zero)
lw  $v0, 12($zero)
lw  $a0, 4($zero)
add $v1, $at, $v0
add $v0, $v1, $v0
add $v1, $v1, $at
beq $v1, $a0, 4
j   16
sw  $v0, 8($zero)
j   0