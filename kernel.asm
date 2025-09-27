
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000c117          	auipc	sp,0xc
    80000004:	a2013103          	ld	sp,-1504(sp) # 8000ba20 <_GLOBAL_OFFSET_TABLE_+0x38>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	36d060ef          	jal	ra,80006b88 <start>

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
    80001084:	169010ef          	jal	ra,800029ec <_ZN5Riscv21SupervisorTrapHandlerEv>
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
    80001430:	6647b783          	ld	a5,1636(a5) # 8000ba90 <_ZN5SList4headE>
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
    80001458:	62a7be23          	sd	a0,1596(a5) # 8000ba90 <_ZN5SList4headE>
            curr=curr->next;
        }
        newNode->next = curr->next;
        curr->next = newNode;
    }
    size++;
    8000145c:	0000a717          	auipc	a4,0xa
    80001460:	63470713          	addi	a4,a4,1588 # 8000ba90 <_ZN5SList4headE>
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
    800014c0:	5d47b783          	ld	a5,1492(a5) # 8000ba90 <_ZN5SList4headE>
    800014c4:	08078863          	beqz	a5,80001554 <_ZN5SList7oneTickEv+0x98>
        return;
    head->sleepTime--;
    800014c8:	0087b703          	ld	a4,8(a5)
    800014cc:	fff70713          	addi	a4,a4,-1
    800014d0:	00e7b423          	sd	a4,8(a5)
    while (head != nullptr && head->sleepTime <= 0) {
    800014d4:	0000a797          	auipc	a5,0xa
    800014d8:	5bc7b783          	ld	a5,1468(a5) # 8000ba90 <_ZN5SList4headE>
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
    8000151c:	57878793          	addi	a5,a5,1400 # 8000ba90 <_ZN5SList4headE>
    80001520:	0007b703          	ld	a4,0(a5)
    80001524:	01073703          	ld	a4,16(a4)
    80001528:	00e7b023          	sd	a4,0(a5)
        size--;
    8000152c:	0087a703          	lw	a4,8(a5)
    80001530:	fff7071b          	addiw	a4,a4,-1
    80001534:	00e7a423          	sw	a4,8(a5)
    while (head != nullptr && head->sleepTime <= 0) {
    80001538:	0000a797          	auipc	a5,0xa
    8000153c:	5587b783          	ld	a5,1368(a5) # 8000ba90 <_ZN5SList4headE>
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
    8000158c:	8c0080e7          	jalr	-1856(ra) # 80002e48 <_ZN15MemoryAllocator8InstanceEv>
    80001590:	00090593          	mv	a1,s2
    80001594:	00002097          	auipc	ra,0x2
    80001598:	910080e7          	jalr	-1776(ra) # 80002ea4 <_ZN15MemoryAllocator9mem_allocEm>
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
    800015f0:	00002097          	auipc	ra,0x2
    800015f4:	858080e7          	jalr	-1960(ra) # 80002e48 <_ZN15MemoryAllocator8InstanceEv>
    800015f8:	0004b583          	ld	a1,0(s1)
    800015fc:	00002097          	auipc	ra,0x2
    80001600:	a20080e7          	jalr	-1504(ra) # 8000301c <_ZN15MemoryAllocator8mem_freeEPv>
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
    80001660:	3d47b783          	ld	a5,980(a5) # 8000ba30 <_GLOBAL_OFFSET_TABLE_+0x48>
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
    800016fc:	3387b783          	ld	a5,824(a5) # 8000ba30 <_GLOBAL_OFFSET_TABLE_+0x48>
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
    800017e0:	2c47b783          	ld	a5,708(a5) # 8000baa0 <semaphore>
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
    80001824:	2897b023          	sd	s1,640(a5) # 8000baa0 <semaphore>
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
    80001850:	8f0080e7          	jalr	-1808(ra) # 8000313c <_Z12pprintStringPKc>
    80001854:	fd9ff06f          	j	8000182c <_Z13initSemaphorev+0x50>
    80001858:	00050913          	mv	s2,a0
    semaphore = new Semaphore(1);
    8000185c:	00048513          	mv	a0,s1
    80001860:	00000097          	auipc	ra,0x0
    80001864:	6fc080e7          	jalr	1788(ra) # 80001f5c <_ZdlPv>
    80001868:	00090513          	mv	a0,s2
    8000186c:	0000b097          	auipc	ra,0xb
    80001870:	3bc080e7          	jalr	956(ra) # 8000cc28 <_Unwind_Resume>

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
    800018e0:	00002097          	auipc	ra,0x2
    800018e4:	85c080e7          	jalr	-1956(ra) # 8000313c <_Z12pprintStringPKc>
    800018e8:	00048513          	mv	a0,s1
    800018ec:	00002097          	auipc	ra,0x2
    800018f0:	894080e7          	jalr	-1900(ra) # 80003180 <_Z12printIntegerm>
    800018f4:	00008517          	auipc	a0,0x8
    800018f8:	ae450513          	addi	a0,a0,-1308 # 800093d8 <_ZZ12printIntegermE6digits+0x310>
    800018fc:	00002097          	auipc	ra,0x2
    80001900:	840080e7          	jalr	-1984(ra) # 8000313c <_Z12pprintStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80001904:	00000693          	li	a3,0
    80001908:	fa1ff06f          	j	800018a8 <_Z11workerBodyAv+0x34>
            // TCB::yield();
        }
    }
    pprintString("A finished!\n");
    8000190c:	00007517          	auipc	a0,0x7
    80001910:	72450513          	addi	a0,a0,1828 # 80009030 <CONSOLE_STATUS+0x20>
    80001914:	00002097          	auipc	ra,0x2
    80001918:	828080e7          	jalr	-2008(ra) # 8000313c <_Z12pprintStringPKc>
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
    80001950:	15453503          	ld	a0,340(a0) # 8000baa0 <semaphore>
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
    800019b0:	790080e7          	jalr	1936(ra) # 8000313c <_Z12pprintStringPKc>
    800019b4:	00048513          	mv	a0,s1
    800019b8:	00001097          	auipc	ra,0x1
    800019bc:	7c8080e7          	jalr	1992(ra) # 80003180 <_Z12printIntegerm>
    800019c0:	00008517          	auipc	a0,0x8
    800019c4:	a1850513          	addi	a0,a0,-1512 # 800093d8 <_ZZ12printIntegermE6digits+0x310>
    800019c8:	00001097          	auipc	ra,0x1
    800019cc:	774080e7          	jalr	1908(ra) # 8000313c <_Z12pprintStringPKc>
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
    800019e4:	75c080e7          	jalr	1884(ra) # 8000313c <_Z12pprintStringPKc>
    semaphore->signal();
    800019e8:	0000a517          	auipc	a0,0xa
    800019ec:	0b853503          	ld	a0,184(a0) # 8000baa0 <semaphore>
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
    80001a2c:	07853503          	ld	a0,120(a0) # 8000baa0 <semaphore>
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
    80001a8c:	6b4080e7          	jalr	1716(ra) # 8000313c <_Z12pprintStringPKc>
    80001a90:	00048513          	mv	a0,s1
    80001a94:	00001097          	auipc	ra,0x1
    80001a98:	6ec080e7          	jalr	1772(ra) # 80003180 <_Z12printIntegerm>
    80001a9c:	00008517          	auipc	a0,0x8
    80001aa0:	93c50513          	addi	a0,a0,-1732 # 800093d8 <_ZZ12printIntegermE6digits+0x310>
    80001aa4:	00001097          	auipc	ra,0x1
    80001aa8:	698080e7          	jalr	1688(ra) # 8000313c <_Z12pprintStringPKc>
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
    80001ac0:	680080e7          	jalr	1664(ra) # 8000313c <_Z12pprintStringPKc>
    // uint64 result = fibonacci(35);
    // pprintString("C: fibonaci="); printInteger(result); pprintString("\n");
    //
    // for (; i < 26; i++) { pprintString("C: i="); printInteger(i); pprintString("\n"); }
    // pprintString("C finished!\n");
    semaphore->signal();
    80001ac4:	0000a517          	auipc	a0,0xa
    80001ac8:	fdc53503          	ld	a0,-36(a0) # 8000baa0 <semaphore>
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
    80001b0c:	634080e7          	jalr	1588(ra) # 8000313c <_Z12pprintStringPKc>
    da++;
    80001b10:	0000a717          	auipc	a4,0xa
    80001b14:	f9070713          	addi	a4,a4,-112 # 8000baa0 <semaphore>
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
    80001b84:	f3078793          	addi	a5,a5,-208 # 8000bab0 <_ZN9Scheduler5queueE>
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
    80001bb0:	f0478793          	addi	a5,a5,-252 # 8000bab0 <_ZN9Scheduler5queueE>
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
    80001bd4:	ee873703          	ld	a4,-280(a4) # 8000bab8 <_ZN9Scheduler5queueE+0x8>
    80001bd8:	00e48863          	beq	s1,a4,80001be8 <_ZN9Scheduler3getEv+0x50>
    80001bdc:	00048793          	mv	a5,s1
    80001be0:	0084b483          	ld	s1,8(s1)
    80001be4:	fe9ff06f          	j	80001bcc <_ZN9Scheduler3getEv+0x34>
        Elem* elem=tail;
    80001be8:	0000a517          	auipc	a0,0xa
    80001bec:	ed053503          	ld	a0,-304(a0) # 8000bab8 <_ZN9Scheduler5queueE+0x8>
        if(prev) prev->next=0;
    80001bf0:	02078c63          	beqz	a5,80001c28 <_ZN9Scheduler3getEv+0x90>
    80001bf4:	0007b423          	sd	zero,8(a5)
        else head=0;
        tail=prev;
    80001bf8:	0000a717          	auipc	a4,0xa
    80001bfc:	ecf73023          	sd	a5,-320(a4) # 8000bab8 <_ZN9Scheduler5queueE+0x8>
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
    80001c2c:	e8073423          	sd	zero,-376(a4) # 8000bab0 <_ZN9Scheduler5queueE>
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
    80001c5c:	e5878793          	addi	a5,a5,-424 # 8000bab0 <_ZN9Scheduler5queueE>
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
    80001c7c:	e3870713          	addi	a4,a4,-456 # 8000bab0 <_ZN9Scheduler5queueE>
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
    80001ca4:	e0a7bc23          	sd	a0,-488(a5) # 8000bab8 <_ZN9Scheduler5queueE+0x8>
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
    80001cfc:	444080e7          	jalr	1092(ra) # 8000313c <_Z12pprintStringPKc>
    userMain();
    80001d00:	00004097          	auipc	ra,0x4
    80001d04:	2f4080e7          	jalr	756(ra) # 80005ff4 <_Z8userMainv>
    pprintString("user main end:\n");
    80001d08:	00007517          	auipc	a0,0x7
    80001d0c:	38850513          	addi	a0,a0,904 # 80009090 <CONSOLE_STATUS+0x80>
    80001d10:	00001097          	auipc	ra,0x1
    80001d14:	42c080e7          	jalr	1068(ra) # 8000313c <_Z12pprintStringPKc>
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
    80001de4:	c287b783          	ld	a5,-984(a5) # 8000ba08 <_GLOBAL_OFFSET_TABLE_+0x20>

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
    80001df8:	b28080e7          	jalr	-1240(ra) # 8000291c <_ZN5Riscv10InitBBuffsEv>
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
    80001e14:	8c4080e7          	jalr	-1852(ra) # 800026d4 <_ZN3TCB16InitOutputThreadEv>


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
    80001e40:	0027c783          	lbu	a5,2(a5)
    80001e44:	fe0788e3          	beqz	a5,80001e34 <main+0x6c>
    80001e48:	0000a797          	auipc	a5,0xa
    80001e4c:	be07b783          	ld	a5,-1056(a5) # 8000ba28 <_GLOBAL_OFFSET_TABLE_+0x40>
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
    80001e68:	fe4080e7          	jalr	-28(ra) # 80002e48 <_ZN15MemoryAllocator8InstanceEv>
    80001e6c:	00090593          	mv	a1,s2
    80001e70:	00001097          	auipc	ra,0x1
    80001e74:	1ac080e7          	jalr	428(ra) # 8000301c <_ZN15MemoryAllocator8mem_freeEPv>
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
    80001eac:	294080e7          	jalr	660(ra) # 8000313c <_Z12pprintStringPKc>

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
    80001f10:	8f478793          	addi	a5,a5,-1804 # 8000b800 <_ZTV9Semaphore+0x10>
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
    80001f9c:	84078793          	addi	a5,a5,-1984 # 8000b7d8 <_ZTV6Thread+0x10>
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
    80001fc0:	e8c080e7          	jalr	-372(ra) # 80002e48 <_ZN15MemoryAllocator8InstanceEv>
    80001fc4:	00048593          	mv	a1,s1
    80001fc8:	00001097          	auipc	ra,0x1
    80001fcc:	054080e7          	jalr	84(ra) # 8000301c <_ZN15MemoryAllocator8mem_freeEPv>
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
    80002074:	76878793          	addi	a5,a5,1896 # 8000b7d8 <_ZTV6Thread+0x10>
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
    800020cc:	71078793          	addi	a5,a5,1808 # 8000b7d8 <_ZTV6Thread+0x10>
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
    800021d4:	63078793          	addi	a5,a5,1584 # 8000b800 <_ZTV9Semaphore+0x10>
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
    8000227c:	5a878793          	addi	a5,a5,1448 # 8000b820 <_ZTV14PeriodicThread+0x10>
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
    80002350:	4d478793          	addi	a5,a5,1236 # 8000b820 <_ZTV14PeriodicThread+0x10>
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
    8000238c:	49878793          	addi	a5,a5,1176 # 8000b820 <_ZTV14PeriodicThread+0x10>
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
    800023e4:	6187b783          	ld	a5,1560(a5) # 8000b9f8 <_GLOBAL_OFFSET_TABLE_+0x10>
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
    80002408:	6247b783          	ld	a5,1572(a5) # 8000ba28 <_GLOBAL_OFFSET_TABLE_+0x40>
    8000240c:	0007b503          	ld	a0,0(a5)
    80002410:	fffff097          	auipc	ra,0xfffff
    80002414:	2c0080e7          	jalr	704(ra) # 800016d0 <_ZN5BBuff3getEv>
            *((char*)CONSOLE_TX_DATA) = c;
    80002418:	00009797          	auipc	a5,0x9
    8000241c:	5f87b783          	ld	a5,1528(a5) # 8000ba10 <_GLOBAL_OFFSET_TABLE_+0x28>
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
    80002464:	9e8080e7          	jalr	-1560(ra) # 80002e48 <_ZN15MemoryAllocator8InstanceEv>
    80002468:	04000593          	li	a1,64
    8000246c:	00001097          	auipc	ra,0x1
    80002470:	a38080e7          	jalr	-1480(ra) # 80002ea4 <_ZN15MemoryAllocator9mem_allocEm>
    80002474:	00050493          	mv	s1,a0
              body != nullptr ? (uint64)&TCBWrapper : 0,
              body != nullptr ? (uint64)((char*)stackMem + DEFAULT_STACK_SIZE) : 0
          }),
          body(body),
            blocked(false),
    timeSlice(DEFAULT_TIME_SLICE)
    80002478:	00050123          	sb	zero,2(a0)
    8000247c:	01253423          	sd	s2,8(a0)
    80002480:	01453823          	sd	s4,16(a0)
              body != nullptr ? (uint64)&TCBWrapper : 0,
    80002484:	04098a63          	beqz	s3,800024d8 <_ZN3TCB12createThreadEPFvPvES0_Pm+0xa4>
    80002488:	00000797          	auipc	a5,0x0
    8000248c:	1ac78793          	addi	a5,a5,428 # 80002634 <_ZN3TCB10TCBWrapperEv>
    timeSlice(DEFAULT_TIME_SLICE)
    80002490:	00f4bc23          	sd	a5,24(s1)
              body != nullptr ? (uint64)((char*)stackMem + DEFAULT_STACK_SIZE) : 0
    80002494:	04098663          	beqz	s3,800024e0 <_ZN3TCB12createThreadEPFvPvES0_Pm+0xac>
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
        sys=false;
    800024b8:	000480a3          	sb	zero,1(s1)
        timeSlice = DEFAULT_TIME_SLICE;
        if (running == nullptr) {
    800024bc:	00009797          	auipc	a5,0x9
    800024c0:	60c7b783          	ld	a5,1548(a5) # 8000bac8 <_ZN3TCB7runningE>
    800024c4:	02078263          	beqz	a5,800024e8 <_ZN3TCB12createThreadEPFvPvES0_Pm+0xb4>
            running = this;
        } else {
            Scheduler::put(this);
    800024c8:	00048513          	mv	a0,s1
    800024cc:	fffff097          	auipc	ra,0xfffff
    800024d0:	768080e7          	jalr	1896(ra) # 80001c34 <_ZN9Scheduler3putEP3TCB>
    800024d4:	01c0006f          	j	800024f0 <_ZN3TCB12createThreadEPFvPvES0_Pm+0xbc>
              body != nullptr ? (uint64)&TCBWrapper : 0,
    800024d8:	00000793          	li	a5,0
    800024dc:	fb5ff06f          	j	80002490 <_ZN3TCB12createThreadEPFvPvES0_Pm+0x5c>
              body != nullptr ? (uint64)((char*)stackMem + DEFAULT_STACK_SIZE) : 0
    800024e0:	00000913          	li	s2,0
    800024e4:	fbdff06f          	j	800024a0 <_ZN3TCB12createThreadEPFvPvES0_Pm+0x6c>
            running = this;
    800024e8:	00009797          	auipc	a5,0x9
    800024ec:	5e97b023          	sd	s1,1504(a5) # 8000bac8 <_ZN3TCB7runningE>
}
    800024f0:	00048513          	mv	a0,s1
    800024f4:	02813083          	ld	ra,40(sp)
    800024f8:	02013403          	ld	s0,32(sp)
    800024fc:	01813483          	ld	s1,24(sp)
    80002500:	01013903          	ld	s2,16(sp)
    80002504:	00813983          	ld	s3,8(sp)
    80002508:	00013a03          	ld	s4,0(sp)
    8000250c:	03010113          	addi	sp,sp,48
    80002510:	00008067          	ret
    80002514:	00050913          	mv	s2,a0
        return MemoryAllocator::Instance()->mem_free(ptr);
    80002518:	00001097          	auipc	ra,0x1
    8000251c:	930080e7          	jalr	-1744(ra) # 80002e48 <_ZN15MemoryAllocator8InstanceEv>
    80002520:	00048593          	mv	a1,s1
    80002524:	00001097          	auipc	ra,0x1
    80002528:	af8080e7          	jalr	-1288(ra) # 8000301c <_ZN15MemoryAllocator8mem_freeEPv>
    8000252c:	00090513          	mv	a0,s2
    80002530:	0000a097          	auipc	ra,0xa
    80002534:	6f8080e7          	jalr	1784(ra) # 8000cc28 <_Unwind_Resume>

0000000080002538 <_ZN3TCB8dispatchEv>:
void TCB::dispatch() {
    80002538:	fe010113          	addi	sp,sp,-32
    8000253c:	00113c23          	sd	ra,24(sp)
    80002540:	00813823          	sd	s0,16(sp)
    80002544:	00913423          	sd	s1,8(sp)
    80002548:	01213023          	sd	s2,0(sp)
    8000254c:	02010413          	addi	s0,sp,32
    TCB *old=running;
    80002550:	00009497          	auipc	s1,0x9
    80002554:	5784b483          	ld	s1,1400(s1) # 8000bac8 <_ZN3TCB7runningE>
    bool isFinished() const { return finished;}
    80002558:	0024c783          	lbu	a5,2(s1)
    if (!old->isFinished() && !old->isBlocked() && !old->idle) {
    8000255c:	00079a63          	bnez	a5,80002570 <_ZN3TCB8dispatchEv+0x38>
    bool isBlocked() const { return blocked; }
    80002560:	0304c783          	lbu	a5,48(s1)
    80002564:	00079663          	bnez	a5,80002570 <_ZN3TCB8dispatchEv+0x38>
    80002568:	0004c783          	lbu	a5,0(s1)
    8000256c:	04078c63          	beqz	a5,800025c4 <_ZN3TCB8dispatchEv+0x8c>
    running=Scheduler::get();
    80002570:	fffff097          	auipc	ra,0xfffff
    80002574:	628080e7          	jalr	1576(ra) # 80001b98 <_ZN9Scheduler3getEv>
    80002578:	00009797          	auipc	a5,0x9
    8000257c:	54a7b823          	sd	a0,1360(a5) # 8000bac8 <_ZN3TCB7runningE>
    if (!running) {
    80002580:	04050a63          	beqz	a0,800025d4 <_ZN3TCB8dispatchEv+0x9c>
    timeCounter=0;
    80002584:	00009917          	auipc	s2,0x9
    80002588:	54490913          	addi	s2,s2,1348 # 8000bac8 <_ZN3TCB7runningE>
    8000258c:	00093823          	sd	zero,16(s2)
    Riscv::restoreSPP();
    80002590:	00000097          	auipc	ra,0x0
    80002594:	34c080e7          	jalr	844(ra) # 800028dc <_ZN5Riscv10restoreSPPEv>
    context_switch(&old->context, &running->context);
    80002598:	00093583          	ld	a1,0(s2)
    8000259c:	01858593          	addi	a1,a1,24
    800025a0:	01848513          	addi	a0,s1,24
    800025a4:	fffff097          	auipc	ra,0xfffff
    800025a8:	b7c080e7          	jalr	-1156(ra) # 80001120 <context_switch>
}
    800025ac:	01813083          	ld	ra,24(sp)
    800025b0:	01013403          	ld	s0,16(sp)
    800025b4:	00813483          	ld	s1,8(sp)
    800025b8:	00013903          	ld	s2,0(sp)
    800025bc:	02010113          	addi	sp,sp,32
    800025c0:	00008067          	ret
        Scheduler::put(old);
    800025c4:	00048513          	mv	a0,s1
    800025c8:	fffff097          	auipc	ra,0xfffff
    800025cc:	66c080e7          	jalr	1644(ra) # 80001c34 <_ZN9Scheduler3putEP3TCB>
    800025d0:	fa1ff06f          	j	80002570 <_ZN3TCB8dispatchEv+0x38>
        running=idleThread;
    800025d4:	00009797          	auipc	a5,0x9
    800025d8:	4f478793          	addi	a5,a5,1268 # 8000bac8 <_ZN3TCB7runningE>
    800025dc:	0087b703          	ld	a4,8(a5)
    800025e0:	00e7b023          	sd	a4,0(a5)
    800025e4:	fa1ff06f          	j	80002584 <_ZN3TCB8dispatchEv+0x4c>

00000000800025e8 <_ZN3TCB4exitEv>:
    if (running->isFinished()) {
    800025e8:	00009797          	auipc	a5,0x9
    800025ec:	4e07b783          	ld	a5,1248(a5) # 8000bac8 <_ZN3TCB7runningE>
    bool isFinished() const { return finished;}
    800025f0:	0027c703          	lbu	a4,2(a5)
    800025f4:	02071c63          	bnez	a4,8000262c <_ZN3TCB4exitEv+0x44>
int TCB::exit() {
    800025f8:	ff010113          	addi	sp,sp,-16
    800025fc:	00113423          	sd	ra,8(sp)
    80002600:	00813023          	sd	s0,0(sp)
    80002604:	01010413          	addi	s0,sp,16
    running->finished=true;
    80002608:	00100713          	li	a4,1
    8000260c:	00e78123          	sb	a4,2(a5)
    thread_dispatch();
    80002610:	fffff097          	auipc	ra,0xfffff
    80002614:	c74080e7          	jalr	-908(ra) # 80001284 <_Z15thread_dispatchv>
    return 0;
    80002618:	00000513          	li	a0,0
}
    8000261c:	00813083          	ld	ra,8(sp)
    80002620:	00013403          	ld	s0,0(sp)
    80002624:	01010113          	addi	sp,sp,16
    80002628:	00008067          	ret
        return -1;
    8000262c:	fff00513          	li	a0,-1
}
    80002630:	00008067          	ret

0000000080002634 <_ZN3TCB10TCBWrapperEv>:
void TCB::TCBWrapper() {
    80002634:	ff010113          	addi	sp,sp,-16
    80002638:	00113423          	sd	ra,8(sp)
    8000263c:	00813023          	sd	s0,0(sp)
    80002640:	01010413          	addi	s0,sp,16
    Riscv::restoreSPP();
    80002644:	00000097          	auipc	ra,0x0
    80002648:	298080e7          	jalr	664(ra) # 800028dc <_ZN5Riscv10restoreSPPEv>
    Riscv::popSppSpie();
    8000264c:	00000097          	auipc	ra,0x0
    80002650:	270080e7          	jalr	624(ra) # 800028bc <_ZN5Riscv10popSppSpieEv>
    running->body(running->arg);
    80002654:	00009797          	auipc	a5,0x9
    80002658:	4747b783          	ld	a5,1140(a5) # 8000bac8 <_ZN3TCB7runningE>
    8000265c:	0287b703          	ld	a4,40(a5)
    80002660:	0107b503          	ld	a0,16(a5)
    80002664:	000700e7          	jalr	a4
    exit();
    80002668:	00000097          	auipc	ra,0x0
    8000266c:	f80080e7          	jalr	-128(ra) # 800025e8 <_ZN3TCB4exitEv>
}
    80002670:	00813083          	ld	ra,8(sp)
    80002674:	00013403          	ld	s0,0(sp)
    80002678:	01010113          	addi	sp,sp,16
    8000267c:	00008067          	ret

0000000080002680 <_ZN3TCB5sleepEm>:
    if (time <= 0) {
    80002680:	04050663          	beqz	a0,800026cc <_ZN3TCB5sleepEm+0x4c>
int TCB::sleep(time_t time) {
    80002684:	ff010113          	addi	sp,sp,-16
    80002688:	00113423          	sd	ra,8(sp)
    8000268c:	00813023          	sd	s0,0(sp)
    80002690:	01010413          	addi	s0,sp,16
    80002694:	00050593          	mv	a1,a0
    running->block();
    80002698:	00009517          	auipc	a0,0x9
    8000269c:	43053503          	ld	a0,1072(a0) # 8000bac8 <_ZN3TCB7runningE>
    void block() { this->blocked = true; }
    800026a0:	00100793          	li	a5,1
    800026a4:	02f50823          	sb	a5,48(a0)
    SList::add(running, time);
    800026a8:	fffff097          	auipc	ra,0xfffff
    800026ac:	d48080e7          	jalr	-696(ra) # 800013f0 <_ZN5SList3addEP3TCBm>
    dispatch();
    800026b0:	00000097          	auipc	ra,0x0
    800026b4:	e88080e7          	jalr	-376(ra) # 80002538 <_ZN3TCB8dispatchEv>
    return 0;
    800026b8:	00000513          	li	a0,0
}
    800026bc:	00813083          	ld	ra,8(sp)
    800026c0:	00013403          	ld	s0,0(sp)
    800026c4:	01010113          	addi	sp,sp,16
    800026c8:	00008067          	ret
        return -1;
    800026cc:	fff00513          	li	a0,-1
}
    800026d0:	00008067          	ret

00000000800026d4 <_ZN3TCB16InitOutputThreadEv>:





void TCB::InitOutputThread() {
    800026d4:	fd010113          	addi	sp,sp,-48
    800026d8:	02113423          	sd	ra,40(sp)
    800026dc:	02813023          	sd	s0,32(sp)
    800026e0:	00913c23          	sd	s1,24(sp)
    800026e4:	01213823          	sd	s2,16(sp)
    800026e8:	01313423          	sd	s3,8(sp)
    800026ec:	01413023          	sd	s4,0(sp)
    800026f0:	03010413          	addi	s0,sp,48

    outputThread = new TCB(OutputThreadBody,nullptr, (uint64*)MemoryAllocator::Instance()->mem_alloc(DEFAULT_STACK_SIZE));
    800026f4:	00000097          	auipc	ra,0x0
    800026f8:	754080e7          	jalr	1876(ra) # 80002e48 <_ZN15MemoryAllocator8InstanceEv>
    800026fc:	000015b7          	lui	a1,0x1
    80002700:	00000097          	auipc	ra,0x0
    80002704:	7a4080e7          	jalr	1956(ra) # 80002ea4 <_ZN15MemoryAllocator9mem_allocEm>
    80002708:	00050913          	mv	s2,a0
    return MemoryAllocator::Instance()->mem_alloc(size);
    8000270c:	00000097          	auipc	ra,0x0
    80002710:	73c080e7          	jalr	1852(ra) # 80002e48 <_ZN15MemoryAllocator8InstanceEv>
    80002714:	04000593          	li	a1,64
    80002718:	00000097          	auipc	ra,0x0
    8000271c:	78c080e7          	jalr	1932(ra) # 80002ea4 <_ZN15MemoryAllocator9mem_allocEm>
    80002720:	00050493          	mv	s1,a0
    timeSlice(DEFAULT_TIME_SLICE)
    80002724:	00050123          	sb	zero,2(a0)
    80002728:	01253423          	sd	s2,8(a0)
    8000272c:	00053823          	sd	zero,16(a0)
              body != nullptr ? (uint64)&TCBWrapper : 0,
    80002730:	00000a17          	auipc	s4,0x0
    80002734:	f04a0a13          	addi	s4,s4,-252 # 80002634 <_ZN3TCB10TCBWrapperEv>
    timeSlice(DEFAULT_TIME_SLICE)
    80002738:	01453c23          	sd	s4,24(a0)
              body != nullptr ? (uint64)((char*)stackMem + DEFAULT_STACK_SIZE) : 0
    8000273c:	00001537          	lui	a0,0x1
    80002740:	00a90933          	add	s2,s2,a0
    timeSlice(DEFAULT_TIME_SLICE)
    80002744:	0324b023          	sd	s2,32(s1)
    80002748:	00000797          	auipc	a5,0x0
    8000274c:	c8478793          	addi	a5,a5,-892 # 800023cc <_ZN3TCB16OutputThreadBodyEPv>
    80002750:	02f4b423          	sd	a5,40(s1)
    80002754:	02048823          	sb	zero,48(s1)
    80002758:	00200793          	li	a5,2
    8000275c:	02f4bc23          	sd	a5,56(s1)
        idle=false;
    80002760:	00048023          	sb	zero,0(s1)
        sys=false;
    80002764:	000480a3          	sb	zero,1(s1)
        if (running == nullptr) {
    80002768:	00009797          	auipc	a5,0x9
    8000276c:	3607b783          	ld	a5,864(a5) # 8000bac8 <_ZN3TCB7runningE>
    80002770:	00078a63          	beqz	a5,80002784 <_ZN3TCB16InitOutputThreadEv+0xb0>
            Scheduler::put(this);
    80002774:	00048513          	mv	a0,s1
    80002778:	fffff097          	auipc	ra,0xfffff
    8000277c:	4bc080e7          	jalr	1212(ra) # 80001c34 <_ZN9Scheduler3putEP3TCB>
    80002780:	00c0006f          	j	8000278c <_ZN3TCB16InitOutputThreadEv+0xb8>
            running = this;
    80002784:	00009797          	auipc	a5,0x9
    80002788:	3497b223          	sd	s1,836(a5) # 8000bac8 <_ZN3TCB7runningE>
    8000278c:	00009997          	auipc	s3,0x9
    80002790:	33c98993          	addi	s3,s3,828 # 8000bac8 <_ZN3TCB7runningE>
    80002794:	0099bc23          	sd	s1,24(s3)
    outputThread->sys=true;
    80002798:	00100793          	li	a5,1
    8000279c:	00f480a3          	sb	a5,1(s1)
    Scheduler::put(outputThread);
    800027a0:	0189b503          	ld	a0,24(s3)
    800027a4:	fffff097          	auipc	ra,0xfffff
    800027a8:	490080e7          	jalr	1168(ra) # 80001c34 <_ZN9Scheduler3putEP3TCB>

    idleThread=new TCB(IdleThreadBody,nullptr, (uint64*)MemoryAllocator::Instance()->mem_alloc(DEFAULT_STACK_SIZE));
    800027ac:	00000097          	auipc	ra,0x0
    800027b0:	69c080e7          	jalr	1692(ra) # 80002e48 <_ZN15MemoryAllocator8InstanceEv>
    800027b4:	000015b7          	lui	a1,0x1
    800027b8:	00000097          	auipc	ra,0x0
    800027bc:	6ec080e7          	jalr	1772(ra) # 80002ea4 <_ZN15MemoryAllocator9mem_allocEm>
    800027c0:	00050913          	mv	s2,a0
    return MemoryAllocator::Instance()->mem_alloc(size);
    800027c4:	00000097          	auipc	ra,0x0
    800027c8:	684080e7          	jalr	1668(ra) # 80002e48 <_ZN15MemoryAllocator8InstanceEv>
    800027cc:	04000593          	li	a1,64
    800027d0:	00000097          	auipc	ra,0x0
    800027d4:	6d4080e7          	jalr	1748(ra) # 80002ea4 <_ZN15MemoryAllocator9mem_allocEm>
    800027d8:	00050493          	mv	s1,a0
    timeSlice(DEFAULT_TIME_SLICE)
    800027dc:	00050123          	sb	zero,2(a0) # 1002 <_entry-0x7fffeffe>
    800027e0:	01253423          	sd	s2,8(a0)
    800027e4:	00053823          	sd	zero,16(a0)
    800027e8:	01453c23          	sd	s4,24(a0)
              body != nullptr ? (uint64)((char*)stackMem + DEFAULT_STACK_SIZE) : 0
    800027ec:	00001537          	lui	a0,0x1
    800027f0:	00a90933          	add	s2,s2,a0
    timeSlice(DEFAULT_TIME_SLICE)
    800027f4:	0324b023          	sd	s2,32(s1)
    800027f8:	00000797          	auipc	a5,0x0
    800027fc:	bc478793          	addi	a5,a5,-1084 # 800023bc <_ZN3TCB14IdleThreadBodyEPv>
    80002800:	02f4b423          	sd	a5,40(s1)
    80002804:	02048823          	sb	zero,48(s1)
    80002808:	00200793          	li	a5,2
    8000280c:	02f4bc23          	sd	a5,56(s1)
        idle=false;
    80002810:	00048023          	sb	zero,0(s1)
        sys=false;
    80002814:	000480a3          	sb	zero,1(s1)
        if (running == nullptr) {
    80002818:	0009b783          	ld	a5,0(s3)
    8000281c:	00078a63          	beqz	a5,80002830 <_ZN3TCB16InitOutputThreadEv+0x15c>
            Scheduler::put(this);
    80002820:	00048513          	mv	a0,s1
    80002824:	fffff097          	auipc	ra,0xfffff
    80002828:	410080e7          	jalr	1040(ra) # 80001c34 <_ZN9Scheduler3putEP3TCB>
    8000282c:	00c0006f          	j	80002838 <_ZN3TCB16InitOutputThreadEv+0x164>
            running = this;
    80002830:	00009797          	auipc	a5,0x9
    80002834:	2897bc23          	sd	s1,664(a5) # 8000bac8 <_ZN3TCB7runningE>
    80002838:	00009717          	auipc	a4,0x9
    8000283c:	29070713          	addi	a4,a4,656 # 8000bac8 <_ZN3TCB7runningE>
    80002840:	00973423          	sd	s1,8(a4)
    idleThread->sys=true;
    80002844:	00100793          	li	a5,1
    80002848:	00f480a3          	sb	a5,1(s1)
    idleThread->idle=true;
    8000284c:	00873703          	ld	a4,8(a4)
    80002850:	00f70023          	sb	a5,0(a4)
}
    80002854:	02813083          	ld	ra,40(sp)
    80002858:	02013403          	ld	s0,32(sp)
    8000285c:	01813483          	ld	s1,24(sp)
    80002860:	01013903          	ld	s2,16(sp)
    80002864:	00813983          	ld	s3,8(sp)
    80002868:	00013a03          	ld	s4,0(sp)
    8000286c:	03010113          	addi	sp,sp,48
    80002870:	00008067          	ret
    80002874:	00050913          	mv	s2,a0
        return MemoryAllocator::Instance()->mem_free(ptr);
    80002878:	00000097          	auipc	ra,0x0
    8000287c:	5d0080e7          	jalr	1488(ra) # 80002e48 <_ZN15MemoryAllocator8InstanceEv>
    80002880:	00048593          	mv	a1,s1
    80002884:	00000097          	auipc	ra,0x0
    80002888:	798080e7          	jalr	1944(ra) # 8000301c <_ZN15MemoryAllocator8mem_freeEPv>
    8000288c:	00090513          	mv	a0,s2
    80002890:	0000a097          	auipc	ra,0xa
    80002894:	398080e7          	jalr	920(ra) # 8000cc28 <_Unwind_Resume>
    80002898:	00050913          	mv	s2,a0
    8000289c:	00000097          	auipc	ra,0x0
    800028a0:	5ac080e7          	jalr	1452(ra) # 80002e48 <_ZN15MemoryAllocator8InstanceEv>
    800028a4:	00048593          	mv	a1,s1
    800028a8:	00000097          	auipc	ra,0x0
    800028ac:	774080e7          	jalr	1908(ra) # 8000301c <_ZN15MemoryAllocator8mem_freeEPv>
    800028b0:	00090513          	mv	a0,s2
    800028b4:	0000a097          	auipc	ra,0xa
    800028b8:	374080e7          	jalr	884(ra) # 8000cc28 <_Unwind_Resume>

00000000800028bc <_ZN5Riscv10popSppSpieEv>:
#include "../h/MemoryAllocator.hpp"
#include  "../h/print.hpp"
#include "../h/SList.hpp"
using Body=void(*)(void*);

void Riscv::popSppSpie() {
    800028bc:	ff010113          	addi	sp,sp,-16
    800028c0:	00813423          	sd	s0,8(sp)
    800028c4:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    800028c8:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    800028cc:	10200073          	sret
}
    800028d0:	00813403          	ld	s0,8(sp)
    800028d4:	01010113          	addi	sp,sp,16
    800028d8:	00008067          	ret

00000000800028dc <_ZN5Riscv10restoreSPPEv>:

void Riscv::restoreSPP() {
    800028dc:	ff010113          	addi	sp,sp,-16
    800028e0:	00813423          	sd	s0,8(sp)
    800028e4:	01010413          	addi	s0,sp,16

    if(TCB::running->sys)
    800028e8:	00009797          	auipc	a5,0x9
    800028ec:	1487b783          	ld	a5,328(a5) # 8000ba30 <_GLOBAL_OFFSET_TABLE_+0x48>
    800028f0:	0007b783          	ld	a5,0(a5)
    800028f4:	0017c783          	lbu	a5,1(a5)
    800028f8:	00078c63          	beqz	a5,80002910 <_ZN5Riscv10restoreSPPEv+0x34>
    800028fc:	10000793          	li	a5,256
    80002900:	1007a073          	csrs	sstatus,a5
        ms_sstatus(SSTATUS_SPP);
    else
        mc_sstatus(SSTATUS_SPP);
}
    80002904:	00813403          	ld	s0,8(sp)
    80002908:	01010113          	addi	sp,sp,16
    8000290c:	00008067          	ret
}
inline void Riscv::mc_sstatus(uint64 mask) {
    __asm__ volatile("csrc sstatus,%[mask]"::[mask]"r"(mask));
    80002910:	10000793          	li	a5,256
    80002914:	1007b073          	csrc	sstatus,a5
    80002918:	fedff06f          	j	80002904 <_ZN5Riscv10restoreSPPEv+0x28>

000000008000291c <_ZN5Riscv10InitBBuffsEv>:


BBuff* Riscv::INbuff = nullptr;
BBuff* Riscv::OUTbuff = nullptr;

void Riscv::InitBBuffs() {
    8000291c:	fe010113          	addi	sp,sp,-32
    80002920:	00113c23          	sd	ra,24(sp)
    80002924:	00813823          	sd	s0,16(sp)
    80002928:	00913423          	sd	s1,8(sp)
    8000292c:	01213023          	sd	s2,0(sp)
    80002930:	02010413          	addi	s0,sp,32
    if (INbuff==nullptr) {
    80002934:	00009797          	auipc	a5,0x9
    80002938:	1b47b783          	ld	a5,436(a5) # 8000bae8 <_ZN5Riscv6INbuffE>
    8000293c:	02078463          	beqz	a5,80002964 <_ZN5Riscv10InitBBuffsEv+0x48>
        INbuff=new BBuff(256);
    }
    if (OUTbuff==nullptr) {
    80002940:	00009797          	auipc	a5,0x9
    80002944:	1b07b783          	ld	a5,432(a5) # 8000baf0 <_ZN5Riscv7OUTbuffE>
    80002948:	04078263          	beqz	a5,8000298c <_ZN5Riscv10InitBBuffsEv+0x70>
        OUTbuff=new BBuff(256);
    }
}
    8000294c:	01813083          	ld	ra,24(sp)
    80002950:	01013403          	ld	s0,16(sp)
    80002954:	00813483          	ld	s1,8(sp)
    80002958:	00013903          	ld	s2,0(sp)
    8000295c:	02010113          	addi	sp,sp,32
    80002960:	00008067          	ret
        INbuff=new BBuff(256);
    80002964:	03000513          	li	a0,48
    80002968:	fffff097          	auipc	ra,0xfffff
    8000296c:	5cc080e7          	jalr	1484(ra) # 80001f34 <_Znwm>
    80002970:	00050493          	mv	s1,a0
    80002974:	10000593          	li	a1,256
    80002978:	fffff097          	auipc	ra,0xfffff
    8000297c:	be0080e7          	jalr	-1056(ra) # 80001558 <_ZN5BBuffC1Ei>
    80002980:	00009797          	auipc	a5,0x9
    80002984:	1697b423          	sd	s1,360(a5) # 8000bae8 <_ZN5Riscv6INbuffE>
    80002988:	fb9ff06f          	j	80002940 <_ZN5Riscv10InitBBuffsEv+0x24>
        OUTbuff=new BBuff(256);
    8000298c:	03000513          	li	a0,48
    80002990:	fffff097          	auipc	ra,0xfffff
    80002994:	5a4080e7          	jalr	1444(ra) # 80001f34 <_Znwm>
    80002998:	00050493          	mv	s1,a0
    8000299c:	10000593          	li	a1,256
    800029a0:	fffff097          	auipc	ra,0xfffff
    800029a4:	bb8080e7          	jalr	-1096(ra) # 80001558 <_ZN5BBuffC1Ei>
    800029a8:	00009797          	auipc	a5,0x9
    800029ac:	1497b423          	sd	s1,328(a5) # 8000baf0 <_ZN5Riscv7OUTbuffE>
}
    800029b0:	f9dff06f          	j	8000294c <_ZN5Riscv10InitBBuffsEv+0x30>
    800029b4:	00050913          	mv	s2,a0
        INbuff=new BBuff(256);
    800029b8:	00048513          	mv	a0,s1
    800029bc:	fffff097          	auipc	ra,0xfffff
    800029c0:	5a0080e7          	jalr	1440(ra) # 80001f5c <_ZdlPv>
    800029c4:	00090513          	mv	a0,s2
    800029c8:	0000a097          	auipc	ra,0xa
    800029cc:	260080e7          	jalr	608(ra) # 8000cc28 <_Unwind_Resume>
    800029d0:	00050913          	mv	s2,a0
        OUTbuff=new BBuff(256);
    800029d4:	00048513          	mv	a0,s1
    800029d8:	fffff097          	auipc	ra,0xfffff
    800029dc:	584080e7          	jalr	1412(ra) # 80001f5c <_ZdlPv>
    800029e0:	00090513          	mv	a0,s2
    800029e4:	0000a097          	auipc	ra,0xa
    800029e8:	244080e7          	jalr	580(ra) # 8000cc28 <_Unwind_Resume>

00000000800029ec <_ZN5Riscv21SupervisorTrapHandlerEv>:

void Riscv::SupervisorTrapHandler() {
    800029ec:	fa010113          	addi	sp,sp,-96
    800029f0:	04113c23          	sd	ra,88(sp)
    800029f4:	04813823          	sd	s0,80(sp)
    800029f8:	04913423          	sd	s1,72(sp)
    800029fc:	05213023          	sd	s2,64(sp)
    80002a00:	03313c23          	sd	s3,56(sp)
    80002a04:	03413823          	sd	s4,48(sp)
    80002a08:	03513423          	sd	s5,40(sp)
    80002a0c:	06010413          	addi	s0,sp,96
    __asm__ volatile("csrr %[scause], scause":[scause]"=r"(scause));
    80002a10:	142027f3          	csrr	a5,scause
    80002a14:	faf43423          	sd	a5,-88(s0)
    return scause;
    80002a18:	fa843703          	ld	a4,-88(s0)
    __asm__ volatile ("csrr %[x],sepc" : [x] "=r" (sepc));
    80002a1c:	141024f3          	csrr	s1,sepc
    __asm__ volatile ("csrr %[x],sstatus" : [x] "=r" (sstatus));
    80002a20:	10002973          	csrr	s2,sstatus
    uint64 sepc;
    uint64 sstatus;
    uint64 scause=get_scause();
    sepc=get_sepc();
    sstatus=get_sstatus();
    if (scause == 0x8000000000000001UL) {
    80002a24:	fff00793          	li	a5,-1
    80002a28:	03f79793          	slli	a5,a5,0x3f
    80002a2c:	00178793          	addi	a5,a5,1
    80002a30:	12f70463          	beq	a4,a5,80002b58 <_ZN5Riscv21SupervisorTrapHandlerEv+0x16c>
            set_sepc(sepc);
            set_sstatus(sstatus);
        }
        mc_sip(SIP_SSIP);
    }
    else if (scause == 0x8000000000000009UL) {
    80002a34:	fff00793          	li	a5,-1
    80002a38:	03f79793          	slli	a5,a5,0x3f
    80002a3c:	00978793          	addi	a5,a5,9
    80002a40:	16f70663          	beq	a4,a5,80002bac <_ZN5Riscv21SupervisorTrapHandlerEv+0x1c0>
        set_sstatus(sstatus);
        //console_handler();
    }
    else {
        uint64 syscode;
    __asm__ volatile ("mv %[x], a0" : [x] "=r" (syscode));
    80002a44:	00050793          	mv	a5,a0

    if (syscode==MEM_ALLOC) {
    80002a48:	00100713          	li	a4,1
    80002a4c:	1ee78263          	beq	a5,a4,80002c30 <_ZN5Riscv21SupervisorTrapHandlerEv+0x244>
        size_t size_in_blocks;
        __asm__ volatile ("mv %[x], a1" : [x] "=r" (size_in_blocks));
        void* ptr = MemoryAllocator::Instance()->mem_alloc(size_in_blocks * MEM_BLOCK_SIZE);
        __asm__ volatile ("mv a0,%[x]" :: [x] "r" (ptr));
    }
    else if (syscode==MEM_FREE) {
    80002a50:	00200713          	li	a4,2
    80002a54:	22e78463          	beq	a5,a4,80002c7c <_ZN5Riscv21SupervisorTrapHandlerEv+0x290>
        void* ptr;
        __asm__ volatile ("mv %[x], a1" : [x] "=r" (ptr));
        MemoryAllocator::Instance()->mem_free(ptr);
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (0));
    }
    else if (syscode==MEM_GET_FREE_SPACE) {
    80002a58:	00300713          	li	a4,3
    80002a5c:	24e78263          	beq	a5,a4,80002ca0 <_ZN5Riscv21SupervisorTrapHandlerEv+0x2b4>
        size_t freeMem = MemoryAllocator::Instance()->getFreeMemSize();
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (freeMem));
    }
    else if (syscode==MEM_GET_LARGEST_FREE_BLOCK) {
    80002a60:	00400713          	li	a4,4
    80002a64:	24e78863          	beq	a5,a4,80002cb4 <_ZN5Riscv21SupervisorTrapHandlerEv+0x2c8>
        size_t largestBlock = MemoryAllocator::Instance()->getLargestFreeBlock();
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (largestBlock));
    }
    else if (syscode==THREAD_CREATE) {
    80002a68:	01100713          	li	a4,17
    80002a6c:	26e78063          	beq	a5,a4,80002ccc <_ZN5Riscv21SupervisorTrapHandlerEv+0x2e0>
        else {
            ret=1;
        }
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (ret));
    }
    else if (syscode==THREAD_EXIT) {
    80002a70:	01200713          	li	a4,18
    80002a74:	2ae78463          	beq	a5,a4,80002d1c <_ZN5Riscv21SupervisorTrapHandlerEv+0x330>
        int ret = TCB::exit();
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (ret));
    }
    else if (syscode==THREAD_DISPATCH) {
    80002a78:	01300713          	li	a4,19
    80002a7c:	2ae78863          	beq	a5,a4,80002d2c <_ZN5Riscv21SupervisorTrapHandlerEv+0x340>
        TCB::dispatch();
    }
    else if (syscode==SEM_OPEN) {
    80002a80:	02100713          	li	a4,33
    80002a84:	2ae78a63          	beq	a5,a4,80002d38 <_ZN5Riscv21SupervisorTrapHandlerEv+0x34c>
        else {
            ret=1;
        }
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (ret));
    }
    else if (syscode==SEM_CLOSE) {
    80002a88:	02200713          	li	a4,34
    80002a8c:	2ce78e63          	beq	a5,a4,80002d68 <_ZN5Riscv21SupervisorTrapHandlerEv+0x37c>
        sem_t handle;
        __asm__ volatile ("mv %[x], a1" : [x] "=r" (handle));
        int ret=handle->close();
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (ret));
    }
    else if (syscode==SEM_WAIT) {
    80002a90:	02300713          	li	a4,35
    80002a94:	2ee78463          	beq	a5,a4,80002d7c <_ZN5Riscv21SupervisorTrapHandlerEv+0x390>
        sem_t handle;
        __asm__ volatile ("mv %[x], a1" : [x] "=r" (handle));
        int ret=handle->wait();
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (ret));
    }
    else if (syscode==SEM_SIGNAL) {
    80002a98:	02400713          	li	a4,36
    80002a9c:	2ee78a63          	beq	a5,a4,80002d90 <_ZN5Riscv21SupervisorTrapHandlerEv+0x3a4>
        sem_t handle;
        __asm__ volatile ("mv %[x], a1" : [x] "=r" (handle));
        int ret=handle->signal();
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (ret));
    }
    else if (syscode==TIME_SLEEP) {
    80002aa0:	03100713          	li	a4,49
    80002aa4:	30e78063          	beq	a5,a4,80002da4 <_ZN5Riscv21SupervisorTrapHandlerEv+0x3b8>
        time_t sleepTime;
        __asm__ volatile ("mv %[x], a1" : [x] "=r" (sleepTime));
        int ret=TCB::sleep(sleepTime);
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (ret));
    }
    else if (syscode==GETCHAR) {
    80002aa8:	04100713          	li	a4,65
    80002aac:	30e78663          	beq	a5,a4,80002db8 <_ZN5Riscv21SupervisorTrapHandlerEv+0x3cc>
        char c = INbuff->get();
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (c));
    }
    else if (syscode==PUTCHAR) {
    80002ab0:	04200713          	li	a4,66
    80002ab4:	30e78e63          	beq	a5,a4,80002dd0 <_ZN5Riscv21SupervisorTrapHandlerEv+0x3e4>
    __asm__ volatile("csrr %[scause], scause":[scause]"=r"(scause));
    80002ab8:	142027f3          	csrr	a5,scause
    80002abc:	faf43c23          	sd	a5,-72(s0)
    return scause;
    80002ac0:	fb843a03          	ld	s4,-72(s0)
    __asm__ volatile("csrr %[stval], stval":[stval]"=r"(stval));
    80002ac4:	143027f3          	csrr	a5,stval
    80002ac8:	faf43823          	sd	a5,-80(s0)
    return stval;
    80002acc:	fb043983          	ld	s3,-80(s0)
        OUTbuff->put(c);
    }
    else {
        scause= get_scause();
        uint64 stval= get_stval();
        pprintString("scause:");
    80002ad0:	00006517          	auipc	a0,0x6
    80002ad4:	5e050513          	addi	a0,a0,1504 # 800090b0 <CONSOLE_STATUS+0xa0>
    80002ad8:	00000097          	auipc	ra,0x0
    80002adc:	664080e7          	jalr	1636(ra) # 8000313c <_Z12pprintStringPKc>
        printInteger(scause);
    80002ae0:	000a0513          	mv	a0,s4
    80002ae4:	00000097          	auipc	ra,0x0
    80002ae8:	69c080e7          	jalr	1692(ra) # 80003180 <_Z12printIntegerm>
        pprintString("\n");
    80002aec:	00007517          	auipc	a0,0x7
    80002af0:	8ec50513          	addi	a0,a0,-1812 # 800093d8 <_ZZ12printIntegermE6digits+0x310>
    80002af4:	00000097          	auipc	ra,0x0
    80002af8:	648080e7          	jalr	1608(ra) # 8000313c <_Z12pprintStringPKc>

        pprintString("stval:");
    80002afc:	00006517          	auipc	a0,0x6
    80002b00:	5bc50513          	addi	a0,a0,1468 # 800090b8 <CONSOLE_STATUS+0xa8>
    80002b04:	00000097          	auipc	ra,0x0
    80002b08:	638080e7          	jalr	1592(ra) # 8000313c <_Z12pprintStringPKc>
        printInteger(stval);
    80002b0c:	00098513          	mv	a0,s3
    80002b10:	00000097          	auipc	ra,0x0
    80002b14:	670080e7          	jalr	1648(ra) # 80003180 <_Z12printIntegerm>
        pprintString("\n");
    80002b18:	00007517          	auipc	a0,0x7
    80002b1c:	8c050513          	addi	a0,a0,-1856 # 800093d8 <_ZZ12printIntegermE6digits+0x310>
    80002b20:	00000097          	auipc	ra,0x0
    80002b24:	61c080e7          	jalr	1564(ra) # 8000313c <_Z12pprintStringPKc>

        pprintString("sepc:");
    80002b28:	00006517          	auipc	a0,0x6
    80002b2c:	59850513          	addi	a0,a0,1432 # 800090c0 <CONSOLE_STATUS+0xb0>
    80002b30:	00000097          	auipc	ra,0x0
    80002b34:	60c080e7          	jalr	1548(ra) # 8000313c <_Z12pprintStringPKc>
        printInteger(sepc);
    80002b38:	00048513          	mv	a0,s1
    80002b3c:	00000097          	auipc	ra,0x0
    80002b40:	644080e7          	jalr	1604(ra) # 80003180 <_Z12printIntegerm>
        pprintString("\n");
    80002b44:	00007517          	auipc	a0,0x7
    80002b48:	89450513          	addi	a0,a0,-1900 # 800093d8 <_ZZ12printIntegermE6digits+0x310>
    80002b4c:	00000097          	auipc	ra,0x0
    80002b50:	5f0080e7          	jalr	1520(ra) # 8000313c <_Z12pprintStringPKc>
    80002b54:	0f80006f          	j	80002c4c <_ZN5Riscv21SupervisorTrapHandlerEv+0x260>
        TCB::timeCounter++;
    80002b58:	00009997          	auipc	s3,0x9
    80002b5c:	ec09b983          	ld	s3,-320(s3) # 8000ba18 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002b60:	0009b783          	ld	a5,0(s3)
    80002b64:	00178793          	addi	a5,a5,1
    80002b68:	00f9b023          	sd	a5,0(s3)
        SList::oneTick();
    80002b6c:	fffff097          	auipc	ra,0xfffff
    80002b70:	950080e7          	jalr	-1712(ra) # 800014bc <_ZN5SList7oneTickEv>
        if (TCB::timeCounter >= TCB::running->getTimeSlice()) {
    80002b74:	00009797          	auipc	a5,0x9
    80002b78:	ebc7b783          	ld	a5,-324(a5) # 8000ba30 <_GLOBAL_OFFSET_TABLE_+0x48>
    80002b7c:	0007b783          	ld	a5,0(a5)
    time_t getTimeSlice() const { return timeSlice; }
    80002b80:	0387b783          	ld	a5,56(a5)
    80002b84:	0009b703          	ld	a4,0(s3)
    80002b88:	00f77863          	bgeu	a4,a5,80002b98 <_ZN5Riscv21SupervisorTrapHandlerEv+0x1ac>
}
inline void Riscv::mc_sip(uint64 mask)
{
    __asm__ volatile("csrc sip, %[mask]":: [mask]"r"(mask));
    80002b8c:	00200793          	li	a5,2
    80002b90:	1447b073          	csrc	sip,a5
}
    80002b94:	0c40006f          	j	80002c58 <_ZN5Riscv21SupervisorTrapHandlerEv+0x26c>
            TCB::dispatch();
    80002b98:	00000097          	auipc	ra,0x0
    80002b9c:	9a0080e7          	jalr	-1632(ra) # 80002538 <_ZN3TCB8dispatchEv>
    __asm__ volatile ("csrw sepc, %[x]" :: [x] "r" (sepc));
    80002ba0:	14149073          	csrw	sepc,s1
    __asm__ volatile ("csrw sstatus, %[x]" :: [x] "r" (sstatus));
    80002ba4:	10091073          	csrw	sstatus,s2
}
    80002ba8:	fe5ff06f          	j	80002b8c <_ZN5Riscv21SupervisorTrapHandlerEv+0x1a0>
        int irq = plic_claim();
    80002bac:	00005097          	auipc	ra,0x5
    80002bb0:	838080e7          	jalr	-1992(ra) # 800073e4 <plic_claim>
    80002bb4:	00050993          	mv	s3,a0
        if(irq==0x0a)
    80002bb8:	00a00793          	li	a5,10
    80002bbc:	00f50e63          	beq	a0,a5,80002bd8 <_ZN5Riscv21SupervisorTrapHandlerEv+0x1ec>
        plic_complete(irq);
    80002bc0:	00098513          	mv	a0,s3
    80002bc4:	00005097          	auipc	ra,0x5
    80002bc8:	858080e7          	jalr	-1960(ra) # 8000741c <plic_complete>
    __asm__ volatile ("csrw sepc, %[x]" :: [x] "r" (sepc));
    80002bcc:	14149073          	csrw	sepc,s1
    __asm__ volatile ("csrw sstatus, %[x]" :: [x] "r" (sstatus));
    80002bd0:	10091073          	csrw	sstatus,s2
}
    80002bd4:	0840006f          	j	80002c58 <_ZN5Riscv21SupervisorTrapHandlerEv+0x26c>
            volatile char status = (*(char*)CONSOLE_STATUS);
    80002bd8:	00009797          	auipc	a5,0x9
    80002bdc:	e207b783          	ld	a5,-480(a5) # 8000b9f8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002be0:	0007ba03          	ld	s4,0(a5)
    80002be4:	000a4783          	lbu	a5,0(s4)
    80002be8:	faf40323          	sb	a5,-90(s0)
            while(status & CONSOLE_RX_STATUS_BIT)
    80002bec:	fa644783          	lbu	a5,-90(s0)
    80002bf0:	0017f793          	andi	a5,a5,1
    80002bf4:	fc0786e3          	beqz	a5,80002bc0 <_ZN5Riscv21SupervisorTrapHandlerEv+0x1d4>
                volatile  char c = (*(char*)CONSOLE_RX_DATA);
    80002bf8:	00009797          	auipc	a5,0x9
    80002bfc:	df87b783          	ld	a5,-520(a5) # 8000b9f0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002c00:	0007b783          	ld	a5,0(a5)
    80002c04:	0007c783          	lbu	a5,0(a5)
    80002c08:	faf403a3          	sb	a5,-89(s0)
                INbuff->put(c);
    80002c0c:	fa744583          	lbu	a1,-89(s0)
    80002c10:	0ff5f593          	andi	a1,a1,255
    80002c14:	00009517          	auipc	a0,0x9
    80002c18:	ed453503          	ld	a0,-300(a0) # 8000bae8 <_ZN5Riscv6INbuffE>
    80002c1c:	fffff097          	auipc	ra,0xfffff
    80002c20:	a14080e7          	jalr	-1516(ra) # 80001630 <_ZN5BBuff3putEc>
                status = (*(char*)CONSOLE_STATUS);
    80002c24:	000a4783          	lbu	a5,0(s4)
    80002c28:	faf40323          	sb	a5,-90(s0)
            while(status & CONSOLE_RX_STATUS_BIT)
    80002c2c:	fc1ff06f          	j	80002bec <_ZN5Riscv21SupervisorTrapHandlerEv+0x200>
        __asm__ volatile ("mv %[x], a1" : [x] "=r" (size_in_blocks));
    80002c30:	00058993          	mv	s3,a1
        void* ptr = MemoryAllocator::Instance()->mem_alloc(size_in_blocks * MEM_BLOCK_SIZE);
    80002c34:	00000097          	auipc	ra,0x0
    80002c38:	214080e7          	jalr	532(ra) # 80002e48 <_ZN15MemoryAllocator8InstanceEv>
    80002c3c:	00299593          	slli	a1,s3,0x2
    80002c40:	00000097          	auipc	ra,0x0
    80002c44:	264080e7          	jalr	612(ra) # 80002ea4 <_ZN15MemoryAllocator9mem_allocEm>
        __asm__ volatile ("mv a0,%[x]" :: [x] "r" (ptr));
    80002c48:	00050513          	mv	a0,a0
        //getc();
    }
    set_sepc(sepc+4);
    80002c4c:	00448493          	addi	s1,s1,4
    __asm__ volatile ("csrw sepc, %[x]" :: [x] "r" (sepc));
    80002c50:	14149073          	csrw	sepc,s1
    __asm__ volatile ("csrw sstatus, %[x]" :: [x] "r" (sstatus));
    80002c54:	10091073          	csrw	sstatus,s2
    set_sstatus(sstatus);
    }


    80002c58:	05813083          	ld	ra,88(sp)
    80002c5c:	05013403          	ld	s0,80(sp)
    80002c60:	04813483          	ld	s1,72(sp)
    80002c64:	04013903          	ld	s2,64(sp)
    80002c68:	03813983          	ld	s3,56(sp)
    80002c6c:	03013a03          	ld	s4,48(sp)
    80002c70:	02813a83          	ld	s5,40(sp)
    80002c74:	06010113          	addi	sp,sp,96
    80002c78:	00008067          	ret
        __asm__ volatile ("mv %[x], a1" : [x] "=r" (ptr));
    80002c7c:	00058993          	mv	s3,a1
        MemoryAllocator::Instance()->mem_free(ptr);
    80002c80:	00000097          	auipc	ra,0x0
    80002c84:	1c8080e7          	jalr	456(ra) # 80002e48 <_ZN15MemoryAllocator8InstanceEv>
    80002c88:	00098593          	mv	a1,s3
    80002c8c:	00000097          	auipc	ra,0x0
    80002c90:	390080e7          	jalr	912(ra) # 8000301c <_ZN15MemoryAllocator8mem_freeEPv>
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (0));
    80002c94:	00000793          	li	a5,0
    80002c98:	00078513          	mv	a0,a5
    80002c9c:	fb1ff06f          	j	80002c4c <_ZN5Riscv21SupervisorTrapHandlerEv+0x260>
        size_t freeMem = MemoryAllocator::Instance()->getFreeMemSize();
    80002ca0:	00000097          	auipc	ra,0x0
    80002ca4:	1a8080e7          	jalr	424(ra) # 80002e48 <_ZN15MemoryAllocator8InstanceEv>
    void* mem_alloc(size_t size);//size in bytes

    void mem_free(void* ptr);

    size_t getFreeMemSize() {
        return this->freeMemSize;
    80002ca8:	00853783          	ld	a5,8(a0)
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (freeMem));
    80002cac:	00078513          	mv	a0,a5
    80002cb0:	f9dff06f          	j	80002c4c <_ZN5Riscv21SupervisorTrapHandlerEv+0x260>
        size_t largestBlock = MemoryAllocator::Instance()->getLargestFreeBlock();
    80002cb4:	00000097          	auipc	ra,0x0
    80002cb8:	194080e7          	jalr	404(ra) # 80002e48 <_ZN15MemoryAllocator8InstanceEv>
    80002cbc:	00000097          	auipc	ra,0x0
    80002cc0:	444080e7          	jalr	1092(ra) # 80003100 <_ZN15MemoryAllocator19getLargestFreeBlockEv>
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (largestBlock));
    80002cc4:	00050513          	mv	a0,a0
    80002cc8:	f85ff06f          	j	80002c4c <_ZN5Riscv21SupervisorTrapHandlerEv+0x260>
        __asm__ volatile ("mv %[x], a1" : [x] "=r" (handle));
    80002ccc:	00058993          	mv	s3,a1
        __asm__ volatile ("mv %[x], a2" : [x] "=r" (start_routine));
    80002cd0:	00060a13          	mv	s4,a2
        __asm__ volatile ("mv %[x], a3" : [x] "=r" (arg));
    80002cd4:	00068a93          	mv	s5,a3
        uint64 *sp=(uint64*)MemoryAllocator::Instance()->mem_alloc(DEFAULT_STACK_SIZE);
    80002cd8:	00000097          	auipc	ra,0x0
    80002cdc:	170080e7          	jalr	368(ra) # 80002e48 <_ZN15MemoryAllocator8InstanceEv>
    80002ce0:	000015b7          	lui	a1,0x1
    80002ce4:	00000097          	auipc	ra,0x0
    80002ce8:	1c0080e7          	jalr	448(ra) # 80002ea4 <_ZN15MemoryAllocator9mem_allocEm>
    80002cec:	00050613          	mv	a2,a0
        *handle=TCB::createThread( start_routine, arg,sp);
    80002cf0:	000a8593          	mv	a1,s5
    80002cf4:	000a0513          	mv	a0,s4
    80002cf8:	fffff097          	auipc	ra,0xfffff
    80002cfc:	73c080e7          	jalr	1852(ra) # 80002434 <_ZN3TCB12createThreadEPFvPvES0_Pm>
    80002d00:	00a9b023          	sd	a0,0(s3)
        if (*handle) {
    80002d04:	00050863          	beqz	a0,80002d14 <_ZN5Riscv21SupervisorTrapHandlerEv+0x328>
            ret=0;
    80002d08:	00000793          	li	a5,0
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (ret));
    80002d0c:	00078513          	mv	a0,a5
    80002d10:	f3dff06f          	j	80002c4c <_ZN5Riscv21SupervisorTrapHandlerEv+0x260>
            ret=1;
    80002d14:	00100793          	li	a5,1
    80002d18:	ff5ff06f          	j	80002d0c <_ZN5Riscv21SupervisorTrapHandlerEv+0x320>
        int ret = TCB::exit();
    80002d1c:	00000097          	auipc	ra,0x0
    80002d20:	8cc080e7          	jalr	-1844(ra) # 800025e8 <_ZN3TCB4exitEv>
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (ret));
    80002d24:	00050513          	mv	a0,a0
    80002d28:	f25ff06f          	j	80002c4c <_ZN5Riscv21SupervisorTrapHandlerEv+0x260>
        TCB::dispatch();
    80002d2c:	00000097          	auipc	ra,0x0
    80002d30:	80c080e7          	jalr	-2036(ra) # 80002538 <_ZN3TCB8dispatchEv>
    80002d34:	f19ff06f          	j	80002c4c <_ZN5Riscv21SupervisorTrapHandlerEv+0x260>
        __asm__ volatile ("mv %[x], a1" : [x] "=r" (handle));
    80002d38:	00058993          	mv	s3,a1
        __asm__ volatile ("mv %[x], a2" : [x] "=r" (init));
    80002d3c:	00060513          	mv	a0,a2
        *handle=SEM::open(init);
    80002d40:	0005051b          	sext.w	a0,a0
    80002d44:	00000097          	auipc	ra,0x0
    80002d48:	4f8080e7          	jalr	1272(ra) # 8000323c <_ZN3SEM4openEj>
    80002d4c:	00a9b023          	sd	a0,0(s3)
        if (*handle) {
    80002d50:	00050863          	beqz	a0,80002d60 <_ZN5Riscv21SupervisorTrapHandlerEv+0x374>
            ret=0;
    80002d54:	00000793          	li	a5,0
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (ret));
    80002d58:	00078513          	mv	a0,a5
    80002d5c:	ef1ff06f          	j	80002c4c <_ZN5Riscv21SupervisorTrapHandlerEv+0x260>
            ret=1;
    80002d60:	00100793          	li	a5,1
    80002d64:	ff5ff06f          	j	80002d58 <_ZN5Riscv21SupervisorTrapHandlerEv+0x36c>
        __asm__ volatile ("mv %[x], a1" : [x] "=r" (handle));
    80002d68:	00058513          	mv	a0,a1
        int ret=handle->close();
    80002d6c:	00000097          	auipc	ra,0x0
    80002d70:	524080e7          	jalr	1316(ra) # 80003290 <_ZN3SEM5closeEv>
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (ret));
    80002d74:	00050513          	mv	a0,a0
    80002d78:	ed5ff06f          	j	80002c4c <_ZN5Riscv21SupervisorTrapHandlerEv+0x260>
        __asm__ volatile ("mv %[x], a1" : [x] "=r" (handle));
    80002d7c:	00058513          	mv	a0,a1
        int ret=handle->wait();
    80002d80:	00000097          	auipc	ra,0x0
    80002d84:	5e4080e7          	jalr	1508(ra) # 80003364 <_ZN3SEM4waitEv>
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (ret));
    80002d88:	00050513          	mv	a0,a0
    80002d8c:	ec1ff06f          	j	80002c4c <_ZN5Riscv21SupervisorTrapHandlerEv+0x260>
        __asm__ volatile ("mv %[x], a1" : [x] "=r" (handle));
    80002d90:	00058513          	mv	a0,a1
        int ret=handle->signal();
    80002d94:	00000097          	auipc	ra,0x0
    80002d98:	694080e7          	jalr	1684(ra) # 80003428 <_ZN3SEM6signalEv>
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (ret));
    80002d9c:	00050513          	mv	a0,a0
    80002da0:	eadff06f          	j	80002c4c <_ZN5Riscv21SupervisorTrapHandlerEv+0x260>
        __asm__ volatile ("mv %[x], a1" : [x] "=r" (sleepTime));
    80002da4:	00058513          	mv	a0,a1
        int ret=TCB::sleep(sleepTime);
    80002da8:	00000097          	auipc	ra,0x0
    80002dac:	8d8080e7          	jalr	-1832(ra) # 80002680 <_ZN3TCB5sleepEm>
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (ret));
    80002db0:	00050513          	mv	a0,a0
    80002db4:	e99ff06f          	j	80002c4c <_ZN5Riscv21SupervisorTrapHandlerEv+0x260>
        char c = INbuff->get();
    80002db8:	00009517          	auipc	a0,0x9
    80002dbc:	d3053503          	ld	a0,-720(a0) # 8000bae8 <_ZN5Riscv6INbuffE>
    80002dc0:	fffff097          	auipc	ra,0xfffff
    80002dc4:	910080e7          	jalr	-1776(ra) # 800016d0 <_ZN5BBuff3getEv>
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (c));
    80002dc8:	00050513          	mv	a0,a0
    80002dcc:	e81ff06f          	j	80002c4c <_ZN5Riscv21SupervisorTrapHandlerEv+0x260>
        __asm__ volatile ("mv %[x], a1" : [x] "=r" (c));
    80002dd0:	00058593          	mv	a1,a1
        OUTbuff->put(c);
    80002dd4:	0ff5f593          	andi	a1,a1,255
    80002dd8:	00009517          	auipc	a0,0x9
    80002ddc:	d1853503          	ld	a0,-744(a0) # 8000baf0 <_ZN5Riscv7OUTbuffE>
    80002de0:	fffff097          	auipc	ra,0xfffff
    80002de4:	850080e7          	jalr	-1968(ra) # 80001630 <_ZN5BBuff3putEc>
    80002de8:	e65ff06f          	j	80002c4c <_ZN5Riscv21SupervisorTrapHandlerEv+0x260>

0000000080002dec <_ZN15MemoryAllocatorC1Ev>:

#include "../h/MemoryAllocator.hpp"
#include "../lib/console.h"


MemoryAllocator::MemoryAllocator() {
    80002dec:	ff010113          	addi	sp,sp,-16
    80002df0:	00813423          	sd	s0,8(sp)
    80002df4:	01010413          	addi	s0,sp,16
    this->head = (MemoryHeader*)HEAP_START_ADDR;
    80002df8:	00009797          	auipc	a5,0x9
    80002dfc:	c087b783          	ld	a5,-1016(a5) # 8000ba00 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002e00:	0007b703          	ld	a4,0(a5)
    80002e04:	00e53023          	sd	a4,0(a0)
    // this->tail = (MemoryHeader*)HEAP_START_ADDR;
    // this->tail->next=nullptr;
    // this->tail->prev=nullptr;
    this->head->next=nullptr;
    80002e08:	00073423          	sd	zero,8(a4)
    this->head->prev=nullptr;
    80002e0c:	00053783          	ld	a5,0(a0)
    80002e10:	0007b823          	sd	zero,16(a5)
    this->head->size = (size_t)((char*)HEAP_END_ADDR - (char*)HEAP_START_ADDR - sizeof(MemoryHeader));
    80002e14:	00009797          	auipc	a5,0x9
    80002e18:	c247b783          	ld	a5,-988(a5) # 8000ba38 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002e1c:	0007b783          	ld	a5,0(a5)
    80002e20:	40e787b3          	sub	a5,a5,a4
    80002e24:	00053703          	ld	a4,0(a0)
    80002e28:	fe878793          	addi	a5,a5,-24
    80002e2c:	00f73023          	sd	a5,0(a4)
    this->freeMemSize=this->head->size;
    80002e30:	00053783          	ld	a5,0(a0)
    80002e34:	0007b783          	ld	a5,0(a5)
    80002e38:	00f53423          	sd	a5,8(a0)
}
    80002e3c:	00813403          	ld	s0,8(sp)
    80002e40:	01010113          	addi	sp,sp,16
    80002e44:	00008067          	ret

0000000080002e48 <_ZN15MemoryAllocator8InstanceEv>:




MemoryAllocator* MemoryAllocator::Instance() {
    static MemoryAllocator instance;
    80002e48:	00009797          	auipc	a5,0x9
    80002e4c:	cb07c783          	lbu	a5,-848(a5) # 8000baf8 <_ZGVZN15MemoryAllocator8InstanceEvE8instance>
    80002e50:	00078863          	beqz	a5,80002e60 <_ZN15MemoryAllocator8InstanceEv+0x18>
    return &instance;
}
    80002e54:	00009517          	auipc	a0,0x9
    80002e58:	cac50513          	addi	a0,a0,-852 # 8000bb00 <_ZZN15MemoryAllocator8InstanceEvE8instance>
    80002e5c:	00008067          	ret
MemoryAllocator* MemoryAllocator::Instance() {
    80002e60:	ff010113          	addi	sp,sp,-16
    80002e64:	00113423          	sd	ra,8(sp)
    80002e68:	00813023          	sd	s0,0(sp)
    80002e6c:	01010413          	addi	s0,sp,16
    static MemoryAllocator instance;
    80002e70:	00009517          	auipc	a0,0x9
    80002e74:	c9050513          	addi	a0,a0,-880 # 8000bb00 <_ZZN15MemoryAllocator8InstanceEvE8instance>
    80002e78:	00000097          	auipc	ra,0x0
    80002e7c:	f74080e7          	jalr	-140(ra) # 80002dec <_ZN15MemoryAllocatorC1Ev>
    80002e80:	00100793          	li	a5,1
    80002e84:	00009717          	auipc	a4,0x9
    80002e88:	c6f70a23          	sb	a5,-908(a4) # 8000baf8 <_ZGVZN15MemoryAllocator8InstanceEvE8instance>
}
    80002e8c:	00009517          	auipc	a0,0x9
    80002e90:	c7450513          	addi	a0,a0,-908 # 8000bb00 <_ZZN15MemoryAllocator8InstanceEvE8instance>
    80002e94:	00813083          	ld	ra,8(sp)
    80002e98:	00013403          	ld	s0,0(sp)
    80002e9c:	01010113          	addi	sp,sp,16
    80002ea0:	00008067          	ret

0000000080002ea4 <_ZN15MemoryAllocator9mem_allocEm>:


void* MemoryAllocator::mem_alloc(size_t size) {
    80002ea4:	ff010113          	addi	sp,sp,-16
    80002ea8:	00813423          	sd	s0,8(sp)
    80002eac:	01010413          	addi	s0,sp,16
    80002eb0:	00050813          	mv	a6,a0
    if (this->head==nullptr)
    80002eb4:	00053503          	ld	a0,0(a0)
    80002eb8:	0a050263          	beqz	a0,80002f5c <_ZN15MemoryAllocator9mem_allocEm+0xb8>
        return nullptr;
    if (size==0) {
    80002ebc:	0e058863          	beqz	a1,80002fac <_ZN15MemoryAllocator9mem_allocEm+0x108>
        return nullptr;
    }
    uint64 offset = size % MEM_BLOCK_SIZE;
    80002ec0:	0035f793          	andi	a5,a1,3
    if (offset!=0)
    80002ec4:	00078463          	beqz	a5,80002ecc <_ZN15MemoryAllocator9mem_allocEm+0x28>
        offset=1;
    80002ec8:	00100793          	li	a5,1

    size_t actulalSize = (size  / MEM_BLOCK_SIZE+offset ) * MEM_BLOCK_SIZE;
    80002ecc:	0025d693          	srli	a3,a1,0x2
    80002ed0:	00f686b3          	add	a3,a3,a5
    80002ed4:	00269693          	slli	a3,a3,0x2


    MemoryHeader* curr= this->head;
    80002ed8:	00050793          	mv	a5,a0
    while (curr->next!=nullptr && curr->size < actulalSize) {
    80002edc:	00078713          	mv	a4,a5
    80002ee0:	0087b783          	ld	a5,8(a5)
    80002ee4:	00078663          	beqz	a5,80002ef0 <_ZN15MemoryAllocator9mem_allocEm+0x4c>
    80002ee8:	00073603          	ld	a2,0(a4)
    80002eec:	fed668e3          	bltu	a2,a3,80002edc <_ZN15MemoryAllocator9mem_allocEm+0x38>
        curr=curr->next;
    }
    if (curr->size < actulalSize) {
    80002ef0:	00073603          	ld	a2,0(a4)
    80002ef4:	0cd66063          	bltu	a2,a3,80002fb4 <_ZN15MemoryAllocator9mem_allocEm+0x110>
        return nullptr;
    }



    if (curr->size - actulalSize >= MEM_BLOCK_SIZE+sizeof(MemoryHeader)) {
    80002ef8:	40d60633          	sub	a2,a2,a3
    80002efc:	01b00593          	li	a1,27
    80002f00:	06c5f863          	bgeu	a1,a2,80002f70 <_ZN15MemoryAllocator9mem_allocEm+0xcc>


        MemoryHeader* new_seg=(MemoryHeader*)((char*)curr + sizeof(MemoryHeader) + actulalSize);
    80002f04:	01868793          	addi	a5,a3,24
    80002f08:	00f707b3          	add	a5,a4,a5
        new_seg->size = curr->size - actulalSize - sizeof(MemoryHeader);
    80002f0c:	fe860613          	addi	a2,a2,-24 # fe8 <_entry-0x7ffff018>
    80002f10:	00c7b023          	sd	a2,0(a5)
        new_seg->next=curr->next;
    80002f14:	00873603          	ld	a2,8(a4)
    80002f18:	00c7b423          	sd	a2,8(a5)
        new_seg->prev=curr->prev;
    80002f1c:	01073603          	ld	a2,16(a4)
    80002f20:	00c7b823          	sd	a2,16(a5)
        if (curr==this->head) {
    80002f24:	00083603          	ld	a2,0(a6)
    80002f28:	04e60063          	beq	a2,a4,80002f68 <_ZN15MemoryAllocator9mem_allocEm+0xc4>
            this->head=new_seg;
        }
        // if (curr==this->tail) {
        //     this->tail=new_seg;
        // }
        if (curr->prev)
    80002f2c:	01073603          	ld	a2,16(a4)
    80002f30:	00060463          	beqz	a2,80002f38 <_ZN15MemoryAllocator9mem_allocEm+0x94>
            curr->prev->next=new_seg;
    80002f34:	00f63423          	sd	a5,8(a2)
        if (curr->next)
    80002f38:	00873603          	ld	a2,8(a4)
    80002f3c:	00060463          	beqz	a2,80002f44 <_ZN15MemoryAllocator9mem_allocEm+0xa0>
            curr->next->prev=new_seg;
    80002f40:	00f63823          	sd	a5,16(a2)
        curr->size=actulalSize;
    80002f44:	00d73023          	sd	a3,0(a4)
        this->freeMemSize-= (actulalSize + sizeof(MemoryHeader));
    80002f48:	00883783          	ld	a5,8(a6)
    80002f4c:	40d786b3          	sub	a3,a5,a3
    80002f50:	fe868693          	addi	a3,a3,-24
    80002f54:	00d83423          	sd	a3,8(a6)
    //__putc('m');
    //__putc('\n');



    return  (void*)((char*)curr + sizeof(MemoryHeader));
    80002f58:	01870513          	addi	a0,a4,24
}
    80002f5c:	00813403          	ld	s0,8(sp)
    80002f60:	01010113          	addi	sp,sp,16
    80002f64:	00008067          	ret
            this->head=new_seg;
    80002f68:	00f83023          	sd	a5,0(a6)
    80002f6c:	fc1ff06f          	j	80002f2c <_ZN15MemoryAllocator9mem_allocEm+0x88>
        if (curr==this->head) {
    80002f70:	02e50a63          	beq	a0,a4,80002fa4 <_ZN15MemoryAllocator9mem_allocEm+0x100>
        if (curr->prev)
    80002f74:	01073783          	ld	a5,16(a4)
    80002f78:	00078663          	beqz	a5,80002f84 <_ZN15MemoryAllocator9mem_allocEm+0xe0>
            curr->prev->next=curr->next;
    80002f7c:	00873603          	ld	a2,8(a4)
    80002f80:	00c7b423          	sd	a2,8(a5)
        if (curr->next)
    80002f84:	00873783          	ld	a5,8(a4)
    80002f88:	00078663          	beqz	a5,80002f94 <_ZN15MemoryAllocator9mem_allocEm+0xf0>
            curr->next->prev=curr->prev;
    80002f8c:	01073603          	ld	a2,16(a4)
    80002f90:	00c7b823          	sd	a2,16(a5)
        this->freeMemSize-= actulalSize;
    80002f94:	00883783          	ld	a5,8(a6)
    80002f98:	40d786b3          	sub	a3,a5,a3
    80002f9c:	00d83423          	sd	a3,8(a6)
    80002fa0:	fb9ff06f          	j	80002f58 <_ZN15MemoryAllocator9mem_allocEm+0xb4>
            this->head=curr->next;
    80002fa4:	00f83023          	sd	a5,0(a6)
    80002fa8:	fcdff06f          	j	80002f74 <_ZN15MemoryAllocator9mem_allocEm+0xd0>
        return nullptr;
    80002fac:	00000513          	li	a0,0
    80002fb0:	fadff06f          	j	80002f5c <_ZN15MemoryAllocator9mem_allocEm+0xb8>
        return nullptr;
    80002fb4:	00000513          	li	a0,0
    80002fb8:	fa5ff06f          	j	80002f5c <_ZN15MemoryAllocator9mem_allocEm+0xb8>

0000000080002fbc <_ZN15MemoryAllocator11try_to_joinEPNS_12MemoryHeaderE>:
    try_to_join(block->prev);
    try_to_join(block);
}


void MemoryAllocator::try_to_join(MemoryHeader* block) {
    80002fbc:	ff010113          	addi	sp,sp,-16
    80002fc0:	00813423          	sd	s0,8(sp)
    80002fc4:	01010413          	addi	s0,sp,16
    if (block==nullptr)
    80002fc8:	00058e63          	beqz	a1,80002fe4 <_ZN15MemoryAllocator11try_to_joinEPNS_12MemoryHeaderE+0x28>
        return;
    if (block->next!=nullptr && ((char*)block + sizeof(MemoryHeader) + block->size) == (char*)block->next) {
    80002fcc:	0085b783          	ld	a5,8(a1) # 1008 <_entry-0x7fffeff8>
    80002fd0:	00078a63          	beqz	a5,80002fe4 <_ZN15MemoryAllocator11try_to_joinEPNS_12MemoryHeaderE+0x28>
    80002fd4:	0005b683          	ld	a3,0(a1)
    80002fd8:	01868713          	addi	a4,a3,24
    80002fdc:	00e58733          	add	a4,a1,a4
    80002fe0:	00e78863          	beq	a5,a4,80002ff0 <_ZN15MemoryAllocator11try_to_joinEPNS_12MemoryHeaderE+0x34>
        block->next=block->next->next;
        if (block->next)
            block->next->prev=block;
        this->freeMemSize+= sizeof(MemoryHeader);
    }
}
    80002fe4:	00813403          	ld	s0,8(sp)
    80002fe8:	01010113          	addi	sp,sp,16
    80002fec:	00008067          	ret
        block->size += block->next->size;
    80002ff0:	0007b703          	ld	a4,0(a5)
    80002ff4:	00e686b3          	add	a3,a3,a4
    80002ff8:	00d5b023          	sd	a3,0(a1)
        block->next=block->next->next;
    80002ffc:	0087b783          	ld	a5,8(a5)
    80003000:	00f5b423          	sd	a5,8(a1)
        if (block->next)
    80003004:	00078463          	beqz	a5,8000300c <_ZN15MemoryAllocator11try_to_joinEPNS_12MemoryHeaderE+0x50>
            block->next->prev=block;
    80003008:	00b7b823          	sd	a1,16(a5)
        this->freeMemSize+= sizeof(MemoryHeader);
    8000300c:	00853783          	ld	a5,8(a0)
    80003010:	01878793          	addi	a5,a5,24
    80003014:	00f53423          	sd	a5,8(a0)
    80003018:	fcdff06f          	j	80002fe4 <_ZN15MemoryAllocator11try_to_joinEPNS_12MemoryHeaderE+0x28>

000000008000301c <_ZN15MemoryAllocator8mem_freeEPv>:
    if (ptr==nullptr) {
    8000301c:	0e058063          	beqz	a1,800030fc <_ZN15MemoryAllocator8mem_freeEPv+0xe0>
void MemoryAllocator::mem_free(void* ptr) {
    80003020:	fe010113          	addi	sp,sp,-32
    80003024:	00113c23          	sd	ra,24(sp)
    80003028:	00813823          	sd	s0,16(sp)
    8000302c:	00913423          	sd	s1,8(sp)
    80003030:	01213023          	sd	s2,0(sp)
    80003034:	02010413          	addi	s0,sp,32
    80003038:	00050913          	mv	s2,a0
	MemoryHeader* block = (MemoryHeader*)((char*)ptr - sizeof(MemoryHeader));
    8000303c:	fe858493          	addi	s1,a1,-24
    if (this->head==nullptr) {
    80003040:	00053683          	ld	a3,0(a0)
    80003044:	06068e63          	beqz	a3,800030c0 <_ZN15MemoryAllocator8mem_freeEPv+0xa4>
    MemoryHeader* curr = this->head;
    80003048:	00068793          	mv	a5,a3
    while (curr->next!=nullptr && curr->next < block) {
    8000304c:	00078713          	mv	a4,a5
    80003050:	0087b783          	ld	a5,8(a5)
    80003054:	00078463          	beqz	a5,8000305c <_ZN15MemoryAllocator8mem_freeEPv+0x40>
    80003058:	fe97eae3          	bltu	a5,s1,8000304c <_ZN15MemoryAllocator8mem_freeEPv+0x30>
    if (curr==this->head and curr > block) {
    8000305c:	08e68263          	beq	a3,a4,800030e0 <_ZN15MemoryAllocator8mem_freeEPv+0xc4>
        block->next=curr->next;
    80003060:	fef5b823          	sd	a5,-16(a1)
        block->prev=curr;
    80003064:	fee5bc23          	sd	a4,-8(a1)
        curr->next=block;
    80003068:	00973423          	sd	s1,8(a4)
        if (block->next) {
    8000306c:	ff05b783          	ld	a5,-16(a1)
    80003070:	00078463          	beqz	a5,80003078 <_ZN15MemoryAllocator8mem_freeEPv+0x5c>
            block->next->prev=block;
    80003074:	0097b823          	sd	s1,16(a5)
    this->freeMemSize+= block->size;
    80003078:	fe85b703          	ld	a4,-24(a1)
    8000307c:	00893783          	ld	a5,8(s2)
    80003080:	00e787b3          	add	a5,a5,a4
    80003084:	00f93423          	sd	a5,8(s2)
    try_to_join(block->prev);
    80003088:	ff85b583          	ld	a1,-8(a1)
    8000308c:	00090513          	mv	a0,s2
    80003090:	00000097          	auipc	ra,0x0
    80003094:	f2c080e7          	jalr	-212(ra) # 80002fbc <_ZN15MemoryAllocator11try_to_joinEPNS_12MemoryHeaderE>
    try_to_join(block);
    80003098:	00048593          	mv	a1,s1
    8000309c:	00090513          	mv	a0,s2
    800030a0:	00000097          	auipc	ra,0x0
    800030a4:	f1c080e7          	jalr	-228(ra) # 80002fbc <_ZN15MemoryAllocator11try_to_joinEPNS_12MemoryHeaderE>
}
    800030a8:	01813083          	ld	ra,24(sp)
    800030ac:	01013403          	ld	s0,16(sp)
    800030b0:	00813483          	ld	s1,8(sp)
    800030b4:	00013903          	ld	s2,0(sp)
    800030b8:	02010113          	addi	sp,sp,32
    800030bc:	00008067          	ret
        this->head=block;
    800030c0:	00953023          	sd	s1,0(a0)
        block->next=nullptr;
    800030c4:	fe05b823          	sd	zero,-16(a1)
        block->prev=nullptr;
    800030c8:	fe05bc23          	sd	zero,-8(a1)
        this->freeMemSize+= block->size;
    800030cc:	fe85b703          	ld	a4,-24(a1)
    800030d0:	00853783          	ld	a5,8(a0)
    800030d4:	00e787b3          	add	a5,a5,a4
    800030d8:	00f53423          	sd	a5,8(a0)
        return;
    800030dc:	fcdff06f          	j	800030a8 <_ZN15MemoryAllocator8mem_freeEPv+0x8c>
    if (curr==this->head and curr > block) {
    800030e0:	f8e4f0e3          	bgeu	s1,a4,80003060 <_ZN15MemoryAllocator8mem_freeEPv+0x44>
        block->next=curr;
    800030e4:	fee5b823          	sd	a4,-16(a1)
        block->prev=curr->prev;
    800030e8:	01073783          	ld	a5,16(a4)
    800030ec:	fef5bc23          	sd	a5,-8(a1)
        curr->prev=block;
    800030f0:	00973823          	sd	s1,16(a4)
        this->head=block;
    800030f4:	00993023          	sd	s1,0(s2)
    800030f8:	f81ff06f          	j	80003078 <_ZN15MemoryAllocator8mem_freeEPv+0x5c>
    800030fc:	00008067          	ret

0000000080003100 <_ZN15MemoryAllocator19getLargestFreeBlockEv>:

size_t MemoryAllocator::getLargestFreeBlock() {
    80003100:	ff010113          	addi	sp,sp,-16
    80003104:	00813423          	sd	s0,8(sp)
    80003108:	01010413          	addi	s0,sp,16
    size_t maxSize=0;
    MemoryHeader* curr=this->head;
    8000310c:	00053783          	ld	a5,0(a0)
    size_t maxSize=0;
    80003110:	00000513          	li	a0,0
    80003114:	0080006f          	j	8000311c <_ZN15MemoryAllocator19getLargestFreeBlockEv+0x1c>
    while (curr!=nullptr) {
        if (curr->size > maxSize)
            maxSize=curr->size;
        curr=curr->next;
    80003118:	0087b783          	ld	a5,8(a5)
    while (curr!=nullptr) {
    8000311c:	00078a63          	beqz	a5,80003130 <_ZN15MemoryAllocator19getLargestFreeBlockEv+0x30>
        if (curr->size > maxSize)
    80003120:	0007b703          	ld	a4,0(a5)
    80003124:	fee57ae3          	bgeu	a0,a4,80003118 <_ZN15MemoryAllocator19getLargestFreeBlockEv+0x18>
            maxSize=curr->size;
    80003128:	00070513          	mv	a0,a4
    8000312c:	fedff06f          	j	80003118 <_ZN15MemoryAllocator19getLargestFreeBlockEv+0x18>
    }
    return maxSize;
    80003130:	00813403          	ld	s0,8(sp)
    80003134:	01010113          	addi	sp,sp,16
    80003138:	00008067          	ret

000000008000313c <_Z12pprintStringPKc>:
#include "../h/syscall_c.hpp"
#include "../lib/console.h"



void pprintString(const char *string) {
    8000313c:	fe010113          	addi	sp,sp,-32
    80003140:	00113c23          	sd	ra,24(sp)
    80003144:	00813823          	sd	s0,16(sp)
    80003148:	00913423          	sd	s1,8(sp)
    8000314c:	02010413          	addi	s0,sp,32
    80003150:	00050493          	mv	s1,a0

    while (*string!='\0') {
    80003154:	0004c503          	lbu	a0,0(s1)
    80003158:	00050a63          	beqz	a0,8000316c <_Z12pprintStringPKc+0x30>
        putc(*string);
    8000315c:	ffffe097          	auipc	ra,0xffffe
    80003160:	26c080e7          	jalr	620(ra) # 800013c8 <_Z4putcc>
        string++;
    80003164:	00148493          	addi	s1,s1,1
    while (*string!='\0') {
    80003168:	fedff06f          	j	80003154 <_Z12pprintStringPKc+0x18>
    }

}
    8000316c:	01813083          	ld	ra,24(sp)
    80003170:	01013403          	ld	s0,16(sp)
    80003174:	00813483          	ld	s1,8(sp)
    80003178:	02010113          	addi	sp,sp,32
    8000317c:	00008067          	ret

0000000080003180 <_Z12printIntegerm>:
void printInteger(uint64 integer) {
    80003180:	fd010113          	addi	sp,sp,-48
    80003184:	02113423          	sd	ra,40(sp)
    80003188:	02813023          	sd	s0,32(sp)
    8000318c:	00913c23          	sd	s1,24(sp)
    80003190:	03010413          	addi	s0,sp,48
    neg=0;
    if (integer<0) {
        neg=1;
        x=-integer;
    } else {
        x=integer;
    80003194:	0005051b          	sext.w	a0,a0
    }

    i=0;
    80003198:	00000493          	li	s1,0
    do {
        buf[i++]=digits[x%10];
    8000319c:	00a00613          	li	a2,10
    800031a0:	02c5773b          	remuw	a4,a0,a2
    800031a4:	02071693          	slli	a3,a4,0x20
    800031a8:	0206d693          	srli	a3,a3,0x20
    800031ac:	00006717          	auipc	a4,0x6
    800031b0:	f1c70713          	addi	a4,a4,-228 # 800090c8 <_ZZ12printIntegermE6digits>
    800031b4:	00d70733          	add	a4,a4,a3
    800031b8:	00074703          	lbu	a4,0(a4)
    800031bc:	fe040693          	addi	a3,s0,-32
    800031c0:	009687b3          	add	a5,a3,s1
    800031c4:	0014849b          	addiw	s1,s1,1
    800031c8:	fee78823          	sb	a4,-16(a5)
    }while ((x/=10)!=0);
    800031cc:	0005071b          	sext.w	a4,a0
    800031d0:	02c5553b          	divuw	a0,a0,a2
    800031d4:	00900793          	li	a5,9
    800031d8:	fce7e2e3          	bltu	a5,a4,8000319c <_Z12printIntegerm+0x1c>
    if (neg) {
        buf[i++]='-';
    }

    while (--i>=0) {
    800031dc:	fff4849b          	addiw	s1,s1,-1
    800031e0:	0004ce63          	bltz	s1,800031fc <_Z12printIntegerm+0x7c>
        putc(buf[i]);
    800031e4:	fe040793          	addi	a5,s0,-32
    800031e8:	009787b3          	add	a5,a5,s1
    800031ec:	ff07c503          	lbu	a0,-16(a5)
    800031f0:	ffffe097          	auipc	ra,0xffffe
    800031f4:	1d8080e7          	jalr	472(ra) # 800013c8 <_Z4putcc>
    800031f8:	fe5ff06f          	j	800031dc <_Z12printIntegerm+0x5c>
    }

    800031fc:	02813083          	ld	ra,40(sp)
    80003200:	02013403          	ld	s0,32(sp)
    80003204:	01813483          	ld	s1,24(sp)
    80003208:	03010113          	addi	sp,sp,48
    8000320c:	00008067          	ret

0000000080003210 <_ZN3SEMC1Ej>:
#include "../h/SEM.hpp"
#include "../h/syscall_cpp.hpp"
#include "../h/syscall_c.hpp"
#include "../h/print.hpp"

SEM::SEM(unsigned init) {
    80003210:	ff010113          	addi	sp,sp,-16
    80003214:	00813423          	sd	s0,8(sp)
    80003218:	01010413          	addi	s0,sp,16
    List(): head(0), tail(0){}
    8000321c:	00053423          	sd	zero,8(a0)
    80003220:	00053823          	sd	zero,16(a0)
    80003224:	00052c23          	sw	zero,24(a0)
    this->val=init;
    80003228:	00b52023          	sw	a1,0(a0)
    this->closed=false;
    8000322c:	00050223          	sb	zero,4(a0)

}
    80003230:	00813403          	ld	s0,8(sp)
    80003234:	01010113          	addi	sp,sp,16
    80003238:	00008067          	ret

000000008000323c <_ZN3SEM4openEj>:

SEM* SEM::open(unsigned init) {
    8000323c:	fe010113          	addi	sp,sp,-32
    80003240:	00113c23          	sd	ra,24(sp)
    80003244:	00813823          	sd	s0,16(sp)
    80003248:	00913423          	sd	s1,8(sp)
    8000324c:	01213023          	sd	s2,0(sp)
    80003250:	02010413          	addi	s0,sp,32
    80003254:	00050913          	mv	s2,a0
    //pprintString("Sem::open\n ");
    return new SEM(init);
    80003258:	02000513          	li	a0,32
    8000325c:	fffff097          	auipc	ra,0xfffff
    80003260:	cd8080e7          	jalr	-808(ra) # 80001f34 <_Znwm>
    80003264:	00050493          	mv	s1,a0
    80003268:	00090593          	mv	a1,s2
    8000326c:	00000097          	auipc	ra,0x0
    80003270:	fa4080e7          	jalr	-92(ra) # 80003210 <_ZN3SEMC1Ej>
}
    80003274:	00048513          	mv	a0,s1
    80003278:	01813083          	ld	ra,24(sp)
    8000327c:	01013403          	ld	s0,16(sp)
    80003280:	00813483          	ld	s1,8(sp)
    80003284:	00013903          	ld	s2,0(sp)
    80003288:	02010113          	addi	sp,sp,32
    8000328c:	00008067          	ret

0000000080003290 <_ZN3SEM5closeEv>:

int SEM::close() {
    //pprintString("Sem::close\n");
    if (this->closed) {
    80003290:	00454783          	lbu	a5,4(a0)
    80003294:	0a079263          	bnez	a5,80003338 <_ZN3SEM5closeEv+0xa8>
int SEM::close() {
    80003298:	fe010113          	addi	sp,sp,-32
    8000329c:	00113c23          	sd	ra,24(sp)
    800032a0:	00813823          	sd	s0,16(sp)
    800032a4:	00913423          	sd	s1,8(sp)
    800032a8:	01213023          	sd	s2,0(sp)
    800032ac:	02010413          	addi	s0,sp,32
    800032b0:	00050913          	mv	s2,a0
        return -1;
    }
    this->closed=true;
    800032b4:	00100793          	li	a5,1
    800032b8:	00f50223          	sb	a5,4(a0)
    800032bc:	0380006f          	j	800032f4 <_ZN3SEM5closeEv+0x64>
        Elem* elem=tail;
    800032c0:	0087b503          	ld	a0,8(a5)
        if(prev) prev->next=0;
    800032c4:	06070663          	beqz	a4,80003330 <_ZN3SEM5closeEv+0xa0>
    800032c8:	00073423          	sd	zero,8(a4)
        tail=prev;
    800032cc:	00e7b423          	sd	a4,8(a5)
        T* retval= elem->data;
    800032d0:	00053483          	ld	s1,0(a0)
        delete elem;
    800032d4:	00050663          	beqz	a0,800032e0 <_ZN3SEM5closeEv+0x50>
    800032d8:	fffff097          	auipc	ra,0xfffff
    800032dc:	c84080e7          	jalr	-892(ra) # 80001f5c <_ZdlPv>

    while (blockedQueue.size> 0) {
        TCB* tcb = blockedQueue.removeLast();
        if (tcb == nullptr) {
    800032e0:	06048e63          	beqz	s1,8000335c <_ZN3SEM5closeEv+0xcc>
    void unblock() { this->blocked = false; }
    800032e4:	02048823          	sb	zero,48(s1)
            return -1;
        }
        tcb->unblock();
        Scheduler::put(tcb);
    800032e8:	00048513          	mv	a0,s1
    800032ec:	fffff097          	auipc	ra,0xfffff
    800032f0:	948080e7          	jalr	-1720(ra) # 80001c34 <_ZN9Scheduler3putEP3TCB>
    while (blockedQueue.size> 0) {
    800032f4:	01892783          	lw	a5,24(s2)
    800032f8:	04f05463          	blez	a5,80003340 <_ZN3SEM5closeEv+0xb0>
        TCB* tcb = blockedQueue.removeLast();
    800032fc:	00890793          	addi	a5,s2,8
        size--;
    80003300:	0107a703          	lw	a4,16(a5)
    80003304:	fff7071b          	addiw	a4,a4,-1
    80003308:	00e7a823          	sw	a4,16(a5)
        if(!head){return 0;}
    8000330c:	00893483          	ld	s1,8(s2)
    80003310:	fc0488e3          	beqz	s1,800032e0 <_ZN3SEM5closeEv+0x50>
        Elem* prev=0;
    80003314:	00000713          	li	a4,0
        for(Elem* curr=head; curr && curr!=tail; prev=curr, curr=curr->next);
    80003318:	fa0484e3          	beqz	s1,800032c0 <_ZN3SEM5closeEv+0x30>
    8000331c:	0087b683          	ld	a3,8(a5)
    80003320:	fad480e3          	beq	s1,a3,800032c0 <_ZN3SEM5closeEv+0x30>
    80003324:	00048713          	mv	a4,s1
    80003328:	0084b483          	ld	s1,8(s1)
    8000332c:	fedff06f          	j	80003318 <_ZN3SEM5closeEv+0x88>
        else head=0;
    80003330:	00093423          	sd	zero,8(s2)
    80003334:	f99ff06f          	j	800032cc <_ZN3SEM5closeEv+0x3c>
        return -1;
    80003338:	fff00513          	li	a0,-1
    }
    return 0;
}
    8000333c:	00008067          	ret
    return 0;
    80003340:	00000513          	li	a0,0
}
    80003344:	01813083          	ld	ra,24(sp)
    80003348:	01013403          	ld	s0,16(sp)
    8000334c:	00813483          	ld	s1,8(sp)
    80003350:	00013903          	ld	s2,0(sp)
    80003354:	02010113          	addi	sp,sp,32
    80003358:	00008067          	ret
            return -1;
    8000335c:	fff00513          	li	a0,-1
    80003360:	fe5ff06f          	j	80003344 <_ZN3SEM5closeEv+0xb4>

0000000080003364 <_ZN3SEM4waitEv>:

int SEM::wait() {
    //pprintString("Sem::wait\n");
    if (this->closed) {
    80003364:	00454783          	lbu	a5,4(a0)
    80003368:	0a079c63          	bnez	a5,80003420 <_ZN3SEM4waitEv+0xbc>
int SEM::wait() {
    8000336c:	fd010113          	addi	sp,sp,-48
    80003370:	02113423          	sd	ra,40(sp)
    80003374:	02813023          	sd	s0,32(sp)
    80003378:	00913c23          	sd	s1,24(sp)
    8000337c:	01213823          	sd	s2,16(sp)
    80003380:	01313423          	sd	s3,8(sp)
    80003384:	03010413          	addi	s0,sp,48
    80003388:	00050493          	mv	s1,a0
        return -1;
    }
    val--;
    8000338c:	00052783          	lw	a5,0(a0)
    80003390:	fff7879b          	addiw	a5,a5,-1
    80003394:	00f52023          	sw	a5,0(a0)
    if (val<0) {
    80003398:	02079713          	slli	a4,a5,0x20
    8000339c:	02074263          	bltz	a4,800033c0 <_ZN3SEM4waitEv+0x5c>
        TCB::running->block();
        blockedQueue.addFirst(TCB::running);
        //thread_dispatch();
        TCB::dispatch();
    }
    return 0;
    800033a0:	00000513          	li	a0,0
}
    800033a4:	02813083          	ld	ra,40(sp)
    800033a8:	02013403          	ld	s0,32(sp)
    800033ac:	01813483          	ld	s1,24(sp)
    800033b0:	01013903          	ld	s2,16(sp)
    800033b4:	00813983          	ld	s3,8(sp)
    800033b8:	03010113          	addi	sp,sp,48
    800033bc:	00008067          	ret
        TCB::running->block();
    800033c0:	00008797          	auipc	a5,0x8
    800033c4:	6707b783          	ld	a5,1648(a5) # 8000ba30 <_GLOBAL_OFFSET_TABLE_+0x48>
    800033c8:	0007b983          	ld	s3,0(a5)
    void block() { this->blocked = true; }
    800033cc:	00100793          	li	a5,1
    800033d0:	02f98823          	sb	a5,48(s3)
        blockedQueue.addFirst(TCB::running);
    800033d4:	00850913          	addi	s2,a0,8
        Elem* elem=new Elem(data, head);
    800033d8:	01000513          	li	a0,16
    800033dc:	fffff097          	auipc	ra,0xfffff
    800033e0:	b58080e7          	jalr	-1192(ra) # 80001f34 <_Znwm>
    800033e4:	0084b783          	ld	a5,8(s1)
        Elem(T* data, Elem* next=nullptr): data(data), next(next){}
    800033e8:	01353023          	sd	s3,0(a0)
    800033ec:	00f53423          	sd	a5,8(a0)
        head=elem;
    800033f0:	00a4b423          	sd	a0,8(s1)
        if(!tail){tail=head;}
    800033f4:	00893783          	ld	a5,8(s2)
    800033f8:	02078063          	beqz	a5,80003418 <_ZN3SEM4waitEv+0xb4>
        size++;
    800033fc:	01092783          	lw	a5,16(s2)
    80003400:	0017879b          	addiw	a5,a5,1
    80003404:	00f92823          	sw	a5,16(s2)
        TCB::dispatch();
    80003408:	fffff097          	auipc	ra,0xfffff
    8000340c:	130080e7          	jalr	304(ra) # 80002538 <_ZN3TCB8dispatchEv>
    return 0;
    80003410:	00000513          	li	a0,0
    80003414:	f91ff06f          	j	800033a4 <_ZN3SEM4waitEv+0x40>
        if(!tail){tail=head;}
    80003418:	00a93423          	sd	a0,8(s2)
    8000341c:	fe1ff06f          	j	800033fc <_ZN3SEM4waitEv+0x98>
        return -1;
    80003420:	fff00513          	li	a0,-1
}
    80003424:	00008067          	ret

0000000080003428 <_ZN3SEM6signalEv>:

int SEM::signal() {
    //pprintString("Sem::signal\n");
    if (this->closed) {
    80003428:	00454783          	lbu	a5,4(a0)
    8000342c:	0c079063          	bnez	a5,800034ec <_ZN3SEM6signalEv+0xc4>
        return -1;
    }
    val++;
    80003430:	00052783          	lw	a5,0(a0)
    80003434:	0017879b          	addiw	a5,a5,1
    80003438:	0007871b          	sext.w	a4,a5
    8000343c:	00f52023          	sw	a5,0(a0)
    if (val<=0) {
    80003440:	00e05663          	blez	a4,8000344c <_ZN3SEM6signalEv+0x24>
                return -1;
        }
        unblockTcb->unblock();
        Scheduler::put(unblockTcb);
    }
    return 0;
    80003444:	00000513          	li	a0,0
}
    80003448:	00008067          	ret
int SEM::signal() {
    8000344c:	fe010113          	addi	sp,sp,-32
    80003450:	00113c23          	sd	ra,24(sp)
    80003454:	00813823          	sd	s0,16(sp)
    80003458:	00913423          	sd	s1,8(sp)
    8000345c:	02010413          	addi	s0,sp,32
        TCB *unblockTcb = blockedQueue.removeLast();
    80003460:	00850793          	addi	a5,a0,8
        size--;
    80003464:	0107a703          	lw	a4,16(a5)
    80003468:	fff7071b          	addiw	a4,a4,-1
    8000346c:	00e7a823          	sw	a4,16(a5)
        if(!head){return 0;}
    80003470:	00853483          	ld	s1,8(a0)
    80003474:	04048263          	beqz	s1,800034b8 <_ZN3SEM6signalEv+0x90>
        Elem* prev=0;
    80003478:	00000693          	li	a3,0
        for(Elem* curr=head; curr && curr!=tail; prev=curr, curr=curr->next);
    8000347c:	00048c63          	beqz	s1,80003494 <_ZN3SEM6signalEv+0x6c>
    80003480:	0087b703          	ld	a4,8(a5)
    80003484:	00e48863          	beq	s1,a4,80003494 <_ZN3SEM6signalEv+0x6c>
    80003488:	00048693          	mv	a3,s1
    8000348c:	0084b483          	ld	s1,8(s1)
    80003490:	fedff06f          	j	8000347c <_ZN3SEM6signalEv+0x54>
        Elem* elem=tail;
    80003494:	0087b703          	ld	a4,8(a5)
        if(prev) prev->next=0;
    80003498:	04068663          	beqz	a3,800034e4 <_ZN3SEM6signalEv+0xbc>
    8000349c:	0006b423          	sd	zero,8(a3)
        tail=prev;
    800034a0:	00d7b423          	sd	a3,8(a5)
        T* retval= elem->data;
    800034a4:	00073483          	ld	s1,0(a4)
        delete elem;
    800034a8:	00070863          	beqz	a4,800034b8 <_ZN3SEM6signalEv+0x90>
    800034ac:	00070513          	mv	a0,a4
    800034b0:	fffff097          	auipc	ra,0xfffff
    800034b4:	aac080e7          	jalr	-1364(ra) # 80001f5c <_ZdlPv>
        if (unblockTcb == nullptr) {
    800034b8:	02048e63          	beqz	s1,800034f4 <_ZN3SEM6signalEv+0xcc>
    void unblock() { this->blocked = false; }
    800034bc:	02048823          	sb	zero,48(s1)
        Scheduler::put(unblockTcb);
    800034c0:	00048513          	mv	a0,s1
    800034c4:	ffffe097          	auipc	ra,0xffffe
    800034c8:	770080e7          	jalr	1904(ra) # 80001c34 <_ZN9Scheduler3putEP3TCB>
    return 0;
    800034cc:	00000513          	li	a0,0
}
    800034d0:	01813083          	ld	ra,24(sp)
    800034d4:	01013403          	ld	s0,16(sp)
    800034d8:	00813483          	ld	s1,8(sp)
    800034dc:	02010113          	addi	sp,sp,32
    800034e0:	00008067          	ret
        else head=0;
    800034e4:	00053423          	sd	zero,8(a0)
    800034e8:	fb9ff06f          	j	800034a0 <_ZN3SEM6signalEv+0x78>
        return -1;
    800034ec:	fff00513          	li	a0,-1
    800034f0:	00008067          	ret
                return -1;
    800034f4:	fff00513          	li	a0,-1
    800034f8:	fd9ff06f          	j	800034d0 <_ZN3SEM6signalEv+0xa8>

00000000800034fc <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    800034fc:	fe010113          	addi	sp,sp,-32
    80003500:	00113c23          	sd	ra,24(sp)
    80003504:	00813823          	sd	s0,16(sp)
    80003508:	00913423          	sd	s1,8(sp)
    8000350c:	01213023          	sd	s2,0(sp)
    80003510:	02010413          	addi	s0,sp,32
    80003514:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80003518:	00000913          	li	s2,0
    8000351c:	00c0006f          	j	80003528 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80003520:	ffffe097          	auipc	ra,0xffffe
    80003524:	d64080e7          	jalr	-668(ra) # 80001284 <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    80003528:	ffffe097          	auipc	ra,0xffffe
    8000352c:	e74080e7          	jalr	-396(ra) # 8000139c <_Z4getcv>
    80003530:	0005059b          	sext.w	a1,a0
    80003534:	01b00793          	li	a5,27
    80003538:	02f58a63          	beq	a1,a5,8000356c <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    8000353c:	0084b503          	ld	a0,8(s1)
    80003540:	00003097          	auipc	ra,0x3
    80003544:	3c4080e7          	jalr	964(ra) # 80006904 <_ZN6Buffer3putEi>
        i++;
    80003548:	0019071b          	addiw	a4,s2,1
    8000354c:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003550:	0004a683          	lw	a3,0(s1)
    80003554:	0026979b          	slliw	a5,a3,0x2
    80003558:	00d787bb          	addw	a5,a5,a3
    8000355c:	0017979b          	slliw	a5,a5,0x1
    80003560:	02f767bb          	remw	a5,a4,a5
    80003564:	fc0792e3          	bnez	a5,80003528 <_ZL16producerKeyboardPv+0x2c>
    80003568:	fb9ff06f          	j	80003520 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    8000356c:	00100793          	li	a5,1
    80003570:	00008717          	auipc	a4,0x8
    80003574:	5af72023          	sw	a5,1440(a4) # 8000bb10 <_ZL9threadEnd>
    data->buffer->put('!');
    80003578:	02100593          	li	a1,33
    8000357c:	0084b503          	ld	a0,8(s1)
    80003580:	00003097          	auipc	ra,0x3
    80003584:	384080e7          	jalr	900(ra) # 80006904 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80003588:	0104b503          	ld	a0,16(s1)
    8000358c:	ffffe097          	auipc	ra,0xffffe
    80003590:	db0080e7          	jalr	-592(ra) # 8000133c <_Z10sem_signalP3SEM>
}
    80003594:	01813083          	ld	ra,24(sp)
    80003598:	01013403          	ld	s0,16(sp)
    8000359c:	00813483          	ld	s1,8(sp)
    800035a0:	00013903          	ld	s2,0(sp)
    800035a4:	02010113          	addi	sp,sp,32
    800035a8:	00008067          	ret

00000000800035ac <_ZL8producerPv>:

static void producer(void *arg) {
    800035ac:	fe010113          	addi	sp,sp,-32
    800035b0:	00113c23          	sd	ra,24(sp)
    800035b4:	00813823          	sd	s0,16(sp)
    800035b8:	00913423          	sd	s1,8(sp)
    800035bc:	01213023          	sd	s2,0(sp)
    800035c0:	02010413          	addi	s0,sp,32
    800035c4:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800035c8:	00000913          	li	s2,0
    800035cc:	00c0006f          	j	800035d8 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800035d0:	ffffe097          	auipc	ra,0xffffe
    800035d4:	cb4080e7          	jalr	-844(ra) # 80001284 <_Z15thread_dispatchv>
    while (!threadEnd) {
    800035d8:	00008797          	auipc	a5,0x8
    800035dc:	5387a783          	lw	a5,1336(a5) # 8000bb10 <_ZL9threadEnd>
    800035e0:	02079e63          	bnez	a5,8000361c <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    800035e4:	0004a583          	lw	a1,0(s1)
    800035e8:	0305859b          	addiw	a1,a1,48
    800035ec:	0084b503          	ld	a0,8(s1)
    800035f0:	00003097          	auipc	ra,0x3
    800035f4:	314080e7          	jalr	788(ra) # 80006904 <_ZN6Buffer3putEi>
        i++;
    800035f8:	0019071b          	addiw	a4,s2,1
    800035fc:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003600:	0004a683          	lw	a3,0(s1)
    80003604:	0026979b          	slliw	a5,a3,0x2
    80003608:	00d787bb          	addw	a5,a5,a3
    8000360c:	0017979b          	slliw	a5,a5,0x1
    80003610:	02f767bb          	remw	a5,a4,a5
    80003614:	fc0792e3          	bnez	a5,800035d8 <_ZL8producerPv+0x2c>
    80003618:	fb9ff06f          	j	800035d0 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    8000361c:	0104b503          	ld	a0,16(s1)
    80003620:	ffffe097          	auipc	ra,0xffffe
    80003624:	d1c080e7          	jalr	-740(ra) # 8000133c <_Z10sem_signalP3SEM>
}
    80003628:	01813083          	ld	ra,24(sp)
    8000362c:	01013403          	ld	s0,16(sp)
    80003630:	00813483          	ld	s1,8(sp)
    80003634:	00013903          	ld	s2,0(sp)
    80003638:	02010113          	addi	sp,sp,32
    8000363c:	00008067          	ret

0000000080003640 <_ZL8consumerPv>:

static void consumer(void *arg) {
    80003640:	fd010113          	addi	sp,sp,-48
    80003644:	02113423          	sd	ra,40(sp)
    80003648:	02813023          	sd	s0,32(sp)
    8000364c:	00913c23          	sd	s1,24(sp)
    80003650:	01213823          	sd	s2,16(sp)
    80003654:	01313423          	sd	s3,8(sp)
    80003658:	03010413          	addi	s0,sp,48
    8000365c:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003660:	00000993          	li	s3,0
    80003664:	01c0006f          	j	80003680 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80003668:	ffffe097          	auipc	ra,0xffffe
    8000366c:	c1c080e7          	jalr	-996(ra) # 80001284 <_Z15thread_dispatchv>
    80003670:	0500006f          	j	800036c0 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80003674:	00a00513          	li	a0,10
    80003678:	ffffe097          	auipc	ra,0xffffe
    8000367c:	d50080e7          	jalr	-688(ra) # 800013c8 <_Z4putcc>
    while (!threadEnd) {
    80003680:	00008797          	auipc	a5,0x8
    80003684:	4907a783          	lw	a5,1168(a5) # 8000bb10 <_ZL9threadEnd>
    80003688:	06079063          	bnez	a5,800036e8 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    8000368c:	00893503          	ld	a0,8(s2)
    80003690:	00003097          	auipc	ra,0x3
    80003694:	304080e7          	jalr	772(ra) # 80006994 <_ZN6Buffer3getEv>
        i++;
    80003698:	0019849b          	addiw	s1,s3,1
    8000369c:	0004899b          	sext.w	s3,s1
        putc(key);
    800036a0:	0ff57513          	andi	a0,a0,255
    800036a4:	ffffe097          	auipc	ra,0xffffe
    800036a8:	d24080e7          	jalr	-732(ra) # 800013c8 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    800036ac:	00092703          	lw	a4,0(s2)
    800036b0:	0027179b          	slliw	a5,a4,0x2
    800036b4:	00e787bb          	addw	a5,a5,a4
    800036b8:	02f4e7bb          	remw	a5,s1,a5
    800036bc:	fa0786e3          	beqz	a5,80003668 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    800036c0:	05000793          	li	a5,80
    800036c4:	02f4e4bb          	remw	s1,s1,a5
    800036c8:	fa049ce3          	bnez	s1,80003680 <_ZL8consumerPv+0x40>
    800036cc:	fa9ff06f          	j	80003674 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    800036d0:	00893503          	ld	a0,8(s2)
    800036d4:	00003097          	auipc	ra,0x3
    800036d8:	2c0080e7          	jalr	704(ra) # 80006994 <_ZN6Buffer3getEv>
        putc(key);
    800036dc:	0ff57513          	andi	a0,a0,255
    800036e0:	ffffe097          	auipc	ra,0xffffe
    800036e4:	ce8080e7          	jalr	-792(ra) # 800013c8 <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    800036e8:	00893503          	ld	a0,8(s2)
    800036ec:	00003097          	auipc	ra,0x3
    800036f0:	334080e7          	jalr	820(ra) # 80006a20 <_ZN6Buffer6getCntEv>
    800036f4:	fca04ee3          	bgtz	a0,800036d0 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    800036f8:	01093503          	ld	a0,16(s2)
    800036fc:	ffffe097          	auipc	ra,0xffffe
    80003700:	c40080e7          	jalr	-960(ra) # 8000133c <_Z10sem_signalP3SEM>
}
    80003704:	02813083          	ld	ra,40(sp)
    80003708:	02013403          	ld	s0,32(sp)
    8000370c:	01813483          	ld	s1,24(sp)
    80003710:	01013903          	ld	s2,16(sp)
    80003714:	00813983          	ld	s3,8(sp)
    80003718:	03010113          	addi	sp,sp,48
    8000371c:	00008067          	ret

0000000080003720 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80003720:	f9010113          	addi	sp,sp,-112
    80003724:	06113423          	sd	ra,104(sp)
    80003728:	06813023          	sd	s0,96(sp)
    8000372c:	04913c23          	sd	s1,88(sp)
    80003730:	05213823          	sd	s2,80(sp)
    80003734:	05313423          	sd	s3,72(sp)
    80003738:	05413023          	sd	s4,64(sp)
    8000373c:	03513c23          	sd	s5,56(sp)
    80003740:	03613823          	sd	s6,48(sp)
    80003744:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80003748:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    8000374c:	00006517          	auipc	a0,0x6
    80003750:	98c50513          	addi	a0,a0,-1652 # 800090d8 <_ZZ12printIntegermE6digits+0x10>
    80003754:	00002097          	auipc	ra,0x2
    80003758:	1d8080e7          	jalr	472(ra) # 8000592c <_Z11printStringPKc>
    getString(input, 30);
    8000375c:	01e00593          	li	a1,30
    80003760:	fa040493          	addi	s1,s0,-96
    80003764:	00048513          	mv	a0,s1
    80003768:	00002097          	auipc	ra,0x2
    8000376c:	24c080e7          	jalr	588(ra) # 800059b4 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003770:	00048513          	mv	a0,s1
    80003774:	00002097          	auipc	ra,0x2
    80003778:	318080e7          	jalr	792(ra) # 80005a8c <_Z11stringToIntPKc>
    8000377c:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80003780:	00006517          	auipc	a0,0x6
    80003784:	97850513          	addi	a0,a0,-1672 # 800090f8 <_ZZ12printIntegermE6digits+0x30>
    80003788:	00002097          	auipc	ra,0x2
    8000378c:	1a4080e7          	jalr	420(ra) # 8000592c <_Z11printStringPKc>
    getString(input, 30);
    80003790:	01e00593          	li	a1,30
    80003794:	00048513          	mv	a0,s1
    80003798:	00002097          	auipc	ra,0x2
    8000379c:	21c080e7          	jalr	540(ra) # 800059b4 <_Z9getStringPci>
    n = stringToInt(input);
    800037a0:	00048513          	mv	a0,s1
    800037a4:	00002097          	auipc	ra,0x2
    800037a8:	2e8080e7          	jalr	744(ra) # 80005a8c <_Z11stringToIntPKc>
    800037ac:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    800037b0:	00006517          	auipc	a0,0x6
    800037b4:	96850513          	addi	a0,a0,-1688 # 80009118 <_ZZ12printIntegermE6digits+0x50>
    800037b8:	00002097          	auipc	ra,0x2
    800037bc:	174080e7          	jalr	372(ra) # 8000592c <_Z11printStringPKc>
    800037c0:	00000613          	li	a2,0
    800037c4:	00a00593          	li	a1,10
    800037c8:	00090513          	mv	a0,s2
    800037cc:	00002097          	auipc	ra,0x2
    800037d0:	310080e7          	jalr	784(ra) # 80005adc <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    800037d4:	00006517          	auipc	a0,0x6
    800037d8:	95c50513          	addi	a0,a0,-1700 # 80009130 <_ZZ12printIntegermE6digits+0x68>
    800037dc:	00002097          	auipc	ra,0x2
    800037e0:	150080e7          	jalr	336(ra) # 8000592c <_Z11printStringPKc>
    800037e4:	00000613          	li	a2,0
    800037e8:	00a00593          	li	a1,10
    800037ec:	00048513          	mv	a0,s1
    800037f0:	00002097          	auipc	ra,0x2
    800037f4:	2ec080e7          	jalr	748(ra) # 80005adc <_Z8printIntiii>
    printString(".\n");
    800037f8:	00006517          	auipc	a0,0x6
    800037fc:	95050513          	addi	a0,a0,-1712 # 80009148 <_ZZ12printIntegermE6digits+0x80>
    80003800:	00002097          	auipc	ra,0x2
    80003804:	12c080e7          	jalr	300(ra) # 8000592c <_Z11printStringPKc>
    if(threadNum > n) {
    80003808:	0324c463          	blt	s1,s2,80003830 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    8000380c:	03205c63          	blez	s2,80003844 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    80003810:	03800513          	li	a0,56
    80003814:	ffffe097          	auipc	ra,0xffffe
    80003818:	720080e7          	jalr	1824(ra) # 80001f34 <_Znwm>
    8000381c:	00050a13          	mv	s4,a0
    80003820:	00048593          	mv	a1,s1
    80003824:	00003097          	auipc	ra,0x3
    80003828:	044080e7          	jalr	68(ra) # 80006868 <_ZN6BufferC1Ei>
    8000382c:	0300006f          	j	8000385c <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003830:	00006517          	auipc	a0,0x6
    80003834:	92050513          	addi	a0,a0,-1760 # 80009150 <_ZZ12printIntegermE6digits+0x88>
    80003838:	00002097          	auipc	ra,0x2
    8000383c:	0f4080e7          	jalr	244(ra) # 8000592c <_Z11printStringPKc>
        return;
    80003840:	0140006f          	j	80003854 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003844:	00006517          	auipc	a0,0x6
    80003848:	94c50513          	addi	a0,a0,-1716 # 80009190 <_ZZ12printIntegermE6digits+0xc8>
    8000384c:	00002097          	auipc	ra,0x2
    80003850:	0e0080e7          	jalr	224(ra) # 8000592c <_Z11printStringPKc>
        return;
    80003854:	000b0113          	mv	sp,s6
    80003858:	1500006f          	j	800039a8 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    8000385c:	00000593          	li	a1,0
    80003860:	00008517          	auipc	a0,0x8
    80003864:	2b850513          	addi	a0,a0,696 # 8000bb18 <_ZL10waitForAll>
    80003868:	ffffe097          	auipc	ra,0xffffe
    8000386c:	a40080e7          	jalr	-1472(ra) # 800012a8 <_Z8sem_openPP3SEMj>
    thread_t threads[threadNum];
    80003870:	00391793          	slli	a5,s2,0x3
    80003874:	00f78793          	addi	a5,a5,15
    80003878:	ff07f793          	andi	a5,a5,-16
    8000387c:	40f10133          	sub	sp,sp,a5
    80003880:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80003884:	0019071b          	addiw	a4,s2,1
    80003888:	00171793          	slli	a5,a4,0x1
    8000388c:	00e787b3          	add	a5,a5,a4
    80003890:	00379793          	slli	a5,a5,0x3
    80003894:	00f78793          	addi	a5,a5,15
    80003898:	ff07f793          	andi	a5,a5,-16
    8000389c:	40f10133          	sub	sp,sp,a5
    800038a0:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    800038a4:	00191613          	slli	a2,s2,0x1
    800038a8:	012607b3          	add	a5,a2,s2
    800038ac:	00379793          	slli	a5,a5,0x3
    800038b0:	00f987b3          	add	a5,s3,a5
    800038b4:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    800038b8:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    800038bc:	00008717          	auipc	a4,0x8
    800038c0:	25c73703          	ld	a4,604(a4) # 8000bb18 <_ZL10waitForAll>
    800038c4:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    800038c8:	00078613          	mv	a2,a5
    800038cc:	00000597          	auipc	a1,0x0
    800038d0:	d7458593          	addi	a1,a1,-652 # 80003640 <_ZL8consumerPv>
    800038d4:	f9840513          	addi	a0,s0,-104
    800038d8:	ffffe097          	auipc	ra,0xffffe
    800038dc:	948080e7          	jalr	-1720(ra) # 80001220 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    800038e0:	00000493          	li	s1,0
    800038e4:	0280006f          	j	8000390c <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    800038e8:	00000597          	auipc	a1,0x0
    800038ec:	c1458593          	addi	a1,a1,-1004 # 800034fc <_ZL16producerKeyboardPv>
                      data + i);
    800038f0:	00179613          	slli	a2,a5,0x1
    800038f4:	00f60633          	add	a2,a2,a5
    800038f8:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    800038fc:	00c98633          	add	a2,s3,a2
    80003900:	ffffe097          	auipc	ra,0xffffe
    80003904:	920080e7          	jalr	-1760(ra) # 80001220 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003908:	0014849b          	addiw	s1,s1,1
    8000390c:	0524d263          	bge	s1,s2,80003950 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    80003910:	00149793          	slli	a5,s1,0x1
    80003914:	009787b3          	add	a5,a5,s1
    80003918:	00379793          	slli	a5,a5,0x3
    8000391c:	00f987b3          	add	a5,s3,a5
    80003920:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80003924:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80003928:	00008717          	auipc	a4,0x8
    8000392c:	1f073703          	ld	a4,496(a4) # 8000bb18 <_ZL10waitForAll>
    80003930:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80003934:	00048793          	mv	a5,s1
    80003938:	00349513          	slli	a0,s1,0x3
    8000393c:	00aa8533          	add	a0,s5,a0
    80003940:	fa9054e3          	blez	s1,800038e8 <_Z22producerConsumer_C_APIv+0x1c8>
    80003944:	00000597          	auipc	a1,0x0
    80003948:	c6858593          	addi	a1,a1,-920 # 800035ac <_ZL8producerPv>
    8000394c:	fa5ff06f          	j	800038f0 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    80003950:	ffffe097          	auipc	ra,0xffffe
    80003954:	934080e7          	jalr	-1740(ra) # 80001284 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    80003958:	00000493          	li	s1,0
    8000395c:	00994e63          	blt	s2,s1,80003978 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    80003960:	00008517          	auipc	a0,0x8
    80003964:	1b853503          	ld	a0,440(a0) # 8000bb18 <_ZL10waitForAll>
    80003968:	ffffe097          	auipc	ra,0xffffe
    8000396c:	9a4080e7          	jalr	-1628(ra) # 8000130c <_Z8sem_waitP3SEM>
    for (int i = 0; i <= threadNum; i++) {
    80003970:	0014849b          	addiw	s1,s1,1
    80003974:	fe9ff06f          	j	8000395c <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80003978:	00008517          	auipc	a0,0x8
    8000397c:	1a053503          	ld	a0,416(a0) # 8000bb18 <_ZL10waitForAll>
    80003980:	ffffe097          	auipc	ra,0xffffe
    80003984:	95c080e7          	jalr	-1700(ra) # 800012dc <_Z9sem_closeP3SEM>
    delete buffer;
    80003988:	000a0e63          	beqz	s4,800039a4 <_Z22producerConsumer_C_APIv+0x284>
    8000398c:	000a0513          	mv	a0,s4
    80003990:	00003097          	auipc	ra,0x3
    80003994:	118080e7          	jalr	280(ra) # 80006aa8 <_ZN6BufferD1Ev>
    80003998:	000a0513          	mv	a0,s4
    8000399c:	ffffe097          	auipc	ra,0xffffe
    800039a0:	5c0080e7          	jalr	1472(ra) # 80001f5c <_ZdlPv>
    800039a4:	000b0113          	mv	sp,s6

}
    800039a8:	f9040113          	addi	sp,s0,-112
    800039ac:	06813083          	ld	ra,104(sp)
    800039b0:	06013403          	ld	s0,96(sp)
    800039b4:	05813483          	ld	s1,88(sp)
    800039b8:	05013903          	ld	s2,80(sp)
    800039bc:	04813983          	ld	s3,72(sp)
    800039c0:	04013a03          	ld	s4,64(sp)
    800039c4:	03813a83          	ld	s5,56(sp)
    800039c8:	03013b03          	ld	s6,48(sp)
    800039cc:	07010113          	addi	sp,sp,112
    800039d0:	00008067          	ret
    800039d4:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    800039d8:	000a0513          	mv	a0,s4
    800039dc:	ffffe097          	auipc	ra,0xffffe
    800039e0:	580080e7          	jalr	1408(ra) # 80001f5c <_ZdlPv>
    800039e4:	00048513          	mv	a0,s1
    800039e8:	00009097          	auipc	ra,0x9
    800039ec:	240080e7          	jalr	576(ra) # 8000cc28 <_Unwind_Resume>

00000000800039f0 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800039f0:	fe010113          	addi	sp,sp,-32
    800039f4:	00113c23          	sd	ra,24(sp)
    800039f8:	00813823          	sd	s0,16(sp)
    800039fc:	00913423          	sd	s1,8(sp)
    80003a00:	01213023          	sd	s2,0(sp)
    80003a04:	02010413          	addi	s0,sp,32
    80003a08:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003a0c:	00100793          	li	a5,1
    80003a10:	02a7f863          	bgeu	a5,a0,80003a40 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003a14:	00a00793          	li	a5,10
    80003a18:	02f577b3          	remu	a5,a0,a5
    80003a1c:	02078e63          	beqz	a5,80003a58 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003a20:	fff48513          	addi	a0,s1,-1
    80003a24:	00000097          	auipc	ra,0x0
    80003a28:	fcc080e7          	jalr	-52(ra) # 800039f0 <_ZL9fibonaccim>
    80003a2c:	00050913          	mv	s2,a0
    80003a30:	ffe48513          	addi	a0,s1,-2
    80003a34:	00000097          	auipc	ra,0x0
    80003a38:	fbc080e7          	jalr	-68(ra) # 800039f0 <_ZL9fibonaccim>
    80003a3c:	00a90533          	add	a0,s2,a0
}
    80003a40:	01813083          	ld	ra,24(sp)
    80003a44:	01013403          	ld	s0,16(sp)
    80003a48:	00813483          	ld	s1,8(sp)
    80003a4c:	00013903          	ld	s2,0(sp)
    80003a50:	02010113          	addi	sp,sp,32
    80003a54:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003a58:	ffffe097          	auipc	ra,0xffffe
    80003a5c:	82c080e7          	jalr	-2004(ra) # 80001284 <_Z15thread_dispatchv>
    80003a60:	fc1ff06f          	j	80003a20 <_ZL9fibonaccim+0x30>

0000000080003a64 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80003a64:	fe010113          	addi	sp,sp,-32
    80003a68:	00113c23          	sd	ra,24(sp)
    80003a6c:	00813823          	sd	s0,16(sp)
    80003a70:	00913423          	sd	s1,8(sp)
    80003a74:	01213023          	sd	s2,0(sp)
    80003a78:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003a7c:	00000913          	li	s2,0
    80003a80:	0380006f          	j	80003ab8 <_ZN7WorkerA11workerBodyAEPv+0x54>
        pprintString("A: i="); printInteger(i); pprintString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003a84:	ffffe097          	auipc	ra,0xffffe
    80003a88:	800080e7          	jalr	-2048(ra) # 80001284 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003a8c:	00148493          	addi	s1,s1,1
    80003a90:	000027b7          	lui	a5,0x2
    80003a94:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003a98:	0097ee63          	bltu	a5,s1,80003ab4 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003a9c:	00000713          	li	a4,0
    80003aa0:	000077b7          	lui	a5,0x7
    80003aa4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003aa8:	fce7eee3          	bltu	a5,a4,80003a84 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80003aac:	00170713          	addi	a4,a4,1
    80003ab0:	ff1ff06f          	j	80003aa0 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003ab4:	00190913          	addi	s2,s2,1
    80003ab8:	00900793          	li	a5,9
    80003abc:	0327ec63          	bltu	a5,s2,80003af4 <_ZN7WorkerA11workerBodyAEPv+0x90>
        pprintString("A: i="); printInteger(i); pprintString("\n");
    80003ac0:	00005517          	auipc	a0,0x5
    80003ac4:	56850513          	addi	a0,a0,1384 # 80009028 <CONSOLE_STATUS+0x18>
    80003ac8:	fffff097          	auipc	ra,0xfffff
    80003acc:	674080e7          	jalr	1652(ra) # 8000313c <_Z12pprintStringPKc>
    80003ad0:	00090513          	mv	a0,s2
    80003ad4:	fffff097          	auipc	ra,0xfffff
    80003ad8:	6ac080e7          	jalr	1708(ra) # 80003180 <_Z12printIntegerm>
    80003adc:	00006517          	auipc	a0,0x6
    80003ae0:	8fc50513          	addi	a0,a0,-1796 # 800093d8 <_ZZ12printIntegermE6digits+0x310>
    80003ae4:	fffff097          	auipc	ra,0xfffff
    80003ae8:	658080e7          	jalr	1624(ra) # 8000313c <_Z12pprintStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003aec:	00000493          	li	s1,0
    80003af0:	fa1ff06f          	j	80003a90 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    pprintString("A finished!\n");
    80003af4:	00005517          	auipc	a0,0x5
    80003af8:	53c50513          	addi	a0,a0,1340 # 80009030 <CONSOLE_STATUS+0x20>
    80003afc:	fffff097          	auipc	ra,0xfffff
    80003b00:	640080e7          	jalr	1600(ra) # 8000313c <_Z12pprintStringPKc>
    finishedA = true;
    80003b04:	00100793          	li	a5,1
    80003b08:	00008717          	auipc	a4,0x8
    80003b0c:	00f70c23          	sb	a5,24(a4) # 8000bb20 <_ZL9finishedA>
}
    80003b10:	01813083          	ld	ra,24(sp)
    80003b14:	01013403          	ld	s0,16(sp)
    80003b18:	00813483          	ld	s1,8(sp)
    80003b1c:	00013903          	ld	s2,0(sp)
    80003b20:	02010113          	addi	sp,sp,32
    80003b24:	00008067          	ret

0000000080003b28 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80003b28:	fe010113          	addi	sp,sp,-32
    80003b2c:	00113c23          	sd	ra,24(sp)
    80003b30:	00813823          	sd	s0,16(sp)
    80003b34:	00913423          	sd	s1,8(sp)
    80003b38:	01213023          	sd	s2,0(sp)
    80003b3c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003b40:	00000913          	li	s2,0
    80003b44:	0380006f          	j	80003b7c <_ZN7WorkerB11workerBodyBEPv+0x54>
        pprintString("B: i="); printInteger(i); pprintString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003b48:	ffffd097          	auipc	ra,0xffffd
    80003b4c:	73c080e7          	jalr	1852(ra) # 80001284 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003b50:	00148493          	addi	s1,s1,1
    80003b54:	000027b7          	lui	a5,0x2
    80003b58:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003b5c:	0097ee63          	bltu	a5,s1,80003b78 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003b60:	00000713          	li	a4,0
    80003b64:	000077b7          	lui	a5,0x7
    80003b68:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003b6c:	fce7eee3          	bltu	a5,a4,80003b48 <_ZN7WorkerB11workerBodyBEPv+0x20>
    80003b70:	00170713          	addi	a4,a4,1
    80003b74:	ff1ff06f          	j	80003b64 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80003b78:	00190913          	addi	s2,s2,1
    80003b7c:	00f00793          	li	a5,15
    80003b80:	0327ec63          	bltu	a5,s2,80003bb8 <_ZN7WorkerB11workerBodyBEPv+0x90>
        pprintString("B: i="); printInteger(i); pprintString("\n");
    80003b84:	00005517          	auipc	a0,0x5
    80003b88:	4bc50513          	addi	a0,a0,1212 # 80009040 <CONSOLE_STATUS+0x30>
    80003b8c:	fffff097          	auipc	ra,0xfffff
    80003b90:	5b0080e7          	jalr	1456(ra) # 8000313c <_Z12pprintStringPKc>
    80003b94:	00090513          	mv	a0,s2
    80003b98:	fffff097          	auipc	ra,0xfffff
    80003b9c:	5e8080e7          	jalr	1512(ra) # 80003180 <_Z12printIntegerm>
    80003ba0:	00006517          	auipc	a0,0x6
    80003ba4:	83850513          	addi	a0,a0,-1992 # 800093d8 <_ZZ12printIntegermE6digits+0x310>
    80003ba8:	fffff097          	auipc	ra,0xfffff
    80003bac:	594080e7          	jalr	1428(ra) # 8000313c <_Z12pprintStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003bb0:	00000493          	li	s1,0
    80003bb4:	fa1ff06f          	j	80003b54 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    pprintString("B finished!\n");
    80003bb8:	00005517          	auipc	a0,0x5
    80003bbc:	49050513          	addi	a0,a0,1168 # 80009048 <CONSOLE_STATUS+0x38>
    80003bc0:	fffff097          	auipc	ra,0xfffff
    80003bc4:	57c080e7          	jalr	1404(ra) # 8000313c <_Z12pprintStringPKc>
    finishedB = true;
    80003bc8:	00100793          	li	a5,1
    80003bcc:	00008717          	auipc	a4,0x8
    80003bd0:	f4f70aa3          	sb	a5,-171(a4) # 8000bb21 <_ZL9finishedB>
    thread_dispatch();
    80003bd4:	ffffd097          	auipc	ra,0xffffd
    80003bd8:	6b0080e7          	jalr	1712(ra) # 80001284 <_Z15thread_dispatchv>
}
    80003bdc:	01813083          	ld	ra,24(sp)
    80003be0:	01013403          	ld	s0,16(sp)
    80003be4:	00813483          	ld	s1,8(sp)
    80003be8:	00013903          	ld	s2,0(sp)
    80003bec:	02010113          	addi	sp,sp,32
    80003bf0:	00008067          	ret

0000000080003bf4 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80003bf4:	fe010113          	addi	sp,sp,-32
    80003bf8:	00113c23          	sd	ra,24(sp)
    80003bfc:	00813823          	sd	s0,16(sp)
    80003c00:	00913423          	sd	s1,8(sp)
    80003c04:	01213023          	sd	s2,0(sp)
    80003c08:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003c0c:	00000493          	li	s1,0
    80003c10:	0380006f          	j	80003c48 <_ZN7WorkerC11workerBodyCEPv+0x54>
    for (; i < 3; i++) {
        pprintString("C: i="); printInteger(i); pprintString("\n");
    80003c14:	00005517          	auipc	a0,0x5
    80003c18:	44450513          	addi	a0,a0,1092 # 80009058 <CONSOLE_STATUS+0x48>
    80003c1c:	fffff097          	auipc	ra,0xfffff
    80003c20:	520080e7          	jalr	1312(ra) # 8000313c <_Z12pprintStringPKc>
    80003c24:	00048513          	mv	a0,s1
    80003c28:	fffff097          	auipc	ra,0xfffff
    80003c2c:	558080e7          	jalr	1368(ra) # 80003180 <_Z12printIntegerm>
    80003c30:	00005517          	auipc	a0,0x5
    80003c34:	7a850513          	addi	a0,a0,1960 # 800093d8 <_ZZ12printIntegermE6digits+0x310>
    80003c38:	fffff097          	auipc	ra,0xfffff
    80003c3c:	504080e7          	jalr	1284(ra) # 8000313c <_Z12pprintStringPKc>
    for (; i < 3; i++) {
    80003c40:	0014849b          	addiw	s1,s1,1
    80003c44:	0ff4f493          	andi	s1,s1,255
    80003c48:	00200793          	li	a5,2
    80003c4c:	fc97f4e3          	bgeu	a5,s1,80003c14 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    pprintString("C: dispatch\n");
    80003c50:	00005517          	auipc	a0,0x5
    80003c54:	57050513          	addi	a0,a0,1392 # 800091c0 <_ZZ12printIntegermE6digits+0xf8>
    80003c58:	fffff097          	auipc	ra,0xfffff
    80003c5c:	4e4080e7          	jalr	1252(ra) # 8000313c <_Z12pprintStringPKc>
    __asm__ ("li t1, 7");
    80003c60:	00700313          	li	t1,7
    thread_dispatch();
    80003c64:	ffffd097          	auipc	ra,0xffffd
    80003c68:	620080e7          	jalr	1568(ra) # 80001284 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003c6c:	00030913          	mv	s2,t1

    pprintString("C: t1="); printInteger(t1); pprintString("\n");
    80003c70:	00005517          	auipc	a0,0x5
    80003c74:	56050513          	addi	a0,a0,1376 # 800091d0 <_ZZ12printIntegermE6digits+0x108>
    80003c78:	fffff097          	auipc	ra,0xfffff
    80003c7c:	4c4080e7          	jalr	1220(ra) # 8000313c <_Z12pprintStringPKc>
    80003c80:	00090513          	mv	a0,s2
    80003c84:	fffff097          	auipc	ra,0xfffff
    80003c88:	4fc080e7          	jalr	1276(ra) # 80003180 <_Z12printIntegerm>
    80003c8c:	00005517          	auipc	a0,0x5
    80003c90:	74c50513          	addi	a0,a0,1868 # 800093d8 <_ZZ12printIntegermE6digits+0x310>
    80003c94:	fffff097          	auipc	ra,0xfffff
    80003c98:	4a8080e7          	jalr	1192(ra) # 8000313c <_Z12pprintStringPKc>

    uint64 result = fibonacci(12);
    80003c9c:	00c00513          	li	a0,12
    80003ca0:	00000097          	auipc	ra,0x0
    80003ca4:	d50080e7          	jalr	-688(ra) # 800039f0 <_ZL9fibonaccim>
    80003ca8:	00050913          	mv	s2,a0
    pprintString("C: fibonaci="); printInteger(result); pprintString("\n");
    80003cac:	00005517          	auipc	a0,0x5
    80003cb0:	52c50513          	addi	a0,a0,1324 # 800091d8 <_ZZ12printIntegermE6digits+0x110>
    80003cb4:	fffff097          	auipc	ra,0xfffff
    80003cb8:	488080e7          	jalr	1160(ra) # 8000313c <_Z12pprintStringPKc>
    80003cbc:	00090513          	mv	a0,s2
    80003cc0:	fffff097          	auipc	ra,0xfffff
    80003cc4:	4c0080e7          	jalr	1216(ra) # 80003180 <_Z12printIntegerm>
    80003cc8:	00005517          	auipc	a0,0x5
    80003ccc:	71050513          	addi	a0,a0,1808 # 800093d8 <_ZZ12printIntegermE6digits+0x310>
    80003cd0:	fffff097          	auipc	ra,0xfffff
    80003cd4:	46c080e7          	jalr	1132(ra) # 8000313c <_Z12pprintStringPKc>
    80003cd8:	0380006f          	j	80003d10 <_ZN7WorkerC11workerBodyCEPv+0x11c>

    for (; i < 6; i++) {
        pprintString("C: i="); printInteger(i); pprintString("\n");
    80003cdc:	00005517          	auipc	a0,0x5
    80003ce0:	37c50513          	addi	a0,a0,892 # 80009058 <CONSOLE_STATUS+0x48>
    80003ce4:	fffff097          	auipc	ra,0xfffff
    80003ce8:	458080e7          	jalr	1112(ra) # 8000313c <_Z12pprintStringPKc>
    80003cec:	00048513          	mv	a0,s1
    80003cf0:	fffff097          	auipc	ra,0xfffff
    80003cf4:	490080e7          	jalr	1168(ra) # 80003180 <_Z12printIntegerm>
    80003cf8:	00005517          	auipc	a0,0x5
    80003cfc:	6e050513          	addi	a0,a0,1760 # 800093d8 <_ZZ12printIntegermE6digits+0x310>
    80003d00:	fffff097          	auipc	ra,0xfffff
    80003d04:	43c080e7          	jalr	1084(ra) # 8000313c <_Z12pprintStringPKc>
    for (; i < 6; i++) {
    80003d08:	0014849b          	addiw	s1,s1,1
    80003d0c:	0ff4f493          	andi	s1,s1,255
    80003d10:	00500793          	li	a5,5
    80003d14:	fc97f4e3          	bgeu	a5,s1,80003cdc <_ZN7WorkerC11workerBodyCEPv+0xe8>
    }

    pprintString("C finished!\n");
    80003d18:	00005517          	auipc	a0,0x5
    80003d1c:	34850513          	addi	a0,a0,840 # 80009060 <CONSOLE_STATUS+0x50>
    80003d20:	fffff097          	auipc	ra,0xfffff
    80003d24:	41c080e7          	jalr	1052(ra) # 8000313c <_Z12pprintStringPKc>
    finishedC = true;
    80003d28:	00100793          	li	a5,1
    80003d2c:	00008717          	auipc	a4,0x8
    80003d30:	def70b23          	sb	a5,-522(a4) # 8000bb22 <_ZL9finishedC>
    thread_dispatch();
    80003d34:	ffffd097          	auipc	ra,0xffffd
    80003d38:	550080e7          	jalr	1360(ra) # 80001284 <_Z15thread_dispatchv>
}
    80003d3c:	01813083          	ld	ra,24(sp)
    80003d40:	01013403          	ld	s0,16(sp)
    80003d44:	00813483          	ld	s1,8(sp)
    80003d48:	00013903          	ld	s2,0(sp)
    80003d4c:	02010113          	addi	sp,sp,32
    80003d50:	00008067          	ret

0000000080003d54 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80003d54:	fe010113          	addi	sp,sp,-32
    80003d58:	00113c23          	sd	ra,24(sp)
    80003d5c:	00813823          	sd	s0,16(sp)
    80003d60:	00913423          	sd	s1,8(sp)
    80003d64:	01213023          	sd	s2,0(sp)
    80003d68:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003d6c:	00a00493          	li	s1,10
    80003d70:	0380006f          	j	80003da8 <_ZN7WorkerD11workerBodyDEPv+0x54>
    for (; i < 13; i++) {
        pprintString("D: i="); printInteger(i); pprintString("\n");
    80003d74:	00005517          	auipc	a0,0x5
    80003d78:	47450513          	addi	a0,a0,1140 # 800091e8 <_ZZ12printIntegermE6digits+0x120>
    80003d7c:	fffff097          	auipc	ra,0xfffff
    80003d80:	3c0080e7          	jalr	960(ra) # 8000313c <_Z12pprintStringPKc>
    80003d84:	00048513          	mv	a0,s1
    80003d88:	fffff097          	auipc	ra,0xfffff
    80003d8c:	3f8080e7          	jalr	1016(ra) # 80003180 <_Z12printIntegerm>
    80003d90:	00005517          	auipc	a0,0x5
    80003d94:	64850513          	addi	a0,a0,1608 # 800093d8 <_ZZ12printIntegermE6digits+0x310>
    80003d98:	fffff097          	auipc	ra,0xfffff
    80003d9c:	3a4080e7          	jalr	932(ra) # 8000313c <_Z12pprintStringPKc>
    for (; i < 13; i++) {
    80003da0:	0014849b          	addiw	s1,s1,1
    80003da4:	0ff4f493          	andi	s1,s1,255
    80003da8:	00c00793          	li	a5,12
    80003dac:	fc97f4e3          	bgeu	a5,s1,80003d74 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    pprintString("D: dispatch\n");
    80003db0:	00005517          	auipc	a0,0x5
    80003db4:	44050513          	addi	a0,a0,1088 # 800091f0 <_ZZ12printIntegermE6digits+0x128>
    80003db8:	fffff097          	auipc	ra,0xfffff
    80003dbc:	384080e7          	jalr	900(ra) # 8000313c <_Z12pprintStringPKc>
    __asm__ ("li t1, 5");
    80003dc0:	00500313          	li	t1,5
    thread_dispatch();
    80003dc4:	ffffd097          	auipc	ra,0xffffd
    80003dc8:	4c0080e7          	jalr	1216(ra) # 80001284 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003dcc:	01000513          	li	a0,16
    80003dd0:	00000097          	auipc	ra,0x0
    80003dd4:	c20080e7          	jalr	-992(ra) # 800039f0 <_ZL9fibonaccim>
    80003dd8:	00050913          	mv	s2,a0
    pprintString("D: fibonaci="); printInteger(result); pprintString("\n");
    80003ddc:	00005517          	auipc	a0,0x5
    80003de0:	42450513          	addi	a0,a0,1060 # 80009200 <_ZZ12printIntegermE6digits+0x138>
    80003de4:	fffff097          	auipc	ra,0xfffff
    80003de8:	358080e7          	jalr	856(ra) # 8000313c <_Z12pprintStringPKc>
    80003dec:	00090513          	mv	a0,s2
    80003df0:	fffff097          	auipc	ra,0xfffff
    80003df4:	390080e7          	jalr	912(ra) # 80003180 <_Z12printIntegerm>
    80003df8:	00005517          	auipc	a0,0x5
    80003dfc:	5e050513          	addi	a0,a0,1504 # 800093d8 <_ZZ12printIntegermE6digits+0x310>
    80003e00:	fffff097          	auipc	ra,0xfffff
    80003e04:	33c080e7          	jalr	828(ra) # 8000313c <_Z12pprintStringPKc>
    80003e08:	0380006f          	j	80003e40 <_ZN7WorkerD11workerBodyDEPv+0xec>

    for (; i < 16; i++) {
        pprintString("D: i="); printInteger(i); pprintString("\n");
    80003e0c:	00005517          	auipc	a0,0x5
    80003e10:	3dc50513          	addi	a0,a0,988 # 800091e8 <_ZZ12printIntegermE6digits+0x120>
    80003e14:	fffff097          	auipc	ra,0xfffff
    80003e18:	328080e7          	jalr	808(ra) # 8000313c <_Z12pprintStringPKc>
    80003e1c:	00048513          	mv	a0,s1
    80003e20:	fffff097          	auipc	ra,0xfffff
    80003e24:	360080e7          	jalr	864(ra) # 80003180 <_Z12printIntegerm>
    80003e28:	00005517          	auipc	a0,0x5
    80003e2c:	5b050513          	addi	a0,a0,1456 # 800093d8 <_ZZ12printIntegermE6digits+0x310>
    80003e30:	fffff097          	auipc	ra,0xfffff
    80003e34:	30c080e7          	jalr	780(ra) # 8000313c <_Z12pprintStringPKc>
    for (; i < 16; i++) {
    80003e38:	0014849b          	addiw	s1,s1,1
    80003e3c:	0ff4f493          	andi	s1,s1,255
    80003e40:	00f00793          	li	a5,15
    80003e44:	fc97f4e3          	bgeu	a5,s1,80003e0c <_ZN7WorkerD11workerBodyDEPv+0xb8>
    }

    pprintString("D finished!\n");
    80003e48:	00005517          	auipc	a0,0x5
    80003e4c:	3c850513          	addi	a0,a0,968 # 80009210 <_ZZ12printIntegermE6digits+0x148>
    80003e50:	fffff097          	auipc	ra,0xfffff
    80003e54:	2ec080e7          	jalr	748(ra) # 8000313c <_Z12pprintStringPKc>
    finishedD = true;
    80003e58:	00100793          	li	a5,1
    80003e5c:	00008717          	auipc	a4,0x8
    80003e60:	ccf703a3          	sb	a5,-825(a4) # 8000bb23 <_ZL9finishedD>
    thread_dispatch();
    80003e64:	ffffd097          	auipc	ra,0xffffd
    80003e68:	420080e7          	jalr	1056(ra) # 80001284 <_Z15thread_dispatchv>
}
    80003e6c:	01813083          	ld	ra,24(sp)
    80003e70:	01013403          	ld	s0,16(sp)
    80003e74:	00813483          	ld	s1,8(sp)
    80003e78:	00013903          	ld	s2,0(sp)
    80003e7c:	02010113          	addi	sp,sp,32
    80003e80:	00008067          	ret

0000000080003e84 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80003e84:	fc010113          	addi	sp,sp,-64
    80003e88:	02113c23          	sd	ra,56(sp)
    80003e8c:	02813823          	sd	s0,48(sp)
    80003e90:	02913423          	sd	s1,40(sp)
    80003e94:	03213023          	sd	s2,32(sp)
    80003e98:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80003e9c:	02000513          	li	a0,32
    80003ea0:	ffffe097          	auipc	ra,0xffffe
    80003ea4:	094080e7          	jalr	148(ra) # 80001f34 <_Znwm>
    80003ea8:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80003eac:	ffffe097          	auipc	ra,0xffffe
    80003eb0:	210080e7          	jalr	528(ra) # 800020bc <_ZN6ThreadC1Ev>
    80003eb4:	00008797          	auipc	a5,0x8
    80003eb8:	99c78793          	addi	a5,a5,-1636 # 8000b850 <_ZTV7WorkerA+0x10>
    80003ebc:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80003ec0:	fc943023          	sd	s1,-64(s0)
    pprintString("ThreadA created\n");
    80003ec4:	00005517          	auipc	a0,0x5
    80003ec8:	35c50513          	addi	a0,a0,860 # 80009220 <_ZZ12printIntegermE6digits+0x158>
    80003ecc:	fffff097          	auipc	ra,0xfffff
    80003ed0:	270080e7          	jalr	624(ra) # 8000313c <_Z12pprintStringPKc>

    threads[1] = new WorkerB();
    80003ed4:	02000513          	li	a0,32
    80003ed8:	ffffe097          	auipc	ra,0xffffe
    80003edc:	05c080e7          	jalr	92(ra) # 80001f34 <_Znwm>
    80003ee0:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80003ee4:	ffffe097          	auipc	ra,0xffffe
    80003ee8:	1d8080e7          	jalr	472(ra) # 800020bc <_ZN6ThreadC1Ev>
    80003eec:	00008797          	auipc	a5,0x8
    80003ef0:	98c78793          	addi	a5,a5,-1652 # 8000b878 <_ZTV7WorkerB+0x10>
    80003ef4:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80003ef8:	fc943423          	sd	s1,-56(s0)
    pprintString("ThreadB created\n");
    80003efc:	00005517          	auipc	a0,0x5
    80003f00:	33c50513          	addi	a0,a0,828 # 80009238 <_ZZ12printIntegermE6digits+0x170>
    80003f04:	fffff097          	auipc	ra,0xfffff
    80003f08:	238080e7          	jalr	568(ra) # 8000313c <_Z12pprintStringPKc>

    threads[2] = new WorkerC();
    80003f0c:	02000513          	li	a0,32
    80003f10:	ffffe097          	auipc	ra,0xffffe
    80003f14:	024080e7          	jalr	36(ra) # 80001f34 <_Znwm>
    80003f18:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80003f1c:	ffffe097          	auipc	ra,0xffffe
    80003f20:	1a0080e7          	jalr	416(ra) # 800020bc <_ZN6ThreadC1Ev>
    80003f24:	00008797          	auipc	a5,0x8
    80003f28:	97c78793          	addi	a5,a5,-1668 # 8000b8a0 <_ZTV7WorkerC+0x10>
    80003f2c:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80003f30:	fc943823          	sd	s1,-48(s0)
    pprintString("ThreadC created\n");
    80003f34:	00005517          	auipc	a0,0x5
    80003f38:	31c50513          	addi	a0,a0,796 # 80009250 <_ZZ12printIntegermE6digits+0x188>
    80003f3c:	fffff097          	auipc	ra,0xfffff
    80003f40:	200080e7          	jalr	512(ra) # 8000313c <_Z12pprintStringPKc>

    threads[3] = new WorkerD();
    80003f44:	02000513          	li	a0,32
    80003f48:	ffffe097          	auipc	ra,0xffffe
    80003f4c:	fec080e7          	jalr	-20(ra) # 80001f34 <_Znwm>
    80003f50:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80003f54:	ffffe097          	auipc	ra,0xffffe
    80003f58:	168080e7          	jalr	360(ra) # 800020bc <_ZN6ThreadC1Ev>
    80003f5c:	00008797          	auipc	a5,0x8
    80003f60:	96c78793          	addi	a5,a5,-1684 # 8000b8c8 <_ZTV7WorkerD+0x10>
    80003f64:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80003f68:	fc943c23          	sd	s1,-40(s0)
    pprintString("ThreadD created\n");
    80003f6c:	00005517          	auipc	a0,0x5
    80003f70:	2fc50513          	addi	a0,a0,764 # 80009268 <_ZZ12printIntegermE6digits+0x1a0>
    80003f74:	fffff097          	auipc	ra,0xfffff
    80003f78:	1c8080e7          	jalr	456(ra) # 8000313c <_Z12pprintStringPKc>

    for(int i=0; i<4; i++) {
    80003f7c:	00000493          	li	s1,0
    80003f80:	00300793          	li	a5,3
    80003f84:	0297c663          	blt	a5,s1,80003fb0 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80003f88:	00349793          	slli	a5,s1,0x3
    80003f8c:	fe040713          	addi	a4,s0,-32
    80003f90:	00f707b3          	add	a5,a4,a5
    80003f94:	fe07b503          	ld	a0,-32(a5)
    80003f98:	ffffe097          	auipc	ra,0xffffe
    80003f9c:	154080e7          	jalr	340(ra) # 800020ec <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80003fa0:	0014849b          	addiw	s1,s1,1
    80003fa4:	fddff06f          	j	80003f80 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80003fa8:	ffffe097          	auipc	ra,0xffffe
    80003fac:	0ec080e7          	jalr	236(ra) # 80002094 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80003fb0:	00008797          	auipc	a5,0x8
    80003fb4:	b707c783          	lbu	a5,-1168(a5) # 8000bb20 <_ZL9finishedA>
    80003fb8:	fe0788e3          	beqz	a5,80003fa8 <_Z20Threads_CPP_API_testv+0x124>
    80003fbc:	00008797          	auipc	a5,0x8
    80003fc0:	b657c783          	lbu	a5,-1179(a5) # 8000bb21 <_ZL9finishedB>
    80003fc4:	fe0782e3          	beqz	a5,80003fa8 <_Z20Threads_CPP_API_testv+0x124>
    80003fc8:	00008797          	auipc	a5,0x8
    80003fcc:	b5a7c783          	lbu	a5,-1190(a5) # 8000bb22 <_ZL9finishedC>
    80003fd0:	fc078ce3          	beqz	a5,80003fa8 <_Z20Threads_CPP_API_testv+0x124>
    80003fd4:	00008797          	auipc	a5,0x8
    80003fd8:	b4f7c783          	lbu	a5,-1201(a5) # 8000bb23 <_ZL9finishedD>
    80003fdc:	fc0786e3          	beqz	a5,80003fa8 <_Z20Threads_CPP_API_testv+0x124>
    80003fe0:	fc040493          	addi	s1,s0,-64
    80003fe4:	0080006f          	j	80003fec <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    80003fe8:	00848493          	addi	s1,s1,8
    80003fec:	fe040793          	addi	a5,s0,-32
    80003ff0:	08f48663          	beq	s1,a5,8000407c <_Z20Threads_CPP_API_testv+0x1f8>
    80003ff4:	0004b503          	ld	a0,0(s1)
    80003ff8:	fe0508e3          	beqz	a0,80003fe8 <_Z20Threads_CPP_API_testv+0x164>
    80003ffc:	00053783          	ld	a5,0(a0)
    80004000:	0087b783          	ld	a5,8(a5)
    80004004:	000780e7          	jalr	a5
    80004008:	fe1ff06f          	j	80003fe8 <_Z20Threads_CPP_API_testv+0x164>
    8000400c:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80004010:	00048513          	mv	a0,s1
    80004014:	ffffe097          	auipc	ra,0xffffe
    80004018:	f48080e7          	jalr	-184(ra) # 80001f5c <_ZdlPv>
    8000401c:	00090513          	mv	a0,s2
    80004020:	00009097          	auipc	ra,0x9
    80004024:	c08080e7          	jalr	-1016(ra) # 8000cc28 <_Unwind_Resume>
    80004028:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    8000402c:	00048513          	mv	a0,s1
    80004030:	ffffe097          	auipc	ra,0xffffe
    80004034:	f2c080e7          	jalr	-212(ra) # 80001f5c <_ZdlPv>
    80004038:	00090513          	mv	a0,s2
    8000403c:	00009097          	auipc	ra,0x9
    80004040:	bec080e7          	jalr	-1044(ra) # 8000cc28 <_Unwind_Resume>
    80004044:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80004048:	00048513          	mv	a0,s1
    8000404c:	ffffe097          	auipc	ra,0xffffe
    80004050:	f10080e7          	jalr	-240(ra) # 80001f5c <_ZdlPv>
    80004054:	00090513          	mv	a0,s2
    80004058:	00009097          	auipc	ra,0x9
    8000405c:	bd0080e7          	jalr	-1072(ra) # 8000cc28 <_Unwind_Resume>
    80004060:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80004064:	00048513          	mv	a0,s1
    80004068:	ffffe097          	auipc	ra,0xffffe
    8000406c:	ef4080e7          	jalr	-268(ra) # 80001f5c <_ZdlPv>
    80004070:	00090513          	mv	a0,s2
    80004074:	00009097          	auipc	ra,0x9
    80004078:	bb4080e7          	jalr	-1100(ra) # 8000cc28 <_Unwind_Resume>
}
    8000407c:	03813083          	ld	ra,56(sp)
    80004080:	03013403          	ld	s0,48(sp)
    80004084:	02813483          	ld	s1,40(sp)
    80004088:	02013903          	ld	s2,32(sp)
    8000408c:	04010113          	addi	sp,sp,64
    80004090:	00008067          	ret

0000000080004094 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80004094:	ff010113          	addi	sp,sp,-16
    80004098:	00113423          	sd	ra,8(sp)
    8000409c:	00813023          	sd	s0,0(sp)
    800040a0:	01010413          	addi	s0,sp,16
    800040a4:	00007797          	auipc	a5,0x7
    800040a8:	7ac78793          	addi	a5,a5,1964 # 8000b850 <_ZTV7WorkerA+0x10>
    800040ac:	00f53023          	sd	a5,0(a0)
    800040b0:	ffffe097          	auipc	ra,0xffffe
    800040b4:	ed4080e7          	jalr	-300(ra) # 80001f84 <_ZN6ThreadD1Ev>
    800040b8:	00813083          	ld	ra,8(sp)
    800040bc:	00013403          	ld	s0,0(sp)
    800040c0:	01010113          	addi	sp,sp,16
    800040c4:	00008067          	ret

00000000800040c8 <_ZN7WorkerAD0Ev>:
    800040c8:	fe010113          	addi	sp,sp,-32
    800040cc:	00113c23          	sd	ra,24(sp)
    800040d0:	00813823          	sd	s0,16(sp)
    800040d4:	00913423          	sd	s1,8(sp)
    800040d8:	02010413          	addi	s0,sp,32
    800040dc:	00050493          	mv	s1,a0
    800040e0:	00007797          	auipc	a5,0x7
    800040e4:	77078793          	addi	a5,a5,1904 # 8000b850 <_ZTV7WorkerA+0x10>
    800040e8:	00f53023          	sd	a5,0(a0)
    800040ec:	ffffe097          	auipc	ra,0xffffe
    800040f0:	e98080e7          	jalr	-360(ra) # 80001f84 <_ZN6ThreadD1Ev>
    800040f4:	00048513          	mv	a0,s1
    800040f8:	ffffe097          	auipc	ra,0xffffe
    800040fc:	e64080e7          	jalr	-412(ra) # 80001f5c <_ZdlPv>
    80004100:	01813083          	ld	ra,24(sp)
    80004104:	01013403          	ld	s0,16(sp)
    80004108:	00813483          	ld	s1,8(sp)
    8000410c:	02010113          	addi	sp,sp,32
    80004110:	00008067          	ret

0000000080004114 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80004114:	ff010113          	addi	sp,sp,-16
    80004118:	00113423          	sd	ra,8(sp)
    8000411c:	00813023          	sd	s0,0(sp)
    80004120:	01010413          	addi	s0,sp,16
    80004124:	00007797          	auipc	a5,0x7
    80004128:	75478793          	addi	a5,a5,1876 # 8000b878 <_ZTV7WorkerB+0x10>
    8000412c:	00f53023          	sd	a5,0(a0)
    80004130:	ffffe097          	auipc	ra,0xffffe
    80004134:	e54080e7          	jalr	-428(ra) # 80001f84 <_ZN6ThreadD1Ev>
    80004138:	00813083          	ld	ra,8(sp)
    8000413c:	00013403          	ld	s0,0(sp)
    80004140:	01010113          	addi	sp,sp,16
    80004144:	00008067          	ret

0000000080004148 <_ZN7WorkerBD0Ev>:
    80004148:	fe010113          	addi	sp,sp,-32
    8000414c:	00113c23          	sd	ra,24(sp)
    80004150:	00813823          	sd	s0,16(sp)
    80004154:	00913423          	sd	s1,8(sp)
    80004158:	02010413          	addi	s0,sp,32
    8000415c:	00050493          	mv	s1,a0
    80004160:	00007797          	auipc	a5,0x7
    80004164:	71878793          	addi	a5,a5,1816 # 8000b878 <_ZTV7WorkerB+0x10>
    80004168:	00f53023          	sd	a5,0(a0)
    8000416c:	ffffe097          	auipc	ra,0xffffe
    80004170:	e18080e7          	jalr	-488(ra) # 80001f84 <_ZN6ThreadD1Ev>
    80004174:	00048513          	mv	a0,s1
    80004178:	ffffe097          	auipc	ra,0xffffe
    8000417c:	de4080e7          	jalr	-540(ra) # 80001f5c <_ZdlPv>
    80004180:	01813083          	ld	ra,24(sp)
    80004184:	01013403          	ld	s0,16(sp)
    80004188:	00813483          	ld	s1,8(sp)
    8000418c:	02010113          	addi	sp,sp,32
    80004190:	00008067          	ret

0000000080004194 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80004194:	ff010113          	addi	sp,sp,-16
    80004198:	00113423          	sd	ra,8(sp)
    8000419c:	00813023          	sd	s0,0(sp)
    800041a0:	01010413          	addi	s0,sp,16
    800041a4:	00007797          	auipc	a5,0x7
    800041a8:	6fc78793          	addi	a5,a5,1788 # 8000b8a0 <_ZTV7WorkerC+0x10>
    800041ac:	00f53023          	sd	a5,0(a0)
    800041b0:	ffffe097          	auipc	ra,0xffffe
    800041b4:	dd4080e7          	jalr	-556(ra) # 80001f84 <_ZN6ThreadD1Ev>
    800041b8:	00813083          	ld	ra,8(sp)
    800041bc:	00013403          	ld	s0,0(sp)
    800041c0:	01010113          	addi	sp,sp,16
    800041c4:	00008067          	ret

00000000800041c8 <_ZN7WorkerCD0Ev>:
    800041c8:	fe010113          	addi	sp,sp,-32
    800041cc:	00113c23          	sd	ra,24(sp)
    800041d0:	00813823          	sd	s0,16(sp)
    800041d4:	00913423          	sd	s1,8(sp)
    800041d8:	02010413          	addi	s0,sp,32
    800041dc:	00050493          	mv	s1,a0
    800041e0:	00007797          	auipc	a5,0x7
    800041e4:	6c078793          	addi	a5,a5,1728 # 8000b8a0 <_ZTV7WorkerC+0x10>
    800041e8:	00f53023          	sd	a5,0(a0)
    800041ec:	ffffe097          	auipc	ra,0xffffe
    800041f0:	d98080e7          	jalr	-616(ra) # 80001f84 <_ZN6ThreadD1Ev>
    800041f4:	00048513          	mv	a0,s1
    800041f8:	ffffe097          	auipc	ra,0xffffe
    800041fc:	d64080e7          	jalr	-668(ra) # 80001f5c <_ZdlPv>
    80004200:	01813083          	ld	ra,24(sp)
    80004204:	01013403          	ld	s0,16(sp)
    80004208:	00813483          	ld	s1,8(sp)
    8000420c:	02010113          	addi	sp,sp,32
    80004210:	00008067          	ret

0000000080004214 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80004214:	ff010113          	addi	sp,sp,-16
    80004218:	00113423          	sd	ra,8(sp)
    8000421c:	00813023          	sd	s0,0(sp)
    80004220:	01010413          	addi	s0,sp,16
    80004224:	00007797          	auipc	a5,0x7
    80004228:	6a478793          	addi	a5,a5,1700 # 8000b8c8 <_ZTV7WorkerD+0x10>
    8000422c:	00f53023          	sd	a5,0(a0)
    80004230:	ffffe097          	auipc	ra,0xffffe
    80004234:	d54080e7          	jalr	-684(ra) # 80001f84 <_ZN6ThreadD1Ev>
    80004238:	00813083          	ld	ra,8(sp)
    8000423c:	00013403          	ld	s0,0(sp)
    80004240:	01010113          	addi	sp,sp,16
    80004244:	00008067          	ret

0000000080004248 <_ZN7WorkerDD0Ev>:
    80004248:	fe010113          	addi	sp,sp,-32
    8000424c:	00113c23          	sd	ra,24(sp)
    80004250:	00813823          	sd	s0,16(sp)
    80004254:	00913423          	sd	s1,8(sp)
    80004258:	02010413          	addi	s0,sp,32
    8000425c:	00050493          	mv	s1,a0
    80004260:	00007797          	auipc	a5,0x7
    80004264:	66878793          	addi	a5,a5,1640 # 8000b8c8 <_ZTV7WorkerD+0x10>
    80004268:	00f53023          	sd	a5,0(a0)
    8000426c:	ffffe097          	auipc	ra,0xffffe
    80004270:	d18080e7          	jalr	-744(ra) # 80001f84 <_ZN6ThreadD1Ev>
    80004274:	00048513          	mv	a0,s1
    80004278:	ffffe097          	auipc	ra,0xffffe
    8000427c:	ce4080e7          	jalr	-796(ra) # 80001f5c <_ZdlPv>
    80004280:	01813083          	ld	ra,24(sp)
    80004284:	01013403          	ld	s0,16(sp)
    80004288:	00813483          	ld	s1,8(sp)
    8000428c:	02010113          	addi	sp,sp,32
    80004290:	00008067          	ret

0000000080004294 <_ZN7WorkerA3runEv>:
    void run() override {
    80004294:	ff010113          	addi	sp,sp,-16
    80004298:	00113423          	sd	ra,8(sp)
    8000429c:	00813023          	sd	s0,0(sp)
    800042a0:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    800042a4:	00000593          	li	a1,0
    800042a8:	fffff097          	auipc	ra,0xfffff
    800042ac:	7bc080e7          	jalr	1980(ra) # 80003a64 <_ZN7WorkerA11workerBodyAEPv>
    }
    800042b0:	00813083          	ld	ra,8(sp)
    800042b4:	00013403          	ld	s0,0(sp)
    800042b8:	01010113          	addi	sp,sp,16
    800042bc:	00008067          	ret

00000000800042c0 <_ZN7WorkerB3runEv>:
    void run() override {
    800042c0:	ff010113          	addi	sp,sp,-16
    800042c4:	00113423          	sd	ra,8(sp)
    800042c8:	00813023          	sd	s0,0(sp)
    800042cc:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    800042d0:	00000593          	li	a1,0
    800042d4:	00000097          	auipc	ra,0x0
    800042d8:	854080e7          	jalr	-1964(ra) # 80003b28 <_ZN7WorkerB11workerBodyBEPv>
    }
    800042dc:	00813083          	ld	ra,8(sp)
    800042e0:	00013403          	ld	s0,0(sp)
    800042e4:	01010113          	addi	sp,sp,16
    800042e8:	00008067          	ret

00000000800042ec <_ZN7WorkerC3runEv>:
    void run() override {
    800042ec:	ff010113          	addi	sp,sp,-16
    800042f0:	00113423          	sd	ra,8(sp)
    800042f4:	00813023          	sd	s0,0(sp)
    800042f8:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    800042fc:	00000593          	li	a1,0
    80004300:	00000097          	auipc	ra,0x0
    80004304:	8f4080e7          	jalr	-1804(ra) # 80003bf4 <_ZN7WorkerC11workerBodyCEPv>
    }
    80004308:	00813083          	ld	ra,8(sp)
    8000430c:	00013403          	ld	s0,0(sp)
    80004310:	01010113          	addi	sp,sp,16
    80004314:	00008067          	ret

0000000080004318 <_ZN7WorkerD3runEv>:
    void run() override {
    80004318:	ff010113          	addi	sp,sp,-16
    8000431c:	00113423          	sd	ra,8(sp)
    80004320:	00813023          	sd	s0,0(sp)
    80004324:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80004328:	00000593          	li	a1,0
    8000432c:	00000097          	auipc	ra,0x0
    80004330:	a28080e7          	jalr	-1496(ra) # 80003d54 <_ZN7WorkerD11workerBodyDEPv>
    }
    80004334:	00813083          	ld	ra,8(sp)
    80004338:	00013403          	ld	s0,0(sp)
    8000433c:	01010113          	addi	sp,sp,16
    80004340:	00008067          	ret

0000000080004344 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    80004344:	f8010113          	addi	sp,sp,-128
    80004348:	06113c23          	sd	ra,120(sp)
    8000434c:	06813823          	sd	s0,112(sp)
    80004350:	06913423          	sd	s1,104(sp)
    80004354:	07213023          	sd	s2,96(sp)
    80004358:	05313c23          	sd	s3,88(sp)
    8000435c:	05413823          	sd	s4,80(sp)
    80004360:	05513423          	sd	s5,72(sp)
    80004364:	05613023          	sd	s6,64(sp)
    80004368:	03713c23          	sd	s7,56(sp)
    8000436c:	03813823          	sd	s8,48(sp)
    80004370:	03913423          	sd	s9,40(sp)
    80004374:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    80004378:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    8000437c:	00005517          	auipc	a0,0x5
    80004380:	d5c50513          	addi	a0,a0,-676 # 800090d8 <_ZZ12printIntegermE6digits+0x10>
    80004384:	00001097          	auipc	ra,0x1
    80004388:	5a8080e7          	jalr	1448(ra) # 8000592c <_Z11printStringPKc>
    getString(input, 30);
    8000438c:	01e00593          	li	a1,30
    80004390:	f8040493          	addi	s1,s0,-128
    80004394:	00048513          	mv	a0,s1
    80004398:	00001097          	auipc	ra,0x1
    8000439c:	61c080e7          	jalr	1564(ra) # 800059b4 <_Z9getStringPci>
    threadNum = stringToInt(input);
    800043a0:	00048513          	mv	a0,s1
    800043a4:	00001097          	auipc	ra,0x1
    800043a8:	6e8080e7          	jalr	1768(ra) # 80005a8c <_Z11stringToIntPKc>
    800043ac:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    800043b0:	00005517          	auipc	a0,0x5
    800043b4:	d4850513          	addi	a0,a0,-696 # 800090f8 <_ZZ12printIntegermE6digits+0x30>
    800043b8:	00001097          	auipc	ra,0x1
    800043bc:	574080e7          	jalr	1396(ra) # 8000592c <_Z11printStringPKc>
    getString(input, 30);
    800043c0:	01e00593          	li	a1,30
    800043c4:	00048513          	mv	a0,s1
    800043c8:	00001097          	auipc	ra,0x1
    800043cc:	5ec080e7          	jalr	1516(ra) # 800059b4 <_Z9getStringPci>
    n = stringToInt(input);
    800043d0:	00048513          	mv	a0,s1
    800043d4:	00001097          	auipc	ra,0x1
    800043d8:	6b8080e7          	jalr	1720(ra) # 80005a8c <_Z11stringToIntPKc>
    800043dc:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    800043e0:	00005517          	auipc	a0,0x5
    800043e4:	d3850513          	addi	a0,a0,-712 # 80009118 <_ZZ12printIntegermE6digits+0x50>
    800043e8:	00001097          	auipc	ra,0x1
    800043ec:	544080e7          	jalr	1348(ra) # 8000592c <_Z11printStringPKc>
    printInt(threadNum);
    800043f0:	00000613          	li	a2,0
    800043f4:	00a00593          	li	a1,10
    800043f8:	00098513          	mv	a0,s3
    800043fc:	00001097          	auipc	ra,0x1
    80004400:	6e0080e7          	jalr	1760(ra) # 80005adc <_Z8printIntiii>
    printString(" i velicina bafera ");
    80004404:	00005517          	auipc	a0,0x5
    80004408:	d2c50513          	addi	a0,a0,-724 # 80009130 <_ZZ12printIntegermE6digits+0x68>
    8000440c:	00001097          	auipc	ra,0x1
    80004410:	520080e7          	jalr	1312(ra) # 8000592c <_Z11printStringPKc>
    printInt(n);
    80004414:	00000613          	li	a2,0
    80004418:	00a00593          	li	a1,10
    8000441c:	00048513          	mv	a0,s1
    80004420:	00001097          	auipc	ra,0x1
    80004424:	6bc080e7          	jalr	1724(ra) # 80005adc <_Z8printIntiii>
    printString(".\n");
    80004428:	00005517          	auipc	a0,0x5
    8000442c:	d2050513          	addi	a0,a0,-736 # 80009148 <_ZZ12printIntegermE6digits+0x80>
    80004430:	00001097          	auipc	ra,0x1
    80004434:	4fc080e7          	jalr	1276(ra) # 8000592c <_Z11printStringPKc>
    if (threadNum > n) {
    80004438:	0334c463          	blt	s1,s3,80004460 <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    8000443c:	03305c63          	blez	s3,80004474 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80004440:	03800513          	li	a0,56
    80004444:	ffffe097          	auipc	ra,0xffffe
    80004448:	af0080e7          	jalr	-1296(ra) # 80001f34 <_Znwm>
    8000444c:	00050a93          	mv	s5,a0
    80004450:	00048593          	mv	a1,s1
    80004454:	00001097          	auipc	ra,0x1
    80004458:	7a8080e7          	jalr	1960(ra) # 80005bfc <_ZN9BufferCPPC1Ei>
    8000445c:	0300006f          	j	8000448c <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80004460:	00005517          	auipc	a0,0x5
    80004464:	cf050513          	addi	a0,a0,-784 # 80009150 <_ZZ12printIntegermE6digits+0x88>
    80004468:	00001097          	auipc	ra,0x1
    8000446c:	4c4080e7          	jalr	1220(ra) # 8000592c <_Z11printStringPKc>
        return;
    80004470:	0140006f          	j	80004484 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004474:	00005517          	auipc	a0,0x5
    80004478:	d1c50513          	addi	a0,a0,-740 # 80009190 <_ZZ12printIntegermE6digits+0xc8>
    8000447c:	00001097          	auipc	ra,0x1
    80004480:	4b0080e7          	jalr	1200(ra) # 8000592c <_Z11printStringPKc>
        return;
    80004484:	000c0113          	mv	sp,s8
    80004488:	2140006f          	j	8000469c <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    8000448c:	01000513          	li	a0,16
    80004490:	ffffe097          	auipc	ra,0xffffe
    80004494:	aa4080e7          	jalr	-1372(ra) # 80001f34 <_Znwm>
    80004498:	00050913          	mv	s2,a0
    8000449c:	00000593          	li	a1,0
    800044a0:	ffffe097          	auipc	ra,0xffffe
    800044a4:	d20080e7          	jalr	-736(ra) # 800021c0 <_ZN9SemaphoreC1Ej>
    800044a8:	00007797          	auipc	a5,0x7
    800044ac:	6927b423          	sd	s2,1672(a5) # 8000bb30 <_ZL10waitForAll>
    Thread *producers[threadNum];
    800044b0:	00399793          	slli	a5,s3,0x3
    800044b4:	00f78793          	addi	a5,a5,15
    800044b8:	ff07f793          	andi	a5,a5,-16
    800044bc:	40f10133          	sub	sp,sp,a5
    800044c0:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    800044c4:	0019871b          	addiw	a4,s3,1
    800044c8:	00171793          	slli	a5,a4,0x1
    800044cc:	00e787b3          	add	a5,a5,a4
    800044d0:	00379793          	slli	a5,a5,0x3
    800044d4:	00f78793          	addi	a5,a5,15
    800044d8:	ff07f793          	andi	a5,a5,-16
    800044dc:	40f10133          	sub	sp,sp,a5
    800044e0:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    800044e4:	00199493          	slli	s1,s3,0x1
    800044e8:	013484b3          	add	s1,s1,s3
    800044ec:	00349493          	slli	s1,s1,0x3
    800044f0:	009b04b3          	add	s1,s6,s1
    800044f4:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    800044f8:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    800044fc:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004500:	02800513          	li	a0,40
    80004504:	ffffe097          	auipc	ra,0xffffe
    80004508:	a30080e7          	jalr	-1488(ra) # 80001f34 <_Znwm>
    8000450c:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    80004510:	ffffe097          	auipc	ra,0xffffe
    80004514:	bac080e7          	jalr	-1108(ra) # 800020bc <_ZN6ThreadC1Ev>
    80004518:	00007797          	auipc	a5,0x7
    8000451c:	42878793          	addi	a5,a5,1064 # 8000b940 <_ZTV8Consumer+0x10>
    80004520:	00fbb023          	sd	a5,0(s7)
    80004524:	029bb023          	sd	s1,32(s7)
    consumer->start();
    80004528:	000b8513          	mv	a0,s7
    8000452c:	ffffe097          	auipc	ra,0xffffe
    80004530:	bc0080e7          	jalr	-1088(ra) # 800020ec <_ZN6Thread5startEv>
    threadData[0].id = 0;
    80004534:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    80004538:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    8000453c:	00007797          	auipc	a5,0x7
    80004540:	5f47b783          	ld	a5,1524(a5) # 8000bb30 <_ZL10waitForAll>
    80004544:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004548:	02800513          	li	a0,40
    8000454c:	ffffe097          	auipc	ra,0xffffe
    80004550:	9e8080e7          	jalr	-1560(ra) # 80001f34 <_Znwm>
    80004554:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80004558:	ffffe097          	auipc	ra,0xffffe
    8000455c:	b64080e7          	jalr	-1180(ra) # 800020bc <_ZN6ThreadC1Ev>
    80004560:	00007797          	auipc	a5,0x7
    80004564:	39078793          	addi	a5,a5,912 # 8000b8f0 <_ZTV16ProducerKeyborad+0x10>
    80004568:	00f4b023          	sd	a5,0(s1)
    8000456c:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004570:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    80004574:	00048513          	mv	a0,s1
    80004578:	ffffe097          	auipc	ra,0xffffe
    8000457c:	b74080e7          	jalr	-1164(ra) # 800020ec <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80004580:	00100913          	li	s2,1
    80004584:	0300006f          	j	800045b4 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80004588:	00007797          	auipc	a5,0x7
    8000458c:	39078793          	addi	a5,a5,912 # 8000b918 <_ZTV8Producer+0x10>
    80004590:	00fcb023          	sd	a5,0(s9)
    80004594:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    80004598:	00391793          	slli	a5,s2,0x3
    8000459c:	00fa07b3          	add	a5,s4,a5
    800045a0:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    800045a4:	000c8513          	mv	a0,s9
    800045a8:	ffffe097          	auipc	ra,0xffffe
    800045ac:	b44080e7          	jalr	-1212(ra) # 800020ec <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    800045b0:	0019091b          	addiw	s2,s2,1
    800045b4:	05395263          	bge	s2,s3,800045f8 <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    800045b8:	00191493          	slli	s1,s2,0x1
    800045bc:	012484b3          	add	s1,s1,s2
    800045c0:	00349493          	slli	s1,s1,0x3
    800045c4:	009b04b3          	add	s1,s6,s1
    800045c8:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    800045cc:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    800045d0:	00007797          	auipc	a5,0x7
    800045d4:	5607b783          	ld	a5,1376(a5) # 8000bb30 <_ZL10waitForAll>
    800045d8:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    800045dc:	02800513          	li	a0,40
    800045e0:	ffffe097          	auipc	ra,0xffffe
    800045e4:	954080e7          	jalr	-1708(ra) # 80001f34 <_Znwm>
    800045e8:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    800045ec:	ffffe097          	auipc	ra,0xffffe
    800045f0:	ad0080e7          	jalr	-1328(ra) # 800020bc <_ZN6ThreadC1Ev>
    800045f4:	f95ff06f          	j	80004588 <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    800045f8:	ffffe097          	auipc	ra,0xffffe
    800045fc:	a9c080e7          	jalr	-1380(ra) # 80002094 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80004600:	00000493          	li	s1,0
    80004604:	0099ce63          	blt	s3,s1,80004620 <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    80004608:	00007517          	auipc	a0,0x7
    8000460c:	52853503          	ld	a0,1320(a0) # 8000bb30 <_ZL10waitForAll>
    80004610:	ffffe097          	auipc	ra,0xffffe
    80004614:	be8080e7          	jalr	-1048(ra) # 800021f8 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80004618:	0014849b          	addiw	s1,s1,1
    8000461c:	fe9ff06f          	j	80004604 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    80004620:	00007517          	auipc	a0,0x7
    80004624:	51053503          	ld	a0,1296(a0) # 8000bb30 <_ZL10waitForAll>
    80004628:	00050863          	beqz	a0,80004638 <_Z20testConsumerProducerv+0x2f4>
    8000462c:	00053783          	ld	a5,0(a0)
    80004630:	0087b783          	ld	a5,8(a5)
    80004634:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    80004638:	00000493          	li	s1,0
    8000463c:	0080006f          	j	80004644 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    80004640:	0014849b          	addiw	s1,s1,1
    80004644:	0334d263          	bge	s1,s3,80004668 <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    80004648:	00349793          	slli	a5,s1,0x3
    8000464c:	00fa07b3          	add	a5,s4,a5
    80004650:	0007b503          	ld	a0,0(a5)
    80004654:	fe0506e3          	beqz	a0,80004640 <_Z20testConsumerProducerv+0x2fc>
    80004658:	00053783          	ld	a5,0(a0)
    8000465c:	0087b783          	ld	a5,8(a5)
    80004660:	000780e7          	jalr	a5
    80004664:	fddff06f          	j	80004640 <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    80004668:	000b8a63          	beqz	s7,8000467c <_Z20testConsumerProducerv+0x338>
    8000466c:	000bb783          	ld	a5,0(s7)
    80004670:	0087b783          	ld	a5,8(a5)
    80004674:	000b8513          	mv	a0,s7
    80004678:	000780e7          	jalr	a5
    delete buffer;
    8000467c:	000a8e63          	beqz	s5,80004698 <_Z20testConsumerProducerv+0x354>
    80004680:	000a8513          	mv	a0,s5
    80004684:	00002097          	auipc	ra,0x2
    80004688:	870080e7          	jalr	-1936(ra) # 80005ef4 <_ZN9BufferCPPD1Ev>
    8000468c:	000a8513          	mv	a0,s5
    80004690:	ffffe097          	auipc	ra,0xffffe
    80004694:	8cc080e7          	jalr	-1844(ra) # 80001f5c <_ZdlPv>
    80004698:	000c0113          	mv	sp,s8
}
    8000469c:	f8040113          	addi	sp,s0,-128
    800046a0:	07813083          	ld	ra,120(sp)
    800046a4:	07013403          	ld	s0,112(sp)
    800046a8:	06813483          	ld	s1,104(sp)
    800046ac:	06013903          	ld	s2,96(sp)
    800046b0:	05813983          	ld	s3,88(sp)
    800046b4:	05013a03          	ld	s4,80(sp)
    800046b8:	04813a83          	ld	s5,72(sp)
    800046bc:	04013b03          	ld	s6,64(sp)
    800046c0:	03813b83          	ld	s7,56(sp)
    800046c4:	03013c03          	ld	s8,48(sp)
    800046c8:	02813c83          	ld	s9,40(sp)
    800046cc:	08010113          	addi	sp,sp,128
    800046d0:	00008067          	ret
    800046d4:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    800046d8:	000a8513          	mv	a0,s5
    800046dc:	ffffe097          	auipc	ra,0xffffe
    800046e0:	880080e7          	jalr	-1920(ra) # 80001f5c <_ZdlPv>
    800046e4:	00048513          	mv	a0,s1
    800046e8:	00008097          	auipc	ra,0x8
    800046ec:	540080e7          	jalr	1344(ra) # 8000cc28 <_Unwind_Resume>
    800046f0:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    800046f4:	00090513          	mv	a0,s2
    800046f8:	ffffe097          	auipc	ra,0xffffe
    800046fc:	864080e7          	jalr	-1948(ra) # 80001f5c <_ZdlPv>
    80004700:	00048513          	mv	a0,s1
    80004704:	00008097          	auipc	ra,0x8
    80004708:	524080e7          	jalr	1316(ra) # 8000cc28 <_Unwind_Resume>
    8000470c:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004710:	000b8513          	mv	a0,s7
    80004714:	ffffe097          	auipc	ra,0xffffe
    80004718:	848080e7          	jalr	-1976(ra) # 80001f5c <_ZdlPv>
    8000471c:	00048513          	mv	a0,s1
    80004720:	00008097          	auipc	ra,0x8
    80004724:	508080e7          	jalr	1288(ra) # 8000cc28 <_Unwind_Resume>
    80004728:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    8000472c:	00048513          	mv	a0,s1
    80004730:	ffffe097          	auipc	ra,0xffffe
    80004734:	82c080e7          	jalr	-2004(ra) # 80001f5c <_ZdlPv>
    80004738:	00090513          	mv	a0,s2
    8000473c:	00008097          	auipc	ra,0x8
    80004740:	4ec080e7          	jalr	1260(ra) # 8000cc28 <_Unwind_Resume>
    80004744:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    80004748:	000c8513          	mv	a0,s9
    8000474c:	ffffe097          	auipc	ra,0xffffe
    80004750:	810080e7          	jalr	-2032(ra) # 80001f5c <_ZdlPv>
    80004754:	00048513          	mv	a0,s1
    80004758:	00008097          	auipc	ra,0x8
    8000475c:	4d0080e7          	jalr	1232(ra) # 8000cc28 <_Unwind_Resume>

0000000080004760 <_ZN8Consumer3runEv>:
    void run() override {
    80004760:	fd010113          	addi	sp,sp,-48
    80004764:	02113423          	sd	ra,40(sp)
    80004768:	02813023          	sd	s0,32(sp)
    8000476c:	00913c23          	sd	s1,24(sp)
    80004770:	01213823          	sd	s2,16(sp)
    80004774:	01313423          	sd	s3,8(sp)
    80004778:	03010413          	addi	s0,sp,48
    8000477c:	00050913          	mv	s2,a0
        int i = 0;
    80004780:	00000993          	li	s3,0
    80004784:	0100006f          	j	80004794 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    80004788:	00a00513          	li	a0,10
    8000478c:	ffffe097          	auipc	ra,0xffffe
    80004790:	b58080e7          	jalr	-1192(ra) # 800022e4 <_ZN7Console4putcEc>
        while (!threadEnd) {
    80004794:	00007797          	auipc	a5,0x7
    80004798:	3947a783          	lw	a5,916(a5) # 8000bb28 <_ZL9threadEnd>
    8000479c:	04079a63          	bnez	a5,800047f0 <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    800047a0:	02093783          	ld	a5,32(s2)
    800047a4:	0087b503          	ld	a0,8(a5)
    800047a8:	00001097          	auipc	ra,0x1
    800047ac:	638080e7          	jalr	1592(ra) # 80005de0 <_ZN9BufferCPP3getEv>
            i++;
    800047b0:	0019849b          	addiw	s1,s3,1
    800047b4:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    800047b8:	0ff57513          	andi	a0,a0,255
    800047bc:	ffffe097          	auipc	ra,0xffffe
    800047c0:	b28080e7          	jalr	-1240(ra) # 800022e4 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    800047c4:	05000793          	li	a5,80
    800047c8:	02f4e4bb          	remw	s1,s1,a5
    800047cc:	fc0494e3          	bnez	s1,80004794 <_ZN8Consumer3runEv+0x34>
    800047d0:	fb9ff06f          	j	80004788 <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    800047d4:	02093783          	ld	a5,32(s2)
    800047d8:	0087b503          	ld	a0,8(a5)
    800047dc:	00001097          	auipc	ra,0x1
    800047e0:	604080e7          	jalr	1540(ra) # 80005de0 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    800047e4:	0ff57513          	andi	a0,a0,255
    800047e8:	ffffe097          	auipc	ra,0xffffe
    800047ec:	afc080e7          	jalr	-1284(ra) # 800022e4 <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    800047f0:	02093783          	ld	a5,32(s2)
    800047f4:	0087b503          	ld	a0,8(a5)
    800047f8:	00001097          	auipc	ra,0x1
    800047fc:	674080e7          	jalr	1652(ra) # 80005e6c <_ZN9BufferCPP6getCntEv>
    80004800:	fca04ae3          	bgtz	a0,800047d4 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    80004804:	02093783          	ld	a5,32(s2)
    80004808:	0107b503          	ld	a0,16(a5)
    8000480c:	ffffe097          	auipc	ra,0xffffe
    80004810:	a18080e7          	jalr	-1512(ra) # 80002224 <_ZN9Semaphore6signalEv>
    }
    80004814:	02813083          	ld	ra,40(sp)
    80004818:	02013403          	ld	s0,32(sp)
    8000481c:	01813483          	ld	s1,24(sp)
    80004820:	01013903          	ld	s2,16(sp)
    80004824:	00813983          	ld	s3,8(sp)
    80004828:	03010113          	addi	sp,sp,48
    8000482c:	00008067          	ret

0000000080004830 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    80004830:	ff010113          	addi	sp,sp,-16
    80004834:	00113423          	sd	ra,8(sp)
    80004838:	00813023          	sd	s0,0(sp)
    8000483c:	01010413          	addi	s0,sp,16
    80004840:	00007797          	auipc	a5,0x7
    80004844:	10078793          	addi	a5,a5,256 # 8000b940 <_ZTV8Consumer+0x10>
    80004848:	00f53023          	sd	a5,0(a0)
    8000484c:	ffffd097          	auipc	ra,0xffffd
    80004850:	738080e7          	jalr	1848(ra) # 80001f84 <_ZN6ThreadD1Ev>
    80004854:	00813083          	ld	ra,8(sp)
    80004858:	00013403          	ld	s0,0(sp)
    8000485c:	01010113          	addi	sp,sp,16
    80004860:	00008067          	ret

0000000080004864 <_ZN8ConsumerD0Ev>:
    80004864:	fe010113          	addi	sp,sp,-32
    80004868:	00113c23          	sd	ra,24(sp)
    8000486c:	00813823          	sd	s0,16(sp)
    80004870:	00913423          	sd	s1,8(sp)
    80004874:	02010413          	addi	s0,sp,32
    80004878:	00050493          	mv	s1,a0
    8000487c:	00007797          	auipc	a5,0x7
    80004880:	0c478793          	addi	a5,a5,196 # 8000b940 <_ZTV8Consumer+0x10>
    80004884:	00f53023          	sd	a5,0(a0)
    80004888:	ffffd097          	auipc	ra,0xffffd
    8000488c:	6fc080e7          	jalr	1788(ra) # 80001f84 <_ZN6ThreadD1Ev>
    80004890:	00048513          	mv	a0,s1
    80004894:	ffffd097          	auipc	ra,0xffffd
    80004898:	6c8080e7          	jalr	1736(ra) # 80001f5c <_ZdlPv>
    8000489c:	01813083          	ld	ra,24(sp)
    800048a0:	01013403          	ld	s0,16(sp)
    800048a4:	00813483          	ld	s1,8(sp)
    800048a8:	02010113          	addi	sp,sp,32
    800048ac:	00008067          	ret

00000000800048b0 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    800048b0:	ff010113          	addi	sp,sp,-16
    800048b4:	00113423          	sd	ra,8(sp)
    800048b8:	00813023          	sd	s0,0(sp)
    800048bc:	01010413          	addi	s0,sp,16
    800048c0:	00007797          	auipc	a5,0x7
    800048c4:	03078793          	addi	a5,a5,48 # 8000b8f0 <_ZTV16ProducerKeyborad+0x10>
    800048c8:	00f53023          	sd	a5,0(a0)
    800048cc:	ffffd097          	auipc	ra,0xffffd
    800048d0:	6b8080e7          	jalr	1720(ra) # 80001f84 <_ZN6ThreadD1Ev>
    800048d4:	00813083          	ld	ra,8(sp)
    800048d8:	00013403          	ld	s0,0(sp)
    800048dc:	01010113          	addi	sp,sp,16
    800048e0:	00008067          	ret

00000000800048e4 <_ZN16ProducerKeyboradD0Ev>:
    800048e4:	fe010113          	addi	sp,sp,-32
    800048e8:	00113c23          	sd	ra,24(sp)
    800048ec:	00813823          	sd	s0,16(sp)
    800048f0:	00913423          	sd	s1,8(sp)
    800048f4:	02010413          	addi	s0,sp,32
    800048f8:	00050493          	mv	s1,a0
    800048fc:	00007797          	auipc	a5,0x7
    80004900:	ff478793          	addi	a5,a5,-12 # 8000b8f0 <_ZTV16ProducerKeyborad+0x10>
    80004904:	00f53023          	sd	a5,0(a0)
    80004908:	ffffd097          	auipc	ra,0xffffd
    8000490c:	67c080e7          	jalr	1660(ra) # 80001f84 <_ZN6ThreadD1Ev>
    80004910:	00048513          	mv	a0,s1
    80004914:	ffffd097          	auipc	ra,0xffffd
    80004918:	648080e7          	jalr	1608(ra) # 80001f5c <_ZdlPv>
    8000491c:	01813083          	ld	ra,24(sp)
    80004920:	01013403          	ld	s0,16(sp)
    80004924:	00813483          	ld	s1,8(sp)
    80004928:	02010113          	addi	sp,sp,32
    8000492c:	00008067          	ret

0000000080004930 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    80004930:	ff010113          	addi	sp,sp,-16
    80004934:	00113423          	sd	ra,8(sp)
    80004938:	00813023          	sd	s0,0(sp)
    8000493c:	01010413          	addi	s0,sp,16
    80004940:	00007797          	auipc	a5,0x7
    80004944:	fd878793          	addi	a5,a5,-40 # 8000b918 <_ZTV8Producer+0x10>
    80004948:	00f53023          	sd	a5,0(a0)
    8000494c:	ffffd097          	auipc	ra,0xffffd
    80004950:	638080e7          	jalr	1592(ra) # 80001f84 <_ZN6ThreadD1Ev>
    80004954:	00813083          	ld	ra,8(sp)
    80004958:	00013403          	ld	s0,0(sp)
    8000495c:	01010113          	addi	sp,sp,16
    80004960:	00008067          	ret

0000000080004964 <_ZN8ProducerD0Ev>:
    80004964:	fe010113          	addi	sp,sp,-32
    80004968:	00113c23          	sd	ra,24(sp)
    8000496c:	00813823          	sd	s0,16(sp)
    80004970:	00913423          	sd	s1,8(sp)
    80004974:	02010413          	addi	s0,sp,32
    80004978:	00050493          	mv	s1,a0
    8000497c:	00007797          	auipc	a5,0x7
    80004980:	f9c78793          	addi	a5,a5,-100 # 8000b918 <_ZTV8Producer+0x10>
    80004984:	00f53023          	sd	a5,0(a0)
    80004988:	ffffd097          	auipc	ra,0xffffd
    8000498c:	5fc080e7          	jalr	1532(ra) # 80001f84 <_ZN6ThreadD1Ev>
    80004990:	00048513          	mv	a0,s1
    80004994:	ffffd097          	auipc	ra,0xffffd
    80004998:	5c8080e7          	jalr	1480(ra) # 80001f5c <_ZdlPv>
    8000499c:	01813083          	ld	ra,24(sp)
    800049a0:	01013403          	ld	s0,16(sp)
    800049a4:	00813483          	ld	s1,8(sp)
    800049a8:	02010113          	addi	sp,sp,32
    800049ac:	00008067          	ret

00000000800049b0 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    800049b0:	fe010113          	addi	sp,sp,-32
    800049b4:	00113c23          	sd	ra,24(sp)
    800049b8:	00813823          	sd	s0,16(sp)
    800049bc:	00913423          	sd	s1,8(sp)
    800049c0:	02010413          	addi	s0,sp,32
    800049c4:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    800049c8:	ffffd097          	auipc	ra,0xffffd
    800049cc:	9d4080e7          	jalr	-1580(ra) # 8000139c <_Z4getcv>
    800049d0:	0005059b          	sext.w	a1,a0
    800049d4:	01b00793          	li	a5,27
    800049d8:	00f58c63          	beq	a1,a5,800049f0 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    800049dc:	0204b783          	ld	a5,32(s1)
    800049e0:	0087b503          	ld	a0,8(a5)
    800049e4:	00001097          	auipc	ra,0x1
    800049e8:	36c080e7          	jalr	876(ra) # 80005d50 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    800049ec:	fddff06f          	j	800049c8 <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    800049f0:	00100793          	li	a5,1
    800049f4:	00007717          	auipc	a4,0x7
    800049f8:	12f72a23          	sw	a5,308(a4) # 8000bb28 <_ZL9threadEnd>
        td->buffer->put('!');
    800049fc:	0204b783          	ld	a5,32(s1)
    80004a00:	02100593          	li	a1,33
    80004a04:	0087b503          	ld	a0,8(a5)
    80004a08:	00001097          	auipc	ra,0x1
    80004a0c:	348080e7          	jalr	840(ra) # 80005d50 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    80004a10:	0204b783          	ld	a5,32(s1)
    80004a14:	0107b503          	ld	a0,16(a5)
    80004a18:	ffffe097          	auipc	ra,0xffffe
    80004a1c:	80c080e7          	jalr	-2036(ra) # 80002224 <_ZN9Semaphore6signalEv>
    }
    80004a20:	01813083          	ld	ra,24(sp)
    80004a24:	01013403          	ld	s0,16(sp)
    80004a28:	00813483          	ld	s1,8(sp)
    80004a2c:	02010113          	addi	sp,sp,32
    80004a30:	00008067          	ret

0000000080004a34 <_ZN8Producer3runEv>:
    void run() override {
    80004a34:	fe010113          	addi	sp,sp,-32
    80004a38:	00113c23          	sd	ra,24(sp)
    80004a3c:	00813823          	sd	s0,16(sp)
    80004a40:	00913423          	sd	s1,8(sp)
    80004a44:	01213023          	sd	s2,0(sp)
    80004a48:	02010413          	addi	s0,sp,32
    80004a4c:	00050493          	mv	s1,a0
        int i = 0;
    80004a50:	00000913          	li	s2,0
        while (!threadEnd) {
    80004a54:	00007797          	auipc	a5,0x7
    80004a58:	0d47a783          	lw	a5,212(a5) # 8000bb28 <_ZL9threadEnd>
    80004a5c:	04079263          	bnez	a5,80004aa0 <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    80004a60:	0204b783          	ld	a5,32(s1)
    80004a64:	0007a583          	lw	a1,0(a5)
    80004a68:	0305859b          	addiw	a1,a1,48
    80004a6c:	0087b503          	ld	a0,8(a5)
    80004a70:	00001097          	auipc	ra,0x1
    80004a74:	2e0080e7          	jalr	736(ra) # 80005d50 <_ZN9BufferCPP3putEi>
            i++;
    80004a78:	0019071b          	addiw	a4,s2,1
    80004a7c:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    80004a80:	0204b783          	ld	a5,32(s1)
    80004a84:	0007a783          	lw	a5,0(a5)
    80004a88:	00e787bb          	addw	a5,a5,a4
    80004a8c:	00500513          	li	a0,5
    80004a90:	02a7e53b          	remw	a0,a5,a0
    80004a94:	ffffd097          	auipc	ra,0xffffd
    80004a98:	6ac080e7          	jalr	1708(ra) # 80002140 <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    80004a9c:	fb9ff06f          	j	80004a54 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    80004aa0:	0204b783          	ld	a5,32(s1)
    80004aa4:	0107b503          	ld	a0,16(a5)
    80004aa8:	ffffd097          	auipc	ra,0xffffd
    80004aac:	77c080e7          	jalr	1916(ra) # 80002224 <_ZN9Semaphore6signalEv>
    }
    80004ab0:	01813083          	ld	ra,24(sp)
    80004ab4:	01013403          	ld	s0,16(sp)
    80004ab8:	00813483          	ld	s1,8(sp)
    80004abc:	00013903          	ld	s2,0(sp)
    80004ac0:	02010113          	addi	sp,sp,32
    80004ac4:	00008067          	ret

0000000080004ac8 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80004ac8:	fe010113          	addi	sp,sp,-32
    80004acc:	00113c23          	sd	ra,24(sp)
    80004ad0:	00813823          	sd	s0,16(sp)
    80004ad4:	00913423          	sd	s1,8(sp)
    80004ad8:	01213023          	sd	s2,0(sp)
    80004adc:	02010413          	addi	s0,sp,32
    80004ae0:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80004ae4:	00100793          	li	a5,1
    80004ae8:	02a7f863          	bgeu	a5,a0,80004b18 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80004aec:	00a00793          	li	a5,10
    80004af0:	02f577b3          	remu	a5,a0,a5
    80004af4:	02078e63          	beqz	a5,80004b30 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004af8:	fff48513          	addi	a0,s1,-1
    80004afc:	00000097          	auipc	ra,0x0
    80004b00:	fcc080e7          	jalr	-52(ra) # 80004ac8 <_ZL9fibonaccim>
    80004b04:	00050913          	mv	s2,a0
    80004b08:	ffe48513          	addi	a0,s1,-2
    80004b0c:	00000097          	auipc	ra,0x0
    80004b10:	fbc080e7          	jalr	-68(ra) # 80004ac8 <_ZL9fibonaccim>
    80004b14:	00a90533          	add	a0,s2,a0
}
    80004b18:	01813083          	ld	ra,24(sp)
    80004b1c:	01013403          	ld	s0,16(sp)
    80004b20:	00813483          	ld	s1,8(sp)
    80004b24:	00013903          	ld	s2,0(sp)
    80004b28:	02010113          	addi	sp,sp,32
    80004b2c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004b30:	ffffc097          	auipc	ra,0xffffc
    80004b34:	754080e7          	jalr	1876(ra) # 80001284 <_Z15thread_dispatchv>
    80004b38:	fc1ff06f          	j	80004af8 <_ZL9fibonaccim+0x30>

0000000080004b3c <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80004b3c:	fe010113          	addi	sp,sp,-32
    80004b40:	00113c23          	sd	ra,24(sp)
    80004b44:	00813823          	sd	s0,16(sp)
    80004b48:	00913423          	sd	s1,8(sp)
    80004b4c:	01213023          	sd	s2,0(sp)
    80004b50:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004b54:	00a00493          	li	s1,10
    80004b58:	0400006f          	j	80004b98 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004b5c:	00004517          	auipc	a0,0x4
    80004b60:	68c50513          	addi	a0,a0,1676 # 800091e8 <_ZZ12printIntegermE6digits+0x120>
    80004b64:	00001097          	auipc	ra,0x1
    80004b68:	dc8080e7          	jalr	-568(ra) # 8000592c <_Z11printStringPKc>
    80004b6c:	00000613          	li	a2,0
    80004b70:	00a00593          	li	a1,10
    80004b74:	00048513          	mv	a0,s1
    80004b78:	00001097          	auipc	ra,0x1
    80004b7c:	f64080e7          	jalr	-156(ra) # 80005adc <_Z8printIntiii>
    80004b80:	00005517          	auipc	a0,0x5
    80004b84:	85850513          	addi	a0,a0,-1960 # 800093d8 <_ZZ12printIntegermE6digits+0x310>
    80004b88:	00001097          	auipc	ra,0x1
    80004b8c:	da4080e7          	jalr	-604(ra) # 8000592c <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004b90:	0014849b          	addiw	s1,s1,1
    80004b94:	0ff4f493          	andi	s1,s1,255
    80004b98:	00c00793          	li	a5,12
    80004b9c:	fc97f0e3          	bgeu	a5,s1,80004b5c <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80004ba0:	00004517          	auipc	a0,0x4
    80004ba4:	65050513          	addi	a0,a0,1616 # 800091f0 <_ZZ12printIntegermE6digits+0x128>
    80004ba8:	00001097          	auipc	ra,0x1
    80004bac:	d84080e7          	jalr	-636(ra) # 8000592c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80004bb0:	00500313          	li	t1,5
    thread_dispatch();
    80004bb4:	ffffc097          	auipc	ra,0xffffc
    80004bb8:	6d0080e7          	jalr	1744(ra) # 80001284 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80004bbc:	01000513          	li	a0,16
    80004bc0:	00000097          	auipc	ra,0x0
    80004bc4:	f08080e7          	jalr	-248(ra) # 80004ac8 <_ZL9fibonaccim>
    80004bc8:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004bcc:	00004517          	auipc	a0,0x4
    80004bd0:	63450513          	addi	a0,a0,1588 # 80009200 <_ZZ12printIntegermE6digits+0x138>
    80004bd4:	00001097          	auipc	ra,0x1
    80004bd8:	d58080e7          	jalr	-680(ra) # 8000592c <_Z11printStringPKc>
    80004bdc:	00000613          	li	a2,0
    80004be0:	00a00593          	li	a1,10
    80004be4:	0009051b          	sext.w	a0,s2
    80004be8:	00001097          	auipc	ra,0x1
    80004bec:	ef4080e7          	jalr	-268(ra) # 80005adc <_Z8printIntiii>
    80004bf0:	00004517          	auipc	a0,0x4
    80004bf4:	7e850513          	addi	a0,a0,2024 # 800093d8 <_ZZ12printIntegermE6digits+0x310>
    80004bf8:	00001097          	auipc	ra,0x1
    80004bfc:	d34080e7          	jalr	-716(ra) # 8000592c <_Z11printStringPKc>
    80004c00:	0400006f          	j	80004c40 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004c04:	00004517          	auipc	a0,0x4
    80004c08:	5e450513          	addi	a0,a0,1508 # 800091e8 <_ZZ12printIntegermE6digits+0x120>
    80004c0c:	00001097          	auipc	ra,0x1
    80004c10:	d20080e7          	jalr	-736(ra) # 8000592c <_Z11printStringPKc>
    80004c14:	00000613          	li	a2,0
    80004c18:	00a00593          	li	a1,10
    80004c1c:	00048513          	mv	a0,s1
    80004c20:	00001097          	auipc	ra,0x1
    80004c24:	ebc080e7          	jalr	-324(ra) # 80005adc <_Z8printIntiii>
    80004c28:	00004517          	auipc	a0,0x4
    80004c2c:	7b050513          	addi	a0,a0,1968 # 800093d8 <_ZZ12printIntegermE6digits+0x310>
    80004c30:	00001097          	auipc	ra,0x1
    80004c34:	cfc080e7          	jalr	-772(ra) # 8000592c <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004c38:	0014849b          	addiw	s1,s1,1
    80004c3c:	0ff4f493          	andi	s1,s1,255
    80004c40:	00f00793          	li	a5,15
    80004c44:	fc97f0e3          	bgeu	a5,s1,80004c04 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80004c48:	00004517          	auipc	a0,0x4
    80004c4c:	5c850513          	addi	a0,a0,1480 # 80009210 <_ZZ12printIntegermE6digits+0x148>
    80004c50:	00001097          	auipc	ra,0x1
    80004c54:	cdc080e7          	jalr	-804(ra) # 8000592c <_Z11printStringPKc>
    finishedD = true;
    80004c58:	00100793          	li	a5,1
    80004c5c:	00007717          	auipc	a4,0x7
    80004c60:	ecf70e23          	sb	a5,-292(a4) # 8000bb38 <_ZL9finishedD>
    thread_dispatch();
    80004c64:	ffffc097          	auipc	ra,0xffffc
    80004c68:	620080e7          	jalr	1568(ra) # 80001284 <_Z15thread_dispatchv>
}
    80004c6c:	01813083          	ld	ra,24(sp)
    80004c70:	01013403          	ld	s0,16(sp)
    80004c74:	00813483          	ld	s1,8(sp)
    80004c78:	00013903          	ld	s2,0(sp)
    80004c7c:	02010113          	addi	sp,sp,32
    80004c80:	00008067          	ret

0000000080004c84 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80004c84:	fe010113          	addi	sp,sp,-32
    80004c88:	00113c23          	sd	ra,24(sp)
    80004c8c:	00813823          	sd	s0,16(sp)
    80004c90:	00913423          	sd	s1,8(sp)
    80004c94:	01213023          	sd	s2,0(sp)
    80004c98:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004c9c:	00000493          	li	s1,0
    80004ca0:	0400006f          	j	80004ce0 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80004ca4:	00004517          	auipc	a0,0x4
    80004ca8:	3b450513          	addi	a0,a0,948 # 80009058 <CONSOLE_STATUS+0x48>
    80004cac:	00001097          	auipc	ra,0x1
    80004cb0:	c80080e7          	jalr	-896(ra) # 8000592c <_Z11printStringPKc>
    80004cb4:	00000613          	li	a2,0
    80004cb8:	00a00593          	li	a1,10
    80004cbc:	00048513          	mv	a0,s1
    80004cc0:	00001097          	auipc	ra,0x1
    80004cc4:	e1c080e7          	jalr	-484(ra) # 80005adc <_Z8printIntiii>
    80004cc8:	00004517          	auipc	a0,0x4
    80004ccc:	71050513          	addi	a0,a0,1808 # 800093d8 <_ZZ12printIntegermE6digits+0x310>
    80004cd0:	00001097          	auipc	ra,0x1
    80004cd4:	c5c080e7          	jalr	-932(ra) # 8000592c <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004cd8:	0014849b          	addiw	s1,s1,1
    80004cdc:	0ff4f493          	andi	s1,s1,255
    80004ce0:	00200793          	li	a5,2
    80004ce4:	fc97f0e3          	bgeu	a5,s1,80004ca4 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80004ce8:	00004517          	auipc	a0,0x4
    80004cec:	4d850513          	addi	a0,a0,1240 # 800091c0 <_ZZ12printIntegermE6digits+0xf8>
    80004cf0:	00001097          	auipc	ra,0x1
    80004cf4:	c3c080e7          	jalr	-964(ra) # 8000592c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004cf8:	00700313          	li	t1,7
    thread_dispatch();
    80004cfc:	ffffc097          	auipc	ra,0xffffc
    80004d00:	588080e7          	jalr	1416(ra) # 80001284 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004d04:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80004d08:	00004517          	auipc	a0,0x4
    80004d0c:	4c850513          	addi	a0,a0,1224 # 800091d0 <_ZZ12printIntegermE6digits+0x108>
    80004d10:	00001097          	auipc	ra,0x1
    80004d14:	c1c080e7          	jalr	-996(ra) # 8000592c <_Z11printStringPKc>
    80004d18:	00000613          	li	a2,0
    80004d1c:	00a00593          	li	a1,10
    80004d20:	0009051b          	sext.w	a0,s2
    80004d24:	00001097          	auipc	ra,0x1
    80004d28:	db8080e7          	jalr	-584(ra) # 80005adc <_Z8printIntiii>
    80004d2c:	00004517          	auipc	a0,0x4
    80004d30:	6ac50513          	addi	a0,a0,1708 # 800093d8 <_ZZ12printIntegermE6digits+0x310>
    80004d34:	00001097          	auipc	ra,0x1
    80004d38:	bf8080e7          	jalr	-1032(ra) # 8000592c <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80004d3c:	00c00513          	li	a0,12
    80004d40:	00000097          	auipc	ra,0x0
    80004d44:	d88080e7          	jalr	-632(ra) # 80004ac8 <_ZL9fibonaccim>
    80004d48:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004d4c:	00004517          	auipc	a0,0x4
    80004d50:	48c50513          	addi	a0,a0,1164 # 800091d8 <_ZZ12printIntegermE6digits+0x110>
    80004d54:	00001097          	auipc	ra,0x1
    80004d58:	bd8080e7          	jalr	-1064(ra) # 8000592c <_Z11printStringPKc>
    80004d5c:	00000613          	li	a2,0
    80004d60:	00a00593          	li	a1,10
    80004d64:	0009051b          	sext.w	a0,s2
    80004d68:	00001097          	auipc	ra,0x1
    80004d6c:	d74080e7          	jalr	-652(ra) # 80005adc <_Z8printIntiii>
    80004d70:	00004517          	auipc	a0,0x4
    80004d74:	66850513          	addi	a0,a0,1640 # 800093d8 <_ZZ12printIntegermE6digits+0x310>
    80004d78:	00001097          	auipc	ra,0x1
    80004d7c:	bb4080e7          	jalr	-1100(ra) # 8000592c <_Z11printStringPKc>
    80004d80:	0400006f          	j	80004dc0 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80004d84:	00004517          	auipc	a0,0x4
    80004d88:	2d450513          	addi	a0,a0,724 # 80009058 <CONSOLE_STATUS+0x48>
    80004d8c:	00001097          	auipc	ra,0x1
    80004d90:	ba0080e7          	jalr	-1120(ra) # 8000592c <_Z11printStringPKc>
    80004d94:	00000613          	li	a2,0
    80004d98:	00a00593          	li	a1,10
    80004d9c:	00048513          	mv	a0,s1
    80004da0:	00001097          	auipc	ra,0x1
    80004da4:	d3c080e7          	jalr	-708(ra) # 80005adc <_Z8printIntiii>
    80004da8:	00004517          	auipc	a0,0x4
    80004dac:	63050513          	addi	a0,a0,1584 # 800093d8 <_ZZ12printIntegermE6digits+0x310>
    80004db0:	00001097          	auipc	ra,0x1
    80004db4:	b7c080e7          	jalr	-1156(ra) # 8000592c <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004db8:	0014849b          	addiw	s1,s1,1
    80004dbc:	0ff4f493          	andi	s1,s1,255
    80004dc0:	00500793          	li	a5,5
    80004dc4:	fc97f0e3          	bgeu	a5,s1,80004d84 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80004dc8:	00004517          	auipc	a0,0x4
    80004dcc:	26850513          	addi	a0,a0,616 # 80009030 <CONSOLE_STATUS+0x20>
    80004dd0:	00001097          	auipc	ra,0x1
    80004dd4:	b5c080e7          	jalr	-1188(ra) # 8000592c <_Z11printStringPKc>
    finishedC = true;
    80004dd8:	00100793          	li	a5,1
    80004ddc:	00007717          	auipc	a4,0x7
    80004de0:	d4f70ea3          	sb	a5,-675(a4) # 8000bb39 <_ZL9finishedC>
    thread_dispatch();
    80004de4:	ffffc097          	auipc	ra,0xffffc
    80004de8:	4a0080e7          	jalr	1184(ra) # 80001284 <_Z15thread_dispatchv>
}
    80004dec:	01813083          	ld	ra,24(sp)
    80004df0:	01013403          	ld	s0,16(sp)
    80004df4:	00813483          	ld	s1,8(sp)
    80004df8:	00013903          	ld	s2,0(sp)
    80004dfc:	02010113          	addi	sp,sp,32
    80004e00:	00008067          	ret

0000000080004e04 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80004e04:	fe010113          	addi	sp,sp,-32
    80004e08:	00113c23          	sd	ra,24(sp)
    80004e0c:	00813823          	sd	s0,16(sp)
    80004e10:	00913423          	sd	s1,8(sp)
    80004e14:	01213023          	sd	s2,0(sp)
    80004e18:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004e1c:	00000913          	li	s2,0
    80004e20:	0380006f          	j	80004e58 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80004e24:	ffffc097          	auipc	ra,0xffffc
    80004e28:	460080e7          	jalr	1120(ra) # 80001284 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004e2c:	00148493          	addi	s1,s1,1
    80004e30:	000027b7          	lui	a5,0x2
    80004e34:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004e38:	0097ee63          	bltu	a5,s1,80004e54 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004e3c:	00000713          	li	a4,0
    80004e40:	000077b7          	lui	a5,0x7
    80004e44:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004e48:	fce7eee3          	bltu	a5,a4,80004e24 <_ZL11workerBodyBPv+0x20>
    80004e4c:	00170713          	addi	a4,a4,1
    80004e50:	ff1ff06f          	j	80004e40 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80004e54:	00190913          	addi	s2,s2,1
    80004e58:	00f00793          	li	a5,15
    80004e5c:	0527e063          	bltu	a5,s2,80004e9c <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80004e60:	00004517          	auipc	a0,0x4
    80004e64:	1e050513          	addi	a0,a0,480 # 80009040 <CONSOLE_STATUS+0x30>
    80004e68:	00001097          	auipc	ra,0x1
    80004e6c:	ac4080e7          	jalr	-1340(ra) # 8000592c <_Z11printStringPKc>
    80004e70:	00000613          	li	a2,0
    80004e74:	00a00593          	li	a1,10
    80004e78:	0009051b          	sext.w	a0,s2
    80004e7c:	00001097          	auipc	ra,0x1
    80004e80:	c60080e7          	jalr	-928(ra) # 80005adc <_Z8printIntiii>
    80004e84:	00004517          	auipc	a0,0x4
    80004e88:	55450513          	addi	a0,a0,1364 # 800093d8 <_ZZ12printIntegermE6digits+0x310>
    80004e8c:	00001097          	auipc	ra,0x1
    80004e90:	aa0080e7          	jalr	-1376(ra) # 8000592c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004e94:	00000493          	li	s1,0
    80004e98:	f99ff06f          	j	80004e30 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80004e9c:	00004517          	auipc	a0,0x4
    80004ea0:	1ac50513          	addi	a0,a0,428 # 80009048 <CONSOLE_STATUS+0x38>
    80004ea4:	00001097          	auipc	ra,0x1
    80004ea8:	a88080e7          	jalr	-1400(ra) # 8000592c <_Z11printStringPKc>
    finishedB = true;
    80004eac:	00100793          	li	a5,1
    80004eb0:	00007717          	auipc	a4,0x7
    80004eb4:	c8f70523          	sb	a5,-886(a4) # 8000bb3a <_ZL9finishedB>
    thread_dispatch();
    80004eb8:	ffffc097          	auipc	ra,0xffffc
    80004ebc:	3cc080e7          	jalr	972(ra) # 80001284 <_Z15thread_dispatchv>
}
    80004ec0:	01813083          	ld	ra,24(sp)
    80004ec4:	01013403          	ld	s0,16(sp)
    80004ec8:	00813483          	ld	s1,8(sp)
    80004ecc:	00013903          	ld	s2,0(sp)
    80004ed0:	02010113          	addi	sp,sp,32
    80004ed4:	00008067          	ret

0000000080004ed8 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80004ed8:	fe010113          	addi	sp,sp,-32
    80004edc:	00113c23          	sd	ra,24(sp)
    80004ee0:	00813823          	sd	s0,16(sp)
    80004ee4:	00913423          	sd	s1,8(sp)
    80004ee8:	01213023          	sd	s2,0(sp)
    80004eec:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80004ef0:	00000913          	li	s2,0
    80004ef4:	0380006f          	j	80004f2c <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80004ef8:	ffffc097          	auipc	ra,0xffffc
    80004efc:	38c080e7          	jalr	908(ra) # 80001284 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004f00:	00148493          	addi	s1,s1,1
    80004f04:	000027b7          	lui	a5,0x2
    80004f08:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004f0c:	0097ee63          	bltu	a5,s1,80004f28 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004f10:	00000713          	li	a4,0
    80004f14:	000077b7          	lui	a5,0x7
    80004f18:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004f1c:	fce7eee3          	bltu	a5,a4,80004ef8 <_ZL11workerBodyAPv+0x20>
    80004f20:	00170713          	addi	a4,a4,1
    80004f24:	ff1ff06f          	j	80004f14 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80004f28:	00190913          	addi	s2,s2,1
    80004f2c:	00900793          	li	a5,9
    80004f30:	0527e063          	bltu	a5,s2,80004f70 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80004f34:	00004517          	auipc	a0,0x4
    80004f38:	0f450513          	addi	a0,a0,244 # 80009028 <CONSOLE_STATUS+0x18>
    80004f3c:	00001097          	auipc	ra,0x1
    80004f40:	9f0080e7          	jalr	-1552(ra) # 8000592c <_Z11printStringPKc>
    80004f44:	00000613          	li	a2,0
    80004f48:	00a00593          	li	a1,10
    80004f4c:	0009051b          	sext.w	a0,s2
    80004f50:	00001097          	auipc	ra,0x1
    80004f54:	b8c080e7          	jalr	-1140(ra) # 80005adc <_Z8printIntiii>
    80004f58:	00004517          	auipc	a0,0x4
    80004f5c:	48050513          	addi	a0,a0,1152 # 800093d8 <_ZZ12printIntegermE6digits+0x310>
    80004f60:	00001097          	auipc	ra,0x1
    80004f64:	9cc080e7          	jalr	-1588(ra) # 8000592c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004f68:	00000493          	li	s1,0
    80004f6c:	f99ff06f          	j	80004f04 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80004f70:	00004517          	auipc	a0,0x4
    80004f74:	0c050513          	addi	a0,a0,192 # 80009030 <CONSOLE_STATUS+0x20>
    80004f78:	00001097          	auipc	ra,0x1
    80004f7c:	9b4080e7          	jalr	-1612(ra) # 8000592c <_Z11printStringPKc>
    finishedA = true;
    80004f80:	00100793          	li	a5,1
    80004f84:	00007717          	auipc	a4,0x7
    80004f88:	baf70ba3          	sb	a5,-1097(a4) # 8000bb3b <_ZL9finishedA>
}
    80004f8c:	01813083          	ld	ra,24(sp)
    80004f90:	01013403          	ld	s0,16(sp)
    80004f94:	00813483          	ld	s1,8(sp)
    80004f98:	00013903          	ld	s2,0(sp)
    80004f9c:	02010113          	addi	sp,sp,32
    80004fa0:	00008067          	ret

0000000080004fa4 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80004fa4:	fd010113          	addi	sp,sp,-48
    80004fa8:	02113423          	sd	ra,40(sp)
    80004fac:	02813023          	sd	s0,32(sp)
    80004fb0:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80004fb4:	00000613          	li	a2,0
    80004fb8:	00000597          	auipc	a1,0x0
    80004fbc:	f2058593          	addi	a1,a1,-224 # 80004ed8 <_ZL11workerBodyAPv>
    80004fc0:	fd040513          	addi	a0,s0,-48
    80004fc4:	ffffc097          	auipc	ra,0xffffc
    80004fc8:	25c080e7          	jalr	604(ra) # 80001220 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80004fcc:	00004517          	auipc	a0,0x4
    80004fd0:	25450513          	addi	a0,a0,596 # 80009220 <_ZZ12printIntegermE6digits+0x158>
    80004fd4:	00001097          	auipc	ra,0x1
    80004fd8:	958080e7          	jalr	-1704(ra) # 8000592c <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80004fdc:	00000613          	li	a2,0
    80004fe0:	00000597          	auipc	a1,0x0
    80004fe4:	e2458593          	addi	a1,a1,-476 # 80004e04 <_ZL11workerBodyBPv>
    80004fe8:	fd840513          	addi	a0,s0,-40
    80004fec:	ffffc097          	auipc	ra,0xffffc
    80004ff0:	234080e7          	jalr	564(ra) # 80001220 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80004ff4:	00004517          	auipc	a0,0x4
    80004ff8:	24450513          	addi	a0,a0,580 # 80009238 <_ZZ12printIntegermE6digits+0x170>
    80004ffc:	00001097          	auipc	ra,0x1
    80005000:	930080e7          	jalr	-1744(ra) # 8000592c <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80005004:	00000613          	li	a2,0
    80005008:	00000597          	auipc	a1,0x0
    8000500c:	c7c58593          	addi	a1,a1,-900 # 80004c84 <_ZL11workerBodyCPv>
    80005010:	fe040513          	addi	a0,s0,-32
    80005014:	ffffc097          	auipc	ra,0xffffc
    80005018:	20c080e7          	jalr	524(ra) # 80001220 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    8000501c:	00004517          	auipc	a0,0x4
    80005020:	23450513          	addi	a0,a0,564 # 80009250 <_ZZ12printIntegermE6digits+0x188>
    80005024:	00001097          	auipc	ra,0x1
    80005028:	908080e7          	jalr	-1784(ra) # 8000592c <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    8000502c:	00000613          	li	a2,0
    80005030:	00000597          	auipc	a1,0x0
    80005034:	b0c58593          	addi	a1,a1,-1268 # 80004b3c <_ZL11workerBodyDPv>
    80005038:	fe840513          	addi	a0,s0,-24
    8000503c:	ffffc097          	auipc	ra,0xffffc
    80005040:	1e4080e7          	jalr	484(ra) # 80001220 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80005044:	00004517          	auipc	a0,0x4
    80005048:	22450513          	addi	a0,a0,548 # 80009268 <_ZZ12printIntegermE6digits+0x1a0>
    8000504c:	00001097          	auipc	ra,0x1
    80005050:	8e0080e7          	jalr	-1824(ra) # 8000592c <_Z11printStringPKc>
    80005054:	00c0006f          	j	80005060 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80005058:	ffffc097          	auipc	ra,0xffffc
    8000505c:	22c080e7          	jalr	556(ra) # 80001284 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80005060:	00007797          	auipc	a5,0x7
    80005064:	adb7c783          	lbu	a5,-1317(a5) # 8000bb3b <_ZL9finishedA>
    80005068:	fe0788e3          	beqz	a5,80005058 <_Z18Threads_C_API_testv+0xb4>
    8000506c:	00007797          	auipc	a5,0x7
    80005070:	ace7c783          	lbu	a5,-1330(a5) # 8000bb3a <_ZL9finishedB>
    80005074:	fe0782e3          	beqz	a5,80005058 <_Z18Threads_C_API_testv+0xb4>
    80005078:	00007797          	auipc	a5,0x7
    8000507c:	ac17c783          	lbu	a5,-1343(a5) # 8000bb39 <_ZL9finishedC>
    80005080:	fc078ce3          	beqz	a5,80005058 <_Z18Threads_C_API_testv+0xb4>
    80005084:	00007797          	auipc	a5,0x7
    80005088:	ab47c783          	lbu	a5,-1356(a5) # 8000bb38 <_ZL9finishedD>
    8000508c:	fc0786e3          	beqz	a5,80005058 <_Z18Threads_C_API_testv+0xb4>
    }

    80005090:	02813083          	ld	ra,40(sp)
    80005094:	02013403          	ld	s0,32(sp)
    80005098:	03010113          	addi	sp,sp,48
    8000509c:	00008067          	ret

00000000800050a0 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    800050a0:	fd010113          	addi	sp,sp,-48
    800050a4:	02113423          	sd	ra,40(sp)
    800050a8:	02813023          	sd	s0,32(sp)
    800050ac:	00913c23          	sd	s1,24(sp)
    800050b0:	01213823          	sd	s2,16(sp)
    800050b4:	01313423          	sd	s3,8(sp)
    800050b8:	03010413          	addi	s0,sp,48
    800050bc:	00050993          	mv	s3,a0
    800050c0:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    800050c4:	00000913          	li	s2,0
    800050c8:	00c0006f          	j	800050d4 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    800050cc:	ffffd097          	auipc	ra,0xffffd
    800050d0:	fc8080e7          	jalr	-56(ra) # 80002094 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    800050d4:	ffffc097          	auipc	ra,0xffffc
    800050d8:	2c8080e7          	jalr	712(ra) # 8000139c <_Z4getcv>
    800050dc:	0005059b          	sext.w	a1,a0
    800050e0:	01b00793          	li	a5,27
    800050e4:	02f58a63          	beq	a1,a5,80005118 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    800050e8:	0084b503          	ld	a0,8(s1)
    800050ec:	00001097          	auipc	ra,0x1
    800050f0:	c64080e7          	jalr	-924(ra) # 80005d50 <_ZN9BufferCPP3putEi>
        i++;
    800050f4:	0019071b          	addiw	a4,s2,1
    800050f8:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800050fc:	0004a683          	lw	a3,0(s1)
    80005100:	0026979b          	slliw	a5,a3,0x2
    80005104:	00d787bb          	addw	a5,a5,a3
    80005108:	0017979b          	slliw	a5,a5,0x1
    8000510c:	02f767bb          	remw	a5,a4,a5
    80005110:	fc0792e3          	bnez	a5,800050d4 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80005114:	fb9ff06f          	j	800050cc <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80005118:	00100793          	li	a5,1
    8000511c:	00007717          	auipc	a4,0x7
    80005120:	a2f72223          	sw	a5,-1500(a4) # 8000bb40 <_ZL9threadEnd>
    td->buffer->put('!');
    80005124:	0209b783          	ld	a5,32(s3)
    80005128:	02100593          	li	a1,33
    8000512c:	0087b503          	ld	a0,8(a5)
    80005130:	00001097          	auipc	ra,0x1
    80005134:	c20080e7          	jalr	-992(ra) # 80005d50 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80005138:	0104b503          	ld	a0,16(s1)
    8000513c:	ffffd097          	auipc	ra,0xffffd
    80005140:	0e8080e7          	jalr	232(ra) # 80002224 <_ZN9Semaphore6signalEv>
}
    80005144:	02813083          	ld	ra,40(sp)
    80005148:	02013403          	ld	s0,32(sp)
    8000514c:	01813483          	ld	s1,24(sp)
    80005150:	01013903          	ld	s2,16(sp)
    80005154:	00813983          	ld	s3,8(sp)
    80005158:	03010113          	addi	sp,sp,48
    8000515c:	00008067          	ret

0000000080005160 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    80005160:	fe010113          	addi	sp,sp,-32
    80005164:	00113c23          	sd	ra,24(sp)
    80005168:	00813823          	sd	s0,16(sp)
    8000516c:	00913423          	sd	s1,8(sp)
    80005170:	01213023          	sd	s2,0(sp)
    80005174:	02010413          	addi	s0,sp,32
    80005178:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    8000517c:	00000913          	li	s2,0
    80005180:	00c0006f          	j	8000518c <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80005184:	ffffd097          	auipc	ra,0xffffd
    80005188:	f10080e7          	jalr	-240(ra) # 80002094 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    8000518c:	00007797          	auipc	a5,0x7
    80005190:	9b47a783          	lw	a5,-1612(a5) # 8000bb40 <_ZL9threadEnd>
    80005194:	02079e63          	bnez	a5,800051d0 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    80005198:	0004a583          	lw	a1,0(s1)
    8000519c:	0305859b          	addiw	a1,a1,48
    800051a0:	0084b503          	ld	a0,8(s1)
    800051a4:	00001097          	auipc	ra,0x1
    800051a8:	bac080e7          	jalr	-1108(ra) # 80005d50 <_ZN9BufferCPP3putEi>
        i++;
    800051ac:	0019071b          	addiw	a4,s2,1
    800051b0:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800051b4:	0004a683          	lw	a3,0(s1)
    800051b8:	0026979b          	slliw	a5,a3,0x2
    800051bc:	00d787bb          	addw	a5,a5,a3
    800051c0:	0017979b          	slliw	a5,a5,0x1
    800051c4:	02f767bb          	remw	a5,a4,a5
    800051c8:	fc0792e3          	bnez	a5,8000518c <_ZN12ProducerSync8producerEPv+0x2c>
    800051cc:	fb9ff06f          	j	80005184 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    800051d0:	0104b503          	ld	a0,16(s1)
    800051d4:	ffffd097          	auipc	ra,0xffffd
    800051d8:	050080e7          	jalr	80(ra) # 80002224 <_ZN9Semaphore6signalEv>
}
    800051dc:	01813083          	ld	ra,24(sp)
    800051e0:	01013403          	ld	s0,16(sp)
    800051e4:	00813483          	ld	s1,8(sp)
    800051e8:	00013903          	ld	s2,0(sp)
    800051ec:	02010113          	addi	sp,sp,32
    800051f0:	00008067          	ret

00000000800051f4 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    800051f4:	fd010113          	addi	sp,sp,-48
    800051f8:	02113423          	sd	ra,40(sp)
    800051fc:	02813023          	sd	s0,32(sp)
    80005200:	00913c23          	sd	s1,24(sp)
    80005204:	01213823          	sd	s2,16(sp)
    80005208:	01313423          	sd	s3,8(sp)
    8000520c:	01413023          	sd	s4,0(sp)
    80005210:	03010413          	addi	s0,sp,48
    80005214:	00050993          	mv	s3,a0
    80005218:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    8000521c:	00000a13          	li	s4,0
    80005220:	01c0006f          	j	8000523c <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80005224:	ffffd097          	auipc	ra,0xffffd
    80005228:	e70080e7          	jalr	-400(ra) # 80002094 <_ZN6Thread8dispatchEv>
    8000522c:	0500006f          	j	8000527c <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80005230:	00a00513          	li	a0,10
    80005234:	ffffc097          	auipc	ra,0xffffc
    80005238:	194080e7          	jalr	404(ra) # 800013c8 <_Z4putcc>
    while (!threadEnd) {
    8000523c:	00007797          	auipc	a5,0x7
    80005240:	9047a783          	lw	a5,-1788(a5) # 8000bb40 <_ZL9threadEnd>
    80005244:	06079263          	bnez	a5,800052a8 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    80005248:	00893503          	ld	a0,8(s2)
    8000524c:	00001097          	auipc	ra,0x1
    80005250:	b94080e7          	jalr	-1132(ra) # 80005de0 <_ZN9BufferCPP3getEv>
        i++;
    80005254:	001a049b          	addiw	s1,s4,1
    80005258:	00048a1b          	sext.w	s4,s1
        putc(key);
    8000525c:	0ff57513          	andi	a0,a0,255
    80005260:	ffffc097          	auipc	ra,0xffffc
    80005264:	168080e7          	jalr	360(ra) # 800013c8 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80005268:	00092703          	lw	a4,0(s2)
    8000526c:	0027179b          	slliw	a5,a4,0x2
    80005270:	00e787bb          	addw	a5,a5,a4
    80005274:	02f4e7bb          	remw	a5,s1,a5
    80005278:	fa0786e3          	beqz	a5,80005224 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    8000527c:	05000793          	li	a5,80
    80005280:	02f4e4bb          	remw	s1,s1,a5
    80005284:	fa049ce3          	bnez	s1,8000523c <_ZN12ConsumerSync8consumerEPv+0x48>
    80005288:	fa9ff06f          	j	80005230 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    8000528c:	0209b783          	ld	a5,32(s3)
    80005290:	0087b503          	ld	a0,8(a5)
    80005294:	00001097          	auipc	ra,0x1
    80005298:	b4c080e7          	jalr	-1204(ra) # 80005de0 <_ZN9BufferCPP3getEv>
        putc(key);
    8000529c:	0ff57513          	andi	a0,a0,255
    800052a0:	ffffc097          	auipc	ra,0xffffc
    800052a4:	128080e7          	jalr	296(ra) # 800013c8 <_Z4putcc>
    while (td->buffer->getCnt() > 0) {
    800052a8:	0209b783          	ld	a5,32(s3)
    800052ac:	0087b503          	ld	a0,8(a5)
    800052b0:	00001097          	auipc	ra,0x1
    800052b4:	bbc080e7          	jalr	-1092(ra) # 80005e6c <_ZN9BufferCPP6getCntEv>
    800052b8:	fca04ae3          	bgtz	a0,8000528c <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    800052bc:	01093503          	ld	a0,16(s2)
    800052c0:	ffffd097          	auipc	ra,0xffffd
    800052c4:	f64080e7          	jalr	-156(ra) # 80002224 <_ZN9Semaphore6signalEv>
}
    800052c8:	02813083          	ld	ra,40(sp)
    800052cc:	02013403          	ld	s0,32(sp)
    800052d0:	01813483          	ld	s1,24(sp)
    800052d4:	01013903          	ld	s2,16(sp)
    800052d8:	00813983          	ld	s3,8(sp)
    800052dc:	00013a03          	ld	s4,0(sp)
    800052e0:	03010113          	addi	sp,sp,48
    800052e4:	00008067          	ret

00000000800052e8 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    800052e8:	f8010113          	addi	sp,sp,-128
    800052ec:	06113c23          	sd	ra,120(sp)
    800052f0:	06813823          	sd	s0,112(sp)
    800052f4:	06913423          	sd	s1,104(sp)
    800052f8:	07213023          	sd	s2,96(sp)
    800052fc:	05313c23          	sd	s3,88(sp)
    80005300:	05413823          	sd	s4,80(sp)
    80005304:	05513423          	sd	s5,72(sp)
    80005308:	05613023          	sd	s6,64(sp)
    8000530c:	03713c23          	sd	s7,56(sp)
    80005310:	03813823          	sd	s8,48(sp)
    80005314:	03913423          	sd	s9,40(sp)
    80005318:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    8000531c:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80005320:	00004517          	auipc	a0,0x4
    80005324:	db850513          	addi	a0,a0,-584 # 800090d8 <_ZZ12printIntegermE6digits+0x10>
    80005328:	00000097          	auipc	ra,0x0
    8000532c:	604080e7          	jalr	1540(ra) # 8000592c <_Z11printStringPKc>
    getString(input, 30);
    80005330:	01e00593          	li	a1,30
    80005334:	f8040493          	addi	s1,s0,-128
    80005338:	00048513          	mv	a0,s1
    8000533c:	00000097          	auipc	ra,0x0
    80005340:	678080e7          	jalr	1656(ra) # 800059b4 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80005344:	00048513          	mv	a0,s1
    80005348:	00000097          	auipc	ra,0x0
    8000534c:	744080e7          	jalr	1860(ra) # 80005a8c <_Z11stringToIntPKc>
    80005350:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80005354:	00004517          	auipc	a0,0x4
    80005358:	da450513          	addi	a0,a0,-604 # 800090f8 <_ZZ12printIntegermE6digits+0x30>
    8000535c:	00000097          	auipc	ra,0x0
    80005360:	5d0080e7          	jalr	1488(ra) # 8000592c <_Z11printStringPKc>
    getString(input, 30);
    80005364:	01e00593          	li	a1,30
    80005368:	00048513          	mv	a0,s1
    8000536c:	00000097          	auipc	ra,0x0
    80005370:	648080e7          	jalr	1608(ra) # 800059b4 <_Z9getStringPci>
    n = stringToInt(input);
    80005374:	00048513          	mv	a0,s1
    80005378:	00000097          	auipc	ra,0x0
    8000537c:	714080e7          	jalr	1812(ra) # 80005a8c <_Z11stringToIntPKc>
    80005380:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80005384:	00004517          	auipc	a0,0x4
    80005388:	d9450513          	addi	a0,a0,-620 # 80009118 <_ZZ12printIntegermE6digits+0x50>
    8000538c:	00000097          	auipc	ra,0x0
    80005390:	5a0080e7          	jalr	1440(ra) # 8000592c <_Z11printStringPKc>
    80005394:	00000613          	li	a2,0
    80005398:	00a00593          	li	a1,10
    8000539c:	00090513          	mv	a0,s2
    800053a0:	00000097          	auipc	ra,0x0
    800053a4:	73c080e7          	jalr	1852(ra) # 80005adc <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    800053a8:	00004517          	auipc	a0,0x4
    800053ac:	d8850513          	addi	a0,a0,-632 # 80009130 <_ZZ12printIntegermE6digits+0x68>
    800053b0:	00000097          	auipc	ra,0x0
    800053b4:	57c080e7          	jalr	1404(ra) # 8000592c <_Z11printStringPKc>
    800053b8:	00000613          	li	a2,0
    800053bc:	00a00593          	li	a1,10
    800053c0:	00048513          	mv	a0,s1
    800053c4:	00000097          	auipc	ra,0x0
    800053c8:	718080e7          	jalr	1816(ra) # 80005adc <_Z8printIntiii>
    printString(".\n");
    800053cc:	00004517          	auipc	a0,0x4
    800053d0:	d7c50513          	addi	a0,a0,-644 # 80009148 <_ZZ12printIntegermE6digits+0x80>
    800053d4:	00000097          	auipc	ra,0x0
    800053d8:	558080e7          	jalr	1368(ra) # 8000592c <_Z11printStringPKc>
    if(threadNum > n) {
    800053dc:	0324c463          	blt	s1,s2,80005404 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    800053e0:	03205c63          	blez	s2,80005418 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    800053e4:	03800513          	li	a0,56
    800053e8:	ffffd097          	auipc	ra,0xffffd
    800053ec:	b4c080e7          	jalr	-1204(ra) # 80001f34 <_Znwm>
    800053f0:	00050a93          	mv	s5,a0
    800053f4:	00048593          	mv	a1,s1
    800053f8:	00001097          	auipc	ra,0x1
    800053fc:	804080e7          	jalr	-2044(ra) # 80005bfc <_ZN9BufferCPPC1Ei>
    80005400:	0300006f          	j	80005430 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80005404:	00004517          	auipc	a0,0x4
    80005408:	d4c50513          	addi	a0,a0,-692 # 80009150 <_ZZ12printIntegermE6digits+0x88>
    8000540c:	00000097          	auipc	ra,0x0
    80005410:	520080e7          	jalr	1312(ra) # 8000592c <_Z11printStringPKc>
        return;
    80005414:	0140006f          	j	80005428 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80005418:	00004517          	auipc	a0,0x4
    8000541c:	d7850513          	addi	a0,a0,-648 # 80009190 <_ZZ12printIntegermE6digits+0xc8>
    80005420:	00000097          	auipc	ra,0x0
    80005424:	50c080e7          	jalr	1292(ra) # 8000592c <_Z11printStringPKc>
        return;
    80005428:	000b8113          	mv	sp,s7
    8000542c:	2380006f          	j	80005664 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    80005430:	01000513          	li	a0,16
    80005434:	ffffd097          	auipc	ra,0xffffd
    80005438:	b00080e7          	jalr	-1280(ra) # 80001f34 <_Znwm>
    8000543c:	00050493          	mv	s1,a0
    80005440:	00000593          	li	a1,0
    80005444:	ffffd097          	auipc	ra,0xffffd
    80005448:	d7c080e7          	jalr	-644(ra) # 800021c0 <_ZN9SemaphoreC1Ej>
    8000544c:	00006797          	auipc	a5,0x6
    80005450:	6e97be23          	sd	s1,1788(a5) # 8000bb48 <_ZL10waitForAll>
    Thread* threads[threadNum];
    80005454:	00391793          	slli	a5,s2,0x3
    80005458:	00f78793          	addi	a5,a5,15
    8000545c:	ff07f793          	andi	a5,a5,-16
    80005460:	40f10133          	sub	sp,sp,a5
    80005464:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80005468:	0019071b          	addiw	a4,s2,1
    8000546c:	00171793          	slli	a5,a4,0x1
    80005470:	00e787b3          	add	a5,a5,a4
    80005474:	00379793          	slli	a5,a5,0x3
    80005478:	00f78793          	addi	a5,a5,15
    8000547c:	ff07f793          	andi	a5,a5,-16
    80005480:	40f10133          	sub	sp,sp,a5
    80005484:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80005488:	00191c13          	slli	s8,s2,0x1
    8000548c:	012c07b3          	add	a5,s8,s2
    80005490:	00379793          	slli	a5,a5,0x3
    80005494:	00fa07b3          	add	a5,s4,a5
    80005498:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    8000549c:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    800054a0:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    800054a4:	02800513          	li	a0,40
    800054a8:	ffffd097          	auipc	ra,0xffffd
    800054ac:	a8c080e7          	jalr	-1396(ra) # 80001f34 <_Znwm>
    800054b0:	00050b13          	mv	s6,a0
    800054b4:	012c0c33          	add	s8,s8,s2
    800054b8:	003c1c13          	slli	s8,s8,0x3
    800054bc:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    800054c0:	ffffd097          	auipc	ra,0xffffd
    800054c4:	bfc080e7          	jalr	-1028(ra) # 800020bc <_ZN6ThreadC1Ev>
    800054c8:	00006797          	auipc	a5,0x6
    800054cc:	4f078793          	addi	a5,a5,1264 # 8000b9b8 <_ZTV12ConsumerSync+0x10>
    800054d0:	00fb3023          	sd	a5,0(s6)
    800054d4:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    800054d8:	000b0513          	mv	a0,s6
    800054dc:	ffffd097          	auipc	ra,0xffffd
    800054e0:	c10080e7          	jalr	-1008(ra) # 800020ec <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    800054e4:	00000493          	li	s1,0
    800054e8:	0380006f          	j	80005520 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    800054ec:	00006797          	auipc	a5,0x6
    800054f0:	4a478793          	addi	a5,a5,1188 # 8000b990 <_ZTV12ProducerSync+0x10>
    800054f4:	00fcb023          	sd	a5,0(s9)
    800054f8:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    800054fc:	00349793          	slli	a5,s1,0x3
    80005500:	00f987b3          	add	a5,s3,a5
    80005504:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80005508:	00349793          	slli	a5,s1,0x3
    8000550c:	00f987b3          	add	a5,s3,a5
    80005510:	0007b503          	ld	a0,0(a5)
    80005514:	ffffd097          	auipc	ra,0xffffd
    80005518:	bd8080e7          	jalr	-1064(ra) # 800020ec <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    8000551c:	0014849b          	addiw	s1,s1,1
    80005520:	0b24d063          	bge	s1,s2,800055c0 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    80005524:	00149793          	slli	a5,s1,0x1
    80005528:	009787b3          	add	a5,a5,s1
    8000552c:	00379793          	slli	a5,a5,0x3
    80005530:	00fa07b3          	add	a5,s4,a5
    80005534:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80005538:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    8000553c:	00006717          	auipc	a4,0x6
    80005540:	60c73703          	ld	a4,1548(a4) # 8000bb48 <_ZL10waitForAll>
    80005544:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80005548:	02905863          	blez	s1,80005578 <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    8000554c:	02800513          	li	a0,40
    80005550:	ffffd097          	auipc	ra,0xffffd
    80005554:	9e4080e7          	jalr	-1564(ra) # 80001f34 <_Znwm>
    80005558:	00050c93          	mv	s9,a0
    8000555c:	00149c13          	slli	s8,s1,0x1
    80005560:	009c0c33          	add	s8,s8,s1
    80005564:	003c1c13          	slli	s8,s8,0x3
    80005568:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    8000556c:	ffffd097          	auipc	ra,0xffffd
    80005570:	b50080e7          	jalr	-1200(ra) # 800020bc <_ZN6ThreadC1Ev>
    80005574:	f79ff06f          	j	800054ec <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    80005578:	02800513          	li	a0,40
    8000557c:	ffffd097          	auipc	ra,0xffffd
    80005580:	9b8080e7          	jalr	-1608(ra) # 80001f34 <_Znwm>
    80005584:	00050c93          	mv	s9,a0
    80005588:	00149c13          	slli	s8,s1,0x1
    8000558c:	009c0c33          	add	s8,s8,s1
    80005590:	003c1c13          	slli	s8,s8,0x3
    80005594:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80005598:	ffffd097          	auipc	ra,0xffffd
    8000559c:	b24080e7          	jalr	-1244(ra) # 800020bc <_ZN6ThreadC1Ev>
    800055a0:	00006797          	auipc	a5,0x6
    800055a4:	3c878793          	addi	a5,a5,968 # 8000b968 <_ZTV16ProducerKeyboard+0x10>
    800055a8:	00fcb023          	sd	a5,0(s9)
    800055ac:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    800055b0:	00349793          	slli	a5,s1,0x3
    800055b4:	00f987b3          	add	a5,s3,a5
    800055b8:	0197b023          	sd	s9,0(a5)
    800055bc:	f4dff06f          	j	80005508 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    800055c0:	ffffd097          	auipc	ra,0xffffd
    800055c4:	ad4080e7          	jalr	-1324(ra) # 80002094 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    800055c8:	00000493          	li	s1,0
    800055cc:	00994e63          	blt	s2,s1,800055e8 <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    800055d0:	00006517          	auipc	a0,0x6
    800055d4:	57853503          	ld	a0,1400(a0) # 8000bb48 <_ZL10waitForAll>
    800055d8:	ffffd097          	auipc	ra,0xffffd
    800055dc:	c20080e7          	jalr	-992(ra) # 800021f8 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    800055e0:	0014849b          	addiw	s1,s1,1
    800055e4:	fe9ff06f          	j	800055cc <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    800055e8:	00000493          	li	s1,0
    800055ec:	0080006f          	j	800055f4 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    800055f0:	0014849b          	addiw	s1,s1,1
    800055f4:	0324d263          	bge	s1,s2,80005618 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    800055f8:	00349793          	slli	a5,s1,0x3
    800055fc:	00f987b3          	add	a5,s3,a5
    80005600:	0007b503          	ld	a0,0(a5)
    80005604:	fe0506e3          	beqz	a0,800055f0 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80005608:	00053783          	ld	a5,0(a0)
    8000560c:	0087b783          	ld	a5,8(a5)
    80005610:	000780e7          	jalr	a5
    80005614:	fddff06f          	j	800055f0 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80005618:	000b0a63          	beqz	s6,8000562c <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    8000561c:	000b3783          	ld	a5,0(s6)
    80005620:	0087b783          	ld	a5,8(a5)
    80005624:	000b0513          	mv	a0,s6
    80005628:	000780e7          	jalr	a5
    delete waitForAll;
    8000562c:	00006517          	auipc	a0,0x6
    80005630:	51c53503          	ld	a0,1308(a0) # 8000bb48 <_ZL10waitForAll>
    80005634:	00050863          	beqz	a0,80005644 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    80005638:	00053783          	ld	a5,0(a0)
    8000563c:	0087b783          	ld	a5,8(a5)
    80005640:	000780e7          	jalr	a5
    delete buffer;
    80005644:	000a8e63          	beqz	s5,80005660 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    80005648:	000a8513          	mv	a0,s5
    8000564c:	00001097          	auipc	ra,0x1
    80005650:	8a8080e7          	jalr	-1880(ra) # 80005ef4 <_ZN9BufferCPPD1Ev>
    80005654:	000a8513          	mv	a0,s5
    80005658:	ffffd097          	auipc	ra,0xffffd
    8000565c:	904080e7          	jalr	-1788(ra) # 80001f5c <_ZdlPv>
    80005660:	000b8113          	mv	sp,s7

}
    80005664:	f8040113          	addi	sp,s0,-128
    80005668:	07813083          	ld	ra,120(sp)
    8000566c:	07013403          	ld	s0,112(sp)
    80005670:	06813483          	ld	s1,104(sp)
    80005674:	06013903          	ld	s2,96(sp)
    80005678:	05813983          	ld	s3,88(sp)
    8000567c:	05013a03          	ld	s4,80(sp)
    80005680:	04813a83          	ld	s5,72(sp)
    80005684:	04013b03          	ld	s6,64(sp)
    80005688:	03813b83          	ld	s7,56(sp)
    8000568c:	03013c03          	ld	s8,48(sp)
    80005690:	02813c83          	ld	s9,40(sp)
    80005694:	08010113          	addi	sp,sp,128
    80005698:	00008067          	ret
    8000569c:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    800056a0:	000a8513          	mv	a0,s5
    800056a4:	ffffd097          	auipc	ra,0xffffd
    800056a8:	8b8080e7          	jalr	-1864(ra) # 80001f5c <_ZdlPv>
    800056ac:	00048513          	mv	a0,s1
    800056b0:	00007097          	auipc	ra,0x7
    800056b4:	578080e7          	jalr	1400(ra) # 8000cc28 <_Unwind_Resume>
    800056b8:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    800056bc:	00048513          	mv	a0,s1
    800056c0:	ffffd097          	auipc	ra,0xffffd
    800056c4:	89c080e7          	jalr	-1892(ra) # 80001f5c <_ZdlPv>
    800056c8:	00090513          	mv	a0,s2
    800056cc:	00007097          	auipc	ra,0x7
    800056d0:	55c080e7          	jalr	1372(ra) # 8000cc28 <_Unwind_Resume>
    800056d4:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    800056d8:	000b0513          	mv	a0,s6
    800056dc:	ffffd097          	auipc	ra,0xffffd
    800056e0:	880080e7          	jalr	-1920(ra) # 80001f5c <_ZdlPv>
    800056e4:	00048513          	mv	a0,s1
    800056e8:	00007097          	auipc	ra,0x7
    800056ec:	540080e7          	jalr	1344(ra) # 8000cc28 <_Unwind_Resume>
    800056f0:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    800056f4:	000c8513          	mv	a0,s9
    800056f8:	ffffd097          	auipc	ra,0xffffd
    800056fc:	864080e7          	jalr	-1948(ra) # 80001f5c <_ZdlPv>
    80005700:	00048513          	mv	a0,s1
    80005704:	00007097          	auipc	ra,0x7
    80005708:	524080e7          	jalr	1316(ra) # 8000cc28 <_Unwind_Resume>
    8000570c:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80005710:	000c8513          	mv	a0,s9
    80005714:	ffffd097          	auipc	ra,0xffffd
    80005718:	848080e7          	jalr	-1976(ra) # 80001f5c <_ZdlPv>
    8000571c:	00048513          	mv	a0,s1
    80005720:	00007097          	auipc	ra,0x7
    80005724:	508080e7          	jalr	1288(ra) # 8000cc28 <_Unwind_Resume>

0000000080005728 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80005728:	ff010113          	addi	sp,sp,-16
    8000572c:	00113423          	sd	ra,8(sp)
    80005730:	00813023          	sd	s0,0(sp)
    80005734:	01010413          	addi	s0,sp,16
    80005738:	00006797          	auipc	a5,0x6
    8000573c:	28078793          	addi	a5,a5,640 # 8000b9b8 <_ZTV12ConsumerSync+0x10>
    80005740:	00f53023          	sd	a5,0(a0)
    80005744:	ffffd097          	auipc	ra,0xffffd
    80005748:	840080e7          	jalr	-1984(ra) # 80001f84 <_ZN6ThreadD1Ev>
    8000574c:	00813083          	ld	ra,8(sp)
    80005750:	00013403          	ld	s0,0(sp)
    80005754:	01010113          	addi	sp,sp,16
    80005758:	00008067          	ret

000000008000575c <_ZN12ConsumerSyncD0Ev>:
    8000575c:	fe010113          	addi	sp,sp,-32
    80005760:	00113c23          	sd	ra,24(sp)
    80005764:	00813823          	sd	s0,16(sp)
    80005768:	00913423          	sd	s1,8(sp)
    8000576c:	02010413          	addi	s0,sp,32
    80005770:	00050493          	mv	s1,a0
    80005774:	00006797          	auipc	a5,0x6
    80005778:	24478793          	addi	a5,a5,580 # 8000b9b8 <_ZTV12ConsumerSync+0x10>
    8000577c:	00f53023          	sd	a5,0(a0)
    80005780:	ffffd097          	auipc	ra,0xffffd
    80005784:	804080e7          	jalr	-2044(ra) # 80001f84 <_ZN6ThreadD1Ev>
    80005788:	00048513          	mv	a0,s1
    8000578c:	ffffc097          	auipc	ra,0xffffc
    80005790:	7d0080e7          	jalr	2000(ra) # 80001f5c <_ZdlPv>
    80005794:	01813083          	ld	ra,24(sp)
    80005798:	01013403          	ld	s0,16(sp)
    8000579c:	00813483          	ld	s1,8(sp)
    800057a0:	02010113          	addi	sp,sp,32
    800057a4:	00008067          	ret

00000000800057a8 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    800057a8:	ff010113          	addi	sp,sp,-16
    800057ac:	00113423          	sd	ra,8(sp)
    800057b0:	00813023          	sd	s0,0(sp)
    800057b4:	01010413          	addi	s0,sp,16
    800057b8:	00006797          	auipc	a5,0x6
    800057bc:	1d878793          	addi	a5,a5,472 # 8000b990 <_ZTV12ProducerSync+0x10>
    800057c0:	00f53023          	sd	a5,0(a0)
    800057c4:	ffffc097          	auipc	ra,0xffffc
    800057c8:	7c0080e7          	jalr	1984(ra) # 80001f84 <_ZN6ThreadD1Ev>
    800057cc:	00813083          	ld	ra,8(sp)
    800057d0:	00013403          	ld	s0,0(sp)
    800057d4:	01010113          	addi	sp,sp,16
    800057d8:	00008067          	ret

00000000800057dc <_ZN12ProducerSyncD0Ev>:
    800057dc:	fe010113          	addi	sp,sp,-32
    800057e0:	00113c23          	sd	ra,24(sp)
    800057e4:	00813823          	sd	s0,16(sp)
    800057e8:	00913423          	sd	s1,8(sp)
    800057ec:	02010413          	addi	s0,sp,32
    800057f0:	00050493          	mv	s1,a0
    800057f4:	00006797          	auipc	a5,0x6
    800057f8:	19c78793          	addi	a5,a5,412 # 8000b990 <_ZTV12ProducerSync+0x10>
    800057fc:	00f53023          	sd	a5,0(a0)
    80005800:	ffffc097          	auipc	ra,0xffffc
    80005804:	784080e7          	jalr	1924(ra) # 80001f84 <_ZN6ThreadD1Ev>
    80005808:	00048513          	mv	a0,s1
    8000580c:	ffffc097          	auipc	ra,0xffffc
    80005810:	750080e7          	jalr	1872(ra) # 80001f5c <_ZdlPv>
    80005814:	01813083          	ld	ra,24(sp)
    80005818:	01013403          	ld	s0,16(sp)
    8000581c:	00813483          	ld	s1,8(sp)
    80005820:	02010113          	addi	sp,sp,32
    80005824:	00008067          	ret

0000000080005828 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80005828:	ff010113          	addi	sp,sp,-16
    8000582c:	00113423          	sd	ra,8(sp)
    80005830:	00813023          	sd	s0,0(sp)
    80005834:	01010413          	addi	s0,sp,16
    80005838:	00006797          	auipc	a5,0x6
    8000583c:	13078793          	addi	a5,a5,304 # 8000b968 <_ZTV16ProducerKeyboard+0x10>
    80005840:	00f53023          	sd	a5,0(a0)
    80005844:	ffffc097          	auipc	ra,0xffffc
    80005848:	740080e7          	jalr	1856(ra) # 80001f84 <_ZN6ThreadD1Ev>
    8000584c:	00813083          	ld	ra,8(sp)
    80005850:	00013403          	ld	s0,0(sp)
    80005854:	01010113          	addi	sp,sp,16
    80005858:	00008067          	ret

000000008000585c <_ZN16ProducerKeyboardD0Ev>:
    8000585c:	fe010113          	addi	sp,sp,-32
    80005860:	00113c23          	sd	ra,24(sp)
    80005864:	00813823          	sd	s0,16(sp)
    80005868:	00913423          	sd	s1,8(sp)
    8000586c:	02010413          	addi	s0,sp,32
    80005870:	00050493          	mv	s1,a0
    80005874:	00006797          	auipc	a5,0x6
    80005878:	0f478793          	addi	a5,a5,244 # 8000b968 <_ZTV16ProducerKeyboard+0x10>
    8000587c:	00f53023          	sd	a5,0(a0)
    80005880:	ffffc097          	auipc	ra,0xffffc
    80005884:	704080e7          	jalr	1796(ra) # 80001f84 <_ZN6ThreadD1Ev>
    80005888:	00048513          	mv	a0,s1
    8000588c:	ffffc097          	auipc	ra,0xffffc
    80005890:	6d0080e7          	jalr	1744(ra) # 80001f5c <_ZdlPv>
    80005894:	01813083          	ld	ra,24(sp)
    80005898:	01013403          	ld	s0,16(sp)
    8000589c:	00813483          	ld	s1,8(sp)
    800058a0:	02010113          	addi	sp,sp,32
    800058a4:	00008067          	ret

00000000800058a8 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    800058a8:	ff010113          	addi	sp,sp,-16
    800058ac:	00113423          	sd	ra,8(sp)
    800058b0:	00813023          	sd	s0,0(sp)
    800058b4:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    800058b8:	02053583          	ld	a1,32(a0)
    800058bc:	fffff097          	auipc	ra,0xfffff
    800058c0:	7e4080e7          	jalr	2020(ra) # 800050a0 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    800058c4:	00813083          	ld	ra,8(sp)
    800058c8:	00013403          	ld	s0,0(sp)
    800058cc:	01010113          	addi	sp,sp,16
    800058d0:	00008067          	ret

00000000800058d4 <_ZN12ProducerSync3runEv>:
    void run() override {
    800058d4:	ff010113          	addi	sp,sp,-16
    800058d8:	00113423          	sd	ra,8(sp)
    800058dc:	00813023          	sd	s0,0(sp)
    800058e0:	01010413          	addi	s0,sp,16
        producer(td);
    800058e4:	02053583          	ld	a1,32(a0)
    800058e8:	00000097          	auipc	ra,0x0
    800058ec:	878080e7          	jalr	-1928(ra) # 80005160 <_ZN12ProducerSync8producerEPv>
    }
    800058f0:	00813083          	ld	ra,8(sp)
    800058f4:	00013403          	ld	s0,0(sp)
    800058f8:	01010113          	addi	sp,sp,16
    800058fc:	00008067          	ret

0000000080005900 <_ZN12ConsumerSync3runEv>:
    void run() override {
    80005900:	ff010113          	addi	sp,sp,-16
    80005904:	00113423          	sd	ra,8(sp)
    80005908:	00813023          	sd	s0,0(sp)
    8000590c:	01010413          	addi	s0,sp,16
        consumer(td);
    80005910:	02053583          	ld	a1,32(a0)
    80005914:	00000097          	auipc	ra,0x0
    80005918:	8e0080e7          	jalr	-1824(ra) # 800051f4 <_ZN12ConsumerSync8consumerEPv>
    }
    8000591c:	00813083          	ld	ra,8(sp)
    80005920:	00013403          	ld	s0,0(sp)
    80005924:	01010113          	addi	sp,sp,16
    80005928:	00008067          	ret

000000008000592c <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    8000592c:	fe010113          	addi	sp,sp,-32
    80005930:	00113c23          	sd	ra,24(sp)
    80005934:	00813823          	sd	s0,16(sp)
    80005938:	00913423          	sd	s1,8(sp)
    8000593c:	02010413          	addi	s0,sp,32
    80005940:	00050493          	mv	s1,a0
    LOCK();
    80005944:	00100613          	li	a2,1
    80005948:	00000593          	li	a1,0
    8000594c:	00006517          	auipc	a0,0x6
    80005950:	20450513          	addi	a0,a0,516 # 8000bb50 <lockPrint>
    80005954:	ffffb097          	auipc	ra,0xffffb
    80005958:	7e0080e7          	jalr	2016(ra) # 80001134 <copy_and_swap>
    8000595c:	00050863          	beqz	a0,8000596c <_Z11printStringPKc+0x40>
    80005960:	ffffc097          	auipc	ra,0xffffc
    80005964:	924080e7          	jalr	-1756(ra) # 80001284 <_Z15thread_dispatchv>
    80005968:	fddff06f          	j	80005944 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    8000596c:	0004c503          	lbu	a0,0(s1)
    80005970:	00050a63          	beqz	a0,80005984 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80005974:	ffffc097          	auipc	ra,0xffffc
    80005978:	a54080e7          	jalr	-1452(ra) # 800013c8 <_Z4putcc>
        string++;
    8000597c:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80005980:	fedff06f          	j	8000596c <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80005984:	00000613          	li	a2,0
    80005988:	00100593          	li	a1,1
    8000598c:	00006517          	auipc	a0,0x6
    80005990:	1c450513          	addi	a0,a0,452 # 8000bb50 <lockPrint>
    80005994:	ffffb097          	auipc	ra,0xffffb
    80005998:	7a0080e7          	jalr	1952(ra) # 80001134 <copy_and_swap>
    8000599c:	fe0514e3          	bnez	a0,80005984 <_Z11printStringPKc+0x58>
}
    800059a0:	01813083          	ld	ra,24(sp)
    800059a4:	01013403          	ld	s0,16(sp)
    800059a8:	00813483          	ld	s1,8(sp)
    800059ac:	02010113          	addi	sp,sp,32
    800059b0:	00008067          	ret

00000000800059b4 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    800059b4:	fd010113          	addi	sp,sp,-48
    800059b8:	02113423          	sd	ra,40(sp)
    800059bc:	02813023          	sd	s0,32(sp)
    800059c0:	00913c23          	sd	s1,24(sp)
    800059c4:	01213823          	sd	s2,16(sp)
    800059c8:	01313423          	sd	s3,8(sp)
    800059cc:	01413023          	sd	s4,0(sp)
    800059d0:	03010413          	addi	s0,sp,48
    800059d4:	00050993          	mv	s3,a0
    800059d8:	00058a13          	mv	s4,a1
    LOCK();
    800059dc:	00100613          	li	a2,1
    800059e0:	00000593          	li	a1,0
    800059e4:	00006517          	auipc	a0,0x6
    800059e8:	16c50513          	addi	a0,a0,364 # 8000bb50 <lockPrint>
    800059ec:	ffffb097          	auipc	ra,0xffffb
    800059f0:	748080e7          	jalr	1864(ra) # 80001134 <copy_and_swap>
    800059f4:	00050863          	beqz	a0,80005a04 <_Z9getStringPci+0x50>
    800059f8:	ffffc097          	auipc	ra,0xffffc
    800059fc:	88c080e7          	jalr	-1908(ra) # 80001284 <_Z15thread_dispatchv>
    80005a00:	fddff06f          	j	800059dc <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80005a04:	00000913          	li	s2,0
    80005a08:	00090493          	mv	s1,s2
    80005a0c:	0019091b          	addiw	s2,s2,1
    80005a10:	03495a63          	bge	s2,s4,80005a44 <_Z9getStringPci+0x90>
        cc = getc();
    80005a14:	ffffc097          	auipc	ra,0xffffc
    80005a18:	988080e7          	jalr	-1656(ra) # 8000139c <_Z4getcv>
        if(cc < 1)
    80005a1c:	02050463          	beqz	a0,80005a44 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80005a20:	009984b3          	add	s1,s3,s1
    80005a24:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80005a28:	00a00793          	li	a5,10
    80005a2c:	00f50a63          	beq	a0,a5,80005a40 <_Z9getStringPci+0x8c>
    80005a30:	00d00793          	li	a5,13
    80005a34:	fcf51ae3          	bne	a0,a5,80005a08 <_Z9getStringPci+0x54>
        buf[i++] = c;
    80005a38:	00090493          	mv	s1,s2
    80005a3c:	0080006f          	j	80005a44 <_Z9getStringPci+0x90>
    80005a40:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80005a44:	009984b3          	add	s1,s3,s1
    80005a48:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80005a4c:	00000613          	li	a2,0
    80005a50:	00100593          	li	a1,1
    80005a54:	00006517          	auipc	a0,0x6
    80005a58:	0fc50513          	addi	a0,a0,252 # 8000bb50 <lockPrint>
    80005a5c:	ffffb097          	auipc	ra,0xffffb
    80005a60:	6d8080e7          	jalr	1752(ra) # 80001134 <copy_and_swap>
    80005a64:	fe0514e3          	bnez	a0,80005a4c <_Z9getStringPci+0x98>
    return buf;
}
    80005a68:	00098513          	mv	a0,s3
    80005a6c:	02813083          	ld	ra,40(sp)
    80005a70:	02013403          	ld	s0,32(sp)
    80005a74:	01813483          	ld	s1,24(sp)
    80005a78:	01013903          	ld	s2,16(sp)
    80005a7c:	00813983          	ld	s3,8(sp)
    80005a80:	00013a03          	ld	s4,0(sp)
    80005a84:	03010113          	addi	sp,sp,48
    80005a88:	00008067          	ret

0000000080005a8c <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80005a8c:	ff010113          	addi	sp,sp,-16
    80005a90:	00813423          	sd	s0,8(sp)
    80005a94:	01010413          	addi	s0,sp,16
    80005a98:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80005a9c:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80005aa0:	0006c603          	lbu	a2,0(a3)
    80005aa4:	fd06071b          	addiw	a4,a2,-48
    80005aa8:	0ff77713          	andi	a4,a4,255
    80005aac:	00900793          	li	a5,9
    80005ab0:	02e7e063          	bltu	a5,a4,80005ad0 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80005ab4:	0025179b          	slliw	a5,a0,0x2
    80005ab8:	00a787bb          	addw	a5,a5,a0
    80005abc:	0017979b          	slliw	a5,a5,0x1
    80005ac0:	00168693          	addi	a3,a3,1
    80005ac4:	00c787bb          	addw	a5,a5,a2
    80005ac8:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80005acc:	fd5ff06f          	j	80005aa0 <_Z11stringToIntPKc+0x14>
    return n;
}
    80005ad0:	00813403          	ld	s0,8(sp)
    80005ad4:	01010113          	addi	sp,sp,16
    80005ad8:	00008067          	ret

0000000080005adc <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80005adc:	fc010113          	addi	sp,sp,-64
    80005ae0:	02113c23          	sd	ra,56(sp)
    80005ae4:	02813823          	sd	s0,48(sp)
    80005ae8:	02913423          	sd	s1,40(sp)
    80005aec:	03213023          	sd	s2,32(sp)
    80005af0:	01313c23          	sd	s3,24(sp)
    80005af4:	04010413          	addi	s0,sp,64
    80005af8:	00050493          	mv	s1,a0
    80005afc:	00058913          	mv	s2,a1
    80005b00:	00060993          	mv	s3,a2
    LOCK();
    80005b04:	00100613          	li	a2,1
    80005b08:	00000593          	li	a1,0
    80005b0c:	00006517          	auipc	a0,0x6
    80005b10:	04450513          	addi	a0,a0,68 # 8000bb50 <lockPrint>
    80005b14:	ffffb097          	auipc	ra,0xffffb
    80005b18:	620080e7          	jalr	1568(ra) # 80001134 <copy_and_swap>
    80005b1c:	00050863          	beqz	a0,80005b2c <_Z8printIntiii+0x50>
    80005b20:	ffffb097          	auipc	ra,0xffffb
    80005b24:	764080e7          	jalr	1892(ra) # 80001284 <_Z15thread_dispatchv>
    80005b28:	fddff06f          	j	80005b04 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80005b2c:	00098463          	beqz	s3,80005b34 <_Z8printIntiii+0x58>
    80005b30:	0804c463          	bltz	s1,80005bb8 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005b34:	0004851b          	sext.w	a0,s1
    neg = 0;
    80005b38:	00000593          	li	a1,0
    }

    i = 0;
    80005b3c:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80005b40:	0009079b          	sext.w	a5,s2
    80005b44:	0325773b          	remuw	a4,a0,s2
    80005b48:	00048613          	mv	a2,s1
    80005b4c:	0014849b          	addiw	s1,s1,1
    80005b50:	02071693          	slli	a3,a4,0x20
    80005b54:	0206d693          	srli	a3,a3,0x20
    80005b58:	00006717          	auipc	a4,0x6
    80005b5c:	e7870713          	addi	a4,a4,-392 # 8000b9d0 <digits>
    80005b60:	00d70733          	add	a4,a4,a3
    80005b64:	00074683          	lbu	a3,0(a4)
    80005b68:	fd040713          	addi	a4,s0,-48
    80005b6c:	00c70733          	add	a4,a4,a2
    80005b70:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80005b74:	0005071b          	sext.w	a4,a0
    80005b78:	0325553b          	divuw	a0,a0,s2
    80005b7c:	fcf772e3          	bgeu	a4,a5,80005b40 <_Z8printIntiii+0x64>
    if(neg)
    80005b80:	00058c63          	beqz	a1,80005b98 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80005b84:	fd040793          	addi	a5,s0,-48
    80005b88:	009784b3          	add	s1,a5,s1
    80005b8c:	02d00793          	li	a5,45
    80005b90:	fef48823          	sb	a5,-16(s1)
    80005b94:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80005b98:	fff4849b          	addiw	s1,s1,-1
    80005b9c:	0204c463          	bltz	s1,80005bc4 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80005ba0:	fd040793          	addi	a5,s0,-48
    80005ba4:	009787b3          	add	a5,a5,s1
    80005ba8:	ff07c503          	lbu	a0,-16(a5)
    80005bac:	ffffc097          	auipc	ra,0xffffc
    80005bb0:	81c080e7          	jalr	-2020(ra) # 800013c8 <_Z4putcc>
    80005bb4:	fe5ff06f          	j	80005b98 <_Z8printIntiii+0xbc>
        x = -xx;
    80005bb8:	4090053b          	negw	a0,s1
        neg = 1;
    80005bbc:	00100593          	li	a1,1
        x = -xx;
    80005bc0:	f7dff06f          	j	80005b3c <_Z8printIntiii+0x60>

    UNLOCK();
    80005bc4:	00000613          	li	a2,0
    80005bc8:	00100593          	li	a1,1
    80005bcc:	00006517          	auipc	a0,0x6
    80005bd0:	f8450513          	addi	a0,a0,-124 # 8000bb50 <lockPrint>
    80005bd4:	ffffb097          	auipc	ra,0xffffb
    80005bd8:	560080e7          	jalr	1376(ra) # 80001134 <copy_and_swap>
    80005bdc:	fe0514e3          	bnez	a0,80005bc4 <_Z8printIntiii+0xe8>
    80005be0:	03813083          	ld	ra,56(sp)
    80005be4:	03013403          	ld	s0,48(sp)
    80005be8:	02813483          	ld	s1,40(sp)
    80005bec:	02013903          	ld	s2,32(sp)
    80005bf0:	01813983          	ld	s3,24(sp)
    80005bf4:	04010113          	addi	sp,sp,64
    80005bf8:	00008067          	ret

0000000080005bfc <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005bfc:	fd010113          	addi	sp,sp,-48
    80005c00:	02113423          	sd	ra,40(sp)
    80005c04:	02813023          	sd	s0,32(sp)
    80005c08:	00913c23          	sd	s1,24(sp)
    80005c0c:	01213823          	sd	s2,16(sp)
    80005c10:	01313423          	sd	s3,8(sp)
    80005c14:	03010413          	addi	s0,sp,48
    80005c18:	00050493          	mv	s1,a0
    80005c1c:	00058913          	mv	s2,a1
    80005c20:	0015879b          	addiw	a5,a1,1
    80005c24:	0007851b          	sext.w	a0,a5
    80005c28:	00f4a023          	sw	a5,0(s1)
    80005c2c:	0004a823          	sw	zero,16(s1)
    80005c30:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005c34:	00251513          	slli	a0,a0,0x2
    80005c38:	ffffb097          	auipc	ra,0xffffb
    80005c3c:	51c080e7          	jalr	1308(ra) # 80001154 <_Z9mem_allocm>
    80005c40:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80005c44:	01000513          	li	a0,16
    80005c48:	ffffc097          	auipc	ra,0xffffc
    80005c4c:	2ec080e7          	jalr	748(ra) # 80001f34 <_Znwm>
    80005c50:	00050993          	mv	s3,a0
    80005c54:	00000593          	li	a1,0
    80005c58:	ffffc097          	auipc	ra,0xffffc
    80005c5c:	568080e7          	jalr	1384(ra) # 800021c0 <_ZN9SemaphoreC1Ej>
    80005c60:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80005c64:	01000513          	li	a0,16
    80005c68:	ffffc097          	auipc	ra,0xffffc
    80005c6c:	2cc080e7          	jalr	716(ra) # 80001f34 <_Znwm>
    80005c70:	00050993          	mv	s3,a0
    80005c74:	00090593          	mv	a1,s2
    80005c78:	ffffc097          	auipc	ra,0xffffc
    80005c7c:	548080e7          	jalr	1352(ra) # 800021c0 <_ZN9SemaphoreC1Ej>
    80005c80:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80005c84:	01000513          	li	a0,16
    80005c88:	ffffc097          	auipc	ra,0xffffc
    80005c8c:	2ac080e7          	jalr	684(ra) # 80001f34 <_Znwm>
    80005c90:	00050913          	mv	s2,a0
    80005c94:	00100593          	li	a1,1
    80005c98:	ffffc097          	auipc	ra,0xffffc
    80005c9c:	528080e7          	jalr	1320(ra) # 800021c0 <_ZN9SemaphoreC1Ej>
    80005ca0:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80005ca4:	01000513          	li	a0,16
    80005ca8:	ffffc097          	auipc	ra,0xffffc
    80005cac:	28c080e7          	jalr	652(ra) # 80001f34 <_Znwm>
    80005cb0:	00050913          	mv	s2,a0
    80005cb4:	00100593          	li	a1,1
    80005cb8:	ffffc097          	auipc	ra,0xffffc
    80005cbc:	508080e7          	jalr	1288(ra) # 800021c0 <_ZN9SemaphoreC1Ej>
    80005cc0:	0324b823          	sd	s2,48(s1)
}
    80005cc4:	02813083          	ld	ra,40(sp)
    80005cc8:	02013403          	ld	s0,32(sp)
    80005ccc:	01813483          	ld	s1,24(sp)
    80005cd0:	01013903          	ld	s2,16(sp)
    80005cd4:	00813983          	ld	s3,8(sp)
    80005cd8:	03010113          	addi	sp,sp,48
    80005cdc:	00008067          	ret
    80005ce0:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80005ce4:	00098513          	mv	a0,s3
    80005ce8:	ffffc097          	auipc	ra,0xffffc
    80005cec:	274080e7          	jalr	628(ra) # 80001f5c <_ZdlPv>
    80005cf0:	00048513          	mv	a0,s1
    80005cf4:	00007097          	auipc	ra,0x7
    80005cf8:	f34080e7          	jalr	-204(ra) # 8000cc28 <_Unwind_Resume>
    80005cfc:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80005d00:	00098513          	mv	a0,s3
    80005d04:	ffffc097          	auipc	ra,0xffffc
    80005d08:	258080e7          	jalr	600(ra) # 80001f5c <_ZdlPv>
    80005d0c:	00048513          	mv	a0,s1
    80005d10:	00007097          	auipc	ra,0x7
    80005d14:	f18080e7          	jalr	-232(ra) # 8000cc28 <_Unwind_Resume>
    80005d18:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80005d1c:	00090513          	mv	a0,s2
    80005d20:	ffffc097          	auipc	ra,0xffffc
    80005d24:	23c080e7          	jalr	572(ra) # 80001f5c <_ZdlPv>
    80005d28:	00048513          	mv	a0,s1
    80005d2c:	00007097          	auipc	ra,0x7
    80005d30:	efc080e7          	jalr	-260(ra) # 8000cc28 <_Unwind_Resume>
    80005d34:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80005d38:	00090513          	mv	a0,s2
    80005d3c:	ffffc097          	auipc	ra,0xffffc
    80005d40:	220080e7          	jalr	544(ra) # 80001f5c <_ZdlPv>
    80005d44:	00048513          	mv	a0,s1
    80005d48:	00007097          	auipc	ra,0x7
    80005d4c:	ee0080e7          	jalr	-288(ra) # 8000cc28 <_Unwind_Resume>

0000000080005d50 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80005d50:	fe010113          	addi	sp,sp,-32
    80005d54:	00113c23          	sd	ra,24(sp)
    80005d58:	00813823          	sd	s0,16(sp)
    80005d5c:	00913423          	sd	s1,8(sp)
    80005d60:	01213023          	sd	s2,0(sp)
    80005d64:	02010413          	addi	s0,sp,32
    80005d68:	00050493          	mv	s1,a0
    80005d6c:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80005d70:	01853503          	ld	a0,24(a0)
    80005d74:	ffffc097          	auipc	ra,0xffffc
    80005d78:	484080e7          	jalr	1156(ra) # 800021f8 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80005d7c:	0304b503          	ld	a0,48(s1)
    80005d80:	ffffc097          	auipc	ra,0xffffc
    80005d84:	478080e7          	jalr	1144(ra) # 800021f8 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80005d88:	0084b783          	ld	a5,8(s1)
    80005d8c:	0144a703          	lw	a4,20(s1)
    80005d90:	00271713          	slli	a4,a4,0x2
    80005d94:	00e787b3          	add	a5,a5,a4
    80005d98:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005d9c:	0144a783          	lw	a5,20(s1)
    80005da0:	0017879b          	addiw	a5,a5,1
    80005da4:	0004a703          	lw	a4,0(s1)
    80005da8:	02e7e7bb          	remw	a5,a5,a4
    80005dac:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80005db0:	0304b503          	ld	a0,48(s1)
    80005db4:	ffffc097          	auipc	ra,0xffffc
    80005db8:	470080e7          	jalr	1136(ra) # 80002224 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80005dbc:	0204b503          	ld	a0,32(s1)
    80005dc0:	ffffc097          	auipc	ra,0xffffc
    80005dc4:	464080e7          	jalr	1124(ra) # 80002224 <_ZN9Semaphore6signalEv>

}
    80005dc8:	01813083          	ld	ra,24(sp)
    80005dcc:	01013403          	ld	s0,16(sp)
    80005dd0:	00813483          	ld	s1,8(sp)
    80005dd4:	00013903          	ld	s2,0(sp)
    80005dd8:	02010113          	addi	sp,sp,32
    80005ddc:	00008067          	ret

0000000080005de0 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80005de0:	fe010113          	addi	sp,sp,-32
    80005de4:	00113c23          	sd	ra,24(sp)
    80005de8:	00813823          	sd	s0,16(sp)
    80005dec:	00913423          	sd	s1,8(sp)
    80005df0:	01213023          	sd	s2,0(sp)
    80005df4:	02010413          	addi	s0,sp,32
    80005df8:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80005dfc:	02053503          	ld	a0,32(a0)
    80005e00:	ffffc097          	auipc	ra,0xffffc
    80005e04:	3f8080e7          	jalr	1016(ra) # 800021f8 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80005e08:	0284b503          	ld	a0,40(s1)
    80005e0c:	ffffc097          	auipc	ra,0xffffc
    80005e10:	3ec080e7          	jalr	1004(ra) # 800021f8 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80005e14:	0084b703          	ld	a4,8(s1)
    80005e18:	0104a783          	lw	a5,16(s1)
    80005e1c:	00279693          	slli	a3,a5,0x2
    80005e20:	00d70733          	add	a4,a4,a3
    80005e24:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005e28:	0017879b          	addiw	a5,a5,1
    80005e2c:	0004a703          	lw	a4,0(s1)
    80005e30:	02e7e7bb          	remw	a5,a5,a4
    80005e34:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80005e38:	0284b503          	ld	a0,40(s1)
    80005e3c:	ffffc097          	auipc	ra,0xffffc
    80005e40:	3e8080e7          	jalr	1000(ra) # 80002224 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80005e44:	0184b503          	ld	a0,24(s1)
    80005e48:	ffffc097          	auipc	ra,0xffffc
    80005e4c:	3dc080e7          	jalr	988(ra) # 80002224 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005e50:	00090513          	mv	a0,s2
    80005e54:	01813083          	ld	ra,24(sp)
    80005e58:	01013403          	ld	s0,16(sp)
    80005e5c:	00813483          	ld	s1,8(sp)
    80005e60:	00013903          	ld	s2,0(sp)
    80005e64:	02010113          	addi	sp,sp,32
    80005e68:	00008067          	ret

0000000080005e6c <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80005e6c:	fe010113          	addi	sp,sp,-32
    80005e70:	00113c23          	sd	ra,24(sp)
    80005e74:	00813823          	sd	s0,16(sp)
    80005e78:	00913423          	sd	s1,8(sp)
    80005e7c:	01213023          	sd	s2,0(sp)
    80005e80:	02010413          	addi	s0,sp,32
    80005e84:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80005e88:	02853503          	ld	a0,40(a0)
    80005e8c:	ffffc097          	auipc	ra,0xffffc
    80005e90:	36c080e7          	jalr	876(ra) # 800021f8 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80005e94:	0304b503          	ld	a0,48(s1)
    80005e98:	ffffc097          	auipc	ra,0xffffc
    80005e9c:	360080e7          	jalr	864(ra) # 800021f8 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80005ea0:	0144a783          	lw	a5,20(s1)
    80005ea4:	0104a903          	lw	s2,16(s1)
    80005ea8:	0327ce63          	blt	a5,s2,80005ee4 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80005eac:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80005eb0:	0304b503          	ld	a0,48(s1)
    80005eb4:	ffffc097          	auipc	ra,0xffffc
    80005eb8:	370080e7          	jalr	880(ra) # 80002224 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80005ebc:	0284b503          	ld	a0,40(s1)
    80005ec0:	ffffc097          	auipc	ra,0xffffc
    80005ec4:	364080e7          	jalr	868(ra) # 80002224 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005ec8:	00090513          	mv	a0,s2
    80005ecc:	01813083          	ld	ra,24(sp)
    80005ed0:	01013403          	ld	s0,16(sp)
    80005ed4:	00813483          	ld	s1,8(sp)
    80005ed8:	00013903          	ld	s2,0(sp)
    80005edc:	02010113          	addi	sp,sp,32
    80005ee0:	00008067          	ret
        ret = cap - head + tail;
    80005ee4:	0004a703          	lw	a4,0(s1)
    80005ee8:	4127093b          	subw	s2,a4,s2
    80005eec:	00f9093b          	addw	s2,s2,a5
    80005ef0:	fc1ff06f          	j	80005eb0 <_ZN9BufferCPP6getCntEv+0x44>

0000000080005ef4 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80005ef4:	fe010113          	addi	sp,sp,-32
    80005ef8:	00113c23          	sd	ra,24(sp)
    80005efc:	00813823          	sd	s0,16(sp)
    80005f00:	00913423          	sd	s1,8(sp)
    80005f04:	02010413          	addi	s0,sp,32
    80005f08:	00050493          	mv	s1,a0
    putc('\n');
    80005f0c:	00a00513          	li	a0,10
    80005f10:	ffffb097          	auipc	ra,0xffffb
    80005f14:	4b8080e7          	jalr	1208(ra) # 800013c8 <_Z4putcc>
    printString("Buffer deleted!\n");
    80005f18:	00003517          	auipc	a0,0x3
    80005f1c:	36850513          	addi	a0,a0,872 # 80009280 <_ZZ12printIntegermE6digits+0x1b8>
    80005f20:	00000097          	auipc	ra,0x0
    80005f24:	a0c080e7          	jalr	-1524(ra) # 8000592c <_Z11printStringPKc>
    while (getCnt()) {
    80005f28:	00048513          	mv	a0,s1
    80005f2c:	00000097          	auipc	ra,0x0
    80005f30:	f40080e7          	jalr	-192(ra) # 80005e6c <_ZN9BufferCPP6getCntEv>
    80005f34:	02050c63          	beqz	a0,80005f6c <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80005f38:	0084b783          	ld	a5,8(s1)
    80005f3c:	0104a703          	lw	a4,16(s1)
    80005f40:	00271713          	slli	a4,a4,0x2
    80005f44:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80005f48:	0007c503          	lbu	a0,0(a5)
    80005f4c:	ffffb097          	auipc	ra,0xffffb
    80005f50:	47c080e7          	jalr	1148(ra) # 800013c8 <_Z4putcc>
        head = (head + 1) % cap;
    80005f54:	0104a783          	lw	a5,16(s1)
    80005f58:	0017879b          	addiw	a5,a5,1
    80005f5c:	0004a703          	lw	a4,0(s1)
    80005f60:	02e7e7bb          	remw	a5,a5,a4
    80005f64:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80005f68:	fc1ff06f          	j	80005f28 <_ZN9BufferCPPD1Ev+0x34>
    putc('!');
    80005f6c:	02100513          	li	a0,33
    80005f70:	ffffb097          	auipc	ra,0xffffb
    80005f74:	458080e7          	jalr	1112(ra) # 800013c8 <_Z4putcc>
    putc('\n');
    80005f78:	00a00513          	li	a0,10
    80005f7c:	ffffb097          	auipc	ra,0xffffb
    80005f80:	44c080e7          	jalr	1100(ra) # 800013c8 <_Z4putcc>
    mem_free(buffer);
    80005f84:	0084b503          	ld	a0,8(s1)
    80005f88:	ffffb097          	auipc	ra,0xffffb
    80005f8c:	20c080e7          	jalr	524(ra) # 80001194 <_Z8mem_freePv>
    delete itemAvailable;
    80005f90:	0204b503          	ld	a0,32(s1)
    80005f94:	00050863          	beqz	a0,80005fa4 <_ZN9BufferCPPD1Ev+0xb0>
    80005f98:	00053783          	ld	a5,0(a0)
    80005f9c:	0087b783          	ld	a5,8(a5)
    80005fa0:	000780e7          	jalr	a5
    delete spaceAvailable;
    80005fa4:	0184b503          	ld	a0,24(s1)
    80005fa8:	00050863          	beqz	a0,80005fb8 <_ZN9BufferCPPD1Ev+0xc4>
    80005fac:	00053783          	ld	a5,0(a0)
    80005fb0:	0087b783          	ld	a5,8(a5)
    80005fb4:	000780e7          	jalr	a5
    delete mutexTail;
    80005fb8:	0304b503          	ld	a0,48(s1)
    80005fbc:	00050863          	beqz	a0,80005fcc <_ZN9BufferCPPD1Ev+0xd8>
    80005fc0:	00053783          	ld	a5,0(a0)
    80005fc4:	0087b783          	ld	a5,8(a5)
    80005fc8:	000780e7          	jalr	a5
    delete mutexHead;
    80005fcc:	0284b503          	ld	a0,40(s1)
    80005fd0:	00050863          	beqz	a0,80005fe0 <_ZN9BufferCPPD1Ev+0xec>
    80005fd4:	00053783          	ld	a5,0(a0)
    80005fd8:	0087b783          	ld	a5,8(a5)
    80005fdc:	000780e7          	jalr	a5
}
    80005fe0:	01813083          	ld	ra,24(sp)
    80005fe4:	01013403          	ld	s0,16(sp)
    80005fe8:	00813483          	ld	s1,8(sp)
    80005fec:	02010113          	addi	sp,sp,32
    80005ff0:	00008067          	ret

0000000080005ff4 <_Z8userMainv>:
#include "ConsumerProducer_CPP_API_test.hpp"


#endif

void userMain() {
    80005ff4:	fe010113          	addi	sp,sp,-32
    80005ff8:	00113c23          	sd	ra,24(sp)
    80005ffc:	00813823          	sd	s0,16(sp)
    80006000:	00913423          	sd	s1,8(sp)
    80006004:	02010413          	addi	s0,sp,32
    pprintString("Unesite broj testa? [1-7]\n");
    80006008:	00003517          	auipc	a0,0x3
    8000600c:	29050513          	addi	a0,a0,656 # 80009298 <_ZZ12printIntegermE6digits+0x1d0>
    80006010:	ffffd097          	auipc	ra,0xffffd
    80006014:	12c080e7          	jalr	300(ra) # 8000313c <_Z12pprintStringPKc>
    int test = getc()-'0';
    80006018:	ffffb097          	auipc	ra,0xffffb
    8000601c:	384080e7          	jalr	900(ra) # 8000139c <_Z4getcv>
    80006020:	fd05049b          	addiw	s1,a0,-48
    getc();
    80006024:	ffffb097          	auipc	ra,0xffffb
    80006028:	378080e7          	jalr	888(ra) # 8000139c <_Z4getcv>
            pprintString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    8000602c:	00700793          	li	a5,7
    80006030:	1097e263          	bltu	a5,s1,80006134 <_Z8userMainv+0x140>
    80006034:	00249493          	slli	s1,s1,0x2
    80006038:	00003717          	auipc	a4,0x3
    8000603c:	4b870713          	addi	a4,a4,1208 # 800094f0 <_ZZ12printIntegermE6digits+0x428>
    80006040:	00e484b3          	add	s1,s1,a4
    80006044:	0004a783          	lw	a5,0(s1)
    80006048:	00e787b3          	add	a5,a5,a4
    8000604c:	00078067          	jr	a5
        case 1:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_C_API_test();
    80006050:	fffff097          	auipc	ra,0xfffff
    80006054:	f54080e7          	jalr	-172(ra) # 80004fa4 <_Z18Threads_C_API_testv>
            pprintString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    80006058:	00003517          	auipc	a0,0x3
    8000605c:	26050513          	addi	a0,a0,608 # 800092b8 <_ZZ12printIntegermE6digits+0x1f0>
    80006060:	ffffd097          	auipc	ra,0xffffd
    80006064:	0dc080e7          	jalr	220(ra) # 8000313c <_Z12pprintStringPKc>
#endif
            break;
        default:
            pprintString("Niste uneli odgovarajuci broj za test\n");
    }
    80006068:	01813083          	ld	ra,24(sp)
    8000606c:	01013403          	ld	s0,16(sp)
    80006070:	00813483          	ld	s1,8(sp)
    80006074:	02010113          	addi	sp,sp,32
    80006078:	00008067          	ret
            Threads_CPP_API_test();
    8000607c:	ffffe097          	auipc	ra,0xffffe
    80006080:	e08080e7          	jalr	-504(ra) # 80003e84 <_Z20Threads_CPP_API_testv>
            pprintString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    80006084:	00003517          	auipc	a0,0x3
    80006088:	27450513          	addi	a0,a0,628 # 800092f8 <_ZZ12printIntegermE6digits+0x230>
    8000608c:	ffffd097          	auipc	ra,0xffffd
    80006090:	0b0080e7          	jalr	176(ra) # 8000313c <_Z12pprintStringPKc>
            break;
    80006094:	fd5ff06f          	j	80006068 <_Z8userMainv+0x74>
            producerConsumer_C_API();
    80006098:	ffffd097          	auipc	ra,0xffffd
    8000609c:	688080e7          	jalr	1672(ra) # 80003720 <_Z22producerConsumer_C_APIv>
            pprintString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    800060a0:	00003517          	auipc	a0,0x3
    800060a4:	29850513          	addi	a0,a0,664 # 80009338 <_ZZ12printIntegermE6digits+0x270>
    800060a8:	ffffd097          	auipc	ra,0xffffd
    800060ac:	094080e7          	jalr	148(ra) # 8000313c <_Z12pprintStringPKc>
            break;
    800060b0:	fb9ff06f          	j	80006068 <_Z8userMainv+0x74>
            producerConsumer_CPP_Sync_API();
    800060b4:	fffff097          	auipc	ra,0xfffff
    800060b8:	234080e7          	jalr	564(ra) # 800052e8 <_Z29producerConsumer_CPP_Sync_APIv>
            pprintString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    800060bc:	00003517          	auipc	a0,0x3
    800060c0:	2cc50513          	addi	a0,a0,716 # 80009388 <_ZZ12printIntegermE6digits+0x2c0>
    800060c4:	ffffd097          	auipc	ra,0xffffd
    800060c8:	078080e7          	jalr	120(ra) # 8000313c <_Z12pprintStringPKc>
            break;
    800060cc:	f9dff06f          	j	80006068 <_Z8userMainv+0x74>
            testSleeping();
    800060d0:	00000097          	auipc	ra,0x0
    800060d4:	11c080e7          	jalr	284(ra) # 800061ec <_Z12testSleepingv>
            pprintString("TEST 5 (zadatak 4., thread_sleep test C API)\n");
    800060d8:	00003517          	auipc	a0,0x3
    800060dc:	30850513          	addi	a0,a0,776 # 800093e0 <_ZZ12printIntegermE6digits+0x318>
    800060e0:	ffffd097          	auipc	ra,0xffffd
    800060e4:	05c080e7          	jalr	92(ra) # 8000313c <_Z12pprintStringPKc>
            break;
    800060e8:	f81ff06f          	j	80006068 <_Z8userMainv+0x74>
            testConsumerProducer();
    800060ec:	ffffe097          	auipc	ra,0xffffe
    800060f0:	258080e7          	jalr	600(ra) # 80004344 <_Z20testConsumerProducerv>
            pprintString("TEST 6 (zadatak 4. CPP API i asinhrona promena konteksta)\n");
    800060f4:	00003517          	auipc	a0,0x3
    800060f8:	31c50513          	addi	a0,a0,796 # 80009410 <_ZZ12printIntegermE6digits+0x348>
    800060fc:	ffffd097          	auipc	ra,0xffffd
    80006100:	040080e7          	jalr	64(ra) # 8000313c <_Z12pprintStringPKc>
            break;
    80006104:	f65ff06f          	j	80006068 <_Z8userMainv+0x74>
            System_Mode_test();
    80006108:	00000097          	auipc	ra,0x0
    8000610c:	664080e7          	jalr	1636(ra) # 8000676c <_Z16System_Mode_testv>
            pprintString("Test se nije uspesno zavrsio\n");
    80006110:	00003517          	auipc	a0,0x3
    80006114:	34050513          	addi	a0,a0,832 # 80009450 <_ZZ12printIntegermE6digits+0x388>
    80006118:	ffffd097          	auipc	ra,0xffffd
    8000611c:	024080e7          	jalr	36(ra) # 8000313c <_Z12pprintStringPKc>
            pprintString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80006120:	00003517          	auipc	a0,0x3
    80006124:	35050513          	addi	a0,a0,848 # 80009470 <_ZZ12printIntegermE6digits+0x3a8>
    80006128:	ffffd097          	auipc	ra,0xffffd
    8000612c:	014080e7          	jalr	20(ra) # 8000313c <_Z12pprintStringPKc>
            break;
    80006130:	f39ff06f          	j	80006068 <_Z8userMainv+0x74>
            pprintString("Niste uneli odgovarajuci broj za test\n");
    80006134:	00003517          	auipc	a0,0x3
    80006138:	39450513          	addi	a0,a0,916 # 800094c8 <_ZZ12printIntegermE6digits+0x400>
    8000613c:	ffffd097          	auipc	ra,0xffffd
    80006140:	000080e7          	jalr	ra # 8000313c <_Z12pprintStringPKc>
    80006144:	f25ff06f          	j	80006068 <_Z8userMainv+0x74>

0000000080006148 <_ZL9sleepyRunPv>:

#include "printing.hpp"

static  bool finished[2];

static void sleepyRun(void *arg) {
    80006148:	fe010113          	addi	sp,sp,-32
    8000614c:	00113c23          	sd	ra,24(sp)
    80006150:	00813823          	sd	s0,16(sp)
    80006154:	00913423          	sd	s1,8(sp)
    80006158:	01213023          	sd	s2,0(sp)
    8000615c:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80006160:	00053903          	ld	s2,0(a0)
    int i = 6;
    80006164:	00600493          	li	s1,6
    while (--i > 0) {
    80006168:	fff4849b          	addiw	s1,s1,-1
    8000616c:	04905463          	blez	s1,800061b4 <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    80006170:	00003517          	auipc	a0,0x3
    80006174:	3a050513          	addi	a0,a0,928 # 80009510 <_ZZ12printIntegermE6digits+0x448>
    80006178:	fffff097          	auipc	ra,0xfffff
    8000617c:	7b4080e7          	jalr	1972(ra) # 8000592c <_Z11printStringPKc>
        printInt(sleep_time);
    80006180:	00000613          	li	a2,0
    80006184:	00a00593          	li	a1,10
    80006188:	0009051b          	sext.w	a0,s2
    8000618c:	00000097          	auipc	ra,0x0
    80006190:	950080e7          	jalr	-1712(ra) # 80005adc <_Z8printIntiii>
        printString(" !\n");
    80006194:	00003517          	auipc	a0,0x3
    80006198:	38450513          	addi	a0,a0,900 # 80009518 <_ZZ12printIntegermE6digits+0x450>
    8000619c:	fffff097          	auipc	ra,0xfffff
    800061a0:	790080e7          	jalr	1936(ra) # 8000592c <_Z11printStringPKc>
        time_sleep(sleep_time);
    800061a4:	00090513          	mv	a0,s2
    800061a8:	ffffb097          	auipc	ra,0xffffb
    800061ac:	1c4080e7          	jalr	452(ra) # 8000136c <_Z10time_sleepm>
    while (--i > 0) {
    800061b0:	fb9ff06f          	j	80006168 <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    800061b4:	00a00793          	li	a5,10
    800061b8:	02f95933          	divu	s2,s2,a5
    800061bc:	fff90913          	addi	s2,s2,-1
    800061c0:	00006797          	auipc	a5,0x6
    800061c4:	99878793          	addi	a5,a5,-1640 # 8000bb58 <_ZL8finished>
    800061c8:	01278933          	add	s2,a5,s2
    800061cc:	00100793          	li	a5,1
    800061d0:	00f90023          	sb	a5,0(s2)
}
    800061d4:	01813083          	ld	ra,24(sp)
    800061d8:	01013403          	ld	s0,16(sp)
    800061dc:	00813483          	ld	s1,8(sp)
    800061e0:	00013903          	ld	s2,0(sp)
    800061e4:	02010113          	addi	sp,sp,32
    800061e8:	00008067          	ret

00000000800061ec <_Z12testSleepingv>:

void testSleeping() {
    800061ec:	fc010113          	addi	sp,sp,-64
    800061f0:	02113c23          	sd	ra,56(sp)
    800061f4:	02813823          	sd	s0,48(sp)
    800061f8:	02913423          	sd	s1,40(sp)
    800061fc:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80006200:	00a00793          	li	a5,10
    80006204:	fcf43823          	sd	a5,-48(s0)
    80006208:	01400793          	li	a5,20
    8000620c:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80006210:	00000493          	li	s1,0
    80006214:	02c0006f          	j	80006240 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80006218:	00349793          	slli	a5,s1,0x3
    8000621c:	fd040613          	addi	a2,s0,-48
    80006220:	00f60633          	add	a2,a2,a5
    80006224:	00000597          	auipc	a1,0x0
    80006228:	f2458593          	addi	a1,a1,-220 # 80006148 <_ZL9sleepyRunPv>
    8000622c:	fc040513          	addi	a0,s0,-64
    80006230:	00f50533          	add	a0,a0,a5
    80006234:	ffffb097          	auipc	ra,0xffffb
    80006238:	fec080e7          	jalr	-20(ra) # 80001220 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    8000623c:	0014849b          	addiw	s1,s1,1
    80006240:	00100793          	li	a5,1
    80006244:	fc97dae3          	bge	a5,s1,80006218 <_Z12testSleepingv+0x2c>
    80006248:	00c0006f          	j	80006254 <_Z12testSleepingv+0x68>
    }

    while (!(finished[0] && finished[1])) {
        thread_dispatch();
    8000624c:	ffffb097          	auipc	ra,0xffffb
    80006250:	038080e7          	jalr	56(ra) # 80001284 <_Z15thread_dispatchv>
    while (!(finished[0] && finished[1])) {
    80006254:	00006797          	auipc	a5,0x6
    80006258:	9047c783          	lbu	a5,-1788(a5) # 8000bb58 <_ZL8finished>
    8000625c:	fe0788e3          	beqz	a5,8000624c <_Z12testSleepingv+0x60>
    80006260:	00006797          	auipc	a5,0x6
    80006264:	8f97c783          	lbu	a5,-1799(a5) # 8000bb59 <_ZL8finished+0x1>
    80006268:	fe0782e3          	beqz	a5,8000624c <_Z12testSleepingv+0x60>
    }
}
    8000626c:	03813083          	ld	ra,56(sp)
    80006270:	03013403          	ld	s0,48(sp)
    80006274:	02813483          	ld	s1,40(sp)
    80006278:	04010113          	addi	sp,sp,64
    8000627c:	00008067          	ret

0000000080006280 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80006280:	fe010113          	addi	sp,sp,-32
    80006284:	00113c23          	sd	ra,24(sp)
    80006288:	00813823          	sd	s0,16(sp)
    8000628c:	00913423          	sd	s1,8(sp)
    80006290:	01213023          	sd	s2,0(sp)
    80006294:	02010413          	addi	s0,sp,32
    80006298:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    8000629c:	00100793          	li	a5,1
    800062a0:	02a7f863          	bgeu	a5,a0,800062d0 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800062a4:	00a00793          	li	a5,10
    800062a8:	02f577b3          	remu	a5,a0,a5
    800062ac:	02078e63          	beqz	a5,800062e8 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800062b0:	fff48513          	addi	a0,s1,-1
    800062b4:	00000097          	auipc	ra,0x0
    800062b8:	fcc080e7          	jalr	-52(ra) # 80006280 <_ZL9fibonaccim>
    800062bc:	00050913          	mv	s2,a0
    800062c0:	ffe48513          	addi	a0,s1,-2
    800062c4:	00000097          	auipc	ra,0x0
    800062c8:	fbc080e7          	jalr	-68(ra) # 80006280 <_ZL9fibonaccim>
    800062cc:	00a90533          	add	a0,s2,a0
}
    800062d0:	01813083          	ld	ra,24(sp)
    800062d4:	01013403          	ld	s0,16(sp)
    800062d8:	00813483          	ld	s1,8(sp)
    800062dc:	00013903          	ld	s2,0(sp)
    800062e0:	02010113          	addi	sp,sp,32
    800062e4:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800062e8:	ffffb097          	auipc	ra,0xffffb
    800062ec:	f9c080e7          	jalr	-100(ra) # 80001284 <_Z15thread_dispatchv>
    800062f0:	fc1ff06f          	j	800062b0 <_ZL9fibonaccim+0x30>

00000000800062f4 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    800062f4:	fe010113          	addi	sp,sp,-32
    800062f8:	00113c23          	sd	ra,24(sp)
    800062fc:	00813823          	sd	s0,16(sp)
    80006300:	00913423          	sd	s1,8(sp)
    80006304:	01213023          	sd	s2,0(sp)
    80006308:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    8000630c:	00a00493          	li	s1,10
    80006310:	0400006f          	j	80006350 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80006314:	00003517          	auipc	a0,0x3
    80006318:	ed450513          	addi	a0,a0,-300 # 800091e8 <_ZZ12printIntegermE6digits+0x120>
    8000631c:	fffff097          	auipc	ra,0xfffff
    80006320:	610080e7          	jalr	1552(ra) # 8000592c <_Z11printStringPKc>
    80006324:	00000613          	li	a2,0
    80006328:	00a00593          	li	a1,10
    8000632c:	00048513          	mv	a0,s1
    80006330:	fffff097          	auipc	ra,0xfffff
    80006334:	7ac080e7          	jalr	1964(ra) # 80005adc <_Z8printIntiii>
    80006338:	00003517          	auipc	a0,0x3
    8000633c:	0a050513          	addi	a0,a0,160 # 800093d8 <_ZZ12printIntegermE6digits+0x310>
    80006340:	fffff097          	auipc	ra,0xfffff
    80006344:	5ec080e7          	jalr	1516(ra) # 8000592c <_Z11printStringPKc>
    for (; i < 13; i++) {
    80006348:	0014849b          	addiw	s1,s1,1
    8000634c:	0ff4f493          	andi	s1,s1,255
    80006350:	00c00793          	li	a5,12
    80006354:	fc97f0e3          	bgeu	a5,s1,80006314 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80006358:	00003517          	auipc	a0,0x3
    8000635c:	e9850513          	addi	a0,a0,-360 # 800091f0 <_ZZ12printIntegermE6digits+0x128>
    80006360:	fffff097          	auipc	ra,0xfffff
    80006364:	5cc080e7          	jalr	1484(ra) # 8000592c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80006368:	00500313          	li	t1,5
    thread_dispatch();
    8000636c:	ffffb097          	auipc	ra,0xffffb
    80006370:	f18080e7          	jalr	-232(ra) # 80001284 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80006374:	01000513          	li	a0,16
    80006378:	00000097          	auipc	ra,0x0
    8000637c:	f08080e7          	jalr	-248(ra) # 80006280 <_ZL9fibonaccim>
    80006380:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80006384:	00003517          	auipc	a0,0x3
    80006388:	e7c50513          	addi	a0,a0,-388 # 80009200 <_ZZ12printIntegermE6digits+0x138>
    8000638c:	fffff097          	auipc	ra,0xfffff
    80006390:	5a0080e7          	jalr	1440(ra) # 8000592c <_Z11printStringPKc>
    80006394:	00000613          	li	a2,0
    80006398:	00a00593          	li	a1,10
    8000639c:	0009051b          	sext.w	a0,s2
    800063a0:	fffff097          	auipc	ra,0xfffff
    800063a4:	73c080e7          	jalr	1852(ra) # 80005adc <_Z8printIntiii>
    800063a8:	00003517          	auipc	a0,0x3
    800063ac:	03050513          	addi	a0,a0,48 # 800093d8 <_ZZ12printIntegermE6digits+0x310>
    800063b0:	fffff097          	auipc	ra,0xfffff
    800063b4:	57c080e7          	jalr	1404(ra) # 8000592c <_Z11printStringPKc>
    800063b8:	0400006f          	j	800063f8 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800063bc:	00003517          	auipc	a0,0x3
    800063c0:	e2c50513          	addi	a0,a0,-468 # 800091e8 <_ZZ12printIntegermE6digits+0x120>
    800063c4:	fffff097          	auipc	ra,0xfffff
    800063c8:	568080e7          	jalr	1384(ra) # 8000592c <_Z11printStringPKc>
    800063cc:	00000613          	li	a2,0
    800063d0:	00a00593          	li	a1,10
    800063d4:	00048513          	mv	a0,s1
    800063d8:	fffff097          	auipc	ra,0xfffff
    800063dc:	704080e7          	jalr	1796(ra) # 80005adc <_Z8printIntiii>
    800063e0:	00003517          	auipc	a0,0x3
    800063e4:	ff850513          	addi	a0,a0,-8 # 800093d8 <_ZZ12printIntegermE6digits+0x310>
    800063e8:	fffff097          	auipc	ra,0xfffff
    800063ec:	544080e7          	jalr	1348(ra) # 8000592c <_Z11printStringPKc>
    for (; i < 16; i++) {
    800063f0:	0014849b          	addiw	s1,s1,1
    800063f4:	0ff4f493          	andi	s1,s1,255
    800063f8:	00f00793          	li	a5,15
    800063fc:	fc97f0e3          	bgeu	a5,s1,800063bc <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80006400:	00003517          	auipc	a0,0x3
    80006404:	e1050513          	addi	a0,a0,-496 # 80009210 <_ZZ12printIntegermE6digits+0x148>
    80006408:	fffff097          	auipc	ra,0xfffff
    8000640c:	524080e7          	jalr	1316(ra) # 8000592c <_Z11printStringPKc>
    finishedD = true;
    80006410:	00100793          	li	a5,1
    80006414:	00005717          	auipc	a4,0x5
    80006418:	74f70323          	sb	a5,1862(a4) # 8000bb5a <_ZL9finishedD>
    thread_dispatch();
    8000641c:	ffffb097          	auipc	ra,0xffffb
    80006420:	e68080e7          	jalr	-408(ra) # 80001284 <_Z15thread_dispatchv>
}
    80006424:	01813083          	ld	ra,24(sp)
    80006428:	01013403          	ld	s0,16(sp)
    8000642c:	00813483          	ld	s1,8(sp)
    80006430:	00013903          	ld	s2,0(sp)
    80006434:	02010113          	addi	sp,sp,32
    80006438:	00008067          	ret

000000008000643c <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    8000643c:	fe010113          	addi	sp,sp,-32
    80006440:	00113c23          	sd	ra,24(sp)
    80006444:	00813823          	sd	s0,16(sp)
    80006448:	00913423          	sd	s1,8(sp)
    8000644c:	01213023          	sd	s2,0(sp)
    80006450:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80006454:	00000493          	li	s1,0
    80006458:	0400006f          	j	80006498 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    8000645c:	00003517          	auipc	a0,0x3
    80006460:	bfc50513          	addi	a0,a0,-1028 # 80009058 <CONSOLE_STATUS+0x48>
    80006464:	fffff097          	auipc	ra,0xfffff
    80006468:	4c8080e7          	jalr	1224(ra) # 8000592c <_Z11printStringPKc>
    8000646c:	00000613          	li	a2,0
    80006470:	00a00593          	li	a1,10
    80006474:	00048513          	mv	a0,s1
    80006478:	fffff097          	auipc	ra,0xfffff
    8000647c:	664080e7          	jalr	1636(ra) # 80005adc <_Z8printIntiii>
    80006480:	00003517          	auipc	a0,0x3
    80006484:	f5850513          	addi	a0,a0,-168 # 800093d8 <_ZZ12printIntegermE6digits+0x310>
    80006488:	fffff097          	auipc	ra,0xfffff
    8000648c:	4a4080e7          	jalr	1188(ra) # 8000592c <_Z11printStringPKc>
    for (; i < 3; i++) {
    80006490:	0014849b          	addiw	s1,s1,1
    80006494:	0ff4f493          	andi	s1,s1,255
    80006498:	00200793          	li	a5,2
    8000649c:	fc97f0e3          	bgeu	a5,s1,8000645c <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    800064a0:	00003517          	auipc	a0,0x3
    800064a4:	d2050513          	addi	a0,a0,-736 # 800091c0 <_ZZ12printIntegermE6digits+0xf8>
    800064a8:	fffff097          	auipc	ra,0xfffff
    800064ac:	484080e7          	jalr	1156(ra) # 8000592c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800064b0:	00700313          	li	t1,7
    thread_dispatch();
    800064b4:	ffffb097          	auipc	ra,0xffffb
    800064b8:	dd0080e7          	jalr	-560(ra) # 80001284 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800064bc:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    800064c0:	00003517          	auipc	a0,0x3
    800064c4:	d1050513          	addi	a0,a0,-752 # 800091d0 <_ZZ12printIntegermE6digits+0x108>
    800064c8:	fffff097          	auipc	ra,0xfffff
    800064cc:	464080e7          	jalr	1124(ra) # 8000592c <_Z11printStringPKc>
    800064d0:	00000613          	li	a2,0
    800064d4:	00a00593          	li	a1,10
    800064d8:	0009051b          	sext.w	a0,s2
    800064dc:	fffff097          	auipc	ra,0xfffff
    800064e0:	600080e7          	jalr	1536(ra) # 80005adc <_Z8printIntiii>
    800064e4:	00003517          	auipc	a0,0x3
    800064e8:	ef450513          	addi	a0,a0,-268 # 800093d8 <_ZZ12printIntegermE6digits+0x310>
    800064ec:	fffff097          	auipc	ra,0xfffff
    800064f0:	440080e7          	jalr	1088(ra) # 8000592c <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    800064f4:	00c00513          	li	a0,12
    800064f8:	00000097          	auipc	ra,0x0
    800064fc:	d88080e7          	jalr	-632(ra) # 80006280 <_ZL9fibonaccim>
    80006500:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80006504:	00003517          	auipc	a0,0x3
    80006508:	cd450513          	addi	a0,a0,-812 # 800091d8 <_ZZ12printIntegermE6digits+0x110>
    8000650c:	fffff097          	auipc	ra,0xfffff
    80006510:	420080e7          	jalr	1056(ra) # 8000592c <_Z11printStringPKc>
    80006514:	00000613          	li	a2,0
    80006518:	00a00593          	li	a1,10
    8000651c:	0009051b          	sext.w	a0,s2
    80006520:	fffff097          	auipc	ra,0xfffff
    80006524:	5bc080e7          	jalr	1468(ra) # 80005adc <_Z8printIntiii>
    80006528:	00003517          	auipc	a0,0x3
    8000652c:	eb050513          	addi	a0,a0,-336 # 800093d8 <_ZZ12printIntegermE6digits+0x310>
    80006530:	fffff097          	auipc	ra,0xfffff
    80006534:	3fc080e7          	jalr	1020(ra) # 8000592c <_Z11printStringPKc>
    80006538:	0400006f          	j	80006578 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    8000653c:	00003517          	auipc	a0,0x3
    80006540:	b1c50513          	addi	a0,a0,-1252 # 80009058 <CONSOLE_STATUS+0x48>
    80006544:	fffff097          	auipc	ra,0xfffff
    80006548:	3e8080e7          	jalr	1000(ra) # 8000592c <_Z11printStringPKc>
    8000654c:	00000613          	li	a2,0
    80006550:	00a00593          	li	a1,10
    80006554:	00048513          	mv	a0,s1
    80006558:	fffff097          	auipc	ra,0xfffff
    8000655c:	584080e7          	jalr	1412(ra) # 80005adc <_Z8printIntiii>
    80006560:	00003517          	auipc	a0,0x3
    80006564:	e7850513          	addi	a0,a0,-392 # 800093d8 <_ZZ12printIntegermE6digits+0x310>
    80006568:	fffff097          	auipc	ra,0xfffff
    8000656c:	3c4080e7          	jalr	964(ra) # 8000592c <_Z11printStringPKc>
    for (; i < 6; i++) {
    80006570:	0014849b          	addiw	s1,s1,1
    80006574:	0ff4f493          	andi	s1,s1,255
    80006578:	00500793          	li	a5,5
    8000657c:	fc97f0e3          	bgeu	a5,s1,8000653c <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80006580:	00003517          	auipc	a0,0x3
    80006584:	ab050513          	addi	a0,a0,-1360 # 80009030 <CONSOLE_STATUS+0x20>
    80006588:	fffff097          	auipc	ra,0xfffff
    8000658c:	3a4080e7          	jalr	932(ra) # 8000592c <_Z11printStringPKc>
    finishedC = true;
    80006590:	00100793          	li	a5,1
    80006594:	00005717          	auipc	a4,0x5
    80006598:	5cf703a3          	sb	a5,1479(a4) # 8000bb5b <_ZL9finishedC>
    thread_dispatch();
    8000659c:	ffffb097          	auipc	ra,0xffffb
    800065a0:	ce8080e7          	jalr	-792(ra) # 80001284 <_Z15thread_dispatchv>
}
    800065a4:	01813083          	ld	ra,24(sp)
    800065a8:	01013403          	ld	s0,16(sp)
    800065ac:	00813483          	ld	s1,8(sp)
    800065b0:	00013903          	ld	s2,0(sp)
    800065b4:	02010113          	addi	sp,sp,32
    800065b8:	00008067          	ret

00000000800065bc <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    800065bc:	fe010113          	addi	sp,sp,-32
    800065c0:	00113c23          	sd	ra,24(sp)
    800065c4:	00813823          	sd	s0,16(sp)
    800065c8:	00913423          	sd	s1,8(sp)
    800065cc:	01213023          	sd	s2,0(sp)
    800065d0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800065d4:	00000913          	li	s2,0
    800065d8:	0400006f          	j	80006618 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    800065dc:	ffffb097          	auipc	ra,0xffffb
    800065e0:	ca8080e7          	jalr	-856(ra) # 80001284 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800065e4:	00148493          	addi	s1,s1,1
    800065e8:	000027b7          	lui	a5,0x2
    800065ec:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800065f0:	0097ee63          	bltu	a5,s1,8000660c <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800065f4:	00000713          	li	a4,0
    800065f8:	000077b7          	lui	a5,0x7
    800065fc:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006600:	fce7eee3          	bltu	a5,a4,800065dc <_ZL11workerBodyBPv+0x20>
    80006604:	00170713          	addi	a4,a4,1
    80006608:	ff1ff06f          	j	800065f8 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    8000660c:	00a00793          	li	a5,10
    80006610:	04f90663          	beq	s2,a5,8000665c <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80006614:	00190913          	addi	s2,s2,1
    80006618:	00f00793          	li	a5,15
    8000661c:	0527e463          	bltu	a5,s2,80006664 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80006620:	00003517          	auipc	a0,0x3
    80006624:	a2050513          	addi	a0,a0,-1504 # 80009040 <CONSOLE_STATUS+0x30>
    80006628:	fffff097          	auipc	ra,0xfffff
    8000662c:	304080e7          	jalr	772(ra) # 8000592c <_Z11printStringPKc>
    80006630:	00000613          	li	a2,0
    80006634:	00a00593          	li	a1,10
    80006638:	0009051b          	sext.w	a0,s2
    8000663c:	fffff097          	auipc	ra,0xfffff
    80006640:	4a0080e7          	jalr	1184(ra) # 80005adc <_Z8printIntiii>
    80006644:	00003517          	auipc	a0,0x3
    80006648:	d9450513          	addi	a0,a0,-620 # 800093d8 <_ZZ12printIntegermE6digits+0x310>
    8000664c:	fffff097          	auipc	ra,0xfffff
    80006650:	2e0080e7          	jalr	736(ra) # 8000592c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006654:	00000493          	li	s1,0
    80006658:	f91ff06f          	j	800065e8 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    8000665c:	14102ff3          	csrr	t6,sepc
    80006660:	fb5ff06f          	j	80006614 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80006664:	00003517          	auipc	a0,0x3
    80006668:	9e450513          	addi	a0,a0,-1564 # 80009048 <CONSOLE_STATUS+0x38>
    8000666c:	fffff097          	auipc	ra,0xfffff
    80006670:	2c0080e7          	jalr	704(ra) # 8000592c <_Z11printStringPKc>
    finishedB = true;
    80006674:	00100793          	li	a5,1
    80006678:	00005717          	auipc	a4,0x5
    8000667c:	4ef70223          	sb	a5,1252(a4) # 8000bb5c <_ZL9finishedB>
    thread_dispatch();
    80006680:	ffffb097          	auipc	ra,0xffffb
    80006684:	c04080e7          	jalr	-1020(ra) # 80001284 <_Z15thread_dispatchv>
}
    80006688:	01813083          	ld	ra,24(sp)
    8000668c:	01013403          	ld	s0,16(sp)
    80006690:	00813483          	ld	s1,8(sp)
    80006694:	00013903          	ld	s2,0(sp)
    80006698:	02010113          	addi	sp,sp,32
    8000669c:	00008067          	ret

00000000800066a0 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    800066a0:	fe010113          	addi	sp,sp,-32
    800066a4:	00113c23          	sd	ra,24(sp)
    800066a8:	00813823          	sd	s0,16(sp)
    800066ac:	00913423          	sd	s1,8(sp)
    800066b0:	01213023          	sd	s2,0(sp)
    800066b4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800066b8:	00000913          	li	s2,0
    800066bc:	0380006f          	j	800066f4 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    800066c0:	ffffb097          	auipc	ra,0xffffb
    800066c4:	bc4080e7          	jalr	-1084(ra) # 80001284 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800066c8:	00148493          	addi	s1,s1,1
    800066cc:	000027b7          	lui	a5,0x2
    800066d0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800066d4:	0097ee63          	bltu	a5,s1,800066f0 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800066d8:	00000713          	li	a4,0
    800066dc:	000077b7          	lui	a5,0x7
    800066e0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800066e4:	fce7eee3          	bltu	a5,a4,800066c0 <_ZL11workerBodyAPv+0x20>
    800066e8:	00170713          	addi	a4,a4,1
    800066ec:	ff1ff06f          	j	800066dc <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800066f0:	00190913          	addi	s2,s2,1
    800066f4:	00900793          	li	a5,9
    800066f8:	0527e063          	bltu	a5,s2,80006738 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800066fc:	00003517          	auipc	a0,0x3
    80006700:	92c50513          	addi	a0,a0,-1748 # 80009028 <CONSOLE_STATUS+0x18>
    80006704:	fffff097          	auipc	ra,0xfffff
    80006708:	228080e7          	jalr	552(ra) # 8000592c <_Z11printStringPKc>
    8000670c:	00000613          	li	a2,0
    80006710:	00a00593          	li	a1,10
    80006714:	0009051b          	sext.w	a0,s2
    80006718:	fffff097          	auipc	ra,0xfffff
    8000671c:	3c4080e7          	jalr	964(ra) # 80005adc <_Z8printIntiii>
    80006720:	00003517          	auipc	a0,0x3
    80006724:	cb850513          	addi	a0,a0,-840 # 800093d8 <_ZZ12printIntegermE6digits+0x310>
    80006728:	fffff097          	auipc	ra,0xfffff
    8000672c:	204080e7          	jalr	516(ra) # 8000592c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006730:	00000493          	li	s1,0
    80006734:	f99ff06f          	j	800066cc <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80006738:	00003517          	auipc	a0,0x3
    8000673c:	8f850513          	addi	a0,a0,-1800 # 80009030 <CONSOLE_STATUS+0x20>
    80006740:	fffff097          	auipc	ra,0xfffff
    80006744:	1ec080e7          	jalr	492(ra) # 8000592c <_Z11printStringPKc>
    finishedA = true;
    80006748:	00100793          	li	a5,1
    8000674c:	00005717          	auipc	a4,0x5
    80006750:	40f708a3          	sb	a5,1041(a4) # 8000bb5d <_ZL9finishedA>
}
    80006754:	01813083          	ld	ra,24(sp)
    80006758:	01013403          	ld	s0,16(sp)
    8000675c:	00813483          	ld	s1,8(sp)
    80006760:	00013903          	ld	s2,0(sp)
    80006764:	02010113          	addi	sp,sp,32
    80006768:	00008067          	ret

000000008000676c <_Z16System_Mode_testv>:


void System_Mode_test() {
    8000676c:	fd010113          	addi	sp,sp,-48
    80006770:	02113423          	sd	ra,40(sp)
    80006774:	02813023          	sd	s0,32(sp)
    80006778:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    8000677c:	00000613          	li	a2,0
    80006780:	00000597          	auipc	a1,0x0
    80006784:	f2058593          	addi	a1,a1,-224 # 800066a0 <_ZL11workerBodyAPv>
    80006788:	fd040513          	addi	a0,s0,-48
    8000678c:	ffffb097          	auipc	ra,0xffffb
    80006790:	a94080e7          	jalr	-1388(ra) # 80001220 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80006794:	00003517          	auipc	a0,0x3
    80006798:	a8c50513          	addi	a0,a0,-1396 # 80009220 <_ZZ12printIntegermE6digits+0x158>
    8000679c:	fffff097          	auipc	ra,0xfffff
    800067a0:	190080e7          	jalr	400(ra) # 8000592c <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800067a4:	00000613          	li	a2,0
    800067a8:	00000597          	auipc	a1,0x0
    800067ac:	e1458593          	addi	a1,a1,-492 # 800065bc <_ZL11workerBodyBPv>
    800067b0:	fd840513          	addi	a0,s0,-40
    800067b4:	ffffb097          	auipc	ra,0xffffb
    800067b8:	a6c080e7          	jalr	-1428(ra) # 80001220 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    800067bc:	00003517          	auipc	a0,0x3
    800067c0:	a7c50513          	addi	a0,a0,-1412 # 80009238 <_ZZ12printIntegermE6digits+0x170>
    800067c4:	fffff097          	auipc	ra,0xfffff
    800067c8:	168080e7          	jalr	360(ra) # 8000592c <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    800067cc:	00000613          	li	a2,0
    800067d0:	00000597          	auipc	a1,0x0
    800067d4:	c6c58593          	addi	a1,a1,-916 # 8000643c <_ZL11workerBodyCPv>
    800067d8:	fe040513          	addi	a0,s0,-32
    800067dc:	ffffb097          	auipc	ra,0xffffb
    800067e0:	a44080e7          	jalr	-1468(ra) # 80001220 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    800067e4:	00003517          	auipc	a0,0x3
    800067e8:	a6c50513          	addi	a0,a0,-1428 # 80009250 <_ZZ12printIntegermE6digits+0x188>
    800067ec:	fffff097          	auipc	ra,0xfffff
    800067f0:	140080e7          	jalr	320(ra) # 8000592c <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    800067f4:	00000613          	li	a2,0
    800067f8:	00000597          	auipc	a1,0x0
    800067fc:	afc58593          	addi	a1,a1,-1284 # 800062f4 <_ZL11workerBodyDPv>
    80006800:	fe840513          	addi	a0,s0,-24
    80006804:	ffffb097          	auipc	ra,0xffffb
    80006808:	a1c080e7          	jalr	-1508(ra) # 80001220 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    8000680c:	00003517          	auipc	a0,0x3
    80006810:	a5c50513          	addi	a0,a0,-1444 # 80009268 <_ZZ12printIntegermE6digits+0x1a0>
    80006814:	fffff097          	auipc	ra,0xfffff
    80006818:	118080e7          	jalr	280(ra) # 8000592c <_Z11printStringPKc>
    8000681c:	00c0006f          	j	80006828 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80006820:	ffffb097          	auipc	ra,0xffffb
    80006824:	a64080e7          	jalr	-1436(ra) # 80001284 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80006828:	00005797          	auipc	a5,0x5
    8000682c:	3357c783          	lbu	a5,821(a5) # 8000bb5d <_ZL9finishedA>
    80006830:	fe0788e3          	beqz	a5,80006820 <_Z16System_Mode_testv+0xb4>
    80006834:	00005797          	auipc	a5,0x5
    80006838:	3287c783          	lbu	a5,808(a5) # 8000bb5c <_ZL9finishedB>
    8000683c:	fe0782e3          	beqz	a5,80006820 <_Z16System_Mode_testv+0xb4>
    80006840:	00005797          	auipc	a5,0x5
    80006844:	31b7c783          	lbu	a5,795(a5) # 8000bb5b <_ZL9finishedC>
    80006848:	fc078ce3          	beqz	a5,80006820 <_Z16System_Mode_testv+0xb4>
    8000684c:	00005797          	auipc	a5,0x5
    80006850:	30e7c783          	lbu	a5,782(a5) # 8000bb5a <_ZL9finishedD>
    80006854:	fc0786e3          	beqz	a5,80006820 <_Z16System_Mode_testv+0xb4>
    }

}
    80006858:	02813083          	ld	ra,40(sp)
    8000685c:	02013403          	ld	s0,32(sp)
    80006860:	03010113          	addi	sp,sp,48
    80006864:	00008067          	ret

0000000080006868 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80006868:	fe010113          	addi	sp,sp,-32
    8000686c:	00113c23          	sd	ra,24(sp)
    80006870:	00813823          	sd	s0,16(sp)
    80006874:	00913423          	sd	s1,8(sp)
    80006878:	01213023          	sd	s2,0(sp)
    8000687c:	02010413          	addi	s0,sp,32
    80006880:	00050493          	mv	s1,a0
    80006884:	00058913          	mv	s2,a1
    80006888:	0015879b          	addiw	a5,a1,1
    8000688c:	0007851b          	sext.w	a0,a5
    80006890:	00f4a023          	sw	a5,0(s1)
    80006894:	0004a823          	sw	zero,16(s1)
    80006898:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    8000689c:	00251513          	slli	a0,a0,0x2
    800068a0:	ffffb097          	auipc	ra,0xffffb
    800068a4:	8b4080e7          	jalr	-1868(ra) # 80001154 <_Z9mem_allocm>
    800068a8:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    800068ac:	00000593          	li	a1,0
    800068b0:	02048513          	addi	a0,s1,32
    800068b4:	ffffb097          	auipc	ra,0xffffb
    800068b8:	9f4080e7          	jalr	-1548(ra) # 800012a8 <_Z8sem_openPP3SEMj>
    sem_open(&spaceAvailable, _cap);
    800068bc:	00090593          	mv	a1,s2
    800068c0:	01848513          	addi	a0,s1,24
    800068c4:	ffffb097          	auipc	ra,0xffffb
    800068c8:	9e4080e7          	jalr	-1564(ra) # 800012a8 <_Z8sem_openPP3SEMj>
    sem_open(&mutexHead, 1);
    800068cc:	00100593          	li	a1,1
    800068d0:	02848513          	addi	a0,s1,40
    800068d4:	ffffb097          	auipc	ra,0xffffb
    800068d8:	9d4080e7          	jalr	-1580(ra) # 800012a8 <_Z8sem_openPP3SEMj>
    sem_open(&mutexTail, 1);
    800068dc:	00100593          	li	a1,1
    800068e0:	03048513          	addi	a0,s1,48
    800068e4:	ffffb097          	auipc	ra,0xffffb
    800068e8:	9c4080e7          	jalr	-1596(ra) # 800012a8 <_Z8sem_openPP3SEMj>
}
    800068ec:	01813083          	ld	ra,24(sp)
    800068f0:	01013403          	ld	s0,16(sp)
    800068f4:	00813483          	ld	s1,8(sp)
    800068f8:	00013903          	ld	s2,0(sp)
    800068fc:	02010113          	addi	sp,sp,32
    80006900:	00008067          	ret

0000000080006904 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80006904:	fe010113          	addi	sp,sp,-32
    80006908:	00113c23          	sd	ra,24(sp)
    8000690c:	00813823          	sd	s0,16(sp)
    80006910:	00913423          	sd	s1,8(sp)
    80006914:	01213023          	sd	s2,0(sp)
    80006918:	02010413          	addi	s0,sp,32
    8000691c:	00050493          	mv	s1,a0
    80006920:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80006924:	01853503          	ld	a0,24(a0)
    80006928:	ffffb097          	auipc	ra,0xffffb
    8000692c:	9e4080e7          	jalr	-1564(ra) # 8000130c <_Z8sem_waitP3SEM>

    sem_wait(mutexTail);
    80006930:	0304b503          	ld	a0,48(s1)
    80006934:	ffffb097          	auipc	ra,0xffffb
    80006938:	9d8080e7          	jalr	-1576(ra) # 8000130c <_Z8sem_waitP3SEM>
    buffer[tail] = val;
    8000693c:	0084b783          	ld	a5,8(s1)
    80006940:	0144a703          	lw	a4,20(s1)
    80006944:	00271713          	slli	a4,a4,0x2
    80006948:	00e787b3          	add	a5,a5,a4
    8000694c:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80006950:	0144a783          	lw	a5,20(s1)
    80006954:	0017879b          	addiw	a5,a5,1
    80006958:	0004a703          	lw	a4,0(s1)
    8000695c:	02e7e7bb          	remw	a5,a5,a4
    80006960:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80006964:	0304b503          	ld	a0,48(s1)
    80006968:	ffffb097          	auipc	ra,0xffffb
    8000696c:	9d4080e7          	jalr	-1580(ra) # 8000133c <_Z10sem_signalP3SEM>

    sem_signal(itemAvailable);
    80006970:	0204b503          	ld	a0,32(s1)
    80006974:	ffffb097          	auipc	ra,0xffffb
    80006978:	9c8080e7          	jalr	-1592(ra) # 8000133c <_Z10sem_signalP3SEM>

}
    8000697c:	01813083          	ld	ra,24(sp)
    80006980:	01013403          	ld	s0,16(sp)
    80006984:	00813483          	ld	s1,8(sp)
    80006988:	00013903          	ld	s2,0(sp)
    8000698c:	02010113          	addi	sp,sp,32
    80006990:	00008067          	ret

0000000080006994 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80006994:	fe010113          	addi	sp,sp,-32
    80006998:	00113c23          	sd	ra,24(sp)
    8000699c:	00813823          	sd	s0,16(sp)
    800069a0:	00913423          	sd	s1,8(sp)
    800069a4:	01213023          	sd	s2,0(sp)
    800069a8:	02010413          	addi	s0,sp,32
    800069ac:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    800069b0:	02053503          	ld	a0,32(a0)
    800069b4:	ffffb097          	auipc	ra,0xffffb
    800069b8:	958080e7          	jalr	-1704(ra) # 8000130c <_Z8sem_waitP3SEM>

    sem_wait(mutexHead);
    800069bc:	0284b503          	ld	a0,40(s1)
    800069c0:	ffffb097          	auipc	ra,0xffffb
    800069c4:	94c080e7          	jalr	-1716(ra) # 8000130c <_Z8sem_waitP3SEM>

    int ret = buffer[head];
    800069c8:	0084b703          	ld	a4,8(s1)
    800069cc:	0104a783          	lw	a5,16(s1)
    800069d0:	00279693          	slli	a3,a5,0x2
    800069d4:	00d70733          	add	a4,a4,a3
    800069d8:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800069dc:	0017879b          	addiw	a5,a5,1
    800069e0:	0004a703          	lw	a4,0(s1)
    800069e4:	02e7e7bb          	remw	a5,a5,a4
    800069e8:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    800069ec:	0284b503          	ld	a0,40(s1)
    800069f0:	ffffb097          	auipc	ra,0xffffb
    800069f4:	94c080e7          	jalr	-1716(ra) # 8000133c <_Z10sem_signalP3SEM>

    sem_signal(spaceAvailable);
    800069f8:	0184b503          	ld	a0,24(s1)
    800069fc:	ffffb097          	auipc	ra,0xffffb
    80006a00:	940080e7          	jalr	-1728(ra) # 8000133c <_Z10sem_signalP3SEM>

    return ret;
}
    80006a04:	00090513          	mv	a0,s2
    80006a08:	01813083          	ld	ra,24(sp)
    80006a0c:	01013403          	ld	s0,16(sp)
    80006a10:	00813483          	ld	s1,8(sp)
    80006a14:	00013903          	ld	s2,0(sp)
    80006a18:	02010113          	addi	sp,sp,32
    80006a1c:	00008067          	ret

0000000080006a20 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80006a20:	fe010113          	addi	sp,sp,-32
    80006a24:	00113c23          	sd	ra,24(sp)
    80006a28:	00813823          	sd	s0,16(sp)
    80006a2c:	00913423          	sd	s1,8(sp)
    80006a30:	01213023          	sd	s2,0(sp)
    80006a34:	02010413          	addi	s0,sp,32
    80006a38:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80006a3c:	02853503          	ld	a0,40(a0)
    80006a40:	ffffb097          	auipc	ra,0xffffb
    80006a44:	8cc080e7          	jalr	-1844(ra) # 8000130c <_Z8sem_waitP3SEM>
    sem_wait(mutexTail);
    80006a48:	0304b503          	ld	a0,48(s1)
    80006a4c:	ffffb097          	auipc	ra,0xffffb
    80006a50:	8c0080e7          	jalr	-1856(ra) # 8000130c <_Z8sem_waitP3SEM>

    if (tail >= head) {
    80006a54:	0144a783          	lw	a5,20(s1)
    80006a58:	0104a903          	lw	s2,16(s1)
    80006a5c:	0327ce63          	blt	a5,s2,80006a98 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80006a60:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80006a64:	0304b503          	ld	a0,48(s1)
    80006a68:	ffffb097          	auipc	ra,0xffffb
    80006a6c:	8d4080e7          	jalr	-1836(ra) # 8000133c <_Z10sem_signalP3SEM>
    sem_signal(mutexHead);
    80006a70:	0284b503          	ld	a0,40(s1)
    80006a74:	ffffb097          	auipc	ra,0xffffb
    80006a78:	8c8080e7          	jalr	-1848(ra) # 8000133c <_Z10sem_signalP3SEM>

    return ret;
}
    80006a7c:	00090513          	mv	a0,s2
    80006a80:	01813083          	ld	ra,24(sp)
    80006a84:	01013403          	ld	s0,16(sp)
    80006a88:	00813483          	ld	s1,8(sp)
    80006a8c:	00013903          	ld	s2,0(sp)
    80006a90:	02010113          	addi	sp,sp,32
    80006a94:	00008067          	ret
        ret = cap - head + tail;
    80006a98:	0004a703          	lw	a4,0(s1)
    80006a9c:	4127093b          	subw	s2,a4,s2
    80006aa0:	00f9093b          	addw	s2,s2,a5
    80006aa4:	fc1ff06f          	j	80006a64 <_ZN6Buffer6getCntEv+0x44>

0000000080006aa8 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80006aa8:	fe010113          	addi	sp,sp,-32
    80006aac:	00113c23          	sd	ra,24(sp)
    80006ab0:	00813823          	sd	s0,16(sp)
    80006ab4:	00913423          	sd	s1,8(sp)
    80006ab8:	02010413          	addi	s0,sp,32
    80006abc:	00050493          	mv	s1,a0
    putc('\n');
    80006ac0:	00a00513          	li	a0,10
    80006ac4:	ffffb097          	auipc	ra,0xffffb
    80006ac8:	904080e7          	jalr	-1788(ra) # 800013c8 <_Z4putcc>
    printString("Buffer deleted!\n");
    80006acc:	00002517          	auipc	a0,0x2
    80006ad0:	7b450513          	addi	a0,a0,1972 # 80009280 <_ZZ12printIntegermE6digits+0x1b8>
    80006ad4:	fffff097          	auipc	ra,0xfffff
    80006ad8:	e58080e7          	jalr	-424(ra) # 8000592c <_Z11printStringPKc>
    while (getCnt() > 0) {
    80006adc:	00048513          	mv	a0,s1
    80006ae0:	00000097          	auipc	ra,0x0
    80006ae4:	f40080e7          	jalr	-192(ra) # 80006a20 <_ZN6Buffer6getCntEv>
    80006ae8:	02a05c63          	blez	a0,80006b20 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80006aec:	0084b783          	ld	a5,8(s1)
    80006af0:	0104a703          	lw	a4,16(s1)
    80006af4:	00271713          	slli	a4,a4,0x2
    80006af8:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80006afc:	0007c503          	lbu	a0,0(a5)
    80006b00:	ffffb097          	auipc	ra,0xffffb
    80006b04:	8c8080e7          	jalr	-1848(ra) # 800013c8 <_Z4putcc>
        head = (head + 1) % cap;
    80006b08:	0104a783          	lw	a5,16(s1)
    80006b0c:	0017879b          	addiw	a5,a5,1
    80006b10:	0004a703          	lw	a4,0(s1)
    80006b14:	02e7e7bb          	remw	a5,a5,a4
    80006b18:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80006b1c:	fc1ff06f          	j	80006adc <_ZN6BufferD1Ev+0x34>
    putc('!');
    80006b20:	02100513          	li	a0,33
    80006b24:	ffffb097          	auipc	ra,0xffffb
    80006b28:	8a4080e7          	jalr	-1884(ra) # 800013c8 <_Z4putcc>
    putc('\n');
    80006b2c:	00a00513          	li	a0,10
    80006b30:	ffffb097          	auipc	ra,0xffffb
    80006b34:	898080e7          	jalr	-1896(ra) # 800013c8 <_Z4putcc>
    mem_free(buffer);
    80006b38:	0084b503          	ld	a0,8(s1)
    80006b3c:	ffffa097          	auipc	ra,0xffffa
    80006b40:	658080e7          	jalr	1624(ra) # 80001194 <_Z8mem_freePv>
    sem_close(itemAvailable);
    80006b44:	0204b503          	ld	a0,32(s1)
    80006b48:	ffffa097          	auipc	ra,0xffffa
    80006b4c:	794080e7          	jalr	1940(ra) # 800012dc <_Z9sem_closeP3SEM>
    sem_close(spaceAvailable);
    80006b50:	0184b503          	ld	a0,24(s1)
    80006b54:	ffffa097          	auipc	ra,0xffffa
    80006b58:	788080e7          	jalr	1928(ra) # 800012dc <_Z9sem_closeP3SEM>
    sem_close(mutexTail);
    80006b5c:	0304b503          	ld	a0,48(s1)
    80006b60:	ffffa097          	auipc	ra,0xffffa
    80006b64:	77c080e7          	jalr	1916(ra) # 800012dc <_Z9sem_closeP3SEM>
    sem_close(mutexHead);
    80006b68:	0284b503          	ld	a0,40(s1)
    80006b6c:	ffffa097          	auipc	ra,0xffffa
    80006b70:	770080e7          	jalr	1904(ra) # 800012dc <_Z9sem_closeP3SEM>
}
    80006b74:	01813083          	ld	ra,24(sp)
    80006b78:	01013403          	ld	s0,16(sp)
    80006b7c:	00813483          	ld	s1,8(sp)
    80006b80:	02010113          	addi	sp,sp,32
    80006b84:	00008067          	ret

0000000080006b88 <start>:
    80006b88:	ff010113          	addi	sp,sp,-16
    80006b8c:	00813423          	sd	s0,8(sp)
    80006b90:	01010413          	addi	s0,sp,16
    80006b94:	300027f3          	csrr	a5,mstatus
    80006b98:	ffffe737          	lui	a4,0xffffe
    80006b9c:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff1a3f>
    80006ba0:	00e7f7b3          	and	a5,a5,a4
    80006ba4:	00001737          	lui	a4,0x1
    80006ba8:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80006bac:	00e7e7b3          	or	a5,a5,a4
    80006bb0:	30079073          	csrw	mstatus,a5
    80006bb4:	00000797          	auipc	a5,0x0
    80006bb8:	16078793          	addi	a5,a5,352 # 80006d14 <system_main>
    80006bbc:	34179073          	csrw	mepc,a5
    80006bc0:	00000793          	li	a5,0
    80006bc4:	18079073          	csrw	satp,a5
    80006bc8:	000107b7          	lui	a5,0x10
    80006bcc:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80006bd0:	30279073          	csrw	medeleg,a5
    80006bd4:	30379073          	csrw	mideleg,a5
    80006bd8:	104027f3          	csrr	a5,sie
    80006bdc:	2227e793          	ori	a5,a5,546
    80006be0:	10479073          	csrw	sie,a5
    80006be4:	fff00793          	li	a5,-1
    80006be8:	00a7d793          	srli	a5,a5,0xa
    80006bec:	3b079073          	csrw	pmpaddr0,a5
    80006bf0:	00f00793          	li	a5,15
    80006bf4:	3a079073          	csrw	pmpcfg0,a5
    80006bf8:	f14027f3          	csrr	a5,mhartid
    80006bfc:	0200c737          	lui	a4,0x200c
    80006c00:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006c04:	0007869b          	sext.w	a3,a5
    80006c08:	00269713          	slli	a4,a3,0x2
    80006c0c:	000f4637          	lui	a2,0xf4
    80006c10:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006c14:	00d70733          	add	a4,a4,a3
    80006c18:	0037979b          	slliw	a5,a5,0x3
    80006c1c:	020046b7          	lui	a3,0x2004
    80006c20:	00d787b3          	add	a5,a5,a3
    80006c24:	00c585b3          	add	a1,a1,a2
    80006c28:	00371693          	slli	a3,a4,0x3
    80006c2c:	00005717          	auipc	a4,0x5
    80006c30:	f3470713          	addi	a4,a4,-204 # 8000bb60 <timer_scratch>
    80006c34:	00b7b023          	sd	a1,0(a5)
    80006c38:	00d70733          	add	a4,a4,a3
    80006c3c:	00f73c23          	sd	a5,24(a4)
    80006c40:	02c73023          	sd	a2,32(a4)
    80006c44:	34071073          	csrw	mscratch,a4
    80006c48:	00000797          	auipc	a5,0x0
    80006c4c:	6e878793          	addi	a5,a5,1768 # 80007330 <timervec>
    80006c50:	30579073          	csrw	mtvec,a5
    80006c54:	300027f3          	csrr	a5,mstatus
    80006c58:	0087e793          	ori	a5,a5,8
    80006c5c:	30079073          	csrw	mstatus,a5
    80006c60:	304027f3          	csrr	a5,mie
    80006c64:	0807e793          	ori	a5,a5,128
    80006c68:	30479073          	csrw	mie,a5
    80006c6c:	f14027f3          	csrr	a5,mhartid
    80006c70:	0007879b          	sext.w	a5,a5
    80006c74:	00078213          	mv	tp,a5
    80006c78:	30200073          	mret
    80006c7c:	00813403          	ld	s0,8(sp)
    80006c80:	01010113          	addi	sp,sp,16
    80006c84:	00008067          	ret

0000000080006c88 <timerinit>:
    80006c88:	ff010113          	addi	sp,sp,-16
    80006c8c:	00813423          	sd	s0,8(sp)
    80006c90:	01010413          	addi	s0,sp,16
    80006c94:	f14027f3          	csrr	a5,mhartid
    80006c98:	0200c737          	lui	a4,0x200c
    80006c9c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006ca0:	0007869b          	sext.w	a3,a5
    80006ca4:	00269713          	slli	a4,a3,0x2
    80006ca8:	000f4637          	lui	a2,0xf4
    80006cac:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006cb0:	00d70733          	add	a4,a4,a3
    80006cb4:	0037979b          	slliw	a5,a5,0x3
    80006cb8:	020046b7          	lui	a3,0x2004
    80006cbc:	00d787b3          	add	a5,a5,a3
    80006cc0:	00c585b3          	add	a1,a1,a2
    80006cc4:	00371693          	slli	a3,a4,0x3
    80006cc8:	00005717          	auipc	a4,0x5
    80006ccc:	e9870713          	addi	a4,a4,-360 # 8000bb60 <timer_scratch>
    80006cd0:	00b7b023          	sd	a1,0(a5)
    80006cd4:	00d70733          	add	a4,a4,a3
    80006cd8:	00f73c23          	sd	a5,24(a4)
    80006cdc:	02c73023          	sd	a2,32(a4)
    80006ce0:	34071073          	csrw	mscratch,a4
    80006ce4:	00000797          	auipc	a5,0x0
    80006ce8:	64c78793          	addi	a5,a5,1612 # 80007330 <timervec>
    80006cec:	30579073          	csrw	mtvec,a5
    80006cf0:	300027f3          	csrr	a5,mstatus
    80006cf4:	0087e793          	ori	a5,a5,8
    80006cf8:	30079073          	csrw	mstatus,a5
    80006cfc:	304027f3          	csrr	a5,mie
    80006d00:	0807e793          	ori	a5,a5,128
    80006d04:	30479073          	csrw	mie,a5
    80006d08:	00813403          	ld	s0,8(sp)
    80006d0c:	01010113          	addi	sp,sp,16
    80006d10:	00008067          	ret

0000000080006d14 <system_main>:
    80006d14:	fe010113          	addi	sp,sp,-32
    80006d18:	00813823          	sd	s0,16(sp)
    80006d1c:	00913423          	sd	s1,8(sp)
    80006d20:	00113c23          	sd	ra,24(sp)
    80006d24:	02010413          	addi	s0,sp,32
    80006d28:	00000097          	auipc	ra,0x0
    80006d2c:	0c4080e7          	jalr	196(ra) # 80006dec <cpuid>
    80006d30:	00005497          	auipc	s1,0x5
    80006d34:	d3048493          	addi	s1,s1,-720 # 8000ba60 <started>
    80006d38:	02050263          	beqz	a0,80006d5c <system_main+0x48>
    80006d3c:	0004a783          	lw	a5,0(s1)
    80006d40:	0007879b          	sext.w	a5,a5
    80006d44:	fe078ce3          	beqz	a5,80006d3c <system_main+0x28>
    80006d48:	0ff0000f          	fence
    80006d4c:	00003517          	auipc	a0,0x3
    80006d50:	80450513          	addi	a0,a0,-2044 # 80009550 <_ZZ12printIntegermE6digits+0x488>
    80006d54:	00001097          	auipc	ra,0x1
    80006d58:	a78080e7          	jalr	-1416(ra) # 800077cc <panic>
    80006d5c:	00001097          	auipc	ra,0x1
    80006d60:	9cc080e7          	jalr	-1588(ra) # 80007728 <consoleinit>
    80006d64:	00001097          	auipc	ra,0x1
    80006d68:	158080e7          	jalr	344(ra) # 80007ebc <printfinit>
    80006d6c:	00002517          	auipc	a0,0x2
    80006d70:	66c50513          	addi	a0,a0,1644 # 800093d8 <_ZZ12printIntegermE6digits+0x310>
    80006d74:	00001097          	auipc	ra,0x1
    80006d78:	ab4080e7          	jalr	-1356(ra) # 80007828 <__printf>
    80006d7c:	00002517          	auipc	a0,0x2
    80006d80:	7a450513          	addi	a0,a0,1956 # 80009520 <_ZZ12printIntegermE6digits+0x458>
    80006d84:	00001097          	auipc	ra,0x1
    80006d88:	aa4080e7          	jalr	-1372(ra) # 80007828 <__printf>
    80006d8c:	00002517          	auipc	a0,0x2
    80006d90:	64c50513          	addi	a0,a0,1612 # 800093d8 <_ZZ12printIntegermE6digits+0x310>
    80006d94:	00001097          	auipc	ra,0x1
    80006d98:	a94080e7          	jalr	-1388(ra) # 80007828 <__printf>
    80006d9c:	00001097          	auipc	ra,0x1
    80006da0:	4ac080e7          	jalr	1196(ra) # 80008248 <kinit>
    80006da4:	00000097          	auipc	ra,0x0
    80006da8:	148080e7          	jalr	328(ra) # 80006eec <trapinit>
    80006dac:	00000097          	auipc	ra,0x0
    80006db0:	16c080e7          	jalr	364(ra) # 80006f18 <trapinithart>
    80006db4:	00000097          	auipc	ra,0x0
    80006db8:	5bc080e7          	jalr	1468(ra) # 80007370 <plicinit>
    80006dbc:	00000097          	auipc	ra,0x0
    80006dc0:	5dc080e7          	jalr	1500(ra) # 80007398 <plicinithart>
    80006dc4:	00000097          	auipc	ra,0x0
    80006dc8:	078080e7          	jalr	120(ra) # 80006e3c <userinit>
    80006dcc:	0ff0000f          	fence
    80006dd0:	00100793          	li	a5,1
    80006dd4:	00002517          	auipc	a0,0x2
    80006dd8:	76450513          	addi	a0,a0,1892 # 80009538 <_ZZ12printIntegermE6digits+0x470>
    80006ddc:	00f4a023          	sw	a5,0(s1)
    80006de0:	00001097          	auipc	ra,0x1
    80006de4:	a48080e7          	jalr	-1464(ra) # 80007828 <__printf>
    80006de8:	0000006f          	j	80006de8 <system_main+0xd4>

0000000080006dec <cpuid>:
    80006dec:	ff010113          	addi	sp,sp,-16
    80006df0:	00813423          	sd	s0,8(sp)
    80006df4:	01010413          	addi	s0,sp,16
    80006df8:	00020513          	mv	a0,tp
    80006dfc:	00813403          	ld	s0,8(sp)
    80006e00:	0005051b          	sext.w	a0,a0
    80006e04:	01010113          	addi	sp,sp,16
    80006e08:	00008067          	ret

0000000080006e0c <mycpu>:
    80006e0c:	ff010113          	addi	sp,sp,-16
    80006e10:	00813423          	sd	s0,8(sp)
    80006e14:	01010413          	addi	s0,sp,16
    80006e18:	00020793          	mv	a5,tp
    80006e1c:	00813403          	ld	s0,8(sp)
    80006e20:	0007879b          	sext.w	a5,a5
    80006e24:	00779793          	slli	a5,a5,0x7
    80006e28:	00006517          	auipc	a0,0x6
    80006e2c:	d6850513          	addi	a0,a0,-664 # 8000cb90 <cpus>
    80006e30:	00f50533          	add	a0,a0,a5
    80006e34:	01010113          	addi	sp,sp,16
    80006e38:	00008067          	ret

0000000080006e3c <userinit>:
    80006e3c:	ff010113          	addi	sp,sp,-16
    80006e40:	00813423          	sd	s0,8(sp)
    80006e44:	01010413          	addi	s0,sp,16
    80006e48:	00813403          	ld	s0,8(sp)
    80006e4c:	01010113          	addi	sp,sp,16
    80006e50:	ffffb317          	auipc	t1,0xffffb
    80006e54:	f7830067          	jr	-136(t1) # 80001dc8 <main>

0000000080006e58 <either_copyout>:
    80006e58:	ff010113          	addi	sp,sp,-16
    80006e5c:	00813023          	sd	s0,0(sp)
    80006e60:	00113423          	sd	ra,8(sp)
    80006e64:	01010413          	addi	s0,sp,16
    80006e68:	02051663          	bnez	a0,80006e94 <either_copyout+0x3c>
    80006e6c:	00058513          	mv	a0,a1
    80006e70:	00060593          	mv	a1,a2
    80006e74:	0006861b          	sext.w	a2,a3
    80006e78:	00002097          	auipc	ra,0x2
    80006e7c:	c5c080e7          	jalr	-932(ra) # 80008ad4 <__memmove>
    80006e80:	00813083          	ld	ra,8(sp)
    80006e84:	00013403          	ld	s0,0(sp)
    80006e88:	00000513          	li	a0,0
    80006e8c:	01010113          	addi	sp,sp,16
    80006e90:	00008067          	ret
    80006e94:	00002517          	auipc	a0,0x2
    80006e98:	6e450513          	addi	a0,a0,1764 # 80009578 <_ZZ12printIntegermE6digits+0x4b0>
    80006e9c:	00001097          	auipc	ra,0x1
    80006ea0:	930080e7          	jalr	-1744(ra) # 800077cc <panic>

0000000080006ea4 <either_copyin>:
    80006ea4:	ff010113          	addi	sp,sp,-16
    80006ea8:	00813023          	sd	s0,0(sp)
    80006eac:	00113423          	sd	ra,8(sp)
    80006eb0:	01010413          	addi	s0,sp,16
    80006eb4:	02059463          	bnez	a1,80006edc <either_copyin+0x38>
    80006eb8:	00060593          	mv	a1,a2
    80006ebc:	0006861b          	sext.w	a2,a3
    80006ec0:	00002097          	auipc	ra,0x2
    80006ec4:	c14080e7          	jalr	-1004(ra) # 80008ad4 <__memmove>
    80006ec8:	00813083          	ld	ra,8(sp)
    80006ecc:	00013403          	ld	s0,0(sp)
    80006ed0:	00000513          	li	a0,0
    80006ed4:	01010113          	addi	sp,sp,16
    80006ed8:	00008067          	ret
    80006edc:	00002517          	auipc	a0,0x2
    80006ee0:	6c450513          	addi	a0,a0,1732 # 800095a0 <_ZZ12printIntegermE6digits+0x4d8>
    80006ee4:	00001097          	auipc	ra,0x1
    80006ee8:	8e8080e7          	jalr	-1816(ra) # 800077cc <panic>

0000000080006eec <trapinit>:
    80006eec:	ff010113          	addi	sp,sp,-16
    80006ef0:	00813423          	sd	s0,8(sp)
    80006ef4:	01010413          	addi	s0,sp,16
    80006ef8:	00813403          	ld	s0,8(sp)
    80006efc:	00002597          	auipc	a1,0x2
    80006f00:	6cc58593          	addi	a1,a1,1740 # 800095c8 <_ZZ12printIntegermE6digits+0x500>
    80006f04:	00006517          	auipc	a0,0x6
    80006f08:	d0c50513          	addi	a0,a0,-756 # 8000cc10 <tickslock>
    80006f0c:	01010113          	addi	sp,sp,16
    80006f10:	00001317          	auipc	t1,0x1
    80006f14:	5c830067          	jr	1480(t1) # 800084d8 <initlock>

0000000080006f18 <trapinithart>:
    80006f18:	ff010113          	addi	sp,sp,-16
    80006f1c:	00813423          	sd	s0,8(sp)
    80006f20:	01010413          	addi	s0,sp,16
    80006f24:	00000797          	auipc	a5,0x0
    80006f28:	2fc78793          	addi	a5,a5,764 # 80007220 <kernelvec>
    80006f2c:	10579073          	csrw	stvec,a5
    80006f30:	00813403          	ld	s0,8(sp)
    80006f34:	01010113          	addi	sp,sp,16
    80006f38:	00008067          	ret

0000000080006f3c <usertrap>:
    80006f3c:	ff010113          	addi	sp,sp,-16
    80006f40:	00813423          	sd	s0,8(sp)
    80006f44:	01010413          	addi	s0,sp,16
    80006f48:	00813403          	ld	s0,8(sp)
    80006f4c:	01010113          	addi	sp,sp,16
    80006f50:	00008067          	ret

0000000080006f54 <usertrapret>:
    80006f54:	ff010113          	addi	sp,sp,-16
    80006f58:	00813423          	sd	s0,8(sp)
    80006f5c:	01010413          	addi	s0,sp,16
    80006f60:	00813403          	ld	s0,8(sp)
    80006f64:	01010113          	addi	sp,sp,16
    80006f68:	00008067          	ret

0000000080006f6c <kerneltrap>:
    80006f6c:	fe010113          	addi	sp,sp,-32
    80006f70:	00813823          	sd	s0,16(sp)
    80006f74:	00113c23          	sd	ra,24(sp)
    80006f78:	00913423          	sd	s1,8(sp)
    80006f7c:	02010413          	addi	s0,sp,32
    80006f80:	142025f3          	csrr	a1,scause
    80006f84:	100027f3          	csrr	a5,sstatus
    80006f88:	0027f793          	andi	a5,a5,2
    80006f8c:	10079c63          	bnez	a5,800070a4 <kerneltrap+0x138>
    80006f90:	142027f3          	csrr	a5,scause
    80006f94:	0207ce63          	bltz	a5,80006fd0 <kerneltrap+0x64>
    80006f98:	00002517          	auipc	a0,0x2
    80006f9c:	67850513          	addi	a0,a0,1656 # 80009610 <_ZZ12printIntegermE6digits+0x548>
    80006fa0:	00001097          	auipc	ra,0x1
    80006fa4:	888080e7          	jalr	-1912(ra) # 80007828 <__printf>
    80006fa8:	141025f3          	csrr	a1,sepc
    80006fac:	14302673          	csrr	a2,stval
    80006fb0:	00002517          	auipc	a0,0x2
    80006fb4:	67050513          	addi	a0,a0,1648 # 80009620 <_ZZ12printIntegermE6digits+0x558>
    80006fb8:	00001097          	auipc	ra,0x1
    80006fbc:	870080e7          	jalr	-1936(ra) # 80007828 <__printf>
    80006fc0:	00002517          	auipc	a0,0x2
    80006fc4:	67850513          	addi	a0,a0,1656 # 80009638 <_ZZ12printIntegermE6digits+0x570>
    80006fc8:	00001097          	auipc	ra,0x1
    80006fcc:	804080e7          	jalr	-2044(ra) # 800077cc <panic>
    80006fd0:	0ff7f713          	andi	a4,a5,255
    80006fd4:	00900693          	li	a3,9
    80006fd8:	04d70063          	beq	a4,a3,80007018 <kerneltrap+0xac>
    80006fdc:	fff00713          	li	a4,-1
    80006fe0:	03f71713          	slli	a4,a4,0x3f
    80006fe4:	00170713          	addi	a4,a4,1
    80006fe8:	fae798e3          	bne	a5,a4,80006f98 <kerneltrap+0x2c>
    80006fec:	00000097          	auipc	ra,0x0
    80006ff0:	e00080e7          	jalr	-512(ra) # 80006dec <cpuid>
    80006ff4:	06050663          	beqz	a0,80007060 <kerneltrap+0xf4>
    80006ff8:	144027f3          	csrr	a5,sip
    80006ffc:	ffd7f793          	andi	a5,a5,-3
    80007000:	14479073          	csrw	sip,a5
    80007004:	01813083          	ld	ra,24(sp)
    80007008:	01013403          	ld	s0,16(sp)
    8000700c:	00813483          	ld	s1,8(sp)
    80007010:	02010113          	addi	sp,sp,32
    80007014:	00008067          	ret
    80007018:	00000097          	auipc	ra,0x0
    8000701c:	3cc080e7          	jalr	972(ra) # 800073e4 <plic_claim>
    80007020:	00a00793          	li	a5,10
    80007024:	00050493          	mv	s1,a0
    80007028:	06f50863          	beq	a0,a5,80007098 <kerneltrap+0x12c>
    8000702c:	fc050ce3          	beqz	a0,80007004 <kerneltrap+0x98>
    80007030:	00050593          	mv	a1,a0
    80007034:	00002517          	auipc	a0,0x2
    80007038:	5bc50513          	addi	a0,a0,1468 # 800095f0 <_ZZ12printIntegermE6digits+0x528>
    8000703c:	00000097          	auipc	ra,0x0
    80007040:	7ec080e7          	jalr	2028(ra) # 80007828 <__printf>
    80007044:	01013403          	ld	s0,16(sp)
    80007048:	01813083          	ld	ra,24(sp)
    8000704c:	00048513          	mv	a0,s1
    80007050:	00813483          	ld	s1,8(sp)
    80007054:	02010113          	addi	sp,sp,32
    80007058:	00000317          	auipc	t1,0x0
    8000705c:	3c430067          	jr	964(t1) # 8000741c <plic_complete>
    80007060:	00006517          	auipc	a0,0x6
    80007064:	bb050513          	addi	a0,a0,-1104 # 8000cc10 <tickslock>
    80007068:	00001097          	auipc	ra,0x1
    8000706c:	494080e7          	jalr	1172(ra) # 800084fc <acquire>
    80007070:	00005717          	auipc	a4,0x5
    80007074:	9f470713          	addi	a4,a4,-1548 # 8000ba64 <ticks>
    80007078:	00072783          	lw	a5,0(a4)
    8000707c:	00006517          	auipc	a0,0x6
    80007080:	b9450513          	addi	a0,a0,-1132 # 8000cc10 <tickslock>
    80007084:	0017879b          	addiw	a5,a5,1
    80007088:	00f72023          	sw	a5,0(a4)
    8000708c:	00001097          	auipc	ra,0x1
    80007090:	53c080e7          	jalr	1340(ra) # 800085c8 <release>
    80007094:	f65ff06f          	j	80006ff8 <kerneltrap+0x8c>
    80007098:	00001097          	auipc	ra,0x1
    8000709c:	098080e7          	jalr	152(ra) # 80008130 <uartintr>
    800070a0:	fa5ff06f          	j	80007044 <kerneltrap+0xd8>
    800070a4:	00002517          	auipc	a0,0x2
    800070a8:	52c50513          	addi	a0,a0,1324 # 800095d0 <_ZZ12printIntegermE6digits+0x508>
    800070ac:	00000097          	auipc	ra,0x0
    800070b0:	720080e7          	jalr	1824(ra) # 800077cc <panic>

00000000800070b4 <clockintr>:
    800070b4:	fe010113          	addi	sp,sp,-32
    800070b8:	00813823          	sd	s0,16(sp)
    800070bc:	00913423          	sd	s1,8(sp)
    800070c0:	00113c23          	sd	ra,24(sp)
    800070c4:	02010413          	addi	s0,sp,32
    800070c8:	00006497          	auipc	s1,0x6
    800070cc:	b4848493          	addi	s1,s1,-1208 # 8000cc10 <tickslock>
    800070d0:	00048513          	mv	a0,s1
    800070d4:	00001097          	auipc	ra,0x1
    800070d8:	428080e7          	jalr	1064(ra) # 800084fc <acquire>
    800070dc:	00005717          	auipc	a4,0x5
    800070e0:	98870713          	addi	a4,a4,-1656 # 8000ba64 <ticks>
    800070e4:	00072783          	lw	a5,0(a4)
    800070e8:	01013403          	ld	s0,16(sp)
    800070ec:	01813083          	ld	ra,24(sp)
    800070f0:	00048513          	mv	a0,s1
    800070f4:	0017879b          	addiw	a5,a5,1
    800070f8:	00813483          	ld	s1,8(sp)
    800070fc:	00f72023          	sw	a5,0(a4)
    80007100:	02010113          	addi	sp,sp,32
    80007104:	00001317          	auipc	t1,0x1
    80007108:	4c430067          	jr	1220(t1) # 800085c8 <release>

000000008000710c <devintr>:
    8000710c:	142027f3          	csrr	a5,scause
    80007110:	00000513          	li	a0,0
    80007114:	0007c463          	bltz	a5,8000711c <devintr+0x10>
    80007118:	00008067          	ret
    8000711c:	fe010113          	addi	sp,sp,-32
    80007120:	00813823          	sd	s0,16(sp)
    80007124:	00113c23          	sd	ra,24(sp)
    80007128:	00913423          	sd	s1,8(sp)
    8000712c:	02010413          	addi	s0,sp,32
    80007130:	0ff7f713          	andi	a4,a5,255
    80007134:	00900693          	li	a3,9
    80007138:	04d70c63          	beq	a4,a3,80007190 <devintr+0x84>
    8000713c:	fff00713          	li	a4,-1
    80007140:	03f71713          	slli	a4,a4,0x3f
    80007144:	00170713          	addi	a4,a4,1
    80007148:	00e78c63          	beq	a5,a4,80007160 <devintr+0x54>
    8000714c:	01813083          	ld	ra,24(sp)
    80007150:	01013403          	ld	s0,16(sp)
    80007154:	00813483          	ld	s1,8(sp)
    80007158:	02010113          	addi	sp,sp,32
    8000715c:	00008067          	ret
    80007160:	00000097          	auipc	ra,0x0
    80007164:	c8c080e7          	jalr	-884(ra) # 80006dec <cpuid>
    80007168:	06050663          	beqz	a0,800071d4 <devintr+0xc8>
    8000716c:	144027f3          	csrr	a5,sip
    80007170:	ffd7f793          	andi	a5,a5,-3
    80007174:	14479073          	csrw	sip,a5
    80007178:	01813083          	ld	ra,24(sp)
    8000717c:	01013403          	ld	s0,16(sp)
    80007180:	00813483          	ld	s1,8(sp)
    80007184:	00200513          	li	a0,2
    80007188:	02010113          	addi	sp,sp,32
    8000718c:	00008067          	ret
    80007190:	00000097          	auipc	ra,0x0
    80007194:	254080e7          	jalr	596(ra) # 800073e4 <plic_claim>
    80007198:	00a00793          	li	a5,10
    8000719c:	00050493          	mv	s1,a0
    800071a0:	06f50663          	beq	a0,a5,8000720c <devintr+0x100>
    800071a4:	00100513          	li	a0,1
    800071a8:	fa0482e3          	beqz	s1,8000714c <devintr+0x40>
    800071ac:	00048593          	mv	a1,s1
    800071b0:	00002517          	auipc	a0,0x2
    800071b4:	44050513          	addi	a0,a0,1088 # 800095f0 <_ZZ12printIntegermE6digits+0x528>
    800071b8:	00000097          	auipc	ra,0x0
    800071bc:	670080e7          	jalr	1648(ra) # 80007828 <__printf>
    800071c0:	00048513          	mv	a0,s1
    800071c4:	00000097          	auipc	ra,0x0
    800071c8:	258080e7          	jalr	600(ra) # 8000741c <plic_complete>
    800071cc:	00100513          	li	a0,1
    800071d0:	f7dff06f          	j	8000714c <devintr+0x40>
    800071d4:	00006517          	auipc	a0,0x6
    800071d8:	a3c50513          	addi	a0,a0,-1476 # 8000cc10 <tickslock>
    800071dc:	00001097          	auipc	ra,0x1
    800071e0:	320080e7          	jalr	800(ra) # 800084fc <acquire>
    800071e4:	00005717          	auipc	a4,0x5
    800071e8:	88070713          	addi	a4,a4,-1920 # 8000ba64 <ticks>
    800071ec:	00072783          	lw	a5,0(a4)
    800071f0:	00006517          	auipc	a0,0x6
    800071f4:	a2050513          	addi	a0,a0,-1504 # 8000cc10 <tickslock>
    800071f8:	0017879b          	addiw	a5,a5,1
    800071fc:	00f72023          	sw	a5,0(a4)
    80007200:	00001097          	auipc	ra,0x1
    80007204:	3c8080e7          	jalr	968(ra) # 800085c8 <release>
    80007208:	f65ff06f          	j	8000716c <devintr+0x60>
    8000720c:	00001097          	auipc	ra,0x1
    80007210:	f24080e7          	jalr	-220(ra) # 80008130 <uartintr>
    80007214:	fadff06f          	j	800071c0 <devintr+0xb4>
	...

0000000080007220 <kernelvec>:
    80007220:	f0010113          	addi	sp,sp,-256
    80007224:	00113023          	sd	ra,0(sp)
    80007228:	00213423          	sd	sp,8(sp)
    8000722c:	00313823          	sd	gp,16(sp)
    80007230:	00413c23          	sd	tp,24(sp)
    80007234:	02513023          	sd	t0,32(sp)
    80007238:	02613423          	sd	t1,40(sp)
    8000723c:	02713823          	sd	t2,48(sp)
    80007240:	02813c23          	sd	s0,56(sp)
    80007244:	04913023          	sd	s1,64(sp)
    80007248:	04a13423          	sd	a0,72(sp)
    8000724c:	04b13823          	sd	a1,80(sp)
    80007250:	04c13c23          	sd	a2,88(sp)
    80007254:	06d13023          	sd	a3,96(sp)
    80007258:	06e13423          	sd	a4,104(sp)
    8000725c:	06f13823          	sd	a5,112(sp)
    80007260:	07013c23          	sd	a6,120(sp)
    80007264:	09113023          	sd	a7,128(sp)
    80007268:	09213423          	sd	s2,136(sp)
    8000726c:	09313823          	sd	s3,144(sp)
    80007270:	09413c23          	sd	s4,152(sp)
    80007274:	0b513023          	sd	s5,160(sp)
    80007278:	0b613423          	sd	s6,168(sp)
    8000727c:	0b713823          	sd	s7,176(sp)
    80007280:	0b813c23          	sd	s8,184(sp)
    80007284:	0d913023          	sd	s9,192(sp)
    80007288:	0da13423          	sd	s10,200(sp)
    8000728c:	0db13823          	sd	s11,208(sp)
    80007290:	0dc13c23          	sd	t3,216(sp)
    80007294:	0fd13023          	sd	t4,224(sp)
    80007298:	0fe13423          	sd	t5,232(sp)
    8000729c:	0ff13823          	sd	t6,240(sp)
    800072a0:	ccdff0ef          	jal	ra,80006f6c <kerneltrap>
    800072a4:	00013083          	ld	ra,0(sp)
    800072a8:	00813103          	ld	sp,8(sp)
    800072ac:	01013183          	ld	gp,16(sp)
    800072b0:	02013283          	ld	t0,32(sp)
    800072b4:	02813303          	ld	t1,40(sp)
    800072b8:	03013383          	ld	t2,48(sp)
    800072bc:	03813403          	ld	s0,56(sp)
    800072c0:	04013483          	ld	s1,64(sp)
    800072c4:	04813503          	ld	a0,72(sp)
    800072c8:	05013583          	ld	a1,80(sp)
    800072cc:	05813603          	ld	a2,88(sp)
    800072d0:	06013683          	ld	a3,96(sp)
    800072d4:	06813703          	ld	a4,104(sp)
    800072d8:	07013783          	ld	a5,112(sp)
    800072dc:	07813803          	ld	a6,120(sp)
    800072e0:	08013883          	ld	a7,128(sp)
    800072e4:	08813903          	ld	s2,136(sp)
    800072e8:	09013983          	ld	s3,144(sp)
    800072ec:	09813a03          	ld	s4,152(sp)
    800072f0:	0a013a83          	ld	s5,160(sp)
    800072f4:	0a813b03          	ld	s6,168(sp)
    800072f8:	0b013b83          	ld	s7,176(sp)
    800072fc:	0b813c03          	ld	s8,184(sp)
    80007300:	0c013c83          	ld	s9,192(sp)
    80007304:	0c813d03          	ld	s10,200(sp)
    80007308:	0d013d83          	ld	s11,208(sp)
    8000730c:	0d813e03          	ld	t3,216(sp)
    80007310:	0e013e83          	ld	t4,224(sp)
    80007314:	0e813f03          	ld	t5,232(sp)
    80007318:	0f013f83          	ld	t6,240(sp)
    8000731c:	10010113          	addi	sp,sp,256
    80007320:	10200073          	sret
    80007324:	00000013          	nop
    80007328:	00000013          	nop
    8000732c:	00000013          	nop

0000000080007330 <timervec>:
    80007330:	34051573          	csrrw	a0,mscratch,a0
    80007334:	00b53023          	sd	a1,0(a0)
    80007338:	00c53423          	sd	a2,8(a0)
    8000733c:	00d53823          	sd	a3,16(a0)
    80007340:	01853583          	ld	a1,24(a0)
    80007344:	02053603          	ld	a2,32(a0)
    80007348:	0005b683          	ld	a3,0(a1)
    8000734c:	00c686b3          	add	a3,a3,a2
    80007350:	00d5b023          	sd	a3,0(a1)
    80007354:	00200593          	li	a1,2
    80007358:	14459073          	csrw	sip,a1
    8000735c:	01053683          	ld	a3,16(a0)
    80007360:	00853603          	ld	a2,8(a0)
    80007364:	00053583          	ld	a1,0(a0)
    80007368:	34051573          	csrrw	a0,mscratch,a0
    8000736c:	30200073          	mret

0000000080007370 <plicinit>:
    80007370:	ff010113          	addi	sp,sp,-16
    80007374:	00813423          	sd	s0,8(sp)
    80007378:	01010413          	addi	s0,sp,16
    8000737c:	00813403          	ld	s0,8(sp)
    80007380:	0c0007b7          	lui	a5,0xc000
    80007384:	00100713          	li	a4,1
    80007388:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000738c:	00e7a223          	sw	a4,4(a5)
    80007390:	01010113          	addi	sp,sp,16
    80007394:	00008067          	ret

0000000080007398 <plicinithart>:
    80007398:	ff010113          	addi	sp,sp,-16
    8000739c:	00813023          	sd	s0,0(sp)
    800073a0:	00113423          	sd	ra,8(sp)
    800073a4:	01010413          	addi	s0,sp,16
    800073a8:	00000097          	auipc	ra,0x0
    800073ac:	a44080e7          	jalr	-1468(ra) # 80006dec <cpuid>
    800073b0:	0085171b          	slliw	a4,a0,0x8
    800073b4:	0c0027b7          	lui	a5,0xc002
    800073b8:	00e787b3          	add	a5,a5,a4
    800073bc:	40200713          	li	a4,1026
    800073c0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800073c4:	00813083          	ld	ra,8(sp)
    800073c8:	00013403          	ld	s0,0(sp)
    800073cc:	00d5151b          	slliw	a0,a0,0xd
    800073d0:	0c2017b7          	lui	a5,0xc201
    800073d4:	00a78533          	add	a0,a5,a0
    800073d8:	00052023          	sw	zero,0(a0)
    800073dc:	01010113          	addi	sp,sp,16
    800073e0:	00008067          	ret

00000000800073e4 <plic_claim>:
    800073e4:	ff010113          	addi	sp,sp,-16
    800073e8:	00813023          	sd	s0,0(sp)
    800073ec:	00113423          	sd	ra,8(sp)
    800073f0:	01010413          	addi	s0,sp,16
    800073f4:	00000097          	auipc	ra,0x0
    800073f8:	9f8080e7          	jalr	-1544(ra) # 80006dec <cpuid>
    800073fc:	00813083          	ld	ra,8(sp)
    80007400:	00013403          	ld	s0,0(sp)
    80007404:	00d5151b          	slliw	a0,a0,0xd
    80007408:	0c2017b7          	lui	a5,0xc201
    8000740c:	00a78533          	add	a0,a5,a0
    80007410:	00452503          	lw	a0,4(a0)
    80007414:	01010113          	addi	sp,sp,16
    80007418:	00008067          	ret

000000008000741c <plic_complete>:
    8000741c:	fe010113          	addi	sp,sp,-32
    80007420:	00813823          	sd	s0,16(sp)
    80007424:	00913423          	sd	s1,8(sp)
    80007428:	00113c23          	sd	ra,24(sp)
    8000742c:	02010413          	addi	s0,sp,32
    80007430:	00050493          	mv	s1,a0
    80007434:	00000097          	auipc	ra,0x0
    80007438:	9b8080e7          	jalr	-1608(ra) # 80006dec <cpuid>
    8000743c:	01813083          	ld	ra,24(sp)
    80007440:	01013403          	ld	s0,16(sp)
    80007444:	00d5179b          	slliw	a5,a0,0xd
    80007448:	0c201737          	lui	a4,0xc201
    8000744c:	00f707b3          	add	a5,a4,a5
    80007450:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80007454:	00813483          	ld	s1,8(sp)
    80007458:	02010113          	addi	sp,sp,32
    8000745c:	00008067          	ret

0000000080007460 <consolewrite>:
    80007460:	fb010113          	addi	sp,sp,-80
    80007464:	04813023          	sd	s0,64(sp)
    80007468:	04113423          	sd	ra,72(sp)
    8000746c:	02913c23          	sd	s1,56(sp)
    80007470:	03213823          	sd	s2,48(sp)
    80007474:	03313423          	sd	s3,40(sp)
    80007478:	03413023          	sd	s4,32(sp)
    8000747c:	01513c23          	sd	s5,24(sp)
    80007480:	05010413          	addi	s0,sp,80
    80007484:	06c05c63          	blez	a2,800074fc <consolewrite+0x9c>
    80007488:	00060993          	mv	s3,a2
    8000748c:	00050a13          	mv	s4,a0
    80007490:	00058493          	mv	s1,a1
    80007494:	00000913          	li	s2,0
    80007498:	fff00a93          	li	s5,-1
    8000749c:	01c0006f          	j	800074b8 <consolewrite+0x58>
    800074a0:	fbf44503          	lbu	a0,-65(s0)
    800074a4:	0019091b          	addiw	s2,s2,1
    800074a8:	00148493          	addi	s1,s1,1
    800074ac:	00001097          	auipc	ra,0x1
    800074b0:	a9c080e7          	jalr	-1380(ra) # 80007f48 <uartputc>
    800074b4:	03298063          	beq	s3,s2,800074d4 <consolewrite+0x74>
    800074b8:	00048613          	mv	a2,s1
    800074bc:	00100693          	li	a3,1
    800074c0:	000a0593          	mv	a1,s4
    800074c4:	fbf40513          	addi	a0,s0,-65
    800074c8:	00000097          	auipc	ra,0x0
    800074cc:	9dc080e7          	jalr	-1572(ra) # 80006ea4 <either_copyin>
    800074d0:	fd5518e3          	bne	a0,s5,800074a0 <consolewrite+0x40>
    800074d4:	04813083          	ld	ra,72(sp)
    800074d8:	04013403          	ld	s0,64(sp)
    800074dc:	03813483          	ld	s1,56(sp)
    800074e0:	02813983          	ld	s3,40(sp)
    800074e4:	02013a03          	ld	s4,32(sp)
    800074e8:	01813a83          	ld	s5,24(sp)
    800074ec:	00090513          	mv	a0,s2
    800074f0:	03013903          	ld	s2,48(sp)
    800074f4:	05010113          	addi	sp,sp,80
    800074f8:	00008067          	ret
    800074fc:	00000913          	li	s2,0
    80007500:	fd5ff06f          	j	800074d4 <consolewrite+0x74>

0000000080007504 <consoleread>:
    80007504:	f9010113          	addi	sp,sp,-112
    80007508:	06813023          	sd	s0,96(sp)
    8000750c:	04913c23          	sd	s1,88(sp)
    80007510:	05213823          	sd	s2,80(sp)
    80007514:	05313423          	sd	s3,72(sp)
    80007518:	05413023          	sd	s4,64(sp)
    8000751c:	03513c23          	sd	s5,56(sp)
    80007520:	03613823          	sd	s6,48(sp)
    80007524:	03713423          	sd	s7,40(sp)
    80007528:	03813023          	sd	s8,32(sp)
    8000752c:	06113423          	sd	ra,104(sp)
    80007530:	01913c23          	sd	s9,24(sp)
    80007534:	07010413          	addi	s0,sp,112
    80007538:	00060b93          	mv	s7,a2
    8000753c:	00050913          	mv	s2,a0
    80007540:	00058c13          	mv	s8,a1
    80007544:	00060b1b          	sext.w	s6,a2
    80007548:	00005497          	auipc	s1,0x5
    8000754c:	6f048493          	addi	s1,s1,1776 # 8000cc38 <cons>
    80007550:	00400993          	li	s3,4
    80007554:	fff00a13          	li	s4,-1
    80007558:	00a00a93          	li	s5,10
    8000755c:	05705e63          	blez	s7,800075b8 <consoleread+0xb4>
    80007560:	09c4a703          	lw	a4,156(s1)
    80007564:	0984a783          	lw	a5,152(s1)
    80007568:	0007071b          	sext.w	a4,a4
    8000756c:	08e78463          	beq	a5,a4,800075f4 <consoleread+0xf0>
    80007570:	07f7f713          	andi	a4,a5,127
    80007574:	00e48733          	add	a4,s1,a4
    80007578:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000757c:	0017869b          	addiw	a3,a5,1
    80007580:	08d4ac23          	sw	a3,152(s1)
    80007584:	00070c9b          	sext.w	s9,a4
    80007588:	0b370663          	beq	a4,s3,80007634 <consoleread+0x130>
    8000758c:	00100693          	li	a3,1
    80007590:	f9f40613          	addi	a2,s0,-97
    80007594:	000c0593          	mv	a1,s8
    80007598:	00090513          	mv	a0,s2
    8000759c:	f8e40fa3          	sb	a4,-97(s0)
    800075a0:	00000097          	auipc	ra,0x0
    800075a4:	8b8080e7          	jalr	-1864(ra) # 80006e58 <either_copyout>
    800075a8:	01450863          	beq	a0,s4,800075b8 <consoleread+0xb4>
    800075ac:	001c0c13          	addi	s8,s8,1
    800075b0:	fffb8b9b          	addiw	s7,s7,-1
    800075b4:	fb5c94e3          	bne	s9,s5,8000755c <consoleread+0x58>
    800075b8:	000b851b          	sext.w	a0,s7
    800075bc:	06813083          	ld	ra,104(sp)
    800075c0:	06013403          	ld	s0,96(sp)
    800075c4:	05813483          	ld	s1,88(sp)
    800075c8:	05013903          	ld	s2,80(sp)
    800075cc:	04813983          	ld	s3,72(sp)
    800075d0:	04013a03          	ld	s4,64(sp)
    800075d4:	03813a83          	ld	s5,56(sp)
    800075d8:	02813b83          	ld	s7,40(sp)
    800075dc:	02013c03          	ld	s8,32(sp)
    800075e0:	01813c83          	ld	s9,24(sp)
    800075e4:	40ab053b          	subw	a0,s6,a0
    800075e8:	03013b03          	ld	s6,48(sp)
    800075ec:	07010113          	addi	sp,sp,112
    800075f0:	00008067          	ret
    800075f4:	00001097          	auipc	ra,0x1
    800075f8:	1d8080e7          	jalr	472(ra) # 800087cc <push_on>
    800075fc:	0984a703          	lw	a4,152(s1)
    80007600:	09c4a783          	lw	a5,156(s1)
    80007604:	0007879b          	sext.w	a5,a5
    80007608:	fef70ce3          	beq	a4,a5,80007600 <consoleread+0xfc>
    8000760c:	00001097          	auipc	ra,0x1
    80007610:	234080e7          	jalr	564(ra) # 80008840 <pop_on>
    80007614:	0984a783          	lw	a5,152(s1)
    80007618:	07f7f713          	andi	a4,a5,127
    8000761c:	00e48733          	add	a4,s1,a4
    80007620:	01874703          	lbu	a4,24(a4)
    80007624:	0017869b          	addiw	a3,a5,1
    80007628:	08d4ac23          	sw	a3,152(s1)
    8000762c:	00070c9b          	sext.w	s9,a4
    80007630:	f5371ee3          	bne	a4,s3,8000758c <consoleread+0x88>
    80007634:	000b851b          	sext.w	a0,s7
    80007638:	f96bf2e3          	bgeu	s7,s6,800075bc <consoleread+0xb8>
    8000763c:	08f4ac23          	sw	a5,152(s1)
    80007640:	f7dff06f          	j	800075bc <consoleread+0xb8>

0000000080007644 <consputc>:
    80007644:	10000793          	li	a5,256
    80007648:	00f50663          	beq	a0,a5,80007654 <consputc+0x10>
    8000764c:	00001317          	auipc	t1,0x1
    80007650:	9f430067          	jr	-1548(t1) # 80008040 <uartputc_sync>
    80007654:	ff010113          	addi	sp,sp,-16
    80007658:	00113423          	sd	ra,8(sp)
    8000765c:	00813023          	sd	s0,0(sp)
    80007660:	01010413          	addi	s0,sp,16
    80007664:	00800513          	li	a0,8
    80007668:	00001097          	auipc	ra,0x1
    8000766c:	9d8080e7          	jalr	-1576(ra) # 80008040 <uartputc_sync>
    80007670:	02000513          	li	a0,32
    80007674:	00001097          	auipc	ra,0x1
    80007678:	9cc080e7          	jalr	-1588(ra) # 80008040 <uartputc_sync>
    8000767c:	00013403          	ld	s0,0(sp)
    80007680:	00813083          	ld	ra,8(sp)
    80007684:	00800513          	li	a0,8
    80007688:	01010113          	addi	sp,sp,16
    8000768c:	00001317          	auipc	t1,0x1
    80007690:	9b430067          	jr	-1612(t1) # 80008040 <uartputc_sync>

0000000080007694 <consoleintr>:
    80007694:	fe010113          	addi	sp,sp,-32
    80007698:	00813823          	sd	s0,16(sp)
    8000769c:	00913423          	sd	s1,8(sp)
    800076a0:	01213023          	sd	s2,0(sp)
    800076a4:	00113c23          	sd	ra,24(sp)
    800076a8:	02010413          	addi	s0,sp,32
    800076ac:	00005917          	auipc	s2,0x5
    800076b0:	58c90913          	addi	s2,s2,1420 # 8000cc38 <cons>
    800076b4:	00050493          	mv	s1,a0
    800076b8:	00090513          	mv	a0,s2
    800076bc:	00001097          	auipc	ra,0x1
    800076c0:	e40080e7          	jalr	-448(ra) # 800084fc <acquire>
    800076c4:	02048c63          	beqz	s1,800076fc <consoleintr+0x68>
    800076c8:	0a092783          	lw	a5,160(s2)
    800076cc:	09892703          	lw	a4,152(s2)
    800076d0:	07f00693          	li	a3,127
    800076d4:	40e7873b          	subw	a4,a5,a4
    800076d8:	02e6e263          	bltu	a3,a4,800076fc <consoleintr+0x68>
    800076dc:	00d00713          	li	a4,13
    800076e0:	04e48063          	beq	s1,a4,80007720 <consoleintr+0x8c>
    800076e4:	07f7f713          	andi	a4,a5,127
    800076e8:	00e90733          	add	a4,s2,a4
    800076ec:	0017879b          	addiw	a5,a5,1
    800076f0:	0af92023          	sw	a5,160(s2)
    800076f4:	00970c23          	sb	s1,24(a4)
    800076f8:	08f92e23          	sw	a5,156(s2)
    800076fc:	01013403          	ld	s0,16(sp)
    80007700:	01813083          	ld	ra,24(sp)
    80007704:	00813483          	ld	s1,8(sp)
    80007708:	00013903          	ld	s2,0(sp)
    8000770c:	00005517          	auipc	a0,0x5
    80007710:	52c50513          	addi	a0,a0,1324 # 8000cc38 <cons>
    80007714:	02010113          	addi	sp,sp,32
    80007718:	00001317          	auipc	t1,0x1
    8000771c:	eb030067          	jr	-336(t1) # 800085c8 <release>
    80007720:	00a00493          	li	s1,10
    80007724:	fc1ff06f          	j	800076e4 <consoleintr+0x50>

0000000080007728 <consoleinit>:
    80007728:	fe010113          	addi	sp,sp,-32
    8000772c:	00113c23          	sd	ra,24(sp)
    80007730:	00813823          	sd	s0,16(sp)
    80007734:	00913423          	sd	s1,8(sp)
    80007738:	02010413          	addi	s0,sp,32
    8000773c:	00005497          	auipc	s1,0x5
    80007740:	4fc48493          	addi	s1,s1,1276 # 8000cc38 <cons>
    80007744:	00048513          	mv	a0,s1
    80007748:	00002597          	auipc	a1,0x2
    8000774c:	f0058593          	addi	a1,a1,-256 # 80009648 <_ZZ12printIntegermE6digits+0x580>
    80007750:	00001097          	auipc	ra,0x1
    80007754:	d88080e7          	jalr	-632(ra) # 800084d8 <initlock>
    80007758:	00000097          	auipc	ra,0x0
    8000775c:	7ac080e7          	jalr	1964(ra) # 80007f04 <uartinit>
    80007760:	01813083          	ld	ra,24(sp)
    80007764:	01013403          	ld	s0,16(sp)
    80007768:	00000797          	auipc	a5,0x0
    8000776c:	d9c78793          	addi	a5,a5,-612 # 80007504 <consoleread>
    80007770:	0af4bc23          	sd	a5,184(s1)
    80007774:	00000797          	auipc	a5,0x0
    80007778:	cec78793          	addi	a5,a5,-788 # 80007460 <consolewrite>
    8000777c:	0cf4b023          	sd	a5,192(s1)
    80007780:	00813483          	ld	s1,8(sp)
    80007784:	02010113          	addi	sp,sp,32
    80007788:	00008067          	ret

000000008000778c <console_read>:
    8000778c:	ff010113          	addi	sp,sp,-16
    80007790:	00813423          	sd	s0,8(sp)
    80007794:	01010413          	addi	s0,sp,16
    80007798:	00813403          	ld	s0,8(sp)
    8000779c:	00005317          	auipc	t1,0x5
    800077a0:	55433303          	ld	t1,1364(t1) # 8000ccf0 <devsw+0x10>
    800077a4:	01010113          	addi	sp,sp,16
    800077a8:	00030067          	jr	t1

00000000800077ac <console_write>:
    800077ac:	ff010113          	addi	sp,sp,-16
    800077b0:	00813423          	sd	s0,8(sp)
    800077b4:	01010413          	addi	s0,sp,16
    800077b8:	00813403          	ld	s0,8(sp)
    800077bc:	00005317          	auipc	t1,0x5
    800077c0:	53c33303          	ld	t1,1340(t1) # 8000ccf8 <devsw+0x18>
    800077c4:	01010113          	addi	sp,sp,16
    800077c8:	00030067          	jr	t1

00000000800077cc <panic>:
    800077cc:	fe010113          	addi	sp,sp,-32
    800077d0:	00113c23          	sd	ra,24(sp)
    800077d4:	00813823          	sd	s0,16(sp)
    800077d8:	00913423          	sd	s1,8(sp)
    800077dc:	02010413          	addi	s0,sp,32
    800077e0:	00050493          	mv	s1,a0
    800077e4:	00002517          	auipc	a0,0x2
    800077e8:	e6c50513          	addi	a0,a0,-404 # 80009650 <_ZZ12printIntegermE6digits+0x588>
    800077ec:	00005797          	auipc	a5,0x5
    800077f0:	5a07a623          	sw	zero,1452(a5) # 8000cd98 <pr+0x18>
    800077f4:	00000097          	auipc	ra,0x0
    800077f8:	034080e7          	jalr	52(ra) # 80007828 <__printf>
    800077fc:	00048513          	mv	a0,s1
    80007800:	00000097          	auipc	ra,0x0
    80007804:	028080e7          	jalr	40(ra) # 80007828 <__printf>
    80007808:	00002517          	auipc	a0,0x2
    8000780c:	bd050513          	addi	a0,a0,-1072 # 800093d8 <_ZZ12printIntegermE6digits+0x310>
    80007810:	00000097          	auipc	ra,0x0
    80007814:	018080e7          	jalr	24(ra) # 80007828 <__printf>
    80007818:	00100793          	li	a5,1
    8000781c:	00004717          	auipc	a4,0x4
    80007820:	24f72623          	sw	a5,588(a4) # 8000ba68 <panicked>
    80007824:	0000006f          	j	80007824 <panic+0x58>

0000000080007828 <__printf>:
    80007828:	f3010113          	addi	sp,sp,-208
    8000782c:	08813023          	sd	s0,128(sp)
    80007830:	07313423          	sd	s3,104(sp)
    80007834:	09010413          	addi	s0,sp,144
    80007838:	05813023          	sd	s8,64(sp)
    8000783c:	08113423          	sd	ra,136(sp)
    80007840:	06913c23          	sd	s1,120(sp)
    80007844:	07213823          	sd	s2,112(sp)
    80007848:	07413023          	sd	s4,96(sp)
    8000784c:	05513c23          	sd	s5,88(sp)
    80007850:	05613823          	sd	s6,80(sp)
    80007854:	05713423          	sd	s7,72(sp)
    80007858:	03913c23          	sd	s9,56(sp)
    8000785c:	03a13823          	sd	s10,48(sp)
    80007860:	03b13423          	sd	s11,40(sp)
    80007864:	00005317          	auipc	t1,0x5
    80007868:	51c30313          	addi	t1,t1,1308 # 8000cd80 <pr>
    8000786c:	01832c03          	lw	s8,24(t1)
    80007870:	00b43423          	sd	a1,8(s0)
    80007874:	00c43823          	sd	a2,16(s0)
    80007878:	00d43c23          	sd	a3,24(s0)
    8000787c:	02e43023          	sd	a4,32(s0)
    80007880:	02f43423          	sd	a5,40(s0)
    80007884:	03043823          	sd	a6,48(s0)
    80007888:	03143c23          	sd	a7,56(s0)
    8000788c:	00050993          	mv	s3,a0
    80007890:	4a0c1663          	bnez	s8,80007d3c <__printf+0x514>
    80007894:	60098c63          	beqz	s3,80007eac <__printf+0x684>
    80007898:	0009c503          	lbu	a0,0(s3)
    8000789c:	00840793          	addi	a5,s0,8
    800078a0:	f6f43c23          	sd	a5,-136(s0)
    800078a4:	00000493          	li	s1,0
    800078a8:	22050063          	beqz	a0,80007ac8 <__printf+0x2a0>
    800078ac:	00002a37          	lui	s4,0x2
    800078b0:	00018ab7          	lui	s5,0x18
    800078b4:	000f4b37          	lui	s6,0xf4
    800078b8:	00989bb7          	lui	s7,0x989
    800078bc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800078c0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800078c4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800078c8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800078cc:	00148c9b          	addiw	s9,s1,1
    800078d0:	02500793          	li	a5,37
    800078d4:	01998933          	add	s2,s3,s9
    800078d8:	38f51263          	bne	a0,a5,80007c5c <__printf+0x434>
    800078dc:	00094783          	lbu	a5,0(s2)
    800078e0:	00078c9b          	sext.w	s9,a5
    800078e4:	1e078263          	beqz	a5,80007ac8 <__printf+0x2a0>
    800078e8:	0024849b          	addiw	s1,s1,2
    800078ec:	07000713          	li	a4,112
    800078f0:	00998933          	add	s2,s3,s1
    800078f4:	38e78a63          	beq	a5,a4,80007c88 <__printf+0x460>
    800078f8:	20f76863          	bltu	a4,a5,80007b08 <__printf+0x2e0>
    800078fc:	42a78863          	beq	a5,a0,80007d2c <__printf+0x504>
    80007900:	06400713          	li	a4,100
    80007904:	40e79663          	bne	a5,a4,80007d10 <__printf+0x4e8>
    80007908:	f7843783          	ld	a5,-136(s0)
    8000790c:	0007a603          	lw	a2,0(a5)
    80007910:	00878793          	addi	a5,a5,8
    80007914:	f6f43c23          	sd	a5,-136(s0)
    80007918:	42064a63          	bltz	a2,80007d4c <__printf+0x524>
    8000791c:	00a00713          	li	a4,10
    80007920:	02e677bb          	remuw	a5,a2,a4
    80007924:	00002d97          	auipc	s11,0x2
    80007928:	d54d8d93          	addi	s11,s11,-684 # 80009678 <digits>
    8000792c:	00900593          	li	a1,9
    80007930:	0006051b          	sext.w	a0,a2
    80007934:	00000c93          	li	s9,0
    80007938:	02079793          	slli	a5,a5,0x20
    8000793c:	0207d793          	srli	a5,a5,0x20
    80007940:	00fd87b3          	add	a5,s11,a5
    80007944:	0007c783          	lbu	a5,0(a5)
    80007948:	02e656bb          	divuw	a3,a2,a4
    8000794c:	f8f40023          	sb	a5,-128(s0)
    80007950:	14c5d863          	bge	a1,a2,80007aa0 <__printf+0x278>
    80007954:	06300593          	li	a1,99
    80007958:	00100c93          	li	s9,1
    8000795c:	02e6f7bb          	remuw	a5,a3,a4
    80007960:	02079793          	slli	a5,a5,0x20
    80007964:	0207d793          	srli	a5,a5,0x20
    80007968:	00fd87b3          	add	a5,s11,a5
    8000796c:	0007c783          	lbu	a5,0(a5)
    80007970:	02e6d73b          	divuw	a4,a3,a4
    80007974:	f8f400a3          	sb	a5,-127(s0)
    80007978:	12a5f463          	bgeu	a1,a0,80007aa0 <__printf+0x278>
    8000797c:	00a00693          	li	a3,10
    80007980:	00900593          	li	a1,9
    80007984:	02d777bb          	remuw	a5,a4,a3
    80007988:	02079793          	slli	a5,a5,0x20
    8000798c:	0207d793          	srli	a5,a5,0x20
    80007990:	00fd87b3          	add	a5,s11,a5
    80007994:	0007c503          	lbu	a0,0(a5)
    80007998:	02d757bb          	divuw	a5,a4,a3
    8000799c:	f8a40123          	sb	a0,-126(s0)
    800079a0:	48e5f263          	bgeu	a1,a4,80007e24 <__printf+0x5fc>
    800079a4:	06300513          	li	a0,99
    800079a8:	02d7f5bb          	remuw	a1,a5,a3
    800079ac:	02059593          	slli	a1,a1,0x20
    800079b0:	0205d593          	srli	a1,a1,0x20
    800079b4:	00bd85b3          	add	a1,s11,a1
    800079b8:	0005c583          	lbu	a1,0(a1)
    800079bc:	02d7d7bb          	divuw	a5,a5,a3
    800079c0:	f8b401a3          	sb	a1,-125(s0)
    800079c4:	48e57263          	bgeu	a0,a4,80007e48 <__printf+0x620>
    800079c8:	3e700513          	li	a0,999
    800079cc:	02d7f5bb          	remuw	a1,a5,a3
    800079d0:	02059593          	slli	a1,a1,0x20
    800079d4:	0205d593          	srli	a1,a1,0x20
    800079d8:	00bd85b3          	add	a1,s11,a1
    800079dc:	0005c583          	lbu	a1,0(a1)
    800079e0:	02d7d7bb          	divuw	a5,a5,a3
    800079e4:	f8b40223          	sb	a1,-124(s0)
    800079e8:	46e57663          	bgeu	a0,a4,80007e54 <__printf+0x62c>
    800079ec:	02d7f5bb          	remuw	a1,a5,a3
    800079f0:	02059593          	slli	a1,a1,0x20
    800079f4:	0205d593          	srli	a1,a1,0x20
    800079f8:	00bd85b3          	add	a1,s11,a1
    800079fc:	0005c583          	lbu	a1,0(a1)
    80007a00:	02d7d7bb          	divuw	a5,a5,a3
    80007a04:	f8b402a3          	sb	a1,-123(s0)
    80007a08:	46ea7863          	bgeu	s4,a4,80007e78 <__printf+0x650>
    80007a0c:	02d7f5bb          	remuw	a1,a5,a3
    80007a10:	02059593          	slli	a1,a1,0x20
    80007a14:	0205d593          	srli	a1,a1,0x20
    80007a18:	00bd85b3          	add	a1,s11,a1
    80007a1c:	0005c583          	lbu	a1,0(a1)
    80007a20:	02d7d7bb          	divuw	a5,a5,a3
    80007a24:	f8b40323          	sb	a1,-122(s0)
    80007a28:	3eeaf863          	bgeu	s5,a4,80007e18 <__printf+0x5f0>
    80007a2c:	02d7f5bb          	remuw	a1,a5,a3
    80007a30:	02059593          	slli	a1,a1,0x20
    80007a34:	0205d593          	srli	a1,a1,0x20
    80007a38:	00bd85b3          	add	a1,s11,a1
    80007a3c:	0005c583          	lbu	a1,0(a1)
    80007a40:	02d7d7bb          	divuw	a5,a5,a3
    80007a44:	f8b403a3          	sb	a1,-121(s0)
    80007a48:	42eb7e63          	bgeu	s6,a4,80007e84 <__printf+0x65c>
    80007a4c:	02d7f5bb          	remuw	a1,a5,a3
    80007a50:	02059593          	slli	a1,a1,0x20
    80007a54:	0205d593          	srli	a1,a1,0x20
    80007a58:	00bd85b3          	add	a1,s11,a1
    80007a5c:	0005c583          	lbu	a1,0(a1)
    80007a60:	02d7d7bb          	divuw	a5,a5,a3
    80007a64:	f8b40423          	sb	a1,-120(s0)
    80007a68:	42ebfc63          	bgeu	s7,a4,80007ea0 <__printf+0x678>
    80007a6c:	02079793          	slli	a5,a5,0x20
    80007a70:	0207d793          	srli	a5,a5,0x20
    80007a74:	00fd8db3          	add	s11,s11,a5
    80007a78:	000dc703          	lbu	a4,0(s11)
    80007a7c:	00a00793          	li	a5,10
    80007a80:	00900c93          	li	s9,9
    80007a84:	f8e404a3          	sb	a4,-119(s0)
    80007a88:	00065c63          	bgez	a2,80007aa0 <__printf+0x278>
    80007a8c:	f9040713          	addi	a4,s0,-112
    80007a90:	00f70733          	add	a4,a4,a5
    80007a94:	02d00693          	li	a3,45
    80007a98:	fed70823          	sb	a3,-16(a4)
    80007a9c:	00078c93          	mv	s9,a5
    80007aa0:	f8040793          	addi	a5,s0,-128
    80007aa4:	01978cb3          	add	s9,a5,s9
    80007aa8:	f7f40d13          	addi	s10,s0,-129
    80007aac:	000cc503          	lbu	a0,0(s9)
    80007ab0:	fffc8c93          	addi	s9,s9,-1
    80007ab4:	00000097          	auipc	ra,0x0
    80007ab8:	b90080e7          	jalr	-1136(ra) # 80007644 <consputc>
    80007abc:	ffac98e3          	bne	s9,s10,80007aac <__printf+0x284>
    80007ac0:	00094503          	lbu	a0,0(s2)
    80007ac4:	e00514e3          	bnez	a0,800078cc <__printf+0xa4>
    80007ac8:	1a0c1663          	bnez	s8,80007c74 <__printf+0x44c>
    80007acc:	08813083          	ld	ra,136(sp)
    80007ad0:	08013403          	ld	s0,128(sp)
    80007ad4:	07813483          	ld	s1,120(sp)
    80007ad8:	07013903          	ld	s2,112(sp)
    80007adc:	06813983          	ld	s3,104(sp)
    80007ae0:	06013a03          	ld	s4,96(sp)
    80007ae4:	05813a83          	ld	s5,88(sp)
    80007ae8:	05013b03          	ld	s6,80(sp)
    80007aec:	04813b83          	ld	s7,72(sp)
    80007af0:	04013c03          	ld	s8,64(sp)
    80007af4:	03813c83          	ld	s9,56(sp)
    80007af8:	03013d03          	ld	s10,48(sp)
    80007afc:	02813d83          	ld	s11,40(sp)
    80007b00:	0d010113          	addi	sp,sp,208
    80007b04:	00008067          	ret
    80007b08:	07300713          	li	a4,115
    80007b0c:	1ce78a63          	beq	a5,a4,80007ce0 <__printf+0x4b8>
    80007b10:	07800713          	li	a4,120
    80007b14:	1ee79e63          	bne	a5,a4,80007d10 <__printf+0x4e8>
    80007b18:	f7843783          	ld	a5,-136(s0)
    80007b1c:	0007a703          	lw	a4,0(a5)
    80007b20:	00878793          	addi	a5,a5,8
    80007b24:	f6f43c23          	sd	a5,-136(s0)
    80007b28:	28074263          	bltz	a4,80007dac <__printf+0x584>
    80007b2c:	00002d97          	auipc	s11,0x2
    80007b30:	b4cd8d93          	addi	s11,s11,-1204 # 80009678 <digits>
    80007b34:	00f77793          	andi	a5,a4,15
    80007b38:	00fd87b3          	add	a5,s11,a5
    80007b3c:	0007c683          	lbu	a3,0(a5)
    80007b40:	00f00613          	li	a2,15
    80007b44:	0007079b          	sext.w	a5,a4
    80007b48:	f8d40023          	sb	a3,-128(s0)
    80007b4c:	0047559b          	srliw	a1,a4,0x4
    80007b50:	0047569b          	srliw	a3,a4,0x4
    80007b54:	00000c93          	li	s9,0
    80007b58:	0ee65063          	bge	a2,a4,80007c38 <__printf+0x410>
    80007b5c:	00f6f693          	andi	a3,a3,15
    80007b60:	00dd86b3          	add	a3,s11,a3
    80007b64:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007b68:	0087d79b          	srliw	a5,a5,0x8
    80007b6c:	00100c93          	li	s9,1
    80007b70:	f8d400a3          	sb	a3,-127(s0)
    80007b74:	0cb67263          	bgeu	a2,a1,80007c38 <__printf+0x410>
    80007b78:	00f7f693          	andi	a3,a5,15
    80007b7c:	00dd86b3          	add	a3,s11,a3
    80007b80:	0006c583          	lbu	a1,0(a3)
    80007b84:	00f00613          	li	a2,15
    80007b88:	0047d69b          	srliw	a3,a5,0x4
    80007b8c:	f8b40123          	sb	a1,-126(s0)
    80007b90:	0047d593          	srli	a1,a5,0x4
    80007b94:	28f67e63          	bgeu	a2,a5,80007e30 <__printf+0x608>
    80007b98:	00f6f693          	andi	a3,a3,15
    80007b9c:	00dd86b3          	add	a3,s11,a3
    80007ba0:	0006c503          	lbu	a0,0(a3)
    80007ba4:	0087d813          	srli	a6,a5,0x8
    80007ba8:	0087d69b          	srliw	a3,a5,0x8
    80007bac:	f8a401a3          	sb	a0,-125(s0)
    80007bb0:	28b67663          	bgeu	a2,a1,80007e3c <__printf+0x614>
    80007bb4:	00f6f693          	andi	a3,a3,15
    80007bb8:	00dd86b3          	add	a3,s11,a3
    80007bbc:	0006c583          	lbu	a1,0(a3)
    80007bc0:	00c7d513          	srli	a0,a5,0xc
    80007bc4:	00c7d69b          	srliw	a3,a5,0xc
    80007bc8:	f8b40223          	sb	a1,-124(s0)
    80007bcc:	29067a63          	bgeu	a2,a6,80007e60 <__printf+0x638>
    80007bd0:	00f6f693          	andi	a3,a3,15
    80007bd4:	00dd86b3          	add	a3,s11,a3
    80007bd8:	0006c583          	lbu	a1,0(a3)
    80007bdc:	0107d813          	srli	a6,a5,0x10
    80007be0:	0107d69b          	srliw	a3,a5,0x10
    80007be4:	f8b402a3          	sb	a1,-123(s0)
    80007be8:	28a67263          	bgeu	a2,a0,80007e6c <__printf+0x644>
    80007bec:	00f6f693          	andi	a3,a3,15
    80007bf0:	00dd86b3          	add	a3,s11,a3
    80007bf4:	0006c683          	lbu	a3,0(a3)
    80007bf8:	0147d79b          	srliw	a5,a5,0x14
    80007bfc:	f8d40323          	sb	a3,-122(s0)
    80007c00:	21067663          	bgeu	a2,a6,80007e0c <__printf+0x5e4>
    80007c04:	02079793          	slli	a5,a5,0x20
    80007c08:	0207d793          	srli	a5,a5,0x20
    80007c0c:	00fd8db3          	add	s11,s11,a5
    80007c10:	000dc683          	lbu	a3,0(s11)
    80007c14:	00800793          	li	a5,8
    80007c18:	00700c93          	li	s9,7
    80007c1c:	f8d403a3          	sb	a3,-121(s0)
    80007c20:	00075c63          	bgez	a4,80007c38 <__printf+0x410>
    80007c24:	f9040713          	addi	a4,s0,-112
    80007c28:	00f70733          	add	a4,a4,a5
    80007c2c:	02d00693          	li	a3,45
    80007c30:	fed70823          	sb	a3,-16(a4)
    80007c34:	00078c93          	mv	s9,a5
    80007c38:	f8040793          	addi	a5,s0,-128
    80007c3c:	01978cb3          	add	s9,a5,s9
    80007c40:	f7f40d13          	addi	s10,s0,-129
    80007c44:	000cc503          	lbu	a0,0(s9)
    80007c48:	fffc8c93          	addi	s9,s9,-1
    80007c4c:	00000097          	auipc	ra,0x0
    80007c50:	9f8080e7          	jalr	-1544(ra) # 80007644 <consputc>
    80007c54:	ff9d18e3          	bne	s10,s9,80007c44 <__printf+0x41c>
    80007c58:	0100006f          	j	80007c68 <__printf+0x440>
    80007c5c:	00000097          	auipc	ra,0x0
    80007c60:	9e8080e7          	jalr	-1560(ra) # 80007644 <consputc>
    80007c64:	000c8493          	mv	s1,s9
    80007c68:	00094503          	lbu	a0,0(s2)
    80007c6c:	c60510e3          	bnez	a0,800078cc <__printf+0xa4>
    80007c70:	e40c0ee3          	beqz	s8,80007acc <__printf+0x2a4>
    80007c74:	00005517          	auipc	a0,0x5
    80007c78:	10c50513          	addi	a0,a0,268 # 8000cd80 <pr>
    80007c7c:	00001097          	auipc	ra,0x1
    80007c80:	94c080e7          	jalr	-1716(ra) # 800085c8 <release>
    80007c84:	e49ff06f          	j	80007acc <__printf+0x2a4>
    80007c88:	f7843783          	ld	a5,-136(s0)
    80007c8c:	03000513          	li	a0,48
    80007c90:	01000d13          	li	s10,16
    80007c94:	00878713          	addi	a4,a5,8
    80007c98:	0007bc83          	ld	s9,0(a5)
    80007c9c:	f6e43c23          	sd	a4,-136(s0)
    80007ca0:	00000097          	auipc	ra,0x0
    80007ca4:	9a4080e7          	jalr	-1628(ra) # 80007644 <consputc>
    80007ca8:	07800513          	li	a0,120
    80007cac:	00000097          	auipc	ra,0x0
    80007cb0:	998080e7          	jalr	-1640(ra) # 80007644 <consputc>
    80007cb4:	00002d97          	auipc	s11,0x2
    80007cb8:	9c4d8d93          	addi	s11,s11,-1596 # 80009678 <digits>
    80007cbc:	03ccd793          	srli	a5,s9,0x3c
    80007cc0:	00fd87b3          	add	a5,s11,a5
    80007cc4:	0007c503          	lbu	a0,0(a5)
    80007cc8:	fffd0d1b          	addiw	s10,s10,-1
    80007ccc:	004c9c93          	slli	s9,s9,0x4
    80007cd0:	00000097          	auipc	ra,0x0
    80007cd4:	974080e7          	jalr	-1676(ra) # 80007644 <consputc>
    80007cd8:	fe0d12e3          	bnez	s10,80007cbc <__printf+0x494>
    80007cdc:	f8dff06f          	j	80007c68 <__printf+0x440>
    80007ce0:	f7843783          	ld	a5,-136(s0)
    80007ce4:	0007bc83          	ld	s9,0(a5)
    80007ce8:	00878793          	addi	a5,a5,8
    80007cec:	f6f43c23          	sd	a5,-136(s0)
    80007cf0:	000c9a63          	bnez	s9,80007d04 <__printf+0x4dc>
    80007cf4:	1080006f          	j	80007dfc <__printf+0x5d4>
    80007cf8:	001c8c93          	addi	s9,s9,1
    80007cfc:	00000097          	auipc	ra,0x0
    80007d00:	948080e7          	jalr	-1720(ra) # 80007644 <consputc>
    80007d04:	000cc503          	lbu	a0,0(s9)
    80007d08:	fe0518e3          	bnez	a0,80007cf8 <__printf+0x4d0>
    80007d0c:	f5dff06f          	j	80007c68 <__printf+0x440>
    80007d10:	02500513          	li	a0,37
    80007d14:	00000097          	auipc	ra,0x0
    80007d18:	930080e7          	jalr	-1744(ra) # 80007644 <consputc>
    80007d1c:	000c8513          	mv	a0,s9
    80007d20:	00000097          	auipc	ra,0x0
    80007d24:	924080e7          	jalr	-1756(ra) # 80007644 <consputc>
    80007d28:	f41ff06f          	j	80007c68 <__printf+0x440>
    80007d2c:	02500513          	li	a0,37
    80007d30:	00000097          	auipc	ra,0x0
    80007d34:	914080e7          	jalr	-1772(ra) # 80007644 <consputc>
    80007d38:	f31ff06f          	j	80007c68 <__printf+0x440>
    80007d3c:	00030513          	mv	a0,t1
    80007d40:	00000097          	auipc	ra,0x0
    80007d44:	7bc080e7          	jalr	1980(ra) # 800084fc <acquire>
    80007d48:	b4dff06f          	j	80007894 <__printf+0x6c>
    80007d4c:	40c0053b          	negw	a0,a2
    80007d50:	00a00713          	li	a4,10
    80007d54:	02e576bb          	remuw	a3,a0,a4
    80007d58:	00002d97          	auipc	s11,0x2
    80007d5c:	920d8d93          	addi	s11,s11,-1760 # 80009678 <digits>
    80007d60:	ff700593          	li	a1,-9
    80007d64:	02069693          	slli	a3,a3,0x20
    80007d68:	0206d693          	srli	a3,a3,0x20
    80007d6c:	00dd86b3          	add	a3,s11,a3
    80007d70:	0006c683          	lbu	a3,0(a3)
    80007d74:	02e557bb          	divuw	a5,a0,a4
    80007d78:	f8d40023          	sb	a3,-128(s0)
    80007d7c:	10b65e63          	bge	a2,a1,80007e98 <__printf+0x670>
    80007d80:	06300593          	li	a1,99
    80007d84:	02e7f6bb          	remuw	a3,a5,a4
    80007d88:	02069693          	slli	a3,a3,0x20
    80007d8c:	0206d693          	srli	a3,a3,0x20
    80007d90:	00dd86b3          	add	a3,s11,a3
    80007d94:	0006c683          	lbu	a3,0(a3)
    80007d98:	02e7d73b          	divuw	a4,a5,a4
    80007d9c:	00200793          	li	a5,2
    80007da0:	f8d400a3          	sb	a3,-127(s0)
    80007da4:	bca5ece3          	bltu	a1,a0,8000797c <__printf+0x154>
    80007da8:	ce5ff06f          	j	80007a8c <__printf+0x264>
    80007dac:	40e007bb          	negw	a5,a4
    80007db0:	00002d97          	auipc	s11,0x2
    80007db4:	8c8d8d93          	addi	s11,s11,-1848 # 80009678 <digits>
    80007db8:	00f7f693          	andi	a3,a5,15
    80007dbc:	00dd86b3          	add	a3,s11,a3
    80007dc0:	0006c583          	lbu	a1,0(a3)
    80007dc4:	ff100613          	li	a2,-15
    80007dc8:	0047d69b          	srliw	a3,a5,0x4
    80007dcc:	f8b40023          	sb	a1,-128(s0)
    80007dd0:	0047d59b          	srliw	a1,a5,0x4
    80007dd4:	0ac75e63          	bge	a4,a2,80007e90 <__printf+0x668>
    80007dd8:	00f6f693          	andi	a3,a3,15
    80007ddc:	00dd86b3          	add	a3,s11,a3
    80007de0:	0006c603          	lbu	a2,0(a3)
    80007de4:	00f00693          	li	a3,15
    80007de8:	0087d79b          	srliw	a5,a5,0x8
    80007dec:	f8c400a3          	sb	a2,-127(s0)
    80007df0:	d8b6e4e3          	bltu	a3,a1,80007b78 <__printf+0x350>
    80007df4:	00200793          	li	a5,2
    80007df8:	e2dff06f          	j	80007c24 <__printf+0x3fc>
    80007dfc:	00002c97          	auipc	s9,0x2
    80007e00:	85cc8c93          	addi	s9,s9,-1956 # 80009658 <_ZZ12printIntegermE6digits+0x590>
    80007e04:	02800513          	li	a0,40
    80007e08:	ef1ff06f          	j	80007cf8 <__printf+0x4d0>
    80007e0c:	00700793          	li	a5,7
    80007e10:	00600c93          	li	s9,6
    80007e14:	e0dff06f          	j	80007c20 <__printf+0x3f8>
    80007e18:	00700793          	li	a5,7
    80007e1c:	00600c93          	li	s9,6
    80007e20:	c69ff06f          	j	80007a88 <__printf+0x260>
    80007e24:	00300793          	li	a5,3
    80007e28:	00200c93          	li	s9,2
    80007e2c:	c5dff06f          	j	80007a88 <__printf+0x260>
    80007e30:	00300793          	li	a5,3
    80007e34:	00200c93          	li	s9,2
    80007e38:	de9ff06f          	j	80007c20 <__printf+0x3f8>
    80007e3c:	00400793          	li	a5,4
    80007e40:	00300c93          	li	s9,3
    80007e44:	dddff06f          	j	80007c20 <__printf+0x3f8>
    80007e48:	00400793          	li	a5,4
    80007e4c:	00300c93          	li	s9,3
    80007e50:	c39ff06f          	j	80007a88 <__printf+0x260>
    80007e54:	00500793          	li	a5,5
    80007e58:	00400c93          	li	s9,4
    80007e5c:	c2dff06f          	j	80007a88 <__printf+0x260>
    80007e60:	00500793          	li	a5,5
    80007e64:	00400c93          	li	s9,4
    80007e68:	db9ff06f          	j	80007c20 <__printf+0x3f8>
    80007e6c:	00600793          	li	a5,6
    80007e70:	00500c93          	li	s9,5
    80007e74:	dadff06f          	j	80007c20 <__printf+0x3f8>
    80007e78:	00600793          	li	a5,6
    80007e7c:	00500c93          	li	s9,5
    80007e80:	c09ff06f          	j	80007a88 <__printf+0x260>
    80007e84:	00800793          	li	a5,8
    80007e88:	00700c93          	li	s9,7
    80007e8c:	bfdff06f          	j	80007a88 <__printf+0x260>
    80007e90:	00100793          	li	a5,1
    80007e94:	d91ff06f          	j	80007c24 <__printf+0x3fc>
    80007e98:	00100793          	li	a5,1
    80007e9c:	bf1ff06f          	j	80007a8c <__printf+0x264>
    80007ea0:	00900793          	li	a5,9
    80007ea4:	00800c93          	li	s9,8
    80007ea8:	be1ff06f          	j	80007a88 <__printf+0x260>
    80007eac:	00001517          	auipc	a0,0x1
    80007eb0:	7b450513          	addi	a0,a0,1972 # 80009660 <_ZZ12printIntegermE6digits+0x598>
    80007eb4:	00000097          	auipc	ra,0x0
    80007eb8:	918080e7          	jalr	-1768(ra) # 800077cc <panic>

0000000080007ebc <printfinit>:
    80007ebc:	fe010113          	addi	sp,sp,-32
    80007ec0:	00813823          	sd	s0,16(sp)
    80007ec4:	00913423          	sd	s1,8(sp)
    80007ec8:	00113c23          	sd	ra,24(sp)
    80007ecc:	02010413          	addi	s0,sp,32
    80007ed0:	00005497          	auipc	s1,0x5
    80007ed4:	eb048493          	addi	s1,s1,-336 # 8000cd80 <pr>
    80007ed8:	00048513          	mv	a0,s1
    80007edc:	00001597          	auipc	a1,0x1
    80007ee0:	79458593          	addi	a1,a1,1940 # 80009670 <_ZZ12printIntegermE6digits+0x5a8>
    80007ee4:	00000097          	auipc	ra,0x0
    80007ee8:	5f4080e7          	jalr	1524(ra) # 800084d8 <initlock>
    80007eec:	01813083          	ld	ra,24(sp)
    80007ef0:	01013403          	ld	s0,16(sp)
    80007ef4:	0004ac23          	sw	zero,24(s1)
    80007ef8:	00813483          	ld	s1,8(sp)
    80007efc:	02010113          	addi	sp,sp,32
    80007f00:	00008067          	ret

0000000080007f04 <uartinit>:
    80007f04:	ff010113          	addi	sp,sp,-16
    80007f08:	00813423          	sd	s0,8(sp)
    80007f0c:	01010413          	addi	s0,sp,16
    80007f10:	100007b7          	lui	a5,0x10000
    80007f14:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007f18:	f8000713          	li	a4,-128
    80007f1c:	00e781a3          	sb	a4,3(a5)
    80007f20:	00300713          	li	a4,3
    80007f24:	00e78023          	sb	a4,0(a5)
    80007f28:	000780a3          	sb	zero,1(a5)
    80007f2c:	00e781a3          	sb	a4,3(a5)
    80007f30:	00700693          	li	a3,7
    80007f34:	00d78123          	sb	a3,2(a5)
    80007f38:	00e780a3          	sb	a4,1(a5)
    80007f3c:	00813403          	ld	s0,8(sp)
    80007f40:	01010113          	addi	sp,sp,16
    80007f44:	00008067          	ret

0000000080007f48 <uartputc>:
    80007f48:	00004797          	auipc	a5,0x4
    80007f4c:	b207a783          	lw	a5,-1248(a5) # 8000ba68 <panicked>
    80007f50:	00078463          	beqz	a5,80007f58 <uartputc+0x10>
    80007f54:	0000006f          	j	80007f54 <uartputc+0xc>
    80007f58:	fd010113          	addi	sp,sp,-48
    80007f5c:	02813023          	sd	s0,32(sp)
    80007f60:	00913c23          	sd	s1,24(sp)
    80007f64:	01213823          	sd	s2,16(sp)
    80007f68:	01313423          	sd	s3,8(sp)
    80007f6c:	02113423          	sd	ra,40(sp)
    80007f70:	03010413          	addi	s0,sp,48
    80007f74:	00004917          	auipc	s2,0x4
    80007f78:	afc90913          	addi	s2,s2,-1284 # 8000ba70 <uart_tx_r>
    80007f7c:	00093783          	ld	a5,0(s2)
    80007f80:	00004497          	auipc	s1,0x4
    80007f84:	af848493          	addi	s1,s1,-1288 # 8000ba78 <uart_tx_w>
    80007f88:	0004b703          	ld	a4,0(s1)
    80007f8c:	02078693          	addi	a3,a5,32
    80007f90:	00050993          	mv	s3,a0
    80007f94:	02e69c63          	bne	a3,a4,80007fcc <uartputc+0x84>
    80007f98:	00001097          	auipc	ra,0x1
    80007f9c:	834080e7          	jalr	-1996(ra) # 800087cc <push_on>
    80007fa0:	00093783          	ld	a5,0(s2)
    80007fa4:	0004b703          	ld	a4,0(s1)
    80007fa8:	02078793          	addi	a5,a5,32
    80007fac:	00e79463          	bne	a5,a4,80007fb4 <uartputc+0x6c>
    80007fb0:	0000006f          	j	80007fb0 <uartputc+0x68>
    80007fb4:	00001097          	auipc	ra,0x1
    80007fb8:	88c080e7          	jalr	-1908(ra) # 80008840 <pop_on>
    80007fbc:	00093783          	ld	a5,0(s2)
    80007fc0:	0004b703          	ld	a4,0(s1)
    80007fc4:	02078693          	addi	a3,a5,32
    80007fc8:	fce688e3          	beq	a3,a4,80007f98 <uartputc+0x50>
    80007fcc:	01f77693          	andi	a3,a4,31
    80007fd0:	00005597          	auipc	a1,0x5
    80007fd4:	dd058593          	addi	a1,a1,-560 # 8000cda0 <uart_tx_buf>
    80007fd8:	00d586b3          	add	a3,a1,a3
    80007fdc:	00170713          	addi	a4,a4,1
    80007fe0:	01368023          	sb	s3,0(a3)
    80007fe4:	00e4b023          	sd	a4,0(s1)
    80007fe8:	10000637          	lui	a2,0x10000
    80007fec:	02f71063          	bne	a4,a5,8000800c <uartputc+0xc4>
    80007ff0:	0340006f          	j	80008024 <uartputc+0xdc>
    80007ff4:	00074703          	lbu	a4,0(a4)
    80007ff8:	00f93023          	sd	a5,0(s2)
    80007ffc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80008000:	00093783          	ld	a5,0(s2)
    80008004:	0004b703          	ld	a4,0(s1)
    80008008:	00f70e63          	beq	a4,a5,80008024 <uartputc+0xdc>
    8000800c:	00564683          	lbu	a3,5(a2)
    80008010:	01f7f713          	andi	a4,a5,31
    80008014:	00e58733          	add	a4,a1,a4
    80008018:	0206f693          	andi	a3,a3,32
    8000801c:	00178793          	addi	a5,a5,1
    80008020:	fc069ae3          	bnez	a3,80007ff4 <uartputc+0xac>
    80008024:	02813083          	ld	ra,40(sp)
    80008028:	02013403          	ld	s0,32(sp)
    8000802c:	01813483          	ld	s1,24(sp)
    80008030:	01013903          	ld	s2,16(sp)
    80008034:	00813983          	ld	s3,8(sp)
    80008038:	03010113          	addi	sp,sp,48
    8000803c:	00008067          	ret

0000000080008040 <uartputc_sync>:
    80008040:	ff010113          	addi	sp,sp,-16
    80008044:	00813423          	sd	s0,8(sp)
    80008048:	01010413          	addi	s0,sp,16
    8000804c:	00004717          	auipc	a4,0x4
    80008050:	a1c72703          	lw	a4,-1508(a4) # 8000ba68 <panicked>
    80008054:	02071663          	bnez	a4,80008080 <uartputc_sync+0x40>
    80008058:	00050793          	mv	a5,a0
    8000805c:	100006b7          	lui	a3,0x10000
    80008060:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80008064:	02077713          	andi	a4,a4,32
    80008068:	fe070ce3          	beqz	a4,80008060 <uartputc_sync+0x20>
    8000806c:	0ff7f793          	andi	a5,a5,255
    80008070:	00f68023          	sb	a5,0(a3)
    80008074:	00813403          	ld	s0,8(sp)
    80008078:	01010113          	addi	sp,sp,16
    8000807c:	00008067          	ret
    80008080:	0000006f          	j	80008080 <uartputc_sync+0x40>

0000000080008084 <uartstart>:
    80008084:	ff010113          	addi	sp,sp,-16
    80008088:	00813423          	sd	s0,8(sp)
    8000808c:	01010413          	addi	s0,sp,16
    80008090:	00004617          	auipc	a2,0x4
    80008094:	9e060613          	addi	a2,a2,-1568 # 8000ba70 <uart_tx_r>
    80008098:	00004517          	auipc	a0,0x4
    8000809c:	9e050513          	addi	a0,a0,-1568 # 8000ba78 <uart_tx_w>
    800080a0:	00063783          	ld	a5,0(a2)
    800080a4:	00053703          	ld	a4,0(a0)
    800080a8:	04f70263          	beq	a4,a5,800080ec <uartstart+0x68>
    800080ac:	100005b7          	lui	a1,0x10000
    800080b0:	00005817          	auipc	a6,0x5
    800080b4:	cf080813          	addi	a6,a6,-784 # 8000cda0 <uart_tx_buf>
    800080b8:	01c0006f          	j	800080d4 <uartstart+0x50>
    800080bc:	0006c703          	lbu	a4,0(a3)
    800080c0:	00f63023          	sd	a5,0(a2)
    800080c4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800080c8:	00063783          	ld	a5,0(a2)
    800080cc:	00053703          	ld	a4,0(a0)
    800080d0:	00f70e63          	beq	a4,a5,800080ec <uartstart+0x68>
    800080d4:	01f7f713          	andi	a4,a5,31
    800080d8:	00e806b3          	add	a3,a6,a4
    800080dc:	0055c703          	lbu	a4,5(a1)
    800080e0:	00178793          	addi	a5,a5,1
    800080e4:	02077713          	andi	a4,a4,32
    800080e8:	fc071ae3          	bnez	a4,800080bc <uartstart+0x38>
    800080ec:	00813403          	ld	s0,8(sp)
    800080f0:	01010113          	addi	sp,sp,16
    800080f4:	00008067          	ret

00000000800080f8 <uartgetc>:
    800080f8:	ff010113          	addi	sp,sp,-16
    800080fc:	00813423          	sd	s0,8(sp)
    80008100:	01010413          	addi	s0,sp,16
    80008104:	10000737          	lui	a4,0x10000
    80008108:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000810c:	0017f793          	andi	a5,a5,1
    80008110:	00078c63          	beqz	a5,80008128 <uartgetc+0x30>
    80008114:	00074503          	lbu	a0,0(a4)
    80008118:	0ff57513          	andi	a0,a0,255
    8000811c:	00813403          	ld	s0,8(sp)
    80008120:	01010113          	addi	sp,sp,16
    80008124:	00008067          	ret
    80008128:	fff00513          	li	a0,-1
    8000812c:	ff1ff06f          	j	8000811c <uartgetc+0x24>

0000000080008130 <uartintr>:
    80008130:	100007b7          	lui	a5,0x10000
    80008134:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80008138:	0017f793          	andi	a5,a5,1
    8000813c:	0a078463          	beqz	a5,800081e4 <uartintr+0xb4>
    80008140:	fe010113          	addi	sp,sp,-32
    80008144:	00813823          	sd	s0,16(sp)
    80008148:	00913423          	sd	s1,8(sp)
    8000814c:	00113c23          	sd	ra,24(sp)
    80008150:	02010413          	addi	s0,sp,32
    80008154:	100004b7          	lui	s1,0x10000
    80008158:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000815c:	0ff57513          	andi	a0,a0,255
    80008160:	fffff097          	auipc	ra,0xfffff
    80008164:	534080e7          	jalr	1332(ra) # 80007694 <consoleintr>
    80008168:	0054c783          	lbu	a5,5(s1)
    8000816c:	0017f793          	andi	a5,a5,1
    80008170:	fe0794e3          	bnez	a5,80008158 <uartintr+0x28>
    80008174:	00004617          	auipc	a2,0x4
    80008178:	8fc60613          	addi	a2,a2,-1796 # 8000ba70 <uart_tx_r>
    8000817c:	00004517          	auipc	a0,0x4
    80008180:	8fc50513          	addi	a0,a0,-1796 # 8000ba78 <uart_tx_w>
    80008184:	00063783          	ld	a5,0(a2)
    80008188:	00053703          	ld	a4,0(a0)
    8000818c:	04f70263          	beq	a4,a5,800081d0 <uartintr+0xa0>
    80008190:	100005b7          	lui	a1,0x10000
    80008194:	00005817          	auipc	a6,0x5
    80008198:	c0c80813          	addi	a6,a6,-1012 # 8000cda0 <uart_tx_buf>
    8000819c:	01c0006f          	j	800081b8 <uartintr+0x88>
    800081a0:	0006c703          	lbu	a4,0(a3)
    800081a4:	00f63023          	sd	a5,0(a2)
    800081a8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800081ac:	00063783          	ld	a5,0(a2)
    800081b0:	00053703          	ld	a4,0(a0)
    800081b4:	00f70e63          	beq	a4,a5,800081d0 <uartintr+0xa0>
    800081b8:	01f7f713          	andi	a4,a5,31
    800081bc:	00e806b3          	add	a3,a6,a4
    800081c0:	0055c703          	lbu	a4,5(a1)
    800081c4:	00178793          	addi	a5,a5,1
    800081c8:	02077713          	andi	a4,a4,32
    800081cc:	fc071ae3          	bnez	a4,800081a0 <uartintr+0x70>
    800081d0:	01813083          	ld	ra,24(sp)
    800081d4:	01013403          	ld	s0,16(sp)
    800081d8:	00813483          	ld	s1,8(sp)
    800081dc:	02010113          	addi	sp,sp,32
    800081e0:	00008067          	ret
    800081e4:	00004617          	auipc	a2,0x4
    800081e8:	88c60613          	addi	a2,a2,-1908 # 8000ba70 <uart_tx_r>
    800081ec:	00004517          	auipc	a0,0x4
    800081f0:	88c50513          	addi	a0,a0,-1908 # 8000ba78 <uart_tx_w>
    800081f4:	00063783          	ld	a5,0(a2)
    800081f8:	00053703          	ld	a4,0(a0)
    800081fc:	04f70263          	beq	a4,a5,80008240 <uartintr+0x110>
    80008200:	100005b7          	lui	a1,0x10000
    80008204:	00005817          	auipc	a6,0x5
    80008208:	b9c80813          	addi	a6,a6,-1124 # 8000cda0 <uart_tx_buf>
    8000820c:	01c0006f          	j	80008228 <uartintr+0xf8>
    80008210:	0006c703          	lbu	a4,0(a3)
    80008214:	00f63023          	sd	a5,0(a2)
    80008218:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000821c:	00063783          	ld	a5,0(a2)
    80008220:	00053703          	ld	a4,0(a0)
    80008224:	02f70063          	beq	a4,a5,80008244 <uartintr+0x114>
    80008228:	01f7f713          	andi	a4,a5,31
    8000822c:	00e806b3          	add	a3,a6,a4
    80008230:	0055c703          	lbu	a4,5(a1)
    80008234:	00178793          	addi	a5,a5,1
    80008238:	02077713          	andi	a4,a4,32
    8000823c:	fc071ae3          	bnez	a4,80008210 <uartintr+0xe0>
    80008240:	00008067          	ret
    80008244:	00008067          	ret

0000000080008248 <kinit>:
    80008248:	fc010113          	addi	sp,sp,-64
    8000824c:	02913423          	sd	s1,40(sp)
    80008250:	fffff7b7          	lui	a5,0xfffff
    80008254:	00006497          	auipc	s1,0x6
    80008258:	b6b48493          	addi	s1,s1,-1173 # 8000ddbf <end+0xfff>
    8000825c:	02813823          	sd	s0,48(sp)
    80008260:	01313c23          	sd	s3,24(sp)
    80008264:	00f4f4b3          	and	s1,s1,a5
    80008268:	02113c23          	sd	ra,56(sp)
    8000826c:	03213023          	sd	s2,32(sp)
    80008270:	01413823          	sd	s4,16(sp)
    80008274:	01513423          	sd	s5,8(sp)
    80008278:	04010413          	addi	s0,sp,64
    8000827c:	000017b7          	lui	a5,0x1
    80008280:	01100993          	li	s3,17
    80008284:	00f487b3          	add	a5,s1,a5
    80008288:	01b99993          	slli	s3,s3,0x1b
    8000828c:	06f9e063          	bltu	s3,a5,800082ec <kinit+0xa4>
    80008290:	00005a97          	auipc	s5,0x5
    80008294:	b30a8a93          	addi	s5,s5,-1232 # 8000cdc0 <end>
    80008298:	0754ec63          	bltu	s1,s5,80008310 <kinit+0xc8>
    8000829c:	0734fa63          	bgeu	s1,s3,80008310 <kinit+0xc8>
    800082a0:	00088a37          	lui	s4,0x88
    800082a4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800082a8:	00003917          	auipc	s2,0x3
    800082ac:	7d890913          	addi	s2,s2,2008 # 8000ba80 <kmem>
    800082b0:	00ca1a13          	slli	s4,s4,0xc
    800082b4:	0140006f          	j	800082c8 <kinit+0x80>
    800082b8:	000017b7          	lui	a5,0x1
    800082bc:	00f484b3          	add	s1,s1,a5
    800082c0:	0554e863          	bltu	s1,s5,80008310 <kinit+0xc8>
    800082c4:	0534f663          	bgeu	s1,s3,80008310 <kinit+0xc8>
    800082c8:	00001637          	lui	a2,0x1
    800082cc:	00100593          	li	a1,1
    800082d0:	00048513          	mv	a0,s1
    800082d4:	00000097          	auipc	ra,0x0
    800082d8:	5e4080e7          	jalr	1508(ra) # 800088b8 <__memset>
    800082dc:	00093783          	ld	a5,0(s2)
    800082e0:	00f4b023          	sd	a5,0(s1)
    800082e4:	00993023          	sd	s1,0(s2)
    800082e8:	fd4498e3          	bne	s1,s4,800082b8 <kinit+0x70>
    800082ec:	03813083          	ld	ra,56(sp)
    800082f0:	03013403          	ld	s0,48(sp)
    800082f4:	02813483          	ld	s1,40(sp)
    800082f8:	02013903          	ld	s2,32(sp)
    800082fc:	01813983          	ld	s3,24(sp)
    80008300:	01013a03          	ld	s4,16(sp)
    80008304:	00813a83          	ld	s5,8(sp)
    80008308:	04010113          	addi	sp,sp,64
    8000830c:	00008067          	ret
    80008310:	00001517          	auipc	a0,0x1
    80008314:	38050513          	addi	a0,a0,896 # 80009690 <digits+0x18>
    80008318:	fffff097          	auipc	ra,0xfffff
    8000831c:	4b4080e7          	jalr	1204(ra) # 800077cc <panic>

0000000080008320 <freerange>:
    80008320:	fc010113          	addi	sp,sp,-64
    80008324:	000017b7          	lui	a5,0x1
    80008328:	02913423          	sd	s1,40(sp)
    8000832c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80008330:	009504b3          	add	s1,a0,s1
    80008334:	fffff537          	lui	a0,0xfffff
    80008338:	02813823          	sd	s0,48(sp)
    8000833c:	02113c23          	sd	ra,56(sp)
    80008340:	03213023          	sd	s2,32(sp)
    80008344:	01313c23          	sd	s3,24(sp)
    80008348:	01413823          	sd	s4,16(sp)
    8000834c:	01513423          	sd	s5,8(sp)
    80008350:	01613023          	sd	s6,0(sp)
    80008354:	04010413          	addi	s0,sp,64
    80008358:	00a4f4b3          	and	s1,s1,a0
    8000835c:	00f487b3          	add	a5,s1,a5
    80008360:	06f5e463          	bltu	a1,a5,800083c8 <freerange+0xa8>
    80008364:	00005a97          	auipc	s5,0x5
    80008368:	a5ca8a93          	addi	s5,s5,-1444 # 8000cdc0 <end>
    8000836c:	0954e263          	bltu	s1,s5,800083f0 <freerange+0xd0>
    80008370:	01100993          	li	s3,17
    80008374:	01b99993          	slli	s3,s3,0x1b
    80008378:	0734fc63          	bgeu	s1,s3,800083f0 <freerange+0xd0>
    8000837c:	00058a13          	mv	s4,a1
    80008380:	00003917          	auipc	s2,0x3
    80008384:	70090913          	addi	s2,s2,1792 # 8000ba80 <kmem>
    80008388:	00002b37          	lui	s6,0x2
    8000838c:	0140006f          	j	800083a0 <freerange+0x80>
    80008390:	000017b7          	lui	a5,0x1
    80008394:	00f484b3          	add	s1,s1,a5
    80008398:	0554ec63          	bltu	s1,s5,800083f0 <freerange+0xd0>
    8000839c:	0534fa63          	bgeu	s1,s3,800083f0 <freerange+0xd0>
    800083a0:	00001637          	lui	a2,0x1
    800083a4:	00100593          	li	a1,1
    800083a8:	00048513          	mv	a0,s1
    800083ac:	00000097          	auipc	ra,0x0
    800083b0:	50c080e7          	jalr	1292(ra) # 800088b8 <__memset>
    800083b4:	00093703          	ld	a4,0(s2)
    800083b8:	016487b3          	add	a5,s1,s6
    800083bc:	00e4b023          	sd	a4,0(s1)
    800083c0:	00993023          	sd	s1,0(s2)
    800083c4:	fcfa76e3          	bgeu	s4,a5,80008390 <freerange+0x70>
    800083c8:	03813083          	ld	ra,56(sp)
    800083cc:	03013403          	ld	s0,48(sp)
    800083d0:	02813483          	ld	s1,40(sp)
    800083d4:	02013903          	ld	s2,32(sp)
    800083d8:	01813983          	ld	s3,24(sp)
    800083dc:	01013a03          	ld	s4,16(sp)
    800083e0:	00813a83          	ld	s5,8(sp)
    800083e4:	00013b03          	ld	s6,0(sp)
    800083e8:	04010113          	addi	sp,sp,64
    800083ec:	00008067          	ret
    800083f0:	00001517          	auipc	a0,0x1
    800083f4:	2a050513          	addi	a0,a0,672 # 80009690 <digits+0x18>
    800083f8:	fffff097          	auipc	ra,0xfffff
    800083fc:	3d4080e7          	jalr	980(ra) # 800077cc <panic>

0000000080008400 <kfree>:
    80008400:	fe010113          	addi	sp,sp,-32
    80008404:	00813823          	sd	s0,16(sp)
    80008408:	00113c23          	sd	ra,24(sp)
    8000840c:	00913423          	sd	s1,8(sp)
    80008410:	02010413          	addi	s0,sp,32
    80008414:	03451793          	slli	a5,a0,0x34
    80008418:	04079c63          	bnez	a5,80008470 <kfree+0x70>
    8000841c:	00005797          	auipc	a5,0x5
    80008420:	9a478793          	addi	a5,a5,-1628 # 8000cdc0 <end>
    80008424:	00050493          	mv	s1,a0
    80008428:	04f56463          	bltu	a0,a5,80008470 <kfree+0x70>
    8000842c:	01100793          	li	a5,17
    80008430:	01b79793          	slli	a5,a5,0x1b
    80008434:	02f57e63          	bgeu	a0,a5,80008470 <kfree+0x70>
    80008438:	00001637          	lui	a2,0x1
    8000843c:	00100593          	li	a1,1
    80008440:	00000097          	auipc	ra,0x0
    80008444:	478080e7          	jalr	1144(ra) # 800088b8 <__memset>
    80008448:	00003797          	auipc	a5,0x3
    8000844c:	63878793          	addi	a5,a5,1592 # 8000ba80 <kmem>
    80008450:	0007b703          	ld	a4,0(a5)
    80008454:	01813083          	ld	ra,24(sp)
    80008458:	01013403          	ld	s0,16(sp)
    8000845c:	00e4b023          	sd	a4,0(s1)
    80008460:	0097b023          	sd	s1,0(a5)
    80008464:	00813483          	ld	s1,8(sp)
    80008468:	02010113          	addi	sp,sp,32
    8000846c:	00008067          	ret
    80008470:	00001517          	auipc	a0,0x1
    80008474:	22050513          	addi	a0,a0,544 # 80009690 <digits+0x18>
    80008478:	fffff097          	auipc	ra,0xfffff
    8000847c:	354080e7          	jalr	852(ra) # 800077cc <panic>

0000000080008480 <kalloc>:
    80008480:	fe010113          	addi	sp,sp,-32
    80008484:	00813823          	sd	s0,16(sp)
    80008488:	00913423          	sd	s1,8(sp)
    8000848c:	00113c23          	sd	ra,24(sp)
    80008490:	02010413          	addi	s0,sp,32
    80008494:	00003797          	auipc	a5,0x3
    80008498:	5ec78793          	addi	a5,a5,1516 # 8000ba80 <kmem>
    8000849c:	0007b483          	ld	s1,0(a5)
    800084a0:	02048063          	beqz	s1,800084c0 <kalloc+0x40>
    800084a4:	0004b703          	ld	a4,0(s1)
    800084a8:	00001637          	lui	a2,0x1
    800084ac:	00500593          	li	a1,5
    800084b0:	00048513          	mv	a0,s1
    800084b4:	00e7b023          	sd	a4,0(a5)
    800084b8:	00000097          	auipc	ra,0x0
    800084bc:	400080e7          	jalr	1024(ra) # 800088b8 <__memset>
    800084c0:	01813083          	ld	ra,24(sp)
    800084c4:	01013403          	ld	s0,16(sp)
    800084c8:	00048513          	mv	a0,s1
    800084cc:	00813483          	ld	s1,8(sp)
    800084d0:	02010113          	addi	sp,sp,32
    800084d4:	00008067          	ret

00000000800084d8 <initlock>:
    800084d8:	ff010113          	addi	sp,sp,-16
    800084dc:	00813423          	sd	s0,8(sp)
    800084e0:	01010413          	addi	s0,sp,16
    800084e4:	00813403          	ld	s0,8(sp)
    800084e8:	00b53423          	sd	a1,8(a0)
    800084ec:	00052023          	sw	zero,0(a0)
    800084f0:	00053823          	sd	zero,16(a0)
    800084f4:	01010113          	addi	sp,sp,16
    800084f8:	00008067          	ret

00000000800084fc <acquire>:
    800084fc:	fe010113          	addi	sp,sp,-32
    80008500:	00813823          	sd	s0,16(sp)
    80008504:	00913423          	sd	s1,8(sp)
    80008508:	00113c23          	sd	ra,24(sp)
    8000850c:	01213023          	sd	s2,0(sp)
    80008510:	02010413          	addi	s0,sp,32
    80008514:	00050493          	mv	s1,a0
    80008518:	10002973          	csrr	s2,sstatus
    8000851c:	100027f3          	csrr	a5,sstatus
    80008520:	ffd7f793          	andi	a5,a5,-3
    80008524:	10079073          	csrw	sstatus,a5
    80008528:	fffff097          	auipc	ra,0xfffff
    8000852c:	8e4080e7          	jalr	-1820(ra) # 80006e0c <mycpu>
    80008530:	07852783          	lw	a5,120(a0)
    80008534:	06078e63          	beqz	a5,800085b0 <acquire+0xb4>
    80008538:	fffff097          	auipc	ra,0xfffff
    8000853c:	8d4080e7          	jalr	-1836(ra) # 80006e0c <mycpu>
    80008540:	07852783          	lw	a5,120(a0)
    80008544:	0004a703          	lw	a4,0(s1)
    80008548:	0017879b          	addiw	a5,a5,1
    8000854c:	06f52c23          	sw	a5,120(a0)
    80008550:	04071063          	bnez	a4,80008590 <acquire+0x94>
    80008554:	00100713          	li	a4,1
    80008558:	00070793          	mv	a5,a4
    8000855c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80008560:	0007879b          	sext.w	a5,a5
    80008564:	fe079ae3          	bnez	a5,80008558 <acquire+0x5c>
    80008568:	0ff0000f          	fence
    8000856c:	fffff097          	auipc	ra,0xfffff
    80008570:	8a0080e7          	jalr	-1888(ra) # 80006e0c <mycpu>
    80008574:	01813083          	ld	ra,24(sp)
    80008578:	01013403          	ld	s0,16(sp)
    8000857c:	00a4b823          	sd	a0,16(s1)
    80008580:	00013903          	ld	s2,0(sp)
    80008584:	00813483          	ld	s1,8(sp)
    80008588:	02010113          	addi	sp,sp,32
    8000858c:	00008067          	ret
    80008590:	0104b903          	ld	s2,16(s1)
    80008594:	fffff097          	auipc	ra,0xfffff
    80008598:	878080e7          	jalr	-1928(ra) # 80006e0c <mycpu>
    8000859c:	faa91ce3          	bne	s2,a0,80008554 <acquire+0x58>
    800085a0:	00001517          	auipc	a0,0x1
    800085a4:	0f850513          	addi	a0,a0,248 # 80009698 <digits+0x20>
    800085a8:	fffff097          	auipc	ra,0xfffff
    800085ac:	224080e7          	jalr	548(ra) # 800077cc <panic>
    800085b0:	00195913          	srli	s2,s2,0x1
    800085b4:	fffff097          	auipc	ra,0xfffff
    800085b8:	858080e7          	jalr	-1960(ra) # 80006e0c <mycpu>
    800085bc:	00197913          	andi	s2,s2,1
    800085c0:	07252e23          	sw	s2,124(a0)
    800085c4:	f75ff06f          	j	80008538 <acquire+0x3c>

00000000800085c8 <release>:
    800085c8:	fe010113          	addi	sp,sp,-32
    800085cc:	00813823          	sd	s0,16(sp)
    800085d0:	00113c23          	sd	ra,24(sp)
    800085d4:	00913423          	sd	s1,8(sp)
    800085d8:	01213023          	sd	s2,0(sp)
    800085dc:	02010413          	addi	s0,sp,32
    800085e0:	00052783          	lw	a5,0(a0)
    800085e4:	00079a63          	bnez	a5,800085f8 <release+0x30>
    800085e8:	00001517          	auipc	a0,0x1
    800085ec:	0b850513          	addi	a0,a0,184 # 800096a0 <digits+0x28>
    800085f0:	fffff097          	auipc	ra,0xfffff
    800085f4:	1dc080e7          	jalr	476(ra) # 800077cc <panic>
    800085f8:	01053903          	ld	s2,16(a0)
    800085fc:	00050493          	mv	s1,a0
    80008600:	fffff097          	auipc	ra,0xfffff
    80008604:	80c080e7          	jalr	-2036(ra) # 80006e0c <mycpu>
    80008608:	fea910e3          	bne	s2,a0,800085e8 <release+0x20>
    8000860c:	0004b823          	sd	zero,16(s1)
    80008610:	0ff0000f          	fence
    80008614:	0f50000f          	fence	iorw,ow
    80008618:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000861c:	ffffe097          	auipc	ra,0xffffe
    80008620:	7f0080e7          	jalr	2032(ra) # 80006e0c <mycpu>
    80008624:	100027f3          	csrr	a5,sstatus
    80008628:	0027f793          	andi	a5,a5,2
    8000862c:	04079a63          	bnez	a5,80008680 <release+0xb8>
    80008630:	07852783          	lw	a5,120(a0)
    80008634:	02f05e63          	blez	a5,80008670 <release+0xa8>
    80008638:	fff7871b          	addiw	a4,a5,-1
    8000863c:	06e52c23          	sw	a4,120(a0)
    80008640:	00071c63          	bnez	a4,80008658 <release+0x90>
    80008644:	07c52783          	lw	a5,124(a0)
    80008648:	00078863          	beqz	a5,80008658 <release+0x90>
    8000864c:	100027f3          	csrr	a5,sstatus
    80008650:	0027e793          	ori	a5,a5,2
    80008654:	10079073          	csrw	sstatus,a5
    80008658:	01813083          	ld	ra,24(sp)
    8000865c:	01013403          	ld	s0,16(sp)
    80008660:	00813483          	ld	s1,8(sp)
    80008664:	00013903          	ld	s2,0(sp)
    80008668:	02010113          	addi	sp,sp,32
    8000866c:	00008067          	ret
    80008670:	00001517          	auipc	a0,0x1
    80008674:	05050513          	addi	a0,a0,80 # 800096c0 <digits+0x48>
    80008678:	fffff097          	auipc	ra,0xfffff
    8000867c:	154080e7          	jalr	340(ra) # 800077cc <panic>
    80008680:	00001517          	auipc	a0,0x1
    80008684:	02850513          	addi	a0,a0,40 # 800096a8 <digits+0x30>
    80008688:	fffff097          	auipc	ra,0xfffff
    8000868c:	144080e7          	jalr	324(ra) # 800077cc <panic>

0000000080008690 <holding>:
    80008690:	00052783          	lw	a5,0(a0)
    80008694:	00079663          	bnez	a5,800086a0 <holding+0x10>
    80008698:	00000513          	li	a0,0
    8000869c:	00008067          	ret
    800086a0:	fe010113          	addi	sp,sp,-32
    800086a4:	00813823          	sd	s0,16(sp)
    800086a8:	00913423          	sd	s1,8(sp)
    800086ac:	00113c23          	sd	ra,24(sp)
    800086b0:	02010413          	addi	s0,sp,32
    800086b4:	01053483          	ld	s1,16(a0)
    800086b8:	ffffe097          	auipc	ra,0xffffe
    800086bc:	754080e7          	jalr	1876(ra) # 80006e0c <mycpu>
    800086c0:	01813083          	ld	ra,24(sp)
    800086c4:	01013403          	ld	s0,16(sp)
    800086c8:	40a48533          	sub	a0,s1,a0
    800086cc:	00153513          	seqz	a0,a0
    800086d0:	00813483          	ld	s1,8(sp)
    800086d4:	02010113          	addi	sp,sp,32
    800086d8:	00008067          	ret

00000000800086dc <push_off>:
    800086dc:	fe010113          	addi	sp,sp,-32
    800086e0:	00813823          	sd	s0,16(sp)
    800086e4:	00113c23          	sd	ra,24(sp)
    800086e8:	00913423          	sd	s1,8(sp)
    800086ec:	02010413          	addi	s0,sp,32
    800086f0:	100024f3          	csrr	s1,sstatus
    800086f4:	100027f3          	csrr	a5,sstatus
    800086f8:	ffd7f793          	andi	a5,a5,-3
    800086fc:	10079073          	csrw	sstatus,a5
    80008700:	ffffe097          	auipc	ra,0xffffe
    80008704:	70c080e7          	jalr	1804(ra) # 80006e0c <mycpu>
    80008708:	07852783          	lw	a5,120(a0)
    8000870c:	02078663          	beqz	a5,80008738 <push_off+0x5c>
    80008710:	ffffe097          	auipc	ra,0xffffe
    80008714:	6fc080e7          	jalr	1788(ra) # 80006e0c <mycpu>
    80008718:	07852783          	lw	a5,120(a0)
    8000871c:	01813083          	ld	ra,24(sp)
    80008720:	01013403          	ld	s0,16(sp)
    80008724:	0017879b          	addiw	a5,a5,1
    80008728:	06f52c23          	sw	a5,120(a0)
    8000872c:	00813483          	ld	s1,8(sp)
    80008730:	02010113          	addi	sp,sp,32
    80008734:	00008067          	ret
    80008738:	0014d493          	srli	s1,s1,0x1
    8000873c:	ffffe097          	auipc	ra,0xffffe
    80008740:	6d0080e7          	jalr	1744(ra) # 80006e0c <mycpu>
    80008744:	0014f493          	andi	s1,s1,1
    80008748:	06952e23          	sw	s1,124(a0)
    8000874c:	fc5ff06f          	j	80008710 <push_off+0x34>

0000000080008750 <pop_off>:
    80008750:	ff010113          	addi	sp,sp,-16
    80008754:	00813023          	sd	s0,0(sp)
    80008758:	00113423          	sd	ra,8(sp)
    8000875c:	01010413          	addi	s0,sp,16
    80008760:	ffffe097          	auipc	ra,0xffffe
    80008764:	6ac080e7          	jalr	1708(ra) # 80006e0c <mycpu>
    80008768:	100027f3          	csrr	a5,sstatus
    8000876c:	0027f793          	andi	a5,a5,2
    80008770:	04079663          	bnez	a5,800087bc <pop_off+0x6c>
    80008774:	07852783          	lw	a5,120(a0)
    80008778:	02f05a63          	blez	a5,800087ac <pop_off+0x5c>
    8000877c:	fff7871b          	addiw	a4,a5,-1
    80008780:	06e52c23          	sw	a4,120(a0)
    80008784:	00071c63          	bnez	a4,8000879c <pop_off+0x4c>
    80008788:	07c52783          	lw	a5,124(a0)
    8000878c:	00078863          	beqz	a5,8000879c <pop_off+0x4c>
    80008790:	100027f3          	csrr	a5,sstatus
    80008794:	0027e793          	ori	a5,a5,2
    80008798:	10079073          	csrw	sstatus,a5
    8000879c:	00813083          	ld	ra,8(sp)
    800087a0:	00013403          	ld	s0,0(sp)
    800087a4:	01010113          	addi	sp,sp,16
    800087a8:	00008067          	ret
    800087ac:	00001517          	auipc	a0,0x1
    800087b0:	f1450513          	addi	a0,a0,-236 # 800096c0 <digits+0x48>
    800087b4:	fffff097          	auipc	ra,0xfffff
    800087b8:	018080e7          	jalr	24(ra) # 800077cc <panic>
    800087bc:	00001517          	auipc	a0,0x1
    800087c0:	eec50513          	addi	a0,a0,-276 # 800096a8 <digits+0x30>
    800087c4:	fffff097          	auipc	ra,0xfffff
    800087c8:	008080e7          	jalr	8(ra) # 800077cc <panic>

00000000800087cc <push_on>:
    800087cc:	fe010113          	addi	sp,sp,-32
    800087d0:	00813823          	sd	s0,16(sp)
    800087d4:	00113c23          	sd	ra,24(sp)
    800087d8:	00913423          	sd	s1,8(sp)
    800087dc:	02010413          	addi	s0,sp,32
    800087e0:	100024f3          	csrr	s1,sstatus
    800087e4:	100027f3          	csrr	a5,sstatus
    800087e8:	0027e793          	ori	a5,a5,2
    800087ec:	10079073          	csrw	sstatus,a5
    800087f0:	ffffe097          	auipc	ra,0xffffe
    800087f4:	61c080e7          	jalr	1564(ra) # 80006e0c <mycpu>
    800087f8:	07852783          	lw	a5,120(a0)
    800087fc:	02078663          	beqz	a5,80008828 <push_on+0x5c>
    80008800:	ffffe097          	auipc	ra,0xffffe
    80008804:	60c080e7          	jalr	1548(ra) # 80006e0c <mycpu>
    80008808:	07852783          	lw	a5,120(a0)
    8000880c:	01813083          	ld	ra,24(sp)
    80008810:	01013403          	ld	s0,16(sp)
    80008814:	0017879b          	addiw	a5,a5,1
    80008818:	06f52c23          	sw	a5,120(a0)
    8000881c:	00813483          	ld	s1,8(sp)
    80008820:	02010113          	addi	sp,sp,32
    80008824:	00008067          	ret
    80008828:	0014d493          	srli	s1,s1,0x1
    8000882c:	ffffe097          	auipc	ra,0xffffe
    80008830:	5e0080e7          	jalr	1504(ra) # 80006e0c <mycpu>
    80008834:	0014f493          	andi	s1,s1,1
    80008838:	06952e23          	sw	s1,124(a0)
    8000883c:	fc5ff06f          	j	80008800 <push_on+0x34>

0000000080008840 <pop_on>:
    80008840:	ff010113          	addi	sp,sp,-16
    80008844:	00813023          	sd	s0,0(sp)
    80008848:	00113423          	sd	ra,8(sp)
    8000884c:	01010413          	addi	s0,sp,16
    80008850:	ffffe097          	auipc	ra,0xffffe
    80008854:	5bc080e7          	jalr	1468(ra) # 80006e0c <mycpu>
    80008858:	100027f3          	csrr	a5,sstatus
    8000885c:	0027f793          	andi	a5,a5,2
    80008860:	04078463          	beqz	a5,800088a8 <pop_on+0x68>
    80008864:	07852783          	lw	a5,120(a0)
    80008868:	02f05863          	blez	a5,80008898 <pop_on+0x58>
    8000886c:	fff7879b          	addiw	a5,a5,-1
    80008870:	06f52c23          	sw	a5,120(a0)
    80008874:	07853783          	ld	a5,120(a0)
    80008878:	00079863          	bnez	a5,80008888 <pop_on+0x48>
    8000887c:	100027f3          	csrr	a5,sstatus
    80008880:	ffd7f793          	andi	a5,a5,-3
    80008884:	10079073          	csrw	sstatus,a5
    80008888:	00813083          	ld	ra,8(sp)
    8000888c:	00013403          	ld	s0,0(sp)
    80008890:	01010113          	addi	sp,sp,16
    80008894:	00008067          	ret
    80008898:	00001517          	auipc	a0,0x1
    8000889c:	e5050513          	addi	a0,a0,-432 # 800096e8 <digits+0x70>
    800088a0:	fffff097          	auipc	ra,0xfffff
    800088a4:	f2c080e7          	jalr	-212(ra) # 800077cc <panic>
    800088a8:	00001517          	auipc	a0,0x1
    800088ac:	e2050513          	addi	a0,a0,-480 # 800096c8 <digits+0x50>
    800088b0:	fffff097          	auipc	ra,0xfffff
    800088b4:	f1c080e7          	jalr	-228(ra) # 800077cc <panic>

00000000800088b8 <__memset>:
    800088b8:	ff010113          	addi	sp,sp,-16
    800088bc:	00813423          	sd	s0,8(sp)
    800088c0:	01010413          	addi	s0,sp,16
    800088c4:	1a060e63          	beqz	a2,80008a80 <__memset+0x1c8>
    800088c8:	40a007b3          	neg	a5,a0
    800088cc:	0077f793          	andi	a5,a5,7
    800088d0:	00778693          	addi	a3,a5,7
    800088d4:	00b00813          	li	a6,11
    800088d8:	0ff5f593          	andi	a1,a1,255
    800088dc:	fff6071b          	addiw	a4,a2,-1
    800088e0:	1b06e663          	bltu	a3,a6,80008a8c <__memset+0x1d4>
    800088e4:	1cd76463          	bltu	a4,a3,80008aac <__memset+0x1f4>
    800088e8:	1a078e63          	beqz	a5,80008aa4 <__memset+0x1ec>
    800088ec:	00b50023          	sb	a1,0(a0)
    800088f0:	00100713          	li	a4,1
    800088f4:	1ae78463          	beq	a5,a4,80008a9c <__memset+0x1e4>
    800088f8:	00b500a3          	sb	a1,1(a0)
    800088fc:	00200713          	li	a4,2
    80008900:	1ae78a63          	beq	a5,a4,80008ab4 <__memset+0x1fc>
    80008904:	00b50123          	sb	a1,2(a0)
    80008908:	00300713          	li	a4,3
    8000890c:	18e78463          	beq	a5,a4,80008a94 <__memset+0x1dc>
    80008910:	00b501a3          	sb	a1,3(a0)
    80008914:	00400713          	li	a4,4
    80008918:	1ae78263          	beq	a5,a4,80008abc <__memset+0x204>
    8000891c:	00b50223          	sb	a1,4(a0)
    80008920:	00500713          	li	a4,5
    80008924:	1ae78063          	beq	a5,a4,80008ac4 <__memset+0x20c>
    80008928:	00b502a3          	sb	a1,5(a0)
    8000892c:	00700713          	li	a4,7
    80008930:	18e79e63          	bne	a5,a4,80008acc <__memset+0x214>
    80008934:	00b50323          	sb	a1,6(a0)
    80008938:	00700e93          	li	t4,7
    8000893c:	00859713          	slli	a4,a1,0x8
    80008940:	00e5e733          	or	a4,a1,a4
    80008944:	01059e13          	slli	t3,a1,0x10
    80008948:	01c76e33          	or	t3,a4,t3
    8000894c:	01859313          	slli	t1,a1,0x18
    80008950:	006e6333          	or	t1,t3,t1
    80008954:	02059893          	slli	a7,a1,0x20
    80008958:	40f60e3b          	subw	t3,a2,a5
    8000895c:	011368b3          	or	a7,t1,a7
    80008960:	02859813          	slli	a6,a1,0x28
    80008964:	0108e833          	or	a6,a7,a6
    80008968:	03059693          	slli	a3,a1,0x30
    8000896c:	003e589b          	srliw	a7,t3,0x3
    80008970:	00d866b3          	or	a3,a6,a3
    80008974:	03859713          	slli	a4,a1,0x38
    80008978:	00389813          	slli	a6,a7,0x3
    8000897c:	00f507b3          	add	a5,a0,a5
    80008980:	00e6e733          	or	a4,a3,a4
    80008984:	000e089b          	sext.w	a7,t3
    80008988:	00f806b3          	add	a3,a6,a5
    8000898c:	00e7b023          	sd	a4,0(a5)
    80008990:	00878793          	addi	a5,a5,8
    80008994:	fed79ce3          	bne	a5,a3,8000898c <__memset+0xd4>
    80008998:	ff8e7793          	andi	a5,t3,-8
    8000899c:	0007871b          	sext.w	a4,a5
    800089a0:	01d787bb          	addw	a5,a5,t4
    800089a4:	0ce88e63          	beq	a7,a4,80008a80 <__memset+0x1c8>
    800089a8:	00f50733          	add	a4,a0,a5
    800089ac:	00b70023          	sb	a1,0(a4)
    800089b0:	0017871b          	addiw	a4,a5,1
    800089b4:	0cc77663          	bgeu	a4,a2,80008a80 <__memset+0x1c8>
    800089b8:	00e50733          	add	a4,a0,a4
    800089bc:	00b70023          	sb	a1,0(a4)
    800089c0:	0027871b          	addiw	a4,a5,2
    800089c4:	0ac77e63          	bgeu	a4,a2,80008a80 <__memset+0x1c8>
    800089c8:	00e50733          	add	a4,a0,a4
    800089cc:	00b70023          	sb	a1,0(a4)
    800089d0:	0037871b          	addiw	a4,a5,3
    800089d4:	0ac77663          	bgeu	a4,a2,80008a80 <__memset+0x1c8>
    800089d8:	00e50733          	add	a4,a0,a4
    800089dc:	00b70023          	sb	a1,0(a4)
    800089e0:	0047871b          	addiw	a4,a5,4
    800089e4:	08c77e63          	bgeu	a4,a2,80008a80 <__memset+0x1c8>
    800089e8:	00e50733          	add	a4,a0,a4
    800089ec:	00b70023          	sb	a1,0(a4)
    800089f0:	0057871b          	addiw	a4,a5,5
    800089f4:	08c77663          	bgeu	a4,a2,80008a80 <__memset+0x1c8>
    800089f8:	00e50733          	add	a4,a0,a4
    800089fc:	00b70023          	sb	a1,0(a4)
    80008a00:	0067871b          	addiw	a4,a5,6
    80008a04:	06c77e63          	bgeu	a4,a2,80008a80 <__memset+0x1c8>
    80008a08:	00e50733          	add	a4,a0,a4
    80008a0c:	00b70023          	sb	a1,0(a4)
    80008a10:	0077871b          	addiw	a4,a5,7
    80008a14:	06c77663          	bgeu	a4,a2,80008a80 <__memset+0x1c8>
    80008a18:	00e50733          	add	a4,a0,a4
    80008a1c:	00b70023          	sb	a1,0(a4)
    80008a20:	0087871b          	addiw	a4,a5,8
    80008a24:	04c77e63          	bgeu	a4,a2,80008a80 <__memset+0x1c8>
    80008a28:	00e50733          	add	a4,a0,a4
    80008a2c:	00b70023          	sb	a1,0(a4)
    80008a30:	0097871b          	addiw	a4,a5,9
    80008a34:	04c77663          	bgeu	a4,a2,80008a80 <__memset+0x1c8>
    80008a38:	00e50733          	add	a4,a0,a4
    80008a3c:	00b70023          	sb	a1,0(a4)
    80008a40:	00a7871b          	addiw	a4,a5,10
    80008a44:	02c77e63          	bgeu	a4,a2,80008a80 <__memset+0x1c8>
    80008a48:	00e50733          	add	a4,a0,a4
    80008a4c:	00b70023          	sb	a1,0(a4)
    80008a50:	00b7871b          	addiw	a4,a5,11
    80008a54:	02c77663          	bgeu	a4,a2,80008a80 <__memset+0x1c8>
    80008a58:	00e50733          	add	a4,a0,a4
    80008a5c:	00b70023          	sb	a1,0(a4)
    80008a60:	00c7871b          	addiw	a4,a5,12
    80008a64:	00c77e63          	bgeu	a4,a2,80008a80 <__memset+0x1c8>
    80008a68:	00e50733          	add	a4,a0,a4
    80008a6c:	00b70023          	sb	a1,0(a4)
    80008a70:	00d7879b          	addiw	a5,a5,13
    80008a74:	00c7f663          	bgeu	a5,a2,80008a80 <__memset+0x1c8>
    80008a78:	00f507b3          	add	a5,a0,a5
    80008a7c:	00b78023          	sb	a1,0(a5)
    80008a80:	00813403          	ld	s0,8(sp)
    80008a84:	01010113          	addi	sp,sp,16
    80008a88:	00008067          	ret
    80008a8c:	00b00693          	li	a3,11
    80008a90:	e55ff06f          	j	800088e4 <__memset+0x2c>
    80008a94:	00300e93          	li	t4,3
    80008a98:	ea5ff06f          	j	8000893c <__memset+0x84>
    80008a9c:	00100e93          	li	t4,1
    80008aa0:	e9dff06f          	j	8000893c <__memset+0x84>
    80008aa4:	00000e93          	li	t4,0
    80008aa8:	e95ff06f          	j	8000893c <__memset+0x84>
    80008aac:	00000793          	li	a5,0
    80008ab0:	ef9ff06f          	j	800089a8 <__memset+0xf0>
    80008ab4:	00200e93          	li	t4,2
    80008ab8:	e85ff06f          	j	8000893c <__memset+0x84>
    80008abc:	00400e93          	li	t4,4
    80008ac0:	e7dff06f          	j	8000893c <__memset+0x84>
    80008ac4:	00500e93          	li	t4,5
    80008ac8:	e75ff06f          	j	8000893c <__memset+0x84>
    80008acc:	00600e93          	li	t4,6
    80008ad0:	e6dff06f          	j	8000893c <__memset+0x84>

0000000080008ad4 <__memmove>:
    80008ad4:	ff010113          	addi	sp,sp,-16
    80008ad8:	00813423          	sd	s0,8(sp)
    80008adc:	01010413          	addi	s0,sp,16
    80008ae0:	0e060863          	beqz	a2,80008bd0 <__memmove+0xfc>
    80008ae4:	fff6069b          	addiw	a3,a2,-1
    80008ae8:	0006881b          	sext.w	a6,a3
    80008aec:	0ea5e863          	bltu	a1,a0,80008bdc <__memmove+0x108>
    80008af0:	00758713          	addi	a4,a1,7
    80008af4:	00a5e7b3          	or	a5,a1,a0
    80008af8:	40a70733          	sub	a4,a4,a0
    80008afc:	0077f793          	andi	a5,a5,7
    80008b00:	00f73713          	sltiu	a4,a4,15
    80008b04:	00174713          	xori	a4,a4,1
    80008b08:	0017b793          	seqz	a5,a5
    80008b0c:	00e7f7b3          	and	a5,a5,a4
    80008b10:	10078863          	beqz	a5,80008c20 <__memmove+0x14c>
    80008b14:	00900793          	li	a5,9
    80008b18:	1107f463          	bgeu	a5,a6,80008c20 <__memmove+0x14c>
    80008b1c:	0036581b          	srliw	a6,a2,0x3
    80008b20:	fff8081b          	addiw	a6,a6,-1
    80008b24:	02081813          	slli	a6,a6,0x20
    80008b28:	01d85893          	srli	a7,a6,0x1d
    80008b2c:	00858813          	addi	a6,a1,8
    80008b30:	00058793          	mv	a5,a1
    80008b34:	00050713          	mv	a4,a0
    80008b38:	01088833          	add	a6,a7,a6
    80008b3c:	0007b883          	ld	a7,0(a5)
    80008b40:	00878793          	addi	a5,a5,8
    80008b44:	00870713          	addi	a4,a4,8
    80008b48:	ff173c23          	sd	a7,-8(a4)
    80008b4c:	ff0798e3          	bne	a5,a6,80008b3c <__memmove+0x68>
    80008b50:	ff867713          	andi	a4,a2,-8
    80008b54:	02071793          	slli	a5,a4,0x20
    80008b58:	0207d793          	srli	a5,a5,0x20
    80008b5c:	00f585b3          	add	a1,a1,a5
    80008b60:	40e686bb          	subw	a3,a3,a4
    80008b64:	00f507b3          	add	a5,a0,a5
    80008b68:	06e60463          	beq	a2,a4,80008bd0 <__memmove+0xfc>
    80008b6c:	0005c703          	lbu	a4,0(a1)
    80008b70:	00e78023          	sb	a4,0(a5)
    80008b74:	04068e63          	beqz	a3,80008bd0 <__memmove+0xfc>
    80008b78:	0015c603          	lbu	a2,1(a1)
    80008b7c:	00100713          	li	a4,1
    80008b80:	00c780a3          	sb	a2,1(a5)
    80008b84:	04e68663          	beq	a3,a4,80008bd0 <__memmove+0xfc>
    80008b88:	0025c603          	lbu	a2,2(a1)
    80008b8c:	00200713          	li	a4,2
    80008b90:	00c78123          	sb	a2,2(a5)
    80008b94:	02e68e63          	beq	a3,a4,80008bd0 <__memmove+0xfc>
    80008b98:	0035c603          	lbu	a2,3(a1)
    80008b9c:	00300713          	li	a4,3
    80008ba0:	00c781a3          	sb	a2,3(a5)
    80008ba4:	02e68663          	beq	a3,a4,80008bd0 <__memmove+0xfc>
    80008ba8:	0045c603          	lbu	a2,4(a1)
    80008bac:	00400713          	li	a4,4
    80008bb0:	00c78223          	sb	a2,4(a5)
    80008bb4:	00e68e63          	beq	a3,a4,80008bd0 <__memmove+0xfc>
    80008bb8:	0055c603          	lbu	a2,5(a1)
    80008bbc:	00500713          	li	a4,5
    80008bc0:	00c782a3          	sb	a2,5(a5)
    80008bc4:	00e68663          	beq	a3,a4,80008bd0 <__memmove+0xfc>
    80008bc8:	0065c703          	lbu	a4,6(a1)
    80008bcc:	00e78323          	sb	a4,6(a5)
    80008bd0:	00813403          	ld	s0,8(sp)
    80008bd4:	01010113          	addi	sp,sp,16
    80008bd8:	00008067          	ret
    80008bdc:	02061713          	slli	a4,a2,0x20
    80008be0:	02075713          	srli	a4,a4,0x20
    80008be4:	00e587b3          	add	a5,a1,a4
    80008be8:	f0f574e3          	bgeu	a0,a5,80008af0 <__memmove+0x1c>
    80008bec:	02069613          	slli	a2,a3,0x20
    80008bf0:	02065613          	srli	a2,a2,0x20
    80008bf4:	fff64613          	not	a2,a2
    80008bf8:	00e50733          	add	a4,a0,a4
    80008bfc:	00c78633          	add	a2,a5,a2
    80008c00:	fff7c683          	lbu	a3,-1(a5)
    80008c04:	fff78793          	addi	a5,a5,-1
    80008c08:	fff70713          	addi	a4,a4,-1
    80008c0c:	00d70023          	sb	a3,0(a4)
    80008c10:	fec798e3          	bne	a5,a2,80008c00 <__memmove+0x12c>
    80008c14:	00813403          	ld	s0,8(sp)
    80008c18:	01010113          	addi	sp,sp,16
    80008c1c:	00008067          	ret
    80008c20:	02069713          	slli	a4,a3,0x20
    80008c24:	02075713          	srli	a4,a4,0x20
    80008c28:	00170713          	addi	a4,a4,1
    80008c2c:	00e50733          	add	a4,a0,a4
    80008c30:	00050793          	mv	a5,a0
    80008c34:	0005c683          	lbu	a3,0(a1)
    80008c38:	00178793          	addi	a5,a5,1
    80008c3c:	00158593          	addi	a1,a1,1
    80008c40:	fed78fa3          	sb	a3,-1(a5)
    80008c44:	fee798e3          	bne	a5,a4,80008c34 <__memmove+0x160>
    80008c48:	f89ff06f          	j	80008bd0 <__memmove+0xfc>
	...
