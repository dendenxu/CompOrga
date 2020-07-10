0 lw  $t1, 0($t0)
1 lw  $t2, 12($t0)
2 lw  $t4, 4($t0)
3 add $t3, $t1, $t2
4 add $t2, $t3, $t2
5 add $t3, $t3, $t1
6 beq $t3, $t4, 4
7 j   16
8 sw  $t2, 8($t0)
9 j   0