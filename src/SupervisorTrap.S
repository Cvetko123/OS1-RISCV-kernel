.extern SuperVisorTrapHandler
.align 4
.global SupervisorTrap

SupervisorTrap:
    addi sp, sp, -64
    sd s0, 0(sp)
    sd s1, 8(sp)
    sd s2, 10(sp)
    sd s3, 18(sp)
    sd s4, 20(sp)
    sd s5, 28(sp)
    sd s6, 30(sp)
    sd s7, 38(sp)
    sd s8, 40(sp)
    sd s9, 48(sp)
    sd s10, 50(sp)
    sd s11, 58(sp)




    addi sp, sp, 64
    ld s0, 0(sp)
    ld s1, 8(sp)
    ld s2, 10(sp)
    ld s3, 18(sp)
    ld s4, 20(sp)
    ld s5, 28(sp)
    ld s6, 30(sp)
    ld s7, 38(sp)
    ld s8, 40(sp)
    ld s9, 48(sp)
    ld s10, 50(sp)
    ld s11, 58(sp)