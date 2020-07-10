lw  $t1, 0($t0)
lw  $t2, 12($t0)
lw  $t4, 4($t0)
add $t3, $t1, $t2
add $t2, $t3, $t2
add $t3, $t3, $t1
beq $t3, $t4, 4
j   16
sw  $t2, 8($t0)
j   0