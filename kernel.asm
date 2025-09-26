
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000c117          	auipc	sp,0xc
    80000004:	a0013103          	ld	sp,-1536(sp) # 8000ba00 <_GLOBAL_OFFSET_TABLE_+0x38>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	2b5060ef          	jal	ra,80006ad0 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5Riscv14SupervisorTrapEv>:
.align 4
.global _ZN5Riscv14SupervisorTrapEv


_ZN5Riscv14SupervisorTrapEv:
    addi sp,sp, -256
    80001000:	f0010113          	addi	sp,sp,-256
    .irp index, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31
    sd x\index, \index*8(sp)
    .endr
    80001004:	00013023          	sd	zero,0(sp)
    80001008:	00113423          	sd	ra,8(sp)
    8000100c:	00213823          	sd	sp,16(sp)
    80001010:	00313c23          	sd	gp,24(sp)
    80001014:	02413023          	sd	tp,32(sp)
    80001018:	02513423          	sd	t0,40(sp)
    8000101c:	02613823          	sd	t1,48(sp)
    80001020:	02713c23          	sd	t2,56(sp)
    80001024:	04813023          	sd	s0,64(sp)
    80001028:	04913423          	sd	s1,72(sp)
    8000102c:	04a13823          	sd	a0,80(sp)
    80001030:	04b13c23          	sd	a1,88(sp)
    80001034:	06c13023          	sd	a2,96(sp)
    80001038:	06d13423          	sd	a3,104(sp)
    8000103c:	06e13823          	sd	a4,112(sp)
    80001040:	06f13c23          	sd	a5,120(sp)
    80001044:	09013023          	sd	a6,128(sp)
    80001048:	09113423          	sd	a7,136(sp)
    8000104c:	09213823          	sd	s2,144(sp)
    80001050:	09313c23          	sd	s3,152(sp)
    80001054:	0b413023          	sd	s4,160(sp)
    80001058:	0b513423          	sd	s5,168(sp)
    8000105c:	0b613823          	sd	s6,176(sp)
    80001060:	0b713c23          	sd	s7,184(sp)
    80001064:	0d813023          	sd	s8,192(sp)
    80001068:	0d913423          	sd	s9,200(sp)
    8000106c:	0da13823          	sd	s10,208(sp)
    80001070:	0db13c23          	sd	s11,216(sp)
    80001074:	0fc13023          	sd	t3,224(sp)
    80001078:	0fd13423          	sd	t4,232(sp)
    8000107c:	0fe13823          	sd	t5,240(sp)
    80001080:	0ff13c23          	sd	t6,248(sp)


    call _ZN5Riscv21SupervisorTrapHandlerEv
    80001084:	0f1010ef          	jal	ra,80002974 <_ZN5Riscv21SupervisorTrapHandlerEv>
    sd x10, 10*8(sp)// save a0
    80001088:	04a13823          	sd	a0,80(sp)


    .irp index, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31
    ld x\index, \index*8(sp)
    .endr
    8000108c:	00013003          	ld	zero,0(sp)
    80001090:	00813083          	ld	ra,8(sp)
    80001094:	01013103          	ld	sp,16(sp)
    80001098:	01813183          	ld	gp,24(sp)
    8000109c:	02013203          	ld	tp,32(sp)
    800010a0:	02813283          	ld	t0,40(sp)
    800010a4:	03013303          	ld	t1,48(sp)
    800010a8:	03813383          	ld	t2,56(sp)
    800010ac:	04013403          	ld	s0,64(sp)
    800010b0:	04813483          	ld	s1,72(sp)
    800010b4:	05013503          	ld	a0,80(sp)
    800010b8:	05813583          	ld	a1,88(sp)
    800010bc:	06013603          	ld	a2,96(sp)
    800010c0:	06813683          	ld	a3,104(sp)
    800010c4:	07013703          	ld	a4,112(sp)
    800010c8:	07813783          	ld	a5,120(sp)
    800010cc:	08013803          	ld	a6,128(sp)
    800010d0:	08813883          	ld	a7,136(sp)
    800010d4:	09013903          	ld	s2,144(sp)
    800010d8:	09813983          	ld	s3,152(sp)
    800010dc:	0a013a03          	ld	s4,160(sp)
    800010e0:	0a813a83          	ld	s5,168(sp)
    800010e4:	0b013b03          	ld	s6,176(sp)
    800010e8:	0b813b83          	ld	s7,184(sp)
    800010ec:	0c013c03          	ld	s8,192(sp)
    800010f0:	0c813c83          	ld	s9,200(sp)
    800010f4:	0d013d03          	ld	s10,208(sp)
    800010f8:	0d813d83          	ld	s11,216(sp)
    800010fc:	0e013e03          	ld	t3,224(sp)
    80001100:	0e813e83          	ld	t4,232(sp)
    80001104:	0f013f03          	ld	t5,240(sp)
    80001108:	0f813f83          	ld	t6,248(sp)
    addi sp,sp,256
    8000110c:	10010113          	addi	sp,sp,256
    80001110:	10200073          	sret
	...

0000000080001120 <context_switch>:
.global context_switch
context_switch:
    sd ra, 0*8(a0)
    80001120:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp, 1*8(a0)
    80001124:	00253423          	sd	sp,8(a0)

    ld ra, 0*8(a1)
    80001128:	0005b083          	ld	ra,0(a1)
    ld sp, 1*8(a1)
    8000112c:	0085b103          	ld	sp,8(a1)

    80001130:	00008067          	ret

0000000080001134 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    80001134:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    80001138:	00b29a63          	bne	t0,a1,8000114c <fail>
    sc.w t0, a2, (a0)      # Try to update.
    8000113c:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    80001140:	fe029ae3          	bnez	t0,80001134 <copy_and_swap>
    li a0, 0               # Set return to success.
    80001144:	00000513          	li	a0,0
    jr ra                  # Return.
    80001148:	00008067          	ret

000000008000114c <fail>:
    fail:
    li a0, 1               # Set return to failure.
    8000114c:	00100513          	li	a0,1
    80001150:	00008067          	ret

0000000080001154 <_Z9mem_allocm>:
{
    __asm__ volatile("mv a0, %0" ::"r"(opcode));
    __asm__ volatile("ecall");
}

void* mem_alloc(size_t size) {
    80001154:	ff010113          	addi	sp,sp,-16
    80001158:	00813423          	sd	s0,8(sp)
    8000115c:	01010413          	addi	s0,sp,16
    size_t offset = size % MEM_BLOCK_SIZE;
    80001160:	00357793          	andi	a5,a0,3
    if (offset!=0)
    80001164:	00078463          	beqz	a5,8000116c <_Z9mem_allocm+0x18>
        offset=1;
    80001168:	00100793          	li	a5,1
    size_t blocks=size/MEM_BLOCK_SIZE +offset;
    8000116c:	00255513          	srli	a0,a0,0x2
    80001170:	00f50533          	add	a0,a0,a5
    __asm__ volatile ("mv a1, %[x]" :: [x] "r" (blocks));
    80001174:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" ::"r"(opcode));
    80001178:	00100793          	li	a5,1
    8000117c:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001180:	00000073          	ecall
    invoke(MEM_ALLOC);

    uint64 ret;
    __asm__ volatile ("mv %[x], a0" : [x] "=r" (ret));
    80001184:	00050513          	mv	a0,a0
    return (void*)ret;
}
    80001188:	00813403          	ld	s0,8(sp)
    8000118c:	01010113          	addi	sp,sp,16
    80001190:	00008067          	ret

0000000080001194 <_Z8mem_freePv>:

int mem_free(void* ptr) {
    80001194:	ff010113          	addi	sp,sp,-16
    80001198:	00813423          	sd	s0,8(sp)
    8000119c:	01010413          	addi	s0,sp,16
    if (ptr==nullptr) {
    800011a0:	02050463          	beqz	a0,800011c8 <_Z8mem_freePv+0x34>
        return 0;
    }
    void *p=ptr;
    __asm__ volatile ("mv a1, %[x]" :: [x] "r" (p));
    800011a4:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" ::"r"(opcode));
    800011a8:	00200793          	li	a5,2
    800011ac:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800011b0:	00000073          	ecall
    invoke(MEM_FREE);
    uint64 ret;
    __asm__ volatile ("mv %[x], a0" : [x] "=r" (ret));
    800011b4:	00050513          	mv	a0,a0
    return (int)ret;
    800011b8:	0005051b          	sext.w	a0,a0
}
    800011bc:	00813403          	ld	s0,8(sp)
    800011c0:	01010113          	addi	sp,sp,16
    800011c4:	00008067          	ret
        return 0;
    800011c8:	00000513          	li	a0,0
    800011cc:	ff1ff06f          	j	800011bc <_Z8mem_freePv+0x28>

00000000800011d0 <_Z18mem_get_free_spacev>:

size_t mem_get_free_space() {
    800011d0:	ff010113          	addi	sp,sp,-16
    800011d4:	00813423          	sd	s0,8(sp)
    800011d8:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a0, %0" ::"r"(opcode));
    800011dc:	00300793          	li	a5,3
    800011e0:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800011e4:	00000073          	ecall

    invoke(MEM_GET_FREE_SPACE);
    uint64 ret;
    __asm__ volatile ("mv %[x], a0" : [x] "=r" (ret));
    800011e8:	00050513          	mv	a0,a0
    return (size_t)ret;
}
    800011ec:	00813403          	ld	s0,8(sp)
    800011f0:	01010113          	addi	sp,sp,16
    800011f4:	00008067          	ret

00000000800011f8 <_Z26mem_get_largest_free_blockv>:

size_t mem_get_largest_free_block() {
    800011f8:	ff010113          	addi	sp,sp,-16
    800011fc:	00813423          	sd	s0,8(sp)
    80001200:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a0, %0" ::"r"(opcode));
    80001204:	00400793          	li	a5,4
    80001208:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    8000120c:	00000073          	ecall
    invoke(MEM_GET_LARGEST_FREE_BLOCK);
    uint64 ret;
    __asm__ volatile ("mv %[x], a0" : [x] "=r" (ret));
    80001210:	00050513          	mv	a0,a0
    return (size_t)ret;
}
    80001214:	00813403          	ld	s0,8(sp)
    80001218:	01010113          	addi	sp,sp,16
    8000121c:	00008067          	ret

0000000080001220 <_Z13thread_createPP3TCBPFvPvES2_>:


int thread_create(thread_t* handle, void(*start_routine)(void*), void* arg)
{
    80001220:	ff010113          	addi	sp,sp,-16
    80001224:	00813423          	sd	s0,8(sp)
    80001228:	01010413          	addi	s0,sp,16

    __asm__ volatile ("mv a3, %[x]" :: [x] "r" (arg));
    8000122c:	00060693          	mv	a3,a2
    __asm__ volatile ("mv a2, %[x]" :: [x] "r" (start_routine));
    80001230:	00058613          	mv	a2,a1
    __asm__ volatile ("mv a1, %[x]" :: [x] "r" (handle));
    80001234:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" ::"r"(opcode));
    80001238:	01100793          	li	a5,17
    8000123c:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001240:	00000073          	ecall

    invoke(THREAD_CREATE);
    uint64 ret;
    __asm__ volatile ("mv %[x], a0" : [x] "=r" (ret));
    80001244:	00050513          	mv	a0,a0
    return (int)ret;
}
    80001248:	0005051b          	sext.w	a0,a0
    8000124c:	00813403          	ld	s0,8(sp)
    80001250:	01010113          	addi	sp,sp,16
    80001254:	00008067          	ret

0000000080001258 <_Z11thread_exitv>:
int thread_exit()
{
    80001258:	ff010113          	addi	sp,sp,-16
    8000125c:	00813423          	sd	s0,8(sp)
    80001260:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a0, %0" ::"r"(opcode));
    80001264:	01200793          	li	a5,18
    80001268:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    8000126c:	00000073          	ecall
    invoke(THREAD_EXIT);
    uint64 ret;
    __asm__ volatile ("mv %[x], a0" : [x] "=r" (ret));
    80001270:	00050513          	mv	a0,a0
    return (int)ret;
}
    80001274:	0005051b          	sext.w	a0,a0
    80001278:	00813403          	ld	s0,8(sp)
    8000127c:	01010113          	addi	sp,sp,16
    80001280:	00008067          	ret

0000000080001284 <_Z15thread_dispatchv>:

void thread_dispatch()
{
    80001284:	ff010113          	addi	sp,sp,-16
    80001288:	00813423          	sd	s0,8(sp)
    8000128c:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a0, %0" ::"r"(opcode));
    80001290:	01300793          	li	a5,19
    80001294:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001298:	00000073          	ecall
    invoke(THREAD_DISPATCH);
}
    8000129c:	00813403          	ld	s0,8(sp)
    800012a0:	01010113          	addi	sp,sp,16
    800012a4:	00008067          	ret

00000000800012a8 <_Z8sem_openPP3SEMj>:


int sem_open(sem_t* handle, unsigned init)
{
    800012a8:	ff010113          	addi	sp,sp,-16
    800012ac:	00813423          	sd	s0,8(sp)
    800012b0:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a2, %[x]" :: [x] "r" (init));
    800012b4:	00058613          	mv	a2,a1
    __asm__ volatile ("mv a1, %[x]" :: [x] "r" (handle));
    800012b8:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" ::"r"(opcode));
    800012bc:	02100793          	li	a5,33
    800012c0:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800012c4:	00000073          	ecall
    invoke(SEM_OPEN);
    uint64 ret;
    __asm__ volatile ("mv %[x], a0" : [x] "=r" (ret));
    800012c8:	00050513          	mv	a0,a0
    return (int)ret;
}
    800012cc:	0005051b          	sext.w	a0,a0
    800012d0:	00813403          	ld	s0,8(sp)
    800012d4:	01010113          	addi	sp,sp,16
    800012d8:	00008067          	ret

00000000800012dc <_Z9sem_closeP3SEM>:

int sem_close(sem_t handle)
{
    800012dc:	ff010113          	addi	sp,sp,-16
    800012e0:	00813423          	sd	s0,8(sp)
    800012e4:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a1, %[x]" :: [x] "r" (handle));
    800012e8:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" ::"r"(opcode));
    800012ec:	02200793          	li	a5,34
    800012f0:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800012f4:	00000073          	ecall
    invoke(SEM_CLOSE);
    uint64 ret;
    __asm__ volatile ("mv %[x], a0" : [x] "=r" (ret));
    800012f8:	00050513          	mv	a0,a0
    return (int)ret;
}
    800012fc:	0005051b          	sext.w	a0,a0
    80001300:	00813403          	ld	s0,8(sp)
    80001304:	01010113          	addi	sp,sp,16
    80001308:	00008067          	ret

000000008000130c <_Z8sem_waitP3SEM>:

int sem_wait(sem_t id)
{
    8000130c:	ff010113          	addi	sp,sp,-16
    80001310:	00813423          	sd	s0,8(sp)
    80001314:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a1, %[x]" :: [x] "r" (id));
    80001318:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" ::"r"(opcode));
    8000131c:	02300793          	li	a5,35
    80001320:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001324:	00000073          	ecall
    invoke(SEM_WAIT);
    uint64 ret;
    __asm__ volatile ("mv %[x], a0" : [x] "=r" (ret));
    80001328:	00050513          	mv	a0,a0
    return (int)ret;
}
    8000132c:	0005051b          	sext.w	a0,a0
    80001330:	00813403          	ld	s0,8(sp)
    80001334:	01010113          	addi	sp,sp,16
    80001338:	00008067          	ret

000000008000133c <_Z10sem_signalP3SEM>:

int sem_signal(sem_t id)
{
    8000133c:	ff010113          	addi	sp,sp,-16
    80001340:	00813423          	sd	s0,8(sp)
    80001344:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a1, %[x]" :: [x] "r" (id));
    80001348:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" ::"r"(opcode));
    8000134c:	02400793          	li	a5,36
    80001350:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001354:	00000073          	ecall
    invoke(SEM_SIGNAL);
    uint64 ret;
    __asm__ volatile ("mv %[x], a0" : [x] "=r" (ret));
    80001358:	00050513          	mv	a0,a0
    return (int)ret;
}
    8000135c:	0005051b          	sext.w	a0,a0
    80001360:	00813403          	ld	s0,8(sp)
    80001364:	01010113          	addi	sp,sp,16
    80001368:	00008067          	ret

000000008000136c <_Z10time_sleepm>:

int time_sleep(time_t time)
{
    8000136c:	ff010113          	addi	sp,sp,-16
    80001370:	00813423          	sd	s0,8(sp)
    80001374:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a1, %[x]" :: [x] "r" (time));
    80001378:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" ::"r"(opcode));
    8000137c:	03100793          	li	a5,49
    80001380:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001384:	00000073          	ecall
    invoke(TIME_SLEEP);
    uint64 ret;
    __asm__ volatile ("mv %[x], a0" : [x] "=r" (ret));
    80001388:	00050513          	mv	a0,a0
    return (int)ret;
}
    8000138c:	0005051b          	sext.w	a0,a0
    80001390:	00813403          	ld	s0,8(sp)
    80001394:	01010113          	addi	sp,sp,16
    80001398:	00008067          	ret

000000008000139c <_Z4getcv>:

char getc() {
    8000139c:	ff010113          	addi	sp,sp,-16
    800013a0:	00813423          	sd	s0,8(sp)
    800013a4:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a0, %0" ::"r"(opcode));
    800013a8:	04100793          	li	a5,65
    800013ac:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800013b0:	00000073          	ecall
    invoke(GETCHAR);
    uint64 ret;
    __asm__ volatile ("mv %[x], a0" : [x] "=r" (ret));
    800013b4:	00050513          	mv	a0,a0
    return (char)ret;
}
    800013b8:	0ff57513          	andi	a0,a0,255
    800013bc:	00813403          	ld	s0,8(sp)
    800013c0:	01010113          	addi	sp,sp,16
    800013c4:	00008067          	ret

00000000800013c8 <_Z4putcc>:

void putc(char c) {
    800013c8:	ff010113          	addi	sp,sp,-16
    800013cc:	00813423          	sd	s0,8(sp)
    800013d0:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a1, %[x]" :: [x] "r" (c));
    800013d4:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" ::"r"(opcode));
    800013d8:	04200793          	li	a5,66
    800013dc:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800013e0:	00000073          	ecall
    invoke(PUTCHAR);
}
    800013e4:	00813403          	ld	s0,8(sp)
    800013e8:	01010113          	addi	sp,sp,16
    800013ec:	00008067          	ret

00000000800013f0 <_ZN5SList3addEP3TCBm>:

SList::Node* SList::head = nullptr;

int SList::size = 0;

void SList::add(TCB* tcb,time_t time) {
    800013f0:	fe010113          	addi	sp,sp,-32
    800013f4:	00113c23          	sd	ra,24(sp)
    800013f8:	00813823          	sd	s0,16(sp)
    800013fc:	00913423          	sd	s1,8(sp)
    80001400:	01213023          	sd	s2,0(sp)
    80001404:	02010413          	addi	s0,sp,32
    80001408:	00050913          	mv	s2,a0
    8000140c:	00058493          	mv	s1,a1
    Node* newNode = new Node(tcb, time);
    80001410:	01800513          	li	a0,24
    80001414:	00001097          	auipc	ra,0x1
    80001418:	b20080e7          	jalr	-1248(ra) # 80001f34 <_Znwm>
private:
    struct Node {
        TCB* tcb;
        time_t sleepTime;
        Node* next;
        Node(TCB* val,time_t sleep):tcb(val), sleepTime(sleep),next(nullptr){}
    8000141c:	01253023          	sd	s2,0(a0)
    80001420:	00953423          	sd	s1,8(a0)
    80001424:	00053823          	sd	zero,16(a0)
    if(newNode==nullptr)
    80001428:	04050463          	beqz	a0,80001470 <_ZN5SList3addEP3TCBm+0x80>
        return;
    if (head == nullptr || time < head->sleepTime) {
    8000142c:	0000a797          	auipc	a5,0xa
    80001430:	6447b783          	ld	a5,1604(a5) # 8000ba70 <_ZN5SList4headE>
    80001434:	00078663          	beqz	a5,80001440 <_ZN5SList3addEP3TCBm+0x50>
    80001438:	0087b703          	ld	a4,8(a5)
    8000143c:	04e4f663          	bgeu	s1,a4,80001488 <_ZN5SList3addEP3TCBm+0x98>
        newNode->next = head;
    80001440:	00f53823          	sd	a5,16(a0)
        if (head != nullptr) {
    80001444:	00078863          	beqz	a5,80001454 <_ZN5SList3addEP3TCBm+0x64>
            head->sleepTime=head->sleepTime-newNode->sleepTime;
    80001448:	0087b583          	ld	a1,8(a5)
    8000144c:	409584b3          	sub	s1,a1,s1
    80001450:	0097b423          	sd	s1,8(a5)
        }
        head = newNode;
    80001454:	0000a797          	auipc	a5,0xa
    80001458:	60a7be23          	sd	a0,1564(a5) # 8000ba70 <_ZN5SList4headE>
            curr=curr->next;
        }
        newNode->next = curr->next;
        curr->next = newNode;
    }
    size++;
    8000145c:	0000a717          	auipc	a4,0xa
    80001460:	61470713          	addi	a4,a4,1556 # 8000ba70 <_ZN5SList4headE>
    80001464:	00872783          	lw	a5,8(a4)
    80001468:	0017879b          	addiw	a5,a5,1
    8000146c:	00f72423          	sw	a5,8(a4)

}
    80001470:	01813083          	ld	ra,24(sp)
    80001474:	01013403          	ld	s0,16(sp)
    80001478:	00813483          	ld	s1,8(sp)
    8000147c:	00013903          	ld	s2,0(sp)
    80001480:	02010113          	addi	sp,sp,32
    80001484:	00008067          	ret
        while (curr->next != nullptr && curr->next->sleepTime <= newNode->sleepTime) {
    80001488:	0107b683          	ld	a3,16(a5)
    8000148c:	02068263          	beqz	a3,800014b0 <_ZN5SList3addEP3TCBm+0xc0>
    80001490:	0086b603          	ld	a2,8(a3)
    80001494:	00853703          	ld	a4,8(a0)
    80001498:	00c76c63          	bltu	a4,a2,800014b0 <_ZN5SList3addEP3TCBm+0xc0>
            newNode->sleepTime=newNode->sleepTime - curr->sleepTime;
    8000149c:	0087b683          	ld	a3,8(a5)
    800014a0:	40d70733          	sub	a4,a4,a3
    800014a4:	00e53423          	sd	a4,8(a0)
            curr=curr->next;
    800014a8:	0107b783          	ld	a5,16(a5)
        while (curr->next != nullptr && curr->next->sleepTime <= newNode->sleepTime) {
    800014ac:	fddff06f          	j	80001488 <_ZN5SList3addEP3TCBm+0x98>
        newNode->next = curr->next;
    800014b0:	00d53823          	sd	a3,16(a0)
        curr->next = newNode;
    800014b4:	00a7b823          	sd	a0,16(a5)
    800014b8:	fa5ff06f          	j	8000145c <_ZN5SList3addEP3TCBm+0x6c>

00000000800014bc <_ZN5SList7oneTickEv>:

void SList::oneTick() {
    if (!head)
    800014bc:	0000a797          	auipc	a5,0xa
    800014c0:	5b47b783          	ld	a5,1460(a5) # 8000ba70 <_ZN5SList4headE>
    800014c4:	08078863          	beqz	a5,80001554 <_ZN5SList7oneTickEv+0x98>
        return;
    head->sleepTime--;
    800014c8:	0087b703          	ld	a4,8(a5)
    800014cc:	fff70713          	addi	a4,a4,-1
    800014d0:	00e7b423          	sd	a4,8(a5)
    while (head != nullptr && head->sleepTime <= 0) {
    800014d4:	0000a797          	auipc	a5,0xa
    800014d8:	59c7b783          	ld	a5,1436(a5) # 8000ba70 <_ZN5SList4headE>
    800014dc:	06078c63          	beqz	a5,80001554 <_ZN5SList7oneTickEv+0x98>
    800014e0:	0087b703          	ld	a4,8(a5)
    800014e4:	06071863          	bnez	a4,80001554 <_ZN5SList7oneTickEv+0x98>
void SList::oneTick() {
    800014e8:	ff010113          	addi	sp,sp,-16
    800014ec:	00113423          	sd	ra,8(sp)
    800014f0:	00813023          	sd	s0,0(sp)
    800014f4:	01010413          	addi	s0,sp,16
    800014f8:	00c0006f          	j	80001504 <_ZN5SList7oneTickEv+0x48>
    while (head != nullptr && head->sleepTime <= 0) {
    800014fc:	0087b703          	ld	a4,8(a5)
    80001500:	04071263          	bnez	a4,80001544 <_ZN5SList7oneTickEv+0x88>
        head->tcb->unblock();
    80001504:	0007b703          	ld	a4,0(a5)
    static void InitOutputThread();


    bool isFinished() const { return finished;}
    void block() { this->blocked = true; }
    void unblock() { this->blocked = false; }
    80001508:	02070823          	sb	zero,48(a4)
        Scheduler::put(head->tcb);
    8000150c:	0007b503          	ld	a0,0(a5)
    80001510:	00000097          	auipc	ra,0x0
    80001514:	724080e7          	jalr	1828(ra) # 80001c34 <_ZN9Scheduler3putEP3TCB>
        head = head->next;
    80001518:	0000a797          	auipc	a5,0xa
    8000151c:	55878793          	addi	a5,a5,1368 # 8000ba70 <_ZN5SList4headE>
    80001520:	0007b703          	ld	a4,0(a5)
    80001524:	01073703          	ld	a4,16(a4)
    80001528:	00e7b023          	sd	a4,0(a5)
        size--;
    8000152c:	0087a703          	lw	a4,8(a5)
    80001530:	fff7071b          	addiw	a4,a4,-1
    80001534:	00e7a423          	sw	a4,8(a5)
    while (head != nullptr && head->sleepTime <= 0) {
    80001538:	0000a797          	auipc	a5,0xa
    8000153c:	5387b783          	ld	a5,1336(a5) # 8000ba70 <_ZN5SList4headE>
    80001540:	fa079ee3          	bnez	a5,800014fc <_ZN5SList7oneTickEv+0x40>
    }
}
    80001544:	00813083          	ld	ra,8(sp)
    80001548:	00013403          	ld	s0,0(sp)
    8000154c:	01010113          	addi	sp,sp,16
    80001550:	00008067          	ret
    80001554:	00008067          	ret

0000000080001558 <_ZN5BBuffC1Ei>:
#include "../h/BBuff.hpp"
#include "../h/MemoryAllocator.hpp"

BBuff::BBuff(int size)
    80001558:	fe010113          	addi	sp,sp,-32
    8000155c:	00113c23          	sd	ra,24(sp)
    80001560:	00813823          	sd	s0,16(sp)
    80001564:	00913423          	sd	s1,8(sp)
    80001568:	01213023          	sd	s2,0(sp)
    8000156c:	02010413          	addi	s0,sp,32
    80001570:	00050493          	mv	s1,a0
    80001574:	00058913          	mv	s2,a1
{
    this->size = size;
    80001578:	00b52423          	sw	a1,8(a0)
    head=0;
    8000157c:	00052623          	sw	zero,12(a0)
    tail=0;
    80001580:	00052823          	sw	zero,16(a0)
    count=0;
    80001584:	02052423          	sw	zero,40(a0)
    buff=(char*) MemoryAllocator::Instance()->mem_alloc(sizeof(char)*size);
    80001588:	00002097          	auipc	ra,0x2
    8000158c:	850080e7          	jalr	-1968(ra) # 80002dd8 <_ZN15MemoryAllocator8InstanceEv>
    80001590:	00090593          	mv	a1,s2
    80001594:	00002097          	auipc	ra,0x2
    80001598:	8a0080e7          	jalr	-1888(ra) # 80002e34 <_ZN15MemoryAllocator9mem_allocEm>
    8000159c:	00a4b023          	sd	a0,0(s1)
    sem_open(&space,size);
    800015a0:	00090593          	mv	a1,s2
    800015a4:	01848513          	addi	a0,s1,24
    800015a8:	00000097          	auipc	ra,0x0
    800015ac:	d00080e7          	jalr	-768(ra) # 800012a8 <_Z8sem_openPP3SEMj>
    sem_open(&items,0);
    800015b0:	00000593          	li	a1,0
    800015b4:	02048513          	addi	a0,s1,32
    800015b8:	00000097          	auipc	ra,0x0
    800015bc:	cf0080e7          	jalr	-784(ra) # 800012a8 <_Z8sem_openPP3SEMj>
}
    800015c0:	01813083          	ld	ra,24(sp)
    800015c4:	01013403          	ld	s0,16(sp)
    800015c8:	00813483          	ld	s1,8(sp)
    800015cc:	00013903          	ld	s2,0(sp)
    800015d0:	02010113          	addi	sp,sp,32
    800015d4:	00008067          	ret

00000000800015d8 <_ZN5BBuffD1Ev>:

BBuff::~BBuff()
    800015d8:	fe010113          	addi	sp,sp,-32
    800015dc:	00113c23          	sd	ra,24(sp)
    800015e0:	00813823          	sd	s0,16(sp)
    800015e4:	00913423          	sd	s1,8(sp)
    800015e8:	02010413          	addi	s0,sp,32
    800015ec:	00050493          	mv	s1,a0
{
    MemoryAllocator::Instance()->mem_free(buff);
    800015f0:	00001097          	auipc	ra,0x1
    800015f4:	7e8080e7          	jalr	2024(ra) # 80002dd8 <_ZN15MemoryAllocator8InstanceEv>
    800015f8:	0004b583          	ld	a1,0(s1)
    800015fc:	00002097          	auipc	ra,0x2
    80001600:	9b0080e7          	jalr	-1616(ra) # 80002fac <_ZN15MemoryAllocator8mem_freeEPv>
    sem_close(space);
    80001604:	0184b503          	ld	a0,24(s1)
    80001608:	00000097          	auipc	ra,0x0
    8000160c:	cd4080e7          	jalr	-812(ra) # 800012dc <_Z9sem_closeP3SEM>
    sem_close(items);
    80001610:	0204b503          	ld	a0,32(s1)
    80001614:	00000097          	auipc	ra,0x0
    80001618:	cc8080e7          	jalr	-824(ra) # 800012dc <_Z9sem_closeP3SEM>
}
    8000161c:	01813083          	ld	ra,24(sp)
    80001620:	01013403          	ld	s0,16(sp)
    80001624:	00813483          	ld	s1,8(sp)
    80001628:	02010113          	addi	sp,sp,32
    8000162c:	00008067          	ret

0000000080001630 <_ZN5BBuff3putEc>:

void BBuff::put(char c) {
    80001630:	fe010113          	addi	sp,sp,-32
    80001634:	00113c23          	sd	ra,24(sp)
    80001638:	00813823          	sd	s0,16(sp)
    8000163c:	00913423          	sd	s1,8(sp)
    80001640:	01213023          	sd	s2,0(sp)
    80001644:	02010413          	addi	s0,sp,32
    80001648:	00050493          	mv	s1,a0
    8000164c:	00058913          	mv	s2,a1
    sem_wait(space);
    80001650:	01853503          	ld	a0,24(a0)
    80001654:	00000097          	auipc	ra,0x0
    80001658:	cb8080e7          	jalr	-840(ra) # 8000130c <_Z8sem_waitP3SEM>
    if (TCB::running->isBlocked()) {
    8000165c:	0000a797          	auipc	a5,0xa
    80001660:	3b47b783          	ld	a5,948(a5) # 8000ba10 <_GLOBAL_OFFSET_TABLE_+0x48>
    80001664:	0007b783          	ld	a5,0(a5)


    bool isFinished() const { return finished;}
    void block() { this->blocked = true; }
    void unblock() { this->blocked = false; }
    bool isBlocked() const { return blocked; }
    80001668:	0307c783          	lbu	a5,48(a5)
    8000166c:	04079c63          	bnez	a5,800016c4 <_ZN5BBuff3putEc+0x94>
        thread_dispatch();
    }
    buff[tail]=c;
    80001670:	0004b783          	ld	a5,0(s1)
    80001674:	0104a703          	lw	a4,16(s1)
    80001678:	00e787b3          	add	a5,a5,a4
    8000167c:	01278023          	sb	s2,0(a5)
    tail=(tail+1)%size;
    80001680:	0104a783          	lw	a5,16(s1)
    80001684:	0017879b          	addiw	a5,a5,1
    80001688:	0084a703          	lw	a4,8(s1)
    8000168c:	02e7e7bb          	remw	a5,a5,a4
    80001690:	00f4a823          	sw	a5,16(s1)
    count++;
    80001694:	0284a783          	lw	a5,40(s1)
    80001698:	0017879b          	addiw	a5,a5,1
    8000169c:	02f4a423          	sw	a5,40(s1)
    sem_signal(items);
    800016a0:	0204b503          	ld	a0,32(s1)
    800016a4:	00000097          	auipc	ra,0x0
    800016a8:	c98080e7          	jalr	-872(ra) # 8000133c <_Z10sem_signalP3SEM>

}
    800016ac:	01813083          	ld	ra,24(sp)
    800016b0:	01013403          	ld	s0,16(sp)
    800016b4:	00813483          	ld	s1,8(sp)
    800016b8:	00013903          	ld	s2,0(sp)
    800016bc:	02010113          	addi	sp,sp,32
    800016c0:	00008067          	ret
        thread_dispatch();
    800016c4:	00000097          	auipc	ra,0x0
    800016c8:	bc0080e7          	jalr	-1088(ra) # 80001284 <_Z15thread_dispatchv>
    800016cc:	fa5ff06f          	j	80001670 <_ZN5BBuff3putEc+0x40>

00000000800016d0 <_ZN5BBuff3getEv>:

char BBuff::get() {
    800016d0:	fe010113          	addi	sp,sp,-32
    800016d4:	00113c23          	sd	ra,24(sp)
    800016d8:	00813823          	sd	s0,16(sp)
    800016dc:	00913423          	sd	s1,8(sp)
    800016e0:	01213023          	sd	s2,0(sp)
    800016e4:	02010413          	addi	s0,sp,32
    800016e8:	00050493          	mv	s1,a0
    sem_wait(items);
    800016ec:	02053503          	ld	a0,32(a0)
    800016f0:	00000097          	auipc	ra,0x0
    800016f4:	c1c080e7          	jalr	-996(ra) # 8000130c <_Z8sem_waitP3SEM>
    if (TCB::running->isBlocked()) {
    800016f8:	0000a797          	auipc	a5,0xa
    800016fc:	3187b783          	ld	a5,792(a5) # 8000ba10 <_GLOBAL_OFFSET_TABLE_+0x48>
    80001700:	0007b783          	ld	a5,0(a5)
    80001704:	0307c783          	lbu	a5,48(a5)
    80001708:	04079c63          	bnez	a5,80001760 <_ZN5BBuff3getEv+0x90>
        thread_dispatch();
    }
    char c=buff[head];
    8000170c:	0004b703          	ld	a4,0(s1)
    80001710:	00c4a783          	lw	a5,12(s1)
    80001714:	00f70733          	add	a4,a4,a5
    80001718:	00074903          	lbu	s2,0(a4)
    head=(head+1)%size;
    8000171c:	0017879b          	addiw	a5,a5,1
    80001720:	0084a703          	lw	a4,8(s1)
    80001724:	02e7e7bb          	remw	a5,a5,a4
    80001728:	00f4a623          	sw	a5,12(s1)
    count--;
    8000172c:	0284a783          	lw	a5,40(s1)
    80001730:	fff7879b          	addiw	a5,a5,-1
    80001734:	02f4a423          	sw	a5,40(s1)
    sem_signal(space);
    80001738:	0184b503          	ld	a0,24(s1)
    8000173c:	00000097          	auipc	ra,0x0
    80001740:	c00080e7          	jalr	-1024(ra) # 8000133c <_Z10sem_signalP3SEM>
    return c;
}
    80001744:	00090513          	mv	a0,s2
    80001748:	01813083          	ld	ra,24(sp)
    8000174c:	01013403          	ld	s0,16(sp)
    80001750:	00813483          	ld	s1,8(sp)
    80001754:	00013903          	ld	s2,0(sp)
    80001758:	02010113          	addi	sp,sp,32
    8000175c:	00008067          	ret
        thread_dispatch();
    80001760:	00000097          	auipc	ra,0x0
    80001764:	b24080e7          	jalr	-1244(ra) # 80001284 <_Z15thread_dispatchv>
    80001768:	fa5ff06f          	j	8000170c <_ZN5BBuff3getEv+0x3c>

000000008000176c <_Z9fibonaccim>:

#include "../h/print.hpp"
#include "../h/syscall_c.hpp"
#include "../h/syscall_cpp.hpp"

uint64 fibonacci(uint64 n) {
    8000176c:	fe010113          	addi	sp,sp,-32
    80001770:	00113c23          	sd	ra,24(sp)
    80001774:	00813823          	sd	s0,16(sp)
    80001778:	00913423          	sd	s1,8(sp)
    8000177c:	01213023          	sd	s2,0(sp)
    80001780:	02010413          	addi	s0,sp,32
    80001784:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80001788:	00100793          	li	a5,1
    8000178c:	02a7f663          	bgeu	a5,a0,800017b8 <_Z9fibonaccim+0x4c>
    if (n % 4 == 0) thread_dispatch();
    80001790:	00357793          	andi	a5,a0,3
    80001794:	02078e63          	beqz	a5,800017d0 <_Z9fibonaccim+0x64>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80001798:	fff48513          	addi	a0,s1,-1
    8000179c:	00000097          	auipc	ra,0x0
    800017a0:	fd0080e7          	jalr	-48(ra) # 8000176c <_Z9fibonaccim>
    800017a4:	00050913          	mv	s2,a0
    800017a8:	ffe48513          	addi	a0,s1,-2
    800017ac:	00000097          	auipc	ra,0x0
    800017b0:	fc0080e7          	jalr	-64(ra) # 8000176c <_Z9fibonaccim>
    800017b4:	00a90533          	add	a0,s2,a0
}
    800017b8:	01813083          	ld	ra,24(sp)
    800017bc:	01013403          	ld	s0,16(sp)
    800017c0:	00813483          	ld	s1,8(sp)
    800017c4:	00013903          	ld	s2,0(sp)
    800017c8:	02010113          	addi	sp,sp,32
    800017cc:	00008067          	ret
    if (n % 4 == 0) thread_dispatch();
    800017d0:	00000097          	auipc	ra,0x0
    800017d4:	ab4080e7          	jalr	-1356(ra) # 80001284 <_Z15thread_dispatchv>
    800017d8:	fc1ff06f          	j	80001798 <_Z9fibonaccim+0x2c>

00000000800017dc <_Z13initSemaphorev>:

Semaphore* semaphore;

void initSemaphore() {
    if (semaphore) {
    800017dc:	0000a797          	auipc	a5,0xa
    800017e0:	2a47b783          	ld	a5,676(a5) # 8000ba80 <semaphore>
    800017e4:	00078463          	beqz	a5,800017ec <_Z13initSemaphorev+0x10>
    800017e8:	00008067          	ret
void initSemaphore() {
    800017ec:	fe010113          	addi	sp,sp,-32
    800017f0:	00113c23          	sd	ra,24(sp)
    800017f4:	00813823          	sd	s0,16(sp)
    800017f8:	00913423          	sd	s1,8(sp)
    800017fc:	01213023          	sd	s2,0(sp)
    80001800:	02010413          	addi	s0,sp,32
        return;
    }
    semaphore = new Semaphore(1);
    80001804:	01000513          	li	a0,16
    80001808:	00000097          	auipc	ra,0x0
    8000180c:	72c080e7          	jalr	1836(ra) # 80001f34 <_Znwm>
    80001810:	00050493          	mv	s1,a0
    80001814:	00100593          	li	a1,1
    80001818:	00001097          	auipc	ra,0x1
    8000181c:	9a8080e7          	jalr	-1624(ra) # 800021c0 <_ZN9SemaphoreC1Ej>
    80001820:	0000a797          	auipc	a5,0xa
    80001824:	2697b023          	sd	s1,608(a5) # 8000ba80 <semaphore>
    if (semaphore == nullptr) {
    80001828:	00048e63          	beqz	s1,80001844 <_Z13initSemaphorev+0x68>
        pprintString("Failed\n");

    }
}
    8000182c:	01813083          	ld	ra,24(sp)
    80001830:	01013403          	ld	s0,16(sp)
    80001834:	00813483          	ld	s1,8(sp)
    80001838:	00013903          	ld	s2,0(sp)
    8000183c:	02010113          	addi	sp,sp,32
    80001840:	00008067          	ret
        pprintString("Failed\n");
    80001844:	00007517          	auipc	a0,0x7
    80001848:	7dc50513          	addi	a0,a0,2012 # 80009020 <CONSOLE_STATUS+0x10>
    8000184c:	00002097          	auipc	ra,0x2
    80001850:	880080e7          	jalr	-1920(ra) # 800030cc <_Z12pprintStringPKc>
    80001854:	fd9ff06f          	j	8000182c <_Z13initSemaphorev+0x50>
    80001858:	00050913          	mv	s2,a0
    semaphore = new Semaphore(1);
    8000185c:	00048513          	mv	a0,s1
    80001860:	00000097          	auipc	ra,0x0
    80001864:	6fc080e7          	jalr	1788(ra) # 80001f5c <_ZdlPv>
    80001868:	00090513          	mv	a0,s2
    8000186c:	0000b097          	auipc	ra,0xb
    80001870:	39c080e7          	jalr	924(ra) # 8000cc08 <_Unwind_Resume>

0000000080001874 <_Z11workerBodyAv>:

void workerBodyA() {
    80001874:	fe010113          	addi	sp,sp,-32
    80001878:	00113c23          	sd	ra,24(sp)
    8000187c:	00813823          	sd	s0,16(sp)
    80001880:	00913423          	sd	s1,8(sp)
    80001884:	02010413          	addi	s0,sp,32
   initSemaphore();
    80001888:	00000097          	auipc	ra,0x0
    8000188c:	f54080e7          	jalr	-172(ra) # 800017dc <_Z13initSemaphorev>

    // uint64 result = fibonacci(20);
    // pprintString("A: fibonaci="); printInteger(result); pprintString("\n");

    //for (; i < 6; i++) { pprintString("A: i="); printInteger(i); pprintString("\n"); }
    time_sleep(40);
    80001890:	02800513          	li	a0,40
    80001894:	00000097          	auipc	ra,0x0
    80001898:	ad8080e7          	jalr	-1320(ra) # 8000136c <_Z10time_sleepm>
    for (uint64 i = 0; i < 10; i++) {
    8000189c:	00000493          	li	s1,0
    800018a0:	0300006f          	j	800018d0 <_Z11workerBodyAv+0x5c>
        pprintString("A: i="); printInteger(i); pprintString("\n");
        for (uint64 j = 0; j < 10000; j++) {
    800018a4:	00168693          	addi	a3,a3,1
    800018a8:	000027b7          	lui	a5,0x2
    800018ac:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800018b0:	00d7ee63          	bltu	a5,a3,800018cc <_Z11workerBodyAv+0x58>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800018b4:	00000713          	li	a4,0
    800018b8:	000077b7          	lui	a5,0x7
    800018bc:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800018c0:	fee7e2e3          	bltu	a5,a4,800018a4 <_Z11workerBodyAv+0x30>
    800018c4:	00170713          	addi	a4,a4,1
    800018c8:	ff1ff06f          	j	800018b8 <_Z11workerBodyAv+0x44>
    for (uint64 i = 0; i < 10; i++) {
    800018cc:	00148493          	addi	s1,s1,1
    800018d0:	00900793          	li	a5,9
    800018d4:	0297ec63          	bltu	a5,s1,8000190c <_Z11workerBodyAv+0x98>
        pprintString("A: i="); printInteger(i); pprintString("\n");
    800018d8:	00007517          	auipc	a0,0x7
    800018dc:	75050513          	addi	a0,a0,1872 # 80009028 <CONSOLE_STATUS+0x18>
    800018e0:	00001097          	auipc	ra,0x1
    800018e4:	7ec080e7          	jalr	2028(ra) # 800030cc <_Z12pprintStringPKc>
    800018e8:	00048513          	mv	a0,s1
    800018ec:	00002097          	auipc	ra,0x2
    800018f0:	824080e7          	jalr	-2012(ra) # 80003110 <_Z12printIntegerm>
    800018f4:	00008517          	auipc	a0,0x8
    800018f8:	ae450513          	addi	a0,a0,-1308 # 800093d8 <_ZZ12printIntegermE6digits+0x310>
    800018fc:	00001097          	auipc	ra,0x1
    80001900:	7d0080e7          	jalr	2000(ra) # 800030cc <_Z12pprintStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80001904:	00000693          	li	a3,0
    80001908:	fa1ff06f          	j	800018a8 <_Z11workerBodyAv+0x34>
            // TCB::yield();
        }
    }
    pprintString("A finished!\n");
    8000190c:	00007517          	auipc	a0,0x7
    80001910:	72450513          	addi	a0,a0,1828 # 80009030 <CONSOLE_STATUS+0x20>
    80001914:	00001097          	auipc	ra,0x1
    80001918:	7b8080e7          	jalr	1976(ra) # 800030cc <_Z12pprintStringPKc>
    //semaphore->signal();

}
    8000191c:	01813083          	ld	ra,24(sp)
    80001920:	01013403          	ld	s0,16(sp)
    80001924:	00813483          	ld	s1,8(sp)
    80001928:	02010113          	addi	sp,sp,32
    8000192c:	00008067          	ret

0000000080001930 <_Z11workerBodyBv>:

void workerBodyB() {
    80001930:	fe010113          	addi	sp,sp,-32
    80001934:	00113c23          	sd	ra,24(sp)
    80001938:	00813823          	sd	s0,16(sp)
    8000193c:	00913423          	sd	s1,8(sp)
    80001940:	02010413          	addi	s0,sp,32
    initSemaphore();
    80001944:	00000097          	auipc	ra,0x0
    80001948:	e98080e7          	jalr	-360(ra) # 800017dc <_Z13initSemaphorev>
    semaphore->wait();
    8000194c:	0000a517          	auipc	a0,0xa
    80001950:	13453503          	ld	a0,308(a0) # 8000ba80 <semaphore>
    80001954:	00001097          	auipc	ra,0x1
    80001958:	8a4080e7          	jalr	-1884(ra) # 800021f8 <_ZN9Semaphore4waitEv>

    // uint64 result = fibonacci(23);
    // pprintString("B: fibonaci="); printInteger(result); pprintString("\n");

    //for (; i < 16; i++) { pprintString("B: i="); printInteger(i); pprintString("\n"); }
    time_sleep(10);
    8000195c:	00a00513          	li	a0,10
    80001960:	00000097          	auipc	ra,0x0
    80001964:	a0c080e7          	jalr	-1524(ra) # 8000136c <_Z10time_sleepm>
    for (uint64 i = 0; i < 16; i++) {
    80001968:	00000493          	li	s1,0
    8000196c:	0300006f          	j	8000199c <_Z11workerBodyBv+0x6c>
        pprintString("B: i="); printInteger(i); pprintString("\n");
        for (uint64 j = 0; j < 10000; j++) {
    80001970:	00168693          	addi	a3,a3,1
    80001974:	000027b7          	lui	a5,0x2
    80001978:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000197c:	00d7ee63          	bltu	a5,a3,80001998 <_Z11workerBodyBv+0x68>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80001980:	00000713          	li	a4,0
    80001984:	000077b7          	lui	a5,0x7
    80001988:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000198c:	fee7e2e3          	bltu	a5,a4,80001970 <_Z11workerBodyBv+0x40>
    80001990:	00170713          	addi	a4,a4,1
    80001994:	ff1ff06f          	j	80001984 <_Z11workerBodyBv+0x54>
    for (uint64 i = 0; i < 16; i++) {
    80001998:	00148493          	addi	s1,s1,1
    8000199c:	00f00793          	li	a5,15
    800019a0:	0297ec63          	bltu	a5,s1,800019d8 <_Z11workerBodyBv+0xa8>
        pprintString("B: i="); printInteger(i); pprintString("\n");
    800019a4:	00007517          	auipc	a0,0x7
    800019a8:	69c50513          	addi	a0,a0,1692 # 80009040 <CONSOLE_STATUS+0x30>
    800019ac:	00001097          	auipc	ra,0x1
    800019b0:	720080e7          	jalr	1824(ra) # 800030cc <_Z12pprintStringPKc>
    800019b4:	00048513          	mv	a0,s1
    800019b8:	00001097          	auipc	ra,0x1
    800019bc:	758080e7          	jalr	1880(ra) # 80003110 <_Z12printIntegerm>
    800019c0:	00008517          	auipc	a0,0x8
    800019c4:	a1850513          	addi	a0,a0,-1512 # 800093d8 <_ZZ12printIntegermE6digits+0x310>
    800019c8:	00001097          	auipc	ra,0x1
    800019cc:	704080e7          	jalr	1796(ra) # 800030cc <_Z12pprintStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800019d0:	00000693          	li	a3,0
    800019d4:	fa1ff06f          	j	80001974 <_Z11workerBodyBv+0x44>
            // TCB::yield();
        }
    }
    pprintString("B finished!\n");
    800019d8:	00007517          	auipc	a0,0x7
    800019dc:	67050513          	addi	a0,a0,1648 # 80009048 <CONSOLE_STATUS+0x38>
    800019e0:	00001097          	auipc	ra,0x1
    800019e4:	6ec080e7          	jalr	1772(ra) # 800030cc <_Z12pprintStringPKc>
    semaphore->signal();
    800019e8:	0000a517          	auipc	a0,0xa
    800019ec:	09853503          	ld	a0,152(a0) # 8000ba80 <semaphore>
    800019f0:	00001097          	auipc	ra,0x1
    800019f4:	834080e7          	jalr	-1996(ra) # 80002224 <_ZN9Semaphore6signalEv>
}
    800019f8:	01813083          	ld	ra,24(sp)
    800019fc:	01013403          	ld	s0,16(sp)
    80001a00:	00813483          	ld	s1,8(sp)
    80001a04:	02010113          	addi	sp,sp,32
    80001a08:	00008067          	ret

0000000080001a0c <_Z11workerBodyCv>:

void workerBodyC() {
    80001a0c:	fe010113          	addi	sp,sp,-32
    80001a10:	00113c23          	sd	ra,24(sp)
    80001a14:	00813823          	sd	s0,16(sp)
    80001a18:	00913423          	sd	s1,8(sp)
    80001a1c:	02010413          	addi	s0,sp,32
    initSemaphore();
    80001a20:	00000097          	auipc	ra,0x0
    80001a24:	dbc080e7          	jalr	-580(ra) # 800017dc <_Z13initSemaphorev>
    semaphore->wait();
    80001a28:	0000a517          	auipc	a0,0xa
    80001a2c:	05853503          	ld	a0,88(a0) # 8000ba80 <semaphore>
    80001a30:	00000097          	auipc	ra,0x0
    80001a34:	7c8080e7          	jalr	1992(ra) # 800021f8 <_ZN9Semaphore4waitEv>
    time_sleep(8);
    80001a38:	00800513          	li	a0,8
    80001a3c:	00000097          	auipc	ra,0x0
    80001a40:	930080e7          	jalr	-1744(ra) # 8000136c <_Z10time_sleepm>
    for (uint64 i = 0; i < 5; i++) {
    80001a44:	00000493          	li	s1,0
    80001a48:	0300006f          	j	80001a78 <_Z11workerBodyCv+0x6c>
        pprintString("C: i="); printInteger(i); pprintString("\n");
        for (uint64 j = 0; j < 10000; j++) {
    80001a4c:	00168693          	addi	a3,a3,1
    80001a50:	000027b7          	lui	a5,0x2
    80001a54:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001a58:	00d7ee63          	bltu	a5,a3,80001a74 <_Z11workerBodyCv+0x68>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80001a5c:	00000713          	li	a4,0
    80001a60:	000077b7          	lui	a5,0x7
    80001a64:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80001a68:	fee7e2e3          	bltu	a5,a4,80001a4c <_Z11workerBodyCv+0x40>
    80001a6c:	00170713          	addi	a4,a4,1
    80001a70:	ff1ff06f          	j	80001a60 <_Z11workerBodyCv+0x54>
    for (uint64 i = 0; i < 5; i++) {
    80001a74:	00148493          	addi	s1,s1,1
    80001a78:	00400793          	li	a5,4
    80001a7c:	0297ec63          	bltu	a5,s1,80001ab4 <_Z11workerBodyCv+0xa8>
        pprintString("C: i="); printInteger(i); pprintString("\n");
    80001a80:	00007517          	auipc	a0,0x7
    80001a84:	5d850513          	addi	a0,a0,1496 # 80009058 <CONSOLE_STATUS+0x48>
    80001a88:	00001097          	auipc	ra,0x1
    80001a8c:	644080e7          	jalr	1604(ra) # 800030cc <_Z12pprintStringPKc>
    80001a90:	00048513          	mv	a0,s1
    80001a94:	00001097          	auipc	ra,0x1
    80001a98:	67c080e7          	jalr	1660(ra) # 80003110 <_Z12printIntegerm>
    80001a9c:	00008517          	auipc	a0,0x8
    80001aa0:	93c50513          	addi	a0,a0,-1732 # 800093d8 <_ZZ12printIntegermE6digits+0x310>
    80001aa4:	00001097          	auipc	ra,0x1
    80001aa8:	628080e7          	jalr	1576(ra) # 800030cc <_Z12pprintStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80001aac:	00000693          	li	a3,0
    80001ab0:	fa1ff06f          	j	80001a50 <_Z11workerBodyCv+0x44>
            // TCB::yield();
        }
    }
    pprintString("C finished!\n");
    80001ab4:	00007517          	auipc	a0,0x7
    80001ab8:	5ac50513          	addi	a0,a0,1452 # 80009060 <CONSOLE_STATUS+0x50>
    80001abc:	00001097          	auipc	ra,0x1
    80001ac0:	610080e7          	jalr	1552(ra) # 800030cc <_Z12pprintStringPKc>
    // uint64 result = fibonacci(35);
    // pprintString("C: fibonaci="); printInteger(result); pprintString("\n");
    //
    // for (; i < 26; i++) { pprintString("C: i="); printInteger(i); pprintString("\n"); }
    // pprintString("C finished!\n");
    semaphore->signal();
    80001ac4:	0000a517          	auipc	a0,0xa
    80001ac8:	fbc53503          	ld	a0,-68(a0) # 8000ba80 <semaphore>
    80001acc:	00000097          	auipc	ra,0x0
    80001ad0:	758080e7          	jalr	1880(ra) # 80002224 <_ZN9Semaphore6signalEv>
}
    80001ad4:	01813083          	ld	ra,24(sp)
    80001ad8:	01013403          	ld	s0,16(sp)
    80001adc:	00813483          	ld	s1,8(sp)
    80001ae0:	02010113          	addi	sp,sp,32
    80001ae4:	00008067          	ret

0000000080001ae8 <_ZN7WorkerP11workerBodyPEPv>:




void WorkerP::workerBodyP(void* arg) {
    80001ae8:	fe010113          	addi	sp,sp,-32
    80001aec:	00113c23          	sd	ra,24(sp)
    80001af0:	00813823          	sd	s0,16(sp)
    80001af4:	00913423          	sd	s1,8(sp)
    80001af8:	02010413          	addi	s0,sp,32
    80001afc:	00050493          	mv	s1,a0
    static int da=0;
    pprintString("Tu sam\n");
    80001b00:	00007517          	auipc	a0,0x7
    80001b04:	57050513          	addi	a0,a0,1392 # 80009070 <CONSOLE_STATUS+0x60>
    80001b08:	00001097          	auipc	ra,0x1
    80001b0c:	5c4080e7          	jalr	1476(ra) # 800030cc <_Z12pprintStringPKc>
    da++;
    80001b10:	0000a717          	auipc	a4,0xa
    80001b14:	f7070713          	addi	a4,a4,-144 # 8000ba80 <semaphore>
    80001b18:	00872783          	lw	a5,8(a4)
    80001b1c:	0017879b          	addiw	a5,a5,1
    80001b20:	0007869b          	sext.w	a3,a5
    80001b24:	00f72423          	sw	a5,8(a4)
    if (da==4) {
    80001b28:	00400793          	li	a5,4
    80001b2c:	00f68c63          	beq	a3,a5,80001b44 <_ZN7WorkerP11workerBodyPEPv+0x5c>
        terminate();
    }

}
    80001b30:	01813083          	ld	ra,24(sp)
    80001b34:	01013403          	ld	s0,16(sp)
    80001b38:	00813483          	ld	s1,8(sp)
    80001b3c:	02010113          	addi	sp,sp,32
    80001b40:	00008067          	ret
        terminate();
    80001b44:	00048513          	mv	a0,s1
    80001b48:	00000097          	auipc	ra,0x0
    80001b4c:	758080e7          	jalr	1880(ra) # 800022a0 <_ZN14PeriodicThread9terminateEv>
}
    80001b50:	fe1ff06f          	j	80001b30 <_ZN7WorkerP11workerBodyPEPv+0x48>

0000000080001b54 <_Z41__static_initialization_and_destruction_0ii>:
    return queue.removeLast();
}

void Scheduler::put(TCB *x) {
    queue.addFirst(x);
    80001b54:	ff010113          	addi	sp,sp,-16
    80001b58:	00813423          	sd	s0,8(sp)
    80001b5c:	01010413          	addi	s0,sp,16
    80001b60:	00100793          	li	a5,1
    80001b64:	00f50863          	beq	a0,a5,80001b74 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80001b68:	00813403          	ld	s0,8(sp)
    80001b6c:	01010113          	addi	sp,sp,16
    80001b70:	00008067          	ret
    80001b74:	000107b7          	lui	a5,0x10
    80001b78:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001b7c:	fef596e3          	bne	a1,a5,80001b68 <_Z41__static_initialization_and_destruction_0ii+0x14>
    };
    Elem * head;
    Elem *tail;

public:
    List(): head(0), tail(0){}
    80001b80:	0000a797          	auipc	a5,0xa
    80001b84:	f1078793          	addi	a5,a5,-240 # 8000ba90 <_ZN9Scheduler5queueE>
    80001b88:	0007b023          	sd	zero,0(a5)
    80001b8c:	0007b423          	sd	zero,8(a5)
    80001b90:	0007a823          	sw	zero,16(a5)
    80001b94:	fd5ff06f          	j	80001b68 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080001b98 <_ZN9Scheduler3getEv>:
TCB *Scheduler::get() {
    80001b98:	fe010113          	addi	sp,sp,-32
    80001b9c:	00113c23          	sd	ra,24(sp)
    80001ba0:	00813823          	sd	s0,16(sp)
    80001ba4:	00913423          	sd	s1,8(sp)
    80001ba8:	02010413          	addi	s0,sp,32
        if(!tail){tail=head;}
        size++;
    }
    T* removeLast()
    {
        size--;
    80001bac:	0000a797          	auipc	a5,0xa
    80001bb0:	ee478793          	addi	a5,a5,-284 # 8000ba90 <_ZN9Scheduler5queueE>
    80001bb4:	0107a703          	lw	a4,16(a5)
    80001bb8:	fff7071b          	addiw	a4,a4,-1
    80001bbc:	00e7a823          	sw	a4,16(a5)
        if(!head){return 0;}
    80001bc0:	0007b483          	ld	s1,0(a5)
    80001bc4:	04048663          	beqz	s1,80001c10 <_ZN9Scheduler3getEv+0x78>
        Elem* prev=0;
    80001bc8:	00000793          	li	a5,0
        for(Elem* curr=head; curr && curr!=tail; prev=curr, curr=curr->next);
    80001bcc:	00048e63          	beqz	s1,80001be8 <_ZN9Scheduler3getEv+0x50>
    80001bd0:	0000a717          	auipc	a4,0xa
    80001bd4:	ec873703          	ld	a4,-312(a4) # 8000ba98 <_ZN9Scheduler5queueE+0x8>
    80001bd8:	00e48863          	beq	s1,a4,80001be8 <_ZN9Scheduler3getEv+0x50>
    80001bdc:	00048793          	mv	a5,s1
    80001be0:	0084b483          	ld	s1,8(s1)
    80001be4:	fe9ff06f          	j	80001bcc <_ZN9Scheduler3getEv+0x34>
        Elem* elem=tail;
    80001be8:	0000a517          	auipc	a0,0xa
    80001bec:	eb053503          	ld	a0,-336(a0) # 8000ba98 <_ZN9Scheduler5queueE+0x8>
        if(prev) prev->next=0;
    80001bf0:	02078c63          	beqz	a5,80001c28 <_ZN9Scheduler3getEv+0x90>
    80001bf4:	0007b423          	sd	zero,8(a5)
        else head=0;
        tail=prev;
    80001bf8:	0000a717          	auipc	a4,0xa
    80001bfc:	eaf73023          	sd	a5,-352(a4) # 8000ba98 <_ZN9Scheduler5queueE+0x8>
        T* retval= elem->data;
    80001c00:	00053483          	ld	s1,0(a0)
        delete elem;
    80001c04:	00050663          	beqz	a0,80001c10 <_ZN9Scheduler3getEv+0x78>
    80001c08:	00000097          	auipc	ra,0x0
    80001c0c:	354080e7          	jalr	852(ra) # 80001f5c <_ZdlPv>
}
    80001c10:	00048513          	mv	a0,s1
    80001c14:	01813083          	ld	ra,24(sp)
    80001c18:	01013403          	ld	s0,16(sp)
    80001c1c:	00813483          	ld	s1,8(sp)
    80001c20:	02010113          	addi	sp,sp,32
    80001c24:	00008067          	ret
        else head=0;
    80001c28:	0000a717          	auipc	a4,0xa
    80001c2c:	e6073423          	sd	zero,-408(a4) # 8000ba90 <_ZN9Scheduler5queueE>
    80001c30:	fc9ff06f          	j	80001bf8 <_ZN9Scheduler3getEv+0x60>

0000000080001c34 <_ZN9Scheduler3putEP3TCB>:
void Scheduler::put(TCB *x) {
    80001c34:	fe010113          	addi	sp,sp,-32
    80001c38:	00113c23          	sd	ra,24(sp)
    80001c3c:	00813823          	sd	s0,16(sp)
    80001c40:	00913423          	sd	s1,8(sp)
    80001c44:	02010413          	addi	s0,sp,32
    80001c48:	00050493          	mv	s1,a0
        Elem* elem=new Elem(data, head);
    80001c4c:	01000513          	li	a0,16
    80001c50:	00000097          	auipc	ra,0x0
    80001c54:	2e4080e7          	jalr	740(ra) # 80001f34 <_Znwm>
    80001c58:	0000a797          	auipc	a5,0xa
    80001c5c:	e3878793          	addi	a5,a5,-456 # 8000ba90 <_ZN9Scheduler5queueE>
    80001c60:	0007b703          	ld	a4,0(a5)
        Elem(T* data, Elem* next=nullptr): data(data), next(next){}
    80001c64:	00953023          	sd	s1,0(a0)
    80001c68:	00e53423          	sd	a4,8(a0)
        head=elem;
    80001c6c:	00a7b023          	sd	a0,0(a5)
        if(!tail){tail=head;}
    80001c70:	0087b783          	ld	a5,8(a5)
    80001c74:	02078663          	beqz	a5,80001ca0 <_ZN9Scheduler3putEP3TCB+0x6c>
        size++;
    80001c78:	0000a717          	auipc	a4,0xa
    80001c7c:	e1870713          	addi	a4,a4,-488 # 8000ba90 <_ZN9Scheduler5queueE>
    80001c80:	01072783          	lw	a5,16(a4)
    80001c84:	0017879b          	addiw	a5,a5,1
    80001c88:	00f72823          	sw	a5,16(a4)
    80001c8c:	01813083          	ld	ra,24(sp)
    80001c90:	01013403          	ld	s0,16(sp)
    80001c94:	00813483          	ld	s1,8(sp)
    80001c98:	02010113          	addi	sp,sp,32
    80001c9c:	00008067          	ret
        if(!tail){tail=head;}
    80001ca0:	0000a797          	auipc	a5,0xa
    80001ca4:	dea7bc23          	sd	a0,-520(a5) # 8000ba98 <_ZN9Scheduler5queueE+0x8>
    80001ca8:	fd1ff06f          	j	80001c78 <_ZN9Scheduler3putEP3TCB+0x44>

0000000080001cac <_GLOBAL__sub_I__ZN9Scheduler5queueE>:
    80001cac:	ff010113          	addi	sp,sp,-16
    80001cb0:	00113423          	sd	ra,8(sp)
    80001cb4:	00813023          	sd	s0,0(sp)
    80001cb8:	01010413          	addi	s0,sp,16
    80001cbc:	000105b7          	lui	a1,0x10
    80001cc0:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80001cc4:	00100513          	li	a0,1
    80001cc8:	00000097          	auipc	ra,0x0
    80001ccc:	e8c080e7          	jalr	-372(ra) # 80001b54 <_Z41__static_initialization_and_destruction_0ii>
    80001cd0:	00813083          	ld	ra,8(sp)
    80001cd4:	00013403          	ld	s0,0(sp)
    80001cd8:	01010113          	addi	sp,sp,16
    80001cdc:	00008067          	ret

0000000080001ce0 <_Z11userWrapperPv>:
static bool userfinished=false;
static bool Afinished=false;
static bool Bfinished=false;
static bool Cfinished=false;
void userWrapper(void* arg)
{
    80001ce0:	ff010113          	addi	sp,sp,-16
    80001ce4:	00113423          	sd	ra,8(sp)
    80001ce8:	00813023          	sd	s0,0(sp)
    80001cec:	01010413          	addi	s0,sp,16
    pprintString("user main start:\n");
    80001cf0:	00007517          	auipc	a0,0x7
    80001cf4:	38850513          	addi	a0,a0,904 # 80009078 <CONSOLE_STATUS+0x68>
    80001cf8:	00001097          	auipc	ra,0x1
    80001cfc:	3d4080e7          	jalr	980(ra) # 800030cc <_Z12pprintStringPKc>
    userMain();
    80001d00:	00004097          	auipc	ra,0x4
    80001d04:	284080e7          	jalr	644(ra) # 80005f84 <_Z8userMainv>
    pprintString("user main end:\n");
    80001d08:	00007517          	auipc	a0,0x7
    80001d0c:	38850513          	addi	a0,a0,904 # 80009090 <CONSOLE_STATUS+0x80>
    80001d10:	00001097          	auipc	ra,0x1
    80001d14:	3bc080e7          	jalr	956(ra) # 800030cc <_Z12pprintStringPKc>
    userfinished=true;
}
    80001d18:	00813083          	ld	ra,8(sp)
    80001d1c:	00013403          	ld	s0,0(sp)
    80001d20:	01010113          	addi	sp,sp,16
    80001d24:	00008067          	ret

0000000080001d28 <_Z14WorkerAWrapperPv>:

void WorkerAWrapper(void* arg)
{
    80001d28:	ff010113          	addi	sp,sp,-16
    80001d2c:	00113423          	sd	ra,8(sp)
    80001d30:	00813023          	sd	s0,0(sp)
    80001d34:	01010413          	addi	s0,sp,16
    //pprintString("worker A start:\n");
    workerBodyA();
    80001d38:	00000097          	auipc	ra,0x0
    80001d3c:	b3c080e7          	jalr	-1220(ra) # 80001874 <_Z11workerBodyAv>
    //pprintString("worker A end:\n");
    Afinished=true;
}
    80001d40:	00813083          	ld	ra,8(sp)
    80001d44:	00013403          	ld	s0,0(sp)
    80001d48:	01010113          	addi	sp,sp,16
    80001d4c:	00008067          	ret

0000000080001d50 <_Z14WorkerBWrapperPv>:

void WorkerBWrapper(void* arg)
{
    80001d50:	ff010113          	addi	sp,sp,-16
    80001d54:	00113423          	sd	ra,8(sp)
    80001d58:	00813023          	sd	s0,0(sp)
    80001d5c:	01010413          	addi	s0,sp,16
    //pprintString("worker B start:\n");
    workerBodyB();
    80001d60:	00000097          	auipc	ra,0x0
    80001d64:	bd0080e7          	jalr	-1072(ra) # 80001930 <_Z11workerBodyBv>
    //pprintString("worker B end:\n");
    Bfinished=true;
}
    80001d68:	00813083          	ld	ra,8(sp)
    80001d6c:	00013403          	ld	s0,0(sp)
    80001d70:	01010113          	addi	sp,sp,16
    80001d74:	00008067          	ret

0000000080001d78 <_Z14WorkerCWrapperPv>:

void WorkerCWrapper(void* arg)
{
    80001d78:	ff010113          	addi	sp,sp,-16
    80001d7c:	00113423          	sd	ra,8(sp)
    80001d80:	00813023          	sd	s0,0(sp)
    80001d84:	01010413          	addi	s0,sp,16
    //pprintString("worker C start:\n");
    workerBodyC();
    80001d88:	00000097          	auipc	ra,0x0
    80001d8c:	c84080e7          	jalr	-892(ra) # 80001a0c <_Z11workerBodyCv>
    //pprintString("worker C end:\n");
    Cfinished=true;
}
    80001d90:	00813083          	ld	ra,8(sp)
    80001d94:	00013403          	ld	s0,0(sp)
    80001d98:	01010113          	addi	sp,sp,16
    80001d9c:	00008067          	ret

0000000080001da0 <_Z13exit_emulatorv>:



void exit_emulator() {
    80001da0:	ff010113          	addi	sp,sp,-16
    80001da4:	00813423          	sd	s0,8(sp)
    80001da8:	01010413          	addi	s0,sp,16
    uint64 *stop_adr = (uint64*)0x100000;
    uint64 stop_val = 0x5555;

    asm volatile ("sw %0, 0(%1)":: "r" (stop_val), "r" (stop_adr));
    80001dac:	000057b7          	lui	a5,0x5
    80001db0:	55578793          	addi	a5,a5,1365 # 5555 <_entry-0x7fffaaab>
    80001db4:	00100737          	lui	a4,0x100
    80001db8:	00f72023          	sw	a5,0(a4) # 100000 <_entry-0x7ff00000>
}
    80001dbc:	00813403          	ld	s0,8(sp)
    80001dc0:	01010113          	addi	sp,sp,16
    80001dc4:	00008067          	ret

0000000080001dc8 <main>:

void main() {
    80001dc8:	fb010113          	addi	sp,sp,-80
    80001dcc:	04113423          	sd	ra,72(sp)
    80001dd0:	04813023          	sd	s0,64(sp)
    80001dd4:	02913c23          	sd	s1,56(sp)
    80001dd8:	03213823          	sd	s2,48(sp)
    80001ddc:	05010413          	addi	s0,sp,80
    Riscv::set_stvec((uint64)&Riscv::SupervisorTrap);
    80001de0:	0000a797          	auipc	a5,0xa
    80001de4:	c087b783          	ld	a5,-1016(a5) # 8000b9e8 <_GLOBAL_OFFSET_TABLE_+0x20>

};


inline void Riscv::set_stvec(uint64 stvec) {
    __asm__ volatile ("csrw stvec, %[x]" :: [x] "r" (stvec));
    80001de8:	10579073          	csrw	stvec,a5
    uint64 volatile stval;
    __asm__ volatile("csrr %[stval], stval":[stval]"=r"(stval));
    return stval;
}
inline void Riscv::ms_sstatus(uint64 mask) {
    __asm__ volatile("csrs sstatus,%[mask]"::[mask]"r"(mask));
    80001dec:	00200793          	li	a5,2
    80001df0:	1007a073          	csrs	sstatus,a5
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
    Riscv::InitBBuffs();
    80001df4:	00001097          	auipc	ra,0x1
    80001df8:	ab0080e7          	jalr	-1360(ra) # 800028a4 <_ZN5Riscv10InitBBuffsEv>
    thread_t kernelThread;
    thread_create(&kernelThread,nullptr,nullptr);
    80001dfc:	00000613          	li	a2,0
    80001e00:	00000593          	li	a1,0
    80001e04:	fd840513          	addi	a0,s0,-40
    80001e08:	fffff097          	auipc	ra,0xfffff
    80001e0c:	418080e7          	jalr	1048(ra) # 80001220 <_Z13thread_createPP3TCBPFvPvES2_>
    // thread_t coroutines[4];
    // thread_create(&coroutines[0],nullptr,nullptr);
    TCB::InitOutputThread();
    80001e10:	00001097          	auipc	ra,0x1
    80001e14:	8a8080e7          	jalr	-1880(ra) # 800026b8 <_ZN3TCB16InitOutputThreadEv>


    thread_t coroutines[4];
    // PeriodicThread* periodican= new WorkerP(5);
    // periodican->start();
    thread_create(&coroutines[1],userWrapper,nullptr);
    80001e18:	00000613          	li	a2,0
    80001e1c:	00000597          	auipc	a1,0x0
    80001e20:	ec458593          	addi	a1,a1,-316 # 80001ce0 <_Z11userWrapperPv>
    80001e24:	fc040513          	addi	a0,s0,-64
    80001e28:	fffff097          	auipc	ra,0xfffff
    80001e2c:	3f8080e7          	jalr	1016(ra) # 80001220 <_Z13thread_createPP3TCBPFvPvES2_>
    80001e30:	00c0006f          	j	80001e3c <main+0x74>
    //thread_create(&coroutines[3],WorkerCWrapper,nullptr);



    while (!coroutines[1]->isFinished()  || Riscv::OUTbuff->getCnt()>0 ) {
        thread_dispatch();
    80001e34:	fffff097          	auipc	ra,0xfffff
    80001e38:	450080e7          	jalr	1104(ra) # 80001284 <_Z15thread_dispatchv>
    while (!coroutines[1]->isFinished()  || Riscv::OUTbuff->getCnt()>0 ) {
    80001e3c:	fc043783          	ld	a5,-64(s0)
    bool isFinished() const { return finished;}
    80001e40:	0017c783          	lbu	a5,1(a5)
    80001e44:	fe0788e3          	beqz	a5,80001e34 <main+0x6c>
    80001e48:	0000a797          	auipc	a5,0xa
    80001e4c:	bc07b783          	ld	a5,-1088(a5) # 8000ba08 <_GLOBAL_OFFSET_TABLE_+0x40>
    80001e50:	0007b783          	ld	a5,0(a5)
    void put(char c);
    char get();
    BBuff(int size);
    ~BBuff();
    int getCnt() {
        return count;
    80001e54:	0287a783          	lw	a5,40(a5)
    80001e58:	fcf04ee3          	bgtz	a5,80001e34 <main+0x6c>
    80001e5c:	fb840493          	addi	s1,s0,-72
    80001e60:	01c0006f          	j	80001e7c <main+0xb4>
        return MemoryAllocator::Instance()->mem_free(ptr);
    80001e64:	00001097          	auipc	ra,0x1
    80001e68:	f74080e7          	jalr	-140(ra) # 80002dd8 <_ZN15MemoryAllocator8InstanceEv>
    80001e6c:	00090593          	mv	a1,s2
    80001e70:	00001097          	auipc	ra,0x1
    80001e74:	13c080e7          	jalr	316(ra) # 80002fac <_ZN15MemoryAllocator8mem_freeEPv>
    }


    for (auto coroutine: coroutines) { delete coroutine; }
    80001e78:	00848493          	addi	s1,s1,8
    80001e7c:	fd840793          	addi	a5,s0,-40
    80001e80:	02f48063          	beq	s1,a5,80001ea0 <main+0xd8>
    80001e84:	0004b903          	ld	s2,0(s1)
    80001e88:	fe0908e3          	beqz	s2,80001e78 <main+0xb0>
        delete stack;
    80001e8c:	00893503          	ld	a0,8(s2)
    80001e90:	fc050ae3          	beqz	a0,80001e64 <main+0x9c>
    80001e94:	00000097          	auipc	ra,0x0
    80001e98:	0c8080e7          	jalr	200(ra) # 80001f5c <_ZdlPv>
    80001e9c:	fc9ff06f          	j	80001e64 <main+0x9c>

    pprintString("Finished\n");
    80001ea0:	00007517          	auipc	a0,0x7
    80001ea4:	20050513          	addi	a0,a0,512 # 800090a0 <CONSOLE_STATUS+0x90>
    80001ea8:	00001097          	auipc	ra,0x1
    80001eac:	224080e7          	jalr	548(ra) # 800030cc <_Z12pprintStringPKc>

    exit_emulator();
    80001eb0:	00000097          	auipc	ra,0x0
    80001eb4:	ef0080e7          	jalr	-272(ra) # 80001da0 <_Z13exit_emulatorv>


}
    80001eb8:	04813083          	ld	ra,72(sp)
    80001ebc:	04013403          	ld	s0,64(sp)
    80001ec0:	03813483          	ld	s1,56(sp)
    80001ec4:	03013903          	ld	s2,48(sp)
    80001ec8:	05010113          	addi	sp,sp,80
    80001ecc:	00008067          	ret

0000000080001ed0 <_ZN6Thread7wrapperEPv>:
        ret = thread_create(&myHandle, wrapper, (void*)this);
    }
    return ret;
}
void Thread::wrapper(void* ptr)
{
    80001ed0:	ff010113          	addi	sp,sp,-16
    80001ed4:	00113423          	sd	ra,8(sp)
    80001ed8:	00813023          	sd	s0,0(sp)
    80001edc:	01010413          	addi	s0,sp,16
    ((Thread*)ptr)->run();
    80001ee0:	00053783          	ld	a5,0(a0)
    80001ee4:	0107b783          	ld	a5,16(a5)
    80001ee8:	000780e7          	jalr	a5
}
    80001eec:	00813083          	ld	ra,8(sp)
    80001ef0:	00013403          	ld	s0,0(sp)
    80001ef4:	01010113          	addi	sp,sp,16
    80001ef8:	00008067          	ret

0000000080001efc <_ZN9SemaphoreD1Ev>:
Semaphore::Semaphore(unsigned init) {

    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    80001efc:	ff010113          	addi	sp,sp,-16
    80001f00:	00113423          	sd	ra,8(sp)
    80001f04:	00813023          	sd	s0,0(sp)
    80001f08:	01010413          	addi	s0,sp,16
    80001f0c:	0000a797          	auipc	a5,0xa
    80001f10:	8d478793          	addi	a5,a5,-1836 # 8000b7e0 <_ZTV9Semaphore+0x10>
    80001f14:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    80001f18:	00853503          	ld	a0,8(a0)
    80001f1c:	fffff097          	auipc	ra,0xfffff
    80001f20:	3c0080e7          	jalr	960(ra) # 800012dc <_Z9sem_closeP3SEM>
}
    80001f24:	00813083          	ld	ra,8(sp)
    80001f28:	00013403          	ld	s0,0(sp)
    80001f2c:	01010113          	addi	sp,sp,16
    80001f30:	00008067          	ret

0000000080001f34 <_Znwm>:
{
    80001f34:	ff010113          	addi	sp,sp,-16
    80001f38:	00113423          	sd	ra,8(sp)
    80001f3c:	00813023          	sd	s0,0(sp)
    80001f40:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80001f44:	fffff097          	auipc	ra,0xfffff
    80001f48:	210080e7          	jalr	528(ra) # 80001154 <_Z9mem_allocm>
}
    80001f4c:	00813083          	ld	ra,8(sp)
    80001f50:	00013403          	ld	s0,0(sp)
    80001f54:	01010113          	addi	sp,sp,16
    80001f58:	00008067          	ret

0000000080001f5c <_ZdlPv>:
{
    80001f5c:	ff010113          	addi	sp,sp,-16
    80001f60:	00113423          	sd	ra,8(sp)
    80001f64:	00813023          	sd	s0,0(sp)
    80001f68:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    80001f6c:	fffff097          	auipc	ra,0xfffff
    80001f70:	228080e7          	jalr	552(ra) # 80001194 <_Z8mem_freePv>
}
    80001f74:	00813083          	ld	ra,8(sp)
    80001f78:	00013403          	ld	s0,0(sp)
    80001f7c:	01010113          	addi	sp,sp,16
    80001f80:	00008067          	ret

0000000080001f84 <_ZN6ThreadD1Ev>:
Thread::~Thread() {
    80001f84:	fe010113          	addi	sp,sp,-32
    80001f88:	00113c23          	sd	ra,24(sp)
    80001f8c:	00813823          	sd	s0,16(sp)
    80001f90:	00913423          	sd	s1,8(sp)
    80001f94:	02010413          	addi	s0,sp,32
    80001f98:	0000a797          	auipc	a5,0xa
    80001f9c:	82078793          	addi	a5,a5,-2016 # 8000b7b8 <_ZTV6Thread+0x10>
    80001fa0:	00f53023          	sd	a5,0(a0)
    delete myHandle;
    80001fa4:	00853483          	ld	s1,8(a0)
    80001fa8:	02048463          	beqz	s1,80001fd0 <_ZN6ThreadD1Ev+0x4c>
    80001fac:	0084b503          	ld	a0,8(s1)
    80001fb0:	00050663          	beqz	a0,80001fbc <_ZN6ThreadD1Ev+0x38>
    80001fb4:	00000097          	auipc	ra,0x0
    80001fb8:	fa8080e7          	jalr	-88(ra) # 80001f5c <_ZdlPv>
        return MemoryAllocator::Instance()->mem_free(ptr);
    80001fbc:	00001097          	auipc	ra,0x1
    80001fc0:	e1c080e7          	jalr	-484(ra) # 80002dd8 <_ZN15MemoryAllocator8InstanceEv>
    80001fc4:	00048593          	mv	a1,s1
    80001fc8:	00001097          	auipc	ra,0x1
    80001fcc:	fe4080e7          	jalr	-28(ra) # 80002fac <_ZN15MemoryAllocator8mem_freeEPv>
}
    80001fd0:	01813083          	ld	ra,24(sp)
    80001fd4:	01013403          	ld	s0,16(sp)
    80001fd8:	00813483          	ld	s1,8(sp)
    80001fdc:	02010113          	addi	sp,sp,32
    80001fe0:	00008067          	ret

0000000080001fe4 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80001fe4:	fe010113          	addi	sp,sp,-32
    80001fe8:	00113c23          	sd	ra,24(sp)
    80001fec:	00813823          	sd	s0,16(sp)
    80001ff0:	00913423          	sd	s1,8(sp)
    80001ff4:	02010413          	addi	s0,sp,32
    80001ff8:	00050493          	mv	s1,a0
}
    80001ffc:	00000097          	auipc	ra,0x0
    80002000:	f88080e7          	jalr	-120(ra) # 80001f84 <_ZN6ThreadD1Ev>
    80002004:	00048513          	mv	a0,s1
    80002008:	00000097          	auipc	ra,0x0
    8000200c:	f54080e7          	jalr	-172(ra) # 80001f5c <_ZdlPv>
    80002010:	01813083          	ld	ra,24(sp)
    80002014:	01013403          	ld	s0,16(sp)
    80002018:	00813483          	ld	s1,8(sp)
    8000201c:	02010113          	addi	sp,sp,32
    80002020:	00008067          	ret

0000000080002024 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80002024:	fe010113          	addi	sp,sp,-32
    80002028:	00113c23          	sd	ra,24(sp)
    8000202c:	00813823          	sd	s0,16(sp)
    80002030:	00913423          	sd	s1,8(sp)
    80002034:	02010413          	addi	s0,sp,32
    80002038:	00050493          	mv	s1,a0
}
    8000203c:	00000097          	auipc	ra,0x0
    80002040:	ec0080e7          	jalr	-320(ra) # 80001efc <_ZN9SemaphoreD1Ev>
    80002044:	00048513          	mv	a0,s1
    80002048:	00000097          	auipc	ra,0x0
    8000204c:	f14080e7          	jalr	-236(ra) # 80001f5c <_ZdlPv>
    80002050:	01813083          	ld	ra,24(sp)
    80002054:	01013403          	ld	s0,16(sp)
    80002058:	00813483          	ld	s1,8(sp)
    8000205c:	02010113          	addi	sp,sp,32
    80002060:	00008067          	ret

0000000080002064 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) {
    80002064:	ff010113          	addi	sp,sp,-16
    80002068:	00813423          	sd	s0,8(sp)
    8000206c:	01010413          	addi	s0,sp,16
    80002070:	00009797          	auipc	a5,0x9
    80002074:	74878793          	addi	a5,a5,1864 # 8000b7b8 <_ZTV6Thread+0x10>
    80002078:	00f53023          	sd	a5,0(a0)
    myHandle= nullptr;
    8000207c:	00053423          	sd	zero,8(a0)
    this->body=body;
    80002080:	00b53823          	sd	a1,16(a0)
    this->arg=arg;
    80002084:	00c53c23          	sd	a2,24(a0)
}
    80002088:	00813403          	ld	s0,8(sp)
    8000208c:	01010113          	addi	sp,sp,16
    80002090:	00008067          	ret

0000000080002094 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80002094:	ff010113          	addi	sp,sp,-16
    80002098:	00113423          	sd	ra,8(sp)
    8000209c:	00813023          	sd	s0,0(sp)
    800020a0:	01010413          	addi	s0,sp,16
    thread_dispatch();
    800020a4:	fffff097          	auipc	ra,0xfffff
    800020a8:	1e0080e7          	jalr	480(ra) # 80001284 <_Z15thread_dispatchv>
}
    800020ac:	00813083          	ld	ra,8(sp)
    800020b0:	00013403          	ld	s0,0(sp)
    800020b4:	01010113          	addi	sp,sp,16
    800020b8:	00008067          	ret

00000000800020bc <_ZN6ThreadC1Ev>:
Thread::Thread() {
    800020bc:	ff010113          	addi	sp,sp,-16
    800020c0:	00813423          	sd	s0,8(sp)
    800020c4:	01010413          	addi	s0,sp,16
    800020c8:	00009797          	auipc	a5,0x9
    800020cc:	6f078793          	addi	a5,a5,1776 # 8000b7b8 <_ZTV6Thread+0x10>
    800020d0:	00f53023          	sd	a5,0(a0)
    myHandle=nullptr;
    800020d4:	00053423          	sd	zero,8(a0)
    body=nullptr;
    800020d8:	00053823          	sd	zero,16(a0)
    arg=nullptr;
    800020dc:	00053c23          	sd	zero,24(a0)
}
    800020e0:	00813403          	ld	s0,8(sp)
    800020e4:	01010113          	addi	sp,sp,16
    800020e8:	00008067          	ret

00000000800020ec <_ZN6Thread5startEv>:
int Thread::start() {
    800020ec:	ff010113          	addi	sp,sp,-16
    800020f0:	00113423          	sd	ra,8(sp)
    800020f4:	00813023          	sd	s0,0(sp)
    800020f8:	01010413          	addi	s0,sp,16
    if(body!=nullptr)
    800020fc:	01053583          	ld	a1,16(a0)
    80002100:	02058263          	beqz	a1,80002124 <_ZN6Thread5startEv+0x38>
        ret = thread_create(&myHandle, body, arg);
    80002104:	01853603          	ld	a2,24(a0)
    80002108:	00850513          	addi	a0,a0,8
    8000210c:	fffff097          	auipc	ra,0xfffff
    80002110:	114080e7          	jalr	276(ra) # 80001220 <_Z13thread_createPP3TCBPFvPvES2_>
}
    80002114:	00813083          	ld	ra,8(sp)
    80002118:	00013403          	ld	s0,0(sp)
    8000211c:	01010113          	addi	sp,sp,16
    80002120:	00008067          	ret
        ret = thread_create(&myHandle, wrapper, (void*)this);
    80002124:	00050613          	mv	a2,a0
    80002128:	00000597          	auipc	a1,0x0
    8000212c:	da858593          	addi	a1,a1,-600 # 80001ed0 <_ZN6Thread7wrapperEPv>
    80002130:	00850513          	addi	a0,a0,8
    80002134:	fffff097          	auipc	ra,0xfffff
    80002138:	0ec080e7          	jalr	236(ra) # 80001220 <_Z13thread_createPP3TCBPFvPvES2_>
    8000213c:	fd9ff06f          	j	80002114 <_ZN6Thread5startEv+0x28>

0000000080002140 <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t time) {
    80002140:	ff010113          	addi	sp,sp,-16
    80002144:	00113423          	sd	ra,8(sp)
    80002148:	00813023          	sd	s0,0(sp)
    8000214c:	01010413          	addi	s0,sp,16
    return time_sleep(time);
    80002150:	fffff097          	auipc	ra,0xfffff
    80002154:	21c080e7          	jalr	540(ra) # 8000136c <_Z10time_sleepm>
}
    80002158:	00813083          	ld	ra,8(sp)
    8000215c:	00013403          	ld	s0,0(sp)
    80002160:	01010113          	addi	sp,sp,16
    80002164:	00008067          	ret

0000000080002168 <_ZN14PeriodicThread3runEv>:
}
void PeriodicThread::terminate() {
    this->period=0;
}

void PeriodicThread::run() {
    80002168:	fe010113          	addi	sp,sp,-32
    8000216c:	00113c23          	sd	ra,24(sp)
    80002170:	00813823          	sd	s0,16(sp)
    80002174:	00913423          	sd	s1,8(sp)
    80002178:	02010413          	addi	s0,sp,32
    8000217c:	00050493          	mv	s1,a0
    while (period!=0) {
    80002180:	0204b783          	ld	a5,32(s1)
    80002184:	02078463          	beqz	a5,800021ac <_ZN14PeriodicThread3runEv+0x44>
        periodicActivation();
    80002188:	0004b783          	ld	a5,0(s1)
    8000218c:	0187b783          	ld	a5,24(a5)
    80002190:	00048513          	mv	a0,s1
    80002194:	000780e7          	jalr	a5
        if (period!=0)
    80002198:	0204b503          	ld	a0,32(s1)
    8000219c:	fe0502e3          	beqz	a0,80002180 <_ZN14PeriodicThread3runEv+0x18>
            sleep(period);
    800021a0:	00000097          	auipc	ra,0x0
    800021a4:	fa0080e7          	jalr	-96(ra) # 80002140 <_ZN6Thread5sleepEm>
    800021a8:	fd9ff06f          	j	80002180 <_ZN14PeriodicThread3runEv+0x18>
    }
}
    800021ac:	01813083          	ld	ra,24(sp)
    800021b0:	01013403          	ld	s0,16(sp)
    800021b4:	00813483          	ld	s1,8(sp)
    800021b8:	02010113          	addi	sp,sp,32
    800021bc:	00008067          	ret

00000000800021c0 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned init) {
    800021c0:	ff010113          	addi	sp,sp,-16
    800021c4:	00113423          	sd	ra,8(sp)
    800021c8:	00813023          	sd	s0,0(sp)
    800021cc:	01010413          	addi	s0,sp,16
    800021d0:	00009797          	auipc	a5,0x9
    800021d4:	61078793          	addi	a5,a5,1552 # 8000b7e0 <_ZTV9Semaphore+0x10>
    800021d8:	00f53023          	sd	a5,0(a0)
    sem_open(&myHandle, init);
    800021dc:	00850513          	addi	a0,a0,8
    800021e0:	fffff097          	auipc	ra,0xfffff
    800021e4:	0c8080e7          	jalr	200(ra) # 800012a8 <_Z8sem_openPP3SEMj>
}
    800021e8:	00813083          	ld	ra,8(sp)
    800021ec:	00013403          	ld	s0,0(sp)
    800021f0:	01010113          	addi	sp,sp,16
    800021f4:	00008067          	ret

00000000800021f8 <_ZN9Semaphore4waitEv>:
int Semaphore::wait() {
    800021f8:	ff010113          	addi	sp,sp,-16
    800021fc:	00113423          	sd	ra,8(sp)
    80002200:	00813023          	sd	s0,0(sp)
    80002204:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80002208:	00853503          	ld	a0,8(a0)
    8000220c:	fffff097          	auipc	ra,0xfffff
    80002210:	100080e7          	jalr	256(ra) # 8000130c <_Z8sem_waitP3SEM>
}
    80002214:	00813083          	ld	ra,8(sp)
    80002218:	00013403          	ld	s0,0(sp)
    8000221c:	01010113          	addi	sp,sp,16
    80002220:	00008067          	ret

0000000080002224 <_ZN9Semaphore6signalEv>:
int Semaphore::signal() {
    80002224:	ff010113          	addi	sp,sp,-16
    80002228:	00113423          	sd	ra,8(sp)
    8000222c:	00813023          	sd	s0,0(sp)
    80002230:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80002234:	00853503          	ld	a0,8(a0)
    80002238:	fffff097          	auipc	ra,0xfffff
    8000223c:	104080e7          	jalr	260(ra) # 8000133c <_Z10sem_signalP3SEM>
}
    80002240:	00813083          	ld	ra,8(sp)
    80002244:	00013403          	ld	s0,0(sp)
    80002248:	01010113          	addi	sp,sp,16
    8000224c:	00008067          	ret

0000000080002250 <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period):Thread() {
    80002250:	fe010113          	addi	sp,sp,-32
    80002254:	00113c23          	sd	ra,24(sp)
    80002258:	00813823          	sd	s0,16(sp)
    8000225c:	00913423          	sd	s1,8(sp)
    80002260:	01213023          	sd	s2,0(sp)
    80002264:	02010413          	addi	s0,sp,32
    80002268:	00050493          	mv	s1,a0
    8000226c:	00058913          	mv	s2,a1
    80002270:	00000097          	auipc	ra,0x0
    80002274:	e4c080e7          	jalr	-436(ra) # 800020bc <_ZN6ThreadC1Ev>
    80002278:	00009797          	auipc	a5,0x9
    8000227c:	58878793          	addi	a5,a5,1416 # 8000b800 <_ZTV14PeriodicThread+0x10>
    80002280:	00f4b023          	sd	a5,0(s1)
    this->period=period;
    80002284:	0324b023          	sd	s2,32(s1)
}
    80002288:	01813083          	ld	ra,24(sp)
    8000228c:	01013403          	ld	s0,16(sp)
    80002290:	00813483          	ld	s1,8(sp)
    80002294:	00013903          	ld	s2,0(sp)
    80002298:	02010113          	addi	sp,sp,32
    8000229c:	00008067          	ret

00000000800022a0 <_ZN14PeriodicThread9terminateEv>:
void PeriodicThread::terminate() {
    800022a0:	ff010113          	addi	sp,sp,-16
    800022a4:	00813423          	sd	s0,8(sp)
    800022a8:	01010413          	addi	s0,sp,16
    this->period=0;
    800022ac:	02053023          	sd	zero,32(a0)
}
    800022b0:	00813403          	ld	s0,8(sp)
    800022b4:	01010113          	addi	sp,sp,16
    800022b8:	00008067          	ret

00000000800022bc <_ZN7Console4getcEv>:

char Console::getc() {
    800022bc:	ff010113          	addi	sp,sp,-16
    800022c0:	00113423          	sd	ra,8(sp)
    800022c4:	00813023          	sd	s0,0(sp)
    800022c8:	01010413          	addi	s0,sp,16
    return ::getc();
    800022cc:	fffff097          	auipc	ra,0xfffff
    800022d0:	0d0080e7          	jalr	208(ra) # 8000139c <_Z4getcv>
}
    800022d4:	00813083          	ld	ra,8(sp)
    800022d8:	00013403          	ld	s0,0(sp)
    800022dc:	01010113          	addi	sp,sp,16
    800022e0:	00008067          	ret

00000000800022e4 <_ZN7Console4putcEc>:

void Console::putc(char c) {
    800022e4:	ff010113          	addi	sp,sp,-16
    800022e8:	00113423          	sd	ra,8(sp)
    800022ec:	00813023          	sd	s0,0(sp)
    800022f0:	01010413          	addi	s0,sp,16
    ::putc(c);
    800022f4:	fffff097          	auipc	ra,0xfffff
    800022f8:	0d4080e7          	jalr	212(ra) # 800013c8 <_Z4putcc>
}
    800022fc:	00813083          	ld	ra,8(sp)
    80002300:	00013403          	ld	s0,0(sp)
    80002304:	01010113          	addi	sp,sp,16
    80002308:	00008067          	ret

000000008000230c <_ZN6Thread3runEv>:
    int start ();
    static void dispatch ();
    static int sleep (time_t);
protected:
    Thread ();
    virtual void run () {}
    8000230c:	ff010113          	addi	sp,sp,-16
    80002310:	00813423          	sd	s0,8(sp)
    80002314:	01010413          	addi	s0,sp,16
    80002318:	00813403          	ld	s0,8(sp)
    8000231c:	01010113          	addi	sp,sp,16
    80002320:	00008067          	ret

0000000080002324 <_ZN14PeriodicThread18periodicActivationEv>:
class PeriodicThread : public Thread {
public:
    void terminate ();
protected:
    PeriodicThread (time_t period);
    virtual void periodicActivation () {}
    80002324:	ff010113          	addi	sp,sp,-16
    80002328:	00813423          	sd	s0,8(sp)
    8000232c:	01010413          	addi	s0,sp,16
    80002330:	00813403          	ld	s0,8(sp)
    80002334:	01010113          	addi	sp,sp,16
    80002338:	00008067          	ret

000000008000233c <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    8000233c:	ff010113          	addi	sp,sp,-16
    80002340:	00113423          	sd	ra,8(sp)
    80002344:	00813023          	sd	s0,0(sp)
    80002348:	01010413          	addi	s0,sp,16
    8000234c:	00009797          	auipc	a5,0x9
    80002350:	4b478793          	addi	a5,a5,1204 # 8000b800 <_ZTV14PeriodicThread+0x10>
    80002354:	00f53023          	sd	a5,0(a0)
    80002358:	00000097          	auipc	ra,0x0
    8000235c:	c2c080e7          	jalr	-980(ra) # 80001f84 <_ZN6ThreadD1Ev>
    80002360:	00813083          	ld	ra,8(sp)
    80002364:	00013403          	ld	s0,0(sp)
    80002368:	01010113          	addi	sp,sp,16
    8000236c:	00008067          	ret

0000000080002370 <_ZN14PeriodicThreadD0Ev>:
    80002370:	fe010113          	addi	sp,sp,-32
    80002374:	00113c23          	sd	ra,24(sp)
    80002378:	00813823          	sd	s0,16(sp)
    8000237c:	00913423          	sd	s1,8(sp)
    80002380:	02010413          	addi	s0,sp,32
    80002384:	00050493          	mv	s1,a0
    80002388:	00009797          	auipc	a5,0x9
    8000238c:	47878793          	addi	a5,a5,1144 # 8000b800 <_ZTV14PeriodicThread+0x10>
    80002390:	00f53023          	sd	a5,0(a0)
    80002394:	00000097          	auipc	ra,0x0
    80002398:	bf0080e7          	jalr	-1040(ra) # 80001f84 <_ZN6ThreadD1Ev>
    8000239c:	00048513          	mv	a0,s1
    800023a0:	00000097          	auipc	ra,0x0
    800023a4:	bbc080e7          	jalr	-1092(ra) # 80001f5c <_ZdlPv>
    800023a8:	01813083          	ld	ra,24(sp)
    800023ac:	01013403          	ld	s0,16(sp)
    800023b0:	00813483          	ld	s1,8(sp)
    800023b4:	02010113          	addi	sp,sp,32
    800023b8:	00008067          	ret

00000000800023bc <_ZN3TCB14IdleThreadBodyEPv>:
    }
}



void TCB::IdleThreadBody(void *arg) {
    800023bc:	ff010113          	addi	sp,sp,-16
    800023c0:	00813423          	sd	s0,8(sp)
    800023c4:	01010413          	addi	s0,sp,16
    while(1) {  }
    800023c8:	0000006f          	j	800023c8 <_ZN3TCB14IdleThreadBodyEPv+0xc>

00000000800023cc <_ZN3TCB16OutputThreadBodyEPv>:
void TCB::OutputThreadBody(void *arg) {
    800023cc:	fd010113          	addi	sp,sp,-48
    800023d0:	02113423          	sd	ra,40(sp)
    800023d4:	02813023          	sd	s0,32(sp)
    800023d8:	00913c23          	sd	s1,24(sp)
    800023dc:	03010413          	addi	s0,sp,48
        volatile char status = *((char*)CONSOLE_STATUS);
    800023e0:	00009797          	auipc	a5,0x9
    800023e4:	5f87b783          	ld	a5,1528(a5) # 8000b9d8 <_GLOBAL_OFFSET_TABLE_+0x10>
    800023e8:	0007b483          	ld	s1,0(a5)
    800023ec:	0004c783          	lbu	a5,0(s1)
    800023f0:	fcf40fa3          	sb	a5,-33(s0)
        while(status & CONSOLE_TX_STATUS_BIT)
    800023f4:	fdf44783          	lbu	a5,-33(s0)
    800023f8:	0ff7f793          	andi	a5,a5,255
    800023fc:	0207f793          	andi	a5,a5,32
    80002400:	fe0780e3          	beqz	a5,800023e0 <_ZN3TCB16OutputThreadBodyEPv+0x14>
            char c = Riscv::OUTbuff->get();
    80002404:	00009797          	auipc	a5,0x9
    80002408:	6047b783          	ld	a5,1540(a5) # 8000ba08 <_GLOBAL_OFFSET_TABLE_+0x40>
    8000240c:	0007b503          	ld	a0,0(a5)
    80002410:	fffff097          	auipc	ra,0xfffff
    80002414:	2c0080e7          	jalr	704(ra) # 800016d0 <_ZN5BBuff3getEv>
            *((char*)CONSOLE_TX_DATA) = c;
    80002418:	00009797          	auipc	a5,0x9
    8000241c:	5d87b783          	ld	a5,1496(a5) # 8000b9f0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002420:	0007b783          	ld	a5,0(a5)
    80002424:	00a78023          	sb	a0,0(a5)
            status = *((char*)CONSOLE_STATUS);
    80002428:	0004c783          	lbu	a5,0(s1)
    8000242c:	fcf40fa3          	sb	a5,-33(s0)
        while(status & CONSOLE_TX_STATUS_BIT)
    80002430:	fc5ff06f          	j	800023f4 <_ZN3TCB16OutputThreadBodyEPv+0x28>

0000000080002434 <_ZN3TCB12createThreadEPFvPvES0_Pm>:
TCB* TCB::createThread(Body body, void *arg, uint64 *stack) {
    80002434:	fd010113          	addi	sp,sp,-48
    80002438:	02113423          	sd	ra,40(sp)
    8000243c:	02813023          	sd	s0,32(sp)
    80002440:	00913c23          	sd	s1,24(sp)
    80002444:	01213823          	sd	s2,16(sp)
    80002448:	01313423          	sd	s3,8(sp)
    8000244c:	01413023          	sd	s4,0(sp)
    80002450:	03010413          	addi	s0,sp,48
    80002454:	00050993          	mv	s3,a0
    80002458:	00058a13          	mv	s4,a1
    8000245c:	00060913          	mv	s2,a2
    return MemoryAllocator::Instance()->mem_alloc(size);
    80002460:	00001097          	auipc	ra,0x1
    80002464:	978080e7          	jalr	-1672(ra) # 80002dd8 <_ZN15MemoryAllocator8InstanceEv>
    80002468:	04000593          	li	a1,64
    8000246c:	00001097          	auipc	ra,0x1
    80002470:	9c8080e7          	jalr	-1592(ra) # 80002e34 <_ZN15MemoryAllocator9mem_allocEm>
    80002474:	00050493          	mv	s1,a0
              body != nullptr ? (uint64)&TCBWrapper : 0,
              body != nullptr ? (uint64)((char*)stackMem + DEFAULT_STACK_SIZE) : 0
          }),
          body(body),
            blocked(false),
    timeSlice(DEFAULT_TIME_SLICE)
    80002478:	000500a3          	sb	zero,1(a0)
    8000247c:	01253423          	sd	s2,8(a0)
    80002480:	01453823          	sd	s4,16(a0)
              body != nullptr ? (uint64)&TCBWrapper : 0,
    80002484:	04098863          	beqz	s3,800024d4 <_ZN3TCB12createThreadEPFvPvES0_Pm+0xa0>
    80002488:	00000797          	auipc	a5,0x0
    8000248c:	19878793          	addi	a5,a5,408 # 80002620 <_ZN3TCB10TCBWrapperEv>
    timeSlice(DEFAULT_TIME_SLICE)
    80002490:	00f4bc23          	sd	a5,24(s1)
              body != nullptr ? (uint64)((char*)stackMem + DEFAULT_STACK_SIZE) : 0
    80002494:	04098463          	beqz	s3,800024dc <_ZN3TCB12createThreadEPFvPvES0_Pm+0xa8>
    80002498:	00001637          	lui	a2,0x1
    8000249c:	00c90933          	add	s2,s2,a2
    timeSlice(DEFAULT_TIME_SLICE)
    800024a0:	0324b023          	sd	s2,32(s1)
    800024a4:	0334b423          	sd	s3,40(s1)
    800024a8:	02048823          	sb	zero,48(s1)
    800024ac:	00200793          	li	a5,2
    800024b0:	02f4bc23          	sd	a5,56(s1)
    {
        idle=false;
    800024b4:	00048023          	sb	zero,0(s1)
        timeSlice = DEFAULT_TIME_SLICE;
        if (running == nullptr) {
    800024b8:	00009797          	auipc	a5,0x9
    800024bc:	5f07b783          	ld	a5,1520(a5) # 8000baa8 <_ZN3TCB7runningE>
    800024c0:	02078263          	beqz	a5,800024e4 <_ZN3TCB12createThreadEPFvPvES0_Pm+0xb0>
            running = this;
        } else {
            Scheduler::put(this);
    800024c4:	00048513          	mv	a0,s1
    800024c8:	fffff097          	auipc	ra,0xfffff
    800024cc:	76c080e7          	jalr	1900(ra) # 80001c34 <_ZN9Scheduler3putEP3TCB>
    800024d0:	01c0006f          	j	800024ec <_ZN3TCB12createThreadEPFvPvES0_Pm+0xb8>
              body != nullptr ? (uint64)&TCBWrapper : 0,
    800024d4:	00000793          	li	a5,0
    800024d8:	fb9ff06f          	j	80002490 <_ZN3TCB12createThreadEPFvPvES0_Pm+0x5c>
              body != nullptr ? (uint64)((char*)stackMem + DEFAULT_STACK_SIZE) : 0
    800024dc:	00000913          	li	s2,0
    800024e0:	fc1ff06f          	j	800024a0 <_ZN3TCB12createThreadEPFvPvES0_Pm+0x6c>
            running = this;
    800024e4:	00009797          	auipc	a5,0x9
    800024e8:	5c97b223          	sd	s1,1476(a5) # 8000baa8 <_ZN3TCB7runningE>
}
    800024ec:	00048513          	mv	a0,s1
    800024f0:	02813083          	ld	ra,40(sp)
    800024f4:	02013403          	ld	s0,32(sp)
    800024f8:	01813483          	ld	s1,24(sp)
    800024fc:	01013903          	ld	s2,16(sp)
    80002500:	00813983          	ld	s3,8(sp)
    80002504:	00013a03          	ld	s4,0(sp)
    80002508:	03010113          	addi	sp,sp,48
    8000250c:	00008067          	ret
    80002510:	00050913          	mv	s2,a0
        return MemoryAllocator::Instance()->mem_free(ptr);
    80002514:	00001097          	auipc	ra,0x1
    80002518:	8c4080e7          	jalr	-1852(ra) # 80002dd8 <_ZN15MemoryAllocator8InstanceEv>
    8000251c:	00048593          	mv	a1,s1
    80002520:	00001097          	auipc	ra,0x1
    80002524:	a8c080e7          	jalr	-1396(ra) # 80002fac <_ZN15MemoryAllocator8mem_freeEPv>
    80002528:	00090513          	mv	a0,s2
    8000252c:	0000a097          	auipc	ra,0xa
    80002530:	6dc080e7          	jalr	1756(ra) # 8000cc08 <_Unwind_Resume>

0000000080002534 <_ZN3TCB8dispatchEv>:
void TCB::dispatch() {
    80002534:	fe010113          	addi	sp,sp,-32
    80002538:	00113c23          	sd	ra,24(sp)
    8000253c:	00813823          	sd	s0,16(sp)
    80002540:	00913423          	sd	s1,8(sp)
    80002544:	02010413          	addi	s0,sp,32
    TCB *old=running;
    80002548:	00009497          	auipc	s1,0x9
    8000254c:	5604b483          	ld	s1,1376(s1) # 8000baa8 <_ZN3TCB7runningE>
    bool isFinished() const { return finished;}
    80002550:	0014c783          	lbu	a5,1(s1)
    if (!old->isFinished() && !old->isBlocked() && !old->idle) {
    80002554:	00079a63          	bnez	a5,80002568 <_ZN3TCB8dispatchEv+0x34>
    bool isBlocked() const { return blocked; }
    80002558:	0304c783          	lbu	a5,48(s1)
    8000255c:	00079663          	bnez	a5,80002568 <_ZN3TCB8dispatchEv+0x34>
    80002560:	0004c783          	lbu	a5,0(s1)
    80002564:	04078663          	beqz	a5,800025b0 <_ZN3TCB8dispatchEv+0x7c>
    running=Scheduler::get();
    80002568:	fffff097          	auipc	ra,0xfffff
    8000256c:	630080e7          	jalr	1584(ra) # 80001b98 <_ZN9Scheduler3getEv>
    80002570:	00009797          	auipc	a5,0x9
    80002574:	52a7bc23          	sd	a0,1336(a5) # 8000baa8 <_ZN3TCB7runningE>
    if (!running) {
    80002578:	04050463          	beqz	a0,800025c0 <_ZN3TCB8dispatchEv+0x8c>
    timeCounter=0;
    8000257c:	00009797          	auipc	a5,0x9
    80002580:	52c78793          	addi	a5,a5,1324 # 8000baa8 <_ZN3TCB7runningE>
    80002584:	0007b823          	sd	zero,16(a5)
    context_switch(&old->context, &running->context);
    80002588:	0007b583          	ld	a1,0(a5)
    8000258c:	01858593          	addi	a1,a1,24
    80002590:	01848513          	addi	a0,s1,24
    80002594:	fffff097          	auipc	ra,0xfffff
    80002598:	b8c080e7          	jalr	-1140(ra) # 80001120 <context_switch>
}
    8000259c:	01813083          	ld	ra,24(sp)
    800025a0:	01013403          	ld	s0,16(sp)
    800025a4:	00813483          	ld	s1,8(sp)
    800025a8:	02010113          	addi	sp,sp,32
    800025ac:	00008067          	ret
        Scheduler::put(old);
    800025b0:	00048513          	mv	a0,s1
    800025b4:	fffff097          	auipc	ra,0xfffff
    800025b8:	680080e7          	jalr	1664(ra) # 80001c34 <_ZN9Scheduler3putEP3TCB>
    800025bc:	fadff06f          	j	80002568 <_ZN3TCB8dispatchEv+0x34>
        running=idleThread;
    800025c0:	00009797          	auipc	a5,0x9
    800025c4:	4e878793          	addi	a5,a5,1256 # 8000baa8 <_ZN3TCB7runningE>
    800025c8:	0087b703          	ld	a4,8(a5)
    800025cc:	00e7b023          	sd	a4,0(a5)
    800025d0:	fadff06f          	j	8000257c <_ZN3TCB8dispatchEv+0x48>

00000000800025d4 <_ZN3TCB4exitEv>:
    if (running->isFinished()) {
    800025d4:	00009797          	auipc	a5,0x9
    800025d8:	4d47b783          	ld	a5,1236(a5) # 8000baa8 <_ZN3TCB7runningE>
    bool isFinished() const { return finished;}
    800025dc:	0017c703          	lbu	a4,1(a5)
    800025e0:	02071c63          	bnez	a4,80002618 <_ZN3TCB4exitEv+0x44>
int TCB::exit() {
    800025e4:	ff010113          	addi	sp,sp,-16
    800025e8:	00113423          	sd	ra,8(sp)
    800025ec:	00813023          	sd	s0,0(sp)
    800025f0:	01010413          	addi	s0,sp,16
    running->finished=true;
    800025f4:	00100713          	li	a4,1
    800025f8:	00e780a3          	sb	a4,1(a5)
    thread_dispatch();
    800025fc:	fffff097          	auipc	ra,0xfffff
    80002600:	c88080e7          	jalr	-888(ra) # 80001284 <_Z15thread_dispatchv>
    return 0;
    80002604:	00000513          	li	a0,0
}
    80002608:	00813083          	ld	ra,8(sp)
    8000260c:	00013403          	ld	s0,0(sp)
    80002610:	01010113          	addi	sp,sp,16
    80002614:	00008067          	ret
        return -1;
    80002618:	fff00513          	li	a0,-1
}
    8000261c:	00008067          	ret

0000000080002620 <_ZN3TCB10TCBWrapperEv>:
void TCB::TCBWrapper() {
    80002620:	ff010113          	addi	sp,sp,-16
    80002624:	00113423          	sd	ra,8(sp)
    80002628:	00813023          	sd	s0,0(sp)
    8000262c:	01010413          	addi	s0,sp,16
    Riscv::popSppSpie();
    80002630:	00000097          	auipc	ra,0x0
    80002634:	254080e7          	jalr	596(ra) # 80002884 <_ZN5Riscv10popSppSpieEv>
    running->body(running->arg);
    80002638:	00009797          	auipc	a5,0x9
    8000263c:	4707b783          	ld	a5,1136(a5) # 8000baa8 <_ZN3TCB7runningE>
    80002640:	0287b703          	ld	a4,40(a5)
    80002644:	0107b503          	ld	a0,16(a5)
    80002648:	000700e7          	jalr	a4
    TCB::exit();
    8000264c:	00000097          	auipc	ra,0x0
    80002650:	f88080e7          	jalr	-120(ra) # 800025d4 <_ZN3TCB4exitEv>
}
    80002654:	00813083          	ld	ra,8(sp)
    80002658:	00013403          	ld	s0,0(sp)
    8000265c:	01010113          	addi	sp,sp,16
    80002660:	00008067          	ret

0000000080002664 <_ZN3TCB5sleepEm>:
    if (time <= 0) {
    80002664:	04050663          	beqz	a0,800026b0 <_ZN3TCB5sleepEm+0x4c>
int TCB::sleep(time_t time) {
    80002668:	ff010113          	addi	sp,sp,-16
    8000266c:	00113423          	sd	ra,8(sp)
    80002670:	00813023          	sd	s0,0(sp)
    80002674:	01010413          	addi	s0,sp,16
    80002678:	00050593          	mv	a1,a0
    running->block();
    8000267c:	00009517          	auipc	a0,0x9
    80002680:	42c53503          	ld	a0,1068(a0) # 8000baa8 <_ZN3TCB7runningE>
    void block() { this->blocked = true; }
    80002684:	00100793          	li	a5,1
    80002688:	02f50823          	sb	a5,48(a0)
    SList::add(running, time);
    8000268c:	fffff097          	auipc	ra,0xfffff
    80002690:	d64080e7          	jalr	-668(ra) # 800013f0 <_ZN5SList3addEP3TCBm>
    dispatch();
    80002694:	00000097          	auipc	ra,0x0
    80002698:	ea0080e7          	jalr	-352(ra) # 80002534 <_ZN3TCB8dispatchEv>
    return 0;
    8000269c:	00000513          	li	a0,0
}
    800026a0:	00813083          	ld	ra,8(sp)
    800026a4:	00013403          	ld	s0,0(sp)
    800026a8:	01010113          	addi	sp,sp,16
    800026ac:	00008067          	ret
        return -1;
    800026b0:	fff00513          	li	a0,-1
}
    800026b4:	00008067          	ret

00000000800026b8 <_ZN3TCB16InitOutputThreadEv>:





void TCB::InitOutputThread() {
    800026b8:	fd010113          	addi	sp,sp,-48
    800026bc:	02113423          	sd	ra,40(sp)
    800026c0:	02813023          	sd	s0,32(sp)
    800026c4:	00913c23          	sd	s1,24(sp)
    800026c8:	01213823          	sd	s2,16(sp)
    800026cc:	01313423          	sd	s3,8(sp)
    800026d0:	01413023          	sd	s4,0(sp)
    800026d4:	03010413          	addi	s0,sp,48


        outputThread = new TCB(OutputThreadBody,nullptr, (uint64*)MemoryAllocator::Instance()->mem_alloc(DEFAULT_STACK_SIZE));
    800026d8:	00000097          	auipc	ra,0x0
    800026dc:	700080e7          	jalr	1792(ra) # 80002dd8 <_ZN15MemoryAllocator8InstanceEv>
    800026e0:	000015b7          	lui	a1,0x1
    800026e4:	00000097          	auipc	ra,0x0
    800026e8:	750080e7          	jalr	1872(ra) # 80002e34 <_ZN15MemoryAllocator9mem_allocEm>
    800026ec:	00050913          	mv	s2,a0
    return MemoryAllocator::Instance()->mem_alloc(size);
    800026f0:	00000097          	auipc	ra,0x0
    800026f4:	6e8080e7          	jalr	1768(ra) # 80002dd8 <_ZN15MemoryAllocator8InstanceEv>
    800026f8:	04000593          	li	a1,64
    800026fc:	00000097          	auipc	ra,0x0
    80002700:	738080e7          	jalr	1848(ra) # 80002e34 <_ZN15MemoryAllocator9mem_allocEm>
    80002704:	00050493          	mv	s1,a0
    timeSlice(DEFAULT_TIME_SLICE)
    80002708:	000500a3          	sb	zero,1(a0)
    8000270c:	01253423          	sd	s2,8(a0)
    80002710:	00053823          	sd	zero,16(a0)
              body != nullptr ? (uint64)&TCBWrapper : 0,
    80002714:	00000a17          	auipc	s4,0x0
    80002718:	f0ca0a13          	addi	s4,s4,-244 # 80002620 <_ZN3TCB10TCBWrapperEv>
    timeSlice(DEFAULT_TIME_SLICE)
    8000271c:	01453c23          	sd	s4,24(a0)
              body != nullptr ? (uint64)((char*)stackMem + DEFAULT_STACK_SIZE) : 0
    80002720:	00001537          	lui	a0,0x1
    80002724:	00a90933          	add	s2,s2,a0
    timeSlice(DEFAULT_TIME_SLICE)
    80002728:	0324b023          	sd	s2,32(s1)
    8000272c:	00000797          	auipc	a5,0x0
    80002730:	ca078793          	addi	a5,a5,-864 # 800023cc <_ZN3TCB16OutputThreadBodyEPv>
    80002734:	02f4b423          	sd	a5,40(s1)
    80002738:	02048823          	sb	zero,48(s1)
    8000273c:	00200793          	li	a5,2
    80002740:	02f4bc23          	sd	a5,56(s1)
        idle=false;
    80002744:	00048023          	sb	zero,0(s1)
        if (running == nullptr) {
    80002748:	00009797          	auipc	a5,0x9
    8000274c:	3607b783          	ld	a5,864(a5) # 8000baa8 <_ZN3TCB7runningE>
    80002750:	00078a63          	beqz	a5,80002764 <_ZN3TCB16InitOutputThreadEv+0xac>
            Scheduler::put(this);
    80002754:	00048513          	mv	a0,s1
    80002758:	fffff097          	auipc	ra,0xfffff
    8000275c:	4dc080e7          	jalr	1244(ra) # 80001c34 <_ZN9Scheduler3putEP3TCB>
    80002760:	00c0006f          	j	8000276c <_ZN3TCB16InitOutputThreadEv+0xb4>
            running = this;
    80002764:	00009797          	auipc	a5,0x9
    80002768:	3497b223          	sd	s1,836(a5) # 8000baa8 <_ZN3TCB7runningE>
    8000276c:	00009997          	auipc	s3,0x9
    80002770:	33c98993          	addi	s3,s3,828 # 8000baa8 <_ZN3TCB7runningE>
    80002774:	0099bc23          	sd	s1,24(s3)
        Scheduler::put(outputThread);
    80002778:	00048513          	mv	a0,s1
    8000277c:	fffff097          	auipc	ra,0xfffff
    80002780:	4b8080e7          	jalr	1208(ra) # 80001c34 <_ZN9Scheduler3putEP3TCB>



        idleThread=new TCB(IdleThreadBody,nullptr, (uint64*)MemoryAllocator::Instance()->mem_alloc(DEFAULT_STACK_SIZE));
    80002784:	00000097          	auipc	ra,0x0
    80002788:	654080e7          	jalr	1620(ra) # 80002dd8 <_ZN15MemoryAllocator8InstanceEv>
    8000278c:	000015b7          	lui	a1,0x1
    80002790:	00000097          	auipc	ra,0x0
    80002794:	6a4080e7          	jalr	1700(ra) # 80002e34 <_ZN15MemoryAllocator9mem_allocEm>
    80002798:	00050913          	mv	s2,a0
    return MemoryAllocator::Instance()->mem_alloc(size);
    8000279c:	00000097          	auipc	ra,0x0
    800027a0:	63c080e7          	jalr	1596(ra) # 80002dd8 <_ZN15MemoryAllocator8InstanceEv>
    800027a4:	04000593          	li	a1,64
    800027a8:	00000097          	auipc	ra,0x0
    800027ac:	68c080e7          	jalr	1676(ra) # 80002e34 <_ZN15MemoryAllocator9mem_allocEm>
    800027b0:	00050493          	mv	s1,a0
    timeSlice(DEFAULT_TIME_SLICE)
    800027b4:	000500a3          	sb	zero,1(a0) # 1001 <_entry-0x7fffefff>
    800027b8:	01253423          	sd	s2,8(a0)
    800027bc:	00053823          	sd	zero,16(a0)
    800027c0:	01453c23          	sd	s4,24(a0)
              body != nullptr ? (uint64)((char*)stackMem + DEFAULT_STACK_SIZE) : 0
    800027c4:	00001537          	lui	a0,0x1
    800027c8:	00a90933          	add	s2,s2,a0
    timeSlice(DEFAULT_TIME_SLICE)
    800027cc:	0324b023          	sd	s2,32(s1)
    800027d0:	00000797          	auipc	a5,0x0
    800027d4:	bec78793          	addi	a5,a5,-1044 # 800023bc <_ZN3TCB14IdleThreadBodyEPv>
    800027d8:	02f4b423          	sd	a5,40(s1)
    800027dc:	02048823          	sb	zero,48(s1)
    800027e0:	00200793          	li	a5,2
    800027e4:	02f4bc23          	sd	a5,56(s1)
        idle=false;
    800027e8:	00048023          	sb	zero,0(s1)
        if (running == nullptr) {
    800027ec:	0009b783          	ld	a5,0(s3)
    800027f0:	00078a63          	beqz	a5,80002804 <_ZN3TCB16InitOutputThreadEv+0x14c>
            Scheduler::put(this);
    800027f4:	00048513          	mv	a0,s1
    800027f8:	fffff097          	auipc	ra,0xfffff
    800027fc:	43c080e7          	jalr	1084(ra) # 80001c34 <_ZN9Scheduler3putEP3TCB>
    80002800:	00c0006f          	j	8000280c <_ZN3TCB16InitOutputThreadEv+0x154>
            running = this;
    80002804:	00009797          	auipc	a5,0x9
    80002808:	2a97b223          	sd	s1,676(a5) # 8000baa8 <_ZN3TCB7runningE>
    8000280c:	00009797          	auipc	a5,0x9
    80002810:	2a97b223          	sd	s1,676(a5) # 8000bab0 <_ZN3TCB10idleThreadE>
        idleThread->idle=true;
    80002814:	00100793          	li	a5,1
    80002818:	00f48023          	sb	a5,0(s1)

}
    8000281c:	02813083          	ld	ra,40(sp)
    80002820:	02013403          	ld	s0,32(sp)
    80002824:	01813483          	ld	s1,24(sp)
    80002828:	01013903          	ld	s2,16(sp)
    8000282c:	00813983          	ld	s3,8(sp)
    80002830:	00013a03          	ld	s4,0(sp)
    80002834:	03010113          	addi	sp,sp,48
    80002838:	00008067          	ret
    8000283c:	00050913          	mv	s2,a0
        return MemoryAllocator::Instance()->mem_free(ptr);
    80002840:	00000097          	auipc	ra,0x0
    80002844:	598080e7          	jalr	1432(ra) # 80002dd8 <_ZN15MemoryAllocator8InstanceEv>
    80002848:	00048593          	mv	a1,s1
    8000284c:	00000097          	auipc	ra,0x0
    80002850:	760080e7          	jalr	1888(ra) # 80002fac <_ZN15MemoryAllocator8mem_freeEPv>
    80002854:	00090513          	mv	a0,s2
    80002858:	0000a097          	auipc	ra,0xa
    8000285c:	3b0080e7          	jalr	944(ra) # 8000cc08 <_Unwind_Resume>
    80002860:	00050913          	mv	s2,a0
    80002864:	00000097          	auipc	ra,0x0
    80002868:	574080e7          	jalr	1396(ra) # 80002dd8 <_ZN15MemoryAllocator8InstanceEv>
    8000286c:	00048593          	mv	a1,s1
    80002870:	00000097          	auipc	ra,0x0
    80002874:	73c080e7          	jalr	1852(ra) # 80002fac <_ZN15MemoryAllocator8mem_freeEPv>
    80002878:	00090513          	mv	a0,s2
    8000287c:	0000a097          	auipc	ra,0xa
    80002880:	38c080e7          	jalr	908(ra) # 8000cc08 <_Unwind_Resume>

0000000080002884 <_ZN5Riscv10popSppSpieEv>:
#include "../h/MemoryAllocator.hpp"
#include  "../h/print.hpp"
#include "../h/SList.hpp"
using Body=void(*)(void*);

void Riscv::popSppSpie() {
    80002884:	ff010113          	addi	sp,sp,-16
    80002888:	00813423          	sd	s0,8(sp)
    8000288c:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    80002890:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80002894:	10200073          	sret
}
    80002898:	00813403          	ld	s0,8(sp)
    8000289c:	01010113          	addi	sp,sp,16
    800028a0:	00008067          	ret

00000000800028a4 <_ZN5Riscv10InitBBuffsEv>:


BBuff* Riscv::INbuff = nullptr;
BBuff* Riscv::OUTbuff = nullptr;

void Riscv::InitBBuffs() {
    800028a4:	fe010113          	addi	sp,sp,-32
    800028a8:	00113c23          	sd	ra,24(sp)
    800028ac:	00813823          	sd	s0,16(sp)
    800028b0:	00913423          	sd	s1,8(sp)
    800028b4:	01213023          	sd	s2,0(sp)
    800028b8:	02010413          	addi	s0,sp,32
    if (INbuff==nullptr) {
    800028bc:	00009797          	auipc	a5,0x9
    800028c0:	20c7b783          	ld	a5,524(a5) # 8000bac8 <_ZN5Riscv6INbuffE>
    800028c4:	02078463          	beqz	a5,800028ec <_ZN5Riscv10InitBBuffsEv+0x48>
        INbuff=new BBuff(256);
    }
    if (OUTbuff==nullptr) {
    800028c8:	00009797          	auipc	a5,0x9
    800028cc:	2087b783          	ld	a5,520(a5) # 8000bad0 <_ZN5Riscv7OUTbuffE>
    800028d0:	04078263          	beqz	a5,80002914 <_ZN5Riscv10InitBBuffsEv+0x70>
        OUTbuff=new BBuff(256);
    }
}
    800028d4:	01813083          	ld	ra,24(sp)
    800028d8:	01013403          	ld	s0,16(sp)
    800028dc:	00813483          	ld	s1,8(sp)
    800028e0:	00013903          	ld	s2,0(sp)
    800028e4:	02010113          	addi	sp,sp,32
    800028e8:	00008067          	ret
        INbuff=new BBuff(256);
    800028ec:	03000513          	li	a0,48
    800028f0:	fffff097          	auipc	ra,0xfffff
    800028f4:	644080e7          	jalr	1604(ra) # 80001f34 <_Znwm>
    800028f8:	00050493          	mv	s1,a0
    800028fc:	10000593          	li	a1,256
    80002900:	fffff097          	auipc	ra,0xfffff
    80002904:	c58080e7          	jalr	-936(ra) # 80001558 <_ZN5BBuffC1Ei>
    80002908:	00009797          	auipc	a5,0x9
    8000290c:	1c97b023          	sd	s1,448(a5) # 8000bac8 <_ZN5Riscv6INbuffE>
    80002910:	fb9ff06f          	j	800028c8 <_ZN5Riscv10InitBBuffsEv+0x24>
        OUTbuff=new BBuff(256);
    80002914:	03000513          	li	a0,48
    80002918:	fffff097          	auipc	ra,0xfffff
    8000291c:	61c080e7          	jalr	1564(ra) # 80001f34 <_Znwm>
    80002920:	00050493          	mv	s1,a0
    80002924:	10000593          	li	a1,256
    80002928:	fffff097          	auipc	ra,0xfffff
    8000292c:	c30080e7          	jalr	-976(ra) # 80001558 <_ZN5BBuffC1Ei>
    80002930:	00009797          	auipc	a5,0x9
    80002934:	1a97b023          	sd	s1,416(a5) # 8000bad0 <_ZN5Riscv7OUTbuffE>
}
    80002938:	f9dff06f          	j	800028d4 <_ZN5Riscv10InitBBuffsEv+0x30>
    8000293c:	00050913          	mv	s2,a0
        INbuff=new BBuff(256);
    80002940:	00048513          	mv	a0,s1
    80002944:	fffff097          	auipc	ra,0xfffff
    80002948:	618080e7          	jalr	1560(ra) # 80001f5c <_ZdlPv>
    8000294c:	00090513          	mv	a0,s2
    80002950:	0000a097          	auipc	ra,0xa
    80002954:	2b8080e7          	jalr	696(ra) # 8000cc08 <_Unwind_Resume>
    80002958:	00050913          	mv	s2,a0
        OUTbuff=new BBuff(256);
    8000295c:	00048513          	mv	a0,s1
    80002960:	fffff097          	auipc	ra,0xfffff
    80002964:	5fc080e7          	jalr	1532(ra) # 80001f5c <_ZdlPv>
    80002968:	00090513          	mv	a0,s2
    8000296c:	0000a097          	auipc	ra,0xa
    80002970:	29c080e7          	jalr	668(ra) # 8000cc08 <_Unwind_Resume>

0000000080002974 <_ZN5Riscv21SupervisorTrapHandlerEv>:

void Riscv::SupervisorTrapHandler() {
    80002974:	fa010113          	addi	sp,sp,-96
    80002978:	04113c23          	sd	ra,88(sp)
    8000297c:	04813823          	sd	s0,80(sp)
    80002980:	04913423          	sd	s1,72(sp)
    80002984:	05213023          	sd	s2,64(sp)
    80002988:	03313c23          	sd	s3,56(sp)
    8000298c:	03413823          	sd	s4,48(sp)
    80002990:	03513423          	sd	s5,40(sp)
    80002994:	06010413          	addi	s0,sp,96
    __asm__ volatile("csrr %[scause], scause":[scause]"=r"(scause));
    80002998:	142027f3          	csrr	a5,scause
    8000299c:	faf43423          	sd	a5,-88(s0)
    return scause;
    800029a0:	fa843703          	ld	a4,-88(s0)
    __asm__ volatile ("csrr %[x],sepc" : [x] "=r" (sepc));
    800029a4:	141024f3          	csrr	s1,sepc
    __asm__ volatile ("csrr %[x],sstatus" : [x] "=r" (sstatus));
    800029a8:	10002973          	csrr	s2,sstatus
    uint64 sepc;
    uint64 sstatus;
    uint64 scause=get_scause();
    sepc=get_sepc();
    sstatus=get_sstatus();
    if (scause == 0x8000000000000001UL) {
    800029ac:	fff00793          	li	a5,-1
    800029b0:	03f79793          	slli	a5,a5,0x3f
    800029b4:	00178793          	addi	a5,a5,1
    800029b8:	12f70863          	beq	a4,a5,80002ae8 <_ZN5Riscv21SupervisorTrapHandlerEv+0x174>
            set_sepc(sepc);
            set_sstatus(sstatus);
        }
        mc_sip(SIP_SSIP);
    }
    else if (scause == 0x8000000000000009UL) {
    800029bc:	fff00793          	li	a5,-1
    800029c0:	03f79793          	slli	a5,a5,0x3f
    800029c4:	00978793          	addi	a5,a5,9
    800029c8:	16f70a63          	beq	a4,a5,80002b3c <_ZN5Riscv21SupervisorTrapHandlerEv+0x1c8>
        set_sstatus(sstatus);
        //console_handler();
    }
    else {
        uint64 syscode;
    __asm__ volatile ("mv %[x], a0" : [x] "=r" (syscode));
    800029cc:	00050793          	mv	a5,a0

    if (syscode==MEM_ALLOC) {
    800029d0:	00100713          	li	a4,1
    800029d4:	1ee78663          	beq	a5,a4,80002bc0 <_ZN5Riscv21SupervisorTrapHandlerEv+0x24c>
        size_t size_in_blocks;
        __asm__ volatile ("mv %[x], a1" : [x] "=r" (size_in_blocks));
        void* ptr = MemoryAllocator::Instance()->mem_alloc(size_in_blocks * MEM_BLOCK_SIZE);
        __asm__ volatile ("mv a0,%[x]" :: [x] "r" (ptr));
    }
    else if (syscode==MEM_FREE) {
    800029d8:	00200713          	li	a4,2
    800029dc:	22e78863          	beq	a5,a4,80002c0c <_ZN5Riscv21SupervisorTrapHandlerEv+0x298>
        void* ptr;
        __asm__ volatile ("mv %[x], a1" : [x] "=r" (ptr));
        MemoryAllocator::Instance()->mem_free(ptr);
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (0));
    }
    else if (syscode==MEM_GET_FREE_SPACE) {
    800029e0:	00300713          	li	a4,3
    800029e4:	24e78663          	beq	a5,a4,80002c30 <_ZN5Riscv21SupervisorTrapHandlerEv+0x2bc>
        size_t freeMem = MemoryAllocator::Instance()->getFreeMemSize();
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (freeMem));
    }
    else if (syscode==MEM_GET_LARGEST_FREE_BLOCK) {
    800029e8:	00400713          	li	a4,4
    800029ec:	24e78c63          	beq	a5,a4,80002c44 <_ZN5Riscv21SupervisorTrapHandlerEv+0x2d0>
        size_t largestBlock = MemoryAllocator::Instance()->getLargestFreeBlock();
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (largestBlock));
    }
    else if (syscode==THREAD_CREATE) {
    800029f0:	01100713          	li	a4,17
    800029f4:	26e78463          	beq	a5,a4,80002c5c <_ZN5Riscv21SupervisorTrapHandlerEv+0x2e8>
        else {
            ret=1;
        }
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (ret));
    }
    else if (syscode==THREAD_EXIT) {
    800029f8:	01200713          	li	a4,18
    800029fc:	2ae78863          	beq	a5,a4,80002cac <_ZN5Riscv21SupervisorTrapHandlerEv+0x338>
        int ret = TCB::exit();
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (ret));
    }
    else if (syscode==THREAD_DISPATCH) {
    80002a00:	01300713          	li	a4,19
    80002a04:	2ae78c63          	beq	a5,a4,80002cbc <_ZN5Riscv21SupervisorTrapHandlerEv+0x348>
        TCB::dispatch();
    }
    else if (syscode==SEM_OPEN) {
    80002a08:	02100713          	li	a4,33
    80002a0c:	2ae78e63          	beq	a5,a4,80002cc8 <_ZN5Riscv21SupervisorTrapHandlerEv+0x354>
        else {
            ret=1;
        }
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (ret));
    }
    else if (syscode==SEM_CLOSE) {
    80002a10:	02200713          	li	a4,34
    80002a14:	2ee78263          	beq	a5,a4,80002cf8 <_ZN5Riscv21SupervisorTrapHandlerEv+0x384>
        sem_t handle;
        __asm__ volatile ("mv %[x], a1" : [x] "=r" (handle));
        int ret=handle->close();
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (ret));
    }
    else if (syscode==SEM_WAIT) {
    80002a18:	02300713          	li	a4,35
    80002a1c:	2ee78863          	beq	a5,a4,80002d0c <_ZN5Riscv21SupervisorTrapHandlerEv+0x398>
        sem_t handle;
        __asm__ volatile ("mv %[x], a1" : [x] "=r" (handle));
        int ret=handle->wait();
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (ret));
    }
    else if (syscode==SEM_SIGNAL) {
    80002a20:	02400713          	li	a4,36
    80002a24:	2ee78e63          	beq	a5,a4,80002d20 <_ZN5Riscv21SupervisorTrapHandlerEv+0x3ac>
        sem_t handle;
        __asm__ volatile ("mv %[x], a1" : [x] "=r" (handle));
        int ret=handle->signal();
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (ret));
    }
    else if (syscode==TIME_SLEEP) {
    80002a28:	03100713          	li	a4,49
    80002a2c:	30e78463          	beq	a5,a4,80002d34 <_ZN5Riscv21SupervisorTrapHandlerEv+0x3c0>
        time_t sleepTime;
        __asm__ volatile ("mv %[x], a1" : [x] "=r" (sleepTime));
        int ret=TCB::sleep(sleepTime);
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (ret));
    }
    else if (syscode==GETCHAR) {
    80002a30:	04100713          	li	a4,65
    80002a34:	30e78a63          	beq	a5,a4,80002d48 <_ZN5Riscv21SupervisorTrapHandlerEv+0x3d4>
        char c = INbuff->get();
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (c));
    }
    else if (syscode==PUTCHAR) {
    80002a38:	04200713          	li	a4,66
    80002a3c:	32e78263          	beq	a5,a4,80002d60 <_ZN5Riscv21SupervisorTrapHandlerEv+0x3ec>
    __asm__ volatile("csrr %[scause], scause":[scause]"=r"(scause));
    80002a40:	142027f3          	csrr	a5,scause
    80002a44:	faf43c23          	sd	a5,-72(s0)
    return scause;
    80002a48:	fb843a03          	ld	s4,-72(s0)
    __asm__ volatile("csrr %[stval], stval":[stval]"=r"(stval));
    80002a4c:	143027f3          	csrr	a5,stval
    80002a50:	faf43823          	sd	a5,-80(s0)
    return stval;
    80002a54:	fb043983          	ld	s3,-80(s0)
        OUTbuff->put(c);
    }
    else {
        scause= get_scause();
        uint64 stval= get_stval();
        pprintString("scause:");
    80002a58:	00006517          	auipc	a0,0x6
    80002a5c:	65850513          	addi	a0,a0,1624 # 800090b0 <CONSOLE_STATUS+0xa0>
    80002a60:	00000097          	auipc	ra,0x0
    80002a64:	66c080e7          	jalr	1644(ra) # 800030cc <_Z12pprintStringPKc>
        printInteger(scause);
    80002a68:	000a0513          	mv	a0,s4
    80002a6c:	00000097          	auipc	ra,0x0
    80002a70:	6a4080e7          	jalr	1700(ra) # 80003110 <_Z12printIntegerm>
        pprintString("\n");
    80002a74:	00007517          	auipc	a0,0x7
    80002a78:	96450513          	addi	a0,a0,-1692 # 800093d8 <_ZZ12printIntegermE6digits+0x310>
    80002a7c:	00000097          	auipc	ra,0x0
    80002a80:	650080e7          	jalr	1616(ra) # 800030cc <_Z12pprintStringPKc>

        pprintString("stval:");
    80002a84:	00006517          	auipc	a0,0x6
    80002a88:	63450513          	addi	a0,a0,1588 # 800090b8 <CONSOLE_STATUS+0xa8>
    80002a8c:	00000097          	auipc	ra,0x0
    80002a90:	640080e7          	jalr	1600(ra) # 800030cc <_Z12pprintStringPKc>
        printInteger(stval);
    80002a94:	00098513          	mv	a0,s3
    80002a98:	00000097          	auipc	ra,0x0
    80002a9c:	678080e7          	jalr	1656(ra) # 80003110 <_Z12printIntegerm>
        pprintString("\n");
    80002aa0:	00007517          	auipc	a0,0x7
    80002aa4:	93850513          	addi	a0,a0,-1736 # 800093d8 <_ZZ12printIntegermE6digits+0x310>
    80002aa8:	00000097          	auipc	ra,0x0
    80002aac:	624080e7          	jalr	1572(ra) # 800030cc <_Z12pprintStringPKc>

        pprintString("sepc:");
    80002ab0:	00006517          	auipc	a0,0x6
    80002ab4:	61050513          	addi	a0,a0,1552 # 800090c0 <CONSOLE_STATUS+0xb0>
    80002ab8:	00000097          	auipc	ra,0x0
    80002abc:	614080e7          	jalr	1556(ra) # 800030cc <_Z12pprintStringPKc>
        printInteger(sepc);
    80002ac0:	00048513          	mv	a0,s1
    80002ac4:	00000097          	auipc	ra,0x0
    80002ac8:	64c080e7          	jalr	1612(ra) # 80003110 <_Z12printIntegerm>
        pprintString("\n");
    80002acc:	00007517          	auipc	a0,0x7
    80002ad0:	90c50513          	addi	a0,a0,-1780 # 800093d8 <_ZZ12printIntegermE6digits+0x310>
    80002ad4:	00000097          	auipc	ra,0x0
    80002ad8:	5f8080e7          	jalr	1528(ra) # 800030cc <_Z12pprintStringPKc>
        getc();
    80002adc:	fffff097          	auipc	ra,0xfffff
    80002ae0:	8c0080e7          	jalr	-1856(ra) # 8000139c <_Z4getcv>
    80002ae4:	0f80006f          	j	80002bdc <_ZN5Riscv21SupervisorTrapHandlerEv+0x268>
        TCB::timeCounter++;
    80002ae8:	00009997          	auipc	s3,0x9
    80002aec:	f109b983          	ld	s3,-240(s3) # 8000b9f8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002af0:	0009b783          	ld	a5,0(s3)
    80002af4:	00178793          	addi	a5,a5,1
    80002af8:	00f9b023          	sd	a5,0(s3)
        SList::oneTick();
    80002afc:	fffff097          	auipc	ra,0xfffff
    80002b00:	9c0080e7          	jalr	-1600(ra) # 800014bc <_ZN5SList7oneTickEv>
        if (TCB::timeCounter >= TCB::running->getTimeSlice()) {
    80002b04:	00009797          	auipc	a5,0x9
    80002b08:	f0c7b783          	ld	a5,-244(a5) # 8000ba10 <_GLOBAL_OFFSET_TABLE_+0x48>
    80002b0c:	0007b783          	ld	a5,0(a5)
    time_t getTimeSlice() const { return timeSlice; }
    80002b10:	0387b783          	ld	a5,56(a5)
    80002b14:	0009b703          	ld	a4,0(s3)
    80002b18:	00f77863          	bgeu	a4,a5,80002b28 <_ZN5Riscv21SupervisorTrapHandlerEv+0x1b4>
inline void Riscv::mc_sstatus(uint64 mask) {
    __asm__ volatile("csrc sstatus,%[mask]"::[mask]"r"(mask));
}
inline void Riscv::mc_sip(uint64 mask)
{
    __asm__ volatile("csrc sip, %[mask]":: [mask]"r"(mask));
    80002b1c:	00200793          	li	a5,2
    80002b20:	1447b073          	csrc	sip,a5
}
    80002b24:	0c40006f          	j	80002be8 <_ZN5Riscv21SupervisorTrapHandlerEv+0x274>
            TCB::dispatch();
    80002b28:	00000097          	auipc	ra,0x0
    80002b2c:	a0c080e7          	jalr	-1524(ra) # 80002534 <_ZN3TCB8dispatchEv>
    __asm__ volatile ("csrw sepc, %[x]" :: [x] "r" (sepc));
    80002b30:	14149073          	csrw	sepc,s1
    __asm__ volatile ("csrw sstatus, %[x]" :: [x] "r" (sstatus));
    80002b34:	10091073          	csrw	sstatus,s2
}
    80002b38:	fe5ff06f          	j	80002b1c <_ZN5Riscv21SupervisorTrapHandlerEv+0x1a8>
        int irq = plic_claim();
    80002b3c:	00004097          	auipc	ra,0x4
    80002b40:	7e8080e7          	jalr	2024(ra) # 80007324 <plic_claim>
    80002b44:	00050993          	mv	s3,a0
        if(irq==0x0a)
    80002b48:	00a00793          	li	a5,10
    80002b4c:	00f50e63          	beq	a0,a5,80002b68 <_ZN5Riscv21SupervisorTrapHandlerEv+0x1f4>
        plic_complete(irq);
    80002b50:	00098513          	mv	a0,s3
    80002b54:	00005097          	auipc	ra,0x5
    80002b58:	808080e7          	jalr	-2040(ra) # 8000735c <plic_complete>
    __asm__ volatile ("csrw sepc, %[x]" :: [x] "r" (sepc));
    80002b5c:	14149073          	csrw	sepc,s1
    __asm__ volatile ("csrw sstatus, %[x]" :: [x] "r" (sstatus));
    80002b60:	10091073          	csrw	sstatus,s2
}
    80002b64:	0840006f          	j	80002be8 <_ZN5Riscv21SupervisorTrapHandlerEv+0x274>
            volatile char status = (*(char*)CONSOLE_STATUS);
    80002b68:	00009797          	auipc	a5,0x9
    80002b6c:	e707b783          	ld	a5,-400(a5) # 8000b9d8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002b70:	0007ba03          	ld	s4,0(a5)
    80002b74:	000a4783          	lbu	a5,0(s4)
    80002b78:	faf40323          	sb	a5,-90(s0)
            while(status & CONSOLE_RX_STATUS_BIT)
    80002b7c:	fa644783          	lbu	a5,-90(s0)
    80002b80:	0017f793          	andi	a5,a5,1
    80002b84:	fc0786e3          	beqz	a5,80002b50 <_ZN5Riscv21SupervisorTrapHandlerEv+0x1dc>
                volatile  char c = (*(char*)CONSOLE_RX_DATA);
    80002b88:	00009797          	auipc	a5,0x9
    80002b8c:	e487b783          	ld	a5,-440(a5) # 8000b9d0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002b90:	0007b783          	ld	a5,0(a5)
    80002b94:	0007c783          	lbu	a5,0(a5)
    80002b98:	faf403a3          	sb	a5,-89(s0)
                INbuff->put(c);
    80002b9c:	fa744583          	lbu	a1,-89(s0)
    80002ba0:	0ff5f593          	andi	a1,a1,255
    80002ba4:	00009517          	auipc	a0,0x9
    80002ba8:	f2453503          	ld	a0,-220(a0) # 8000bac8 <_ZN5Riscv6INbuffE>
    80002bac:	fffff097          	auipc	ra,0xfffff
    80002bb0:	a84080e7          	jalr	-1404(ra) # 80001630 <_ZN5BBuff3putEc>
                status = (*(char*)CONSOLE_STATUS);
    80002bb4:	000a4783          	lbu	a5,0(s4)
    80002bb8:	faf40323          	sb	a5,-90(s0)
            while(status & CONSOLE_RX_STATUS_BIT)
    80002bbc:	fc1ff06f          	j	80002b7c <_ZN5Riscv21SupervisorTrapHandlerEv+0x208>
        __asm__ volatile ("mv %[x], a1" : [x] "=r" (size_in_blocks));
    80002bc0:	00058993          	mv	s3,a1
        void* ptr = MemoryAllocator::Instance()->mem_alloc(size_in_blocks * MEM_BLOCK_SIZE);
    80002bc4:	00000097          	auipc	ra,0x0
    80002bc8:	214080e7          	jalr	532(ra) # 80002dd8 <_ZN15MemoryAllocator8InstanceEv>
    80002bcc:	00299593          	slli	a1,s3,0x2
    80002bd0:	00000097          	auipc	ra,0x0
    80002bd4:	264080e7          	jalr	612(ra) # 80002e34 <_ZN15MemoryAllocator9mem_allocEm>
        __asm__ volatile ("mv a0,%[x]" :: [x] "r" (ptr));
    80002bd8:	00050513          	mv	a0,a0
    }
    set_sepc(sepc+4);
    80002bdc:	00448493          	addi	s1,s1,4
    __asm__ volatile ("csrw sepc, %[x]" :: [x] "r" (sepc));
    80002be0:	14149073          	csrw	sepc,s1
    __asm__ volatile ("csrw sstatus, %[x]" :: [x] "r" (sstatus));
    80002be4:	10091073          	csrw	sstatus,s2
    set_sstatus(sstatus);
    }


    80002be8:	05813083          	ld	ra,88(sp)
    80002bec:	05013403          	ld	s0,80(sp)
    80002bf0:	04813483          	ld	s1,72(sp)
    80002bf4:	04013903          	ld	s2,64(sp)
    80002bf8:	03813983          	ld	s3,56(sp)
    80002bfc:	03013a03          	ld	s4,48(sp)
    80002c00:	02813a83          	ld	s5,40(sp)
    80002c04:	06010113          	addi	sp,sp,96
    80002c08:	00008067          	ret
        __asm__ volatile ("mv %[x], a1" : [x] "=r" (ptr));
    80002c0c:	00058993          	mv	s3,a1
        MemoryAllocator::Instance()->mem_free(ptr);
    80002c10:	00000097          	auipc	ra,0x0
    80002c14:	1c8080e7          	jalr	456(ra) # 80002dd8 <_ZN15MemoryAllocator8InstanceEv>
    80002c18:	00098593          	mv	a1,s3
    80002c1c:	00000097          	auipc	ra,0x0
    80002c20:	390080e7          	jalr	912(ra) # 80002fac <_ZN15MemoryAllocator8mem_freeEPv>
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (0));
    80002c24:	00000793          	li	a5,0
    80002c28:	00078513          	mv	a0,a5
    80002c2c:	fb1ff06f          	j	80002bdc <_ZN5Riscv21SupervisorTrapHandlerEv+0x268>
        size_t freeMem = MemoryAllocator::Instance()->getFreeMemSize();
    80002c30:	00000097          	auipc	ra,0x0
    80002c34:	1a8080e7          	jalr	424(ra) # 80002dd8 <_ZN15MemoryAllocator8InstanceEv>
    void* mem_alloc(size_t size);//size in bytes

    void mem_free(void* ptr);

    size_t getFreeMemSize() {
        return this->freeMemSize;
    80002c38:	00853783          	ld	a5,8(a0)
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (freeMem));
    80002c3c:	00078513          	mv	a0,a5
    80002c40:	f9dff06f          	j	80002bdc <_ZN5Riscv21SupervisorTrapHandlerEv+0x268>
        size_t largestBlock = MemoryAllocator::Instance()->getLargestFreeBlock();
    80002c44:	00000097          	auipc	ra,0x0
    80002c48:	194080e7          	jalr	404(ra) # 80002dd8 <_ZN15MemoryAllocator8InstanceEv>
    80002c4c:	00000097          	auipc	ra,0x0
    80002c50:	444080e7          	jalr	1092(ra) # 80003090 <_ZN15MemoryAllocator19getLargestFreeBlockEv>
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (largestBlock));
    80002c54:	00050513          	mv	a0,a0
    80002c58:	f85ff06f          	j	80002bdc <_ZN5Riscv21SupervisorTrapHandlerEv+0x268>
        __asm__ volatile ("mv %[x], a1" : [x] "=r" (handle));
    80002c5c:	00058993          	mv	s3,a1
        __asm__ volatile ("mv %[x], a2" : [x] "=r" (start_routine));
    80002c60:	00060a13          	mv	s4,a2
        __asm__ volatile ("mv %[x], a3" : [x] "=r" (arg));
    80002c64:	00068a93          	mv	s5,a3
        uint64 *sp=(uint64*)MemoryAllocator::Instance()->mem_alloc(DEFAULT_STACK_SIZE);
    80002c68:	00000097          	auipc	ra,0x0
    80002c6c:	170080e7          	jalr	368(ra) # 80002dd8 <_ZN15MemoryAllocator8InstanceEv>
    80002c70:	000015b7          	lui	a1,0x1
    80002c74:	00000097          	auipc	ra,0x0
    80002c78:	1c0080e7          	jalr	448(ra) # 80002e34 <_ZN15MemoryAllocator9mem_allocEm>
    80002c7c:	00050613          	mv	a2,a0
        *handle=TCB::createThread( start_routine, arg,sp);
    80002c80:	000a8593          	mv	a1,s5
    80002c84:	000a0513          	mv	a0,s4
    80002c88:	fffff097          	auipc	ra,0xfffff
    80002c8c:	7ac080e7          	jalr	1964(ra) # 80002434 <_ZN3TCB12createThreadEPFvPvES0_Pm>
    80002c90:	00a9b023          	sd	a0,0(s3)
        if (*handle) {
    80002c94:	00050863          	beqz	a0,80002ca4 <_ZN5Riscv21SupervisorTrapHandlerEv+0x330>
            ret=0;
    80002c98:	00000793          	li	a5,0
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (ret));
    80002c9c:	00078513          	mv	a0,a5
    80002ca0:	f3dff06f          	j	80002bdc <_ZN5Riscv21SupervisorTrapHandlerEv+0x268>
            ret=1;
    80002ca4:	00100793          	li	a5,1
    80002ca8:	ff5ff06f          	j	80002c9c <_ZN5Riscv21SupervisorTrapHandlerEv+0x328>
        int ret = TCB::exit();
    80002cac:	00000097          	auipc	ra,0x0
    80002cb0:	928080e7          	jalr	-1752(ra) # 800025d4 <_ZN3TCB4exitEv>
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (ret));
    80002cb4:	00050513          	mv	a0,a0
    80002cb8:	f25ff06f          	j	80002bdc <_ZN5Riscv21SupervisorTrapHandlerEv+0x268>
        TCB::dispatch();
    80002cbc:	00000097          	auipc	ra,0x0
    80002cc0:	878080e7          	jalr	-1928(ra) # 80002534 <_ZN3TCB8dispatchEv>
    80002cc4:	f19ff06f          	j	80002bdc <_ZN5Riscv21SupervisorTrapHandlerEv+0x268>
        __asm__ volatile ("mv %[x], a1" : [x] "=r" (handle));
    80002cc8:	00058993          	mv	s3,a1
        __asm__ volatile ("mv %[x], a2" : [x] "=r" (init));
    80002ccc:	00060513          	mv	a0,a2
        *handle=SEM::open(init);
    80002cd0:	0005051b          	sext.w	a0,a0
    80002cd4:	00000097          	auipc	ra,0x0
    80002cd8:	4f8080e7          	jalr	1272(ra) # 800031cc <_ZN3SEM4openEj>
    80002cdc:	00a9b023          	sd	a0,0(s3)
        if (*handle) {
    80002ce0:	00050863          	beqz	a0,80002cf0 <_ZN5Riscv21SupervisorTrapHandlerEv+0x37c>
            ret=0;
    80002ce4:	00000793          	li	a5,0
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (ret));
    80002ce8:	00078513          	mv	a0,a5
    80002cec:	ef1ff06f          	j	80002bdc <_ZN5Riscv21SupervisorTrapHandlerEv+0x268>
            ret=1;
    80002cf0:	00100793          	li	a5,1
    80002cf4:	ff5ff06f          	j	80002ce8 <_ZN5Riscv21SupervisorTrapHandlerEv+0x374>
        __asm__ volatile ("mv %[x], a1" : [x] "=r" (handle));
    80002cf8:	00058513          	mv	a0,a1
        int ret=handle->close();
    80002cfc:	00000097          	auipc	ra,0x0
    80002d00:	524080e7          	jalr	1316(ra) # 80003220 <_ZN3SEM5closeEv>
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (ret));
    80002d04:	00050513          	mv	a0,a0
    80002d08:	ed5ff06f          	j	80002bdc <_ZN5Riscv21SupervisorTrapHandlerEv+0x268>
        __asm__ volatile ("mv %[x], a1" : [x] "=r" (handle));
    80002d0c:	00058513          	mv	a0,a1
        int ret=handle->wait();
    80002d10:	00000097          	auipc	ra,0x0
    80002d14:	5e4080e7          	jalr	1508(ra) # 800032f4 <_ZN3SEM4waitEv>
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (ret));
    80002d18:	00050513          	mv	a0,a0
    80002d1c:	ec1ff06f          	j	80002bdc <_ZN5Riscv21SupervisorTrapHandlerEv+0x268>
        __asm__ volatile ("mv %[x], a1" : [x] "=r" (handle));
    80002d20:	00058513          	mv	a0,a1
        int ret=handle->signal();
    80002d24:	00000097          	auipc	ra,0x0
    80002d28:	694080e7          	jalr	1684(ra) # 800033b8 <_ZN3SEM6signalEv>
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (ret));
    80002d2c:	00050513          	mv	a0,a0
    80002d30:	eadff06f          	j	80002bdc <_ZN5Riscv21SupervisorTrapHandlerEv+0x268>
        __asm__ volatile ("mv %[x], a1" : [x] "=r" (sleepTime));
    80002d34:	00058513          	mv	a0,a1
        int ret=TCB::sleep(sleepTime);
    80002d38:	00000097          	auipc	ra,0x0
    80002d3c:	92c080e7          	jalr	-1748(ra) # 80002664 <_ZN3TCB5sleepEm>
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (ret));
    80002d40:	00050513          	mv	a0,a0
    80002d44:	e99ff06f          	j	80002bdc <_ZN5Riscv21SupervisorTrapHandlerEv+0x268>
        char c = INbuff->get();
    80002d48:	00009517          	auipc	a0,0x9
    80002d4c:	d8053503          	ld	a0,-640(a0) # 8000bac8 <_ZN5Riscv6INbuffE>
    80002d50:	fffff097          	auipc	ra,0xfffff
    80002d54:	980080e7          	jalr	-1664(ra) # 800016d0 <_ZN5BBuff3getEv>
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (c));
    80002d58:	00050513          	mv	a0,a0
    80002d5c:	e81ff06f          	j	80002bdc <_ZN5Riscv21SupervisorTrapHandlerEv+0x268>
        __asm__ volatile ("mv %[x], a1" : [x] "=r" (c));
    80002d60:	00058593          	mv	a1,a1
        OUTbuff->put(c);
    80002d64:	0ff5f593          	andi	a1,a1,255
    80002d68:	00009517          	auipc	a0,0x9
    80002d6c:	d6853503          	ld	a0,-664(a0) # 8000bad0 <_ZN5Riscv7OUTbuffE>
    80002d70:	fffff097          	auipc	ra,0xfffff
    80002d74:	8c0080e7          	jalr	-1856(ra) # 80001630 <_ZN5BBuff3putEc>
    80002d78:	e65ff06f          	j	80002bdc <_ZN5Riscv21SupervisorTrapHandlerEv+0x268>

0000000080002d7c <_ZN15MemoryAllocatorC1Ev>:

#include "../h/MemoryAllocator.hpp"
#include "../lib/console.h"


MemoryAllocator::MemoryAllocator() {
    80002d7c:	ff010113          	addi	sp,sp,-16
    80002d80:	00813423          	sd	s0,8(sp)
    80002d84:	01010413          	addi	s0,sp,16
    this->head = (MemoryHeader*)HEAP_START_ADDR;
    80002d88:	00009797          	auipc	a5,0x9
    80002d8c:	c587b783          	ld	a5,-936(a5) # 8000b9e0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002d90:	0007b703          	ld	a4,0(a5)
    80002d94:	00e53023          	sd	a4,0(a0)
    // this->tail = (MemoryHeader*)HEAP_START_ADDR;
    // this->tail->next=nullptr;
    // this->tail->prev=nullptr;
    this->head->next=nullptr;
    80002d98:	00073423          	sd	zero,8(a4)
    this->head->prev=nullptr;
    80002d9c:	00053783          	ld	a5,0(a0)
    80002da0:	0007b823          	sd	zero,16(a5)
    this->head->size = (size_t)((char*)HEAP_END_ADDR - (char*)HEAP_START_ADDR - sizeof(MemoryHeader));
    80002da4:	00009797          	auipc	a5,0x9
    80002da8:	c747b783          	ld	a5,-908(a5) # 8000ba18 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002dac:	0007b783          	ld	a5,0(a5)
    80002db0:	40e787b3          	sub	a5,a5,a4
    80002db4:	00053703          	ld	a4,0(a0)
    80002db8:	fe878793          	addi	a5,a5,-24
    80002dbc:	00f73023          	sd	a5,0(a4)
    this->freeMemSize=this->head->size;
    80002dc0:	00053783          	ld	a5,0(a0)
    80002dc4:	0007b783          	ld	a5,0(a5)
    80002dc8:	00f53423          	sd	a5,8(a0)
}
    80002dcc:	00813403          	ld	s0,8(sp)
    80002dd0:	01010113          	addi	sp,sp,16
    80002dd4:	00008067          	ret

0000000080002dd8 <_ZN15MemoryAllocator8InstanceEv>:




MemoryAllocator* MemoryAllocator::Instance() {
    static MemoryAllocator instance;
    80002dd8:	00009797          	auipc	a5,0x9
    80002ddc:	d007c783          	lbu	a5,-768(a5) # 8000bad8 <_ZGVZN15MemoryAllocator8InstanceEvE8instance>
    80002de0:	00078863          	beqz	a5,80002df0 <_ZN15MemoryAllocator8InstanceEv+0x18>
    return &instance;
}
    80002de4:	00009517          	auipc	a0,0x9
    80002de8:	cfc50513          	addi	a0,a0,-772 # 8000bae0 <_ZZN15MemoryAllocator8InstanceEvE8instance>
    80002dec:	00008067          	ret
MemoryAllocator* MemoryAllocator::Instance() {
    80002df0:	ff010113          	addi	sp,sp,-16
    80002df4:	00113423          	sd	ra,8(sp)
    80002df8:	00813023          	sd	s0,0(sp)
    80002dfc:	01010413          	addi	s0,sp,16
    static MemoryAllocator instance;
    80002e00:	00009517          	auipc	a0,0x9
    80002e04:	ce050513          	addi	a0,a0,-800 # 8000bae0 <_ZZN15MemoryAllocator8InstanceEvE8instance>
    80002e08:	00000097          	auipc	ra,0x0
    80002e0c:	f74080e7          	jalr	-140(ra) # 80002d7c <_ZN15MemoryAllocatorC1Ev>
    80002e10:	00100793          	li	a5,1
    80002e14:	00009717          	auipc	a4,0x9
    80002e18:	ccf70223          	sb	a5,-828(a4) # 8000bad8 <_ZGVZN15MemoryAllocator8InstanceEvE8instance>
}
    80002e1c:	00009517          	auipc	a0,0x9
    80002e20:	cc450513          	addi	a0,a0,-828 # 8000bae0 <_ZZN15MemoryAllocator8InstanceEvE8instance>
    80002e24:	00813083          	ld	ra,8(sp)
    80002e28:	00013403          	ld	s0,0(sp)
    80002e2c:	01010113          	addi	sp,sp,16
    80002e30:	00008067          	ret

0000000080002e34 <_ZN15MemoryAllocator9mem_allocEm>:


void* MemoryAllocator::mem_alloc(size_t size) {
    80002e34:	ff010113          	addi	sp,sp,-16
    80002e38:	00813423          	sd	s0,8(sp)
    80002e3c:	01010413          	addi	s0,sp,16
    80002e40:	00050813          	mv	a6,a0
    if (this->head==nullptr)
    80002e44:	00053503          	ld	a0,0(a0)
    80002e48:	0a050263          	beqz	a0,80002eec <_ZN15MemoryAllocator9mem_allocEm+0xb8>
        return nullptr;
    if (size==0) {
    80002e4c:	0e058863          	beqz	a1,80002f3c <_ZN15MemoryAllocator9mem_allocEm+0x108>
        return nullptr;
    }
    uint64 offset = size % MEM_BLOCK_SIZE;
    80002e50:	0035f793          	andi	a5,a1,3
    if (offset!=0)
    80002e54:	00078463          	beqz	a5,80002e5c <_ZN15MemoryAllocator9mem_allocEm+0x28>
        offset=1;
    80002e58:	00100793          	li	a5,1

    size_t actulalSize = (size  / MEM_BLOCK_SIZE+offset ) * MEM_BLOCK_SIZE;
    80002e5c:	0025d693          	srli	a3,a1,0x2
    80002e60:	00f686b3          	add	a3,a3,a5
    80002e64:	00269693          	slli	a3,a3,0x2


    MemoryHeader* curr= this->head;
    80002e68:	00050793          	mv	a5,a0
    while (curr->next!=nullptr && curr->size < actulalSize) {
    80002e6c:	00078713          	mv	a4,a5
    80002e70:	0087b783          	ld	a5,8(a5)
    80002e74:	00078663          	beqz	a5,80002e80 <_ZN15MemoryAllocator9mem_allocEm+0x4c>
    80002e78:	00073603          	ld	a2,0(a4)
    80002e7c:	fed668e3          	bltu	a2,a3,80002e6c <_ZN15MemoryAllocator9mem_allocEm+0x38>
        curr=curr->next;
    }
    if (curr->size < actulalSize) {
    80002e80:	00073603          	ld	a2,0(a4)
    80002e84:	0cd66063          	bltu	a2,a3,80002f44 <_ZN15MemoryAllocator9mem_allocEm+0x110>
        return nullptr;
    }



    if (curr->size - actulalSize >= MEM_BLOCK_SIZE+sizeof(MemoryHeader)) {
    80002e88:	40d60633          	sub	a2,a2,a3
    80002e8c:	01b00593          	li	a1,27
    80002e90:	06c5f863          	bgeu	a1,a2,80002f00 <_ZN15MemoryAllocator9mem_allocEm+0xcc>


        MemoryHeader* new_seg=(MemoryHeader*)((char*)curr + sizeof(MemoryHeader) + actulalSize);
    80002e94:	01868793          	addi	a5,a3,24
    80002e98:	00f707b3          	add	a5,a4,a5
        new_seg->size = curr->size - actulalSize - sizeof(MemoryHeader);
    80002e9c:	fe860613          	addi	a2,a2,-24 # fe8 <_entry-0x7ffff018>
    80002ea0:	00c7b023          	sd	a2,0(a5)
        new_seg->next=curr->next;
    80002ea4:	00873603          	ld	a2,8(a4)
    80002ea8:	00c7b423          	sd	a2,8(a5)
        new_seg->prev=curr->prev;
    80002eac:	01073603          	ld	a2,16(a4)
    80002eb0:	00c7b823          	sd	a2,16(a5)
        if (curr==this->head) {
    80002eb4:	00083603          	ld	a2,0(a6)
    80002eb8:	04e60063          	beq	a2,a4,80002ef8 <_ZN15MemoryAllocator9mem_allocEm+0xc4>
            this->head=new_seg;
        }
        // if (curr==this->tail) {
        //     this->tail=new_seg;
        // }
        if (curr->prev)
    80002ebc:	01073603          	ld	a2,16(a4)
    80002ec0:	00060463          	beqz	a2,80002ec8 <_ZN15MemoryAllocator9mem_allocEm+0x94>
            curr->prev->next=new_seg;
    80002ec4:	00f63423          	sd	a5,8(a2)
        if (curr->next)
    80002ec8:	00873603          	ld	a2,8(a4)
    80002ecc:	00060463          	beqz	a2,80002ed4 <_ZN15MemoryAllocator9mem_allocEm+0xa0>
            curr->next->prev=new_seg;
    80002ed0:	00f63823          	sd	a5,16(a2)
        curr->size=actulalSize;
    80002ed4:	00d73023          	sd	a3,0(a4)
        this->freeMemSize-= (actulalSize + sizeof(MemoryHeader));
    80002ed8:	00883783          	ld	a5,8(a6)
    80002edc:	40d786b3          	sub	a3,a5,a3
    80002ee0:	fe868693          	addi	a3,a3,-24
    80002ee4:	00d83423          	sd	a3,8(a6)
    //__putc('m');
    //__putc('\n');



    return  (void*)((char*)curr + sizeof(MemoryHeader));
    80002ee8:	01870513          	addi	a0,a4,24
}
    80002eec:	00813403          	ld	s0,8(sp)
    80002ef0:	01010113          	addi	sp,sp,16
    80002ef4:	00008067          	ret
            this->head=new_seg;
    80002ef8:	00f83023          	sd	a5,0(a6)
    80002efc:	fc1ff06f          	j	80002ebc <_ZN15MemoryAllocator9mem_allocEm+0x88>
        if (curr==this->head) {
    80002f00:	02e50a63          	beq	a0,a4,80002f34 <_ZN15MemoryAllocator9mem_allocEm+0x100>
        if (curr->prev)
    80002f04:	01073783          	ld	a5,16(a4)
    80002f08:	00078663          	beqz	a5,80002f14 <_ZN15MemoryAllocator9mem_allocEm+0xe0>
            curr->prev->next=curr->next;
    80002f0c:	00873603          	ld	a2,8(a4)
    80002f10:	00c7b423          	sd	a2,8(a5)
        if (curr->next)
    80002f14:	00873783          	ld	a5,8(a4)
    80002f18:	00078663          	beqz	a5,80002f24 <_ZN15MemoryAllocator9mem_allocEm+0xf0>
            curr->next->prev=curr->prev;
    80002f1c:	01073603          	ld	a2,16(a4)
    80002f20:	00c7b823          	sd	a2,16(a5)
        this->freeMemSize-= actulalSize;
    80002f24:	00883783          	ld	a5,8(a6)
    80002f28:	40d786b3          	sub	a3,a5,a3
    80002f2c:	00d83423          	sd	a3,8(a6)
    80002f30:	fb9ff06f          	j	80002ee8 <_ZN15MemoryAllocator9mem_allocEm+0xb4>
            this->head=curr->next;
    80002f34:	00f83023          	sd	a5,0(a6)
    80002f38:	fcdff06f          	j	80002f04 <_ZN15MemoryAllocator9mem_allocEm+0xd0>
        return nullptr;
    80002f3c:	00000513          	li	a0,0
    80002f40:	fadff06f          	j	80002eec <_ZN15MemoryAllocator9mem_allocEm+0xb8>
        return nullptr;
    80002f44:	00000513          	li	a0,0
    80002f48:	fa5ff06f          	j	80002eec <_ZN15MemoryAllocator9mem_allocEm+0xb8>

0000000080002f4c <_ZN15MemoryAllocator11try_to_joinEPNS_12MemoryHeaderE>:
    try_to_join(block->prev);
    try_to_join(block);
}


void MemoryAllocator::try_to_join(MemoryHeader* block) {
    80002f4c:	ff010113          	addi	sp,sp,-16
    80002f50:	00813423          	sd	s0,8(sp)
    80002f54:	01010413          	addi	s0,sp,16
    if (block==nullptr)
    80002f58:	00058e63          	beqz	a1,80002f74 <_ZN15MemoryAllocator11try_to_joinEPNS_12MemoryHeaderE+0x28>
        return;
    if (block->next!=nullptr && ((char*)block + sizeof(MemoryHeader) + block->size) == (char*)block->next) {
    80002f5c:	0085b783          	ld	a5,8(a1) # 1008 <_entry-0x7fffeff8>
    80002f60:	00078a63          	beqz	a5,80002f74 <_ZN15MemoryAllocator11try_to_joinEPNS_12MemoryHeaderE+0x28>
    80002f64:	0005b683          	ld	a3,0(a1)
    80002f68:	01868713          	addi	a4,a3,24
    80002f6c:	00e58733          	add	a4,a1,a4
    80002f70:	00e78863          	beq	a5,a4,80002f80 <_ZN15MemoryAllocator11try_to_joinEPNS_12MemoryHeaderE+0x34>
        block->next=block->next->next;
        if (block->next)
            block->next->prev=block;
        this->freeMemSize+= sizeof(MemoryHeader);
    }
}
    80002f74:	00813403          	ld	s0,8(sp)
    80002f78:	01010113          	addi	sp,sp,16
    80002f7c:	00008067          	ret
        block->size += block->next->size;
    80002f80:	0007b703          	ld	a4,0(a5)
    80002f84:	00e686b3          	add	a3,a3,a4
    80002f88:	00d5b023          	sd	a3,0(a1)
        block->next=block->next->next;
    80002f8c:	0087b783          	ld	a5,8(a5)
    80002f90:	00f5b423          	sd	a5,8(a1)
        if (block->next)
    80002f94:	00078463          	beqz	a5,80002f9c <_ZN15MemoryAllocator11try_to_joinEPNS_12MemoryHeaderE+0x50>
            block->next->prev=block;
    80002f98:	00b7b823          	sd	a1,16(a5)
        this->freeMemSize+= sizeof(MemoryHeader);
    80002f9c:	00853783          	ld	a5,8(a0)
    80002fa0:	01878793          	addi	a5,a5,24
    80002fa4:	00f53423          	sd	a5,8(a0)
    80002fa8:	fcdff06f          	j	80002f74 <_ZN15MemoryAllocator11try_to_joinEPNS_12MemoryHeaderE+0x28>

0000000080002fac <_ZN15MemoryAllocator8mem_freeEPv>:
    if (ptr==nullptr) {
    80002fac:	0e058063          	beqz	a1,8000308c <_ZN15MemoryAllocator8mem_freeEPv+0xe0>
void MemoryAllocator::mem_free(void* ptr) {
    80002fb0:	fe010113          	addi	sp,sp,-32
    80002fb4:	00113c23          	sd	ra,24(sp)
    80002fb8:	00813823          	sd	s0,16(sp)
    80002fbc:	00913423          	sd	s1,8(sp)
    80002fc0:	01213023          	sd	s2,0(sp)
    80002fc4:	02010413          	addi	s0,sp,32
    80002fc8:	00050913          	mv	s2,a0
	MemoryHeader* block = (MemoryHeader*)((char*)ptr - sizeof(MemoryHeader));
    80002fcc:	fe858493          	addi	s1,a1,-24
    if (this->head==nullptr) {
    80002fd0:	00053683          	ld	a3,0(a0)
    80002fd4:	06068e63          	beqz	a3,80003050 <_ZN15MemoryAllocator8mem_freeEPv+0xa4>
    MemoryHeader* curr = this->head;
    80002fd8:	00068793          	mv	a5,a3
    while (curr->next!=nullptr && curr->next < block) {
    80002fdc:	00078713          	mv	a4,a5
    80002fe0:	0087b783          	ld	a5,8(a5)
    80002fe4:	00078463          	beqz	a5,80002fec <_ZN15MemoryAllocator8mem_freeEPv+0x40>
    80002fe8:	fe97eae3          	bltu	a5,s1,80002fdc <_ZN15MemoryAllocator8mem_freeEPv+0x30>
    if (curr==this->head and curr > block) {
    80002fec:	08e68263          	beq	a3,a4,80003070 <_ZN15MemoryAllocator8mem_freeEPv+0xc4>
        block->next=curr->next;
    80002ff0:	fef5b823          	sd	a5,-16(a1)
        block->prev=curr;
    80002ff4:	fee5bc23          	sd	a4,-8(a1)
        curr->next=block;
    80002ff8:	00973423          	sd	s1,8(a4)
        if (block->next) {
    80002ffc:	ff05b783          	ld	a5,-16(a1)
    80003000:	00078463          	beqz	a5,80003008 <_ZN15MemoryAllocator8mem_freeEPv+0x5c>
            block->next->prev=block;
    80003004:	0097b823          	sd	s1,16(a5)
    this->freeMemSize+= block->size;
    80003008:	fe85b703          	ld	a4,-24(a1)
    8000300c:	00893783          	ld	a5,8(s2)
    80003010:	00e787b3          	add	a5,a5,a4
    80003014:	00f93423          	sd	a5,8(s2)
    try_to_join(block->prev);
    80003018:	ff85b583          	ld	a1,-8(a1)
    8000301c:	00090513          	mv	a0,s2
    80003020:	00000097          	auipc	ra,0x0
    80003024:	f2c080e7          	jalr	-212(ra) # 80002f4c <_ZN15MemoryAllocator11try_to_joinEPNS_12MemoryHeaderE>
    try_to_join(block);
    80003028:	00048593          	mv	a1,s1
    8000302c:	00090513          	mv	a0,s2
    80003030:	00000097          	auipc	ra,0x0
    80003034:	f1c080e7          	jalr	-228(ra) # 80002f4c <_ZN15MemoryAllocator11try_to_joinEPNS_12MemoryHeaderE>
}
    80003038:	01813083          	ld	ra,24(sp)
    8000303c:	01013403          	ld	s0,16(sp)
    80003040:	00813483          	ld	s1,8(sp)
    80003044:	00013903          	ld	s2,0(sp)
    80003048:	02010113          	addi	sp,sp,32
    8000304c:	00008067          	ret
        this->head=block;
    80003050:	00953023          	sd	s1,0(a0)
        block->next=nullptr;
    80003054:	fe05b823          	sd	zero,-16(a1)
        block->prev=nullptr;
    80003058:	fe05bc23          	sd	zero,-8(a1)
        this->freeMemSize+= block->size;
    8000305c:	fe85b703          	ld	a4,-24(a1)
    80003060:	00853783          	ld	a5,8(a0)
    80003064:	00e787b3          	add	a5,a5,a4
    80003068:	00f53423          	sd	a5,8(a0)
        return;
    8000306c:	fcdff06f          	j	80003038 <_ZN15MemoryAllocator8mem_freeEPv+0x8c>
    if (curr==this->head and curr > block) {
    80003070:	f8e4f0e3          	bgeu	s1,a4,80002ff0 <_ZN15MemoryAllocator8mem_freeEPv+0x44>
        block->next=curr;
    80003074:	fee5b823          	sd	a4,-16(a1)
        block->prev=curr->prev;
    80003078:	01073783          	ld	a5,16(a4)
    8000307c:	fef5bc23          	sd	a5,-8(a1)
        curr->prev=block;
    80003080:	00973823          	sd	s1,16(a4)
        this->head=block;
    80003084:	00993023          	sd	s1,0(s2)
    80003088:	f81ff06f          	j	80003008 <_ZN15MemoryAllocator8mem_freeEPv+0x5c>
    8000308c:	00008067          	ret

0000000080003090 <_ZN15MemoryAllocator19getLargestFreeBlockEv>:

size_t MemoryAllocator::getLargestFreeBlock() {
    80003090:	ff010113          	addi	sp,sp,-16
    80003094:	00813423          	sd	s0,8(sp)
    80003098:	01010413          	addi	s0,sp,16
    size_t maxSize=0;
    MemoryHeader* curr=this->head;
    8000309c:	00053783          	ld	a5,0(a0)
    size_t maxSize=0;
    800030a0:	00000513          	li	a0,0
    800030a4:	0080006f          	j	800030ac <_ZN15MemoryAllocator19getLargestFreeBlockEv+0x1c>
    while (curr!=nullptr) {
        if (curr->size > maxSize)
            maxSize=curr->size;
        curr=curr->next;
    800030a8:	0087b783          	ld	a5,8(a5)
    while (curr!=nullptr) {
    800030ac:	00078a63          	beqz	a5,800030c0 <_ZN15MemoryAllocator19getLargestFreeBlockEv+0x30>
        if (curr->size > maxSize)
    800030b0:	0007b703          	ld	a4,0(a5)
    800030b4:	fee57ae3          	bgeu	a0,a4,800030a8 <_ZN15MemoryAllocator19getLargestFreeBlockEv+0x18>
            maxSize=curr->size;
    800030b8:	00070513          	mv	a0,a4
    800030bc:	fedff06f          	j	800030a8 <_ZN15MemoryAllocator19getLargestFreeBlockEv+0x18>
    }
    return maxSize;
    800030c0:	00813403          	ld	s0,8(sp)
    800030c4:	01010113          	addi	sp,sp,16
    800030c8:	00008067          	ret

00000000800030cc <_Z12pprintStringPKc>:
#include "../h/syscall_c.hpp"
#include "../lib/console.h"



void pprintString(const char *string) {
    800030cc:	fe010113          	addi	sp,sp,-32
    800030d0:	00113c23          	sd	ra,24(sp)
    800030d4:	00813823          	sd	s0,16(sp)
    800030d8:	00913423          	sd	s1,8(sp)
    800030dc:	02010413          	addi	s0,sp,32
    800030e0:	00050493          	mv	s1,a0

    while (*string!='\0') {
    800030e4:	0004c503          	lbu	a0,0(s1)
    800030e8:	00050a63          	beqz	a0,800030fc <_Z12pprintStringPKc+0x30>
        putc(*string);
    800030ec:	ffffe097          	auipc	ra,0xffffe
    800030f0:	2dc080e7          	jalr	732(ra) # 800013c8 <_Z4putcc>
        string++;
    800030f4:	00148493          	addi	s1,s1,1
    while (*string!='\0') {
    800030f8:	fedff06f          	j	800030e4 <_Z12pprintStringPKc+0x18>
    }

}
    800030fc:	01813083          	ld	ra,24(sp)
    80003100:	01013403          	ld	s0,16(sp)
    80003104:	00813483          	ld	s1,8(sp)
    80003108:	02010113          	addi	sp,sp,32
    8000310c:	00008067          	ret

0000000080003110 <_Z12printIntegerm>:
void printInteger(uint64 integer) {
    80003110:	fd010113          	addi	sp,sp,-48
    80003114:	02113423          	sd	ra,40(sp)
    80003118:	02813023          	sd	s0,32(sp)
    8000311c:	00913c23          	sd	s1,24(sp)
    80003120:	03010413          	addi	s0,sp,48
    neg=0;
    if (integer<0) {
        neg=1;
        x=-integer;
    } else {
        x=integer;
    80003124:	0005051b          	sext.w	a0,a0
    }

    i=0;
    80003128:	00000493          	li	s1,0
    do {
        buf[i++]=digits[x%10];
    8000312c:	00a00613          	li	a2,10
    80003130:	02c5773b          	remuw	a4,a0,a2
    80003134:	02071693          	slli	a3,a4,0x20
    80003138:	0206d693          	srli	a3,a3,0x20
    8000313c:	00006717          	auipc	a4,0x6
    80003140:	f8c70713          	addi	a4,a4,-116 # 800090c8 <_ZZ12printIntegermE6digits>
    80003144:	00d70733          	add	a4,a4,a3
    80003148:	00074703          	lbu	a4,0(a4)
    8000314c:	fe040693          	addi	a3,s0,-32
    80003150:	009687b3          	add	a5,a3,s1
    80003154:	0014849b          	addiw	s1,s1,1
    80003158:	fee78823          	sb	a4,-16(a5)
    }while ((x/=10)!=0);
    8000315c:	0005071b          	sext.w	a4,a0
    80003160:	02c5553b          	divuw	a0,a0,a2
    80003164:	00900793          	li	a5,9
    80003168:	fce7e2e3          	bltu	a5,a4,8000312c <_Z12printIntegerm+0x1c>
    if (neg) {
        buf[i++]='-';
    }

    while (--i>=0) {
    8000316c:	fff4849b          	addiw	s1,s1,-1
    80003170:	0004ce63          	bltz	s1,8000318c <_Z12printIntegerm+0x7c>
        putc(buf[i]);
    80003174:	fe040793          	addi	a5,s0,-32
    80003178:	009787b3          	add	a5,a5,s1
    8000317c:	ff07c503          	lbu	a0,-16(a5)
    80003180:	ffffe097          	auipc	ra,0xffffe
    80003184:	248080e7          	jalr	584(ra) # 800013c8 <_Z4putcc>
    80003188:	fe5ff06f          	j	8000316c <_Z12printIntegerm+0x5c>
    }

    8000318c:	02813083          	ld	ra,40(sp)
    80003190:	02013403          	ld	s0,32(sp)
    80003194:	01813483          	ld	s1,24(sp)
    80003198:	03010113          	addi	sp,sp,48
    8000319c:	00008067          	ret

00000000800031a0 <_ZN3SEMC1Ej>:
#include "../h/SEM.hpp"
#include "../h/syscall_cpp.hpp"
#include "../h/syscall_c.hpp"
#include "../h/print.hpp"

SEM::SEM(unsigned init) {
    800031a0:	ff010113          	addi	sp,sp,-16
    800031a4:	00813423          	sd	s0,8(sp)
    800031a8:	01010413          	addi	s0,sp,16
    List(): head(0), tail(0){}
    800031ac:	00053423          	sd	zero,8(a0)
    800031b0:	00053823          	sd	zero,16(a0)
    800031b4:	00052c23          	sw	zero,24(a0)
    this->val=init;
    800031b8:	00b52023          	sw	a1,0(a0)
    this->closed=false;
    800031bc:	00050223          	sb	zero,4(a0)

}
    800031c0:	00813403          	ld	s0,8(sp)
    800031c4:	01010113          	addi	sp,sp,16
    800031c8:	00008067          	ret

00000000800031cc <_ZN3SEM4openEj>:

SEM* SEM::open(unsigned init) {
    800031cc:	fe010113          	addi	sp,sp,-32
    800031d0:	00113c23          	sd	ra,24(sp)
    800031d4:	00813823          	sd	s0,16(sp)
    800031d8:	00913423          	sd	s1,8(sp)
    800031dc:	01213023          	sd	s2,0(sp)
    800031e0:	02010413          	addi	s0,sp,32
    800031e4:	00050913          	mv	s2,a0
    //pprintString("Sem::open\n ");
    return new SEM(init);
    800031e8:	02000513          	li	a0,32
    800031ec:	fffff097          	auipc	ra,0xfffff
    800031f0:	d48080e7          	jalr	-696(ra) # 80001f34 <_Znwm>
    800031f4:	00050493          	mv	s1,a0
    800031f8:	00090593          	mv	a1,s2
    800031fc:	00000097          	auipc	ra,0x0
    80003200:	fa4080e7          	jalr	-92(ra) # 800031a0 <_ZN3SEMC1Ej>
}
    80003204:	00048513          	mv	a0,s1
    80003208:	01813083          	ld	ra,24(sp)
    8000320c:	01013403          	ld	s0,16(sp)
    80003210:	00813483          	ld	s1,8(sp)
    80003214:	00013903          	ld	s2,0(sp)
    80003218:	02010113          	addi	sp,sp,32
    8000321c:	00008067          	ret

0000000080003220 <_ZN3SEM5closeEv>:

int SEM::close() {
    //pprintString("Sem::close\n");
    if (this->closed) {
    80003220:	00454783          	lbu	a5,4(a0)
    80003224:	0a079263          	bnez	a5,800032c8 <_ZN3SEM5closeEv+0xa8>
int SEM::close() {
    80003228:	fe010113          	addi	sp,sp,-32
    8000322c:	00113c23          	sd	ra,24(sp)
    80003230:	00813823          	sd	s0,16(sp)
    80003234:	00913423          	sd	s1,8(sp)
    80003238:	01213023          	sd	s2,0(sp)
    8000323c:	02010413          	addi	s0,sp,32
    80003240:	00050913          	mv	s2,a0
        return -1;
    }
    this->closed=true;
    80003244:	00100793          	li	a5,1
    80003248:	00f50223          	sb	a5,4(a0)
    8000324c:	0380006f          	j	80003284 <_ZN3SEM5closeEv+0x64>
        Elem* elem=tail;
    80003250:	0087b503          	ld	a0,8(a5)
        if(prev) prev->next=0;
    80003254:	06070663          	beqz	a4,800032c0 <_ZN3SEM5closeEv+0xa0>
    80003258:	00073423          	sd	zero,8(a4)
        tail=prev;
    8000325c:	00e7b423          	sd	a4,8(a5)
        T* retval= elem->data;
    80003260:	00053483          	ld	s1,0(a0)
        delete elem;
    80003264:	00050663          	beqz	a0,80003270 <_ZN3SEM5closeEv+0x50>
    80003268:	fffff097          	auipc	ra,0xfffff
    8000326c:	cf4080e7          	jalr	-780(ra) # 80001f5c <_ZdlPv>

    while (blockedQueue.size> 0) {
        TCB* tcb = blockedQueue.removeLast();
        if (tcb == nullptr) {
    80003270:	06048e63          	beqz	s1,800032ec <_ZN3SEM5closeEv+0xcc>
    void unblock() { this->blocked = false; }
    80003274:	02048823          	sb	zero,48(s1)
            return -1;
        }
        tcb->unblock();
        Scheduler::put(tcb);
    80003278:	00048513          	mv	a0,s1
    8000327c:	fffff097          	auipc	ra,0xfffff
    80003280:	9b8080e7          	jalr	-1608(ra) # 80001c34 <_ZN9Scheduler3putEP3TCB>
    while (blockedQueue.size> 0) {
    80003284:	01892783          	lw	a5,24(s2)
    80003288:	04f05463          	blez	a5,800032d0 <_ZN3SEM5closeEv+0xb0>
        TCB* tcb = blockedQueue.removeLast();
    8000328c:	00890793          	addi	a5,s2,8
        size--;
    80003290:	0107a703          	lw	a4,16(a5)
    80003294:	fff7071b          	addiw	a4,a4,-1
    80003298:	00e7a823          	sw	a4,16(a5)
        if(!head){return 0;}
    8000329c:	00893483          	ld	s1,8(s2)
    800032a0:	fc0488e3          	beqz	s1,80003270 <_ZN3SEM5closeEv+0x50>
        Elem* prev=0;
    800032a4:	00000713          	li	a4,0
        for(Elem* curr=head; curr && curr!=tail; prev=curr, curr=curr->next);
    800032a8:	fa0484e3          	beqz	s1,80003250 <_ZN3SEM5closeEv+0x30>
    800032ac:	0087b683          	ld	a3,8(a5)
    800032b0:	fad480e3          	beq	s1,a3,80003250 <_ZN3SEM5closeEv+0x30>
    800032b4:	00048713          	mv	a4,s1
    800032b8:	0084b483          	ld	s1,8(s1)
    800032bc:	fedff06f          	j	800032a8 <_ZN3SEM5closeEv+0x88>
        else head=0;
    800032c0:	00093423          	sd	zero,8(s2)
    800032c4:	f99ff06f          	j	8000325c <_ZN3SEM5closeEv+0x3c>
        return -1;
    800032c8:	fff00513          	li	a0,-1
    }
    return 0;
}
    800032cc:	00008067          	ret
    return 0;
    800032d0:	00000513          	li	a0,0
}
    800032d4:	01813083          	ld	ra,24(sp)
    800032d8:	01013403          	ld	s0,16(sp)
    800032dc:	00813483          	ld	s1,8(sp)
    800032e0:	00013903          	ld	s2,0(sp)
    800032e4:	02010113          	addi	sp,sp,32
    800032e8:	00008067          	ret
            return -1;
    800032ec:	fff00513          	li	a0,-1
    800032f0:	fe5ff06f          	j	800032d4 <_ZN3SEM5closeEv+0xb4>

00000000800032f4 <_ZN3SEM4waitEv>:

int SEM::wait() {
    //pprintString("Sem::wait\n");
    if (this->closed) {
    800032f4:	00454783          	lbu	a5,4(a0)
    800032f8:	0a079c63          	bnez	a5,800033b0 <_ZN3SEM4waitEv+0xbc>
int SEM::wait() {
    800032fc:	fd010113          	addi	sp,sp,-48
    80003300:	02113423          	sd	ra,40(sp)
    80003304:	02813023          	sd	s0,32(sp)
    80003308:	00913c23          	sd	s1,24(sp)
    8000330c:	01213823          	sd	s2,16(sp)
    80003310:	01313423          	sd	s3,8(sp)
    80003314:	03010413          	addi	s0,sp,48
    80003318:	00050493          	mv	s1,a0
        return -1;
    }
    val--;
    8000331c:	00052783          	lw	a5,0(a0)
    80003320:	fff7879b          	addiw	a5,a5,-1
    80003324:	00f52023          	sw	a5,0(a0)
    if (val<0) {
    80003328:	02079713          	slli	a4,a5,0x20
    8000332c:	02074263          	bltz	a4,80003350 <_ZN3SEM4waitEv+0x5c>
        TCB::running->block();
        blockedQueue.addFirst(TCB::running);
        //thread_dispatch();
        TCB::dispatch();
    }
    return 0;
    80003330:	00000513          	li	a0,0
}
    80003334:	02813083          	ld	ra,40(sp)
    80003338:	02013403          	ld	s0,32(sp)
    8000333c:	01813483          	ld	s1,24(sp)
    80003340:	01013903          	ld	s2,16(sp)
    80003344:	00813983          	ld	s3,8(sp)
    80003348:	03010113          	addi	sp,sp,48
    8000334c:	00008067          	ret
        TCB::running->block();
    80003350:	00008797          	auipc	a5,0x8
    80003354:	6c07b783          	ld	a5,1728(a5) # 8000ba10 <_GLOBAL_OFFSET_TABLE_+0x48>
    80003358:	0007b983          	ld	s3,0(a5)
    void block() { this->blocked = true; }
    8000335c:	00100793          	li	a5,1
    80003360:	02f98823          	sb	a5,48(s3)
        blockedQueue.addFirst(TCB::running);
    80003364:	00850913          	addi	s2,a0,8
        Elem* elem=new Elem(data, head);
    80003368:	01000513          	li	a0,16
    8000336c:	fffff097          	auipc	ra,0xfffff
    80003370:	bc8080e7          	jalr	-1080(ra) # 80001f34 <_Znwm>
    80003374:	0084b783          	ld	a5,8(s1)
        Elem(T* data, Elem* next=nullptr): data(data), next(next){}
    80003378:	01353023          	sd	s3,0(a0)
    8000337c:	00f53423          	sd	a5,8(a0)
        head=elem;
    80003380:	00a4b423          	sd	a0,8(s1)
        if(!tail){tail=head;}
    80003384:	00893783          	ld	a5,8(s2)
    80003388:	02078063          	beqz	a5,800033a8 <_ZN3SEM4waitEv+0xb4>
        size++;
    8000338c:	01092783          	lw	a5,16(s2)
    80003390:	0017879b          	addiw	a5,a5,1
    80003394:	00f92823          	sw	a5,16(s2)
        TCB::dispatch();
    80003398:	fffff097          	auipc	ra,0xfffff
    8000339c:	19c080e7          	jalr	412(ra) # 80002534 <_ZN3TCB8dispatchEv>
    return 0;
    800033a0:	00000513          	li	a0,0
    800033a4:	f91ff06f          	j	80003334 <_ZN3SEM4waitEv+0x40>
        if(!tail){tail=head;}
    800033a8:	00a93423          	sd	a0,8(s2)
    800033ac:	fe1ff06f          	j	8000338c <_ZN3SEM4waitEv+0x98>
        return -1;
    800033b0:	fff00513          	li	a0,-1
}
    800033b4:	00008067          	ret

00000000800033b8 <_ZN3SEM6signalEv>:

int SEM::signal() {
    //pprintString("Sem::signal\n");
    if (this->closed) {
    800033b8:	00454783          	lbu	a5,4(a0)
    800033bc:	0c079063          	bnez	a5,8000347c <_ZN3SEM6signalEv+0xc4>
        return -1;
    }
    val++;
    800033c0:	00052783          	lw	a5,0(a0)
    800033c4:	0017879b          	addiw	a5,a5,1
    800033c8:	0007871b          	sext.w	a4,a5
    800033cc:	00f52023          	sw	a5,0(a0)
    if (val<=0) {
    800033d0:	00e05663          	blez	a4,800033dc <_ZN3SEM6signalEv+0x24>
                return -1;
        }
        unblockTcb->unblock();
        Scheduler::put(unblockTcb);
    }
    return 0;
    800033d4:	00000513          	li	a0,0
}
    800033d8:	00008067          	ret
int SEM::signal() {
    800033dc:	fe010113          	addi	sp,sp,-32
    800033e0:	00113c23          	sd	ra,24(sp)
    800033e4:	00813823          	sd	s0,16(sp)
    800033e8:	00913423          	sd	s1,8(sp)
    800033ec:	02010413          	addi	s0,sp,32
        TCB *unblockTcb = blockedQueue.removeLast();
    800033f0:	00850793          	addi	a5,a0,8
        size--;
    800033f4:	0107a703          	lw	a4,16(a5)
    800033f8:	fff7071b          	addiw	a4,a4,-1
    800033fc:	00e7a823          	sw	a4,16(a5)
        if(!head){return 0;}
    80003400:	00853483          	ld	s1,8(a0)
    80003404:	04048263          	beqz	s1,80003448 <_ZN3SEM6signalEv+0x90>
        Elem* prev=0;
    80003408:	00000693          	li	a3,0
        for(Elem* curr=head; curr && curr!=tail; prev=curr, curr=curr->next);
    8000340c:	00048c63          	beqz	s1,80003424 <_ZN3SEM6signalEv+0x6c>
    80003410:	0087b703          	ld	a4,8(a5)
    80003414:	00e48863          	beq	s1,a4,80003424 <_ZN3SEM6signalEv+0x6c>
    80003418:	00048693          	mv	a3,s1
    8000341c:	0084b483          	ld	s1,8(s1)
    80003420:	fedff06f          	j	8000340c <_ZN3SEM6signalEv+0x54>
        Elem* elem=tail;
    80003424:	0087b703          	ld	a4,8(a5)
        if(prev) prev->next=0;
    80003428:	04068663          	beqz	a3,80003474 <_ZN3SEM6signalEv+0xbc>
    8000342c:	0006b423          	sd	zero,8(a3)
        tail=prev;
    80003430:	00d7b423          	sd	a3,8(a5)
        T* retval= elem->data;
    80003434:	00073483          	ld	s1,0(a4)
        delete elem;
    80003438:	00070863          	beqz	a4,80003448 <_ZN3SEM6signalEv+0x90>
    8000343c:	00070513          	mv	a0,a4
    80003440:	fffff097          	auipc	ra,0xfffff
    80003444:	b1c080e7          	jalr	-1252(ra) # 80001f5c <_ZdlPv>
        if (unblockTcb == nullptr) {
    80003448:	02048e63          	beqz	s1,80003484 <_ZN3SEM6signalEv+0xcc>
    void unblock() { this->blocked = false; }
    8000344c:	02048823          	sb	zero,48(s1)
        Scheduler::put(unblockTcb);
    80003450:	00048513          	mv	a0,s1
    80003454:	ffffe097          	auipc	ra,0xffffe
    80003458:	7e0080e7          	jalr	2016(ra) # 80001c34 <_ZN9Scheduler3putEP3TCB>
    return 0;
    8000345c:	00000513          	li	a0,0
}
    80003460:	01813083          	ld	ra,24(sp)
    80003464:	01013403          	ld	s0,16(sp)
    80003468:	00813483          	ld	s1,8(sp)
    8000346c:	02010113          	addi	sp,sp,32
    80003470:	00008067          	ret
        else head=0;
    80003474:	00053423          	sd	zero,8(a0)
    80003478:	fb9ff06f          	j	80003430 <_ZN3SEM6signalEv+0x78>
        return -1;
    8000347c:	fff00513          	li	a0,-1
    80003480:	00008067          	ret
                return -1;
    80003484:	fff00513          	li	a0,-1
    80003488:	fd9ff06f          	j	80003460 <_ZN3SEM6signalEv+0xa8>

000000008000348c <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    8000348c:	fe010113          	addi	sp,sp,-32
    80003490:	00113c23          	sd	ra,24(sp)
    80003494:	00813823          	sd	s0,16(sp)
    80003498:	00913423          	sd	s1,8(sp)
    8000349c:	01213023          	sd	s2,0(sp)
    800034a0:	02010413          	addi	s0,sp,32
    800034a4:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    800034a8:	00000913          	li	s2,0
    800034ac:	00c0006f          	j	800034b8 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800034b0:	ffffe097          	auipc	ra,0xffffe
    800034b4:	dd4080e7          	jalr	-556(ra) # 80001284 <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    800034b8:	ffffe097          	auipc	ra,0xffffe
    800034bc:	ee4080e7          	jalr	-284(ra) # 8000139c <_Z4getcv>
    800034c0:	0005059b          	sext.w	a1,a0
    800034c4:	01b00793          	li	a5,27
    800034c8:	02f58a63          	beq	a1,a5,800034fc <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    800034cc:	0084b503          	ld	a0,8(s1)
    800034d0:	00003097          	auipc	ra,0x3
    800034d4:	37c080e7          	jalr	892(ra) # 8000684c <_ZN6Buffer3putEi>
        i++;
    800034d8:	0019071b          	addiw	a4,s2,1
    800034dc:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800034e0:	0004a683          	lw	a3,0(s1)
    800034e4:	0026979b          	slliw	a5,a3,0x2
    800034e8:	00d787bb          	addw	a5,a5,a3
    800034ec:	0017979b          	slliw	a5,a5,0x1
    800034f0:	02f767bb          	remw	a5,a4,a5
    800034f4:	fc0792e3          	bnez	a5,800034b8 <_ZL16producerKeyboardPv+0x2c>
    800034f8:	fb9ff06f          	j	800034b0 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    800034fc:	00100793          	li	a5,1
    80003500:	00008717          	auipc	a4,0x8
    80003504:	5ef72823          	sw	a5,1520(a4) # 8000baf0 <_ZL9threadEnd>
    data->buffer->put('!');
    80003508:	02100593          	li	a1,33
    8000350c:	0084b503          	ld	a0,8(s1)
    80003510:	00003097          	auipc	ra,0x3
    80003514:	33c080e7          	jalr	828(ra) # 8000684c <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80003518:	0104b503          	ld	a0,16(s1)
    8000351c:	ffffe097          	auipc	ra,0xffffe
    80003520:	e20080e7          	jalr	-480(ra) # 8000133c <_Z10sem_signalP3SEM>
}
    80003524:	01813083          	ld	ra,24(sp)
    80003528:	01013403          	ld	s0,16(sp)
    8000352c:	00813483          	ld	s1,8(sp)
    80003530:	00013903          	ld	s2,0(sp)
    80003534:	02010113          	addi	sp,sp,32
    80003538:	00008067          	ret

000000008000353c <_ZL8producerPv>:

static void producer(void *arg) {
    8000353c:	fe010113          	addi	sp,sp,-32
    80003540:	00113c23          	sd	ra,24(sp)
    80003544:	00813823          	sd	s0,16(sp)
    80003548:	00913423          	sd	s1,8(sp)
    8000354c:	01213023          	sd	s2,0(sp)
    80003550:	02010413          	addi	s0,sp,32
    80003554:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003558:	00000913          	li	s2,0
    8000355c:	00c0006f          	j	80003568 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80003560:	ffffe097          	auipc	ra,0xffffe
    80003564:	d24080e7          	jalr	-732(ra) # 80001284 <_Z15thread_dispatchv>
    while (!threadEnd) {
    80003568:	00008797          	auipc	a5,0x8
    8000356c:	5887a783          	lw	a5,1416(a5) # 8000baf0 <_ZL9threadEnd>
    80003570:	02079e63          	bnez	a5,800035ac <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80003574:	0004a583          	lw	a1,0(s1)
    80003578:	0305859b          	addiw	a1,a1,48
    8000357c:	0084b503          	ld	a0,8(s1)
    80003580:	00003097          	auipc	ra,0x3
    80003584:	2cc080e7          	jalr	716(ra) # 8000684c <_ZN6Buffer3putEi>
        i++;
    80003588:	0019071b          	addiw	a4,s2,1
    8000358c:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003590:	0004a683          	lw	a3,0(s1)
    80003594:	0026979b          	slliw	a5,a3,0x2
    80003598:	00d787bb          	addw	a5,a5,a3
    8000359c:	0017979b          	slliw	a5,a5,0x1
    800035a0:	02f767bb          	remw	a5,a4,a5
    800035a4:	fc0792e3          	bnez	a5,80003568 <_ZL8producerPv+0x2c>
    800035a8:	fb9ff06f          	j	80003560 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    800035ac:	0104b503          	ld	a0,16(s1)
    800035b0:	ffffe097          	auipc	ra,0xffffe
    800035b4:	d8c080e7          	jalr	-628(ra) # 8000133c <_Z10sem_signalP3SEM>
}
    800035b8:	01813083          	ld	ra,24(sp)
    800035bc:	01013403          	ld	s0,16(sp)
    800035c0:	00813483          	ld	s1,8(sp)
    800035c4:	00013903          	ld	s2,0(sp)
    800035c8:	02010113          	addi	sp,sp,32
    800035cc:	00008067          	ret

00000000800035d0 <_ZL8consumerPv>:

static void consumer(void *arg) {
    800035d0:	fd010113          	addi	sp,sp,-48
    800035d4:	02113423          	sd	ra,40(sp)
    800035d8:	02813023          	sd	s0,32(sp)
    800035dc:	00913c23          	sd	s1,24(sp)
    800035e0:	01213823          	sd	s2,16(sp)
    800035e4:	01313423          	sd	s3,8(sp)
    800035e8:	03010413          	addi	s0,sp,48
    800035ec:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800035f0:	00000993          	li	s3,0
    800035f4:	01c0006f          	j	80003610 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    800035f8:	ffffe097          	auipc	ra,0xffffe
    800035fc:	c8c080e7          	jalr	-884(ra) # 80001284 <_Z15thread_dispatchv>
    80003600:	0500006f          	j	80003650 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80003604:	00a00513          	li	a0,10
    80003608:	ffffe097          	auipc	ra,0xffffe
    8000360c:	dc0080e7          	jalr	-576(ra) # 800013c8 <_Z4putcc>
    while (!threadEnd) {
    80003610:	00008797          	auipc	a5,0x8
    80003614:	4e07a783          	lw	a5,1248(a5) # 8000baf0 <_ZL9threadEnd>
    80003618:	06079063          	bnez	a5,80003678 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    8000361c:	00893503          	ld	a0,8(s2)
    80003620:	00003097          	auipc	ra,0x3
    80003624:	2bc080e7          	jalr	700(ra) # 800068dc <_ZN6Buffer3getEv>
        i++;
    80003628:	0019849b          	addiw	s1,s3,1
    8000362c:	0004899b          	sext.w	s3,s1
        putc(key);
    80003630:	0ff57513          	andi	a0,a0,255
    80003634:	ffffe097          	auipc	ra,0xffffe
    80003638:	d94080e7          	jalr	-620(ra) # 800013c8 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    8000363c:	00092703          	lw	a4,0(s2)
    80003640:	0027179b          	slliw	a5,a4,0x2
    80003644:	00e787bb          	addw	a5,a5,a4
    80003648:	02f4e7bb          	remw	a5,s1,a5
    8000364c:	fa0786e3          	beqz	a5,800035f8 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80003650:	05000793          	li	a5,80
    80003654:	02f4e4bb          	remw	s1,s1,a5
    80003658:	fa049ce3          	bnez	s1,80003610 <_ZL8consumerPv+0x40>
    8000365c:	fa9ff06f          	j	80003604 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80003660:	00893503          	ld	a0,8(s2)
    80003664:	00003097          	auipc	ra,0x3
    80003668:	278080e7          	jalr	632(ra) # 800068dc <_ZN6Buffer3getEv>
        putc(key);
    8000366c:	0ff57513          	andi	a0,a0,255
    80003670:	ffffe097          	auipc	ra,0xffffe
    80003674:	d58080e7          	jalr	-680(ra) # 800013c8 <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    80003678:	00893503          	ld	a0,8(s2)
    8000367c:	00003097          	auipc	ra,0x3
    80003680:	2ec080e7          	jalr	748(ra) # 80006968 <_ZN6Buffer6getCntEv>
    80003684:	fca04ee3          	bgtz	a0,80003660 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    80003688:	01093503          	ld	a0,16(s2)
    8000368c:	ffffe097          	auipc	ra,0xffffe
    80003690:	cb0080e7          	jalr	-848(ra) # 8000133c <_Z10sem_signalP3SEM>
}
    80003694:	02813083          	ld	ra,40(sp)
    80003698:	02013403          	ld	s0,32(sp)
    8000369c:	01813483          	ld	s1,24(sp)
    800036a0:	01013903          	ld	s2,16(sp)
    800036a4:	00813983          	ld	s3,8(sp)
    800036a8:	03010113          	addi	sp,sp,48
    800036ac:	00008067          	ret

00000000800036b0 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    800036b0:	f9010113          	addi	sp,sp,-112
    800036b4:	06113423          	sd	ra,104(sp)
    800036b8:	06813023          	sd	s0,96(sp)
    800036bc:	04913c23          	sd	s1,88(sp)
    800036c0:	05213823          	sd	s2,80(sp)
    800036c4:	05313423          	sd	s3,72(sp)
    800036c8:	05413023          	sd	s4,64(sp)
    800036cc:	03513c23          	sd	s5,56(sp)
    800036d0:	03613823          	sd	s6,48(sp)
    800036d4:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    800036d8:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    800036dc:	00006517          	auipc	a0,0x6
    800036e0:	9fc50513          	addi	a0,a0,-1540 # 800090d8 <_ZZ12printIntegermE6digits+0x10>
    800036e4:	00002097          	auipc	ra,0x2
    800036e8:	1d8080e7          	jalr	472(ra) # 800058bc <_Z11printStringPKc>
    getString(input, 30);
    800036ec:	01e00593          	li	a1,30
    800036f0:	fa040493          	addi	s1,s0,-96
    800036f4:	00048513          	mv	a0,s1
    800036f8:	00002097          	auipc	ra,0x2
    800036fc:	24c080e7          	jalr	588(ra) # 80005944 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003700:	00048513          	mv	a0,s1
    80003704:	00002097          	auipc	ra,0x2
    80003708:	318080e7          	jalr	792(ra) # 80005a1c <_Z11stringToIntPKc>
    8000370c:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80003710:	00006517          	auipc	a0,0x6
    80003714:	9e850513          	addi	a0,a0,-1560 # 800090f8 <_ZZ12printIntegermE6digits+0x30>
    80003718:	00002097          	auipc	ra,0x2
    8000371c:	1a4080e7          	jalr	420(ra) # 800058bc <_Z11printStringPKc>
    getString(input, 30);
    80003720:	01e00593          	li	a1,30
    80003724:	00048513          	mv	a0,s1
    80003728:	00002097          	auipc	ra,0x2
    8000372c:	21c080e7          	jalr	540(ra) # 80005944 <_Z9getStringPci>
    n = stringToInt(input);
    80003730:	00048513          	mv	a0,s1
    80003734:	00002097          	auipc	ra,0x2
    80003738:	2e8080e7          	jalr	744(ra) # 80005a1c <_Z11stringToIntPKc>
    8000373c:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80003740:	00006517          	auipc	a0,0x6
    80003744:	9d850513          	addi	a0,a0,-1576 # 80009118 <_ZZ12printIntegermE6digits+0x50>
    80003748:	00002097          	auipc	ra,0x2
    8000374c:	174080e7          	jalr	372(ra) # 800058bc <_Z11printStringPKc>
    80003750:	00000613          	li	a2,0
    80003754:	00a00593          	li	a1,10
    80003758:	00090513          	mv	a0,s2
    8000375c:	00002097          	auipc	ra,0x2
    80003760:	310080e7          	jalr	784(ra) # 80005a6c <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80003764:	00006517          	auipc	a0,0x6
    80003768:	9cc50513          	addi	a0,a0,-1588 # 80009130 <_ZZ12printIntegermE6digits+0x68>
    8000376c:	00002097          	auipc	ra,0x2
    80003770:	150080e7          	jalr	336(ra) # 800058bc <_Z11printStringPKc>
    80003774:	00000613          	li	a2,0
    80003778:	00a00593          	li	a1,10
    8000377c:	00048513          	mv	a0,s1
    80003780:	00002097          	auipc	ra,0x2
    80003784:	2ec080e7          	jalr	748(ra) # 80005a6c <_Z8printIntiii>
    printString(".\n");
    80003788:	00006517          	auipc	a0,0x6
    8000378c:	9c050513          	addi	a0,a0,-1600 # 80009148 <_ZZ12printIntegermE6digits+0x80>
    80003790:	00002097          	auipc	ra,0x2
    80003794:	12c080e7          	jalr	300(ra) # 800058bc <_Z11printStringPKc>
    if(threadNum > n) {
    80003798:	0324c463          	blt	s1,s2,800037c0 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    8000379c:	03205c63          	blez	s2,800037d4 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    800037a0:	03800513          	li	a0,56
    800037a4:	ffffe097          	auipc	ra,0xffffe
    800037a8:	790080e7          	jalr	1936(ra) # 80001f34 <_Znwm>
    800037ac:	00050a13          	mv	s4,a0
    800037b0:	00048593          	mv	a1,s1
    800037b4:	00003097          	auipc	ra,0x3
    800037b8:	ffc080e7          	jalr	-4(ra) # 800067b0 <_ZN6BufferC1Ei>
    800037bc:	0300006f          	j	800037ec <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800037c0:	00006517          	auipc	a0,0x6
    800037c4:	99050513          	addi	a0,a0,-1648 # 80009150 <_ZZ12printIntegermE6digits+0x88>
    800037c8:	00002097          	auipc	ra,0x2
    800037cc:	0f4080e7          	jalr	244(ra) # 800058bc <_Z11printStringPKc>
        return;
    800037d0:	0140006f          	j	800037e4 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800037d4:	00006517          	auipc	a0,0x6
    800037d8:	9bc50513          	addi	a0,a0,-1604 # 80009190 <_ZZ12printIntegermE6digits+0xc8>
    800037dc:	00002097          	auipc	ra,0x2
    800037e0:	0e0080e7          	jalr	224(ra) # 800058bc <_Z11printStringPKc>
        return;
    800037e4:	000b0113          	mv	sp,s6
    800037e8:	1500006f          	j	80003938 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    800037ec:	00000593          	li	a1,0
    800037f0:	00008517          	auipc	a0,0x8
    800037f4:	30850513          	addi	a0,a0,776 # 8000baf8 <_ZL10waitForAll>
    800037f8:	ffffe097          	auipc	ra,0xffffe
    800037fc:	ab0080e7          	jalr	-1360(ra) # 800012a8 <_Z8sem_openPP3SEMj>
    thread_t threads[threadNum];
    80003800:	00391793          	slli	a5,s2,0x3
    80003804:	00f78793          	addi	a5,a5,15
    80003808:	ff07f793          	andi	a5,a5,-16
    8000380c:	40f10133          	sub	sp,sp,a5
    80003810:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80003814:	0019071b          	addiw	a4,s2,1
    80003818:	00171793          	slli	a5,a4,0x1
    8000381c:	00e787b3          	add	a5,a5,a4
    80003820:	00379793          	slli	a5,a5,0x3
    80003824:	00f78793          	addi	a5,a5,15
    80003828:	ff07f793          	andi	a5,a5,-16
    8000382c:	40f10133          	sub	sp,sp,a5
    80003830:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80003834:	00191613          	slli	a2,s2,0x1
    80003838:	012607b3          	add	a5,a2,s2
    8000383c:	00379793          	slli	a5,a5,0x3
    80003840:	00f987b3          	add	a5,s3,a5
    80003844:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80003848:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    8000384c:	00008717          	auipc	a4,0x8
    80003850:	2ac73703          	ld	a4,684(a4) # 8000baf8 <_ZL10waitForAll>
    80003854:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80003858:	00078613          	mv	a2,a5
    8000385c:	00000597          	auipc	a1,0x0
    80003860:	d7458593          	addi	a1,a1,-652 # 800035d0 <_ZL8consumerPv>
    80003864:	f9840513          	addi	a0,s0,-104
    80003868:	ffffe097          	auipc	ra,0xffffe
    8000386c:	9b8080e7          	jalr	-1608(ra) # 80001220 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003870:	00000493          	li	s1,0
    80003874:	0280006f          	j	8000389c <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    80003878:	00000597          	auipc	a1,0x0
    8000387c:	c1458593          	addi	a1,a1,-1004 # 8000348c <_ZL16producerKeyboardPv>
                      data + i);
    80003880:	00179613          	slli	a2,a5,0x1
    80003884:	00f60633          	add	a2,a2,a5
    80003888:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    8000388c:	00c98633          	add	a2,s3,a2
    80003890:	ffffe097          	auipc	ra,0xffffe
    80003894:	990080e7          	jalr	-1648(ra) # 80001220 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003898:	0014849b          	addiw	s1,s1,1
    8000389c:	0524d263          	bge	s1,s2,800038e0 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    800038a0:	00149793          	slli	a5,s1,0x1
    800038a4:	009787b3          	add	a5,a5,s1
    800038a8:	00379793          	slli	a5,a5,0x3
    800038ac:	00f987b3          	add	a5,s3,a5
    800038b0:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    800038b4:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    800038b8:	00008717          	auipc	a4,0x8
    800038bc:	24073703          	ld	a4,576(a4) # 8000baf8 <_ZL10waitForAll>
    800038c0:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    800038c4:	00048793          	mv	a5,s1
    800038c8:	00349513          	slli	a0,s1,0x3
    800038cc:	00aa8533          	add	a0,s5,a0
    800038d0:	fa9054e3          	blez	s1,80003878 <_Z22producerConsumer_C_APIv+0x1c8>
    800038d4:	00000597          	auipc	a1,0x0
    800038d8:	c6858593          	addi	a1,a1,-920 # 8000353c <_ZL8producerPv>
    800038dc:	fa5ff06f          	j	80003880 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    800038e0:	ffffe097          	auipc	ra,0xffffe
    800038e4:	9a4080e7          	jalr	-1628(ra) # 80001284 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    800038e8:	00000493          	li	s1,0
    800038ec:	00994e63          	blt	s2,s1,80003908 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    800038f0:	00008517          	auipc	a0,0x8
    800038f4:	20853503          	ld	a0,520(a0) # 8000baf8 <_ZL10waitForAll>
    800038f8:	ffffe097          	auipc	ra,0xffffe
    800038fc:	a14080e7          	jalr	-1516(ra) # 8000130c <_Z8sem_waitP3SEM>
    for (int i = 0; i <= threadNum; i++) {
    80003900:	0014849b          	addiw	s1,s1,1
    80003904:	fe9ff06f          	j	800038ec <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80003908:	00008517          	auipc	a0,0x8
    8000390c:	1f053503          	ld	a0,496(a0) # 8000baf8 <_ZL10waitForAll>
    80003910:	ffffe097          	auipc	ra,0xffffe
    80003914:	9cc080e7          	jalr	-1588(ra) # 800012dc <_Z9sem_closeP3SEM>
    delete buffer;
    80003918:	000a0e63          	beqz	s4,80003934 <_Z22producerConsumer_C_APIv+0x284>
    8000391c:	000a0513          	mv	a0,s4
    80003920:	00003097          	auipc	ra,0x3
    80003924:	0d0080e7          	jalr	208(ra) # 800069f0 <_ZN6BufferD1Ev>
    80003928:	000a0513          	mv	a0,s4
    8000392c:	ffffe097          	auipc	ra,0xffffe
    80003930:	630080e7          	jalr	1584(ra) # 80001f5c <_ZdlPv>
    80003934:	000b0113          	mv	sp,s6

}
    80003938:	f9040113          	addi	sp,s0,-112
    8000393c:	06813083          	ld	ra,104(sp)
    80003940:	06013403          	ld	s0,96(sp)
    80003944:	05813483          	ld	s1,88(sp)
    80003948:	05013903          	ld	s2,80(sp)
    8000394c:	04813983          	ld	s3,72(sp)
    80003950:	04013a03          	ld	s4,64(sp)
    80003954:	03813a83          	ld	s5,56(sp)
    80003958:	03013b03          	ld	s6,48(sp)
    8000395c:	07010113          	addi	sp,sp,112
    80003960:	00008067          	ret
    80003964:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80003968:	000a0513          	mv	a0,s4
    8000396c:	ffffe097          	auipc	ra,0xffffe
    80003970:	5f0080e7          	jalr	1520(ra) # 80001f5c <_ZdlPv>
    80003974:	00048513          	mv	a0,s1
    80003978:	00009097          	auipc	ra,0x9
    8000397c:	290080e7          	jalr	656(ra) # 8000cc08 <_Unwind_Resume>

0000000080003980 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003980:	fe010113          	addi	sp,sp,-32
    80003984:	00113c23          	sd	ra,24(sp)
    80003988:	00813823          	sd	s0,16(sp)
    8000398c:	00913423          	sd	s1,8(sp)
    80003990:	01213023          	sd	s2,0(sp)
    80003994:	02010413          	addi	s0,sp,32
    80003998:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    8000399c:	00100793          	li	a5,1
    800039a0:	02a7f863          	bgeu	a5,a0,800039d0 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800039a4:	00a00793          	li	a5,10
    800039a8:	02f577b3          	remu	a5,a0,a5
    800039ac:	02078e63          	beqz	a5,800039e8 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800039b0:	fff48513          	addi	a0,s1,-1
    800039b4:	00000097          	auipc	ra,0x0
    800039b8:	fcc080e7          	jalr	-52(ra) # 80003980 <_ZL9fibonaccim>
    800039bc:	00050913          	mv	s2,a0
    800039c0:	ffe48513          	addi	a0,s1,-2
    800039c4:	00000097          	auipc	ra,0x0
    800039c8:	fbc080e7          	jalr	-68(ra) # 80003980 <_ZL9fibonaccim>
    800039cc:	00a90533          	add	a0,s2,a0
}
    800039d0:	01813083          	ld	ra,24(sp)
    800039d4:	01013403          	ld	s0,16(sp)
    800039d8:	00813483          	ld	s1,8(sp)
    800039dc:	00013903          	ld	s2,0(sp)
    800039e0:	02010113          	addi	sp,sp,32
    800039e4:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800039e8:	ffffe097          	auipc	ra,0xffffe
    800039ec:	89c080e7          	jalr	-1892(ra) # 80001284 <_Z15thread_dispatchv>
    800039f0:	fc1ff06f          	j	800039b0 <_ZL9fibonaccim+0x30>

00000000800039f4 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    800039f4:	fe010113          	addi	sp,sp,-32
    800039f8:	00113c23          	sd	ra,24(sp)
    800039fc:	00813823          	sd	s0,16(sp)
    80003a00:	00913423          	sd	s1,8(sp)
    80003a04:	01213023          	sd	s2,0(sp)
    80003a08:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003a0c:	00000913          	li	s2,0
    80003a10:	0380006f          	j	80003a48 <_ZN7WorkerA11workerBodyAEPv+0x54>
        pprintString("A: i="); printInteger(i); pprintString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003a14:	ffffe097          	auipc	ra,0xffffe
    80003a18:	870080e7          	jalr	-1936(ra) # 80001284 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003a1c:	00148493          	addi	s1,s1,1
    80003a20:	000027b7          	lui	a5,0x2
    80003a24:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003a28:	0097ee63          	bltu	a5,s1,80003a44 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003a2c:	00000713          	li	a4,0
    80003a30:	000077b7          	lui	a5,0x7
    80003a34:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003a38:	fce7eee3          	bltu	a5,a4,80003a14 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80003a3c:	00170713          	addi	a4,a4,1
    80003a40:	ff1ff06f          	j	80003a30 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003a44:	00190913          	addi	s2,s2,1
    80003a48:	00900793          	li	a5,9
    80003a4c:	0327ec63          	bltu	a5,s2,80003a84 <_ZN7WorkerA11workerBodyAEPv+0x90>
        pprintString("A: i="); printInteger(i); pprintString("\n");
    80003a50:	00005517          	auipc	a0,0x5
    80003a54:	5d850513          	addi	a0,a0,1496 # 80009028 <CONSOLE_STATUS+0x18>
    80003a58:	fffff097          	auipc	ra,0xfffff
    80003a5c:	674080e7          	jalr	1652(ra) # 800030cc <_Z12pprintStringPKc>
    80003a60:	00090513          	mv	a0,s2
    80003a64:	fffff097          	auipc	ra,0xfffff
    80003a68:	6ac080e7          	jalr	1708(ra) # 80003110 <_Z12printIntegerm>
    80003a6c:	00006517          	auipc	a0,0x6
    80003a70:	96c50513          	addi	a0,a0,-1684 # 800093d8 <_ZZ12printIntegermE6digits+0x310>
    80003a74:	fffff097          	auipc	ra,0xfffff
    80003a78:	658080e7          	jalr	1624(ra) # 800030cc <_Z12pprintStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003a7c:	00000493          	li	s1,0
    80003a80:	fa1ff06f          	j	80003a20 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    pprintString("A finished!\n");
    80003a84:	00005517          	auipc	a0,0x5
    80003a88:	5ac50513          	addi	a0,a0,1452 # 80009030 <CONSOLE_STATUS+0x20>
    80003a8c:	fffff097          	auipc	ra,0xfffff
    80003a90:	640080e7          	jalr	1600(ra) # 800030cc <_Z12pprintStringPKc>
    finishedA = true;
    80003a94:	00100793          	li	a5,1
    80003a98:	00008717          	auipc	a4,0x8
    80003a9c:	06f70423          	sb	a5,104(a4) # 8000bb00 <_ZL9finishedA>
}
    80003aa0:	01813083          	ld	ra,24(sp)
    80003aa4:	01013403          	ld	s0,16(sp)
    80003aa8:	00813483          	ld	s1,8(sp)
    80003aac:	00013903          	ld	s2,0(sp)
    80003ab0:	02010113          	addi	sp,sp,32
    80003ab4:	00008067          	ret

0000000080003ab8 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80003ab8:	fe010113          	addi	sp,sp,-32
    80003abc:	00113c23          	sd	ra,24(sp)
    80003ac0:	00813823          	sd	s0,16(sp)
    80003ac4:	00913423          	sd	s1,8(sp)
    80003ac8:	01213023          	sd	s2,0(sp)
    80003acc:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003ad0:	00000913          	li	s2,0
    80003ad4:	0380006f          	j	80003b0c <_ZN7WorkerB11workerBodyBEPv+0x54>
        pprintString("B: i="); printInteger(i); pprintString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003ad8:	ffffd097          	auipc	ra,0xffffd
    80003adc:	7ac080e7          	jalr	1964(ra) # 80001284 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003ae0:	00148493          	addi	s1,s1,1
    80003ae4:	000027b7          	lui	a5,0x2
    80003ae8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003aec:	0097ee63          	bltu	a5,s1,80003b08 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003af0:	00000713          	li	a4,0
    80003af4:	000077b7          	lui	a5,0x7
    80003af8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003afc:	fce7eee3          	bltu	a5,a4,80003ad8 <_ZN7WorkerB11workerBodyBEPv+0x20>
    80003b00:	00170713          	addi	a4,a4,1
    80003b04:	ff1ff06f          	j	80003af4 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80003b08:	00190913          	addi	s2,s2,1
    80003b0c:	00f00793          	li	a5,15
    80003b10:	0327ec63          	bltu	a5,s2,80003b48 <_ZN7WorkerB11workerBodyBEPv+0x90>
        pprintString("B: i="); printInteger(i); pprintString("\n");
    80003b14:	00005517          	auipc	a0,0x5
    80003b18:	52c50513          	addi	a0,a0,1324 # 80009040 <CONSOLE_STATUS+0x30>
    80003b1c:	fffff097          	auipc	ra,0xfffff
    80003b20:	5b0080e7          	jalr	1456(ra) # 800030cc <_Z12pprintStringPKc>
    80003b24:	00090513          	mv	a0,s2
    80003b28:	fffff097          	auipc	ra,0xfffff
    80003b2c:	5e8080e7          	jalr	1512(ra) # 80003110 <_Z12printIntegerm>
    80003b30:	00006517          	auipc	a0,0x6
    80003b34:	8a850513          	addi	a0,a0,-1880 # 800093d8 <_ZZ12printIntegermE6digits+0x310>
    80003b38:	fffff097          	auipc	ra,0xfffff
    80003b3c:	594080e7          	jalr	1428(ra) # 800030cc <_Z12pprintStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003b40:	00000493          	li	s1,0
    80003b44:	fa1ff06f          	j	80003ae4 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    pprintString("B finished!\n");
    80003b48:	00005517          	auipc	a0,0x5
    80003b4c:	50050513          	addi	a0,a0,1280 # 80009048 <CONSOLE_STATUS+0x38>
    80003b50:	fffff097          	auipc	ra,0xfffff
    80003b54:	57c080e7          	jalr	1404(ra) # 800030cc <_Z12pprintStringPKc>
    finishedB = true;
    80003b58:	00100793          	li	a5,1
    80003b5c:	00008717          	auipc	a4,0x8
    80003b60:	faf702a3          	sb	a5,-91(a4) # 8000bb01 <_ZL9finishedB>
    thread_dispatch();
    80003b64:	ffffd097          	auipc	ra,0xffffd
    80003b68:	720080e7          	jalr	1824(ra) # 80001284 <_Z15thread_dispatchv>
}
    80003b6c:	01813083          	ld	ra,24(sp)
    80003b70:	01013403          	ld	s0,16(sp)
    80003b74:	00813483          	ld	s1,8(sp)
    80003b78:	00013903          	ld	s2,0(sp)
    80003b7c:	02010113          	addi	sp,sp,32
    80003b80:	00008067          	ret

0000000080003b84 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80003b84:	fe010113          	addi	sp,sp,-32
    80003b88:	00113c23          	sd	ra,24(sp)
    80003b8c:	00813823          	sd	s0,16(sp)
    80003b90:	00913423          	sd	s1,8(sp)
    80003b94:	01213023          	sd	s2,0(sp)
    80003b98:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003b9c:	00000493          	li	s1,0
    80003ba0:	0380006f          	j	80003bd8 <_ZN7WorkerC11workerBodyCEPv+0x54>
    for (; i < 3; i++) {
        pprintString("C: i="); printInteger(i); pprintString("\n");
    80003ba4:	00005517          	auipc	a0,0x5
    80003ba8:	4b450513          	addi	a0,a0,1204 # 80009058 <CONSOLE_STATUS+0x48>
    80003bac:	fffff097          	auipc	ra,0xfffff
    80003bb0:	520080e7          	jalr	1312(ra) # 800030cc <_Z12pprintStringPKc>
    80003bb4:	00048513          	mv	a0,s1
    80003bb8:	fffff097          	auipc	ra,0xfffff
    80003bbc:	558080e7          	jalr	1368(ra) # 80003110 <_Z12printIntegerm>
    80003bc0:	00006517          	auipc	a0,0x6
    80003bc4:	81850513          	addi	a0,a0,-2024 # 800093d8 <_ZZ12printIntegermE6digits+0x310>
    80003bc8:	fffff097          	auipc	ra,0xfffff
    80003bcc:	504080e7          	jalr	1284(ra) # 800030cc <_Z12pprintStringPKc>
    for (; i < 3; i++) {
    80003bd0:	0014849b          	addiw	s1,s1,1
    80003bd4:	0ff4f493          	andi	s1,s1,255
    80003bd8:	00200793          	li	a5,2
    80003bdc:	fc97f4e3          	bgeu	a5,s1,80003ba4 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    pprintString("C: dispatch\n");
    80003be0:	00005517          	auipc	a0,0x5
    80003be4:	5e050513          	addi	a0,a0,1504 # 800091c0 <_ZZ12printIntegermE6digits+0xf8>
    80003be8:	fffff097          	auipc	ra,0xfffff
    80003bec:	4e4080e7          	jalr	1252(ra) # 800030cc <_Z12pprintStringPKc>
    __asm__ ("li t1, 7");
    80003bf0:	00700313          	li	t1,7
    thread_dispatch();
    80003bf4:	ffffd097          	auipc	ra,0xffffd
    80003bf8:	690080e7          	jalr	1680(ra) # 80001284 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003bfc:	00030913          	mv	s2,t1

    pprintString("C: t1="); printInteger(t1); pprintString("\n");
    80003c00:	00005517          	auipc	a0,0x5
    80003c04:	5d050513          	addi	a0,a0,1488 # 800091d0 <_ZZ12printIntegermE6digits+0x108>
    80003c08:	fffff097          	auipc	ra,0xfffff
    80003c0c:	4c4080e7          	jalr	1220(ra) # 800030cc <_Z12pprintStringPKc>
    80003c10:	00090513          	mv	a0,s2
    80003c14:	fffff097          	auipc	ra,0xfffff
    80003c18:	4fc080e7          	jalr	1276(ra) # 80003110 <_Z12printIntegerm>
    80003c1c:	00005517          	auipc	a0,0x5
    80003c20:	7bc50513          	addi	a0,a0,1980 # 800093d8 <_ZZ12printIntegermE6digits+0x310>
    80003c24:	fffff097          	auipc	ra,0xfffff
    80003c28:	4a8080e7          	jalr	1192(ra) # 800030cc <_Z12pprintStringPKc>

    uint64 result = fibonacci(12);
    80003c2c:	00c00513          	li	a0,12
    80003c30:	00000097          	auipc	ra,0x0
    80003c34:	d50080e7          	jalr	-688(ra) # 80003980 <_ZL9fibonaccim>
    80003c38:	00050913          	mv	s2,a0
    pprintString("C: fibonaci="); printInteger(result); pprintString("\n");
    80003c3c:	00005517          	auipc	a0,0x5
    80003c40:	59c50513          	addi	a0,a0,1436 # 800091d8 <_ZZ12printIntegermE6digits+0x110>
    80003c44:	fffff097          	auipc	ra,0xfffff
    80003c48:	488080e7          	jalr	1160(ra) # 800030cc <_Z12pprintStringPKc>
    80003c4c:	00090513          	mv	a0,s2
    80003c50:	fffff097          	auipc	ra,0xfffff
    80003c54:	4c0080e7          	jalr	1216(ra) # 80003110 <_Z12printIntegerm>
    80003c58:	00005517          	auipc	a0,0x5
    80003c5c:	78050513          	addi	a0,a0,1920 # 800093d8 <_ZZ12printIntegermE6digits+0x310>
    80003c60:	fffff097          	auipc	ra,0xfffff
    80003c64:	46c080e7          	jalr	1132(ra) # 800030cc <_Z12pprintStringPKc>
    80003c68:	0380006f          	j	80003ca0 <_ZN7WorkerC11workerBodyCEPv+0x11c>

    for (; i < 6; i++) {
        pprintString("C: i="); printInteger(i); pprintString("\n");
    80003c6c:	00005517          	auipc	a0,0x5
    80003c70:	3ec50513          	addi	a0,a0,1004 # 80009058 <CONSOLE_STATUS+0x48>
    80003c74:	fffff097          	auipc	ra,0xfffff
    80003c78:	458080e7          	jalr	1112(ra) # 800030cc <_Z12pprintStringPKc>
    80003c7c:	00048513          	mv	a0,s1
    80003c80:	fffff097          	auipc	ra,0xfffff
    80003c84:	490080e7          	jalr	1168(ra) # 80003110 <_Z12printIntegerm>
    80003c88:	00005517          	auipc	a0,0x5
    80003c8c:	75050513          	addi	a0,a0,1872 # 800093d8 <_ZZ12printIntegermE6digits+0x310>
    80003c90:	fffff097          	auipc	ra,0xfffff
    80003c94:	43c080e7          	jalr	1084(ra) # 800030cc <_Z12pprintStringPKc>
    for (; i < 6; i++) {
    80003c98:	0014849b          	addiw	s1,s1,1
    80003c9c:	0ff4f493          	andi	s1,s1,255
    80003ca0:	00500793          	li	a5,5
    80003ca4:	fc97f4e3          	bgeu	a5,s1,80003c6c <_ZN7WorkerC11workerBodyCEPv+0xe8>
    }

    pprintString("C finished!\n");
    80003ca8:	00005517          	auipc	a0,0x5
    80003cac:	3b850513          	addi	a0,a0,952 # 80009060 <CONSOLE_STATUS+0x50>
    80003cb0:	fffff097          	auipc	ra,0xfffff
    80003cb4:	41c080e7          	jalr	1052(ra) # 800030cc <_Z12pprintStringPKc>
    finishedC = true;
    80003cb8:	00100793          	li	a5,1
    80003cbc:	00008717          	auipc	a4,0x8
    80003cc0:	e4f70323          	sb	a5,-442(a4) # 8000bb02 <_ZL9finishedC>
    thread_dispatch();
    80003cc4:	ffffd097          	auipc	ra,0xffffd
    80003cc8:	5c0080e7          	jalr	1472(ra) # 80001284 <_Z15thread_dispatchv>
}
    80003ccc:	01813083          	ld	ra,24(sp)
    80003cd0:	01013403          	ld	s0,16(sp)
    80003cd4:	00813483          	ld	s1,8(sp)
    80003cd8:	00013903          	ld	s2,0(sp)
    80003cdc:	02010113          	addi	sp,sp,32
    80003ce0:	00008067          	ret

0000000080003ce4 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80003ce4:	fe010113          	addi	sp,sp,-32
    80003ce8:	00113c23          	sd	ra,24(sp)
    80003cec:	00813823          	sd	s0,16(sp)
    80003cf0:	00913423          	sd	s1,8(sp)
    80003cf4:	01213023          	sd	s2,0(sp)
    80003cf8:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003cfc:	00a00493          	li	s1,10
    80003d00:	0380006f          	j	80003d38 <_ZN7WorkerD11workerBodyDEPv+0x54>
    for (; i < 13; i++) {
        pprintString("D: i="); printInteger(i); pprintString("\n");
    80003d04:	00005517          	auipc	a0,0x5
    80003d08:	4e450513          	addi	a0,a0,1252 # 800091e8 <_ZZ12printIntegermE6digits+0x120>
    80003d0c:	fffff097          	auipc	ra,0xfffff
    80003d10:	3c0080e7          	jalr	960(ra) # 800030cc <_Z12pprintStringPKc>
    80003d14:	00048513          	mv	a0,s1
    80003d18:	fffff097          	auipc	ra,0xfffff
    80003d1c:	3f8080e7          	jalr	1016(ra) # 80003110 <_Z12printIntegerm>
    80003d20:	00005517          	auipc	a0,0x5
    80003d24:	6b850513          	addi	a0,a0,1720 # 800093d8 <_ZZ12printIntegermE6digits+0x310>
    80003d28:	fffff097          	auipc	ra,0xfffff
    80003d2c:	3a4080e7          	jalr	932(ra) # 800030cc <_Z12pprintStringPKc>
    for (; i < 13; i++) {
    80003d30:	0014849b          	addiw	s1,s1,1
    80003d34:	0ff4f493          	andi	s1,s1,255
    80003d38:	00c00793          	li	a5,12
    80003d3c:	fc97f4e3          	bgeu	a5,s1,80003d04 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    pprintString("D: dispatch\n");
    80003d40:	00005517          	auipc	a0,0x5
    80003d44:	4b050513          	addi	a0,a0,1200 # 800091f0 <_ZZ12printIntegermE6digits+0x128>
    80003d48:	fffff097          	auipc	ra,0xfffff
    80003d4c:	384080e7          	jalr	900(ra) # 800030cc <_Z12pprintStringPKc>
    __asm__ ("li t1, 5");
    80003d50:	00500313          	li	t1,5
    thread_dispatch();
    80003d54:	ffffd097          	auipc	ra,0xffffd
    80003d58:	530080e7          	jalr	1328(ra) # 80001284 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003d5c:	01000513          	li	a0,16
    80003d60:	00000097          	auipc	ra,0x0
    80003d64:	c20080e7          	jalr	-992(ra) # 80003980 <_ZL9fibonaccim>
    80003d68:	00050913          	mv	s2,a0
    pprintString("D: fibonaci="); printInteger(result); pprintString("\n");
    80003d6c:	00005517          	auipc	a0,0x5
    80003d70:	49450513          	addi	a0,a0,1172 # 80009200 <_ZZ12printIntegermE6digits+0x138>
    80003d74:	fffff097          	auipc	ra,0xfffff
    80003d78:	358080e7          	jalr	856(ra) # 800030cc <_Z12pprintStringPKc>
    80003d7c:	00090513          	mv	a0,s2
    80003d80:	fffff097          	auipc	ra,0xfffff
    80003d84:	390080e7          	jalr	912(ra) # 80003110 <_Z12printIntegerm>
    80003d88:	00005517          	auipc	a0,0x5
    80003d8c:	65050513          	addi	a0,a0,1616 # 800093d8 <_ZZ12printIntegermE6digits+0x310>
    80003d90:	fffff097          	auipc	ra,0xfffff
    80003d94:	33c080e7          	jalr	828(ra) # 800030cc <_Z12pprintStringPKc>
    80003d98:	0380006f          	j	80003dd0 <_ZN7WorkerD11workerBodyDEPv+0xec>

    for (; i < 16; i++) {
        pprintString("D: i="); printInteger(i); pprintString("\n");
    80003d9c:	00005517          	auipc	a0,0x5
    80003da0:	44c50513          	addi	a0,a0,1100 # 800091e8 <_ZZ12printIntegermE6digits+0x120>
    80003da4:	fffff097          	auipc	ra,0xfffff
    80003da8:	328080e7          	jalr	808(ra) # 800030cc <_Z12pprintStringPKc>
    80003dac:	00048513          	mv	a0,s1
    80003db0:	fffff097          	auipc	ra,0xfffff
    80003db4:	360080e7          	jalr	864(ra) # 80003110 <_Z12printIntegerm>
    80003db8:	00005517          	auipc	a0,0x5
    80003dbc:	62050513          	addi	a0,a0,1568 # 800093d8 <_ZZ12printIntegermE6digits+0x310>
    80003dc0:	fffff097          	auipc	ra,0xfffff
    80003dc4:	30c080e7          	jalr	780(ra) # 800030cc <_Z12pprintStringPKc>
    for (; i < 16; i++) {
    80003dc8:	0014849b          	addiw	s1,s1,1
    80003dcc:	0ff4f493          	andi	s1,s1,255
    80003dd0:	00f00793          	li	a5,15
    80003dd4:	fc97f4e3          	bgeu	a5,s1,80003d9c <_ZN7WorkerD11workerBodyDEPv+0xb8>
    }

    pprintString("D finished!\n");
    80003dd8:	00005517          	auipc	a0,0x5
    80003ddc:	43850513          	addi	a0,a0,1080 # 80009210 <_ZZ12printIntegermE6digits+0x148>
    80003de0:	fffff097          	auipc	ra,0xfffff
    80003de4:	2ec080e7          	jalr	748(ra) # 800030cc <_Z12pprintStringPKc>
    finishedD = true;
    80003de8:	00100793          	li	a5,1
    80003dec:	00008717          	auipc	a4,0x8
    80003df0:	d0f70ba3          	sb	a5,-745(a4) # 8000bb03 <_ZL9finishedD>
    thread_dispatch();
    80003df4:	ffffd097          	auipc	ra,0xffffd
    80003df8:	490080e7          	jalr	1168(ra) # 80001284 <_Z15thread_dispatchv>
}
    80003dfc:	01813083          	ld	ra,24(sp)
    80003e00:	01013403          	ld	s0,16(sp)
    80003e04:	00813483          	ld	s1,8(sp)
    80003e08:	00013903          	ld	s2,0(sp)
    80003e0c:	02010113          	addi	sp,sp,32
    80003e10:	00008067          	ret

0000000080003e14 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80003e14:	fc010113          	addi	sp,sp,-64
    80003e18:	02113c23          	sd	ra,56(sp)
    80003e1c:	02813823          	sd	s0,48(sp)
    80003e20:	02913423          	sd	s1,40(sp)
    80003e24:	03213023          	sd	s2,32(sp)
    80003e28:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80003e2c:	02000513          	li	a0,32
    80003e30:	ffffe097          	auipc	ra,0xffffe
    80003e34:	104080e7          	jalr	260(ra) # 80001f34 <_Znwm>
    80003e38:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80003e3c:	ffffe097          	auipc	ra,0xffffe
    80003e40:	280080e7          	jalr	640(ra) # 800020bc <_ZN6ThreadC1Ev>
    80003e44:	00008797          	auipc	a5,0x8
    80003e48:	9ec78793          	addi	a5,a5,-1556 # 8000b830 <_ZTV7WorkerA+0x10>
    80003e4c:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80003e50:	fc943023          	sd	s1,-64(s0)
    pprintString("ThreadA created\n");
    80003e54:	00005517          	auipc	a0,0x5
    80003e58:	3cc50513          	addi	a0,a0,972 # 80009220 <_ZZ12printIntegermE6digits+0x158>
    80003e5c:	fffff097          	auipc	ra,0xfffff
    80003e60:	270080e7          	jalr	624(ra) # 800030cc <_Z12pprintStringPKc>

    threads[1] = new WorkerB();
    80003e64:	02000513          	li	a0,32
    80003e68:	ffffe097          	auipc	ra,0xffffe
    80003e6c:	0cc080e7          	jalr	204(ra) # 80001f34 <_Znwm>
    80003e70:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80003e74:	ffffe097          	auipc	ra,0xffffe
    80003e78:	248080e7          	jalr	584(ra) # 800020bc <_ZN6ThreadC1Ev>
    80003e7c:	00008797          	auipc	a5,0x8
    80003e80:	9dc78793          	addi	a5,a5,-1572 # 8000b858 <_ZTV7WorkerB+0x10>
    80003e84:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80003e88:	fc943423          	sd	s1,-56(s0)
    pprintString("ThreadB created\n");
    80003e8c:	00005517          	auipc	a0,0x5
    80003e90:	3ac50513          	addi	a0,a0,940 # 80009238 <_ZZ12printIntegermE6digits+0x170>
    80003e94:	fffff097          	auipc	ra,0xfffff
    80003e98:	238080e7          	jalr	568(ra) # 800030cc <_Z12pprintStringPKc>

    threads[2] = new WorkerC();
    80003e9c:	02000513          	li	a0,32
    80003ea0:	ffffe097          	auipc	ra,0xffffe
    80003ea4:	094080e7          	jalr	148(ra) # 80001f34 <_Znwm>
    80003ea8:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80003eac:	ffffe097          	auipc	ra,0xffffe
    80003eb0:	210080e7          	jalr	528(ra) # 800020bc <_ZN6ThreadC1Ev>
    80003eb4:	00008797          	auipc	a5,0x8
    80003eb8:	9cc78793          	addi	a5,a5,-1588 # 8000b880 <_ZTV7WorkerC+0x10>
    80003ebc:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80003ec0:	fc943823          	sd	s1,-48(s0)
    pprintString("ThreadC created\n");
    80003ec4:	00005517          	auipc	a0,0x5
    80003ec8:	38c50513          	addi	a0,a0,908 # 80009250 <_ZZ12printIntegermE6digits+0x188>
    80003ecc:	fffff097          	auipc	ra,0xfffff
    80003ed0:	200080e7          	jalr	512(ra) # 800030cc <_Z12pprintStringPKc>

    threads[3] = new WorkerD();
    80003ed4:	02000513          	li	a0,32
    80003ed8:	ffffe097          	auipc	ra,0xffffe
    80003edc:	05c080e7          	jalr	92(ra) # 80001f34 <_Znwm>
    80003ee0:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80003ee4:	ffffe097          	auipc	ra,0xffffe
    80003ee8:	1d8080e7          	jalr	472(ra) # 800020bc <_ZN6ThreadC1Ev>
    80003eec:	00008797          	auipc	a5,0x8
    80003ef0:	9bc78793          	addi	a5,a5,-1604 # 8000b8a8 <_ZTV7WorkerD+0x10>
    80003ef4:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80003ef8:	fc943c23          	sd	s1,-40(s0)
    pprintString("ThreadD created\n");
    80003efc:	00005517          	auipc	a0,0x5
    80003f00:	36c50513          	addi	a0,a0,876 # 80009268 <_ZZ12printIntegermE6digits+0x1a0>
    80003f04:	fffff097          	auipc	ra,0xfffff
    80003f08:	1c8080e7          	jalr	456(ra) # 800030cc <_Z12pprintStringPKc>

    for(int i=0; i<4; i++) {
    80003f0c:	00000493          	li	s1,0
    80003f10:	00300793          	li	a5,3
    80003f14:	0297c663          	blt	a5,s1,80003f40 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80003f18:	00349793          	slli	a5,s1,0x3
    80003f1c:	fe040713          	addi	a4,s0,-32
    80003f20:	00f707b3          	add	a5,a4,a5
    80003f24:	fe07b503          	ld	a0,-32(a5)
    80003f28:	ffffe097          	auipc	ra,0xffffe
    80003f2c:	1c4080e7          	jalr	452(ra) # 800020ec <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80003f30:	0014849b          	addiw	s1,s1,1
    80003f34:	fddff06f          	j	80003f10 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80003f38:	ffffe097          	auipc	ra,0xffffe
    80003f3c:	15c080e7          	jalr	348(ra) # 80002094 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80003f40:	00008797          	auipc	a5,0x8
    80003f44:	bc07c783          	lbu	a5,-1088(a5) # 8000bb00 <_ZL9finishedA>
    80003f48:	fe0788e3          	beqz	a5,80003f38 <_Z20Threads_CPP_API_testv+0x124>
    80003f4c:	00008797          	auipc	a5,0x8
    80003f50:	bb57c783          	lbu	a5,-1099(a5) # 8000bb01 <_ZL9finishedB>
    80003f54:	fe0782e3          	beqz	a5,80003f38 <_Z20Threads_CPP_API_testv+0x124>
    80003f58:	00008797          	auipc	a5,0x8
    80003f5c:	baa7c783          	lbu	a5,-1110(a5) # 8000bb02 <_ZL9finishedC>
    80003f60:	fc078ce3          	beqz	a5,80003f38 <_Z20Threads_CPP_API_testv+0x124>
    80003f64:	00008797          	auipc	a5,0x8
    80003f68:	b9f7c783          	lbu	a5,-1121(a5) # 8000bb03 <_ZL9finishedD>
    80003f6c:	fc0786e3          	beqz	a5,80003f38 <_Z20Threads_CPP_API_testv+0x124>
    80003f70:	fc040493          	addi	s1,s0,-64
    80003f74:	0080006f          	j	80003f7c <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    80003f78:	00848493          	addi	s1,s1,8
    80003f7c:	fe040793          	addi	a5,s0,-32
    80003f80:	08f48663          	beq	s1,a5,8000400c <_Z20Threads_CPP_API_testv+0x1f8>
    80003f84:	0004b503          	ld	a0,0(s1)
    80003f88:	fe0508e3          	beqz	a0,80003f78 <_Z20Threads_CPP_API_testv+0x164>
    80003f8c:	00053783          	ld	a5,0(a0)
    80003f90:	0087b783          	ld	a5,8(a5)
    80003f94:	000780e7          	jalr	a5
    80003f98:	fe1ff06f          	j	80003f78 <_Z20Threads_CPP_API_testv+0x164>
    80003f9c:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80003fa0:	00048513          	mv	a0,s1
    80003fa4:	ffffe097          	auipc	ra,0xffffe
    80003fa8:	fb8080e7          	jalr	-72(ra) # 80001f5c <_ZdlPv>
    80003fac:	00090513          	mv	a0,s2
    80003fb0:	00009097          	auipc	ra,0x9
    80003fb4:	c58080e7          	jalr	-936(ra) # 8000cc08 <_Unwind_Resume>
    80003fb8:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80003fbc:	00048513          	mv	a0,s1
    80003fc0:	ffffe097          	auipc	ra,0xffffe
    80003fc4:	f9c080e7          	jalr	-100(ra) # 80001f5c <_ZdlPv>
    80003fc8:	00090513          	mv	a0,s2
    80003fcc:	00009097          	auipc	ra,0x9
    80003fd0:	c3c080e7          	jalr	-964(ra) # 8000cc08 <_Unwind_Resume>
    80003fd4:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80003fd8:	00048513          	mv	a0,s1
    80003fdc:	ffffe097          	auipc	ra,0xffffe
    80003fe0:	f80080e7          	jalr	-128(ra) # 80001f5c <_ZdlPv>
    80003fe4:	00090513          	mv	a0,s2
    80003fe8:	00009097          	auipc	ra,0x9
    80003fec:	c20080e7          	jalr	-992(ra) # 8000cc08 <_Unwind_Resume>
    80003ff0:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80003ff4:	00048513          	mv	a0,s1
    80003ff8:	ffffe097          	auipc	ra,0xffffe
    80003ffc:	f64080e7          	jalr	-156(ra) # 80001f5c <_ZdlPv>
    80004000:	00090513          	mv	a0,s2
    80004004:	00009097          	auipc	ra,0x9
    80004008:	c04080e7          	jalr	-1020(ra) # 8000cc08 <_Unwind_Resume>
}
    8000400c:	03813083          	ld	ra,56(sp)
    80004010:	03013403          	ld	s0,48(sp)
    80004014:	02813483          	ld	s1,40(sp)
    80004018:	02013903          	ld	s2,32(sp)
    8000401c:	04010113          	addi	sp,sp,64
    80004020:	00008067          	ret

0000000080004024 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80004024:	ff010113          	addi	sp,sp,-16
    80004028:	00113423          	sd	ra,8(sp)
    8000402c:	00813023          	sd	s0,0(sp)
    80004030:	01010413          	addi	s0,sp,16
    80004034:	00007797          	auipc	a5,0x7
    80004038:	7fc78793          	addi	a5,a5,2044 # 8000b830 <_ZTV7WorkerA+0x10>
    8000403c:	00f53023          	sd	a5,0(a0)
    80004040:	ffffe097          	auipc	ra,0xffffe
    80004044:	f44080e7          	jalr	-188(ra) # 80001f84 <_ZN6ThreadD1Ev>
    80004048:	00813083          	ld	ra,8(sp)
    8000404c:	00013403          	ld	s0,0(sp)
    80004050:	01010113          	addi	sp,sp,16
    80004054:	00008067          	ret

0000000080004058 <_ZN7WorkerAD0Ev>:
    80004058:	fe010113          	addi	sp,sp,-32
    8000405c:	00113c23          	sd	ra,24(sp)
    80004060:	00813823          	sd	s0,16(sp)
    80004064:	00913423          	sd	s1,8(sp)
    80004068:	02010413          	addi	s0,sp,32
    8000406c:	00050493          	mv	s1,a0
    80004070:	00007797          	auipc	a5,0x7
    80004074:	7c078793          	addi	a5,a5,1984 # 8000b830 <_ZTV7WorkerA+0x10>
    80004078:	00f53023          	sd	a5,0(a0)
    8000407c:	ffffe097          	auipc	ra,0xffffe
    80004080:	f08080e7          	jalr	-248(ra) # 80001f84 <_ZN6ThreadD1Ev>
    80004084:	00048513          	mv	a0,s1
    80004088:	ffffe097          	auipc	ra,0xffffe
    8000408c:	ed4080e7          	jalr	-300(ra) # 80001f5c <_ZdlPv>
    80004090:	01813083          	ld	ra,24(sp)
    80004094:	01013403          	ld	s0,16(sp)
    80004098:	00813483          	ld	s1,8(sp)
    8000409c:	02010113          	addi	sp,sp,32
    800040a0:	00008067          	ret

00000000800040a4 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    800040a4:	ff010113          	addi	sp,sp,-16
    800040a8:	00113423          	sd	ra,8(sp)
    800040ac:	00813023          	sd	s0,0(sp)
    800040b0:	01010413          	addi	s0,sp,16
    800040b4:	00007797          	auipc	a5,0x7
    800040b8:	7a478793          	addi	a5,a5,1956 # 8000b858 <_ZTV7WorkerB+0x10>
    800040bc:	00f53023          	sd	a5,0(a0)
    800040c0:	ffffe097          	auipc	ra,0xffffe
    800040c4:	ec4080e7          	jalr	-316(ra) # 80001f84 <_ZN6ThreadD1Ev>
    800040c8:	00813083          	ld	ra,8(sp)
    800040cc:	00013403          	ld	s0,0(sp)
    800040d0:	01010113          	addi	sp,sp,16
    800040d4:	00008067          	ret

00000000800040d8 <_ZN7WorkerBD0Ev>:
    800040d8:	fe010113          	addi	sp,sp,-32
    800040dc:	00113c23          	sd	ra,24(sp)
    800040e0:	00813823          	sd	s0,16(sp)
    800040e4:	00913423          	sd	s1,8(sp)
    800040e8:	02010413          	addi	s0,sp,32
    800040ec:	00050493          	mv	s1,a0
    800040f0:	00007797          	auipc	a5,0x7
    800040f4:	76878793          	addi	a5,a5,1896 # 8000b858 <_ZTV7WorkerB+0x10>
    800040f8:	00f53023          	sd	a5,0(a0)
    800040fc:	ffffe097          	auipc	ra,0xffffe
    80004100:	e88080e7          	jalr	-376(ra) # 80001f84 <_ZN6ThreadD1Ev>
    80004104:	00048513          	mv	a0,s1
    80004108:	ffffe097          	auipc	ra,0xffffe
    8000410c:	e54080e7          	jalr	-428(ra) # 80001f5c <_ZdlPv>
    80004110:	01813083          	ld	ra,24(sp)
    80004114:	01013403          	ld	s0,16(sp)
    80004118:	00813483          	ld	s1,8(sp)
    8000411c:	02010113          	addi	sp,sp,32
    80004120:	00008067          	ret

0000000080004124 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80004124:	ff010113          	addi	sp,sp,-16
    80004128:	00113423          	sd	ra,8(sp)
    8000412c:	00813023          	sd	s0,0(sp)
    80004130:	01010413          	addi	s0,sp,16
    80004134:	00007797          	auipc	a5,0x7
    80004138:	74c78793          	addi	a5,a5,1868 # 8000b880 <_ZTV7WorkerC+0x10>
    8000413c:	00f53023          	sd	a5,0(a0)
    80004140:	ffffe097          	auipc	ra,0xffffe
    80004144:	e44080e7          	jalr	-444(ra) # 80001f84 <_ZN6ThreadD1Ev>
    80004148:	00813083          	ld	ra,8(sp)
    8000414c:	00013403          	ld	s0,0(sp)
    80004150:	01010113          	addi	sp,sp,16
    80004154:	00008067          	ret

0000000080004158 <_ZN7WorkerCD0Ev>:
    80004158:	fe010113          	addi	sp,sp,-32
    8000415c:	00113c23          	sd	ra,24(sp)
    80004160:	00813823          	sd	s0,16(sp)
    80004164:	00913423          	sd	s1,8(sp)
    80004168:	02010413          	addi	s0,sp,32
    8000416c:	00050493          	mv	s1,a0
    80004170:	00007797          	auipc	a5,0x7
    80004174:	71078793          	addi	a5,a5,1808 # 8000b880 <_ZTV7WorkerC+0x10>
    80004178:	00f53023          	sd	a5,0(a0)
    8000417c:	ffffe097          	auipc	ra,0xffffe
    80004180:	e08080e7          	jalr	-504(ra) # 80001f84 <_ZN6ThreadD1Ev>
    80004184:	00048513          	mv	a0,s1
    80004188:	ffffe097          	auipc	ra,0xffffe
    8000418c:	dd4080e7          	jalr	-556(ra) # 80001f5c <_ZdlPv>
    80004190:	01813083          	ld	ra,24(sp)
    80004194:	01013403          	ld	s0,16(sp)
    80004198:	00813483          	ld	s1,8(sp)
    8000419c:	02010113          	addi	sp,sp,32
    800041a0:	00008067          	ret

00000000800041a4 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    800041a4:	ff010113          	addi	sp,sp,-16
    800041a8:	00113423          	sd	ra,8(sp)
    800041ac:	00813023          	sd	s0,0(sp)
    800041b0:	01010413          	addi	s0,sp,16
    800041b4:	00007797          	auipc	a5,0x7
    800041b8:	6f478793          	addi	a5,a5,1780 # 8000b8a8 <_ZTV7WorkerD+0x10>
    800041bc:	00f53023          	sd	a5,0(a0)
    800041c0:	ffffe097          	auipc	ra,0xffffe
    800041c4:	dc4080e7          	jalr	-572(ra) # 80001f84 <_ZN6ThreadD1Ev>
    800041c8:	00813083          	ld	ra,8(sp)
    800041cc:	00013403          	ld	s0,0(sp)
    800041d0:	01010113          	addi	sp,sp,16
    800041d4:	00008067          	ret

00000000800041d8 <_ZN7WorkerDD0Ev>:
    800041d8:	fe010113          	addi	sp,sp,-32
    800041dc:	00113c23          	sd	ra,24(sp)
    800041e0:	00813823          	sd	s0,16(sp)
    800041e4:	00913423          	sd	s1,8(sp)
    800041e8:	02010413          	addi	s0,sp,32
    800041ec:	00050493          	mv	s1,a0
    800041f0:	00007797          	auipc	a5,0x7
    800041f4:	6b878793          	addi	a5,a5,1720 # 8000b8a8 <_ZTV7WorkerD+0x10>
    800041f8:	00f53023          	sd	a5,0(a0)
    800041fc:	ffffe097          	auipc	ra,0xffffe
    80004200:	d88080e7          	jalr	-632(ra) # 80001f84 <_ZN6ThreadD1Ev>
    80004204:	00048513          	mv	a0,s1
    80004208:	ffffe097          	auipc	ra,0xffffe
    8000420c:	d54080e7          	jalr	-684(ra) # 80001f5c <_ZdlPv>
    80004210:	01813083          	ld	ra,24(sp)
    80004214:	01013403          	ld	s0,16(sp)
    80004218:	00813483          	ld	s1,8(sp)
    8000421c:	02010113          	addi	sp,sp,32
    80004220:	00008067          	ret

0000000080004224 <_ZN7WorkerA3runEv>:
    void run() override {
    80004224:	ff010113          	addi	sp,sp,-16
    80004228:	00113423          	sd	ra,8(sp)
    8000422c:	00813023          	sd	s0,0(sp)
    80004230:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80004234:	00000593          	li	a1,0
    80004238:	fffff097          	auipc	ra,0xfffff
    8000423c:	7bc080e7          	jalr	1980(ra) # 800039f4 <_ZN7WorkerA11workerBodyAEPv>
    }
    80004240:	00813083          	ld	ra,8(sp)
    80004244:	00013403          	ld	s0,0(sp)
    80004248:	01010113          	addi	sp,sp,16
    8000424c:	00008067          	ret

0000000080004250 <_ZN7WorkerB3runEv>:
    void run() override {
    80004250:	ff010113          	addi	sp,sp,-16
    80004254:	00113423          	sd	ra,8(sp)
    80004258:	00813023          	sd	s0,0(sp)
    8000425c:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80004260:	00000593          	li	a1,0
    80004264:	00000097          	auipc	ra,0x0
    80004268:	854080e7          	jalr	-1964(ra) # 80003ab8 <_ZN7WorkerB11workerBodyBEPv>
    }
    8000426c:	00813083          	ld	ra,8(sp)
    80004270:	00013403          	ld	s0,0(sp)
    80004274:	01010113          	addi	sp,sp,16
    80004278:	00008067          	ret

000000008000427c <_ZN7WorkerC3runEv>:
    void run() override {
    8000427c:	ff010113          	addi	sp,sp,-16
    80004280:	00113423          	sd	ra,8(sp)
    80004284:	00813023          	sd	s0,0(sp)
    80004288:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    8000428c:	00000593          	li	a1,0
    80004290:	00000097          	auipc	ra,0x0
    80004294:	8f4080e7          	jalr	-1804(ra) # 80003b84 <_ZN7WorkerC11workerBodyCEPv>
    }
    80004298:	00813083          	ld	ra,8(sp)
    8000429c:	00013403          	ld	s0,0(sp)
    800042a0:	01010113          	addi	sp,sp,16
    800042a4:	00008067          	ret

00000000800042a8 <_ZN7WorkerD3runEv>:
    void run() override {
    800042a8:	ff010113          	addi	sp,sp,-16
    800042ac:	00113423          	sd	ra,8(sp)
    800042b0:	00813023          	sd	s0,0(sp)
    800042b4:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    800042b8:	00000593          	li	a1,0
    800042bc:	00000097          	auipc	ra,0x0
    800042c0:	a28080e7          	jalr	-1496(ra) # 80003ce4 <_ZN7WorkerD11workerBodyDEPv>
    }
    800042c4:	00813083          	ld	ra,8(sp)
    800042c8:	00013403          	ld	s0,0(sp)
    800042cc:	01010113          	addi	sp,sp,16
    800042d0:	00008067          	ret

00000000800042d4 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    800042d4:	f8010113          	addi	sp,sp,-128
    800042d8:	06113c23          	sd	ra,120(sp)
    800042dc:	06813823          	sd	s0,112(sp)
    800042e0:	06913423          	sd	s1,104(sp)
    800042e4:	07213023          	sd	s2,96(sp)
    800042e8:	05313c23          	sd	s3,88(sp)
    800042ec:	05413823          	sd	s4,80(sp)
    800042f0:	05513423          	sd	s5,72(sp)
    800042f4:	05613023          	sd	s6,64(sp)
    800042f8:	03713c23          	sd	s7,56(sp)
    800042fc:	03813823          	sd	s8,48(sp)
    80004300:	03913423          	sd	s9,40(sp)
    80004304:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    80004308:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    8000430c:	00005517          	auipc	a0,0x5
    80004310:	dcc50513          	addi	a0,a0,-564 # 800090d8 <_ZZ12printIntegermE6digits+0x10>
    80004314:	00001097          	auipc	ra,0x1
    80004318:	5a8080e7          	jalr	1448(ra) # 800058bc <_Z11printStringPKc>
    getString(input, 30);
    8000431c:	01e00593          	li	a1,30
    80004320:	f8040493          	addi	s1,s0,-128
    80004324:	00048513          	mv	a0,s1
    80004328:	00001097          	auipc	ra,0x1
    8000432c:	61c080e7          	jalr	1564(ra) # 80005944 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004330:	00048513          	mv	a0,s1
    80004334:	00001097          	auipc	ra,0x1
    80004338:	6e8080e7          	jalr	1768(ra) # 80005a1c <_Z11stringToIntPKc>
    8000433c:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    80004340:	00005517          	auipc	a0,0x5
    80004344:	db850513          	addi	a0,a0,-584 # 800090f8 <_ZZ12printIntegermE6digits+0x30>
    80004348:	00001097          	auipc	ra,0x1
    8000434c:	574080e7          	jalr	1396(ra) # 800058bc <_Z11printStringPKc>
    getString(input, 30);
    80004350:	01e00593          	li	a1,30
    80004354:	00048513          	mv	a0,s1
    80004358:	00001097          	auipc	ra,0x1
    8000435c:	5ec080e7          	jalr	1516(ra) # 80005944 <_Z9getStringPci>
    n = stringToInt(input);
    80004360:	00048513          	mv	a0,s1
    80004364:	00001097          	auipc	ra,0x1
    80004368:	6b8080e7          	jalr	1720(ra) # 80005a1c <_Z11stringToIntPKc>
    8000436c:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    80004370:	00005517          	auipc	a0,0x5
    80004374:	da850513          	addi	a0,a0,-600 # 80009118 <_ZZ12printIntegermE6digits+0x50>
    80004378:	00001097          	auipc	ra,0x1
    8000437c:	544080e7          	jalr	1348(ra) # 800058bc <_Z11printStringPKc>
    printInt(threadNum);
    80004380:	00000613          	li	a2,0
    80004384:	00a00593          	li	a1,10
    80004388:	00098513          	mv	a0,s3
    8000438c:	00001097          	auipc	ra,0x1
    80004390:	6e0080e7          	jalr	1760(ra) # 80005a6c <_Z8printIntiii>
    printString(" i velicina bafera ");
    80004394:	00005517          	auipc	a0,0x5
    80004398:	d9c50513          	addi	a0,a0,-612 # 80009130 <_ZZ12printIntegermE6digits+0x68>
    8000439c:	00001097          	auipc	ra,0x1
    800043a0:	520080e7          	jalr	1312(ra) # 800058bc <_Z11printStringPKc>
    printInt(n);
    800043a4:	00000613          	li	a2,0
    800043a8:	00a00593          	li	a1,10
    800043ac:	00048513          	mv	a0,s1
    800043b0:	00001097          	auipc	ra,0x1
    800043b4:	6bc080e7          	jalr	1724(ra) # 80005a6c <_Z8printIntiii>
    printString(".\n");
    800043b8:	00005517          	auipc	a0,0x5
    800043bc:	d9050513          	addi	a0,a0,-624 # 80009148 <_ZZ12printIntegermE6digits+0x80>
    800043c0:	00001097          	auipc	ra,0x1
    800043c4:	4fc080e7          	jalr	1276(ra) # 800058bc <_Z11printStringPKc>
    if (threadNum > n) {
    800043c8:	0334c463          	blt	s1,s3,800043f0 <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    800043cc:	03305c63          	blez	s3,80004404 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    800043d0:	03800513          	li	a0,56
    800043d4:	ffffe097          	auipc	ra,0xffffe
    800043d8:	b60080e7          	jalr	-1184(ra) # 80001f34 <_Znwm>
    800043dc:	00050a93          	mv	s5,a0
    800043e0:	00048593          	mv	a1,s1
    800043e4:	00001097          	auipc	ra,0x1
    800043e8:	7a8080e7          	jalr	1960(ra) # 80005b8c <_ZN9BufferCPPC1Ei>
    800043ec:	0300006f          	j	8000441c <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800043f0:	00005517          	auipc	a0,0x5
    800043f4:	d6050513          	addi	a0,a0,-672 # 80009150 <_ZZ12printIntegermE6digits+0x88>
    800043f8:	00001097          	auipc	ra,0x1
    800043fc:	4c4080e7          	jalr	1220(ra) # 800058bc <_Z11printStringPKc>
        return;
    80004400:	0140006f          	j	80004414 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004404:	00005517          	auipc	a0,0x5
    80004408:	d8c50513          	addi	a0,a0,-628 # 80009190 <_ZZ12printIntegermE6digits+0xc8>
    8000440c:	00001097          	auipc	ra,0x1
    80004410:	4b0080e7          	jalr	1200(ra) # 800058bc <_Z11printStringPKc>
        return;
    80004414:	000c0113          	mv	sp,s8
    80004418:	2140006f          	j	8000462c <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    8000441c:	01000513          	li	a0,16
    80004420:	ffffe097          	auipc	ra,0xffffe
    80004424:	b14080e7          	jalr	-1260(ra) # 80001f34 <_Znwm>
    80004428:	00050913          	mv	s2,a0
    8000442c:	00000593          	li	a1,0
    80004430:	ffffe097          	auipc	ra,0xffffe
    80004434:	d90080e7          	jalr	-624(ra) # 800021c0 <_ZN9SemaphoreC1Ej>
    80004438:	00007797          	auipc	a5,0x7
    8000443c:	6d27bc23          	sd	s2,1752(a5) # 8000bb10 <_ZL10waitForAll>
    Thread *producers[threadNum];
    80004440:	00399793          	slli	a5,s3,0x3
    80004444:	00f78793          	addi	a5,a5,15
    80004448:	ff07f793          	andi	a5,a5,-16
    8000444c:	40f10133          	sub	sp,sp,a5
    80004450:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    80004454:	0019871b          	addiw	a4,s3,1
    80004458:	00171793          	slli	a5,a4,0x1
    8000445c:	00e787b3          	add	a5,a5,a4
    80004460:	00379793          	slli	a5,a5,0x3
    80004464:	00f78793          	addi	a5,a5,15
    80004468:	ff07f793          	andi	a5,a5,-16
    8000446c:	40f10133          	sub	sp,sp,a5
    80004470:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    80004474:	00199493          	slli	s1,s3,0x1
    80004478:	013484b3          	add	s1,s1,s3
    8000447c:	00349493          	slli	s1,s1,0x3
    80004480:	009b04b3          	add	s1,s6,s1
    80004484:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    80004488:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    8000448c:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004490:	02800513          	li	a0,40
    80004494:	ffffe097          	auipc	ra,0xffffe
    80004498:	aa0080e7          	jalr	-1376(ra) # 80001f34 <_Znwm>
    8000449c:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    800044a0:	ffffe097          	auipc	ra,0xffffe
    800044a4:	c1c080e7          	jalr	-996(ra) # 800020bc <_ZN6ThreadC1Ev>
    800044a8:	00007797          	auipc	a5,0x7
    800044ac:	47878793          	addi	a5,a5,1144 # 8000b920 <_ZTV8Consumer+0x10>
    800044b0:	00fbb023          	sd	a5,0(s7)
    800044b4:	029bb023          	sd	s1,32(s7)
    consumer->start();
    800044b8:	000b8513          	mv	a0,s7
    800044bc:	ffffe097          	auipc	ra,0xffffe
    800044c0:	c30080e7          	jalr	-976(ra) # 800020ec <_ZN6Thread5startEv>
    threadData[0].id = 0;
    800044c4:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    800044c8:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    800044cc:	00007797          	auipc	a5,0x7
    800044d0:	6447b783          	ld	a5,1604(a5) # 8000bb10 <_ZL10waitForAll>
    800044d4:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    800044d8:	02800513          	li	a0,40
    800044dc:	ffffe097          	auipc	ra,0xffffe
    800044e0:	a58080e7          	jalr	-1448(ra) # 80001f34 <_Znwm>
    800044e4:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    800044e8:	ffffe097          	auipc	ra,0xffffe
    800044ec:	bd4080e7          	jalr	-1068(ra) # 800020bc <_ZN6ThreadC1Ev>
    800044f0:	00007797          	auipc	a5,0x7
    800044f4:	3e078793          	addi	a5,a5,992 # 8000b8d0 <_ZTV16ProducerKeyborad+0x10>
    800044f8:	00f4b023          	sd	a5,0(s1)
    800044fc:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004500:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    80004504:	00048513          	mv	a0,s1
    80004508:	ffffe097          	auipc	ra,0xffffe
    8000450c:	be4080e7          	jalr	-1052(ra) # 800020ec <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80004510:	00100913          	li	s2,1
    80004514:	0300006f          	j	80004544 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80004518:	00007797          	auipc	a5,0x7
    8000451c:	3e078793          	addi	a5,a5,992 # 8000b8f8 <_ZTV8Producer+0x10>
    80004520:	00fcb023          	sd	a5,0(s9)
    80004524:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    80004528:	00391793          	slli	a5,s2,0x3
    8000452c:	00fa07b3          	add	a5,s4,a5
    80004530:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    80004534:	000c8513          	mv	a0,s9
    80004538:	ffffe097          	auipc	ra,0xffffe
    8000453c:	bb4080e7          	jalr	-1100(ra) # 800020ec <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80004540:	0019091b          	addiw	s2,s2,1
    80004544:	05395263          	bge	s2,s3,80004588 <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    80004548:	00191493          	slli	s1,s2,0x1
    8000454c:	012484b3          	add	s1,s1,s2
    80004550:	00349493          	slli	s1,s1,0x3
    80004554:	009b04b3          	add	s1,s6,s1
    80004558:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    8000455c:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    80004560:	00007797          	auipc	a5,0x7
    80004564:	5b07b783          	ld	a5,1456(a5) # 8000bb10 <_ZL10waitForAll>
    80004568:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    8000456c:	02800513          	li	a0,40
    80004570:	ffffe097          	auipc	ra,0xffffe
    80004574:	9c4080e7          	jalr	-1596(ra) # 80001f34 <_Znwm>
    80004578:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    8000457c:	ffffe097          	auipc	ra,0xffffe
    80004580:	b40080e7          	jalr	-1216(ra) # 800020bc <_ZN6ThreadC1Ev>
    80004584:	f95ff06f          	j	80004518 <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    80004588:	ffffe097          	auipc	ra,0xffffe
    8000458c:	b0c080e7          	jalr	-1268(ra) # 80002094 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80004590:	00000493          	li	s1,0
    80004594:	0099ce63          	blt	s3,s1,800045b0 <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    80004598:	00007517          	auipc	a0,0x7
    8000459c:	57853503          	ld	a0,1400(a0) # 8000bb10 <_ZL10waitForAll>
    800045a0:	ffffe097          	auipc	ra,0xffffe
    800045a4:	c58080e7          	jalr	-936(ra) # 800021f8 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    800045a8:	0014849b          	addiw	s1,s1,1
    800045ac:	fe9ff06f          	j	80004594 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    800045b0:	00007517          	auipc	a0,0x7
    800045b4:	56053503          	ld	a0,1376(a0) # 8000bb10 <_ZL10waitForAll>
    800045b8:	00050863          	beqz	a0,800045c8 <_Z20testConsumerProducerv+0x2f4>
    800045bc:	00053783          	ld	a5,0(a0)
    800045c0:	0087b783          	ld	a5,8(a5)
    800045c4:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    800045c8:	00000493          	li	s1,0
    800045cc:	0080006f          	j	800045d4 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    800045d0:	0014849b          	addiw	s1,s1,1
    800045d4:	0334d263          	bge	s1,s3,800045f8 <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    800045d8:	00349793          	slli	a5,s1,0x3
    800045dc:	00fa07b3          	add	a5,s4,a5
    800045e0:	0007b503          	ld	a0,0(a5)
    800045e4:	fe0506e3          	beqz	a0,800045d0 <_Z20testConsumerProducerv+0x2fc>
    800045e8:	00053783          	ld	a5,0(a0)
    800045ec:	0087b783          	ld	a5,8(a5)
    800045f0:	000780e7          	jalr	a5
    800045f4:	fddff06f          	j	800045d0 <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    800045f8:	000b8a63          	beqz	s7,8000460c <_Z20testConsumerProducerv+0x338>
    800045fc:	000bb783          	ld	a5,0(s7)
    80004600:	0087b783          	ld	a5,8(a5)
    80004604:	000b8513          	mv	a0,s7
    80004608:	000780e7          	jalr	a5
    delete buffer;
    8000460c:	000a8e63          	beqz	s5,80004628 <_Z20testConsumerProducerv+0x354>
    80004610:	000a8513          	mv	a0,s5
    80004614:	00002097          	auipc	ra,0x2
    80004618:	870080e7          	jalr	-1936(ra) # 80005e84 <_ZN9BufferCPPD1Ev>
    8000461c:	000a8513          	mv	a0,s5
    80004620:	ffffe097          	auipc	ra,0xffffe
    80004624:	93c080e7          	jalr	-1732(ra) # 80001f5c <_ZdlPv>
    80004628:	000c0113          	mv	sp,s8
}
    8000462c:	f8040113          	addi	sp,s0,-128
    80004630:	07813083          	ld	ra,120(sp)
    80004634:	07013403          	ld	s0,112(sp)
    80004638:	06813483          	ld	s1,104(sp)
    8000463c:	06013903          	ld	s2,96(sp)
    80004640:	05813983          	ld	s3,88(sp)
    80004644:	05013a03          	ld	s4,80(sp)
    80004648:	04813a83          	ld	s5,72(sp)
    8000464c:	04013b03          	ld	s6,64(sp)
    80004650:	03813b83          	ld	s7,56(sp)
    80004654:	03013c03          	ld	s8,48(sp)
    80004658:	02813c83          	ld	s9,40(sp)
    8000465c:	08010113          	addi	sp,sp,128
    80004660:	00008067          	ret
    80004664:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80004668:	000a8513          	mv	a0,s5
    8000466c:	ffffe097          	auipc	ra,0xffffe
    80004670:	8f0080e7          	jalr	-1808(ra) # 80001f5c <_ZdlPv>
    80004674:	00048513          	mv	a0,s1
    80004678:	00008097          	auipc	ra,0x8
    8000467c:	590080e7          	jalr	1424(ra) # 8000cc08 <_Unwind_Resume>
    80004680:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    80004684:	00090513          	mv	a0,s2
    80004688:	ffffe097          	auipc	ra,0xffffe
    8000468c:	8d4080e7          	jalr	-1836(ra) # 80001f5c <_ZdlPv>
    80004690:	00048513          	mv	a0,s1
    80004694:	00008097          	auipc	ra,0x8
    80004698:	574080e7          	jalr	1396(ra) # 8000cc08 <_Unwind_Resume>
    8000469c:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    800046a0:	000b8513          	mv	a0,s7
    800046a4:	ffffe097          	auipc	ra,0xffffe
    800046a8:	8b8080e7          	jalr	-1864(ra) # 80001f5c <_ZdlPv>
    800046ac:	00048513          	mv	a0,s1
    800046b0:	00008097          	auipc	ra,0x8
    800046b4:	558080e7          	jalr	1368(ra) # 8000cc08 <_Unwind_Resume>
    800046b8:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    800046bc:	00048513          	mv	a0,s1
    800046c0:	ffffe097          	auipc	ra,0xffffe
    800046c4:	89c080e7          	jalr	-1892(ra) # 80001f5c <_ZdlPv>
    800046c8:	00090513          	mv	a0,s2
    800046cc:	00008097          	auipc	ra,0x8
    800046d0:	53c080e7          	jalr	1340(ra) # 8000cc08 <_Unwind_Resume>
    800046d4:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    800046d8:	000c8513          	mv	a0,s9
    800046dc:	ffffe097          	auipc	ra,0xffffe
    800046e0:	880080e7          	jalr	-1920(ra) # 80001f5c <_ZdlPv>
    800046e4:	00048513          	mv	a0,s1
    800046e8:	00008097          	auipc	ra,0x8
    800046ec:	520080e7          	jalr	1312(ra) # 8000cc08 <_Unwind_Resume>

00000000800046f0 <_ZN8Consumer3runEv>:
    void run() override {
    800046f0:	fd010113          	addi	sp,sp,-48
    800046f4:	02113423          	sd	ra,40(sp)
    800046f8:	02813023          	sd	s0,32(sp)
    800046fc:	00913c23          	sd	s1,24(sp)
    80004700:	01213823          	sd	s2,16(sp)
    80004704:	01313423          	sd	s3,8(sp)
    80004708:	03010413          	addi	s0,sp,48
    8000470c:	00050913          	mv	s2,a0
        int i = 0;
    80004710:	00000993          	li	s3,0
    80004714:	0100006f          	j	80004724 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    80004718:	00a00513          	li	a0,10
    8000471c:	ffffe097          	auipc	ra,0xffffe
    80004720:	bc8080e7          	jalr	-1080(ra) # 800022e4 <_ZN7Console4putcEc>
        while (!threadEnd) {
    80004724:	00007797          	auipc	a5,0x7
    80004728:	3e47a783          	lw	a5,996(a5) # 8000bb08 <_ZL9threadEnd>
    8000472c:	04079a63          	bnez	a5,80004780 <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    80004730:	02093783          	ld	a5,32(s2)
    80004734:	0087b503          	ld	a0,8(a5)
    80004738:	00001097          	auipc	ra,0x1
    8000473c:	638080e7          	jalr	1592(ra) # 80005d70 <_ZN9BufferCPP3getEv>
            i++;
    80004740:	0019849b          	addiw	s1,s3,1
    80004744:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    80004748:	0ff57513          	andi	a0,a0,255
    8000474c:	ffffe097          	auipc	ra,0xffffe
    80004750:	b98080e7          	jalr	-1128(ra) # 800022e4 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    80004754:	05000793          	li	a5,80
    80004758:	02f4e4bb          	remw	s1,s1,a5
    8000475c:	fc0494e3          	bnez	s1,80004724 <_ZN8Consumer3runEv+0x34>
    80004760:	fb9ff06f          	j	80004718 <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    80004764:	02093783          	ld	a5,32(s2)
    80004768:	0087b503          	ld	a0,8(a5)
    8000476c:	00001097          	auipc	ra,0x1
    80004770:	604080e7          	jalr	1540(ra) # 80005d70 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    80004774:	0ff57513          	andi	a0,a0,255
    80004778:	ffffe097          	auipc	ra,0xffffe
    8000477c:	b6c080e7          	jalr	-1172(ra) # 800022e4 <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    80004780:	02093783          	ld	a5,32(s2)
    80004784:	0087b503          	ld	a0,8(a5)
    80004788:	00001097          	auipc	ra,0x1
    8000478c:	674080e7          	jalr	1652(ra) # 80005dfc <_ZN9BufferCPP6getCntEv>
    80004790:	fca04ae3          	bgtz	a0,80004764 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    80004794:	02093783          	ld	a5,32(s2)
    80004798:	0107b503          	ld	a0,16(a5)
    8000479c:	ffffe097          	auipc	ra,0xffffe
    800047a0:	a88080e7          	jalr	-1400(ra) # 80002224 <_ZN9Semaphore6signalEv>
    }
    800047a4:	02813083          	ld	ra,40(sp)
    800047a8:	02013403          	ld	s0,32(sp)
    800047ac:	01813483          	ld	s1,24(sp)
    800047b0:	01013903          	ld	s2,16(sp)
    800047b4:	00813983          	ld	s3,8(sp)
    800047b8:	03010113          	addi	sp,sp,48
    800047bc:	00008067          	ret

00000000800047c0 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    800047c0:	ff010113          	addi	sp,sp,-16
    800047c4:	00113423          	sd	ra,8(sp)
    800047c8:	00813023          	sd	s0,0(sp)
    800047cc:	01010413          	addi	s0,sp,16
    800047d0:	00007797          	auipc	a5,0x7
    800047d4:	15078793          	addi	a5,a5,336 # 8000b920 <_ZTV8Consumer+0x10>
    800047d8:	00f53023          	sd	a5,0(a0)
    800047dc:	ffffd097          	auipc	ra,0xffffd
    800047e0:	7a8080e7          	jalr	1960(ra) # 80001f84 <_ZN6ThreadD1Ev>
    800047e4:	00813083          	ld	ra,8(sp)
    800047e8:	00013403          	ld	s0,0(sp)
    800047ec:	01010113          	addi	sp,sp,16
    800047f0:	00008067          	ret

00000000800047f4 <_ZN8ConsumerD0Ev>:
    800047f4:	fe010113          	addi	sp,sp,-32
    800047f8:	00113c23          	sd	ra,24(sp)
    800047fc:	00813823          	sd	s0,16(sp)
    80004800:	00913423          	sd	s1,8(sp)
    80004804:	02010413          	addi	s0,sp,32
    80004808:	00050493          	mv	s1,a0
    8000480c:	00007797          	auipc	a5,0x7
    80004810:	11478793          	addi	a5,a5,276 # 8000b920 <_ZTV8Consumer+0x10>
    80004814:	00f53023          	sd	a5,0(a0)
    80004818:	ffffd097          	auipc	ra,0xffffd
    8000481c:	76c080e7          	jalr	1900(ra) # 80001f84 <_ZN6ThreadD1Ev>
    80004820:	00048513          	mv	a0,s1
    80004824:	ffffd097          	auipc	ra,0xffffd
    80004828:	738080e7          	jalr	1848(ra) # 80001f5c <_ZdlPv>
    8000482c:	01813083          	ld	ra,24(sp)
    80004830:	01013403          	ld	s0,16(sp)
    80004834:	00813483          	ld	s1,8(sp)
    80004838:	02010113          	addi	sp,sp,32
    8000483c:	00008067          	ret

0000000080004840 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    80004840:	ff010113          	addi	sp,sp,-16
    80004844:	00113423          	sd	ra,8(sp)
    80004848:	00813023          	sd	s0,0(sp)
    8000484c:	01010413          	addi	s0,sp,16
    80004850:	00007797          	auipc	a5,0x7
    80004854:	08078793          	addi	a5,a5,128 # 8000b8d0 <_ZTV16ProducerKeyborad+0x10>
    80004858:	00f53023          	sd	a5,0(a0)
    8000485c:	ffffd097          	auipc	ra,0xffffd
    80004860:	728080e7          	jalr	1832(ra) # 80001f84 <_ZN6ThreadD1Ev>
    80004864:	00813083          	ld	ra,8(sp)
    80004868:	00013403          	ld	s0,0(sp)
    8000486c:	01010113          	addi	sp,sp,16
    80004870:	00008067          	ret

0000000080004874 <_ZN16ProducerKeyboradD0Ev>:
    80004874:	fe010113          	addi	sp,sp,-32
    80004878:	00113c23          	sd	ra,24(sp)
    8000487c:	00813823          	sd	s0,16(sp)
    80004880:	00913423          	sd	s1,8(sp)
    80004884:	02010413          	addi	s0,sp,32
    80004888:	00050493          	mv	s1,a0
    8000488c:	00007797          	auipc	a5,0x7
    80004890:	04478793          	addi	a5,a5,68 # 8000b8d0 <_ZTV16ProducerKeyborad+0x10>
    80004894:	00f53023          	sd	a5,0(a0)
    80004898:	ffffd097          	auipc	ra,0xffffd
    8000489c:	6ec080e7          	jalr	1772(ra) # 80001f84 <_ZN6ThreadD1Ev>
    800048a0:	00048513          	mv	a0,s1
    800048a4:	ffffd097          	auipc	ra,0xffffd
    800048a8:	6b8080e7          	jalr	1720(ra) # 80001f5c <_ZdlPv>
    800048ac:	01813083          	ld	ra,24(sp)
    800048b0:	01013403          	ld	s0,16(sp)
    800048b4:	00813483          	ld	s1,8(sp)
    800048b8:	02010113          	addi	sp,sp,32
    800048bc:	00008067          	ret

00000000800048c0 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    800048c0:	ff010113          	addi	sp,sp,-16
    800048c4:	00113423          	sd	ra,8(sp)
    800048c8:	00813023          	sd	s0,0(sp)
    800048cc:	01010413          	addi	s0,sp,16
    800048d0:	00007797          	auipc	a5,0x7
    800048d4:	02878793          	addi	a5,a5,40 # 8000b8f8 <_ZTV8Producer+0x10>
    800048d8:	00f53023          	sd	a5,0(a0)
    800048dc:	ffffd097          	auipc	ra,0xffffd
    800048e0:	6a8080e7          	jalr	1704(ra) # 80001f84 <_ZN6ThreadD1Ev>
    800048e4:	00813083          	ld	ra,8(sp)
    800048e8:	00013403          	ld	s0,0(sp)
    800048ec:	01010113          	addi	sp,sp,16
    800048f0:	00008067          	ret

00000000800048f4 <_ZN8ProducerD0Ev>:
    800048f4:	fe010113          	addi	sp,sp,-32
    800048f8:	00113c23          	sd	ra,24(sp)
    800048fc:	00813823          	sd	s0,16(sp)
    80004900:	00913423          	sd	s1,8(sp)
    80004904:	02010413          	addi	s0,sp,32
    80004908:	00050493          	mv	s1,a0
    8000490c:	00007797          	auipc	a5,0x7
    80004910:	fec78793          	addi	a5,a5,-20 # 8000b8f8 <_ZTV8Producer+0x10>
    80004914:	00f53023          	sd	a5,0(a0)
    80004918:	ffffd097          	auipc	ra,0xffffd
    8000491c:	66c080e7          	jalr	1644(ra) # 80001f84 <_ZN6ThreadD1Ev>
    80004920:	00048513          	mv	a0,s1
    80004924:	ffffd097          	auipc	ra,0xffffd
    80004928:	638080e7          	jalr	1592(ra) # 80001f5c <_ZdlPv>
    8000492c:	01813083          	ld	ra,24(sp)
    80004930:	01013403          	ld	s0,16(sp)
    80004934:	00813483          	ld	s1,8(sp)
    80004938:	02010113          	addi	sp,sp,32
    8000493c:	00008067          	ret

0000000080004940 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    80004940:	fe010113          	addi	sp,sp,-32
    80004944:	00113c23          	sd	ra,24(sp)
    80004948:	00813823          	sd	s0,16(sp)
    8000494c:	00913423          	sd	s1,8(sp)
    80004950:	02010413          	addi	s0,sp,32
    80004954:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    80004958:	ffffd097          	auipc	ra,0xffffd
    8000495c:	a44080e7          	jalr	-1468(ra) # 8000139c <_Z4getcv>
    80004960:	0005059b          	sext.w	a1,a0
    80004964:	01b00793          	li	a5,27
    80004968:	00f58c63          	beq	a1,a5,80004980 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    8000496c:	0204b783          	ld	a5,32(s1)
    80004970:	0087b503          	ld	a0,8(a5)
    80004974:	00001097          	auipc	ra,0x1
    80004978:	36c080e7          	jalr	876(ra) # 80005ce0 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    8000497c:	fddff06f          	j	80004958 <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    80004980:	00100793          	li	a5,1
    80004984:	00007717          	auipc	a4,0x7
    80004988:	18f72223          	sw	a5,388(a4) # 8000bb08 <_ZL9threadEnd>
        td->buffer->put('!');
    8000498c:	0204b783          	ld	a5,32(s1)
    80004990:	02100593          	li	a1,33
    80004994:	0087b503          	ld	a0,8(a5)
    80004998:	00001097          	auipc	ra,0x1
    8000499c:	348080e7          	jalr	840(ra) # 80005ce0 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    800049a0:	0204b783          	ld	a5,32(s1)
    800049a4:	0107b503          	ld	a0,16(a5)
    800049a8:	ffffe097          	auipc	ra,0xffffe
    800049ac:	87c080e7          	jalr	-1924(ra) # 80002224 <_ZN9Semaphore6signalEv>
    }
    800049b0:	01813083          	ld	ra,24(sp)
    800049b4:	01013403          	ld	s0,16(sp)
    800049b8:	00813483          	ld	s1,8(sp)
    800049bc:	02010113          	addi	sp,sp,32
    800049c0:	00008067          	ret

00000000800049c4 <_ZN8Producer3runEv>:
    void run() override {
    800049c4:	fe010113          	addi	sp,sp,-32
    800049c8:	00113c23          	sd	ra,24(sp)
    800049cc:	00813823          	sd	s0,16(sp)
    800049d0:	00913423          	sd	s1,8(sp)
    800049d4:	01213023          	sd	s2,0(sp)
    800049d8:	02010413          	addi	s0,sp,32
    800049dc:	00050493          	mv	s1,a0
        int i = 0;
    800049e0:	00000913          	li	s2,0
        while (!threadEnd) {
    800049e4:	00007797          	auipc	a5,0x7
    800049e8:	1247a783          	lw	a5,292(a5) # 8000bb08 <_ZL9threadEnd>
    800049ec:	04079263          	bnez	a5,80004a30 <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    800049f0:	0204b783          	ld	a5,32(s1)
    800049f4:	0007a583          	lw	a1,0(a5)
    800049f8:	0305859b          	addiw	a1,a1,48
    800049fc:	0087b503          	ld	a0,8(a5)
    80004a00:	00001097          	auipc	ra,0x1
    80004a04:	2e0080e7          	jalr	736(ra) # 80005ce0 <_ZN9BufferCPP3putEi>
            i++;
    80004a08:	0019071b          	addiw	a4,s2,1
    80004a0c:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    80004a10:	0204b783          	ld	a5,32(s1)
    80004a14:	0007a783          	lw	a5,0(a5)
    80004a18:	00e787bb          	addw	a5,a5,a4
    80004a1c:	00500513          	li	a0,5
    80004a20:	02a7e53b          	remw	a0,a5,a0
    80004a24:	ffffd097          	auipc	ra,0xffffd
    80004a28:	71c080e7          	jalr	1820(ra) # 80002140 <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    80004a2c:	fb9ff06f          	j	800049e4 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    80004a30:	0204b783          	ld	a5,32(s1)
    80004a34:	0107b503          	ld	a0,16(a5)
    80004a38:	ffffd097          	auipc	ra,0xffffd
    80004a3c:	7ec080e7          	jalr	2028(ra) # 80002224 <_ZN9Semaphore6signalEv>
    }
    80004a40:	01813083          	ld	ra,24(sp)
    80004a44:	01013403          	ld	s0,16(sp)
    80004a48:	00813483          	ld	s1,8(sp)
    80004a4c:	00013903          	ld	s2,0(sp)
    80004a50:	02010113          	addi	sp,sp,32
    80004a54:	00008067          	ret

0000000080004a58 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80004a58:	fe010113          	addi	sp,sp,-32
    80004a5c:	00113c23          	sd	ra,24(sp)
    80004a60:	00813823          	sd	s0,16(sp)
    80004a64:	00913423          	sd	s1,8(sp)
    80004a68:	01213023          	sd	s2,0(sp)
    80004a6c:	02010413          	addi	s0,sp,32
    80004a70:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80004a74:	00100793          	li	a5,1
    80004a78:	02a7f863          	bgeu	a5,a0,80004aa8 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80004a7c:	00a00793          	li	a5,10
    80004a80:	02f577b3          	remu	a5,a0,a5
    80004a84:	02078e63          	beqz	a5,80004ac0 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004a88:	fff48513          	addi	a0,s1,-1
    80004a8c:	00000097          	auipc	ra,0x0
    80004a90:	fcc080e7          	jalr	-52(ra) # 80004a58 <_ZL9fibonaccim>
    80004a94:	00050913          	mv	s2,a0
    80004a98:	ffe48513          	addi	a0,s1,-2
    80004a9c:	00000097          	auipc	ra,0x0
    80004aa0:	fbc080e7          	jalr	-68(ra) # 80004a58 <_ZL9fibonaccim>
    80004aa4:	00a90533          	add	a0,s2,a0
}
    80004aa8:	01813083          	ld	ra,24(sp)
    80004aac:	01013403          	ld	s0,16(sp)
    80004ab0:	00813483          	ld	s1,8(sp)
    80004ab4:	00013903          	ld	s2,0(sp)
    80004ab8:	02010113          	addi	sp,sp,32
    80004abc:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004ac0:	ffffc097          	auipc	ra,0xffffc
    80004ac4:	7c4080e7          	jalr	1988(ra) # 80001284 <_Z15thread_dispatchv>
    80004ac8:	fc1ff06f          	j	80004a88 <_ZL9fibonaccim+0x30>

0000000080004acc <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80004acc:	fe010113          	addi	sp,sp,-32
    80004ad0:	00113c23          	sd	ra,24(sp)
    80004ad4:	00813823          	sd	s0,16(sp)
    80004ad8:	00913423          	sd	s1,8(sp)
    80004adc:	01213023          	sd	s2,0(sp)
    80004ae0:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004ae4:	00a00493          	li	s1,10
    80004ae8:	0400006f          	j	80004b28 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004aec:	00004517          	auipc	a0,0x4
    80004af0:	6fc50513          	addi	a0,a0,1788 # 800091e8 <_ZZ12printIntegermE6digits+0x120>
    80004af4:	00001097          	auipc	ra,0x1
    80004af8:	dc8080e7          	jalr	-568(ra) # 800058bc <_Z11printStringPKc>
    80004afc:	00000613          	li	a2,0
    80004b00:	00a00593          	li	a1,10
    80004b04:	00048513          	mv	a0,s1
    80004b08:	00001097          	auipc	ra,0x1
    80004b0c:	f64080e7          	jalr	-156(ra) # 80005a6c <_Z8printIntiii>
    80004b10:	00005517          	auipc	a0,0x5
    80004b14:	8c850513          	addi	a0,a0,-1848 # 800093d8 <_ZZ12printIntegermE6digits+0x310>
    80004b18:	00001097          	auipc	ra,0x1
    80004b1c:	da4080e7          	jalr	-604(ra) # 800058bc <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004b20:	0014849b          	addiw	s1,s1,1
    80004b24:	0ff4f493          	andi	s1,s1,255
    80004b28:	00c00793          	li	a5,12
    80004b2c:	fc97f0e3          	bgeu	a5,s1,80004aec <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80004b30:	00004517          	auipc	a0,0x4
    80004b34:	6c050513          	addi	a0,a0,1728 # 800091f0 <_ZZ12printIntegermE6digits+0x128>
    80004b38:	00001097          	auipc	ra,0x1
    80004b3c:	d84080e7          	jalr	-636(ra) # 800058bc <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80004b40:	00500313          	li	t1,5
    thread_dispatch();
    80004b44:	ffffc097          	auipc	ra,0xffffc
    80004b48:	740080e7          	jalr	1856(ra) # 80001284 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80004b4c:	01000513          	li	a0,16
    80004b50:	00000097          	auipc	ra,0x0
    80004b54:	f08080e7          	jalr	-248(ra) # 80004a58 <_ZL9fibonaccim>
    80004b58:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004b5c:	00004517          	auipc	a0,0x4
    80004b60:	6a450513          	addi	a0,a0,1700 # 80009200 <_ZZ12printIntegermE6digits+0x138>
    80004b64:	00001097          	auipc	ra,0x1
    80004b68:	d58080e7          	jalr	-680(ra) # 800058bc <_Z11printStringPKc>
    80004b6c:	00000613          	li	a2,0
    80004b70:	00a00593          	li	a1,10
    80004b74:	0009051b          	sext.w	a0,s2
    80004b78:	00001097          	auipc	ra,0x1
    80004b7c:	ef4080e7          	jalr	-268(ra) # 80005a6c <_Z8printIntiii>
    80004b80:	00005517          	auipc	a0,0x5
    80004b84:	85850513          	addi	a0,a0,-1960 # 800093d8 <_ZZ12printIntegermE6digits+0x310>
    80004b88:	00001097          	auipc	ra,0x1
    80004b8c:	d34080e7          	jalr	-716(ra) # 800058bc <_Z11printStringPKc>
    80004b90:	0400006f          	j	80004bd0 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004b94:	00004517          	auipc	a0,0x4
    80004b98:	65450513          	addi	a0,a0,1620 # 800091e8 <_ZZ12printIntegermE6digits+0x120>
    80004b9c:	00001097          	auipc	ra,0x1
    80004ba0:	d20080e7          	jalr	-736(ra) # 800058bc <_Z11printStringPKc>
    80004ba4:	00000613          	li	a2,0
    80004ba8:	00a00593          	li	a1,10
    80004bac:	00048513          	mv	a0,s1
    80004bb0:	00001097          	auipc	ra,0x1
    80004bb4:	ebc080e7          	jalr	-324(ra) # 80005a6c <_Z8printIntiii>
    80004bb8:	00005517          	auipc	a0,0x5
    80004bbc:	82050513          	addi	a0,a0,-2016 # 800093d8 <_ZZ12printIntegermE6digits+0x310>
    80004bc0:	00001097          	auipc	ra,0x1
    80004bc4:	cfc080e7          	jalr	-772(ra) # 800058bc <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004bc8:	0014849b          	addiw	s1,s1,1
    80004bcc:	0ff4f493          	andi	s1,s1,255
    80004bd0:	00f00793          	li	a5,15
    80004bd4:	fc97f0e3          	bgeu	a5,s1,80004b94 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80004bd8:	00004517          	auipc	a0,0x4
    80004bdc:	63850513          	addi	a0,a0,1592 # 80009210 <_ZZ12printIntegermE6digits+0x148>
    80004be0:	00001097          	auipc	ra,0x1
    80004be4:	cdc080e7          	jalr	-804(ra) # 800058bc <_Z11printStringPKc>
    finishedD = true;
    80004be8:	00100793          	li	a5,1
    80004bec:	00007717          	auipc	a4,0x7
    80004bf0:	f2f70623          	sb	a5,-212(a4) # 8000bb18 <_ZL9finishedD>
    thread_dispatch();
    80004bf4:	ffffc097          	auipc	ra,0xffffc
    80004bf8:	690080e7          	jalr	1680(ra) # 80001284 <_Z15thread_dispatchv>
}
    80004bfc:	01813083          	ld	ra,24(sp)
    80004c00:	01013403          	ld	s0,16(sp)
    80004c04:	00813483          	ld	s1,8(sp)
    80004c08:	00013903          	ld	s2,0(sp)
    80004c0c:	02010113          	addi	sp,sp,32
    80004c10:	00008067          	ret

0000000080004c14 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80004c14:	fe010113          	addi	sp,sp,-32
    80004c18:	00113c23          	sd	ra,24(sp)
    80004c1c:	00813823          	sd	s0,16(sp)
    80004c20:	00913423          	sd	s1,8(sp)
    80004c24:	01213023          	sd	s2,0(sp)
    80004c28:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004c2c:	00000493          	li	s1,0
    80004c30:	0400006f          	j	80004c70 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80004c34:	00004517          	auipc	a0,0x4
    80004c38:	42450513          	addi	a0,a0,1060 # 80009058 <CONSOLE_STATUS+0x48>
    80004c3c:	00001097          	auipc	ra,0x1
    80004c40:	c80080e7          	jalr	-896(ra) # 800058bc <_Z11printStringPKc>
    80004c44:	00000613          	li	a2,0
    80004c48:	00a00593          	li	a1,10
    80004c4c:	00048513          	mv	a0,s1
    80004c50:	00001097          	auipc	ra,0x1
    80004c54:	e1c080e7          	jalr	-484(ra) # 80005a6c <_Z8printIntiii>
    80004c58:	00004517          	auipc	a0,0x4
    80004c5c:	78050513          	addi	a0,a0,1920 # 800093d8 <_ZZ12printIntegermE6digits+0x310>
    80004c60:	00001097          	auipc	ra,0x1
    80004c64:	c5c080e7          	jalr	-932(ra) # 800058bc <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004c68:	0014849b          	addiw	s1,s1,1
    80004c6c:	0ff4f493          	andi	s1,s1,255
    80004c70:	00200793          	li	a5,2
    80004c74:	fc97f0e3          	bgeu	a5,s1,80004c34 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80004c78:	00004517          	auipc	a0,0x4
    80004c7c:	54850513          	addi	a0,a0,1352 # 800091c0 <_ZZ12printIntegermE6digits+0xf8>
    80004c80:	00001097          	auipc	ra,0x1
    80004c84:	c3c080e7          	jalr	-964(ra) # 800058bc <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004c88:	00700313          	li	t1,7
    thread_dispatch();
    80004c8c:	ffffc097          	auipc	ra,0xffffc
    80004c90:	5f8080e7          	jalr	1528(ra) # 80001284 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004c94:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80004c98:	00004517          	auipc	a0,0x4
    80004c9c:	53850513          	addi	a0,a0,1336 # 800091d0 <_ZZ12printIntegermE6digits+0x108>
    80004ca0:	00001097          	auipc	ra,0x1
    80004ca4:	c1c080e7          	jalr	-996(ra) # 800058bc <_Z11printStringPKc>
    80004ca8:	00000613          	li	a2,0
    80004cac:	00a00593          	li	a1,10
    80004cb0:	0009051b          	sext.w	a0,s2
    80004cb4:	00001097          	auipc	ra,0x1
    80004cb8:	db8080e7          	jalr	-584(ra) # 80005a6c <_Z8printIntiii>
    80004cbc:	00004517          	auipc	a0,0x4
    80004cc0:	71c50513          	addi	a0,a0,1820 # 800093d8 <_ZZ12printIntegermE6digits+0x310>
    80004cc4:	00001097          	auipc	ra,0x1
    80004cc8:	bf8080e7          	jalr	-1032(ra) # 800058bc <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80004ccc:	00c00513          	li	a0,12
    80004cd0:	00000097          	auipc	ra,0x0
    80004cd4:	d88080e7          	jalr	-632(ra) # 80004a58 <_ZL9fibonaccim>
    80004cd8:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004cdc:	00004517          	auipc	a0,0x4
    80004ce0:	4fc50513          	addi	a0,a0,1276 # 800091d8 <_ZZ12printIntegermE6digits+0x110>
    80004ce4:	00001097          	auipc	ra,0x1
    80004ce8:	bd8080e7          	jalr	-1064(ra) # 800058bc <_Z11printStringPKc>
    80004cec:	00000613          	li	a2,0
    80004cf0:	00a00593          	li	a1,10
    80004cf4:	0009051b          	sext.w	a0,s2
    80004cf8:	00001097          	auipc	ra,0x1
    80004cfc:	d74080e7          	jalr	-652(ra) # 80005a6c <_Z8printIntiii>
    80004d00:	00004517          	auipc	a0,0x4
    80004d04:	6d850513          	addi	a0,a0,1752 # 800093d8 <_ZZ12printIntegermE6digits+0x310>
    80004d08:	00001097          	auipc	ra,0x1
    80004d0c:	bb4080e7          	jalr	-1100(ra) # 800058bc <_Z11printStringPKc>
    80004d10:	0400006f          	j	80004d50 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80004d14:	00004517          	auipc	a0,0x4
    80004d18:	34450513          	addi	a0,a0,836 # 80009058 <CONSOLE_STATUS+0x48>
    80004d1c:	00001097          	auipc	ra,0x1
    80004d20:	ba0080e7          	jalr	-1120(ra) # 800058bc <_Z11printStringPKc>
    80004d24:	00000613          	li	a2,0
    80004d28:	00a00593          	li	a1,10
    80004d2c:	00048513          	mv	a0,s1
    80004d30:	00001097          	auipc	ra,0x1
    80004d34:	d3c080e7          	jalr	-708(ra) # 80005a6c <_Z8printIntiii>
    80004d38:	00004517          	auipc	a0,0x4
    80004d3c:	6a050513          	addi	a0,a0,1696 # 800093d8 <_ZZ12printIntegermE6digits+0x310>
    80004d40:	00001097          	auipc	ra,0x1
    80004d44:	b7c080e7          	jalr	-1156(ra) # 800058bc <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004d48:	0014849b          	addiw	s1,s1,1
    80004d4c:	0ff4f493          	andi	s1,s1,255
    80004d50:	00500793          	li	a5,5
    80004d54:	fc97f0e3          	bgeu	a5,s1,80004d14 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80004d58:	00004517          	auipc	a0,0x4
    80004d5c:	2d850513          	addi	a0,a0,728 # 80009030 <CONSOLE_STATUS+0x20>
    80004d60:	00001097          	auipc	ra,0x1
    80004d64:	b5c080e7          	jalr	-1188(ra) # 800058bc <_Z11printStringPKc>
    finishedC = true;
    80004d68:	00100793          	li	a5,1
    80004d6c:	00007717          	auipc	a4,0x7
    80004d70:	daf706a3          	sb	a5,-595(a4) # 8000bb19 <_ZL9finishedC>
    thread_dispatch();
    80004d74:	ffffc097          	auipc	ra,0xffffc
    80004d78:	510080e7          	jalr	1296(ra) # 80001284 <_Z15thread_dispatchv>
}
    80004d7c:	01813083          	ld	ra,24(sp)
    80004d80:	01013403          	ld	s0,16(sp)
    80004d84:	00813483          	ld	s1,8(sp)
    80004d88:	00013903          	ld	s2,0(sp)
    80004d8c:	02010113          	addi	sp,sp,32
    80004d90:	00008067          	ret

0000000080004d94 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80004d94:	fe010113          	addi	sp,sp,-32
    80004d98:	00113c23          	sd	ra,24(sp)
    80004d9c:	00813823          	sd	s0,16(sp)
    80004da0:	00913423          	sd	s1,8(sp)
    80004da4:	01213023          	sd	s2,0(sp)
    80004da8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004dac:	00000913          	li	s2,0
    80004db0:	0380006f          	j	80004de8 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80004db4:	ffffc097          	auipc	ra,0xffffc
    80004db8:	4d0080e7          	jalr	1232(ra) # 80001284 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004dbc:	00148493          	addi	s1,s1,1
    80004dc0:	000027b7          	lui	a5,0x2
    80004dc4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004dc8:	0097ee63          	bltu	a5,s1,80004de4 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004dcc:	00000713          	li	a4,0
    80004dd0:	000077b7          	lui	a5,0x7
    80004dd4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004dd8:	fce7eee3          	bltu	a5,a4,80004db4 <_ZL11workerBodyBPv+0x20>
    80004ddc:	00170713          	addi	a4,a4,1
    80004de0:	ff1ff06f          	j	80004dd0 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80004de4:	00190913          	addi	s2,s2,1
    80004de8:	00f00793          	li	a5,15
    80004dec:	0527e063          	bltu	a5,s2,80004e2c <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80004df0:	00004517          	auipc	a0,0x4
    80004df4:	25050513          	addi	a0,a0,592 # 80009040 <CONSOLE_STATUS+0x30>
    80004df8:	00001097          	auipc	ra,0x1
    80004dfc:	ac4080e7          	jalr	-1340(ra) # 800058bc <_Z11printStringPKc>
    80004e00:	00000613          	li	a2,0
    80004e04:	00a00593          	li	a1,10
    80004e08:	0009051b          	sext.w	a0,s2
    80004e0c:	00001097          	auipc	ra,0x1
    80004e10:	c60080e7          	jalr	-928(ra) # 80005a6c <_Z8printIntiii>
    80004e14:	00004517          	auipc	a0,0x4
    80004e18:	5c450513          	addi	a0,a0,1476 # 800093d8 <_ZZ12printIntegermE6digits+0x310>
    80004e1c:	00001097          	auipc	ra,0x1
    80004e20:	aa0080e7          	jalr	-1376(ra) # 800058bc <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004e24:	00000493          	li	s1,0
    80004e28:	f99ff06f          	j	80004dc0 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80004e2c:	00004517          	auipc	a0,0x4
    80004e30:	21c50513          	addi	a0,a0,540 # 80009048 <CONSOLE_STATUS+0x38>
    80004e34:	00001097          	auipc	ra,0x1
    80004e38:	a88080e7          	jalr	-1400(ra) # 800058bc <_Z11printStringPKc>
    finishedB = true;
    80004e3c:	00100793          	li	a5,1
    80004e40:	00007717          	auipc	a4,0x7
    80004e44:	ccf70d23          	sb	a5,-806(a4) # 8000bb1a <_ZL9finishedB>
    thread_dispatch();
    80004e48:	ffffc097          	auipc	ra,0xffffc
    80004e4c:	43c080e7          	jalr	1084(ra) # 80001284 <_Z15thread_dispatchv>
}
    80004e50:	01813083          	ld	ra,24(sp)
    80004e54:	01013403          	ld	s0,16(sp)
    80004e58:	00813483          	ld	s1,8(sp)
    80004e5c:	00013903          	ld	s2,0(sp)
    80004e60:	02010113          	addi	sp,sp,32
    80004e64:	00008067          	ret

0000000080004e68 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80004e68:	fe010113          	addi	sp,sp,-32
    80004e6c:	00113c23          	sd	ra,24(sp)
    80004e70:	00813823          	sd	s0,16(sp)
    80004e74:	00913423          	sd	s1,8(sp)
    80004e78:	01213023          	sd	s2,0(sp)
    80004e7c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80004e80:	00000913          	li	s2,0
    80004e84:	0380006f          	j	80004ebc <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80004e88:	ffffc097          	auipc	ra,0xffffc
    80004e8c:	3fc080e7          	jalr	1020(ra) # 80001284 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004e90:	00148493          	addi	s1,s1,1
    80004e94:	000027b7          	lui	a5,0x2
    80004e98:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004e9c:	0097ee63          	bltu	a5,s1,80004eb8 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004ea0:	00000713          	li	a4,0
    80004ea4:	000077b7          	lui	a5,0x7
    80004ea8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004eac:	fce7eee3          	bltu	a5,a4,80004e88 <_ZL11workerBodyAPv+0x20>
    80004eb0:	00170713          	addi	a4,a4,1
    80004eb4:	ff1ff06f          	j	80004ea4 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80004eb8:	00190913          	addi	s2,s2,1
    80004ebc:	00900793          	li	a5,9
    80004ec0:	0527e063          	bltu	a5,s2,80004f00 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80004ec4:	00004517          	auipc	a0,0x4
    80004ec8:	16450513          	addi	a0,a0,356 # 80009028 <CONSOLE_STATUS+0x18>
    80004ecc:	00001097          	auipc	ra,0x1
    80004ed0:	9f0080e7          	jalr	-1552(ra) # 800058bc <_Z11printStringPKc>
    80004ed4:	00000613          	li	a2,0
    80004ed8:	00a00593          	li	a1,10
    80004edc:	0009051b          	sext.w	a0,s2
    80004ee0:	00001097          	auipc	ra,0x1
    80004ee4:	b8c080e7          	jalr	-1140(ra) # 80005a6c <_Z8printIntiii>
    80004ee8:	00004517          	auipc	a0,0x4
    80004eec:	4f050513          	addi	a0,a0,1264 # 800093d8 <_ZZ12printIntegermE6digits+0x310>
    80004ef0:	00001097          	auipc	ra,0x1
    80004ef4:	9cc080e7          	jalr	-1588(ra) # 800058bc <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004ef8:	00000493          	li	s1,0
    80004efc:	f99ff06f          	j	80004e94 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80004f00:	00004517          	auipc	a0,0x4
    80004f04:	13050513          	addi	a0,a0,304 # 80009030 <CONSOLE_STATUS+0x20>
    80004f08:	00001097          	auipc	ra,0x1
    80004f0c:	9b4080e7          	jalr	-1612(ra) # 800058bc <_Z11printStringPKc>
    finishedA = true;
    80004f10:	00100793          	li	a5,1
    80004f14:	00007717          	auipc	a4,0x7
    80004f18:	c0f703a3          	sb	a5,-1017(a4) # 8000bb1b <_ZL9finishedA>
}
    80004f1c:	01813083          	ld	ra,24(sp)
    80004f20:	01013403          	ld	s0,16(sp)
    80004f24:	00813483          	ld	s1,8(sp)
    80004f28:	00013903          	ld	s2,0(sp)
    80004f2c:	02010113          	addi	sp,sp,32
    80004f30:	00008067          	ret

0000000080004f34 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80004f34:	fd010113          	addi	sp,sp,-48
    80004f38:	02113423          	sd	ra,40(sp)
    80004f3c:	02813023          	sd	s0,32(sp)
    80004f40:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80004f44:	00000613          	li	a2,0
    80004f48:	00000597          	auipc	a1,0x0
    80004f4c:	f2058593          	addi	a1,a1,-224 # 80004e68 <_ZL11workerBodyAPv>
    80004f50:	fd040513          	addi	a0,s0,-48
    80004f54:	ffffc097          	auipc	ra,0xffffc
    80004f58:	2cc080e7          	jalr	716(ra) # 80001220 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80004f5c:	00004517          	auipc	a0,0x4
    80004f60:	2c450513          	addi	a0,a0,708 # 80009220 <_ZZ12printIntegermE6digits+0x158>
    80004f64:	00001097          	auipc	ra,0x1
    80004f68:	958080e7          	jalr	-1704(ra) # 800058bc <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80004f6c:	00000613          	li	a2,0
    80004f70:	00000597          	auipc	a1,0x0
    80004f74:	e2458593          	addi	a1,a1,-476 # 80004d94 <_ZL11workerBodyBPv>
    80004f78:	fd840513          	addi	a0,s0,-40
    80004f7c:	ffffc097          	auipc	ra,0xffffc
    80004f80:	2a4080e7          	jalr	676(ra) # 80001220 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80004f84:	00004517          	auipc	a0,0x4
    80004f88:	2b450513          	addi	a0,a0,692 # 80009238 <_ZZ12printIntegermE6digits+0x170>
    80004f8c:	00001097          	auipc	ra,0x1
    80004f90:	930080e7          	jalr	-1744(ra) # 800058bc <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80004f94:	00000613          	li	a2,0
    80004f98:	00000597          	auipc	a1,0x0
    80004f9c:	c7c58593          	addi	a1,a1,-900 # 80004c14 <_ZL11workerBodyCPv>
    80004fa0:	fe040513          	addi	a0,s0,-32
    80004fa4:	ffffc097          	auipc	ra,0xffffc
    80004fa8:	27c080e7          	jalr	636(ra) # 80001220 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80004fac:	00004517          	auipc	a0,0x4
    80004fb0:	2a450513          	addi	a0,a0,676 # 80009250 <_ZZ12printIntegermE6digits+0x188>
    80004fb4:	00001097          	auipc	ra,0x1
    80004fb8:	908080e7          	jalr	-1784(ra) # 800058bc <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80004fbc:	00000613          	li	a2,0
    80004fc0:	00000597          	auipc	a1,0x0
    80004fc4:	b0c58593          	addi	a1,a1,-1268 # 80004acc <_ZL11workerBodyDPv>
    80004fc8:	fe840513          	addi	a0,s0,-24
    80004fcc:	ffffc097          	auipc	ra,0xffffc
    80004fd0:	254080e7          	jalr	596(ra) # 80001220 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80004fd4:	00004517          	auipc	a0,0x4
    80004fd8:	29450513          	addi	a0,a0,660 # 80009268 <_ZZ12printIntegermE6digits+0x1a0>
    80004fdc:	00001097          	auipc	ra,0x1
    80004fe0:	8e0080e7          	jalr	-1824(ra) # 800058bc <_Z11printStringPKc>
    80004fe4:	00c0006f          	j	80004ff0 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80004fe8:	ffffc097          	auipc	ra,0xffffc
    80004fec:	29c080e7          	jalr	668(ra) # 80001284 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80004ff0:	00007797          	auipc	a5,0x7
    80004ff4:	b2b7c783          	lbu	a5,-1237(a5) # 8000bb1b <_ZL9finishedA>
    80004ff8:	fe0788e3          	beqz	a5,80004fe8 <_Z18Threads_C_API_testv+0xb4>
    80004ffc:	00007797          	auipc	a5,0x7
    80005000:	b1e7c783          	lbu	a5,-1250(a5) # 8000bb1a <_ZL9finishedB>
    80005004:	fe0782e3          	beqz	a5,80004fe8 <_Z18Threads_C_API_testv+0xb4>
    80005008:	00007797          	auipc	a5,0x7
    8000500c:	b117c783          	lbu	a5,-1263(a5) # 8000bb19 <_ZL9finishedC>
    80005010:	fc078ce3          	beqz	a5,80004fe8 <_Z18Threads_C_API_testv+0xb4>
    80005014:	00007797          	auipc	a5,0x7
    80005018:	b047c783          	lbu	a5,-1276(a5) # 8000bb18 <_ZL9finishedD>
    8000501c:	fc0786e3          	beqz	a5,80004fe8 <_Z18Threads_C_API_testv+0xb4>
    }

    80005020:	02813083          	ld	ra,40(sp)
    80005024:	02013403          	ld	s0,32(sp)
    80005028:	03010113          	addi	sp,sp,48
    8000502c:	00008067          	ret

0000000080005030 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80005030:	fd010113          	addi	sp,sp,-48
    80005034:	02113423          	sd	ra,40(sp)
    80005038:	02813023          	sd	s0,32(sp)
    8000503c:	00913c23          	sd	s1,24(sp)
    80005040:	01213823          	sd	s2,16(sp)
    80005044:	01313423          	sd	s3,8(sp)
    80005048:	03010413          	addi	s0,sp,48
    8000504c:	00050993          	mv	s3,a0
    80005050:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80005054:	00000913          	li	s2,0
    80005058:	00c0006f          	j	80005064 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    8000505c:	ffffd097          	auipc	ra,0xffffd
    80005060:	038080e7          	jalr	56(ra) # 80002094 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    80005064:	ffffc097          	auipc	ra,0xffffc
    80005068:	338080e7          	jalr	824(ra) # 8000139c <_Z4getcv>
    8000506c:	0005059b          	sext.w	a1,a0
    80005070:	01b00793          	li	a5,27
    80005074:	02f58a63          	beq	a1,a5,800050a8 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    80005078:	0084b503          	ld	a0,8(s1)
    8000507c:	00001097          	auipc	ra,0x1
    80005080:	c64080e7          	jalr	-924(ra) # 80005ce0 <_ZN9BufferCPP3putEi>
        i++;
    80005084:	0019071b          	addiw	a4,s2,1
    80005088:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    8000508c:	0004a683          	lw	a3,0(s1)
    80005090:	0026979b          	slliw	a5,a3,0x2
    80005094:	00d787bb          	addw	a5,a5,a3
    80005098:	0017979b          	slliw	a5,a5,0x1
    8000509c:	02f767bb          	remw	a5,a4,a5
    800050a0:	fc0792e3          	bnez	a5,80005064 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    800050a4:	fb9ff06f          	j	8000505c <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    800050a8:	00100793          	li	a5,1
    800050ac:	00007717          	auipc	a4,0x7
    800050b0:	a6f72a23          	sw	a5,-1420(a4) # 8000bb20 <_ZL9threadEnd>
    td->buffer->put('!');
    800050b4:	0209b783          	ld	a5,32(s3)
    800050b8:	02100593          	li	a1,33
    800050bc:	0087b503          	ld	a0,8(a5)
    800050c0:	00001097          	auipc	ra,0x1
    800050c4:	c20080e7          	jalr	-992(ra) # 80005ce0 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    800050c8:	0104b503          	ld	a0,16(s1)
    800050cc:	ffffd097          	auipc	ra,0xffffd
    800050d0:	158080e7          	jalr	344(ra) # 80002224 <_ZN9Semaphore6signalEv>
}
    800050d4:	02813083          	ld	ra,40(sp)
    800050d8:	02013403          	ld	s0,32(sp)
    800050dc:	01813483          	ld	s1,24(sp)
    800050e0:	01013903          	ld	s2,16(sp)
    800050e4:	00813983          	ld	s3,8(sp)
    800050e8:	03010113          	addi	sp,sp,48
    800050ec:	00008067          	ret

00000000800050f0 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    800050f0:	fe010113          	addi	sp,sp,-32
    800050f4:	00113c23          	sd	ra,24(sp)
    800050f8:	00813823          	sd	s0,16(sp)
    800050fc:	00913423          	sd	s1,8(sp)
    80005100:	01213023          	sd	s2,0(sp)
    80005104:	02010413          	addi	s0,sp,32
    80005108:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    8000510c:	00000913          	li	s2,0
    80005110:	00c0006f          	j	8000511c <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80005114:	ffffd097          	auipc	ra,0xffffd
    80005118:	f80080e7          	jalr	-128(ra) # 80002094 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    8000511c:	00007797          	auipc	a5,0x7
    80005120:	a047a783          	lw	a5,-1532(a5) # 8000bb20 <_ZL9threadEnd>
    80005124:	02079e63          	bnez	a5,80005160 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    80005128:	0004a583          	lw	a1,0(s1)
    8000512c:	0305859b          	addiw	a1,a1,48
    80005130:	0084b503          	ld	a0,8(s1)
    80005134:	00001097          	auipc	ra,0x1
    80005138:	bac080e7          	jalr	-1108(ra) # 80005ce0 <_ZN9BufferCPP3putEi>
        i++;
    8000513c:	0019071b          	addiw	a4,s2,1
    80005140:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80005144:	0004a683          	lw	a3,0(s1)
    80005148:	0026979b          	slliw	a5,a3,0x2
    8000514c:	00d787bb          	addw	a5,a5,a3
    80005150:	0017979b          	slliw	a5,a5,0x1
    80005154:	02f767bb          	remw	a5,a4,a5
    80005158:	fc0792e3          	bnez	a5,8000511c <_ZN12ProducerSync8producerEPv+0x2c>
    8000515c:	fb9ff06f          	j	80005114 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    80005160:	0104b503          	ld	a0,16(s1)
    80005164:	ffffd097          	auipc	ra,0xffffd
    80005168:	0c0080e7          	jalr	192(ra) # 80002224 <_ZN9Semaphore6signalEv>
}
    8000516c:	01813083          	ld	ra,24(sp)
    80005170:	01013403          	ld	s0,16(sp)
    80005174:	00813483          	ld	s1,8(sp)
    80005178:	00013903          	ld	s2,0(sp)
    8000517c:	02010113          	addi	sp,sp,32
    80005180:	00008067          	ret

0000000080005184 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80005184:	fd010113          	addi	sp,sp,-48
    80005188:	02113423          	sd	ra,40(sp)
    8000518c:	02813023          	sd	s0,32(sp)
    80005190:	00913c23          	sd	s1,24(sp)
    80005194:	01213823          	sd	s2,16(sp)
    80005198:	01313423          	sd	s3,8(sp)
    8000519c:	01413023          	sd	s4,0(sp)
    800051a0:	03010413          	addi	s0,sp,48
    800051a4:	00050993          	mv	s3,a0
    800051a8:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800051ac:	00000a13          	li	s4,0
    800051b0:	01c0006f          	j	800051cc <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    800051b4:	ffffd097          	auipc	ra,0xffffd
    800051b8:	ee0080e7          	jalr	-288(ra) # 80002094 <_ZN6Thread8dispatchEv>
    800051bc:	0500006f          	j	8000520c <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    800051c0:	00a00513          	li	a0,10
    800051c4:	ffffc097          	auipc	ra,0xffffc
    800051c8:	204080e7          	jalr	516(ra) # 800013c8 <_Z4putcc>
    while (!threadEnd) {
    800051cc:	00007797          	auipc	a5,0x7
    800051d0:	9547a783          	lw	a5,-1708(a5) # 8000bb20 <_ZL9threadEnd>
    800051d4:	06079263          	bnez	a5,80005238 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    800051d8:	00893503          	ld	a0,8(s2)
    800051dc:	00001097          	auipc	ra,0x1
    800051e0:	b94080e7          	jalr	-1132(ra) # 80005d70 <_ZN9BufferCPP3getEv>
        i++;
    800051e4:	001a049b          	addiw	s1,s4,1
    800051e8:	00048a1b          	sext.w	s4,s1
        putc(key);
    800051ec:	0ff57513          	andi	a0,a0,255
    800051f0:	ffffc097          	auipc	ra,0xffffc
    800051f4:	1d8080e7          	jalr	472(ra) # 800013c8 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    800051f8:	00092703          	lw	a4,0(s2)
    800051fc:	0027179b          	slliw	a5,a4,0x2
    80005200:	00e787bb          	addw	a5,a5,a4
    80005204:	02f4e7bb          	remw	a5,s1,a5
    80005208:	fa0786e3          	beqz	a5,800051b4 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    8000520c:	05000793          	li	a5,80
    80005210:	02f4e4bb          	remw	s1,s1,a5
    80005214:	fa049ce3          	bnez	s1,800051cc <_ZN12ConsumerSync8consumerEPv+0x48>
    80005218:	fa9ff06f          	j	800051c0 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    8000521c:	0209b783          	ld	a5,32(s3)
    80005220:	0087b503          	ld	a0,8(a5)
    80005224:	00001097          	auipc	ra,0x1
    80005228:	b4c080e7          	jalr	-1204(ra) # 80005d70 <_ZN9BufferCPP3getEv>
        putc(key);
    8000522c:	0ff57513          	andi	a0,a0,255
    80005230:	ffffc097          	auipc	ra,0xffffc
    80005234:	198080e7          	jalr	408(ra) # 800013c8 <_Z4putcc>
    while (td->buffer->getCnt() > 0) {
    80005238:	0209b783          	ld	a5,32(s3)
    8000523c:	0087b503          	ld	a0,8(a5)
    80005240:	00001097          	auipc	ra,0x1
    80005244:	bbc080e7          	jalr	-1092(ra) # 80005dfc <_ZN9BufferCPP6getCntEv>
    80005248:	fca04ae3          	bgtz	a0,8000521c <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    8000524c:	01093503          	ld	a0,16(s2)
    80005250:	ffffd097          	auipc	ra,0xffffd
    80005254:	fd4080e7          	jalr	-44(ra) # 80002224 <_ZN9Semaphore6signalEv>
}
    80005258:	02813083          	ld	ra,40(sp)
    8000525c:	02013403          	ld	s0,32(sp)
    80005260:	01813483          	ld	s1,24(sp)
    80005264:	01013903          	ld	s2,16(sp)
    80005268:	00813983          	ld	s3,8(sp)
    8000526c:	00013a03          	ld	s4,0(sp)
    80005270:	03010113          	addi	sp,sp,48
    80005274:	00008067          	ret

0000000080005278 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80005278:	f8010113          	addi	sp,sp,-128
    8000527c:	06113c23          	sd	ra,120(sp)
    80005280:	06813823          	sd	s0,112(sp)
    80005284:	06913423          	sd	s1,104(sp)
    80005288:	07213023          	sd	s2,96(sp)
    8000528c:	05313c23          	sd	s3,88(sp)
    80005290:	05413823          	sd	s4,80(sp)
    80005294:	05513423          	sd	s5,72(sp)
    80005298:	05613023          	sd	s6,64(sp)
    8000529c:	03713c23          	sd	s7,56(sp)
    800052a0:	03813823          	sd	s8,48(sp)
    800052a4:	03913423          	sd	s9,40(sp)
    800052a8:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    800052ac:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    800052b0:	00004517          	auipc	a0,0x4
    800052b4:	e2850513          	addi	a0,a0,-472 # 800090d8 <_ZZ12printIntegermE6digits+0x10>
    800052b8:	00000097          	auipc	ra,0x0
    800052bc:	604080e7          	jalr	1540(ra) # 800058bc <_Z11printStringPKc>
    getString(input, 30);
    800052c0:	01e00593          	li	a1,30
    800052c4:	f8040493          	addi	s1,s0,-128
    800052c8:	00048513          	mv	a0,s1
    800052cc:	00000097          	auipc	ra,0x0
    800052d0:	678080e7          	jalr	1656(ra) # 80005944 <_Z9getStringPci>
    threadNum = stringToInt(input);
    800052d4:	00048513          	mv	a0,s1
    800052d8:	00000097          	auipc	ra,0x0
    800052dc:	744080e7          	jalr	1860(ra) # 80005a1c <_Z11stringToIntPKc>
    800052e0:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    800052e4:	00004517          	auipc	a0,0x4
    800052e8:	e1450513          	addi	a0,a0,-492 # 800090f8 <_ZZ12printIntegermE6digits+0x30>
    800052ec:	00000097          	auipc	ra,0x0
    800052f0:	5d0080e7          	jalr	1488(ra) # 800058bc <_Z11printStringPKc>
    getString(input, 30);
    800052f4:	01e00593          	li	a1,30
    800052f8:	00048513          	mv	a0,s1
    800052fc:	00000097          	auipc	ra,0x0
    80005300:	648080e7          	jalr	1608(ra) # 80005944 <_Z9getStringPci>
    n = stringToInt(input);
    80005304:	00048513          	mv	a0,s1
    80005308:	00000097          	auipc	ra,0x0
    8000530c:	714080e7          	jalr	1812(ra) # 80005a1c <_Z11stringToIntPKc>
    80005310:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80005314:	00004517          	auipc	a0,0x4
    80005318:	e0450513          	addi	a0,a0,-508 # 80009118 <_ZZ12printIntegermE6digits+0x50>
    8000531c:	00000097          	auipc	ra,0x0
    80005320:	5a0080e7          	jalr	1440(ra) # 800058bc <_Z11printStringPKc>
    80005324:	00000613          	li	a2,0
    80005328:	00a00593          	li	a1,10
    8000532c:	00090513          	mv	a0,s2
    80005330:	00000097          	auipc	ra,0x0
    80005334:	73c080e7          	jalr	1852(ra) # 80005a6c <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80005338:	00004517          	auipc	a0,0x4
    8000533c:	df850513          	addi	a0,a0,-520 # 80009130 <_ZZ12printIntegermE6digits+0x68>
    80005340:	00000097          	auipc	ra,0x0
    80005344:	57c080e7          	jalr	1404(ra) # 800058bc <_Z11printStringPKc>
    80005348:	00000613          	li	a2,0
    8000534c:	00a00593          	li	a1,10
    80005350:	00048513          	mv	a0,s1
    80005354:	00000097          	auipc	ra,0x0
    80005358:	718080e7          	jalr	1816(ra) # 80005a6c <_Z8printIntiii>
    printString(".\n");
    8000535c:	00004517          	auipc	a0,0x4
    80005360:	dec50513          	addi	a0,a0,-532 # 80009148 <_ZZ12printIntegermE6digits+0x80>
    80005364:	00000097          	auipc	ra,0x0
    80005368:	558080e7          	jalr	1368(ra) # 800058bc <_Z11printStringPKc>
    if(threadNum > n) {
    8000536c:	0324c463          	blt	s1,s2,80005394 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80005370:	03205c63          	blez	s2,800053a8 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80005374:	03800513          	li	a0,56
    80005378:	ffffd097          	auipc	ra,0xffffd
    8000537c:	bbc080e7          	jalr	-1092(ra) # 80001f34 <_Znwm>
    80005380:	00050a93          	mv	s5,a0
    80005384:	00048593          	mv	a1,s1
    80005388:	00001097          	auipc	ra,0x1
    8000538c:	804080e7          	jalr	-2044(ra) # 80005b8c <_ZN9BufferCPPC1Ei>
    80005390:	0300006f          	j	800053c0 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80005394:	00004517          	auipc	a0,0x4
    80005398:	dbc50513          	addi	a0,a0,-580 # 80009150 <_ZZ12printIntegermE6digits+0x88>
    8000539c:	00000097          	auipc	ra,0x0
    800053a0:	520080e7          	jalr	1312(ra) # 800058bc <_Z11printStringPKc>
        return;
    800053a4:	0140006f          	j	800053b8 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800053a8:	00004517          	auipc	a0,0x4
    800053ac:	de850513          	addi	a0,a0,-536 # 80009190 <_ZZ12printIntegermE6digits+0xc8>
    800053b0:	00000097          	auipc	ra,0x0
    800053b4:	50c080e7          	jalr	1292(ra) # 800058bc <_Z11printStringPKc>
        return;
    800053b8:	000b8113          	mv	sp,s7
    800053bc:	2380006f          	j	800055f4 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    800053c0:	01000513          	li	a0,16
    800053c4:	ffffd097          	auipc	ra,0xffffd
    800053c8:	b70080e7          	jalr	-1168(ra) # 80001f34 <_Znwm>
    800053cc:	00050493          	mv	s1,a0
    800053d0:	00000593          	li	a1,0
    800053d4:	ffffd097          	auipc	ra,0xffffd
    800053d8:	dec080e7          	jalr	-532(ra) # 800021c0 <_ZN9SemaphoreC1Ej>
    800053dc:	00006797          	auipc	a5,0x6
    800053e0:	7497b623          	sd	s1,1868(a5) # 8000bb28 <_ZL10waitForAll>
    Thread* threads[threadNum];
    800053e4:	00391793          	slli	a5,s2,0x3
    800053e8:	00f78793          	addi	a5,a5,15
    800053ec:	ff07f793          	andi	a5,a5,-16
    800053f0:	40f10133          	sub	sp,sp,a5
    800053f4:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    800053f8:	0019071b          	addiw	a4,s2,1
    800053fc:	00171793          	slli	a5,a4,0x1
    80005400:	00e787b3          	add	a5,a5,a4
    80005404:	00379793          	slli	a5,a5,0x3
    80005408:	00f78793          	addi	a5,a5,15
    8000540c:	ff07f793          	andi	a5,a5,-16
    80005410:	40f10133          	sub	sp,sp,a5
    80005414:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80005418:	00191c13          	slli	s8,s2,0x1
    8000541c:	012c07b3          	add	a5,s8,s2
    80005420:	00379793          	slli	a5,a5,0x3
    80005424:	00fa07b3          	add	a5,s4,a5
    80005428:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    8000542c:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80005430:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    80005434:	02800513          	li	a0,40
    80005438:	ffffd097          	auipc	ra,0xffffd
    8000543c:	afc080e7          	jalr	-1284(ra) # 80001f34 <_Znwm>
    80005440:	00050b13          	mv	s6,a0
    80005444:	012c0c33          	add	s8,s8,s2
    80005448:	003c1c13          	slli	s8,s8,0x3
    8000544c:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    80005450:	ffffd097          	auipc	ra,0xffffd
    80005454:	c6c080e7          	jalr	-916(ra) # 800020bc <_ZN6ThreadC1Ev>
    80005458:	00006797          	auipc	a5,0x6
    8000545c:	54078793          	addi	a5,a5,1344 # 8000b998 <_ZTV12ConsumerSync+0x10>
    80005460:	00fb3023          	sd	a5,0(s6)
    80005464:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    80005468:	000b0513          	mv	a0,s6
    8000546c:	ffffd097          	auipc	ra,0xffffd
    80005470:	c80080e7          	jalr	-896(ra) # 800020ec <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80005474:	00000493          	li	s1,0
    80005478:	0380006f          	j	800054b0 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    8000547c:	00006797          	auipc	a5,0x6
    80005480:	4f478793          	addi	a5,a5,1268 # 8000b970 <_ZTV12ProducerSync+0x10>
    80005484:	00fcb023          	sd	a5,0(s9)
    80005488:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    8000548c:	00349793          	slli	a5,s1,0x3
    80005490:	00f987b3          	add	a5,s3,a5
    80005494:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80005498:	00349793          	slli	a5,s1,0x3
    8000549c:	00f987b3          	add	a5,s3,a5
    800054a0:	0007b503          	ld	a0,0(a5)
    800054a4:	ffffd097          	auipc	ra,0xffffd
    800054a8:	c48080e7          	jalr	-952(ra) # 800020ec <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    800054ac:	0014849b          	addiw	s1,s1,1
    800054b0:	0b24d063          	bge	s1,s2,80005550 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    800054b4:	00149793          	slli	a5,s1,0x1
    800054b8:	009787b3          	add	a5,a5,s1
    800054bc:	00379793          	slli	a5,a5,0x3
    800054c0:	00fa07b3          	add	a5,s4,a5
    800054c4:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    800054c8:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    800054cc:	00006717          	auipc	a4,0x6
    800054d0:	65c73703          	ld	a4,1628(a4) # 8000bb28 <_ZL10waitForAll>
    800054d4:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    800054d8:	02905863          	blez	s1,80005508 <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    800054dc:	02800513          	li	a0,40
    800054e0:	ffffd097          	auipc	ra,0xffffd
    800054e4:	a54080e7          	jalr	-1452(ra) # 80001f34 <_Znwm>
    800054e8:	00050c93          	mv	s9,a0
    800054ec:	00149c13          	slli	s8,s1,0x1
    800054f0:	009c0c33          	add	s8,s8,s1
    800054f4:	003c1c13          	slli	s8,s8,0x3
    800054f8:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    800054fc:	ffffd097          	auipc	ra,0xffffd
    80005500:	bc0080e7          	jalr	-1088(ra) # 800020bc <_ZN6ThreadC1Ev>
    80005504:	f79ff06f          	j	8000547c <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    80005508:	02800513          	li	a0,40
    8000550c:	ffffd097          	auipc	ra,0xffffd
    80005510:	a28080e7          	jalr	-1496(ra) # 80001f34 <_Znwm>
    80005514:	00050c93          	mv	s9,a0
    80005518:	00149c13          	slli	s8,s1,0x1
    8000551c:	009c0c33          	add	s8,s8,s1
    80005520:	003c1c13          	slli	s8,s8,0x3
    80005524:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80005528:	ffffd097          	auipc	ra,0xffffd
    8000552c:	b94080e7          	jalr	-1132(ra) # 800020bc <_ZN6ThreadC1Ev>
    80005530:	00006797          	auipc	a5,0x6
    80005534:	41878793          	addi	a5,a5,1048 # 8000b948 <_ZTV16ProducerKeyboard+0x10>
    80005538:	00fcb023          	sd	a5,0(s9)
    8000553c:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    80005540:	00349793          	slli	a5,s1,0x3
    80005544:	00f987b3          	add	a5,s3,a5
    80005548:	0197b023          	sd	s9,0(a5)
    8000554c:	f4dff06f          	j	80005498 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    80005550:	ffffd097          	auipc	ra,0xffffd
    80005554:	b44080e7          	jalr	-1212(ra) # 80002094 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80005558:	00000493          	li	s1,0
    8000555c:	00994e63          	blt	s2,s1,80005578 <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    80005560:	00006517          	auipc	a0,0x6
    80005564:	5c853503          	ld	a0,1480(a0) # 8000bb28 <_ZL10waitForAll>
    80005568:	ffffd097          	auipc	ra,0xffffd
    8000556c:	c90080e7          	jalr	-880(ra) # 800021f8 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80005570:	0014849b          	addiw	s1,s1,1
    80005574:	fe9ff06f          	j	8000555c <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    80005578:	00000493          	li	s1,0
    8000557c:	0080006f          	j	80005584 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    80005580:	0014849b          	addiw	s1,s1,1
    80005584:	0324d263          	bge	s1,s2,800055a8 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80005588:	00349793          	slli	a5,s1,0x3
    8000558c:	00f987b3          	add	a5,s3,a5
    80005590:	0007b503          	ld	a0,0(a5)
    80005594:	fe0506e3          	beqz	a0,80005580 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80005598:	00053783          	ld	a5,0(a0)
    8000559c:	0087b783          	ld	a5,8(a5)
    800055a0:	000780e7          	jalr	a5
    800055a4:	fddff06f          	j	80005580 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    800055a8:	000b0a63          	beqz	s6,800055bc <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    800055ac:	000b3783          	ld	a5,0(s6)
    800055b0:	0087b783          	ld	a5,8(a5)
    800055b4:	000b0513          	mv	a0,s6
    800055b8:	000780e7          	jalr	a5
    delete waitForAll;
    800055bc:	00006517          	auipc	a0,0x6
    800055c0:	56c53503          	ld	a0,1388(a0) # 8000bb28 <_ZL10waitForAll>
    800055c4:	00050863          	beqz	a0,800055d4 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    800055c8:	00053783          	ld	a5,0(a0)
    800055cc:	0087b783          	ld	a5,8(a5)
    800055d0:	000780e7          	jalr	a5
    delete buffer;
    800055d4:	000a8e63          	beqz	s5,800055f0 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    800055d8:	000a8513          	mv	a0,s5
    800055dc:	00001097          	auipc	ra,0x1
    800055e0:	8a8080e7          	jalr	-1880(ra) # 80005e84 <_ZN9BufferCPPD1Ev>
    800055e4:	000a8513          	mv	a0,s5
    800055e8:	ffffd097          	auipc	ra,0xffffd
    800055ec:	974080e7          	jalr	-1676(ra) # 80001f5c <_ZdlPv>
    800055f0:	000b8113          	mv	sp,s7

}
    800055f4:	f8040113          	addi	sp,s0,-128
    800055f8:	07813083          	ld	ra,120(sp)
    800055fc:	07013403          	ld	s0,112(sp)
    80005600:	06813483          	ld	s1,104(sp)
    80005604:	06013903          	ld	s2,96(sp)
    80005608:	05813983          	ld	s3,88(sp)
    8000560c:	05013a03          	ld	s4,80(sp)
    80005610:	04813a83          	ld	s5,72(sp)
    80005614:	04013b03          	ld	s6,64(sp)
    80005618:	03813b83          	ld	s7,56(sp)
    8000561c:	03013c03          	ld	s8,48(sp)
    80005620:	02813c83          	ld	s9,40(sp)
    80005624:	08010113          	addi	sp,sp,128
    80005628:	00008067          	ret
    8000562c:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80005630:	000a8513          	mv	a0,s5
    80005634:	ffffd097          	auipc	ra,0xffffd
    80005638:	928080e7          	jalr	-1752(ra) # 80001f5c <_ZdlPv>
    8000563c:	00048513          	mv	a0,s1
    80005640:	00007097          	auipc	ra,0x7
    80005644:	5c8080e7          	jalr	1480(ra) # 8000cc08 <_Unwind_Resume>
    80005648:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    8000564c:	00048513          	mv	a0,s1
    80005650:	ffffd097          	auipc	ra,0xffffd
    80005654:	90c080e7          	jalr	-1780(ra) # 80001f5c <_ZdlPv>
    80005658:	00090513          	mv	a0,s2
    8000565c:	00007097          	auipc	ra,0x7
    80005660:	5ac080e7          	jalr	1452(ra) # 8000cc08 <_Unwind_Resume>
    80005664:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    80005668:	000b0513          	mv	a0,s6
    8000566c:	ffffd097          	auipc	ra,0xffffd
    80005670:	8f0080e7          	jalr	-1808(ra) # 80001f5c <_ZdlPv>
    80005674:	00048513          	mv	a0,s1
    80005678:	00007097          	auipc	ra,0x7
    8000567c:	590080e7          	jalr	1424(ra) # 8000cc08 <_Unwind_Resume>
    80005680:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    80005684:	000c8513          	mv	a0,s9
    80005688:	ffffd097          	auipc	ra,0xffffd
    8000568c:	8d4080e7          	jalr	-1836(ra) # 80001f5c <_ZdlPv>
    80005690:	00048513          	mv	a0,s1
    80005694:	00007097          	auipc	ra,0x7
    80005698:	574080e7          	jalr	1396(ra) # 8000cc08 <_Unwind_Resume>
    8000569c:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    800056a0:	000c8513          	mv	a0,s9
    800056a4:	ffffd097          	auipc	ra,0xffffd
    800056a8:	8b8080e7          	jalr	-1864(ra) # 80001f5c <_ZdlPv>
    800056ac:	00048513          	mv	a0,s1
    800056b0:	00007097          	auipc	ra,0x7
    800056b4:	558080e7          	jalr	1368(ra) # 8000cc08 <_Unwind_Resume>

00000000800056b8 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    800056b8:	ff010113          	addi	sp,sp,-16
    800056bc:	00113423          	sd	ra,8(sp)
    800056c0:	00813023          	sd	s0,0(sp)
    800056c4:	01010413          	addi	s0,sp,16
    800056c8:	00006797          	auipc	a5,0x6
    800056cc:	2d078793          	addi	a5,a5,720 # 8000b998 <_ZTV12ConsumerSync+0x10>
    800056d0:	00f53023          	sd	a5,0(a0)
    800056d4:	ffffd097          	auipc	ra,0xffffd
    800056d8:	8b0080e7          	jalr	-1872(ra) # 80001f84 <_ZN6ThreadD1Ev>
    800056dc:	00813083          	ld	ra,8(sp)
    800056e0:	00013403          	ld	s0,0(sp)
    800056e4:	01010113          	addi	sp,sp,16
    800056e8:	00008067          	ret

00000000800056ec <_ZN12ConsumerSyncD0Ev>:
    800056ec:	fe010113          	addi	sp,sp,-32
    800056f0:	00113c23          	sd	ra,24(sp)
    800056f4:	00813823          	sd	s0,16(sp)
    800056f8:	00913423          	sd	s1,8(sp)
    800056fc:	02010413          	addi	s0,sp,32
    80005700:	00050493          	mv	s1,a0
    80005704:	00006797          	auipc	a5,0x6
    80005708:	29478793          	addi	a5,a5,660 # 8000b998 <_ZTV12ConsumerSync+0x10>
    8000570c:	00f53023          	sd	a5,0(a0)
    80005710:	ffffd097          	auipc	ra,0xffffd
    80005714:	874080e7          	jalr	-1932(ra) # 80001f84 <_ZN6ThreadD1Ev>
    80005718:	00048513          	mv	a0,s1
    8000571c:	ffffd097          	auipc	ra,0xffffd
    80005720:	840080e7          	jalr	-1984(ra) # 80001f5c <_ZdlPv>
    80005724:	01813083          	ld	ra,24(sp)
    80005728:	01013403          	ld	s0,16(sp)
    8000572c:	00813483          	ld	s1,8(sp)
    80005730:	02010113          	addi	sp,sp,32
    80005734:	00008067          	ret

0000000080005738 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    80005738:	ff010113          	addi	sp,sp,-16
    8000573c:	00113423          	sd	ra,8(sp)
    80005740:	00813023          	sd	s0,0(sp)
    80005744:	01010413          	addi	s0,sp,16
    80005748:	00006797          	auipc	a5,0x6
    8000574c:	22878793          	addi	a5,a5,552 # 8000b970 <_ZTV12ProducerSync+0x10>
    80005750:	00f53023          	sd	a5,0(a0)
    80005754:	ffffd097          	auipc	ra,0xffffd
    80005758:	830080e7          	jalr	-2000(ra) # 80001f84 <_ZN6ThreadD1Ev>
    8000575c:	00813083          	ld	ra,8(sp)
    80005760:	00013403          	ld	s0,0(sp)
    80005764:	01010113          	addi	sp,sp,16
    80005768:	00008067          	ret

000000008000576c <_ZN12ProducerSyncD0Ev>:
    8000576c:	fe010113          	addi	sp,sp,-32
    80005770:	00113c23          	sd	ra,24(sp)
    80005774:	00813823          	sd	s0,16(sp)
    80005778:	00913423          	sd	s1,8(sp)
    8000577c:	02010413          	addi	s0,sp,32
    80005780:	00050493          	mv	s1,a0
    80005784:	00006797          	auipc	a5,0x6
    80005788:	1ec78793          	addi	a5,a5,492 # 8000b970 <_ZTV12ProducerSync+0x10>
    8000578c:	00f53023          	sd	a5,0(a0)
    80005790:	ffffc097          	auipc	ra,0xffffc
    80005794:	7f4080e7          	jalr	2036(ra) # 80001f84 <_ZN6ThreadD1Ev>
    80005798:	00048513          	mv	a0,s1
    8000579c:	ffffc097          	auipc	ra,0xffffc
    800057a0:	7c0080e7          	jalr	1984(ra) # 80001f5c <_ZdlPv>
    800057a4:	01813083          	ld	ra,24(sp)
    800057a8:	01013403          	ld	s0,16(sp)
    800057ac:	00813483          	ld	s1,8(sp)
    800057b0:	02010113          	addi	sp,sp,32
    800057b4:	00008067          	ret

00000000800057b8 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    800057b8:	ff010113          	addi	sp,sp,-16
    800057bc:	00113423          	sd	ra,8(sp)
    800057c0:	00813023          	sd	s0,0(sp)
    800057c4:	01010413          	addi	s0,sp,16
    800057c8:	00006797          	auipc	a5,0x6
    800057cc:	18078793          	addi	a5,a5,384 # 8000b948 <_ZTV16ProducerKeyboard+0x10>
    800057d0:	00f53023          	sd	a5,0(a0)
    800057d4:	ffffc097          	auipc	ra,0xffffc
    800057d8:	7b0080e7          	jalr	1968(ra) # 80001f84 <_ZN6ThreadD1Ev>
    800057dc:	00813083          	ld	ra,8(sp)
    800057e0:	00013403          	ld	s0,0(sp)
    800057e4:	01010113          	addi	sp,sp,16
    800057e8:	00008067          	ret

00000000800057ec <_ZN16ProducerKeyboardD0Ev>:
    800057ec:	fe010113          	addi	sp,sp,-32
    800057f0:	00113c23          	sd	ra,24(sp)
    800057f4:	00813823          	sd	s0,16(sp)
    800057f8:	00913423          	sd	s1,8(sp)
    800057fc:	02010413          	addi	s0,sp,32
    80005800:	00050493          	mv	s1,a0
    80005804:	00006797          	auipc	a5,0x6
    80005808:	14478793          	addi	a5,a5,324 # 8000b948 <_ZTV16ProducerKeyboard+0x10>
    8000580c:	00f53023          	sd	a5,0(a0)
    80005810:	ffffc097          	auipc	ra,0xffffc
    80005814:	774080e7          	jalr	1908(ra) # 80001f84 <_ZN6ThreadD1Ev>
    80005818:	00048513          	mv	a0,s1
    8000581c:	ffffc097          	auipc	ra,0xffffc
    80005820:	740080e7          	jalr	1856(ra) # 80001f5c <_ZdlPv>
    80005824:	01813083          	ld	ra,24(sp)
    80005828:	01013403          	ld	s0,16(sp)
    8000582c:	00813483          	ld	s1,8(sp)
    80005830:	02010113          	addi	sp,sp,32
    80005834:	00008067          	ret

0000000080005838 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80005838:	ff010113          	addi	sp,sp,-16
    8000583c:	00113423          	sd	ra,8(sp)
    80005840:	00813023          	sd	s0,0(sp)
    80005844:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80005848:	02053583          	ld	a1,32(a0)
    8000584c:	fffff097          	auipc	ra,0xfffff
    80005850:	7e4080e7          	jalr	2020(ra) # 80005030 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80005854:	00813083          	ld	ra,8(sp)
    80005858:	00013403          	ld	s0,0(sp)
    8000585c:	01010113          	addi	sp,sp,16
    80005860:	00008067          	ret

0000000080005864 <_ZN12ProducerSync3runEv>:
    void run() override {
    80005864:	ff010113          	addi	sp,sp,-16
    80005868:	00113423          	sd	ra,8(sp)
    8000586c:	00813023          	sd	s0,0(sp)
    80005870:	01010413          	addi	s0,sp,16
        producer(td);
    80005874:	02053583          	ld	a1,32(a0)
    80005878:	00000097          	auipc	ra,0x0
    8000587c:	878080e7          	jalr	-1928(ra) # 800050f0 <_ZN12ProducerSync8producerEPv>
    }
    80005880:	00813083          	ld	ra,8(sp)
    80005884:	00013403          	ld	s0,0(sp)
    80005888:	01010113          	addi	sp,sp,16
    8000588c:	00008067          	ret

0000000080005890 <_ZN12ConsumerSync3runEv>:
    void run() override {
    80005890:	ff010113          	addi	sp,sp,-16
    80005894:	00113423          	sd	ra,8(sp)
    80005898:	00813023          	sd	s0,0(sp)
    8000589c:	01010413          	addi	s0,sp,16
        consumer(td);
    800058a0:	02053583          	ld	a1,32(a0)
    800058a4:	00000097          	auipc	ra,0x0
    800058a8:	8e0080e7          	jalr	-1824(ra) # 80005184 <_ZN12ConsumerSync8consumerEPv>
    }
    800058ac:	00813083          	ld	ra,8(sp)
    800058b0:	00013403          	ld	s0,0(sp)
    800058b4:	01010113          	addi	sp,sp,16
    800058b8:	00008067          	ret

00000000800058bc <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    800058bc:	fe010113          	addi	sp,sp,-32
    800058c0:	00113c23          	sd	ra,24(sp)
    800058c4:	00813823          	sd	s0,16(sp)
    800058c8:	00913423          	sd	s1,8(sp)
    800058cc:	02010413          	addi	s0,sp,32
    800058d0:	00050493          	mv	s1,a0
    LOCK();
    800058d4:	00100613          	li	a2,1
    800058d8:	00000593          	li	a1,0
    800058dc:	00006517          	auipc	a0,0x6
    800058e0:	25450513          	addi	a0,a0,596 # 8000bb30 <lockPrint>
    800058e4:	ffffc097          	auipc	ra,0xffffc
    800058e8:	850080e7          	jalr	-1968(ra) # 80001134 <copy_and_swap>
    800058ec:	00050863          	beqz	a0,800058fc <_Z11printStringPKc+0x40>
    800058f0:	ffffc097          	auipc	ra,0xffffc
    800058f4:	994080e7          	jalr	-1644(ra) # 80001284 <_Z15thread_dispatchv>
    800058f8:	fddff06f          	j	800058d4 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    800058fc:	0004c503          	lbu	a0,0(s1)
    80005900:	00050a63          	beqz	a0,80005914 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80005904:	ffffc097          	auipc	ra,0xffffc
    80005908:	ac4080e7          	jalr	-1340(ra) # 800013c8 <_Z4putcc>
        string++;
    8000590c:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80005910:	fedff06f          	j	800058fc <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80005914:	00000613          	li	a2,0
    80005918:	00100593          	li	a1,1
    8000591c:	00006517          	auipc	a0,0x6
    80005920:	21450513          	addi	a0,a0,532 # 8000bb30 <lockPrint>
    80005924:	ffffc097          	auipc	ra,0xffffc
    80005928:	810080e7          	jalr	-2032(ra) # 80001134 <copy_and_swap>
    8000592c:	fe0514e3          	bnez	a0,80005914 <_Z11printStringPKc+0x58>
}
    80005930:	01813083          	ld	ra,24(sp)
    80005934:	01013403          	ld	s0,16(sp)
    80005938:	00813483          	ld	s1,8(sp)
    8000593c:	02010113          	addi	sp,sp,32
    80005940:	00008067          	ret

0000000080005944 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80005944:	fd010113          	addi	sp,sp,-48
    80005948:	02113423          	sd	ra,40(sp)
    8000594c:	02813023          	sd	s0,32(sp)
    80005950:	00913c23          	sd	s1,24(sp)
    80005954:	01213823          	sd	s2,16(sp)
    80005958:	01313423          	sd	s3,8(sp)
    8000595c:	01413023          	sd	s4,0(sp)
    80005960:	03010413          	addi	s0,sp,48
    80005964:	00050993          	mv	s3,a0
    80005968:	00058a13          	mv	s4,a1
    LOCK();
    8000596c:	00100613          	li	a2,1
    80005970:	00000593          	li	a1,0
    80005974:	00006517          	auipc	a0,0x6
    80005978:	1bc50513          	addi	a0,a0,444 # 8000bb30 <lockPrint>
    8000597c:	ffffb097          	auipc	ra,0xffffb
    80005980:	7b8080e7          	jalr	1976(ra) # 80001134 <copy_and_swap>
    80005984:	00050863          	beqz	a0,80005994 <_Z9getStringPci+0x50>
    80005988:	ffffc097          	auipc	ra,0xffffc
    8000598c:	8fc080e7          	jalr	-1796(ra) # 80001284 <_Z15thread_dispatchv>
    80005990:	fddff06f          	j	8000596c <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80005994:	00000913          	li	s2,0
    80005998:	00090493          	mv	s1,s2
    8000599c:	0019091b          	addiw	s2,s2,1
    800059a0:	03495a63          	bge	s2,s4,800059d4 <_Z9getStringPci+0x90>
        cc = getc();
    800059a4:	ffffc097          	auipc	ra,0xffffc
    800059a8:	9f8080e7          	jalr	-1544(ra) # 8000139c <_Z4getcv>
        if(cc < 1)
    800059ac:	02050463          	beqz	a0,800059d4 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    800059b0:	009984b3          	add	s1,s3,s1
    800059b4:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    800059b8:	00a00793          	li	a5,10
    800059bc:	00f50a63          	beq	a0,a5,800059d0 <_Z9getStringPci+0x8c>
    800059c0:	00d00793          	li	a5,13
    800059c4:	fcf51ae3          	bne	a0,a5,80005998 <_Z9getStringPci+0x54>
        buf[i++] = c;
    800059c8:	00090493          	mv	s1,s2
    800059cc:	0080006f          	j	800059d4 <_Z9getStringPci+0x90>
    800059d0:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    800059d4:	009984b3          	add	s1,s3,s1
    800059d8:	00048023          	sb	zero,0(s1)

    UNLOCK();
    800059dc:	00000613          	li	a2,0
    800059e0:	00100593          	li	a1,1
    800059e4:	00006517          	auipc	a0,0x6
    800059e8:	14c50513          	addi	a0,a0,332 # 8000bb30 <lockPrint>
    800059ec:	ffffb097          	auipc	ra,0xffffb
    800059f0:	748080e7          	jalr	1864(ra) # 80001134 <copy_and_swap>
    800059f4:	fe0514e3          	bnez	a0,800059dc <_Z9getStringPci+0x98>
    return buf;
}
    800059f8:	00098513          	mv	a0,s3
    800059fc:	02813083          	ld	ra,40(sp)
    80005a00:	02013403          	ld	s0,32(sp)
    80005a04:	01813483          	ld	s1,24(sp)
    80005a08:	01013903          	ld	s2,16(sp)
    80005a0c:	00813983          	ld	s3,8(sp)
    80005a10:	00013a03          	ld	s4,0(sp)
    80005a14:	03010113          	addi	sp,sp,48
    80005a18:	00008067          	ret

0000000080005a1c <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80005a1c:	ff010113          	addi	sp,sp,-16
    80005a20:	00813423          	sd	s0,8(sp)
    80005a24:	01010413          	addi	s0,sp,16
    80005a28:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80005a2c:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80005a30:	0006c603          	lbu	a2,0(a3)
    80005a34:	fd06071b          	addiw	a4,a2,-48
    80005a38:	0ff77713          	andi	a4,a4,255
    80005a3c:	00900793          	li	a5,9
    80005a40:	02e7e063          	bltu	a5,a4,80005a60 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80005a44:	0025179b          	slliw	a5,a0,0x2
    80005a48:	00a787bb          	addw	a5,a5,a0
    80005a4c:	0017979b          	slliw	a5,a5,0x1
    80005a50:	00168693          	addi	a3,a3,1
    80005a54:	00c787bb          	addw	a5,a5,a2
    80005a58:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80005a5c:	fd5ff06f          	j	80005a30 <_Z11stringToIntPKc+0x14>
    return n;
}
    80005a60:	00813403          	ld	s0,8(sp)
    80005a64:	01010113          	addi	sp,sp,16
    80005a68:	00008067          	ret

0000000080005a6c <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80005a6c:	fc010113          	addi	sp,sp,-64
    80005a70:	02113c23          	sd	ra,56(sp)
    80005a74:	02813823          	sd	s0,48(sp)
    80005a78:	02913423          	sd	s1,40(sp)
    80005a7c:	03213023          	sd	s2,32(sp)
    80005a80:	01313c23          	sd	s3,24(sp)
    80005a84:	04010413          	addi	s0,sp,64
    80005a88:	00050493          	mv	s1,a0
    80005a8c:	00058913          	mv	s2,a1
    80005a90:	00060993          	mv	s3,a2
    LOCK();
    80005a94:	00100613          	li	a2,1
    80005a98:	00000593          	li	a1,0
    80005a9c:	00006517          	auipc	a0,0x6
    80005aa0:	09450513          	addi	a0,a0,148 # 8000bb30 <lockPrint>
    80005aa4:	ffffb097          	auipc	ra,0xffffb
    80005aa8:	690080e7          	jalr	1680(ra) # 80001134 <copy_and_swap>
    80005aac:	00050863          	beqz	a0,80005abc <_Z8printIntiii+0x50>
    80005ab0:	ffffb097          	auipc	ra,0xffffb
    80005ab4:	7d4080e7          	jalr	2004(ra) # 80001284 <_Z15thread_dispatchv>
    80005ab8:	fddff06f          	j	80005a94 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80005abc:	00098463          	beqz	s3,80005ac4 <_Z8printIntiii+0x58>
    80005ac0:	0804c463          	bltz	s1,80005b48 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005ac4:	0004851b          	sext.w	a0,s1
    neg = 0;
    80005ac8:	00000593          	li	a1,0
    }

    i = 0;
    80005acc:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80005ad0:	0009079b          	sext.w	a5,s2
    80005ad4:	0325773b          	remuw	a4,a0,s2
    80005ad8:	00048613          	mv	a2,s1
    80005adc:	0014849b          	addiw	s1,s1,1
    80005ae0:	02071693          	slli	a3,a4,0x20
    80005ae4:	0206d693          	srli	a3,a3,0x20
    80005ae8:	00006717          	auipc	a4,0x6
    80005aec:	ec870713          	addi	a4,a4,-312 # 8000b9b0 <digits>
    80005af0:	00d70733          	add	a4,a4,a3
    80005af4:	00074683          	lbu	a3,0(a4)
    80005af8:	fd040713          	addi	a4,s0,-48
    80005afc:	00c70733          	add	a4,a4,a2
    80005b00:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80005b04:	0005071b          	sext.w	a4,a0
    80005b08:	0325553b          	divuw	a0,a0,s2
    80005b0c:	fcf772e3          	bgeu	a4,a5,80005ad0 <_Z8printIntiii+0x64>
    if(neg)
    80005b10:	00058c63          	beqz	a1,80005b28 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80005b14:	fd040793          	addi	a5,s0,-48
    80005b18:	009784b3          	add	s1,a5,s1
    80005b1c:	02d00793          	li	a5,45
    80005b20:	fef48823          	sb	a5,-16(s1)
    80005b24:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80005b28:	fff4849b          	addiw	s1,s1,-1
    80005b2c:	0204c463          	bltz	s1,80005b54 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80005b30:	fd040793          	addi	a5,s0,-48
    80005b34:	009787b3          	add	a5,a5,s1
    80005b38:	ff07c503          	lbu	a0,-16(a5)
    80005b3c:	ffffc097          	auipc	ra,0xffffc
    80005b40:	88c080e7          	jalr	-1908(ra) # 800013c8 <_Z4putcc>
    80005b44:	fe5ff06f          	j	80005b28 <_Z8printIntiii+0xbc>
        x = -xx;
    80005b48:	4090053b          	negw	a0,s1
        neg = 1;
    80005b4c:	00100593          	li	a1,1
        x = -xx;
    80005b50:	f7dff06f          	j	80005acc <_Z8printIntiii+0x60>

    UNLOCK();
    80005b54:	00000613          	li	a2,0
    80005b58:	00100593          	li	a1,1
    80005b5c:	00006517          	auipc	a0,0x6
    80005b60:	fd450513          	addi	a0,a0,-44 # 8000bb30 <lockPrint>
    80005b64:	ffffb097          	auipc	ra,0xffffb
    80005b68:	5d0080e7          	jalr	1488(ra) # 80001134 <copy_and_swap>
    80005b6c:	fe0514e3          	bnez	a0,80005b54 <_Z8printIntiii+0xe8>
    80005b70:	03813083          	ld	ra,56(sp)
    80005b74:	03013403          	ld	s0,48(sp)
    80005b78:	02813483          	ld	s1,40(sp)
    80005b7c:	02013903          	ld	s2,32(sp)
    80005b80:	01813983          	ld	s3,24(sp)
    80005b84:	04010113          	addi	sp,sp,64
    80005b88:	00008067          	ret

0000000080005b8c <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005b8c:	fd010113          	addi	sp,sp,-48
    80005b90:	02113423          	sd	ra,40(sp)
    80005b94:	02813023          	sd	s0,32(sp)
    80005b98:	00913c23          	sd	s1,24(sp)
    80005b9c:	01213823          	sd	s2,16(sp)
    80005ba0:	01313423          	sd	s3,8(sp)
    80005ba4:	03010413          	addi	s0,sp,48
    80005ba8:	00050493          	mv	s1,a0
    80005bac:	00058913          	mv	s2,a1
    80005bb0:	0015879b          	addiw	a5,a1,1
    80005bb4:	0007851b          	sext.w	a0,a5
    80005bb8:	00f4a023          	sw	a5,0(s1)
    80005bbc:	0004a823          	sw	zero,16(s1)
    80005bc0:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005bc4:	00251513          	slli	a0,a0,0x2
    80005bc8:	ffffb097          	auipc	ra,0xffffb
    80005bcc:	58c080e7          	jalr	1420(ra) # 80001154 <_Z9mem_allocm>
    80005bd0:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80005bd4:	01000513          	li	a0,16
    80005bd8:	ffffc097          	auipc	ra,0xffffc
    80005bdc:	35c080e7          	jalr	860(ra) # 80001f34 <_Znwm>
    80005be0:	00050993          	mv	s3,a0
    80005be4:	00000593          	li	a1,0
    80005be8:	ffffc097          	auipc	ra,0xffffc
    80005bec:	5d8080e7          	jalr	1496(ra) # 800021c0 <_ZN9SemaphoreC1Ej>
    80005bf0:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80005bf4:	01000513          	li	a0,16
    80005bf8:	ffffc097          	auipc	ra,0xffffc
    80005bfc:	33c080e7          	jalr	828(ra) # 80001f34 <_Znwm>
    80005c00:	00050993          	mv	s3,a0
    80005c04:	00090593          	mv	a1,s2
    80005c08:	ffffc097          	auipc	ra,0xffffc
    80005c0c:	5b8080e7          	jalr	1464(ra) # 800021c0 <_ZN9SemaphoreC1Ej>
    80005c10:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80005c14:	01000513          	li	a0,16
    80005c18:	ffffc097          	auipc	ra,0xffffc
    80005c1c:	31c080e7          	jalr	796(ra) # 80001f34 <_Znwm>
    80005c20:	00050913          	mv	s2,a0
    80005c24:	00100593          	li	a1,1
    80005c28:	ffffc097          	auipc	ra,0xffffc
    80005c2c:	598080e7          	jalr	1432(ra) # 800021c0 <_ZN9SemaphoreC1Ej>
    80005c30:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80005c34:	01000513          	li	a0,16
    80005c38:	ffffc097          	auipc	ra,0xffffc
    80005c3c:	2fc080e7          	jalr	764(ra) # 80001f34 <_Znwm>
    80005c40:	00050913          	mv	s2,a0
    80005c44:	00100593          	li	a1,1
    80005c48:	ffffc097          	auipc	ra,0xffffc
    80005c4c:	578080e7          	jalr	1400(ra) # 800021c0 <_ZN9SemaphoreC1Ej>
    80005c50:	0324b823          	sd	s2,48(s1)
}
    80005c54:	02813083          	ld	ra,40(sp)
    80005c58:	02013403          	ld	s0,32(sp)
    80005c5c:	01813483          	ld	s1,24(sp)
    80005c60:	01013903          	ld	s2,16(sp)
    80005c64:	00813983          	ld	s3,8(sp)
    80005c68:	03010113          	addi	sp,sp,48
    80005c6c:	00008067          	ret
    80005c70:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80005c74:	00098513          	mv	a0,s3
    80005c78:	ffffc097          	auipc	ra,0xffffc
    80005c7c:	2e4080e7          	jalr	740(ra) # 80001f5c <_ZdlPv>
    80005c80:	00048513          	mv	a0,s1
    80005c84:	00007097          	auipc	ra,0x7
    80005c88:	f84080e7          	jalr	-124(ra) # 8000cc08 <_Unwind_Resume>
    80005c8c:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80005c90:	00098513          	mv	a0,s3
    80005c94:	ffffc097          	auipc	ra,0xffffc
    80005c98:	2c8080e7          	jalr	712(ra) # 80001f5c <_ZdlPv>
    80005c9c:	00048513          	mv	a0,s1
    80005ca0:	00007097          	auipc	ra,0x7
    80005ca4:	f68080e7          	jalr	-152(ra) # 8000cc08 <_Unwind_Resume>
    80005ca8:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80005cac:	00090513          	mv	a0,s2
    80005cb0:	ffffc097          	auipc	ra,0xffffc
    80005cb4:	2ac080e7          	jalr	684(ra) # 80001f5c <_ZdlPv>
    80005cb8:	00048513          	mv	a0,s1
    80005cbc:	00007097          	auipc	ra,0x7
    80005cc0:	f4c080e7          	jalr	-180(ra) # 8000cc08 <_Unwind_Resume>
    80005cc4:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80005cc8:	00090513          	mv	a0,s2
    80005ccc:	ffffc097          	auipc	ra,0xffffc
    80005cd0:	290080e7          	jalr	656(ra) # 80001f5c <_ZdlPv>
    80005cd4:	00048513          	mv	a0,s1
    80005cd8:	00007097          	auipc	ra,0x7
    80005cdc:	f30080e7          	jalr	-208(ra) # 8000cc08 <_Unwind_Resume>

0000000080005ce0 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80005ce0:	fe010113          	addi	sp,sp,-32
    80005ce4:	00113c23          	sd	ra,24(sp)
    80005ce8:	00813823          	sd	s0,16(sp)
    80005cec:	00913423          	sd	s1,8(sp)
    80005cf0:	01213023          	sd	s2,0(sp)
    80005cf4:	02010413          	addi	s0,sp,32
    80005cf8:	00050493          	mv	s1,a0
    80005cfc:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80005d00:	01853503          	ld	a0,24(a0)
    80005d04:	ffffc097          	auipc	ra,0xffffc
    80005d08:	4f4080e7          	jalr	1268(ra) # 800021f8 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80005d0c:	0304b503          	ld	a0,48(s1)
    80005d10:	ffffc097          	auipc	ra,0xffffc
    80005d14:	4e8080e7          	jalr	1256(ra) # 800021f8 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80005d18:	0084b783          	ld	a5,8(s1)
    80005d1c:	0144a703          	lw	a4,20(s1)
    80005d20:	00271713          	slli	a4,a4,0x2
    80005d24:	00e787b3          	add	a5,a5,a4
    80005d28:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005d2c:	0144a783          	lw	a5,20(s1)
    80005d30:	0017879b          	addiw	a5,a5,1
    80005d34:	0004a703          	lw	a4,0(s1)
    80005d38:	02e7e7bb          	remw	a5,a5,a4
    80005d3c:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80005d40:	0304b503          	ld	a0,48(s1)
    80005d44:	ffffc097          	auipc	ra,0xffffc
    80005d48:	4e0080e7          	jalr	1248(ra) # 80002224 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80005d4c:	0204b503          	ld	a0,32(s1)
    80005d50:	ffffc097          	auipc	ra,0xffffc
    80005d54:	4d4080e7          	jalr	1236(ra) # 80002224 <_ZN9Semaphore6signalEv>

}
    80005d58:	01813083          	ld	ra,24(sp)
    80005d5c:	01013403          	ld	s0,16(sp)
    80005d60:	00813483          	ld	s1,8(sp)
    80005d64:	00013903          	ld	s2,0(sp)
    80005d68:	02010113          	addi	sp,sp,32
    80005d6c:	00008067          	ret

0000000080005d70 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80005d70:	fe010113          	addi	sp,sp,-32
    80005d74:	00113c23          	sd	ra,24(sp)
    80005d78:	00813823          	sd	s0,16(sp)
    80005d7c:	00913423          	sd	s1,8(sp)
    80005d80:	01213023          	sd	s2,0(sp)
    80005d84:	02010413          	addi	s0,sp,32
    80005d88:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80005d8c:	02053503          	ld	a0,32(a0)
    80005d90:	ffffc097          	auipc	ra,0xffffc
    80005d94:	468080e7          	jalr	1128(ra) # 800021f8 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80005d98:	0284b503          	ld	a0,40(s1)
    80005d9c:	ffffc097          	auipc	ra,0xffffc
    80005da0:	45c080e7          	jalr	1116(ra) # 800021f8 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80005da4:	0084b703          	ld	a4,8(s1)
    80005da8:	0104a783          	lw	a5,16(s1)
    80005dac:	00279693          	slli	a3,a5,0x2
    80005db0:	00d70733          	add	a4,a4,a3
    80005db4:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005db8:	0017879b          	addiw	a5,a5,1
    80005dbc:	0004a703          	lw	a4,0(s1)
    80005dc0:	02e7e7bb          	remw	a5,a5,a4
    80005dc4:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80005dc8:	0284b503          	ld	a0,40(s1)
    80005dcc:	ffffc097          	auipc	ra,0xffffc
    80005dd0:	458080e7          	jalr	1112(ra) # 80002224 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80005dd4:	0184b503          	ld	a0,24(s1)
    80005dd8:	ffffc097          	auipc	ra,0xffffc
    80005ddc:	44c080e7          	jalr	1100(ra) # 80002224 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005de0:	00090513          	mv	a0,s2
    80005de4:	01813083          	ld	ra,24(sp)
    80005de8:	01013403          	ld	s0,16(sp)
    80005dec:	00813483          	ld	s1,8(sp)
    80005df0:	00013903          	ld	s2,0(sp)
    80005df4:	02010113          	addi	sp,sp,32
    80005df8:	00008067          	ret

0000000080005dfc <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80005dfc:	fe010113          	addi	sp,sp,-32
    80005e00:	00113c23          	sd	ra,24(sp)
    80005e04:	00813823          	sd	s0,16(sp)
    80005e08:	00913423          	sd	s1,8(sp)
    80005e0c:	01213023          	sd	s2,0(sp)
    80005e10:	02010413          	addi	s0,sp,32
    80005e14:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80005e18:	02853503          	ld	a0,40(a0)
    80005e1c:	ffffc097          	auipc	ra,0xffffc
    80005e20:	3dc080e7          	jalr	988(ra) # 800021f8 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80005e24:	0304b503          	ld	a0,48(s1)
    80005e28:	ffffc097          	auipc	ra,0xffffc
    80005e2c:	3d0080e7          	jalr	976(ra) # 800021f8 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80005e30:	0144a783          	lw	a5,20(s1)
    80005e34:	0104a903          	lw	s2,16(s1)
    80005e38:	0327ce63          	blt	a5,s2,80005e74 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80005e3c:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80005e40:	0304b503          	ld	a0,48(s1)
    80005e44:	ffffc097          	auipc	ra,0xffffc
    80005e48:	3e0080e7          	jalr	992(ra) # 80002224 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80005e4c:	0284b503          	ld	a0,40(s1)
    80005e50:	ffffc097          	auipc	ra,0xffffc
    80005e54:	3d4080e7          	jalr	980(ra) # 80002224 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005e58:	00090513          	mv	a0,s2
    80005e5c:	01813083          	ld	ra,24(sp)
    80005e60:	01013403          	ld	s0,16(sp)
    80005e64:	00813483          	ld	s1,8(sp)
    80005e68:	00013903          	ld	s2,0(sp)
    80005e6c:	02010113          	addi	sp,sp,32
    80005e70:	00008067          	ret
        ret = cap - head + tail;
    80005e74:	0004a703          	lw	a4,0(s1)
    80005e78:	4127093b          	subw	s2,a4,s2
    80005e7c:	00f9093b          	addw	s2,s2,a5
    80005e80:	fc1ff06f          	j	80005e40 <_ZN9BufferCPP6getCntEv+0x44>

0000000080005e84 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80005e84:	fe010113          	addi	sp,sp,-32
    80005e88:	00113c23          	sd	ra,24(sp)
    80005e8c:	00813823          	sd	s0,16(sp)
    80005e90:	00913423          	sd	s1,8(sp)
    80005e94:	02010413          	addi	s0,sp,32
    80005e98:	00050493          	mv	s1,a0
    putc('\n');
    80005e9c:	00a00513          	li	a0,10
    80005ea0:	ffffb097          	auipc	ra,0xffffb
    80005ea4:	528080e7          	jalr	1320(ra) # 800013c8 <_Z4putcc>
    printString("Buffer deleted!\n");
    80005ea8:	00003517          	auipc	a0,0x3
    80005eac:	3d850513          	addi	a0,a0,984 # 80009280 <_ZZ12printIntegermE6digits+0x1b8>
    80005eb0:	00000097          	auipc	ra,0x0
    80005eb4:	a0c080e7          	jalr	-1524(ra) # 800058bc <_Z11printStringPKc>
    while (getCnt()) {
    80005eb8:	00048513          	mv	a0,s1
    80005ebc:	00000097          	auipc	ra,0x0
    80005ec0:	f40080e7          	jalr	-192(ra) # 80005dfc <_ZN9BufferCPP6getCntEv>
    80005ec4:	02050c63          	beqz	a0,80005efc <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80005ec8:	0084b783          	ld	a5,8(s1)
    80005ecc:	0104a703          	lw	a4,16(s1)
    80005ed0:	00271713          	slli	a4,a4,0x2
    80005ed4:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80005ed8:	0007c503          	lbu	a0,0(a5)
    80005edc:	ffffb097          	auipc	ra,0xffffb
    80005ee0:	4ec080e7          	jalr	1260(ra) # 800013c8 <_Z4putcc>
        head = (head + 1) % cap;
    80005ee4:	0104a783          	lw	a5,16(s1)
    80005ee8:	0017879b          	addiw	a5,a5,1
    80005eec:	0004a703          	lw	a4,0(s1)
    80005ef0:	02e7e7bb          	remw	a5,a5,a4
    80005ef4:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80005ef8:	fc1ff06f          	j	80005eb8 <_ZN9BufferCPPD1Ev+0x34>
    putc('!');
    80005efc:	02100513          	li	a0,33
    80005f00:	ffffb097          	auipc	ra,0xffffb
    80005f04:	4c8080e7          	jalr	1224(ra) # 800013c8 <_Z4putcc>
    putc('\n');
    80005f08:	00a00513          	li	a0,10
    80005f0c:	ffffb097          	auipc	ra,0xffffb
    80005f10:	4bc080e7          	jalr	1212(ra) # 800013c8 <_Z4putcc>
    mem_free(buffer);
    80005f14:	0084b503          	ld	a0,8(s1)
    80005f18:	ffffb097          	auipc	ra,0xffffb
    80005f1c:	27c080e7          	jalr	636(ra) # 80001194 <_Z8mem_freePv>
    delete itemAvailable;
    80005f20:	0204b503          	ld	a0,32(s1)
    80005f24:	00050863          	beqz	a0,80005f34 <_ZN9BufferCPPD1Ev+0xb0>
    80005f28:	00053783          	ld	a5,0(a0)
    80005f2c:	0087b783          	ld	a5,8(a5)
    80005f30:	000780e7          	jalr	a5
    delete spaceAvailable;
    80005f34:	0184b503          	ld	a0,24(s1)
    80005f38:	00050863          	beqz	a0,80005f48 <_ZN9BufferCPPD1Ev+0xc4>
    80005f3c:	00053783          	ld	a5,0(a0)
    80005f40:	0087b783          	ld	a5,8(a5)
    80005f44:	000780e7          	jalr	a5
    delete mutexTail;
    80005f48:	0304b503          	ld	a0,48(s1)
    80005f4c:	00050863          	beqz	a0,80005f5c <_ZN9BufferCPPD1Ev+0xd8>
    80005f50:	00053783          	ld	a5,0(a0)
    80005f54:	0087b783          	ld	a5,8(a5)
    80005f58:	000780e7          	jalr	a5
    delete mutexHead;
    80005f5c:	0284b503          	ld	a0,40(s1)
    80005f60:	00050863          	beqz	a0,80005f70 <_ZN9BufferCPPD1Ev+0xec>
    80005f64:	00053783          	ld	a5,0(a0)
    80005f68:	0087b783          	ld	a5,8(a5)
    80005f6c:	000780e7          	jalr	a5
}
    80005f70:	01813083          	ld	ra,24(sp)
    80005f74:	01013403          	ld	s0,16(sp)
    80005f78:	00813483          	ld	s1,8(sp)
    80005f7c:	02010113          	addi	sp,sp,32
    80005f80:	00008067          	ret

0000000080005f84 <_Z8userMainv>:
#include "ConsumerProducer_CPP_API_test.hpp"


#endif

void userMain() {
    80005f84:	fe010113          	addi	sp,sp,-32
    80005f88:	00113c23          	sd	ra,24(sp)
    80005f8c:	00813823          	sd	s0,16(sp)
    80005f90:	00913423          	sd	s1,8(sp)
    80005f94:	02010413          	addi	s0,sp,32
    pprintString("Unesite broj testa? [1-7]\n");
    80005f98:	00003517          	auipc	a0,0x3
    80005f9c:	30050513          	addi	a0,a0,768 # 80009298 <_ZZ12printIntegermE6digits+0x1d0>
    80005fa0:	ffffd097          	auipc	ra,0xffffd
    80005fa4:	12c080e7          	jalr	300(ra) # 800030cc <_Z12pprintStringPKc>
    int test = getc()-'0';
    80005fa8:	ffffb097          	auipc	ra,0xffffb
    80005fac:	3f4080e7          	jalr	1012(ra) # 8000139c <_Z4getcv>
    80005fb0:	fd05049b          	addiw	s1,a0,-48
    getc();
    80005fb4:	ffffb097          	auipc	ra,0xffffb
    80005fb8:	3e8080e7          	jalr	1000(ra) # 8000139c <_Z4getcv>
            pprintString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    80005fbc:	00700793          	li	a5,7
    80005fc0:	1097e263          	bltu	a5,s1,800060c4 <_Z8userMainv+0x140>
    80005fc4:	00249493          	slli	s1,s1,0x2
    80005fc8:	00003717          	auipc	a4,0x3
    80005fcc:	52870713          	addi	a4,a4,1320 # 800094f0 <_ZZ12printIntegermE6digits+0x428>
    80005fd0:	00e484b3          	add	s1,s1,a4
    80005fd4:	0004a783          	lw	a5,0(s1)
    80005fd8:	00e787b3          	add	a5,a5,a4
    80005fdc:	00078067          	jr	a5
        case 1:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_C_API_test();
    80005fe0:	fffff097          	auipc	ra,0xfffff
    80005fe4:	f54080e7          	jalr	-172(ra) # 80004f34 <_Z18Threads_C_API_testv>
            pprintString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    80005fe8:	00003517          	auipc	a0,0x3
    80005fec:	2d050513          	addi	a0,a0,720 # 800092b8 <_ZZ12printIntegermE6digits+0x1f0>
    80005ff0:	ffffd097          	auipc	ra,0xffffd
    80005ff4:	0dc080e7          	jalr	220(ra) # 800030cc <_Z12pprintStringPKc>
#endif
            break;
        default:
            pprintString("Niste uneli odgovarajuci broj za test\n");
    }
    80005ff8:	01813083          	ld	ra,24(sp)
    80005ffc:	01013403          	ld	s0,16(sp)
    80006000:	00813483          	ld	s1,8(sp)
    80006004:	02010113          	addi	sp,sp,32
    80006008:	00008067          	ret
            Threads_CPP_API_test();
    8000600c:	ffffe097          	auipc	ra,0xffffe
    80006010:	e08080e7          	jalr	-504(ra) # 80003e14 <_Z20Threads_CPP_API_testv>
            pprintString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    80006014:	00003517          	auipc	a0,0x3
    80006018:	2e450513          	addi	a0,a0,740 # 800092f8 <_ZZ12printIntegermE6digits+0x230>
    8000601c:	ffffd097          	auipc	ra,0xffffd
    80006020:	0b0080e7          	jalr	176(ra) # 800030cc <_Z12pprintStringPKc>
            break;
    80006024:	fd5ff06f          	j	80005ff8 <_Z8userMainv+0x74>
            producerConsumer_C_API();
    80006028:	ffffd097          	auipc	ra,0xffffd
    8000602c:	688080e7          	jalr	1672(ra) # 800036b0 <_Z22producerConsumer_C_APIv>
            pprintString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    80006030:	00003517          	auipc	a0,0x3
    80006034:	30850513          	addi	a0,a0,776 # 80009338 <_ZZ12printIntegermE6digits+0x270>
    80006038:	ffffd097          	auipc	ra,0xffffd
    8000603c:	094080e7          	jalr	148(ra) # 800030cc <_Z12pprintStringPKc>
            break;
    80006040:	fb9ff06f          	j	80005ff8 <_Z8userMainv+0x74>
            producerConsumer_CPP_Sync_API();
    80006044:	fffff097          	auipc	ra,0xfffff
    80006048:	234080e7          	jalr	564(ra) # 80005278 <_Z29producerConsumer_CPP_Sync_APIv>
            pprintString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    8000604c:	00003517          	auipc	a0,0x3
    80006050:	33c50513          	addi	a0,a0,828 # 80009388 <_ZZ12printIntegermE6digits+0x2c0>
    80006054:	ffffd097          	auipc	ra,0xffffd
    80006058:	078080e7          	jalr	120(ra) # 800030cc <_Z12pprintStringPKc>
            break;
    8000605c:	f9dff06f          	j	80005ff8 <_Z8userMainv+0x74>
            testSleeping();
    80006060:	00000097          	auipc	ra,0x0
    80006064:	11c080e7          	jalr	284(ra) # 8000617c <_Z12testSleepingv>
            pprintString("TEST 5 (zadatak 4., thread_sleep test C API)\n");
    80006068:	00003517          	auipc	a0,0x3
    8000606c:	37850513          	addi	a0,a0,888 # 800093e0 <_ZZ12printIntegermE6digits+0x318>
    80006070:	ffffd097          	auipc	ra,0xffffd
    80006074:	05c080e7          	jalr	92(ra) # 800030cc <_Z12pprintStringPKc>
            break;
    80006078:	f81ff06f          	j	80005ff8 <_Z8userMainv+0x74>
            testConsumerProducer();
    8000607c:	ffffe097          	auipc	ra,0xffffe
    80006080:	258080e7          	jalr	600(ra) # 800042d4 <_Z20testConsumerProducerv>
            pprintString("TEST 6 (zadatak 4. CPP API i asinhrona promena konteksta)\n");
    80006084:	00003517          	auipc	a0,0x3
    80006088:	38c50513          	addi	a0,a0,908 # 80009410 <_ZZ12printIntegermE6digits+0x348>
    8000608c:	ffffd097          	auipc	ra,0xffffd
    80006090:	040080e7          	jalr	64(ra) # 800030cc <_Z12pprintStringPKc>
            break;
    80006094:	f65ff06f          	j	80005ff8 <_Z8userMainv+0x74>
            System_Mode_test();
    80006098:	00000097          	auipc	ra,0x0
    8000609c:	61c080e7          	jalr	1564(ra) # 800066b4 <_Z16System_Mode_testv>
            pprintString("Test se nije uspesno zavrsio\n");
    800060a0:	00003517          	auipc	a0,0x3
    800060a4:	3b050513          	addi	a0,a0,944 # 80009450 <_ZZ12printIntegermE6digits+0x388>
    800060a8:	ffffd097          	auipc	ra,0xffffd
    800060ac:	024080e7          	jalr	36(ra) # 800030cc <_Z12pprintStringPKc>
            pprintString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    800060b0:	00003517          	auipc	a0,0x3
    800060b4:	3c050513          	addi	a0,a0,960 # 80009470 <_ZZ12printIntegermE6digits+0x3a8>
    800060b8:	ffffd097          	auipc	ra,0xffffd
    800060bc:	014080e7          	jalr	20(ra) # 800030cc <_Z12pprintStringPKc>
            break;
    800060c0:	f39ff06f          	j	80005ff8 <_Z8userMainv+0x74>
            pprintString("Niste uneli odgovarajuci broj za test\n");
    800060c4:	00003517          	auipc	a0,0x3
    800060c8:	40450513          	addi	a0,a0,1028 # 800094c8 <_ZZ12printIntegermE6digits+0x400>
    800060cc:	ffffd097          	auipc	ra,0xffffd
    800060d0:	000080e7          	jalr	ra # 800030cc <_Z12pprintStringPKc>
    800060d4:	f25ff06f          	j	80005ff8 <_Z8userMainv+0x74>

00000000800060d8 <_ZL9sleepyRunPv>:

#include "printing.hpp"

static  bool finished[2];

static void sleepyRun(void *arg) {
    800060d8:	fe010113          	addi	sp,sp,-32
    800060dc:	00113c23          	sd	ra,24(sp)
    800060e0:	00813823          	sd	s0,16(sp)
    800060e4:	00913423          	sd	s1,8(sp)
    800060e8:	01213023          	sd	s2,0(sp)
    800060ec:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    800060f0:	00053903          	ld	s2,0(a0)
    int i = 6;
    800060f4:	00600493          	li	s1,6
    while (--i > 0) {
    800060f8:	fff4849b          	addiw	s1,s1,-1
    800060fc:	04905463          	blez	s1,80006144 <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    80006100:	00003517          	auipc	a0,0x3
    80006104:	41050513          	addi	a0,a0,1040 # 80009510 <_ZZ12printIntegermE6digits+0x448>
    80006108:	fffff097          	auipc	ra,0xfffff
    8000610c:	7b4080e7          	jalr	1972(ra) # 800058bc <_Z11printStringPKc>
        printInt(sleep_time);
    80006110:	00000613          	li	a2,0
    80006114:	00a00593          	li	a1,10
    80006118:	0009051b          	sext.w	a0,s2
    8000611c:	00000097          	auipc	ra,0x0
    80006120:	950080e7          	jalr	-1712(ra) # 80005a6c <_Z8printIntiii>
        printString(" !\n");
    80006124:	00003517          	auipc	a0,0x3
    80006128:	3f450513          	addi	a0,a0,1012 # 80009518 <_ZZ12printIntegermE6digits+0x450>
    8000612c:	fffff097          	auipc	ra,0xfffff
    80006130:	790080e7          	jalr	1936(ra) # 800058bc <_Z11printStringPKc>
        time_sleep(sleep_time);
    80006134:	00090513          	mv	a0,s2
    80006138:	ffffb097          	auipc	ra,0xffffb
    8000613c:	234080e7          	jalr	564(ra) # 8000136c <_Z10time_sleepm>
    while (--i > 0) {
    80006140:	fb9ff06f          	j	800060f8 <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80006144:	00a00793          	li	a5,10
    80006148:	02f95933          	divu	s2,s2,a5
    8000614c:	fff90913          	addi	s2,s2,-1
    80006150:	00006797          	auipc	a5,0x6
    80006154:	9e878793          	addi	a5,a5,-1560 # 8000bb38 <_ZL8finished>
    80006158:	01278933          	add	s2,a5,s2
    8000615c:	00100793          	li	a5,1
    80006160:	00f90023          	sb	a5,0(s2)
}
    80006164:	01813083          	ld	ra,24(sp)
    80006168:	01013403          	ld	s0,16(sp)
    8000616c:	00813483          	ld	s1,8(sp)
    80006170:	00013903          	ld	s2,0(sp)
    80006174:	02010113          	addi	sp,sp,32
    80006178:	00008067          	ret

000000008000617c <_Z12testSleepingv>:

void testSleeping() {
    8000617c:	fc010113          	addi	sp,sp,-64
    80006180:	02113c23          	sd	ra,56(sp)
    80006184:	02813823          	sd	s0,48(sp)
    80006188:	02913423          	sd	s1,40(sp)
    8000618c:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80006190:	00a00793          	li	a5,10
    80006194:	fcf43823          	sd	a5,-48(s0)
    80006198:	01400793          	li	a5,20
    8000619c:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    800061a0:	00000493          	li	s1,0
    800061a4:	02c0006f          	j	800061d0 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    800061a8:	00349793          	slli	a5,s1,0x3
    800061ac:	fd040613          	addi	a2,s0,-48
    800061b0:	00f60633          	add	a2,a2,a5
    800061b4:	00000597          	auipc	a1,0x0
    800061b8:	f2458593          	addi	a1,a1,-220 # 800060d8 <_ZL9sleepyRunPv>
    800061bc:	fc040513          	addi	a0,s0,-64
    800061c0:	00f50533          	add	a0,a0,a5
    800061c4:	ffffb097          	auipc	ra,0xffffb
    800061c8:	05c080e7          	jalr	92(ra) # 80001220 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    800061cc:	0014849b          	addiw	s1,s1,1
    800061d0:	00100793          	li	a5,1
    800061d4:	fc97dae3          	bge	a5,s1,800061a8 <_Z12testSleepingv+0x2c>
    800061d8:	00c0006f          	j	800061e4 <_Z12testSleepingv+0x68>
    }

    while (!(finished[0] && finished[1])) {
        thread_dispatch();
    800061dc:	ffffb097          	auipc	ra,0xffffb
    800061e0:	0a8080e7          	jalr	168(ra) # 80001284 <_Z15thread_dispatchv>
    while (!(finished[0] && finished[1])) {
    800061e4:	00006797          	auipc	a5,0x6
    800061e8:	9547c783          	lbu	a5,-1708(a5) # 8000bb38 <_ZL8finished>
    800061ec:	fe0788e3          	beqz	a5,800061dc <_Z12testSleepingv+0x60>
    800061f0:	00006797          	auipc	a5,0x6
    800061f4:	9497c783          	lbu	a5,-1719(a5) # 8000bb39 <_ZL8finished+0x1>
    800061f8:	fe0782e3          	beqz	a5,800061dc <_Z12testSleepingv+0x60>
    }
}
    800061fc:	03813083          	ld	ra,56(sp)
    80006200:	03013403          	ld	s0,48(sp)
    80006204:	02813483          	ld	s1,40(sp)
    80006208:	04010113          	addi	sp,sp,64
    8000620c:	00008067          	ret

0000000080006210 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80006210:	fe010113          	addi	sp,sp,-32
    80006214:	00113c23          	sd	ra,24(sp)
    80006218:	00813823          	sd	s0,16(sp)
    8000621c:	00913423          	sd	s1,8(sp)
    80006220:	01213023          	sd	s2,0(sp)
    80006224:	02010413          	addi	s0,sp,32
    80006228:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    8000622c:	00100793          	li	a5,1
    80006230:	02a7f863          	bgeu	a5,a0,80006260 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80006234:	00a00793          	li	a5,10
    80006238:	02f577b3          	remu	a5,a0,a5
    8000623c:	02078e63          	beqz	a5,80006278 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80006240:	fff48513          	addi	a0,s1,-1
    80006244:	00000097          	auipc	ra,0x0
    80006248:	fcc080e7          	jalr	-52(ra) # 80006210 <_ZL9fibonaccim>
    8000624c:	00050913          	mv	s2,a0
    80006250:	ffe48513          	addi	a0,s1,-2
    80006254:	00000097          	auipc	ra,0x0
    80006258:	fbc080e7          	jalr	-68(ra) # 80006210 <_ZL9fibonaccim>
    8000625c:	00a90533          	add	a0,s2,a0
}
    80006260:	01813083          	ld	ra,24(sp)
    80006264:	01013403          	ld	s0,16(sp)
    80006268:	00813483          	ld	s1,8(sp)
    8000626c:	00013903          	ld	s2,0(sp)
    80006270:	02010113          	addi	sp,sp,32
    80006274:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80006278:	ffffb097          	auipc	ra,0xffffb
    8000627c:	00c080e7          	jalr	12(ra) # 80001284 <_Z15thread_dispatchv>
    80006280:	fc1ff06f          	j	80006240 <_ZL9fibonaccim+0x30>

0000000080006284 <_ZL11workerBodyDPv>:
    pprintString("C finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80006284:	fe010113          	addi	sp,sp,-32
    80006288:	00113c23          	sd	ra,24(sp)
    8000628c:	00813823          	sd	s0,16(sp)
    80006290:	00913423          	sd	s1,8(sp)
    80006294:	01213023          	sd	s2,0(sp)
    80006298:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    8000629c:	00a00493          	li	s1,10
    800062a0:	0380006f          	j	800062d8 <_ZL11workerBodyDPv+0x54>
    for (; i < 13; i++) {
        pprintString("D: i="); printInteger(i); pprintString("\n");
    800062a4:	00003517          	auipc	a0,0x3
    800062a8:	f4450513          	addi	a0,a0,-188 # 800091e8 <_ZZ12printIntegermE6digits+0x120>
    800062ac:	ffffd097          	auipc	ra,0xffffd
    800062b0:	e20080e7          	jalr	-480(ra) # 800030cc <_Z12pprintStringPKc>
    800062b4:	00048513          	mv	a0,s1
    800062b8:	ffffd097          	auipc	ra,0xffffd
    800062bc:	e58080e7          	jalr	-424(ra) # 80003110 <_Z12printIntegerm>
    800062c0:	00003517          	auipc	a0,0x3
    800062c4:	11850513          	addi	a0,a0,280 # 800093d8 <_ZZ12printIntegermE6digits+0x310>
    800062c8:	ffffd097          	auipc	ra,0xffffd
    800062cc:	e04080e7          	jalr	-508(ra) # 800030cc <_Z12pprintStringPKc>
    for (; i < 13; i++) {
    800062d0:	0014849b          	addiw	s1,s1,1
    800062d4:	0ff4f493          	andi	s1,s1,255
    800062d8:	00c00793          	li	a5,12
    800062dc:	fc97f4e3          	bgeu	a5,s1,800062a4 <_ZL11workerBodyDPv+0x20>
    }

    pprintString("D: dispatch\n");
    800062e0:	00003517          	auipc	a0,0x3
    800062e4:	f1050513          	addi	a0,a0,-240 # 800091f0 <_ZZ12printIntegermE6digits+0x128>
    800062e8:	ffffd097          	auipc	ra,0xffffd
    800062ec:	de4080e7          	jalr	-540(ra) # 800030cc <_Z12pprintStringPKc>
    __asm__ ("li t1, 5");
    800062f0:	00500313          	li	t1,5
    thread_dispatch();
    800062f4:	ffffb097          	auipc	ra,0xffffb
    800062f8:	f90080e7          	jalr	-112(ra) # 80001284 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800062fc:	01000513          	li	a0,16
    80006300:	00000097          	auipc	ra,0x0
    80006304:	f10080e7          	jalr	-240(ra) # 80006210 <_ZL9fibonaccim>
    80006308:	00050913          	mv	s2,a0
    pprintString("D: fibonaci="); printInteger(result); pprintString("\n");
    8000630c:	00003517          	auipc	a0,0x3
    80006310:	ef450513          	addi	a0,a0,-268 # 80009200 <_ZZ12printIntegermE6digits+0x138>
    80006314:	ffffd097          	auipc	ra,0xffffd
    80006318:	db8080e7          	jalr	-584(ra) # 800030cc <_Z12pprintStringPKc>
    8000631c:	00090513          	mv	a0,s2
    80006320:	ffffd097          	auipc	ra,0xffffd
    80006324:	df0080e7          	jalr	-528(ra) # 80003110 <_Z12printIntegerm>
    80006328:	00003517          	auipc	a0,0x3
    8000632c:	0b050513          	addi	a0,a0,176 # 800093d8 <_ZZ12printIntegermE6digits+0x310>
    80006330:	ffffd097          	auipc	ra,0xffffd
    80006334:	d9c080e7          	jalr	-612(ra) # 800030cc <_Z12pprintStringPKc>
    80006338:	0380006f          	j	80006370 <_ZL11workerBodyDPv+0xec>

    for (; i < 16; i++) {
        pprintString("D: i="); printInteger(i); pprintString("\n");
    8000633c:	00003517          	auipc	a0,0x3
    80006340:	eac50513          	addi	a0,a0,-340 # 800091e8 <_ZZ12printIntegermE6digits+0x120>
    80006344:	ffffd097          	auipc	ra,0xffffd
    80006348:	d88080e7          	jalr	-632(ra) # 800030cc <_Z12pprintStringPKc>
    8000634c:	00048513          	mv	a0,s1
    80006350:	ffffd097          	auipc	ra,0xffffd
    80006354:	dc0080e7          	jalr	-576(ra) # 80003110 <_Z12printIntegerm>
    80006358:	00003517          	auipc	a0,0x3
    8000635c:	08050513          	addi	a0,a0,128 # 800093d8 <_ZZ12printIntegermE6digits+0x310>
    80006360:	ffffd097          	auipc	ra,0xffffd
    80006364:	d6c080e7          	jalr	-660(ra) # 800030cc <_Z12pprintStringPKc>
    for (; i < 16; i++) {
    80006368:	0014849b          	addiw	s1,s1,1
    8000636c:	0ff4f493          	andi	s1,s1,255
    80006370:	00f00793          	li	a5,15
    80006374:	fc97f4e3          	bgeu	a5,s1,8000633c <_ZL11workerBodyDPv+0xb8>
    }

    pprintString("D finished!\n");
    80006378:	00003517          	auipc	a0,0x3
    8000637c:	e9850513          	addi	a0,a0,-360 # 80009210 <_ZZ12printIntegermE6digits+0x148>
    80006380:	ffffd097          	auipc	ra,0xffffd
    80006384:	d4c080e7          	jalr	-692(ra) # 800030cc <_Z12pprintStringPKc>
    finishedD = true;
    80006388:	00100793          	li	a5,1
    8000638c:	00005717          	auipc	a4,0x5
    80006390:	7af70723          	sb	a5,1966(a4) # 8000bb3a <_ZL9finishedD>
    thread_dispatch();
    80006394:	ffffb097          	auipc	ra,0xffffb
    80006398:	ef0080e7          	jalr	-272(ra) # 80001284 <_Z15thread_dispatchv>
}
    8000639c:	01813083          	ld	ra,24(sp)
    800063a0:	01013403          	ld	s0,16(sp)
    800063a4:	00813483          	ld	s1,8(sp)
    800063a8:	00013903          	ld	s2,0(sp)
    800063ac:	02010113          	addi	sp,sp,32
    800063b0:	00008067          	ret

00000000800063b4 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    800063b4:	fe010113          	addi	sp,sp,-32
    800063b8:	00113c23          	sd	ra,24(sp)
    800063bc:	00813823          	sd	s0,16(sp)
    800063c0:	00913423          	sd	s1,8(sp)
    800063c4:	01213023          	sd	s2,0(sp)
    800063c8:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800063cc:	00000493          	li	s1,0
    800063d0:	0380006f          	j	80006408 <_ZL11workerBodyCPv+0x54>
        pprintString("C: i="); printInteger(i); pprintString("\n");
    800063d4:	00003517          	auipc	a0,0x3
    800063d8:	c8450513          	addi	a0,a0,-892 # 80009058 <CONSOLE_STATUS+0x48>
    800063dc:	ffffd097          	auipc	ra,0xffffd
    800063e0:	cf0080e7          	jalr	-784(ra) # 800030cc <_Z12pprintStringPKc>
    800063e4:	00048513          	mv	a0,s1
    800063e8:	ffffd097          	auipc	ra,0xffffd
    800063ec:	d28080e7          	jalr	-728(ra) # 80003110 <_Z12printIntegerm>
    800063f0:	00003517          	auipc	a0,0x3
    800063f4:	fe850513          	addi	a0,a0,-24 # 800093d8 <_ZZ12printIntegermE6digits+0x310>
    800063f8:	ffffd097          	auipc	ra,0xffffd
    800063fc:	cd4080e7          	jalr	-812(ra) # 800030cc <_Z12pprintStringPKc>
    for (; i < 3; i++) {
    80006400:	0014849b          	addiw	s1,s1,1
    80006404:	0ff4f493          	andi	s1,s1,255
    80006408:	00200793          	li	a5,2
    8000640c:	fc97f4e3          	bgeu	a5,s1,800063d4 <_ZL11workerBodyCPv+0x20>
    pprintString("C: dispatch\n");
    80006410:	00003517          	auipc	a0,0x3
    80006414:	db050513          	addi	a0,a0,-592 # 800091c0 <_ZZ12printIntegermE6digits+0xf8>
    80006418:	ffffd097          	auipc	ra,0xffffd
    8000641c:	cb4080e7          	jalr	-844(ra) # 800030cc <_Z12pprintStringPKc>
    __asm__ ("li t1, 7");
    80006420:	00700313          	li	t1,7
    thread_dispatch();
    80006424:	ffffb097          	auipc	ra,0xffffb
    80006428:	e60080e7          	jalr	-416(ra) # 80001284 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    8000642c:	00030913          	mv	s2,t1
    pprintString("C: t1="); printInteger(t1); pprintString("\n");
    80006430:	00003517          	auipc	a0,0x3
    80006434:	da050513          	addi	a0,a0,-608 # 800091d0 <_ZZ12printIntegermE6digits+0x108>
    80006438:	ffffd097          	auipc	ra,0xffffd
    8000643c:	c94080e7          	jalr	-876(ra) # 800030cc <_Z12pprintStringPKc>
    80006440:	00090513          	mv	a0,s2
    80006444:	ffffd097          	auipc	ra,0xffffd
    80006448:	ccc080e7          	jalr	-820(ra) # 80003110 <_Z12printIntegerm>
    8000644c:	00003517          	auipc	a0,0x3
    80006450:	f8c50513          	addi	a0,a0,-116 # 800093d8 <_ZZ12printIntegermE6digits+0x310>
    80006454:	ffffd097          	auipc	ra,0xffffd
    80006458:	c78080e7          	jalr	-904(ra) # 800030cc <_Z12pprintStringPKc>
    uint64 result = fibonacci(12);
    8000645c:	00c00513          	li	a0,12
    80006460:	00000097          	auipc	ra,0x0
    80006464:	db0080e7          	jalr	-592(ra) # 80006210 <_ZL9fibonaccim>
    80006468:	00050913          	mv	s2,a0
    pprintString("C: fibonaci="); printInteger(result); pprintString("\n");
    8000646c:	00003517          	auipc	a0,0x3
    80006470:	d6c50513          	addi	a0,a0,-660 # 800091d8 <_ZZ12printIntegermE6digits+0x110>
    80006474:	ffffd097          	auipc	ra,0xffffd
    80006478:	c58080e7          	jalr	-936(ra) # 800030cc <_Z12pprintStringPKc>
    8000647c:	00090513          	mv	a0,s2
    80006480:	ffffd097          	auipc	ra,0xffffd
    80006484:	c90080e7          	jalr	-880(ra) # 80003110 <_Z12printIntegerm>
    80006488:	00003517          	auipc	a0,0x3
    8000648c:	f5050513          	addi	a0,a0,-176 # 800093d8 <_ZZ12printIntegermE6digits+0x310>
    80006490:	ffffd097          	auipc	ra,0xffffd
    80006494:	c3c080e7          	jalr	-964(ra) # 800030cc <_Z12pprintStringPKc>
    80006498:	0380006f          	j	800064d0 <_ZL11workerBodyCPv+0x11c>
        pprintString("C: i="); printInteger(i); pprintString("\n");
    8000649c:	00003517          	auipc	a0,0x3
    800064a0:	bbc50513          	addi	a0,a0,-1092 # 80009058 <CONSOLE_STATUS+0x48>
    800064a4:	ffffd097          	auipc	ra,0xffffd
    800064a8:	c28080e7          	jalr	-984(ra) # 800030cc <_Z12pprintStringPKc>
    800064ac:	00048513          	mv	a0,s1
    800064b0:	ffffd097          	auipc	ra,0xffffd
    800064b4:	c60080e7          	jalr	-928(ra) # 80003110 <_Z12printIntegerm>
    800064b8:	00003517          	auipc	a0,0x3
    800064bc:	f2050513          	addi	a0,a0,-224 # 800093d8 <_ZZ12printIntegermE6digits+0x310>
    800064c0:	ffffd097          	auipc	ra,0xffffd
    800064c4:	c0c080e7          	jalr	-1012(ra) # 800030cc <_Z12pprintStringPKc>
    for (; i < 6; i++) {
    800064c8:	0014849b          	addiw	s1,s1,1
    800064cc:	0ff4f493          	andi	s1,s1,255
    800064d0:	00500793          	li	a5,5
    800064d4:	fc97f4e3          	bgeu	a5,s1,8000649c <_ZL11workerBodyCPv+0xe8>
    pprintString("C finished!\n");
    800064d8:	00003517          	auipc	a0,0x3
    800064dc:	b8850513          	addi	a0,a0,-1144 # 80009060 <CONSOLE_STATUS+0x50>
    800064e0:	ffffd097          	auipc	ra,0xffffd
    800064e4:	bec080e7          	jalr	-1044(ra) # 800030cc <_Z12pprintStringPKc>
    finishedC = true;
    800064e8:	00100793          	li	a5,1
    800064ec:	00005717          	auipc	a4,0x5
    800064f0:	64f707a3          	sb	a5,1615(a4) # 8000bb3b <_ZL9finishedC>
    thread_dispatch();
    800064f4:	ffffb097          	auipc	ra,0xffffb
    800064f8:	d90080e7          	jalr	-624(ra) # 80001284 <_Z15thread_dispatchv>
}
    800064fc:	01813083          	ld	ra,24(sp)
    80006500:	01013403          	ld	s0,16(sp)
    80006504:	00813483          	ld	s1,8(sp)
    80006508:	00013903          	ld	s2,0(sp)
    8000650c:	02010113          	addi	sp,sp,32
    80006510:	00008067          	ret

0000000080006514 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80006514:	fe010113          	addi	sp,sp,-32
    80006518:	00113c23          	sd	ra,24(sp)
    8000651c:	00813823          	sd	s0,16(sp)
    80006520:	00913423          	sd	s1,8(sp)
    80006524:	01213023          	sd	s2,0(sp)
    80006528:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    8000652c:	00000913          	li	s2,0
    80006530:	0400006f          	j	80006570 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80006534:	ffffb097          	auipc	ra,0xffffb
    80006538:	d50080e7          	jalr	-688(ra) # 80001284 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    8000653c:	00148493          	addi	s1,s1,1
    80006540:	000027b7          	lui	a5,0x2
    80006544:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006548:	0097ee63          	bltu	a5,s1,80006564 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000654c:	00000713          	li	a4,0
    80006550:	000077b7          	lui	a5,0x7
    80006554:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006558:	fce7eee3          	bltu	a5,a4,80006534 <_ZL11workerBodyBPv+0x20>
    8000655c:	00170713          	addi	a4,a4,1
    80006560:	ff1ff06f          	j	80006550 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80006564:	00a00793          	li	a5,10
    80006568:	04f90263          	beq	s2,a5,800065ac <_ZL11workerBodyBPv+0x98>
    for (uint64 i = 0; i < 16; i++) {
    8000656c:	00190913          	addi	s2,s2,1
    80006570:	00f00793          	li	a5,15
    80006574:	0527e063          	bltu	a5,s2,800065b4 <_ZL11workerBodyBPv+0xa0>
        pprintString("B: i="); printInteger(i); pprintString("\n");
    80006578:	00003517          	auipc	a0,0x3
    8000657c:	ac850513          	addi	a0,a0,-1336 # 80009040 <CONSOLE_STATUS+0x30>
    80006580:	ffffd097          	auipc	ra,0xffffd
    80006584:	b4c080e7          	jalr	-1204(ra) # 800030cc <_Z12pprintStringPKc>
    80006588:	00090513          	mv	a0,s2
    8000658c:	ffffd097          	auipc	ra,0xffffd
    80006590:	b84080e7          	jalr	-1148(ra) # 80003110 <_Z12printIntegerm>
    80006594:	00003517          	auipc	a0,0x3
    80006598:	e4450513          	addi	a0,a0,-444 # 800093d8 <_ZZ12printIntegermE6digits+0x310>
    8000659c:	ffffd097          	auipc	ra,0xffffd
    800065a0:	b30080e7          	jalr	-1232(ra) # 800030cc <_Z12pprintStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800065a4:	00000493          	li	s1,0
    800065a8:	f99ff06f          	j	80006540 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    800065ac:	14102ff3          	csrr	t6,sepc
    800065b0:	fbdff06f          	j	8000656c <_ZL11workerBodyBPv+0x58>
    pprintString("B finished!\n");
    800065b4:	00003517          	auipc	a0,0x3
    800065b8:	a9450513          	addi	a0,a0,-1388 # 80009048 <CONSOLE_STATUS+0x38>
    800065bc:	ffffd097          	auipc	ra,0xffffd
    800065c0:	b10080e7          	jalr	-1264(ra) # 800030cc <_Z12pprintStringPKc>
    finishedB = true;
    800065c4:	00100793          	li	a5,1
    800065c8:	00005717          	auipc	a4,0x5
    800065cc:	56f70a23          	sb	a5,1396(a4) # 8000bb3c <_ZL9finishedB>
    thread_dispatch();
    800065d0:	ffffb097          	auipc	ra,0xffffb
    800065d4:	cb4080e7          	jalr	-844(ra) # 80001284 <_Z15thread_dispatchv>
}
    800065d8:	01813083          	ld	ra,24(sp)
    800065dc:	01013403          	ld	s0,16(sp)
    800065e0:	00813483          	ld	s1,8(sp)
    800065e4:	00013903          	ld	s2,0(sp)
    800065e8:	02010113          	addi	sp,sp,32
    800065ec:	00008067          	ret

00000000800065f0 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    800065f0:	fe010113          	addi	sp,sp,-32
    800065f4:	00113c23          	sd	ra,24(sp)
    800065f8:	00813823          	sd	s0,16(sp)
    800065fc:	00913423          	sd	s1,8(sp)
    80006600:	01213023          	sd	s2,0(sp)
    80006604:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80006608:	00000913          	li	s2,0
    8000660c:	0380006f          	j	80006644 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80006610:	ffffb097          	auipc	ra,0xffffb
    80006614:	c74080e7          	jalr	-908(ra) # 80001284 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80006618:	00148493          	addi	s1,s1,1
    8000661c:	000027b7          	lui	a5,0x2
    80006620:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006624:	0097ee63          	bltu	a5,s1,80006640 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006628:	00000713          	li	a4,0
    8000662c:	000077b7          	lui	a5,0x7
    80006630:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006634:	fce7eee3          	bltu	a5,a4,80006610 <_ZL11workerBodyAPv+0x20>
    80006638:	00170713          	addi	a4,a4,1
    8000663c:	ff1ff06f          	j	8000662c <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80006640:	00190913          	addi	s2,s2,1
    80006644:	00900793          	li	a5,9
    80006648:	0327ec63          	bltu	a5,s2,80006680 <_ZL11workerBodyAPv+0x90>
        pprintString("A: i="); printInteger(i); pprintString("\n");
    8000664c:	00003517          	auipc	a0,0x3
    80006650:	9dc50513          	addi	a0,a0,-1572 # 80009028 <CONSOLE_STATUS+0x18>
    80006654:	ffffd097          	auipc	ra,0xffffd
    80006658:	a78080e7          	jalr	-1416(ra) # 800030cc <_Z12pprintStringPKc>
    8000665c:	00090513          	mv	a0,s2
    80006660:	ffffd097          	auipc	ra,0xffffd
    80006664:	ab0080e7          	jalr	-1360(ra) # 80003110 <_Z12printIntegerm>
    80006668:	00003517          	auipc	a0,0x3
    8000666c:	d7050513          	addi	a0,a0,-656 # 800093d8 <_ZZ12printIntegermE6digits+0x310>
    80006670:	ffffd097          	auipc	ra,0xffffd
    80006674:	a5c080e7          	jalr	-1444(ra) # 800030cc <_Z12pprintStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006678:	00000493          	li	s1,0
    8000667c:	fa1ff06f          	j	8000661c <_ZL11workerBodyAPv+0x2c>
    pprintString("A finished!\n");
    80006680:	00003517          	auipc	a0,0x3
    80006684:	9b050513          	addi	a0,a0,-1616 # 80009030 <CONSOLE_STATUS+0x20>
    80006688:	ffffd097          	auipc	ra,0xffffd
    8000668c:	a44080e7          	jalr	-1468(ra) # 800030cc <_Z12pprintStringPKc>
    finishedA = true;
    80006690:	00100793          	li	a5,1
    80006694:	00005717          	auipc	a4,0x5
    80006698:	4af704a3          	sb	a5,1193(a4) # 8000bb3d <_ZL9finishedA>
}
    8000669c:	01813083          	ld	ra,24(sp)
    800066a0:	01013403          	ld	s0,16(sp)
    800066a4:	00813483          	ld	s1,8(sp)
    800066a8:	00013903          	ld	s2,0(sp)
    800066ac:	02010113          	addi	sp,sp,32
    800066b0:	00008067          	ret

00000000800066b4 <_Z16System_Mode_testv>:


void System_Mode_test() {
    800066b4:	fd010113          	addi	sp,sp,-48
    800066b8:	02113423          	sd	ra,40(sp)
    800066bc:	02813023          	sd	s0,32(sp)
    800066c0:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    800066c4:	00000613          	li	a2,0
    800066c8:	00000597          	auipc	a1,0x0
    800066cc:	f2858593          	addi	a1,a1,-216 # 800065f0 <_ZL11workerBodyAPv>
    800066d0:	fd040513          	addi	a0,s0,-48
    800066d4:	ffffb097          	auipc	ra,0xffffb
    800066d8:	b4c080e7          	jalr	-1204(ra) # 80001220 <_Z13thread_createPP3TCBPFvPvES2_>
    pprintString("ThreadA created\n");
    800066dc:	00003517          	auipc	a0,0x3
    800066e0:	b4450513          	addi	a0,a0,-1212 # 80009220 <_ZZ12printIntegermE6digits+0x158>
    800066e4:	ffffd097          	auipc	ra,0xffffd
    800066e8:	9e8080e7          	jalr	-1560(ra) # 800030cc <_Z12pprintStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800066ec:	00000613          	li	a2,0
    800066f0:	00000597          	auipc	a1,0x0
    800066f4:	e2458593          	addi	a1,a1,-476 # 80006514 <_ZL11workerBodyBPv>
    800066f8:	fd840513          	addi	a0,s0,-40
    800066fc:	ffffb097          	auipc	ra,0xffffb
    80006700:	b24080e7          	jalr	-1244(ra) # 80001220 <_Z13thread_createPP3TCBPFvPvES2_>
    pprintString("ThreadB created\n");
    80006704:	00003517          	auipc	a0,0x3
    80006708:	b3450513          	addi	a0,a0,-1228 # 80009238 <_ZZ12printIntegermE6digits+0x170>
    8000670c:	ffffd097          	auipc	ra,0xffffd
    80006710:	9c0080e7          	jalr	-1600(ra) # 800030cc <_Z12pprintStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80006714:	00000613          	li	a2,0
    80006718:	00000597          	auipc	a1,0x0
    8000671c:	c9c58593          	addi	a1,a1,-868 # 800063b4 <_ZL11workerBodyCPv>
    80006720:	fe040513          	addi	a0,s0,-32
    80006724:	ffffb097          	auipc	ra,0xffffb
    80006728:	afc080e7          	jalr	-1284(ra) # 80001220 <_Z13thread_createPP3TCBPFvPvES2_>
    pprintString("ThreadC created\n");
    8000672c:	00003517          	auipc	a0,0x3
    80006730:	b2450513          	addi	a0,a0,-1244 # 80009250 <_ZZ12printIntegermE6digits+0x188>
    80006734:	ffffd097          	auipc	ra,0xffffd
    80006738:	998080e7          	jalr	-1640(ra) # 800030cc <_Z12pprintStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    8000673c:	00000613          	li	a2,0
    80006740:	00000597          	auipc	a1,0x0
    80006744:	b4458593          	addi	a1,a1,-1212 # 80006284 <_ZL11workerBodyDPv>
    80006748:	fe840513          	addi	a0,s0,-24
    8000674c:	ffffb097          	auipc	ra,0xffffb
    80006750:	ad4080e7          	jalr	-1324(ra) # 80001220 <_Z13thread_createPP3TCBPFvPvES2_>
    pprintString("ThreadD created\n");
    80006754:	00003517          	auipc	a0,0x3
    80006758:	b1450513          	addi	a0,a0,-1260 # 80009268 <_ZZ12printIntegermE6digits+0x1a0>
    8000675c:	ffffd097          	auipc	ra,0xffffd
    80006760:	970080e7          	jalr	-1680(ra) # 800030cc <_Z12pprintStringPKc>
    80006764:	00c0006f          	j	80006770 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80006768:	ffffb097          	auipc	ra,0xffffb
    8000676c:	b1c080e7          	jalr	-1252(ra) # 80001284 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80006770:	00005797          	auipc	a5,0x5
    80006774:	3cd7c783          	lbu	a5,973(a5) # 8000bb3d <_ZL9finishedA>
    80006778:	fe0788e3          	beqz	a5,80006768 <_Z16System_Mode_testv+0xb4>
    8000677c:	00005797          	auipc	a5,0x5
    80006780:	3c07c783          	lbu	a5,960(a5) # 8000bb3c <_ZL9finishedB>
    80006784:	fe0782e3          	beqz	a5,80006768 <_Z16System_Mode_testv+0xb4>
    80006788:	00005797          	auipc	a5,0x5
    8000678c:	3b37c783          	lbu	a5,947(a5) # 8000bb3b <_ZL9finishedC>
    80006790:	fc078ce3          	beqz	a5,80006768 <_Z16System_Mode_testv+0xb4>
    80006794:	00005797          	auipc	a5,0x5
    80006798:	3a67c783          	lbu	a5,934(a5) # 8000bb3a <_ZL9finishedD>
    8000679c:	fc0786e3          	beqz	a5,80006768 <_Z16System_Mode_testv+0xb4>
    }

}
    800067a0:	02813083          	ld	ra,40(sp)
    800067a4:	02013403          	ld	s0,32(sp)
    800067a8:	03010113          	addi	sp,sp,48
    800067ac:	00008067          	ret

00000000800067b0 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800067b0:	fe010113          	addi	sp,sp,-32
    800067b4:	00113c23          	sd	ra,24(sp)
    800067b8:	00813823          	sd	s0,16(sp)
    800067bc:	00913423          	sd	s1,8(sp)
    800067c0:	01213023          	sd	s2,0(sp)
    800067c4:	02010413          	addi	s0,sp,32
    800067c8:	00050493          	mv	s1,a0
    800067cc:	00058913          	mv	s2,a1
    800067d0:	0015879b          	addiw	a5,a1,1
    800067d4:	0007851b          	sext.w	a0,a5
    800067d8:	00f4a023          	sw	a5,0(s1)
    800067dc:	0004a823          	sw	zero,16(s1)
    800067e0:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800067e4:	00251513          	slli	a0,a0,0x2
    800067e8:	ffffb097          	auipc	ra,0xffffb
    800067ec:	96c080e7          	jalr	-1684(ra) # 80001154 <_Z9mem_allocm>
    800067f0:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    800067f4:	00000593          	li	a1,0
    800067f8:	02048513          	addi	a0,s1,32
    800067fc:	ffffb097          	auipc	ra,0xffffb
    80006800:	aac080e7          	jalr	-1364(ra) # 800012a8 <_Z8sem_openPP3SEMj>
    sem_open(&spaceAvailable, _cap);
    80006804:	00090593          	mv	a1,s2
    80006808:	01848513          	addi	a0,s1,24
    8000680c:	ffffb097          	auipc	ra,0xffffb
    80006810:	a9c080e7          	jalr	-1380(ra) # 800012a8 <_Z8sem_openPP3SEMj>
    sem_open(&mutexHead, 1);
    80006814:	00100593          	li	a1,1
    80006818:	02848513          	addi	a0,s1,40
    8000681c:	ffffb097          	auipc	ra,0xffffb
    80006820:	a8c080e7          	jalr	-1396(ra) # 800012a8 <_Z8sem_openPP3SEMj>
    sem_open(&mutexTail, 1);
    80006824:	00100593          	li	a1,1
    80006828:	03048513          	addi	a0,s1,48
    8000682c:	ffffb097          	auipc	ra,0xffffb
    80006830:	a7c080e7          	jalr	-1412(ra) # 800012a8 <_Z8sem_openPP3SEMj>
}
    80006834:	01813083          	ld	ra,24(sp)
    80006838:	01013403          	ld	s0,16(sp)
    8000683c:	00813483          	ld	s1,8(sp)
    80006840:	00013903          	ld	s2,0(sp)
    80006844:	02010113          	addi	sp,sp,32
    80006848:	00008067          	ret

000000008000684c <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    8000684c:	fe010113          	addi	sp,sp,-32
    80006850:	00113c23          	sd	ra,24(sp)
    80006854:	00813823          	sd	s0,16(sp)
    80006858:	00913423          	sd	s1,8(sp)
    8000685c:	01213023          	sd	s2,0(sp)
    80006860:	02010413          	addi	s0,sp,32
    80006864:	00050493          	mv	s1,a0
    80006868:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    8000686c:	01853503          	ld	a0,24(a0)
    80006870:	ffffb097          	auipc	ra,0xffffb
    80006874:	a9c080e7          	jalr	-1380(ra) # 8000130c <_Z8sem_waitP3SEM>

    sem_wait(mutexTail);
    80006878:	0304b503          	ld	a0,48(s1)
    8000687c:	ffffb097          	auipc	ra,0xffffb
    80006880:	a90080e7          	jalr	-1392(ra) # 8000130c <_Z8sem_waitP3SEM>
    buffer[tail] = val;
    80006884:	0084b783          	ld	a5,8(s1)
    80006888:	0144a703          	lw	a4,20(s1)
    8000688c:	00271713          	slli	a4,a4,0x2
    80006890:	00e787b3          	add	a5,a5,a4
    80006894:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80006898:	0144a783          	lw	a5,20(s1)
    8000689c:	0017879b          	addiw	a5,a5,1
    800068a0:	0004a703          	lw	a4,0(s1)
    800068a4:	02e7e7bb          	remw	a5,a5,a4
    800068a8:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    800068ac:	0304b503          	ld	a0,48(s1)
    800068b0:	ffffb097          	auipc	ra,0xffffb
    800068b4:	a8c080e7          	jalr	-1396(ra) # 8000133c <_Z10sem_signalP3SEM>

    sem_signal(itemAvailable);
    800068b8:	0204b503          	ld	a0,32(s1)
    800068bc:	ffffb097          	auipc	ra,0xffffb
    800068c0:	a80080e7          	jalr	-1408(ra) # 8000133c <_Z10sem_signalP3SEM>

}
    800068c4:	01813083          	ld	ra,24(sp)
    800068c8:	01013403          	ld	s0,16(sp)
    800068cc:	00813483          	ld	s1,8(sp)
    800068d0:	00013903          	ld	s2,0(sp)
    800068d4:	02010113          	addi	sp,sp,32
    800068d8:	00008067          	ret

00000000800068dc <_ZN6Buffer3getEv>:

int Buffer::get() {
    800068dc:	fe010113          	addi	sp,sp,-32
    800068e0:	00113c23          	sd	ra,24(sp)
    800068e4:	00813823          	sd	s0,16(sp)
    800068e8:	00913423          	sd	s1,8(sp)
    800068ec:	01213023          	sd	s2,0(sp)
    800068f0:	02010413          	addi	s0,sp,32
    800068f4:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    800068f8:	02053503          	ld	a0,32(a0)
    800068fc:	ffffb097          	auipc	ra,0xffffb
    80006900:	a10080e7          	jalr	-1520(ra) # 8000130c <_Z8sem_waitP3SEM>

    sem_wait(mutexHead);
    80006904:	0284b503          	ld	a0,40(s1)
    80006908:	ffffb097          	auipc	ra,0xffffb
    8000690c:	a04080e7          	jalr	-1532(ra) # 8000130c <_Z8sem_waitP3SEM>

    int ret = buffer[head];
    80006910:	0084b703          	ld	a4,8(s1)
    80006914:	0104a783          	lw	a5,16(s1)
    80006918:	00279693          	slli	a3,a5,0x2
    8000691c:	00d70733          	add	a4,a4,a3
    80006920:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006924:	0017879b          	addiw	a5,a5,1
    80006928:	0004a703          	lw	a4,0(s1)
    8000692c:	02e7e7bb          	remw	a5,a5,a4
    80006930:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80006934:	0284b503          	ld	a0,40(s1)
    80006938:	ffffb097          	auipc	ra,0xffffb
    8000693c:	a04080e7          	jalr	-1532(ra) # 8000133c <_Z10sem_signalP3SEM>

    sem_signal(spaceAvailable);
    80006940:	0184b503          	ld	a0,24(s1)
    80006944:	ffffb097          	auipc	ra,0xffffb
    80006948:	9f8080e7          	jalr	-1544(ra) # 8000133c <_Z10sem_signalP3SEM>

    return ret;
}
    8000694c:	00090513          	mv	a0,s2
    80006950:	01813083          	ld	ra,24(sp)
    80006954:	01013403          	ld	s0,16(sp)
    80006958:	00813483          	ld	s1,8(sp)
    8000695c:	00013903          	ld	s2,0(sp)
    80006960:	02010113          	addi	sp,sp,32
    80006964:	00008067          	ret

0000000080006968 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80006968:	fe010113          	addi	sp,sp,-32
    8000696c:	00113c23          	sd	ra,24(sp)
    80006970:	00813823          	sd	s0,16(sp)
    80006974:	00913423          	sd	s1,8(sp)
    80006978:	01213023          	sd	s2,0(sp)
    8000697c:	02010413          	addi	s0,sp,32
    80006980:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80006984:	02853503          	ld	a0,40(a0)
    80006988:	ffffb097          	auipc	ra,0xffffb
    8000698c:	984080e7          	jalr	-1660(ra) # 8000130c <_Z8sem_waitP3SEM>
    sem_wait(mutexTail);
    80006990:	0304b503          	ld	a0,48(s1)
    80006994:	ffffb097          	auipc	ra,0xffffb
    80006998:	978080e7          	jalr	-1672(ra) # 8000130c <_Z8sem_waitP3SEM>

    if (tail >= head) {
    8000699c:	0144a783          	lw	a5,20(s1)
    800069a0:	0104a903          	lw	s2,16(s1)
    800069a4:	0327ce63          	blt	a5,s2,800069e0 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    800069a8:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    800069ac:	0304b503          	ld	a0,48(s1)
    800069b0:	ffffb097          	auipc	ra,0xffffb
    800069b4:	98c080e7          	jalr	-1652(ra) # 8000133c <_Z10sem_signalP3SEM>
    sem_signal(mutexHead);
    800069b8:	0284b503          	ld	a0,40(s1)
    800069bc:	ffffb097          	auipc	ra,0xffffb
    800069c0:	980080e7          	jalr	-1664(ra) # 8000133c <_Z10sem_signalP3SEM>

    return ret;
}
    800069c4:	00090513          	mv	a0,s2
    800069c8:	01813083          	ld	ra,24(sp)
    800069cc:	01013403          	ld	s0,16(sp)
    800069d0:	00813483          	ld	s1,8(sp)
    800069d4:	00013903          	ld	s2,0(sp)
    800069d8:	02010113          	addi	sp,sp,32
    800069dc:	00008067          	ret
        ret = cap - head + tail;
    800069e0:	0004a703          	lw	a4,0(s1)
    800069e4:	4127093b          	subw	s2,a4,s2
    800069e8:	00f9093b          	addw	s2,s2,a5
    800069ec:	fc1ff06f          	j	800069ac <_ZN6Buffer6getCntEv+0x44>

00000000800069f0 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    800069f0:	fe010113          	addi	sp,sp,-32
    800069f4:	00113c23          	sd	ra,24(sp)
    800069f8:	00813823          	sd	s0,16(sp)
    800069fc:	00913423          	sd	s1,8(sp)
    80006a00:	02010413          	addi	s0,sp,32
    80006a04:	00050493          	mv	s1,a0
    putc('\n');
    80006a08:	00a00513          	li	a0,10
    80006a0c:	ffffb097          	auipc	ra,0xffffb
    80006a10:	9bc080e7          	jalr	-1604(ra) # 800013c8 <_Z4putcc>
    printString("Buffer deleted!\n");
    80006a14:	00003517          	auipc	a0,0x3
    80006a18:	86c50513          	addi	a0,a0,-1940 # 80009280 <_ZZ12printIntegermE6digits+0x1b8>
    80006a1c:	fffff097          	auipc	ra,0xfffff
    80006a20:	ea0080e7          	jalr	-352(ra) # 800058bc <_Z11printStringPKc>
    while (getCnt() > 0) {
    80006a24:	00048513          	mv	a0,s1
    80006a28:	00000097          	auipc	ra,0x0
    80006a2c:	f40080e7          	jalr	-192(ra) # 80006968 <_ZN6Buffer6getCntEv>
    80006a30:	02a05c63          	blez	a0,80006a68 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80006a34:	0084b783          	ld	a5,8(s1)
    80006a38:	0104a703          	lw	a4,16(s1)
    80006a3c:	00271713          	slli	a4,a4,0x2
    80006a40:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80006a44:	0007c503          	lbu	a0,0(a5)
    80006a48:	ffffb097          	auipc	ra,0xffffb
    80006a4c:	980080e7          	jalr	-1664(ra) # 800013c8 <_Z4putcc>
        head = (head + 1) % cap;
    80006a50:	0104a783          	lw	a5,16(s1)
    80006a54:	0017879b          	addiw	a5,a5,1
    80006a58:	0004a703          	lw	a4,0(s1)
    80006a5c:	02e7e7bb          	remw	a5,a5,a4
    80006a60:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80006a64:	fc1ff06f          	j	80006a24 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80006a68:	02100513          	li	a0,33
    80006a6c:	ffffb097          	auipc	ra,0xffffb
    80006a70:	95c080e7          	jalr	-1700(ra) # 800013c8 <_Z4putcc>
    putc('\n');
    80006a74:	00a00513          	li	a0,10
    80006a78:	ffffb097          	auipc	ra,0xffffb
    80006a7c:	950080e7          	jalr	-1712(ra) # 800013c8 <_Z4putcc>
    mem_free(buffer);
    80006a80:	0084b503          	ld	a0,8(s1)
    80006a84:	ffffa097          	auipc	ra,0xffffa
    80006a88:	710080e7          	jalr	1808(ra) # 80001194 <_Z8mem_freePv>
    sem_close(itemAvailable);
    80006a8c:	0204b503          	ld	a0,32(s1)
    80006a90:	ffffb097          	auipc	ra,0xffffb
    80006a94:	84c080e7          	jalr	-1972(ra) # 800012dc <_Z9sem_closeP3SEM>
    sem_close(spaceAvailable);
    80006a98:	0184b503          	ld	a0,24(s1)
    80006a9c:	ffffb097          	auipc	ra,0xffffb
    80006aa0:	840080e7          	jalr	-1984(ra) # 800012dc <_Z9sem_closeP3SEM>
    sem_close(mutexTail);
    80006aa4:	0304b503          	ld	a0,48(s1)
    80006aa8:	ffffb097          	auipc	ra,0xffffb
    80006aac:	834080e7          	jalr	-1996(ra) # 800012dc <_Z9sem_closeP3SEM>
    sem_close(mutexHead);
    80006ab0:	0284b503          	ld	a0,40(s1)
    80006ab4:	ffffb097          	auipc	ra,0xffffb
    80006ab8:	828080e7          	jalr	-2008(ra) # 800012dc <_Z9sem_closeP3SEM>
}
    80006abc:	01813083          	ld	ra,24(sp)
    80006ac0:	01013403          	ld	s0,16(sp)
    80006ac4:	00813483          	ld	s1,8(sp)
    80006ac8:	02010113          	addi	sp,sp,32
    80006acc:	00008067          	ret

0000000080006ad0 <start>:
    80006ad0:	ff010113          	addi	sp,sp,-16
    80006ad4:	00813423          	sd	s0,8(sp)
    80006ad8:	01010413          	addi	s0,sp,16
    80006adc:	300027f3          	csrr	a5,mstatus
    80006ae0:	ffffe737          	lui	a4,0xffffe
    80006ae4:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff1a5f>
    80006ae8:	00e7f7b3          	and	a5,a5,a4
    80006aec:	00001737          	lui	a4,0x1
    80006af0:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80006af4:	00e7e7b3          	or	a5,a5,a4
    80006af8:	30079073          	csrw	mstatus,a5
    80006afc:	00000797          	auipc	a5,0x0
    80006b00:	16078793          	addi	a5,a5,352 # 80006c5c <system_main>
    80006b04:	34179073          	csrw	mepc,a5
    80006b08:	00000793          	li	a5,0
    80006b0c:	18079073          	csrw	satp,a5
    80006b10:	000107b7          	lui	a5,0x10
    80006b14:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80006b18:	30279073          	csrw	medeleg,a5
    80006b1c:	30379073          	csrw	mideleg,a5
    80006b20:	104027f3          	csrr	a5,sie
    80006b24:	2227e793          	ori	a5,a5,546
    80006b28:	10479073          	csrw	sie,a5
    80006b2c:	fff00793          	li	a5,-1
    80006b30:	00a7d793          	srli	a5,a5,0xa
    80006b34:	3b079073          	csrw	pmpaddr0,a5
    80006b38:	00f00793          	li	a5,15
    80006b3c:	3a079073          	csrw	pmpcfg0,a5
    80006b40:	f14027f3          	csrr	a5,mhartid
    80006b44:	0200c737          	lui	a4,0x200c
    80006b48:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006b4c:	0007869b          	sext.w	a3,a5
    80006b50:	00269713          	slli	a4,a3,0x2
    80006b54:	000f4637          	lui	a2,0xf4
    80006b58:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006b5c:	00d70733          	add	a4,a4,a3
    80006b60:	0037979b          	slliw	a5,a5,0x3
    80006b64:	020046b7          	lui	a3,0x2004
    80006b68:	00d787b3          	add	a5,a5,a3
    80006b6c:	00c585b3          	add	a1,a1,a2
    80006b70:	00371693          	slli	a3,a4,0x3
    80006b74:	00005717          	auipc	a4,0x5
    80006b78:	fcc70713          	addi	a4,a4,-52 # 8000bb40 <timer_scratch>
    80006b7c:	00b7b023          	sd	a1,0(a5)
    80006b80:	00d70733          	add	a4,a4,a3
    80006b84:	00f73c23          	sd	a5,24(a4)
    80006b88:	02c73023          	sd	a2,32(a4)
    80006b8c:	34071073          	csrw	mscratch,a4
    80006b90:	00000797          	auipc	a5,0x0
    80006b94:	6e078793          	addi	a5,a5,1760 # 80007270 <timervec>
    80006b98:	30579073          	csrw	mtvec,a5
    80006b9c:	300027f3          	csrr	a5,mstatus
    80006ba0:	0087e793          	ori	a5,a5,8
    80006ba4:	30079073          	csrw	mstatus,a5
    80006ba8:	304027f3          	csrr	a5,mie
    80006bac:	0807e793          	ori	a5,a5,128
    80006bb0:	30479073          	csrw	mie,a5
    80006bb4:	f14027f3          	csrr	a5,mhartid
    80006bb8:	0007879b          	sext.w	a5,a5
    80006bbc:	00078213          	mv	tp,a5
    80006bc0:	30200073          	mret
    80006bc4:	00813403          	ld	s0,8(sp)
    80006bc8:	01010113          	addi	sp,sp,16
    80006bcc:	00008067          	ret

0000000080006bd0 <timerinit>:
    80006bd0:	ff010113          	addi	sp,sp,-16
    80006bd4:	00813423          	sd	s0,8(sp)
    80006bd8:	01010413          	addi	s0,sp,16
    80006bdc:	f14027f3          	csrr	a5,mhartid
    80006be0:	0200c737          	lui	a4,0x200c
    80006be4:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006be8:	0007869b          	sext.w	a3,a5
    80006bec:	00269713          	slli	a4,a3,0x2
    80006bf0:	000f4637          	lui	a2,0xf4
    80006bf4:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006bf8:	00d70733          	add	a4,a4,a3
    80006bfc:	0037979b          	slliw	a5,a5,0x3
    80006c00:	020046b7          	lui	a3,0x2004
    80006c04:	00d787b3          	add	a5,a5,a3
    80006c08:	00c585b3          	add	a1,a1,a2
    80006c0c:	00371693          	slli	a3,a4,0x3
    80006c10:	00005717          	auipc	a4,0x5
    80006c14:	f3070713          	addi	a4,a4,-208 # 8000bb40 <timer_scratch>
    80006c18:	00b7b023          	sd	a1,0(a5)
    80006c1c:	00d70733          	add	a4,a4,a3
    80006c20:	00f73c23          	sd	a5,24(a4)
    80006c24:	02c73023          	sd	a2,32(a4)
    80006c28:	34071073          	csrw	mscratch,a4
    80006c2c:	00000797          	auipc	a5,0x0
    80006c30:	64478793          	addi	a5,a5,1604 # 80007270 <timervec>
    80006c34:	30579073          	csrw	mtvec,a5
    80006c38:	300027f3          	csrr	a5,mstatus
    80006c3c:	0087e793          	ori	a5,a5,8
    80006c40:	30079073          	csrw	mstatus,a5
    80006c44:	304027f3          	csrr	a5,mie
    80006c48:	0807e793          	ori	a5,a5,128
    80006c4c:	30479073          	csrw	mie,a5
    80006c50:	00813403          	ld	s0,8(sp)
    80006c54:	01010113          	addi	sp,sp,16
    80006c58:	00008067          	ret

0000000080006c5c <system_main>:
    80006c5c:	fe010113          	addi	sp,sp,-32
    80006c60:	00813823          	sd	s0,16(sp)
    80006c64:	00913423          	sd	s1,8(sp)
    80006c68:	00113c23          	sd	ra,24(sp)
    80006c6c:	02010413          	addi	s0,sp,32
    80006c70:	00000097          	auipc	ra,0x0
    80006c74:	0c4080e7          	jalr	196(ra) # 80006d34 <cpuid>
    80006c78:	00005497          	auipc	s1,0x5
    80006c7c:	dc848493          	addi	s1,s1,-568 # 8000ba40 <started>
    80006c80:	02050263          	beqz	a0,80006ca4 <system_main+0x48>
    80006c84:	0004a783          	lw	a5,0(s1)
    80006c88:	0007879b          	sext.w	a5,a5
    80006c8c:	fe078ce3          	beqz	a5,80006c84 <system_main+0x28>
    80006c90:	0ff0000f          	fence
    80006c94:	00003517          	auipc	a0,0x3
    80006c98:	8bc50513          	addi	a0,a0,-1860 # 80009550 <_ZZ12printIntegermE6digits+0x488>
    80006c9c:	00001097          	auipc	ra,0x1
    80006ca0:	a70080e7          	jalr	-1424(ra) # 8000770c <panic>
    80006ca4:	00001097          	auipc	ra,0x1
    80006ca8:	9c4080e7          	jalr	-1596(ra) # 80007668 <consoleinit>
    80006cac:	00001097          	auipc	ra,0x1
    80006cb0:	150080e7          	jalr	336(ra) # 80007dfc <printfinit>
    80006cb4:	00002517          	auipc	a0,0x2
    80006cb8:	72450513          	addi	a0,a0,1828 # 800093d8 <_ZZ12printIntegermE6digits+0x310>
    80006cbc:	00001097          	auipc	ra,0x1
    80006cc0:	aac080e7          	jalr	-1364(ra) # 80007768 <__printf>
    80006cc4:	00003517          	auipc	a0,0x3
    80006cc8:	85c50513          	addi	a0,a0,-1956 # 80009520 <_ZZ12printIntegermE6digits+0x458>
    80006ccc:	00001097          	auipc	ra,0x1
    80006cd0:	a9c080e7          	jalr	-1380(ra) # 80007768 <__printf>
    80006cd4:	00002517          	auipc	a0,0x2
    80006cd8:	70450513          	addi	a0,a0,1796 # 800093d8 <_ZZ12printIntegermE6digits+0x310>
    80006cdc:	00001097          	auipc	ra,0x1
    80006ce0:	a8c080e7          	jalr	-1396(ra) # 80007768 <__printf>
    80006ce4:	00001097          	auipc	ra,0x1
    80006ce8:	4a4080e7          	jalr	1188(ra) # 80008188 <kinit>
    80006cec:	00000097          	auipc	ra,0x0
    80006cf0:	148080e7          	jalr	328(ra) # 80006e34 <trapinit>
    80006cf4:	00000097          	auipc	ra,0x0
    80006cf8:	16c080e7          	jalr	364(ra) # 80006e60 <trapinithart>
    80006cfc:	00000097          	auipc	ra,0x0
    80006d00:	5b4080e7          	jalr	1460(ra) # 800072b0 <plicinit>
    80006d04:	00000097          	auipc	ra,0x0
    80006d08:	5d4080e7          	jalr	1492(ra) # 800072d8 <plicinithart>
    80006d0c:	00000097          	auipc	ra,0x0
    80006d10:	078080e7          	jalr	120(ra) # 80006d84 <userinit>
    80006d14:	0ff0000f          	fence
    80006d18:	00100793          	li	a5,1
    80006d1c:	00003517          	auipc	a0,0x3
    80006d20:	81c50513          	addi	a0,a0,-2020 # 80009538 <_ZZ12printIntegermE6digits+0x470>
    80006d24:	00f4a023          	sw	a5,0(s1)
    80006d28:	00001097          	auipc	ra,0x1
    80006d2c:	a40080e7          	jalr	-1472(ra) # 80007768 <__printf>
    80006d30:	0000006f          	j	80006d30 <system_main+0xd4>

0000000080006d34 <cpuid>:
    80006d34:	ff010113          	addi	sp,sp,-16
    80006d38:	00813423          	sd	s0,8(sp)
    80006d3c:	01010413          	addi	s0,sp,16
    80006d40:	00020513          	mv	a0,tp
    80006d44:	00813403          	ld	s0,8(sp)
    80006d48:	0005051b          	sext.w	a0,a0
    80006d4c:	01010113          	addi	sp,sp,16
    80006d50:	00008067          	ret

0000000080006d54 <mycpu>:
    80006d54:	ff010113          	addi	sp,sp,-16
    80006d58:	00813423          	sd	s0,8(sp)
    80006d5c:	01010413          	addi	s0,sp,16
    80006d60:	00020793          	mv	a5,tp
    80006d64:	00813403          	ld	s0,8(sp)
    80006d68:	0007879b          	sext.w	a5,a5
    80006d6c:	00779793          	slli	a5,a5,0x7
    80006d70:	00006517          	auipc	a0,0x6
    80006d74:	e0050513          	addi	a0,a0,-512 # 8000cb70 <cpus>
    80006d78:	00f50533          	add	a0,a0,a5
    80006d7c:	01010113          	addi	sp,sp,16
    80006d80:	00008067          	ret

0000000080006d84 <userinit>:
    80006d84:	ff010113          	addi	sp,sp,-16
    80006d88:	00813423          	sd	s0,8(sp)
    80006d8c:	01010413          	addi	s0,sp,16
    80006d90:	00813403          	ld	s0,8(sp)
    80006d94:	01010113          	addi	sp,sp,16
    80006d98:	ffffb317          	auipc	t1,0xffffb
    80006d9c:	03030067          	jr	48(t1) # 80001dc8 <main>

0000000080006da0 <either_copyout>:
    80006da0:	ff010113          	addi	sp,sp,-16
    80006da4:	00813023          	sd	s0,0(sp)
    80006da8:	00113423          	sd	ra,8(sp)
    80006dac:	01010413          	addi	s0,sp,16
    80006db0:	02051663          	bnez	a0,80006ddc <either_copyout+0x3c>
    80006db4:	00058513          	mv	a0,a1
    80006db8:	00060593          	mv	a1,a2
    80006dbc:	0006861b          	sext.w	a2,a3
    80006dc0:	00002097          	auipc	ra,0x2
    80006dc4:	c54080e7          	jalr	-940(ra) # 80008a14 <__memmove>
    80006dc8:	00813083          	ld	ra,8(sp)
    80006dcc:	00013403          	ld	s0,0(sp)
    80006dd0:	00000513          	li	a0,0
    80006dd4:	01010113          	addi	sp,sp,16
    80006dd8:	00008067          	ret
    80006ddc:	00002517          	auipc	a0,0x2
    80006de0:	79c50513          	addi	a0,a0,1948 # 80009578 <_ZZ12printIntegermE6digits+0x4b0>
    80006de4:	00001097          	auipc	ra,0x1
    80006de8:	928080e7          	jalr	-1752(ra) # 8000770c <panic>

0000000080006dec <either_copyin>:
    80006dec:	ff010113          	addi	sp,sp,-16
    80006df0:	00813023          	sd	s0,0(sp)
    80006df4:	00113423          	sd	ra,8(sp)
    80006df8:	01010413          	addi	s0,sp,16
    80006dfc:	02059463          	bnez	a1,80006e24 <either_copyin+0x38>
    80006e00:	00060593          	mv	a1,a2
    80006e04:	0006861b          	sext.w	a2,a3
    80006e08:	00002097          	auipc	ra,0x2
    80006e0c:	c0c080e7          	jalr	-1012(ra) # 80008a14 <__memmove>
    80006e10:	00813083          	ld	ra,8(sp)
    80006e14:	00013403          	ld	s0,0(sp)
    80006e18:	00000513          	li	a0,0
    80006e1c:	01010113          	addi	sp,sp,16
    80006e20:	00008067          	ret
    80006e24:	00002517          	auipc	a0,0x2
    80006e28:	77c50513          	addi	a0,a0,1916 # 800095a0 <_ZZ12printIntegermE6digits+0x4d8>
    80006e2c:	00001097          	auipc	ra,0x1
    80006e30:	8e0080e7          	jalr	-1824(ra) # 8000770c <panic>

0000000080006e34 <trapinit>:
    80006e34:	ff010113          	addi	sp,sp,-16
    80006e38:	00813423          	sd	s0,8(sp)
    80006e3c:	01010413          	addi	s0,sp,16
    80006e40:	00813403          	ld	s0,8(sp)
    80006e44:	00002597          	auipc	a1,0x2
    80006e48:	78458593          	addi	a1,a1,1924 # 800095c8 <_ZZ12printIntegermE6digits+0x500>
    80006e4c:	00006517          	auipc	a0,0x6
    80006e50:	da450513          	addi	a0,a0,-604 # 8000cbf0 <tickslock>
    80006e54:	01010113          	addi	sp,sp,16
    80006e58:	00001317          	auipc	t1,0x1
    80006e5c:	5c030067          	jr	1472(t1) # 80008418 <initlock>

0000000080006e60 <trapinithart>:
    80006e60:	ff010113          	addi	sp,sp,-16
    80006e64:	00813423          	sd	s0,8(sp)
    80006e68:	01010413          	addi	s0,sp,16
    80006e6c:	00000797          	auipc	a5,0x0
    80006e70:	2f478793          	addi	a5,a5,756 # 80007160 <kernelvec>
    80006e74:	10579073          	csrw	stvec,a5
    80006e78:	00813403          	ld	s0,8(sp)
    80006e7c:	01010113          	addi	sp,sp,16
    80006e80:	00008067          	ret

0000000080006e84 <usertrap>:
    80006e84:	ff010113          	addi	sp,sp,-16
    80006e88:	00813423          	sd	s0,8(sp)
    80006e8c:	01010413          	addi	s0,sp,16
    80006e90:	00813403          	ld	s0,8(sp)
    80006e94:	01010113          	addi	sp,sp,16
    80006e98:	00008067          	ret

0000000080006e9c <usertrapret>:
    80006e9c:	ff010113          	addi	sp,sp,-16
    80006ea0:	00813423          	sd	s0,8(sp)
    80006ea4:	01010413          	addi	s0,sp,16
    80006ea8:	00813403          	ld	s0,8(sp)
    80006eac:	01010113          	addi	sp,sp,16
    80006eb0:	00008067          	ret

0000000080006eb4 <kerneltrap>:
    80006eb4:	fe010113          	addi	sp,sp,-32
    80006eb8:	00813823          	sd	s0,16(sp)
    80006ebc:	00113c23          	sd	ra,24(sp)
    80006ec0:	00913423          	sd	s1,8(sp)
    80006ec4:	02010413          	addi	s0,sp,32
    80006ec8:	142025f3          	csrr	a1,scause
    80006ecc:	100027f3          	csrr	a5,sstatus
    80006ed0:	0027f793          	andi	a5,a5,2
    80006ed4:	10079c63          	bnez	a5,80006fec <kerneltrap+0x138>
    80006ed8:	142027f3          	csrr	a5,scause
    80006edc:	0207ce63          	bltz	a5,80006f18 <kerneltrap+0x64>
    80006ee0:	00002517          	auipc	a0,0x2
    80006ee4:	73050513          	addi	a0,a0,1840 # 80009610 <_ZZ12printIntegermE6digits+0x548>
    80006ee8:	00001097          	auipc	ra,0x1
    80006eec:	880080e7          	jalr	-1920(ra) # 80007768 <__printf>
    80006ef0:	141025f3          	csrr	a1,sepc
    80006ef4:	14302673          	csrr	a2,stval
    80006ef8:	00002517          	auipc	a0,0x2
    80006efc:	72850513          	addi	a0,a0,1832 # 80009620 <_ZZ12printIntegermE6digits+0x558>
    80006f00:	00001097          	auipc	ra,0x1
    80006f04:	868080e7          	jalr	-1944(ra) # 80007768 <__printf>
    80006f08:	00002517          	auipc	a0,0x2
    80006f0c:	73050513          	addi	a0,a0,1840 # 80009638 <_ZZ12printIntegermE6digits+0x570>
    80006f10:	00000097          	auipc	ra,0x0
    80006f14:	7fc080e7          	jalr	2044(ra) # 8000770c <panic>
    80006f18:	0ff7f713          	andi	a4,a5,255
    80006f1c:	00900693          	li	a3,9
    80006f20:	04d70063          	beq	a4,a3,80006f60 <kerneltrap+0xac>
    80006f24:	fff00713          	li	a4,-1
    80006f28:	03f71713          	slli	a4,a4,0x3f
    80006f2c:	00170713          	addi	a4,a4,1
    80006f30:	fae798e3          	bne	a5,a4,80006ee0 <kerneltrap+0x2c>
    80006f34:	00000097          	auipc	ra,0x0
    80006f38:	e00080e7          	jalr	-512(ra) # 80006d34 <cpuid>
    80006f3c:	06050663          	beqz	a0,80006fa8 <kerneltrap+0xf4>
    80006f40:	144027f3          	csrr	a5,sip
    80006f44:	ffd7f793          	andi	a5,a5,-3
    80006f48:	14479073          	csrw	sip,a5
    80006f4c:	01813083          	ld	ra,24(sp)
    80006f50:	01013403          	ld	s0,16(sp)
    80006f54:	00813483          	ld	s1,8(sp)
    80006f58:	02010113          	addi	sp,sp,32
    80006f5c:	00008067          	ret
    80006f60:	00000097          	auipc	ra,0x0
    80006f64:	3c4080e7          	jalr	964(ra) # 80007324 <plic_claim>
    80006f68:	00a00793          	li	a5,10
    80006f6c:	00050493          	mv	s1,a0
    80006f70:	06f50863          	beq	a0,a5,80006fe0 <kerneltrap+0x12c>
    80006f74:	fc050ce3          	beqz	a0,80006f4c <kerneltrap+0x98>
    80006f78:	00050593          	mv	a1,a0
    80006f7c:	00002517          	auipc	a0,0x2
    80006f80:	67450513          	addi	a0,a0,1652 # 800095f0 <_ZZ12printIntegermE6digits+0x528>
    80006f84:	00000097          	auipc	ra,0x0
    80006f88:	7e4080e7          	jalr	2020(ra) # 80007768 <__printf>
    80006f8c:	01013403          	ld	s0,16(sp)
    80006f90:	01813083          	ld	ra,24(sp)
    80006f94:	00048513          	mv	a0,s1
    80006f98:	00813483          	ld	s1,8(sp)
    80006f9c:	02010113          	addi	sp,sp,32
    80006fa0:	00000317          	auipc	t1,0x0
    80006fa4:	3bc30067          	jr	956(t1) # 8000735c <plic_complete>
    80006fa8:	00006517          	auipc	a0,0x6
    80006fac:	c4850513          	addi	a0,a0,-952 # 8000cbf0 <tickslock>
    80006fb0:	00001097          	auipc	ra,0x1
    80006fb4:	48c080e7          	jalr	1164(ra) # 8000843c <acquire>
    80006fb8:	00005717          	auipc	a4,0x5
    80006fbc:	a8c70713          	addi	a4,a4,-1396 # 8000ba44 <ticks>
    80006fc0:	00072783          	lw	a5,0(a4)
    80006fc4:	00006517          	auipc	a0,0x6
    80006fc8:	c2c50513          	addi	a0,a0,-980 # 8000cbf0 <tickslock>
    80006fcc:	0017879b          	addiw	a5,a5,1
    80006fd0:	00f72023          	sw	a5,0(a4)
    80006fd4:	00001097          	auipc	ra,0x1
    80006fd8:	534080e7          	jalr	1332(ra) # 80008508 <release>
    80006fdc:	f65ff06f          	j	80006f40 <kerneltrap+0x8c>
    80006fe0:	00001097          	auipc	ra,0x1
    80006fe4:	090080e7          	jalr	144(ra) # 80008070 <uartintr>
    80006fe8:	fa5ff06f          	j	80006f8c <kerneltrap+0xd8>
    80006fec:	00002517          	auipc	a0,0x2
    80006ff0:	5e450513          	addi	a0,a0,1508 # 800095d0 <_ZZ12printIntegermE6digits+0x508>
    80006ff4:	00000097          	auipc	ra,0x0
    80006ff8:	718080e7          	jalr	1816(ra) # 8000770c <panic>

0000000080006ffc <clockintr>:
    80006ffc:	fe010113          	addi	sp,sp,-32
    80007000:	00813823          	sd	s0,16(sp)
    80007004:	00913423          	sd	s1,8(sp)
    80007008:	00113c23          	sd	ra,24(sp)
    8000700c:	02010413          	addi	s0,sp,32
    80007010:	00006497          	auipc	s1,0x6
    80007014:	be048493          	addi	s1,s1,-1056 # 8000cbf0 <tickslock>
    80007018:	00048513          	mv	a0,s1
    8000701c:	00001097          	auipc	ra,0x1
    80007020:	420080e7          	jalr	1056(ra) # 8000843c <acquire>
    80007024:	00005717          	auipc	a4,0x5
    80007028:	a2070713          	addi	a4,a4,-1504 # 8000ba44 <ticks>
    8000702c:	00072783          	lw	a5,0(a4)
    80007030:	01013403          	ld	s0,16(sp)
    80007034:	01813083          	ld	ra,24(sp)
    80007038:	00048513          	mv	a0,s1
    8000703c:	0017879b          	addiw	a5,a5,1
    80007040:	00813483          	ld	s1,8(sp)
    80007044:	00f72023          	sw	a5,0(a4)
    80007048:	02010113          	addi	sp,sp,32
    8000704c:	00001317          	auipc	t1,0x1
    80007050:	4bc30067          	jr	1212(t1) # 80008508 <release>

0000000080007054 <devintr>:
    80007054:	142027f3          	csrr	a5,scause
    80007058:	00000513          	li	a0,0
    8000705c:	0007c463          	bltz	a5,80007064 <devintr+0x10>
    80007060:	00008067          	ret
    80007064:	fe010113          	addi	sp,sp,-32
    80007068:	00813823          	sd	s0,16(sp)
    8000706c:	00113c23          	sd	ra,24(sp)
    80007070:	00913423          	sd	s1,8(sp)
    80007074:	02010413          	addi	s0,sp,32
    80007078:	0ff7f713          	andi	a4,a5,255
    8000707c:	00900693          	li	a3,9
    80007080:	04d70c63          	beq	a4,a3,800070d8 <devintr+0x84>
    80007084:	fff00713          	li	a4,-1
    80007088:	03f71713          	slli	a4,a4,0x3f
    8000708c:	00170713          	addi	a4,a4,1
    80007090:	00e78c63          	beq	a5,a4,800070a8 <devintr+0x54>
    80007094:	01813083          	ld	ra,24(sp)
    80007098:	01013403          	ld	s0,16(sp)
    8000709c:	00813483          	ld	s1,8(sp)
    800070a0:	02010113          	addi	sp,sp,32
    800070a4:	00008067          	ret
    800070a8:	00000097          	auipc	ra,0x0
    800070ac:	c8c080e7          	jalr	-884(ra) # 80006d34 <cpuid>
    800070b0:	06050663          	beqz	a0,8000711c <devintr+0xc8>
    800070b4:	144027f3          	csrr	a5,sip
    800070b8:	ffd7f793          	andi	a5,a5,-3
    800070bc:	14479073          	csrw	sip,a5
    800070c0:	01813083          	ld	ra,24(sp)
    800070c4:	01013403          	ld	s0,16(sp)
    800070c8:	00813483          	ld	s1,8(sp)
    800070cc:	00200513          	li	a0,2
    800070d0:	02010113          	addi	sp,sp,32
    800070d4:	00008067          	ret
    800070d8:	00000097          	auipc	ra,0x0
    800070dc:	24c080e7          	jalr	588(ra) # 80007324 <plic_claim>
    800070e0:	00a00793          	li	a5,10
    800070e4:	00050493          	mv	s1,a0
    800070e8:	06f50663          	beq	a0,a5,80007154 <devintr+0x100>
    800070ec:	00100513          	li	a0,1
    800070f0:	fa0482e3          	beqz	s1,80007094 <devintr+0x40>
    800070f4:	00048593          	mv	a1,s1
    800070f8:	00002517          	auipc	a0,0x2
    800070fc:	4f850513          	addi	a0,a0,1272 # 800095f0 <_ZZ12printIntegermE6digits+0x528>
    80007100:	00000097          	auipc	ra,0x0
    80007104:	668080e7          	jalr	1640(ra) # 80007768 <__printf>
    80007108:	00048513          	mv	a0,s1
    8000710c:	00000097          	auipc	ra,0x0
    80007110:	250080e7          	jalr	592(ra) # 8000735c <plic_complete>
    80007114:	00100513          	li	a0,1
    80007118:	f7dff06f          	j	80007094 <devintr+0x40>
    8000711c:	00006517          	auipc	a0,0x6
    80007120:	ad450513          	addi	a0,a0,-1324 # 8000cbf0 <tickslock>
    80007124:	00001097          	auipc	ra,0x1
    80007128:	318080e7          	jalr	792(ra) # 8000843c <acquire>
    8000712c:	00005717          	auipc	a4,0x5
    80007130:	91870713          	addi	a4,a4,-1768 # 8000ba44 <ticks>
    80007134:	00072783          	lw	a5,0(a4)
    80007138:	00006517          	auipc	a0,0x6
    8000713c:	ab850513          	addi	a0,a0,-1352 # 8000cbf0 <tickslock>
    80007140:	0017879b          	addiw	a5,a5,1
    80007144:	00f72023          	sw	a5,0(a4)
    80007148:	00001097          	auipc	ra,0x1
    8000714c:	3c0080e7          	jalr	960(ra) # 80008508 <release>
    80007150:	f65ff06f          	j	800070b4 <devintr+0x60>
    80007154:	00001097          	auipc	ra,0x1
    80007158:	f1c080e7          	jalr	-228(ra) # 80008070 <uartintr>
    8000715c:	fadff06f          	j	80007108 <devintr+0xb4>

0000000080007160 <kernelvec>:
    80007160:	f0010113          	addi	sp,sp,-256
    80007164:	00113023          	sd	ra,0(sp)
    80007168:	00213423          	sd	sp,8(sp)
    8000716c:	00313823          	sd	gp,16(sp)
    80007170:	00413c23          	sd	tp,24(sp)
    80007174:	02513023          	sd	t0,32(sp)
    80007178:	02613423          	sd	t1,40(sp)
    8000717c:	02713823          	sd	t2,48(sp)
    80007180:	02813c23          	sd	s0,56(sp)
    80007184:	04913023          	sd	s1,64(sp)
    80007188:	04a13423          	sd	a0,72(sp)
    8000718c:	04b13823          	sd	a1,80(sp)
    80007190:	04c13c23          	sd	a2,88(sp)
    80007194:	06d13023          	sd	a3,96(sp)
    80007198:	06e13423          	sd	a4,104(sp)
    8000719c:	06f13823          	sd	a5,112(sp)
    800071a0:	07013c23          	sd	a6,120(sp)
    800071a4:	09113023          	sd	a7,128(sp)
    800071a8:	09213423          	sd	s2,136(sp)
    800071ac:	09313823          	sd	s3,144(sp)
    800071b0:	09413c23          	sd	s4,152(sp)
    800071b4:	0b513023          	sd	s5,160(sp)
    800071b8:	0b613423          	sd	s6,168(sp)
    800071bc:	0b713823          	sd	s7,176(sp)
    800071c0:	0b813c23          	sd	s8,184(sp)
    800071c4:	0d913023          	sd	s9,192(sp)
    800071c8:	0da13423          	sd	s10,200(sp)
    800071cc:	0db13823          	sd	s11,208(sp)
    800071d0:	0dc13c23          	sd	t3,216(sp)
    800071d4:	0fd13023          	sd	t4,224(sp)
    800071d8:	0fe13423          	sd	t5,232(sp)
    800071dc:	0ff13823          	sd	t6,240(sp)
    800071e0:	cd5ff0ef          	jal	ra,80006eb4 <kerneltrap>
    800071e4:	00013083          	ld	ra,0(sp)
    800071e8:	00813103          	ld	sp,8(sp)
    800071ec:	01013183          	ld	gp,16(sp)
    800071f0:	02013283          	ld	t0,32(sp)
    800071f4:	02813303          	ld	t1,40(sp)
    800071f8:	03013383          	ld	t2,48(sp)
    800071fc:	03813403          	ld	s0,56(sp)
    80007200:	04013483          	ld	s1,64(sp)
    80007204:	04813503          	ld	a0,72(sp)
    80007208:	05013583          	ld	a1,80(sp)
    8000720c:	05813603          	ld	a2,88(sp)
    80007210:	06013683          	ld	a3,96(sp)
    80007214:	06813703          	ld	a4,104(sp)
    80007218:	07013783          	ld	a5,112(sp)
    8000721c:	07813803          	ld	a6,120(sp)
    80007220:	08013883          	ld	a7,128(sp)
    80007224:	08813903          	ld	s2,136(sp)
    80007228:	09013983          	ld	s3,144(sp)
    8000722c:	09813a03          	ld	s4,152(sp)
    80007230:	0a013a83          	ld	s5,160(sp)
    80007234:	0a813b03          	ld	s6,168(sp)
    80007238:	0b013b83          	ld	s7,176(sp)
    8000723c:	0b813c03          	ld	s8,184(sp)
    80007240:	0c013c83          	ld	s9,192(sp)
    80007244:	0c813d03          	ld	s10,200(sp)
    80007248:	0d013d83          	ld	s11,208(sp)
    8000724c:	0d813e03          	ld	t3,216(sp)
    80007250:	0e013e83          	ld	t4,224(sp)
    80007254:	0e813f03          	ld	t5,232(sp)
    80007258:	0f013f83          	ld	t6,240(sp)
    8000725c:	10010113          	addi	sp,sp,256
    80007260:	10200073          	sret
    80007264:	00000013          	nop
    80007268:	00000013          	nop
    8000726c:	00000013          	nop

0000000080007270 <timervec>:
    80007270:	34051573          	csrrw	a0,mscratch,a0
    80007274:	00b53023          	sd	a1,0(a0)
    80007278:	00c53423          	sd	a2,8(a0)
    8000727c:	00d53823          	sd	a3,16(a0)
    80007280:	01853583          	ld	a1,24(a0)
    80007284:	02053603          	ld	a2,32(a0)
    80007288:	0005b683          	ld	a3,0(a1)
    8000728c:	00c686b3          	add	a3,a3,a2
    80007290:	00d5b023          	sd	a3,0(a1)
    80007294:	00200593          	li	a1,2
    80007298:	14459073          	csrw	sip,a1
    8000729c:	01053683          	ld	a3,16(a0)
    800072a0:	00853603          	ld	a2,8(a0)
    800072a4:	00053583          	ld	a1,0(a0)
    800072a8:	34051573          	csrrw	a0,mscratch,a0
    800072ac:	30200073          	mret

00000000800072b0 <plicinit>:
    800072b0:	ff010113          	addi	sp,sp,-16
    800072b4:	00813423          	sd	s0,8(sp)
    800072b8:	01010413          	addi	s0,sp,16
    800072bc:	00813403          	ld	s0,8(sp)
    800072c0:	0c0007b7          	lui	a5,0xc000
    800072c4:	00100713          	li	a4,1
    800072c8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800072cc:	00e7a223          	sw	a4,4(a5)
    800072d0:	01010113          	addi	sp,sp,16
    800072d4:	00008067          	ret

00000000800072d8 <plicinithart>:
    800072d8:	ff010113          	addi	sp,sp,-16
    800072dc:	00813023          	sd	s0,0(sp)
    800072e0:	00113423          	sd	ra,8(sp)
    800072e4:	01010413          	addi	s0,sp,16
    800072e8:	00000097          	auipc	ra,0x0
    800072ec:	a4c080e7          	jalr	-1460(ra) # 80006d34 <cpuid>
    800072f0:	0085171b          	slliw	a4,a0,0x8
    800072f4:	0c0027b7          	lui	a5,0xc002
    800072f8:	00e787b3          	add	a5,a5,a4
    800072fc:	40200713          	li	a4,1026
    80007300:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80007304:	00813083          	ld	ra,8(sp)
    80007308:	00013403          	ld	s0,0(sp)
    8000730c:	00d5151b          	slliw	a0,a0,0xd
    80007310:	0c2017b7          	lui	a5,0xc201
    80007314:	00a78533          	add	a0,a5,a0
    80007318:	00052023          	sw	zero,0(a0)
    8000731c:	01010113          	addi	sp,sp,16
    80007320:	00008067          	ret

0000000080007324 <plic_claim>:
    80007324:	ff010113          	addi	sp,sp,-16
    80007328:	00813023          	sd	s0,0(sp)
    8000732c:	00113423          	sd	ra,8(sp)
    80007330:	01010413          	addi	s0,sp,16
    80007334:	00000097          	auipc	ra,0x0
    80007338:	a00080e7          	jalr	-1536(ra) # 80006d34 <cpuid>
    8000733c:	00813083          	ld	ra,8(sp)
    80007340:	00013403          	ld	s0,0(sp)
    80007344:	00d5151b          	slliw	a0,a0,0xd
    80007348:	0c2017b7          	lui	a5,0xc201
    8000734c:	00a78533          	add	a0,a5,a0
    80007350:	00452503          	lw	a0,4(a0)
    80007354:	01010113          	addi	sp,sp,16
    80007358:	00008067          	ret

000000008000735c <plic_complete>:
    8000735c:	fe010113          	addi	sp,sp,-32
    80007360:	00813823          	sd	s0,16(sp)
    80007364:	00913423          	sd	s1,8(sp)
    80007368:	00113c23          	sd	ra,24(sp)
    8000736c:	02010413          	addi	s0,sp,32
    80007370:	00050493          	mv	s1,a0
    80007374:	00000097          	auipc	ra,0x0
    80007378:	9c0080e7          	jalr	-1600(ra) # 80006d34 <cpuid>
    8000737c:	01813083          	ld	ra,24(sp)
    80007380:	01013403          	ld	s0,16(sp)
    80007384:	00d5179b          	slliw	a5,a0,0xd
    80007388:	0c201737          	lui	a4,0xc201
    8000738c:	00f707b3          	add	a5,a4,a5
    80007390:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80007394:	00813483          	ld	s1,8(sp)
    80007398:	02010113          	addi	sp,sp,32
    8000739c:	00008067          	ret

00000000800073a0 <consolewrite>:
    800073a0:	fb010113          	addi	sp,sp,-80
    800073a4:	04813023          	sd	s0,64(sp)
    800073a8:	04113423          	sd	ra,72(sp)
    800073ac:	02913c23          	sd	s1,56(sp)
    800073b0:	03213823          	sd	s2,48(sp)
    800073b4:	03313423          	sd	s3,40(sp)
    800073b8:	03413023          	sd	s4,32(sp)
    800073bc:	01513c23          	sd	s5,24(sp)
    800073c0:	05010413          	addi	s0,sp,80
    800073c4:	06c05c63          	blez	a2,8000743c <consolewrite+0x9c>
    800073c8:	00060993          	mv	s3,a2
    800073cc:	00050a13          	mv	s4,a0
    800073d0:	00058493          	mv	s1,a1
    800073d4:	00000913          	li	s2,0
    800073d8:	fff00a93          	li	s5,-1
    800073dc:	01c0006f          	j	800073f8 <consolewrite+0x58>
    800073e0:	fbf44503          	lbu	a0,-65(s0)
    800073e4:	0019091b          	addiw	s2,s2,1
    800073e8:	00148493          	addi	s1,s1,1
    800073ec:	00001097          	auipc	ra,0x1
    800073f0:	a9c080e7          	jalr	-1380(ra) # 80007e88 <uartputc>
    800073f4:	03298063          	beq	s3,s2,80007414 <consolewrite+0x74>
    800073f8:	00048613          	mv	a2,s1
    800073fc:	00100693          	li	a3,1
    80007400:	000a0593          	mv	a1,s4
    80007404:	fbf40513          	addi	a0,s0,-65
    80007408:	00000097          	auipc	ra,0x0
    8000740c:	9e4080e7          	jalr	-1564(ra) # 80006dec <either_copyin>
    80007410:	fd5518e3          	bne	a0,s5,800073e0 <consolewrite+0x40>
    80007414:	04813083          	ld	ra,72(sp)
    80007418:	04013403          	ld	s0,64(sp)
    8000741c:	03813483          	ld	s1,56(sp)
    80007420:	02813983          	ld	s3,40(sp)
    80007424:	02013a03          	ld	s4,32(sp)
    80007428:	01813a83          	ld	s5,24(sp)
    8000742c:	00090513          	mv	a0,s2
    80007430:	03013903          	ld	s2,48(sp)
    80007434:	05010113          	addi	sp,sp,80
    80007438:	00008067          	ret
    8000743c:	00000913          	li	s2,0
    80007440:	fd5ff06f          	j	80007414 <consolewrite+0x74>

0000000080007444 <consoleread>:
    80007444:	f9010113          	addi	sp,sp,-112
    80007448:	06813023          	sd	s0,96(sp)
    8000744c:	04913c23          	sd	s1,88(sp)
    80007450:	05213823          	sd	s2,80(sp)
    80007454:	05313423          	sd	s3,72(sp)
    80007458:	05413023          	sd	s4,64(sp)
    8000745c:	03513c23          	sd	s5,56(sp)
    80007460:	03613823          	sd	s6,48(sp)
    80007464:	03713423          	sd	s7,40(sp)
    80007468:	03813023          	sd	s8,32(sp)
    8000746c:	06113423          	sd	ra,104(sp)
    80007470:	01913c23          	sd	s9,24(sp)
    80007474:	07010413          	addi	s0,sp,112
    80007478:	00060b93          	mv	s7,a2
    8000747c:	00050913          	mv	s2,a0
    80007480:	00058c13          	mv	s8,a1
    80007484:	00060b1b          	sext.w	s6,a2
    80007488:	00005497          	auipc	s1,0x5
    8000748c:	79048493          	addi	s1,s1,1936 # 8000cc18 <cons>
    80007490:	00400993          	li	s3,4
    80007494:	fff00a13          	li	s4,-1
    80007498:	00a00a93          	li	s5,10
    8000749c:	05705e63          	blez	s7,800074f8 <consoleread+0xb4>
    800074a0:	09c4a703          	lw	a4,156(s1)
    800074a4:	0984a783          	lw	a5,152(s1)
    800074a8:	0007071b          	sext.w	a4,a4
    800074ac:	08e78463          	beq	a5,a4,80007534 <consoleread+0xf0>
    800074b0:	07f7f713          	andi	a4,a5,127
    800074b4:	00e48733          	add	a4,s1,a4
    800074b8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800074bc:	0017869b          	addiw	a3,a5,1
    800074c0:	08d4ac23          	sw	a3,152(s1)
    800074c4:	00070c9b          	sext.w	s9,a4
    800074c8:	0b370663          	beq	a4,s3,80007574 <consoleread+0x130>
    800074cc:	00100693          	li	a3,1
    800074d0:	f9f40613          	addi	a2,s0,-97
    800074d4:	000c0593          	mv	a1,s8
    800074d8:	00090513          	mv	a0,s2
    800074dc:	f8e40fa3          	sb	a4,-97(s0)
    800074e0:	00000097          	auipc	ra,0x0
    800074e4:	8c0080e7          	jalr	-1856(ra) # 80006da0 <either_copyout>
    800074e8:	01450863          	beq	a0,s4,800074f8 <consoleread+0xb4>
    800074ec:	001c0c13          	addi	s8,s8,1
    800074f0:	fffb8b9b          	addiw	s7,s7,-1
    800074f4:	fb5c94e3          	bne	s9,s5,8000749c <consoleread+0x58>
    800074f8:	000b851b          	sext.w	a0,s7
    800074fc:	06813083          	ld	ra,104(sp)
    80007500:	06013403          	ld	s0,96(sp)
    80007504:	05813483          	ld	s1,88(sp)
    80007508:	05013903          	ld	s2,80(sp)
    8000750c:	04813983          	ld	s3,72(sp)
    80007510:	04013a03          	ld	s4,64(sp)
    80007514:	03813a83          	ld	s5,56(sp)
    80007518:	02813b83          	ld	s7,40(sp)
    8000751c:	02013c03          	ld	s8,32(sp)
    80007520:	01813c83          	ld	s9,24(sp)
    80007524:	40ab053b          	subw	a0,s6,a0
    80007528:	03013b03          	ld	s6,48(sp)
    8000752c:	07010113          	addi	sp,sp,112
    80007530:	00008067          	ret
    80007534:	00001097          	auipc	ra,0x1
    80007538:	1d8080e7          	jalr	472(ra) # 8000870c <push_on>
    8000753c:	0984a703          	lw	a4,152(s1)
    80007540:	09c4a783          	lw	a5,156(s1)
    80007544:	0007879b          	sext.w	a5,a5
    80007548:	fef70ce3          	beq	a4,a5,80007540 <consoleread+0xfc>
    8000754c:	00001097          	auipc	ra,0x1
    80007550:	234080e7          	jalr	564(ra) # 80008780 <pop_on>
    80007554:	0984a783          	lw	a5,152(s1)
    80007558:	07f7f713          	andi	a4,a5,127
    8000755c:	00e48733          	add	a4,s1,a4
    80007560:	01874703          	lbu	a4,24(a4)
    80007564:	0017869b          	addiw	a3,a5,1
    80007568:	08d4ac23          	sw	a3,152(s1)
    8000756c:	00070c9b          	sext.w	s9,a4
    80007570:	f5371ee3          	bne	a4,s3,800074cc <consoleread+0x88>
    80007574:	000b851b          	sext.w	a0,s7
    80007578:	f96bf2e3          	bgeu	s7,s6,800074fc <consoleread+0xb8>
    8000757c:	08f4ac23          	sw	a5,152(s1)
    80007580:	f7dff06f          	j	800074fc <consoleread+0xb8>

0000000080007584 <consputc>:
    80007584:	10000793          	li	a5,256
    80007588:	00f50663          	beq	a0,a5,80007594 <consputc+0x10>
    8000758c:	00001317          	auipc	t1,0x1
    80007590:	9f430067          	jr	-1548(t1) # 80007f80 <uartputc_sync>
    80007594:	ff010113          	addi	sp,sp,-16
    80007598:	00113423          	sd	ra,8(sp)
    8000759c:	00813023          	sd	s0,0(sp)
    800075a0:	01010413          	addi	s0,sp,16
    800075a4:	00800513          	li	a0,8
    800075a8:	00001097          	auipc	ra,0x1
    800075ac:	9d8080e7          	jalr	-1576(ra) # 80007f80 <uartputc_sync>
    800075b0:	02000513          	li	a0,32
    800075b4:	00001097          	auipc	ra,0x1
    800075b8:	9cc080e7          	jalr	-1588(ra) # 80007f80 <uartputc_sync>
    800075bc:	00013403          	ld	s0,0(sp)
    800075c0:	00813083          	ld	ra,8(sp)
    800075c4:	00800513          	li	a0,8
    800075c8:	01010113          	addi	sp,sp,16
    800075cc:	00001317          	auipc	t1,0x1
    800075d0:	9b430067          	jr	-1612(t1) # 80007f80 <uartputc_sync>

00000000800075d4 <consoleintr>:
    800075d4:	fe010113          	addi	sp,sp,-32
    800075d8:	00813823          	sd	s0,16(sp)
    800075dc:	00913423          	sd	s1,8(sp)
    800075e0:	01213023          	sd	s2,0(sp)
    800075e4:	00113c23          	sd	ra,24(sp)
    800075e8:	02010413          	addi	s0,sp,32
    800075ec:	00005917          	auipc	s2,0x5
    800075f0:	62c90913          	addi	s2,s2,1580 # 8000cc18 <cons>
    800075f4:	00050493          	mv	s1,a0
    800075f8:	00090513          	mv	a0,s2
    800075fc:	00001097          	auipc	ra,0x1
    80007600:	e40080e7          	jalr	-448(ra) # 8000843c <acquire>
    80007604:	02048c63          	beqz	s1,8000763c <consoleintr+0x68>
    80007608:	0a092783          	lw	a5,160(s2)
    8000760c:	09892703          	lw	a4,152(s2)
    80007610:	07f00693          	li	a3,127
    80007614:	40e7873b          	subw	a4,a5,a4
    80007618:	02e6e263          	bltu	a3,a4,8000763c <consoleintr+0x68>
    8000761c:	00d00713          	li	a4,13
    80007620:	04e48063          	beq	s1,a4,80007660 <consoleintr+0x8c>
    80007624:	07f7f713          	andi	a4,a5,127
    80007628:	00e90733          	add	a4,s2,a4
    8000762c:	0017879b          	addiw	a5,a5,1
    80007630:	0af92023          	sw	a5,160(s2)
    80007634:	00970c23          	sb	s1,24(a4)
    80007638:	08f92e23          	sw	a5,156(s2)
    8000763c:	01013403          	ld	s0,16(sp)
    80007640:	01813083          	ld	ra,24(sp)
    80007644:	00813483          	ld	s1,8(sp)
    80007648:	00013903          	ld	s2,0(sp)
    8000764c:	00005517          	auipc	a0,0x5
    80007650:	5cc50513          	addi	a0,a0,1484 # 8000cc18 <cons>
    80007654:	02010113          	addi	sp,sp,32
    80007658:	00001317          	auipc	t1,0x1
    8000765c:	eb030067          	jr	-336(t1) # 80008508 <release>
    80007660:	00a00493          	li	s1,10
    80007664:	fc1ff06f          	j	80007624 <consoleintr+0x50>

0000000080007668 <consoleinit>:
    80007668:	fe010113          	addi	sp,sp,-32
    8000766c:	00113c23          	sd	ra,24(sp)
    80007670:	00813823          	sd	s0,16(sp)
    80007674:	00913423          	sd	s1,8(sp)
    80007678:	02010413          	addi	s0,sp,32
    8000767c:	00005497          	auipc	s1,0x5
    80007680:	59c48493          	addi	s1,s1,1436 # 8000cc18 <cons>
    80007684:	00048513          	mv	a0,s1
    80007688:	00002597          	auipc	a1,0x2
    8000768c:	fc058593          	addi	a1,a1,-64 # 80009648 <_ZZ12printIntegermE6digits+0x580>
    80007690:	00001097          	auipc	ra,0x1
    80007694:	d88080e7          	jalr	-632(ra) # 80008418 <initlock>
    80007698:	00000097          	auipc	ra,0x0
    8000769c:	7ac080e7          	jalr	1964(ra) # 80007e44 <uartinit>
    800076a0:	01813083          	ld	ra,24(sp)
    800076a4:	01013403          	ld	s0,16(sp)
    800076a8:	00000797          	auipc	a5,0x0
    800076ac:	d9c78793          	addi	a5,a5,-612 # 80007444 <consoleread>
    800076b0:	0af4bc23          	sd	a5,184(s1)
    800076b4:	00000797          	auipc	a5,0x0
    800076b8:	cec78793          	addi	a5,a5,-788 # 800073a0 <consolewrite>
    800076bc:	0cf4b023          	sd	a5,192(s1)
    800076c0:	00813483          	ld	s1,8(sp)
    800076c4:	02010113          	addi	sp,sp,32
    800076c8:	00008067          	ret

00000000800076cc <console_read>:
    800076cc:	ff010113          	addi	sp,sp,-16
    800076d0:	00813423          	sd	s0,8(sp)
    800076d4:	01010413          	addi	s0,sp,16
    800076d8:	00813403          	ld	s0,8(sp)
    800076dc:	00005317          	auipc	t1,0x5
    800076e0:	5f433303          	ld	t1,1524(t1) # 8000ccd0 <devsw+0x10>
    800076e4:	01010113          	addi	sp,sp,16
    800076e8:	00030067          	jr	t1

00000000800076ec <console_write>:
    800076ec:	ff010113          	addi	sp,sp,-16
    800076f0:	00813423          	sd	s0,8(sp)
    800076f4:	01010413          	addi	s0,sp,16
    800076f8:	00813403          	ld	s0,8(sp)
    800076fc:	00005317          	auipc	t1,0x5
    80007700:	5dc33303          	ld	t1,1500(t1) # 8000ccd8 <devsw+0x18>
    80007704:	01010113          	addi	sp,sp,16
    80007708:	00030067          	jr	t1

000000008000770c <panic>:
    8000770c:	fe010113          	addi	sp,sp,-32
    80007710:	00113c23          	sd	ra,24(sp)
    80007714:	00813823          	sd	s0,16(sp)
    80007718:	00913423          	sd	s1,8(sp)
    8000771c:	02010413          	addi	s0,sp,32
    80007720:	00050493          	mv	s1,a0
    80007724:	00002517          	auipc	a0,0x2
    80007728:	f2c50513          	addi	a0,a0,-212 # 80009650 <_ZZ12printIntegermE6digits+0x588>
    8000772c:	00005797          	auipc	a5,0x5
    80007730:	6407a623          	sw	zero,1612(a5) # 8000cd78 <pr+0x18>
    80007734:	00000097          	auipc	ra,0x0
    80007738:	034080e7          	jalr	52(ra) # 80007768 <__printf>
    8000773c:	00048513          	mv	a0,s1
    80007740:	00000097          	auipc	ra,0x0
    80007744:	028080e7          	jalr	40(ra) # 80007768 <__printf>
    80007748:	00002517          	auipc	a0,0x2
    8000774c:	c9050513          	addi	a0,a0,-880 # 800093d8 <_ZZ12printIntegermE6digits+0x310>
    80007750:	00000097          	auipc	ra,0x0
    80007754:	018080e7          	jalr	24(ra) # 80007768 <__printf>
    80007758:	00100793          	li	a5,1
    8000775c:	00004717          	auipc	a4,0x4
    80007760:	2ef72623          	sw	a5,748(a4) # 8000ba48 <panicked>
    80007764:	0000006f          	j	80007764 <panic+0x58>

0000000080007768 <__printf>:
    80007768:	f3010113          	addi	sp,sp,-208
    8000776c:	08813023          	sd	s0,128(sp)
    80007770:	07313423          	sd	s3,104(sp)
    80007774:	09010413          	addi	s0,sp,144
    80007778:	05813023          	sd	s8,64(sp)
    8000777c:	08113423          	sd	ra,136(sp)
    80007780:	06913c23          	sd	s1,120(sp)
    80007784:	07213823          	sd	s2,112(sp)
    80007788:	07413023          	sd	s4,96(sp)
    8000778c:	05513c23          	sd	s5,88(sp)
    80007790:	05613823          	sd	s6,80(sp)
    80007794:	05713423          	sd	s7,72(sp)
    80007798:	03913c23          	sd	s9,56(sp)
    8000779c:	03a13823          	sd	s10,48(sp)
    800077a0:	03b13423          	sd	s11,40(sp)
    800077a4:	00005317          	auipc	t1,0x5
    800077a8:	5bc30313          	addi	t1,t1,1468 # 8000cd60 <pr>
    800077ac:	01832c03          	lw	s8,24(t1)
    800077b0:	00b43423          	sd	a1,8(s0)
    800077b4:	00c43823          	sd	a2,16(s0)
    800077b8:	00d43c23          	sd	a3,24(s0)
    800077bc:	02e43023          	sd	a4,32(s0)
    800077c0:	02f43423          	sd	a5,40(s0)
    800077c4:	03043823          	sd	a6,48(s0)
    800077c8:	03143c23          	sd	a7,56(s0)
    800077cc:	00050993          	mv	s3,a0
    800077d0:	4a0c1663          	bnez	s8,80007c7c <__printf+0x514>
    800077d4:	60098c63          	beqz	s3,80007dec <__printf+0x684>
    800077d8:	0009c503          	lbu	a0,0(s3)
    800077dc:	00840793          	addi	a5,s0,8
    800077e0:	f6f43c23          	sd	a5,-136(s0)
    800077e4:	00000493          	li	s1,0
    800077e8:	22050063          	beqz	a0,80007a08 <__printf+0x2a0>
    800077ec:	00002a37          	lui	s4,0x2
    800077f0:	00018ab7          	lui	s5,0x18
    800077f4:	000f4b37          	lui	s6,0xf4
    800077f8:	00989bb7          	lui	s7,0x989
    800077fc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80007800:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80007804:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80007808:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000780c:	00148c9b          	addiw	s9,s1,1
    80007810:	02500793          	li	a5,37
    80007814:	01998933          	add	s2,s3,s9
    80007818:	38f51263          	bne	a0,a5,80007b9c <__printf+0x434>
    8000781c:	00094783          	lbu	a5,0(s2)
    80007820:	00078c9b          	sext.w	s9,a5
    80007824:	1e078263          	beqz	a5,80007a08 <__printf+0x2a0>
    80007828:	0024849b          	addiw	s1,s1,2
    8000782c:	07000713          	li	a4,112
    80007830:	00998933          	add	s2,s3,s1
    80007834:	38e78a63          	beq	a5,a4,80007bc8 <__printf+0x460>
    80007838:	20f76863          	bltu	a4,a5,80007a48 <__printf+0x2e0>
    8000783c:	42a78863          	beq	a5,a0,80007c6c <__printf+0x504>
    80007840:	06400713          	li	a4,100
    80007844:	40e79663          	bne	a5,a4,80007c50 <__printf+0x4e8>
    80007848:	f7843783          	ld	a5,-136(s0)
    8000784c:	0007a603          	lw	a2,0(a5)
    80007850:	00878793          	addi	a5,a5,8
    80007854:	f6f43c23          	sd	a5,-136(s0)
    80007858:	42064a63          	bltz	a2,80007c8c <__printf+0x524>
    8000785c:	00a00713          	li	a4,10
    80007860:	02e677bb          	remuw	a5,a2,a4
    80007864:	00002d97          	auipc	s11,0x2
    80007868:	e14d8d93          	addi	s11,s11,-492 # 80009678 <digits>
    8000786c:	00900593          	li	a1,9
    80007870:	0006051b          	sext.w	a0,a2
    80007874:	00000c93          	li	s9,0
    80007878:	02079793          	slli	a5,a5,0x20
    8000787c:	0207d793          	srli	a5,a5,0x20
    80007880:	00fd87b3          	add	a5,s11,a5
    80007884:	0007c783          	lbu	a5,0(a5)
    80007888:	02e656bb          	divuw	a3,a2,a4
    8000788c:	f8f40023          	sb	a5,-128(s0)
    80007890:	14c5d863          	bge	a1,a2,800079e0 <__printf+0x278>
    80007894:	06300593          	li	a1,99
    80007898:	00100c93          	li	s9,1
    8000789c:	02e6f7bb          	remuw	a5,a3,a4
    800078a0:	02079793          	slli	a5,a5,0x20
    800078a4:	0207d793          	srli	a5,a5,0x20
    800078a8:	00fd87b3          	add	a5,s11,a5
    800078ac:	0007c783          	lbu	a5,0(a5)
    800078b0:	02e6d73b          	divuw	a4,a3,a4
    800078b4:	f8f400a3          	sb	a5,-127(s0)
    800078b8:	12a5f463          	bgeu	a1,a0,800079e0 <__printf+0x278>
    800078bc:	00a00693          	li	a3,10
    800078c0:	00900593          	li	a1,9
    800078c4:	02d777bb          	remuw	a5,a4,a3
    800078c8:	02079793          	slli	a5,a5,0x20
    800078cc:	0207d793          	srli	a5,a5,0x20
    800078d0:	00fd87b3          	add	a5,s11,a5
    800078d4:	0007c503          	lbu	a0,0(a5)
    800078d8:	02d757bb          	divuw	a5,a4,a3
    800078dc:	f8a40123          	sb	a0,-126(s0)
    800078e0:	48e5f263          	bgeu	a1,a4,80007d64 <__printf+0x5fc>
    800078e4:	06300513          	li	a0,99
    800078e8:	02d7f5bb          	remuw	a1,a5,a3
    800078ec:	02059593          	slli	a1,a1,0x20
    800078f0:	0205d593          	srli	a1,a1,0x20
    800078f4:	00bd85b3          	add	a1,s11,a1
    800078f8:	0005c583          	lbu	a1,0(a1)
    800078fc:	02d7d7bb          	divuw	a5,a5,a3
    80007900:	f8b401a3          	sb	a1,-125(s0)
    80007904:	48e57263          	bgeu	a0,a4,80007d88 <__printf+0x620>
    80007908:	3e700513          	li	a0,999
    8000790c:	02d7f5bb          	remuw	a1,a5,a3
    80007910:	02059593          	slli	a1,a1,0x20
    80007914:	0205d593          	srli	a1,a1,0x20
    80007918:	00bd85b3          	add	a1,s11,a1
    8000791c:	0005c583          	lbu	a1,0(a1)
    80007920:	02d7d7bb          	divuw	a5,a5,a3
    80007924:	f8b40223          	sb	a1,-124(s0)
    80007928:	46e57663          	bgeu	a0,a4,80007d94 <__printf+0x62c>
    8000792c:	02d7f5bb          	remuw	a1,a5,a3
    80007930:	02059593          	slli	a1,a1,0x20
    80007934:	0205d593          	srli	a1,a1,0x20
    80007938:	00bd85b3          	add	a1,s11,a1
    8000793c:	0005c583          	lbu	a1,0(a1)
    80007940:	02d7d7bb          	divuw	a5,a5,a3
    80007944:	f8b402a3          	sb	a1,-123(s0)
    80007948:	46ea7863          	bgeu	s4,a4,80007db8 <__printf+0x650>
    8000794c:	02d7f5bb          	remuw	a1,a5,a3
    80007950:	02059593          	slli	a1,a1,0x20
    80007954:	0205d593          	srli	a1,a1,0x20
    80007958:	00bd85b3          	add	a1,s11,a1
    8000795c:	0005c583          	lbu	a1,0(a1)
    80007960:	02d7d7bb          	divuw	a5,a5,a3
    80007964:	f8b40323          	sb	a1,-122(s0)
    80007968:	3eeaf863          	bgeu	s5,a4,80007d58 <__printf+0x5f0>
    8000796c:	02d7f5bb          	remuw	a1,a5,a3
    80007970:	02059593          	slli	a1,a1,0x20
    80007974:	0205d593          	srli	a1,a1,0x20
    80007978:	00bd85b3          	add	a1,s11,a1
    8000797c:	0005c583          	lbu	a1,0(a1)
    80007980:	02d7d7bb          	divuw	a5,a5,a3
    80007984:	f8b403a3          	sb	a1,-121(s0)
    80007988:	42eb7e63          	bgeu	s6,a4,80007dc4 <__printf+0x65c>
    8000798c:	02d7f5bb          	remuw	a1,a5,a3
    80007990:	02059593          	slli	a1,a1,0x20
    80007994:	0205d593          	srli	a1,a1,0x20
    80007998:	00bd85b3          	add	a1,s11,a1
    8000799c:	0005c583          	lbu	a1,0(a1)
    800079a0:	02d7d7bb          	divuw	a5,a5,a3
    800079a4:	f8b40423          	sb	a1,-120(s0)
    800079a8:	42ebfc63          	bgeu	s7,a4,80007de0 <__printf+0x678>
    800079ac:	02079793          	slli	a5,a5,0x20
    800079b0:	0207d793          	srli	a5,a5,0x20
    800079b4:	00fd8db3          	add	s11,s11,a5
    800079b8:	000dc703          	lbu	a4,0(s11)
    800079bc:	00a00793          	li	a5,10
    800079c0:	00900c93          	li	s9,9
    800079c4:	f8e404a3          	sb	a4,-119(s0)
    800079c8:	00065c63          	bgez	a2,800079e0 <__printf+0x278>
    800079cc:	f9040713          	addi	a4,s0,-112
    800079d0:	00f70733          	add	a4,a4,a5
    800079d4:	02d00693          	li	a3,45
    800079d8:	fed70823          	sb	a3,-16(a4)
    800079dc:	00078c93          	mv	s9,a5
    800079e0:	f8040793          	addi	a5,s0,-128
    800079e4:	01978cb3          	add	s9,a5,s9
    800079e8:	f7f40d13          	addi	s10,s0,-129
    800079ec:	000cc503          	lbu	a0,0(s9)
    800079f0:	fffc8c93          	addi	s9,s9,-1
    800079f4:	00000097          	auipc	ra,0x0
    800079f8:	b90080e7          	jalr	-1136(ra) # 80007584 <consputc>
    800079fc:	ffac98e3          	bne	s9,s10,800079ec <__printf+0x284>
    80007a00:	00094503          	lbu	a0,0(s2)
    80007a04:	e00514e3          	bnez	a0,8000780c <__printf+0xa4>
    80007a08:	1a0c1663          	bnez	s8,80007bb4 <__printf+0x44c>
    80007a0c:	08813083          	ld	ra,136(sp)
    80007a10:	08013403          	ld	s0,128(sp)
    80007a14:	07813483          	ld	s1,120(sp)
    80007a18:	07013903          	ld	s2,112(sp)
    80007a1c:	06813983          	ld	s3,104(sp)
    80007a20:	06013a03          	ld	s4,96(sp)
    80007a24:	05813a83          	ld	s5,88(sp)
    80007a28:	05013b03          	ld	s6,80(sp)
    80007a2c:	04813b83          	ld	s7,72(sp)
    80007a30:	04013c03          	ld	s8,64(sp)
    80007a34:	03813c83          	ld	s9,56(sp)
    80007a38:	03013d03          	ld	s10,48(sp)
    80007a3c:	02813d83          	ld	s11,40(sp)
    80007a40:	0d010113          	addi	sp,sp,208
    80007a44:	00008067          	ret
    80007a48:	07300713          	li	a4,115
    80007a4c:	1ce78a63          	beq	a5,a4,80007c20 <__printf+0x4b8>
    80007a50:	07800713          	li	a4,120
    80007a54:	1ee79e63          	bne	a5,a4,80007c50 <__printf+0x4e8>
    80007a58:	f7843783          	ld	a5,-136(s0)
    80007a5c:	0007a703          	lw	a4,0(a5)
    80007a60:	00878793          	addi	a5,a5,8
    80007a64:	f6f43c23          	sd	a5,-136(s0)
    80007a68:	28074263          	bltz	a4,80007cec <__printf+0x584>
    80007a6c:	00002d97          	auipc	s11,0x2
    80007a70:	c0cd8d93          	addi	s11,s11,-1012 # 80009678 <digits>
    80007a74:	00f77793          	andi	a5,a4,15
    80007a78:	00fd87b3          	add	a5,s11,a5
    80007a7c:	0007c683          	lbu	a3,0(a5)
    80007a80:	00f00613          	li	a2,15
    80007a84:	0007079b          	sext.w	a5,a4
    80007a88:	f8d40023          	sb	a3,-128(s0)
    80007a8c:	0047559b          	srliw	a1,a4,0x4
    80007a90:	0047569b          	srliw	a3,a4,0x4
    80007a94:	00000c93          	li	s9,0
    80007a98:	0ee65063          	bge	a2,a4,80007b78 <__printf+0x410>
    80007a9c:	00f6f693          	andi	a3,a3,15
    80007aa0:	00dd86b3          	add	a3,s11,a3
    80007aa4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007aa8:	0087d79b          	srliw	a5,a5,0x8
    80007aac:	00100c93          	li	s9,1
    80007ab0:	f8d400a3          	sb	a3,-127(s0)
    80007ab4:	0cb67263          	bgeu	a2,a1,80007b78 <__printf+0x410>
    80007ab8:	00f7f693          	andi	a3,a5,15
    80007abc:	00dd86b3          	add	a3,s11,a3
    80007ac0:	0006c583          	lbu	a1,0(a3)
    80007ac4:	00f00613          	li	a2,15
    80007ac8:	0047d69b          	srliw	a3,a5,0x4
    80007acc:	f8b40123          	sb	a1,-126(s0)
    80007ad0:	0047d593          	srli	a1,a5,0x4
    80007ad4:	28f67e63          	bgeu	a2,a5,80007d70 <__printf+0x608>
    80007ad8:	00f6f693          	andi	a3,a3,15
    80007adc:	00dd86b3          	add	a3,s11,a3
    80007ae0:	0006c503          	lbu	a0,0(a3)
    80007ae4:	0087d813          	srli	a6,a5,0x8
    80007ae8:	0087d69b          	srliw	a3,a5,0x8
    80007aec:	f8a401a3          	sb	a0,-125(s0)
    80007af0:	28b67663          	bgeu	a2,a1,80007d7c <__printf+0x614>
    80007af4:	00f6f693          	andi	a3,a3,15
    80007af8:	00dd86b3          	add	a3,s11,a3
    80007afc:	0006c583          	lbu	a1,0(a3)
    80007b00:	00c7d513          	srli	a0,a5,0xc
    80007b04:	00c7d69b          	srliw	a3,a5,0xc
    80007b08:	f8b40223          	sb	a1,-124(s0)
    80007b0c:	29067a63          	bgeu	a2,a6,80007da0 <__printf+0x638>
    80007b10:	00f6f693          	andi	a3,a3,15
    80007b14:	00dd86b3          	add	a3,s11,a3
    80007b18:	0006c583          	lbu	a1,0(a3)
    80007b1c:	0107d813          	srli	a6,a5,0x10
    80007b20:	0107d69b          	srliw	a3,a5,0x10
    80007b24:	f8b402a3          	sb	a1,-123(s0)
    80007b28:	28a67263          	bgeu	a2,a0,80007dac <__printf+0x644>
    80007b2c:	00f6f693          	andi	a3,a3,15
    80007b30:	00dd86b3          	add	a3,s11,a3
    80007b34:	0006c683          	lbu	a3,0(a3)
    80007b38:	0147d79b          	srliw	a5,a5,0x14
    80007b3c:	f8d40323          	sb	a3,-122(s0)
    80007b40:	21067663          	bgeu	a2,a6,80007d4c <__printf+0x5e4>
    80007b44:	02079793          	slli	a5,a5,0x20
    80007b48:	0207d793          	srli	a5,a5,0x20
    80007b4c:	00fd8db3          	add	s11,s11,a5
    80007b50:	000dc683          	lbu	a3,0(s11)
    80007b54:	00800793          	li	a5,8
    80007b58:	00700c93          	li	s9,7
    80007b5c:	f8d403a3          	sb	a3,-121(s0)
    80007b60:	00075c63          	bgez	a4,80007b78 <__printf+0x410>
    80007b64:	f9040713          	addi	a4,s0,-112
    80007b68:	00f70733          	add	a4,a4,a5
    80007b6c:	02d00693          	li	a3,45
    80007b70:	fed70823          	sb	a3,-16(a4)
    80007b74:	00078c93          	mv	s9,a5
    80007b78:	f8040793          	addi	a5,s0,-128
    80007b7c:	01978cb3          	add	s9,a5,s9
    80007b80:	f7f40d13          	addi	s10,s0,-129
    80007b84:	000cc503          	lbu	a0,0(s9)
    80007b88:	fffc8c93          	addi	s9,s9,-1
    80007b8c:	00000097          	auipc	ra,0x0
    80007b90:	9f8080e7          	jalr	-1544(ra) # 80007584 <consputc>
    80007b94:	ff9d18e3          	bne	s10,s9,80007b84 <__printf+0x41c>
    80007b98:	0100006f          	j	80007ba8 <__printf+0x440>
    80007b9c:	00000097          	auipc	ra,0x0
    80007ba0:	9e8080e7          	jalr	-1560(ra) # 80007584 <consputc>
    80007ba4:	000c8493          	mv	s1,s9
    80007ba8:	00094503          	lbu	a0,0(s2)
    80007bac:	c60510e3          	bnez	a0,8000780c <__printf+0xa4>
    80007bb0:	e40c0ee3          	beqz	s8,80007a0c <__printf+0x2a4>
    80007bb4:	00005517          	auipc	a0,0x5
    80007bb8:	1ac50513          	addi	a0,a0,428 # 8000cd60 <pr>
    80007bbc:	00001097          	auipc	ra,0x1
    80007bc0:	94c080e7          	jalr	-1716(ra) # 80008508 <release>
    80007bc4:	e49ff06f          	j	80007a0c <__printf+0x2a4>
    80007bc8:	f7843783          	ld	a5,-136(s0)
    80007bcc:	03000513          	li	a0,48
    80007bd0:	01000d13          	li	s10,16
    80007bd4:	00878713          	addi	a4,a5,8
    80007bd8:	0007bc83          	ld	s9,0(a5)
    80007bdc:	f6e43c23          	sd	a4,-136(s0)
    80007be0:	00000097          	auipc	ra,0x0
    80007be4:	9a4080e7          	jalr	-1628(ra) # 80007584 <consputc>
    80007be8:	07800513          	li	a0,120
    80007bec:	00000097          	auipc	ra,0x0
    80007bf0:	998080e7          	jalr	-1640(ra) # 80007584 <consputc>
    80007bf4:	00002d97          	auipc	s11,0x2
    80007bf8:	a84d8d93          	addi	s11,s11,-1404 # 80009678 <digits>
    80007bfc:	03ccd793          	srli	a5,s9,0x3c
    80007c00:	00fd87b3          	add	a5,s11,a5
    80007c04:	0007c503          	lbu	a0,0(a5)
    80007c08:	fffd0d1b          	addiw	s10,s10,-1
    80007c0c:	004c9c93          	slli	s9,s9,0x4
    80007c10:	00000097          	auipc	ra,0x0
    80007c14:	974080e7          	jalr	-1676(ra) # 80007584 <consputc>
    80007c18:	fe0d12e3          	bnez	s10,80007bfc <__printf+0x494>
    80007c1c:	f8dff06f          	j	80007ba8 <__printf+0x440>
    80007c20:	f7843783          	ld	a5,-136(s0)
    80007c24:	0007bc83          	ld	s9,0(a5)
    80007c28:	00878793          	addi	a5,a5,8
    80007c2c:	f6f43c23          	sd	a5,-136(s0)
    80007c30:	000c9a63          	bnez	s9,80007c44 <__printf+0x4dc>
    80007c34:	1080006f          	j	80007d3c <__printf+0x5d4>
    80007c38:	001c8c93          	addi	s9,s9,1
    80007c3c:	00000097          	auipc	ra,0x0
    80007c40:	948080e7          	jalr	-1720(ra) # 80007584 <consputc>
    80007c44:	000cc503          	lbu	a0,0(s9)
    80007c48:	fe0518e3          	bnez	a0,80007c38 <__printf+0x4d0>
    80007c4c:	f5dff06f          	j	80007ba8 <__printf+0x440>
    80007c50:	02500513          	li	a0,37
    80007c54:	00000097          	auipc	ra,0x0
    80007c58:	930080e7          	jalr	-1744(ra) # 80007584 <consputc>
    80007c5c:	000c8513          	mv	a0,s9
    80007c60:	00000097          	auipc	ra,0x0
    80007c64:	924080e7          	jalr	-1756(ra) # 80007584 <consputc>
    80007c68:	f41ff06f          	j	80007ba8 <__printf+0x440>
    80007c6c:	02500513          	li	a0,37
    80007c70:	00000097          	auipc	ra,0x0
    80007c74:	914080e7          	jalr	-1772(ra) # 80007584 <consputc>
    80007c78:	f31ff06f          	j	80007ba8 <__printf+0x440>
    80007c7c:	00030513          	mv	a0,t1
    80007c80:	00000097          	auipc	ra,0x0
    80007c84:	7bc080e7          	jalr	1980(ra) # 8000843c <acquire>
    80007c88:	b4dff06f          	j	800077d4 <__printf+0x6c>
    80007c8c:	40c0053b          	negw	a0,a2
    80007c90:	00a00713          	li	a4,10
    80007c94:	02e576bb          	remuw	a3,a0,a4
    80007c98:	00002d97          	auipc	s11,0x2
    80007c9c:	9e0d8d93          	addi	s11,s11,-1568 # 80009678 <digits>
    80007ca0:	ff700593          	li	a1,-9
    80007ca4:	02069693          	slli	a3,a3,0x20
    80007ca8:	0206d693          	srli	a3,a3,0x20
    80007cac:	00dd86b3          	add	a3,s11,a3
    80007cb0:	0006c683          	lbu	a3,0(a3)
    80007cb4:	02e557bb          	divuw	a5,a0,a4
    80007cb8:	f8d40023          	sb	a3,-128(s0)
    80007cbc:	10b65e63          	bge	a2,a1,80007dd8 <__printf+0x670>
    80007cc0:	06300593          	li	a1,99
    80007cc4:	02e7f6bb          	remuw	a3,a5,a4
    80007cc8:	02069693          	slli	a3,a3,0x20
    80007ccc:	0206d693          	srli	a3,a3,0x20
    80007cd0:	00dd86b3          	add	a3,s11,a3
    80007cd4:	0006c683          	lbu	a3,0(a3)
    80007cd8:	02e7d73b          	divuw	a4,a5,a4
    80007cdc:	00200793          	li	a5,2
    80007ce0:	f8d400a3          	sb	a3,-127(s0)
    80007ce4:	bca5ece3          	bltu	a1,a0,800078bc <__printf+0x154>
    80007ce8:	ce5ff06f          	j	800079cc <__printf+0x264>
    80007cec:	40e007bb          	negw	a5,a4
    80007cf0:	00002d97          	auipc	s11,0x2
    80007cf4:	988d8d93          	addi	s11,s11,-1656 # 80009678 <digits>
    80007cf8:	00f7f693          	andi	a3,a5,15
    80007cfc:	00dd86b3          	add	a3,s11,a3
    80007d00:	0006c583          	lbu	a1,0(a3)
    80007d04:	ff100613          	li	a2,-15
    80007d08:	0047d69b          	srliw	a3,a5,0x4
    80007d0c:	f8b40023          	sb	a1,-128(s0)
    80007d10:	0047d59b          	srliw	a1,a5,0x4
    80007d14:	0ac75e63          	bge	a4,a2,80007dd0 <__printf+0x668>
    80007d18:	00f6f693          	andi	a3,a3,15
    80007d1c:	00dd86b3          	add	a3,s11,a3
    80007d20:	0006c603          	lbu	a2,0(a3)
    80007d24:	00f00693          	li	a3,15
    80007d28:	0087d79b          	srliw	a5,a5,0x8
    80007d2c:	f8c400a3          	sb	a2,-127(s0)
    80007d30:	d8b6e4e3          	bltu	a3,a1,80007ab8 <__printf+0x350>
    80007d34:	00200793          	li	a5,2
    80007d38:	e2dff06f          	j	80007b64 <__printf+0x3fc>
    80007d3c:	00002c97          	auipc	s9,0x2
    80007d40:	91cc8c93          	addi	s9,s9,-1764 # 80009658 <_ZZ12printIntegermE6digits+0x590>
    80007d44:	02800513          	li	a0,40
    80007d48:	ef1ff06f          	j	80007c38 <__printf+0x4d0>
    80007d4c:	00700793          	li	a5,7
    80007d50:	00600c93          	li	s9,6
    80007d54:	e0dff06f          	j	80007b60 <__printf+0x3f8>
    80007d58:	00700793          	li	a5,7
    80007d5c:	00600c93          	li	s9,6
    80007d60:	c69ff06f          	j	800079c8 <__printf+0x260>
    80007d64:	00300793          	li	a5,3
    80007d68:	00200c93          	li	s9,2
    80007d6c:	c5dff06f          	j	800079c8 <__printf+0x260>
    80007d70:	00300793          	li	a5,3
    80007d74:	00200c93          	li	s9,2
    80007d78:	de9ff06f          	j	80007b60 <__printf+0x3f8>
    80007d7c:	00400793          	li	a5,4
    80007d80:	00300c93          	li	s9,3
    80007d84:	dddff06f          	j	80007b60 <__printf+0x3f8>
    80007d88:	00400793          	li	a5,4
    80007d8c:	00300c93          	li	s9,3
    80007d90:	c39ff06f          	j	800079c8 <__printf+0x260>
    80007d94:	00500793          	li	a5,5
    80007d98:	00400c93          	li	s9,4
    80007d9c:	c2dff06f          	j	800079c8 <__printf+0x260>
    80007da0:	00500793          	li	a5,5
    80007da4:	00400c93          	li	s9,4
    80007da8:	db9ff06f          	j	80007b60 <__printf+0x3f8>
    80007dac:	00600793          	li	a5,6
    80007db0:	00500c93          	li	s9,5
    80007db4:	dadff06f          	j	80007b60 <__printf+0x3f8>
    80007db8:	00600793          	li	a5,6
    80007dbc:	00500c93          	li	s9,5
    80007dc0:	c09ff06f          	j	800079c8 <__printf+0x260>
    80007dc4:	00800793          	li	a5,8
    80007dc8:	00700c93          	li	s9,7
    80007dcc:	bfdff06f          	j	800079c8 <__printf+0x260>
    80007dd0:	00100793          	li	a5,1
    80007dd4:	d91ff06f          	j	80007b64 <__printf+0x3fc>
    80007dd8:	00100793          	li	a5,1
    80007ddc:	bf1ff06f          	j	800079cc <__printf+0x264>
    80007de0:	00900793          	li	a5,9
    80007de4:	00800c93          	li	s9,8
    80007de8:	be1ff06f          	j	800079c8 <__printf+0x260>
    80007dec:	00002517          	auipc	a0,0x2
    80007df0:	87450513          	addi	a0,a0,-1932 # 80009660 <_ZZ12printIntegermE6digits+0x598>
    80007df4:	00000097          	auipc	ra,0x0
    80007df8:	918080e7          	jalr	-1768(ra) # 8000770c <panic>

0000000080007dfc <printfinit>:
    80007dfc:	fe010113          	addi	sp,sp,-32
    80007e00:	00813823          	sd	s0,16(sp)
    80007e04:	00913423          	sd	s1,8(sp)
    80007e08:	00113c23          	sd	ra,24(sp)
    80007e0c:	02010413          	addi	s0,sp,32
    80007e10:	00005497          	auipc	s1,0x5
    80007e14:	f5048493          	addi	s1,s1,-176 # 8000cd60 <pr>
    80007e18:	00048513          	mv	a0,s1
    80007e1c:	00002597          	auipc	a1,0x2
    80007e20:	85458593          	addi	a1,a1,-1964 # 80009670 <_ZZ12printIntegermE6digits+0x5a8>
    80007e24:	00000097          	auipc	ra,0x0
    80007e28:	5f4080e7          	jalr	1524(ra) # 80008418 <initlock>
    80007e2c:	01813083          	ld	ra,24(sp)
    80007e30:	01013403          	ld	s0,16(sp)
    80007e34:	0004ac23          	sw	zero,24(s1)
    80007e38:	00813483          	ld	s1,8(sp)
    80007e3c:	02010113          	addi	sp,sp,32
    80007e40:	00008067          	ret

0000000080007e44 <uartinit>:
    80007e44:	ff010113          	addi	sp,sp,-16
    80007e48:	00813423          	sd	s0,8(sp)
    80007e4c:	01010413          	addi	s0,sp,16
    80007e50:	100007b7          	lui	a5,0x10000
    80007e54:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007e58:	f8000713          	li	a4,-128
    80007e5c:	00e781a3          	sb	a4,3(a5)
    80007e60:	00300713          	li	a4,3
    80007e64:	00e78023          	sb	a4,0(a5)
    80007e68:	000780a3          	sb	zero,1(a5)
    80007e6c:	00e781a3          	sb	a4,3(a5)
    80007e70:	00700693          	li	a3,7
    80007e74:	00d78123          	sb	a3,2(a5)
    80007e78:	00e780a3          	sb	a4,1(a5)
    80007e7c:	00813403          	ld	s0,8(sp)
    80007e80:	01010113          	addi	sp,sp,16
    80007e84:	00008067          	ret

0000000080007e88 <uartputc>:
    80007e88:	00004797          	auipc	a5,0x4
    80007e8c:	bc07a783          	lw	a5,-1088(a5) # 8000ba48 <panicked>
    80007e90:	00078463          	beqz	a5,80007e98 <uartputc+0x10>
    80007e94:	0000006f          	j	80007e94 <uartputc+0xc>
    80007e98:	fd010113          	addi	sp,sp,-48
    80007e9c:	02813023          	sd	s0,32(sp)
    80007ea0:	00913c23          	sd	s1,24(sp)
    80007ea4:	01213823          	sd	s2,16(sp)
    80007ea8:	01313423          	sd	s3,8(sp)
    80007eac:	02113423          	sd	ra,40(sp)
    80007eb0:	03010413          	addi	s0,sp,48
    80007eb4:	00004917          	auipc	s2,0x4
    80007eb8:	b9c90913          	addi	s2,s2,-1124 # 8000ba50 <uart_tx_r>
    80007ebc:	00093783          	ld	a5,0(s2)
    80007ec0:	00004497          	auipc	s1,0x4
    80007ec4:	b9848493          	addi	s1,s1,-1128 # 8000ba58 <uart_tx_w>
    80007ec8:	0004b703          	ld	a4,0(s1)
    80007ecc:	02078693          	addi	a3,a5,32
    80007ed0:	00050993          	mv	s3,a0
    80007ed4:	02e69c63          	bne	a3,a4,80007f0c <uartputc+0x84>
    80007ed8:	00001097          	auipc	ra,0x1
    80007edc:	834080e7          	jalr	-1996(ra) # 8000870c <push_on>
    80007ee0:	00093783          	ld	a5,0(s2)
    80007ee4:	0004b703          	ld	a4,0(s1)
    80007ee8:	02078793          	addi	a5,a5,32
    80007eec:	00e79463          	bne	a5,a4,80007ef4 <uartputc+0x6c>
    80007ef0:	0000006f          	j	80007ef0 <uartputc+0x68>
    80007ef4:	00001097          	auipc	ra,0x1
    80007ef8:	88c080e7          	jalr	-1908(ra) # 80008780 <pop_on>
    80007efc:	00093783          	ld	a5,0(s2)
    80007f00:	0004b703          	ld	a4,0(s1)
    80007f04:	02078693          	addi	a3,a5,32
    80007f08:	fce688e3          	beq	a3,a4,80007ed8 <uartputc+0x50>
    80007f0c:	01f77693          	andi	a3,a4,31
    80007f10:	00005597          	auipc	a1,0x5
    80007f14:	e7058593          	addi	a1,a1,-400 # 8000cd80 <uart_tx_buf>
    80007f18:	00d586b3          	add	a3,a1,a3
    80007f1c:	00170713          	addi	a4,a4,1
    80007f20:	01368023          	sb	s3,0(a3)
    80007f24:	00e4b023          	sd	a4,0(s1)
    80007f28:	10000637          	lui	a2,0x10000
    80007f2c:	02f71063          	bne	a4,a5,80007f4c <uartputc+0xc4>
    80007f30:	0340006f          	j	80007f64 <uartputc+0xdc>
    80007f34:	00074703          	lbu	a4,0(a4)
    80007f38:	00f93023          	sd	a5,0(s2)
    80007f3c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80007f40:	00093783          	ld	a5,0(s2)
    80007f44:	0004b703          	ld	a4,0(s1)
    80007f48:	00f70e63          	beq	a4,a5,80007f64 <uartputc+0xdc>
    80007f4c:	00564683          	lbu	a3,5(a2)
    80007f50:	01f7f713          	andi	a4,a5,31
    80007f54:	00e58733          	add	a4,a1,a4
    80007f58:	0206f693          	andi	a3,a3,32
    80007f5c:	00178793          	addi	a5,a5,1
    80007f60:	fc069ae3          	bnez	a3,80007f34 <uartputc+0xac>
    80007f64:	02813083          	ld	ra,40(sp)
    80007f68:	02013403          	ld	s0,32(sp)
    80007f6c:	01813483          	ld	s1,24(sp)
    80007f70:	01013903          	ld	s2,16(sp)
    80007f74:	00813983          	ld	s3,8(sp)
    80007f78:	03010113          	addi	sp,sp,48
    80007f7c:	00008067          	ret

0000000080007f80 <uartputc_sync>:
    80007f80:	ff010113          	addi	sp,sp,-16
    80007f84:	00813423          	sd	s0,8(sp)
    80007f88:	01010413          	addi	s0,sp,16
    80007f8c:	00004717          	auipc	a4,0x4
    80007f90:	abc72703          	lw	a4,-1348(a4) # 8000ba48 <panicked>
    80007f94:	02071663          	bnez	a4,80007fc0 <uartputc_sync+0x40>
    80007f98:	00050793          	mv	a5,a0
    80007f9c:	100006b7          	lui	a3,0x10000
    80007fa0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007fa4:	02077713          	andi	a4,a4,32
    80007fa8:	fe070ce3          	beqz	a4,80007fa0 <uartputc_sync+0x20>
    80007fac:	0ff7f793          	andi	a5,a5,255
    80007fb0:	00f68023          	sb	a5,0(a3)
    80007fb4:	00813403          	ld	s0,8(sp)
    80007fb8:	01010113          	addi	sp,sp,16
    80007fbc:	00008067          	ret
    80007fc0:	0000006f          	j	80007fc0 <uartputc_sync+0x40>

0000000080007fc4 <uartstart>:
    80007fc4:	ff010113          	addi	sp,sp,-16
    80007fc8:	00813423          	sd	s0,8(sp)
    80007fcc:	01010413          	addi	s0,sp,16
    80007fd0:	00004617          	auipc	a2,0x4
    80007fd4:	a8060613          	addi	a2,a2,-1408 # 8000ba50 <uart_tx_r>
    80007fd8:	00004517          	auipc	a0,0x4
    80007fdc:	a8050513          	addi	a0,a0,-1408 # 8000ba58 <uart_tx_w>
    80007fe0:	00063783          	ld	a5,0(a2)
    80007fe4:	00053703          	ld	a4,0(a0)
    80007fe8:	04f70263          	beq	a4,a5,8000802c <uartstart+0x68>
    80007fec:	100005b7          	lui	a1,0x10000
    80007ff0:	00005817          	auipc	a6,0x5
    80007ff4:	d9080813          	addi	a6,a6,-624 # 8000cd80 <uart_tx_buf>
    80007ff8:	01c0006f          	j	80008014 <uartstart+0x50>
    80007ffc:	0006c703          	lbu	a4,0(a3)
    80008000:	00f63023          	sd	a5,0(a2)
    80008004:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80008008:	00063783          	ld	a5,0(a2)
    8000800c:	00053703          	ld	a4,0(a0)
    80008010:	00f70e63          	beq	a4,a5,8000802c <uartstart+0x68>
    80008014:	01f7f713          	andi	a4,a5,31
    80008018:	00e806b3          	add	a3,a6,a4
    8000801c:	0055c703          	lbu	a4,5(a1)
    80008020:	00178793          	addi	a5,a5,1
    80008024:	02077713          	andi	a4,a4,32
    80008028:	fc071ae3          	bnez	a4,80007ffc <uartstart+0x38>
    8000802c:	00813403          	ld	s0,8(sp)
    80008030:	01010113          	addi	sp,sp,16
    80008034:	00008067          	ret

0000000080008038 <uartgetc>:
    80008038:	ff010113          	addi	sp,sp,-16
    8000803c:	00813423          	sd	s0,8(sp)
    80008040:	01010413          	addi	s0,sp,16
    80008044:	10000737          	lui	a4,0x10000
    80008048:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000804c:	0017f793          	andi	a5,a5,1
    80008050:	00078c63          	beqz	a5,80008068 <uartgetc+0x30>
    80008054:	00074503          	lbu	a0,0(a4)
    80008058:	0ff57513          	andi	a0,a0,255
    8000805c:	00813403          	ld	s0,8(sp)
    80008060:	01010113          	addi	sp,sp,16
    80008064:	00008067          	ret
    80008068:	fff00513          	li	a0,-1
    8000806c:	ff1ff06f          	j	8000805c <uartgetc+0x24>

0000000080008070 <uartintr>:
    80008070:	100007b7          	lui	a5,0x10000
    80008074:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80008078:	0017f793          	andi	a5,a5,1
    8000807c:	0a078463          	beqz	a5,80008124 <uartintr+0xb4>
    80008080:	fe010113          	addi	sp,sp,-32
    80008084:	00813823          	sd	s0,16(sp)
    80008088:	00913423          	sd	s1,8(sp)
    8000808c:	00113c23          	sd	ra,24(sp)
    80008090:	02010413          	addi	s0,sp,32
    80008094:	100004b7          	lui	s1,0x10000
    80008098:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000809c:	0ff57513          	andi	a0,a0,255
    800080a0:	fffff097          	auipc	ra,0xfffff
    800080a4:	534080e7          	jalr	1332(ra) # 800075d4 <consoleintr>
    800080a8:	0054c783          	lbu	a5,5(s1)
    800080ac:	0017f793          	andi	a5,a5,1
    800080b0:	fe0794e3          	bnez	a5,80008098 <uartintr+0x28>
    800080b4:	00004617          	auipc	a2,0x4
    800080b8:	99c60613          	addi	a2,a2,-1636 # 8000ba50 <uart_tx_r>
    800080bc:	00004517          	auipc	a0,0x4
    800080c0:	99c50513          	addi	a0,a0,-1636 # 8000ba58 <uart_tx_w>
    800080c4:	00063783          	ld	a5,0(a2)
    800080c8:	00053703          	ld	a4,0(a0)
    800080cc:	04f70263          	beq	a4,a5,80008110 <uartintr+0xa0>
    800080d0:	100005b7          	lui	a1,0x10000
    800080d4:	00005817          	auipc	a6,0x5
    800080d8:	cac80813          	addi	a6,a6,-852 # 8000cd80 <uart_tx_buf>
    800080dc:	01c0006f          	j	800080f8 <uartintr+0x88>
    800080e0:	0006c703          	lbu	a4,0(a3)
    800080e4:	00f63023          	sd	a5,0(a2)
    800080e8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800080ec:	00063783          	ld	a5,0(a2)
    800080f0:	00053703          	ld	a4,0(a0)
    800080f4:	00f70e63          	beq	a4,a5,80008110 <uartintr+0xa0>
    800080f8:	01f7f713          	andi	a4,a5,31
    800080fc:	00e806b3          	add	a3,a6,a4
    80008100:	0055c703          	lbu	a4,5(a1)
    80008104:	00178793          	addi	a5,a5,1
    80008108:	02077713          	andi	a4,a4,32
    8000810c:	fc071ae3          	bnez	a4,800080e0 <uartintr+0x70>
    80008110:	01813083          	ld	ra,24(sp)
    80008114:	01013403          	ld	s0,16(sp)
    80008118:	00813483          	ld	s1,8(sp)
    8000811c:	02010113          	addi	sp,sp,32
    80008120:	00008067          	ret
    80008124:	00004617          	auipc	a2,0x4
    80008128:	92c60613          	addi	a2,a2,-1748 # 8000ba50 <uart_tx_r>
    8000812c:	00004517          	auipc	a0,0x4
    80008130:	92c50513          	addi	a0,a0,-1748 # 8000ba58 <uart_tx_w>
    80008134:	00063783          	ld	a5,0(a2)
    80008138:	00053703          	ld	a4,0(a0)
    8000813c:	04f70263          	beq	a4,a5,80008180 <uartintr+0x110>
    80008140:	100005b7          	lui	a1,0x10000
    80008144:	00005817          	auipc	a6,0x5
    80008148:	c3c80813          	addi	a6,a6,-964 # 8000cd80 <uart_tx_buf>
    8000814c:	01c0006f          	j	80008168 <uartintr+0xf8>
    80008150:	0006c703          	lbu	a4,0(a3)
    80008154:	00f63023          	sd	a5,0(a2)
    80008158:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000815c:	00063783          	ld	a5,0(a2)
    80008160:	00053703          	ld	a4,0(a0)
    80008164:	02f70063          	beq	a4,a5,80008184 <uartintr+0x114>
    80008168:	01f7f713          	andi	a4,a5,31
    8000816c:	00e806b3          	add	a3,a6,a4
    80008170:	0055c703          	lbu	a4,5(a1)
    80008174:	00178793          	addi	a5,a5,1
    80008178:	02077713          	andi	a4,a4,32
    8000817c:	fc071ae3          	bnez	a4,80008150 <uartintr+0xe0>
    80008180:	00008067          	ret
    80008184:	00008067          	ret

0000000080008188 <kinit>:
    80008188:	fc010113          	addi	sp,sp,-64
    8000818c:	02913423          	sd	s1,40(sp)
    80008190:	fffff7b7          	lui	a5,0xfffff
    80008194:	00006497          	auipc	s1,0x6
    80008198:	c0b48493          	addi	s1,s1,-1013 # 8000dd9f <end+0xfff>
    8000819c:	02813823          	sd	s0,48(sp)
    800081a0:	01313c23          	sd	s3,24(sp)
    800081a4:	00f4f4b3          	and	s1,s1,a5
    800081a8:	02113c23          	sd	ra,56(sp)
    800081ac:	03213023          	sd	s2,32(sp)
    800081b0:	01413823          	sd	s4,16(sp)
    800081b4:	01513423          	sd	s5,8(sp)
    800081b8:	04010413          	addi	s0,sp,64
    800081bc:	000017b7          	lui	a5,0x1
    800081c0:	01100993          	li	s3,17
    800081c4:	00f487b3          	add	a5,s1,a5
    800081c8:	01b99993          	slli	s3,s3,0x1b
    800081cc:	06f9e063          	bltu	s3,a5,8000822c <kinit+0xa4>
    800081d0:	00005a97          	auipc	s5,0x5
    800081d4:	bd0a8a93          	addi	s5,s5,-1072 # 8000cda0 <end>
    800081d8:	0754ec63          	bltu	s1,s5,80008250 <kinit+0xc8>
    800081dc:	0734fa63          	bgeu	s1,s3,80008250 <kinit+0xc8>
    800081e0:	00088a37          	lui	s4,0x88
    800081e4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800081e8:	00004917          	auipc	s2,0x4
    800081ec:	87890913          	addi	s2,s2,-1928 # 8000ba60 <kmem>
    800081f0:	00ca1a13          	slli	s4,s4,0xc
    800081f4:	0140006f          	j	80008208 <kinit+0x80>
    800081f8:	000017b7          	lui	a5,0x1
    800081fc:	00f484b3          	add	s1,s1,a5
    80008200:	0554e863          	bltu	s1,s5,80008250 <kinit+0xc8>
    80008204:	0534f663          	bgeu	s1,s3,80008250 <kinit+0xc8>
    80008208:	00001637          	lui	a2,0x1
    8000820c:	00100593          	li	a1,1
    80008210:	00048513          	mv	a0,s1
    80008214:	00000097          	auipc	ra,0x0
    80008218:	5e4080e7          	jalr	1508(ra) # 800087f8 <__memset>
    8000821c:	00093783          	ld	a5,0(s2)
    80008220:	00f4b023          	sd	a5,0(s1)
    80008224:	00993023          	sd	s1,0(s2)
    80008228:	fd4498e3          	bne	s1,s4,800081f8 <kinit+0x70>
    8000822c:	03813083          	ld	ra,56(sp)
    80008230:	03013403          	ld	s0,48(sp)
    80008234:	02813483          	ld	s1,40(sp)
    80008238:	02013903          	ld	s2,32(sp)
    8000823c:	01813983          	ld	s3,24(sp)
    80008240:	01013a03          	ld	s4,16(sp)
    80008244:	00813a83          	ld	s5,8(sp)
    80008248:	04010113          	addi	sp,sp,64
    8000824c:	00008067          	ret
    80008250:	00001517          	auipc	a0,0x1
    80008254:	44050513          	addi	a0,a0,1088 # 80009690 <digits+0x18>
    80008258:	fffff097          	auipc	ra,0xfffff
    8000825c:	4b4080e7          	jalr	1204(ra) # 8000770c <panic>

0000000080008260 <freerange>:
    80008260:	fc010113          	addi	sp,sp,-64
    80008264:	000017b7          	lui	a5,0x1
    80008268:	02913423          	sd	s1,40(sp)
    8000826c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80008270:	009504b3          	add	s1,a0,s1
    80008274:	fffff537          	lui	a0,0xfffff
    80008278:	02813823          	sd	s0,48(sp)
    8000827c:	02113c23          	sd	ra,56(sp)
    80008280:	03213023          	sd	s2,32(sp)
    80008284:	01313c23          	sd	s3,24(sp)
    80008288:	01413823          	sd	s4,16(sp)
    8000828c:	01513423          	sd	s5,8(sp)
    80008290:	01613023          	sd	s6,0(sp)
    80008294:	04010413          	addi	s0,sp,64
    80008298:	00a4f4b3          	and	s1,s1,a0
    8000829c:	00f487b3          	add	a5,s1,a5
    800082a0:	06f5e463          	bltu	a1,a5,80008308 <freerange+0xa8>
    800082a4:	00005a97          	auipc	s5,0x5
    800082a8:	afca8a93          	addi	s5,s5,-1284 # 8000cda0 <end>
    800082ac:	0954e263          	bltu	s1,s5,80008330 <freerange+0xd0>
    800082b0:	01100993          	li	s3,17
    800082b4:	01b99993          	slli	s3,s3,0x1b
    800082b8:	0734fc63          	bgeu	s1,s3,80008330 <freerange+0xd0>
    800082bc:	00058a13          	mv	s4,a1
    800082c0:	00003917          	auipc	s2,0x3
    800082c4:	7a090913          	addi	s2,s2,1952 # 8000ba60 <kmem>
    800082c8:	00002b37          	lui	s6,0x2
    800082cc:	0140006f          	j	800082e0 <freerange+0x80>
    800082d0:	000017b7          	lui	a5,0x1
    800082d4:	00f484b3          	add	s1,s1,a5
    800082d8:	0554ec63          	bltu	s1,s5,80008330 <freerange+0xd0>
    800082dc:	0534fa63          	bgeu	s1,s3,80008330 <freerange+0xd0>
    800082e0:	00001637          	lui	a2,0x1
    800082e4:	00100593          	li	a1,1
    800082e8:	00048513          	mv	a0,s1
    800082ec:	00000097          	auipc	ra,0x0
    800082f0:	50c080e7          	jalr	1292(ra) # 800087f8 <__memset>
    800082f4:	00093703          	ld	a4,0(s2)
    800082f8:	016487b3          	add	a5,s1,s6
    800082fc:	00e4b023          	sd	a4,0(s1)
    80008300:	00993023          	sd	s1,0(s2)
    80008304:	fcfa76e3          	bgeu	s4,a5,800082d0 <freerange+0x70>
    80008308:	03813083          	ld	ra,56(sp)
    8000830c:	03013403          	ld	s0,48(sp)
    80008310:	02813483          	ld	s1,40(sp)
    80008314:	02013903          	ld	s2,32(sp)
    80008318:	01813983          	ld	s3,24(sp)
    8000831c:	01013a03          	ld	s4,16(sp)
    80008320:	00813a83          	ld	s5,8(sp)
    80008324:	00013b03          	ld	s6,0(sp)
    80008328:	04010113          	addi	sp,sp,64
    8000832c:	00008067          	ret
    80008330:	00001517          	auipc	a0,0x1
    80008334:	36050513          	addi	a0,a0,864 # 80009690 <digits+0x18>
    80008338:	fffff097          	auipc	ra,0xfffff
    8000833c:	3d4080e7          	jalr	980(ra) # 8000770c <panic>

0000000080008340 <kfree>:
    80008340:	fe010113          	addi	sp,sp,-32
    80008344:	00813823          	sd	s0,16(sp)
    80008348:	00113c23          	sd	ra,24(sp)
    8000834c:	00913423          	sd	s1,8(sp)
    80008350:	02010413          	addi	s0,sp,32
    80008354:	03451793          	slli	a5,a0,0x34
    80008358:	04079c63          	bnez	a5,800083b0 <kfree+0x70>
    8000835c:	00005797          	auipc	a5,0x5
    80008360:	a4478793          	addi	a5,a5,-1468 # 8000cda0 <end>
    80008364:	00050493          	mv	s1,a0
    80008368:	04f56463          	bltu	a0,a5,800083b0 <kfree+0x70>
    8000836c:	01100793          	li	a5,17
    80008370:	01b79793          	slli	a5,a5,0x1b
    80008374:	02f57e63          	bgeu	a0,a5,800083b0 <kfree+0x70>
    80008378:	00001637          	lui	a2,0x1
    8000837c:	00100593          	li	a1,1
    80008380:	00000097          	auipc	ra,0x0
    80008384:	478080e7          	jalr	1144(ra) # 800087f8 <__memset>
    80008388:	00003797          	auipc	a5,0x3
    8000838c:	6d878793          	addi	a5,a5,1752 # 8000ba60 <kmem>
    80008390:	0007b703          	ld	a4,0(a5)
    80008394:	01813083          	ld	ra,24(sp)
    80008398:	01013403          	ld	s0,16(sp)
    8000839c:	00e4b023          	sd	a4,0(s1)
    800083a0:	0097b023          	sd	s1,0(a5)
    800083a4:	00813483          	ld	s1,8(sp)
    800083a8:	02010113          	addi	sp,sp,32
    800083ac:	00008067          	ret
    800083b0:	00001517          	auipc	a0,0x1
    800083b4:	2e050513          	addi	a0,a0,736 # 80009690 <digits+0x18>
    800083b8:	fffff097          	auipc	ra,0xfffff
    800083bc:	354080e7          	jalr	852(ra) # 8000770c <panic>

00000000800083c0 <kalloc>:
    800083c0:	fe010113          	addi	sp,sp,-32
    800083c4:	00813823          	sd	s0,16(sp)
    800083c8:	00913423          	sd	s1,8(sp)
    800083cc:	00113c23          	sd	ra,24(sp)
    800083d0:	02010413          	addi	s0,sp,32
    800083d4:	00003797          	auipc	a5,0x3
    800083d8:	68c78793          	addi	a5,a5,1676 # 8000ba60 <kmem>
    800083dc:	0007b483          	ld	s1,0(a5)
    800083e0:	02048063          	beqz	s1,80008400 <kalloc+0x40>
    800083e4:	0004b703          	ld	a4,0(s1)
    800083e8:	00001637          	lui	a2,0x1
    800083ec:	00500593          	li	a1,5
    800083f0:	00048513          	mv	a0,s1
    800083f4:	00e7b023          	sd	a4,0(a5)
    800083f8:	00000097          	auipc	ra,0x0
    800083fc:	400080e7          	jalr	1024(ra) # 800087f8 <__memset>
    80008400:	01813083          	ld	ra,24(sp)
    80008404:	01013403          	ld	s0,16(sp)
    80008408:	00048513          	mv	a0,s1
    8000840c:	00813483          	ld	s1,8(sp)
    80008410:	02010113          	addi	sp,sp,32
    80008414:	00008067          	ret

0000000080008418 <initlock>:
    80008418:	ff010113          	addi	sp,sp,-16
    8000841c:	00813423          	sd	s0,8(sp)
    80008420:	01010413          	addi	s0,sp,16
    80008424:	00813403          	ld	s0,8(sp)
    80008428:	00b53423          	sd	a1,8(a0)
    8000842c:	00052023          	sw	zero,0(a0)
    80008430:	00053823          	sd	zero,16(a0)
    80008434:	01010113          	addi	sp,sp,16
    80008438:	00008067          	ret

000000008000843c <acquire>:
    8000843c:	fe010113          	addi	sp,sp,-32
    80008440:	00813823          	sd	s0,16(sp)
    80008444:	00913423          	sd	s1,8(sp)
    80008448:	00113c23          	sd	ra,24(sp)
    8000844c:	01213023          	sd	s2,0(sp)
    80008450:	02010413          	addi	s0,sp,32
    80008454:	00050493          	mv	s1,a0
    80008458:	10002973          	csrr	s2,sstatus
    8000845c:	100027f3          	csrr	a5,sstatus
    80008460:	ffd7f793          	andi	a5,a5,-3
    80008464:	10079073          	csrw	sstatus,a5
    80008468:	fffff097          	auipc	ra,0xfffff
    8000846c:	8ec080e7          	jalr	-1812(ra) # 80006d54 <mycpu>
    80008470:	07852783          	lw	a5,120(a0)
    80008474:	06078e63          	beqz	a5,800084f0 <acquire+0xb4>
    80008478:	fffff097          	auipc	ra,0xfffff
    8000847c:	8dc080e7          	jalr	-1828(ra) # 80006d54 <mycpu>
    80008480:	07852783          	lw	a5,120(a0)
    80008484:	0004a703          	lw	a4,0(s1)
    80008488:	0017879b          	addiw	a5,a5,1
    8000848c:	06f52c23          	sw	a5,120(a0)
    80008490:	04071063          	bnez	a4,800084d0 <acquire+0x94>
    80008494:	00100713          	li	a4,1
    80008498:	00070793          	mv	a5,a4
    8000849c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800084a0:	0007879b          	sext.w	a5,a5
    800084a4:	fe079ae3          	bnez	a5,80008498 <acquire+0x5c>
    800084a8:	0ff0000f          	fence
    800084ac:	fffff097          	auipc	ra,0xfffff
    800084b0:	8a8080e7          	jalr	-1880(ra) # 80006d54 <mycpu>
    800084b4:	01813083          	ld	ra,24(sp)
    800084b8:	01013403          	ld	s0,16(sp)
    800084bc:	00a4b823          	sd	a0,16(s1)
    800084c0:	00013903          	ld	s2,0(sp)
    800084c4:	00813483          	ld	s1,8(sp)
    800084c8:	02010113          	addi	sp,sp,32
    800084cc:	00008067          	ret
    800084d0:	0104b903          	ld	s2,16(s1)
    800084d4:	fffff097          	auipc	ra,0xfffff
    800084d8:	880080e7          	jalr	-1920(ra) # 80006d54 <mycpu>
    800084dc:	faa91ce3          	bne	s2,a0,80008494 <acquire+0x58>
    800084e0:	00001517          	auipc	a0,0x1
    800084e4:	1b850513          	addi	a0,a0,440 # 80009698 <digits+0x20>
    800084e8:	fffff097          	auipc	ra,0xfffff
    800084ec:	224080e7          	jalr	548(ra) # 8000770c <panic>
    800084f0:	00195913          	srli	s2,s2,0x1
    800084f4:	fffff097          	auipc	ra,0xfffff
    800084f8:	860080e7          	jalr	-1952(ra) # 80006d54 <mycpu>
    800084fc:	00197913          	andi	s2,s2,1
    80008500:	07252e23          	sw	s2,124(a0)
    80008504:	f75ff06f          	j	80008478 <acquire+0x3c>

0000000080008508 <release>:
    80008508:	fe010113          	addi	sp,sp,-32
    8000850c:	00813823          	sd	s0,16(sp)
    80008510:	00113c23          	sd	ra,24(sp)
    80008514:	00913423          	sd	s1,8(sp)
    80008518:	01213023          	sd	s2,0(sp)
    8000851c:	02010413          	addi	s0,sp,32
    80008520:	00052783          	lw	a5,0(a0)
    80008524:	00079a63          	bnez	a5,80008538 <release+0x30>
    80008528:	00001517          	auipc	a0,0x1
    8000852c:	17850513          	addi	a0,a0,376 # 800096a0 <digits+0x28>
    80008530:	fffff097          	auipc	ra,0xfffff
    80008534:	1dc080e7          	jalr	476(ra) # 8000770c <panic>
    80008538:	01053903          	ld	s2,16(a0)
    8000853c:	00050493          	mv	s1,a0
    80008540:	fffff097          	auipc	ra,0xfffff
    80008544:	814080e7          	jalr	-2028(ra) # 80006d54 <mycpu>
    80008548:	fea910e3          	bne	s2,a0,80008528 <release+0x20>
    8000854c:	0004b823          	sd	zero,16(s1)
    80008550:	0ff0000f          	fence
    80008554:	0f50000f          	fence	iorw,ow
    80008558:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000855c:	ffffe097          	auipc	ra,0xffffe
    80008560:	7f8080e7          	jalr	2040(ra) # 80006d54 <mycpu>
    80008564:	100027f3          	csrr	a5,sstatus
    80008568:	0027f793          	andi	a5,a5,2
    8000856c:	04079a63          	bnez	a5,800085c0 <release+0xb8>
    80008570:	07852783          	lw	a5,120(a0)
    80008574:	02f05e63          	blez	a5,800085b0 <release+0xa8>
    80008578:	fff7871b          	addiw	a4,a5,-1
    8000857c:	06e52c23          	sw	a4,120(a0)
    80008580:	00071c63          	bnez	a4,80008598 <release+0x90>
    80008584:	07c52783          	lw	a5,124(a0)
    80008588:	00078863          	beqz	a5,80008598 <release+0x90>
    8000858c:	100027f3          	csrr	a5,sstatus
    80008590:	0027e793          	ori	a5,a5,2
    80008594:	10079073          	csrw	sstatus,a5
    80008598:	01813083          	ld	ra,24(sp)
    8000859c:	01013403          	ld	s0,16(sp)
    800085a0:	00813483          	ld	s1,8(sp)
    800085a4:	00013903          	ld	s2,0(sp)
    800085a8:	02010113          	addi	sp,sp,32
    800085ac:	00008067          	ret
    800085b0:	00001517          	auipc	a0,0x1
    800085b4:	11050513          	addi	a0,a0,272 # 800096c0 <digits+0x48>
    800085b8:	fffff097          	auipc	ra,0xfffff
    800085bc:	154080e7          	jalr	340(ra) # 8000770c <panic>
    800085c0:	00001517          	auipc	a0,0x1
    800085c4:	0e850513          	addi	a0,a0,232 # 800096a8 <digits+0x30>
    800085c8:	fffff097          	auipc	ra,0xfffff
    800085cc:	144080e7          	jalr	324(ra) # 8000770c <panic>

00000000800085d0 <holding>:
    800085d0:	00052783          	lw	a5,0(a0)
    800085d4:	00079663          	bnez	a5,800085e0 <holding+0x10>
    800085d8:	00000513          	li	a0,0
    800085dc:	00008067          	ret
    800085e0:	fe010113          	addi	sp,sp,-32
    800085e4:	00813823          	sd	s0,16(sp)
    800085e8:	00913423          	sd	s1,8(sp)
    800085ec:	00113c23          	sd	ra,24(sp)
    800085f0:	02010413          	addi	s0,sp,32
    800085f4:	01053483          	ld	s1,16(a0)
    800085f8:	ffffe097          	auipc	ra,0xffffe
    800085fc:	75c080e7          	jalr	1884(ra) # 80006d54 <mycpu>
    80008600:	01813083          	ld	ra,24(sp)
    80008604:	01013403          	ld	s0,16(sp)
    80008608:	40a48533          	sub	a0,s1,a0
    8000860c:	00153513          	seqz	a0,a0
    80008610:	00813483          	ld	s1,8(sp)
    80008614:	02010113          	addi	sp,sp,32
    80008618:	00008067          	ret

000000008000861c <push_off>:
    8000861c:	fe010113          	addi	sp,sp,-32
    80008620:	00813823          	sd	s0,16(sp)
    80008624:	00113c23          	sd	ra,24(sp)
    80008628:	00913423          	sd	s1,8(sp)
    8000862c:	02010413          	addi	s0,sp,32
    80008630:	100024f3          	csrr	s1,sstatus
    80008634:	100027f3          	csrr	a5,sstatus
    80008638:	ffd7f793          	andi	a5,a5,-3
    8000863c:	10079073          	csrw	sstatus,a5
    80008640:	ffffe097          	auipc	ra,0xffffe
    80008644:	714080e7          	jalr	1812(ra) # 80006d54 <mycpu>
    80008648:	07852783          	lw	a5,120(a0)
    8000864c:	02078663          	beqz	a5,80008678 <push_off+0x5c>
    80008650:	ffffe097          	auipc	ra,0xffffe
    80008654:	704080e7          	jalr	1796(ra) # 80006d54 <mycpu>
    80008658:	07852783          	lw	a5,120(a0)
    8000865c:	01813083          	ld	ra,24(sp)
    80008660:	01013403          	ld	s0,16(sp)
    80008664:	0017879b          	addiw	a5,a5,1
    80008668:	06f52c23          	sw	a5,120(a0)
    8000866c:	00813483          	ld	s1,8(sp)
    80008670:	02010113          	addi	sp,sp,32
    80008674:	00008067          	ret
    80008678:	0014d493          	srli	s1,s1,0x1
    8000867c:	ffffe097          	auipc	ra,0xffffe
    80008680:	6d8080e7          	jalr	1752(ra) # 80006d54 <mycpu>
    80008684:	0014f493          	andi	s1,s1,1
    80008688:	06952e23          	sw	s1,124(a0)
    8000868c:	fc5ff06f          	j	80008650 <push_off+0x34>

0000000080008690 <pop_off>:
    80008690:	ff010113          	addi	sp,sp,-16
    80008694:	00813023          	sd	s0,0(sp)
    80008698:	00113423          	sd	ra,8(sp)
    8000869c:	01010413          	addi	s0,sp,16
    800086a0:	ffffe097          	auipc	ra,0xffffe
    800086a4:	6b4080e7          	jalr	1716(ra) # 80006d54 <mycpu>
    800086a8:	100027f3          	csrr	a5,sstatus
    800086ac:	0027f793          	andi	a5,a5,2
    800086b0:	04079663          	bnez	a5,800086fc <pop_off+0x6c>
    800086b4:	07852783          	lw	a5,120(a0)
    800086b8:	02f05a63          	blez	a5,800086ec <pop_off+0x5c>
    800086bc:	fff7871b          	addiw	a4,a5,-1
    800086c0:	06e52c23          	sw	a4,120(a0)
    800086c4:	00071c63          	bnez	a4,800086dc <pop_off+0x4c>
    800086c8:	07c52783          	lw	a5,124(a0)
    800086cc:	00078863          	beqz	a5,800086dc <pop_off+0x4c>
    800086d0:	100027f3          	csrr	a5,sstatus
    800086d4:	0027e793          	ori	a5,a5,2
    800086d8:	10079073          	csrw	sstatus,a5
    800086dc:	00813083          	ld	ra,8(sp)
    800086e0:	00013403          	ld	s0,0(sp)
    800086e4:	01010113          	addi	sp,sp,16
    800086e8:	00008067          	ret
    800086ec:	00001517          	auipc	a0,0x1
    800086f0:	fd450513          	addi	a0,a0,-44 # 800096c0 <digits+0x48>
    800086f4:	fffff097          	auipc	ra,0xfffff
    800086f8:	018080e7          	jalr	24(ra) # 8000770c <panic>
    800086fc:	00001517          	auipc	a0,0x1
    80008700:	fac50513          	addi	a0,a0,-84 # 800096a8 <digits+0x30>
    80008704:	fffff097          	auipc	ra,0xfffff
    80008708:	008080e7          	jalr	8(ra) # 8000770c <panic>

000000008000870c <push_on>:
    8000870c:	fe010113          	addi	sp,sp,-32
    80008710:	00813823          	sd	s0,16(sp)
    80008714:	00113c23          	sd	ra,24(sp)
    80008718:	00913423          	sd	s1,8(sp)
    8000871c:	02010413          	addi	s0,sp,32
    80008720:	100024f3          	csrr	s1,sstatus
    80008724:	100027f3          	csrr	a5,sstatus
    80008728:	0027e793          	ori	a5,a5,2
    8000872c:	10079073          	csrw	sstatus,a5
    80008730:	ffffe097          	auipc	ra,0xffffe
    80008734:	624080e7          	jalr	1572(ra) # 80006d54 <mycpu>
    80008738:	07852783          	lw	a5,120(a0)
    8000873c:	02078663          	beqz	a5,80008768 <push_on+0x5c>
    80008740:	ffffe097          	auipc	ra,0xffffe
    80008744:	614080e7          	jalr	1556(ra) # 80006d54 <mycpu>
    80008748:	07852783          	lw	a5,120(a0)
    8000874c:	01813083          	ld	ra,24(sp)
    80008750:	01013403          	ld	s0,16(sp)
    80008754:	0017879b          	addiw	a5,a5,1
    80008758:	06f52c23          	sw	a5,120(a0)
    8000875c:	00813483          	ld	s1,8(sp)
    80008760:	02010113          	addi	sp,sp,32
    80008764:	00008067          	ret
    80008768:	0014d493          	srli	s1,s1,0x1
    8000876c:	ffffe097          	auipc	ra,0xffffe
    80008770:	5e8080e7          	jalr	1512(ra) # 80006d54 <mycpu>
    80008774:	0014f493          	andi	s1,s1,1
    80008778:	06952e23          	sw	s1,124(a0)
    8000877c:	fc5ff06f          	j	80008740 <push_on+0x34>

0000000080008780 <pop_on>:
    80008780:	ff010113          	addi	sp,sp,-16
    80008784:	00813023          	sd	s0,0(sp)
    80008788:	00113423          	sd	ra,8(sp)
    8000878c:	01010413          	addi	s0,sp,16
    80008790:	ffffe097          	auipc	ra,0xffffe
    80008794:	5c4080e7          	jalr	1476(ra) # 80006d54 <mycpu>
    80008798:	100027f3          	csrr	a5,sstatus
    8000879c:	0027f793          	andi	a5,a5,2
    800087a0:	04078463          	beqz	a5,800087e8 <pop_on+0x68>
    800087a4:	07852783          	lw	a5,120(a0)
    800087a8:	02f05863          	blez	a5,800087d8 <pop_on+0x58>
    800087ac:	fff7879b          	addiw	a5,a5,-1
    800087b0:	06f52c23          	sw	a5,120(a0)
    800087b4:	07853783          	ld	a5,120(a0)
    800087b8:	00079863          	bnez	a5,800087c8 <pop_on+0x48>
    800087bc:	100027f3          	csrr	a5,sstatus
    800087c0:	ffd7f793          	andi	a5,a5,-3
    800087c4:	10079073          	csrw	sstatus,a5
    800087c8:	00813083          	ld	ra,8(sp)
    800087cc:	00013403          	ld	s0,0(sp)
    800087d0:	01010113          	addi	sp,sp,16
    800087d4:	00008067          	ret
    800087d8:	00001517          	auipc	a0,0x1
    800087dc:	f1050513          	addi	a0,a0,-240 # 800096e8 <digits+0x70>
    800087e0:	fffff097          	auipc	ra,0xfffff
    800087e4:	f2c080e7          	jalr	-212(ra) # 8000770c <panic>
    800087e8:	00001517          	auipc	a0,0x1
    800087ec:	ee050513          	addi	a0,a0,-288 # 800096c8 <digits+0x50>
    800087f0:	fffff097          	auipc	ra,0xfffff
    800087f4:	f1c080e7          	jalr	-228(ra) # 8000770c <panic>

00000000800087f8 <__memset>:
    800087f8:	ff010113          	addi	sp,sp,-16
    800087fc:	00813423          	sd	s0,8(sp)
    80008800:	01010413          	addi	s0,sp,16
    80008804:	1a060e63          	beqz	a2,800089c0 <__memset+0x1c8>
    80008808:	40a007b3          	neg	a5,a0
    8000880c:	0077f793          	andi	a5,a5,7
    80008810:	00778693          	addi	a3,a5,7
    80008814:	00b00813          	li	a6,11
    80008818:	0ff5f593          	andi	a1,a1,255
    8000881c:	fff6071b          	addiw	a4,a2,-1
    80008820:	1b06e663          	bltu	a3,a6,800089cc <__memset+0x1d4>
    80008824:	1cd76463          	bltu	a4,a3,800089ec <__memset+0x1f4>
    80008828:	1a078e63          	beqz	a5,800089e4 <__memset+0x1ec>
    8000882c:	00b50023          	sb	a1,0(a0)
    80008830:	00100713          	li	a4,1
    80008834:	1ae78463          	beq	a5,a4,800089dc <__memset+0x1e4>
    80008838:	00b500a3          	sb	a1,1(a0)
    8000883c:	00200713          	li	a4,2
    80008840:	1ae78a63          	beq	a5,a4,800089f4 <__memset+0x1fc>
    80008844:	00b50123          	sb	a1,2(a0)
    80008848:	00300713          	li	a4,3
    8000884c:	18e78463          	beq	a5,a4,800089d4 <__memset+0x1dc>
    80008850:	00b501a3          	sb	a1,3(a0)
    80008854:	00400713          	li	a4,4
    80008858:	1ae78263          	beq	a5,a4,800089fc <__memset+0x204>
    8000885c:	00b50223          	sb	a1,4(a0)
    80008860:	00500713          	li	a4,5
    80008864:	1ae78063          	beq	a5,a4,80008a04 <__memset+0x20c>
    80008868:	00b502a3          	sb	a1,5(a0)
    8000886c:	00700713          	li	a4,7
    80008870:	18e79e63          	bne	a5,a4,80008a0c <__memset+0x214>
    80008874:	00b50323          	sb	a1,6(a0)
    80008878:	00700e93          	li	t4,7
    8000887c:	00859713          	slli	a4,a1,0x8
    80008880:	00e5e733          	or	a4,a1,a4
    80008884:	01059e13          	slli	t3,a1,0x10
    80008888:	01c76e33          	or	t3,a4,t3
    8000888c:	01859313          	slli	t1,a1,0x18
    80008890:	006e6333          	or	t1,t3,t1
    80008894:	02059893          	slli	a7,a1,0x20
    80008898:	40f60e3b          	subw	t3,a2,a5
    8000889c:	011368b3          	or	a7,t1,a7
    800088a0:	02859813          	slli	a6,a1,0x28
    800088a4:	0108e833          	or	a6,a7,a6
    800088a8:	03059693          	slli	a3,a1,0x30
    800088ac:	003e589b          	srliw	a7,t3,0x3
    800088b0:	00d866b3          	or	a3,a6,a3
    800088b4:	03859713          	slli	a4,a1,0x38
    800088b8:	00389813          	slli	a6,a7,0x3
    800088bc:	00f507b3          	add	a5,a0,a5
    800088c0:	00e6e733          	or	a4,a3,a4
    800088c4:	000e089b          	sext.w	a7,t3
    800088c8:	00f806b3          	add	a3,a6,a5
    800088cc:	00e7b023          	sd	a4,0(a5)
    800088d0:	00878793          	addi	a5,a5,8
    800088d4:	fed79ce3          	bne	a5,a3,800088cc <__memset+0xd4>
    800088d8:	ff8e7793          	andi	a5,t3,-8
    800088dc:	0007871b          	sext.w	a4,a5
    800088e0:	01d787bb          	addw	a5,a5,t4
    800088e4:	0ce88e63          	beq	a7,a4,800089c0 <__memset+0x1c8>
    800088e8:	00f50733          	add	a4,a0,a5
    800088ec:	00b70023          	sb	a1,0(a4)
    800088f0:	0017871b          	addiw	a4,a5,1
    800088f4:	0cc77663          	bgeu	a4,a2,800089c0 <__memset+0x1c8>
    800088f8:	00e50733          	add	a4,a0,a4
    800088fc:	00b70023          	sb	a1,0(a4)
    80008900:	0027871b          	addiw	a4,a5,2
    80008904:	0ac77e63          	bgeu	a4,a2,800089c0 <__memset+0x1c8>
    80008908:	00e50733          	add	a4,a0,a4
    8000890c:	00b70023          	sb	a1,0(a4)
    80008910:	0037871b          	addiw	a4,a5,3
    80008914:	0ac77663          	bgeu	a4,a2,800089c0 <__memset+0x1c8>
    80008918:	00e50733          	add	a4,a0,a4
    8000891c:	00b70023          	sb	a1,0(a4)
    80008920:	0047871b          	addiw	a4,a5,4
    80008924:	08c77e63          	bgeu	a4,a2,800089c0 <__memset+0x1c8>
    80008928:	00e50733          	add	a4,a0,a4
    8000892c:	00b70023          	sb	a1,0(a4)
    80008930:	0057871b          	addiw	a4,a5,5
    80008934:	08c77663          	bgeu	a4,a2,800089c0 <__memset+0x1c8>
    80008938:	00e50733          	add	a4,a0,a4
    8000893c:	00b70023          	sb	a1,0(a4)
    80008940:	0067871b          	addiw	a4,a5,6
    80008944:	06c77e63          	bgeu	a4,a2,800089c0 <__memset+0x1c8>
    80008948:	00e50733          	add	a4,a0,a4
    8000894c:	00b70023          	sb	a1,0(a4)
    80008950:	0077871b          	addiw	a4,a5,7
    80008954:	06c77663          	bgeu	a4,a2,800089c0 <__memset+0x1c8>
    80008958:	00e50733          	add	a4,a0,a4
    8000895c:	00b70023          	sb	a1,0(a4)
    80008960:	0087871b          	addiw	a4,a5,8
    80008964:	04c77e63          	bgeu	a4,a2,800089c0 <__memset+0x1c8>
    80008968:	00e50733          	add	a4,a0,a4
    8000896c:	00b70023          	sb	a1,0(a4)
    80008970:	0097871b          	addiw	a4,a5,9
    80008974:	04c77663          	bgeu	a4,a2,800089c0 <__memset+0x1c8>
    80008978:	00e50733          	add	a4,a0,a4
    8000897c:	00b70023          	sb	a1,0(a4)
    80008980:	00a7871b          	addiw	a4,a5,10
    80008984:	02c77e63          	bgeu	a4,a2,800089c0 <__memset+0x1c8>
    80008988:	00e50733          	add	a4,a0,a4
    8000898c:	00b70023          	sb	a1,0(a4)
    80008990:	00b7871b          	addiw	a4,a5,11
    80008994:	02c77663          	bgeu	a4,a2,800089c0 <__memset+0x1c8>
    80008998:	00e50733          	add	a4,a0,a4
    8000899c:	00b70023          	sb	a1,0(a4)
    800089a0:	00c7871b          	addiw	a4,a5,12
    800089a4:	00c77e63          	bgeu	a4,a2,800089c0 <__memset+0x1c8>
    800089a8:	00e50733          	add	a4,a0,a4
    800089ac:	00b70023          	sb	a1,0(a4)
    800089b0:	00d7879b          	addiw	a5,a5,13
    800089b4:	00c7f663          	bgeu	a5,a2,800089c0 <__memset+0x1c8>
    800089b8:	00f507b3          	add	a5,a0,a5
    800089bc:	00b78023          	sb	a1,0(a5)
    800089c0:	00813403          	ld	s0,8(sp)
    800089c4:	01010113          	addi	sp,sp,16
    800089c8:	00008067          	ret
    800089cc:	00b00693          	li	a3,11
    800089d0:	e55ff06f          	j	80008824 <__memset+0x2c>
    800089d4:	00300e93          	li	t4,3
    800089d8:	ea5ff06f          	j	8000887c <__memset+0x84>
    800089dc:	00100e93          	li	t4,1
    800089e0:	e9dff06f          	j	8000887c <__memset+0x84>
    800089e4:	00000e93          	li	t4,0
    800089e8:	e95ff06f          	j	8000887c <__memset+0x84>
    800089ec:	00000793          	li	a5,0
    800089f0:	ef9ff06f          	j	800088e8 <__memset+0xf0>
    800089f4:	00200e93          	li	t4,2
    800089f8:	e85ff06f          	j	8000887c <__memset+0x84>
    800089fc:	00400e93          	li	t4,4
    80008a00:	e7dff06f          	j	8000887c <__memset+0x84>
    80008a04:	00500e93          	li	t4,5
    80008a08:	e75ff06f          	j	8000887c <__memset+0x84>
    80008a0c:	00600e93          	li	t4,6
    80008a10:	e6dff06f          	j	8000887c <__memset+0x84>

0000000080008a14 <__memmove>:
    80008a14:	ff010113          	addi	sp,sp,-16
    80008a18:	00813423          	sd	s0,8(sp)
    80008a1c:	01010413          	addi	s0,sp,16
    80008a20:	0e060863          	beqz	a2,80008b10 <__memmove+0xfc>
    80008a24:	fff6069b          	addiw	a3,a2,-1
    80008a28:	0006881b          	sext.w	a6,a3
    80008a2c:	0ea5e863          	bltu	a1,a0,80008b1c <__memmove+0x108>
    80008a30:	00758713          	addi	a4,a1,7
    80008a34:	00a5e7b3          	or	a5,a1,a0
    80008a38:	40a70733          	sub	a4,a4,a0
    80008a3c:	0077f793          	andi	a5,a5,7
    80008a40:	00f73713          	sltiu	a4,a4,15
    80008a44:	00174713          	xori	a4,a4,1
    80008a48:	0017b793          	seqz	a5,a5
    80008a4c:	00e7f7b3          	and	a5,a5,a4
    80008a50:	10078863          	beqz	a5,80008b60 <__memmove+0x14c>
    80008a54:	00900793          	li	a5,9
    80008a58:	1107f463          	bgeu	a5,a6,80008b60 <__memmove+0x14c>
    80008a5c:	0036581b          	srliw	a6,a2,0x3
    80008a60:	fff8081b          	addiw	a6,a6,-1
    80008a64:	02081813          	slli	a6,a6,0x20
    80008a68:	01d85893          	srli	a7,a6,0x1d
    80008a6c:	00858813          	addi	a6,a1,8
    80008a70:	00058793          	mv	a5,a1
    80008a74:	00050713          	mv	a4,a0
    80008a78:	01088833          	add	a6,a7,a6
    80008a7c:	0007b883          	ld	a7,0(a5)
    80008a80:	00878793          	addi	a5,a5,8
    80008a84:	00870713          	addi	a4,a4,8
    80008a88:	ff173c23          	sd	a7,-8(a4)
    80008a8c:	ff0798e3          	bne	a5,a6,80008a7c <__memmove+0x68>
    80008a90:	ff867713          	andi	a4,a2,-8
    80008a94:	02071793          	slli	a5,a4,0x20
    80008a98:	0207d793          	srli	a5,a5,0x20
    80008a9c:	00f585b3          	add	a1,a1,a5
    80008aa0:	40e686bb          	subw	a3,a3,a4
    80008aa4:	00f507b3          	add	a5,a0,a5
    80008aa8:	06e60463          	beq	a2,a4,80008b10 <__memmove+0xfc>
    80008aac:	0005c703          	lbu	a4,0(a1)
    80008ab0:	00e78023          	sb	a4,0(a5)
    80008ab4:	04068e63          	beqz	a3,80008b10 <__memmove+0xfc>
    80008ab8:	0015c603          	lbu	a2,1(a1)
    80008abc:	00100713          	li	a4,1
    80008ac0:	00c780a3          	sb	a2,1(a5)
    80008ac4:	04e68663          	beq	a3,a4,80008b10 <__memmove+0xfc>
    80008ac8:	0025c603          	lbu	a2,2(a1)
    80008acc:	00200713          	li	a4,2
    80008ad0:	00c78123          	sb	a2,2(a5)
    80008ad4:	02e68e63          	beq	a3,a4,80008b10 <__memmove+0xfc>
    80008ad8:	0035c603          	lbu	a2,3(a1)
    80008adc:	00300713          	li	a4,3
    80008ae0:	00c781a3          	sb	a2,3(a5)
    80008ae4:	02e68663          	beq	a3,a4,80008b10 <__memmove+0xfc>
    80008ae8:	0045c603          	lbu	a2,4(a1)
    80008aec:	00400713          	li	a4,4
    80008af0:	00c78223          	sb	a2,4(a5)
    80008af4:	00e68e63          	beq	a3,a4,80008b10 <__memmove+0xfc>
    80008af8:	0055c603          	lbu	a2,5(a1)
    80008afc:	00500713          	li	a4,5
    80008b00:	00c782a3          	sb	a2,5(a5)
    80008b04:	00e68663          	beq	a3,a4,80008b10 <__memmove+0xfc>
    80008b08:	0065c703          	lbu	a4,6(a1)
    80008b0c:	00e78323          	sb	a4,6(a5)
    80008b10:	00813403          	ld	s0,8(sp)
    80008b14:	01010113          	addi	sp,sp,16
    80008b18:	00008067          	ret
    80008b1c:	02061713          	slli	a4,a2,0x20
    80008b20:	02075713          	srli	a4,a4,0x20
    80008b24:	00e587b3          	add	a5,a1,a4
    80008b28:	f0f574e3          	bgeu	a0,a5,80008a30 <__memmove+0x1c>
    80008b2c:	02069613          	slli	a2,a3,0x20
    80008b30:	02065613          	srli	a2,a2,0x20
    80008b34:	fff64613          	not	a2,a2
    80008b38:	00e50733          	add	a4,a0,a4
    80008b3c:	00c78633          	add	a2,a5,a2
    80008b40:	fff7c683          	lbu	a3,-1(a5)
    80008b44:	fff78793          	addi	a5,a5,-1
    80008b48:	fff70713          	addi	a4,a4,-1
    80008b4c:	00d70023          	sb	a3,0(a4)
    80008b50:	fec798e3          	bne	a5,a2,80008b40 <__memmove+0x12c>
    80008b54:	00813403          	ld	s0,8(sp)
    80008b58:	01010113          	addi	sp,sp,16
    80008b5c:	00008067          	ret
    80008b60:	02069713          	slli	a4,a3,0x20
    80008b64:	02075713          	srli	a4,a4,0x20
    80008b68:	00170713          	addi	a4,a4,1
    80008b6c:	00e50733          	add	a4,a0,a4
    80008b70:	00050793          	mv	a5,a0
    80008b74:	0005c683          	lbu	a3,0(a1)
    80008b78:	00178793          	addi	a5,a5,1
    80008b7c:	00158593          	addi	a1,a1,1
    80008b80:	fed78fa3          	sb	a3,-1(a5)
    80008b84:	fee798e3          	bne	a5,a4,80008b74 <__memmove+0x160>
    80008b88:	f89ff06f          	j	80008b10 <__memmove+0xfc>
	...
