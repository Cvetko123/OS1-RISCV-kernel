
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000a117          	auipc	sp,0xa
    80000004:	1e813103          	ld	sp,488(sp) # 8000a1e8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	319050ef          	jal	ra,80005b34 <start>

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
    80001084:	420010ef          	jal	ra,800024a4 <_ZN5Riscv21SupervisorTrapHandlerEv>
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
    8000138c:	0005051b          	sext.w	a0,a0
    80001390:	00813403          	ld	s0,8(sp)
    80001394:	01010113          	addi	sp,sp,16
    80001398:	00008067          	ret

000000008000139c <_ZN5SList3addEP3TCBm>:

SList::Node* SList::head = nullptr;

int SList::size = 0;

void SList::add(TCB* tcb,time_t time) {
    8000139c:	fe010113          	addi	sp,sp,-32
    800013a0:	00113c23          	sd	ra,24(sp)
    800013a4:	00813823          	sd	s0,16(sp)
    800013a8:	00913423          	sd	s1,8(sp)
    800013ac:	01213023          	sd	s2,0(sp)
    800013b0:	02010413          	addi	s0,sp,32
    800013b4:	00050913          	mv	s2,a0
    800013b8:	00058493          	mv	s1,a1
    Node* newNode = new Node(tcb, time);
    800013bc:	01800513          	li	a0,24
    800013c0:	00001097          	auipc	ra,0x1
    800013c4:	a34080e7          	jalr	-1484(ra) # 80001df4 <_Znwm>
private:
    struct Node {
        TCB* tcb;
        time_t sleepTime;
        Node* next;
        Node(TCB* val,time_t sleep):tcb(val), sleepTime(sleep),next(nullptr){}
    800013c8:	01253023          	sd	s2,0(a0)
    800013cc:	00953423          	sd	s1,8(a0)
    800013d0:	00053823          	sd	zero,16(a0)
    if(newNode==nullptr)
    800013d4:	04050463          	beqz	a0,8000141c <_ZN5SList3addEP3TCBm+0x80>
        return;
    if (head == nullptr || time < head->sleepTime) {
    800013d8:	00009797          	auipc	a5,0x9
    800013dc:	e787b783          	ld	a5,-392(a5) # 8000a250 <_ZN5SList4headE>
    800013e0:	00078663          	beqz	a5,800013ec <_ZN5SList3addEP3TCBm+0x50>
    800013e4:	0087b703          	ld	a4,8(a5)
    800013e8:	04e4f663          	bgeu	s1,a4,80001434 <_ZN5SList3addEP3TCBm+0x98>
        newNode->next = head;
    800013ec:	00f53823          	sd	a5,16(a0)
        if (head != nullptr) {
    800013f0:	00078863          	beqz	a5,80001400 <_ZN5SList3addEP3TCBm+0x64>
            head->sleepTime=head->sleepTime-newNode->sleepTime;
    800013f4:	0087b583          	ld	a1,8(a5)
    800013f8:	409584b3          	sub	s1,a1,s1
    800013fc:	0097b423          	sd	s1,8(a5)
        }
        head = newNode;
    80001400:	00009797          	auipc	a5,0x9
    80001404:	e4a7b823          	sd	a0,-432(a5) # 8000a250 <_ZN5SList4headE>
            curr=curr->next;
        }
        newNode->next = curr->next;
        curr->next = newNode;
    }
    size++;
    80001408:	00009717          	auipc	a4,0x9
    8000140c:	e4870713          	addi	a4,a4,-440 # 8000a250 <_ZN5SList4headE>
    80001410:	00872783          	lw	a5,8(a4)
    80001414:	0017879b          	addiw	a5,a5,1
    80001418:	00f72423          	sw	a5,8(a4)

}
    8000141c:	01813083          	ld	ra,24(sp)
    80001420:	01013403          	ld	s0,16(sp)
    80001424:	00813483          	ld	s1,8(sp)
    80001428:	00013903          	ld	s2,0(sp)
    8000142c:	02010113          	addi	sp,sp,32
    80001430:	00008067          	ret
        while (curr->next != nullptr && curr->next->sleepTime <= newNode->sleepTime) {
    80001434:	0107b683          	ld	a3,16(a5)
    80001438:	02068263          	beqz	a3,8000145c <_ZN5SList3addEP3TCBm+0xc0>
    8000143c:	0086b603          	ld	a2,8(a3)
    80001440:	00853703          	ld	a4,8(a0)
    80001444:	00c76c63          	bltu	a4,a2,8000145c <_ZN5SList3addEP3TCBm+0xc0>
            newNode->sleepTime=newNode->sleepTime - curr->sleepTime;
    80001448:	0087b683          	ld	a3,8(a5)
    8000144c:	40d70733          	sub	a4,a4,a3
    80001450:	00e53423          	sd	a4,8(a0)
            curr=curr->next;
    80001454:	0107b783          	ld	a5,16(a5)
        while (curr->next != nullptr && curr->next->sleepTime <= newNode->sleepTime) {
    80001458:	fddff06f          	j	80001434 <_ZN5SList3addEP3TCBm+0x98>
        newNode->next = curr->next;
    8000145c:	00d53823          	sd	a3,16(a0)
        curr->next = newNode;
    80001460:	00a7b823          	sd	a0,16(a5)
    80001464:	fa5ff06f          	j	80001408 <_ZN5SList3addEP3TCBm+0x6c>

0000000080001468 <_ZN5SList7oneTickEv>:

void SList::oneTick() {
    if (!head)
    80001468:	00009797          	auipc	a5,0x9
    8000146c:	de87b783          	ld	a5,-536(a5) # 8000a250 <_ZN5SList4headE>
    80001470:	08078863          	beqz	a5,80001500 <_ZN5SList7oneTickEv+0x98>
        return;
    head->sleepTime--;
    80001474:	0087b703          	ld	a4,8(a5)
    80001478:	fff70713          	addi	a4,a4,-1
    8000147c:	00e7b423          	sd	a4,8(a5)
    while (head != nullptr && head->sleepTime <= 0) {
    80001480:	00009797          	auipc	a5,0x9
    80001484:	dd07b783          	ld	a5,-560(a5) # 8000a250 <_ZN5SList4headE>
    80001488:	06078c63          	beqz	a5,80001500 <_ZN5SList7oneTickEv+0x98>
    8000148c:	0087b703          	ld	a4,8(a5)
    80001490:	06071863          	bnez	a4,80001500 <_ZN5SList7oneTickEv+0x98>
void SList::oneTick() {
    80001494:	ff010113          	addi	sp,sp,-16
    80001498:	00113423          	sd	ra,8(sp)
    8000149c:	00813023          	sd	s0,0(sp)
    800014a0:	01010413          	addi	s0,sp,16
    800014a4:	00c0006f          	j	800014b0 <_ZN5SList7oneTickEv+0x48>
    while (head != nullptr && head->sleepTime <= 0) {
    800014a8:	0087b703          	ld	a4,8(a5)
    800014ac:	04071263          	bnez	a4,800014f0 <_ZN5SList7oneTickEv+0x88>
        head->tcb->unblock();
    800014b0:	0007b703          	ld	a4,0(a5)


    bool isFinished() const { return finished;}

    void block() { this->blocked = true; }
    void unblock() { this->blocked = false; }
    800014b4:	02070823          	sb	zero,48(a4)
        Scheduler::put(head->tcb);
    800014b8:	0007b503          	ld	a0,0(a5)
    800014bc:	00000097          	auipc	ra,0x0
    800014c0:	494080e7          	jalr	1172(ra) # 80001950 <_ZN9Scheduler3putEP3TCB>
        head = head->next;
    800014c4:	00009797          	auipc	a5,0x9
    800014c8:	d8c78793          	addi	a5,a5,-628 # 8000a250 <_ZN5SList4headE>
    800014cc:	0007b703          	ld	a4,0(a5)
    800014d0:	01073703          	ld	a4,16(a4)
    800014d4:	00e7b023          	sd	a4,0(a5)
        size--;
    800014d8:	0087a703          	lw	a4,8(a5)
    800014dc:	fff7071b          	addiw	a4,a4,-1
    800014e0:	00e7a423          	sw	a4,8(a5)
    while (head != nullptr && head->sleepTime <= 0) {
    800014e4:	00009797          	auipc	a5,0x9
    800014e8:	d6c7b783          	ld	a5,-660(a5) # 8000a250 <_ZN5SList4headE>
    800014ec:	fa079ee3          	bnez	a5,800014a8 <_ZN5SList7oneTickEv+0x40>
    }
}
    800014f0:	00813083          	ld	ra,8(sp)
    800014f4:	00013403          	ld	s0,0(sp)
    800014f8:	01010113          	addi	sp,sp,16
    800014fc:	00008067          	ret
    80001500:	00008067          	ret

0000000080001504 <_Z9fibonaccim>:

#include "../h/print.hpp"
#include "../h/syscall_c.hpp"
#include "../h/syscall_cpp.hpp"

uint64 fibonacci(uint64 n) {
    80001504:	fe010113          	addi	sp,sp,-32
    80001508:	00113c23          	sd	ra,24(sp)
    8000150c:	00813823          	sd	s0,16(sp)
    80001510:	00913423          	sd	s1,8(sp)
    80001514:	01213023          	sd	s2,0(sp)
    80001518:	02010413          	addi	s0,sp,32
    8000151c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80001520:	00100793          	li	a5,1
    80001524:	02a7f663          	bgeu	a5,a0,80001550 <_Z9fibonaccim+0x4c>
    if (n % 4 == 0) thread_dispatch();
    80001528:	00357793          	andi	a5,a0,3
    8000152c:	02078e63          	beqz	a5,80001568 <_Z9fibonaccim+0x64>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80001530:	fff48513          	addi	a0,s1,-1
    80001534:	00000097          	auipc	ra,0x0
    80001538:	fd0080e7          	jalr	-48(ra) # 80001504 <_Z9fibonaccim>
    8000153c:	00050913          	mv	s2,a0
    80001540:	ffe48513          	addi	a0,s1,-2
    80001544:	00000097          	auipc	ra,0x0
    80001548:	fc0080e7          	jalr	-64(ra) # 80001504 <_Z9fibonaccim>
    8000154c:	00a90533          	add	a0,s2,a0
}
    80001550:	01813083          	ld	ra,24(sp)
    80001554:	01013403          	ld	s0,16(sp)
    80001558:	00813483          	ld	s1,8(sp)
    8000155c:	00013903          	ld	s2,0(sp)
    80001560:	02010113          	addi	sp,sp,32
    80001564:	00008067          	ret
    if (n % 4 == 0) thread_dispatch();
    80001568:	00000097          	auipc	ra,0x0
    8000156c:	d1c080e7          	jalr	-740(ra) # 80001284 <_Z15thread_dispatchv>
    80001570:	fc1ff06f          	j	80001530 <_Z9fibonaccim+0x2c>

0000000080001574 <_Z13initSemaphorev>:

Semaphore* semaphore;

void initSemaphore() {
    if (semaphore) {
    80001574:	00009797          	auipc	a5,0x9
    80001578:	cec7b783          	ld	a5,-788(a5) # 8000a260 <semaphore>
    8000157c:	00078463          	beqz	a5,80001584 <_Z13initSemaphorev+0x10>
    80001580:	00008067          	ret
void initSemaphore() {
    80001584:	fe010113          	addi	sp,sp,-32
    80001588:	00113c23          	sd	ra,24(sp)
    8000158c:	00813823          	sd	s0,16(sp)
    80001590:	00913423          	sd	s1,8(sp)
    80001594:	01213023          	sd	s2,0(sp)
    80001598:	02010413          	addi	s0,sp,32
        return;
    }
    semaphore = new Semaphore(2);
    8000159c:	01000513          	li	a0,16
    800015a0:	00001097          	auipc	ra,0x1
    800015a4:	854080e7          	jalr	-1964(ra) # 80001df4 <_Znwm>
    800015a8:	00050493          	mv	s1,a0
    800015ac:	00200593          	li	a1,2
    800015b0:	00001097          	auipc	ra,0x1
    800015b4:	ad0080e7          	jalr	-1328(ra) # 80002080 <_ZN9SemaphoreC1Ej>
    800015b8:	00009797          	auipc	a5,0x9
    800015bc:	ca97b423          	sd	s1,-856(a5) # 8000a260 <semaphore>
    if (semaphore == nullptr) {
    800015c0:	00048e63          	beqz	s1,800015dc <_Z13initSemaphorev+0x68>
        pprintString("Failed\n");

    }
}
    800015c4:	01813083          	ld	ra,24(sp)
    800015c8:	01013403          	ld	s0,16(sp)
    800015cc:	00813483          	ld	s1,8(sp)
    800015d0:	00013903          	ld	s2,0(sp)
    800015d4:	02010113          	addi	sp,sp,32
    800015d8:	00008067          	ret
        pprintString("Failed\n");
    800015dc:	00007517          	auipc	a0,0x7
    800015e0:	a4450513          	addi	a0,a0,-1468 # 80008020 <CONSOLE_STATUS+0x10>
    800015e4:	00001097          	auipc	ra,0x1
    800015e8:	55c080e7          	jalr	1372(ra) # 80002b40 <_Z12pprintStringPKc>
    800015ec:	fd9ff06f          	j	800015c4 <_Z13initSemaphorev+0x50>
    800015f0:	00050913          	mv	s2,a0
    semaphore = new Semaphore(2);
    800015f4:	00048513          	mv	a0,s1
    800015f8:	00001097          	auipc	ra,0x1
    800015fc:	824080e7          	jalr	-2012(ra) # 80001e1c <_ZdlPv>
    80001600:	00090513          	mv	a0,s2
    80001604:	0000a097          	auipc	ra,0xa
    80001608:	da4080e7          	jalr	-604(ra) # 8000b3a8 <_Unwind_Resume>

000000008000160c <_Z11workerBodyAv>:

void workerBodyA() {
    8000160c:	fe010113          	addi	sp,sp,-32
    80001610:	00113c23          	sd	ra,24(sp)
    80001614:	00813823          	sd	s0,16(sp)
    80001618:	00913423          	sd	s1,8(sp)
    8000161c:	02010413          	addi	s0,sp,32
   initSemaphore();
    80001620:	00000097          	auipc	ra,0x0
    80001624:	f54080e7          	jalr	-172(ra) # 80001574 <_Z13initSemaphorev>

    // uint64 result = fibonacci(20);
    // pprintString("A: fibonaci="); printInteger(result); pprintString("\n");

    //for (; i < 6; i++) { pprintString("A: i="); printInteger(i); pprintString("\n"); }
    time_sleep(40);
    80001628:	02800513          	li	a0,40
    8000162c:	00000097          	auipc	ra,0x0
    80001630:	d40080e7          	jalr	-704(ra) # 8000136c <_Z10time_sleepm>
    for (uint64 i = 0; i < 10; i++) {
    80001634:	00000493          	li	s1,0
    80001638:	0300006f          	j	80001668 <_Z11workerBodyAv+0x5c>
        pprintString("A: i="); printInteger(i); pprintString("\n");
        for (uint64 j = 0; j < 10000; j++) {
    8000163c:	00168693          	addi	a3,a3,1
    80001640:	000027b7          	lui	a5,0x2
    80001644:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001648:	00d7ee63          	bltu	a5,a3,80001664 <_Z11workerBodyAv+0x58>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000164c:	00000713          	li	a4,0
    80001650:	000077b7          	lui	a5,0x7
    80001654:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80001658:	fee7e2e3          	bltu	a5,a4,8000163c <_Z11workerBodyAv+0x30>
    8000165c:	00170713          	addi	a4,a4,1
    80001660:	ff1ff06f          	j	80001650 <_Z11workerBodyAv+0x44>
    for (uint64 i = 0; i < 10; i++) {
    80001664:	00148493          	addi	s1,s1,1
    80001668:	00900793          	li	a5,9
    8000166c:	0297ec63          	bltu	a5,s1,800016a4 <_Z11workerBodyAv+0x98>
        pprintString("A: i="); printInteger(i); pprintString("\n");
    80001670:	00007517          	auipc	a0,0x7
    80001674:	9b850513          	addi	a0,a0,-1608 # 80008028 <CONSOLE_STATUS+0x18>
    80001678:	00001097          	auipc	ra,0x1
    8000167c:	4c8080e7          	jalr	1224(ra) # 80002b40 <_Z12pprintStringPKc>
    80001680:	00048513          	mv	a0,s1
    80001684:	00001097          	auipc	ra,0x1
    80001688:	500080e7          	jalr	1280(ra) # 80002b84 <_Z12printIntegerm>
    8000168c:	00007517          	auipc	a0,0x7
    80001690:	a0450513          	addi	a0,a0,-1532 # 80008090 <CONSOLE_STATUS+0x80>
    80001694:	00001097          	auipc	ra,0x1
    80001698:	4ac080e7          	jalr	1196(ra) # 80002b40 <_Z12pprintStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000169c:	00000693          	li	a3,0
    800016a0:	fa1ff06f          	j	80001640 <_Z11workerBodyAv+0x34>
            // TCB::yield();
        }
    }
    pprintString("A finished!\n");
    800016a4:	00007517          	auipc	a0,0x7
    800016a8:	98c50513          	addi	a0,a0,-1652 # 80008030 <CONSOLE_STATUS+0x20>
    800016ac:	00001097          	auipc	ra,0x1
    800016b0:	494080e7          	jalr	1172(ra) # 80002b40 <_Z12pprintStringPKc>
    //semaphore->signal();

}
    800016b4:	01813083          	ld	ra,24(sp)
    800016b8:	01013403          	ld	s0,16(sp)
    800016bc:	00813483          	ld	s1,8(sp)
    800016c0:	02010113          	addi	sp,sp,32
    800016c4:	00008067          	ret

00000000800016c8 <_Z11workerBodyBv>:

void workerBodyB() {
    800016c8:	fe010113          	addi	sp,sp,-32
    800016cc:	00113c23          	sd	ra,24(sp)
    800016d0:	00813823          	sd	s0,16(sp)
    800016d4:	00913423          	sd	s1,8(sp)
    800016d8:	02010413          	addi	s0,sp,32
    initSemaphore();
    800016dc:	00000097          	auipc	ra,0x0
    800016e0:	e98080e7          	jalr	-360(ra) # 80001574 <_Z13initSemaphorev>

    // uint64 result = fibonacci(23);
    // pprintString("B: fibonaci="); printInteger(result); pprintString("\n");

    //for (; i < 16; i++) { pprintString("B: i="); printInteger(i); pprintString("\n"); }
    time_sleep(10);
    800016e4:	00a00513          	li	a0,10
    800016e8:	00000097          	auipc	ra,0x0
    800016ec:	c84080e7          	jalr	-892(ra) # 8000136c <_Z10time_sleepm>
    for (uint64 i = 0; i < 16; i++) {
    800016f0:	00000493          	li	s1,0
    800016f4:	0300006f          	j	80001724 <_Z11workerBodyBv+0x5c>
        pprintString("B: i="); printInteger(i); pprintString("\n");
        for (uint64 j = 0; j < 10000; j++) {
    800016f8:	00168693          	addi	a3,a3,1
    800016fc:	000027b7          	lui	a5,0x2
    80001700:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001704:	00d7ee63          	bltu	a5,a3,80001720 <_Z11workerBodyBv+0x58>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80001708:	00000713          	li	a4,0
    8000170c:	000077b7          	lui	a5,0x7
    80001710:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80001714:	fee7e2e3          	bltu	a5,a4,800016f8 <_Z11workerBodyBv+0x30>
    80001718:	00170713          	addi	a4,a4,1
    8000171c:	ff1ff06f          	j	8000170c <_Z11workerBodyBv+0x44>
    for (uint64 i = 0; i < 16; i++) {
    80001720:	00148493          	addi	s1,s1,1
    80001724:	00f00793          	li	a5,15
    80001728:	0297ec63          	bltu	a5,s1,80001760 <_Z11workerBodyBv+0x98>
        pprintString("B: i="); printInteger(i); pprintString("\n");
    8000172c:	00007517          	auipc	a0,0x7
    80001730:	91450513          	addi	a0,a0,-1772 # 80008040 <CONSOLE_STATUS+0x30>
    80001734:	00001097          	auipc	ra,0x1
    80001738:	40c080e7          	jalr	1036(ra) # 80002b40 <_Z12pprintStringPKc>
    8000173c:	00048513          	mv	a0,s1
    80001740:	00001097          	auipc	ra,0x1
    80001744:	444080e7          	jalr	1092(ra) # 80002b84 <_Z12printIntegerm>
    80001748:	00007517          	auipc	a0,0x7
    8000174c:	94850513          	addi	a0,a0,-1720 # 80008090 <CONSOLE_STATUS+0x80>
    80001750:	00001097          	auipc	ra,0x1
    80001754:	3f0080e7          	jalr	1008(ra) # 80002b40 <_Z12pprintStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80001758:	00000693          	li	a3,0
    8000175c:	fa1ff06f          	j	800016fc <_Z11workerBodyBv+0x34>
            // TCB::yield();
        }
    }
    pprintString("B finished!\n");
    80001760:	00007517          	auipc	a0,0x7
    80001764:	8e850513          	addi	a0,a0,-1816 # 80008048 <CONSOLE_STATUS+0x38>
    80001768:	00001097          	auipc	ra,0x1
    8000176c:	3d8080e7          	jalr	984(ra) # 80002b40 <_Z12pprintStringPKc>
    //semaphore->signal();
}
    80001770:	01813083          	ld	ra,24(sp)
    80001774:	01013403          	ld	s0,16(sp)
    80001778:	00813483          	ld	s1,8(sp)
    8000177c:	02010113          	addi	sp,sp,32
    80001780:	00008067          	ret

0000000080001784 <_Z11workerBodyCv>:

void workerBodyC() {
    80001784:	fe010113          	addi	sp,sp,-32
    80001788:	00113c23          	sd	ra,24(sp)
    8000178c:	00813823          	sd	s0,16(sp)
    80001790:	00913423          	sd	s1,8(sp)
    80001794:	02010413          	addi	s0,sp,32
    initSemaphore();
    80001798:	00000097          	auipc	ra,0x0
    8000179c:	ddc080e7          	jalr	-548(ra) # 80001574 <_Z13initSemaphorev>
    //semaphore->wait();
    time_sleep(80);
    800017a0:	05000513          	li	a0,80
    800017a4:	00000097          	auipc	ra,0x0
    800017a8:	bc8080e7          	jalr	-1080(ra) # 8000136c <_Z10time_sleepm>
    for (uint64 i = 0; i < 5; i++) {
    800017ac:	00000493          	li	s1,0
    800017b0:	0300006f          	j	800017e0 <_Z11workerBodyCv+0x5c>
        pprintString("C: i="); printInteger(i); pprintString("\n");
        for (uint64 j = 0; j < 10000; j++) {
    800017b4:	00168693          	addi	a3,a3,1
    800017b8:	000027b7          	lui	a5,0x2
    800017bc:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800017c0:	00d7ee63          	bltu	a5,a3,800017dc <_Z11workerBodyCv+0x58>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800017c4:	00000713          	li	a4,0
    800017c8:	000077b7          	lui	a5,0x7
    800017cc:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800017d0:	fee7e2e3          	bltu	a5,a4,800017b4 <_Z11workerBodyCv+0x30>
    800017d4:	00170713          	addi	a4,a4,1
    800017d8:	ff1ff06f          	j	800017c8 <_Z11workerBodyCv+0x44>
    for (uint64 i = 0; i < 5; i++) {
    800017dc:	00148493          	addi	s1,s1,1
    800017e0:	00400793          	li	a5,4
    800017e4:	0297ec63          	bltu	a5,s1,8000181c <_Z11workerBodyCv+0x98>
        pprintString("C: i="); printInteger(i); pprintString("\n");
    800017e8:	00007517          	auipc	a0,0x7
    800017ec:	87050513          	addi	a0,a0,-1936 # 80008058 <CONSOLE_STATUS+0x48>
    800017f0:	00001097          	auipc	ra,0x1
    800017f4:	350080e7          	jalr	848(ra) # 80002b40 <_Z12pprintStringPKc>
    800017f8:	00048513          	mv	a0,s1
    800017fc:	00001097          	auipc	ra,0x1
    80001800:	388080e7          	jalr	904(ra) # 80002b84 <_Z12printIntegerm>
    80001804:	00007517          	auipc	a0,0x7
    80001808:	88c50513          	addi	a0,a0,-1908 # 80008090 <CONSOLE_STATUS+0x80>
    8000180c:	00001097          	auipc	ra,0x1
    80001810:	334080e7          	jalr	820(ra) # 80002b40 <_Z12pprintStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80001814:	00000693          	li	a3,0
    80001818:	fa1ff06f          	j	800017b8 <_Z11workerBodyCv+0x34>
            // TCB::yield();
        }
    }
    pprintString("C finished!\n");
    8000181c:	00007517          	auipc	a0,0x7
    80001820:	84450513          	addi	a0,a0,-1980 # 80008060 <CONSOLE_STATUS+0x50>
    80001824:	00001097          	auipc	ra,0x1
    80001828:	31c080e7          	jalr	796(ra) # 80002b40 <_Z12pprintStringPKc>
    // pprintString("C: fibonaci="); printInteger(result); pprintString("\n");
    //
    // for (; i < 26; i++) { pprintString("C: i="); printInteger(i); pprintString("\n"); }
    // pprintString("C finished!\n");
    //semaphore->signal();
}
    8000182c:	01813083          	ld	ra,24(sp)
    80001830:	01013403          	ld	s0,16(sp)
    80001834:	00813483          	ld	s1,8(sp)
    80001838:	02010113          	addi	sp,sp,32
    8000183c:	00008067          	ret

0000000080001840 <_ZN7WorkerP11workerBodyPEPv>:




void WorkerP::workerBodyP(void* arg) {
    80001840:	ff010113          	addi	sp,sp,-16
    80001844:	00113423          	sd	ra,8(sp)
    80001848:	00813023          	sd	s0,0(sp)
    8000184c:	01010413          	addi	s0,sp,16

    pprintString("Mrzim boga\n");
    80001850:	00007517          	auipc	a0,0x7
    80001854:	82050513          	addi	a0,a0,-2016 # 80008070 <CONSOLE_STATUS+0x60>
    80001858:	00001097          	auipc	ra,0x1
    8000185c:	2e8080e7          	jalr	744(ra) # 80002b40 <_Z12pprintStringPKc>

}
    80001860:	00813083          	ld	ra,8(sp)
    80001864:	00013403          	ld	s0,0(sp)
    80001868:	01010113          	addi	sp,sp,16
    8000186c:	00008067          	ret

0000000080001870 <_Z41__static_initialization_and_destruction_0ii>:
    return queue.removeLast();
}

void Scheduler::put(TCB *x) {
    queue.addFirst(x);
    80001870:	ff010113          	addi	sp,sp,-16
    80001874:	00813423          	sd	s0,8(sp)
    80001878:	01010413          	addi	s0,sp,16
    8000187c:	00100793          	li	a5,1
    80001880:	00f50863          	beq	a0,a5,80001890 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80001884:	00813403          	ld	s0,8(sp)
    80001888:	01010113          	addi	sp,sp,16
    8000188c:	00008067          	ret
    80001890:	000107b7          	lui	a5,0x10
    80001894:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001898:	fef596e3          	bne	a1,a5,80001884 <_Z41__static_initialization_and_destruction_0ii+0x14>
    };
    Elem * head;
    Elem *tail;

public:
    List(): head(0), tail(0){}
    8000189c:	00009797          	auipc	a5,0x9
    800018a0:	9cc78793          	addi	a5,a5,-1588 # 8000a268 <_ZN9Scheduler5queueE>
    800018a4:	0007b023          	sd	zero,0(a5)
    800018a8:	0007b423          	sd	zero,8(a5)
    800018ac:	0007a823          	sw	zero,16(a5)
    800018b0:	fd5ff06f          	j	80001884 <_Z41__static_initialization_and_destruction_0ii+0x14>

00000000800018b4 <_ZN9Scheduler3getEv>:
TCB *Scheduler::get() {
    800018b4:	fe010113          	addi	sp,sp,-32
    800018b8:	00113c23          	sd	ra,24(sp)
    800018bc:	00813823          	sd	s0,16(sp)
    800018c0:	00913423          	sd	s1,8(sp)
    800018c4:	02010413          	addi	s0,sp,32
        if(!tail){tail=head;}
        size++;
    }
    T* removeLast()
    {
        size--;
    800018c8:	00009797          	auipc	a5,0x9
    800018cc:	9a078793          	addi	a5,a5,-1632 # 8000a268 <_ZN9Scheduler5queueE>
    800018d0:	0107a703          	lw	a4,16(a5)
    800018d4:	fff7071b          	addiw	a4,a4,-1
    800018d8:	00e7a823          	sw	a4,16(a5)
        if(!head){return 0;}
    800018dc:	0007b483          	ld	s1,0(a5)
    800018e0:	04048663          	beqz	s1,8000192c <_ZN9Scheduler3getEv+0x78>
        Elem* prev=0;
    800018e4:	00000793          	li	a5,0
        for(Elem* curr=head; curr && curr!=tail; prev=curr, curr=curr->next);
    800018e8:	00048e63          	beqz	s1,80001904 <_ZN9Scheduler3getEv+0x50>
    800018ec:	00009717          	auipc	a4,0x9
    800018f0:	98473703          	ld	a4,-1660(a4) # 8000a270 <_ZN9Scheduler5queueE+0x8>
    800018f4:	00e48863          	beq	s1,a4,80001904 <_ZN9Scheduler3getEv+0x50>
    800018f8:	00048793          	mv	a5,s1
    800018fc:	0084b483          	ld	s1,8(s1)
    80001900:	fe9ff06f          	j	800018e8 <_ZN9Scheduler3getEv+0x34>
        Elem* elem=tail;
    80001904:	00009517          	auipc	a0,0x9
    80001908:	96c53503          	ld	a0,-1684(a0) # 8000a270 <_ZN9Scheduler5queueE+0x8>
        if(prev) prev->next=0;
    8000190c:	02078c63          	beqz	a5,80001944 <_ZN9Scheduler3getEv+0x90>
    80001910:	0007b423          	sd	zero,8(a5)
        else head=0;
        tail=prev;
    80001914:	00009717          	auipc	a4,0x9
    80001918:	94f73e23          	sd	a5,-1700(a4) # 8000a270 <_ZN9Scheduler5queueE+0x8>
        T* retval= elem->data;
    8000191c:	00053483          	ld	s1,0(a0)
        delete elem;
    80001920:	00050663          	beqz	a0,8000192c <_ZN9Scheduler3getEv+0x78>
    80001924:	00000097          	auipc	ra,0x0
    80001928:	4f8080e7          	jalr	1272(ra) # 80001e1c <_ZdlPv>
}
    8000192c:	00048513          	mv	a0,s1
    80001930:	01813083          	ld	ra,24(sp)
    80001934:	01013403          	ld	s0,16(sp)
    80001938:	00813483          	ld	s1,8(sp)
    8000193c:	02010113          	addi	sp,sp,32
    80001940:	00008067          	ret
        else head=0;
    80001944:	00009717          	auipc	a4,0x9
    80001948:	92073223          	sd	zero,-1756(a4) # 8000a268 <_ZN9Scheduler5queueE>
    8000194c:	fc9ff06f          	j	80001914 <_ZN9Scheduler3getEv+0x60>

0000000080001950 <_ZN9Scheduler3putEP3TCB>:
void Scheduler::put(TCB *x) {
    80001950:	fe010113          	addi	sp,sp,-32
    80001954:	00113c23          	sd	ra,24(sp)
    80001958:	00813823          	sd	s0,16(sp)
    8000195c:	00913423          	sd	s1,8(sp)
    80001960:	02010413          	addi	s0,sp,32
    80001964:	00050493          	mv	s1,a0
        Elem* elem=new Elem(data, head);
    80001968:	01000513          	li	a0,16
    8000196c:	00000097          	auipc	ra,0x0
    80001970:	488080e7          	jalr	1160(ra) # 80001df4 <_Znwm>
    80001974:	00009797          	auipc	a5,0x9
    80001978:	8f478793          	addi	a5,a5,-1804 # 8000a268 <_ZN9Scheduler5queueE>
    8000197c:	0007b703          	ld	a4,0(a5)
        Elem(T* data, Elem* next=nullptr): data(data), next(next){}
    80001980:	00953023          	sd	s1,0(a0)
    80001984:	00e53423          	sd	a4,8(a0)
        head=elem;
    80001988:	00a7b023          	sd	a0,0(a5)
        if(!tail){tail=head;}
    8000198c:	0087b783          	ld	a5,8(a5)
    80001990:	02078663          	beqz	a5,800019bc <_ZN9Scheduler3putEP3TCB+0x6c>
        size++;
    80001994:	00009717          	auipc	a4,0x9
    80001998:	8d470713          	addi	a4,a4,-1836 # 8000a268 <_ZN9Scheduler5queueE>
    8000199c:	01072783          	lw	a5,16(a4)
    800019a0:	0017879b          	addiw	a5,a5,1
    800019a4:	00f72823          	sw	a5,16(a4)
    800019a8:	01813083          	ld	ra,24(sp)
    800019ac:	01013403          	ld	s0,16(sp)
    800019b0:	00813483          	ld	s1,8(sp)
    800019b4:	02010113          	addi	sp,sp,32
    800019b8:	00008067          	ret
        if(!tail){tail=head;}
    800019bc:	00009797          	auipc	a5,0x9
    800019c0:	8aa7ba23          	sd	a0,-1868(a5) # 8000a270 <_ZN9Scheduler5queueE+0x8>
    800019c4:	fd1ff06f          	j	80001994 <_ZN9Scheduler3putEP3TCB+0x44>

00000000800019c8 <_GLOBAL__sub_I__ZN9Scheduler5queueE>:
    800019c8:	ff010113          	addi	sp,sp,-16
    800019cc:	00113423          	sd	ra,8(sp)
    800019d0:	00813023          	sd	s0,0(sp)
    800019d4:	01010413          	addi	s0,sp,16
    800019d8:	000105b7          	lui	a1,0x10
    800019dc:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    800019e0:	00100513          	li	a0,1
    800019e4:	00000097          	auipc	ra,0x0
    800019e8:	e8c080e7          	jalr	-372(ra) # 80001870 <_Z41__static_initialization_and_destruction_0ii>
    800019ec:	00813083          	ld	ra,8(sp)
    800019f0:	00013403          	ld	s0,0(sp)
    800019f4:	01010113          	addi	sp,sp,16
    800019f8:	00008067          	ret

00000000800019fc <_Z14WorkerAWrapperPv>:
    userMain();
    pprintString("user main end:\n");
}

void WorkerAWrapper(void* arg)
{
    800019fc:	ff010113          	addi	sp,sp,-16
    80001a00:	00113423          	sd	ra,8(sp)
    80001a04:	00813023          	sd	s0,0(sp)
    80001a08:	01010413          	addi	s0,sp,16
    //pprintString("worker A start:\n");
    workerBodyA();
    80001a0c:	00000097          	auipc	ra,0x0
    80001a10:	c00080e7          	jalr	-1024(ra) # 8000160c <_Z11workerBodyAv>
    //pprintString("worker A end:\n");
}
    80001a14:	00813083          	ld	ra,8(sp)
    80001a18:	00013403          	ld	s0,0(sp)
    80001a1c:	01010113          	addi	sp,sp,16
    80001a20:	00008067          	ret

0000000080001a24 <_Z14WorkerBWrapperPv>:

void WorkerBWrapper(void* arg)
{
    80001a24:	ff010113          	addi	sp,sp,-16
    80001a28:	00113423          	sd	ra,8(sp)
    80001a2c:	00813023          	sd	s0,0(sp)
    80001a30:	01010413          	addi	s0,sp,16
    //pprintString("worker B start:\n");
    workerBodyB();
    80001a34:	00000097          	auipc	ra,0x0
    80001a38:	c94080e7          	jalr	-876(ra) # 800016c8 <_Z11workerBodyBv>
    //pprintString("worker B end:\n");
}
    80001a3c:	00813083          	ld	ra,8(sp)
    80001a40:	00013403          	ld	s0,0(sp)
    80001a44:	01010113          	addi	sp,sp,16
    80001a48:	00008067          	ret

0000000080001a4c <_Z14WorkerCWrapperPv>:

void WorkerCWrapper(void* arg)
{
    80001a4c:	ff010113          	addi	sp,sp,-16
    80001a50:	00113423          	sd	ra,8(sp)
    80001a54:	00813023          	sd	s0,0(sp)
    80001a58:	01010413          	addi	s0,sp,16
    //pprintString("worker C start:\n");
    workerBodyC();
    80001a5c:	00000097          	auipc	ra,0x0
    80001a60:	d28080e7          	jalr	-728(ra) # 80001784 <_Z11workerBodyCv>
    //pprintString("worker C end:\n");
}
    80001a64:	00813083          	ld	ra,8(sp)
    80001a68:	00013403          	ld	s0,0(sp)
    80001a6c:	01010113          	addi	sp,sp,16
    80001a70:	00008067          	ret

0000000080001a74 <_Z13AllocatorTestv>:
void AllocatorTest() {
    80001a74:	fd010113          	addi	sp,sp,-48
    80001a78:	02113423          	sd	ra,40(sp)
    80001a7c:	02813023          	sd	s0,32(sp)
    80001a80:	00913c23          	sd	s1,24(sp)
    80001a84:	01213823          	sd	s2,16(sp)
    80001a88:	01313423          	sd	s3,8(sp)
    80001a8c:	03010413          	addi	s0,sp,48
    uint64* a1=new uint64;
    80001a90:	00800513          	li	a0,8
    80001a94:	00000097          	auipc	ra,0x0
    80001a98:	360080e7          	jalr	864(ra) # 80001df4 <_Znwm>
    80001a9c:	00050993          	mv	s3,a0
    *a1=4;
    80001aa0:	00400793          	li	a5,4
    80001aa4:	00f53023          	sd	a5,0(a0)
    __putc(*a1+'0');
    80001aa8:	03400513          	li	a0,52
    80001aac:	00006097          	auipc	ra,0x6
    80001ab0:	150080e7          	jalr	336(ra) # 80007bfc <__putc>
    __putc('\n');
    80001ab4:	00a00513          	li	a0,10
    80001ab8:	00006097          	auipc	ra,0x6
    80001abc:	144080e7          	jalr	324(ra) # 80007bfc <__putc>
    uint64* a2=new uint64;
    80001ac0:	00800513          	li	a0,8
    80001ac4:	00000097          	auipc	ra,0x0
    80001ac8:	330080e7          	jalr	816(ra) # 80001df4 <_Znwm>
    *a2=5;
    80001acc:	00500793          	li	a5,5
    80001ad0:	00f53023          	sd	a5,0(a0)
    __putc(*a2+'0');
    80001ad4:	03500513          	li	a0,53
    80001ad8:	00006097          	auipc	ra,0x6
    80001adc:	124080e7          	jalr	292(ra) # 80007bfc <__putc>
    __putc('\n');
    80001ae0:	00a00513          	li	a0,10
    80001ae4:	00006097          	auipc	ra,0x6
    80001ae8:	118080e7          	jalr	280(ra) # 80007bfc <__putc>
    uint64* a3=new uint64;
    80001aec:	00800513          	li	a0,8
    80001af0:	00000097          	auipc	ra,0x0
    80001af4:	304080e7          	jalr	772(ra) # 80001df4 <_Znwm>
    80001af8:	00050913          	mv	s2,a0
    *a3=6;
    80001afc:	00600793          	li	a5,6
    80001b00:	00f53023          	sd	a5,0(a0)
    __putc(*a3+'0');
    80001b04:	03600513          	li	a0,54
    80001b08:	00006097          	auipc	ra,0x6
    80001b0c:	0f4080e7          	jalr	244(ra) # 80007bfc <__putc>
    __putc('\n');
    80001b10:	00a00513          	li	a0,10
    80001b14:	00006097          	auipc	ra,0x6
    80001b18:	0e8080e7          	jalr	232(ra) # 80007bfc <__putc>
    uint64* a4=new uint64;
    80001b1c:	00800513          	li	a0,8
    80001b20:	00000097          	auipc	ra,0x0
    80001b24:	2d4080e7          	jalr	724(ra) # 80001df4 <_Znwm>
    80001b28:	00050493          	mv	s1,a0
    *a4=7;
    80001b2c:	00700793          	li	a5,7
    80001b30:	00f53023          	sd	a5,0(a0)
    __putc(*a4+'0');
    80001b34:	03700513          	li	a0,55
    80001b38:	00006097          	auipc	ra,0x6
    80001b3c:	0c4080e7          	jalr	196(ra) # 80007bfc <__putc>
    __putc('\n');
    80001b40:	00a00513          	li	a0,10
    80001b44:	00006097          	auipc	ra,0x6
    80001b48:	0b8080e7          	jalr	184(ra) # 80007bfc <__putc>
    uint64* a5=new uint64;
    80001b4c:	00800513          	li	a0,8
    80001b50:	00000097          	auipc	ra,0x0
    80001b54:	2a4080e7          	jalr	676(ra) # 80001df4 <_Znwm>
    *a5=8;
    80001b58:	00800793          	li	a5,8
    80001b5c:	00f53023          	sd	a5,0(a0)
    __putc(*a5+'0');
    80001b60:	03800513          	li	a0,56
    80001b64:	00006097          	auipc	ra,0x6
    80001b68:	098080e7          	jalr	152(ra) # 80007bfc <__putc>
    __putc('\n');
    80001b6c:	00a00513          	li	a0,10
    80001b70:	00006097          	auipc	ra,0x6
    80001b74:	08c080e7          	jalr	140(ra) # 80007bfc <__putc>
    delete a1;
    80001b78:	00098863          	beqz	s3,80001b88 <_Z13AllocatorTestv+0x114>
    80001b7c:	00098513          	mv	a0,s3
    80001b80:	00000097          	auipc	ra,0x0
    80001b84:	29c080e7          	jalr	668(ra) # 80001e1c <_ZdlPv>
    delete a3;
    80001b88:	00090863          	beqz	s2,80001b98 <_Z13AllocatorTestv+0x124>
    80001b8c:	00090513          	mv	a0,s2
    80001b90:	00000097          	auipc	ra,0x0
    80001b94:	28c080e7          	jalr	652(ra) # 80001e1c <_ZdlPv>
    delete a4;
    80001b98:	00048863          	beqz	s1,80001ba8 <_Z13AllocatorTestv+0x134>
    80001b9c:	00048513          	mv	a0,s1
    80001ba0:	00000097          	auipc	ra,0x0
    80001ba4:	27c080e7          	jalr	636(ra) # 80001e1c <_ZdlPv>
    uint64* a6=new uint64;
    80001ba8:	00800513          	li	a0,8
    80001bac:	00000097          	auipc	ra,0x0
    80001bb0:	248080e7          	jalr	584(ra) # 80001df4 <_Znwm>
    *a6=9;
    80001bb4:	00900793          	li	a5,9
    80001bb8:	00f53023          	sd	a5,0(a0)
    __putc(*a6+'0');
    80001bbc:	03900513          	li	a0,57
    80001bc0:	00006097          	auipc	ra,0x6
    80001bc4:	03c080e7          	jalr	60(ra) # 80007bfc <__putc>
    __putc('\n');
    80001bc8:	00a00513          	li	a0,10
    80001bcc:	00006097          	auipc	ra,0x6
    80001bd0:	030080e7          	jalr	48(ra) # 80007bfc <__putc>
}
    80001bd4:	02813083          	ld	ra,40(sp)
    80001bd8:	02013403          	ld	s0,32(sp)
    80001bdc:	01813483          	ld	s1,24(sp)
    80001be0:	01013903          	ld	s2,16(sp)
    80001be4:	00813983          	ld	s3,8(sp)
    80001be8:	03010113          	addi	sp,sp,48
    80001bec:	00008067          	ret

0000000080001bf0 <_Z11userWrapperPv>:
{
    80001bf0:	ff010113          	addi	sp,sp,-16
    80001bf4:	00113423          	sd	ra,8(sp)
    80001bf8:	00813023          	sd	s0,0(sp)
    80001bfc:	01010413          	addi	s0,sp,16
    pprintString("user main start:\n");
    80001c00:	00006517          	auipc	a0,0x6
    80001c04:	48050513          	addi	a0,a0,1152 # 80008080 <CONSOLE_STATUS+0x70>
    80001c08:	00001097          	auipc	ra,0x1
    80001c0c:	f38080e7          	jalr	-200(ra) # 80002b40 <_Z12pprintStringPKc>
    userMain();
    80001c10:	00003097          	auipc	ra,0x3
    80001c14:	61c080e7          	jalr	1564(ra) # 8000522c <_Z8userMainv>
    pprintString("user main end:\n");
    80001c18:	00006517          	auipc	a0,0x6
    80001c1c:	48050513          	addi	a0,a0,1152 # 80008098 <CONSOLE_STATUS+0x88>
    80001c20:	00001097          	auipc	ra,0x1
    80001c24:	f20080e7          	jalr	-224(ra) # 80002b40 <_Z12pprintStringPKc>
}
    80001c28:	00813083          	ld	ra,8(sp)
    80001c2c:	00013403          	ld	s0,0(sp)
    80001c30:	01010113          	addi	sp,sp,16
    80001c34:	00008067          	ret

0000000080001c38 <_Z13exit_emulatorv>:



void exit_emulator() {
    80001c38:	ff010113          	addi	sp,sp,-16
    80001c3c:	00813423          	sd	s0,8(sp)
    80001c40:	01010413          	addi	s0,sp,16
    uint64 *stop_adr = (uint64*)0x100000;
    uint64 stop_val = 0x5555;

    asm volatile ("sw %0, 0(%1)":: "r" (stop_val), "r" (stop_adr));
    80001c44:	000057b7          	lui	a5,0x5
    80001c48:	55578793          	addi	a5,a5,1365 # 5555 <_entry-0x7fffaaab>
    80001c4c:	00100737          	lui	a4,0x100
    80001c50:	00f72023          	sw	a5,0(a4) # 100000 <_entry-0x7ff00000>
}
    80001c54:	00813403          	ld	s0,8(sp)
    80001c58:	01010113          	addi	sp,sp,16
    80001c5c:	00008067          	ret

0000000080001c60 <main>:

void main() {
    80001c60:	fc010113          	addi	sp,sp,-64
    80001c64:	02113c23          	sd	ra,56(sp)
    80001c68:	02813823          	sd	s0,48(sp)
    80001c6c:	02913423          	sd	s1,40(sp)
    80001c70:	03213023          	sd	s2,32(sp)
    80001c74:	04010413          	addi	s0,sp,64
     Riscv::set_stvec((uint64)&Riscv::SupervisorTrap);
    80001c78:	00008797          	auipc	a5,0x8
    80001c7c:	5587b783          	ld	a5,1368(a5) # 8000a1d0 <_GLOBAL_OFFSET_TABLE_+0x10>

};


inline void Riscv::set_stvec(uint64 stvec) {
    __asm__ volatile ("csrw stvec, %[x]" :: [x] "r" (stvec));
    80001c80:	10579073          	csrw	stvec,a5
    uint64 volatile stval;
    __asm__ volatile("csrr %[stval], stval":[stval]"=r"(stval));
    return stval;
}
inline void Riscv::ms_sstatus(uint64 mask) {
    __asm__ volatile("csrs sstatus,%[mask]"::[mask]"r"(mask));
    80001c84:	00200793          	li	a5,2
    80001c88:	1007a073          	csrs	sstatus,a5
     Riscv::ms_sstatus(Riscv::SSTATUS_SIE);


     thread_t coroutines[4];
     thread_create(&coroutines[0],nullptr,nullptr);
    80001c8c:	00000613          	li	a2,0
    80001c90:	00000593          	li	a1,0
    80001c94:	fc040513          	addi	a0,s0,-64
    80001c98:	fffff097          	auipc	ra,0xfffff
    80001c9c:	588080e7          	jalr	1416(ra) # 80001220 <_Z13thread_createPP3TCBPFvPvES2_>
     // PeriodicThread* periodican= new WorkerP(5);
     // periodican->start();
     thread_create(&coroutines[1],WorkerAWrapper,nullptr);
    80001ca0:	00000613          	li	a2,0
    80001ca4:	00000597          	auipc	a1,0x0
    80001ca8:	d5858593          	addi	a1,a1,-680 # 800019fc <_Z14WorkerAWrapperPv>
    80001cac:	fc840513          	addi	a0,s0,-56
    80001cb0:	fffff097          	auipc	ra,0xfffff
    80001cb4:	570080e7          	jalr	1392(ra) # 80001220 <_Z13thread_createPP3TCBPFvPvES2_>
     thread_create(&coroutines[2],WorkerBWrapper,nullptr);
    80001cb8:	00000613          	li	a2,0
    80001cbc:	00000597          	auipc	a1,0x0
    80001cc0:	d6858593          	addi	a1,a1,-664 # 80001a24 <_Z14WorkerBWrapperPv>
    80001cc4:	fd040513          	addi	a0,s0,-48
    80001cc8:	fffff097          	auipc	ra,0xfffff
    80001ccc:	558080e7          	jalr	1368(ra) # 80001220 <_Z13thread_createPP3TCBPFvPvES2_>
     thread_create(&coroutines[3],WorkerCWrapper,nullptr);
    80001cd0:	00000613          	li	a2,0
    80001cd4:	00000597          	auipc	a1,0x0
    80001cd8:	d7858593          	addi	a1,a1,-648 # 80001a4c <_Z14WorkerCWrapperPv>
    80001cdc:	fd840513          	addi	a0,s0,-40
    80001ce0:	fffff097          	auipc	ra,0xfffff
    80001ce4:	540080e7          	jalr	1344(ra) # 80001220 <_Z13thread_createPP3TCBPFvPvES2_>
    80001ce8:	00c0006f          	j	80001cf4 <main+0x94>



     while (Scheduler::getSize()>0 || SList::getSize()>0 ) {
         thread_dispatch();
    80001cec:	fffff097          	auipc	ra,0xfffff
    80001cf0:	598080e7          	jalr	1432(ra) # 80001284 <_Z15thread_dispatchv>
public:

    static void put(TCB* x);
    static TCB* get();

    static int getSize() { return queue.size; }
    80001cf4:	00008797          	auipc	a5,0x8
    80001cf8:	4e47b783          	ld	a5,1252(a5) # 8000a1d8 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001cfc:	0107a783          	lw	a5,16(a5)
     while (Scheduler::getSize()>0 || SList::getSize()>0 ) {
    80001d00:	fef046e3          	bgtz	a5,80001cec <main+0x8c>
    static int getSize() { return size; }
    80001d04:	00008797          	auipc	a5,0x8
    80001d08:	4fc7b783          	ld	a5,1276(a5) # 8000a200 <_GLOBAL_OFFSET_TABLE_+0x40>
    80001d0c:	0007a783          	lw	a5,0(a5)
    80001d10:	fcf04ee3          	bgtz	a5,80001cec <main+0x8c>
    80001d14:	fc040493          	addi	s1,s0,-64
    80001d18:	01c0006f          	j	80001d34 <main+0xd4>
        return MemoryAllocator::Instance()->mem_free(ptr);
    80001d1c:	00001097          	auipc	ra,0x1
    80001d20:	b30080e7          	jalr	-1232(ra) # 8000284c <_ZN15MemoryAllocator8InstanceEv>
    80001d24:	00090593          	mv	a1,s2
    80001d28:	00001097          	auipc	ra,0x1
    80001d2c:	cf8080e7          	jalr	-776(ra) # 80002a20 <_ZN15MemoryAllocator8mem_freeEPv>
     }

     for (auto coroutine: coroutines) { delete coroutine; }
    80001d30:	00848493          	addi	s1,s1,8
    80001d34:	fe040793          	addi	a5,s0,-32
    80001d38:	02f48063          	beq	s1,a5,80001d58 <main+0xf8>
    80001d3c:	0004b903          	ld	s2,0(s1)
    80001d40:	fe0908e3          	beqz	s2,80001d30 <main+0xd0>
        delete stack;
    80001d44:	00893503          	ld	a0,8(s2)
    80001d48:	fc050ae3          	beqz	a0,80001d1c <main+0xbc>
    80001d4c:	00000097          	auipc	ra,0x0
    80001d50:	0d0080e7          	jalr	208(ra) # 80001e1c <_ZdlPv>
    80001d54:	fc9ff06f          	j	80001d1c <main+0xbc>

     AllocatorTest();
    80001d58:	00000097          	auipc	ra,0x0
    80001d5c:	d1c080e7          	jalr	-740(ra) # 80001a74 <_Z13AllocatorTestv>
     pprintString("Finished\n");
    80001d60:	00006517          	auipc	a0,0x6
    80001d64:	34850513          	addi	a0,a0,840 # 800080a8 <CONSOLE_STATUS+0x98>
    80001d68:	00001097          	auipc	ra,0x1
    80001d6c:	dd8080e7          	jalr	-552(ra) # 80002b40 <_Z12pprintStringPKc>

    exit_emulator();
    80001d70:	00000097          	auipc	ra,0x0
    80001d74:	ec8080e7          	jalr	-312(ra) # 80001c38 <_Z13exit_emulatorv>
    // pprintString("\n");
    // size_t pom2= mem_get_largest_free_block();
    // pprintString("Largest free block: ");
    // printInteger(pom2);
    // pprintString("\n");
}
    80001d78:	03813083          	ld	ra,56(sp)
    80001d7c:	03013403          	ld	s0,48(sp)
    80001d80:	02813483          	ld	s1,40(sp)
    80001d84:	02013903          	ld	s2,32(sp)
    80001d88:	04010113          	addi	sp,sp,64
    80001d8c:	00008067          	ret

0000000080001d90 <_ZN6Thread7wrapperEPv>:
        ret = thread_create(&myHandle, wrapper, (void*)this);
    }
    return ret;
}
void Thread::wrapper(void* ptr)
{
    80001d90:	ff010113          	addi	sp,sp,-16
    80001d94:	00113423          	sd	ra,8(sp)
    80001d98:	00813023          	sd	s0,0(sp)
    80001d9c:	01010413          	addi	s0,sp,16
    ((Thread*)ptr)->run();
    80001da0:	00053783          	ld	a5,0(a0)
    80001da4:	0107b783          	ld	a5,16(a5)
    80001da8:	000780e7          	jalr	a5
}
    80001dac:	00813083          	ld	ra,8(sp)
    80001db0:	00013403          	ld	s0,0(sp)
    80001db4:	01010113          	addi	sp,sp,16
    80001db8:	00008067          	ret

0000000080001dbc <_ZN9SemaphoreD1Ev>:
Semaphore::Semaphore(unsigned init) {

    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    80001dbc:	ff010113          	addi	sp,sp,-16
    80001dc0:	00113423          	sd	ra,8(sp)
    80001dc4:	00813023          	sd	s0,0(sp)
    80001dc8:	01010413          	addi	s0,sp,16
    80001dcc:	00008797          	auipc	a5,0x8
    80001dd0:	28478793          	addi	a5,a5,644 # 8000a050 <_ZTV9Semaphore+0x10>
    80001dd4:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    80001dd8:	00853503          	ld	a0,8(a0)
    80001ddc:	fffff097          	auipc	ra,0xfffff
    80001de0:	500080e7          	jalr	1280(ra) # 800012dc <_Z9sem_closeP3SEM>
}
    80001de4:	00813083          	ld	ra,8(sp)
    80001de8:	00013403          	ld	s0,0(sp)
    80001dec:	01010113          	addi	sp,sp,16
    80001df0:	00008067          	ret

0000000080001df4 <_Znwm>:
{
    80001df4:	ff010113          	addi	sp,sp,-16
    80001df8:	00113423          	sd	ra,8(sp)
    80001dfc:	00813023          	sd	s0,0(sp)
    80001e00:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80001e04:	fffff097          	auipc	ra,0xfffff
    80001e08:	350080e7          	jalr	848(ra) # 80001154 <_Z9mem_allocm>
}
    80001e0c:	00813083          	ld	ra,8(sp)
    80001e10:	00013403          	ld	s0,0(sp)
    80001e14:	01010113          	addi	sp,sp,16
    80001e18:	00008067          	ret

0000000080001e1c <_ZdlPv>:
{
    80001e1c:	ff010113          	addi	sp,sp,-16
    80001e20:	00113423          	sd	ra,8(sp)
    80001e24:	00813023          	sd	s0,0(sp)
    80001e28:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    80001e2c:	fffff097          	auipc	ra,0xfffff
    80001e30:	368080e7          	jalr	872(ra) # 80001194 <_Z8mem_freePv>
}
    80001e34:	00813083          	ld	ra,8(sp)
    80001e38:	00013403          	ld	s0,0(sp)
    80001e3c:	01010113          	addi	sp,sp,16
    80001e40:	00008067          	ret

0000000080001e44 <_ZN6ThreadD1Ev>:
Thread::~Thread() {
    80001e44:	fe010113          	addi	sp,sp,-32
    80001e48:	00113c23          	sd	ra,24(sp)
    80001e4c:	00813823          	sd	s0,16(sp)
    80001e50:	00913423          	sd	s1,8(sp)
    80001e54:	02010413          	addi	s0,sp,32
    80001e58:	00008797          	auipc	a5,0x8
    80001e5c:	1d078793          	addi	a5,a5,464 # 8000a028 <_ZTV6Thread+0x10>
    80001e60:	00f53023          	sd	a5,0(a0)
    delete myHandle;
    80001e64:	00853483          	ld	s1,8(a0)
    80001e68:	02048463          	beqz	s1,80001e90 <_ZN6ThreadD1Ev+0x4c>
    80001e6c:	0084b503          	ld	a0,8(s1)
    80001e70:	00050663          	beqz	a0,80001e7c <_ZN6ThreadD1Ev+0x38>
    80001e74:	00000097          	auipc	ra,0x0
    80001e78:	fa8080e7          	jalr	-88(ra) # 80001e1c <_ZdlPv>
        return MemoryAllocator::Instance()->mem_free(ptr);
    80001e7c:	00001097          	auipc	ra,0x1
    80001e80:	9d0080e7          	jalr	-1584(ra) # 8000284c <_ZN15MemoryAllocator8InstanceEv>
    80001e84:	00048593          	mv	a1,s1
    80001e88:	00001097          	auipc	ra,0x1
    80001e8c:	b98080e7          	jalr	-1128(ra) # 80002a20 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80001e90:	01813083          	ld	ra,24(sp)
    80001e94:	01013403          	ld	s0,16(sp)
    80001e98:	00813483          	ld	s1,8(sp)
    80001e9c:	02010113          	addi	sp,sp,32
    80001ea0:	00008067          	ret

0000000080001ea4 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80001ea4:	fe010113          	addi	sp,sp,-32
    80001ea8:	00113c23          	sd	ra,24(sp)
    80001eac:	00813823          	sd	s0,16(sp)
    80001eb0:	00913423          	sd	s1,8(sp)
    80001eb4:	02010413          	addi	s0,sp,32
    80001eb8:	00050493          	mv	s1,a0
}
    80001ebc:	00000097          	auipc	ra,0x0
    80001ec0:	f88080e7          	jalr	-120(ra) # 80001e44 <_ZN6ThreadD1Ev>
    80001ec4:	00048513          	mv	a0,s1
    80001ec8:	00000097          	auipc	ra,0x0
    80001ecc:	f54080e7          	jalr	-172(ra) # 80001e1c <_ZdlPv>
    80001ed0:	01813083          	ld	ra,24(sp)
    80001ed4:	01013403          	ld	s0,16(sp)
    80001ed8:	00813483          	ld	s1,8(sp)
    80001edc:	02010113          	addi	sp,sp,32
    80001ee0:	00008067          	ret

0000000080001ee4 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80001ee4:	fe010113          	addi	sp,sp,-32
    80001ee8:	00113c23          	sd	ra,24(sp)
    80001eec:	00813823          	sd	s0,16(sp)
    80001ef0:	00913423          	sd	s1,8(sp)
    80001ef4:	02010413          	addi	s0,sp,32
    80001ef8:	00050493          	mv	s1,a0
}
    80001efc:	00000097          	auipc	ra,0x0
    80001f00:	ec0080e7          	jalr	-320(ra) # 80001dbc <_ZN9SemaphoreD1Ev>
    80001f04:	00048513          	mv	a0,s1
    80001f08:	00000097          	auipc	ra,0x0
    80001f0c:	f14080e7          	jalr	-236(ra) # 80001e1c <_ZdlPv>
    80001f10:	01813083          	ld	ra,24(sp)
    80001f14:	01013403          	ld	s0,16(sp)
    80001f18:	00813483          	ld	s1,8(sp)
    80001f1c:	02010113          	addi	sp,sp,32
    80001f20:	00008067          	ret

0000000080001f24 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) {
    80001f24:	ff010113          	addi	sp,sp,-16
    80001f28:	00813423          	sd	s0,8(sp)
    80001f2c:	01010413          	addi	s0,sp,16
    80001f30:	00008797          	auipc	a5,0x8
    80001f34:	0f878793          	addi	a5,a5,248 # 8000a028 <_ZTV6Thread+0x10>
    80001f38:	00f53023          	sd	a5,0(a0)
    myHandle= nullptr;
    80001f3c:	00053423          	sd	zero,8(a0)
    this->body=body;
    80001f40:	00b53823          	sd	a1,16(a0)
    this->arg=arg;
    80001f44:	00c53c23          	sd	a2,24(a0)
}
    80001f48:	00813403          	ld	s0,8(sp)
    80001f4c:	01010113          	addi	sp,sp,16
    80001f50:	00008067          	ret

0000000080001f54 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80001f54:	ff010113          	addi	sp,sp,-16
    80001f58:	00113423          	sd	ra,8(sp)
    80001f5c:	00813023          	sd	s0,0(sp)
    80001f60:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80001f64:	fffff097          	auipc	ra,0xfffff
    80001f68:	320080e7          	jalr	800(ra) # 80001284 <_Z15thread_dispatchv>
}
    80001f6c:	00813083          	ld	ra,8(sp)
    80001f70:	00013403          	ld	s0,0(sp)
    80001f74:	01010113          	addi	sp,sp,16
    80001f78:	00008067          	ret

0000000080001f7c <_ZN6ThreadC1Ev>:
Thread::Thread() {
    80001f7c:	ff010113          	addi	sp,sp,-16
    80001f80:	00813423          	sd	s0,8(sp)
    80001f84:	01010413          	addi	s0,sp,16
    80001f88:	00008797          	auipc	a5,0x8
    80001f8c:	0a078793          	addi	a5,a5,160 # 8000a028 <_ZTV6Thread+0x10>
    80001f90:	00f53023          	sd	a5,0(a0)
    myHandle=nullptr;
    80001f94:	00053423          	sd	zero,8(a0)
    body=nullptr;
    80001f98:	00053823          	sd	zero,16(a0)
    arg=nullptr;
    80001f9c:	00053c23          	sd	zero,24(a0)
}
    80001fa0:	00813403          	ld	s0,8(sp)
    80001fa4:	01010113          	addi	sp,sp,16
    80001fa8:	00008067          	ret

0000000080001fac <_ZN6Thread5startEv>:
int Thread::start() {
    80001fac:	ff010113          	addi	sp,sp,-16
    80001fb0:	00113423          	sd	ra,8(sp)
    80001fb4:	00813023          	sd	s0,0(sp)
    80001fb8:	01010413          	addi	s0,sp,16
    if(body!=nullptr)
    80001fbc:	01053583          	ld	a1,16(a0)
    80001fc0:	02058263          	beqz	a1,80001fe4 <_ZN6Thread5startEv+0x38>
        ret = thread_create(&myHandle, body, arg);
    80001fc4:	01853603          	ld	a2,24(a0)
    80001fc8:	00850513          	addi	a0,a0,8
    80001fcc:	fffff097          	auipc	ra,0xfffff
    80001fd0:	254080e7          	jalr	596(ra) # 80001220 <_Z13thread_createPP3TCBPFvPvES2_>
}
    80001fd4:	00813083          	ld	ra,8(sp)
    80001fd8:	00013403          	ld	s0,0(sp)
    80001fdc:	01010113          	addi	sp,sp,16
    80001fe0:	00008067          	ret
        ret = thread_create(&myHandle, wrapper, (void*)this);
    80001fe4:	00050613          	mv	a2,a0
    80001fe8:	00000597          	auipc	a1,0x0
    80001fec:	da858593          	addi	a1,a1,-600 # 80001d90 <_ZN6Thread7wrapperEPv>
    80001ff0:	00850513          	addi	a0,a0,8
    80001ff4:	fffff097          	auipc	ra,0xfffff
    80001ff8:	22c080e7          	jalr	556(ra) # 80001220 <_Z13thread_createPP3TCBPFvPvES2_>
    80001ffc:	fd9ff06f          	j	80001fd4 <_ZN6Thread5startEv+0x28>

0000000080002000 <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t time) {
    80002000:	ff010113          	addi	sp,sp,-16
    80002004:	00113423          	sd	ra,8(sp)
    80002008:	00813023          	sd	s0,0(sp)
    8000200c:	01010413          	addi	s0,sp,16
    return time_sleep(time);
    80002010:	fffff097          	auipc	ra,0xfffff
    80002014:	35c080e7          	jalr	860(ra) # 8000136c <_Z10time_sleepm>
}
    80002018:	00813083          	ld	ra,8(sp)
    8000201c:	00013403          	ld	s0,0(sp)
    80002020:	01010113          	addi	sp,sp,16
    80002024:	00008067          	ret

0000000080002028 <_ZN14PeriodicThread3runEv>:
}
void PeriodicThread::terminate() {
    this->period=0;
}

void PeriodicThread::run() {
    80002028:	fe010113          	addi	sp,sp,-32
    8000202c:	00113c23          	sd	ra,24(sp)
    80002030:	00813823          	sd	s0,16(sp)
    80002034:	00913423          	sd	s1,8(sp)
    80002038:	02010413          	addi	s0,sp,32
    8000203c:	00050493          	mv	s1,a0
    while (period!=0) {
    80002040:	0204b783          	ld	a5,32(s1)
    80002044:	02078463          	beqz	a5,8000206c <_ZN14PeriodicThread3runEv+0x44>
        periodicActivation();
    80002048:	0004b783          	ld	a5,0(s1)
    8000204c:	0187b783          	ld	a5,24(a5)
    80002050:	00048513          	mv	a0,s1
    80002054:	000780e7          	jalr	a5
        if (period!=0)
    80002058:	0204b503          	ld	a0,32(s1)
    8000205c:	fe0502e3          	beqz	a0,80002040 <_ZN14PeriodicThread3runEv+0x18>
            sleep(period);
    80002060:	00000097          	auipc	ra,0x0
    80002064:	fa0080e7          	jalr	-96(ra) # 80002000 <_ZN6Thread5sleepEm>
    80002068:	fd9ff06f          	j	80002040 <_ZN14PeriodicThread3runEv+0x18>
    }
    8000206c:	01813083          	ld	ra,24(sp)
    80002070:	01013403          	ld	s0,16(sp)
    80002074:	00813483          	ld	s1,8(sp)
    80002078:	02010113          	addi	sp,sp,32
    8000207c:	00008067          	ret

0000000080002080 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned init) {
    80002080:	ff010113          	addi	sp,sp,-16
    80002084:	00113423          	sd	ra,8(sp)
    80002088:	00813023          	sd	s0,0(sp)
    8000208c:	01010413          	addi	s0,sp,16
    80002090:	00008797          	auipc	a5,0x8
    80002094:	fc078793          	addi	a5,a5,-64 # 8000a050 <_ZTV9Semaphore+0x10>
    80002098:	00f53023          	sd	a5,0(a0)
    sem_open(&myHandle, init);
    8000209c:	00850513          	addi	a0,a0,8
    800020a0:	fffff097          	auipc	ra,0xfffff
    800020a4:	208080e7          	jalr	520(ra) # 800012a8 <_Z8sem_openPP3SEMj>
}
    800020a8:	00813083          	ld	ra,8(sp)
    800020ac:	00013403          	ld	s0,0(sp)
    800020b0:	01010113          	addi	sp,sp,16
    800020b4:	00008067          	ret

00000000800020b8 <_ZN9Semaphore4waitEv>:
int Semaphore::wait() {
    800020b8:	ff010113          	addi	sp,sp,-16
    800020bc:	00113423          	sd	ra,8(sp)
    800020c0:	00813023          	sd	s0,0(sp)
    800020c4:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    800020c8:	00853503          	ld	a0,8(a0)
    800020cc:	fffff097          	auipc	ra,0xfffff
    800020d0:	240080e7          	jalr	576(ra) # 8000130c <_Z8sem_waitP3SEM>
}
    800020d4:	00813083          	ld	ra,8(sp)
    800020d8:	00013403          	ld	s0,0(sp)
    800020dc:	01010113          	addi	sp,sp,16
    800020e0:	00008067          	ret

00000000800020e4 <_ZN9Semaphore6signalEv>:
int Semaphore::signal() {
    800020e4:	ff010113          	addi	sp,sp,-16
    800020e8:	00113423          	sd	ra,8(sp)
    800020ec:	00813023          	sd	s0,0(sp)
    800020f0:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    800020f4:	00853503          	ld	a0,8(a0)
    800020f8:	fffff097          	auipc	ra,0xfffff
    800020fc:	244080e7          	jalr	580(ra) # 8000133c <_Z10sem_signalP3SEM>
}
    80002100:	00813083          	ld	ra,8(sp)
    80002104:	00013403          	ld	s0,0(sp)
    80002108:	01010113          	addi	sp,sp,16
    8000210c:	00008067          	ret

0000000080002110 <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period):Thread() {
    80002110:	fe010113          	addi	sp,sp,-32
    80002114:	00113c23          	sd	ra,24(sp)
    80002118:	00813823          	sd	s0,16(sp)
    8000211c:	00913423          	sd	s1,8(sp)
    80002120:	01213023          	sd	s2,0(sp)
    80002124:	02010413          	addi	s0,sp,32
    80002128:	00050493          	mv	s1,a0
    8000212c:	00058913          	mv	s2,a1
    80002130:	00000097          	auipc	ra,0x0
    80002134:	e4c080e7          	jalr	-436(ra) # 80001f7c <_ZN6ThreadC1Ev>
    80002138:	00008797          	auipc	a5,0x8
    8000213c:	f3878793          	addi	a5,a5,-200 # 8000a070 <_ZTV14PeriodicThread+0x10>
    80002140:	00f4b023          	sd	a5,0(s1)
    this->period=period;
    80002144:	0324b023          	sd	s2,32(s1)
}
    80002148:	01813083          	ld	ra,24(sp)
    8000214c:	01013403          	ld	s0,16(sp)
    80002150:	00813483          	ld	s1,8(sp)
    80002154:	00013903          	ld	s2,0(sp)
    80002158:	02010113          	addi	sp,sp,32
    8000215c:	00008067          	ret

0000000080002160 <_ZN14PeriodicThread9terminateEv>:
void PeriodicThread::terminate() {
    80002160:	ff010113          	addi	sp,sp,-16
    80002164:	00813423          	sd	s0,8(sp)
    80002168:	01010413          	addi	s0,sp,16
    this->period=0;
    8000216c:	02053023          	sd	zero,32(a0)
}
    80002170:	00813403          	ld	s0,8(sp)
    80002174:	01010113          	addi	sp,sp,16
    80002178:	00008067          	ret

000000008000217c <_ZN6Thread3runEv>:
    int start ();
    static void dispatch ();
    static int sleep (time_t);
protected:
    Thread ();
    virtual void run () {}
    8000217c:	ff010113          	addi	sp,sp,-16
    80002180:	00813423          	sd	s0,8(sp)
    80002184:	01010413          	addi	s0,sp,16
    80002188:	00813403          	ld	s0,8(sp)
    8000218c:	01010113          	addi	sp,sp,16
    80002190:	00008067          	ret

0000000080002194 <_ZN14PeriodicThread18periodicActivationEv>:
class PeriodicThread : public Thread {
public:
    void terminate ();
protected:
    PeriodicThread (time_t period);
    virtual void periodicActivation () {}
    80002194:	ff010113          	addi	sp,sp,-16
    80002198:	00813423          	sd	s0,8(sp)
    8000219c:	01010413          	addi	s0,sp,16
    800021a0:	00813403          	ld	s0,8(sp)
    800021a4:	01010113          	addi	sp,sp,16
    800021a8:	00008067          	ret

00000000800021ac <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    800021ac:	ff010113          	addi	sp,sp,-16
    800021b0:	00113423          	sd	ra,8(sp)
    800021b4:	00813023          	sd	s0,0(sp)
    800021b8:	01010413          	addi	s0,sp,16
    800021bc:	00008797          	auipc	a5,0x8
    800021c0:	eb478793          	addi	a5,a5,-332 # 8000a070 <_ZTV14PeriodicThread+0x10>
    800021c4:	00f53023          	sd	a5,0(a0)
    800021c8:	00000097          	auipc	ra,0x0
    800021cc:	c7c080e7          	jalr	-900(ra) # 80001e44 <_ZN6ThreadD1Ev>
    800021d0:	00813083          	ld	ra,8(sp)
    800021d4:	00013403          	ld	s0,0(sp)
    800021d8:	01010113          	addi	sp,sp,16
    800021dc:	00008067          	ret

00000000800021e0 <_ZN14PeriodicThreadD0Ev>:
    800021e0:	fe010113          	addi	sp,sp,-32
    800021e4:	00113c23          	sd	ra,24(sp)
    800021e8:	00813823          	sd	s0,16(sp)
    800021ec:	00913423          	sd	s1,8(sp)
    800021f0:	02010413          	addi	s0,sp,32
    800021f4:	00050493          	mv	s1,a0
    800021f8:	00008797          	auipc	a5,0x8
    800021fc:	e7878793          	addi	a5,a5,-392 # 8000a070 <_ZTV14PeriodicThread+0x10>
    80002200:	00f53023          	sd	a5,0(a0)
    80002204:	00000097          	auipc	ra,0x0
    80002208:	c40080e7          	jalr	-960(ra) # 80001e44 <_ZN6ThreadD1Ev>
    8000220c:	00048513          	mv	a0,s1
    80002210:	00000097          	auipc	ra,0x0
    80002214:	c0c080e7          	jalr	-1012(ra) # 80001e1c <_ZdlPv>
    80002218:	01813083          	ld	ra,24(sp)
    8000221c:	01013403          	ld	s0,16(sp)
    80002220:	00813483          	ld	s1,8(sp)
    80002224:	02010113          	addi	sp,sp,32
    80002228:	00008067          	ret

000000008000222c <_ZN3TCB12createThreadEPFvPvES0_Pm>:
extern "C" void context_switch(TCB::Context* oldContext, TCB::Context* newContext);

TCB* TCB::running=nullptr;
time_t TCB::timeCounter=0;

TCB* TCB::createThread(Body body, void *arg, uint64 *stack) {
    8000222c:	fd010113          	addi	sp,sp,-48
    80002230:	02113423          	sd	ra,40(sp)
    80002234:	02813023          	sd	s0,32(sp)
    80002238:	00913c23          	sd	s1,24(sp)
    8000223c:	01213823          	sd	s2,16(sp)
    80002240:	01313423          	sd	s3,8(sp)
    80002244:	01413023          	sd	s4,0(sp)
    80002248:	03010413          	addi	s0,sp,48
    8000224c:	00050993          	mv	s3,a0
    80002250:	00058a13          	mv	s4,a1
    80002254:	00060913          	mv	s2,a2
    return MemoryAllocator::Instance()->mem_alloc(size);
    80002258:	00000097          	auipc	ra,0x0
    8000225c:	5f4080e7          	jalr	1524(ra) # 8000284c <_ZN15MemoryAllocator8InstanceEv>
    80002260:	04000593          	li	a1,64
    80002264:	00000097          	auipc	ra,0x0
    80002268:	644080e7          	jalr	1604(ra) # 800028a8 <_ZN15MemoryAllocator9mem_allocEm>
    8000226c:	00050493          	mv	s1,a0
              body != nullptr ? (uint64)&TCBWrapper : 0,
              body != nullptr ? (uint64)((char*)stackMem + DEFAULT_STACK_SIZE) : 0
          }),
          body(body),
            blocked(false),
    timeSlice(DEFAULT_TIME_SLICE)
    80002270:	00050023          	sb	zero,0(a0)
    80002274:	01253423          	sd	s2,8(a0)
    80002278:	01453823          	sd	s4,16(a0)
              body != nullptr ? (uint64)&TCBWrapper : 0,
    8000227c:	04098663          	beqz	s3,800022c8 <_ZN3TCB12createThreadEPFvPvES0_Pm+0x9c>
    80002280:	00000797          	auipc	a5,0x0
    80002284:	16c78793          	addi	a5,a5,364 # 800023ec <_ZN3TCB10TCBWrapperEv>
    timeSlice(DEFAULT_TIME_SLICE)
    80002288:	00f4bc23          	sd	a5,24(s1)
              body != nullptr ? (uint64)((char*)stackMem + DEFAULT_STACK_SIZE) : 0
    8000228c:	04098263          	beqz	s3,800022d0 <_ZN3TCB12createThreadEPFvPvES0_Pm+0xa4>
    80002290:	00001637          	lui	a2,0x1
    80002294:	00c90933          	add	s2,s2,a2
    timeSlice(DEFAULT_TIME_SLICE)
    80002298:	0324b023          	sd	s2,32(s1)
    8000229c:	0334b423          	sd	s3,40(s1)
    800022a0:	02048823          	sb	zero,48(s1)
    800022a4:	00200793          	li	a5,2
    800022a8:	02f4bc23          	sd	a5,56(s1)
    {
        timeSlice = DEFAULT_TIME_SLICE;
        if (running == nullptr) {
    800022ac:	00008797          	auipc	a5,0x8
    800022b0:	fd47b783          	ld	a5,-44(a5) # 8000a280 <_ZN3TCB7runningE>
    800022b4:	02078263          	beqz	a5,800022d8 <_ZN3TCB12createThreadEPFvPvES0_Pm+0xac>
            running = this;
        } else {
            Scheduler::put(this);
    800022b8:	00048513          	mv	a0,s1
    800022bc:	fffff097          	auipc	ra,0xfffff
    800022c0:	694080e7          	jalr	1684(ra) # 80001950 <_ZN9Scheduler3putEP3TCB>
    800022c4:	01c0006f          	j	800022e0 <_ZN3TCB12createThreadEPFvPvES0_Pm+0xb4>
              body != nullptr ? (uint64)&TCBWrapper : 0,
    800022c8:	00000793          	li	a5,0
    800022cc:	fbdff06f          	j	80002288 <_ZN3TCB12createThreadEPFvPvES0_Pm+0x5c>
              body != nullptr ? (uint64)((char*)stackMem + DEFAULT_STACK_SIZE) : 0
    800022d0:	00000913          	li	s2,0
    800022d4:	fc5ff06f          	j	80002298 <_ZN3TCB12createThreadEPFvPvES0_Pm+0x6c>
            running = this;
    800022d8:	00008797          	auipc	a5,0x8
    800022dc:	fa97b423          	sd	s1,-88(a5) # 8000a280 <_ZN3TCB7runningE>
    return new TCB(body, arg, stack);
}
    800022e0:	00048513          	mv	a0,s1
    800022e4:	02813083          	ld	ra,40(sp)
    800022e8:	02013403          	ld	s0,32(sp)
    800022ec:	01813483          	ld	s1,24(sp)
    800022f0:	01013903          	ld	s2,16(sp)
    800022f4:	00813983          	ld	s3,8(sp)
    800022f8:	00013a03          	ld	s4,0(sp)
    800022fc:	03010113          	addi	sp,sp,48
    80002300:	00008067          	ret
    80002304:	00050913          	mv	s2,a0
        return MemoryAllocator::Instance()->mem_free(ptr);
    80002308:	00000097          	auipc	ra,0x0
    8000230c:	544080e7          	jalr	1348(ra) # 8000284c <_ZN15MemoryAllocator8InstanceEv>
    80002310:	00048593          	mv	a1,s1
    80002314:	00000097          	auipc	ra,0x0
    80002318:	70c080e7          	jalr	1804(ra) # 80002a20 <_ZN15MemoryAllocator8mem_freeEPv>
    8000231c:	00090513          	mv	a0,s2
    80002320:	00009097          	auipc	ra,0x9
    80002324:	088080e7          	jalr	136(ra) # 8000b3a8 <_Unwind_Resume>

0000000080002328 <_ZN3TCB8dispatchEv>:

void TCB::dispatch() {
    80002328:	fe010113          	addi	sp,sp,-32
    8000232c:	00113c23          	sd	ra,24(sp)
    80002330:	00813823          	sd	s0,16(sp)
    80002334:	00913423          	sd	s1,8(sp)
    80002338:	02010413          	addi	s0,sp,32
    //pprintString("TCB::dispatch()\n");
    TCB *old=running;
    8000233c:	00008497          	auipc	s1,0x8
    80002340:	f444b483          	ld	s1,-188(s1) # 8000a280 <_ZN3TCB7runningE>
    bool isFinished() const { return finished;}
    80002344:	0004c783          	lbu	a5,0(s1)
    if (!old->isFinished() && !old->isBlocked()) {
    80002348:	00079663          	bnez	a5,80002354 <_ZN3TCB8dispatchEv+0x2c>
    bool isBlocked() const { return blocked; }
    8000234c:	0304c783          	lbu	a5,48(s1)
    80002350:	04078063          	beqz	a5,80002390 <_ZN3TCB8dispatchEv+0x68>
        Scheduler::put(old);
    }
    running=Scheduler::get();
    80002354:	fffff097          	auipc	ra,0xfffff
    80002358:	560080e7          	jalr	1376(ra) # 800018b4 <_ZN9Scheduler3getEv>
    8000235c:	00008797          	auipc	a5,0x8
    80002360:	f2478793          	addi	a5,a5,-220 # 8000a280 <_ZN3TCB7runningE>
    80002364:	00a7b023          	sd	a0,0(a5)


    timeCounter=0;
    80002368:	0007b423          	sd	zero,8(a5)
    //Riscv::restorePrivilege();
    context_switch(&old->context, &running->context);
    8000236c:	01850593          	addi	a1,a0,24
    80002370:	01848513          	addi	a0,s1,24
    80002374:	fffff097          	auipc	ra,0xfffff
    80002378:	dac080e7          	jalr	-596(ra) # 80001120 <context_switch>
}
    8000237c:	01813083          	ld	ra,24(sp)
    80002380:	01013403          	ld	s0,16(sp)
    80002384:	00813483          	ld	s1,8(sp)
    80002388:	02010113          	addi	sp,sp,32
    8000238c:	00008067          	ret
        Scheduler::put(old);
    80002390:	00048513          	mv	a0,s1
    80002394:	fffff097          	auipc	ra,0xfffff
    80002398:	5bc080e7          	jalr	1468(ra) # 80001950 <_ZN9Scheduler3putEP3TCB>
    8000239c:	fb9ff06f          	j	80002354 <_ZN3TCB8dispatchEv+0x2c>

00000000800023a0 <_ZN3TCB4exitEv>:



int TCB::exit() {
    if (running->isFinished()) {
    800023a0:	00008797          	auipc	a5,0x8
    800023a4:	ee07b783          	ld	a5,-288(a5) # 8000a280 <_ZN3TCB7runningE>
    bool isFinished() const { return finished;}
    800023a8:	0007c703          	lbu	a4,0(a5)
    800023ac:	02071c63          	bnez	a4,800023e4 <_ZN3TCB4exitEv+0x44>
int TCB::exit() {
    800023b0:	ff010113          	addi	sp,sp,-16
    800023b4:	00113423          	sd	ra,8(sp)
    800023b8:	00813023          	sd	s0,0(sp)
    800023bc:	01010413          	addi	s0,sp,16
        return -1;
    }
    running->finished=true;
    800023c0:	00100713          	li	a4,1
    800023c4:	00e78023          	sb	a4,0(a5)
    thread_dispatch();
    800023c8:	fffff097          	auipc	ra,0xfffff
    800023cc:	ebc080e7          	jalr	-324(ra) # 80001284 <_Z15thread_dispatchv>
    return 0;
    800023d0:	00000513          	li	a0,0
}
    800023d4:	00813083          	ld	ra,8(sp)
    800023d8:	00013403          	ld	s0,0(sp)
    800023dc:	01010113          	addi	sp,sp,16
    800023e0:	00008067          	ret
        return -1;
    800023e4:	fff00513          	li	a0,-1
}
    800023e8:	00008067          	ret

00000000800023ec <_ZN3TCB10TCBWrapperEv>:

void TCB::TCBWrapper() {
    800023ec:	ff010113          	addi	sp,sp,-16
    800023f0:	00113423          	sd	ra,8(sp)
    800023f4:	00813023          	sd	s0,0(sp)
    800023f8:	01010413          	addi	s0,sp,16
    //pprintString("Entered wrapper\n");
    //Riscv::restorePrivilege();
    Riscv::popSppSpie();
    800023fc:	00000097          	auipc	ra,0x0
    80002400:	088080e7          	jalr	136(ra) # 80002484 <_ZN5Riscv10popSppSpieEv>
    running->body(running->arg);
    80002404:	00008797          	auipc	a5,0x8
    80002408:	e7c7b783          	ld	a5,-388(a5) # 8000a280 <_ZN3TCB7runningE>
    8000240c:	0287b703          	ld	a4,40(a5)
    80002410:	0107b503          	ld	a0,16(a5)
    80002414:	000700e7          	jalr	a4
    exit();
    80002418:	00000097          	auipc	ra,0x0
    8000241c:	f88080e7          	jalr	-120(ra) # 800023a0 <_ZN3TCB4exitEv>
}
    80002420:	00813083          	ld	ra,8(sp)
    80002424:	00013403          	ld	s0,0(sp)
    80002428:	01010113          	addi	sp,sp,16
    8000242c:	00008067          	ret

0000000080002430 <_ZN3TCB5sleepEm>:

int TCB::sleep(time_t time) {
    if (time <= 0) {
    80002430:	04050663          	beqz	a0,8000247c <_ZN3TCB5sleepEm+0x4c>
int TCB::sleep(time_t time) {
    80002434:	ff010113          	addi	sp,sp,-16
    80002438:	00113423          	sd	ra,8(sp)
    8000243c:	00813023          	sd	s0,0(sp)
    80002440:	01010413          	addi	s0,sp,16
    80002444:	00050593          	mv	a1,a0
        return -1;
    }
    running->block();
    80002448:	00008517          	auipc	a0,0x8
    8000244c:	e3853503          	ld	a0,-456(a0) # 8000a280 <_ZN3TCB7runningE>
    void block() { this->blocked = true; }
    80002450:	00100793          	li	a5,1
    80002454:	02f50823          	sb	a5,48(a0)
    SList::add(running, time);
    80002458:	fffff097          	auipc	ra,0xfffff
    8000245c:	f44080e7          	jalr	-188(ra) # 8000139c <_ZN5SList3addEP3TCBm>
    dispatch();
    80002460:	00000097          	auipc	ra,0x0
    80002464:	ec8080e7          	jalr	-312(ra) # 80002328 <_ZN3TCB8dispatchEv>
    return 0;
    80002468:	00000513          	li	a0,0
    8000246c:	00813083          	ld	ra,8(sp)
    80002470:	00013403          	ld	s0,0(sp)
    80002474:	01010113          	addi	sp,sp,16
    80002478:	00008067          	ret
        return -1;
    8000247c:	fff00513          	li	a0,-1
    80002480:	00008067          	ret

0000000080002484 <_ZN5Riscv10popSppSpieEv>:
#include "../h/MemoryAllocator.hpp"
#include  "../h/print.hpp"
#include "../h/SList.hpp"
using Body=void(*)(void*);

void Riscv::popSppSpie() {
    80002484:	ff010113          	addi	sp,sp,-16
    80002488:	00813423          	sd	s0,8(sp)
    8000248c:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    80002490:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80002494:	10200073          	sret
}
    80002498:	00813403          	ld	s0,8(sp)
    8000249c:	01010113          	addi	sp,sp,16
    800024a0:	00008067          	ret

00000000800024a4 <_ZN5Riscv21SupervisorTrapHandlerEv>:
//     else
//         mc_sstatus(SSTATUS_SPP);
// }


void Riscv::SupervisorTrapHandler() {
    800024a4:	fa010113          	addi	sp,sp,-96
    800024a8:	04113c23          	sd	ra,88(sp)
    800024ac:	04813823          	sd	s0,80(sp)
    800024b0:	04913423          	sd	s1,72(sp)
    800024b4:	05213023          	sd	s2,64(sp)
    800024b8:	03313c23          	sd	s3,56(sp)
    800024bc:	03413823          	sd	s4,48(sp)
    800024c0:	03513423          	sd	s5,40(sp)
    800024c4:	06010413          	addi	s0,sp,96
    __asm__ volatile("csrr %[scause], scause":[scause]"=r"(scause));
    800024c8:	142027f3          	csrr	a5,scause
    800024cc:	faf43423          	sd	a5,-88(s0)
    return scause;
    800024d0:	fa843703          	ld	a4,-88(s0)
    __asm__ volatile ("csrr %[x],sepc" : [x] "=r" (sepc));
    800024d4:	141024f3          	csrr	s1,sepc
    __asm__ volatile ("csrr %[x],sstatus" : [x] "=r" (sstatus));
    800024d8:	10002973          	csrr	s2,sstatus
    uint64 sepc;
    uint64 sstatus;
    uint64 scause=get_scause();
    sepc=get_sepc();
    sstatus=get_sstatus();
    if (scause == 0x8000000000000001UL) {
    800024dc:	fff00793          	li	a5,-1
    800024e0:	03f79793          	slli	a5,a5,0x3f
    800024e4:	00178793          	addi	a5,a5,1
    800024e8:	12f70063          	beq	a4,a5,80002608 <_ZN5Riscv21SupervisorTrapHandlerEv+0x164>
            set_sepc(sepc);
            set_sstatus(sstatus);
        }
        mc_sip(SIP_SSIP);
    }
    else if (scause == 0x8000000000000009UL) {
    800024ec:	fff00793          	li	a5,-1
    800024f0:	03f79793          	slli	a5,a5,0x3f
    800024f4:	00978793          	addi	a5,a5,9
    800024f8:	16f70263          	beq	a4,a5,8000265c <_ZN5Riscv21SupervisorTrapHandlerEv+0x1b8>
        // interrupt from keyboard
        console_handler();
    }
    else {
        uint64 syscode;
    __asm__ volatile ("mv %[x], a0" : [x] "=r" (syscode));
    800024fc:	00050793          	mv	a5,a0

    if (syscode==MEM_ALLOC) {
    80002500:	00100713          	li	a4,1
    80002504:	16e78263          	beq	a5,a4,80002668 <_ZN5Riscv21SupervisorTrapHandlerEv+0x1c4>
        size_t size_in_blocks;
        __asm__ volatile ("mv %[x], a1" : [x] "=r" (size_in_blocks));
        void* ptr = MemoryAllocator::Instance()->mem_alloc(size_in_blocks * MEM_BLOCK_SIZE);
        __asm__ volatile ("mv a0,%[x]" :: [x] "r" (ptr));
    }
    else if (syscode==MEM_FREE) {
    80002508:	00200713          	li	a4,2
    8000250c:	1ae78463          	beq	a5,a4,800026b4 <_ZN5Riscv21SupervisorTrapHandlerEv+0x210>
        void* ptr;
        __asm__ volatile ("mv %[x], a1" : [x] "=r" (ptr));
        MemoryAllocator::Instance()->mem_free(ptr);
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (0));
    }
    else if (syscode==MEM_GET_FREE_SPACE) {
    80002510:	00300713          	li	a4,3
    80002514:	1ce78263          	beq	a5,a4,800026d8 <_ZN5Riscv21SupervisorTrapHandlerEv+0x234>
        size_t freeMem = MemoryAllocator::Instance()->getFreeMemSize();
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (freeMem));
    }
    else if (syscode==MEM_GET_LARGEST_FREE_BLOCK) {
    80002518:	00400713          	li	a4,4
    8000251c:	1ce78863          	beq	a5,a4,800026ec <_ZN5Riscv21SupervisorTrapHandlerEv+0x248>
        size_t largestBlock = MemoryAllocator::Instance()->getLargestFreeBlock();
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (largestBlock));
    }
    else if (syscode==THREAD_CREATE) {
    80002520:	01100713          	li	a4,17
    80002524:	1ee78063          	beq	a5,a4,80002704 <_ZN5Riscv21SupervisorTrapHandlerEv+0x260>
        else {
            ret=1;
        }
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (ret));
    }
    else if (syscode==THREAD_EXIT) {
    80002528:	01200713          	li	a4,18
    8000252c:	22e78463          	beq	a5,a4,80002754 <_ZN5Riscv21SupervisorTrapHandlerEv+0x2b0>
        int ret = TCB::exit();
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (ret));
    }
    else if (syscode==THREAD_DISPATCH) {
    80002530:	01300713          	li	a4,19
    80002534:	22e78863          	beq	a5,a4,80002764 <_ZN5Riscv21SupervisorTrapHandlerEv+0x2c0>
        TCB::dispatch();
    }
    else if (syscode==SEM_OPEN) {
    80002538:	02100713          	li	a4,33
    8000253c:	22e78a63          	beq	a5,a4,80002770 <_ZN5Riscv21SupervisorTrapHandlerEv+0x2cc>
        else {
            ret=1;
        }
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (ret));
    }
    else if (syscode==SEM_CLOSE) {
    80002540:	02200713          	li	a4,34
    80002544:	24e78e63          	beq	a5,a4,800027a0 <_ZN5Riscv21SupervisorTrapHandlerEv+0x2fc>
        sem_t handle;
        __asm__ volatile ("mv %[x], a1" : [x] "=r" (handle));
        int ret=handle->close();
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (ret));
    }
    else if (syscode==SEM_WAIT) {
    80002548:	02300713          	li	a4,35
    8000254c:	26e78463          	beq	a5,a4,800027b4 <_ZN5Riscv21SupervisorTrapHandlerEv+0x310>
        sem_t handle;
        __asm__ volatile ("mv %[x], a1" : [x] "=r" (handle));
        int ret=handle->wait();
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (ret));
    }
    else if (syscode==SEM_SIGNAL) {
    80002550:	02400713          	li	a4,36
    80002554:	26e78a63          	beq	a5,a4,800027c8 <_ZN5Riscv21SupervisorTrapHandlerEv+0x324>
        sem_t handle;
        __asm__ volatile ("mv %[x], a1" : [x] "=r" (handle));
        int ret=handle->signal();
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (ret));
    }
    else if (syscode==TIME_SLEEP) {
    80002558:	03100713          	li	a4,49
    8000255c:	28e78063          	beq	a5,a4,800027dc <_ZN5Riscv21SupervisorTrapHandlerEv+0x338>
    __asm__ volatile("csrr %[scause], scause":[scause]"=r"(scause));
    80002560:	142027f3          	csrr	a5,scause
    80002564:	faf43c23          	sd	a5,-72(s0)
    return scause;
    80002568:	fb843a03          	ld	s4,-72(s0)
    __asm__ volatile("csrr %[stval], stval":[stval]"=r"(stval));
    8000256c:	143027f3          	csrr	a5,stval
    80002570:	faf43823          	sd	a5,-80(s0)
    return stval;
    80002574:	fb043983          	ld	s3,-80(s0)
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (ret));
    }
    else {
        uint64 scause= get_scause();
        uint64 stval= get_stval();
        pprintString("scause:");
    80002578:	00006517          	auipc	a0,0x6
    8000257c:	b4050513          	addi	a0,a0,-1216 # 800080b8 <CONSOLE_STATUS+0xa8>
    80002580:	00000097          	auipc	ra,0x0
    80002584:	5c0080e7          	jalr	1472(ra) # 80002b40 <_Z12pprintStringPKc>
        printInteger(scause);
    80002588:	000a0513          	mv	a0,s4
    8000258c:	00000097          	auipc	ra,0x0
    80002590:	5f8080e7          	jalr	1528(ra) # 80002b84 <_Z12printIntegerm>
        pprintString("\n");
    80002594:	00006517          	auipc	a0,0x6
    80002598:	afc50513          	addi	a0,a0,-1284 # 80008090 <CONSOLE_STATUS+0x80>
    8000259c:	00000097          	auipc	ra,0x0
    800025a0:	5a4080e7          	jalr	1444(ra) # 80002b40 <_Z12pprintStringPKc>

        pprintString("stval:");
    800025a4:	00006517          	auipc	a0,0x6
    800025a8:	b1c50513          	addi	a0,a0,-1252 # 800080c0 <CONSOLE_STATUS+0xb0>
    800025ac:	00000097          	auipc	ra,0x0
    800025b0:	594080e7          	jalr	1428(ra) # 80002b40 <_Z12pprintStringPKc>
        printInteger(stval);
    800025b4:	00098513          	mv	a0,s3
    800025b8:	00000097          	auipc	ra,0x0
    800025bc:	5cc080e7          	jalr	1484(ra) # 80002b84 <_Z12printIntegerm>
        pprintString("\n");
    800025c0:	00006517          	auipc	a0,0x6
    800025c4:	ad050513          	addi	a0,a0,-1328 # 80008090 <CONSOLE_STATUS+0x80>
    800025c8:	00000097          	auipc	ra,0x0
    800025cc:	578080e7          	jalr	1400(ra) # 80002b40 <_Z12pprintStringPKc>

        pprintString("sepc:");
    800025d0:	00006517          	auipc	a0,0x6
    800025d4:	af850513          	addi	a0,a0,-1288 # 800080c8 <CONSOLE_STATUS+0xb8>
    800025d8:	00000097          	auipc	ra,0x0
    800025dc:	568080e7          	jalr	1384(ra) # 80002b40 <_Z12pprintStringPKc>
        printInteger(sepc);
    800025e0:	00048513          	mv	a0,s1
    800025e4:	00000097          	auipc	ra,0x0
    800025e8:	5a0080e7          	jalr	1440(ra) # 80002b84 <_Z12printIntegerm>
        pprintString("\n");
    800025ec:	00006517          	auipc	a0,0x6
    800025f0:	aa450513          	addi	a0,a0,-1372 # 80008090 <CONSOLE_STATUS+0x80>
    800025f4:	00000097          	auipc	ra,0x0
    800025f8:	54c080e7          	jalr	1356(ra) # 80002b40 <_Z12pprintStringPKc>
        __getc();
    800025fc:	00005097          	auipc	ra,0x5
    80002600:	63c080e7          	jalr	1596(ra) # 80007c38 <__getc>
    80002604:	0800006f          	j	80002684 <_ZN5Riscv21SupervisorTrapHandlerEv+0x1e0>
        TCB::timeCounter++;
    80002608:	00008997          	auipc	s3,0x8
    8000260c:	bd89b983          	ld	s3,-1064(s3) # 8000a1e0 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002610:	0009b783          	ld	a5,0(s3)
    80002614:	00178793          	addi	a5,a5,1
    80002618:	00f9b023          	sd	a5,0(s3)
        SList::oneTick();
    8000261c:	fffff097          	auipc	ra,0xfffff
    80002620:	e4c080e7          	jalr	-436(ra) # 80001468 <_ZN5SList7oneTickEv>
        if (TCB::timeCounter >= TCB::running->getTimeSlice()) {
    80002624:	00008797          	auipc	a5,0x8
    80002628:	bcc7b783          	ld	a5,-1076(a5) # 8000a1f0 <_GLOBAL_OFFSET_TABLE_+0x30>
    8000262c:	0007b783          	ld	a5,0(a5)
    time_t getTimeSlice() const { return timeSlice; }
    80002630:	0387b783          	ld	a5,56(a5)
    80002634:	0009b703          	ld	a4,0(s3)
    80002638:	00f77863          	bgeu	a4,a5,80002648 <_ZN5Riscv21SupervisorTrapHandlerEv+0x1a4>
inline void Riscv::mc_sstatus(uint64 mask) {
    __asm__ volatile("csrc sstatus,%[mask]"::[mask]"r"(mask));
}
inline void Riscv::mc_sip(uint64 mask)
{
    __asm__ volatile("csrc sip, %[mask]":: [mask]"r"(mask));
    8000263c:	00200793          	li	a5,2
    80002640:	1447b073          	csrc	sip,a5
}
    80002644:	04c0006f          	j	80002690 <_ZN5Riscv21SupervisorTrapHandlerEv+0x1ec>
            TCB::dispatch();
    80002648:	00000097          	auipc	ra,0x0
    8000264c:	ce0080e7          	jalr	-800(ra) # 80002328 <_ZN3TCB8dispatchEv>
    __asm__ volatile ("csrw sepc, %[x]" :: [x] "r" (sepc));
    80002650:	14149073          	csrw	sepc,s1
    __asm__ volatile ("csrw sstatus, %[x]" :: [x] "r" (sstatus));
    80002654:	10091073          	csrw	sstatus,s2
}
    80002658:	fe5ff06f          	j	8000263c <_ZN5Riscv21SupervisorTrapHandlerEv+0x198>
        console_handler();
    8000265c:	00005097          	auipc	ra,0x5
    80002660:	614080e7          	jalr	1556(ra) # 80007c70 <console_handler>
    80002664:	02c0006f          	j	80002690 <_ZN5Riscv21SupervisorTrapHandlerEv+0x1ec>
        __asm__ volatile ("mv %[x], a1" : [x] "=r" (size_in_blocks));
    80002668:	00058993          	mv	s3,a1
        void* ptr = MemoryAllocator::Instance()->mem_alloc(size_in_blocks * MEM_BLOCK_SIZE);
    8000266c:	00000097          	auipc	ra,0x0
    80002670:	1e0080e7          	jalr	480(ra) # 8000284c <_ZN15MemoryAllocator8InstanceEv>
    80002674:	00299593          	slli	a1,s3,0x2
    80002678:	00000097          	auipc	ra,0x0
    8000267c:	230080e7          	jalr	560(ra) # 800028a8 <_ZN15MemoryAllocator9mem_allocEm>
        __asm__ volatile ("mv a0,%[x]" :: [x] "r" (ptr));
    80002680:	00050513          	mv	a0,a0
    }
    set_sepc(sepc+4);
    80002684:	00448493          	addi	s1,s1,4
    __asm__ volatile ("csrw sepc, %[x]" :: [x] "r" (sepc));
    80002688:	14149073          	csrw	sepc,s1
    __asm__ volatile ("csrw sstatus, %[x]" :: [x] "r" (sstatus));
    8000268c:	10091073          	csrw	sstatus,s2
    set_sstatus(sstatus);
    }


    80002690:	05813083          	ld	ra,88(sp)
    80002694:	05013403          	ld	s0,80(sp)
    80002698:	04813483          	ld	s1,72(sp)
    8000269c:	04013903          	ld	s2,64(sp)
    800026a0:	03813983          	ld	s3,56(sp)
    800026a4:	03013a03          	ld	s4,48(sp)
    800026a8:	02813a83          	ld	s5,40(sp)
    800026ac:	06010113          	addi	sp,sp,96
    800026b0:	00008067          	ret
        __asm__ volatile ("mv %[x], a1" : [x] "=r" (ptr));
    800026b4:	00058993          	mv	s3,a1
        MemoryAllocator::Instance()->mem_free(ptr);
    800026b8:	00000097          	auipc	ra,0x0
    800026bc:	194080e7          	jalr	404(ra) # 8000284c <_ZN15MemoryAllocator8InstanceEv>
    800026c0:	00098593          	mv	a1,s3
    800026c4:	00000097          	auipc	ra,0x0
    800026c8:	35c080e7          	jalr	860(ra) # 80002a20 <_ZN15MemoryAllocator8mem_freeEPv>
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (0));
    800026cc:	00000793          	li	a5,0
    800026d0:	00078513          	mv	a0,a5
    800026d4:	fb1ff06f          	j	80002684 <_ZN5Riscv21SupervisorTrapHandlerEv+0x1e0>
        size_t freeMem = MemoryAllocator::Instance()->getFreeMemSize();
    800026d8:	00000097          	auipc	ra,0x0
    800026dc:	174080e7          	jalr	372(ra) # 8000284c <_ZN15MemoryAllocator8InstanceEv>
    void* mem_alloc(size_t size);//size in bytes

    void mem_free(void* ptr);

    size_t getFreeMemSize() {
        return this->freeMemSize;
    800026e0:	00853783          	ld	a5,8(a0)
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (freeMem));
    800026e4:	00078513          	mv	a0,a5
    800026e8:	f9dff06f          	j	80002684 <_ZN5Riscv21SupervisorTrapHandlerEv+0x1e0>
        size_t largestBlock = MemoryAllocator::Instance()->getLargestFreeBlock();
    800026ec:	00000097          	auipc	ra,0x0
    800026f0:	160080e7          	jalr	352(ra) # 8000284c <_ZN15MemoryAllocator8InstanceEv>
    800026f4:	00000097          	auipc	ra,0x0
    800026f8:	410080e7          	jalr	1040(ra) # 80002b04 <_ZN15MemoryAllocator19getLargestFreeBlockEv>
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (largestBlock));
    800026fc:	00050513          	mv	a0,a0
    80002700:	f85ff06f          	j	80002684 <_ZN5Riscv21SupervisorTrapHandlerEv+0x1e0>
        __asm__ volatile ("mv %[x], a1" : [x] "=r" (handle));
    80002704:	00058993          	mv	s3,a1
        __asm__ volatile ("mv %[x], a2" : [x] "=r" (start_routine));
    80002708:	00060a13          	mv	s4,a2
        __asm__ volatile ("mv %[x], a3" : [x] "=r" (arg));
    8000270c:	00068a93          	mv	s5,a3
        uint64 *sp=(uint64*)MemoryAllocator::Instance()->mem_alloc(DEFAULT_STACK_SIZE);
    80002710:	00000097          	auipc	ra,0x0
    80002714:	13c080e7          	jalr	316(ra) # 8000284c <_ZN15MemoryAllocator8InstanceEv>
    80002718:	000015b7          	lui	a1,0x1
    8000271c:	00000097          	auipc	ra,0x0
    80002720:	18c080e7          	jalr	396(ra) # 800028a8 <_ZN15MemoryAllocator9mem_allocEm>
    80002724:	00050613          	mv	a2,a0
        *handle=TCB::createThread( start_routine, arg,sp);
    80002728:	000a8593          	mv	a1,s5
    8000272c:	000a0513          	mv	a0,s4
    80002730:	00000097          	auipc	ra,0x0
    80002734:	afc080e7          	jalr	-1284(ra) # 8000222c <_ZN3TCB12createThreadEPFvPvES0_Pm>
    80002738:	00a9b023          	sd	a0,0(s3)
        if (*handle) {
    8000273c:	00050863          	beqz	a0,8000274c <_ZN5Riscv21SupervisorTrapHandlerEv+0x2a8>
            ret=0;
    80002740:	00000793          	li	a5,0
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (ret));
    80002744:	00078513          	mv	a0,a5
    80002748:	f3dff06f          	j	80002684 <_ZN5Riscv21SupervisorTrapHandlerEv+0x1e0>
            ret=1;
    8000274c:	00100793          	li	a5,1
    80002750:	ff5ff06f          	j	80002744 <_ZN5Riscv21SupervisorTrapHandlerEv+0x2a0>
        int ret = TCB::exit();
    80002754:	00000097          	auipc	ra,0x0
    80002758:	c4c080e7          	jalr	-948(ra) # 800023a0 <_ZN3TCB4exitEv>
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (ret));
    8000275c:	00050513          	mv	a0,a0
    80002760:	f25ff06f          	j	80002684 <_ZN5Riscv21SupervisorTrapHandlerEv+0x1e0>
        TCB::dispatch();
    80002764:	00000097          	auipc	ra,0x0
    80002768:	bc4080e7          	jalr	-1084(ra) # 80002328 <_ZN3TCB8dispatchEv>
    8000276c:	f19ff06f          	j	80002684 <_ZN5Riscv21SupervisorTrapHandlerEv+0x1e0>
        __asm__ volatile ("mv %[x], a1" : [x] "=r" (handle));
    80002770:	00058993          	mv	s3,a1
        __asm__ volatile ("mv %[x], a2" : [x] "=r" (init));
    80002774:	00060513          	mv	a0,a2
        *handle=SEM::open(init);
    80002778:	0005051b          	sext.w	a0,a0
    8000277c:	00000097          	auipc	ra,0x0
    80002780:	4c4080e7          	jalr	1220(ra) # 80002c40 <_ZN3SEM4openEj>
    80002784:	00a9b023          	sd	a0,0(s3)
        if (*handle) {
    80002788:	00050863          	beqz	a0,80002798 <_ZN5Riscv21SupervisorTrapHandlerEv+0x2f4>
            ret=0;
    8000278c:	00000793          	li	a5,0
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (ret));
    80002790:	00078513          	mv	a0,a5
    80002794:	ef1ff06f          	j	80002684 <_ZN5Riscv21SupervisorTrapHandlerEv+0x1e0>
            ret=1;
    80002798:	00100793          	li	a5,1
    8000279c:	ff5ff06f          	j	80002790 <_ZN5Riscv21SupervisorTrapHandlerEv+0x2ec>
        __asm__ volatile ("mv %[x], a1" : [x] "=r" (handle));
    800027a0:	00058513          	mv	a0,a1
        int ret=handle->close();
    800027a4:	00000097          	auipc	ra,0x0
    800027a8:	4f0080e7          	jalr	1264(ra) # 80002c94 <_ZN3SEM5closeEv>
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (ret));
    800027ac:	00050513          	mv	a0,a0
    800027b0:	ed5ff06f          	j	80002684 <_ZN5Riscv21SupervisorTrapHandlerEv+0x1e0>
        __asm__ volatile ("mv %[x], a1" : [x] "=r" (handle));
    800027b4:	00058513          	mv	a0,a1
        int ret=handle->wait();
    800027b8:	00000097          	auipc	ra,0x0
    800027bc:	5b0080e7          	jalr	1456(ra) # 80002d68 <_ZN3SEM4waitEv>
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (ret));
    800027c0:	00050513          	mv	a0,a0
    800027c4:	ec1ff06f          	j	80002684 <_ZN5Riscv21SupervisorTrapHandlerEv+0x1e0>
        __asm__ volatile ("mv %[x], a1" : [x] "=r" (handle));
    800027c8:	00058513          	mv	a0,a1
        int ret=handle->signal();
    800027cc:	00000097          	auipc	ra,0x0
    800027d0:	660080e7          	jalr	1632(ra) # 80002e2c <_ZN3SEM6signalEv>
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (ret));
    800027d4:	00050513          	mv	a0,a0
    800027d8:	eadff06f          	j	80002684 <_ZN5Riscv21SupervisorTrapHandlerEv+0x1e0>
        __asm__ volatile ("mv %[x], a1" : [x] "=r" (sleepTime));
    800027dc:	00058513          	mv	a0,a1
        int ret=TCB::sleep(sleepTime);
    800027e0:	00000097          	auipc	ra,0x0
    800027e4:	c50080e7          	jalr	-944(ra) # 80002430 <_ZN3TCB5sleepEm>
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (ret));
    800027e8:	00050513          	mv	a0,a0
    800027ec:	e99ff06f          	j	80002684 <_ZN5Riscv21SupervisorTrapHandlerEv+0x1e0>

00000000800027f0 <_ZN15MemoryAllocatorC1Ev>:

#include "../h/MemoryAllocator.hpp"
#include "../lib/console.h"


MemoryAllocator::MemoryAllocator() {
    800027f0:	ff010113          	addi	sp,sp,-16
    800027f4:	00813423          	sd	s0,8(sp)
    800027f8:	01010413          	addi	s0,sp,16
    this->head = (MemoryHeader*)HEAP_START_ADDR;
    800027fc:	00008797          	auipc	a5,0x8
    80002800:	9cc7b783          	ld	a5,-1588(a5) # 8000a1c8 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002804:	0007b703          	ld	a4,0(a5)
    80002808:	00e53023          	sd	a4,0(a0)
    // this->tail = (MemoryHeader*)HEAP_START_ADDR;
    // this->tail->next=nullptr;
    // this->tail->prev=nullptr;
    this->head->next=nullptr;
    8000280c:	00073423          	sd	zero,8(a4)
    this->head->prev=nullptr;
    80002810:	00053783          	ld	a5,0(a0)
    80002814:	0007b823          	sd	zero,16(a5)
    this->head->size = (size_t)((char*)HEAP_END_ADDR - (char*)HEAP_START_ADDR - sizeof(MemoryHeader));
    80002818:	00008797          	auipc	a5,0x8
    8000281c:	9e07b783          	ld	a5,-1568(a5) # 8000a1f8 <_GLOBAL_OFFSET_TABLE_+0x38>
    80002820:	0007b783          	ld	a5,0(a5)
    80002824:	40e787b3          	sub	a5,a5,a4
    80002828:	00053703          	ld	a4,0(a0)
    8000282c:	fe878793          	addi	a5,a5,-24
    80002830:	00f73023          	sd	a5,0(a4)
    this->freeMemSize=this->head->size;
    80002834:	00053783          	ld	a5,0(a0)
    80002838:	0007b783          	ld	a5,0(a5)
    8000283c:	00f53423          	sd	a5,8(a0)
}
    80002840:	00813403          	ld	s0,8(sp)
    80002844:	01010113          	addi	sp,sp,16
    80002848:	00008067          	ret

000000008000284c <_ZN15MemoryAllocator8InstanceEv>:




MemoryAllocator* MemoryAllocator::Instance() {
    static MemoryAllocator instance;
    8000284c:	00008797          	auipc	a5,0x8
    80002850:	a447c783          	lbu	a5,-1468(a5) # 8000a290 <_ZGVZN15MemoryAllocator8InstanceEvE8instance>
    80002854:	00078863          	beqz	a5,80002864 <_ZN15MemoryAllocator8InstanceEv+0x18>
    return &instance;
}
    80002858:	00008517          	auipc	a0,0x8
    8000285c:	a4050513          	addi	a0,a0,-1472 # 8000a298 <_ZZN15MemoryAllocator8InstanceEvE8instance>
    80002860:	00008067          	ret
MemoryAllocator* MemoryAllocator::Instance() {
    80002864:	ff010113          	addi	sp,sp,-16
    80002868:	00113423          	sd	ra,8(sp)
    8000286c:	00813023          	sd	s0,0(sp)
    80002870:	01010413          	addi	s0,sp,16
    static MemoryAllocator instance;
    80002874:	00008517          	auipc	a0,0x8
    80002878:	a2450513          	addi	a0,a0,-1500 # 8000a298 <_ZZN15MemoryAllocator8InstanceEvE8instance>
    8000287c:	00000097          	auipc	ra,0x0
    80002880:	f74080e7          	jalr	-140(ra) # 800027f0 <_ZN15MemoryAllocatorC1Ev>
    80002884:	00100793          	li	a5,1
    80002888:	00008717          	auipc	a4,0x8
    8000288c:	a0f70423          	sb	a5,-1528(a4) # 8000a290 <_ZGVZN15MemoryAllocator8InstanceEvE8instance>
}
    80002890:	00008517          	auipc	a0,0x8
    80002894:	a0850513          	addi	a0,a0,-1528 # 8000a298 <_ZZN15MemoryAllocator8InstanceEvE8instance>
    80002898:	00813083          	ld	ra,8(sp)
    8000289c:	00013403          	ld	s0,0(sp)
    800028a0:	01010113          	addi	sp,sp,16
    800028a4:	00008067          	ret

00000000800028a8 <_ZN15MemoryAllocator9mem_allocEm>:


void* MemoryAllocator::mem_alloc(size_t size) {
    800028a8:	ff010113          	addi	sp,sp,-16
    800028ac:	00813423          	sd	s0,8(sp)
    800028b0:	01010413          	addi	s0,sp,16
    800028b4:	00050813          	mv	a6,a0
    if (this->head==nullptr)
    800028b8:	00053503          	ld	a0,0(a0)
    800028bc:	0a050263          	beqz	a0,80002960 <_ZN15MemoryAllocator9mem_allocEm+0xb8>
        return nullptr;
    if (size==0) {
    800028c0:	0e058863          	beqz	a1,800029b0 <_ZN15MemoryAllocator9mem_allocEm+0x108>
        return nullptr;
    }
    uint64 offset = size % MEM_BLOCK_SIZE;
    800028c4:	0035f793          	andi	a5,a1,3
    if (offset!=0)
    800028c8:	00078463          	beqz	a5,800028d0 <_ZN15MemoryAllocator9mem_allocEm+0x28>
        offset=1;
    800028cc:	00100793          	li	a5,1

    size_t actulalSize = (size  / MEM_BLOCK_SIZE+offset ) * MEM_BLOCK_SIZE;
    800028d0:	0025d693          	srli	a3,a1,0x2
    800028d4:	00f686b3          	add	a3,a3,a5
    800028d8:	00269693          	slli	a3,a3,0x2


    MemoryHeader* curr= this->head;
    800028dc:	00050793          	mv	a5,a0
    while (curr->next!=nullptr && curr->size < actulalSize) {
    800028e0:	00078713          	mv	a4,a5
    800028e4:	0087b783          	ld	a5,8(a5)
    800028e8:	00078663          	beqz	a5,800028f4 <_ZN15MemoryAllocator9mem_allocEm+0x4c>
    800028ec:	00073603          	ld	a2,0(a4)
    800028f0:	fed668e3          	bltu	a2,a3,800028e0 <_ZN15MemoryAllocator9mem_allocEm+0x38>
        curr=curr->next;
    }
    if (curr->size < actulalSize) {
    800028f4:	00073603          	ld	a2,0(a4)
    800028f8:	0cd66063          	bltu	a2,a3,800029b8 <_ZN15MemoryAllocator9mem_allocEm+0x110>
        return nullptr;
    }



    if (curr->size - actulalSize >= MEM_BLOCK_SIZE+sizeof(MemoryHeader)) {
    800028fc:	40d60633          	sub	a2,a2,a3
    80002900:	01b00593          	li	a1,27
    80002904:	06c5f863          	bgeu	a1,a2,80002974 <_ZN15MemoryAllocator9mem_allocEm+0xcc>


        MemoryHeader* new_seg=(MemoryHeader*)((char*)curr + sizeof(MemoryHeader) + actulalSize);
    80002908:	01868793          	addi	a5,a3,24
    8000290c:	00f707b3          	add	a5,a4,a5
        new_seg->size = curr->size - actulalSize - sizeof(MemoryHeader);
    80002910:	fe860613          	addi	a2,a2,-24 # fe8 <_entry-0x7ffff018>
    80002914:	00c7b023          	sd	a2,0(a5)
        new_seg->next=curr->next;
    80002918:	00873603          	ld	a2,8(a4)
    8000291c:	00c7b423          	sd	a2,8(a5)
        new_seg->prev=curr->prev;
    80002920:	01073603          	ld	a2,16(a4)
    80002924:	00c7b823          	sd	a2,16(a5)
        if (curr==this->head) {
    80002928:	00083603          	ld	a2,0(a6)
    8000292c:	04e60063          	beq	a2,a4,8000296c <_ZN15MemoryAllocator9mem_allocEm+0xc4>
            this->head=new_seg;
        }
        // if (curr==this->tail) {
        //     this->tail=new_seg;
        // }
        if (curr->prev)
    80002930:	01073603          	ld	a2,16(a4)
    80002934:	00060463          	beqz	a2,8000293c <_ZN15MemoryAllocator9mem_allocEm+0x94>
            curr->prev->next=new_seg;
    80002938:	00f63423          	sd	a5,8(a2)
        if (curr->next)
    8000293c:	00873603          	ld	a2,8(a4)
    80002940:	00060463          	beqz	a2,80002948 <_ZN15MemoryAllocator9mem_allocEm+0xa0>
            curr->next->prev=new_seg;
    80002944:	00f63823          	sd	a5,16(a2)
        curr->size=actulalSize;
    80002948:	00d73023          	sd	a3,0(a4)
        this->freeMemSize-= (actulalSize + sizeof(MemoryHeader));
    8000294c:	00883783          	ld	a5,8(a6)
    80002950:	40d786b3          	sub	a3,a5,a3
    80002954:	fe868693          	addi	a3,a3,-24
    80002958:	00d83423          	sd	a3,8(a6)
    //__putc('m');
    //__putc('\n');



    return  (void*)((char*)curr + sizeof(MemoryHeader));
    8000295c:	01870513          	addi	a0,a4,24
}
    80002960:	00813403          	ld	s0,8(sp)
    80002964:	01010113          	addi	sp,sp,16
    80002968:	00008067          	ret
            this->head=new_seg;
    8000296c:	00f83023          	sd	a5,0(a6)
    80002970:	fc1ff06f          	j	80002930 <_ZN15MemoryAllocator9mem_allocEm+0x88>
        if (curr==this->head) {
    80002974:	02e50a63          	beq	a0,a4,800029a8 <_ZN15MemoryAllocator9mem_allocEm+0x100>
        if (curr->prev)
    80002978:	01073783          	ld	a5,16(a4)
    8000297c:	00078663          	beqz	a5,80002988 <_ZN15MemoryAllocator9mem_allocEm+0xe0>
            curr->prev->next=curr->next;
    80002980:	00873603          	ld	a2,8(a4)
    80002984:	00c7b423          	sd	a2,8(a5)
        if (curr->next)
    80002988:	00873783          	ld	a5,8(a4)
    8000298c:	00078663          	beqz	a5,80002998 <_ZN15MemoryAllocator9mem_allocEm+0xf0>
            curr->next->prev=curr->prev;
    80002990:	01073603          	ld	a2,16(a4)
    80002994:	00c7b823          	sd	a2,16(a5)
        this->freeMemSize-= actulalSize;
    80002998:	00883783          	ld	a5,8(a6)
    8000299c:	40d786b3          	sub	a3,a5,a3
    800029a0:	00d83423          	sd	a3,8(a6)
    800029a4:	fb9ff06f          	j	8000295c <_ZN15MemoryAllocator9mem_allocEm+0xb4>
            this->head=curr->next;
    800029a8:	00f83023          	sd	a5,0(a6)
    800029ac:	fcdff06f          	j	80002978 <_ZN15MemoryAllocator9mem_allocEm+0xd0>
        return nullptr;
    800029b0:	00000513          	li	a0,0
    800029b4:	fadff06f          	j	80002960 <_ZN15MemoryAllocator9mem_allocEm+0xb8>
        return nullptr;
    800029b8:	00000513          	li	a0,0
    800029bc:	fa5ff06f          	j	80002960 <_ZN15MemoryAllocator9mem_allocEm+0xb8>

00000000800029c0 <_ZN15MemoryAllocator11try_to_joinEPNS_12MemoryHeaderE>:
    try_to_join(block->prev);
    try_to_join(block);
}


void MemoryAllocator::try_to_join(MemoryHeader* block) {
    800029c0:	ff010113          	addi	sp,sp,-16
    800029c4:	00813423          	sd	s0,8(sp)
    800029c8:	01010413          	addi	s0,sp,16
    if (block==nullptr)
    800029cc:	00058e63          	beqz	a1,800029e8 <_ZN15MemoryAllocator11try_to_joinEPNS_12MemoryHeaderE+0x28>
        return;
    if (block->next!=nullptr && ((char*)block + sizeof(MemoryHeader) + block->size) == (char*)block->next) {
    800029d0:	0085b783          	ld	a5,8(a1) # 1008 <_entry-0x7fffeff8>
    800029d4:	00078a63          	beqz	a5,800029e8 <_ZN15MemoryAllocator11try_to_joinEPNS_12MemoryHeaderE+0x28>
    800029d8:	0005b683          	ld	a3,0(a1)
    800029dc:	01868713          	addi	a4,a3,24
    800029e0:	00e58733          	add	a4,a1,a4
    800029e4:	00e78863          	beq	a5,a4,800029f4 <_ZN15MemoryAllocator11try_to_joinEPNS_12MemoryHeaderE+0x34>
        block->next=block->next->next;
        if (block->next)
            block->next->prev=block;
        this->freeMemSize+= sizeof(MemoryHeader);
    }
}
    800029e8:	00813403          	ld	s0,8(sp)
    800029ec:	01010113          	addi	sp,sp,16
    800029f0:	00008067          	ret
        block->size += block->next->size;
    800029f4:	0007b703          	ld	a4,0(a5)
    800029f8:	00e686b3          	add	a3,a3,a4
    800029fc:	00d5b023          	sd	a3,0(a1)
        block->next=block->next->next;
    80002a00:	0087b783          	ld	a5,8(a5)
    80002a04:	00f5b423          	sd	a5,8(a1)
        if (block->next)
    80002a08:	00078463          	beqz	a5,80002a10 <_ZN15MemoryAllocator11try_to_joinEPNS_12MemoryHeaderE+0x50>
            block->next->prev=block;
    80002a0c:	00b7b823          	sd	a1,16(a5)
        this->freeMemSize+= sizeof(MemoryHeader);
    80002a10:	00853783          	ld	a5,8(a0)
    80002a14:	01878793          	addi	a5,a5,24
    80002a18:	00f53423          	sd	a5,8(a0)
    80002a1c:	fcdff06f          	j	800029e8 <_ZN15MemoryAllocator11try_to_joinEPNS_12MemoryHeaderE+0x28>

0000000080002a20 <_ZN15MemoryAllocator8mem_freeEPv>:
    if (ptr==nullptr) {
    80002a20:	0e058063          	beqz	a1,80002b00 <_ZN15MemoryAllocator8mem_freeEPv+0xe0>
void MemoryAllocator::mem_free(void* ptr) {
    80002a24:	fe010113          	addi	sp,sp,-32
    80002a28:	00113c23          	sd	ra,24(sp)
    80002a2c:	00813823          	sd	s0,16(sp)
    80002a30:	00913423          	sd	s1,8(sp)
    80002a34:	01213023          	sd	s2,0(sp)
    80002a38:	02010413          	addi	s0,sp,32
    80002a3c:	00050913          	mv	s2,a0
	MemoryHeader* block = (MemoryHeader*)((char*)ptr - sizeof(MemoryHeader));
    80002a40:	fe858493          	addi	s1,a1,-24
    if (this->head==nullptr) {
    80002a44:	00053683          	ld	a3,0(a0)
    80002a48:	06068e63          	beqz	a3,80002ac4 <_ZN15MemoryAllocator8mem_freeEPv+0xa4>
    MemoryHeader* curr = this->head;
    80002a4c:	00068793          	mv	a5,a3
    while (curr->next!=nullptr && curr->next < block) {
    80002a50:	00078713          	mv	a4,a5
    80002a54:	0087b783          	ld	a5,8(a5)
    80002a58:	00078463          	beqz	a5,80002a60 <_ZN15MemoryAllocator8mem_freeEPv+0x40>
    80002a5c:	fe97eae3          	bltu	a5,s1,80002a50 <_ZN15MemoryAllocator8mem_freeEPv+0x30>
    if (curr==this->head and curr > block) {
    80002a60:	08e68263          	beq	a3,a4,80002ae4 <_ZN15MemoryAllocator8mem_freeEPv+0xc4>
        block->next=curr->next;
    80002a64:	fef5b823          	sd	a5,-16(a1)
        block->prev=curr;
    80002a68:	fee5bc23          	sd	a4,-8(a1)
        curr->next=block;
    80002a6c:	00973423          	sd	s1,8(a4)
        if (block->next) {
    80002a70:	ff05b783          	ld	a5,-16(a1)
    80002a74:	00078463          	beqz	a5,80002a7c <_ZN15MemoryAllocator8mem_freeEPv+0x5c>
            block->next->prev=block;
    80002a78:	0097b823          	sd	s1,16(a5)
    this->freeMemSize+= block->size;
    80002a7c:	fe85b703          	ld	a4,-24(a1)
    80002a80:	00893783          	ld	a5,8(s2)
    80002a84:	00e787b3          	add	a5,a5,a4
    80002a88:	00f93423          	sd	a5,8(s2)
    try_to_join(block->prev);
    80002a8c:	ff85b583          	ld	a1,-8(a1)
    80002a90:	00090513          	mv	a0,s2
    80002a94:	00000097          	auipc	ra,0x0
    80002a98:	f2c080e7          	jalr	-212(ra) # 800029c0 <_ZN15MemoryAllocator11try_to_joinEPNS_12MemoryHeaderE>
    try_to_join(block);
    80002a9c:	00048593          	mv	a1,s1
    80002aa0:	00090513          	mv	a0,s2
    80002aa4:	00000097          	auipc	ra,0x0
    80002aa8:	f1c080e7          	jalr	-228(ra) # 800029c0 <_ZN15MemoryAllocator11try_to_joinEPNS_12MemoryHeaderE>
}
    80002aac:	01813083          	ld	ra,24(sp)
    80002ab0:	01013403          	ld	s0,16(sp)
    80002ab4:	00813483          	ld	s1,8(sp)
    80002ab8:	00013903          	ld	s2,0(sp)
    80002abc:	02010113          	addi	sp,sp,32
    80002ac0:	00008067          	ret
        this->head=block;
    80002ac4:	00953023          	sd	s1,0(a0)
        block->next=nullptr;
    80002ac8:	fe05b823          	sd	zero,-16(a1)
        block->prev=nullptr;
    80002acc:	fe05bc23          	sd	zero,-8(a1)
        this->freeMemSize+= block->size;
    80002ad0:	fe85b703          	ld	a4,-24(a1)
    80002ad4:	00853783          	ld	a5,8(a0)
    80002ad8:	00e787b3          	add	a5,a5,a4
    80002adc:	00f53423          	sd	a5,8(a0)
        return;
    80002ae0:	fcdff06f          	j	80002aac <_ZN15MemoryAllocator8mem_freeEPv+0x8c>
    if (curr==this->head and curr > block) {
    80002ae4:	f8e4f0e3          	bgeu	s1,a4,80002a64 <_ZN15MemoryAllocator8mem_freeEPv+0x44>
        block->next=curr;
    80002ae8:	fee5b823          	sd	a4,-16(a1)
        block->prev=curr->prev;
    80002aec:	01073783          	ld	a5,16(a4)
    80002af0:	fef5bc23          	sd	a5,-8(a1)
        curr->prev=block;
    80002af4:	00973823          	sd	s1,16(a4)
        this->head=block;
    80002af8:	00993023          	sd	s1,0(s2)
    80002afc:	f81ff06f          	j	80002a7c <_ZN15MemoryAllocator8mem_freeEPv+0x5c>
    80002b00:	00008067          	ret

0000000080002b04 <_ZN15MemoryAllocator19getLargestFreeBlockEv>:

size_t MemoryAllocator::getLargestFreeBlock() {
    80002b04:	ff010113          	addi	sp,sp,-16
    80002b08:	00813423          	sd	s0,8(sp)
    80002b0c:	01010413          	addi	s0,sp,16
    size_t maxSize=0;
    MemoryHeader* curr=this->head;
    80002b10:	00053783          	ld	a5,0(a0)
    size_t maxSize=0;
    80002b14:	00000513          	li	a0,0
    80002b18:	0080006f          	j	80002b20 <_ZN15MemoryAllocator19getLargestFreeBlockEv+0x1c>
    while (curr!=nullptr) {
        if (curr->size > maxSize)
            maxSize=curr->size;
        curr=curr->next;
    80002b1c:	0087b783          	ld	a5,8(a5)
    while (curr!=nullptr) {
    80002b20:	00078a63          	beqz	a5,80002b34 <_ZN15MemoryAllocator19getLargestFreeBlockEv+0x30>
        if (curr->size > maxSize)
    80002b24:	0007b703          	ld	a4,0(a5)
    80002b28:	fee57ae3          	bgeu	a0,a4,80002b1c <_ZN15MemoryAllocator19getLargestFreeBlockEv+0x18>
            maxSize=curr->size;
    80002b2c:	00070513          	mv	a0,a4
    80002b30:	fedff06f          	j	80002b1c <_ZN15MemoryAllocator19getLargestFreeBlockEv+0x18>
    }
    return maxSize;
    80002b34:	00813403          	ld	s0,8(sp)
    80002b38:	01010113          	addi	sp,sp,16
    80002b3c:	00008067          	ret

0000000080002b40 <_Z12pprintStringPKc>:
#include "../h/Riscv.hpp"
#include "../lib/console.h"
#include "../h/Riscv.hpp"


void pprintString(const char *string) {
    80002b40:	fe010113          	addi	sp,sp,-32
    80002b44:	00113c23          	sd	ra,24(sp)
    80002b48:	00813823          	sd	s0,16(sp)
    80002b4c:	00913423          	sd	s1,8(sp)
    80002b50:	02010413          	addi	s0,sp,32
    80002b54:	00050493          	mv	s1,a0

    while (*string!='\0') {
    80002b58:	0004c503          	lbu	a0,0(s1)
    80002b5c:	00050a63          	beqz	a0,80002b70 <_Z12pprintStringPKc+0x30>
        __putc(*string);
    80002b60:	00005097          	auipc	ra,0x5
    80002b64:	09c080e7          	jalr	156(ra) # 80007bfc <__putc>
        string++;
    80002b68:	00148493          	addi	s1,s1,1
    while (*string!='\0') {
    80002b6c:	fedff06f          	j	80002b58 <_Z12pprintStringPKc+0x18>
    }

}
    80002b70:	01813083          	ld	ra,24(sp)
    80002b74:	01013403          	ld	s0,16(sp)
    80002b78:	00813483          	ld	s1,8(sp)
    80002b7c:	02010113          	addi	sp,sp,32
    80002b80:	00008067          	ret

0000000080002b84 <_Z12printIntegerm>:
void printInteger(uint64 integer) {
    80002b84:	fd010113          	addi	sp,sp,-48
    80002b88:	02113423          	sd	ra,40(sp)
    80002b8c:	02813023          	sd	s0,32(sp)
    80002b90:	00913c23          	sd	s1,24(sp)
    80002b94:	03010413          	addi	s0,sp,48
    neg=0;
    if (integer<0) {
        neg=1;
        x=-integer;
    } else {
        x=integer;
    80002b98:	0005051b          	sext.w	a0,a0
    }

    i=0;
    80002b9c:	00000493          	li	s1,0
    do {
        buf[i++]=digits[x%10];
    80002ba0:	00a00613          	li	a2,10
    80002ba4:	02c5773b          	remuw	a4,a0,a2
    80002ba8:	02071693          	slli	a3,a4,0x20
    80002bac:	0206d693          	srli	a3,a3,0x20
    80002bb0:	00005717          	auipc	a4,0x5
    80002bb4:	52070713          	addi	a4,a4,1312 # 800080d0 <_ZZ12printIntegermE6digits>
    80002bb8:	00d70733          	add	a4,a4,a3
    80002bbc:	00074703          	lbu	a4,0(a4)
    80002bc0:	fe040693          	addi	a3,s0,-32
    80002bc4:	009687b3          	add	a5,a3,s1
    80002bc8:	0014849b          	addiw	s1,s1,1
    80002bcc:	fee78823          	sb	a4,-16(a5)
    }while ((x/=10)!=0);
    80002bd0:	0005071b          	sext.w	a4,a0
    80002bd4:	02c5553b          	divuw	a0,a0,a2
    80002bd8:	00900793          	li	a5,9
    80002bdc:	fce7e2e3          	bltu	a5,a4,80002ba0 <_Z12printIntegerm+0x1c>
    if (neg) {
        buf[i++]='-';
    }

    while (--i>=0) {
    80002be0:	fff4849b          	addiw	s1,s1,-1
    80002be4:	0004ce63          	bltz	s1,80002c00 <_Z12printIntegerm+0x7c>
        __putc(buf[i]);
    80002be8:	fe040793          	addi	a5,s0,-32
    80002bec:	009787b3          	add	a5,a5,s1
    80002bf0:	ff07c503          	lbu	a0,-16(a5)
    80002bf4:	00005097          	auipc	ra,0x5
    80002bf8:	008080e7          	jalr	8(ra) # 80007bfc <__putc>
    80002bfc:	fe5ff06f          	j	80002be0 <_Z12printIntegerm+0x5c>
    }

    80002c00:	02813083          	ld	ra,40(sp)
    80002c04:	02013403          	ld	s0,32(sp)
    80002c08:	01813483          	ld	s1,24(sp)
    80002c0c:	03010113          	addi	sp,sp,48
    80002c10:	00008067          	ret

0000000080002c14 <_ZN3SEMC1Ej>:
#include "../h/SEM.hpp"
#include "../h/syscall_cpp.hpp"
#include "../h/syscall_c.hpp"
#include "../h/print.hpp"

SEM::SEM(unsigned init) {
    80002c14:	ff010113          	addi	sp,sp,-16
    80002c18:	00813423          	sd	s0,8(sp)
    80002c1c:	01010413          	addi	s0,sp,16
    List(): head(0), tail(0){}
    80002c20:	00053423          	sd	zero,8(a0)
    80002c24:	00053823          	sd	zero,16(a0)
    80002c28:	00052c23          	sw	zero,24(a0)
    this->val=init;
    80002c2c:	00b52023          	sw	a1,0(a0)
    this->closed=false;
    80002c30:	00050223          	sb	zero,4(a0)

}
    80002c34:	00813403          	ld	s0,8(sp)
    80002c38:	01010113          	addi	sp,sp,16
    80002c3c:	00008067          	ret

0000000080002c40 <_ZN3SEM4openEj>:

SEM* SEM::open(unsigned init) {
    80002c40:	fe010113          	addi	sp,sp,-32
    80002c44:	00113c23          	sd	ra,24(sp)
    80002c48:	00813823          	sd	s0,16(sp)
    80002c4c:	00913423          	sd	s1,8(sp)
    80002c50:	01213023          	sd	s2,0(sp)
    80002c54:	02010413          	addi	s0,sp,32
    80002c58:	00050913          	mv	s2,a0
    //pprintString("Sem::open\n ");
    return new SEM(init);
    80002c5c:	02000513          	li	a0,32
    80002c60:	fffff097          	auipc	ra,0xfffff
    80002c64:	194080e7          	jalr	404(ra) # 80001df4 <_Znwm>
    80002c68:	00050493          	mv	s1,a0
    80002c6c:	00090593          	mv	a1,s2
    80002c70:	00000097          	auipc	ra,0x0
    80002c74:	fa4080e7          	jalr	-92(ra) # 80002c14 <_ZN3SEMC1Ej>
}
    80002c78:	00048513          	mv	a0,s1
    80002c7c:	01813083          	ld	ra,24(sp)
    80002c80:	01013403          	ld	s0,16(sp)
    80002c84:	00813483          	ld	s1,8(sp)
    80002c88:	00013903          	ld	s2,0(sp)
    80002c8c:	02010113          	addi	sp,sp,32
    80002c90:	00008067          	ret

0000000080002c94 <_ZN3SEM5closeEv>:

int SEM::close() {
    //pprintString("Sem::close\n");
    if (this->closed) {
    80002c94:	00454783          	lbu	a5,4(a0)
    80002c98:	0a079263          	bnez	a5,80002d3c <_ZN3SEM5closeEv+0xa8>
int SEM::close() {
    80002c9c:	fe010113          	addi	sp,sp,-32
    80002ca0:	00113c23          	sd	ra,24(sp)
    80002ca4:	00813823          	sd	s0,16(sp)
    80002ca8:	00913423          	sd	s1,8(sp)
    80002cac:	01213023          	sd	s2,0(sp)
    80002cb0:	02010413          	addi	s0,sp,32
    80002cb4:	00050913          	mv	s2,a0
        return -1;
    }
    this->closed=true;
    80002cb8:	00100793          	li	a5,1
    80002cbc:	00f50223          	sb	a5,4(a0)
    80002cc0:	0380006f          	j	80002cf8 <_ZN3SEM5closeEv+0x64>
        Elem* elem=tail;
    80002cc4:	0087b503          	ld	a0,8(a5)
        if(prev) prev->next=0;
    80002cc8:	06070663          	beqz	a4,80002d34 <_ZN3SEM5closeEv+0xa0>
    80002ccc:	00073423          	sd	zero,8(a4)
        tail=prev;
    80002cd0:	00e7b423          	sd	a4,8(a5)
        T* retval= elem->data;
    80002cd4:	00053483          	ld	s1,0(a0)
        delete elem;
    80002cd8:	00050663          	beqz	a0,80002ce4 <_ZN3SEM5closeEv+0x50>
    80002cdc:	fffff097          	auipc	ra,0xfffff
    80002ce0:	140080e7          	jalr	320(ra) # 80001e1c <_ZdlPv>

    while (blockedQueue.size> 0) {
        TCB* tcb = blockedQueue.removeLast();
        if (tcb == nullptr) {
    80002ce4:	06048e63          	beqz	s1,80002d60 <_ZN3SEM5closeEv+0xcc>
    void unblock() { this->blocked = false; }
    80002ce8:	02048823          	sb	zero,48(s1)
            return -1;
        }
        tcb->unblock();
        Scheduler::put(tcb);
    80002cec:	00048513          	mv	a0,s1
    80002cf0:	fffff097          	auipc	ra,0xfffff
    80002cf4:	c60080e7          	jalr	-928(ra) # 80001950 <_ZN9Scheduler3putEP3TCB>
    while (blockedQueue.size> 0) {
    80002cf8:	01892783          	lw	a5,24(s2)
    80002cfc:	04f05463          	blez	a5,80002d44 <_ZN3SEM5closeEv+0xb0>
        TCB* tcb = blockedQueue.removeLast();
    80002d00:	00890793          	addi	a5,s2,8
        size--;
    80002d04:	0107a703          	lw	a4,16(a5)
    80002d08:	fff7071b          	addiw	a4,a4,-1
    80002d0c:	00e7a823          	sw	a4,16(a5)
        if(!head){return 0;}
    80002d10:	00893483          	ld	s1,8(s2)
    80002d14:	fc0488e3          	beqz	s1,80002ce4 <_ZN3SEM5closeEv+0x50>
        Elem* prev=0;
    80002d18:	00000713          	li	a4,0
        for(Elem* curr=head; curr && curr!=tail; prev=curr, curr=curr->next);
    80002d1c:	fa0484e3          	beqz	s1,80002cc4 <_ZN3SEM5closeEv+0x30>
    80002d20:	0087b683          	ld	a3,8(a5)
    80002d24:	fad480e3          	beq	s1,a3,80002cc4 <_ZN3SEM5closeEv+0x30>
    80002d28:	00048713          	mv	a4,s1
    80002d2c:	0084b483          	ld	s1,8(s1)
    80002d30:	fedff06f          	j	80002d1c <_ZN3SEM5closeEv+0x88>
        else head=0;
    80002d34:	00093423          	sd	zero,8(s2)
    80002d38:	f99ff06f          	j	80002cd0 <_ZN3SEM5closeEv+0x3c>
        return -1;
    80002d3c:	fff00513          	li	a0,-1
    }
    return 0;
}
    80002d40:	00008067          	ret
    return 0;
    80002d44:	00000513          	li	a0,0
}
    80002d48:	01813083          	ld	ra,24(sp)
    80002d4c:	01013403          	ld	s0,16(sp)
    80002d50:	00813483          	ld	s1,8(sp)
    80002d54:	00013903          	ld	s2,0(sp)
    80002d58:	02010113          	addi	sp,sp,32
    80002d5c:	00008067          	ret
            return -1;
    80002d60:	fff00513          	li	a0,-1
    80002d64:	fe5ff06f          	j	80002d48 <_ZN3SEM5closeEv+0xb4>

0000000080002d68 <_ZN3SEM4waitEv>:

int SEM::wait() {
    //pprintString("Sem::wait\n");
    if (this->closed) {
    80002d68:	00454783          	lbu	a5,4(a0)
    80002d6c:	0a079c63          	bnez	a5,80002e24 <_ZN3SEM4waitEv+0xbc>
int SEM::wait() {
    80002d70:	fd010113          	addi	sp,sp,-48
    80002d74:	02113423          	sd	ra,40(sp)
    80002d78:	02813023          	sd	s0,32(sp)
    80002d7c:	00913c23          	sd	s1,24(sp)
    80002d80:	01213823          	sd	s2,16(sp)
    80002d84:	01313423          	sd	s3,8(sp)
    80002d88:	03010413          	addi	s0,sp,48
    80002d8c:	00050493          	mv	s1,a0
        return -1;
    }
    val--;
    80002d90:	00052783          	lw	a5,0(a0)
    80002d94:	fff7879b          	addiw	a5,a5,-1
    80002d98:	00f52023          	sw	a5,0(a0)
    if (val<0) {
    80002d9c:	02079713          	slli	a4,a5,0x20
    80002da0:	02074263          	bltz	a4,80002dc4 <_ZN3SEM4waitEv+0x5c>
        TCB::running->block();
        blockedQueue.addFirst(TCB::running);
        //thread_dispatch();
        TCB::dispatch();
    }
    return 0;
    80002da4:	00000513          	li	a0,0
}
    80002da8:	02813083          	ld	ra,40(sp)
    80002dac:	02013403          	ld	s0,32(sp)
    80002db0:	01813483          	ld	s1,24(sp)
    80002db4:	01013903          	ld	s2,16(sp)
    80002db8:	00813983          	ld	s3,8(sp)
    80002dbc:	03010113          	addi	sp,sp,48
    80002dc0:	00008067          	ret
        TCB::running->block();
    80002dc4:	00007797          	auipc	a5,0x7
    80002dc8:	42c7b783          	ld	a5,1068(a5) # 8000a1f0 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002dcc:	0007b983          	ld	s3,0(a5)
    void block() { this->blocked = true; }
    80002dd0:	00100793          	li	a5,1
    80002dd4:	02f98823          	sb	a5,48(s3)
        blockedQueue.addFirst(TCB::running);
    80002dd8:	00850913          	addi	s2,a0,8
        Elem* elem=new Elem(data, head);
    80002ddc:	01000513          	li	a0,16
    80002de0:	fffff097          	auipc	ra,0xfffff
    80002de4:	014080e7          	jalr	20(ra) # 80001df4 <_Znwm>
    80002de8:	0084b783          	ld	a5,8(s1)
        Elem(T* data, Elem* next=nullptr): data(data), next(next){}
    80002dec:	01353023          	sd	s3,0(a0)
    80002df0:	00f53423          	sd	a5,8(a0)
        head=elem;
    80002df4:	00a4b423          	sd	a0,8(s1)
        if(!tail){tail=head;}
    80002df8:	00893783          	ld	a5,8(s2)
    80002dfc:	02078063          	beqz	a5,80002e1c <_ZN3SEM4waitEv+0xb4>
        size++;
    80002e00:	01092783          	lw	a5,16(s2)
    80002e04:	0017879b          	addiw	a5,a5,1
    80002e08:	00f92823          	sw	a5,16(s2)
        TCB::dispatch();
    80002e0c:	fffff097          	auipc	ra,0xfffff
    80002e10:	51c080e7          	jalr	1308(ra) # 80002328 <_ZN3TCB8dispatchEv>
    return 0;
    80002e14:	00000513          	li	a0,0
    80002e18:	f91ff06f          	j	80002da8 <_ZN3SEM4waitEv+0x40>
        if(!tail){tail=head;}
    80002e1c:	00a93423          	sd	a0,8(s2)
    80002e20:	fe1ff06f          	j	80002e00 <_ZN3SEM4waitEv+0x98>
        return -1;
    80002e24:	fff00513          	li	a0,-1
}
    80002e28:	00008067          	ret

0000000080002e2c <_ZN3SEM6signalEv>:

int SEM::signal() {
    //pprintString("Sem::signal\n");
    if (this->closed) {
    80002e2c:	00454783          	lbu	a5,4(a0)
    80002e30:	0c079063          	bnez	a5,80002ef0 <_ZN3SEM6signalEv+0xc4>
        return -1;
    }
    val++;
    80002e34:	00052783          	lw	a5,0(a0)
    80002e38:	0017879b          	addiw	a5,a5,1
    80002e3c:	0007871b          	sext.w	a4,a5
    80002e40:	00f52023          	sw	a5,0(a0)
    if (val<=0) {
    80002e44:	00e05663          	blez	a4,80002e50 <_ZN3SEM6signalEv+0x24>
                return -1;
        }
        unblockTcb->unblock();
        Scheduler::put(unblockTcb);
    }
    return 0;
    80002e48:	00000513          	li	a0,0
}
    80002e4c:	00008067          	ret
int SEM::signal() {
    80002e50:	fe010113          	addi	sp,sp,-32
    80002e54:	00113c23          	sd	ra,24(sp)
    80002e58:	00813823          	sd	s0,16(sp)
    80002e5c:	00913423          	sd	s1,8(sp)
    80002e60:	02010413          	addi	s0,sp,32
        TCB *unblockTcb = blockedQueue.removeLast();
    80002e64:	00850793          	addi	a5,a0,8
        size--;
    80002e68:	0107a703          	lw	a4,16(a5)
    80002e6c:	fff7071b          	addiw	a4,a4,-1
    80002e70:	00e7a823          	sw	a4,16(a5)
        if(!head){return 0;}
    80002e74:	00853483          	ld	s1,8(a0)
    80002e78:	04048263          	beqz	s1,80002ebc <_ZN3SEM6signalEv+0x90>
        Elem* prev=0;
    80002e7c:	00000693          	li	a3,0
        for(Elem* curr=head; curr && curr!=tail; prev=curr, curr=curr->next);
    80002e80:	00048c63          	beqz	s1,80002e98 <_ZN3SEM6signalEv+0x6c>
    80002e84:	0087b703          	ld	a4,8(a5)
    80002e88:	00e48863          	beq	s1,a4,80002e98 <_ZN3SEM6signalEv+0x6c>
    80002e8c:	00048693          	mv	a3,s1
    80002e90:	0084b483          	ld	s1,8(s1)
    80002e94:	fedff06f          	j	80002e80 <_ZN3SEM6signalEv+0x54>
        Elem* elem=tail;
    80002e98:	0087b703          	ld	a4,8(a5)
        if(prev) prev->next=0;
    80002e9c:	04068663          	beqz	a3,80002ee8 <_ZN3SEM6signalEv+0xbc>
    80002ea0:	0006b423          	sd	zero,8(a3)
        tail=prev;
    80002ea4:	00d7b423          	sd	a3,8(a5)
        T* retval= elem->data;
    80002ea8:	00073483          	ld	s1,0(a4)
        delete elem;
    80002eac:	00070863          	beqz	a4,80002ebc <_ZN3SEM6signalEv+0x90>
    80002eb0:	00070513          	mv	a0,a4
    80002eb4:	fffff097          	auipc	ra,0xfffff
    80002eb8:	f68080e7          	jalr	-152(ra) # 80001e1c <_ZdlPv>
        if (unblockTcb == nullptr) {
    80002ebc:	02048e63          	beqz	s1,80002ef8 <_ZN3SEM6signalEv+0xcc>
    void unblock() { this->blocked = false; }
    80002ec0:	02048823          	sb	zero,48(s1)
        Scheduler::put(unblockTcb);
    80002ec4:	00048513          	mv	a0,s1
    80002ec8:	fffff097          	auipc	ra,0xfffff
    80002ecc:	a88080e7          	jalr	-1400(ra) # 80001950 <_ZN9Scheduler3putEP3TCB>
    return 0;
    80002ed0:	00000513          	li	a0,0
}
    80002ed4:	01813083          	ld	ra,24(sp)
    80002ed8:	01013403          	ld	s0,16(sp)
    80002edc:	00813483          	ld	s1,8(sp)
    80002ee0:	02010113          	addi	sp,sp,32
    80002ee4:	00008067          	ret
        else head=0;
    80002ee8:	00053423          	sd	zero,8(a0)
    80002eec:	fb9ff06f          	j	80002ea4 <_ZN3SEM6signalEv+0x78>
        return -1;
    80002ef0:	fff00513          	li	a0,-1
    80002ef4:	00008067          	ret
                return -1;
    80002ef8:	fff00513          	li	a0,-1
    80002efc:	fd9ff06f          	j	80002ed4 <_ZN3SEM6signalEv+0xa8>

0000000080002f00 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    80002f00:	fe010113          	addi	sp,sp,-32
    80002f04:	00113c23          	sd	ra,24(sp)
    80002f08:	00813823          	sd	s0,16(sp)
    80002f0c:	00913423          	sd	s1,8(sp)
    80002f10:	01213023          	sd	s2,0(sp)
    80002f14:	02010413          	addi	s0,sp,32
    80002f18:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80002f1c:	00000913          	li	s2,0
    80002f20:	00c0006f          	j	80002f2c <_ZL16producerKeyboardPv+0x2c>
    while ((key = __getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80002f24:	ffffe097          	auipc	ra,0xffffe
    80002f28:	360080e7          	jalr	864(ra) # 80001284 <_Z15thread_dispatchv>
    while ((key = __getc()) != 0x1b) {
    80002f2c:	00005097          	auipc	ra,0x5
    80002f30:	d0c080e7          	jalr	-756(ra) # 80007c38 <__getc>
    80002f34:	0005059b          	sext.w	a1,a0
    80002f38:	01b00793          	li	a5,27
    80002f3c:	02f58a63          	beq	a1,a5,80002f70 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80002f40:	0084b503          	ld	a0,8(s1)
    80002f44:	00003097          	auipc	ra,0x3
    80002f48:	96c080e7          	jalr	-1684(ra) # 800058b0 <_ZN6Buffer3putEi>
        i++;
    80002f4c:	0019071b          	addiw	a4,s2,1
    80002f50:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80002f54:	0004a683          	lw	a3,0(s1)
    80002f58:	0026979b          	slliw	a5,a3,0x2
    80002f5c:	00d787bb          	addw	a5,a5,a3
    80002f60:	0017979b          	slliw	a5,a5,0x1
    80002f64:	02f767bb          	remw	a5,a4,a5
    80002f68:	fc0792e3          	bnez	a5,80002f2c <_ZL16producerKeyboardPv+0x2c>
    80002f6c:	fb9ff06f          	j	80002f24 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80002f70:	00100793          	li	a5,1
    80002f74:	00007717          	auipc	a4,0x7
    80002f78:	32f72a23          	sw	a5,820(a4) # 8000a2a8 <_ZL9threadEnd>
    data->buffer->put('!');
    80002f7c:	02100593          	li	a1,33
    80002f80:	0084b503          	ld	a0,8(s1)
    80002f84:	00003097          	auipc	ra,0x3
    80002f88:	92c080e7          	jalr	-1748(ra) # 800058b0 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80002f8c:	0104b503          	ld	a0,16(s1)
    80002f90:	ffffe097          	auipc	ra,0xffffe
    80002f94:	3ac080e7          	jalr	940(ra) # 8000133c <_Z10sem_signalP3SEM>
}
    80002f98:	01813083          	ld	ra,24(sp)
    80002f9c:	01013403          	ld	s0,16(sp)
    80002fa0:	00813483          	ld	s1,8(sp)
    80002fa4:	00013903          	ld	s2,0(sp)
    80002fa8:	02010113          	addi	sp,sp,32
    80002fac:	00008067          	ret

0000000080002fb0 <_ZL8producerPv>:

static void producer(void *arg) {
    80002fb0:	fe010113          	addi	sp,sp,-32
    80002fb4:	00113c23          	sd	ra,24(sp)
    80002fb8:	00813823          	sd	s0,16(sp)
    80002fbc:	00913423          	sd	s1,8(sp)
    80002fc0:	01213023          	sd	s2,0(sp)
    80002fc4:	02010413          	addi	s0,sp,32
    80002fc8:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80002fcc:	00000913          	li	s2,0
    80002fd0:	00c0006f          	j	80002fdc <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80002fd4:	ffffe097          	auipc	ra,0xffffe
    80002fd8:	2b0080e7          	jalr	688(ra) # 80001284 <_Z15thread_dispatchv>
    while (!threadEnd) {
    80002fdc:	00007797          	auipc	a5,0x7
    80002fe0:	2cc7a783          	lw	a5,716(a5) # 8000a2a8 <_ZL9threadEnd>
    80002fe4:	02079e63          	bnez	a5,80003020 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80002fe8:	0004a583          	lw	a1,0(s1)
    80002fec:	0305859b          	addiw	a1,a1,48
    80002ff0:	0084b503          	ld	a0,8(s1)
    80002ff4:	00003097          	auipc	ra,0x3
    80002ff8:	8bc080e7          	jalr	-1860(ra) # 800058b0 <_ZN6Buffer3putEi>
        i++;
    80002ffc:	0019071b          	addiw	a4,s2,1
    80003000:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003004:	0004a683          	lw	a3,0(s1)
    80003008:	0026979b          	slliw	a5,a3,0x2
    8000300c:	00d787bb          	addw	a5,a5,a3
    80003010:	0017979b          	slliw	a5,a5,0x1
    80003014:	02f767bb          	remw	a5,a4,a5
    80003018:	fc0792e3          	bnez	a5,80002fdc <_ZL8producerPv+0x2c>
    8000301c:	fb9ff06f          	j	80002fd4 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80003020:	0104b503          	ld	a0,16(s1)
    80003024:	ffffe097          	auipc	ra,0xffffe
    80003028:	318080e7          	jalr	792(ra) # 8000133c <_Z10sem_signalP3SEM>
}
    8000302c:	01813083          	ld	ra,24(sp)
    80003030:	01013403          	ld	s0,16(sp)
    80003034:	00813483          	ld	s1,8(sp)
    80003038:	00013903          	ld	s2,0(sp)
    8000303c:	02010113          	addi	sp,sp,32
    80003040:	00008067          	ret

0000000080003044 <_ZL8consumerPv>:

static void consumer(void *arg) {
    80003044:	fd010113          	addi	sp,sp,-48
    80003048:	02113423          	sd	ra,40(sp)
    8000304c:	02813023          	sd	s0,32(sp)
    80003050:	00913c23          	sd	s1,24(sp)
    80003054:	01213823          	sd	s2,16(sp)
    80003058:	01313423          	sd	s3,8(sp)
    8000305c:	03010413          	addi	s0,sp,48
    80003060:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003064:	00000993          	li	s3,0
    80003068:	01c0006f          	j	80003084 <_ZL8consumerPv+0x40>
        i++;

        __putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    8000306c:	ffffe097          	auipc	ra,0xffffe
    80003070:	218080e7          	jalr	536(ra) # 80001284 <_Z15thread_dispatchv>
    80003074:	0500006f          	j	800030c4 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            __putc('\n');
    80003078:	00a00513          	li	a0,10
    8000307c:	00005097          	auipc	ra,0x5
    80003080:	b80080e7          	jalr	-1152(ra) # 80007bfc <__putc>
    while (!threadEnd) {
    80003084:	00007797          	auipc	a5,0x7
    80003088:	2247a783          	lw	a5,548(a5) # 8000a2a8 <_ZL9threadEnd>
    8000308c:	06079063          	bnez	a5,800030ec <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80003090:	00893503          	ld	a0,8(s2)
    80003094:	00003097          	auipc	ra,0x3
    80003098:	8ac080e7          	jalr	-1876(ra) # 80005940 <_ZN6Buffer3getEv>
        i++;
    8000309c:	0019849b          	addiw	s1,s3,1
    800030a0:	0004899b          	sext.w	s3,s1
        __putc(key);
    800030a4:	0ff57513          	andi	a0,a0,255
    800030a8:	00005097          	auipc	ra,0x5
    800030ac:	b54080e7          	jalr	-1196(ra) # 80007bfc <__putc>
        if (i % (5 * data->id) == 0) {
    800030b0:	00092703          	lw	a4,0(s2)
    800030b4:	0027179b          	slliw	a5,a4,0x2
    800030b8:	00e787bb          	addw	a5,a5,a4
    800030bc:	02f4e7bb          	remw	a5,s1,a5
    800030c0:	fa0786e3          	beqz	a5,8000306c <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    800030c4:	05000793          	li	a5,80
    800030c8:	02f4e4bb          	remw	s1,s1,a5
    800030cc:	fa049ce3          	bnez	s1,80003084 <_ZL8consumerPv+0x40>
    800030d0:	fa9ff06f          	j	80003078 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    800030d4:	00893503          	ld	a0,8(s2)
    800030d8:	00003097          	auipc	ra,0x3
    800030dc:	868080e7          	jalr	-1944(ra) # 80005940 <_ZN6Buffer3getEv>
        __putc(key);
    800030e0:	0ff57513          	andi	a0,a0,255
    800030e4:	00005097          	auipc	ra,0x5
    800030e8:	b18080e7          	jalr	-1256(ra) # 80007bfc <__putc>
    while (data->buffer->getCnt() > 0) {
    800030ec:	00893503          	ld	a0,8(s2)
    800030f0:	00003097          	auipc	ra,0x3
    800030f4:	8dc080e7          	jalr	-1828(ra) # 800059cc <_ZN6Buffer6getCntEv>
    800030f8:	fca04ee3          	bgtz	a0,800030d4 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    800030fc:	01093503          	ld	a0,16(s2)
    80003100:	ffffe097          	auipc	ra,0xffffe
    80003104:	23c080e7          	jalr	572(ra) # 8000133c <_Z10sem_signalP3SEM>
}
    80003108:	02813083          	ld	ra,40(sp)
    8000310c:	02013403          	ld	s0,32(sp)
    80003110:	01813483          	ld	s1,24(sp)
    80003114:	01013903          	ld	s2,16(sp)
    80003118:	00813983          	ld	s3,8(sp)
    8000311c:	03010113          	addi	sp,sp,48
    80003120:	00008067          	ret

0000000080003124 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80003124:	f9010113          	addi	sp,sp,-112
    80003128:	06113423          	sd	ra,104(sp)
    8000312c:	06813023          	sd	s0,96(sp)
    80003130:	04913c23          	sd	s1,88(sp)
    80003134:	05213823          	sd	s2,80(sp)
    80003138:	05313423          	sd	s3,72(sp)
    8000313c:	05413023          	sd	s4,64(sp)
    80003140:	03513c23          	sd	s5,56(sp)
    80003144:	03613823          	sd	s6,48(sp)
    80003148:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    8000314c:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80003150:	00005517          	auipc	a0,0x5
    80003154:	f9050513          	addi	a0,a0,-112 # 800080e0 <_ZZ12printIntegermE6digits+0x10>
    80003158:	00002097          	auipc	ra,0x2
    8000315c:	a0c080e7          	jalr	-1524(ra) # 80004b64 <_Z11printStringPKc>
    getString(input, 30);
    80003160:	01e00593          	li	a1,30
    80003164:	fa040493          	addi	s1,s0,-96
    80003168:	00048513          	mv	a0,s1
    8000316c:	00002097          	auipc	ra,0x2
    80003170:	a80080e7          	jalr	-1408(ra) # 80004bec <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003174:	00048513          	mv	a0,s1
    80003178:	00002097          	auipc	ra,0x2
    8000317c:	b4c080e7          	jalr	-1204(ra) # 80004cc4 <_Z11stringToIntPKc>
    80003180:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80003184:	00005517          	auipc	a0,0x5
    80003188:	f7c50513          	addi	a0,a0,-132 # 80008100 <_ZZ12printIntegermE6digits+0x30>
    8000318c:	00002097          	auipc	ra,0x2
    80003190:	9d8080e7          	jalr	-1576(ra) # 80004b64 <_Z11printStringPKc>
    getString(input, 30);
    80003194:	01e00593          	li	a1,30
    80003198:	00048513          	mv	a0,s1
    8000319c:	00002097          	auipc	ra,0x2
    800031a0:	a50080e7          	jalr	-1456(ra) # 80004bec <_Z9getStringPci>
    n = stringToInt(input);
    800031a4:	00048513          	mv	a0,s1
    800031a8:	00002097          	auipc	ra,0x2
    800031ac:	b1c080e7          	jalr	-1252(ra) # 80004cc4 <_Z11stringToIntPKc>
    800031b0:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    800031b4:	00005517          	auipc	a0,0x5
    800031b8:	f6c50513          	addi	a0,a0,-148 # 80008120 <_ZZ12printIntegermE6digits+0x50>
    800031bc:	00002097          	auipc	ra,0x2
    800031c0:	9a8080e7          	jalr	-1624(ra) # 80004b64 <_Z11printStringPKc>
    800031c4:	00000613          	li	a2,0
    800031c8:	00a00593          	li	a1,10
    800031cc:	00090513          	mv	a0,s2
    800031d0:	00002097          	auipc	ra,0x2
    800031d4:	b44080e7          	jalr	-1212(ra) # 80004d14 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    800031d8:	00005517          	auipc	a0,0x5
    800031dc:	f6050513          	addi	a0,a0,-160 # 80008138 <_ZZ12printIntegermE6digits+0x68>
    800031e0:	00002097          	auipc	ra,0x2
    800031e4:	984080e7          	jalr	-1660(ra) # 80004b64 <_Z11printStringPKc>
    800031e8:	00000613          	li	a2,0
    800031ec:	00a00593          	li	a1,10
    800031f0:	00048513          	mv	a0,s1
    800031f4:	00002097          	auipc	ra,0x2
    800031f8:	b20080e7          	jalr	-1248(ra) # 80004d14 <_Z8printIntiii>
    printString(".\n");
    800031fc:	00005517          	auipc	a0,0x5
    80003200:	f5450513          	addi	a0,a0,-172 # 80008150 <_ZZ12printIntegermE6digits+0x80>
    80003204:	00002097          	auipc	ra,0x2
    80003208:	960080e7          	jalr	-1696(ra) # 80004b64 <_Z11printStringPKc>
    if(threadNum > n) {
    8000320c:	0324c463          	blt	s1,s2,80003234 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    80003210:	03205c63          	blez	s2,80003248 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    80003214:	03800513          	li	a0,56
    80003218:	fffff097          	auipc	ra,0xfffff
    8000321c:	bdc080e7          	jalr	-1060(ra) # 80001df4 <_Znwm>
    80003220:	00050a13          	mv	s4,a0
    80003224:	00048593          	mv	a1,s1
    80003228:	00002097          	auipc	ra,0x2
    8000322c:	5ec080e7          	jalr	1516(ra) # 80005814 <_ZN6BufferC1Ei>
    80003230:	0300006f          	j	80003260 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003234:	00005517          	auipc	a0,0x5
    80003238:	f2450513          	addi	a0,a0,-220 # 80008158 <_ZZ12printIntegermE6digits+0x88>
    8000323c:	00002097          	auipc	ra,0x2
    80003240:	928080e7          	jalr	-1752(ra) # 80004b64 <_Z11printStringPKc>
        return;
    80003244:	0140006f          	j	80003258 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003248:	00005517          	auipc	a0,0x5
    8000324c:	f5050513          	addi	a0,a0,-176 # 80008198 <_ZZ12printIntegermE6digits+0xc8>
    80003250:	00002097          	auipc	ra,0x2
    80003254:	914080e7          	jalr	-1772(ra) # 80004b64 <_Z11printStringPKc>
        return;
    80003258:	000b0113          	mv	sp,s6
    8000325c:	1500006f          	j	800033ac <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    80003260:	00000593          	li	a1,0
    80003264:	00007517          	auipc	a0,0x7
    80003268:	04c50513          	addi	a0,a0,76 # 8000a2b0 <_ZL10waitForAll>
    8000326c:	ffffe097          	auipc	ra,0xffffe
    80003270:	03c080e7          	jalr	60(ra) # 800012a8 <_Z8sem_openPP3SEMj>
    thread_t threads[threadNum];
    80003274:	00391793          	slli	a5,s2,0x3
    80003278:	00f78793          	addi	a5,a5,15
    8000327c:	ff07f793          	andi	a5,a5,-16
    80003280:	40f10133          	sub	sp,sp,a5
    80003284:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80003288:	0019071b          	addiw	a4,s2,1
    8000328c:	00171793          	slli	a5,a4,0x1
    80003290:	00e787b3          	add	a5,a5,a4
    80003294:	00379793          	slli	a5,a5,0x3
    80003298:	00f78793          	addi	a5,a5,15
    8000329c:	ff07f793          	andi	a5,a5,-16
    800032a0:	40f10133          	sub	sp,sp,a5
    800032a4:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    800032a8:	00191613          	slli	a2,s2,0x1
    800032ac:	012607b3          	add	a5,a2,s2
    800032b0:	00379793          	slli	a5,a5,0x3
    800032b4:	00f987b3          	add	a5,s3,a5
    800032b8:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    800032bc:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    800032c0:	00007717          	auipc	a4,0x7
    800032c4:	ff073703          	ld	a4,-16(a4) # 8000a2b0 <_ZL10waitForAll>
    800032c8:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    800032cc:	00078613          	mv	a2,a5
    800032d0:	00000597          	auipc	a1,0x0
    800032d4:	d7458593          	addi	a1,a1,-652 # 80003044 <_ZL8consumerPv>
    800032d8:	f9840513          	addi	a0,s0,-104
    800032dc:	ffffe097          	auipc	ra,0xffffe
    800032e0:	f44080e7          	jalr	-188(ra) # 80001220 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    800032e4:	00000493          	li	s1,0
    800032e8:	0280006f          	j	80003310 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    800032ec:	00000597          	auipc	a1,0x0
    800032f0:	c1458593          	addi	a1,a1,-1004 # 80002f00 <_ZL16producerKeyboardPv>
                      data + i);
    800032f4:	00179613          	slli	a2,a5,0x1
    800032f8:	00f60633          	add	a2,a2,a5
    800032fc:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80003300:	00c98633          	add	a2,s3,a2
    80003304:	ffffe097          	auipc	ra,0xffffe
    80003308:	f1c080e7          	jalr	-228(ra) # 80001220 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    8000330c:	0014849b          	addiw	s1,s1,1
    80003310:	0524d263          	bge	s1,s2,80003354 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    80003314:	00149793          	slli	a5,s1,0x1
    80003318:	009787b3          	add	a5,a5,s1
    8000331c:	00379793          	slli	a5,a5,0x3
    80003320:	00f987b3          	add	a5,s3,a5
    80003324:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80003328:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    8000332c:	00007717          	auipc	a4,0x7
    80003330:	f8473703          	ld	a4,-124(a4) # 8000a2b0 <_ZL10waitForAll>
    80003334:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80003338:	00048793          	mv	a5,s1
    8000333c:	00349513          	slli	a0,s1,0x3
    80003340:	00aa8533          	add	a0,s5,a0
    80003344:	fa9054e3          	blez	s1,800032ec <_Z22producerConsumer_C_APIv+0x1c8>
    80003348:	00000597          	auipc	a1,0x0
    8000334c:	c6858593          	addi	a1,a1,-920 # 80002fb0 <_ZL8producerPv>
    80003350:	fa5ff06f          	j	800032f4 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    80003354:	ffffe097          	auipc	ra,0xffffe
    80003358:	f30080e7          	jalr	-208(ra) # 80001284 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    8000335c:	00000493          	li	s1,0
    80003360:	00994e63          	blt	s2,s1,8000337c <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    80003364:	00007517          	auipc	a0,0x7
    80003368:	f4c53503          	ld	a0,-180(a0) # 8000a2b0 <_ZL10waitForAll>
    8000336c:	ffffe097          	auipc	ra,0xffffe
    80003370:	fa0080e7          	jalr	-96(ra) # 8000130c <_Z8sem_waitP3SEM>
    for (int i = 0; i <= threadNum; i++) {
    80003374:	0014849b          	addiw	s1,s1,1
    80003378:	fe9ff06f          	j	80003360 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    8000337c:	00007517          	auipc	a0,0x7
    80003380:	f3453503          	ld	a0,-204(a0) # 8000a2b0 <_ZL10waitForAll>
    80003384:	ffffe097          	auipc	ra,0xffffe
    80003388:	f58080e7          	jalr	-168(ra) # 800012dc <_Z9sem_closeP3SEM>
    delete buffer;
    8000338c:	000a0e63          	beqz	s4,800033a8 <_Z22producerConsumer_C_APIv+0x284>
    80003390:	000a0513          	mv	a0,s4
    80003394:	00002097          	auipc	ra,0x2
    80003398:	6c0080e7          	jalr	1728(ra) # 80005a54 <_ZN6BufferD1Ev>
    8000339c:	000a0513          	mv	a0,s4
    800033a0:	fffff097          	auipc	ra,0xfffff
    800033a4:	a7c080e7          	jalr	-1412(ra) # 80001e1c <_ZdlPv>
    800033a8:	000b0113          	mv	sp,s6

}
    800033ac:	f9040113          	addi	sp,s0,-112
    800033b0:	06813083          	ld	ra,104(sp)
    800033b4:	06013403          	ld	s0,96(sp)
    800033b8:	05813483          	ld	s1,88(sp)
    800033bc:	05013903          	ld	s2,80(sp)
    800033c0:	04813983          	ld	s3,72(sp)
    800033c4:	04013a03          	ld	s4,64(sp)
    800033c8:	03813a83          	ld	s5,56(sp)
    800033cc:	03013b03          	ld	s6,48(sp)
    800033d0:	07010113          	addi	sp,sp,112
    800033d4:	00008067          	ret
    800033d8:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    800033dc:	000a0513          	mv	a0,s4
    800033e0:	fffff097          	auipc	ra,0xfffff
    800033e4:	a3c080e7          	jalr	-1476(ra) # 80001e1c <_ZdlPv>
    800033e8:	00048513          	mv	a0,s1
    800033ec:	00008097          	auipc	ra,0x8
    800033f0:	fbc080e7          	jalr	-68(ra) # 8000b3a8 <_Unwind_Resume>

00000000800033f4 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800033f4:	fe010113          	addi	sp,sp,-32
    800033f8:	00113c23          	sd	ra,24(sp)
    800033fc:	00813823          	sd	s0,16(sp)
    80003400:	00913423          	sd	s1,8(sp)
    80003404:	01213023          	sd	s2,0(sp)
    80003408:	02010413          	addi	s0,sp,32
    8000340c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003410:	00100793          	li	a5,1
    80003414:	02a7f863          	bgeu	a5,a0,80003444 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003418:	00a00793          	li	a5,10
    8000341c:	02f577b3          	remu	a5,a0,a5
    80003420:	02078e63          	beqz	a5,8000345c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003424:	fff48513          	addi	a0,s1,-1
    80003428:	00000097          	auipc	ra,0x0
    8000342c:	fcc080e7          	jalr	-52(ra) # 800033f4 <_ZL9fibonaccim>
    80003430:	00050913          	mv	s2,a0
    80003434:	ffe48513          	addi	a0,s1,-2
    80003438:	00000097          	auipc	ra,0x0
    8000343c:	fbc080e7          	jalr	-68(ra) # 800033f4 <_ZL9fibonaccim>
    80003440:	00a90533          	add	a0,s2,a0
}
    80003444:	01813083          	ld	ra,24(sp)
    80003448:	01013403          	ld	s0,16(sp)
    8000344c:	00813483          	ld	s1,8(sp)
    80003450:	00013903          	ld	s2,0(sp)
    80003454:	02010113          	addi	sp,sp,32
    80003458:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    8000345c:	ffffe097          	auipc	ra,0xffffe
    80003460:	e28080e7          	jalr	-472(ra) # 80001284 <_Z15thread_dispatchv>
    80003464:	fc1ff06f          	j	80003424 <_ZL9fibonaccim+0x30>

0000000080003468 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80003468:	fe010113          	addi	sp,sp,-32
    8000346c:	00113c23          	sd	ra,24(sp)
    80003470:	00813823          	sd	s0,16(sp)
    80003474:	00913423          	sd	s1,8(sp)
    80003478:	01213023          	sd	s2,0(sp)
    8000347c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003480:	00000913          	li	s2,0
    80003484:	0380006f          	j	800034bc <_ZN7WorkerA11workerBodyAEPv+0x54>
        pprintString("A: i="); printInteger(i); pprintString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003488:	ffffe097          	auipc	ra,0xffffe
    8000348c:	dfc080e7          	jalr	-516(ra) # 80001284 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003490:	00148493          	addi	s1,s1,1
    80003494:	000027b7          	lui	a5,0x2
    80003498:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000349c:	0097ee63          	bltu	a5,s1,800034b8 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800034a0:	00000713          	li	a4,0
    800034a4:	000077b7          	lui	a5,0x7
    800034a8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800034ac:	fce7eee3          	bltu	a5,a4,80003488 <_ZN7WorkerA11workerBodyAEPv+0x20>
    800034b0:	00170713          	addi	a4,a4,1
    800034b4:	ff1ff06f          	j	800034a4 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800034b8:	00190913          	addi	s2,s2,1
    800034bc:	00900793          	li	a5,9
    800034c0:	0327ec63          	bltu	a5,s2,800034f8 <_ZN7WorkerA11workerBodyAEPv+0x90>
        pprintString("A: i="); printInteger(i); pprintString("\n");
    800034c4:	00005517          	auipc	a0,0x5
    800034c8:	b6450513          	addi	a0,a0,-1180 # 80008028 <CONSOLE_STATUS+0x18>
    800034cc:	fffff097          	auipc	ra,0xfffff
    800034d0:	674080e7          	jalr	1652(ra) # 80002b40 <_Z12pprintStringPKc>
    800034d4:	00090513          	mv	a0,s2
    800034d8:	fffff097          	auipc	ra,0xfffff
    800034dc:	6ac080e7          	jalr	1708(ra) # 80002b84 <_Z12printIntegerm>
    800034e0:	00005517          	auipc	a0,0x5
    800034e4:	bb050513          	addi	a0,a0,-1104 # 80008090 <CONSOLE_STATUS+0x80>
    800034e8:	fffff097          	auipc	ra,0xfffff
    800034ec:	658080e7          	jalr	1624(ra) # 80002b40 <_Z12pprintStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800034f0:	00000493          	li	s1,0
    800034f4:	fa1ff06f          	j	80003494 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    pprintString("A finished!\n");
    800034f8:	00005517          	auipc	a0,0x5
    800034fc:	b3850513          	addi	a0,a0,-1224 # 80008030 <CONSOLE_STATUS+0x20>
    80003500:	fffff097          	auipc	ra,0xfffff
    80003504:	640080e7          	jalr	1600(ra) # 80002b40 <_Z12pprintStringPKc>
    finishedA = true;
    80003508:	00100793          	li	a5,1
    8000350c:	00007717          	auipc	a4,0x7
    80003510:	daf70623          	sb	a5,-596(a4) # 8000a2b8 <_ZL9finishedA>
}
    80003514:	01813083          	ld	ra,24(sp)
    80003518:	01013403          	ld	s0,16(sp)
    8000351c:	00813483          	ld	s1,8(sp)
    80003520:	00013903          	ld	s2,0(sp)
    80003524:	02010113          	addi	sp,sp,32
    80003528:	00008067          	ret

000000008000352c <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    8000352c:	fe010113          	addi	sp,sp,-32
    80003530:	00113c23          	sd	ra,24(sp)
    80003534:	00813823          	sd	s0,16(sp)
    80003538:	00913423          	sd	s1,8(sp)
    8000353c:	01213023          	sd	s2,0(sp)
    80003540:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003544:	00000913          	li	s2,0
    80003548:	0380006f          	j	80003580 <_ZN7WorkerB11workerBodyBEPv+0x54>
        pprintString("B: i="); printInteger(i); pprintString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    8000354c:	ffffe097          	auipc	ra,0xffffe
    80003550:	d38080e7          	jalr	-712(ra) # 80001284 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003554:	00148493          	addi	s1,s1,1
    80003558:	000027b7          	lui	a5,0x2
    8000355c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003560:	0097ee63          	bltu	a5,s1,8000357c <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003564:	00000713          	li	a4,0
    80003568:	000077b7          	lui	a5,0x7
    8000356c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003570:	fce7eee3          	bltu	a5,a4,8000354c <_ZN7WorkerB11workerBodyBEPv+0x20>
    80003574:	00170713          	addi	a4,a4,1
    80003578:	ff1ff06f          	j	80003568 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    8000357c:	00190913          	addi	s2,s2,1
    80003580:	00f00793          	li	a5,15
    80003584:	0327ec63          	bltu	a5,s2,800035bc <_ZN7WorkerB11workerBodyBEPv+0x90>
        pprintString("B: i="); printInteger(i); pprintString("\n");
    80003588:	00005517          	auipc	a0,0x5
    8000358c:	ab850513          	addi	a0,a0,-1352 # 80008040 <CONSOLE_STATUS+0x30>
    80003590:	fffff097          	auipc	ra,0xfffff
    80003594:	5b0080e7          	jalr	1456(ra) # 80002b40 <_Z12pprintStringPKc>
    80003598:	00090513          	mv	a0,s2
    8000359c:	fffff097          	auipc	ra,0xfffff
    800035a0:	5e8080e7          	jalr	1512(ra) # 80002b84 <_Z12printIntegerm>
    800035a4:	00005517          	auipc	a0,0x5
    800035a8:	aec50513          	addi	a0,a0,-1300 # 80008090 <CONSOLE_STATUS+0x80>
    800035ac:	fffff097          	auipc	ra,0xfffff
    800035b0:	594080e7          	jalr	1428(ra) # 80002b40 <_Z12pprintStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800035b4:	00000493          	li	s1,0
    800035b8:	fa1ff06f          	j	80003558 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    pprintString("B finished!\n");
    800035bc:	00005517          	auipc	a0,0x5
    800035c0:	a8c50513          	addi	a0,a0,-1396 # 80008048 <CONSOLE_STATUS+0x38>
    800035c4:	fffff097          	auipc	ra,0xfffff
    800035c8:	57c080e7          	jalr	1404(ra) # 80002b40 <_Z12pprintStringPKc>
    finishedB = true;
    800035cc:	00100793          	li	a5,1
    800035d0:	00007717          	auipc	a4,0x7
    800035d4:	cef704a3          	sb	a5,-791(a4) # 8000a2b9 <_ZL9finishedB>
    thread_dispatch();
    800035d8:	ffffe097          	auipc	ra,0xffffe
    800035dc:	cac080e7          	jalr	-852(ra) # 80001284 <_Z15thread_dispatchv>
}
    800035e0:	01813083          	ld	ra,24(sp)
    800035e4:	01013403          	ld	s0,16(sp)
    800035e8:	00813483          	ld	s1,8(sp)
    800035ec:	00013903          	ld	s2,0(sp)
    800035f0:	02010113          	addi	sp,sp,32
    800035f4:	00008067          	ret

00000000800035f8 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    800035f8:	fe010113          	addi	sp,sp,-32
    800035fc:	00113c23          	sd	ra,24(sp)
    80003600:	00813823          	sd	s0,16(sp)
    80003604:	00913423          	sd	s1,8(sp)
    80003608:	01213023          	sd	s2,0(sp)
    8000360c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003610:	00000493          	li	s1,0
    80003614:	0380006f          	j	8000364c <_ZN7WorkerC11workerBodyCEPv+0x54>
    for (; i < 3; i++) {
        pprintString("C: i="); printInteger(i); pprintString("\n");
    80003618:	00005517          	auipc	a0,0x5
    8000361c:	a4050513          	addi	a0,a0,-1472 # 80008058 <CONSOLE_STATUS+0x48>
    80003620:	fffff097          	auipc	ra,0xfffff
    80003624:	520080e7          	jalr	1312(ra) # 80002b40 <_Z12pprintStringPKc>
    80003628:	00048513          	mv	a0,s1
    8000362c:	fffff097          	auipc	ra,0xfffff
    80003630:	558080e7          	jalr	1368(ra) # 80002b84 <_Z12printIntegerm>
    80003634:	00005517          	auipc	a0,0x5
    80003638:	a5c50513          	addi	a0,a0,-1444 # 80008090 <CONSOLE_STATUS+0x80>
    8000363c:	fffff097          	auipc	ra,0xfffff
    80003640:	504080e7          	jalr	1284(ra) # 80002b40 <_Z12pprintStringPKc>
    for (; i < 3; i++) {
    80003644:	0014849b          	addiw	s1,s1,1
    80003648:	0ff4f493          	andi	s1,s1,255
    8000364c:	00200793          	li	a5,2
    80003650:	fc97f4e3          	bgeu	a5,s1,80003618 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    pprintString("C: dispatch\n");
    80003654:	00005517          	auipc	a0,0x5
    80003658:	b7450513          	addi	a0,a0,-1164 # 800081c8 <_ZZ12printIntegermE6digits+0xf8>
    8000365c:	fffff097          	auipc	ra,0xfffff
    80003660:	4e4080e7          	jalr	1252(ra) # 80002b40 <_Z12pprintStringPKc>
    __asm__ ("li t1, 7");
    80003664:	00700313          	li	t1,7
    thread_dispatch();
    80003668:	ffffe097          	auipc	ra,0xffffe
    8000366c:	c1c080e7          	jalr	-996(ra) # 80001284 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003670:	00030913          	mv	s2,t1

    pprintString("C: t1="); printInteger(t1); pprintString("\n");
    80003674:	00005517          	auipc	a0,0x5
    80003678:	b6450513          	addi	a0,a0,-1180 # 800081d8 <_ZZ12printIntegermE6digits+0x108>
    8000367c:	fffff097          	auipc	ra,0xfffff
    80003680:	4c4080e7          	jalr	1220(ra) # 80002b40 <_Z12pprintStringPKc>
    80003684:	00090513          	mv	a0,s2
    80003688:	fffff097          	auipc	ra,0xfffff
    8000368c:	4fc080e7          	jalr	1276(ra) # 80002b84 <_Z12printIntegerm>
    80003690:	00005517          	auipc	a0,0x5
    80003694:	a0050513          	addi	a0,a0,-1536 # 80008090 <CONSOLE_STATUS+0x80>
    80003698:	fffff097          	auipc	ra,0xfffff
    8000369c:	4a8080e7          	jalr	1192(ra) # 80002b40 <_Z12pprintStringPKc>

    uint64 result = fibonacci(12);
    800036a0:	00c00513          	li	a0,12
    800036a4:	00000097          	auipc	ra,0x0
    800036a8:	d50080e7          	jalr	-688(ra) # 800033f4 <_ZL9fibonaccim>
    800036ac:	00050913          	mv	s2,a0
    pprintString("C: fibonaci="); printInteger(result); pprintString("\n");
    800036b0:	00005517          	auipc	a0,0x5
    800036b4:	b3050513          	addi	a0,a0,-1232 # 800081e0 <_ZZ12printIntegermE6digits+0x110>
    800036b8:	fffff097          	auipc	ra,0xfffff
    800036bc:	488080e7          	jalr	1160(ra) # 80002b40 <_Z12pprintStringPKc>
    800036c0:	00090513          	mv	a0,s2
    800036c4:	fffff097          	auipc	ra,0xfffff
    800036c8:	4c0080e7          	jalr	1216(ra) # 80002b84 <_Z12printIntegerm>
    800036cc:	00005517          	auipc	a0,0x5
    800036d0:	9c450513          	addi	a0,a0,-1596 # 80008090 <CONSOLE_STATUS+0x80>
    800036d4:	fffff097          	auipc	ra,0xfffff
    800036d8:	46c080e7          	jalr	1132(ra) # 80002b40 <_Z12pprintStringPKc>
    800036dc:	0380006f          	j	80003714 <_ZN7WorkerC11workerBodyCEPv+0x11c>

    for (; i < 6; i++) {
        pprintString("C: i="); printInteger(i); pprintString("\n");
    800036e0:	00005517          	auipc	a0,0x5
    800036e4:	97850513          	addi	a0,a0,-1672 # 80008058 <CONSOLE_STATUS+0x48>
    800036e8:	fffff097          	auipc	ra,0xfffff
    800036ec:	458080e7          	jalr	1112(ra) # 80002b40 <_Z12pprintStringPKc>
    800036f0:	00048513          	mv	a0,s1
    800036f4:	fffff097          	auipc	ra,0xfffff
    800036f8:	490080e7          	jalr	1168(ra) # 80002b84 <_Z12printIntegerm>
    800036fc:	00005517          	auipc	a0,0x5
    80003700:	99450513          	addi	a0,a0,-1644 # 80008090 <CONSOLE_STATUS+0x80>
    80003704:	fffff097          	auipc	ra,0xfffff
    80003708:	43c080e7          	jalr	1084(ra) # 80002b40 <_Z12pprintStringPKc>
    for (; i < 6; i++) {
    8000370c:	0014849b          	addiw	s1,s1,1
    80003710:	0ff4f493          	andi	s1,s1,255
    80003714:	00500793          	li	a5,5
    80003718:	fc97f4e3          	bgeu	a5,s1,800036e0 <_ZN7WorkerC11workerBodyCEPv+0xe8>
    }

    pprintString("C finished!\n");
    8000371c:	00005517          	auipc	a0,0x5
    80003720:	94450513          	addi	a0,a0,-1724 # 80008060 <CONSOLE_STATUS+0x50>
    80003724:	fffff097          	auipc	ra,0xfffff
    80003728:	41c080e7          	jalr	1052(ra) # 80002b40 <_Z12pprintStringPKc>
    finishedC = true;
    8000372c:	00100793          	li	a5,1
    80003730:	00007717          	auipc	a4,0x7
    80003734:	b8f70523          	sb	a5,-1142(a4) # 8000a2ba <_ZL9finishedC>
    thread_dispatch();
    80003738:	ffffe097          	auipc	ra,0xffffe
    8000373c:	b4c080e7          	jalr	-1204(ra) # 80001284 <_Z15thread_dispatchv>
}
    80003740:	01813083          	ld	ra,24(sp)
    80003744:	01013403          	ld	s0,16(sp)
    80003748:	00813483          	ld	s1,8(sp)
    8000374c:	00013903          	ld	s2,0(sp)
    80003750:	02010113          	addi	sp,sp,32
    80003754:	00008067          	ret

0000000080003758 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80003758:	fe010113          	addi	sp,sp,-32
    8000375c:	00113c23          	sd	ra,24(sp)
    80003760:	00813823          	sd	s0,16(sp)
    80003764:	00913423          	sd	s1,8(sp)
    80003768:	01213023          	sd	s2,0(sp)
    8000376c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003770:	00a00493          	li	s1,10
    80003774:	0380006f          	j	800037ac <_ZN7WorkerD11workerBodyDEPv+0x54>
    for (; i < 13; i++) {
        pprintString("D: i="); printInteger(i); pprintString("\n");
    80003778:	00005517          	auipc	a0,0x5
    8000377c:	a7850513          	addi	a0,a0,-1416 # 800081f0 <_ZZ12printIntegermE6digits+0x120>
    80003780:	fffff097          	auipc	ra,0xfffff
    80003784:	3c0080e7          	jalr	960(ra) # 80002b40 <_Z12pprintStringPKc>
    80003788:	00048513          	mv	a0,s1
    8000378c:	fffff097          	auipc	ra,0xfffff
    80003790:	3f8080e7          	jalr	1016(ra) # 80002b84 <_Z12printIntegerm>
    80003794:	00005517          	auipc	a0,0x5
    80003798:	8fc50513          	addi	a0,a0,-1796 # 80008090 <CONSOLE_STATUS+0x80>
    8000379c:	fffff097          	auipc	ra,0xfffff
    800037a0:	3a4080e7          	jalr	932(ra) # 80002b40 <_Z12pprintStringPKc>
    for (; i < 13; i++) {
    800037a4:	0014849b          	addiw	s1,s1,1
    800037a8:	0ff4f493          	andi	s1,s1,255
    800037ac:	00c00793          	li	a5,12
    800037b0:	fc97f4e3          	bgeu	a5,s1,80003778 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    pprintString("D: dispatch\n");
    800037b4:	00005517          	auipc	a0,0x5
    800037b8:	a4450513          	addi	a0,a0,-1468 # 800081f8 <_ZZ12printIntegermE6digits+0x128>
    800037bc:	fffff097          	auipc	ra,0xfffff
    800037c0:	384080e7          	jalr	900(ra) # 80002b40 <_Z12pprintStringPKc>
    __asm__ ("li t1, 5");
    800037c4:	00500313          	li	t1,5
    thread_dispatch();
    800037c8:	ffffe097          	auipc	ra,0xffffe
    800037cc:	abc080e7          	jalr	-1348(ra) # 80001284 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800037d0:	01000513          	li	a0,16
    800037d4:	00000097          	auipc	ra,0x0
    800037d8:	c20080e7          	jalr	-992(ra) # 800033f4 <_ZL9fibonaccim>
    800037dc:	00050913          	mv	s2,a0
    pprintString("D: fibonaci="); printInteger(result); pprintString("\n");
    800037e0:	00005517          	auipc	a0,0x5
    800037e4:	a2850513          	addi	a0,a0,-1496 # 80008208 <_ZZ12printIntegermE6digits+0x138>
    800037e8:	fffff097          	auipc	ra,0xfffff
    800037ec:	358080e7          	jalr	856(ra) # 80002b40 <_Z12pprintStringPKc>
    800037f0:	00090513          	mv	a0,s2
    800037f4:	fffff097          	auipc	ra,0xfffff
    800037f8:	390080e7          	jalr	912(ra) # 80002b84 <_Z12printIntegerm>
    800037fc:	00005517          	auipc	a0,0x5
    80003800:	89450513          	addi	a0,a0,-1900 # 80008090 <CONSOLE_STATUS+0x80>
    80003804:	fffff097          	auipc	ra,0xfffff
    80003808:	33c080e7          	jalr	828(ra) # 80002b40 <_Z12pprintStringPKc>
    8000380c:	0380006f          	j	80003844 <_ZN7WorkerD11workerBodyDEPv+0xec>

    for (; i < 16; i++) {
        pprintString("D: i="); printInteger(i); pprintString("\n");
    80003810:	00005517          	auipc	a0,0x5
    80003814:	9e050513          	addi	a0,a0,-1568 # 800081f0 <_ZZ12printIntegermE6digits+0x120>
    80003818:	fffff097          	auipc	ra,0xfffff
    8000381c:	328080e7          	jalr	808(ra) # 80002b40 <_Z12pprintStringPKc>
    80003820:	00048513          	mv	a0,s1
    80003824:	fffff097          	auipc	ra,0xfffff
    80003828:	360080e7          	jalr	864(ra) # 80002b84 <_Z12printIntegerm>
    8000382c:	00005517          	auipc	a0,0x5
    80003830:	86450513          	addi	a0,a0,-1948 # 80008090 <CONSOLE_STATUS+0x80>
    80003834:	fffff097          	auipc	ra,0xfffff
    80003838:	30c080e7          	jalr	780(ra) # 80002b40 <_Z12pprintStringPKc>
    for (; i < 16; i++) {
    8000383c:	0014849b          	addiw	s1,s1,1
    80003840:	0ff4f493          	andi	s1,s1,255
    80003844:	00f00793          	li	a5,15
    80003848:	fc97f4e3          	bgeu	a5,s1,80003810 <_ZN7WorkerD11workerBodyDEPv+0xb8>
    }

    pprintString("D finished!\n");
    8000384c:	00005517          	auipc	a0,0x5
    80003850:	9cc50513          	addi	a0,a0,-1588 # 80008218 <_ZZ12printIntegermE6digits+0x148>
    80003854:	fffff097          	auipc	ra,0xfffff
    80003858:	2ec080e7          	jalr	748(ra) # 80002b40 <_Z12pprintStringPKc>
    finishedD = true;
    8000385c:	00100793          	li	a5,1
    80003860:	00007717          	auipc	a4,0x7
    80003864:	a4f70da3          	sb	a5,-1445(a4) # 8000a2bb <_ZL9finishedD>
    thread_dispatch();
    80003868:	ffffe097          	auipc	ra,0xffffe
    8000386c:	a1c080e7          	jalr	-1508(ra) # 80001284 <_Z15thread_dispatchv>
}
    80003870:	01813083          	ld	ra,24(sp)
    80003874:	01013403          	ld	s0,16(sp)
    80003878:	00813483          	ld	s1,8(sp)
    8000387c:	00013903          	ld	s2,0(sp)
    80003880:	02010113          	addi	sp,sp,32
    80003884:	00008067          	ret

0000000080003888 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80003888:	fc010113          	addi	sp,sp,-64
    8000388c:	02113c23          	sd	ra,56(sp)
    80003890:	02813823          	sd	s0,48(sp)
    80003894:	02913423          	sd	s1,40(sp)
    80003898:	03213023          	sd	s2,32(sp)
    8000389c:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    800038a0:	02000513          	li	a0,32
    800038a4:	ffffe097          	auipc	ra,0xffffe
    800038a8:	550080e7          	jalr	1360(ra) # 80001df4 <_Znwm>
    800038ac:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    800038b0:	ffffe097          	auipc	ra,0xffffe
    800038b4:	6cc080e7          	jalr	1740(ra) # 80001f7c <_ZN6ThreadC1Ev>
    800038b8:	00006797          	auipc	a5,0x6
    800038bc:	7e878793          	addi	a5,a5,2024 # 8000a0a0 <_ZTV7WorkerA+0x10>
    800038c0:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    800038c4:	fc943023          	sd	s1,-64(s0)
    pprintString("ThreadA created\n");
    800038c8:	00005517          	auipc	a0,0x5
    800038cc:	96050513          	addi	a0,a0,-1696 # 80008228 <_ZZ12printIntegermE6digits+0x158>
    800038d0:	fffff097          	auipc	ra,0xfffff
    800038d4:	270080e7          	jalr	624(ra) # 80002b40 <_Z12pprintStringPKc>

    threads[1] = new WorkerB();
    800038d8:	02000513          	li	a0,32
    800038dc:	ffffe097          	auipc	ra,0xffffe
    800038e0:	518080e7          	jalr	1304(ra) # 80001df4 <_Znwm>
    800038e4:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    800038e8:	ffffe097          	auipc	ra,0xffffe
    800038ec:	694080e7          	jalr	1684(ra) # 80001f7c <_ZN6ThreadC1Ev>
    800038f0:	00006797          	auipc	a5,0x6
    800038f4:	7d878793          	addi	a5,a5,2008 # 8000a0c8 <_ZTV7WorkerB+0x10>
    800038f8:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    800038fc:	fc943423          	sd	s1,-56(s0)
    pprintString("ThreadB created\n");
    80003900:	00005517          	auipc	a0,0x5
    80003904:	94050513          	addi	a0,a0,-1728 # 80008240 <_ZZ12printIntegermE6digits+0x170>
    80003908:	fffff097          	auipc	ra,0xfffff
    8000390c:	238080e7          	jalr	568(ra) # 80002b40 <_Z12pprintStringPKc>

    threads[2] = new WorkerC();
    80003910:	02000513          	li	a0,32
    80003914:	ffffe097          	auipc	ra,0xffffe
    80003918:	4e0080e7          	jalr	1248(ra) # 80001df4 <_Znwm>
    8000391c:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80003920:	ffffe097          	auipc	ra,0xffffe
    80003924:	65c080e7          	jalr	1628(ra) # 80001f7c <_ZN6ThreadC1Ev>
    80003928:	00006797          	auipc	a5,0x6
    8000392c:	7c878793          	addi	a5,a5,1992 # 8000a0f0 <_ZTV7WorkerC+0x10>
    80003930:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80003934:	fc943823          	sd	s1,-48(s0)
    pprintString("ThreadC created\n");
    80003938:	00005517          	auipc	a0,0x5
    8000393c:	92050513          	addi	a0,a0,-1760 # 80008258 <_ZZ12printIntegermE6digits+0x188>
    80003940:	fffff097          	auipc	ra,0xfffff
    80003944:	200080e7          	jalr	512(ra) # 80002b40 <_Z12pprintStringPKc>

    threads[3] = new WorkerD();
    80003948:	02000513          	li	a0,32
    8000394c:	ffffe097          	auipc	ra,0xffffe
    80003950:	4a8080e7          	jalr	1192(ra) # 80001df4 <_Znwm>
    80003954:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80003958:	ffffe097          	auipc	ra,0xffffe
    8000395c:	624080e7          	jalr	1572(ra) # 80001f7c <_ZN6ThreadC1Ev>
    80003960:	00006797          	auipc	a5,0x6
    80003964:	7b878793          	addi	a5,a5,1976 # 8000a118 <_ZTV7WorkerD+0x10>
    80003968:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    8000396c:	fc943c23          	sd	s1,-40(s0)
    pprintString("ThreadD created\n");
    80003970:	00005517          	auipc	a0,0x5
    80003974:	90050513          	addi	a0,a0,-1792 # 80008270 <_ZZ12printIntegermE6digits+0x1a0>
    80003978:	fffff097          	auipc	ra,0xfffff
    8000397c:	1c8080e7          	jalr	456(ra) # 80002b40 <_Z12pprintStringPKc>

    for(int i=0; i<4; i++) {
    80003980:	00000493          	li	s1,0
    80003984:	00300793          	li	a5,3
    80003988:	0297c663          	blt	a5,s1,800039b4 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    8000398c:	00349793          	slli	a5,s1,0x3
    80003990:	fe040713          	addi	a4,s0,-32
    80003994:	00f707b3          	add	a5,a4,a5
    80003998:	fe07b503          	ld	a0,-32(a5)
    8000399c:	ffffe097          	auipc	ra,0xffffe
    800039a0:	610080e7          	jalr	1552(ra) # 80001fac <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    800039a4:	0014849b          	addiw	s1,s1,1
    800039a8:	fddff06f          	j	80003984 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    800039ac:	ffffe097          	auipc	ra,0xffffe
    800039b0:	5a8080e7          	jalr	1448(ra) # 80001f54 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800039b4:	00007797          	auipc	a5,0x7
    800039b8:	9047c783          	lbu	a5,-1788(a5) # 8000a2b8 <_ZL9finishedA>
    800039bc:	fe0788e3          	beqz	a5,800039ac <_Z20Threads_CPP_API_testv+0x124>
    800039c0:	00007797          	auipc	a5,0x7
    800039c4:	8f97c783          	lbu	a5,-1799(a5) # 8000a2b9 <_ZL9finishedB>
    800039c8:	fe0782e3          	beqz	a5,800039ac <_Z20Threads_CPP_API_testv+0x124>
    800039cc:	00007797          	auipc	a5,0x7
    800039d0:	8ee7c783          	lbu	a5,-1810(a5) # 8000a2ba <_ZL9finishedC>
    800039d4:	fc078ce3          	beqz	a5,800039ac <_Z20Threads_CPP_API_testv+0x124>
    800039d8:	00007797          	auipc	a5,0x7
    800039dc:	8e37c783          	lbu	a5,-1821(a5) # 8000a2bb <_ZL9finishedD>
    800039e0:	fc0786e3          	beqz	a5,800039ac <_Z20Threads_CPP_API_testv+0x124>
    800039e4:	fc040493          	addi	s1,s0,-64
    800039e8:	0080006f          	j	800039f0 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    800039ec:	00848493          	addi	s1,s1,8
    800039f0:	fe040793          	addi	a5,s0,-32
    800039f4:	08f48663          	beq	s1,a5,80003a80 <_Z20Threads_CPP_API_testv+0x1f8>
    800039f8:	0004b503          	ld	a0,0(s1)
    800039fc:	fe0508e3          	beqz	a0,800039ec <_Z20Threads_CPP_API_testv+0x164>
    80003a00:	00053783          	ld	a5,0(a0)
    80003a04:	0087b783          	ld	a5,8(a5)
    80003a08:	000780e7          	jalr	a5
    80003a0c:	fe1ff06f          	j	800039ec <_Z20Threads_CPP_API_testv+0x164>
    80003a10:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80003a14:	00048513          	mv	a0,s1
    80003a18:	ffffe097          	auipc	ra,0xffffe
    80003a1c:	404080e7          	jalr	1028(ra) # 80001e1c <_ZdlPv>
    80003a20:	00090513          	mv	a0,s2
    80003a24:	00008097          	auipc	ra,0x8
    80003a28:	984080e7          	jalr	-1660(ra) # 8000b3a8 <_Unwind_Resume>
    80003a2c:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80003a30:	00048513          	mv	a0,s1
    80003a34:	ffffe097          	auipc	ra,0xffffe
    80003a38:	3e8080e7          	jalr	1000(ra) # 80001e1c <_ZdlPv>
    80003a3c:	00090513          	mv	a0,s2
    80003a40:	00008097          	auipc	ra,0x8
    80003a44:	968080e7          	jalr	-1688(ra) # 8000b3a8 <_Unwind_Resume>
    80003a48:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80003a4c:	00048513          	mv	a0,s1
    80003a50:	ffffe097          	auipc	ra,0xffffe
    80003a54:	3cc080e7          	jalr	972(ra) # 80001e1c <_ZdlPv>
    80003a58:	00090513          	mv	a0,s2
    80003a5c:	00008097          	auipc	ra,0x8
    80003a60:	94c080e7          	jalr	-1716(ra) # 8000b3a8 <_Unwind_Resume>
    80003a64:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80003a68:	00048513          	mv	a0,s1
    80003a6c:	ffffe097          	auipc	ra,0xffffe
    80003a70:	3b0080e7          	jalr	944(ra) # 80001e1c <_ZdlPv>
    80003a74:	00090513          	mv	a0,s2
    80003a78:	00008097          	auipc	ra,0x8
    80003a7c:	930080e7          	jalr	-1744(ra) # 8000b3a8 <_Unwind_Resume>
}
    80003a80:	03813083          	ld	ra,56(sp)
    80003a84:	03013403          	ld	s0,48(sp)
    80003a88:	02813483          	ld	s1,40(sp)
    80003a8c:	02013903          	ld	s2,32(sp)
    80003a90:	04010113          	addi	sp,sp,64
    80003a94:	00008067          	ret

0000000080003a98 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80003a98:	ff010113          	addi	sp,sp,-16
    80003a9c:	00113423          	sd	ra,8(sp)
    80003aa0:	00813023          	sd	s0,0(sp)
    80003aa4:	01010413          	addi	s0,sp,16
    80003aa8:	00006797          	auipc	a5,0x6
    80003aac:	5f878793          	addi	a5,a5,1528 # 8000a0a0 <_ZTV7WorkerA+0x10>
    80003ab0:	00f53023          	sd	a5,0(a0)
    80003ab4:	ffffe097          	auipc	ra,0xffffe
    80003ab8:	390080e7          	jalr	912(ra) # 80001e44 <_ZN6ThreadD1Ev>
    80003abc:	00813083          	ld	ra,8(sp)
    80003ac0:	00013403          	ld	s0,0(sp)
    80003ac4:	01010113          	addi	sp,sp,16
    80003ac8:	00008067          	ret

0000000080003acc <_ZN7WorkerAD0Ev>:
    80003acc:	fe010113          	addi	sp,sp,-32
    80003ad0:	00113c23          	sd	ra,24(sp)
    80003ad4:	00813823          	sd	s0,16(sp)
    80003ad8:	00913423          	sd	s1,8(sp)
    80003adc:	02010413          	addi	s0,sp,32
    80003ae0:	00050493          	mv	s1,a0
    80003ae4:	00006797          	auipc	a5,0x6
    80003ae8:	5bc78793          	addi	a5,a5,1468 # 8000a0a0 <_ZTV7WorkerA+0x10>
    80003aec:	00f53023          	sd	a5,0(a0)
    80003af0:	ffffe097          	auipc	ra,0xffffe
    80003af4:	354080e7          	jalr	852(ra) # 80001e44 <_ZN6ThreadD1Ev>
    80003af8:	00048513          	mv	a0,s1
    80003afc:	ffffe097          	auipc	ra,0xffffe
    80003b00:	320080e7          	jalr	800(ra) # 80001e1c <_ZdlPv>
    80003b04:	01813083          	ld	ra,24(sp)
    80003b08:	01013403          	ld	s0,16(sp)
    80003b0c:	00813483          	ld	s1,8(sp)
    80003b10:	02010113          	addi	sp,sp,32
    80003b14:	00008067          	ret

0000000080003b18 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80003b18:	ff010113          	addi	sp,sp,-16
    80003b1c:	00113423          	sd	ra,8(sp)
    80003b20:	00813023          	sd	s0,0(sp)
    80003b24:	01010413          	addi	s0,sp,16
    80003b28:	00006797          	auipc	a5,0x6
    80003b2c:	5a078793          	addi	a5,a5,1440 # 8000a0c8 <_ZTV7WorkerB+0x10>
    80003b30:	00f53023          	sd	a5,0(a0)
    80003b34:	ffffe097          	auipc	ra,0xffffe
    80003b38:	310080e7          	jalr	784(ra) # 80001e44 <_ZN6ThreadD1Ev>
    80003b3c:	00813083          	ld	ra,8(sp)
    80003b40:	00013403          	ld	s0,0(sp)
    80003b44:	01010113          	addi	sp,sp,16
    80003b48:	00008067          	ret

0000000080003b4c <_ZN7WorkerBD0Ev>:
    80003b4c:	fe010113          	addi	sp,sp,-32
    80003b50:	00113c23          	sd	ra,24(sp)
    80003b54:	00813823          	sd	s0,16(sp)
    80003b58:	00913423          	sd	s1,8(sp)
    80003b5c:	02010413          	addi	s0,sp,32
    80003b60:	00050493          	mv	s1,a0
    80003b64:	00006797          	auipc	a5,0x6
    80003b68:	56478793          	addi	a5,a5,1380 # 8000a0c8 <_ZTV7WorkerB+0x10>
    80003b6c:	00f53023          	sd	a5,0(a0)
    80003b70:	ffffe097          	auipc	ra,0xffffe
    80003b74:	2d4080e7          	jalr	724(ra) # 80001e44 <_ZN6ThreadD1Ev>
    80003b78:	00048513          	mv	a0,s1
    80003b7c:	ffffe097          	auipc	ra,0xffffe
    80003b80:	2a0080e7          	jalr	672(ra) # 80001e1c <_ZdlPv>
    80003b84:	01813083          	ld	ra,24(sp)
    80003b88:	01013403          	ld	s0,16(sp)
    80003b8c:	00813483          	ld	s1,8(sp)
    80003b90:	02010113          	addi	sp,sp,32
    80003b94:	00008067          	ret

0000000080003b98 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80003b98:	ff010113          	addi	sp,sp,-16
    80003b9c:	00113423          	sd	ra,8(sp)
    80003ba0:	00813023          	sd	s0,0(sp)
    80003ba4:	01010413          	addi	s0,sp,16
    80003ba8:	00006797          	auipc	a5,0x6
    80003bac:	54878793          	addi	a5,a5,1352 # 8000a0f0 <_ZTV7WorkerC+0x10>
    80003bb0:	00f53023          	sd	a5,0(a0)
    80003bb4:	ffffe097          	auipc	ra,0xffffe
    80003bb8:	290080e7          	jalr	656(ra) # 80001e44 <_ZN6ThreadD1Ev>
    80003bbc:	00813083          	ld	ra,8(sp)
    80003bc0:	00013403          	ld	s0,0(sp)
    80003bc4:	01010113          	addi	sp,sp,16
    80003bc8:	00008067          	ret

0000000080003bcc <_ZN7WorkerCD0Ev>:
    80003bcc:	fe010113          	addi	sp,sp,-32
    80003bd0:	00113c23          	sd	ra,24(sp)
    80003bd4:	00813823          	sd	s0,16(sp)
    80003bd8:	00913423          	sd	s1,8(sp)
    80003bdc:	02010413          	addi	s0,sp,32
    80003be0:	00050493          	mv	s1,a0
    80003be4:	00006797          	auipc	a5,0x6
    80003be8:	50c78793          	addi	a5,a5,1292 # 8000a0f0 <_ZTV7WorkerC+0x10>
    80003bec:	00f53023          	sd	a5,0(a0)
    80003bf0:	ffffe097          	auipc	ra,0xffffe
    80003bf4:	254080e7          	jalr	596(ra) # 80001e44 <_ZN6ThreadD1Ev>
    80003bf8:	00048513          	mv	a0,s1
    80003bfc:	ffffe097          	auipc	ra,0xffffe
    80003c00:	220080e7          	jalr	544(ra) # 80001e1c <_ZdlPv>
    80003c04:	01813083          	ld	ra,24(sp)
    80003c08:	01013403          	ld	s0,16(sp)
    80003c0c:	00813483          	ld	s1,8(sp)
    80003c10:	02010113          	addi	sp,sp,32
    80003c14:	00008067          	ret

0000000080003c18 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80003c18:	ff010113          	addi	sp,sp,-16
    80003c1c:	00113423          	sd	ra,8(sp)
    80003c20:	00813023          	sd	s0,0(sp)
    80003c24:	01010413          	addi	s0,sp,16
    80003c28:	00006797          	auipc	a5,0x6
    80003c2c:	4f078793          	addi	a5,a5,1264 # 8000a118 <_ZTV7WorkerD+0x10>
    80003c30:	00f53023          	sd	a5,0(a0)
    80003c34:	ffffe097          	auipc	ra,0xffffe
    80003c38:	210080e7          	jalr	528(ra) # 80001e44 <_ZN6ThreadD1Ev>
    80003c3c:	00813083          	ld	ra,8(sp)
    80003c40:	00013403          	ld	s0,0(sp)
    80003c44:	01010113          	addi	sp,sp,16
    80003c48:	00008067          	ret

0000000080003c4c <_ZN7WorkerDD0Ev>:
    80003c4c:	fe010113          	addi	sp,sp,-32
    80003c50:	00113c23          	sd	ra,24(sp)
    80003c54:	00813823          	sd	s0,16(sp)
    80003c58:	00913423          	sd	s1,8(sp)
    80003c5c:	02010413          	addi	s0,sp,32
    80003c60:	00050493          	mv	s1,a0
    80003c64:	00006797          	auipc	a5,0x6
    80003c68:	4b478793          	addi	a5,a5,1204 # 8000a118 <_ZTV7WorkerD+0x10>
    80003c6c:	00f53023          	sd	a5,0(a0)
    80003c70:	ffffe097          	auipc	ra,0xffffe
    80003c74:	1d4080e7          	jalr	468(ra) # 80001e44 <_ZN6ThreadD1Ev>
    80003c78:	00048513          	mv	a0,s1
    80003c7c:	ffffe097          	auipc	ra,0xffffe
    80003c80:	1a0080e7          	jalr	416(ra) # 80001e1c <_ZdlPv>
    80003c84:	01813083          	ld	ra,24(sp)
    80003c88:	01013403          	ld	s0,16(sp)
    80003c8c:	00813483          	ld	s1,8(sp)
    80003c90:	02010113          	addi	sp,sp,32
    80003c94:	00008067          	ret

0000000080003c98 <_ZN7WorkerA3runEv>:
    void run() override {
    80003c98:	ff010113          	addi	sp,sp,-16
    80003c9c:	00113423          	sd	ra,8(sp)
    80003ca0:	00813023          	sd	s0,0(sp)
    80003ca4:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80003ca8:	00000593          	li	a1,0
    80003cac:	fffff097          	auipc	ra,0xfffff
    80003cb0:	7bc080e7          	jalr	1980(ra) # 80003468 <_ZN7WorkerA11workerBodyAEPv>
    }
    80003cb4:	00813083          	ld	ra,8(sp)
    80003cb8:	00013403          	ld	s0,0(sp)
    80003cbc:	01010113          	addi	sp,sp,16
    80003cc0:	00008067          	ret

0000000080003cc4 <_ZN7WorkerB3runEv>:
    void run() override {
    80003cc4:	ff010113          	addi	sp,sp,-16
    80003cc8:	00113423          	sd	ra,8(sp)
    80003ccc:	00813023          	sd	s0,0(sp)
    80003cd0:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80003cd4:	00000593          	li	a1,0
    80003cd8:	00000097          	auipc	ra,0x0
    80003cdc:	854080e7          	jalr	-1964(ra) # 8000352c <_ZN7WorkerB11workerBodyBEPv>
    }
    80003ce0:	00813083          	ld	ra,8(sp)
    80003ce4:	00013403          	ld	s0,0(sp)
    80003ce8:	01010113          	addi	sp,sp,16
    80003cec:	00008067          	ret

0000000080003cf0 <_ZN7WorkerC3runEv>:
    void run() override {
    80003cf0:	ff010113          	addi	sp,sp,-16
    80003cf4:	00113423          	sd	ra,8(sp)
    80003cf8:	00813023          	sd	s0,0(sp)
    80003cfc:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80003d00:	00000593          	li	a1,0
    80003d04:	00000097          	auipc	ra,0x0
    80003d08:	8f4080e7          	jalr	-1804(ra) # 800035f8 <_ZN7WorkerC11workerBodyCEPv>
    }
    80003d0c:	00813083          	ld	ra,8(sp)
    80003d10:	00013403          	ld	s0,0(sp)
    80003d14:	01010113          	addi	sp,sp,16
    80003d18:	00008067          	ret

0000000080003d1c <_ZN7WorkerD3runEv>:
    void run() override {
    80003d1c:	ff010113          	addi	sp,sp,-16
    80003d20:	00113423          	sd	ra,8(sp)
    80003d24:	00813023          	sd	s0,0(sp)
    80003d28:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80003d2c:	00000593          	li	a1,0
    80003d30:	00000097          	auipc	ra,0x0
    80003d34:	a28080e7          	jalr	-1496(ra) # 80003758 <_ZN7WorkerD11workerBodyDEPv>
    }
    80003d38:	00813083          	ld	ra,8(sp)
    80003d3c:	00013403          	ld	s0,0(sp)
    80003d40:	01010113          	addi	sp,sp,16
    80003d44:	00008067          	ret

0000000080003d48 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003d48:	fe010113          	addi	sp,sp,-32
    80003d4c:	00113c23          	sd	ra,24(sp)
    80003d50:	00813823          	sd	s0,16(sp)
    80003d54:	00913423          	sd	s1,8(sp)
    80003d58:	01213023          	sd	s2,0(sp)
    80003d5c:	02010413          	addi	s0,sp,32
    80003d60:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003d64:	00100793          	li	a5,1
    80003d68:	02a7f863          	bgeu	a5,a0,80003d98 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003d6c:	00a00793          	li	a5,10
    80003d70:	02f577b3          	remu	a5,a0,a5
    80003d74:	02078e63          	beqz	a5,80003db0 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003d78:	fff48513          	addi	a0,s1,-1
    80003d7c:	00000097          	auipc	ra,0x0
    80003d80:	fcc080e7          	jalr	-52(ra) # 80003d48 <_ZL9fibonaccim>
    80003d84:	00050913          	mv	s2,a0
    80003d88:	ffe48513          	addi	a0,s1,-2
    80003d8c:	00000097          	auipc	ra,0x0
    80003d90:	fbc080e7          	jalr	-68(ra) # 80003d48 <_ZL9fibonaccim>
    80003d94:	00a90533          	add	a0,s2,a0
}
    80003d98:	01813083          	ld	ra,24(sp)
    80003d9c:	01013403          	ld	s0,16(sp)
    80003da0:	00813483          	ld	s1,8(sp)
    80003da4:	00013903          	ld	s2,0(sp)
    80003da8:	02010113          	addi	sp,sp,32
    80003dac:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003db0:	ffffd097          	auipc	ra,0xffffd
    80003db4:	4d4080e7          	jalr	1236(ra) # 80001284 <_Z15thread_dispatchv>
    80003db8:	fc1ff06f          	j	80003d78 <_ZL9fibonaccim+0x30>

0000000080003dbc <_ZL11workerBodyDPv>:
    pprintString("C finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80003dbc:	fe010113          	addi	sp,sp,-32
    80003dc0:	00113c23          	sd	ra,24(sp)
    80003dc4:	00813823          	sd	s0,16(sp)
    80003dc8:	00913423          	sd	s1,8(sp)
    80003dcc:	01213023          	sd	s2,0(sp)
    80003dd0:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003dd4:	00a00493          	li	s1,10
    80003dd8:	0380006f          	j	80003e10 <_ZL11workerBodyDPv+0x54>
    for (; i < 13; i++) {
        pprintString("D: i="); printInteger(i); pprintString("\n");
    80003ddc:	00004517          	auipc	a0,0x4
    80003de0:	41450513          	addi	a0,a0,1044 # 800081f0 <_ZZ12printIntegermE6digits+0x120>
    80003de4:	fffff097          	auipc	ra,0xfffff
    80003de8:	d5c080e7          	jalr	-676(ra) # 80002b40 <_Z12pprintStringPKc>
    80003dec:	00048513          	mv	a0,s1
    80003df0:	fffff097          	auipc	ra,0xfffff
    80003df4:	d94080e7          	jalr	-620(ra) # 80002b84 <_Z12printIntegerm>
    80003df8:	00004517          	auipc	a0,0x4
    80003dfc:	29850513          	addi	a0,a0,664 # 80008090 <CONSOLE_STATUS+0x80>
    80003e00:	fffff097          	auipc	ra,0xfffff
    80003e04:	d40080e7          	jalr	-704(ra) # 80002b40 <_Z12pprintStringPKc>
    for (; i < 13; i++) {
    80003e08:	0014849b          	addiw	s1,s1,1
    80003e0c:	0ff4f493          	andi	s1,s1,255
    80003e10:	00c00793          	li	a5,12
    80003e14:	fc97f4e3          	bgeu	a5,s1,80003ddc <_ZL11workerBodyDPv+0x20>
    }

    pprintString("D: dispatch\n");
    80003e18:	00004517          	auipc	a0,0x4
    80003e1c:	3e050513          	addi	a0,a0,992 # 800081f8 <_ZZ12printIntegermE6digits+0x128>
    80003e20:	fffff097          	auipc	ra,0xfffff
    80003e24:	d20080e7          	jalr	-736(ra) # 80002b40 <_Z12pprintStringPKc>
    __asm__ ("li t1, 5");
    80003e28:	00500313          	li	t1,5
    thread_dispatch();
    80003e2c:	ffffd097          	auipc	ra,0xffffd
    80003e30:	458080e7          	jalr	1112(ra) # 80001284 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003e34:	01000513          	li	a0,16
    80003e38:	00000097          	auipc	ra,0x0
    80003e3c:	f10080e7          	jalr	-240(ra) # 80003d48 <_ZL9fibonaccim>
    80003e40:	00050913          	mv	s2,a0
    pprintString("D: fibonaci="); printInteger(result); pprintString("\n");
    80003e44:	00004517          	auipc	a0,0x4
    80003e48:	3c450513          	addi	a0,a0,964 # 80008208 <_ZZ12printIntegermE6digits+0x138>
    80003e4c:	fffff097          	auipc	ra,0xfffff
    80003e50:	cf4080e7          	jalr	-780(ra) # 80002b40 <_Z12pprintStringPKc>
    80003e54:	00090513          	mv	a0,s2
    80003e58:	fffff097          	auipc	ra,0xfffff
    80003e5c:	d2c080e7          	jalr	-724(ra) # 80002b84 <_Z12printIntegerm>
    80003e60:	00004517          	auipc	a0,0x4
    80003e64:	23050513          	addi	a0,a0,560 # 80008090 <CONSOLE_STATUS+0x80>
    80003e68:	fffff097          	auipc	ra,0xfffff
    80003e6c:	cd8080e7          	jalr	-808(ra) # 80002b40 <_Z12pprintStringPKc>
    80003e70:	0380006f          	j	80003ea8 <_ZL11workerBodyDPv+0xec>

    for (; i < 16; i++) {
        pprintString("D: i="); printInteger(i); pprintString("\n");
    80003e74:	00004517          	auipc	a0,0x4
    80003e78:	37c50513          	addi	a0,a0,892 # 800081f0 <_ZZ12printIntegermE6digits+0x120>
    80003e7c:	fffff097          	auipc	ra,0xfffff
    80003e80:	cc4080e7          	jalr	-828(ra) # 80002b40 <_Z12pprintStringPKc>
    80003e84:	00048513          	mv	a0,s1
    80003e88:	fffff097          	auipc	ra,0xfffff
    80003e8c:	cfc080e7          	jalr	-772(ra) # 80002b84 <_Z12printIntegerm>
    80003e90:	00004517          	auipc	a0,0x4
    80003e94:	20050513          	addi	a0,a0,512 # 80008090 <CONSOLE_STATUS+0x80>
    80003e98:	fffff097          	auipc	ra,0xfffff
    80003e9c:	ca8080e7          	jalr	-856(ra) # 80002b40 <_Z12pprintStringPKc>
    for (; i < 16; i++) {
    80003ea0:	0014849b          	addiw	s1,s1,1
    80003ea4:	0ff4f493          	andi	s1,s1,255
    80003ea8:	00f00793          	li	a5,15
    80003eac:	fc97f4e3          	bgeu	a5,s1,80003e74 <_ZL11workerBodyDPv+0xb8>
    }

    pprintString("D finished!\n");
    80003eb0:	00004517          	auipc	a0,0x4
    80003eb4:	36850513          	addi	a0,a0,872 # 80008218 <_ZZ12printIntegermE6digits+0x148>
    80003eb8:	fffff097          	auipc	ra,0xfffff
    80003ebc:	c88080e7          	jalr	-888(ra) # 80002b40 <_Z12pprintStringPKc>
    finishedD = true;
    80003ec0:	00100793          	li	a5,1
    80003ec4:	00006717          	auipc	a4,0x6
    80003ec8:	3ef70c23          	sb	a5,1016(a4) # 8000a2bc <_ZL9finishedD>
    thread_dispatch();
    80003ecc:	ffffd097          	auipc	ra,0xffffd
    80003ed0:	3b8080e7          	jalr	952(ra) # 80001284 <_Z15thread_dispatchv>
}
    80003ed4:	01813083          	ld	ra,24(sp)
    80003ed8:	01013403          	ld	s0,16(sp)
    80003edc:	00813483          	ld	s1,8(sp)
    80003ee0:	00013903          	ld	s2,0(sp)
    80003ee4:	02010113          	addi	sp,sp,32
    80003ee8:	00008067          	ret

0000000080003eec <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80003eec:	fe010113          	addi	sp,sp,-32
    80003ef0:	00113c23          	sd	ra,24(sp)
    80003ef4:	00813823          	sd	s0,16(sp)
    80003ef8:	00913423          	sd	s1,8(sp)
    80003efc:	01213023          	sd	s2,0(sp)
    80003f00:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003f04:	00000493          	li	s1,0
    80003f08:	0380006f          	j	80003f40 <_ZL11workerBodyCPv+0x54>
        pprintString("C: i="); printInteger(i); pprintString("\n");
    80003f0c:	00004517          	auipc	a0,0x4
    80003f10:	14c50513          	addi	a0,a0,332 # 80008058 <CONSOLE_STATUS+0x48>
    80003f14:	fffff097          	auipc	ra,0xfffff
    80003f18:	c2c080e7          	jalr	-980(ra) # 80002b40 <_Z12pprintStringPKc>
    80003f1c:	00048513          	mv	a0,s1
    80003f20:	fffff097          	auipc	ra,0xfffff
    80003f24:	c64080e7          	jalr	-924(ra) # 80002b84 <_Z12printIntegerm>
    80003f28:	00004517          	auipc	a0,0x4
    80003f2c:	16850513          	addi	a0,a0,360 # 80008090 <CONSOLE_STATUS+0x80>
    80003f30:	fffff097          	auipc	ra,0xfffff
    80003f34:	c10080e7          	jalr	-1008(ra) # 80002b40 <_Z12pprintStringPKc>
    for (; i < 3; i++) {
    80003f38:	0014849b          	addiw	s1,s1,1
    80003f3c:	0ff4f493          	andi	s1,s1,255
    80003f40:	00200793          	li	a5,2
    80003f44:	fc97f4e3          	bgeu	a5,s1,80003f0c <_ZL11workerBodyCPv+0x20>
    pprintString("C: dispatch\n");
    80003f48:	00004517          	auipc	a0,0x4
    80003f4c:	28050513          	addi	a0,a0,640 # 800081c8 <_ZZ12printIntegermE6digits+0xf8>
    80003f50:	fffff097          	auipc	ra,0xfffff
    80003f54:	bf0080e7          	jalr	-1040(ra) # 80002b40 <_Z12pprintStringPKc>
    __asm__ ("li t1, 7");
    80003f58:	00700313          	li	t1,7
    thread_dispatch();
    80003f5c:	ffffd097          	auipc	ra,0xffffd
    80003f60:	328080e7          	jalr	808(ra) # 80001284 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003f64:	00030913          	mv	s2,t1
    pprintString("C: t1="); printInteger(t1); pprintString("\n");
    80003f68:	00004517          	auipc	a0,0x4
    80003f6c:	27050513          	addi	a0,a0,624 # 800081d8 <_ZZ12printIntegermE6digits+0x108>
    80003f70:	fffff097          	auipc	ra,0xfffff
    80003f74:	bd0080e7          	jalr	-1072(ra) # 80002b40 <_Z12pprintStringPKc>
    80003f78:	00090513          	mv	a0,s2
    80003f7c:	fffff097          	auipc	ra,0xfffff
    80003f80:	c08080e7          	jalr	-1016(ra) # 80002b84 <_Z12printIntegerm>
    80003f84:	00004517          	auipc	a0,0x4
    80003f88:	10c50513          	addi	a0,a0,268 # 80008090 <CONSOLE_STATUS+0x80>
    80003f8c:	fffff097          	auipc	ra,0xfffff
    80003f90:	bb4080e7          	jalr	-1100(ra) # 80002b40 <_Z12pprintStringPKc>
    uint64 result = fibonacci(12);
    80003f94:	00c00513          	li	a0,12
    80003f98:	00000097          	auipc	ra,0x0
    80003f9c:	db0080e7          	jalr	-592(ra) # 80003d48 <_ZL9fibonaccim>
    80003fa0:	00050913          	mv	s2,a0
    pprintString("C: fibonaci="); printInteger(result); pprintString("\n");
    80003fa4:	00004517          	auipc	a0,0x4
    80003fa8:	23c50513          	addi	a0,a0,572 # 800081e0 <_ZZ12printIntegermE6digits+0x110>
    80003fac:	fffff097          	auipc	ra,0xfffff
    80003fb0:	b94080e7          	jalr	-1132(ra) # 80002b40 <_Z12pprintStringPKc>
    80003fb4:	00090513          	mv	a0,s2
    80003fb8:	fffff097          	auipc	ra,0xfffff
    80003fbc:	bcc080e7          	jalr	-1076(ra) # 80002b84 <_Z12printIntegerm>
    80003fc0:	00004517          	auipc	a0,0x4
    80003fc4:	0d050513          	addi	a0,a0,208 # 80008090 <CONSOLE_STATUS+0x80>
    80003fc8:	fffff097          	auipc	ra,0xfffff
    80003fcc:	b78080e7          	jalr	-1160(ra) # 80002b40 <_Z12pprintStringPKc>
    80003fd0:	0380006f          	j	80004008 <_ZL11workerBodyCPv+0x11c>
        pprintString("C: i="); printInteger(i); pprintString("\n");
    80003fd4:	00004517          	auipc	a0,0x4
    80003fd8:	08450513          	addi	a0,a0,132 # 80008058 <CONSOLE_STATUS+0x48>
    80003fdc:	fffff097          	auipc	ra,0xfffff
    80003fe0:	b64080e7          	jalr	-1180(ra) # 80002b40 <_Z12pprintStringPKc>
    80003fe4:	00048513          	mv	a0,s1
    80003fe8:	fffff097          	auipc	ra,0xfffff
    80003fec:	b9c080e7          	jalr	-1124(ra) # 80002b84 <_Z12printIntegerm>
    80003ff0:	00004517          	auipc	a0,0x4
    80003ff4:	0a050513          	addi	a0,a0,160 # 80008090 <CONSOLE_STATUS+0x80>
    80003ff8:	fffff097          	auipc	ra,0xfffff
    80003ffc:	b48080e7          	jalr	-1208(ra) # 80002b40 <_Z12pprintStringPKc>
    for (; i < 6; i++) {
    80004000:	0014849b          	addiw	s1,s1,1
    80004004:	0ff4f493          	andi	s1,s1,255
    80004008:	00500793          	li	a5,5
    8000400c:	fc97f4e3          	bgeu	a5,s1,80003fd4 <_ZL11workerBodyCPv+0xe8>
    pprintString("C finished!\n");
    80004010:	00004517          	auipc	a0,0x4
    80004014:	05050513          	addi	a0,a0,80 # 80008060 <CONSOLE_STATUS+0x50>
    80004018:	fffff097          	auipc	ra,0xfffff
    8000401c:	b28080e7          	jalr	-1240(ra) # 80002b40 <_Z12pprintStringPKc>
    finishedC = true;
    80004020:	00100793          	li	a5,1
    80004024:	00006717          	auipc	a4,0x6
    80004028:	28f70ca3          	sb	a5,665(a4) # 8000a2bd <_ZL9finishedC>
    thread_dispatch();
    8000402c:	ffffd097          	auipc	ra,0xffffd
    80004030:	258080e7          	jalr	600(ra) # 80001284 <_Z15thread_dispatchv>
}
    80004034:	01813083          	ld	ra,24(sp)
    80004038:	01013403          	ld	s0,16(sp)
    8000403c:	00813483          	ld	s1,8(sp)
    80004040:	00013903          	ld	s2,0(sp)
    80004044:	02010113          	addi	sp,sp,32
    80004048:	00008067          	ret

000000008000404c <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    8000404c:	fe010113          	addi	sp,sp,-32
    80004050:	00113c23          	sd	ra,24(sp)
    80004054:	00813823          	sd	s0,16(sp)
    80004058:	00913423          	sd	s1,8(sp)
    8000405c:	01213023          	sd	s2,0(sp)
    80004060:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004064:	00000913          	li	s2,0
    80004068:	0380006f          	j	800040a0 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    8000406c:	ffffd097          	auipc	ra,0xffffd
    80004070:	218080e7          	jalr	536(ra) # 80001284 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004074:	00148493          	addi	s1,s1,1
    80004078:	000027b7          	lui	a5,0x2
    8000407c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004080:	0097ee63          	bltu	a5,s1,8000409c <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004084:	00000713          	li	a4,0
    80004088:	000077b7          	lui	a5,0x7
    8000408c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004090:	fce7eee3          	bltu	a5,a4,8000406c <_ZL11workerBodyBPv+0x20>
    80004094:	00170713          	addi	a4,a4,1
    80004098:	ff1ff06f          	j	80004088 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    8000409c:	00190913          	addi	s2,s2,1
    800040a0:	00f00793          	li	a5,15
    800040a4:	0327ec63          	bltu	a5,s2,800040dc <_ZL11workerBodyBPv+0x90>
        pprintString("B: i="); printInteger(i); pprintString("\n");
    800040a8:	00004517          	auipc	a0,0x4
    800040ac:	f9850513          	addi	a0,a0,-104 # 80008040 <CONSOLE_STATUS+0x30>
    800040b0:	fffff097          	auipc	ra,0xfffff
    800040b4:	a90080e7          	jalr	-1392(ra) # 80002b40 <_Z12pprintStringPKc>
    800040b8:	00090513          	mv	a0,s2
    800040bc:	fffff097          	auipc	ra,0xfffff
    800040c0:	ac8080e7          	jalr	-1336(ra) # 80002b84 <_Z12printIntegerm>
    800040c4:	00004517          	auipc	a0,0x4
    800040c8:	fcc50513          	addi	a0,a0,-52 # 80008090 <CONSOLE_STATUS+0x80>
    800040cc:	fffff097          	auipc	ra,0xfffff
    800040d0:	a74080e7          	jalr	-1420(ra) # 80002b40 <_Z12pprintStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800040d4:	00000493          	li	s1,0
    800040d8:	fa1ff06f          	j	80004078 <_ZL11workerBodyBPv+0x2c>
    pprintString("B finished!\n");
    800040dc:	00004517          	auipc	a0,0x4
    800040e0:	f6c50513          	addi	a0,a0,-148 # 80008048 <CONSOLE_STATUS+0x38>
    800040e4:	fffff097          	auipc	ra,0xfffff
    800040e8:	a5c080e7          	jalr	-1444(ra) # 80002b40 <_Z12pprintStringPKc>
    finishedB = true;
    800040ec:	00100793          	li	a5,1
    800040f0:	00006717          	auipc	a4,0x6
    800040f4:	1cf70723          	sb	a5,462(a4) # 8000a2be <_ZL9finishedB>
    thread_dispatch();
    800040f8:	ffffd097          	auipc	ra,0xffffd
    800040fc:	18c080e7          	jalr	396(ra) # 80001284 <_Z15thread_dispatchv>
}
    80004100:	01813083          	ld	ra,24(sp)
    80004104:	01013403          	ld	s0,16(sp)
    80004108:	00813483          	ld	s1,8(sp)
    8000410c:	00013903          	ld	s2,0(sp)
    80004110:	02010113          	addi	sp,sp,32
    80004114:	00008067          	ret

0000000080004118 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80004118:	fe010113          	addi	sp,sp,-32
    8000411c:	00113c23          	sd	ra,24(sp)
    80004120:	00813823          	sd	s0,16(sp)
    80004124:	00913423          	sd	s1,8(sp)
    80004128:	01213023          	sd	s2,0(sp)
    8000412c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80004130:	00000913          	li	s2,0
    80004134:	0380006f          	j	8000416c <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80004138:	ffffd097          	auipc	ra,0xffffd
    8000413c:	14c080e7          	jalr	332(ra) # 80001284 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004140:	00148493          	addi	s1,s1,1
    80004144:	000027b7          	lui	a5,0x2
    80004148:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000414c:	0097ee63          	bltu	a5,s1,80004168 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004150:	00000713          	li	a4,0
    80004154:	000077b7          	lui	a5,0x7
    80004158:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000415c:	fce7eee3          	bltu	a5,a4,80004138 <_ZL11workerBodyAPv+0x20>
    80004160:	00170713          	addi	a4,a4,1
    80004164:	ff1ff06f          	j	80004154 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80004168:	00190913          	addi	s2,s2,1
    8000416c:	00900793          	li	a5,9
    80004170:	0327ec63          	bltu	a5,s2,800041a8 <_ZL11workerBodyAPv+0x90>
        pprintString("A: i="); printInteger(i); pprintString("\n");
    80004174:	00004517          	auipc	a0,0x4
    80004178:	eb450513          	addi	a0,a0,-332 # 80008028 <CONSOLE_STATUS+0x18>
    8000417c:	fffff097          	auipc	ra,0xfffff
    80004180:	9c4080e7          	jalr	-1596(ra) # 80002b40 <_Z12pprintStringPKc>
    80004184:	00090513          	mv	a0,s2
    80004188:	fffff097          	auipc	ra,0xfffff
    8000418c:	9fc080e7          	jalr	-1540(ra) # 80002b84 <_Z12printIntegerm>
    80004190:	00004517          	auipc	a0,0x4
    80004194:	f0050513          	addi	a0,a0,-256 # 80008090 <CONSOLE_STATUS+0x80>
    80004198:	fffff097          	auipc	ra,0xfffff
    8000419c:	9a8080e7          	jalr	-1624(ra) # 80002b40 <_Z12pprintStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800041a0:	00000493          	li	s1,0
    800041a4:	fa1ff06f          	j	80004144 <_ZL11workerBodyAPv+0x2c>
    pprintString("A finished!\n");
    800041a8:	00004517          	auipc	a0,0x4
    800041ac:	e8850513          	addi	a0,a0,-376 # 80008030 <CONSOLE_STATUS+0x20>
    800041b0:	fffff097          	auipc	ra,0xfffff
    800041b4:	990080e7          	jalr	-1648(ra) # 80002b40 <_Z12pprintStringPKc>
    finishedA = true;
    800041b8:	00100793          	li	a5,1
    800041bc:	00006717          	auipc	a4,0x6
    800041c0:	10f701a3          	sb	a5,259(a4) # 8000a2bf <_ZL9finishedA>
}
    800041c4:	01813083          	ld	ra,24(sp)
    800041c8:	01013403          	ld	s0,16(sp)
    800041cc:	00813483          	ld	s1,8(sp)
    800041d0:	00013903          	ld	s2,0(sp)
    800041d4:	02010113          	addi	sp,sp,32
    800041d8:	00008067          	ret

00000000800041dc <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    800041dc:	fd010113          	addi	sp,sp,-48
    800041e0:	02113423          	sd	ra,40(sp)
    800041e4:	02813023          	sd	s0,32(sp)
    800041e8:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    800041ec:	00000613          	li	a2,0
    800041f0:	00000597          	auipc	a1,0x0
    800041f4:	f2858593          	addi	a1,a1,-216 # 80004118 <_ZL11workerBodyAPv>
    800041f8:	fd040513          	addi	a0,s0,-48
    800041fc:	ffffd097          	auipc	ra,0xffffd
    80004200:	024080e7          	jalr	36(ra) # 80001220 <_Z13thread_createPP3TCBPFvPvES2_>
    pprintString("ThreadA created\n");
    80004204:	00004517          	auipc	a0,0x4
    80004208:	02450513          	addi	a0,a0,36 # 80008228 <_ZZ12printIntegermE6digits+0x158>
    8000420c:	fffff097          	auipc	ra,0xfffff
    80004210:	934080e7          	jalr	-1740(ra) # 80002b40 <_Z12pprintStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80004214:	00000613          	li	a2,0
    80004218:	00000597          	auipc	a1,0x0
    8000421c:	e3458593          	addi	a1,a1,-460 # 8000404c <_ZL11workerBodyBPv>
    80004220:	fd840513          	addi	a0,s0,-40
    80004224:	ffffd097          	auipc	ra,0xffffd
    80004228:	ffc080e7          	jalr	-4(ra) # 80001220 <_Z13thread_createPP3TCBPFvPvES2_>
    pprintString("ThreadB created\n");
    8000422c:	00004517          	auipc	a0,0x4
    80004230:	01450513          	addi	a0,a0,20 # 80008240 <_ZZ12printIntegermE6digits+0x170>
    80004234:	fffff097          	auipc	ra,0xfffff
    80004238:	90c080e7          	jalr	-1780(ra) # 80002b40 <_Z12pprintStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    8000423c:	00000613          	li	a2,0
    80004240:	00000597          	auipc	a1,0x0
    80004244:	cac58593          	addi	a1,a1,-852 # 80003eec <_ZL11workerBodyCPv>
    80004248:	fe040513          	addi	a0,s0,-32
    8000424c:	ffffd097          	auipc	ra,0xffffd
    80004250:	fd4080e7          	jalr	-44(ra) # 80001220 <_Z13thread_createPP3TCBPFvPvES2_>
    pprintString("ThreadC created\n");
    80004254:	00004517          	auipc	a0,0x4
    80004258:	00450513          	addi	a0,a0,4 # 80008258 <_ZZ12printIntegermE6digits+0x188>
    8000425c:	fffff097          	auipc	ra,0xfffff
    80004260:	8e4080e7          	jalr	-1820(ra) # 80002b40 <_Z12pprintStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80004264:	00000613          	li	a2,0
    80004268:	00000597          	auipc	a1,0x0
    8000426c:	b5458593          	addi	a1,a1,-1196 # 80003dbc <_ZL11workerBodyDPv>
    80004270:	fe840513          	addi	a0,s0,-24
    80004274:	ffffd097          	auipc	ra,0xffffd
    80004278:	fac080e7          	jalr	-84(ra) # 80001220 <_Z13thread_createPP3TCBPFvPvES2_>
    pprintString("ThreadD created\n");
    8000427c:	00004517          	auipc	a0,0x4
    80004280:	ff450513          	addi	a0,a0,-12 # 80008270 <_ZZ12printIntegermE6digits+0x1a0>
    80004284:	fffff097          	auipc	ra,0xfffff
    80004288:	8bc080e7          	jalr	-1860(ra) # 80002b40 <_Z12pprintStringPKc>
    8000428c:	00c0006f          	j	80004298 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80004290:	ffffd097          	auipc	ra,0xffffd
    80004294:	ff4080e7          	jalr	-12(ra) # 80001284 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80004298:	00006797          	auipc	a5,0x6
    8000429c:	0277c783          	lbu	a5,39(a5) # 8000a2bf <_ZL9finishedA>
    800042a0:	fe0788e3          	beqz	a5,80004290 <_Z18Threads_C_API_testv+0xb4>
    800042a4:	00006797          	auipc	a5,0x6
    800042a8:	01a7c783          	lbu	a5,26(a5) # 8000a2be <_ZL9finishedB>
    800042ac:	fe0782e3          	beqz	a5,80004290 <_Z18Threads_C_API_testv+0xb4>
    800042b0:	00006797          	auipc	a5,0x6
    800042b4:	00d7c783          	lbu	a5,13(a5) # 8000a2bd <_ZL9finishedC>
    800042b8:	fc078ce3          	beqz	a5,80004290 <_Z18Threads_C_API_testv+0xb4>
    800042bc:	00006797          	auipc	a5,0x6
    800042c0:	0007c783          	lbu	a5,0(a5) # 8000a2bc <_ZL9finishedD>
    800042c4:	fc0786e3          	beqz	a5,80004290 <_Z18Threads_C_API_testv+0xb4>
    }

}
    800042c8:	02813083          	ld	ra,40(sp)
    800042cc:	02013403          	ld	s0,32(sp)
    800042d0:	03010113          	addi	sp,sp,48
    800042d4:	00008067          	ret

00000000800042d8 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    800042d8:	fd010113          	addi	sp,sp,-48
    800042dc:	02113423          	sd	ra,40(sp)
    800042e0:	02813023          	sd	s0,32(sp)
    800042e4:	00913c23          	sd	s1,24(sp)
    800042e8:	01213823          	sd	s2,16(sp)
    800042ec:	01313423          	sd	s3,8(sp)
    800042f0:	03010413          	addi	s0,sp,48
    800042f4:	00050993          	mv	s3,a0
    800042f8:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    800042fc:	00000913          	li	s2,0
    80004300:	00c0006f          	j	8000430c <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = __getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004304:	ffffe097          	auipc	ra,0xffffe
    80004308:	c50080e7          	jalr	-944(ra) # 80001f54 <_ZN6Thread8dispatchEv>
    while ((key = __getc()) != 0x1b) {
    8000430c:	00004097          	auipc	ra,0x4
    80004310:	92c080e7          	jalr	-1748(ra) # 80007c38 <__getc>
    80004314:	0005059b          	sext.w	a1,a0
    80004318:	01b00793          	li	a5,27
    8000431c:	02f58a63          	beq	a1,a5,80004350 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    80004320:	0084b503          	ld	a0,8(s1)
    80004324:	00001097          	auipc	ra,0x1
    80004328:	c64080e7          	jalr	-924(ra) # 80004f88 <_ZN9BufferCPP3putEi>
        i++;
    8000432c:	0019071b          	addiw	a4,s2,1
    80004330:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004334:	0004a683          	lw	a3,0(s1)
    80004338:	0026979b          	slliw	a5,a3,0x2
    8000433c:	00d787bb          	addw	a5,a5,a3
    80004340:	0017979b          	slliw	a5,a5,0x1
    80004344:	02f767bb          	remw	a5,a4,a5
    80004348:	fc0792e3          	bnez	a5,8000430c <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    8000434c:	fb9ff06f          	j	80004304 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80004350:	00100793          	li	a5,1
    80004354:	00006717          	auipc	a4,0x6
    80004358:	f6f72623          	sw	a5,-148(a4) # 8000a2c0 <_ZL9threadEnd>
    td->buffer->put('!');
    8000435c:	0209b783          	ld	a5,32(s3)
    80004360:	02100593          	li	a1,33
    80004364:	0087b503          	ld	a0,8(a5)
    80004368:	00001097          	auipc	ra,0x1
    8000436c:	c20080e7          	jalr	-992(ra) # 80004f88 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80004370:	0104b503          	ld	a0,16(s1)
    80004374:	ffffe097          	auipc	ra,0xffffe
    80004378:	d70080e7          	jalr	-656(ra) # 800020e4 <_ZN9Semaphore6signalEv>
}
    8000437c:	02813083          	ld	ra,40(sp)
    80004380:	02013403          	ld	s0,32(sp)
    80004384:	01813483          	ld	s1,24(sp)
    80004388:	01013903          	ld	s2,16(sp)
    8000438c:	00813983          	ld	s3,8(sp)
    80004390:	03010113          	addi	sp,sp,48
    80004394:	00008067          	ret

0000000080004398 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    80004398:	fe010113          	addi	sp,sp,-32
    8000439c:	00113c23          	sd	ra,24(sp)
    800043a0:	00813823          	sd	s0,16(sp)
    800043a4:	00913423          	sd	s1,8(sp)
    800043a8:	01213023          	sd	s2,0(sp)
    800043ac:	02010413          	addi	s0,sp,32
    800043b0:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800043b4:	00000913          	li	s2,0
    800043b8:	00c0006f          	j	800043c4 <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    800043bc:	ffffe097          	auipc	ra,0xffffe
    800043c0:	b98080e7          	jalr	-1128(ra) # 80001f54 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    800043c4:	00006797          	auipc	a5,0x6
    800043c8:	efc7a783          	lw	a5,-260(a5) # 8000a2c0 <_ZL9threadEnd>
    800043cc:	02079e63          	bnez	a5,80004408 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    800043d0:	0004a583          	lw	a1,0(s1)
    800043d4:	0305859b          	addiw	a1,a1,48
    800043d8:	0084b503          	ld	a0,8(s1)
    800043dc:	00001097          	auipc	ra,0x1
    800043e0:	bac080e7          	jalr	-1108(ra) # 80004f88 <_ZN9BufferCPP3putEi>
        i++;
    800043e4:	0019071b          	addiw	a4,s2,1
    800043e8:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800043ec:	0004a683          	lw	a3,0(s1)
    800043f0:	0026979b          	slliw	a5,a3,0x2
    800043f4:	00d787bb          	addw	a5,a5,a3
    800043f8:	0017979b          	slliw	a5,a5,0x1
    800043fc:	02f767bb          	remw	a5,a4,a5
    80004400:	fc0792e3          	bnez	a5,800043c4 <_ZN12ProducerSync8producerEPv+0x2c>
    80004404:	fb9ff06f          	j	800043bc <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    80004408:	0104b503          	ld	a0,16(s1)
    8000440c:	ffffe097          	auipc	ra,0xffffe
    80004410:	cd8080e7          	jalr	-808(ra) # 800020e4 <_ZN9Semaphore6signalEv>
}
    80004414:	01813083          	ld	ra,24(sp)
    80004418:	01013403          	ld	s0,16(sp)
    8000441c:	00813483          	ld	s1,8(sp)
    80004420:	00013903          	ld	s2,0(sp)
    80004424:	02010113          	addi	sp,sp,32
    80004428:	00008067          	ret

000000008000442c <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    8000442c:	fd010113          	addi	sp,sp,-48
    80004430:	02113423          	sd	ra,40(sp)
    80004434:	02813023          	sd	s0,32(sp)
    80004438:	00913c23          	sd	s1,24(sp)
    8000443c:	01213823          	sd	s2,16(sp)
    80004440:	01313423          	sd	s3,8(sp)
    80004444:	01413023          	sd	s4,0(sp)
    80004448:	03010413          	addi	s0,sp,48
    8000444c:	00050993          	mv	s3,a0
    80004450:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004454:	00000a13          	li	s4,0
    80004458:	01c0006f          	j	80004474 <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        __putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    8000445c:	ffffe097          	auipc	ra,0xffffe
    80004460:	af8080e7          	jalr	-1288(ra) # 80001f54 <_ZN6Thread8dispatchEv>
    80004464:	0500006f          	j	800044b4 <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            __putc('\n');
    80004468:	00a00513          	li	a0,10
    8000446c:	00003097          	auipc	ra,0x3
    80004470:	790080e7          	jalr	1936(ra) # 80007bfc <__putc>
    while (!threadEnd) {
    80004474:	00006797          	auipc	a5,0x6
    80004478:	e4c7a783          	lw	a5,-436(a5) # 8000a2c0 <_ZL9threadEnd>
    8000447c:	06079263          	bnez	a5,800044e0 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    80004480:	00893503          	ld	a0,8(s2)
    80004484:	00001097          	auipc	ra,0x1
    80004488:	b94080e7          	jalr	-1132(ra) # 80005018 <_ZN9BufferCPP3getEv>
        i++;
    8000448c:	001a049b          	addiw	s1,s4,1
    80004490:	00048a1b          	sext.w	s4,s1
        __putc(key);
    80004494:	0ff57513          	andi	a0,a0,255
    80004498:	00003097          	auipc	ra,0x3
    8000449c:	764080e7          	jalr	1892(ra) # 80007bfc <__putc>
        if (i % (5 * data->id) == 0) {
    800044a0:	00092703          	lw	a4,0(s2)
    800044a4:	0027179b          	slliw	a5,a4,0x2
    800044a8:	00e787bb          	addw	a5,a5,a4
    800044ac:	02f4e7bb          	remw	a5,s1,a5
    800044b0:	fa0786e3          	beqz	a5,8000445c <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    800044b4:	05000793          	li	a5,80
    800044b8:	02f4e4bb          	remw	s1,s1,a5
    800044bc:	fa049ce3          	bnez	s1,80004474 <_ZN12ConsumerSync8consumerEPv+0x48>
    800044c0:	fa9ff06f          	j	80004468 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    800044c4:	0209b783          	ld	a5,32(s3)
    800044c8:	0087b503          	ld	a0,8(a5)
    800044cc:	00001097          	auipc	ra,0x1
    800044d0:	b4c080e7          	jalr	-1204(ra) # 80005018 <_ZN9BufferCPP3getEv>
        __putc(key);
    800044d4:	0ff57513          	andi	a0,a0,255
    800044d8:	00003097          	auipc	ra,0x3
    800044dc:	724080e7          	jalr	1828(ra) # 80007bfc <__putc>
    while (td->buffer->getCnt() > 0) {
    800044e0:	0209b783          	ld	a5,32(s3)
    800044e4:	0087b503          	ld	a0,8(a5)
    800044e8:	00001097          	auipc	ra,0x1
    800044ec:	bbc080e7          	jalr	-1092(ra) # 800050a4 <_ZN9BufferCPP6getCntEv>
    800044f0:	fca04ae3          	bgtz	a0,800044c4 <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    800044f4:	01093503          	ld	a0,16(s2)
    800044f8:	ffffe097          	auipc	ra,0xffffe
    800044fc:	bec080e7          	jalr	-1044(ra) # 800020e4 <_ZN9Semaphore6signalEv>
}
    80004500:	02813083          	ld	ra,40(sp)
    80004504:	02013403          	ld	s0,32(sp)
    80004508:	01813483          	ld	s1,24(sp)
    8000450c:	01013903          	ld	s2,16(sp)
    80004510:	00813983          	ld	s3,8(sp)
    80004514:	00013a03          	ld	s4,0(sp)
    80004518:	03010113          	addi	sp,sp,48
    8000451c:	00008067          	ret

0000000080004520 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80004520:	f8010113          	addi	sp,sp,-128
    80004524:	06113c23          	sd	ra,120(sp)
    80004528:	06813823          	sd	s0,112(sp)
    8000452c:	06913423          	sd	s1,104(sp)
    80004530:	07213023          	sd	s2,96(sp)
    80004534:	05313c23          	sd	s3,88(sp)
    80004538:	05413823          	sd	s4,80(sp)
    8000453c:	05513423          	sd	s5,72(sp)
    80004540:	05613023          	sd	s6,64(sp)
    80004544:	03713c23          	sd	s7,56(sp)
    80004548:	03813823          	sd	s8,48(sp)
    8000454c:	03913423          	sd	s9,40(sp)
    80004550:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80004554:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80004558:	00004517          	auipc	a0,0x4
    8000455c:	b8850513          	addi	a0,a0,-1144 # 800080e0 <_ZZ12printIntegermE6digits+0x10>
    80004560:	00000097          	auipc	ra,0x0
    80004564:	604080e7          	jalr	1540(ra) # 80004b64 <_Z11printStringPKc>
    getString(input, 30);
    80004568:	01e00593          	li	a1,30
    8000456c:	f8040493          	addi	s1,s0,-128
    80004570:	00048513          	mv	a0,s1
    80004574:	00000097          	auipc	ra,0x0
    80004578:	678080e7          	jalr	1656(ra) # 80004bec <_Z9getStringPci>
    threadNum = stringToInt(input);
    8000457c:	00048513          	mv	a0,s1
    80004580:	00000097          	auipc	ra,0x0
    80004584:	744080e7          	jalr	1860(ra) # 80004cc4 <_Z11stringToIntPKc>
    80004588:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    8000458c:	00004517          	auipc	a0,0x4
    80004590:	b7450513          	addi	a0,a0,-1164 # 80008100 <_ZZ12printIntegermE6digits+0x30>
    80004594:	00000097          	auipc	ra,0x0
    80004598:	5d0080e7          	jalr	1488(ra) # 80004b64 <_Z11printStringPKc>
    getString(input, 30);
    8000459c:	01e00593          	li	a1,30
    800045a0:	00048513          	mv	a0,s1
    800045a4:	00000097          	auipc	ra,0x0
    800045a8:	648080e7          	jalr	1608(ra) # 80004bec <_Z9getStringPci>
    n = stringToInt(input);
    800045ac:	00048513          	mv	a0,s1
    800045b0:	00000097          	auipc	ra,0x0
    800045b4:	714080e7          	jalr	1812(ra) # 80004cc4 <_Z11stringToIntPKc>
    800045b8:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    800045bc:	00004517          	auipc	a0,0x4
    800045c0:	b6450513          	addi	a0,a0,-1180 # 80008120 <_ZZ12printIntegermE6digits+0x50>
    800045c4:	00000097          	auipc	ra,0x0
    800045c8:	5a0080e7          	jalr	1440(ra) # 80004b64 <_Z11printStringPKc>
    800045cc:	00000613          	li	a2,0
    800045d0:	00a00593          	li	a1,10
    800045d4:	00090513          	mv	a0,s2
    800045d8:	00000097          	auipc	ra,0x0
    800045dc:	73c080e7          	jalr	1852(ra) # 80004d14 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    800045e0:	00004517          	auipc	a0,0x4
    800045e4:	b5850513          	addi	a0,a0,-1192 # 80008138 <_ZZ12printIntegermE6digits+0x68>
    800045e8:	00000097          	auipc	ra,0x0
    800045ec:	57c080e7          	jalr	1404(ra) # 80004b64 <_Z11printStringPKc>
    800045f0:	00000613          	li	a2,0
    800045f4:	00a00593          	li	a1,10
    800045f8:	00048513          	mv	a0,s1
    800045fc:	00000097          	auipc	ra,0x0
    80004600:	718080e7          	jalr	1816(ra) # 80004d14 <_Z8printIntiii>
    printString(".\n");
    80004604:	00004517          	auipc	a0,0x4
    80004608:	b4c50513          	addi	a0,a0,-1204 # 80008150 <_ZZ12printIntegermE6digits+0x80>
    8000460c:	00000097          	auipc	ra,0x0
    80004610:	558080e7          	jalr	1368(ra) # 80004b64 <_Z11printStringPKc>
    if(threadNum > n) {
    80004614:	0324c463          	blt	s1,s2,8000463c <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80004618:	03205c63          	blez	s2,80004650 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    8000461c:	03800513          	li	a0,56
    80004620:	ffffd097          	auipc	ra,0xffffd
    80004624:	7d4080e7          	jalr	2004(ra) # 80001df4 <_Znwm>
    80004628:	00050a93          	mv	s5,a0
    8000462c:	00048593          	mv	a1,s1
    80004630:	00001097          	auipc	ra,0x1
    80004634:	804080e7          	jalr	-2044(ra) # 80004e34 <_ZN9BufferCPPC1Ei>
    80004638:	0300006f          	j	80004668 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    8000463c:	00004517          	auipc	a0,0x4
    80004640:	b1c50513          	addi	a0,a0,-1252 # 80008158 <_ZZ12printIntegermE6digits+0x88>
    80004644:	00000097          	auipc	ra,0x0
    80004648:	520080e7          	jalr	1312(ra) # 80004b64 <_Z11printStringPKc>
        return;
    8000464c:	0140006f          	j	80004660 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004650:	00004517          	auipc	a0,0x4
    80004654:	b4850513          	addi	a0,a0,-1208 # 80008198 <_ZZ12printIntegermE6digits+0xc8>
    80004658:	00000097          	auipc	ra,0x0
    8000465c:	50c080e7          	jalr	1292(ra) # 80004b64 <_Z11printStringPKc>
        return;
    80004660:	000b8113          	mv	sp,s7
    80004664:	2380006f          	j	8000489c <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    80004668:	01000513          	li	a0,16
    8000466c:	ffffd097          	auipc	ra,0xffffd
    80004670:	788080e7          	jalr	1928(ra) # 80001df4 <_Znwm>
    80004674:	00050493          	mv	s1,a0
    80004678:	00000593          	li	a1,0
    8000467c:	ffffe097          	auipc	ra,0xffffe
    80004680:	a04080e7          	jalr	-1532(ra) # 80002080 <_ZN9SemaphoreC1Ej>
    80004684:	00006797          	auipc	a5,0x6
    80004688:	c497b223          	sd	s1,-956(a5) # 8000a2c8 <_ZL10waitForAll>
    Thread* threads[threadNum];
    8000468c:	00391793          	slli	a5,s2,0x3
    80004690:	00f78793          	addi	a5,a5,15
    80004694:	ff07f793          	andi	a5,a5,-16
    80004698:	40f10133          	sub	sp,sp,a5
    8000469c:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    800046a0:	0019071b          	addiw	a4,s2,1
    800046a4:	00171793          	slli	a5,a4,0x1
    800046a8:	00e787b3          	add	a5,a5,a4
    800046ac:	00379793          	slli	a5,a5,0x3
    800046b0:	00f78793          	addi	a5,a5,15
    800046b4:	ff07f793          	andi	a5,a5,-16
    800046b8:	40f10133          	sub	sp,sp,a5
    800046bc:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    800046c0:	00191c13          	slli	s8,s2,0x1
    800046c4:	012c07b3          	add	a5,s8,s2
    800046c8:	00379793          	slli	a5,a5,0x3
    800046cc:	00fa07b3          	add	a5,s4,a5
    800046d0:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    800046d4:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    800046d8:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    800046dc:	02800513          	li	a0,40
    800046e0:	ffffd097          	auipc	ra,0xffffd
    800046e4:	714080e7          	jalr	1812(ra) # 80001df4 <_Znwm>
    800046e8:	00050b13          	mv	s6,a0
    800046ec:	012c0c33          	add	s8,s8,s2
    800046f0:	003c1c13          	slli	s8,s8,0x3
    800046f4:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    800046f8:	ffffe097          	auipc	ra,0xffffe
    800046fc:	884080e7          	jalr	-1916(ra) # 80001f7c <_ZN6ThreadC1Ev>
    80004700:	00006797          	auipc	a5,0x6
    80004704:	a9078793          	addi	a5,a5,-1392 # 8000a190 <_ZTV12ConsumerSync+0x10>
    80004708:	00fb3023          	sd	a5,0(s6)
    8000470c:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    80004710:	000b0513          	mv	a0,s6
    80004714:	ffffe097          	auipc	ra,0xffffe
    80004718:	898080e7          	jalr	-1896(ra) # 80001fac <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    8000471c:	00000493          	li	s1,0
    80004720:	0380006f          	j	80004758 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80004724:	00006797          	auipc	a5,0x6
    80004728:	a4478793          	addi	a5,a5,-1468 # 8000a168 <_ZTV12ProducerSync+0x10>
    8000472c:	00fcb023          	sd	a5,0(s9)
    80004730:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    80004734:	00349793          	slli	a5,s1,0x3
    80004738:	00f987b3          	add	a5,s3,a5
    8000473c:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80004740:	00349793          	slli	a5,s1,0x3
    80004744:	00f987b3          	add	a5,s3,a5
    80004748:	0007b503          	ld	a0,0(a5)
    8000474c:	ffffe097          	auipc	ra,0xffffe
    80004750:	860080e7          	jalr	-1952(ra) # 80001fac <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80004754:	0014849b          	addiw	s1,s1,1
    80004758:	0b24d063          	bge	s1,s2,800047f8 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    8000475c:	00149793          	slli	a5,s1,0x1
    80004760:	009787b3          	add	a5,a5,s1
    80004764:	00379793          	slli	a5,a5,0x3
    80004768:	00fa07b3          	add	a5,s4,a5
    8000476c:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80004770:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80004774:	00006717          	auipc	a4,0x6
    80004778:	b5473703          	ld	a4,-1196(a4) # 8000a2c8 <_ZL10waitForAll>
    8000477c:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80004780:	02905863          	blez	s1,800047b0 <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    80004784:	02800513          	li	a0,40
    80004788:	ffffd097          	auipc	ra,0xffffd
    8000478c:	66c080e7          	jalr	1644(ra) # 80001df4 <_Znwm>
    80004790:	00050c93          	mv	s9,a0
    80004794:	00149c13          	slli	s8,s1,0x1
    80004798:	009c0c33          	add	s8,s8,s1
    8000479c:	003c1c13          	slli	s8,s8,0x3
    800047a0:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    800047a4:	ffffd097          	auipc	ra,0xffffd
    800047a8:	7d8080e7          	jalr	2008(ra) # 80001f7c <_ZN6ThreadC1Ev>
    800047ac:	f79ff06f          	j	80004724 <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    800047b0:	02800513          	li	a0,40
    800047b4:	ffffd097          	auipc	ra,0xffffd
    800047b8:	640080e7          	jalr	1600(ra) # 80001df4 <_Znwm>
    800047bc:	00050c93          	mv	s9,a0
    800047c0:	00149c13          	slli	s8,s1,0x1
    800047c4:	009c0c33          	add	s8,s8,s1
    800047c8:	003c1c13          	slli	s8,s8,0x3
    800047cc:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    800047d0:	ffffd097          	auipc	ra,0xffffd
    800047d4:	7ac080e7          	jalr	1964(ra) # 80001f7c <_ZN6ThreadC1Ev>
    800047d8:	00006797          	auipc	a5,0x6
    800047dc:	96878793          	addi	a5,a5,-1688 # 8000a140 <_ZTV16ProducerKeyboard+0x10>
    800047e0:	00fcb023          	sd	a5,0(s9)
    800047e4:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    800047e8:	00349793          	slli	a5,s1,0x3
    800047ec:	00f987b3          	add	a5,s3,a5
    800047f0:	0197b023          	sd	s9,0(a5)
    800047f4:	f4dff06f          	j	80004740 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    800047f8:	ffffd097          	auipc	ra,0xffffd
    800047fc:	75c080e7          	jalr	1884(ra) # 80001f54 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80004800:	00000493          	li	s1,0
    80004804:	00994e63          	blt	s2,s1,80004820 <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    80004808:	00006517          	auipc	a0,0x6
    8000480c:	ac053503          	ld	a0,-1344(a0) # 8000a2c8 <_ZL10waitForAll>
    80004810:	ffffe097          	auipc	ra,0xffffe
    80004814:	8a8080e7          	jalr	-1880(ra) # 800020b8 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80004818:	0014849b          	addiw	s1,s1,1
    8000481c:	fe9ff06f          	j	80004804 <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    80004820:	00000493          	li	s1,0
    80004824:	0080006f          	j	8000482c <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    80004828:	0014849b          	addiw	s1,s1,1
    8000482c:	0324d263          	bge	s1,s2,80004850 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80004830:	00349793          	slli	a5,s1,0x3
    80004834:	00f987b3          	add	a5,s3,a5
    80004838:	0007b503          	ld	a0,0(a5)
    8000483c:	fe0506e3          	beqz	a0,80004828 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80004840:	00053783          	ld	a5,0(a0)
    80004844:	0087b783          	ld	a5,8(a5)
    80004848:	000780e7          	jalr	a5
    8000484c:	fddff06f          	j	80004828 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80004850:	000b0a63          	beqz	s6,80004864 <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    80004854:	000b3783          	ld	a5,0(s6)
    80004858:	0087b783          	ld	a5,8(a5)
    8000485c:	000b0513          	mv	a0,s6
    80004860:	000780e7          	jalr	a5
    delete waitForAll;
    80004864:	00006517          	auipc	a0,0x6
    80004868:	a6453503          	ld	a0,-1436(a0) # 8000a2c8 <_ZL10waitForAll>
    8000486c:	00050863          	beqz	a0,8000487c <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    80004870:	00053783          	ld	a5,0(a0)
    80004874:	0087b783          	ld	a5,8(a5)
    80004878:	000780e7          	jalr	a5
    delete buffer;
    8000487c:	000a8e63          	beqz	s5,80004898 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    80004880:	000a8513          	mv	a0,s5
    80004884:	00001097          	auipc	ra,0x1
    80004888:	8a8080e7          	jalr	-1880(ra) # 8000512c <_ZN9BufferCPPD1Ev>
    8000488c:	000a8513          	mv	a0,s5
    80004890:	ffffd097          	auipc	ra,0xffffd
    80004894:	58c080e7          	jalr	1420(ra) # 80001e1c <_ZdlPv>
    80004898:	000b8113          	mv	sp,s7

}
    8000489c:	f8040113          	addi	sp,s0,-128
    800048a0:	07813083          	ld	ra,120(sp)
    800048a4:	07013403          	ld	s0,112(sp)
    800048a8:	06813483          	ld	s1,104(sp)
    800048ac:	06013903          	ld	s2,96(sp)
    800048b0:	05813983          	ld	s3,88(sp)
    800048b4:	05013a03          	ld	s4,80(sp)
    800048b8:	04813a83          	ld	s5,72(sp)
    800048bc:	04013b03          	ld	s6,64(sp)
    800048c0:	03813b83          	ld	s7,56(sp)
    800048c4:	03013c03          	ld	s8,48(sp)
    800048c8:	02813c83          	ld	s9,40(sp)
    800048cc:	08010113          	addi	sp,sp,128
    800048d0:	00008067          	ret
    800048d4:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    800048d8:	000a8513          	mv	a0,s5
    800048dc:	ffffd097          	auipc	ra,0xffffd
    800048e0:	540080e7          	jalr	1344(ra) # 80001e1c <_ZdlPv>
    800048e4:	00048513          	mv	a0,s1
    800048e8:	00007097          	auipc	ra,0x7
    800048ec:	ac0080e7          	jalr	-1344(ra) # 8000b3a8 <_Unwind_Resume>
    800048f0:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    800048f4:	00048513          	mv	a0,s1
    800048f8:	ffffd097          	auipc	ra,0xffffd
    800048fc:	524080e7          	jalr	1316(ra) # 80001e1c <_ZdlPv>
    80004900:	00090513          	mv	a0,s2
    80004904:	00007097          	auipc	ra,0x7
    80004908:	aa4080e7          	jalr	-1372(ra) # 8000b3a8 <_Unwind_Resume>
    8000490c:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    80004910:	000b0513          	mv	a0,s6
    80004914:	ffffd097          	auipc	ra,0xffffd
    80004918:	508080e7          	jalr	1288(ra) # 80001e1c <_ZdlPv>
    8000491c:	00048513          	mv	a0,s1
    80004920:	00007097          	auipc	ra,0x7
    80004924:	a88080e7          	jalr	-1400(ra) # 8000b3a8 <_Unwind_Resume>
    80004928:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    8000492c:	000c8513          	mv	a0,s9
    80004930:	ffffd097          	auipc	ra,0xffffd
    80004934:	4ec080e7          	jalr	1260(ra) # 80001e1c <_ZdlPv>
    80004938:	00048513          	mv	a0,s1
    8000493c:	00007097          	auipc	ra,0x7
    80004940:	a6c080e7          	jalr	-1428(ra) # 8000b3a8 <_Unwind_Resume>
    80004944:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80004948:	000c8513          	mv	a0,s9
    8000494c:	ffffd097          	auipc	ra,0xffffd
    80004950:	4d0080e7          	jalr	1232(ra) # 80001e1c <_ZdlPv>
    80004954:	00048513          	mv	a0,s1
    80004958:	00007097          	auipc	ra,0x7
    8000495c:	a50080e7          	jalr	-1456(ra) # 8000b3a8 <_Unwind_Resume>

0000000080004960 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80004960:	ff010113          	addi	sp,sp,-16
    80004964:	00113423          	sd	ra,8(sp)
    80004968:	00813023          	sd	s0,0(sp)
    8000496c:	01010413          	addi	s0,sp,16
    80004970:	00006797          	auipc	a5,0x6
    80004974:	82078793          	addi	a5,a5,-2016 # 8000a190 <_ZTV12ConsumerSync+0x10>
    80004978:	00f53023          	sd	a5,0(a0)
    8000497c:	ffffd097          	auipc	ra,0xffffd
    80004980:	4c8080e7          	jalr	1224(ra) # 80001e44 <_ZN6ThreadD1Ev>
    80004984:	00813083          	ld	ra,8(sp)
    80004988:	00013403          	ld	s0,0(sp)
    8000498c:	01010113          	addi	sp,sp,16
    80004990:	00008067          	ret

0000000080004994 <_ZN12ConsumerSyncD0Ev>:
    80004994:	fe010113          	addi	sp,sp,-32
    80004998:	00113c23          	sd	ra,24(sp)
    8000499c:	00813823          	sd	s0,16(sp)
    800049a0:	00913423          	sd	s1,8(sp)
    800049a4:	02010413          	addi	s0,sp,32
    800049a8:	00050493          	mv	s1,a0
    800049ac:	00005797          	auipc	a5,0x5
    800049b0:	7e478793          	addi	a5,a5,2020 # 8000a190 <_ZTV12ConsumerSync+0x10>
    800049b4:	00f53023          	sd	a5,0(a0)
    800049b8:	ffffd097          	auipc	ra,0xffffd
    800049bc:	48c080e7          	jalr	1164(ra) # 80001e44 <_ZN6ThreadD1Ev>
    800049c0:	00048513          	mv	a0,s1
    800049c4:	ffffd097          	auipc	ra,0xffffd
    800049c8:	458080e7          	jalr	1112(ra) # 80001e1c <_ZdlPv>
    800049cc:	01813083          	ld	ra,24(sp)
    800049d0:	01013403          	ld	s0,16(sp)
    800049d4:	00813483          	ld	s1,8(sp)
    800049d8:	02010113          	addi	sp,sp,32
    800049dc:	00008067          	ret

00000000800049e0 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    800049e0:	ff010113          	addi	sp,sp,-16
    800049e4:	00113423          	sd	ra,8(sp)
    800049e8:	00813023          	sd	s0,0(sp)
    800049ec:	01010413          	addi	s0,sp,16
    800049f0:	00005797          	auipc	a5,0x5
    800049f4:	77878793          	addi	a5,a5,1912 # 8000a168 <_ZTV12ProducerSync+0x10>
    800049f8:	00f53023          	sd	a5,0(a0)
    800049fc:	ffffd097          	auipc	ra,0xffffd
    80004a00:	448080e7          	jalr	1096(ra) # 80001e44 <_ZN6ThreadD1Ev>
    80004a04:	00813083          	ld	ra,8(sp)
    80004a08:	00013403          	ld	s0,0(sp)
    80004a0c:	01010113          	addi	sp,sp,16
    80004a10:	00008067          	ret

0000000080004a14 <_ZN12ProducerSyncD0Ev>:
    80004a14:	fe010113          	addi	sp,sp,-32
    80004a18:	00113c23          	sd	ra,24(sp)
    80004a1c:	00813823          	sd	s0,16(sp)
    80004a20:	00913423          	sd	s1,8(sp)
    80004a24:	02010413          	addi	s0,sp,32
    80004a28:	00050493          	mv	s1,a0
    80004a2c:	00005797          	auipc	a5,0x5
    80004a30:	73c78793          	addi	a5,a5,1852 # 8000a168 <_ZTV12ProducerSync+0x10>
    80004a34:	00f53023          	sd	a5,0(a0)
    80004a38:	ffffd097          	auipc	ra,0xffffd
    80004a3c:	40c080e7          	jalr	1036(ra) # 80001e44 <_ZN6ThreadD1Ev>
    80004a40:	00048513          	mv	a0,s1
    80004a44:	ffffd097          	auipc	ra,0xffffd
    80004a48:	3d8080e7          	jalr	984(ra) # 80001e1c <_ZdlPv>
    80004a4c:	01813083          	ld	ra,24(sp)
    80004a50:	01013403          	ld	s0,16(sp)
    80004a54:	00813483          	ld	s1,8(sp)
    80004a58:	02010113          	addi	sp,sp,32
    80004a5c:	00008067          	ret

0000000080004a60 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80004a60:	ff010113          	addi	sp,sp,-16
    80004a64:	00113423          	sd	ra,8(sp)
    80004a68:	00813023          	sd	s0,0(sp)
    80004a6c:	01010413          	addi	s0,sp,16
    80004a70:	00005797          	auipc	a5,0x5
    80004a74:	6d078793          	addi	a5,a5,1744 # 8000a140 <_ZTV16ProducerKeyboard+0x10>
    80004a78:	00f53023          	sd	a5,0(a0)
    80004a7c:	ffffd097          	auipc	ra,0xffffd
    80004a80:	3c8080e7          	jalr	968(ra) # 80001e44 <_ZN6ThreadD1Ev>
    80004a84:	00813083          	ld	ra,8(sp)
    80004a88:	00013403          	ld	s0,0(sp)
    80004a8c:	01010113          	addi	sp,sp,16
    80004a90:	00008067          	ret

0000000080004a94 <_ZN16ProducerKeyboardD0Ev>:
    80004a94:	fe010113          	addi	sp,sp,-32
    80004a98:	00113c23          	sd	ra,24(sp)
    80004a9c:	00813823          	sd	s0,16(sp)
    80004aa0:	00913423          	sd	s1,8(sp)
    80004aa4:	02010413          	addi	s0,sp,32
    80004aa8:	00050493          	mv	s1,a0
    80004aac:	00005797          	auipc	a5,0x5
    80004ab0:	69478793          	addi	a5,a5,1684 # 8000a140 <_ZTV16ProducerKeyboard+0x10>
    80004ab4:	00f53023          	sd	a5,0(a0)
    80004ab8:	ffffd097          	auipc	ra,0xffffd
    80004abc:	38c080e7          	jalr	908(ra) # 80001e44 <_ZN6ThreadD1Ev>
    80004ac0:	00048513          	mv	a0,s1
    80004ac4:	ffffd097          	auipc	ra,0xffffd
    80004ac8:	358080e7          	jalr	856(ra) # 80001e1c <_ZdlPv>
    80004acc:	01813083          	ld	ra,24(sp)
    80004ad0:	01013403          	ld	s0,16(sp)
    80004ad4:	00813483          	ld	s1,8(sp)
    80004ad8:	02010113          	addi	sp,sp,32
    80004adc:	00008067          	ret

0000000080004ae0 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80004ae0:	ff010113          	addi	sp,sp,-16
    80004ae4:	00113423          	sd	ra,8(sp)
    80004ae8:	00813023          	sd	s0,0(sp)
    80004aec:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80004af0:	02053583          	ld	a1,32(a0)
    80004af4:	fffff097          	auipc	ra,0xfffff
    80004af8:	7e4080e7          	jalr	2020(ra) # 800042d8 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80004afc:	00813083          	ld	ra,8(sp)
    80004b00:	00013403          	ld	s0,0(sp)
    80004b04:	01010113          	addi	sp,sp,16
    80004b08:	00008067          	ret

0000000080004b0c <_ZN12ProducerSync3runEv>:
    void run() override {
    80004b0c:	ff010113          	addi	sp,sp,-16
    80004b10:	00113423          	sd	ra,8(sp)
    80004b14:	00813023          	sd	s0,0(sp)
    80004b18:	01010413          	addi	s0,sp,16
        producer(td);
    80004b1c:	02053583          	ld	a1,32(a0)
    80004b20:	00000097          	auipc	ra,0x0
    80004b24:	878080e7          	jalr	-1928(ra) # 80004398 <_ZN12ProducerSync8producerEPv>
    }
    80004b28:	00813083          	ld	ra,8(sp)
    80004b2c:	00013403          	ld	s0,0(sp)
    80004b30:	01010113          	addi	sp,sp,16
    80004b34:	00008067          	ret

0000000080004b38 <_ZN12ConsumerSync3runEv>:
    void run() override {
    80004b38:	ff010113          	addi	sp,sp,-16
    80004b3c:	00113423          	sd	ra,8(sp)
    80004b40:	00813023          	sd	s0,0(sp)
    80004b44:	01010413          	addi	s0,sp,16
        consumer(td);
    80004b48:	02053583          	ld	a1,32(a0)
    80004b4c:	00000097          	auipc	ra,0x0
    80004b50:	8e0080e7          	jalr	-1824(ra) # 8000442c <_ZN12ConsumerSync8consumerEPv>
    }
    80004b54:	00813083          	ld	ra,8(sp)
    80004b58:	00013403          	ld	s0,0(sp)
    80004b5c:	01010113          	addi	sp,sp,16
    80004b60:	00008067          	ret

0000000080004b64 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80004b64:	fe010113          	addi	sp,sp,-32
    80004b68:	00113c23          	sd	ra,24(sp)
    80004b6c:	00813823          	sd	s0,16(sp)
    80004b70:	00913423          	sd	s1,8(sp)
    80004b74:	02010413          	addi	s0,sp,32
    80004b78:	00050493          	mv	s1,a0
    LOCK();
    80004b7c:	00100613          	li	a2,1
    80004b80:	00000593          	li	a1,0
    80004b84:	00005517          	auipc	a0,0x5
    80004b88:	74c50513          	addi	a0,a0,1868 # 8000a2d0 <lockPrint>
    80004b8c:	ffffc097          	auipc	ra,0xffffc
    80004b90:	5a8080e7          	jalr	1448(ra) # 80001134 <copy_and_swap>
    80004b94:	00050863          	beqz	a0,80004ba4 <_Z11printStringPKc+0x40>
    80004b98:	ffffc097          	auipc	ra,0xffffc
    80004b9c:	6ec080e7          	jalr	1772(ra) # 80001284 <_Z15thread_dispatchv>
    80004ba0:	fddff06f          	j	80004b7c <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80004ba4:	0004c503          	lbu	a0,0(s1)
    80004ba8:	00050a63          	beqz	a0,80004bbc <_Z11printStringPKc+0x58>
    {
        __putc(*string);
    80004bac:	00003097          	auipc	ra,0x3
    80004bb0:	050080e7          	jalr	80(ra) # 80007bfc <__putc>
        string++;
    80004bb4:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80004bb8:	fedff06f          	j	80004ba4 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80004bbc:	00000613          	li	a2,0
    80004bc0:	00100593          	li	a1,1
    80004bc4:	00005517          	auipc	a0,0x5
    80004bc8:	70c50513          	addi	a0,a0,1804 # 8000a2d0 <lockPrint>
    80004bcc:	ffffc097          	auipc	ra,0xffffc
    80004bd0:	568080e7          	jalr	1384(ra) # 80001134 <copy_and_swap>
    80004bd4:	fe0514e3          	bnez	a0,80004bbc <_Z11printStringPKc+0x58>
}
    80004bd8:	01813083          	ld	ra,24(sp)
    80004bdc:	01013403          	ld	s0,16(sp)
    80004be0:	00813483          	ld	s1,8(sp)
    80004be4:	02010113          	addi	sp,sp,32
    80004be8:	00008067          	ret

0000000080004bec <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80004bec:	fd010113          	addi	sp,sp,-48
    80004bf0:	02113423          	sd	ra,40(sp)
    80004bf4:	02813023          	sd	s0,32(sp)
    80004bf8:	00913c23          	sd	s1,24(sp)
    80004bfc:	01213823          	sd	s2,16(sp)
    80004c00:	01313423          	sd	s3,8(sp)
    80004c04:	01413023          	sd	s4,0(sp)
    80004c08:	03010413          	addi	s0,sp,48
    80004c0c:	00050993          	mv	s3,a0
    80004c10:	00058a13          	mv	s4,a1
    LOCK();
    80004c14:	00100613          	li	a2,1
    80004c18:	00000593          	li	a1,0
    80004c1c:	00005517          	auipc	a0,0x5
    80004c20:	6b450513          	addi	a0,a0,1716 # 8000a2d0 <lockPrint>
    80004c24:	ffffc097          	auipc	ra,0xffffc
    80004c28:	510080e7          	jalr	1296(ra) # 80001134 <copy_and_swap>
    80004c2c:	00050863          	beqz	a0,80004c3c <_Z9getStringPci+0x50>
    80004c30:	ffffc097          	auipc	ra,0xffffc
    80004c34:	654080e7          	jalr	1620(ra) # 80001284 <_Z15thread_dispatchv>
    80004c38:	fddff06f          	j	80004c14 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80004c3c:	00000913          	li	s2,0
    80004c40:	00090493          	mv	s1,s2
    80004c44:	0019091b          	addiw	s2,s2,1
    80004c48:	03495a63          	bge	s2,s4,80004c7c <_Z9getStringPci+0x90>
        cc = __getc();
    80004c4c:	00003097          	auipc	ra,0x3
    80004c50:	fec080e7          	jalr	-20(ra) # 80007c38 <__getc>
        if(cc < 1)
    80004c54:	02050463          	beqz	a0,80004c7c <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80004c58:	009984b3          	add	s1,s3,s1
    80004c5c:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80004c60:	00a00793          	li	a5,10
    80004c64:	00f50a63          	beq	a0,a5,80004c78 <_Z9getStringPci+0x8c>
    80004c68:	00d00793          	li	a5,13
    80004c6c:	fcf51ae3          	bne	a0,a5,80004c40 <_Z9getStringPci+0x54>
        buf[i++] = c;
    80004c70:	00090493          	mv	s1,s2
    80004c74:	0080006f          	j	80004c7c <_Z9getStringPci+0x90>
    80004c78:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80004c7c:	009984b3          	add	s1,s3,s1
    80004c80:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80004c84:	00000613          	li	a2,0
    80004c88:	00100593          	li	a1,1
    80004c8c:	00005517          	auipc	a0,0x5
    80004c90:	64450513          	addi	a0,a0,1604 # 8000a2d0 <lockPrint>
    80004c94:	ffffc097          	auipc	ra,0xffffc
    80004c98:	4a0080e7          	jalr	1184(ra) # 80001134 <copy_and_swap>
    80004c9c:	fe0514e3          	bnez	a0,80004c84 <_Z9getStringPci+0x98>
    return buf;
}
    80004ca0:	00098513          	mv	a0,s3
    80004ca4:	02813083          	ld	ra,40(sp)
    80004ca8:	02013403          	ld	s0,32(sp)
    80004cac:	01813483          	ld	s1,24(sp)
    80004cb0:	01013903          	ld	s2,16(sp)
    80004cb4:	00813983          	ld	s3,8(sp)
    80004cb8:	00013a03          	ld	s4,0(sp)
    80004cbc:	03010113          	addi	sp,sp,48
    80004cc0:	00008067          	ret

0000000080004cc4 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80004cc4:	ff010113          	addi	sp,sp,-16
    80004cc8:	00813423          	sd	s0,8(sp)
    80004ccc:	01010413          	addi	s0,sp,16
    80004cd0:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80004cd4:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80004cd8:	0006c603          	lbu	a2,0(a3)
    80004cdc:	fd06071b          	addiw	a4,a2,-48
    80004ce0:	0ff77713          	andi	a4,a4,255
    80004ce4:	00900793          	li	a5,9
    80004ce8:	02e7e063          	bltu	a5,a4,80004d08 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80004cec:	0025179b          	slliw	a5,a0,0x2
    80004cf0:	00a787bb          	addw	a5,a5,a0
    80004cf4:	0017979b          	slliw	a5,a5,0x1
    80004cf8:	00168693          	addi	a3,a3,1
    80004cfc:	00c787bb          	addw	a5,a5,a2
    80004d00:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80004d04:	fd5ff06f          	j	80004cd8 <_Z11stringToIntPKc+0x14>
    return n;
}
    80004d08:	00813403          	ld	s0,8(sp)
    80004d0c:	01010113          	addi	sp,sp,16
    80004d10:	00008067          	ret

0000000080004d14 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80004d14:	fc010113          	addi	sp,sp,-64
    80004d18:	02113c23          	sd	ra,56(sp)
    80004d1c:	02813823          	sd	s0,48(sp)
    80004d20:	02913423          	sd	s1,40(sp)
    80004d24:	03213023          	sd	s2,32(sp)
    80004d28:	01313c23          	sd	s3,24(sp)
    80004d2c:	04010413          	addi	s0,sp,64
    80004d30:	00050493          	mv	s1,a0
    80004d34:	00058913          	mv	s2,a1
    80004d38:	00060993          	mv	s3,a2
    LOCK();
    80004d3c:	00100613          	li	a2,1
    80004d40:	00000593          	li	a1,0
    80004d44:	00005517          	auipc	a0,0x5
    80004d48:	58c50513          	addi	a0,a0,1420 # 8000a2d0 <lockPrint>
    80004d4c:	ffffc097          	auipc	ra,0xffffc
    80004d50:	3e8080e7          	jalr	1000(ra) # 80001134 <copy_and_swap>
    80004d54:	00050863          	beqz	a0,80004d64 <_Z8printIntiii+0x50>
    80004d58:	ffffc097          	auipc	ra,0xffffc
    80004d5c:	52c080e7          	jalr	1324(ra) # 80001284 <_Z15thread_dispatchv>
    80004d60:	fddff06f          	j	80004d3c <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80004d64:	00098463          	beqz	s3,80004d6c <_Z8printIntiii+0x58>
    80004d68:	0804c463          	bltz	s1,80004df0 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80004d6c:	0004851b          	sext.w	a0,s1
    neg = 0;
    80004d70:	00000593          	li	a1,0
    }

    i = 0;
    80004d74:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80004d78:	0009079b          	sext.w	a5,s2
    80004d7c:	0325773b          	remuw	a4,a0,s2
    80004d80:	00048613          	mv	a2,s1
    80004d84:	0014849b          	addiw	s1,s1,1
    80004d88:	02071693          	slli	a3,a4,0x20
    80004d8c:	0206d693          	srli	a3,a3,0x20
    80004d90:	00005717          	auipc	a4,0x5
    80004d94:	41870713          	addi	a4,a4,1048 # 8000a1a8 <digits>
    80004d98:	00d70733          	add	a4,a4,a3
    80004d9c:	00074683          	lbu	a3,0(a4)
    80004da0:	fd040713          	addi	a4,s0,-48
    80004da4:	00c70733          	add	a4,a4,a2
    80004da8:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80004dac:	0005071b          	sext.w	a4,a0
    80004db0:	0325553b          	divuw	a0,a0,s2
    80004db4:	fcf772e3          	bgeu	a4,a5,80004d78 <_Z8printIntiii+0x64>
    if(neg)
    80004db8:	00058c63          	beqz	a1,80004dd0 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80004dbc:	fd040793          	addi	a5,s0,-48
    80004dc0:	009784b3          	add	s1,a5,s1
    80004dc4:	02d00793          	li	a5,45
    80004dc8:	fef48823          	sb	a5,-16(s1)
    80004dcc:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80004dd0:	fff4849b          	addiw	s1,s1,-1
    80004dd4:	0204c463          	bltz	s1,80004dfc <_Z8printIntiii+0xe8>
        __putc(buf[i]);
    80004dd8:	fd040793          	addi	a5,s0,-48
    80004ddc:	009787b3          	add	a5,a5,s1
    80004de0:	ff07c503          	lbu	a0,-16(a5)
    80004de4:	00003097          	auipc	ra,0x3
    80004de8:	e18080e7          	jalr	-488(ra) # 80007bfc <__putc>
    80004dec:	fe5ff06f          	j	80004dd0 <_Z8printIntiii+0xbc>
        x = -xx;
    80004df0:	4090053b          	negw	a0,s1
        neg = 1;
    80004df4:	00100593          	li	a1,1
        x = -xx;
    80004df8:	f7dff06f          	j	80004d74 <_Z8printIntiii+0x60>

    UNLOCK();
    80004dfc:	00000613          	li	a2,0
    80004e00:	00100593          	li	a1,1
    80004e04:	00005517          	auipc	a0,0x5
    80004e08:	4cc50513          	addi	a0,a0,1228 # 8000a2d0 <lockPrint>
    80004e0c:	ffffc097          	auipc	ra,0xffffc
    80004e10:	328080e7          	jalr	808(ra) # 80001134 <copy_and_swap>
    80004e14:	fe0514e3          	bnez	a0,80004dfc <_Z8printIntiii+0xe8>
    80004e18:	03813083          	ld	ra,56(sp)
    80004e1c:	03013403          	ld	s0,48(sp)
    80004e20:	02813483          	ld	s1,40(sp)
    80004e24:	02013903          	ld	s2,32(sp)
    80004e28:	01813983          	ld	s3,24(sp)
    80004e2c:	04010113          	addi	sp,sp,64
    80004e30:	00008067          	ret

0000000080004e34 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80004e34:	fd010113          	addi	sp,sp,-48
    80004e38:	02113423          	sd	ra,40(sp)
    80004e3c:	02813023          	sd	s0,32(sp)
    80004e40:	00913c23          	sd	s1,24(sp)
    80004e44:	01213823          	sd	s2,16(sp)
    80004e48:	01313423          	sd	s3,8(sp)
    80004e4c:	03010413          	addi	s0,sp,48
    80004e50:	00050493          	mv	s1,a0
    80004e54:	00058913          	mv	s2,a1
    80004e58:	0015879b          	addiw	a5,a1,1
    80004e5c:	0007851b          	sext.w	a0,a5
    80004e60:	00f4a023          	sw	a5,0(s1)
    80004e64:	0004a823          	sw	zero,16(s1)
    80004e68:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80004e6c:	00251513          	slli	a0,a0,0x2
    80004e70:	ffffc097          	auipc	ra,0xffffc
    80004e74:	2e4080e7          	jalr	740(ra) # 80001154 <_Z9mem_allocm>
    80004e78:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80004e7c:	01000513          	li	a0,16
    80004e80:	ffffd097          	auipc	ra,0xffffd
    80004e84:	f74080e7          	jalr	-140(ra) # 80001df4 <_Znwm>
    80004e88:	00050993          	mv	s3,a0
    80004e8c:	00000593          	li	a1,0
    80004e90:	ffffd097          	auipc	ra,0xffffd
    80004e94:	1f0080e7          	jalr	496(ra) # 80002080 <_ZN9SemaphoreC1Ej>
    80004e98:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80004e9c:	01000513          	li	a0,16
    80004ea0:	ffffd097          	auipc	ra,0xffffd
    80004ea4:	f54080e7          	jalr	-172(ra) # 80001df4 <_Znwm>
    80004ea8:	00050993          	mv	s3,a0
    80004eac:	00090593          	mv	a1,s2
    80004eb0:	ffffd097          	auipc	ra,0xffffd
    80004eb4:	1d0080e7          	jalr	464(ra) # 80002080 <_ZN9SemaphoreC1Ej>
    80004eb8:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80004ebc:	01000513          	li	a0,16
    80004ec0:	ffffd097          	auipc	ra,0xffffd
    80004ec4:	f34080e7          	jalr	-204(ra) # 80001df4 <_Znwm>
    80004ec8:	00050913          	mv	s2,a0
    80004ecc:	00100593          	li	a1,1
    80004ed0:	ffffd097          	auipc	ra,0xffffd
    80004ed4:	1b0080e7          	jalr	432(ra) # 80002080 <_ZN9SemaphoreC1Ej>
    80004ed8:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80004edc:	01000513          	li	a0,16
    80004ee0:	ffffd097          	auipc	ra,0xffffd
    80004ee4:	f14080e7          	jalr	-236(ra) # 80001df4 <_Znwm>
    80004ee8:	00050913          	mv	s2,a0
    80004eec:	00100593          	li	a1,1
    80004ef0:	ffffd097          	auipc	ra,0xffffd
    80004ef4:	190080e7          	jalr	400(ra) # 80002080 <_ZN9SemaphoreC1Ej>
    80004ef8:	0324b823          	sd	s2,48(s1)
}
    80004efc:	02813083          	ld	ra,40(sp)
    80004f00:	02013403          	ld	s0,32(sp)
    80004f04:	01813483          	ld	s1,24(sp)
    80004f08:	01013903          	ld	s2,16(sp)
    80004f0c:	00813983          	ld	s3,8(sp)
    80004f10:	03010113          	addi	sp,sp,48
    80004f14:	00008067          	ret
    80004f18:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80004f1c:	00098513          	mv	a0,s3
    80004f20:	ffffd097          	auipc	ra,0xffffd
    80004f24:	efc080e7          	jalr	-260(ra) # 80001e1c <_ZdlPv>
    80004f28:	00048513          	mv	a0,s1
    80004f2c:	00006097          	auipc	ra,0x6
    80004f30:	47c080e7          	jalr	1148(ra) # 8000b3a8 <_Unwind_Resume>
    80004f34:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80004f38:	00098513          	mv	a0,s3
    80004f3c:	ffffd097          	auipc	ra,0xffffd
    80004f40:	ee0080e7          	jalr	-288(ra) # 80001e1c <_ZdlPv>
    80004f44:	00048513          	mv	a0,s1
    80004f48:	00006097          	auipc	ra,0x6
    80004f4c:	460080e7          	jalr	1120(ra) # 8000b3a8 <_Unwind_Resume>
    80004f50:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80004f54:	00090513          	mv	a0,s2
    80004f58:	ffffd097          	auipc	ra,0xffffd
    80004f5c:	ec4080e7          	jalr	-316(ra) # 80001e1c <_ZdlPv>
    80004f60:	00048513          	mv	a0,s1
    80004f64:	00006097          	auipc	ra,0x6
    80004f68:	444080e7          	jalr	1092(ra) # 8000b3a8 <_Unwind_Resume>
    80004f6c:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80004f70:	00090513          	mv	a0,s2
    80004f74:	ffffd097          	auipc	ra,0xffffd
    80004f78:	ea8080e7          	jalr	-344(ra) # 80001e1c <_ZdlPv>
    80004f7c:	00048513          	mv	a0,s1
    80004f80:	00006097          	auipc	ra,0x6
    80004f84:	428080e7          	jalr	1064(ra) # 8000b3a8 <_Unwind_Resume>

0000000080004f88 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80004f88:	fe010113          	addi	sp,sp,-32
    80004f8c:	00113c23          	sd	ra,24(sp)
    80004f90:	00813823          	sd	s0,16(sp)
    80004f94:	00913423          	sd	s1,8(sp)
    80004f98:	01213023          	sd	s2,0(sp)
    80004f9c:	02010413          	addi	s0,sp,32
    80004fa0:	00050493          	mv	s1,a0
    80004fa4:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80004fa8:	01853503          	ld	a0,24(a0)
    80004fac:	ffffd097          	auipc	ra,0xffffd
    80004fb0:	10c080e7          	jalr	268(ra) # 800020b8 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80004fb4:	0304b503          	ld	a0,48(s1)
    80004fb8:	ffffd097          	auipc	ra,0xffffd
    80004fbc:	100080e7          	jalr	256(ra) # 800020b8 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80004fc0:	0084b783          	ld	a5,8(s1)
    80004fc4:	0144a703          	lw	a4,20(s1)
    80004fc8:	00271713          	slli	a4,a4,0x2
    80004fcc:	00e787b3          	add	a5,a5,a4
    80004fd0:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80004fd4:	0144a783          	lw	a5,20(s1)
    80004fd8:	0017879b          	addiw	a5,a5,1
    80004fdc:	0004a703          	lw	a4,0(s1)
    80004fe0:	02e7e7bb          	remw	a5,a5,a4
    80004fe4:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80004fe8:	0304b503          	ld	a0,48(s1)
    80004fec:	ffffd097          	auipc	ra,0xffffd
    80004ff0:	0f8080e7          	jalr	248(ra) # 800020e4 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80004ff4:	0204b503          	ld	a0,32(s1)
    80004ff8:	ffffd097          	auipc	ra,0xffffd
    80004ffc:	0ec080e7          	jalr	236(ra) # 800020e4 <_ZN9Semaphore6signalEv>

}
    80005000:	01813083          	ld	ra,24(sp)
    80005004:	01013403          	ld	s0,16(sp)
    80005008:	00813483          	ld	s1,8(sp)
    8000500c:	00013903          	ld	s2,0(sp)
    80005010:	02010113          	addi	sp,sp,32
    80005014:	00008067          	ret

0000000080005018 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80005018:	fe010113          	addi	sp,sp,-32
    8000501c:	00113c23          	sd	ra,24(sp)
    80005020:	00813823          	sd	s0,16(sp)
    80005024:	00913423          	sd	s1,8(sp)
    80005028:	01213023          	sd	s2,0(sp)
    8000502c:	02010413          	addi	s0,sp,32
    80005030:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80005034:	02053503          	ld	a0,32(a0)
    80005038:	ffffd097          	auipc	ra,0xffffd
    8000503c:	080080e7          	jalr	128(ra) # 800020b8 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80005040:	0284b503          	ld	a0,40(s1)
    80005044:	ffffd097          	auipc	ra,0xffffd
    80005048:	074080e7          	jalr	116(ra) # 800020b8 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    8000504c:	0084b703          	ld	a4,8(s1)
    80005050:	0104a783          	lw	a5,16(s1)
    80005054:	00279693          	slli	a3,a5,0x2
    80005058:	00d70733          	add	a4,a4,a3
    8000505c:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005060:	0017879b          	addiw	a5,a5,1
    80005064:	0004a703          	lw	a4,0(s1)
    80005068:	02e7e7bb          	remw	a5,a5,a4
    8000506c:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80005070:	0284b503          	ld	a0,40(s1)
    80005074:	ffffd097          	auipc	ra,0xffffd
    80005078:	070080e7          	jalr	112(ra) # 800020e4 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    8000507c:	0184b503          	ld	a0,24(s1)
    80005080:	ffffd097          	auipc	ra,0xffffd
    80005084:	064080e7          	jalr	100(ra) # 800020e4 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005088:	00090513          	mv	a0,s2
    8000508c:	01813083          	ld	ra,24(sp)
    80005090:	01013403          	ld	s0,16(sp)
    80005094:	00813483          	ld	s1,8(sp)
    80005098:	00013903          	ld	s2,0(sp)
    8000509c:	02010113          	addi	sp,sp,32
    800050a0:	00008067          	ret

00000000800050a4 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    800050a4:	fe010113          	addi	sp,sp,-32
    800050a8:	00113c23          	sd	ra,24(sp)
    800050ac:	00813823          	sd	s0,16(sp)
    800050b0:	00913423          	sd	s1,8(sp)
    800050b4:	01213023          	sd	s2,0(sp)
    800050b8:	02010413          	addi	s0,sp,32
    800050bc:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    800050c0:	02853503          	ld	a0,40(a0)
    800050c4:	ffffd097          	auipc	ra,0xffffd
    800050c8:	ff4080e7          	jalr	-12(ra) # 800020b8 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    800050cc:	0304b503          	ld	a0,48(s1)
    800050d0:	ffffd097          	auipc	ra,0xffffd
    800050d4:	fe8080e7          	jalr	-24(ra) # 800020b8 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    800050d8:	0144a783          	lw	a5,20(s1)
    800050dc:	0104a903          	lw	s2,16(s1)
    800050e0:	0327ce63          	blt	a5,s2,8000511c <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    800050e4:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    800050e8:	0304b503          	ld	a0,48(s1)
    800050ec:	ffffd097          	auipc	ra,0xffffd
    800050f0:	ff8080e7          	jalr	-8(ra) # 800020e4 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    800050f4:	0284b503          	ld	a0,40(s1)
    800050f8:	ffffd097          	auipc	ra,0xffffd
    800050fc:	fec080e7          	jalr	-20(ra) # 800020e4 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005100:	00090513          	mv	a0,s2
    80005104:	01813083          	ld	ra,24(sp)
    80005108:	01013403          	ld	s0,16(sp)
    8000510c:	00813483          	ld	s1,8(sp)
    80005110:	00013903          	ld	s2,0(sp)
    80005114:	02010113          	addi	sp,sp,32
    80005118:	00008067          	ret
        ret = cap - head + tail;
    8000511c:	0004a703          	lw	a4,0(s1)
    80005120:	4127093b          	subw	s2,a4,s2
    80005124:	00f9093b          	addw	s2,s2,a5
    80005128:	fc1ff06f          	j	800050e8 <_ZN9BufferCPP6getCntEv+0x44>

000000008000512c <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    8000512c:	fe010113          	addi	sp,sp,-32
    80005130:	00113c23          	sd	ra,24(sp)
    80005134:	00813823          	sd	s0,16(sp)
    80005138:	00913423          	sd	s1,8(sp)
    8000513c:	02010413          	addi	s0,sp,32
    80005140:	00050493          	mv	s1,a0
    __putc('\n');
    80005144:	00a00513          	li	a0,10
    80005148:	00003097          	auipc	ra,0x3
    8000514c:	ab4080e7          	jalr	-1356(ra) # 80007bfc <__putc>
    printString("Buffer deleted!\n");
    80005150:	00003517          	auipc	a0,0x3
    80005154:	13850513          	addi	a0,a0,312 # 80008288 <_ZZ12printIntegermE6digits+0x1b8>
    80005158:	00000097          	auipc	ra,0x0
    8000515c:	a0c080e7          	jalr	-1524(ra) # 80004b64 <_Z11printStringPKc>
    while (getCnt()) {
    80005160:	00048513          	mv	a0,s1
    80005164:	00000097          	auipc	ra,0x0
    80005168:	f40080e7          	jalr	-192(ra) # 800050a4 <_ZN9BufferCPP6getCntEv>
    8000516c:	02050c63          	beqz	a0,800051a4 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80005170:	0084b783          	ld	a5,8(s1)
    80005174:	0104a703          	lw	a4,16(s1)
    80005178:	00271713          	slli	a4,a4,0x2
    8000517c:	00e787b3          	add	a5,a5,a4
        __putc(ch);
    80005180:	0007c503          	lbu	a0,0(a5)
    80005184:	00003097          	auipc	ra,0x3
    80005188:	a78080e7          	jalr	-1416(ra) # 80007bfc <__putc>
        head = (head + 1) % cap;
    8000518c:	0104a783          	lw	a5,16(s1)
    80005190:	0017879b          	addiw	a5,a5,1
    80005194:	0004a703          	lw	a4,0(s1)
    80005198:	02e7e7bb          	remw	a5,a5,a4
    8000519c:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    800051a0:	fc1ff06f          	j	80005160 <_ZN9BufferCPPD1Ev+0x34>
    __putc('!');
    800051a4:	02100513          	li	a0,33
    800051a8:	00003097          	auipc	ra,0x3
    800051ac:	a54080e7          	jalr	-1452(ra) # 80007bfc <__putc>
    __putc('\n');
    800051b0:	00a00513          	li	a0,10
    800051b4:	00003097          	auipc	ra,0x3
    800051b8:	a48080e7          	jalr	-1464(ra) # 80007bfc <__putc>
    mem_free(buffer);
    800051bc:	0084b503          	ld	a0,8(s1)
    800051c0:	ffffc097          	auipc	ra,0xffffc
    800051c4:	fd4080e7          	jalr	-44(ra) # 80001194 <_Z8mem_freePv>
    delete itemAvailable;
    800051c8:	0204b503          	ld	a0,32(s1)
    800051cc:	00050863          	beqz	a0,800051dc <_ZN9BufferCPPD1Ev+0xb0>
    800051d0:	00053783          	ld	a5,0(a0)
    800051d4:	0087b783          	ld	a5,8(a5)
    800051d8:	000780e7          	jalr	a5
    delete spaceAvailable;
    800051dc:	0184b503          	ld	a0,24(s1)
    800051e0:	00050863          	beqz	a0,800051f0 <_ZN9BufferCPPD1Ev+0xc4>
    800051e4:	00053783          	ld	a5,0(a0)
    800051e8:	0087b783          	ld	a5,8(a5)
    800051ec:	000780e7          	jalr	a5
    delete mutexTail;
    800051f0:	0304b503          	ld	a0,48(s1)
    800051f4:	00050863          	beqz	a0,80005204 <_ZN9BufferCPPD1Ev+0xd8>
    800051f8:	00053783          	ld	a5,0(a0)
    800051fc:	0087b783          	ld	a5,8(a5)
    80005200:	000780e7          	jalr	a5
    delete mutexHead;
    80005204:	0284b503          	ld	a0,40(s1)
    80005208:	00050863          	beqz	a0,80005218 <_ZN9BufferCPPD1Ev+0xec>
    8000520c:	00053783          	ld	a5,0(a0)
    80005210:	0087b783          	ld	a5,8(a5)
    80005214:	000780e7          	jalr	a5
}
    80005218:	01813083          	ld	ra,24(sp)
    8000521c:	01013403          	ld	s0,16(sp)
    80005220:	00813483          	ld	s1,8(sp)
    80005224:	02010113          	addi	sp,sp,32
    80005228:	00008067          	ret

000000008000522c <_Z8userMainv>:
//#include "../test/ConsumerProducer_CPP_API_test.hpp"


#endif

void userMain() {
    8000522c:	ff010113          	addi	sp,sp,-16
    80005230:	00113423          	sd	ra,8(sp)
    80005234:	00813023          	sd	s0,0(sp)
    80005238:	01010413          	addi	s0,sp,16
    pprintString("Unesite broj testa? [1-7]\n");
    8000523c:	00003517          	auipc	a0,0x3
    80005240:	06450513          	addi	a0,a0,100 # 800082a0 <_ZZ12printIntegermE6digits+0x1d0>
    80005244:	ffffe097          	auipc	ra,0xffffe
    80005248:	8fc080e7          	jalr	-1796(ra) # 80002b40 <_Z12pprintStringPKc>
            pprintString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
#endif
            break;
        case 3:
#if LEVEL_3_IMPLEMENTED == 1
            producerConsumer_C_API();
    8000524c:	ffffe097          	auipc	ra,0xffffe
    80005250:	ed8080e7          	jalr	-296(ra) # 80003124 <_Z22producerConsumer_C_APIv>
            pprintString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    80005254:	00003517          	auipc	a0,0x3
    80005258:	06c50513          	addi	a0,a0,108 # 800082c0 <_ZZ12printIntegermE6digits+0x1f0>
    8000525c:	ffffe097          	auipc	ra,0xffffe
    80005260:	8e4080e7          	jalr	-1820(ra) # 80002b40 <_Z12pprintStringPKc>
#endif
            break;
        default:
            pprintString("Niste uneli odgovarajuci broj za test\n");
    }
    80005264:	00813083          	ld	ra,8(sp)
    80005268:	00013403          	ld	s0,0(sp)
    8000526c:	01010113          	addi	sp,sp,16
    80005270:	00008067          	ret

0000000080005274 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80005274:	fe010113          	addi	sp,sp,-32
    80005278:	00113c23          	sd	ra,24(sp)
    8000527c:	00813823          	sd	s0,16(sp)
    80005280:	00913423          	sd	s1,8(sp)
    80005284:	01213023          	sd	s2,0(sp)
    80005288:	02010413          	addi	s0,sp,32
    8000528c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80005290:	00100793          	li	a5,1
    80005294:	02a7f863          	bgeu	a5,a0,800052c4 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80005298:	00a00793          	li	a5,10
    8000529c:	02f577b3          	remu	a5,a0,a5
    800052a0:	02078e63          	beqz	a5,800052dc <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800052a4:	fff48513          	addi	a0,s1,-1
    800052a8:	00000097          	auipc	ra,0x0
    800052ac:	fcc080e7          	jalr	-52(ra) # 80005274 <_ZL9fibonaccim>
    800052b0:	00050913          	mv	s2,a0
    800052b4:	ffe48513          	addi	a0,s1,-2
    800052b8:	00000097          	auipc	ra,0x0
    800052bc:	fbc080e7          	jalr	-68(ra) # 80005274 <_ZL9fibonaccim>
    800052c0:	00a90533          	add	a0,s2,a0
}
    800052c4:	01813083          	ld	ra,24(sp)
    800052c8:	01013403          	ld	s0,16(sp)
    800052cc:	00813483          	ld	s1,8(sp)
    800052d0:	00013903          	ld	s2,0(sp)
    800052d4:	02010113          	addi	sp,sp,32
    800052d8:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800052dc:	ffffc097          	auipc	ra,0xffffc
    800052e0:	fa8080e7          	jalr	-88(ra) # 80001284 <_Z15thread_dispatchv>
    800052e4:	fc1ff06f          	j	800052a4 <_ZL9fibonaccim+0x30>

00000000800052e8 <_ZL11workerBodyDPv>:
    pprintString("C finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    800052e8:	fe010113          	addi	sp,sp,-32
    800052ec:	00113c23          	sd	ra,24(sp)
    800052f0:	00813823          	sd	s0,16(sp)
    800052f4:	00913423          	sd	s1,8(sp)
    800052f8:	01213023          	sd	s2,0(sp)
    800052fc:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80005300:	00a00493          	li	s1,10
    80005304:	0380006f          	j	8000533c <_ZL11workerBodyDPv+0x54>
    for (; i < 13; i++) {
        pprintString("D: i="); printInteger(i); pprintString("\n");
    80005308:	00003517          	auipc	a0,0x3
    8000530c:	ee850513          	addi	a0,a0,-280 # 800081f0 <_ZZ12printIntegermE6digits+0x120>
    80005310:	ffffe097          	auipc	ra,0xffffe
    80005314:	830080e7          	jalr	-2000(ra) # 80002b40 <_Z12pprintStringPKc>
    80005318:	00048513          	mv	a0,s1
    8000531c:	ffffe097          	auipc	ra,0xffffe
    80005320:	868080e7          	jalr	-1944(ra) # 80002b84 <_Z12printIntegerm>
    80005324:	00003517          	auipc	a0,0x3
    80005328:	d6c50513          	addi	a0,a0,-660 # 80008090 <CONSOLE_STATUS+0x80>
    8000532c:	ffffe097          	auipc	ra,0xffffe
    80005330:	814080e7          	jalr	-2028(ra) # 80002b40 <_Z12pprintStringPKc>
    for (; i < 13; i++) {
    80005334:	0014849b          	addiw	s1,s1,1
    80005338:	0ff4f493          	andi	s1,s1,255
    8000533c:	00c00793          	li	a5,12
    80005340:	fc97f4e3          	bgeu	a5,s1,80005308 <_ZL11workerBodyDPv+0x20>
    }

    pprintString("D: dispatch\n");
    80005344:	00003517          	auipc	a0,0x3
    80005348:	eb450513          	addi	a0,a0,-332 # 800081f8 <_ZZ12printIntegermE6digits+0x128>
    8000534c:	ffffd097          	auipc	ra,0xffffd
    80005350:	7f4080e7          	jalr	2036(ra) # 80002b40 <_Z12pprintStringPKc>
    __asm__ ("li t1, 5");
    80005354:	00500313          	li	t1,5
    thread_dispatch();
    80005358:	ffffc097          	auipc	ra,0xffffc
    8000535c:	f2c080e7          	jalr	-212(ra) # 80001284 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80005360:	01000513          	li	a0,16
    80005364:	00000097          	auipc	ra,0x0
    80005368:	f10080e7          	jalr	-240(ra) # 80005274 <_ZL9fibonaccim>
    8000536c:	00050913          	mv	s2,a0
    pprintString("D: fibonaci="); printInteger(result); pprintString("\n");
    80005370:	00003517          	auipc	a0,0x3
    80005374:	e9850513          	addi	a0,a0,-360 # 80008208 <_ZZ12printIntegermE6digits+0x138>
    80005378:	ffffd097          	auipc	ra,0xffffd
    8000537c:	7c8080e7          	jalr	1992(ra) # 80002b40 <_Z12pprintStringPKc>
    80005380:	00090513          	mv	a0,s2
    80005384:	ffffe097          	auipc	ra,0xffffe
    80005388:	800080e7          	jalr	-2048(ra) # 80002b84 <_Z12printIntegerm>
    8000538c:	00003517          	auipc	a0,0x3
    80005390:	d0450513          	addi	a0,a0,-764 # 80008090 <CONSOLE_STATUS+0x80>
    80005394:	ffffd097          	auipc	ra,0xffffd
    80005398:	7ac080e7          	jalr	1964(ra) # 80002b40 <_Z12pprintStringPKc>
    8000539c:	0380006f          	j	800053d4 <_ZL11workerBodyDPv+0xec>

    for (; i < 16; i++) {
        pprintString("D: i="); printInteger(i); pprintString("\n");
    800053a0:	00003517          	auipc	a0,0x3
    800053a4:	e5050513          	addi	a0,a0,-432 # 800081f0 <_ZZ12printIntegermE6digits+0x120>
    800053a8:	ffffd097          	auipc	ra,0xffffd
    800053ac:	798080e7          	jalr	1944(ra) # 80002b40 <_Z12pprintStringPKc>
    800053b0:	00048513          	mv	a0,s1
    800053b4:	ffffd097          	auipc	ra,0xffffd
    800053b8:	7d0080e7          	jalr	2000(ra) # 80002b84 <_Z12printIntegerm>
    800053bc:	00003517          	auipc	a0,0x3
    800053c0:	cd450513          	addi	a0,a0,-812 # 80008090 <CONSOLE_STATUS+0x80>
    800053c4:	ffffd097          	auipc	ra,0xffffd
    800053c8:	77c080e7          	jalr	1916(ra) # 80002b40 <_Z12pprintStringPKc>
    for (; i < 16; i++) {
    800053cc:	0014849b          	addiw	s1,s1,1
    800053d0:	0ff4f493          	andi	s1,s1,255
    800053d4:	00f00793          	li	a5,15
    800053d8:	fc97f4e3          	bgeu	a5,s1,800053a0 <_ZL11workerBodyDPv+0xb8>
    }

    pprintString("D finished!\n");
    800053dc:	00003517          	auipc	a0,0x3
    800053e0:	e3c50513          	addi	a0,a0,-452 # 80008218 <_ZZ12printIntegermE6digits+0x148>
    800053e4:	ffffd097          	auipc	ra,0xffffd
    800053e8:	75c080e7          	jalr	1884(ra) # 80002b40 <_Z12pprintStringPKc>
    finishedD = true;
    800053ec:	00100793          	li	a5,1
    800053f0:	00005717          	auipc	a4,0x5
    800053f4:	eef70423          	sb	a5,-280(a4) # 8000a2d8 <_ZL9finishedD>
    thread_dispatch();
    800053f8:	ffffc097          	auipc	ra,0xffffc
    800053fc:	e8c080e7          	jalr	-372(ra) # 80001284 <_Z15thread_dispatchv>
}
    80005400:	01813083          	ld	ra,24(sp)
    80005404:	01013403          	ld	s0,16(sp)
    80005408:	00813483          	ld	s1,8(sp)
    8000540c:	00013903          	ld	s2,0(sp)
    80005410:	02010113          	addi	sp,sp,32
    80005414:	00008067          	ret

0000000080005418 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80005418:	fe010113          	addi	sp,sp,-32
    8000541c:	00113c23          	sd	ra,24(sp)
    80005420:	00813823          	sd	s0,16(sp)
    80005424:	00913423          	sd	s1,8(sp)
    80005428:	01213023          	sd	s2,0(sp)
    8000542c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80005430:	00000493          	li	s1,0
    80005434:	0380006f          	j	8000546c <_ZL11workerBodyCPv+0x54>
        pprintString("C: i="); printInteger(i); pprintString("\n");
    80005438:	00003517          	auipc	a0,0x3
    8000543c:	c2050513          	addi	a0,a0,-992 # 80008058 <CONSOLE_STATUS+0x48>
    80005440:	ffffd097          	auipc	ra,0xffffd
    80005444:	700080e7          	jalr	1792(ra) # 80002b40 <_Z12pprintStringPKc>
    80005448:	00048513          	mv	a0,s1
    8000544c:	ffffd097          	auipc	ra,0xffffd
    80005450:	738080e7          	jalr	1848(ra) # 80002b84 <_Z12printIntegerm>
    80005454:	00003517          	auipc	a0,0x3
    80005458:	c3c50513          	addi	a0,a0,-964 # 80008090 <CONSOLE_STATUS+0x80>
    8000545c:	ffffd097          	auipc	ra,0xffffd
    80005460:	6e4080e7          	jalr	1764(ra) # 80002b40 <_Z12pprintStringPKc>
    for (; i < 3; i++) {
    80005464:	0014849b          	addiw	s1,s1,1
    80005468:	0ff4f493          	andi	s1,s1,255
    8000546c:	00200793          	li	a5,2
    80005470:	fc97f4e3          	bgeu	a5,s1,80005438 <_ZL11workerBodyCPv+0x20>
    pprintString("C: dispatch\n");
    80005474:	00003517          	auipc	a0,0x3
    80005478:	d5450513          	addi	a0,a0,-684 # 800081c8 <_ZZ12printIntegermE6digits+0xf8>
    8000547c:	ffffd097          	auipc	ra,0xffffd
    80005480:	6c4080e7          	jalr	1732(ra) # 80002b40 <_Z12pprintStringPKc>
    __asm__ ("li t1, 7");
    80005484:	00700313          	li	t1,7
    thread_dispatch();
    80005488:	ffffc097          	auipc	ra,0xffffc
    8000548c:	dfc080e7          	jalr	-516(ra) # 80001284 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80005490:	00030913          	mv	s2,t1
    pprintString("C: t1="); printInteger(t1); pprintString("\n");
    80005494:	00003517          	auipc	a0,0x3
    80005498:	d4450513          	addi	a0,a0,-700 # 800081d8 <_ZZ12printIntegermE6digits+0x108>
    8000549c:	ffffd097          	auipc	ra,0xffffd
    800054a0:	6a4080e7          	jalr	1700(ra) # 80002b40 <_Z12pprintStringPKc>
    800054a4:	00090513          	mv	a0,s2
    800054a8:	ffffd097          	auipc	ra,0xffffd
    800054ac:	6dc080e7          	jalr	1756(ra) # 80002b84 <_Z12printIntegerm>
    800054b0:	00003517          	auipc	a0,0x3
    800054b4:	be050513          	addi	a0,a0,-1056 # 80008090 <CONSOLE_STATUS+0x80>
    800054b8:	ffffd097          	auipc	ra,0xffffd
    800054bc:	688080e7          	jalr	1672(ra) # 80002b40 <_Z12pprintStringPKc>
    uint64 result = fibonacci(12);
    800054c0:	00c00513          	li	a0,12
    800054c4:	00000097          	auipc	ra,0x0
    800054c8:	db0080e7          	jalr	-592(ra) # 80005274 <_ZL9fibonaccim>
    800054cc:	00050913          	mv	s2,a0
    pprintString("C: fibonaci="); printInteger(result); pprintString("\n");
    800054d0:	00003517          	auipc	a0,0x3
    800054d4:	d1050513          	addi	a0,a0,-752 # 800081e0 <_ZZ12printIntegermE6digits+0x110>
    800054d8:	ffffd097          	auipc	ra,0xffffd
    800054dc:	668080e7          	jalr	1640(ra) # 80002b40 <_Z12pprintStringPKc>
    800054e0:	00090513          	mv	a0,s2
    800054e4:	ffffd097          	auipc	ra,0xffffd
    800054e8:	6a0080e7          	jalr	1696(ra) # 80002b84 <_Z12printIntegerm>
    800054ec:	00003517          	auipc	a0,0x3
    800054f0:	ba450513          	addi	a0,a0,-1116 # 80008090 <CONSOLE_STATUS+0x80>
    800054f4:	ffffd097          	auipc	ra,0xffffd
    800054f8:	64c080e7          	jalr	1612(ra) # 80002b40 <_Z12pprintStringPKc>
    800054fc:	0380006f          	j	80005534 <_ZL11workerBodyCPv+0x11c>
        pprintString("C: i="); printInteger(i); pprintString("\n");
    80005500:	00003517          	auipc	a0,0x3
    80005504:	b5850513          	addi	a0,a0,-1192 # 80008058 <CONSOLE_STATUS+0x48>
    80005508:	ffffd097          	auipc	ra,0xffffd
    8000550c:	638080e7          	jalr	1592(ra) # 80002b40 <_Z12pprintStringPKc>
    80005510:	00048513          	mv	a0,s1
    80005514:	ffffd097          	auipc	ra,0xffffd
    80005518:	670080e7          	jalr	1648(ra) # 80002b84 <_Z12printIntegerm>
    8000551c:	00003517          	auipc	a0,0x3
    80005520:	b7450513          	addi	a0,a0,-1164 # 80008090 <CONSOLE_STATUS+0x80>
    80005524:	ffffd097          	auipc	ra,0xffffd
    80005528:	61c080e7          	jalr	1564(ra) # 80002b40 <_Z12pprintStringPKc>
    for (; i < 6; i++) {
    8000552c:	0014849b          	addiw	s1,s1,1
    80005530:	0ff4f493          	andi	s1,s1,255
    80005534:	00500793          	li	a5,5
    80005538:	fc97f4e3          	bgeu	a5,s1,80005500 <_ZL11workerBodyCPv+0xe8>
    pprintString("C finished!\n");
    8000553c:	00003517          	auipc	a0,0x3
    80005540:	b2450513          	addi	a0,a0,-1244 # 80008060 <CONSOLE_STATUS+0x50>
    80005544:	ffffd097          	auipc	ra,0xffffd
    80005548:	5fc080e7          	jalr	1532(ra) # 80002b40 <_Z12pprintStringPKc>
    finishedC = true;
    8000554c:	00100793          	li	a5,1
    80005550:	00005717          	auipc	a4,0x5
    80005554:	d8f704a3          	sb	a5,-631(a4) # 8000a2d9 <_ZL9finishedC>
    thread_dispatch();
    80005558:	ffffc097          	auipc	ra,0xffffc
    8000555c:	d2c080e7          	jalr	-724(ra) # 80001284 <_Z15thread_dispatchv>
}
    80005560:	01813083          	ld	ra,24(sp)
    80005564:	01013403          	ld	s0,16(sp)
    80005568:	00813483          	ld	s1,8(sp)
    8000556c:	00013903          	ld	s2,0(sp)
    80005570:	02010113          	addi	sp,sp,32
    80005574:	00008067          	ret

0000000080005578 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80005578:	fe010113          	addi	sp,sp,-32
    8000557c:	00113c23          	sd	ra,24(sp)
    80005580:	00813823          	sd	s0,16(sp)
    80005584:	00913423          	sd	s1,8(sp)
    80005588:	01213023          	sd	s2,0(sp)
    8000558c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80005590:	00000913          	li	s2,0
    80005594:	0400006f          	j	800055d4 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80005598:	ffffc097          	auipc	ra,0xffffc
    8000559c:	cec080e7          	jalr	-788(ra) # 80001284 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800055a0:	00148493          	addi	s1,s1,1
    800055a4:	000027b7          	lui	a5,0x2
    800055a8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800055ac:	0097ee63          	bltu	a5,s1,800055c8 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800055b0:	00000713          	li	a4,0
    800055b4:	000077b7          	lui	a5,0x7
    800055b8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800055bc:	fce7eee3          	bltu	a5,a4,80005598 <_ZL11workerBodyBPv+0x20>
    800055c0:	00170713          	addi	a4,a4,1
    800055c4:	ff1ff06f          	j	800055b4 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    800055c8:	00a00793          	li	a5,10
    800055cc:	04f90263          	beq	s2,a5,80005610 <_ZL11workerBodyBPv+0x98>
    for (uint64 i = 0; i < 16; i++) {
    800055d0:	00190913          	addi	s2,s2,1
    800055d4:	00f00793          	li	a5,15
    800055d8:	0527e063          	bltu	a5,s2,80005618 <_ZL11workerBodyBPv+0xa0>
        pprintString("B: i="); printInteger(i); pprintString("\n");
    800055dc:	00003517          	auipc	a0,0x3
    800055e0:	a6450513          	addi	a0,a0,-1436 # 80008040 <CONSOLE_STATUS+0x30>
    800055e4:	ffffd097          	auipc	ra,0xffffd
    800055e8:	55c080e7          	jalr	1372(ra) # 80002b40 <_Z12pprintStringPKc>
    800055ec:	00090513          	mv	a0,s2
    800055f0:	ffffd097          	auipc	ra,0xffffd
    800055f4:	594080e7          	jalr	1428(ra) # 80002b84 <_Z12printIntegerm>
    800055f8:	00003517          	auipc	a0,0x3
    800055fc:	a9850513          	addi	a0,a0,-1384 # 80008090 <CONSOLE_STATUS+0x80>
    80005600:	ffffd097          	auipc	ra,0xffffd
    80005604:	540080e7          	jalr	1344(ra) # 80002b40 <_Z12pprintStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005608:	00000493          	li	s1,0
    8000560c:	f99ff06f          	j	800055a4 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80005610:	14102ff3          	csrr	t6,sepc
    80005614:	fbdff06f          	j	800055d0 <_ZL11workerBodyBPv+0x58>
    pprintString("B finished!\n");
    80005618:	00003517          	auipc	a0,0x3
    8000561c:	a3050513          	addi	a0,a0,-1488 # 80008048 <CONSOLE_STATUS+0x38>
    80005620:	ffffd097          	auipc	ra,0xffffd
    80005624:	520080e7          	jalr	1312(ra) # 80002b40 <_Z12pprintStringPKc>
    finishedB = true;
    80005628:	00100793          	li	a5,1
    8000562c:	00005717          	auipc	a4,0x5
    80005630:	caf70723          	sb	a5,-850(a4) # 8000a2da <_ZL9finishedB>
    thread_dispatch();
    80005634:	ffffc097          	auipc	ra,0xffffc
    80005638:	c50080e7          	jalr	-944(ra) # 80001284 <_Z15thread_dispatchv>
}
    8000563c:	01813083          	ld	ra,24(sp)
    80005640:	01013403          	ld	s0,16(sp)
    80005644:	00813483          	ld	s1,8(sp)
    80005648:	00013903          	ld	s2,0(sp)
    8000564c:	02010113          	addi	sp,sp,32
    80005650:	00008067          	ret

0000000080005654 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80005654:	fe010113          	addi	sp,sp,-32
    80005658:	00113c23          	sd	ra,24(sp)
    8000565c:	00813823          	sd	s0,16(sp)
    80005660:	00913423          	sd	s1,8(sp)
    80005664:	01213023          	sd	s2,0(sp)
    80005668:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    8000566c:	00000913          	li	s2,0
    80005670:	0380006f          	j	800056a8 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80005674:	ffffc097          	auipc	ra,0xffffc
    80005678:	c10080e7          	jalr	-1008(ra) # 80001284 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    8000567c:	00148493          	addi	s1,s1,1
    80005680:	000027b7          	lui	a5,0x2
    80005684:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005688:	0097ee63          	bltu	a5,s1,800056a4 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000568c:	00000713          	li	a4,0
    80005690:	000077b7          	lui	a5,0x7
    80005694:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005698:	fce7eee3          	bltu	a5,a4,80005674 <_ZL11workerBodyAPv+0x20>
    8000569c:	00170713          	addi	a4,a4,1
    800056a0:	ff1ff06f          	j	80005690 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800056a4:	00190913          	addi	s2,s2,1
    800056a8:	00900793          	li	a5,9
    800056ac:	0327ec63          	bltu	a5,s2,800056e4 <_ZL11workerBodyAPv+0x90>
        pprintString("A: i="); printInteger(i); pprintString("\n");
    800056b0:	00003517          	auipc	a0,0x3
    800056b4:	97850513          	addi	a0,a0,-1672 # 80008028 <CONSOLE_STATUS+0x18>
    800056b8:	ffffd097          	auipc	ra,0xffffd
    800056bc:	488080e7          	jalr	1160(ra) # 80002b40 <_Z12pprintStringPKc>
    800056c0:	00090513          	mv	a0,s2
    800056c4:	ffffd097          	auipc	ra,0xffffd
    800056c8:	4c0080e7          	jalr	1216(ra) # 80002b84 <_Z12printIntegerm>
    800056cc:	00003517          	auipc	a0,0x3
    800056d0:	9c450513          	addi	a0,a0,-1596 # 80008090 <CONSOLE_STATUS+0x80>
    800056d4:	ffffd097          	auipc	ra,0xffffd
    800056d8:	46c080e7          	jalr	1132(ra) # 80002b40 <_Z12pprintStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800056dc:	00000493          	li	s1,0
    800056e0:	fa1ff06f          	j	80005680 <_ZL11workerBodyAPv+0x2c>
    pprintString("A finished!\n");
    800056e4:	00003517          	auipc	a0,0x3
    800056e8:	94c50513          	addi	a0,a0,-1716 # 80008030 <CONSOLE_STATUS+0x20>
    800056ec:	ffffd097          	auipc	ra,0xffffd
    800056f0:	454080e7          	jalr	1108(ra) # 80002b40 <_Z12pprintStringPKc>
    finishedA = true;
    800056f4:	00100793          	li	a5,1
    800056f8:	00005717          	auipc	a4,0x5
    800056fc:	bef701a3          	sb	a5,-1053(a4) # 8000a2db <_ZL9finishedA>
}
    80005700:	01813083          	ld	ra,24(sp)
    80005704:	01013403          	ld	s0,16(sp)
    80005708:	00813483          	ld	s1,8(sp)
    8000570c:	00013903          	ld	s2,0(sp)
    80005710:	02010113          	addi	sp,sp,32
    80005714:	00008067          	ret

0000000080005718 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80005718:	fd010113          	addi	sp,sp,-48
    8000571c:	02113423          	sd	ra,40(sp)
    80005720:	02813023          	sd	s0,32(sp)
    80005724:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80005728:	00000613          	li	a2,0
    8000572c:	00000597          	auipc	a1,0x0
    80005730:	f2858593          	addi	a1,a1,-216 # 80005654 <_ZL11workerBodyAPv>
    80005734:	fd040513          	addi	a0,s0,-48
    80005738:	ffffc097          	auipc	ra,0xffffc
    8000573c:	ae8080e7          	jalr	-1304(ra) # 80001220 <_Z13thread_createPP3TCBPFvPvES2_>
    pprintString("ThreadA created\n");
    80005740:	00003517          	auipc	a0,0x3
    80005744:	ae850513          	addi	a0,a0,-1304 # 80008228 <_ZZ12printIntegermE6digits+0x158>
    80005748:	ffffd097          	auipc	ra,0xffffd
    8000574c:	3f8080e7          	jalr	1016(ra) # 80002b40 <_Z12pprintStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80005750:	00000613          	li	a2,0
    80005754:	00000597          	auipc	a1,0x0
    80005758:	e2458593          	addi	a1,a1,-476 # 80005578 <_ZL11workerBodyBPv>
    8000575c:	fd840513          	addi	a0,s0,-40
    80005760:	ffffc097          	auipc	ra,0xffffc
    80005764:	ac0080e7          	jalr	-1344(ra) # 80001220 <_Z13thread_createPP3TCBPFvPvES2_>
    pprintString("ThreadB created\n");
    80005768:	00003517          	auipc	a0,0x3
    8000576c:	ad850513          	addi	a0,a0,-1320 # 80008240 <_ZZ12printIntegermE6digits+0x170>
    80005770:	ffffd097          	auipc	ra,0xffffd
    80005774:	3d0080e7          	jalr	976(ra) # 80002b40 <_Z12pprintStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80005778:	00000613          	li	a2,0
    8000577c:	00000597          	auipc	a1,0x0
    80005780:	c9c58593          	addi	a1,a1,-868 # 80005418 <_ZL11workerBodyCPv>
    80005784:	fe040513          	addi	a0,s0,-32
    80005788:	ffffc097          	auipc	ra,0xffffc
    8000578c:	a98080e7          	jalr	-1384(ra) # 80001220 <_Z13thread_createPP3TCBPFvPvES2_>
    pprintString("ThreadC created\n");
    80005790:	00003517          	auipc	a0,0x3
    80005794:	ac850513          	addi	a0,a0,-1336 # 80008258 <_ZZ12printIntegermE6digits+0x188>
    80005798:	ffffd097          	auipc	ra,0xffffd
    8000579c:	3a8080e7          	jalr	936(ra) # 80002b40 <_Z12pprintStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    800057a0:	00000613          	li	a2,0
    800057a4:	00000597          	auipc	a1,0x0
    800057a8:	b4458593          	addi	a1,a1,-1212 # 800052e8 <_ZL11workerBodyDPv>
    800057ac:	fe840513          	addi	a0,s0,-24
    800057b0:	ffffc097          	auipc	ra,0xffffc
    800057b4:	a70080e7          	jalr	-1424(ra) # 80001220 <_Z13thread_createPP3TCBPFvPvES2_>
    pprintString("ThreadD created\n");
    800057b8:	00003517          	auipc	a0,0x3
    800057bc:	ab850513          	addi	a0,a0,-1352 # 80008270 <_ZZ12printIntegermE6digits+0x1a0>
    800057c0:	ffffd097          	auipc	ra,0xffffd
    800057c4:	380080e7          	jalr	896(ra) # 80002b40 <_Z12pprintStringPKc>
    800057c8:	00c0006f          	j	800057d4 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    800057cc:	ffffc097          	auipc	ra,0xffffc
    800057d0:	ab8080e7          	jalr	-1352(ra) # 80001284 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800057d4:	00005797          	auipc	a5,0x5
    800057d8:	b077c783          	lbu	a5,-1273(a5) # 8000a2db <_ZL9finishedA>
    800057dc:	fe0788e3          	beqz	a5,800057cc <_Z16System_Mode_testv+0xb4>
    800057e0:	00005797          	auipc	a5,0x5
    800057e4:	afa7c783          	lbu	a5,-1286(a5) # 8000a2da <_ZL9finishedB>
    800057e8:	fe0782e3          	beqz	a5,800057cc <_Z16System_Mode_testv+0xb4>
    800057ec:	00005797          	auipc	a5,0x5
    800057f0:	aed7c783          	lbu	a5,-1299(a5) # 8000a2d9 <_ZL9finishedC>
    800057f4:	fc078ce3          	beqz	a5,800057cc <_Z16System_Mode_testv+0xb4>
    800057f8:	00005797          	auipc	a5,0x5
    800057fc:	ae07c783          	lbu	a5,-1312(a5) # 8000a2d8 <_ZL9finishedD>
    80005800:	fc0786e3          	beqz	a5,800057cc <_Z16System_Mode_testv+0xb4>
    }

}
    80005804:	02813083          	ld	ra,40(sp)
    80005808:	02013403          	ld	s0,32(sp)
    8000580c:	03010113          	addi	sp,sp,48
    80005810:	00008067          	ret

0000000080005814 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005814:	fe010113          	addi	sp,sp,-32
    80005818:	00113c23          	sd	ra,24(sp)
    8000581c:	00813823          	sd	s0,16(sp)
    80005820:	00913423          	sd	s1,8(sp)
    80005824:	01213023          	sd	s2,0(sp)
    80005828:	02010413          	addi	s0,sp,32
    8000582c:	00050493          	mv	s1,a0
    80005830:	00058913          	mv	s2,a1
    80005834:	0015879b          	addiw	a5,a1,1
    80005838:	0007851b          	sext.w	a0,a5
    8000583c:	00f4a023          	sw	a5,0(s1)
    80005840:	0004a823          	sw	zero,16(s1)
    80005844:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005848:	00251513          	slli	a0,a0,0x2
    8000584c:	ffffc097          	auipc	ra,0xffffc
    80005850:	908080e7          	jalr	-1784(ra) # 80001154 <_Z9mem_allocm>
    80005854:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80005858:	00000593          	li	a1,0
    8000585c:	02048513          	addi	a0,s1,32
    80005860:	ffffc097          	auipc	ra,0xffffc
    80005864:	a48080e7          	jalr	-1464(ra) # 800012a8 <_Z8sem_openPP3SEMj>
    sem_open(&spaceAvailable, _cap);
    80005868:	00090593          	mv	a1,s2
    8000586c:	01848513          	addi	a0,s1,24
    80005870:	ffffc097          	auipc	ra,0xffffc
    80005874:	a38080e7          	jalr	-1480(ra) # 800012a8 <_Z8sem_openPP3SEMj>
    sem_open(&mutexHead, 1);
    80005878:	00100593          	li	a1,1
    8000587c:	02848513          	addi	a0,s1,40
    80005880:	ffffc097          	auipc	ra,0xffffc
    80005884:	a28080e7          	jalr	-1496(ra) # 800012a8 <_Z8sem_openPP3SEMj>
    sem_open(&mutexTail, 1);
    80005888:	00100593          	li	a1,1
    8000588c:	03048513          	addi	a0,s1,48
    80005890:	ffffc097          	auipc	ra,0xffffc
    80005894:	a18080e7          	jalr	-1512(ra) # 800012a8 <_Z8sem_openPP3SEMj>
}
    80005898:	01813083          	ld	ra,24(sp)
    8000589c:	01013403          	ld	s0,16(sp)
    800058a0:	00813483          	ld	s1,8(sp)
    800058a4:	00013903          	ld	s2,0(sp)
    800058a8:	02010113          	addi	sp,sp,32
    800058ac:	00008067          	ret

00000000800058b0 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    800058b0:	fe010113          	addi	sp,sp,-32
    800058b4:	00113c23          	sd	ra,24(sp)
    800058b8:	00813823          	sd	s0,16(sp)
    800058bc:	00913423          	sd	s1,8(sp)
    800058c0:	01213023          	sd	s2,0(sp)
    800058c4:	02010413          	addi	s0,sp,32
    800058c8:	00050493          	mv	s1,a0
    800058cc:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    800058d0:	01853503          	ld	a0,24(a0)
    800058d4:	ffffc097          	auipc	ra,0xffffc
    800058d8:	a38080e7          	jalr	-1480(ra) # 8000130c <_Z8sem_waitP3SEM>

    sem_wait(mutexTail);
    800058dc:	0304b503          	ld	a0,48(s1)
    800058e0:	ffffc097          	auipc	ra,0xffffc
    800058e4:	a2c080e7          	jalr	-1492(ra) # 8000130c <_Z8sem_waitP3SEM>
    buffer[tail] = val;
    800058e8:	0084b783          	ld	a5,8(s1)
    800058ec:	0144a703          	lw	a4,20(s1)
    800058f0:	00271713          	slli	a4,a4,0x2
    800058f4:	00e787b3          	add	a5,a5,a4
    800058f8:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800058fc:	0144a783          	lw	a5,20(s1)
    80005900:	0017879b          	addiw	a5,a5,1
    80005904:	0004a703          	lw	a4,0(s1)
    80005908:	02e7e7bb          	remw	a5,a5,a4
    8000590c:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80005910:	0304b503          	ld	a0,48(s1)
    80005914:	ffffc097          	auipc	ra,0xffffc
    80005918:	a28080e7          	jalr	-1496(ra) # 8000133c <_Z10sem_signalP3SEM>

    sem_signal(itemAvailable);
    8000591c:	0204b503          	ld	a0,32(s1)
    80005920:	ffffc097          	auipc	ra,0xffffc
    80005924:	a1c080e7          	jalr	-1508(ra) # 8000133c <_Z10sem_signalP3SEM>

}
    80005928:	01813083          	ld	ra,24(sp)
    8000592c:	01013403          	ld	s0,16(sp)
    80005930:	00813483          	ld	s1,8(sp)
    80005934:	00013903          	ld	s2,0(sp)
    80005938:	02010113          	addi	sp,sp,32
    8000593c:	00008067          	ret

0000000080005940 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80005940:	fe010113          	addi	sp,sp,-32
    80005944:	00113c23          	sd	ra,24(sp)
    80005948:	00813823          	sd	s0,16(sp)
    8000594c:	00913423          	sd	s1,8(sp)
    80005950:	01213023          	sd	s2,0(sp)
    80005954:	02010413          	addi	s0,sp,32
    80005958:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    8000595c:	02053503          	ld	a0,32(a0)
    80005960:	ffffc097          	auipc	ra,0xffffc
    80005964:	9ac080e7          	jalr	-1620(ra) # 8000130c <_Z8sem_waitP3SEM>

    sem_wait(mutexHead);
    80005968:	0284b503          	ld	a0,40(s1)
    8000596c:	ffffc097          	auipc	ra,0xffffc
    80005970:	9a0080e7          	jalr	-1632(ra) # 8000130c <_Z8sem_waitP3SEM>

    int ret = buffer[head];
    80005974:	0084b703          	ld	a4,8(s1)
    80005978:	0104a783          	lw	a5,16(s1)
    8000597c:	00279693          	slli	a3,a5,0x2
    80005980:	00d70733          	add	a4,a4,a3
    80005984:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005988:	0017879b          	addiw	a5,a5,1
    8000598c:	0004a703          	lw	a4,0(s1)
    80005990:	02e7e7bb          	remw	a5,a5,a4
    80005994:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80005998:	0284b503          	ld	a0,40(s1)
    8000599c:	ffffc097          	auipc	ra,0xffffc
    800059a0:	9a0080e7          	jalr	-1632(ra) # 8000133c <_Z10sem_signalP3SEM>

    sem_signal(spaceAvailable);
    800059a4:	0184b503          	ld	a0,24(s1)
    800059a8:	ffffc097          	auipc	ra,0xffffc
    800059ac:	994080e7          	jalr	-1644(ra) # 8000133c <_Z10sem_signalP3SEM>

    return ret;
}
    800059b0:	00090513          	mv	a0,s2
    800059b4:	01813083          	ld	ra,24(sp)
    800059b8:	01013403          	ld	s0,16(sp)
    800059bc:	00813483          	ld	s1,8(sp)
    800059c0:	00013903          	ld	s2,0(sp)
    800059c4:	02010113          	addi	sp,sp,32
    800059c8:	00008067          	ret

00000000800059cc <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    800059cc:	fe010113          	addi	sp,sp,-32
    800059d0:	00113c23          	sd	ra,24(sp)
    800059d4:	00813823          	sd	s0,16(sp)
    800059d8:	00913423          	sd	s1,8(sp)
    800059dc:	01213023          	sd	s2,0(sp)
    800059e0:	02010413          	addi	s0,sp,32
    800059e4:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    800059e8:	02853503          	ld	a0,40(a0)
    800059ec:	ffffc097          	auipc	ra,0xffffc
    800059f0:	920080e7          	jalr	-1760(ra) # 8000130c <_Z8sem_waitP3SEM>
    sem_wait(mutexTail);
    800059f4:	0304b503          	ld	a0,48(s1)
    800059f8:	ffffc097          	auipc	ra,0xffffc
    800059fc:	914080e7          	jalr	-1772(ra) # 8000130c <_Z8sem_waitP3SEM>

    if (tail >= head) {
    80005a00:	0144a783          	lw	a5,20(s1)
    80005a04:	0104a903          	lw	s2,16(s1)
    80005a08:	0327ce63          	blt	a5,s2,80005a44 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80005a0c:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80005a10:	0304b503          	ld	a0,48(s1)
    80005a14:	ffffc097          	auipc	ra,0xffffc
    80005a18:	928080e7          	jalr	-1752(ra) # 8000133c <_Z10sem_signalP3SEM>
    sem_signal(mutexHead);
    80005a1c:	0284b503          	ld	a0,40(s1)
    80005a20:	ffffc097          	auipc	ra,0xffffc
    80005a24:	91c080e7          	jalr	-1764(ra) # 8000133c <_Z10sem_signalP3SEM>

    return ret;
}
    80005a28:	00090513          	mv	a0,s2
    80005a2c:	01813083          	ld	ra,24(sp)
    80005a30:	01013403          	ld	s0,16(sp)
    80005a34:	00813483          	ld	s1,8(sp)
    80005a38:	00013903          	ld	s2,0(sp)
    80005a3c:	02010113          	addi	sp,sp,32
    80005a40:	00008067          	ret
        ret = cap - head + tail;
    80005a44:	0004a703          	lw	a4,0(s1)
    80005a48:	4127093b          	subw	s2,a4,s2
    80005a4c:	00f9093b          	addw	s2,s2,a5
    80005a50:	fc1ff06f          	j	80005a10 <_ZN6Buffer6getCntEv+0x44>

0000000080005a54 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80005a54:	fe010113          	addi	sp,sp,-32
    80005a58:	00113c23          	sd	ra,24(sp)
    80005a5c:	00813823          	sd	s0,16(sp)
    80005a60:	00913423          	sd	s1,8(sp)
    80005a64:	02010413          	addi	s0,sp,32
    80005a68:	00050493          	mv	s1,a0
    __putc('\n');
    80005a6c:	00a00513          	li	a0,10
    80005a70:	00002097          	auipc	ra,0x2
    80005a74:	18c080e7          	jalr	396(ra) # 80007bfc <__putc>
    printString("Buffer deleted!\n");
    80005a78:	00003517          	auipc	a0,0x3
    80005a7c:	81050513          	addi	a0,a0,-2032 # 80008288 <_ZZ12printIntegermE6digits+0x1b8>
    80005a80:	fffff097          	auipc	ra,0xfffff
    80005a84:	0e4080e7          	jalr	228(ra) # 80004b64 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80005a88:	00048513          	mv	a0,s1
    80005a8c:	00000097          	auipc	ra,0x0
    80005a90:	f40080e7          	jalr	-192(ra) # 800059cc <_ZN6Buffer6getCntEv>
    80005a94:	02a05c63          	blez	a0,80005acc <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80005a98:	0084b783          	ld	a5,8(s1)
    80005a9c:	0104a703          	lw	a4,16(s1)
    80005aa0:	00271713          	slli	a4,a4,0x2
    80005aa4:	00e787b3          	add	a5,a5,a4
        __putc(ch);
    80005aa8:	0007c503          	lbu	a0,0(a5)
    80005aac:	00002097          	auipc	ra,0x2
    80005ab0:	150080e7          	jalr	336(ra) # 80007bfc <__putc>
        head = (head + 1) % cap;
    80005ab4:	0104a783          	lw	a5,16(s1)
    80005ab8:	0017879b          	addiw	a5,a5,1
    80005abc:	0004a703          	lw	a4,0(s1)
    80005ac0:	02e7e7bb          	remw	a5,a5,a4
    80005ac4:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80005ac8:	fc1ff06f          	j	80005a88 <_ZN6BufferD1Ev+0x34>
    __putc('!');
    80005acc:	02100513          	li	a0,33
    80005ad0:	00002097          	auipc	ra,0x2
    80005ad4:	12c080e7          	jalr	300(ra) # 80007bfc <__putc>
    __putc('\n');
    80005ad8:	00a00513          	li	a0,10
    80005adc:	00002097          	auipc	ra,0x2
    80005ae0:	120080e7          	jalr	288(ra) # 80007bfc <__putc>
    mem_free(buffer);
    80005ae4:	0084b503          	ld	a0,8(s1)
    80005ae8:	ffffb097          	auipc	ra,0xffffb
    80005aec:	6ac080e7          	jalr	1708(ra) # 80001194 <_Z8mem_freePv>
    sem_close(itemAvailable);
    80005af0:	0204b503          	ld	a0,32(s1)
    80005af4:	ffffb097          	auipc	ra,0xffffb
    80005af8:	7e8080e7          	jalr	2024(ra) # 800012dc <_Z9sem_closeP3SEM>
    sem_close(spaceAvailable);
    80005afc:	0184b503          	ld	a0,24(s1)
    80005b00:	ffffb097          	auipc	ra,0xffffb
    80005b04:	7dc080e7          	jalr	2012(ra) # 800012dc <_Z9sem_closeP3SEM>
    sem_close(mutexTail);
    80005b08:	0304b503          	ld	a0,48(s1)
    80005b0c:	ffffb097          	auipc	ra,0xffffb
    80005b10:	7d0080e7          	jalr	2000(ra) # 800012dc <_Z9sem_closeP3SEM>
    sem_close(mutexHead);
    80005b14:	0284b503          	ld	a0,40(s1)
    80005b18:	ffffb097          	auipc	ra,0xffffb
    80005b1c:	7c4080e7          	jalr	1988(ra) # 800012dc <_Z9sem_closeP3SEM>
}
    80005b20:	01813083          	ld	ra,24(sp)
    80005b24:	01013403          	ld	s0,16(sp)
    80005b28:	00813483          	ld	s1,8(sp)
    80005b2c:	02010113          	addi	sp,sp,32
    80005b30:	00008067          	ret

0000000080005b34 <start>:
    80005b34:	ff010113          	addi	sp,sp,-16
    80005b38:	00813423          	sd	s0,8(sp)
    80005b3c:	01010413          	addi	s0,sp,16
    80005b40:	300027f3          	csrr	a5,mstatus
    80005b44:	ffffe737          	lui	a4,0xffffe
    80005b48:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff32bf>
    80005b4c:	00e7f7b3          	and	a5,a5,a4
    80005b50:	00001737          	lui	a4,0x1
    80005b54:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80005b58:	00e7e7b3          	or	a5,a5,a4
    80005b5c:	30079073          	csrw	mstatus,a5
    80005b60:	00000797          	auipc	a5,0x0
    80005b64:	16078793          	addi	a5,a5,352 # 80005cc0 <system_main>
    80005b68:	34179073          	csrw	mepc,a5
    80005b6c:	00000793          	li	a5,0
    80005b70:	18079073          	csrw	satp,a5
    80005b74:	000107b7          	lui	a5,0x10
    80005b78:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80005b7c:	30279073          	csrw	medeleg,a5
    80005b80:	30379073          	csrw	mideleg,a5
    80005b84:	104027f3          	csrr	a5,sie
    80005b88:	2227e793          	ori	a5,a5,546
    80005b8c:	10479073          	csrw	sie,a5
    80005b90:	fff00793          	li	a5,-1
    80005b94:	00a7d793          	srli	a5,a5,0xa
    80005b98:	3b079073          	csrw	pmpaddr0,a5
    80005b9c:	00f00793          	li	a5,15
    80005ba0:	3a079073          	csrw	pmpcfg0,a5
    80005ba4:	f14027f3          	csrr	a5,mhartid
    80005ba8:	0200c737          	lui	a4,0x200c
    80005bac:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80005bb0:	0007869b          	sext.w	a3,a5
    80005bb4:	00269713          	slli	a4,a3,0x2
    80005bb8:	000f4637          	lui	a2,0xf4
    80005bbc:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80005bc0:	00d70733          	add	a4,a4,a3
    80005bc4:	0037979b          	slliw	a5,a5,0x3
    80005bc8:	020046b7          	lui	a3,0x2004
    80005bcc:	00d787b3          	add	a5,a5,a3
    80005bd0:	00c585b3          	add	a1,a1,a2
    80005bd4:	00371693          	slli	a3,a4,0x3
    80005bd8:	00004717          	auipc	a4,0x4
    80005bdc:	70870713          	addi	a4,a4,1800 # 8000a2e0 <timer_scratch>
    80005be0:	00b7b023          	sd	a1,0(a5)
    80005be4:	00d70733          	add	a4,a4,a3
    80005be8:	00f73c23          	sd	a5,24(a4)
    80005bec:	02c73023          	sd	a2,32(a4)
    80005bf0:	34071073          	csrw	mscratch,a4
    80005bf4:	00000797          	auipc	a5,0x0
    80005bf8:	6ec78793          	addi	a5,a5,1772 # 800062e0 <timervec>
    80005bfc:	30579073          	csrw	mtvec,a5
    80005c00:	300027f3          	csrr	a5,mstatus
    80005c04:	0087e793          	ori	a5,a5,8
    80005c08:	30079073          	csrw	mstatus,a5
    80005c0c:	304027f3          	csrr	a5,mie
    80005c10:	0807e793          	ori	a5,a5,128
    80005c14:	30479073          	csrw	mie,a5
    80005c18:	f14027f3          	csrr	a5,mhartid
    80005c1c:	0007879b          	sext.w	a5,a5
    80005c20:	00078213          	mv	tp,a5
    80005c24:	30200073          	mret
    80005c28:	00813403          	ld	s0,8(sp)
    80005c2c:	01010113          	addi	sp,sp,16
    80005c30:	00008067          	ret

0000000080005c34 <timerinit>:
    80005c34:	ff010113          	addi	sp,sp,-16
    80005c38:	00813423          	sd	s0,8(sp)
    80005c3c:	01010413          	addi	s0,sp,16
    80005c40:	f14027f3          	csrr	a5,mhartid
    80005c44:	0200c737          	lui	a4,0x200c
    80005c48:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80005c4c:	0007869b          	sext.w	a3,a5
    80005c50:	00269713          	slli	a4,a3,0x2
    80005c54:	000f4637          	lui	a2,0xf4
    80005c58:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80005c5c:	00d70733          	add	a4,a4,a3
    80005c60:	0037979b          	slliw	a5,a5,0x3
    80005c64:	020046b7          	lui	a3,0x2004
    80005c68:	00d787b3          	add	a5,a5,a3
    80005c6c:	00c585b3          	add	a1,a1,a2
    80005c70:	00371693          	slli	a3,a4,0x3
    80005c74:	00004717          	auipc	a4,0x4
    80005c78:	66c70713          	addi	a4,a4,1644 # 8000a2e0 <timer_scratch>
    80005c7c:	00b7b023          	sd	a1,0(a5)
    80005c80:	00d70733          	add	a4,a4,a3
    80005c84:	00f73c23          	sd	a5,24(a4)
    80005c88:	02c73023          	sd	a2,32(a4)
    80005c8c:	34071073          	csrw	mscratch,a4
    80005c90:	00000797          	auipc	a5,0x0
    80005c94:	65078793          	addi	a5,a5,1616 # 800062e0 <timervec>
    80005c98:	30579073          	csrw	mtvec,a5
    80005c9c:	300027f3          	csrr	a5,mstatus
    80005ca0:	0087e793          	ori	a5,a5,8
    80005ca4:	30079073          	csrw	mstatus,a5
    80005ca8:	304027f3          	csrr	a5,mie
    80005cac:	0807e793          	ori	a5,a5,128
    80005cb0:	30479073          	csrw	mie,a5
    80005cb4:	00813403          	ld	s0,8(sp)
    80005cb8:	01010113          	addi	sp,sp,16
    80005cbc:	00008067          	ret

0000000080005cc0 <system_main>:
    80005cc0:	fe010113          	addi	sp,sp,-32
    80005cc4:	00813823          	sd	s0,16(sp)
    80005cc8:	00913423          	sd	s1,8(sp)
    80005ccc:	00113c23          	sd	ra,24(sp)
    80005cd0:	02010413          	addi	s0,sp,32
    80005cd4:	00000097          	auipc	ra,0x0
    80005cd8:	0c4080e7          	jalr	196(ra) # 80005d98 <cpuid>
    80005cdc:	00004497          	auipc	s1,0x4
    80005ce0:	54448493          	addi	s1,s1,1348 # 8000a220 <started>
    80005ce4:	02050263          	beqz	a0,80005d08 <system_main+0x48>
    80005ce8:	0004a783          	lw	a5,0(s1)
    80005cec:	0007879b          	sext.w	a5,a5
    80005cf0:	fe078ce3          	beqz	a5,80005ce8 <system_main+0x28>
    80005cf4:	0ff0000f          	fence
    80005cf8:	00002517          	auipc	a0,0x2
    80005cfc:	64850513          	addi	a0,a0,1608 # 80008340 <_ZZ12printIntegermE6digits+0x270>
    80005d00:	00001097          	auipc	ra,0x1
    80005d04:	a7c080e7          	jalr	-1412(ra) # 8000677c <panic>
    80005d08:	00001097          	auipc	ra,0x1
    80005d0c:	9d0080e7          	jalr	-1584(ra) # 800066d8 <consoleinit>
    80005d10:	00001097          	auipc	ra,0x1
    80005d14:	15c080e7          	jalr	348(ra) # 80006e6c <printfinit>
    80005d18:	00002517          	auipc	a0,0x2
    80005d1c:	37850513          	addi	a0,a0,888 # 80008090 <CONSOLE_STATUS+0x80>
    80005d20:	00001097          	auipc	ra,0x1
    80005d24:	ab8080e7          	jalr	-1352(ra) # 800067d8 <__printf>
    80005d28:	00002517          	auipc	a0,0x2
    80005d2c:	5e850513          	addi	a0,a0,1512 # 80008310 <_ZZ12printIntegermE6digits+0x240>
    80005d30:	00001097          	auipc	ra,0x1
    80005d34:	aa8080e7          	jalr	-1368(ra) # 800067d8 <__printf>
    80005d38:	00002517          	auipc	a0,0x2
    80005d3c:	35850513          	addi	a0,a0,856 # 80008090 <CONSOLE_STATUS+0x80>
    80005d40:	00001097          	auipc	ra,0x1
    80005d44:	a98080e7          	jalr	-1384(ra) # 800067d8 <__printf>
    80005d48:	00001097          	auipc	ra,0x1
    80005d4c:	4b0080e7          	jalr	1200(ra) # 800071f8 <kinit>
    80005d50:	00000097          	auipc	ra,0x0
    80005d54:	148080e7          	jalr	328(ra) # 80005e98 <trapinit>
    80005d58:	00000097          	auipc	ra,0x0
    80005d5c:	16c080e7          	jalr	364(ra) # 80005ec4 <trapinithart>
    80005d60:	00000097          	auipc	ra,0x0
    80005d64:	5c0080e7          	jalr	1472(ra) # 80006320 <plicinit>
    80005d68:	00000097          	auipc	ra,0x0
    80005d6c:	5e0080e7          	jalr	1504(ra) # 80006348 <plicinithart>
    80005d70:	00000097          	auipc	ra,0x0
    80005d74:	078080e7          	jalr	120(ra) # 80005de8 <userinit>
    80005d78:	0ff0000f          	fence
    80005d7c:	00100793          	li	a5,1
    80005d80:	00002517          	auipc	a0,0x2
    80005d84:	5a850513          	addi	a0,a0,1448 # 80008328 <_ZZ12printIntegermE6digits+0x258>
    80005d88:	00f4a023          	sw	a5,0(s1)
    80005d8c:	00001097          	auipc	ra,0x1
    80005d90:	a4c080e7          	jalr	-1460(ra) # 800067d8 <__printf>
    80005d94:	0000006f          	j	80005d94 <system_main+0xd4>

0000000080005d98 <cpuid>:
    80005d98:	ff010113          	addi	sp,sp,-16
    80005d9c:	00813423          	sd	s0,8(sp)
    80005da0:	01010413          	addi	s0,sp,16
    80005da4:	00020513          	mv	a0,tp
    80005da8:	00813403          	ld	s0,8(sp)
    80005dac:	0005051b          	sext.w	a0,a0
    80005db0:	01010113          	addi	sp,sp,16
    80005db4:	00008067          	ret

0000000080005db8 <mycpu>:
    80005db8:	ff010113          	addi	sp,sp,-16
    80005dbc:	00813423          	sd	s0,8(sp)
    80005dc0:	01010413          	addi	s0,sp,16
    80005dc4:	00020793          	mv	a5,tp
    80005dc8:	00813403          	ld	s0,8(sp)
    80005dcc:	0007879b          	sext.w	a5,a5
    80005dd0:	00779793          	slli	a5,a5,0x7
    80005dd4:	00005517          	auipc	a0,0x5
    80005dd8:	53c50513          	addi	a0,a0,1340 # 8000b310 <cpus>
    80005ddc:	00f50533          	add	a0,a0,a5
    80005de0:	01010113          	addi	sp,sp,16
    80005de4:	00008067          	ret

0000000080005de8 <userinit>:
    80005de8:	ff010113          	addi	sp,sp,-16
    80005dec:	00813423          	sd	s0,8(sp)
    80005df0:	01010413          	addi	s0,sp,16
    80005df4:	00813403          	ld	s0,8(sp)
    80005df8:	01010113          	addi	sp,sp,16
    80005dfc:	ffffc317          	auipc	t1,0xffffc
    80005e00:	e6430067          	jr	-412(t1) # 80001c60 <main>

0000000080005e04 <either_copyout>:
    80005e04:	ff010113          	addi	sp,sp,-16
    80005e08:	00813023          	sd	s0,0(sp)
    80005e0c:	00113423          	sd	ra,8(sp)
    80005e10:	01010413          	addi	s0,sp,16
    80005e14:	02051663          	bnez	a0,80005e40 <either_copyout+0x3c>
    80005e18:	00058513          	mv	a0,a1
    80005e1c:	00060593          	mv	a1,a2
    80005e20:	0006861b          	sext.w	a2,a3
    80005e24:	00002097          	auipc	ra,0x2
    80005e28:	c60080e7          	jalr	-928(ra) # 80007a84 <__memmove>
    80005e2c:	00813083          	ld	ra,8(sp)
    80005e30:	00013403          	ld	s0,0(sp)
    80005e34:	00000513          	li	a0,0
    80005e38:	01010113          	addi	sp,sp,16
    80005e3c:	00008067          	ret
    80005e40:	00002517          	auipc	a0,0x2
    80005e44:	52850513          	addi	a0,a0,1320 # 80008368 <_ZZ12printIntegermE6digits+0x298>
    80005e48:	00001097          	auipc	ra,0x1
    80005e4c:	934080e7          	jalr	-1740(ra) # 8000677c <panic>

0000000080005e50 <either_copyin>:
    80005e50:	ff010113          	addi	sp,sp,-16
    80005e54:	00813023          	sd	s0,0(sp)
    80005e58:	00113423          	sd	ra,8(sp)
    80005e5c:	01010413          	addi	s0,sp,16
    80005e60:	02059463          	bnez	a1,80005e88 <either_copyin+0x38>
    80005e64:	00060593          	mv	a1,a2
    80005e68:	0006861b          	sext.w	a2,a3
    80005e6c:	00002097          	auipc	ra,0x2
    80005e70:	c18080e7          	jalr	-1000(ra) # 80007a84 <__memmove>
    80005e74:	00813083          	ld	ra,8(sp)
    80005e78:	00013403          	ld	s0,0(sp)
    80005e7c:	00000513          	li	a0,0
    80005e80:	01010113          	addi	sp,sp,16
    80005e84:	00008067          	ret
    80005e88:	00002517          	auipc	a0,0x2
    80005e8c:	50850513          	addi	a0,a0,1288 # 80008390 <_ZZ12printIntegermE6digits+0x2c0>
    80005e90:	00001097          	auipc	ra,0x1
    80005e94:	8ec080e7          	jalr	-1812(ra) # 8000677c <panic>

0000000080005e98 <trapinit>:
    80005e98:	ff010113          	addi	sp,sp,-16
    80005e9c:	00813423          	sd	s0,8(sp)
    80005ea0:	01010413          	addi	s0,sp,16
    80005ea4:	00813403          	ld	s0,8(sp)
    80005ea8:	00002597          	auipc	a1,0x2
    80005eac:	51058593          	addi	a1,a1,1296 # 800083b8 <_ZZ12printIntegermE6digits+0x2e8>
    80005eb0:	00005517          	auipc	a0,0x5
    80005eb4:	4e050513          	addi	a0,a0,1248 # 8000b390 <tickslock>
    80005eb8:	01010113          	addi	sp,sp,16
    80005ebc:	00001317          	auipc	t1,0x1
    80005ec0:	5cc30067          	jr	1484(t1) # 80007488 <initlock>

0000000080005ec4 <trapinithart>:
    80005ec4:	ff010113          	addi	sp,sp,-16
    80005ec8:	00813423          	sd	s0,8(sp)
    80005ecc:	01010413          	addi	s0,sp,16
    80005ed0:	00000797          	auipc	a5,0x0
    80005ed4:	30078793          	addi	a5,a5,768 # 800061d0 <kernelvec>
    80005ed8:	10579073          	csrw	stvec,a5
    80005edc:	00813403          	ld	s0,8(sp)
    80005ee0:	01010113          	addi	sp,sp,16
    80005ee4:	00008067          	ret

0000000080005ee8 <usertrap>:
    80005ee8:	ff010113          	addi	sp,sp,-16
    80005eec:	00813423          	sd	s0,8(sp)
    80005ef0:	01010413          	addi	s0,sp,16
    80005ef4:	00813403          	ld	s0,8(sp)
    80005ef8:	01010113          	addi	sp,sp,16
    80005efc:	00008067          	ret

0000000080005f00 <usertrapret>:
    80005f00:	ff010113          	addi	sp,sp,-16
    80005f04:	00813423          	sd	s0,8(sp)
    80005f08:	01010413          	addi	s0,sp,16
    80005f0c:	00813403          	ld	s0,8(sp)
    80005f10:	01010113          	addi	sp,sp,16
    80005f14:	00008067          	ret

0000000080005f18 <kerneltrap>:
    80005f18:	fe010113          	addi	sp,sp,-32
    80005f1c:	00813823          	sd	s0,16(sp)
    80005f20:	00113c23          	sd	ra,24(sp)
    80005f24:	00913423          	sd	s1,8(sp)
    80005f28:	02010413          	addi	s0,sp,32
    80005f2c:	142025f3          	csrr	a1,scause
    80005f30:	100027f3          	csrr	a5,sstatus
    80005f34:	0027f793          	andi	a5,a5,2
    80005f38:	10079c63          	bnez	a5,80006050 <kerneltrap+0x138>
    80005f3c:	142027f3          	csrr	a5,scause
    80005f40:	0207ce63          	bltz	a5,80005f7c <kerneltrap+0x64>
    80005f44:	00002517          	auipc	a0,0x2
    80005f48:	4bc50513          	addi	a0,a0,1212 # 80008400 <_ZZ12printIntegermE6digits+0x330>
    80005f4c:	00001097          	auipc	ra,0x1
    80005f50:	88c080e7          	jalr	-1908(ra) # 800067d8 <__printf>
    80005f54:	141025f3          	csrr	a1,sepc
    80005f58:	14302673          	csrr	a2,stval
    80005f5c:	00002517          	auipc	a0,0x2
    80005f60:	4b450513          	addi	a0,a0,1204 # 80008410 <_ZZ12printIntegermE6digits+0x340>
    80005f64:	00001097          	auipc	ra,0x1
    80005f68:	874080e7          	jalr	-1932(ra) # 800067d8 <__printf>
    80005f6c:	00002517          	auipc	a0,0x2
    80005f70:	4bc50513          	addi	a0,a0,1212 # 80008428 <_ZZ12printIntegermE6digits+0x358>
    80005f74:	00001097          	auipc	ra,0x1
    80005f78:	808080e7          	jalr	-2040(ra) # 8000677c <panic>
    80005f7c:	0ff7f713          	andi	a4,a5,255
    80005f80:	00900693          	li	a3,9
    80005f84:	04d70063          	beq	a4,a3,80005fc4 <kerneltrap+0xac>
    80005f88:	fff00713          	li	a4,-1
    80005f8c:	03f71713          	slli	a4,a4,0x3f
    80005f90:	00170713          	addi	a4,a4,1
    80005f94:	fae798e3          	bne	a5,a4,80005f44 <kerneltrap+0x2c>
    80005f98:	00000097          	auipc	ra,0x0
    80005f9c:	e00080e7          	jalr	-512(ra) # 80005d98 <cpuid>
    80005fa0:	06050663          	beqz	a0,8000600c <kerneltrap+0xf4>
    80005fa4:	144027f3          	csrr	a5,sip
    80005fa8:	ffd7f793          	andi	a5,a5,-3
    80005fac:	14479073          	csrw	sip,a5
    80005fb0:	01813083          	ld	ra,24(sp)
    80005fb4:	01013403          	ld	s0,16(sp)
    80005fb8:	00813483          	ld	s1,8(sp)
    80005fbc:	02010113          	addi	sp,sp,32
    80005fc0:	00008067          	ret
    80005fc4:	00000097          	auipc	ra,0x0
    80005fc8:	3d0080e7          	jalr	976(ra) # 80006394 <plic_claim>
    80005fcc:	00a00793          	li	a5,10
    80005fd0:	00050493          	mv	s1,a0
    80005fd4:	06f50863          	beq	a0,a5,80006044 <kerneltrap+0x12c>
    80005fd8:	fc050ce3          	beqz	a0,80005fb0 <kerneltrap+0x98>
    80005fdc:	00050593          	mv	a1,a0
    80005fe0:	00002517          	auipc	a0,0x2
    80005fe4:	40050513          	addi	a0,a0,1024 # 800083e0 <_ZZ12printIntegermE6digits+0x310>
    80005fe8:	00000097          	auipc	ra,0x0
    80005fec:	7f0080e7          	jalr	2032(ra) # 800067d8 <__printf>
    80005ff0:	01013403          	ld	s0,16(sp)
    80005ff4:	01813083          	ld	ra,24(sp)
    80005ff8:	00048513          	mv	a0,s1
    80005ffc:	00813483          	ld	s1,8(sp)
    80006000:	02010113          	addi	sp,sp,32
    80006004:	00000317          	auipc	t1,0x0
    80006008:	3c830067          	jr	968(t1) # 800063cc <plic_complete>
    8000600c:	00005517          	auipc	a0,0x5
    80006010:	38450513          	addi	a0,a0,900 # 8000b390 <tickslock>
    80006014:	00001097          	auipc	ra,0x1
    80006018:	498080e7          	jalr	1176(ra) # 800074ac <acquire>
    8000601c:	00004717          	auipc	a4,0x4
    80006020:	20870713          	addi	a4,a4,520 # 8000a224 <ticks>
    80006024:	00072783          	lw	a5,0(a4)
    80006028:	00005517          	auipc	a0,0x5
    8000602c:	36850513          	addi	a0,a0,872 # 8000b390 <tickslock>
    80006030:	0017879b          	addiw	a5,a5,1
    80006034:	00f72023          	sw	a5,0(a4)
    80006038:	00001097          	auipc	ra,0x1
    8000603c:	540080e7          	jalr	1344(ra) # 80007578 <release>
    80006040:	f65ff06f          	j	80005fa4 <kerneltrap+0x8c>
    80006044:	00001097          	auipc	ra,0x1
    80006048:	09c080e7          	jalr	156(ra) # 800070e0 <uartintr>
    8000604c:	fa5ff06f          	j	80005ff0 <kerneltrap+0xd8>
    80006050:	00002517          	auipc	a0,0x2
    80006054:	37050513          	addi	a0,a0,880 # 800083c0 <_ZZ12printIntegermE6digits+0x2f0>
    80006058:	00000097          	auipc	ra,0x0
    8000605c:	724080e7          	jalr	1828(ra) # 8000677c <panic>

0000000080006060 <clockintr>:
    80006060:	fe010113          	addi	sp,sp,-32
    80006064:	00813823          	sd	s0,16(sp)
    80006068:	00913423          	sd	s1,8(sp)
    8000606c:	00113c23          	sd	ra,24(sp)
    80006070:	02010413          	addi	s0,sp,32
    80006074:	00005497          	auipc	s1,0x5
    80006078:	31c48493          	addi	s1,s1,796 # 8000b390 <tickslock>
    8000607c:	00048513          	mv	a0,s1
    80006080:	00001097          	auipc	ra,0x1
    80006084:	42c080e7          	jalr	1068(ra) # 800074ac <acquire>
    80006088:	00004717          	auipc	a4,0x4
    8000608c:	19c70713          	addi	a4,a4,412 # 8000a224 <ticks>
    80006090:	00072783          	lw	a5,0(a4)
    80006094:	01013403          	ld	s0,16(sp)
    80006098:	01813083          	ld	ra,24(sp)
    8000609c:	00048513          	mv	a0,s1
    800060a0:	0017879b          	addiw	a5,a5,1
    800060a4:	00813483          	ld	s1,8(sp)
    800060a8:	00f72023          	sw	a5,0(a4)
    800060ac:	02010113          	addi	sp,sp,32
    800060b0:	00001317          	auipc	t1,0x1
    800060b4:	4c830067          	jr	1224(t1) # 80007578 <release>

00000000800060b8 <devintr>:
    800060b8:	142027f3          	csrr	a5,scause
    800060bc:	00000513          	li	a0,0
    800060c0:	0007c463          	bltz	a5,800060c8 <devintr+0x10>
    800060c4:	00008067          	ret
    800060c8:	fe010113          	addi	sp,sp,-32
    800060cc:	00813823          	sd	s0,16(sp)
    800060d0:	00113c23          	sd	ra,24(sp)
    800060d4:	00913423          	sd	s1,8(sp)
    800060d8:	02010413          	addi	s0,sp,32
    800060dc:	0ff7f713          	andi	a4,a5,255
    800060e0:	00900693          	li	a3,9
    800060e4:	04d70c63          	beq	a4,a3,8000613c <devintr+0x84>
    800060e8:	fff00713          	li	a4,-1
    800060ec:	03f71713          	slli	a4,a4,0x3f
    800060f0:	00170713          	addi	a4,a4,1
    800060f4:	00e78c63          	beq	a5,a4,8000610c <devintr+0x54>
    800060f8:	01813083          	ld	ra,24(sp)
    800060fc:	01013403          	ld	s0,16(sp)
    80006100:	00813483          	ld	s1,8(sp)
    80006104:	02010113          	addi	sp,sp,32
    80006108:	00008067          	ret
    8000610c:	00000097          	auipc	ra,0x0
    80006110:	c8c080e7          	jalr	-884(ra) # 80005d98 <cpuid>
    80006114:	06050663          	beqz	a0,80006180 <devintr+0xc8>
    80006118:	144027f3          	csrr	a5,sip
    8000611c:	ffd7f793          	andi	a5,a5,-3
    80006120:	14479073          	csrw	sip,a5
    80006124:	01813083          	ld	ra,24(sp)
    80006128:	01013403          	ld	s0,16(sp)
    8000612c:	00813483          	ld	s1,8(sp)
    80006130:	00200513          	li	a0,2
    80006134:	02010113          	addi	sp,sp,32
    80006138:	00008067          	ret
    8000613c:	00000097          	auipc	ra,0x0
    80006140:	258080e7          	jalr	600(ra) # 80006394 <plic_claim>
    80006144:	00a00793          	li	a5,10
    80006148:	00050493          	mv	s1,a0
    8000614c:	06f50663          	beq	a0,a5,800061b8 <devintr+0x100>
    80006150:	00100513          	li	a0,1
    80006154:	fa0482e3          	beqz	s1,800060f8 <devintr+0x40>
    80006158:	00048593          	mv	a1,s1
    8000615c:	00002517          	auipc	a0,0x2
    80006160:	28450513          	addi	a0,a0,644 # 800083e0 <_ZZ12printIntegermE6digits+0x310>
    80006164:	00000097          	auipc	ra,0x0
    80006168:	674080e7          	jalr	1652(ra) # 800067d8 <__printf>
    8000616c:	00048513          	mv	a0,s1
    80006170:	00000097          	auipc	ra,0x0
    80006174:	25c080e7          	jalr	604(ra) # 800063cc <plic_complete>
    80006178:	00100513          	li	a0,1
    8000617c:	f7dff06f          	j	800060f8 <devintr+0x40>
    80006180:	00005517          	auipc	a0,0x5
    80006184:	21050513          	addi	a0,a0,528 # 8000b390 <tickslock>
    80006188:	00001097          	auipc	ra,0x1
    8000618c:	324080e7          	jalr	804(ra) # 800074ac <acquire>
    80006190:	00004717          	auipc	a4,0x4
    80006194:	09470713          	addi	a4,a4,148 # 8000a224 <ticks>
    80006198:	00072783          	lw	a5,0(a4)
    8000619c:	00005517          	auipc	a0,0x5
    800061a0:	1f450513          	addi	a0,a0,500 # 8000b390 <tickslock>
    800061a4:	0017879b          	addiw	a5,a5,1
    800061a8:	00f72023          	sw	a5,0(a4)
    800061ac:	00001097          	auipc	ra,0x1
    800061b0:	3cc080e7          	jalr	972(ra) # 80007578 <release>
    800061b4:	f65ff06f          	j	80006118 <devintr+0x60>
    800061b8:	00001097          	auipc	ra,0x1
    800061bc:	f28080e7          	jalr	-216(ra) # 800070e0 <uartintr>
    800061c0:	fadff06f          	j	8000616c <devintr+0xb4>
	...

00000000800061d0 <kernelvec>:
    800061d0:	f0010113          	addi	sp,sp,-256
    800061d4:	00113023          	sd	ra,0(sp)
    800061d8:	00213423          	sd	sp,8(sp)
    800061dc:	00313823          	sd	gp,16(sp)
    800061e0:	00413c23          	sd	tp,24(sp)
    800061e4:	02513023          	sd	t0,32(sp)
    800061e8:	02613423          	sd	t1,40(sp)
    800061ec:	02713823          	sd	t2,48(sp)
    800061f0:	02813c23          	sd	s0,56(sp)
    800061f4:	04913023          	sd	s1,64(sp)
    800061f8:	04a13423          	sd	a0,72(sp)
    800061fc:	04b13823          	sd	a1,80(sp)
    80006200:	04c13c23          	sd	a2,88(sp)
    80006204:	06d13023          	sd	a3,96(sp)
    80006208:	06e13423          	sd	a4,104(sp)
    8000620c:	06f13823          	sd	a5,112(sp)
    80006210:	07013c23          	sd	a6,120(sp)
    80006214:	09113023          	sd	a7,128(sp)
    80006218:	09213423          	sd	s2,136(sp)
    8000621c:	09313823          	sd	s3,144(sp)
    80006220:	09413c23          	sd	s4,152(sp)
    80006224:	0b513023          	sd	s5,160(sp)
    80006228:	0b613423          	sd	s6,168(sp)
    8000622c:	0b713823          	sd	s7,176(sp)
    80006230:	0b813c23          	sd	s8,184(sp)
    80006234:	0d913023          	sd	s9,192(sp)
    80006238:	0da13423          	sd	s10,200(sp)
    8000623c:	0db13823          	sd	s11,208(sp)
    80006240:	0dc13c23          	sd	t3,216(sp)
    80006244:	0fd13023          	sd	t4,224(sp)
    80006248:	0fe13423          	sd	t5,232(sp)
    8000624c:	0ff13823          	sd	t6,240(sp)
    80006250:	cc9ff0ef          	jal	ra,80005f18 <kerneltrap>
    80006254:	00013083          	ld	ra,0(sp)
    80006258:	00813103          	ld	sp,8(sp)
    8000625c:	01013183          	ld	gp,16(sp)
    80006260:	02013283          	ld	t0,32(sp)
    80006264:	02813303          	ld	t1,40(sp)
    80006268:	03013383          	ld	t2,48(sp)
    8000626c:	03813403          	ld	s0,56(sp)
    80006270:	04013483          	ld	s1,64(sp)
    80006274:	04813503          	ld	a0,72(sp)
    80006278:	05013583          	ld	a1,80(sp)
    8000627c:	05813603          	ld	a2,88(sp)
    80006280:	06013683          	ld	a3,96(sp)
    80006284:	06813703          	ld	a4,104(sp)
    80006288:	07013783          	ld	a5,112(sp)
    8000628c:	07813803          	ld	a6,120(sp)
    80006290:	08013883          	ld	a7,128(sp)
    80006294:	08813903          	ld	s2,136(sp)
    80006298:	09013983          	ld	s3,144(sp)
    8000629c:	09813a03          	ld	s4,152(sp)
    800062a0:	0a013a83          	ld	s5,160(sp)
    800062a4:	0a813b03          	ld	s6,168(sp)
    800062a8:	0b013b83          	ld	s7,176(sp)
    800062ac:	0b813c03          	ld	s8,184(sp)
    800062b0:	0c013c83          	ld	s9,192(sp)
    800062b4:	0c813d03          	ld	s10,200(sp)
    800062b8:	0d013d83          	ld	s11,208(sp)
    800062bc:	0d813e03          	ld	t3,216(sp)
    800062c0:	0e013e83          	ld	t4,224(sp)
    800062c4:	0e813f03          	ld	t5,232(sp)
    800062c8:	0f013f83          	ld	t6,240(sp)
    800062cc:	10010113          	addi	sp,sp,256
    800062d0:	10200073          	sret
    800062d4:	00000013          	nop
    800062d8:	00000013          	nop
    800062dc:	00000013          	nop

00000000800062e0 <timervec>:
    800062e0:	34051573          	csrrw	a0,mscratch,a0
    800062e4:	00b53023          	sd	a1,0(a0)
    800062e8:	00c53423          	sd	a2,8(a0)
    800062ec:	00d53823          	sd	a3,16(a0)
    800062f0:	01853583          	ld	a1,24(a0)
    800062f4:	02053603          	ld	a2,32(a0)
    800062f8:	0005b683          	ld	a3,0(a1)
    800062fc:	00c686b3          	add	a3,a3,a2
    80006300:	00d5b023          	sd	a3,0(a1)
    80006304:	00200593          	li	a1,2
    80006308:	14459073          	csrw	sip,a1
    8000630c:	01053683          	ld	a3,16(a0)
    80006310:	00853603          	ld	a2,8(a0)
    80006314:	00053583          	ld	a1,0(a0)
    80006318:	34051573          	csrrw	a0,mscratch,a0
    8000631c:	30200073          	mret

0000000080006320 <plicinit>:
    80006320:	ff010113          	addi	sp,sp,-16
    80006324:	00813423          	sd	s0,8(sp)
    80006328:	01010413          	addi	s0,sp,16
    8000632c:	00813403          	ld	s0,8(sp)
    80006330:	0c0007b7          	lui	a5,0xc000
    80006334:	00100713          	li	a4,1
    80006338:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000633c:	00e7a223          	sw	a4,4(a5)
    80006340:	01010113          	addi	sp,sp,16
    80006344:	00008067          	ret

0000000080006348 <plicinithart>:
    80006348:	ff010113          	addi	sp,sp,-16
    8000634c:	00813023          	sd	s0,0(sp)
    80006350:	00113423          	sd	ra,8(sp)
    80006354:	01010413          	addi	s0,sp,16
    80006358:	00000097          	auipc	ra,0x0
    8000635c:	a40080e7          	jalr	-1472(ra) # 80005d98 <cpuid>
    80006360:	0085171b          	slliw	a4,a0,0x8
    80006364:	0c0027b7          	lui	a5,0xc002
    80006368:	00e787b3          	add	a5,a5,a4
    8000636c:	40200713          	li	a4,1026
    80006370:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80006374:	00813083          	ld	ra,8(sp)
    80006378:	00013403          	ld	s0,0(sp)
    8000637c:	00d5151b          	slliw	a0,a0,0xd
    80006380:	0c2017b7          	lui	a5,0xc201
    80006384:	00a78533          	add	a0,a5,a0
    80006388:	00052023          	sw	zero,0(a0)
    8000638c:	01010113          	addi	sp,sp,16
    80006390:	00008067          	ret

0000000080006394 <plic_claim>:
    80006394:	ff010113          	addi	sp,sp,-16
    80006398:	00813023          	sd	s0,0(sp)
    8000639c:	00113423          	sd	ra,8(sp)
    800063a0:	01010413          	addi	s0,sp,16
    800063a4:	00000097          	auipc	ra,0x0
    800063a8:	9f4080e7          	jalr	-1548(ra) # 80005d98 <cpuid>
    800063ac:	00813083          	ld	ra,8(sp)
    800063b0:	00013403          	ld	s0,0(sp)
    800063b4:	00d5151b          	slliw	a0,a0,0xd
    800063b8:	0c2017b7          	lui	a5,0xc201
    800063bc:	00a78533          	add	a0,a5,a0
    800063c0:	00452503          	lw	a0,4(a0)
    800063c4:	01010113          	addi	sp,sp,16
    800063c8:	00008067          	ret

00000000800063cc <plic_complete>:
    800063cc:	fe010113          	addi	sp,sp,-32
    800063d0:	00813823          	sd	s0,16(sp)
    800063d4:	00913423          	sd	s1,8(sp)
    800063d8:	00113c23          	sd	ra,24(sp)
    800063dc:	02010413          	addi	s0,sp,32
    800063e0:	00050493          	mv	s1,a0
    800063e4:	00000097          	auipc	ra,0x0
    800063e8:	9b4080e7          	jalr	-1612(ra) # 80005d98 <cpuid>
    800063ec:	01813083          	ld	ra,24(sp)
    800063f0:	01013403          	ld	s0,16(sp)
    800063f4:	00d5179b          	slliw	a5,a0,0xd
    800063f8:	0c201737          	lui	a4,0xc201
    800063fc:	00f707b3          	add	a5,a4,a5
    80006400:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80006404:	00813483          	ld	s1,8(sp)
    80006408:	02010113          	addi	sp,sp,32
    8000640c:	00008067          	ret

0000000080006410 <consolewrite>:
    80006410:	fb010113          	addi	sp,sp,-80
    80006414:	04813023          	sd	s0,64(sp)
    80006418:	04113423          	sd	ra,72(sp)
    8000641c:	02913c23          	sd	s1,56(sp)
    80006420:	03213823          	sd	s2,48(sp)
    80006424:	03313423          	sd	s3,40(sp)
    80006428:	03413023          	sd	s4,32(sp)
    8000642c:	01513c23          	sd	s5,24(sp)
    80006430:	05010413          	addi	s0,sp,80
    80006434:	06c05c63          	blez	a2,800064ac <consolewrite+0x9c>
    80006438:	00060993          	mv	s3,a2
    8000643c:	00050a13          	mv	s4,a0
    80006440:	00058493          	mv	s1,a1
    80006444:	00000913          	li	s2,0
    80006448:	fff00a93          	li	s5,-1
    8000644c:	01c0006f          	j	80006468 <consolewrite+0x58>
    80006450:	fbf44503          	lbu	a0,-65(s0)
    80006454:	0019091b          	addiw	s2,s2,1
    80006458:	00148493          	addi	s1,s1,1
    8000645c:	00001097          	auipc	ra,0x1
    80006460:	a9c080e7          	jalr	-1380(ra) # 80006ef8 <uartputc>
    80006464:	03298063          	beq	s3,s2,80006484 <consolewrite+0x74>
    80006468:	00048613          	mv	a2,s1
    8000646c:	00100693          	li	a3,1
    80006470:	000a0593          	mv	a1,s4
    80006474:	fbf40513          	addi	a0,s0,-65
    80006478:	00000097          	auipc	ra,0x0
    8000647c:	9d8080e7          	jalr	-1576(ra) # 80005e50 <either_copyin>
    80006480:	fd5518e3          	bne	a0,s5,80006450 <consolewrite+0x40>
    80006484:	04813083          	ld	ra,72(sp)
    80006488:	04013403          	ld	s0,64(sp)
    8000648c:	03813483          	ld	s1,56(sp)
    80006490:	02813983          	ld	s3,40(sp)
    80006494:	02013a03          	ld	s4,32(sp)
    80006498:	01813a83          	ld	s5,24(sp)
    8000649c:	00090513          	mv	a0,s2
    800064a0:	03013903          	ld	s2,48(sp)
    800064a4:	05010113          	addi	sp,sp,80
    800064a8:	00008067          	ret
    800064ac:	00000913          	li	s2,0
    800064b0:	fd5ff06f          	j	80006484 <consolewrite+0x74>

00000000800064b4 <consoleread>:
    800064b4:	f9010113          	addi	sp,sp,-112
    800064b8:	06813023          	sd	s0,96(sp)
    800064bc:	04913c23          	sd	s1,88(sp)
    800064c0:	05213823          	sd	s2,80(sp)
    800064c4:	05313423          	sd	s3,72(sp)
    800064c8:	05413023          	sd	s4,64(sp)
    800064cc:	03513c23          	sd	s5,56(sp)
    800064d0:	03613823          	sd	s6,48(sp)
    800064d4:	03713423          	sd	s7,40(sp)
    800064d8:	03813023          	sd	s8,32(sp)
    800064dc:	06113423          	sd	ra,104(sp)
    800064e0:	01913c23          	sd	s9,24(sp)
    800064e4:	07010413          	addi	s0,sp,112
    800064e8:	00060b93          	mv	s7,a2
    800064ec:	00050913          	mv	s2,a0
    800064f0:	00058c13          	mv	s8,a1
    800064f4:	00060b1b          	sext.w	s6,a2
    800064f8:	00005497          	auipc	s1,0x5
    800064fc:	ec048493          	addi	s1,s1,-320 # 8000b3b8 <cons>
    80006500:	00400993          	li	s3,4
    80006504:	fff00a13          	li	s4,-1
    80006508:	00a00a93          	li	s5,10
    8000650c:	05705e63          	blez	s7,80006568 <consoleread+0xb4>
    80006510:	09c4a703          	lw	a4,156(s1)
    80006514:	0984a783          	lw	a5,152(s1)
    80006518:	0007071b          	sext.w	a4,a4
    8000651c:	08e78463          	beq	a5,a4,800065a4 <consoleread+0xf0>
    80006520:	07f7f713          	andi	a4,a5,127
    80006524:	00e48733          	add	a4,s1,a4
    80006528:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000652c:	0017869b          	addiw	a3,a5,1
    80006530:	08d4ac23          	sw	a3,152(s1)
    80006534:	00070c9b          	sext.w	s9,a4
    80006538:	0b370663          	beq	a4,s3,800065e4 <consoleread+0x130>
    8000653c:	00100693          	li	a3,1
    80006540:	f9f40613          	addi	a2,s0,-97
    80006544:	000c0593          	mv	a1,s8
    80006548:	00090513          	mv	a0,s2
    8000654c:	f8e40fa3          	sb	a4,-97(s0)
    80006550:	00000097          	auipc	ra,0x0
    80006554:	8b4080e7          	jalr	-1868(ra) # 80005e04 <either_copyout>
    80006558:	01450863          	beq	a0,s4,80006568 <consoleread+0xb4>
    8000655c:	001c0c13          	addi	s8,s8,1
    80006560:	fffb8b9b          	addiw	s7,s7,-1
    80006564:	fb5c94e3          	bne	s9,s5,8000650c <consoleread+0x58>
    80006568:	000b851b          	sext.w	a0,s7
    8000656c:	06813083          	ld	ra,104(sp)
    80006570:	06013403          	ld	s0,96(sp)
    80006574:	05813483          	ld	s1,88(sp)
    80006578:	05013903          	ld	s2,80(sp)
    8000657c:	04813983          	ld	s3,72(sp)
    80006580:	04013a03          	ld	s4,64(sp)
    80006584:	03813a83          	ld	s5,56(sp)
    80006588:	02813b83          	ld	s7,40(sp)
    8000658c:	02013c03          	ld	s8,32(sp)
    80006590:	01813c83          	ld	s9,24(sp)
    80006594:	40ab053b          	subw	a0,s6,a0
    80006598:	03013b03          	ld	s6,48(sp)
    8000659c:	07010113          	addi	sp,sp,112
    800065a0:	00008067          	ret
    800065a4:	00001097          	auipc	ra,0x1
    800065a8:	1d8080e7          	jalr	472(ra) # 8000777c <push_on>
    800065ac:	0984a703          	lw	a4,152(s1)
    800065b0:	09c4a783          	lw	a5,156(s1)
    800065b4:	0007879b          	sext.w	a5,a5
    800065b8:	fef70ce3          	beq	a4,a5,800065b0 <consoleread+0xfc>
    800065bc:	00001097          	auipc	ra,0x1
    800065c0:	234080e7          	jalr	564(ra) # 800077f0 <pop_on>
    800065c4:	0984a783          	lw	a5,152(s1)
    800065c8:	07f7f713          	andi	a4,a5,127
    800065cc:	00e48733          	add	a4,s1,a4
    800065d0:	01874703          	lbu	a4,24(a4)
    800065d4:	0017869b          	addiw	a3,a5,1
    800065d8:	08d4ac23          	sw	a3,152(s1)
    800065dc:	00070c9b          	sext.w	s9,a4
    800065e0:	f5371ee3          	bne	a4,s3,8000653c <consoleread+0x88>
    800065e4:	000b851b          	sext.w	a0,s7
    800065e8:	f96bf2e3          	bgeu	s7,s6,8000656c <consoleread+0xb8>
    800065ec:	08f4ac23          	sw	a5,152(s1)
    800065f0:	f7dff06f          	j	8000656c <consoleread+0xb8>

00000000800065f4 <consputc>:
    800065f4:	10000793          	li	a5,256
    800065f8:	00f50663          	beq	a0,a5,80006604 <consputc+0x10>
    800065fc:	00001317          	auipc	t1,0x1
    80006600:	9f430067          	jr	-1548(t1) # 80006ff0 <uartputc_sync>
    80006604:	ff010113          	addi	sp,sp,-16
    80006608:	00113423          	sd	ra,8(sp)
    8000660c:	00813023          	sd	s0,0(sp)
    80006610:	01010413          	addi	s0,sp,16
    80006614:	00800513          	li	a0,8
    80006618:	00001097          	auipc	ra,0x1
    8000661c:	9d8080e7          	jalr	-1576(ra) # 80006ff0 <uartputc_sync>
    80006620:	02000513          	li	a0,32
    80006624:	00001097          	auipc	ra,0x1
    80006628:	9cc080e7          	jalr	-1588(ra) # 80006ff0 <uartputc_sync>
    8000662c:	00013403          	ld	s0,0(sp)
    80006630:	00813083          	ld	ra,8(sp)
    80006634:	00800513          	li	a0,8
    80006638:	01010113          	addi	sp,sp,16
    8000663c:	00001317          	auipc	t1,0x1
    80006640:	9b430067          	jr	-1612(t1) # 80006ff0 <uartputc_sync>

0000000080006644 <consoleintr>:
    80006644:	fe010113          	addi	sp,sp,-32
    80006648:	00813823          	sd	s0,16(sp)
    8000664c:	00913423          	sd	s1,8(sp)
    80006650:	01213023          	sd	s2,0(sp)
    80006654:	00113c23          	sd	ra,24(sp)
    80006658:	02010413          	addi	s0,sp,32
    8000665c:	00005917          	auipc	s2,0x5
    80006660:	d5c90913          	addi	s2,s2,-676 # 8000b3b8 <cons>
    80006664:	00050493          	mv	s1,a0
    80006668:	00090513          	mv	a0,s2
    8000666c:	00001097          	auipc	ra,0x1
    80006670:	e40080e7          	jalr	-448(ra) # 800074ac <acquire>
    80006674:	02048c63          	beqz	s1,800066ac <consoleintr+0x68>
    80006678:	0a092783          	lw	a5,160(s2)
    8000667c:	09892703          	lw	a4,152(s2)
    80006680:	07f00693          	li	a3,127
    80006684:	40e7873b          	subw	a4,a5,a4
    80006688:	02e6e263          	bltu	a3,a4,800066ac <consoleintr+0x68>
    8000668c:	00d00713          	li	a4,13
    80006690:	04e48063          	beq	s1,a4,800066d0 <consoleintr+0x8c>
    80006694:	07f7f713          	andi	a4,a5,127
    80006698:	00e90733          	add	a4,s2,a4
    8000669c:	0017879b          	addiw	a5,a5,1
    800066a0:	0af92023          	sw	a5,160(s2)
    800066a4:	00970c23          	sb	s1,24(a4)
    800066a8:	08f92e23          	sw	a5,156(s2)
    800066ac:	01013403          	ld	s0,16(sp)
    800066b0:	01813083          	ld	ra,24(sp)
    800066b4:	00813483          	ld	s1,8(sp)
    800066b8:	00013903          	ld	s2,0(sp)
    800066bc:	00005517          	auipc	a0,0x5
    800066c0:	cfc50513          	addi	a0,a0,-772 # 8000b3b8 <cons>
    800066c4:	02010113          	addi	sp,sp,32
    800066c8:	00001317          	auipc	t1,0x1
    800066cc:	eb030067          	jr	-336(t1) # 80007578 <release>
    800066d0:	00a00493          	li	s1,10
    800066d4:	fc1ff06f          	j	80006694 <consoleintr+0x50>

00000000800066d8 <consoleinit>:
    800066d8:	fe010113          	addi	sp,sp,-32
    800066dc:	00113c23          	sd	ra,24(sp)
    800066e0:	00813823          	sd	s0,16(sp)
    800066e4:	00913423          	sd	s1,8(sp)
    800066e8:	02010413          	addi	s0,sp,32
    800066ec:	00005497          	auipc	s1,0x5
    800066f0:	ccc48493          	addi	s1,s1,-820 # 8000b3b8 <cons>
    800066f4:	00048513          	mv	a0,s1
    800066f8:	00002597          	auipc	a1,0x2
    800066fc:	d4058593          	addi	a1,a1,-704 # 80008438 <_ZZ12printIntegermE6digits+0x368>
    80006700:	00001097          	auipc	ra,0x1
    80006704:	d88080e7          	jalr	-632(ra) # 80007488 <initlock>
    80006708:	00000097          	auipc	ra,0x0
    8000670c:	7ac080e7          	jalr	1964(ra) # 80006eb4 <uartinit>
    80006710:	01813083          	ld	ra,24(sp)
    80006714:	01013403          	ld	s0,16(sp)
    80006718:	00000797          	auipc	a5,0x0
    8000671c:	d9c78793          	addi	a5,a5,-612 # 800064b4 <consoleread>
    80006720:	0af4bc23          	sd	a5,184(s1)
    80006724:	00000797          	auipc	a5,0x0
    80006728:	cec78793          	addi	a5,a5,-788 # 80006410 <consolewrite>
    8000672c:	0cf4b023          	sd	a5,192(s1)
    80006730:	00813483          	ld	s1,8(sp)
    80006734:	02010113          	addi	sp,sp,32
    80006738:	00008067          	ret

000000008000673c <console_read>:
    8000673c:	ff010113          	addi	sp,sp,-16
    80006740:	00813423          	sd	s0,8(sp)
    80006744:	01010413          	addi	s0,sp,16
    80006748:	00813403          	ld	s0,8(sp)
    8000674c:	00005317          	auipc	t1,0x5
    80006750:	d2433303          	ld	t1,-732(t1) # 8000b470 <devsw+0x10>
    80006754:	01010113          	addi	sp,sp,16
    80006758:	00030067          	jr	t1

000000008000675c <console_write>:
    8000675c:	ff010113          	addi	sp,sp,-16
    80006760:	00813423          	sd	s0,8(sp)
    80006764:	01010413          	addi	s0,sp,16
    80006768:	00813403          	ld	s0,8(sp)
    8000676c:	00005317          	auipc	t1,0x5
    80006770:	d0c33303          	ld	t1,-756(t1) # 8000b478 <devsw+0x18>
    80006774:	01010113          	addi	sp,sp,16
    80006778:	00030067          	jr	t1

000000008000677c <panic>:
    8000677c:	fe010113          	addi	sp,sp,-32
    80006780:	00113c23          	sd	ra,24(sp)
    80006784:	00813823          	sd	s0,16(sp)
    80006788:	00913423          	sd	s1,8(sp)
    8000678c:	02010413          	addi	s0,sp,32
    80006790:	00050493          	mv	s1,a0
    80006794:	00002517          	auipc	a0,0x2
    80006798:	cac50513          	addi	a0,a0,-852 # 80008440 <_ZZ12printIntegermE6digits+0x370>
    8000679c:	00005797          	auipc	a5,0x5
    800067a0:	d607ae23          	sw	zero,-644(a5) # 8000b518 <pr+0x18>
    800067a4:	00000097          	auipc	ra,0x0
    800067a8:	034080e7          	jalr	52(ra) # 800067d8 <__printf>
    800067ac:	00048513          	mv	a0,s1
    800067b0:	00000097          	auipc	ra,0x0
    800067b4:	028080e7          	jalr	40(ra) # 800067d8 <__printf>
    800067b8:	00002517          	auipc	a0,0x2
    800067bc:	8d850513          	addi	a0,a0,-1832 # 80008090 <CONSOLE_STATUS+0x80>
    800067c0:	00000097          	auipc	ra,0x0
    800067c4:	018080e7          	jalr	24(ra) # 800067d8 <__printf>
    800067c8:	00100793          	li	a5,1
    800067cc:	00004717          	auipc	a4,0x4
    800067d0:	a4f72e23          	sw	a5,-1444(a4) # 8000a228 <panicked>
    800067d4:	0000006f          	j	800067d4 <panic+0x58>

00000000800067d8 <__printf>:
    800067d8:	f3010113          	addi	sp,sp,-208
    800067dc:	08813023          	sd	s0,128(sp)
    800067e0:	07313423          	sd	s3,104(sp)
    800067e4:	09010413          	addi	s0,sp,144
    800067e8:	05813023          	sd	s8,64(sp)
    800067ec:	08113423          	sd	ra,136(sp)
    800067f0:	06913c23          	sd	s1,120(sp)
    800067f4:	07213823          	sd	s2,112(sp)
    800067f8:	07413023          	sd	s4,96(sp)
    800067fc:	05513c23          	sd	s5,88(sp)
    80006800:	05613823          	sd	s6,80(sp)
    80006804:	05713423          	sd	s7,72(sp)
    80006808:	03913c23          	sd	s9,56(sp)
    8000680c:	03a13823          	sd	s10,48(sp)
    80006810:	03b13423          	sd	s11,40(sp)
    80006814:	00005317          	auipc	t1,0x5
    80006818:	cec30313          	addi	t1,t1,-788 # 8000b500 <pr>
    8000681c:	01832c03          	lw	s8,24(t1)
    80006820:	00b43423          	sd	a1,8(s0)
    80006824:	00c43823          	sd	a2,16(s0)
    80006828:	00d43c23          	sd	a3,24(s0)
    8000682c:	02e43023          	sd	a4,32(s0)
    80006830:	02f43423          	sd	a5,40(s0)
    80006834:	03043823          	sd	a6,48(s0)
    80006838:	03143c23          	sd	a7,56(s0)
    8000683c:	00050993          	mv	s3,a0
    80006840:	4a0c1663          	bnez	s8,80006cec <__printf+0x514>
    80006844:	60098c63          	beqz	s3,80006e5c <__printf+0x684>
    80006848:	0009c503          	lbu	a0,0(s3)
    8000684c:	00840793          	addi	a5,s0,8
    80006850:	f6f43c23          	sd	a5,-136(s0)
    80006854:	00000493          	li	s1,0
    80006858:	22050063          	beqz	a0,80006a78 <__printf+0x2a0>
    8000685c:	00002a37          	lui	s4,0x2
    80006860:	00018ab7          	lui	s5,0x18
    80006864:	000f4b37          	lui	s6,0xf4
    80006868:	00989bb7          	lui	s7,0x989
    8000686c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80006870:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80006874:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80006878:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000687c:	00148c9b          	addiw	s9,s1,1
    80006880:	02500793          	li	a5,37
    80006884:	01998933          	add	s2,s3,s9
    80006888:	38f51263          	bne	a0,a5,80006c0c <__printf+0x434>
    8000688c:	00094783          	lbu	a5,0(s2)
    80006890:	00078c9b          	sext.w	s9,a5
    80006894:	1e078263          	beqz	a5,80006a78 <__printf+0x2a0>
    80006898:	0024849b          	addiw	s1,s1,2
    8000689c:	07000713          	li	a4,112
    800068a0:	00998933          	add	s2,s3,s1
    800068a4:	38e78a63          	beq	a5,a4,80006c38 <__printf+0x460>
    800068a8:	20f76863          	bltu	a4,a5,80006ab8 <__printf+0x2e0>
    800068ac:	42a78863          	beq	a5,a0,80006cdc <__printf+0x504>
    800068b0:	06400713          	li	a4,100
    800068b4:	40e79663          	bne	a5,a4,80006cc0 <__printf+0x4e8>
    800068b8:	f7843783          	ld	a5,-136(s0)
    800068bc:	0007a603          	lw	a2,0(a5)
    800068c0:	00878793          	addi	a5,a5,8
    800068c4:	f6f43c23          	sd	a5,-136(s0)
    800068c8:	42064a63          	bltz	a2,80006cfc <__printf+0x524>
    800068cc:	00a00713          	li	a4,10
    800068d0:	02e677bb          	remuw	a5,a2,a4
    800068d4:	00002d97          	auipc	s11,0x2
    800068d8:	b94d8d93          	addi	s11,s11,-1132 # 80008468 <digits>
    800068dc:	00900593          	li	a1,9
    800068e0:	0006051b          	sext.w	a0,a2
    800068e4:	00000c93          	li	s9,0
    800068e8:	02079793          	slli	a5,a5,0x20
    800068ec:	0207d793          	srli	a5,a5,0x20
    800068f0:	00fd87b3          	add	a5,s11,a5
    800068f4:	0007c783          	lbu	a5,0(a5)
    800068f8:	02e656bb          	divuw	a3,a2,a4
    800068fc:	f8f40023          	sb	a5,-128(s0)
    80006900:	14c5d863          	bge	a1,a2,80006a50 <__printf+0x278>
    80006904:	06300593          	li	a1,99
    80006908:	00100c93          	li	s9,1
    8000690c:	02e6f7bb          	remuw	a5,a3,a4
    80006910:	02079793          	slli	a5,a5,0x20
    80006914:	0207d793          	srli	a5,a5,0x20
    80006918:	00fd87b3          	add	a5,s11,a5
    8000691c:	0007c783          	lbu	a5,0(a5)
    80006920:	02e6d73b          	divuw	a4,a3,a4
    80006924:	f8f400a3          	sb	a5,-127(s0)
    80006928:	12a5f463          	bgeu	a1,a0,80006a50 <__printf+0x278>
    8000692c:	00a00693          	li	a3,10
    80006930:	00900593          	li	a1,9
    80006934:	02d777bb          	remuw	a5,a4,a3
    80006938:	02079793          	slli	a5,a5,0x20
    8000693c:	0207d793          	srli	a5,a5,0x20
    80006940:	00fd87b3          	add	a5,s11,a5
    80006944:	0007c503          	lbu	a0,0(a5)
    80006948:	02d757bb          	divuw	a5,a4,a3
    8000694c:	f8a40123          	sb	a0,-126(s0)
    80006950:	48e5f263          	bgeu	a1,a4,80006dd4 <__printf+0x5fc>
    80006954:	06300513          	li	a0,99
    80006958:	02d7f5bb          	remuw	a1,a5,a3
    8000695c:	02059593          	slli	a1,a1,0x20
    80006960:	0205d593          	srli	a1,a1,0x20
    80006964:	00bd85b3          	add	a1,s11,a1
    80006968:	0005c583          	lbu	a1,0(a1)
    8000696c:	02d7d7bb          	divuw	a5,a5,a3
    80006970:	f8b401a3          	sb	a1,-125(s0)
    80006974:	48e57263          	bgeu	a0,a4,80006df8 <__printf+0x620>
    80006978:	3e700513          	li	a0,999
    8000697c:	02d7f5bb          	remuw	a1,a5,a3
    80006980:	02059593          	slli	a1,a1,0x20
    80006984:	0205d593          	srli	a1,a1,0x20
    80006988:	00bd85b3          	add	a1,s11,a1
    8000698c:	0005c583          	lbu	a1,0(a1)
    80006990:	02d7d7bb          	divuw	a5,a5,a3
    80006994:	f8b40223          	sb	a1,-124(s0)
    80006998:	46e57663          	bgeu	a0,a4,80006e04 <__printf+0x62c>
    8000699c:	02d7f5bb          	remuw	a1,a5,a3
    800069a0:	02059593          	slli	a1,a1,0x20
    800069a4:	0205d593          	srli	a1,a1,0x20
    800069a8:	00bd85b3          	add	a1,s11,a1
    800069ac:	0005c583          	lbu	a1,0(a1)
    800069b0:	02d7d7bb          	divuw	a5,a5,a3
    800069b4:	f8b402a3          	sb	a1,-123(s0)
    800069b8:	46ea7863          	bgeu	s4,a4,80006e28 <__printf+0x650>
    800069bc:	02d7f5bb          	remuw	a1,a5,a3
    800069c0:	02059593          	slli	a1,a1,0x20
    800069c4:	0205d593          	srli	a1,a1,0x20
    800069c8:	00bd85b3          	add	a1,s11,a1
    800069cc:	0005c583          	lbu	a1,0(a1)
    800069d0:	02d7d7bb          	divuw	a5,a5,a3
    800069d4:	f8b40323          	sb	a1,-122(s0)
    800069d8:	3eeaf863          	bgeu	s5,a4,80006dc8 <__printf+0x5f0>
    800069dc:	02d7f5bb          	remuw	a1,a5,a3
    800069e0:	02059593          	slli	a1,a1,0x20
    800069e4:	0205d593          	srli	a1,a1,0x20
    800069e8:	00bd85b3          	add	a1,s11,a1
    800069ec:	0005c583          	lbu	a1,0(a1)
    800069f0:	02d7d7bb          	divuw	a5,a5,a3
    800069f4:	f8b403a3          	sb	a1,-121(s0)
    800069f8:	42eb7e63          	bgeu	s6,a4,80006e34 <__printf+0x65c>
    800069fc:	02d7f5bb          	remuw	a1,a5,a3
    80006a00:	02059593          	slli	a1,a1,0x20
    80006a04:	0205d593          	srli	a1,a1,0x20
    80006a08:	00bd85b3          	add	a1,s11,a1
    80006a0c:	0005c583          	lbu	a1,0(a1)
    80006a10:	02d7d7bb          	divuw	a5,a5,a3
    80006a14:	f8b40423          	sb	a1,-120(s0)
    80006a18:	42ebfc63          	bgeu	s7,a4,80006e50 <__printf+0x678>
    80006a1c:	02079793          	slli	a5,a5,0x20
    80006a20:	0207d793          	srli	a5,a5,0x20
    80006a24:	00fd8db3          	add	s11,s11,a5
    80006a28:	000dc703          	lbu	a4,0(s11)
    80006a2c:	00a00793          	li	a5,10
    80006a30:	00900c93          	li	s9,9
    80006a34:	f8e404a3          	sb	a4,-119(s0)
    80006a38:	00065c63          	bgez	a2,80006a50 <__printf+0x278>
    80006a3c:	f9040713          	addi	a4,s0,-112
    80006a40:	00f70733          	add	a4,a4,a5
    80006a44:	02d00693          	li	a3,45
    80006a48:	fed70823          	sb	a3,-16(a4)
    80006a4c:	00078c93          	mv	s9,a5
    80006a50:	f8040793          	addi	a5,s0,-128
    80006a54:	01978cb3          	add	s9,a5,s9
    80006a58:	f7f40d13          	addi	s10,s0,-129
    80006a5c:	000cc503          	lbu	a0,0(s9)
    80006a60:	fffc8c93          	addi	s9,s9,-1
    80006a64:	00000097          	auipc	ra,0x0
    80006a68:	b90080e7          	jalr	-1136(ra) # 800065f4 <consputc>
    80006a6c:	ffac98e3          	bne	s9,s10,80006a5c <__printf+0x284>
    80006a70:	00094503          	lbu	a0,0(s2)
    80006a74:	e00514e3          	bnez	a0,8000687c <__printf+0xa4>
    80006a78:	1a0c1663          	bnez	s8,80006c24 <__printf+0x44c>
    80006a7c:	08813083          	ld	ra,136(sp)
    80006a80:	08013403          	ld	s0,128(sp)
    80006a84:	07813483          	ld	s1,120(sp)
    80006a88:	07013903          	ld	s2,112(sp)
    80006a8c:	06813983          	ld	s3,104(sp)
    80006a90:	06013a03          	ld	s4,96(sp)
    80006a94:	05813a83          	ld	s5,88(sp)
    80006a98:	05013b03          	ld	s6,80(sp)
    80006a9c:	04813b83          	ld	s7,72(sp)
    80006aa0:	04013c03          	ld	s8,64(sp)
    80006aa4:	03813c83          	ld	s9,56(sp)
    80006aa8:	03013d03          	ld	s10,48(sp)
    80006aac:	02813d83          	ld	s11,40(sp)
    80006ab0:	0d010113          	addi	sp,sp,208
    80006ab4:	00008067          	ret
    80006ab8:	07300713          	li	a4,115
    80006abc:	1ce78a63          	beq	a5,a4,80006c90 <__printf+0x4b8>
    80006ac0:	07800713          	li	a4,120
    80006ac4:	1ee79e63          	bne	a5,a4,80006cc0 <__printf+0x4e8>
    80006ac8:	f7843783          	ld	a5,-136(s0)
    80006acc:	0007a703          	lw	a4,0(a5)
    80006ad0:	00878793          	addi	a5,a5,8
    80006ad4:	f6f43c23          	sd	a5,-136(s0)
    80006ad8:	28074263          	bltz	a4,80006d5c <__printf+0x584>
    80006adc:	00002d97          	auipc	s11,0x2
    80006ae0:	98cd8d93          	addi	s11,s11,-1652 # 80008468 <digits>
    80006ae4:	00f77793          	andi	a5,a4,15
    80006ae8:	00fd87b3          	add	a5,s11,a5
    80006aec:	0007c683          	lbu	a3,0(a5)
    80006af0:	00f00613          	li	a2,15
    80006af4:	0007079b          	sext.w	a5,a4
    80006af8:	f8d40023          	sb	a3,-128(s0)
    80006afc:	0047559b          	srliw	a1,a4,0x4
    80006b00:	0047569b          	srliw	a3,a4,0x4
    80006b04:	00000c93          	li	s9,0
    80006b08:	0ee65063          	bge	a2,a4,80006be8 <__printf+0x410>
    80006b0c:	00f6f693          	andi	a3,a3,15
    80006b10:	00dd86b3          	add	a3,s11,a3
    80006b14:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80006b18:	0087d79b          	srliw	a5,a5,0x8
    80006b1c:	00100c93          	li	s9,1
    80006b20:	f8d400a3          	sb	a3,-127(s0)
    80006b24:	0cb67263          	bgeu	a2,a1,80006be8 <__printf+0x410>
    80006b28:	00f7f693          	andi	a3,a5,15
    80006b2c:	00dd86b3          	add	a3,s11,a3
    80006b30:	0006c583          	lbu	a1,0(a3)
    80006b34:	00f00613          	li	a2,15
    80006b38:	0047d69b          	srliw	a3,a5,0x4
    80006b3c:	f8b40123          	sb	a1,-126(s0)
    80006b40:	0047d593          	srli	a1,a5,0x4
    80006b44:	28f67e63          	bgeu	a2,a5,80006de0 <__printf+0x608>
    80006b48:	00f6f693          	andi	a3,a3,15
    80006b4c:	00dd86b3          	add	a3,s11,a3
    80006b50:	0006c503          	lbu	a0,0(a3)
    80006b54:	0087d813          	srli	a6,a5,0x8
    80006b58:	0087d69b          	srliw	a3,a5,0x8
    80006b5c:	f8a401a3          	sb	a0,-125(s0)
    80006b60:	28b67663          	bgeu	a2,a1,80006dec <__printf+0x614>
    80006b64:	00f6f693          	andi	a3,a3,15
    80006b68:	00dd86b3          	add	a3,s11,a3
    80006b6c:	0006c583          	lbu	a1,0(a3)
    80006b70:	00c7d513          	srli	a0,a5,0xc
    80006b74:	00c7d69b          	srliw	a3,a5,0xc
    80006b78:	f8b40223          	sb	a1,-124(s0)
    80006b7c:	29067a63          	bgeu	a2,a6,80006e10 <__printf+0x638>
    80006b80:	00f6f693          	andi	a3,a3,15
    80006b84:	00dd86b3          	add	a3,s11,a3
    80006b88:	0006c583          	lbu	a1,0(a3)
    80006b8c:	0107d813          	srli	a6,a5,0x10
    80006b90:	0107d69b          	srliw	a3,a5,0x10
    80006b94:	f8b402a3          	sb	a1,-123(s0)
    80006b98:	28a67263          	bgeu	a2,a0,80006e1c <__printf+0x644>
    80006b9c:	00f6f693          	andi	a3,a3,15
    80006ba0:	00dd86b3          	add	a3,s11,a3
    80006ba4:	0006c683          	lbu	a3,0(a3)
    80006ba8:	0147d79b          	srliw	a5,a5,0x14
    80006bac:	f8d40323          	sb	a3,-122(s0)
    80006bb0:	21067663          	bgeu	a2,a6,80006dbc <__printf+0x5e4>
    80006bb4:	02079793          	slli	a5,a5,0x20
    80006bb8:	0207d793          	srli	a5,a5,0x20
    80006bbc:	00fd8db3          	add	s11,s11,a5
    80006bc0:	000dc683          	lbu	a3,0(s11)
    80006bc4:	00800793          	li	a5,8
    80006bc8:	00700c93          	li	s9,7
    80006bcc:	f8d403a3          	sb	a3,-121(s0)
    80006bd0:	00075c63          	bgez	a4,80006be8 <__printf+0x410>
    80006bd4:	f9040713          	addi	a4,s0,-112
    80006bd8:	00f70733          	add	a4,a4,a5
    80006bdc:	02d00693          	li	a3,45
    80006be0:	fed70823          	sb	a3,-16(a4)
    80006be4:	00078c93          	mv	s9,a5
    80006be8:	f8040793          	addi	a5,s0,-128
    80006bec:	01978cb3          	add	s9,a5,s9
    80006bf0:	f7f40d13          	addi	s10,s0,-129
    80006bf4:	000cc503          	lbu	a0,0(s9)
    80006bf8:	fffc8c93          	addi	s9,s9,-1
    80006bfc:	00000097          	auipc	ra,0x0
    80006c00:	9f8080e7          	jalr	-1544(ra) # 800065f4 <consputc>
    80006c04:	ff9d18e3          	bne	s10,s9,80006bf4 <__printf+0x41c>
    80006c08:	0100006f          	j	80006c18 <__printf+0x440>
    80006c0c:	00000097          	auipc	ra,0x0
    80006c10:	9e8080e7          	jalr	-1560(ra) # 800065f4 <consputc>
    80006c14:	000c8493          	mv	s1,s9
    80006c18:	00094503          	lbu	a0,0(s2)
    80006c1c:	c60510e3          	bnez	a0,8000687c <__printf+0xa4>
    80006c20:	e40c0ee3          	beqz	s8,80006a7c <__printf+0x2a4>
    80006c24:	00005517          	auipc	a0,0x5
    80006c28:	8dc50513          	addi	a0,a0,-1828 # 8000b500 <pr>
    80006c2c:	00001097          	auipc	ra,0x1
    80006c30:	94c080e7          	jalr	-1716(ra) # 80007578 <release>
    80006c34:	e49ff06f          	j	80006a7c <__printf+0x2a4>
    80006c38:	f7843783          	ld	a5,-136(s0)
    80006c3c:	03000513          	li	a0,48
    80006c40:	01000d13          	li	s10,16
    80006c44:	00878713          	addi	a4,a5,8
    80006c48:	0007bc83          	ld	s9,0(a5)
    80006c4c:	f6e43c23          	sd	a4,-136(s0)
    80006c50:	00000097          	auipc	ra,0x0
    80006c54:	9a4080e7          	jalr	-1628(ra) # 800065f4 <consputc>
    80006c58:	07800513          	li	a0,120
    80006c5c:	00000097          	auipc	ra,0x0
    80006c60:	998080e7          	jalr	-1640(ra) # 800065f4 <consputc>
    80006c64:	00002d97          	auipc	s11,0x2
    80006c68:	804d8d93          	addi	s11,s11,-2044 # 80008468 <digits>
    80006c6c:	03ccd793          	srli	a5,s9,0x3c
    80006c70:	00fd87b3          	add	a5,s11,a5
    80006c74:	0007c503          	lbu	a0,0(a5)
    80006c78:	fffd0d1b          	addiw	s10,s10,-1
    80006c7c:	004c9c93          	slli	s9,s9,0x4
    80006c80:	00000097          	auipc	ra,0x0
    80006c84:	974080e7          	jalr	-1676(ra) # 800065f4 <consputc>
    80006c88:	fe0d12e3          	bnez	s10,80006c6c <__printf+0x494>
    80006c8c:	f8dff06f          	j	80006c18 <__printf+0x440>
    80006c90:	f7843783          	ld	a5,-136(s0)
    80006c94:	0007bc83          	ld	s9,0(a5)
    80006c98:	00878793          	addi	a5,a5,8
    80006c9c:	f6f43c23          	sd	a5,-136(s0)
    80006ca0:	000c9a63          	bnez	s9,80006cb4 <__printf+0x4dc>
    80006ca4:	1080006f          	j	80006dac <__printf+0x5d4>
    80006ca8:	001c8c93          	addi	s9,s9,1
    80006cac:	00000097          	auipc	ra,0x0
    80006cb0:	948080e7          	jalr	-1720(ra) # 800065f4 <consputc>
    80006cb4:	000cc503          	lbu	a0,0(s9)
    80006cb8:	fe0518e3          	bnez	a0,80006ca8 <__printf+0x4d0>
    80006cbc:	f5dff06f          	j	80006c18 <__printf+0x440>
    80006cc0:	02500513          	li	a0,37
    80006cc4:	00000097          	auipc	ra,0x0
    80006cc8:	930080e7          	jalr	-1744(ra) # 800065f4 <consputc>
    80006ccc:	000c8513          	mv	a0,s9
    80006cd0:	00000097          	auipc	ra,0x0
    80006cd4:	924080e7          	jalr	-1756(ra) # 800065f4 <consputc>
    80006cd8:	f41ff06f          	j	80006c18 <__printf+0x440>
    80006cdc:	02500513          	li	a0,37
    80006ce0:	00000097          	auipc	ra,0x0
    80006ce4:	914080e7          	jalr	-1772(ra) # 800065f4 <consputc>
    80006ce8:	f31ff06f          	j	80006c18 <__printf+0x440>
    80006cec:	00030513          	mv	a0,t1
    80006cf0:	00000097          	auipc	ra,0x0
    80006cf4:	7bc080e7          	jalr	1980(ra) # 800074ac <acquire>
    80006cf8:	b4dff06f          	j	80006844 <__printf+0x6c>
    80006cfc:	40c0053b          	negw	a0,a2
    80006d00:	00a00713          	li	a4,10
    80006d04:	02e576bb          	remuw	a3,a0,a4
    80006d08:	00001d97          	auipc	s11,0x1
    80006d0c:	760d8d93          	addi	s11,s11,1888 # 80008468 <digits>
    80006d10:	ff700593          	li	a1,-9
    80006d14:	02069693          	slli	a3,a3,0x20
    80006d18:	0206d693          	srli	a3,a3,0x20
    80006d1c:	00dd86b3          	add	a3,s11,a3
    80006d20:	0006c683          	lbu	a3,0(a3)
    80006d24:	02e557bb          	divuw	a5,a0,a4
    80006d28:	f8d40023          	sb	a3,-128(s0)
    80006d2c:	10b65e63          	bge	a2,a1,80006e48 <__printf+0x670>
    80006d30:	06300593          	li	a1,99
    80006d34:	02e7f6bb          	remuw	a3,a5,a4
    80006d38:	02069693          	slli	a3,a3,0x20
    80006d3c:	0206d693          	srli	a3,a3,0x20
    80006d40:	00dd86b3          	add	a3,s11,a3
    80006d44:	0006c683          	lbu	a3,0(a3)
    80006d48:	02e7d73b          	divuw	a4,a5,a4
    80006d4c:	00200793          	li	a5,2
    80006d50:	f8d400a3          	sb	a3,-127(s0)
    80006d54:	bca5ece3          	bltu	a1,a0,8000692c <__printf+0x154>
    80006d58:	ce5ff06f          	j	80006a3c <__printf+0x264>
    80006d5c:	40e007bb          	negw	a5,a4
    80006d60:	00001d97          	auipc	s11,0x1
    80006d64:	708d8d93          	addi	s11,s11,1800 # 80008468 <digits>
    80006d68:	00f7f693          	andi	a3,a5,15
    80006d6c:	00dd86b3          	add	a3,s11,a3
    80006d70:	0006c583          	lbu	a1,0(a3)
    80006d74:	ff100613          	li	a2,-15
    80006d78:	0047d69b          	srliw	a3,a5,0x4
    80006d7c:	f8b40023          	sb	a1,-128(s0)
    80006d80:	0047d59b          	srliw	a1,a5,0x4
    80006d84:	0ac75e63          	bge	a4,a2,80006e40 <__printf+0x668>
    80006d88:	00f6f693          	andi	a3,a3,15
    80006d8c:	00dd86b3          	add	a3,s11,a3
    80006d90:	0006c603          	lbu	a2,0(a3)
    80006d94:	00f00693          	li	a3,15
    80006d98:	0087d79b          	srliw	a5,a5,0x8
    80006d9c:	f8c400a3          	sb	a2,-127(s0)
    80006da0:	d8b6e4e3          	bltu	a3,a1,80006b28 <__printf+0x350>
    80006da4:	00200793          	li	a5,2
    80006da8:	e2dff06f          	j	80006bd4 <__printf+0x3fc>
    80006dac:	00001c97          	auipc	s9,0x1
    80006db0:	69cc8c93          	addi	s9,s9,1692 # 80008448 <_ZZ12printIntegermE6digits+0x378>
    80006db4:	02800513          	li	a0,40
    80006db8:	ef1ff06f          	j	80006ca8 <__printf+0x4d0>
    80006dbc:	00700793          	li	a5,7
    80006dc0:	00600c93          	li	s9,6
    80006dc4:	e0dff06f          	j	80006bd0 <__printf+0x3f8>
    80006dc8:	00700793          	li	a5,7
    80006dcc:	00600c93          	li	s9,6
    80006dd0:	c69ff06f          	j	80006a38 <__printf+0x260>
    80006dd4:	00300793          	li	a5,3
    80006dd8:	00200c93          	li	s9,2
    80006ddc:	c5dff06f          	j	80006a38 <__printf+0x260>
    80006de0:	00300793          	li	a5,3
    80006de4:	00200c93          	li	s9,2
    80006de8:	de9ff06f          	j	80006bd0 <__printf+0x3f8>
    80006dec:	00400793          	li	a5,4
    80006df0:	00300c93          	li	s9,3
    80006df4:	dddff06f          	j	80006bd0 <__printf+0x3f8>
    80006df8:	00400793          	li	a5,4
    80006dfc:	00300c93          	li	s9,3
    80006e00:	c39ff06f          	j	80006a38 <__printf+0x260>
    80006e04:	00500793          	li	a5,5
    80006e08:	00400c93          	li	s9,4
    80006e0c:	c2dff06f          	j	80006a38 <__printf+0x260>
    80006e10:	00500793          	li	a5,5
    80006e14:	00400c93          	li	s9,4
    80006e18:	db9ff06f          	j	80006bd0 <__printf+0x3f8>
    80006e1c:	00600793          	li	a5,6
    80006e20:	00500c93          	li	s9,5
    80006e24:	dadff06f          	j	80006bd0 <__printf+0x3f8>
    80006e28:	00600793          	li	a5,6
    80006e2c:	00500c93          	li	s9,5
    80006e30:	c09ff06f          	j	80006a38 <__printf+0x260>
    80006e34:	00800793          	li	a5,8
    80006e38:	00700c93          	li	s9,7
    80006e3c:	bfdff06f          	j	80006a38 <__printf+0x260>
    80006e40:	00100793          	li	a5,1
    80006e44:	d91ff06f          	j	80006bd4 <__printf+0x3fc>
    80006e48:	00100793          	li	a5,1
    80006e4c:	bf1ff06f          	j	80006a3c <__printf+0x264>
    80006e50:	00900793          	li	a5,9
    80006e54:	00800c93          	li	s9,8
    80006e58:	be1ff06f          	j	80006a38 <__printf+0x260>
    80006e5c:	00001517          	auipc	a0,0x1
    80006e60:	5f450513          	addi	a0,a0,1524 # 80008450 <_ZZ12printIntegermE6digits+0x380>
    80006e64:	00000097          	auipc	ra,0x0
    80006e68:	918080e7          	jalr	-1768(ra) # 8000677c <panic>

0000000080006e6c <printfinit>:
    80006e6c:	fe010113          	addi	sp,sp,-32
    80006e70:	00813823          	sd	s0,16(sp)
    80006e74:	00913423          	sd	s1,8(sp)
    80006e78:	00113c23          	sd	ra,24(sp)
    80006e7c:	02010413          	addi	s0,sp,32
    80006e80:	00004497          	auipc	s1,0x4
    80006e84:	68048493          	addi	s1,s1,1664 # 8000b500 <pr>
    80006e88:	00048513          	mv	a0,s1
    80006e8c:	00001597          	auipc	a1,0x1
    80006e90:	5d458593          	addi	a1,a1,1492 # 80008460 <_ZZ12printIntegermE6digits+0x390>
    80006e94:	00000097          	auipc	ra,0x0
    80006e98:	5f4080e7          	jalr	1524(ra) # 80007488 <initlock>
    80006e9c:	01813083          	ld	ra,24(sp)
    80006ea0:	01013403          	ld	s0,16(sp)
    80006ea4:	0004ac23          	sw	zero,24(s1)
    80006ea8:	00813483          	ld	s1,8(sp)
    80006eac:	02010113          	addi	sp,sp,32
    80006eb0:	00008067          	ret

0000000080006eb4 <uartinit>:
    80006eb4:	ff010113          	addi	sp,sp,-16
    80006eb8:	00813423          	sd	s0,8(sp)
    80006ebc:	01010413          	addi	s0,sp,16
    80006ec0:	100007b7          	lui	a5,0x10000
    80006ec4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80006ec8:	f8000713          	li	a4,-128
    80006ecc:	00e781a3          	sb	a4,3(a5)
    80006ed0:	00300713          	li	a4,3
    80006ed4:	00e78023          	sb	a4,0(a5)
    80006ed8:	000780a3          	sb	zero,1(a5)
    80006edc:	00e781a3          	sb	a4,3(a5)
    80006ee0:	00700693          	li	a3,7
    80006ee4:	00d78123          	sb	a3,2(a5)
    80006ee8:	00e780a3          	sb	a4,1(a5)
    80006eec:	00813403          	ld	s0,8(sp)
    80006ef0:	01010113          	addi	sp,sp,16
    80006ef4:	00008067          	ret

0000000080006ef8 <uartputc>:
    80006ef8:	00003797          	auipc	a5,0x3
    80006efc:	3307a783          	lw	a5,816(a5) # 8000a228 <panicked>
    80006f00:	00078463          	beqz	a5,80006f08 <uartputc+0x10>
    80006f04:	0000006f          	j	80006f04 <uartputc+0xc>
    80006f08:	fd010113          	addi	sp,sp,-48
    80006f0c:	02813023          	sd	s0,32(sp)
    80006f10:	00913c23          	sd	s1,24(sp)
    80006f14:	01213823          	sd	s2,16(sp)
    80006f18:	01313423          	sd	s3,8(sp)
    80006f1c:	02113423          	sd	ra,40(sp)
    80006f20:	03010413          	addi	s0,sp,48
    80006f24:	00003917          	auipc	s2,0x3
    80006f28:	30c90913          	addi	s2,s2,780 # 8000a230 <uart_tx_r>
    80006f2c:	00093783          	ld	a5,0(s2)
    80006f30:	00003497          	auipc	s1,0x3
    80006f34:	30848493          	addi	s1,s1,776 # 8000a238 <uart_tx_w>
    80006f38:	0004b703          	ld	a4,0(s1)
    80006f3c:	02078693          	addi	a3,a5,32
    80006f40:	00050993          	mv	s3,a0
    80006f44:	02e69c63          	bne	a3,a4,80006f7c <uartputc+0x84>
    80006f48:	00001097          	auipc	ra,0x1
    80006f4c:	834080e7          	jalr	-1996(ra) # 8000777c <push_on>
    80006f50:	00093783          	ld	a5,0(s2)
    80006f54:	0004b703          	ld	a4,0(s1)
    80006f58:	02078793          	addi	a5,a5,32
    80006f5c:	00e79463          	bne	a5,a4,80006f64 <uartputc+0x6c>
    80006f60:	0000006f          	j	80006f60 <uartputc+0x68>
    80006f64:	00001097          	auipc	ra,0x1
    80006f68:	88c080e7          	jalr	-1908(ra) # 800077f0 <pop_on>
    80006f6c:	00093783          	ld	a5,0(s2)
    80006f70:	0004b703          	ld	a4,0(s1)
    80006f74:	02078693          	addi	a3,a5,32
    80006f78:	fce688e3          	beq	a3,a4,80006f48 <uartputc+0x50>
    80006f7c:	01f77693          	andi	a3,a4,31
    80006f80:	00004597          	auipc	a1,0x4
    80006f84:	5a058593          	addi	a1,a1,1440 # 8000b520 <uart_tx_buf>
    80006f88:	00d586b3          	add	a3,a1,a3
    80006f8c:	00170713          	addi	a4,a4,1
    80006f90:	01368023          	sb	s3,0(a3)
    80006f94:	00e4b023          	sd	a4,0(s1)
    80006f98:	10000637          	lui	a2,0x10000
    80006f9c:	02f71063          	bne	a4,a5,80006fbc <uartputc+0xc4>
    80006fa0:	0340006f          	j	80006fd4 <uartputc+0xdc>
    80006fa4:	00074703          	lbu	a4,0(a4)
    80006fa8:	00f93023          	sd	a5,0(s2)
    80006fac:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80006fb0:	00093783          	ld	a5,0(s2)
    80006fb4:	0004b703          	ld	a4,0(s1)
    80006fb8:	00f70e63          	beq	a4,a5,80006fd4 <uartputc+0xdc>
    80006fbc:	00564683          	lbu	a3,5(a2)
    80006fc0:	01f7f713          	andi	a4,a5,31
    80006fc4:	00e58733          	add	a4,a1,a4
    80006fc8:	0206f693          	andi	a3,a3,32
    80006fcc:	00178793          	addi	a5,a5,1
    80006fd0:	fc069ae3          	bnez	a3,80006fa4 <uartputc+0xac>
    80006fd4:	02813083          	ld	ra,40(sp)
    80006fd8:	02013403          	ld	s0,32(sp)
    80006fdc:	01813483          	ld	s1,24(sp)
    80006fe0:	01013903          	ld	s2,16(sp)
    80006fe4:	00813983          	ld	s3,8(sp)
    80006fe8:	03010113          	addi	sp,sp,48
    80006fec:	00008067          	ret

0000000080006ff0 <uartputc_sync>:
    80006ff0:	ff010113          	addi	sp,sp,-16
    80006ff4:	00813423          	sd	s0,8(sp)
    80006ff8:	01010413          	addi	s0,sp,16
    80006ffc:	00003717          	auipc	a4,0x3
    80007000:	22c72703          	lw	a4,556(a4) # 8000a228 <panicked>
    80007004:	02071663          	bnez	a4,80007030 <uartputc_sync+0x40>
    80007008:	00050793          	mv	a5,a0
    8000700c:	100006b7          	lui	a3,0x10000
    80007010:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007014:	02077713          	andi	a4,a4,32
    80007018:	fe070ce3          	beqz	a4,80007010 <uartputc_sync+0x20>
    8000701c:	0ff7f793          	andi	a5,a5,255
    80007020:	00f68023          	sb	a5,0(a3)
    80007024:	00813403          	ld	s0,8(sp)
    80007028:	01010113          	addi	sp,sp,16
    8000702c:	00008067          	ret
    80007030:	0000006f          	j	80007030 <uartputc_sync+0x40>

0000000080007034 <uartstart>:
    80007034:	ff010113          	addi	sp,sp,-16
    80007038:	00813423          	sd	s0,8(sp)
    8000703c:	01010413          	addi	s0,sp,16
    80007040:	00003617          	auipc	a2,0x3
    80007044:	1f060613          	addi	a2,a2,496 # 8000a230 <uart_tx_r>
    80007048:	00003517          	auipc	a0,0x3
    8000704c:	1f050513          	addi	a0,a0,496 # 8000a238 <uart_tx_w>
    80007050:	00063783          	ld	a5,0(a2)
    80007054:	00053703          	ld	a4,0(a0)
    80007058:	04f70263          	beq	a4,a5,8000709c <uartstart+0x68>
    8000705c:	100005b7          	lui	a1,0x10000
    80007060:	00004817          	auipc	a6,0x4
    80007064:	4c080813          	addi	a6,a6,1216 # 8000b520 <uart_tx_buf>
    80007068:	01c0006f          	j	80007084 <uartstart+0x50>
    8000706c:	0006c703          	lbu	a4,0(a3)
    80007070:	00f63023          	sd	a5,0(a2)
    80007074:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007078:	00063783          	ld	a5,0(a2)
    8000707c:	00053703          	ld	a4,0(a0)
    80007080:	00f70e63          	beq	a4,a5,8000709c <uartstart+0x68>
    80007084:	01f7f713          	andi	a4,a5,31
    80007088:	00e806b3          	add	a3,a6,a4
    8000708c:	0055c703          	lbu	a4,5(a1)
    80007090:	00178793          	addi	a5,a5,1
    80007094:	02077713          	andi	a4,a4,32
    80007098:	fc071ae3          	bnez	a4,8000706c <uartstart+0x38>
    8000709c:	00813403          	ld	s0,8(sp)
    800070a0:	01010113          	addi	sp,sp,16
    800070a4:	00008067          	ret

00000000800070a8 <uartgetc>:
    800070a8:	ff010113          	addi	sp,sp,-16
    800070ac:	00813423          	sd	s0,8(sp)
    800070b0:	01010413          	addi	s0,sp,16
    800070b4:	10000737          	lui	a4,0x10000
    800070b8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800070bc:	0017f793          	andi	a5,a5,1
    800070c0:	00078c63          	beqz	a5,800070d8 <uartgetc+0x30>
    800070c4:	00074503          	lbu	a0,0(a4)
    800070c8:	0ff57513          	andi	a0,a0,255
    800070cc:	00813403          	ld	s0,8(sp)
    800070d0:	01010113          	addi	sp,sp,16
    800070d4:	00008067          	ret
    800070d8:	fff00513          	li	a0,-1
    800070dc:	ff1ff06f          	j	800070cc <uartgetc+0x24>

00000000800070e0 <uartintr>:
    800070e0:	100007b7          	lui	a5,0x10000
    800070e4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800070e8:	0017f793          	andi	a5,a5,1
    800070ec:	0a078463          	beqz	a5,80007194 <uartintr+0xb4>
    800070f0:	fe010113          	addi	sp,sp,-32
    800070f4:	00813823          	sd	s0,16(sp)
    800070f8:	00913423          	sd	s1,8(sp)
    800070fc:	00113c23          	sd	ra,24(sp)
    80007100:	02010413          	addi	s0,sp,32
    80007104:	100004b7          	lui	s1,0x10000
    80007108:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000710c:	0ff57513          	andi	a0,a0,255
    80007110:	fffff097          	auipc	ra,0xfffff
    80007114:	534080e7          	jalr	1332(ra) # 80006644 <consoleintr>
    80007118:	0054c783          	lbu	a5,5(s1)
    8000711c:	0017f793          	andi	a5,a5,1
    80007120:	fe0794e3          	bnez	a5,80007108 <uartintr+0x28>
    80007124:	00003617          	auipc	a2,0x3
    80007128:	10c60613          	addi	a2,a2,268 # 8000a230 <uart_tx_r>
    8000712c:	00003517          	auipc	a0,0x3
    80007130:	10c50513          	addi	a0,a0,268 # 8000a238 <uart_tx_w>
    80007134:	00063783          	ld	a5,0(a2)
    80007138:	00053703          	ld	a4,0(a0)
    8000713c:	04f70263          	beq	a4,a5,80007180 <uartintr+0xa0>
    80007140:	100005b7          	lui	a1,0x10000
    80007144:	00004817          	auipc	a6,0x4
    80007148:	3dc80813          	addi	a6,a6,988 # 8000b520 <uart_tx_buf>
    8000714c:	01c0006f          	j	80007168 <uartintr+0x88>
    80007150:	0006c703          	lbu	a4,0(a3)
    80007154:	00f63023          	sd	a5,0(a2)
    80007158:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000715c:	00063783          	ld	a5,0(a2)
    80007160:	00053703          	ld	a4,0(a0)
    80007164:	00f70e63          	beq	a4,a5,80007180 <uartintr+0xa0>
    80007168:	01f7f713          	andi	a4,a5,31
    8000716c:	00e806b3          	add	a3,a6,a4
    80007170:	0055c703          	lbu	a4,5(a1)
    80007174:	00178793          	addi	a5,a5,1
    80007178:	02077713          	andi	a4,a4,32
    8000717c:	fc071ae3          	bnez	a4,80007150 <uartintr+0x70>
    80007180:	01813083          	ld	ra,24(sp)
    80007184:	01013403          	ld	s0,16(sp)
    80007188:	00813483          	ld	s1,8(sp)
    8000718c:	02010113          	addi	sp,sp,32
    80007190:	00008067          	ret
    80007194:	00003617          	auipc	a2,0x3
    80007198:	09c60613          	addi	a2,a2,156 # 8000a230 <uart_tx_r>
    8000719c:	00003517          	auipc	a0,0x3
    800071a0:	09c50513          	addi	a0,a0,156 # 8000a238 <uart_tx_w>
    800071a4:	00063783          	ld	a5,0(a2)
    800071a8:	00053703          	ld	a4,0(a0)
    800071ac:	04f70263          	beq	a4,a5,800071f0 <uartintr+0x110>
    800071b0:	100005b7          	lui	a1,0x10000
    800071b4:	00004817          	auipc	a6,0x4
    800071b8:	36c80813          	addi	a6,a6,876 # 8000b520 <uart_tx_buf>
    800071bc:	01c0006f          	j	800071d8 <uartintr+0xf8>
    800071c0:	0006c703          	lbu	a4,0(a3)
    800071c4:	00f63023          	sd	a5,0(a2)
    800071c8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800071cc:	00063783          	ld	a5,0(a2)
    800071d0:	00053703          	ld	a4,0(a0)
    800071d4:	02f70063          	beq	a4,a5,800071f4 <uartintr+0x114>
    800071d8:	01f7f713          	andi	a4,a5,31
    800071dc:	00e806b3          	add	a3,a6,a4
    800071e0:	0055c703          	lbu	a4,5(a1)
    800071e4:	00178793          	addi	a5,a5,1
    800071e8:	02077713          	andi	a4,a4,32
    800071ec:	fc071ae3          	bnez	a4,800071c0 <uartintr+0xe0>
    800071f0:	00008067          	ret
    800071f4:	00008067          	ret

00000000800071f8 <kinit>:
    800071f8:	fc010113          	addi	sp,sp,-64
    800071fc:	02913423          	sd	s1,40(sp)
    80007200:	fffff7b7          	lui	a5,0xfffff
    80007204:	00005497          	auipc	s1,0x5
    80007208:	33b48493          	addi	s1,s1,827 # 8000c53f <end+0xfff>
    8000720c:	02813823          	sd	s0,48(sp)
    80007210:	01313c23          	sd	s3,24(sp)
    80007214:	00f4f4b3          	and	s1,s1,a5
    80007218:	02113c23          	sd	ra,56(sp)
    8000721c:	03213023          	sd	s2,32(sp)
    80007220:	01413823          	sd	s4,16(sp)
    80007224:	01513423          	sd	s5,8(sp)
    80007228:	04010413          	addi	s0,sp,64
    8000722c:	000017b7          	lui	a5,0x1
    80007230:	01100993          	li	s3,17
    80007234:	00f487b3          	add	a5,s1,a5
    80007238:	01b99993          	slli	s3,s3,0x1b
    8000723c:	06f9e063          	bltu	s3,a5,8000729c <kinit+0xa4>
    80007240:	00004a97          	auipc	s5,0x4
    80007244:	300a8a93          	addi	s5,s5,768 # 8000b540 <end>
    80007248:	0754ec63          	bltu	s1,s5,800072c0 <kinit+0xc8>
    8000724c:	0734fa63          	bgeu	s1,s3,800072c0 <kinit+0xc8>
    80007250:	00088a37          	lui	s4,0x88
    80007254:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80007258:	00003917          	auipc	s2,0x3
    8000725c:	fe890913          	addi	s2,s2,-24 # 8000a240 <kmem>
    80007260:	00ca1a13          	slli	s4,s4,0xc
    80007264:	0140006f          	j	80007278 <kinit+0x80>
    80007268:	000017b7          	lui	a5,0x1
    8000726c:	00f484b3          	add	s1,s1,a5
    80007270:	0554e863          	bltu	s1,s5,800072c0 <kinit+0xc8>
    80007274:	0534f663          	bgeu	s1,s3,800072c0 <kinit+0xc8>
    80007278:	00001637          	lui	a2,0x1
    8000727c:	00100593          	li	a1,1
    80007280:	00048513          	mv	a0,s1
    80007284:	00000097          	auipc	ra,0x0
    80007288:	5e4080e7          	jalr	1508(ra) # 80007868 <__memset>
    8000728c:	00093783          	ld	a5,0(s2)
    80007290:	00f4b023          	sd	a5,0(s1)
    80007294:	00993023          	sd	s1,0(s2)
    80007298:	fd4498e3          	bne	s1,s4,80007268 <kinit+0x70>
    8000729c:	03813083          	ld	ra,56(sp)
    800072a0:	03013403          	ld	s0,48(sp)
    800072a4:	02813483          	ld	s1,40(sp)
    800072a8:	02013903          	ld	s2,32(sp)
    800072ac:	01813983          	ld	s3,24(sp)
    800072b0:	01013a03          	ld	s4,16(sp)
    800072b4:	00813a83          	ld	s5,8(sp)
    800072b8:	04010113          	addi	sp,sp,64
    800072bc:	00008067          	ret
    800072c0:	00001517          	auipc	a0,0x1
    800072c4:	1c050513          	addi	a0,a0,448 # 80008480 <digits+0x18>
    800072c8:	fffff097          	auipc	ra,0xfffff
    800072cc:	4b4080e7          	jalr	1204(ra) # 8000677c <panic>

00000000800072d0 <freerange>:
    800072d0:	fc010113          	addi	sp,sp,-64
    800072d4:	000017b7          	lui	a5,0x1
    800072d8:	02913423          	sd	s1,40(sp)
    800072dc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800072e0:	009504b3          	add	s1,a0,s1
    800072e4:	fffff537          	lui	a0,0xfffff
    800072e8:	02813823          	sd	s0,48(sp)
    800072ec:	02113c23          	sd	ra,56(sp)
    800072f0:	03213023          	sd	s2,32(sp)
    800072f4:	01313c23          	sd	s3,24(sp)
    800072f8:	01413823          	sd	s4,16(sp)
    800072fc:	01513423          	sd	s5,8(sp)
    80007300:	01613023          	sd	s6,0(sp)
    80007304:	04010413          	addi	s0,sp,64
    80007308:	00a4f4b3          	and	s1,s1,a0
    8000730c:	00f487b3          	add	a5,s1,a5
    80007310:	06f5e463          	bltu	a1,a5,80007378 <freerange+0xa8>
    80007314:	00004a97          	auipc	s5,0x4
    80007318:	22ca8a93          	addi	s5,s5,556 # 8000b540 <end>
    8000731c:	0954e263          	bltu	s1,s5,800073a0 <freerange+0xd0>
    80007320:	01100993          	li	s3,17
    80007324:	01b99993          	slli	s3,s3,0x1b
    80007328:	0734fc63          	bgeu	s1,s3,800073a0 <freerange+0xd0>
    8000732c:	00058a13          	mv	s4,a1
    80007330:	00003917          	auipc	s2,0x3
    80007334:	f1090913          	addi	s2,s2,-240 # 8000a240 <kmem>
    80007338:	00002b37          	lui	s6,0x2
    8000733c:	0140006f          	j	80007350 <freerange+0x80>
    80007340:	000017b7          	lui	a5,0x1
    80007344:	00f484b3          	add	s1,s1,a5
    80007348:	0554ec63          	bltu	s1,s5,800073a0 <freerange+0xd0>
    8000734c:	0534fa63          	bgeu	s1,s3,800073a0 <freerange+0xd0>
    80007350:	00001637          	lui	a2,0x1
    80007354:	00100593          	li	a1,1
    80007358:	00048513          	mv	a0,s1
    8000735c:	00000097          	auipc	ra,0x0
    80007360:	50c080e7          	jalr	1292(ra) # 80007868 <__memset>
    80007364:	00093703          	ld	a4,0(s2)
    80007368:	016487b3          	add	a5,s1,s6
    8000736c:	00e4b023          	sd	a4,0(s1)
    80007370:	00993023          	sd	s1,0(s2)
    80007374:	fcfa76e3          	bgeu	s4,a5,80007340 <freerange+0x70>
    80007378:	03813083          	ld	ra,56(sp)
    8000737c:	03013403          	ld	s0,48(sp)
    80007380:	02813483          	ld	s1,40(sp)
    80007384:	02013903          	ld	s2,32(sp)
    80007388:	01813983          	ld	s3,24(sp)
    8000738c:	01013a03          	ld	s4,16(sp)
    80007390:	00813a83          	ld	s5,8(sp)
    80007394:	00013b03          	ld	s6,0(sp)
    80007398:	04010113          	addi	sp,sp,64
    8000739c:	00008067          	ret
    800073a0:	00001517          	auipc	a0,0x1
    800073a4:	0e050513          	addi	a0,a0,224 # 80008480 <digits+0x18>
    800073a8:	fffff097          	auipc	ra,0xfffff
    800073ac:	3d4080e7          	jalr	980(ra) # 8000677c <panic>

00000000800073b0 <kfree>:
    800073b0:	fe010113          	addi	sp,sp,-32
    800073b4:	00813823          	sd	s0,16(sp)
    800073b8:	00113c23          	sd	ra,24(sp)
    800073bc:	00913423          	sd	s1,8(sp)
    800073c0:	02010413          	addi	s0,sp,32
    800073c4:	03451793          	slli	a5,a0,0x34
    800073c8:	04079c63          	bnez	a5,80007420 <kfree+0x70>
    800073cc:	00004797          	auipc	a5,0x4
    800073d0:	17478793          	addi	a5,a5,372 # 8000b540 <end>
    800073d4:	00050493          	mv	s1,a0
    800073d8:	04f56463          	bltu	a0,a5,80007420 <kfree+0x70>
    800073dc:	01100793          	li	a5,17
    800073e0:	01b79793          	slli	a5,a5,0x1b
    800073e4:	02f57e63          	bgeu	a0,a5,80007420 <kfree+0x70>
    800073e8:	00001637          	lui	a2,0x1
    800073ec:	00100593          	li	a1,1
    800073f0:	00000097          	auipc	ra,0x0
    800073f4:	478080e7          	jalr	1144(ra) # 80007868 <__memset>
    800073f8:	00003797          	auipc	a5,0x3
    800073fc:	e4878793          	addi	a5,a5,-440 # 8000a240 <kmem>
    80007400:	0007b703          	ld	a4,0(a5)
    80007404:	01813083          	ld	ra,24(sp)
    80007408:	01013403          	ld	s0,16(sp)
    8000740c:	00e4b023          	sd	a4,0(s1)
    80007410:	0097b023          	sd	s1,0(a5)
    80007414:	00813483          	ld	s1,8(sp)
    80007418:	02010113          	addi	sp,sp,32
    8000741c:	00008067          	ret
    80007420:	00001517          	auipc	a0,0x1
    80007424:	06050513          	addi	a0,a0,96 # 80008480 <digits+0x18>
    80007428:	fffff097          	auipc	ra,0xfffff
    8000742c:	354080e7          	jalr	852(ra) # 8000677c <panic>

0000000080007430 <kalloc>:
    80007430:	fe010113          	addi	sp,sp,-32
    80007434:	00813823          	sd	s0,16(sp)
    80007438:	00913423          	sd	s1,8(sp)
    8000743c:	00113c23          	sd	ra,24(sp)
    80007440:	02010413          	addi	s0,sp,32
    80007444:	00003797          	auipc	a5,0x3
    80007448:	dfc78793          	addi	a5,a5,-516 # 8000a240 <kmem>
    8000744c:	0007b483          	ld	s1,0(a5)
    80007450:	02048063          	beqz	s1,80007470 <kalloc+0x40>
    80007454:	0004b703          	ld	a4,0(s1)
    80007458:	00001637          	lui	a2,0x1
    8000745c:	00500593          	li	a1,5
    80007460:	00048513          	mv	a0,s1
    80007464:	00e7b023          	sd	a4,0(a5)
    80007468:	00000097          	auipc	ra,0x0
    8000746c:	400080e7          	jalr	1024(ra) # 80007868 <__memset>
    80007470:	01813083          	ld	ra,24(sp)
    80007474:	01013403          	ld	s0,16(sp)
    80007478:	00048513          	mv	a0,s1
    8000747c:	00813483          	ld	s1,8(sp)
    80007480:	02010113          	addi	sp,sp,32
    80007484:	00008067          	ret

0000000080007488 <initlock>:
    80007488:	ff010113          	addi	sp,sp,-16
    8000748c:	00813423          	sd	s0,8(sp)
    80007490:	01010413          	addi	s0,sp,16
    80007494:	00813403          	ld	s0,8(sp)
    80007498:	00b53423          	sd	a1,8(a0)
    8000749c:	00052023          	sw	zero,0(a0)
    800074a0:	00053823          	sd	zero,16(a0)
    800074a4:	01010113          	addi	sp,sp,16
    800074a8:	00008067          	ret

00000000800074ac <acquire>:
    800074ac:	fe010113          	addi	sp,sp,-32
    800074b0:	00813823          	sd	s0,16(sp)
    800074b4:	00913423          	sd	s1,8(sp)
    800074b8:	00113c23          	sd	ra,24(sp)
    800074bc:	01213023          	sd	s2,0(sp)
    800074c0:	02010413          	addi	s0,sp,32
    800074c4:	00050493          	mv	s1,a0
    800074c8:	10002973          	csrr	s2,sstatus
    800074cc:	100027f3          	csrr	a5,sstatus
    800074d0:	ffd7f793          	andi	a5,a5,-3
    800074d4:	10079073          	csrw	sstatus,a5
    800074d8:	fffff097          	auipc	ra,0xfffff
    800074dc:	8e0080e7          	jalr	-1824(ra) # 80005db8 <mycpu>
    800074e0:	07852783          	lw	a5,120(a0)
    800074e4:	06078e63          	beqz	a5,80007560 <acquire+0xb4>
    800074e8:	fffff097          	auipc	ra,0xfffff
    800074ec:	8d0080e7          	jalr	-1840(ra) # 80005db8 <mycpu>
    800074f0:	07852783          	lw	a5,120(a0)
    800074f4:	0004a703          	lw	a4,0(s1)
    800074f8:	0017879b          	addiw	a5,a5,1
    800074fc:	06f52c23          	sw	a5,120(a0)
    80007500:	04071063          	bnez	a4,80007540 <acquire+0x94>
    80007504:	00100713          	li	a4,1
    80007508:	00070793          	mv	a5,a4
    8000750c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80007510:	0007879b          	sext.w	a5,a5
    80007514:	fe079ae3          	bnez	a5,80007508 <acquire+0x5c>
    80007518:	0ff0000f          	fence
    8000751c:	fffff097          	auipc	ra,0xfffff
    80007520:	89c080e7          	jalr	-1892(ra) # 80005db8 <mycpu>
    80007524:	01813083          	ld	ra,24(sp)
    80007528:	01013403          	ld	s0,16(sp)
    8000752c:	00a4b823          	sd	a0,16(s1)
    80007530:	00013903          	ld	s2,0(sp)
    80007534:	00813483          	ld	s1,8(sp)
    80007538:	02010113          	addi	sp,sp,32
    8000753c:	00008067          	ret
    80007540:	0104b903          	ld	s2,16(s1)
    80007544:	fffff097          	auipc	ra,0xfffff
    80007548:	874080e7          	jalr	-1932(ra) # 80005db8 <mycpu>
    8000754c:	faa91ce3          	bne	s2,a0,80007504 <acquire+0x58>
    80007550:	00001517          	auipc	a0,0x1
    80007554:	f3850513          	addi	a0,a0,-200 # 80008488 <digits+0x20>
    80007558:	fffff097          	auipc	ra,0xfffff
    8000755c:	224080e7          	jalr	548(ra) # 8000677c <panic>
    80007560:	00195913          	srli	s2,s2,0x1
    80007564:	fffff097          	auipc	ra,0xfffff
    80007568:	854080e7          	jalr	-1964(ra) # 80005db8 <mycpu>
    8000756c:	00197913          	andi	s2,s2,1
    80007570:	07252e23          	sw	s2,124(a0)
    80007574:	f75ff06f          	j	800074e8 <acquire+0x3c>

0000000080007578 <release>:
    80007578:	fe010113          	addi	sp,sp,-32
    8000757c:	00813823          	sd	s0,16(sp)
    80007580:	00113c23          	sd	ra,24(sp)
    80007584:	00913423          	sd	s1,8(sp)
    80007588:	01213023          	sd	s2,0(sp)
    8000758c:	02010413          	addi	s0,sp,32
    80007590:	00052783          	lw	a5,0(a0)
    80007594:	00079a63          	bnez	a5,800075a8 <release+0x30>
    80007598:	00001517          	auipc	a0,0x1
    8000759c:	ef850513          	addi	a0,a0,-264 # 80008490 <digits+0x28>
    800075a0:	fffff097          	auipc	ra,0xfffff
    800075a4:	1dc080e7          	jalr	476(ra) # 8000677c <panic>
    800075a8:	01053903          	ld	s2,16(a0)
    800075ac:	00050493          	mv	s1,a0
    800075b0:	fffff097          	auipc	ra,0xfffff
    800075b4:	808080e7          	jalr	-2040(ra) # 80005db8 <mycpu>
    800075b8:	fea910e3          	bne	s2,a0,80007598 <release+0x20>
    800075bc:	0004b823          	sd	zero,16(s1)
    800075c0:	0ff0000f          	fence
    800075c4:	0f50000f          	fence	iorw,ow
    800075c8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800075cc:	ffffe097          	auipc	ra,0xffffe
    800075d0:	7ec080e7          	jalr	2028(ra) # 80005db8 <mycpu>
    800075d4:	100027f3          	csrr	a5,sstatus
    800075d8:	0027f793          	andi	a5,a5,2
    800075dc:	04079a63          	bnez	a5,80007630 <release+0xb8>
    800075e0:	07852783          	lw	a5,120(a0)
    800075e4:	02f05e63          	blez	a5,80007620 <release+0xa8>
    800075e8:	fff7871b          	addiw	a4,a5,-1
    800075ec:	06e52c23          	sw	a4,120(a0)
    800075f0:	00071c63          	bnez	a4,80007608 <release+0x90>
    800075f4:	07c52783          	lw	a5,124(a0)
    800075f8:	00078863          	beqz	a5,80007608 <release+0x90>
    800075fc:	100027f3          	csrr	a5,sstatus
    80007600:	0027e793          	ori	a5,a5,2
    80007604:	10079073          	csrw	sstatus,a5
    80007608:	01813083          	ld	ra,24(sp)
    8000760c:	01013403          	ld	s0,16(sp)
    80007610:	00813483          	ld	s1,8(sp)
    80007614:	00013903          	ld	s2,0(sp)
    80007618:	02010113          	addi	sp,sp,32
    8000761c:	00008067          	ret
    80007620:	00001517          	auipc	a0,0x1
    80007624:	e9050513          	addi	a0,a0,-368 # 800084b0 <digits+0x48>
    80007628:	fffff097          	auipc	ra,0xfffff
    8000762c:	154080e7          	jalr	340(ra) # 8000677c <panic>
    80007630:	00001517          	auipc	a0,0x1
    80007634:	e6850513          	addi	a0,a0,-408 # 80008498 <digits+0x30>
    80007638:	fffff097          	auipc	ra,0xfffff
    8000763c:	144080e7          	jalr	324(ra) # 8000677c <panic>

0000000080007640 <holding>:
    80007640:	00052783          	lw	a5,0(a0)
    80007644:	00079663          	bnez	a5,80007650 <holding+0x10>
    80007648:	00000513          	li	a0,0
    8000764c:	00008067          	ret
    80007650:	fe010113          	addi	sp,sp,-32
    80007654:	00813823          	sd	s0,16(sp)
    80007658:	00913423          	sd	s1,8(sp)
    8000765c:	00113c23          	sd	ra,24(sp)
    80007660:	02010413          	addi	s0,sp,32
    80007664:	01053483          	ld	s1,16(a0)
    80007668:	ffffe097          	auipc	ra,0xffffe
    8000766c:	750080e7          	jalr	1872(ra) # 80005db8 <mycpu>
    80007670:	01813083          	ld	ra,24(sp)
    80007674:	01013403          	ld	s0,16(sp)
    80007678:	40a48533          	sub	a0,s1,a0
    8000767c:	00153513          	seqz	a0,a0
    80007680:	00813483          	ld	s1,8(sp)
    80007684:	02010113          	addi	sp,sp,32
    80007688:	00008067          	ret

000000008000768c <push_off>:
    8000768c:	fe010113          	addi	sp,sp,-32
    80007690:	00813823          	sd	s0,16(sp)
    80007694:	00113c23          	sd	ra,24(sp)
    80007698:	00913423          	sd	s1,8(sp)
    8000769c:	02010413          	addi	s0,sp,32
    800076a0:	100024f3          	csrr	s1,sstatus
    800076a4:	100027f3          	csrr	a5,sstatus
    800076a8:	ffd7f793          	andi	a5,a5,-3
    800076ac:	10079073          	csrw	sstatus,a5
    800076b0:	ffffe097          	auipc	ra,0xffffe
    800076b4:	708080e7          	jalr	1800(ra) # 80005db8 <mycpu>
    800076b8:	07852783          	lw	a5,120(a0)
    800076bc:	02078663          	beqz	a5,800076e8 <push_off+0x5c>
    800076c0:	ffffe097          	auipc	ra,0xffffe
    800076c4:	6f8080e7          	jalr	1784(ra) # 80005db8 <mycpu>
    800076c8:	07852783          	lw	a5,120(a0)
    800076cc:	01813083          	ld	ra,24(sp)
    800076d0:	01013403          	ld	s0,16(sp)
    800076d4:	0017879b          	addiw	a5,a5,1
    800076d8:	06f52c23          	sw	a5,120(a0)
    800076dc:	00813483          	ld	s1,8(sp)
    800076e0:	02010113          	addi	sp,sp,32
    800076e4:	00008067          	ret
    800076e8:	0014d493          	srli	s1,s1,0x1
    800076ec:	ffffe097          	auipc	ra,0xffffe
    800076f0:	6cc080e7          	jalr	1740(ra) # 80005db8 <mycpu>
    800076f4:	0014f493          	andi	s1,s1,1
    800076f8:	06952e23          	sw	s1,124(a0)
    800076fc:	fc5ff06f          	j	800076c0 <push_off+0x34>

0000000080007700 <pop_off>:
    80007700:	ff010113          	addi	sp,sp,-16
    80007704:	00813023          	sd	s0,0(sp)
    80007708:	00113423          	sd	ra,8(sp)
    8000770c:	01010413          	addi	s0,sp,16
    80007710:	ffffe097          	auipc	ra,0xffffe
    80007714:	6a8080e7          	jalr	1704(ra) # 80005db8 <mycpu>
    80007718:	100027f3          	csrr	a5,sstatus
    8000771c:	0027f793          	andi	a5,a5,2
    80007720:	04079663          	bnez	a5,8000776c <pop_off+0x6c>
    80007724:	07852783          	lw	a5,120(a0)
    80007728:	02f05a63          	blez	a5,8000775c <pop_off+0x5c>
    8000772c:	fff7871b          	addiw	a4,a5,-1
    80007730:	06e52c23          	sw	a4,120(a0)
    80007734:	00071c63          	bnez	a4,8000774c <pop_off+0x4c>
    80007738:	07c52783          	lw	a5,124(a0)
    8000773c:	00078863          	beqz	a5,8000774c <pop_off+0x4c>
    80007740:	100027f3          	csrr	a5,sstatus
    80007744:	0027e793          	ori	a5,a5,2
    80007748:	10079073          	csrw	sstatus,a5
    8000774c:	00813083          	ld	ra,8(sp)
    80007750:	00013403          	ld	s0,0(sp)
    80007754:	01010113          	addi	sp,sp,16
    80007758:	00008067          	ret
    8000775c:	00001517          	auipc	a0,0x1
    80007760:	d5450513          	addi	a0,a0,-684 # 800084b0 <digits+0x48>
    80007764:	fffff097          	auipc	ra,0xfffff
    80007768:	018080e7          	jalr	24(ra) # 8000677c <panic>
    8000776c:	00001517          	auipc	a0,0x1
    80007770:	d2c50513          	addi	a0,a0,-724 # 80008498 <digits+0x30>
    80007774:	fffff097          	auipc	ra,0xfffff
    80007778:	008080e7          	jalr	8(ra) # 8000677c <panic>

000000008000777c <push_on>:
    8000777c:	fe010113          	addi	sp,sp,-32
    80007780:	00813823          	sd	s0,16(sp)
    80007784:	00113c23          	sd	ra,24(sp)
    80007788:	00913423          	sd	s1,8(sp)
    8000778c:	02010413          	addi	s0,sp,32
    80007790:	100024f3          	csrr	s1,sstatus
    80007794:	100027f3          	csrr	a5,sstatus
    80007798:	0027e793          	ori	a5,a5,2
    8000779c:	10079073          	csrw	sstatus,a5
    800077a0:	ffffe097          	auipc	ra,0xffffe
    800077a4:	618080e7          	jalr	1560(ra) # 80005db8 <mycpu>
    800077a8:	07852783          	lw	a5,120(a0)
    800077ac:	02078663          	beqz	a5,800077d8 <push_on+0x5c>
    800077b0:	ffffe097          	auipc	ra,0xffffe
    800077b4:	608080e7          	jalr	1544(ra) # 80005db8 <mycpu>
    800077b8:	07852783          	lw	a5,120(a0)
    800077bc:	01813083          	ld	ra,24(sp)
    800077c0:	01013403          	ld	s0,16(sp)
    800077c4:	0017879b          	addiw	a5,a5,1
    800077c8:	06f52c23          	sw	a5,120(a0)
    800077cc:	00813483          	ld	s1,8(sp)
    800077d0:	02010113          	addi	sp,sp,32
    800077d4:	00008067          	ret
    800077d8:	0014d493          	srli	s1,s1,0x1
    800077dc:	ffffe097          	auipc	ra,0xffffe
    800077e0:	5dc080e7          	jalr	1500(ra) # 80005db8 <mycpu>
    800077e4:	0014f493          	andi	s1,s1,1
    800077e8:	06952e23          	sw	s1,124(a0)
    800077ec:	fc5ff06f          	j	800077b0 <push_on+0x34>

00000000800077f0 <pop_on>:
    800077f0:	ff010113          	addi	sp,sp,-16
    800077f4:	00813023          	sd	s0,0(sp)
    800077f8:	00113423          	sd	ra,8(sp)
    800077fc:	01010413          	addi	s0,sp,16
    80007800:	ffffe097          	auipc	ra,0xffffe
    80007804:	5b8080e7          	jalr	1464(ra) # 80005db8 <mycpu>
    80007808:	100027f3          	csrr	a5,sstatus
    8000780c:	0027f793          	andi	a5,a5,2
    80007810:	04078463          	beqz	a5,80007858 <pop_on+0x68>
    80007814:	07852783          	lw	a5,120(a0)
    80007818:	02f05863          	blez	a5,80007848 <pop_on+0x58>
    8000781c:	fff7879b          	addiw	a5,a5,-1
    80007820:	06f52c23          	sw	a5,120(a0)
    80007824:	07853783          	ld	a5,120(a0)
    80007828:	00079863          	bnez	a5,80007838 <pop_on+0x48>
    8000782c:	100027f3          	csrr	a5,sstatus
    80007830:	ffd7f793          	andi	a5,a5,-3
    80007834:	10079073          	csrw	sstatus,a5
    80007838:	00813083          	ld	ra,8(sp)
    8000783c:	00013403          	ld	s0,0(sp)
    80007840:	01010113          	addi	sp,sp,16
    80007844:	00008067          	ret
    80007848:	00001517          	auipc	a0,0x1
    8000784c:	c9050513          	addi	a0,a0,-880 # 800084d8 <digits+0x70>
    80007850:	fffff097          	auipc	ra,0xfffff
    80007854:	f2c080e7          	jalr	-212(ra) # 8000677c <panic>
    80007858:	00001517          	auipc	a0,0x1
    8000785c:	c6050513          	addi	a0,a0,-928 # 800084b8 <digits+0x50>
    80007860:	fffff097          	auipc	ra,0xfffff
    80007864:	f1c080e7          	jalr	-228(ra) # 8000677c <panic>

0000000080007868 <__memset>:
    80007868:	ff010113          	addi	sp,sp,-16
    8000786c:	00813423          	sd	s0,8(sp)
    80007870:	01010413          	addi	s0,sp,16
    80007874:	1a060e63          	beqz	a2,80007a30 <__memset+0x1c8>
    80007878:	40a007b3          	neg	a5,a0
    8000787c:	0077f793          	andi	a5,a5,7
    80007880:	00778693          	addi	a3,a5,7
    80007884:	00b00813          	li	a6,11
    80007888:	0ff5f593          	andi	a1,a1,255
    8000788c:	fff6071b          	addiw	a4,a2,-1
    80007890:	1b06e663          	bltu	a3,a6,80007a3c <__memset+0x1d4>
    80007894:	1cd76463          	bltu	a4,a3,80007a5c <__memset+0x1f4>
    80007898:	1a078e63          	beqz	a5,80007a54 <__memset+0x1ec>
    8000789c:	00b50023          	sb	a1,0(a0)
    800078a0:	00100713          	li	a4,1
    800078a4:	1ae78463          	beq	a5,a4,80007a4c <__memset+0x1e4>
    800078a8:	00b500a3          	sb	a1,1(a0)
    800078ac:	00200713          	li	a4,2
    800078b0:	1ae78a63          	beq	a5,a4,80007a64 <__memset+0x1fc>
    800078b4:	00b50123          	sb	a1,2(a0)
    800078b8:	00300713          	li	a4,3
    800078bc:	18e78463          	beq	a5,a4,80007a44 <__memset+0x1dc>
    800078c0:	00b501a3          	sb	a1,3(a0)
    800078c4:	00400713          	li	a4,4
    800078c8:	1ae78263          	beq	a5,a4,80007a6c <__memset+0x204>
    800078cc:	00b50223          	sb	a1,4(a0)
    800078d0:	00500713          	li	a4,5
    800078d4:	1ae78063          	beq	a5,a4,80007a74 <__memset+0x20c>
    800078d8:	00b502a3          	sb	a1,5(a0)
    800078dc:	00700713          	li	a4,7
    800078e0:	18e79e63          	bne	a5,a4,80007a7c <__memset+0x214>
    800078e4:	00b50323          	sb	a1,6(a0)
    800078e8:	00700e93          	li	t4,7
    800078ec:	00859713          	slli	a4,a1,0x8
    800078f0:	00e5e733          	or	a4,a1,a4
    800078f4:	01059e13          	slli	t3,a1,0x10
    800078f8:	01c76e33          	or	t3,a4,t3
    800078fc:	01859313          	slli	t1,a1,0x18
    80007900:	006e6333          	or	t1,t3,t1
    80007904:	02059893          	slli	a7,a1,0x20
    80007908:	40f60e3b          	subw	t3,a2,a5
    8000790c:	011368b3          	or	a7,t1,a7
    80007910:	02859813          	slli	a6,a1,0x28
    80007914:	0108e833          	or	a6,a7,a6
    80007918:	03059693          	slli	a3,a1,0x30
    8000791c:	003e589b          	srliw	a7,t3,0x3
    80007920:	00d866b3          	or	a3,a6,a3
    80007924:	03859713          	slli	a4,a1,0x38
    80007928:	00389813          	slli	a6,a7,0x3
    8000792c:	00f507b3          	add	a5,a0,a5
    80007930:	00e6e733          	or	a4,a3,a4
    80007934:	000e089b          	sext.w	a7,t3
    80007938:	00f806b3          	add	a3,a6,a5
    8000793c:	00e7b023          	sd	a4,0(a5)
    80007940:	00878793          	addi	a5,a5,8
    80007944:	fed79ce3          	bne	a5,a3,8000793c <__memset+0xd4>
    80007948:	ff8e7793          	andi	a5,t3,-8
    8000794c:	0007871b          	sext.w	a4,a5
    80007950:	01d787bb          	addw	a5,a5,t4
    80007954:	0ce88e63          	beq	a7,a4,80007a30 <__memset+0x1c8>
    80007958:	00f50733          	add	a4,a0,a5
    8000795c:	00b70023          	sb	a1,0(a4)
    80007960:	0017871b          	addiw	a4,a5,1
    80007964:	0cc77663          	bgeu	a4,a2,80007a30 <__memset+0x1c8>
    80007968:	00e50733          	add	a4,a0,a4
    8000796c:	00b70023          	sb	a1,0(a4)
    80007970:	0027871b          	addiw	a4,a5,2
    80007974:	0ac77e63          	bgeu	a4,a2,80007a30 <__memset+0x1c8>
    80007978:	00e50733          	add	a4,a0,a4
    8000797c:	00b70023          	sb	a1,0(a4)
    80007980:	0037871b          	addiw	a4,a5,3
    80007984:	0ac77663          	bgeu	a4,a2,80007a30 <__memset+0x1c8>
    80007988:	00e50733          	add	a4,a0,a4
    8000798c:	00b70023          	sb	a1,0(a4)
    80007990:	0047871b          	addiw	a4,a5,4
    80007994:	08c77e63          	bgeu	a4,a2,80007a30 <__memset+0x1c8>
    80007998:	00e50733          	add	a4,a0,a4
    8000799c:	00b70023          	sb	a1,0(a4)
    800079a0:	0057871b          	addiw	a4,a5,5
    800079a4:	08c77663          	bgeu	a4,a2,80007a30 <__memset+0x1c8>
    800079a8:	00e50733          	add	a4,a0,a4
    800079ac:	00b70023          	sb	a1,0(a4)
    800079b0:	0067871b          	addiw	a4,a5,6
    800079b4:	06c77e63          	bgeu	a4,a2,80007a30 <__memset+0x1c8>
    800079b8:	00e50733          	add	a4,a0,a4
    800079bc:	00b70023          	sb	a1,0(a4)
    800079c0:	0077871b          	addiw	a4,a5,7
    800079c4:	06c77663          	bgeu	a4,a2,80007a30 <__memset+0x1c8>
    800079c8:	00e50733          	add	a4,a0,a4
    800079cc:	00b70023          	sb	a1,0(a4)
    800079d0:	0087871b          	addiw	a4,a5,8
    800079d4:	04c77e63          	bgeu	a4,a2,80007a30 <__memset+0x1c8>
    800079d8:	00e50733          	add	a4,a0,a4
    800079dc:	00b70023          	sb	a1,0(a4)
    800079e0:	0097871b          	addiw	a4,a5,9
    800079e4:	04c77663          	bgeu	a4,a2,80007a30 <__memset+0x1c8>
    800079e8:	00e50733          	add	a4,a0,a4
    800079ec:	00b70023          	sb	a1,0(a4)
    800079f0:	00a7871b          	addiw	a4,a5,10
    800079f4:	02c77e63          	bgeu	a4,a2,80007a30 <__memset+0x1c8>
    800079f8:	00e50733          	add	a4,a0,a4
    800079fc:	00b70023          	sb	a1,0(a4)
    80007a00:	00b7871b          	addiw	a4,a5,11
    80007a04:	02c77663          	bgeu	a4,a2,80007a30 <__memset+0x1c8>
    80007a08:	00e50733          	add	a4,a0,a4
    80007a0c:	00b70023          	sb	a1,0(a4)
    80007a10:	00c7871b          	addiw	a4,a5,12
    80007a14:	00c77e63          	bgeu	a4,a2,80007a30 <__memset+0x1c8>
    80007a18:	00e50733          	add	a4,a0,a4
    80007a1c:	00b70023          	sb	a1,0(a4)
    80007a20:	00d7879b          	addiw	a5,a5,13
    80007a24:	00c7f663          	bgeu	a5,a2,80007a30 <__memset+0x1c8>
    80007a28:	00f507b3          	add	a5,a0,a5
    80007a2c:	00b78023          	sb	a1,0(a5)
    80007a30:	00813403          	ld	s0,8(sp)
    80007a34:	01010113          	addi	sp,sp,16
    80007a38:	00008067          	ret
    80007a3c:	00b00693          	li	a3,11
    80007a40:	e55ff06f          	j	80007894 <__memset+0x2c>
    80007a44:	00300e93          	li	t4,3
    80007a48:	ea5ff06f          	j	800078ec <__memset+0x84>
    80007a4c:	00100e93          	li	t4,1
    80007a50:	e9dff06f          	j	800078ec <__memset+0x84>
    80007a54:	00000e93          	li	t4,0
    80007a58:	e95ff06f          	j	800078ec <__memset+0x84>
    80007a5c:	00000793          	li	a5,0
    80007a60:	ef9ff06f          	j	80007958 <__memset+0xf0>
    80007a64:	00200e93          	li	t4,2
    80007a68:	e85ff06f          	j	800078ec <__memset+0x84>
    80007a6c:	00400e93          	li	t4,4
    80007a70:	e7dff06f          	j	800078ec <__memset+0x84>
    80007a74:	00500e93          	li	t4,5
    80007a78:	e75ff06f          	j	800078ec <__memset+0x84>
    80007a7c:	00600e93          	li	t4,6
    80007a80:	e6dff06f          	j	800078ec <__memset+0x84>

0000000080007a84 <__memmove>:
    80007a84:	ff010113          	addi	sp,sp,-16
    80007a88:	00813423          	sd	s0,8(sp)
    80007a8c:	01010413          	addi	s0,sp,16
    80007a90:	0e060863          	beqz	a2,80007b80 <__memmove+0xfc>
    80007a94:	fff6069b          	addiw	a3,a2,-1
    80007a98:	0006881b          	sext.w	a6,a3
    80007a9c:	0ea5e863          	bltu	a1,a0,80007b8c <__memmove+0x108>
    80007aa0:	00758713          	addi	a4,a1,7
    80007aa4:	00a5e7b3          	or	a5,a1,a0
    80007aa8:	40a70733          	sub	a4,a4,a0
    80007aac:	0077f793          	andi	a5,a5,7
    80007ab0:	00f73713          	sltiu	a4,a4,15
    80007ab4:	00174713          	xori	a4,a4,1
    80007ab8:	0017b793          	seqz	a5,a5
    80007abc:	00e7f7b3          	and	a5,a5,a4
    80007ac0:	10078863          	beqz	a5,80007bd0 <__memmove+0x14c>
    80007ac4:	00900793          	li	a5,9
    80007ac8:	1107f463          	bgeu	a5,a6,80007bd0 <__memmove+0x14c>
    80007acc:	0036581b          	srliw	a6,a2,0x3
    80007ad0:	fff8081b          	addiw	a6,a6,-1
    80007ad4:	02081813          	slli	a6,a6,0x20
    80007ad8:	01d85893          	srli	a7,a6,0x1d
    80007adc:	00858813          	addi	a6,a1,8
    80007ae0:	00058793          	mv	a5,a1
    80007ae4:	00050713          	mv	a4,a0
    80007ae8:	01088833          	add	a6,a7,a6
    80007aec:	0007b883          	ld	a7,0(a5)
    80007af0:	00878793          	addi	a5,a5,8
    80007af4:	00870713          	addi	a4,a4,8
    80007af8:	ff173c23          	sd	a7,-8(a4)
    80007afc:	ff0798e3          	bne	a5,a6,80007aec <__memmove+0x68>
    80007b00:	ff867713          	andi	a4,a2,-8
    80007b04:	02071793          	slli	a5,a4,0x20
    80007b08:	0207d793          	srli	a5,a5,0x20
    80007b0c:	00f585b3          	add	a1,a1,a5
    80007b10:	40e686bb          	subw	a3,a3,a4
    80007b14:	00f507b3          	add	a5,a0,a5
    80007b18:	06e60463          	beq	a2,a4,80007b80 <__memmove+0xfc>
    80007b1c:	0005c703          	lbu	a4,0(a1)
    80007b20:	00e78023          	sb	a4,0(a5)
    80007b24:	04068e63          	beqz	a3,80007b80 <__memmove+0xfc>
    80007b28:	0015c603          	lbu	a2,1(a1)
    80007b2c:	00100713          	li	a4,1
    80007b30:	00c780a3          	sb	a2,1(a5)
    80007b34:	04e68663          	beq	a3,a4,80007b80 <__memmove+0xfc>
    80007b38:	0025c603          	lbu	a2,2(a1)
    80007b3c:	00200713          	li	a4,2
    80007b40:	00c78123          	sb	a2,2(a5)
    80007b44:	02e68e63          	beq	a3,a4,80007b80 <__memmove+0xfc>
    80007b48:	0035c603          	lbu	a2,3(a1)
    80007b4c:	00300713          	li	a4,3
    80007b50:	00c781a3          	sb	a2,3(a5)
    80007b54:	02e68663          	beq	a3,a4,80007b80 <__memmove+0xfc>
    80007b58:	0045c603          	lbu	a2,4(a1)
    80007b5c:	00400713          	li	a4,4
    80007b60:	00c78223          	sb	a2,4(a5)
    80007b64:	00e68e63          	beq	a3,a4,80007b80 <__memmove+0xfc>
    80007b68:	0055c603          	lbu	a2,5(a1)
    80007b6c:	00500713          	li	a4,5
    80007b70:	00c782a3          	sb	a2,5(a5)
    80007b74:	00e68663          	beq	a3,a4,80007b80 <__memmove+0xfc>
    80007b78:	0065c703          	lbu	a4,6(a1)
    80007b7c:	00e78323          	sb	a4,6(a5)
    80007b80:	00813403          	ld	s0,8(sp)
    80007b84:	01010113          	addi	sp,sp,16
    80007b88:	00008067          	ret
    80007b8c:	02061713          	slli	a4,a2,0x20
    80007b90:	02075713          	srli	a4,a4,0x20
    80007b94:	00e587b3          	add	a5,a1,a4
    80007b98:	f0f574e3          	bgeu	a0,a5,80007aa0 <__memmove+0x1c>
    80007b9c:	02069613          	slli	a2,a3,0x20
    80007ba0:	02065613          	srli	a2,a2,0x20
    80007ba4:	fff64613          	not	a2,a2
    80007ba8:	00e50733          	add	a4,a0,a4
    80007bac:	00c78633          	add	a2,a5,a2
    80007bb0:	fff7c683          	lbu	a3,-1(a5)
    80007bb4:	fff78793          	addi	a5,a5,-1
    80007bb8:	fff70713          	addi	a4,a4,-1
    80007bbc:	00d70023          	sb	a3,0(a4)
    80007bc0:	fec798e3          	bne	a5,a2,80007bb0 <__memmove+0x12c>
    80007bc4:	00813403          	ld	s0,8(sp)
    80007bc8:	01010113          	addi	sp,sp,16
    80007bcc:	00008067          	ret
    80007bd0:	02069713          	slli	a4,a3,0x20
    80007bd4:	02075713          	srli	a4,a4,0x20
    80007bd8:	00170713          	addi	a4,a4,1
    80007bdc:	00e50733          	add	a4,a0,a4
    80007be0:	00050793          	mv	a5,a0
    80007be4:	0005c683          	lbu	a3,0(a1)
    80007be8:	00178793          	addi	a5,a5,1
    80007bec:	00158593          	addi	a1,a1,1
    80007bf0:	fed78fa3          	sb	a3,-1(a5)
    80007bf4:	fee798e3          	bne	a5,a4,80007be4 <__memmove+0x160>
    80007bf8:	f89ff06f          	j	80007b80 <__memmove+0xfc>

0000000080007bfc <__putc>:
    80007bfc:	fe010113          	addi	sp,sp,-32
    80007c00:	00813823          	sd	s0,16(sp)
    80007c04:	00113c23          	sd	ra,24(sp)
    80007c08:	02010413          	addi	s0,sp,32
    80007c0c:	00050793          	mv	a5,a0
    80007c10:	fef40593          	addi	a1,s0,-17
    80007c14:	00100613          	li	a2,1
    80007c18:	00000513          	li	a0,0
    80007c1c:	fef407a3          	sb	a5,-17(s0)
    80007c20:	fffff097          	auipc	ra,0xfffff
    80007c24:	b3c080e7          	jalr	-1220(ra) # 8000675c <console_write>
    80007c28:	01813083          	ld	ra,24(sp)
    80007c2c:	01013403          	ld	s0,16(sp)
    80007c30:	02010113          	addi	sp,sp,32
    80007c34:	00008067          	ret

0000000080007c38 <__getc>:
    80007c38:	fe010113          	addi	sp,sp,-32
    80007c3c:	00813823          	sd	s0,16(sp)
    80007c40:	00113c23          	sd	ra,24(sp)
    80007c44:	02010413          	addi	s0,sp,32
    80007c48:	fe840593          	addi	a1,s0,-24
    80007c4c:	00100613          	li	a2,1
    80007c50:	00000513          	li	a0,0
    80007c54:	fffff097          	auipc	ra,0xfffff
    80007c58:	ae8080e7          	jalr	-1304(ra) # 8000673c <console_read>
    80007c5c:	fe844503          	lbu	a0,-24(s0)
    80007c60:	01813083          	ld	ra,24(sp)
    80007c64:	01013403          	ld	s0,16(sp)
    80007c68:	02010113          	addi	sp,sp,32
    80007c6c:	00008067          	ret

0000000080007c70 <console_handler>:
    80007c70:	fe010113          	addi	sp,sp,-32
    80007c74:	00813823          	sd	s0,16(sp)
    80007c78:	00113c23          	sd	ra,24(sp)
    80007c7c:	00913423          	sd	s1,8(sp)
    80007c80:	02010413          	addi	s0,sp,32
    80007c84:	14202773          	csrr	a4,scause
    80007c88:	100027f3          	csrr	a5,sstatus
    80007c8c:	0027f793          	andi	a5,a5,2
    80007c90:	06079e63          	bnez	a5,80007d0c <console_handler+0x9c>
    80007c94:	00074c63          	bltz	a4,80007cac <console_handler+0x3c>
    80007c98:	01813083          	ld	ra,24(sp)
    80007c9c:	01013403          	ld	s0,16(sp)
    80007ca0:	00813483          	ld	s1,8(sp)
    80007ca4:	02010113          	addi	sp,sp,32
    80007ca8:	00008067          	ret
    80007cac:	0ff77713          	andi	a4,a4,255
    80007cb0:	00900793          	li	a5,9
    80007cb4:	fef712e3          	bne	a4,a5,80007c98 <console_handler+0x28>
    80007cb8:	ffffe097          	auipc	ra,0xffffe
    80007cbc:	6dc080e7          	jalr	1756(ra) # 80006394 <plic_claim>
    80007cc0:	00a00793          	li	a5,10
    80007cc4:	00050493          	mv	s1,a0
    80007cc8:	02f50c63          	beq	a0,a5,80007d00 <console_handler+0x90>
    80007ccc:	fc0506e3          	beqz	a0,80007c98 <console_handler+0x28>
    80007cd0:	00050593          	mv	a1,a0
    80007cd4:	00000517          	auipc	a0,0x0
    80007cd8:	70c50513          	addi	a0,a0,1804 # 800083e0 <_ZZ12printIntegermE6digits+0x310>
    80007cdc:	fffff097          	auipc	ra,0xfffff
    80007ce0:	afc080e7          	jalr	-1284(ra) # 800067d8 <__printf>
    80007ce4:	01013403          	ld	s0,16(sp)
    80007ce8:	01813083          	ld	ra,24(sp)
    80007cec:	00048513          	mv	a0,s1
    80007cf0:	00813483          	ld	s1,8(sp)
    80007cf4:	02010113          	addi	sp,sp,32
    80007cf8:	ffffe317          	auipc	t1,0xffffe
    80007cfc:	6d430067          	jr	1748(t1) # 800063cc <plic_complete>
    80007d00:	fffff097          	auipc	ra,0xfffff
    80007d04:	3e0080e7          	jalr	992(ra) # 800070e0 <uartintr>
    80007d08:	fddff06f          	j	80007ce4 <console_handler+0x74>
    80007d0c:	00000517          	auipc	a0,0x0
    80007d10:	7d450513          	addi	a0,a0,2004 # 800084e0 <digits+0x78>
    80007d14:	fffff097          	auipc	ra,0xfffff
    80007d18:	a68080e7          	jalr	-1432(ra) # 8000677c <panic>
	...
