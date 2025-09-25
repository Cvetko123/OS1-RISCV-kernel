
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000a117          	auipc	sp,0xa
    80000004:	fa813103          	ld	sp,-88(sp) # 80009fa8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	7c0050ef          	jal	ra,800057dc <start>

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
    80001084:	0f0010ef          	jal	ra,80002174 <_ZN5Riscv21SupervisorTrapHandlerEv>
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

000000008000136c <_Z9fibonaccim>:

#include "../h/print.hpp"
#include "../h/syscall_c.hpp"
#include "../h/syscall_cpp.hpp"

uint64 fibonacci(uint64 n) {
    8000136c:	fe010113          	addi	sp,sp,-32
    80001370:	00113c23          	sd	ra,24(sp)
    80001374:	00813823          	sd	s0,16(sp)
    80001378:	00913423          	sd	s1,8(sp)
    8000137c:	01213023          	sd	s2,0(sp)
    80001380:	02010413          	addi	s0,sp,32
    80001384:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80001388:	00100793          	li	a5,1
    8000138c:	02a7f663          	bgeu	a5,a0,800013b8 <_Z9fibonaccim+0x4c>
    if (n % 4 == 0) thread_dispatch();
    80001390:	00357793          	andi	a5,a0,3
    80001394:	02078e63          	beqz	a5,800013d0 <_Z9fibonaccim+0x64>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80001398:	fff48513          	addi	a0,s1,-1
    8000139c:	00000097          	auipc	ra,0x0
    800013a0:	fd0080e7          	jalr	-48(ra) # 8000136c <_Z9fibonaccim>
    800013a4:	00050913          	mv	s2,a0
    800013a8:	ffe48513          	addi	a0,s1,-2
    800013ac:	00000097          	auipc	ra,0x0
    800013b0:	fc0080e7          	jalr	-64(ra) # 8000136c <_Z9fibonaccim>
    800013b4:	00a90533          	add	a0,s2,a0
}
    800013b8:	01813083          	ld	ra,24(sp)
    800013bc:	01013403          	ld	s0,16(sp)
    800013c0:	00813483          	ld	s1,8(sp)
    800013c4:	00013903          	ld	s2,0(sp)
    800013c8:	02010113          	addi	sp,sp,32
    800013cc:	00008067          	ret
    if (n % 4 == 0) thread_dispatch();
    800013d0:	00000097          	auipc	ra,0x0
    800013d4:	eb4080e7          	jalr	-332(ra) # 80001284 <_Z15thread_dispatchv>
    800013d8:	fc1ff06f          	j	80001398 <_Z9fibonaccim+0x2c>

00000000800013dc <_Z13initSemaphorev>:

Semaphore* semaphore;

void initSemaphore() {
    if (semaphore) {
    800013dc:	00009797          	auipc	a5,0x9
    800013e0:	c347b783          	ld	a5,-972(a5) # 8000a010 <semaphore>
    800013e4:	00078463          	beqz	a5,800013ec <_Z13initSemaphorev+0x10>
    800013e8:	00008067          	ret
void initSemaphore() {
    800013ec:	fe010113          	addi	sp,sp,-32
    800013f0:	00113c23          	sd	ra,24(sp)
    800013f4:	00813823          	sd	s0,16(sp)
    800013f8:	00913423          	sd	s1,8(sp)
    800013fc:	01213023          	sd	s2,0(sp)
    80001400:	02010413          	addi	s0,sp,32
        return;
    }
    semaphore = new Semaphore(2);
    80001404:	01000513          	li	a0,16
    80001408:	00001097          	auipc	ra,0x1
    8000140c:	894080e7          	jalr	-1900(ra) # 80001c9c <_Znwm>
    80001410:	00050493          	mv	s1,a0
    80001414:	00200593          	li	a1,2
    80001418:	00001097          	auipc	ra,0x1
    8000141c:	a90080e7          	jalr	-1392(ra) # 80001ea8 <_ZN9SemaphoreC1Ej>
    80001420:	00009797          	auipc	a5,0x9
    80001424:	be97b823          	sd	s1,-1040(a5) # 8000a010 <semaphore>
    if (semaphore == nullptr) {
    80001428:	00048e63          	beqz	s1,80001444 <_Z13initSemaphorev+0x68>
        pprintString("Failed\n");

    }
}
    8000142c:	01813083          	ld	ra,24(sp)
    80001430:	01013403          	ld	s0,16(sp)
    80001434:	00813483          	ld	s1,8(sp)
    80001438:	00013903          	ld	s2,0(sp)
    8000143c:	02010113          	addi	sp,sp,32
    80001440:	00008067          	ret
        pprintString("Failed\n");
    80001444:	00007517          	auipc	a0,0x7
    80001448:	bdc50513          	addi	a0,a0,-1060 # 80008020 <CONSOLE_STATUS+0x10>
    8000144c:	00001097          	auipc	ra,0x1
    80001450:	39c080e7          	jalr	924(ra) # 800027e8 <_Z12pprintStringPKc>
    80001454:	fd9ff06f          	j	8000142c <_Z13initSemaphorev+0x50>
    80001458:	00050913          	mv	s2,a0
    semaphore = new Semaphore(2);
    8000145c:	00048513          	mv	a0,s1
    80001460:	00001097          	auipc	ra,0x1
    80001464:	864080e7          	jalr	-1948(ra) # 80001cc4 <_ZdlPv>
    80001468:	00090513          	mv	a0,s2
    8000146c:	0000a097          	auipc	ra,0xa
    80001470:	cec080e7          	jalr	-788(ra) # 8000b158 <_Unwind_Resume>

0000000080001474 <_Z11workerBodyAv>:

void workerBodyA() {
    80001474:	fe010113          	addi	sp,sp,-32
    80001478:	00113c23          	sd	ra,24(sp)
    8000147c:	00813823          	sd	s0,16(sp)
    80001480:	00913423          	sd	s1,8(sp)
    80001484:	02010413          	addi	s0,sp,32
   initSemaphore();
    80001488:	00000097          	auipc	ra,0x0
    8000148c:	f54080e7          	jalr	-172(ra) # 800013dc <_Z13initSemaphorev>
   semaphore->wait();
    80001490:	00009517          	auipc	a0,0x9
    80001494:	b8053503          	ld	a0,-1152(a0) # 8000a010 <semaphore>
    80001498:	00001097          	auipc	ra,0x1
    8000149c:	a48080e7          	jalr	-1464(ra) # 80001ee0 <_ZN9Semaphore4waitEv>

    // uint64 result = fibonacci(20);
    // pprintString("A: fibonaci="); printInteger(result); pprintString("\n");

    //for (; i < 6; i++) { pprintString("A: i="); printInteger(i); pprintString("\n"); }
    for (uint64 i = 0; i < 10; i++) {
    800014a0:	00000493          	li	s1,0
    800014a4:	0300006f          	j	800014d4 <_Z11workerBodyAv+0x60>
        pprintString("A: i="); printInteger(i); pprintString("\n");
        for (uint64 j = 0; j < 10000; j++) {
    800014a8:	00168693          	addi	a3,a3,1
    800014ac:	000027b7          	lui	a5,0x2
    800014b0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800014b4:	00d7ee63          	bltu	a5,a3,800014d0 <_Z11workerBodyAv+0x5c>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800014b8:	00000713          	li	a4,0
    800014bc:	000077b7          	lui	a5,0x7
    800014c0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800014c4:	fee7e2e3          	bltu	a5,a4,800014a8 <_Z11workerBodyAv+0x34>
    800014c8:	00170713          	addi	a4,a4,1
    800014cc:	ff1ff06f          	j	800014bc <_Z11workerBodyAv+0x48>
    for (uint64 i = 0; i < 10; i++) {
    800014d0:	00148493          	addi	s1,s1,1
    800014d4:	00900793          	li	a5,9
    800014d8:	0297ec63          	bltu	a5,s1,80001510 <_Z11workerBodyAv+0x9c>
        pprintString("A: i="); printInteger(i); pprintString("\n");
    800014dc:	00007517          	auipc	a0,0x7
    800014e0:	b4c50513          	addi	a0,a0,-1204 # 80008028 <CONSOLE_STATUS+0x18>
    800014e4:	00001097          	auipc	ra,0x1
    800014e8:	304080e7          	jalr	772(ra) # 800027e8 <_Z12pprintStringPKc>
    800014ec:	00048513          	mv	a0,s1
    800014f0:	00001097          	auipc	ra,0x1
    800014f4:	33c080e7          	jalr	828(ra) # 8000282c <_Z12printIntegerm>
    800014f8:	00007517          	auipc	a0,0x7
    800014fc:	e1850513          	addi	a0,a0,-488 # 80008310 <_ZZ12printIntegermE6digits+0x230>
    80001500:	00001097          	auipc	ra,0x1
    80001504:	2e8080e7          	jalr	744(ra) # 800027e8 <_Z12pprintStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80001508:	00000693          	li	a3,0
    8000150c:	fa1ff06f          	j	800014ac <_Z11workerBodyAv+0x38>
            // TCB::yield();
        }
    }
    pprintString("A finished!\n");
    80001510:	00007517          	auipc	a0,0x7
    80001514:	b2050513          	addi	a0,a0,-1248 # 80008030 <CONSOLE_STATUS+0x20>
    80001518:	00001097          	auipc	ra,0x1
    8000151c:	2d0080e7          	jalr	720(ra) # 800027e8 <_Z12pprintStringPKc>
    semaphore->signal();
    80001520:	00009517          	auipc	a0,0x9
    80001524:	af053503          	ld	a0,-1296(a0) # 8000a010 <semaphore>
    80001528:	00001097          	auipc	ra,0x1
    8000152c:	9e4080e7          	jalr	-1564(ra) # 80001f0c <_ZN9Semaphore6signalEv>

}
    80001530:	01813083          	ld	ra,24(sp)
    80001534:	01013403          	ld	s0,16(sp)
    80001538:	00813483          	ld	s1,8(sp)
    8000153c:	02010113          	addi	sp,sp,32
    80001540:	00008067          	ret

0000000080001544 <_Z11workerBodyBv>:

void workerBodyB() {
    80001544:	fe010113          	addi	sp,sp,-32
    80001548:	00113c23          	sd	ra,24(sp)
    8000154c:	00813823          	sd	s0,16(sp)
    80001550:	00913423          	sd	s1,8(sp)
    80001554:	02010413          	addi	s0,sp,32
    initSemaphore();
    80001558:	00000097          	auipc	ra,0x0
    8000155c:	e84080e7          	jalr	-380(ra) # 800013dc <_Z13initSemaphorev>
    semaphore->wait();
    80001560:	00009517          	auipc	a0,0x9
    80001564:	ab053503          	ld	a0,-1360(a0) # 8000a010 <semaphore>
    80001568:	00001097          	auipc	ra,0x1
    8000156c:	978080e7          	jalr	-1672(ra) # 80001ee0 <_ZN9Semaphore4waitEv>
    // uint64 result = fibonacci(23);
    // pprintString("B: fibonaci="); printInteger(result); pprintString("\n");

    //for (; i < 16; i++) { pprintString("B: i="); printInteger(i); pprintString("\n"); }

    for (uint64 i = 0; i < 16; i++) {
    80001570:	00000493          	li	s1,0
    80001574:	0300006f          	j	800015a4 <_Z11workerBodyBv+0x60>
        pprintString("B: i="); printInteger(i); pprintString("\n");
        for (uint64 j = 0; j < 10000; j++) {
    80001578:	00168693          	addi	a3,a3,1
    8000157c:	000027b7          	lui	a5,0x2
    80001580:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001584:	00d7ee63          	bltu	a5,a3,800015a0 <_Z11workerBodyBv+0x5c>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80001588:	00000713          	li	a4,0
    8000158c:	000077b7          	lui	a5,0x7
    80001590:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80001594:	fee7e2e3          	bltu	a5,a4,80001578 <_Z11workerBodyBv+0x34>
    80001598:	00170713          	addi	a4,a4,1
    8000159c:	ff1ff06f          	j	8000158c <_Z11workerBodyBv+0x48>
    for (uint64 i = 0; i < 16; i++) {
    800015a0:	00148493          	addi	s1,s1,1
    800015a4:	00f00793          	li	a5,15
    800015a8:	0297ec63          	bltu	a5,s1,800015e0 <_Z11workerBodyBv+0x9c>
        pprintString("B: i="); printInteger(i); pprintString("\n");
    800015ac:	00007517          	auipc	a0,0x7
    800015b0:	a9450513          	addi	a0,a0,-1388 # 80008040 <CONSOLE_STATUS+0x30>
    800015b4:	00001097          	auipc	ra,0x1
    800015b8:	234080e7          	jalr	564(ra) # 800027e8 <_Z12pprintStringPKc>
    800015bc:	00048513          	mv	a0,s1
    800015c0:	00001097          	auipc	ra,0x1
    800015c4:	26c080e7          	jalr	620(ra) # 8000282c <_Z12printIntegerm>
    800015c8:	00007517          	auipc	a0,0x7
    800015cc:	d4850513          	addi	a0,a0,-696 # 80008310 <_ZZ12printIntegermE6digits+0x230>
    800015d0:	00001097          	auipc	ra,0x1
    800015d4:	218080e7          	jalr	536(ra) # 800027e8 <_Z12pprintStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800015d8:	00000693          	li	a3,0
    800015dc:	fa1ff06f          	j	8000157c <_Z11workerBodyBv+0x38>
            // TCB::yield();
        }
    }
    pprintString("B finished!\n");
    800015e0:	00007517          	auipc	a0,0x7
    800015e4:	a6850513          	addi	a0,a0,-1432 # 80008048 <CONSOLE_STATUS+0x38>
    800015e8:	00001097          	auipc	ra,0x1
    800015ec:	200080e7          	jalr	512(ra) # 800027e8 <_Z12pprintStringPKc>
    semaphore->signal();
    800015f0:	00009517          	auipc	a0,0x9
    800015f4:	a2053503          	ld	a0,-1504(a0) # 8000a010 <semaphore>
    800015f8:	00001097          	auipc	ra,0x1
    800015fc:	914080e7          	jalr	-1772(ra) # 80001f0c <_ZN9Semaphore6signalEv>
}
    80001600:	01813083          	ld	ra,24(sp)
    80001604:	01013403          	ld	s0,16(sp)
    80001608:	00813483          	ld	s1,8(sp)
    8000160c:	02010113          	addi	sp,sp,32
    80001610:	00008067          	ret

0000000080001614 <_Z11workerBodyCv>:

void workerBodyC() {
    80001614:	fe010113          	addi	sp,sp,-32
    80001618:	00113c23          	sd	ra,24(sp)
    8000161c:	00813823          	sd	s0,16(sp)
    80001620:	00913423          	sd	s1,8(sp)
    80001624:	01213023          	sd	s2,0(sp)
    80001628:	02010413          	addi	s0,sp,32
    initSemaphore();
    8000162c:	00000097          	auipc	ra,0x0
    80001630:	db0080e7          	jalr	-592(ra) # 800013dc <_Z13initSemaphorev>
    semaphore->wait();
    80001634:	00009517          	auipc	a0,0x9
    80001638:	9dc53503          	ld	a0,-1572(a0) # 8000a010 <semaphore>
    8000163c:	00001097          	auipc	ra,0x1
    80001640:	8a4080e7          	jalr	-1884(ra) # 80001ee0 <_ZN9Semaphore4waitEv>
    uint8 i = 20;
    80001644:	01400493          	li	s1,20
    for (; i < 100; i++) { pprintString("C: i="); printInteger(i); pprintString("\n"); }
    80001648:	06300793          	li	a5,99
    8000164c:	0297ee63          	bltu	a5,s1,80001688 <_Z11workerBodyCv+0x74>
    80001650:	00007517          	auipc	a0,0x7
    80001654:	a0850513          	addi	a0,a0,-1528 # 80008058 <CONSOLE_STATUS+0x48>
    80001658:	00001097          	auipc	ra,0x1
    8000165c:	190080e7          	jalr	400(ra) # 800027e8 <_Z12pprintStringPKc>
    80001660:	00048513          	mv	a0,s1
    80001664:	00001097          	auipc	ra,0x1
    80001668:	1c8080e7          	jalr	456(ra) # 8000282c <_Z12printIntegerm>
    8000166c:	00007517          	auipc	a0,0x7
    80001670:	ca450513          	addi	a0,a0,-860 # 80008310 <_ZZ12printIntegermE6digits+0x230>
    80001674:	00001097          	auipc	ra,0x1
    80001678:	174080e7          	jalr	372(ra) # 800027e8 <_Z12pprintStringPKc>
    8000167c:	0014849b          	addiw	s1,s1,1
    80001680:	0ff4f493          	andi	s1,s1,255
    80001684:	fc5ff06f          	j	80001648 <_Z11workerBodyCv+0x34>

    pprintString("C: yield\n");
    80001688:	00007517          	auipc	a0,0x7
    8000168c:	9d850513          	addi	a0,a0,-1576 # 80008060 <CONSOLE_STATUS+0x50>
    80001690:	00001097          	auipc	ra,0x1
    80001694:	158080e7          	jalr	344(ra) # 800027e8 <_Z12pprintStringPKc>
    __asm__ ("li t1, 9");
    80001698:	00900313          	li	t1,9
    thread_dispatch();
    8000169c:	00000097          	auipc	ra,0x0
    800016a0:	be8080e7          	jalr	-1048(ra) # 80001284 <_Z15thread_dispatchv>

    uint64 result = fibonacci(35);
    800016a4:	02300513          	li	a0,35
    800016a8:	00000097          	auipc	ra,0x0
    800016ac:	cc4080e7          	jalr	-828(ra) # 8000136c <_Z9fibonaccim>
    800016b0:	00050913          	mv	s2,a0
    pprintString("C: fibonaci="); printInteger(result); pprintString("\n");
    800016b4:	00007517          	auipc	a0,0x7
    800016b8:	9bc50513          	addi	a0,a0,-1604 # 80008070 <CONSOLE_STATUS+0x60>
    800016bc:	00001097          	auipc	ra,0x1
    800016c0:	12c080e7          	jalr	300(ra) # 800027e8 <_Z12pprintStringPKc>
    800016c4:	00090513          	mv	a0,s2
    800016c8:	00001097          	auipc	ra,0x1
    800016cc:	164080e7          	jalr	356(ra) # 8000282c <_Z12printIntegerm>
    800016d0:	00007517          	auipc	a0,0x7
    800016d4:	c4050513          	addi	a0,a0,-960 # 80008310 <_ZZ12printIntegermE6digits+0x230>
    800016d8:	00001097          	auipc	ra,0x1
    800016dc:	110080e7          	jalr	272(ra) # 800027e8 <_Z12pprintStringPKc>

    for (; i < 26; i++) { pprintString("C: i="); printInteger(i); pprintString("\n"); }
    800016e0:	01900793          	li	a5,25
    800016e4:	0297fe63          	bgeu	a5,s1,80001720 <_Z11workerBodyCv+0x10c>
    pprintString("C finished!\n");
    800016e8:	00007517          	auipc	a0,0x7
    800016ec:	99850513          	addi	a0,a0,-1640 # 80008080 <CONSOLE_STATUS+0x70>
    800016f0:	00001097          	auipc	ra,0x1
    800016f4:	0f8080e7          	jalr	248(ra) # 800027e8 <_Z12pprintStringPKc>
    semaphore->signal();
    800016f8:	00009517          	auipc	a0,0x9
    800016fc:	91853503          	ld	a0,-1768(a0) # 8000a010 <semaphore>
    80001700:	00001097          	auipc	ra,0x1
    80001704:	80c080e7          	jalr	-2036(ra) # 80001f0c <_ZN9Semaphore6signalEv>
}
    80001708:	01813083          	ld	ra,24(sp)
    8000170c:	01013403          	ld	s0,16(sp)
    80001710:	00813483          	ld	s1,8(sp)
    80001714:	00013903          	ld	s2,0(sp)
    80001718:	02010113          	addi	sp,sp,32
    8000171c:	00008067          	ret
    for (; i < 26; i++) { pprintString("C: i="); printInteger(i); pprintString("\n"); }
    80001720:	00007517          	auipc	a0,0x7
    80001724:	93850513          	addi	a0,a0,-1736 # 80008058 <CONSOLE_STATUS+0x48>
    80001728:	00001097          	auipc	ra,0x1
    8000172c:	0c0080e7          	jalr	192(ra) # 800027e8 <_Z12pprintStringPKc>
    80001730:	00048513          	mv	a0,s1
    80001734:	00001097          	auipc	ra,0x1
    80001738:	0f8080e7          	jalr	248(ra) # 8000282c <_Z12printIntegerm>
    8000173c:	00007517          	auipc	a0,0x7
    80001740:	bd450513          	addi	a0,a0,-1068 # 80008310 <_ZZ12printIntegermE6digits+0x230>
    80001744:	00001097          	auipc	ra,0x1
    80001748:	0a4080e7          	jalr	164(ra) # 800027e8 <_Z12pprintStringPKc>
    8000174c:	0014849b          	addiw	s1,s1,1
    80001750:	0ff4f493          	andi	s1,s1,255
    80001754:	f8dff06f          	j	800016e0 <_Z11workerBodyCv+0xcc>

0000000080001758 <_Z41__static_initialization_and_destruction_0ii>:
    return queue.removeLast();
}

void Scheduler::put(TCB *x) {
    queue.addFirst(x);
    80001758:	ff010113          	addi	sp,sp,-16
    8000175c:	00813423          	sd	s0,8(sp)
    80001760:	01010413          	addi	s0,sp,16
    80001764:	00100793          	li	a5,1
    80001768:	00f50863          	beq	a0,a5,80001778 <_Z41__static_initialization_and_destruction_0ii+0x20>
    8000176c:	00813403          	ld	s0,8(sp)
    80001770:	01010113          	addi	sp,sp,16
    80001774:	00008067          	ret
    80001778:	000107b7          	lui	a5,0x10
    8000177c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001780:	fef596e3          	bne	a1,a5,8000176c <_Z41__static_initialization_and_destruction_0ii+0x14>
    };
    Elem * head;
    Elem *tail;

public:
    List(): head(0), tail(0){}
    80001784:	00009797          	auipc	a5,0x9
    80001788:	89478793          	addi	a5,a5,-1900 # 8000a018 <_ZN9Scheduler5queueE>
    8000178c:	0007b023          	sd	zero,0(a5)
    80001790:	0007b423          	sd	zero,8(a5)
    80001794:	0007a823          	sw	zero,16(a5)
    80001798:	fd5ff06f          	j	8000176c <_Z41__static_initialization_and_destruction_0ii+0x14>

000000008000179c <_ZN9Scheduler3getEv>:
TCB *Scheduler::get() {
    8000179c:	fe010113          	addi	sp,sp,-32
    800017a0:	00113c23          	sd	ra,24(sp)
    800017a4:	00813823          	sd	s0,16(sp)
    800017a8:	00913423          	sd	s1,8(sp)
    800017ac:	02010413          	addi	s0,sp,32
        if(!tail){tail=head;}
        size++;
    }
    T* removeLast()
    {
        size--;
    800017b0:	00009797          	auipc	a5,0x9
    800017b4:	86878793          	addi	a5,a5,-1944 # 8000a018 <_ZN9Scheduler5queueE>
    800017b8:	0107a703          	lw	a4,16(a5)
    800017bc:	fff7071b          	addiw	a4,a4,-1
    800017c0:	00e7a823          	sw	a4,16(a5)
        if(!head){return 0;}
    800017c4:	0007b483          	ld	s1,0(a5)
    800017c8:	04048663          	beqz	s1,80001814 <_ZN9Scheduler3getEv+0x78>
        Elem* prev=0;
    800017cc:	00000793          	li	a5,0
        for(Elem* curr=head; curr && curr!=tail; prev=curr, curr=curr->next);
    800017d0:	00048e63          	beqz	s1,800017ec <_ZN9Scheduler3getEv+0x50>
    800017d4:	00009717          	auipc	a4,0x9
    800017d8:	84c73703          	ld	a4,-1972(a4) # 8000a020 <_ZN9Scheduler5queueE+0x8>
    800017dc:	00e48863          	beq	s1,a4,800017ec <_ZN9Scheduler3getEv+0x50>
    800017e0:	00048793          	mv	a5,s1
    800017e4:	0084b483          	ld	s1,8(s1)
    800017e8:	fe9ff06f          	j	800017d0 <_ZN9Scheduler3getEv+0x34>
        Elem* elem=tail;
    800017ec:	00009517          	auipc	a0,0x9
    800017f0:	83453503          	ld	a0,-1996(a0) # 8000a020 <_ZN9Scheduler5queueE+0x8>
        if(prev) prev->next=0;
    800017f4:	02078c63          	beqz	a5,8000182c <_ZN9Scheduler3getEv+0x90>
    800017f8:	0007b423          	sd	zero,8(a5)
        else head=0;
        tail=prev;
    800017fc:	00009717          	auipc	a4,0x9
    80001800:	82f73223          	sd	a5,-2012(a4) # 8000a020 <_ZN9Scheduler5queueE+0x8>
        T* retval= elem->data;
    80001804:	00053483          	ld	s1,0(a0)
        delete elem;
    80001808:	00050663          	beqz	a0,80001814 <_ZN9Scheduler3getEv+0x78>
    8000180c:	00000097          	auipc	ra,0x0
    80001810:	4b8080e7          	jalr	1208(ra) # 80001cc4 <_ZdlPv>
}
    80001814:	00048513          	mv	a0,s1
    80001818:	01813083          	ld	ra,24(sp)
    8000181c:	01013403          	ld	s0,16(sp)
    80001820:	00813483          	ld	s1,8(sp)
    80001824:	02010113          	addi	sp,sp,32
    80001828:	00008067          	ret
        else head=0;
    8000182c:	00008717          	auipc	a4,0x8
    80001830:	7e073623          	sd	zero,2028(a4) # 8000a018 <_ZN9Scheduler5queueE>
    80001834:	fc9ff06f          	j	800017fc <_ZN9Scheduler3getEv+0x60>

0000000080001838 <_ZN9Scheduler3putEP3TCB>:
void Scheduler::put(TCB *x) {
    80001838:	fe010113          	addi	sp,sp,-32
    8000183c:	00113c23          	sd	ra,24(sp)
    80001840:	00813823          	sd	s0,16(sp)
    80001844:	00913423          	sd	s1,8(sp)
    80001848:	02010413          	addi	s0,sp,32
    8000184c:	00050493          	mv	s1,a0
        Elem* elem=new Elem(data, head);
    80001850:	01000513          	li	a0,16
    80001854:	00000097          	auipc	ra,0x0
    80001858:	448080e7          	jalr	1096(ra) # 80001c9c <_Znwm>
    8000185c:	00008797          	auipc	a5,0x8
    80001860:	7bc78793          	addi	a5,a5,1980 # 8000a018 <_ZN9Scheduler5queueE>
    80001864:	0007b703          	ld	a4,0(a5)
        Elem(T* data, Elem* next=nullptr): data(data), next(next){}
    80001868:	00953023          	sd	s1,0(a0)
    8000186c:	00e53423          	sd	a4,8(a0)
        head=elem;
    80001870:	00a7b023          	sd	a0,0(a5)
        if(!tail){tail=head;}
    80001874:	0087b783          	ld	a5,8(a5)
    80001878:	02078663          	beqz	a5,800018a4 <_ZN9Scheduler3putEP3TCB+0x6c>
        size++;
    8000187c:	00008717          	auipc	a4,0x8
    80001880:	79c70713          	addi	a4,a4,1948 # 8000a018 <_ZN9Scheduler5queueE>
    80001884:	01072783          	lw	a5,16(a4)
    80001888:	0017879b          	addiw	a5,a5,1
    8000188c:	00f72823          	sw	a5,16(a4)
    80001890:	01813083          	ld	ra,24(sp)
    80001894:	01013403          	ld	s0,16(sp)
    80001898:	00813483          	ld	s1,8(sp)
    8000189c:	02010113          	addi	sp,sp,32
    800018a0:	00008067          	ret
        if(!tail){tail=head;}
    800018a4:	00008797          	auipc	a5,0x8
    800018a8:	76a7be23          	sd	a0,1916(a5) # 8000a020 <_ZN9Scheduler5queueE+0x8>
    800018ac:	fd1ff06f          	j	8000187c <_ZN9Scheduler3putEP3TCB+0x44>

00000000800018b0 <_GLOBAL__sub_I__ZN9Scheduler5queueE>:
    800018b0:	ff010113          	addi	sp,sp,-16
    800018b4:	00113423          	sd	ra,8(sp)
    800018b8:	00813023          	sd	s0,0(sp)
    800018bc:	01010413          	addi	s0,sp,16
    800018c0:	000105b7          	lui	a1,0x10
    800018c4:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    800018c8:	00100513          	li	a0,1
    800018cc:	00000097          	auipc	ra,0x0
    800018d0:	e8c080e7          	jalr	-372(ra) # 80001758 <_Z41__static_initialization_and_destruction_0ii>
    800018d4:	00813083          	ld	ra,8(sp)
    800018d8:	00013403          	ld	s0,0(sp)
    800018dc:	01010113          	addi	sp,sp,16
    800018e0:	00008067          	ret

00000000800018e4 <_Z14WorkerAWrapperPv>:
    userMain();
    pprintString("user main end:\n");
}

void WorkerAWrapper(void* arg)
{
    800018e4:	ff010113          	addi	sp,sp,-16
    800018e8:	00113423          	sd	ra,8(sp)
    800018ec:	00813023          	sd	s0,0(sp)
    800018f0:	01010413          	addi	s0,sp,16
    //pprintString("worker A start:\n");
    workerBodyA();
    800018f4:	00000097          	auipc	ra,0x0
    800018f8:	b80080e7          	jalr	-1152(ra) # 80001474 <_Z11workerBodyAv>
    //pprintString("worker A end:\n");
}
    800018fc:	00813083          	ld	ra,8(sp)
    80001900:	00013403          	ld	s0,0(sp)
    80001904:	01010113          	addi	sp,sp,16
    80001908:	00008067          	ret

000000008000190c <_Z14WorkerBWrapperPv>:

void WorkerBWrapper(void* arg)
{
    8000190c:	ff010113          	addi	sp,sp,-16
    80001910:	00113423          	sd	ra,8(sp)
    80001914:	00813023          	sd	s0,0(sp)
    80001918:	01010413          	addi	s0,sp,16
    //pprintString("worker B start:\n");
    workerBodyB();
    8000191c:	00000097          	auipc	ra,0x0
    80001920:	c28080e7          	jalr	-984(ra) # 80001544 <_Z11workerBodyBv>
    //pprintString("worker B end:\n");
}
    80001924:	00813083          	ld	ra,8(sp)
    80001928:	00013403          	ld	s0,0(sp)
    8000192c:	01010113          	addi	sp,sp,16
    80001930:	00008067          	ret

0000000080001934 <_Z14WorkerCWrapperPv>:

void WorkerCWrapper(void* arg)
{
    80001934:	ff010113          	addi	sp,sp,-16
    80001938:	00113423          	sd	ra,8(sp)
    8000193c:	00813023          	sd	s0,0(sp)
    80001940:	01010413          	addi	s0,sp,16
    //pprintString("worker C start:\n");
    workerBodyC();
    80001944:	00000097          	auipc	ra,0x0
    80001948:	cd0080e7          	jalr	-816(ra) # 80001614 <_Z11workerBodyCv>
    //pprintString("worker C end:\n");
}
    8000194c:	00813083          	ld	ra,8(sp)
    80001950:	00013403          	ld	s0,0(sp)
    80001954:	01010113          	addi	sp,sp,16
    80001958:	00008067          	ret

000000008000195c <_Z13AllocatorTestv>:
void AllocatorTest() {
    8000195c:	fd010113          	addi	sp,sp,-48
    80001960:	02113423          	sd	ra,40(sp)
    80001964:	02813023          	sd	s0,32(sp)
    80001968:	00913c23          	sd	s1,24(sp)
    8000196c:	01213823          	sd	s2,16(sp)
    80001970:	01313423          	sd	s3,8(sp)
    80001974:	03010413          	addi	s0,sp,48
    uint64* a1=new uint64;
    80001978:	00800513          	li	a0,8
    8000197c:	00000097          	auipc	ra,0x0
    80001980:	320080e7          	jalr	800(ra) # 80001c9c <_Znwm>
    80001984:	00050993          	mv	s3,a0
    *a1=4;
    80001988:	00400793          	li	a5,4
    8000198c:	00f53023          	sd	a5,0(a0)
    __putc(*a1+'0');
    80001990:	03400513          	li	a0,52
    80001994:	00006097          	auipc	ra,0x6
    80001998:	f08080e7          	jalr	-248(ra) # 8000789c <__putc>
    __putc('\n');
    8000199c:	00a00513          	li	a0,10
    800019a0:	00006097          	auipc	ra,0x6
    800019a4:	efc080e7          	jalr	-260(ra) # 8000789c <__putc>
    uint64* a2=new uint64;
    800019a8:	00800513          	li	a0,8
    800019ac:	00000097          	auipc	ra,0x0
    800019b0:	2f0080e7          	jalr	752(ra) # 80001c9c <_Znwm>
    *a2=5;
    800019b4:	00500793          	li	a5,5
    800019b8:	00f53023          	sd	a5,0(a0)
    __putc(*a2+'0');
    800019bc:	03500513          	li	a0,53
    800019c0:	00006097          	auipc	ra,0x6
    800019c4:	edc080e7          	jalr	-292(ra) # 8000789c <__putc>
    __putc('\n');
    800019c8:	00a00513          	li	a0,10
    800019cc:	00006097          	auipc	ra,0x6
    800019d0:	ed0080e7          	jalr	-304(ra) # 8000789c <__putc>
    uint64* a3=new uint64;
    800019d4:	00800513          	li	a0,8
    800019d8:	00000097          	auipc	ra,0x0
    800019dc:	2c4080e7          	jalr	708(ra) # 80001c9c <_Znwm>
    800019e0:	00050913          	mv	s2,a0
    *a3=6;
    800019e4:	00600793          	li	a5,6
    800019e8:	00f53023          	sd	a5,0(a0)
    __putc(*a3+'0');
    800019ec:	03600513          	li	a0,54
    800019f0:	00006097          	auipc	ra,0x6
    800019f4:	eac080e7          	jalr	-340(ra) # 8000789c <__putc>
    __putc('\n');
    800019f8:	00a00513          	li	a0,10
    800019fc:	00006097          	auipc	ra,0x6
    80001a00:	ea0080e7          	jalr	-352(ra) # 8000789c <__putc>
    uint64* a4=new uint64;
    80001a04:	00800513          	li	a0,8
    80001a08:	00000097          	auipc	ra,0x0
    80001a0c:	294080e7          	jalr	660(ra) # 80001c9c <_Znwm>
    80001a10:	00050493          	mv	s1,a0
    *a4=7;
    80001a14:	00700793          	li	a5,7
    80001a18:	00f53023          	sd	a5,0(a0)
    __putc(*a4+'0');
    80001a1c:	03700513          	li	a0,55
    80001a20:	00006097          	auipc	ra,0x6
    80001a24:	e7c080e7          	jalr	-388(ra) # 8000789c <__putc>
    __putc('\n');
    80001a28:	00a00513          	li	a0,10
    80001a2c:	00006097          	auipc	ra,0x6
    80001a30:	e70080e7          	jalr	-400(ra) # 8000789c <__putc>
    uint64* a5=new uint64;
    80001a34:	00800513          	li	a0,8
    80001a38:	00000097          	auipc	ra,0x0
    80001a3c:	264080e7          	jalr	612(ra) # 80001c9c <_Znwm>
    *a5=8;
    80001a40:	00800793          	li	a5,8
    80001a44:	00f53023          	sd	a5,0(a0)
    __putc(*a5+'0');
    80001a48:	03800513          	li	a0,56
    80001a4c:	00006097          	auipc	ra,0x6
    80001a50:	e50080e7          	jalr	-432(ra) # 8000789c <__putc>
    __putc('\n');
    80001a54:	00a00513          	li	a0,10
    80001a58:	00006097          	auipc	ra,0x6
    80001a5c:	e44080e7          	jalr	-444(ra) # 8000789c <__putc>
    delete a1;
    80001a60:	00098863          	beqz	s3,80001a70 <_Z13AllocatorTestv+0x114>
    80001a64:	00098513          	mv	a0,s3
    80001a68:	00000097          	auipc	ra,0x0
    80001a6c:	25c080e7          	jalr	604(ra) # 80001cc4 <_ZdlPv>
    delete a3;
    80001a70:	00090863          	beqz	s2,80001a80 <_Z13AllocatorTestv+0x124>
    80001a74:	00090513          	mv	a0,s2
    80001a78:	00000097          	auipc	ra,0x0
    80001a7c:	24c080e7          	jalr	588(ra) # 80001cc4 <_ZdlPv>
    delete a4;
    80001a80:	00048863          	beqz	s1,80001a90 <_Z13AllocatorTestv+0x134>
    80001a84:	00048513          	mv	a0,s1
    80001a88:	00000097          	auipc	ra,0x0
    80001a8c:	23c080e7          	jalr	572(ra) # 80001cc4 <_ZdlPv>
    uint64* a6=new uint64;
    80001a90:	00800513          	li	a0,8
    80001a94:	00000097          	auipc	ra,0x0
    80001a98:	208080e7          	jalr	520(ra) # 80001c9c <_Znwm>
    *a6=9;
    80001a9c:	00900793          	li	a5,9
    80001aa0:	00f53023          	sd	a5,0(a0)
    __putc(*a6+'0');
    80001aa4:	03900513          	li	a0,57
    80001aa8:	00006097          	auipc	ra,0x6
    80001aac:	df4080e7          	jalr	-524(ra) # 8000789c <__putc>
    __putc('\n');
    80001ab0:	00a00513          	li	a0,10
    80001ab4:	00006097          	auipc	ra,0x6
    80001ab8:	de8080e7          	jalr	-536(ra) # 8000789c <__putc>
}
    80001abc:	02813083          	ld	ra,40(sp)
    80001ac0:	02013403          	ld	s0,32(sp)
    80001ac4:	01813483          	ld	s1,24(sp)
    80001ac8:	01013903          	ld	s2,16(sp)
    80001acc:	00813983          	ld	s3,8(sp)
    80001ad0:	03010113          	addi	sp,sp,48
    80001ad4:	00008067          	ret

0000000080001ad8 <_Z11userWrapperPv>:
{
    80001ad8:	ff010113          	addi	sp,sp,-16
    80001adc:	00113423          	sd	ra,8(sp)
    80001ae0:	00813023          	sd	s0,0(sp)
    80001ae4:	01010413          	addi	s0,sp,16
    pprintString("user main start:\n");
    80001ae8:	00006517          	auipc	a0,0x6
    80001aec:	5a850513          	addi	a0,a0,1448 # 80008090 <CONSOLE_STATUS+0x80>
    80001af0:	00001097          	auipc	ra,0x1
    80001af4:	cf8080e7          	jalr	-776(ra) # 800027e8 <_Z12pprintStringPKc>
    userMain();
    80001af8:	00003097          	auipc	ra,0x3
    80001afc:	3dc080e7          	jalr	988(ra) # 80004ed4 <_Z8userMainv>
    pprintString("user main end:\n");
    80001b00:	00006517          	auipc	a0,0x6
    80001b04:	5a850513          	addi	a0,a0,1448 # 800080a8 <CONSOLE_STATUS+0x98>
    80001b08:	00001097          	auipc	ra,0x1
    80001b0c:	ce0080e7          	jalr	-800(ra) # 800027e8 <_Z12pprintStringPKc>
}
    80001b10:	00813083          	ld	ra,8(sp)
    80001b14:	00013403          	ld	s0,0(sp)
    80001b18:	01010113          	addi	sp,sp,16
    80001b1c:	00008067          	ret

0000000080001b20 <main>:





void main() {
    80001b20:	fc010113          	addi	sp,sp,-64
    80001b24:	02113c23          	sd	ra,56(sp)
    80001b28:	02813823          	sd	s0,48(sp)
    80001b2c:	02913423          	sd	s1,40(sp)
    80001b30:	03213023          	sd	s2,32(sp)
    80001b34:	04010413          	addi	s0,sp,64
    Riscv::set_stvec((uint64)&Riscv::SupervisorTrap);
    80001b38:	00008797          	auipc	a5,0x8
    80001b3c:	4587b783          	ld	a5,1112(a5) # 80009f90 <_GLOBAL_OFFSET_TABLE_+0x10>
    static void SupervisorTrapHandler();
};


inline void Riscv::set_stvec(uint64 stvec) {
    __asm__ volatile ("csrw stvec, %[x]" :: [x] "r" (stvec));
    80001b40:	10579073          	csrw	stvec,a5
    uint64 volatile stval;
    __asm__ volatile("csrr %[stval], stval":[stval]"=r"(stval));
    return stval;
}
inline void Riscv::ms_sstatus(uint64 mask) {
    __asm__ volatile("csrs sstatus,%[mask]"::[mask]"r"(mask));
    80001b44:	00200793          	li	a5,2
    80001b48:	1007a073          	csrs	sstatus,a5




     thread_t coroutines[4];
     thread_create(&coroutines[0],nullptr,nullptr);
    80001b4c:	00000613          	li	a2,0
    80001b50:	00000593          	li	a1,0
    80001b54:	fc040513          	addi	a0,s0,-64
    80001b58:	fffff097          	auipc	ra,0xfffff
    80001b5c:	6c8080e7          	jalr	1736(ra) # 80001220 <_Z13thread_createPP3TCBPFvPvES2_>
     thread_create(&coroutines[1],WorkerAWrapper,nullptr);
    80001b60:	00000613          	li	a2,0
    80001b64:	00000597          	auipc	a1,0x0
    80001b68:	d8058593          	addi	a1,a1,-640 # 800018e4 <_Z14WorkerAWrapperPv>
    80001b6c:	fc840513          	addi	a0,s0,-56
    80001b70:	fffff097          	auipc	ra,0xfffff
    80001b74:	6b0080e7          	jalr	1712(ra) # 80001220 <_Z13thread_createPP3TCBPFvPvES2_>
     thread_create(&coroutines[2],WorkerBWrapper,nullptr);
    80001b78:	00000613          	li	a2,0
    80001b7c:	00000597          	auipc	a1,0x0
    80001b80:	d9058593          	addi	a1,a1,-624 # 8000190c <_Z14WorkerBWrapperPv>
    80001b84:	fd040513          	addi	a0,s0,-48
    80001b88:	fffff097          	auipc	ra,0xfffff
    80001b8c:	698080e7          	jalr	1688(ra) # 80001220 <_Z13thread_createPP3TCBPFvPvES2_>
     thread_create(&coroutines[3],WorkerCWrapper,nullptr);
    80001b90:	00000613          	li	a2,0
    80001b94:	00000597          	auipc	a1,0x0
    80001b98:	da058593          	addi	a1,a1,-608 # 80001934 <_Z14WorkerCWrapperPv>
    80001b9c:	fd840513          	addi	a0,s0,-40
    80001ba0:	fffff097          	auipc	ra,0xfffff
    80001ba4:	680080e7          	jalr	1664(ra) # 80001220 <_Z13thread_createPP3TCBPFvPvES2_>
public:

    static void put(TCB* x);
    static TCB* get();

    static int getSize() { return queue.size; }
    80001ba8:	00008797          	auipc	a5,0x8
    80001bac:	3f07b783          	ld	a5,1008(a5) # 80009f98 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001bb0:	0107a783          	lw	a5,16(a5)


     while (Scheduler::getSize()>0 ) {
    80001bb4:	00f05863          	blez	a5,80001bc4 <main+0xa4>
         thread_dispatch();
    80001bb8:	fffff097          	auipc	ra,0xfffff
    80001bbc:	6cc080e7          	jalr	1740(ra) # 80001284 <_Z15thread_dispatchv>
    80001bc0:	fe9ff06f          	j	80001ba8 <main+0x88>
     }

     for (auto coroutine: coroutines) { delete coroutine; }
    80001bc4:	fc040493          	addi	s1,s0,-64
    80001bc8:	0240006f          	j	80001bec <main+0xcc>

    using Body=void(*)(void*);

    ~TCB()
    {
        delete stack;
    80001bcc:	00000097          	auipc	ra,0x0
    80001bd0:	0f8080e7          	jalr	248(ra) # 80001cc4 <_ZdlPv>
        return MemoryAllocator::Instance()->mem_free(ptr);
    80001bd4:	00001097          	auipc	ra,0x1
    80001bd8:	920080e7          	jalr	-1760(ra) # 800024f4 <_ZN15MemoryAllocator8InstanceEv>
    80001bdc:	00090593          	mv	a1,s2
    80001be0:	00001097          	auipc	ra,0x1
    80001be4:	ae8080e7          	jalr	-1304(ra) # 800026c8 <_ZN15MemoryAllocator8mem_freeEPv>
    80001be8:	00848493          	addi	s1,s1,8
    80001bec:	fe040793          	addi	a5,s0,-32
    80001bf0:	00f48c63          	beq	s1,a5,80001c08 <main+0xe8>
    80001bf4:	0004b903          	ld	s2,0(s1)
    80001bf8:	fe0908e3          	beqz	s2,80001be8 <main+0xc8>
        delete stack;
    80001bfc:	00893503          	ld	a0,8(s2)
    80001c00:	fc0516e3          	bnez	a0,80001bcc <main+0xac>
    80001c04:	fd1ff06f          	j	80001bd4 <main+0xb4>

     AllocatorTest();
    80001c08:	00000097          	auipc	ra,0x0
    80001c0c:	d54080e7          	jalr	-684(ra) # 8000195c <_Z13AllocatorTestv>
     pprintString("Finished\n");
    80001c10:	00006517          	auipc	a0,0x6
    80001c14:	4a850513          	addi	a0,a0,1192 # 800080b8 <CONSOLE_STATUS+0xa8>
    80001c18:	00001097          	auipc	ra,0x1
    80001c1c:	bd0080e7          	jalr	-1072(ra) # 800027e8 <_Z12pprintStringPKc>
    // pprintString("\n");
    // size_t pom2= mem_get_largest_free_block();
    // pprintString("Largest free block: ");
    // printInteger(pom2);
    // pprintString("\n");
}
    80001c20:	03813083          	ld	ra,56(sp)
    80001c24:	03013403          	ld	s0,48(sp)
    80001c28:	02813483          	ld	s1,40(sp)
    80001c2c:	02013903          	ld	s2,32(sp)
    80001c30:	04010113          	addi	sp,sp,64
    80001c34:	00008067          	ret

0000000080001c38 <_ZN6Thread7wrapperEPv>:
        ret = thread_create(&myHandle, wrapper, (void*)this);
    }
    return ret;
}
void Thread::wrapper(void* ptr)
{
    80001c38:	ff010113          	addi	sp,sp,-16
    80001c3c:	00113423          	sd	ra,8(sp)
    80001c40:	00813023          	sd	s0,0(sp)
    80001c44:	01010413          	addi	s0,sp,16
    ((Thread*)ptr)->run();
    80001c48:	00053783          	ld	a5,0(a0)
    80001c4c:	0107b783          	ld	a5,16(a5)
    80001c50:	000780e7          	jalr	a5
}
    80001c54:	00813083          	ld	ra,8(sp)
    80001c58:	00013403          	ld	s0,0(sp)
    80001c5c:	01010113          	addi	sp,sp,16
    80001c60:	00008067          	ret

0000000080001c64 <_ZN9SemaphoreD1Ev>:
Semaphore::Semaphore(unsigned init) {

    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    80001c64:	ff010113          	addi	sp,sp,-16
    80001c68:	00113423          	sd	ra,8(sp)
    80001c6c:	00813023          	sd	s0,0(sp)
    80001c70:	01010413          	addi	s0,sp,16
    80001c74:	00008797          	auipc	a5,0x8
    80001c78:	1cc78793          	addi	a5,a5,460 # 80009e40 <_ZTV9Semaphore+0x10>
    80001c7c:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    80001c80:	00853503          	ld	a0,8(a0)
    80001c84:	fffff097          	auipc	ra,0xfffff
    80001c88:	658080e7          	jalr	1624(ra) # 800012dc <_Z9sem_closeP3SEM>
}
    80001c8c:	00813083          	ld	ra,8(sp)
    80001c90:	00013403          	ld	s0,0(sp)
    80001c94:	01010113          	addi	sp,sp,16
    80001c98:	00008067          	ret

0000000080001c9c <_Znwm>:
{
    80001c9c:	ff010113          	addi	sp,sp,-16
    80001ca0:	00113423          	sd	ra,8(sp)
    80001ca4:	00813023          	sd	s0,0(sp)
    80001ca8:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80001cac:	fffff097          	auipc	ra,0xfffff
    80001cb0:	4a8080e7          	jalr	1192(ra) # 80001154 <_Z9mem_allocm>
}
    80001cb4:	00813083          	ld	ra,8(sp)
    80001cb8:	00013403          	ld	s0,0(sp)
    80001cbc:	01010113          	addi	sp,sp,16
    80001cc0:	00008067          	ret

0000000080001cc4 <_ZdlPv>:
{
    80001cc4:	ff010113          	addi	sp,sp,-16
    80001cc8:	00113423          	sd	ra,8(sp)
    80001ccc:	00813023          	sd	s0,0(sp)
    80001cd0:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    80001cd4:	fffff097          	auipc	ra,0xfffff
    80001cd8:	4c0080e7          	jalr	1216(ra) # 80001194 <_Z8mem_freePv>
}
    80001cdc:	00813083          	ld	ra,8(sp)
    80001ce0:	00013403          	ld	s0,0(sp)
    80001ce4:	01010113          	addi	sp,sp,16
    80001ce8:	00008067          	ret

0000000080001cec <_ZN6ThreadD1Ev>:
Thread::~Thread() {
    80001cec:	fe010113          	addi	sp,sp,-32
    80001cf0:	00113c23          	sd	ra,24(sp)
    80001cf4:	00813823          	sd	s0,16(sp)
    80001cf8:	00913423          	sd	s1,8(sp)
    80001cfc:	02010413          	addi	s0,sp,32
    80001d00:	00008797          	auipc	a5,0x8
    80001d04:	11878793          	addi	a5,a5,280 # 80009e18 <_ZTV6Thread+0x10>
    80001d08:	00f53023          	sd	a5,0(a0)
    delete myHandle;
    80001d0c:	00853483          	ld	s1,8(a0)
    80001d10:	02048463          	beqz	s1,80001d38 <_ZN6ThreadD1Ev+0x4c>
    80001d14:	0084b503          	ld	a0,8(s1)
    80001d18:	00050663          	beqz	a0,80001d24 <_ZN6ThreadD1Ev+0x38>
    80001d1c:	00000097          	auipc	ra,0x0
    80001d20:	fa8080e7          	jalr	-88(ra) # 80001cc4 <_ZdlPv>
        return MemoryAllocator::Instance()->mem_free(ptr);
    80001d24:	00000097          	auipc	ra,0x0
    80001d28:	7d0080e7          	jalr	2000(ra) # 800024f4 <_ZN15MemoryAllocator8InstanceEv>
    80001d2c:	00048593          	mv	a1,s1
    80001d30:	00001097          	auipc	ra,0x1
    80001d34:	998080e7          	jalr	-1640(ra) # 800026c8 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80001d38:	01813083          	ld	ra,24(sp)
    80001d3c:	01013403          	ld	s0,16(sp)
    80001d40:	00813483          	ld	s1,8(sp)
    80001d44:	02010113          	addi	sp,sp,32
    80001d48:	00008067          	ret

0000000080001d4c <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80001d4c:	fe010113          	addi	sp,sp,-32
    80001d50:	00113c23          	sd	ra,24(sp)
    80001d54:	00813823          	sd	s0,16(sp)
    80001d58:	00913423          	sd	s1,8(sp)
    80001d5c:	02010413          	addi	s0,sp,32
    80001d60:	00050493          	mv	s1,a0
}
    80001d64:	00000097          	auipc	ra,0x0
    80001d68:	f88080e7          	jalr	-120(ra) # 80001cec <_ZN6ThreadD1Ev>
    80001d6c:	00048513          	mv	a0,s1
    80001d70:	00000097          	auipc	ra,0x0
    80001d74:	f54080e7          	jalr	-172(ra) # 80001cc4 <_ZdlPv>
    80001d78:	01813083          	ld	ra,24(sp)
    80001d7c:	01013403          	ld	s0,16(sp)
    80001d80:	00813483          	ld	s1,8(sp)
    80001d84:	02010113          	addi	sp,sp,32
    80001d88:	00008067          	ret

0000000080001d8c <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80001d8c:	fe010113          	addi	sp,sp,-32
    80001d90:	00113c23          	sd	ra,24(sp)
    80001d94:	00813823          	sd	s0,16(sp)
    80001d98:	00913423          	sd	s1,8(sp)
    80001d9c:	02010413          	addi	s0,sp,32
    80001da0:	00050493          	mv	s1,a0
}
    80001da4:	00000097          	auipc	ra,0x0
    80001da8:	ec0080e7          	jalr	-320(ra) # 80001c64 <_ZN9SemaphoreD1Ev>
    80001dac:	00048513          	mv	a0,s1
    80001db0:	00000097          	auipc	ra,0x0
    80001db4:	f14080e7          	jalr	-236(ra) # 80001cc4 <_ZdlPv>
    80001db8:	01813083          	ld	ra,24(sp)
    80001dbc:	01013403          	ld	s0,16(sp)
    80001dc0:	00813483          	ld	s1,8(sp)
    80001dc4:	02010113          	addi	sp,sp,32
    80001dc8:	00008067          	ret

0000000080001dcc <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) {
    80001dcc:	ff010113          	addi	sp,sp,-16
    80001dd0:	00813423          	sd	s0,8(sp)
    80001dd4:	01010413          	addi	s0,sp,16
    80001dd8:	00008797          	auipc	a5,0x8
    80001ddc:	04078793          	addi	a5,a5,64 # 80009e18 <_ZTV6Thread+0x10>
    80001de0:	00f53023          	sd	a5,0(a0)
    myHandle= nullptr;
    80001de4:	00053423          	sd	zero,8(a0)
    this->body=body;
    80001de8:	00b53823          	sd	a1,16(a0)
    this->arg=arg;
    80001dec:	00c53c23          	sd	a2,24(a0)
}
    80001df0:	00813403          	ld	s0,8(sp)
    80001df4:	01010113          	addi	sp,sp,16
    80001df8:	00008067          	ret

0000000080001dfc <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80001dfc:	ff010113          	addi	sp,sp,-16
    80001e00:	00113423          	sd	ra,8(sp)
    80001e04:	00813023          	sd	s0,0(sp)
    80001e08:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80001e0c:	fffff097          	auipc	ra,0xfffff
    80001e10:	478080e7          	jalr	1144(ra) # 80001284 <_Z15thread_dispatchv>
}
    80001e14:	00813083          	ld	ra,8(sp)
    80001e18:	00013403          	ld	s0,0(sp)
    80001e1c:	01010113          	addi	sp,sp,16
    80001e20:	00008067          	ret

0000000080001e24 <_ZN6ThreadC1Ev>:
Thread::Thread() {
    80001e24:	ff010113          	addi	sp,sp,-16
    80001e28:	00813423          	sd	s0,8(sp)
    80001e2c:	01010413          	addi	s0,sp,16
    80001e30:	00008797          	auipc	a5,0x8
    80001e34:	fe878793          	addi	a5,a5,-24 # 80009e18 <_ZTV6Thread+0x10>
    80001e38:	00f53023          	sd	a5,0(a0)
    myHandle=nullptr;
    80001e3c:	00053423          	sd	zero,8(a0)
    body=nullptr;
    80001e40:	00053823          	sd	zero,16(a0)
    arg=nullptr;
    80001e44:	00053c23          	sd	zero,24(a0)
}
    80001e48:	00813403          	ld	s0,8(sp)
    80001e4c:	01010113          	addi	sp,sp,16
    80001e50:	00008067          	ret

0000000080001e54 <_ZN6Thread5startEv>:
int Thread::start() {
    80001e54:	ff010113          	addi	sp,sp,-16
    80001e58:	00113423          	sd	ra,8(sp)
    80001e5c:	00813023          	sd	s0,0(sp)
    80001e60:	01010413          	addi	s0,sp,16
    if(body!=nullptr)
    80001e64:	01053583          	ld	a1,16(a0)
    80001e68:	02058263          	beqz	a1,80001e8c <_ZN6Thread5startEv+0x38>
        ret = thread_create(&myHandle, body, arg);
    80001e6c:	01853603          	ld	a2,24(a0)
    80001e70:	00850513          	addi	a0,a0,8
    80001e74:	fffff097          	auipc	ra,0xfffff
    80001e78:	3ac080e7          	jalr	940(ra) # 80001220 <_Z13thread_createPP3TCBPFvPvES2_>
}
    80001e7c:	00813083          	ld	ra,8(sp)
    80001e80:	00013403          	ld	s0,0(sp)
    80001e84:	01010113          	addi	sp,sp,16
    80001e88:	00008067          	ret
        ret = thread_create(&myHandle, wrapper, (void*)this);
    80001e8c:	00050613          	mv	a2,a0
    80001e90:	00000597          	auipc	a1,0x0
    80001e94:	da858593          	addi	a1,a1,-600 # 80001c38 <_ZN6Thread7wrapperEPv>
    80001e98:	00850513          	addi	a0,a0,8
    80001e9c:	fffff097          	auipc	ra,0xfffff
    80001ea0:	384080e7          	jalr	900(ra) # 80001220 <_Z13thread_createPP3TCBPFvPvES2_>
    80001ea4:	fd9ff06f          	j	80001e7c <_ZN6Thread5startEv+0x28>

0000000080001ea8 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned init) {
    80001ea8:	ff010113          	addi	sp,sp,-16
    80001eac:	00113423          	sd	ra,8(sp)
    80001eb0:	00813023          	sd	s0,0(sp)
    80001eb4:	01010413          	addi	s0,sp,16
    80001eb8:	00008797          	auipc	a5,0x8
    80001ebc:	f8878793          	addi	a5,a5,-120 # 80009e40 <_ZTV9Semaphore+0x10>
    80001ec0:	00f53023          	sd	a5,0(a0)
    sem_open(&myHandle, init);
    80001ec4:	00850513          	addi	a0,a0,8
    80001ec8:	fffff097          	auipc	ra,0xfffff
    80001ecc:	3e0080e7          	jalr	992(ra) # 800012a8 <_Z8sem_openPP3SEMj>
}
    80001ed0:	00813083          	ld	ra,8(sp)
    80001ed4:	00013403          	ld	s0,0(sp)
    80001ed8:	01010113          	addi	sp,sp,16
    80001edc:	00008067          	ret

0000000080001ee0 <_ZN9Semaphore4waitEv>:
int Semaphore::wait() {
    80001ee0:	ff010113          	addi	sp,sp,-16
    80001ee4:	00113423          	sd	ra,8(sp)
    80001ee8:	00813023          	sd	s0,0(sp)
    80001eec:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80001ef0:	00853503          	ld	a0,8(a0)
    80001ef4:	fffff097          	auipc	ra,0xfffff
    80001ef8:	418080e7          	jalr	1048(ra) # 8000130c <_Z8sem_waitP3SEM>
}
    80001efc:	00813083          	ld	ra,8(sp)
    80001f00:	00013403          	ld	s0,0(sp)
    80001f04:	01010113          	addi	sp,sp,16
    80001f08:	00008067          	ret

0000000080001f0c <_ZN9Semaphore6signalEv>:

int Semaphore::signal() {
    80001f0c:	ff010113          	addi	sp,sp,-16
    80001f10:	00113423          	sd	ra,8(sp)
    80001f14:	00813023          	sd	s0,0(sp)
    80001f18:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80001f1c:	00853503          	ld	a0,8(a0)
    80001f20:	fffff097          	auipc	ra,0xfffff
    80001f24:	41c080e7          	jalr	1052(ra) # 8000133c <_Z10sem_signalP3SEM>
    80001f28:	00813083          	ld	ra,8(sp)
    80001f2c:	00013403          	ld	s0,0(sp)
    80001f30:	01010113          	addi	sp,sp,16
    80001f34:	00008067          	ret

0000000080001f38 <_ZN6Thread3runEv>:
    int start ();
    static void dispatch ();
    //static int sleep (time_t);
protected:
    Thread ();
    virtual void run () {}
    80001f38:	ff010113          	addi	sp,sp,-16
    80001f3c:	00813423          	sd	s0,8(sp)
    80001f40:	01010413          	addi	s0,sp,16
    80001f44:	00813403          	ld	s0,8(sp)
    80001f48:	01010113          	addi	sp,sp,16
    80001f4c:	00008067          	ret

0000000080001f50 <_ZN3TCB12createThreadEPFvPvES0_Pm>:
extern "C" void context_switch(TCB::Context* oldContext, TCB::Context* newContext);

TCB* TCB::running=nullptr;
time_t TCB::timeCounter=0;

TCB* TCB::createThread(Body body, void *arg, uint64 *stack) {
    80001f50:	fd010113          	addi	sp,sp,-48
    80001f54:	02113423          	sd	ra,40(sp)
    80001f58:	02813023          	sd	s0,32(sp)
    80001f5c:	00913c23          	sd	s1,24(sp)
    80001f60:	01213823          	sd	s2,16(sp)
    80001f64:	01313423          	sd	s3,8(sp)
    80001f68:	01413023          	sd	s4,0(sp)
    80001f6c:	03010413          	addi	s0,sp,48
    80001f70:	00050993          	mv	s3,a0
    80001f74:	00058a13          	mv	s4,a1
    80001f78:	00060913          	mv	s2,a2
    return MemoryAllocator::Instance()->mem_alloc(size);
    80001f7c:	00000097          	auipc	ra,0x0
    80001f80:	578080e7          	jalr	1400(ra) # 800024f4 <_ZN15MemoryAllocator8InstanceEv>
    80001f84:	04000593          	li	a1,64
    80001f88:	00000097          	auipc	ra,0x0
    80001f8c:	5c8080e7          	jalr	1480(ra) # 80002550 <_ZN15MemoryAllocator9mem_allocEm>
    80001f90:	00050493          	mv	s1,a0
          arg(arg),   // now in correct order
          context({
              body != nullptr ? (uint64)&TCBWrapper : 0,
              body != nullptr ? (uint64)((char*)stackMem + DEFAULT_STACK_SIZE) : 0
          }),
          body(body)
    80001f94:	00050023          	sb	zero,0(a0)
    80001f98:	01253423          	sd	s2,8(a0)
    80001f9c:	01453823          	sd	s4,16(a0)
              body != nullptr ? (uint64)&TCBWrapper : 0,
    80001fa0:	04098663          	beqz	s3,80001fec <_ZN3TCB12createThreadEPFvPvES0_Pm+0x9c>
    80001fa4:	00000797          	auipc	a5,0x0
    80001fa8:	16c78793          	addi	a5,a5,364 # 80002110 <_ZN3TCB10TCBWrapperEv>
          body(body)
    80001fac:	02f4b423          	sd	a5,40(s1)
              body != nullptr ? (uint64)((char*)stackMem + DEFAULT_STACK_SIZE) : 0
    80001fb0:	04098263          	beqz	s3,80001ff4 <_ZN3TCB12createThreadEPFvPvES0_Pm+0xa4>
    80001fb4:	00001637          	lui	a2,0x1
    80001fb8:	00c90933          	add	s2,s2,a2
          body(body)
    80001fbc:	0324b823          	sd	s2,48(s1)
    80001fc0:	0334bc23          	sd	s3,56(s1)
    {
        this->blocked = false;
    80001fc4:	00048c23          	sb	zero,24(s1)
        this->timeSlice= DEFAULT_TIME_SLICE;
    80001fc8:	00200793          	li	a5,2
    80001fcc:	02f4b023          	sd	a5,32(s1)
        if (running == nullptr) {
    80001fd0:	00008797          	auipc	a5,0x8
    80001fd4:	0607b783          	ld	a5,96(a5) # 8000a030 <_ZN3TCB7runningE>
    80001fd8:	02078263          	beqz	a5,80001ffc <_ZN3TCB12createThreadEPFvPvES0_Pm+0xac>
            running = this;
        } else {
            Scheduler::put(this);
    80001fdc:	00048513          	mv	a0,s1
    80001fe0:	00000097          	auipc	ra,0x0
    80001fe4:	858080e7          	jalr	-1960(ra) # 80001838 <_ZN9Scheduler3putEP3TCB>
    80001fe8:	01c0006f          	j	80002004 <_ZN3TCB12createThreadEPFvPvES0_Pm+0xb4>
              body != nullptr ? (uint64)&TCBWrapper : 0,
    80001fec:	00000793          	li	a5,0
    80001ff0:	fbdff06f          	j	80001fac <_ZN3TCB12createThreadEPFvPvES0_Pm+0x5c>
              body != nullptr ? (uint64)((char*)stackMem + DEFAULT_STACK_SIZE) : 0
    80001ff4:	00000913          	li	s2,0
    80001ff8:	fc5ff06f          	j	80001fbc <_ZN3TCB12createThreadEPFvPvES0_Pm+0x6c>
            running = this;
    80001ffc:	00008797          	auipc	a5,0x8
    80002000:	0297ba23          	sd	s1,52(a5) # 8000a030 <_ZN3TCB7runningE>
    return new TCB(body, arg, stack);
}
    80002004:	00048513          	mv	a0,s1
    80002008:	02813083          	ld	ra,40(sp)
    8000200c:	02013403          	ld	s0,32(sp)
    80002010:	01813483          	ld	s1,24(sp)
    80002014:	01013903          	ld	s2,16(sp)
    80002018:	00813983          	ld	s3,8(sp)
    8000201c:	00013a03          	ld	s4,0(sp)
    80002020:	03010113          	addi	sp,sp,48
    80002024:	00008067          	ret
    80002028:	00050913          	mv	s2,a0
        return MemoryAllocator::Instance()->mem_free(ptr);
    8000202c:	00000097          	auipc	ra,0x0
    80002030:	4c8080e7          	jalr	1224(ra) # 800024f4 <_ZN15MemoryAllocator8InstanceEv>
    80002034:	00048593          	mv	a1,s1
    80002038:	00000097          	auipc	ra,0x0
    8000203c:	690080e7          	jalr	1680(ra) # 800026c8 <_ZN15MemoryAllocator8mem_freeEPv>
    80002040:	00090513          	mv	a0,s2
    80002044:	00009097          	auipc	ra,0x9
    80002048:	114080e7          	jalr	276(ra) # 8000b158 <_Unwind_Resume>

000000008000204c <_ZN3TCB8dispatchEv>:

void TCB::dispatch() {
    8000204c:	fe010113          	addi	sp,sp,-32
    80002050:	00113c23          	sd	ra,24(sp)
    80002054:	00813823          	sd	s0,16(sp)
    80002058:	00913423          	sd	s1,8(sp)
    8000205c:	02010413          	addi	s0,sp,32
    //pprintString("TCB::dispatch()\n");
    TCB *old=running;
    80002060:	00008497          	auipc	s1,0x8
    80002064:	fd04b483          	ld	s1,-48(s1) # 8000a030 <_ZN3TCB7runningE>
    bool isFinished() const { return finished;}
    80002068:	0004c783          	lbu	a5,0(s1)
    if (!old->isFinished() && !old->isBlocked()) {
    8000206c:	00079663          	bnez	a5,80002078 <_ZN3TCB8dispatchEv+0x2c>
    bool isBlocked() const { return blocked; }
    80002070:	0184c783          	lbu	a5,24(s1)
    80002074:	04078063          	beqz	a5,800020b4 <_ZN3TCB8dispatchEv+0x68>
        Scheduler::put(old);
    }
    running=Scheduler::get();
    80002078:	fffff097          	auipc	ra,0xfffff
    8000207c:	724080e7          	jalr	1828(ra) # 8000179c <_ZN9Scheduler3getEv>
    80002080:	00008797          	auipc	a5,0x8
    80002084:	fb078793          	addi	a5,a5,-80 # 8000a030 <_ZN3TCB7runningE>
    80002088:	00a7b023          	sd	a0,0(a5)


    timeCounter=0;
    8000208c:	0007b423          	sd	zero,8(a5)
    //Riscv::restorePrivilege();
    context_switch(&old->context, &running->context);
    80002090:	02850593          	addi	a1,a0,40
    80002094:	02848513          	addi	a0,s1,40
    80002098:	fffff097          	auipc	ra,0xfffff
    8000209c:	088080e7          	jalr	136(ra) # 80001120 <context_switch>
}
    800020a0:	01813083          	ld	ra,24(sp)
    800020a4:	01013403          	ld	s0,16(sp)
    800020a8:	00813483          	ld	s1,8(sp)
    800020ac:	02010113          	addi	sp,sp,32
    800020b0:	00008067          	ret
        Scheduler::put(old);
    800020b4:	00048513          	mv	a0,s1
    800020b8:	fffff097          	auipc	ra,0xfffff
    800020bc:	780080e7          	jalr	1920(ra) # 80001838 <_ZN9Scheduler3putEP3TCB>
    800020c0:	fb9ff06f          	j	80002078 <_ZN3TCB8dispatchEv+0x2c>

00000000800020c4 <_ZN3TCB4exitEv>:



int TCB::exit() {
    if (running->isFinished()) {
    800020c4:	00008797          	auipc	a5,0x8
    800020c8:	f6c7b783          	ld	a5,-148(a5) # 8000a030 <_ZN3TCB7runningE>
    bool isFinished() const { return finished;}
    800020cc:	0007c703          	lbu	a4,0(a5)
    800020d0:	02071c63          	bnez	a4,80002108 <_ZN3TCB4exitEv+0x44>
int TCB::exit() {
    800020d4:	ff010113          	addi	sp,sp,-16
    800020d8:	00113423          	sd	ra,8(sp)
    800020dc:	00813023          	sd	s0,0(sp)
    800020e0:	01010413          	addi	s0,sp,16
        return -1;
    }
    running->finished=true;
    800020e4:	00100713          	li	a4,1
    800020e8:	00e78023          	sb	a4,0(a5)
    thread_dispatch();
    800020ec:	fffff097          	auipc	ra,0xfffff
    800020f0:	198080e7          	jalr	408(ra) # 80001284 <_Z15thread_dispatchv>
    return 0;
    800020f4:	00000513          	li	a0,0
}
    800020f8:	00813083          	ld	ra,8(sp)
    800020fc:	00013403          	ld	s0,0(sp)
    80002100:	01010113          	addi	sp,sp,16
    80002104:	00008067          	ret
        return -1;
    80002108:	fff00513          	li	a0,-1
}
    8000210c:	00008067          	ret

0000000080002110 <_ZN3TCB10TCBWrapperEv>:

void TCB::TCBWrapper() {
    80002110:	ff010113          	addi	sp,sp,-16
    80002114:	00113423          	sd	ra,8(sp)
    80002118:	00813023          	sd	s0,0(sp)
    8000211c:	01010413          	addi	s0,sp,16
    //pprintString("Entered wrapper\n");
    //Riscv::restorePrivilege();
    Riscv::popSppSpie();
    80002120:	00000097          	auipc	ra,0x0
    80002124:	034080e7          	jalr	52(ra) # 80002154 <_ZN5Riscv10popSppSpieEv>
    running->body(running->arg);
    80002128:	00008797          	auipc	a5,0x8
    8000212c:	f087b783          	ld	a5,-248(a5) # 8000a030 <_ZN3TCB7runningE>
    80002130:	0387b703          	ld	a4,56(a5)
    80002134:	0107b503          	ld	a0,16(a5)
    80002138:	000700e7          	jalr	a4
    exit();
    8000213c:	00000097          	auipc	ra,0x0
    80002140:	f88080e7          	jalr	-120(ra) # 800020c4 <_ZN3TCB4exitEv>
    80002144:	00813083          	ld	ra,8(sp)
    80002148:	00013403          	ld	s0,0(sp)
    8000214c:	01010113          	addi	sp,sp,16
    80002150:	00008067          	ret

0000000080002154 <_ZN5Riscv10popSppSpieEv>:
#include "../h/syscall_c.hpp"
#include "../h/MemoryAllocator.hpp"
#include  "../h/print.hpp"
using Body=void(*)(void*);

void Riscv::popSppSpie() {
    80002154:	ff010113          	addi	sp,sp,-16
    80002158:	00813423          	sd	s0,8(sp)
    8000215c:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    80002160:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80002164:	10200073          	sret
}
    80002168:	00813403          	ld	s0,8(sp)
    8000216c:	01010113          	addi	sp,sp,16
    80002170:	00008067          	ret

0000000080002174 <_ZN5Riscv21SupervisorTrapHandlerEv>:
//     else
//         mc_sstatus(SSTATUS_SPP);
// }


void Riscv::SupervisorTrapHandler() {
    80002174:	fa010113          	addi	sp,sp,-96
    80002178:	04113c23          	sd	ra,88(sp)
    8000217c:	04813823          	sd	s0,80(sp)
    80002180:	04913423          	sd	s1,72(sp)
    80002184:	05213023          	sd	s2,64(sp)
    80002188:	03313c23          	sd	s3,56(sp)
    8000218c:	03413823          	sd	s4,48(sp)
    80002190:	03513423          	sd	s5,40(sp)
    80002194:	06010413          	addi	s0,sp,96
    __asm__ volatile("csrr %[scause], scause":[scause]"=r"(scause));
    80002198:	142027f3          	csrr	a5,scause
    8000219c:	faf43423          	sd	a5,-88(s0)
    return scause;
    800021a0:	fa843703          	ld	a4,-88(s0)
    __asm__ volatile ("csrr %[x],sepc" : [x] "=r" (sepc));
    800021a4:	141024f3          	csrr	s1,sepc
    __asm__ volatile ("csrr %[x],sstatus" : [x] "=r" (sstatus));
    800021a8:	10002973          	csrr	s2,sstatus
    uint64 sepc;
    uint64 sstatus;
    uint64 scause=get_scause();
    sepc=get_sepc();
    sstatus=get_sstatus();
    if (scause == 0x8000000000000001UL) {
    800021ac:	fff00793          	li	a5,-1
    800021b0:	03f79793          	slli	a5,a5,0x3f
    800021b4:	00178793          	addi	a5,a5,1
    800021b8:	10f70c63          	beq	a4,a5,800022d0 <_ZN5Riscv21SupervisorTrapHandlerEv+0x15c>
            set_sepc(sepc);
            set_sstatus(sstatus);
        }
        mc_sip(SIP_SSIP);
    }
    else if (scause == 0x8000000000000009UL) {
    800021bc:	fff00793          	li	a5,-1
    800021c0:	03f79793          	slli	a5,a5,0x3f
    800021c4:	00978793          	addi	a5,a5,9
    800021c8:	14f70863          	beq	a4,a5,80002318 <_ZN5Riscv21SupervisorTrapHandlerEv+0x1a4>
        // interrupt from keyboard
        console_handler();
    }
    else {
        uint64 syscode;
    __asm__ volatile ("mv %[x], a0" : [x] "=r" (syscode));
    800021cc:	00050793          	mv	a5,a0

    if (syscode==MEM_ALLOC) {
    800021d0:	00100713          	li	a4,1
    800021d4:	14e78863          	beq	a5,a4,80002324 <_ZN5Riscv21SupervisorTrapHandlerEv+0x1b0>
        size_t size_in_blocks;
        __asm__ volatile ("mv %[x], a1" : [x] "=r" (size_in_blocks));
        void* ptr = MemoryAllocator::Instance()->mem_alloc(size_in_blocks * MEM_BLOCK_SIZE);
        __asm__ volatile ("mv a0,%[x]" :: [x] "r" (ptr));
    }
    else if (syscode==MEM_FREE) {
    800021d8:	00200713          	li	a4,2
    800021dc:	18e78a63          	beq	a5,a4,80002370 <_ZN5Riscv21SupervisorTrapHandlerEv+0x1fc>
        void* ptr;
        __asm__ volatile ("mv %[x], a1" : [x] "=r" (ptr));
        MemoryAllocator::Instance()->mem_free(ptr);
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (0));
    }
    else if (syscode==MEM_GET_FREE_SPACE) {
    800021e0:	00300713          	li	a4,3
    800021e4:	1ae78863          	beq	a5,a4,80002394 <_ZN5Riscv21SupervisorTrapHandlerEv+0x220>
        size_t freeMem = MemoryAllocator::Instance()->getFreeMemSize();
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (freeMem));
    }
    else if (syscode==MEM_GET_LARGEST_FREE_BLOCK) {
    800021e8:	00400713          	li	a4,4
    800021ec:	1ae78e63          	beq	a5,a4,800023a8 <_ZN5Riscv21SupervisorTrapHandlerEv+0x234>
        size_t largestBlock = MemoryAllocator::Instance()->getLargestFreeBlock();
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (largestBlock));
    }
    else if (syscode==THREAD_CREATE) {
    800021f0:	01100713          	li	a4,17
    800021f4:	1ce78663          	beq	a5,a4,800023c0 <_ZN5Riscv21SupervisorTrapHandlerEv+0x24c>
        else {
            ret=1;
        }
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (ret));
    }
    else if (syscode==THREAD_EXIT) {
    800021f8:	01200713          	li	a4,18
    800021fc:	20e78a63          	beq	a5,a4,80002410 <_ZN5Riscv21SupervisorTrapHandlerEv+0x29c>
        int ret = TCB::exit();
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (ret));
    }
    else if (syscode==THREAD_DISPATCH) {
    80002200:	01300713          	li	a4,19
    80002204:	20e78e63          	beq	a5,a4,80002420 <_ZN5Riscv21SupervisorTrapHandlerEv+0x2ac>
        TCB::dispatch();
    }
    else if (syscode==SEM_OPEN) {
    80002208:	02100713          	li	a4,33
    8000220c:	22e78063          	beq	a5,a4,8000242c <_ZN5Riscv21SupervisorTrapHandlerEv+0x2b8>
        else {
            ret=1;
        }
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (ret));
    }
    else if (syscode==SEM_CLOSE) {
    80002210:	02200713          	li	a4,34
    80002214:	24e78463          	beq	a5,a4,8000245c <_ZN5Riscv21SupervisorTrapHandlerEv+0x2e8>
        sem_t handle;
        __asm__ volatile ("mv %[x], a1" : [x] "=r" (handle));
        int ret=handle->close();
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (ret));
    }
    else if (syscode==SEM_WAIT) {
    80002218:	02300713          	li	a4,35
    8000221c:	24e78a63          	beq	a5,a4,80002470 <_ZN5Riscv21SupervisorTrapHandlerEv+0x2fc>
        sem_t handle;
        __asm__ volatile ("mv %[x], a1" : [x] "=r" (handle));
        int ret=handle->wait();
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (ret));
    }
    else if (syscode==SEM_SIGNAL) {
    80002220:	02400713          	li	a4,36
    80002224:	26e78063          	beq	a5,a4,80002484 <_ZN5Riscv21SupervisorTrapHandlerEv+0x310>
    __asm__ volatile("csrr %[scause], scause":[scause]"=r"(scause));
    80002228:	142027f3          	csrr	a5,scause
    8000222c:	faf43c23          	sd	a5,-72(s0)
    return scause;
    80002230:	fb843a03          	ld	s4,-72(s0)
    __asm__ volatile("csrr %[stval], stval":[stval]"=r"(stval));
    80002234:	143027f3          	csrr	a5,stval
    80002238:	faf43823          	sd	a5,-80(s0)
    return stval;
    8000223c:	fb043983          	ld	s3,-80(s0)
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (ret));
    }
    else {
        uint64 scause= get_scause();
        uint64 stval= get_stval();
        pprintString("scause:");
    80002240:	00006517          	auipc	a0,0x6
    80002244:	e8850513          	addi	a0,a0,-376 # 800080c8 <CONSOLE_STATUS+0xb8>
    80002248:	00000097          	auipc	ra,0x0
    8000224c:	5a0080e7          	jalr	1440(ra) # 800027e8 <_Z12pprintStringPKc>
        printInteger(scause);
    80002250:	000a0513          	mv	a0,s4
    80002254:	00000097          	auipc	ra,0x0
    80002258:	5d8080e7          	jalr	1496(ra) # 8000282c <_Z12printIntegerm>
        pprintString("\n");
    8000225c:	00006517          	auipc	a0,0x6
    80002260:	0b450513          	addi	a0,a0,180 # 80008310 <_ZZ12printIntegermE6digits+0x230>
    80002264:	00000097          	auipc	ra,0x0
    80002268:	584080e7          	jalr	1412(ra) # 800027e8 <_Z12pprintStringPKc>

        pprintString("stval:");
    8000226c:	00006517          	auipc	a0,0x6
    80002270:	e6450513          	addi	a0,a0,-412 # 800080d0 <CONSOLE_STATUS+0xc0>
    80002274:	00000097          	auipc	ra,0x0
    80002278:	574080e7          	jalr	1396(ra) # 800027e8 <_Z12pprintStringPKc>
        printInteger(stval);
    8000227c:	00098513          	mv	a0,s3
    80002280:	00000097          	auipc	ra,0x0
    80002284:	5ac080e7          	jalr	1452(ra) # 8000282c <_Z12printIntegerm>
        pprintString("\n");
    80002288:	00006517          	auipc	a0,0x6
    8000228c:	08850513          	addi	a0,a0,136 # 80008310 <_ZZ12printIntegermE6digits+0x230>
    80002290:	00000097          	auipc	ra,0x0
    80002294:	558080e7          	jalr	1368(ra) # 800027e8 <_Z12pprintStringPKc>

        pprintString("sepc:");
    80002298:	00006517          	auipc	a0,0x6
    8000229c:	e4050513          	addi	a0,a0,-448 # 800080d8 <CONSOLE_STATUS+0xc8>
    800022a0:	00000097          	auipc	ra,0x0
    800022a4:	548080e7          	jalr	1352(ra) # 800027e8 <_Z12pprintStringPKc>
        printInteger(sepc);
    800022a8:	00048513          	mv	a0,s1
    800022ac:	00000097          	auipc	ra,0x0
    800022b0:	580080e7          	jalr	1408(ra) # 8000282c <_Z12printIntegerm>
        pprintString("\n");
    800022b4:	00006517          	auipc	a0,0x6
    800022b8:	05c50513          	addi	a0,a0,92 # 80008310 <_ZZ12printIntegermE6digits+0x230>
    800022bc:	00000097          	auipc	ra,0x0
    800022c0:	52c080e7          	jalr	1324(ra) # 800027e8 <_Z12pprintStringPKc>
        __getc();
    800022c4:	00005097          	auipc	ra,0x5
    800022c8:	614080e7          	jalr	1556(ra) # 800078d8 <__getc>
    800022cc:	0740006f          	j	80002340 <_ZN5Riscv21SupervisorTrapHandlerEv+0x1cc>
        TCB::timeCounter++;
    800022d0:	00008717          	auipc	a4,0x8
    800022d4:	cd073703          	ld	a4,-816(a4) # 80009fa0 <_GLOBAL_OFFSET_TABLE_+0x20>
    800022d8:	00073783          	ld	a5,0(a4)
    800022dc:	00178793          	addi	a5,a5,1
    800022e0:	00f73023          	sd	a5,0(a4)
        if (TCB::timeCounter >= TCB::running->getTimeSlice()) {
    800022e4:	00008717          	auipc	a4,0x8
    800022e8:	ccc73703          	ld	a4,-820(a4) # 80009fb0 <_GLOBAL_OFFSET_TABLE_+0x30>
    800022ec:	00073703          	ld	a4,0(a4)
    time_t getTimeSlice() const { return timeSlice; }
    800022f0:	02073703          	ld	a4,32(a4)
    800022f4:	00e7f863          	bgeu	a5,a4,80002304 <_ZN5Riscv21SupervisorTrapHandlerEv+0x190>
inline void Riscv::mc_sstatus(uint64 mask) {
    __asm__ volatile("csrc sstatus,%[mask]"::[mask]"r"(mask));
}
inline void Riscv::mc_sip(uint64 mask)
{
    __asm__ volatile("csrc sip, %[mask]":: [mask]"r"(mask));
    800022f8:	00200793          	li	a5,2
    800022fc:	1447b073          	csrc	sip,a5
}
    80002300:	04c0006f          	j	8000234c <_ZN5Riscv21SupervisorTrapHandlerEv+0x1d8>
            TCB::dispatch();
    80002304:	00000097          	auipc	ra,0x0
    80002308:	d48080e7          	jalr	-696(ra) # 8000204c <_ZN3TCB8dispatchEv>
    __asm__ volatile ("csrw sepc, %[x]" :: [x] "r" (sepc));
    8000230c:	14149073          	csrw	sepc,s1
    __asm__ volatile ("csrw sstatus, %[x]" :: [x] "r" (sstatus));
    80002310:	10091073          	csrw	sstatus,s2
}
    80002314:	fe5ff06f          	j	800022f8 <_ZN5Riscv21SupervisorTrapHandlerEv+0x184>
        console_handler();
    80002318:	00005097          	auipc	ra,0x5
    8000231c:	5f8080e7          	jalr	1528(ra) # 80007910 <console_handler>
    80002320:	02c0006f          	j	8000234c <_ZN5Riscv21SupervisorTrapHandlerEv+0x1d8>
        __asm__ volatile ("mv %[x], a1" : [x] "=r" (size_in_blocks));
    80002324:	00058993          	mv	s3,a1
        void* ptr = MemoryAllocator::Instance()->mem_alloc(size_in_blocks * MEM_BLOCK_SIZE);
    80002328:	00000097          	auipc	ra,0x0
    8000232c:	1cc080e7          	jalr	460(ra) # 800024f4 <_ZN15MemoryAllocator8InstanceEv>
    80002330:	00299593          	slli	a1,s3,0x2
    80002334:	00000097          	auipc	ra,0x0
    80002338:	21c080e7          	jalr	540(ra) # 80002550 <_ZN15MemoryAllocator9mem_allocEm>
        __asm__ volatile ("mv a0,%[x]" :: [x] "r" (ptr));
    8000233c:	00050513          	mv	a0,a0
    }
    set_sepc(sepc+4);
    80002340:	00448493          	addi	s1,s1,4
    __asm__ volatile ("csrw sepc, %[x]" :: [x] "r" (sepc));
    80002344:	14149073          	csrw	sepc,s1
    __asm__ volatile ("csrw sstatus, %[x]" :: [x] "r" (sstatus));
    80002348:	10091073          	csrw	sstatus,s2
    set_sstatus(sstatus);
    }


    8000234c:	05813083          	ld	ra,88(sp)
    80002350:	05013403          	ld	s0,80(sp)
    80002354:	04813483          	ld	s1,72(sp)
    80002358:	04013903          	ld	s2,64(sp)
    8000235c:	03813983          	ld	s3,56(sp)
    80002360:	03013a03          	ld	s4,48(sp)
    80002364:	02813a83          	ld	s5,40(sp)
    80002368:	06010113          	addi	sp,sp,96
    8000236c:	00008067          	ret
        __asm__ volatile ("mv %[x], a1" : [x] "=r" (ptr));
    80002370:	00058993          	mv	s3,a1
        MemoryAllocator::Instance()->mem_free(ptr);
    80002374:	00000097          	auipc	ra,0x0
    80002378:	180080e7          	jalr	384(ra) # 800024f4 <_ZN15MemoryAllocator8InstanceEv>
    8000237c:	00098593          	mv	a1,s3
    80002380:	00000097          	auipc	ra,0x0
    80002384:	348080e7          	jalr	840(ra) # 800026c8 <_ZN15MemoryAllocator8mem_freeEPv>
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (0));
    80002388:	00000793          	li	a5,0
    8000238c:	00078513          	mv	a0,a5
    80002390:	fb1ff06f          	j	80002340 <_ZN5Riscv21SupervisorTrapHandlerEv+0x1cc>
        size_t freeMem = MemoryAllocator::Instance()->getFreeMemSize();
    80002394:	00000097          	auipc	ra,0x0
    80002398:	160080e7          	jalr	352(ra) # 800024f4 <_ZN15MemoryAllocator8InstanceEv>
    void* mem_alloc(size_t size);//size in bytes

    void mem_free(void* ptr);

    size_t getFreeMemSize() {
        return this->freeMemSize;
    8000239c:	00853783          	ld	a5,8(a0)
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (freeMem));
    800023a0:	00078513          	mv	a0,a5
    800023a4:	f9dff06f          	j	80002340 <_ZN5Riscv21SupervisorTrapHandlerEv+0x1cc>
        size_t largestBlock = MemoryAllocator::Instance()->getLargestFreeBlock();
    800023a8:	00000097          	auipc	ra,0x0
    800023ac:	14c080e7          	jalr	332(ra) # 800024f4 <_ZN15MemoryAllocator8InstanceEv>
    800023b0:	00000097          	auipc	ra,0x0
    800023b4:	3fc080e7          	jalr	1020(ra) # 800027ac <_ZN15MemoryAllocator19getLargestFreeBlockEv>
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (largestBlock));
    800023b8:	00050513          	mv	a0,a0
    800023bc:	f85ff06f          	j	80002340 <_ZN5Riscv21SupervisorTrapHandlerEv+0x1cc>
        __asm__ volatile ("mv %[x], a1" : [x] "=r" (handle));
    800023c0:	00058993          	mv	s3,a1
        __asm__ volatile ("mv %[x], a2" : [x] "=r" (start_routine));
    800023c4:	00060a13          	mv	s4,a2
        __asm__ volatile ("mv %[x], a3" : [x] "=r" (arg));
    800023c8:	00068a93          	mv	s5,a3
        uint64 *sp=(uint64*)MemoryAllocator::Instance()->mem_alloc(DEFAULT_STACK_SIZE);
    800023cc:	00000097          	auipc	ra,0x0
    800023d0:	128080e7          	jalr	296(ra) # 800024f4 <_ZN15MemoryAllocator8InstanceEv>
    800023d4:	000015b7          	lui	a1,0x1
    800023d8:	00000097          	auipc	ra,0x0
    800023dc:	178080e7          	jalr	376(ra) # 80002550 <_ZN15MemoryAllocator9mem_allocEm>
    800023e0:	00050613          	mv	a2,a0
        *handle=TCB::createThread( start_routine, arg,sp);
    800023e4:	000a8593          	mv	a1,s5
    800023e8:	000a0513          	mv	a0,s4
    800023ec:	00000097          	auipc	ra,0x0
    800023f0:	b64080e7          	jalr	-1180(ra) # 80001f50 <_ZN3TCB12createThreadEPFvPvES0_Pm>
    800023f4:	00a9b023          	sd	a0,0(s3)
        if (*handle) {
    800023f8:	00050863          	beqz	a0,80002408 <_ZN5Riscv21SupervisorTrapHandlerEv+0x294>
            ret=0;
    800023fc:	00000793          	li	a5,0
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (ret));
    80002400:	00078513          	mv	a0,a5
    80002404:	f3dff06f          	j	80002340 <_ZN5Riscv21SupervisorTrapHandlerEv+0x1cc>
            ret=1;
    80002408:	00100793          	li	a5,1
    8000240c:	ff5ff06f          	j	80002400 <_ZN5Riscv21SupervisorTrapHandlerEv+0x28c>
        int ret = TCB::exit();
    80002410:	00000097          	auipc	ra,0x0
    80002414:	cb4080e7          	jalr	-844(ra) # 800020c4 <_ZN3TCB4exitEv>
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (ret));
    80002418:	00050513          	mv	a0,a0
    8000241c:	f25ff06f          	j	80002340 <_ZN5Riscv21SupervisorTrapHandlerEv+0x1cc>
        TCB::dispatch();
    80002420:	00000097          	auipc	ra,0x0
    80002424:	c2c080e7          	jalr	-980(ra) # 8000204c <_ZN3TCB8dispatchEv>
    80002428:	f19ff06f          	j	80002340 <_ZN5Riscv21SupervisorTrapHandlerEv+0x1cc>
        __asm__ volatile ("mv %[x], a1" : [x] "=r" (handle));
    8000242c:	00058993          	mv	s3,a1
        __asm__ volatile ("mv %[x], a2" : [x] "=r" (init));
    80002430:	00060513          	mv	a0,a2
        *handle=SEM::open(init);
    80002434:	0005051b          	sext.w	a0,a0
    80002438:	00000097          	auipc	ra,0x0
    8000243c:	4b0080e7          	jalr	1200(ra) # 800028e8 <_ZN3SEM4openEj>
    80002440:	00a9b023          	sd	a0,0(s3)
        if (*handle) {
    80002444:	00050863          	beqz	a0,80002454 <_ZN5Riscv21SupervisorTrapHandlerEv+0x2e0>
            ret=0;
    80002448:	00000793          	li	a5,0
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (ret));
    8000244c:	00078513          	mv	a0,a5
    80002450:	ef1ff06f          	j	80002340 <_ZN5Riscv21SupervisorTrapHandlerEv+0x1cc>
            ret=1;
    80002454:	00100793          	li	a5,1
    80002458:	ff5ff06f          	j	8000244c <_ZN5Riscv21SupervisorTrapHandlerEv+0x2d8>
        __asm__ volatile ("mv %[x], a1" : [x] "=r" (handle));
    8000245c:	00058513          	mv	a0,a1
        int ret=handle->close();
    80002460:	00000097          	auipc	ra,0x0
    80002464:	4dc080e7          	jalr	1244(ra) # 8000293c <_ZN3SEM5closeEv>
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (ret));
    80002468:	00050513          	mv	a0,a0
    8000246c:	ed5ff06f          	j	80002340 <_ZN5Riscv21SupervisorTrapHandlerEv+0x1cc>
        __asm__ volatile ("mv %[x], a1" : [x] "=r" (handle));
    80002470:	00058513          	mv	a0,a1
        int ret=handle->wait();
    80002474:	00000097          	auipc	ra,0x0
    80002478:	59c080e7          	jalr	1436(ra) # 80002a10 <_ZN3SEM4waitEv>
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (ret));
    8000247c:	00050513          	mv	a0,a0
    80002480:	ec1ff06f          	j	80002340 <_ZN5Riscv21SupervisorTrapHandlerEv+0x1cc>
        __asm__ volatile ("mv %[x], a1" : [x] "=r" (handle));
    80002484:	00058513          	mv	a0,a1
        int ret=handle->signal();
    80002488:	00000097          	auipc	ra,0x0
    8000248c:	64c080e7          	jalr	1612(ra) # 80002ad4 <_ZN3SEM6signalEv>
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (ret));
    80002490:	00050513          	mv	a0,a0
    80002494:	eadff06f          	j	80002340 <_ZN5Riscv21SupervisorTrapHandlerEv+0x1cc>

0000000080002498 <_ZN15MemoryAllocatorC1Ev>:

#include "../h/MemoryAllocator.hpp"
#include "../lib/console.h"


MemoryAllocator::MemoryAllocator() {
    80002498:	ff010113          	addi	sp,sp,-16
    8000249c:	00813423          	sd	s0,8(sp)
    800024a0:	01010413          	addi	s0,sp,16
    this->head = (MemoryHeader*)HEAP_START_ADDR;
    800024a4:	00008797          	auipc	a5,0x8
    800024a8:	ae47b783          	ld	a5,-1308(a5) # 80009f88 <_GLOBAL_OFFSET_TABLE_+0x8>
    800024ac:	0007b703          	ld	a4,0(a5)
    800024b0:	00e53023          	sd	a4,0(a0)
    // this->tail = (MemoryHeader*)HEAP_START_ADDR;
    // this->tail->next=nullptr;
    // this->tail->prev=nullptr;
    this->head->next=nullptr;
    800024b4:	00073423          	sd	zero,8(a4)
    this->head->prev=nullptr;
    800024b8:	00053783          	ld	a5,0(a0)
    800024bc:	0007b823          	sd	zero,16(a5)
    this->head->size = (size_t)((char*)HEAP_END_ADDR - (char*)HEAP_START_ADDR - sizeof(MemoryHeader));
    800024c0:	00008797          	auipc	a5,0x8
    800024c4:	af87b783          	ld	a5,-1288(a5) # 80009fb8 <_GLOBAL_OFFSET_TABLE_+0x38>
    800024c8:	0007b783          	ld	a5,0(a5)
    800024cc:	40e787b3          	sub	a5,a5,a4
    800024d0:	00053703          	ld	a4,0(a0)
    800024d4:	fe878793          	addi	a5,a5,-24
    800024d8:	00f73023          	sd	a5,0(a4)
    this->freeMemSize=this->head->size;
    800024dc:	00053783          	ld	a5,0(a0)
    800024e0:	0007b783          	ld	a5,0(a5)
    800024e4:	00f53423          	sd	a5,8(a0)
}
    800024e8:	00813403          	ld	s0,8(sp)
    800024ec:	01010113          	addi	sp,sp,16
    800024f0:	00008067          	ret

00000000800024f4 <_ZN15MemoryAllocator8InstanceEv>:




MemoryAllocator* MemoryAllocator::Instance() {
    static MemoryAllocator instance;
    800024f4:	00008797          	auipc	a5,0x8
    800024f8:	b4c7c783          	lbu	a5,-1204(a5) # 8000a040 <_ZGVZN15MemoryAllocator8InstanceEvE8instance>
    800024fc:	00078863          	beqz	a5,8000250c <_ZN15MemoryAllocator8InstanceEv+0x18>
    return &instance;
}
    80002500:	00008517          	auipc	a0,0x8
    80002504:	b4850513          	addi	a0,a0,-1208 # 8000a048 <_ZZN15MemoryAllocator8InstanceEvE8instance>
    80002508:	00008067          	ret
MemoryAllocator* MemoryAllocator::Instance() {
    8000250c:	ff010113          	addi	sp,sp,-16
    80002510:	00113423          	sd	ra,8(sp)
    80002514:	00813023          	sd	s0,0(sp)
    80002518:	01010413          	addi	s0,sp,16
    static MemoryAllocator instance;
    8000251c:	00008517          	auipc	a0,0x8
    80002520:	b2c50513          	addi	a0,a0,-1236 # 8000a048 <_ZZN15MemoryAllocator8InstanceEvE8instance>
    80002524:	00000097          	auipc	ra,0x0
    80002528:	f74080e7          	jalr	-140(ra) # 80002498 <_ZN15MemoryAllocatorC1Ev>
    8000252c:	00100793          	li	a5,1
    80002530:	00008717          	auipc	a4,0x8
    80002534:	b0f70823          	sb	a5,-1264(a4) # 8000a040 <_ZGVZN15MemoryAllocator8InstanceEvE8instance>
}
    80002538:	00008517          	auipc	a0,0x8
    8000253c:	b1050513          	addi	a0,a0,-1264 # 8000a048 <_ZZN15MemoryAllocator8InstanceEvE8instance>
    80002540:	00813083          	ld	ra,8(sp)
    80002544:	00013403          	ld	s0,0(sp)
    80002548:	01010113          	addi	sp,sp,16
    8000254c:	00008067          	ret

0000000080002550 <_ZN15MemoryAllocator9mem_allocEm>:


void* MemoryAllocator::mem_alloc(size_t size) {
    80002550:	ff010113          	addi	sp,sp,-16
    80002554:	00813423          	sd	s0,8(sp)
    80002558:	01010413          	addi	s0,sp,16
    8000255c:	00050813          	mv	a6,a0
    if (this->head==nullptr)
    80002560:	00053503          	ld	a0,0(a0)
    80002564:	0a050263          	beqz	a0,80002608 <_ZN15MemoryAllocator9mem_allocEm+0xb8>
        return nullptr;
    if (size==0) {
    80002568:	0e058863          	beqz	a1,80002658 <_ZN15MemoryAllocator9mem_allocEm+0x108>
        return nullptr;
    }
    uint64 offset = size % MEM_BLOCK_SIZE;
    8000256c:	0035f793          	andi	a5,a1,3
    if (offset!=0)
    80002570:	00078463          	beqz	a5,80002578 <_ZN15MemoryAllocator9mem_allocEm+0x28>
        offset=1;
    80002574:	00100793          	li	a5,1

    size_t actulalSize = (size  / MEM_BLOCK_SIZE+offset ) * MEM_BLOCK_SIZE;
    80002578:	0025d693          	srli	a3,a1,0x2
    8000257c:	00f686b3          	add	a3,a3,a5
    80002580:	00269693          	slli	a3,a3,0x2


    MemoryHeader* curr= this->head;
    80002584:	00050793          	mv	a5,a0
    while (curr->next!=nullptr && curr->size < actulalSize) {
    80002588:	00078713          	mv	a4,a5
    8000258c:	0087b783          	ld	a5,8(a5)
    80002590:	00078663          	beqz	a5,8000259c <_ZN15MemoryAllocator9mem_allocEm+0x4c>
    80002594:	00073603          	ld	a2,0(a4)
    80002598:	fed668e3          	bltu	a2,a3,80002588 <_ZN15MemoryAllocator9mem_allocEm+0x38>
        curr=curr->next;
    }
    if (curr->size < actulalSize) {
    8000259c:	00073603          	ld	a2,0(a4)
    800025a0:	0cd66063          	bltu	a2,a3,80002660 <_ZN15MemoryAllocator9mem_allocEm+0x110>
        return nullptr;
    }



    if (curr->size - actulalSize >= MEM_BLOCK_SIZE+sizeof(MemoryHeader)) {
    800025a4:	40d60633          	sub	a2,a2,a3
    800025a8:	01b00593          	li	a1,27
    800025ac:	06c5f863          	bgeu	a1,a2,8000261c <_ZN15MemoryAllocator9mem_allocEm+0xcc>


        MemoryHeader* new_seg=(MemoryHeader*)((char*)curr + sizeof(MemoryHeader) + actulalSize);
    800025b0:	01868793          	addi	a5,a3,24
    800025b4:	00f707b3          	add	a5,a4,a5
        new_seg->size = curr->size - actulalSize - sizeof(MemoryHeader);
    800025b8:	fe860613          	addi	a2,a2,-24 # fe8 <_entry-0x7ffff018>
    800025bc:	00c7b023          	sd	a2,0(a5)
        new_seg->next=curr->next;
    800025c0:	00873603          	ld	a2,8(a4)
    800025c4:	00c7b423          	sd	a2,8(a5)
        new_seg->prev=curr->prev;
    800025c8:	01073603          	ld	a2,16(a4)
    800025cc:	00c7b823          	sd	a2,16(a5)
        if (curr==this->head) {
    800025d0:	00083603          	ld	a2,0(a6)
    800025d4:	04e60063          	beq	a2,a4,80002614 <_ZN15MemoryAllocator9mem_allocEm+0xc4>
            this->head=new_seg;
        }
        // if (curr==this->tail) {
        //     this->tail=new_seg;
        // }
        if (curr->prev)
    800025d8:	01073603          	ld	a2,16(a4)
    800025dc:	00060463          	beqz	a2,800025e4 <_ZN15MemoryAllocator9mem_allocEm+0x94>
            curr->prev->next=new_seg;
    800025e0:	00f63423          	sd	a5,8(a2)
        if (curr->next)
    800025e4:	00873603          	ld	a2,8(a4)
    800025e8:	00060463          	beqz	a2,800025f0 <_ZN15MemoryAllocator9mem_allocEm+0xa0>
            curr->next->prev=new_seg;
    800025ec:	00f63823          	sd	a5,16(a2)
        curr->size=actulalSize;
    800025f0:	00d73023          	sd	a3,0(a4)
        this->freeMemSize-= (actulalSize + sizeof(MemoryHeader));
    800025f4:	00883783          	ld	a5,8(a6)
    800025f8:	40d786b3          	sub	a3,a5,a3
    800025fc:	fe868693          	addi	a3,a3,-24
    80002600:	00d83423          	sd	a3,8(a6)
    //__putc('m');
    //__putc('\n');



    return  (void*)((char*)curr + sizeof(MemoryHeader));
    80002604:	01870513          	addi	a0,a4,24
}
    80002608:	00813403          	ld	s0,8(sp)
    8000260c:	01010113          	addi	sp,sp,16
    80002610:	00008067          	ret
            this->head=new_seg;
    80002614:	00f83023          	sd	a5,0(a6)
    80002618:	fc1ff06f          	j	800025d8 <_ZN15MemoryAllocator9mem_allocEm+0x88>
        if (curr==this->head) {
    8000261c:	02e50a63          	beq	a0,a4,80002650 <_ZN15MemoryAllocator9mem_allocEm+0x100>
        if (curr->prev)
    80002620:	01073783          	ld	a5,16(a4)
    80002624:	00078663          	beqz	a5,80002630 <_ZN15MemoryAllocator9mem_allocEm+0xe0>
            curr->prev->next=curr->next;
    80002628:	00873603          	ld	a2,8(a4)
    8000262c:	00c7b423          	sd	a2,8(a5)
        if (curr->next)
    80002630:	00873783          	ld	a5,8(a4)
    80002634:	00078663          	beqz	a5,80002640 <_ZN15MemoryAllocator9mem_allocEm+0xf0>
            curr->next->prev=curr->prev;
    80002638:	01073603          	ld	a2,16(a4)
    8000263c:	00c7b823          	sd	a2,16(a5)
        this->freeMemSize-= actulalSize;
    80002640:	00883783          	ld	a5,8(a6)
    80002644:	40d786b3          	sub	a3,a5,a3
    80002648:	00d83423          	sd	a3,8(a6)
    8000264c:	fb9ff06f          	j	80002604 <_ZN15MemoryAllocator9mem_allocEm+0xb4>
            this->head=curr->next;
    80002650:	00f83023          	sd	a5,0(a6)
    80002654:	fcdff06f          	j	80002620 <_ZN15MemoryAllocator9mem_allocEm+0xd0>
        return nullptr;
    80002658:	00000513          	li	a0,0
    8000265c:	fadff06f          	j	80002608 <_ZN15MemoryAllocator9mem_allocEm+0xb8>
        return nullptr;
    80002660:	00000513          	li	a0,0
    80002664:	fa5ff06f          	j	80002608 <_ZN15MemoryAllocator9mem_allocEm+0xb8>

0000000080002668 <_ZN15MemoryAllocator11try_to_joinEPNS_12MemoryHeaderE>:
    try_to_join(block->prev);
    try_to_join(block);
}


void MemoryAllocator::try_to_join(MemoryHeader* block) {
    80002668:	ff010113          	addi	sp,sp,-16
    8000266c:	00813423          	sd	s0,8(sp)
    80002670:	01010413          	addi	s0,sp,16
    if (block==nullptr)
    80002674:	00058e63          	beqz	a1,80002690 <_ZN15MemoryAllocator11try_to_joinEPNS_12MemoryHeaderE+0x28>
        return;
    if (block->next!=nullptr && ((char*)block + sizeof(MemoryHeader) + block->size) == (char*)block->next) {
    80002678:	0085b783          	ld	a5,8(a1) # 1008 <_entry-0x7fffeff8>
    8000267c:	00078a63          	beqz	a5,80002690 <_ZN15MemoryAllocator11try_to_joinEPNS_12MemoryHeaderE+0x28>
    80002680:	0005b683          	ld	a3,0(a1)
    80002684:	01868713          	addi	a4,a3,24
    80002688:	00e58733          	add	a4,a1,a4
    8000268c:	00e78863          	beq	a5,a4,8000269c <_ZN15MemoryAllocator11try_to_joinEPNS_12MemoryHeaderE+0x34>
        block->next=block->next->next;
        if (block->next)
            block->next->prev=block;
        this->freeMemSize+= sizeof(MemoryHeader);
    }
}
    80002690:	00813403          	ld	s0,8(sp)
    80002694:	01010113          	addi	sp,sp,16
    80002698:	00008067          	ret
        block->size += block->next->size;
    8000269c:	0007b703          	ld	a4,0(a5)
    800026a0:	00e686b3          	add	a3,a3,a4
    800026a4:	00d5b023          	sd	a3,0(a1)
        block->next=block->next->next;
    800026a8:	0087b783          	ld	a5,8(a5)
    800026ac:	00f5b423          	sd	a5,8(a1)
        if (block->next)
    800026b0:	00078463          	beqz	a5,800026b8 <_ZN15MemoryAllocator11try_to_joinEPNS_12MemoryHeaderE+0x50>
            block->next->prev=block;
    800026b4:	00b7b823          	sd	a1,16(a5)
        this->freeMemSize+= sizeof(MemoryHeader);
    800026b8:	00853783          	ld	a5,8(a0)
    800026bc:	01878793          	addi	a5,a5,24
    800026c0:	00f53423          	sd	a5,8(a0)
    800026c4:	fcdff06f          	j	80002690 <_ZN15MemoryAllocator11try_to_joinEPNS_12MemoryHeaderE+0x28>

00000000800026c8 <_ZN15MemoryAllocator8mem_freeEPv>:
    if (ptr==nullptr) {
    800026c8:	0e058063          	beqz	a1,800027a8 <_ZN15MemoryAllocator8mem_freeEPv+0xe0>
void MemoryAllocator::mem_free(void* ptr) {
    800026cc:	fe010113          	addi	sp,sp,-32
    800026d0:	00113c23          	sd	ra,24(sp)
    800026d4:	00813823          	sd	s0,16(sp)
    800026d8:	00913423          	sd	s1,8(sp)
    800026dc:	01213023          	sd	s2,0(sp)
    800026e0:	02010413          	addi	s0,sp,32
    800026e4:	00050913          	mv	s2,a0
	MemoryHeader* block = (MemoryHeader*)((char*)ptr - sizeof(MemoryHeader));
    800026e8:	fe858493          	addi	s1,a1,-24
    if (this->head==nullptr) {
    800026ec:	00053683          	ld	a3,0(a0)
    800026f0:	06068e63          	beqz	a3,8000276c <_ZN15MemoryAllocator8mem_freeEPv+0xa4>
    MemoryHeader* curr = this->head;
    800026f4:	00068793          	mv	a5,a3
    while (curr->next!=nullptr && curr->next < block) {
    800026f8:	00078713          	mv	a4,a5
    800026fc:	0087b783          	ld	a5,8(a5)
    80002700:	00078463          	beqz	a5,80002708 <_ZN15MemoryAllocator8mem_freeEPv+0x40>
    80002704:	fe97eae3          	bltu	a5,s1,800026f8 <_ZN15MemoryAllocator8mem_freeEPv+0x30>
    if (curr==this->head and curr > block) {
    80002708:	08e68263          	beq	a3,a4,8000278c <_ZN15MemoryAllocator8mem_freeEPv+0xc4>
        block->next=curr->next;
    8000270c:	fef5b823          	sd	a5,-16(a1)
        block->prev=curr;
    80002710:	fee5bc23          	sd	a4,-8(a1)
        curr->next=block;
    80002714:	00973423          	sd	s1,8(a4)
        if (block->next) {
    80002718:	ff05b783          	ld	a5,-16(a1)
    8000271c:	00078463          	beqz	a5,80002724 <_ZN15MemoryAllocator8mem_freeEPv+0x5c>
            block->next->prev=block;
    80002720:	0097b823          	sd	s1,16(a5)
    this->freeMemSize+= block->size;
    80002724:	fe85b703          	ld	a4,-24(a1)
    80002728:	00893783          	ld	a5,8(s2)
    8000272c:	00e787b3          	add	a5,a5,a4
    80002730:	00f93423          	sd	a5,8(s2)
    try_to_join(block->prev);
    80002734:	ff85b583          	ld	a1,-8(a1)
    80002738:	00090513          	mv	a0,s2
    8000273c:	00000097          	auipc	ra,0x0
    80002740:	f2c080e7          	jalr	-212(ra) # 80002668 <_ZN15MemoryAllocator11try_to_joinEPNS_12MemoryHeaderE>
    try_to_join(block);
    80002744:	00048593          	mv	a1,s1
    80002748:	00090513          	mv	a0,s2
    8000274c:	00000097          	auipc	ra,0x0
    80002750:	f1c080e7          	jalr	-228(ra) # 80002668 <_ZN15MemoryAllocator11try_to_joinEPNS_12MemoryHeaderE>
}
    80002754:	01813083          	ld	ra,24(sp)
    80002758:	01013403          	ld	s0,16(sp)
    8000275c:	00813483          	ld	s1,8(sp)
    80002760:	00013903          	ld	s2,0(sp)
    80002764:	02010113          	addi	sp,sp,32
    80002768:	00008067          	ret
        this->head=block;
    8000276c:	00953023          	sd	s1,0(a0)
        block->next=nullptr;
    80002770:	fe05b823          	sd	zero,-16(a1)
        block->prev=nullptr;
    80002774:	fe05bc23          	sd	zero,-8(a1)
        this->freeMemSize+= block->size;
    80002778:	fe85b703          	ld	a4,-24(a1)
    8000277c:	00853783          	ld	a5,8(a0)
    80002780:	00e787b3          	add	a5,a5,a4
    80002784:	00f53423          	sd	a5,8(a0)
        return;
    80002788:	fcdff06f          	j	80002754 <_ZN15MemoryAllocator8mem_freeEPv+0x8c>
    if (curr==this->head and curr > block) {
    8000278c:	f8e4f0e3          	bgeu	s1,a4,8000270c <_ZN15MemoryAllocator8mem_freeEPv+0x44>
        block->next=curr;
    80002790:	fee5b823          	sd	a4,-16(a1)
        block->prev=curr->prev;
    80002794:	01073783          	ld	a5,16(a4)
    80002798:	fef5bc23          	sd	a5,-8(a1)
        curr->prev=block;
    8000279c:	00973823          	sd	s1,16(a4)
        this->head=block;
    800027a0:	00993023          	sd	s1,0(s2)
    800027a4:	f81ff06f          	j	80002724 <_ZN15MemoryAllocator8mem_freeEPv+0x5c>
    800027a8:	00008067          	ret

00000000800027ac <_ZN15MemoryAllocator19getLargestFreeBlockEv>:

size_t MemoryAllocator::getLargestFreeBlock() {
    800027ac:	ff010113          	addi	sp,sp,-16
    800027b0:	00813423          	sd	s0,8(sp)
    800027b4:	01010413          	addi	s0,sp,16
    size_t maxSize=0;
    MemoryHeader* curr=this->head;
    800027b8:	00053783          	ld	a5,0(a0)
    size_t maxSize=0;
    800027bc:	00000513          	li	a0,0
    800027c0:	0080006f          	j	800027c8 <_ZN15MemoryAllocator19getLargestFreeBlockEv+0x1c>
    while (curr!=nullptr) {
        if (curr->size > maxSize)
            maxSize=curr->size;
        curr=curr->next;
    800027c4:	0087b783          	ld	a5,8(a5)
    while (curr!=nullptr) {
    800027c8:	00078a63          	beqz	a5,800027dc <_ZN15MemoryAllocator19getLargestFreeBlockEv+0x30>
        if (curr->size > maxSize)
    800027cc:	0007b703          	ld	a4,0(a5)
    800027d0:	fee57ae3          	bgeu	a0,a4,800027c4 <_ZN15MemoryAllocator19getLargestFreeBlockEv+0x18>
            maxSize=curr->size;
    800027d4:	00070513          	mv	a0,a4
    800027d8:	fedff06f          	j	800027c4 <_ZN15MemoryAllocator19getLargestFreeBlockEv+0x18>
    }
    return maxSize;
    800027dc:	00813403          	ld	s0,8(sp)
    800027e0:	01010113          	addi	sp,sp,16
    800027e4:	00008067          	ret

00000000800027e8 <_Z12pprintStringPKc>:
#include "../h/Riscv.hpp"
#include "../lib/console.h"
#include "../h/Riscv.hpp"


void pprintString(const char *string) {
    800027e8:	fe010113          	addi	sp,sp,-32
    800027ec:	00113c23          	sd	ra,24(sp)
    800027f0:	00813823          	sd	s0,16(sp)
    800027f4:	00913423          	sd	s1,8(sp)
    800027f8:	02010413          	addi	s0,sp,32
    800027fc:	00050493          	mv	s1,a0

    while (*string!='\0') {
    80002800:	0004c503          	lbu	a0,0(s1)
    80002804:	00050a63          	beqz	a0,80002818 <_Z12pprintStringPKc+0x30>
        __putc(*string);
    80002808:	00005097          	auipc	ra,0x5
    8000280c:	094080e7          	jalr	148(ra) # 8000789c <__putc>
        string++;
    80002810:	00148493          	addi	s1,s1,1
    while (*string!='\0') {
    80002814:	fedff06f          	j	80002800 <_Z12pprintStringPKc+0x18>
    }

}
    80002818:	01813083          	ld	ra,24(sp)
    8000281c:	01013403          	ld	s0,16(sp)
    80002820:	00813483          	ld	s1,8(sp)
    80002824:	02010113          	addi	sp,sp,32
    80002828:	00008067          	ret

000000008000282c <_Z12printIntegerm>:
void printInteger(uint64 integer) {
    8000282c:	fd010113          	addi	sp,sp,-48
    80002830:	02113423          	sd	ra,40(sp)
    80002834:	02813023          	sd	s0,32(sp)
    80002838:	00913c23          	sd	s1,24(sp)
    8000283c:	03010413          	addi	s0,sp,48
    neg=0;
    if (integer<0) {
        neg=1;
        x=-integer;
    } else {
        x=integer;
    80002840:	0005051b          	sext.w	a0,a0
    }

    i=0;
    80002844:	00000493          	li	s1,0
    do {
        buf[i++]=digits[x%10];
    80002848:	00a00613          	li	a2,10
    8000284c:	02c5773b          	remuw	a4,a0,a2
    80002850:	02071693          	slli	a3,a4,0x20
    80002854:	0206d693          	srli	a3,a3,0x20
    80002858:	00006717          	auipc	a4,0x6
    8000285c:	88870713          	addi	a4,a4,-1912 # 800080e0 <_ZZ12printIntegermE6digits>
    80002860:	00d70733          	add	a4,a4,a3
    80002864:	00074703          	lbu	a4,0(a4)
    80002868:	fe040693          	addi	a3,s0,-32
    8000286c:	009687b3          	add	a5,a3,s1
    80002870:	0014849b          	addiw	s1,s1,1
    80002874:	fee78823          	sb	a4,-16(a5)
    }while ((x/=10)!=0);
    80002878:	0005071b          	sext.w	a4,a0
    8000287c:	02c5553b          	divuw	a0,a0,a2
    80002880:	00900793          	li	a5,9
    80002884:	fce7e2e3          	bltu	a5,a4,80002848 <_Z12printIntegerm+0x1c>
    if (neg) {
        buf[i++]='-';
    }

    while (--i>=0) {
    80002888:	fff4849b          	addiw	s1,s1,-1
    8000288c:	0004ce63          	bltz	s1,800028a8 <_Z12printIntegerm+0x7c>
        __putc(buf[i]);
    80002890:	fe040793          	addi	a5,s0,-32
    80002894:	009787b3          	add	a5,a5,s1
    80002898:	ff07c503          	lbu	a0,-16(a5)
    8000289c:	00005097          	auipc	ra,0x5
    800028a0:	000080e7          	jalr	ra # 8000789c <__putc>
    800028a4:	fe5ff06f          	j	80002888 <_Z12printIntegerm+0x5c>
    }

    800028a8:	02813083          	ld	ra,40(sp)
    800028ac:	02013403          	ld	s0,32(sp)
    800028b0:	01813483          	ld	s1,24(sp)
    800028b4:	03010113          	addi	sp,sp,48
    800028b8:	00008067          	ret

00000000800028bc <_ZN3SEMC1Ej>:
#include "../h/SEM.hpp"
#include "../h/syscall_cpp.hpp"
#include "../h/syscall_c.hpp"
#include "../h/print.hpp"

SEM::SEM(unsigned init) {
    800028bc:	ff010113          	addi	sp,sp,-16
    800028c0:	00813423          	sd	s0,8(sp)
    800028c4:	01010413          	addi	s0,sp,16
    List(): head(0), tail(0){}
    800028c8:	00053423          	sd	zero,8(a0)
    800028cc:	00053823          	sd	zero,16(a0)
    800028d0:	00052c23          	sw	zero,24(a0)
    this->val=init;
    800028d4:	00b52023          	sw	a1,0(a0)
    this->closed=false;
    800028d8:	00050223          	sb	zero,4(a0)

}
    800028dc:	00813403          	ld	s0,8(sp)
    800028e0:	01010113          	addi	sp,sp,16
    800028e4:	00008067          	ret

00000000800028e8 <_ZN3SEM4openEj>:

SEM* SEM::open(unsigned init) {
    800028e8:	fe010113          	addi	sp,sp,-32
    800028ec:	00113c23          	sd	ra,24(sp)
    800028f0:	00813823          	sd	s0,16(sp)
    800028f4:	00913423          	sd	s1,8(sp)
    800028f8:	01213023          	sd	s2,0(sp)
    800028fc:	02010413          	addi	s0,sp,32
    80002900:	00050913          	mv	s2,a0
    //pprintString("Sem::open\n ");
    return new SEM(init);
    80002904:	02000513          	li	a0,32
    80002908:	fffff097          	auipc	ra,0xfffff
    8000290c:	394080e7          	jalr	916(ra) # 80001c9c <_Znwm>
    80002910:	00050493          	mv	s1,a0
    80002914:	00090593          	mv	a1,s2
    80002918:	00000097          	auipc	ra,0x0
    8000291c:	fa4080e7          	jalr	-92(ra) # 800028bc <_ZN3SEMC1Ej>
}
    80002920:	00048513          	mv	a0,s1
    80002924:	01813083          	ld	ra,24(sp)
    80002928:	01013403          	ld	s0,16(sp)
    8000292c:	00813483          	ld	s1,8(sp)
    80002930:	00013903          	ld	s2,0(sp)
    80002934:	02010113          	addi	sp,sp,32
    80002938:	00008067          	ret

000000008000293c <_ZN3SEM5closeEv>:

int SEM::close() {
    //pprintString("Sem::close\n");
    if (this->closed) {
    8000293c:	00454783          	lbu	a5,4(a0)
    80002940:	0a079263          	bnez	a5,800029e4 <_ZN3SEM5closeEv+0xa8>
int SEM::close() {
    80002944:	fe010113          	addi	sp,sp,-32
    80002948:	00113c23          	sd	ra,24(sp)
    8000294c:	00813823          	sd	s0,16(sp)
    80002950:	00913423          	sd	s1,8(sp)
    80002954:	01213023          	sd	s2,0(sp)
    80002958:	02010413          	addi	s0,sp,32
    8000295c:	00050913          	mv	s2,a0
        return -1;
    }
    this->closed=true;
    80002960:	00100793          	li	a5,1
    80002964:	00f50223          	sb	a5,4(a0)
    80002968:	0380006f          	j	800029a0 <_ZN3SEM5closeEv+0x64>
        Elem* elem=tail;
    8000296c:	0087b503          	ld	a0,8(a5)
        if(prev) prev->next=0;
    80002970:	06070663          	beqz	a4,800029dc <_ZN3SEM5closeEv+0xa0>
    80002974:	00073423          	sd	zero,8(a4)
        tail=prev;
    80002978:	00e7b423          	sd	a4,8(a5)
        T* retval= elem->data;
    8000297c:	00053483          	ld	s1,0(a0)
        delete elem;
    80002980:	00050663          	beqz	a0,8000298c <_ZN3SEM5closeEv+0x50>
    80002984:	fffff097          	auipc	ra,0xfffff
    80002988:	340080e7          	jalr	832(ra) # 80001cc4 <_ZdlPv>

    while (blockedQueue.size> 0) {
        TCB* tcb = blockedQueue.removeLast();
        if (tcb == nullptr) {
    8000298c:	06048e63          	beqz	s1,80002a08 <_ZN3SEM5closeEv+0xcc>
    void unblock() { this->blocked = false; }
    80002990:	00048c23          	sb	zero,24(s1)
            return -1;
        }
        tcb->unblock();
        Scheduler::put(tcb);
    80002994:	00048513          	mv	a0,s1
    80002998:	fffff097          	auipc	ra,0xfffff
    8000299c:	ea0080e7          	jalr	-352(ra) # 80001838 <_ZN9Scheduler3putEP3TCB>
    while (blockedQueue.size> 0) {
    800029a0:	01892783          	lw	a5,24(s2)
    800029a4:	04f05463          	blez	a5,800029ec <_ZN3SEM5closeEv+0xb0>
        TCB* tcb = blockedQueue.removeLast();
    800029a8:	00890793          	addi	a5,s2,8
        size--;
    800029ac:	0107a703          	lw	a4,16(a5)
    800029b0:	fff7071b          	addiw	a4,a4,-1
    800029b4:	00e7a823          	sw	a4,16(a5)
        if(!head){return 0;}
    800029b8:	00893483          	ld	s1,8(s2)
    800029bc:	fc0488e3          	beqz	s1,8000298c <_ZN3SEM5closeEv+0x50>
        Elem* prev=0;
    800029c0:	00000713          	li	a4,0
        for(Elem* curr=head; curr && curr!=tail; prev=curr, curr=curr->next);
    800029c4:	fa0484e3          	beqz	s1,8000296c <_ZN3SEM5closeEv+0x30>
    800029c8:	0087b683          	ld	a3,8(a5)
    800029cc:	fad480e3          	beq	s1,a3,8000296c <_ZN3SEM5closeEv+0x30>
    800029d0:	00048713          	mv	a4,s1
    800029d4:	0084b483          	ld	s1,8(s1)
    800029d8:	fedff06f          	j	800029c4 <_ZN3SEM5closeEv+0x88>
        else head=0;
    800029dc:	00093423          	sd	zero,8(s2)
    800029e0:	f99ff06f          	j	80002978 <_ZN3SEM5closeEv+0x3c>
        return -1;
    800029e4:	fff00513          	li	a0,-1
    }
    return 0;
}
    800029e8:	00008067          	ret
    return 0;
    800029ec:	00000513          	li	a0,0
}
    800029f0:	01813083          	ld	ra,24(sp)
    800029f4:	01013403          	ld	s0,16(sp)
    800029f8:	00813483          	ld	s1,8(sp)
    800029fc:	00013903          	ld	s2,0(sp)
    80002a00:	02010113          	addi	sp,sp,32
    80002a04:	00008067          	ret
            return -1;
    80002a08:	fff00513          	li	a0,-1
    80002a0c:	fe5ff06f          	j	800029f0 <_ZN3SEM5closeEv+0xb4>

0000000080002a10 <_ZN3SEM4waitEv>:

int SEM::wait() {
    //pprintString("Sem::wait\n");
    if (this->closed) {
    80002a10:	00454783          	lbu	a5,4(a0)
    80002a14:	0a079c63          	bnez	a5,80002acc <_ZN3SEM4waitEv+0xbc>
int SEM::wait() {
    80002a18:	fd010113          	addi	sp,sp,-48
    80002a1c:	02113423          	sd	ra,40(sp)
    80002a20:	02813023          	sd	s0,32(sp)
    80002a24:	00913c23          	sd	s1,24(sp)
    80002a28:	01213823          	sd	s2,16(sp)
    80002a2c:	01313423          	sd	s3,8(sp)
    80002a30:	03010413          	addi	s0,sp,48
    80002a34:	00050493          	mv	s1,a0
        return -1;
    }
    val--;
    80002a38:	00052783          	lw	a5,0(a0)
    80002a3c:	fff7879b          	addiw	a5,a5,-1
    80002a40:	00f52023          	sw	a5,0(a0)
    if (val<0) {
    80002a44:	02079713          	slli	a4,a5,0x20
    80002a48:	02074263          	bltz	a4,80002a6c <_ZN3SEM4waitEv+0x5c>
        TCB::running->block();
        blockedQueue.addFirst(TCB::running);
        //thread_dispatch();
        TCB::dispatch();
    }
    return 0;
    80002a4c:	00000513          	li	a0,0
}
    80002a50:	02813083          	ld	ra,40(sp)
    80002a54:	02013403          	ld	s0,32(sp)
    80002a58:	01813483          	ld	s1,24(sp)
    80002a5c:	01013903          	ld	s2,16(sp)
    80002a60:	00813983          	ld	s3,8(sp)
    80002a64:	03010113          	addi	sp,sp,48
    80002a68:	00008067          	ret
        TCB::running->block();
    80002a6c:	00007797          	auipc	a5,0x7
    80002a70:	5447b783          	ld	a5,1348(a5) # 80009fb0 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002a74:	0007b983          	ld	s3,0(a5)
    void block() { this->blocked = true; }
    80002a78:	00100793          	li	a5,1
    80002a7c:	00f98c23          	sb	a5,24(s3)
        blockedQueue.addFirst(TCB::running);
    80002a80:	00850913          	addi	s2,a0,8
        Elem* elem=new Elem(data, head);
    80002a84:	01000513          	li	a0,16
    80002a88:	fffff097          	auipc	ra,0xfffff
    80002a8c:	214080e7          	jalr	532(ra) # 80001c9c <_Znwm>
    80002a90:	0084b783          	ld	a5,8(s1)
        Elem(T* data, Elem* next=nullptr): data(data), next(next){}
    80002a94:	01353023          	sd	s3,0(a0)
    80002a98:	00f53423          	sd	a5,8(a0)
        head=elem;
    80002a9c:	00a4b423          	sd	a0,8(s1)
        if(!tail){tail=head;}
    80002aa0:	00893783          	ld	a5,8(s2)
    80002aa4:	02078063          	beqz	a5,80002ac4 <_ZN3SEM4waitEv+0xb4>
        size++;
    80002aa8:	01092783          	lw	a5,16(s2)
    80002aac:	0017879b          	addiw	a5,a5,1
    80002ab0:	00f92823          	sw	a5,16(s2)
        TCB::dispatch();
    80002ab4:	fffff097          	auipc	ra,0xfffff
    80002ab8:	598080e7          	jalr	1432(ra) # 8000204c <_ZN3TCB8dispatchEv>
    return 0;
    80002abc:	00000513          	li	a0,0
    80002ac0:	f91ff06f          	j	80002a50 <_ZN3SEM4waitEv+0x40>
        if(!tail){tail=head;}
    80002ac4:	00a93423          	sd	a0,8(s2)
    80002ac8:	fe1ff06f          	j	80002aa8 <_ZN3SEM4waitEv+0x98>
        return -1;
    80002acc:	fff00513          	li	a0,-1
}
    80002ad0:	00008067          	ret

0000000080002ad4 <_ZN3SEM6signalEv>:

int SEM::signal() {
    //pprintString("Sem::signal\n");
    if (this->closed) {
    80002ad4:	00454783          	lbu	a5,4(a0)
    80002ad8:	0c079063          	bnez	a5,80002b98 <_ZN3SEM6signalEv+0xc4>
        return -1;
    }
    val++;
    80002adc:	00052783          	lw	a5,0(a0)
    80002ae0:	0017879b          	addiw	a5,a5,1
    80002ae4:	0007871b          	sext.w	a4,a5
    80002ae8:	00f52023          	sw	a5,0(a0)
    if (val<=0) {
    80002aec:	00e05663          	blez	a4,80002af8 <_ZN3SEM6signalEv+0x24>
                return -1;
        }
        unblockTcb->unblock();
        Scheduler::put(unblockTcb);
    }
    return 0;
    80002af0:	00000513          	li	a0,0
}
    80002af4:	00008067          	ret
int SEM::signal() {
    80002af8:	fe010113          	addi	sp,sp,-32
    80002afc:	00113c23          	sd	ra,24(sp)
    80002b00:	00813823          	sd	s0,16(sp)
    80002b04:	00913423          	sd	s1,8(sp)
    80002b08:	02010413          	addi	s0,sp,32
        TCB *unblockTcb = blockedQueue.removeLast();
    80002b0c:	00850793          	addi	a5,a0,8
        size--;
    80002b10:	0107a703          	lw	a4,16(a5)
    80002b14:	fff7071b          	addiw	a4,a4,-1
    80002b18:	00e7a823          	sw	a4,16(a5)
        if(!head){return 0;}
    80002b1c:	00853483          	ld	s1,8(a0)
    80002b20:	04048263          	beqz	s1,80002b64 <_ZN3SEM6signalEv+0x90>
        Elem* prev=0;
    80002b24:	00000693          	li	a3,0
        for(Elem* curr=head; curr && curr!=tail; prev=curr, curr=curr->next);
    80002b28:	00048c63          	beqz	s1,80002b40 <_ZN3SEM6signalEv+0x6c>
    80002b2c:	0087b703          	ld	a4,8(a5)
    80002b30:	00e48863          	beq	s1,a4,80002b40 <_ZN3SEM6signalEv+0x6c>
    80002b34:	00048693          	mv	a3,s1
    80002b38:	0084b483          	ld	s1,8(s1)
    80002b3c:	fedff06f          	j	80002b28 <_ZN3SEM6signalEv+0x54>
        Elem* elem=tail;
    80002b40:	0087b703          	ld	a4,8(a5)
        if(prev) prev->next=0;
    80002b44:	04068663          	beqz	a3,80002b90 <_ZN3SEM6signalEv+0xbc>
    80002b48:	0006b423          	sd	zero,8(a3)
        tail=prev;
    80002b4c:	00d7b423          	sd	a3,8(a5)
        T* retval= elem->data;
    80002b50:	00073483          	ld	s1,0(a4)
        delete elem;
    80002b54:	00070863          	beqz	a4,80002b64 <_ZN3SEM6signalEv+0x90>
    80002b58:	00070513          	mv	a0,a4
    80002b5c:	fffff097          	auipc	ra,0xfffff
    80002b60:	168080e7          	jalr	360(ra) # 80001cc4 <_ZdlPv>
        if (unblockTcb == nullptr) {
    80002b64:	02048e63          	beqz	s1,80002ba0 <_ZN3SEM6signalEv+0xcc>
    void unblock() { this->blocked = false; }
    80002b68:	00048c23          	sb	zero,24(s1)
        Scheduler::put(unblockTcb);
    80002b6c:	00048513          	mv	a0,s1
    80002b70:	fffff097          	auipc	ra,0xfffff
    80002b74:	cc8080e7          	jalr	-824(ra) # 80001838 <_ZN9Scheduler3putEP3TCB>
    return 0;
    80002b78:	00000513          	li	a0,0
}
    80002b7c:	01813083          	ld	ra,24(sp)
    80002b80:	01013403          	ld	s0,16(sp)
    80002b84:	00813483          	ld	s1,8(sp)
    80002b88:	02010113          	addi	sp,sp,32
    80002b8c:	00008067          	ret
        else head=0;
    80002b90:	00053423          	sd	zero,8(a0)
    80002b94:	fb9ff06f          	j	80002b4c <_ZN3SEM6signalEv+0x78>
        return -1;
    80002b98:	fff00513          	li	a0,-1
    80002b9c:	00008067          	ret
                return -1;
    80002ba0:	fff00513          	li	a0,-1
    80002ba4:	fd9ff06f          	j	80002b7c <_ZN3SEM6signalEv+0xa8>

0000000080002ba8 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    80002ba8:	fe010113          	addi	sp,sp,-32
    80002bac:	00113c23          	sd	ra,24(sp)
    80002bb0:	00813823          	sd	s0,16(sp)
    80002bb4:	00913423          	sd	s1,8(sp)
    80002bb8:	01213023          	sd	s2,0(sp)
    80002bbc:	02010413          	addi	s0,sp,32
    80002bc0:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80002bc4:	00000913          	li	s2,0
    80002bc8:	00c0006f          	j	80002bd4 <_ZL16producerKeyboardPv+0x2c>
    while ((key = __getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80002bcc:	ffffe097          	auipc	ra,0xffffe
    80002bd0:	6b8080e7          	jalr	1720(ra) # 80001284 <_Z15thread_dispatchv>
    while ((key = __getc()) != 0x1b) {
    80002bd4:	00005097          	auipc	ra,0x5
    80002bd8:	d04080e7          	jalr	-764(ra) # 800078d8 <__getc>
    80002bdc:	0005059b          	sext.w	a1,a0
    80002be0:	01b00793          	li	a5,27
    80002be4:	02f58a63          	beq	a1,a5,80002c18 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80002be8:	0084b503          	ld	a0,8(s1)
    80002bec:	00003097          	auipc	ra,0x3
    80002bf0:	96c080e7          	jalr	-1684(ra) # 80005558 <_ZN6Buffer3putEi>
        i++;
    80002bf4:	0019071b          	addiw	a4,s2,1
    80002bf8:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80002bfc:	0004a683          	lw	a3,0(s1)
    80002c00:	0026979b          	slliw	a5,a3,0x2
    80002c04:	00d787bb          	addw	a5,a5,a3
    80002c08:	0017979b          	slliw	a5,a5,0x1
    80002c0c:	02f767bb          	remw	a5,a4,a5
    80002c10:	fc0792e3          	bnez	a5,80002bd4 <_ZL16producerKeyboardPv+0x2c>
    80002c14:	fb9ff06f          	j	80002bcc <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80002c18:	00100793          	li	a5,1
    80002c1c:	00007717          	auipc	a4,0x7
    80002c20:	42f72e23          	sw	a5,1084(a4) # 8000a058 <_ZL9threadEnd>
    data->buffer->put('!');
    80002c24:	02100593          	li	a1,33
    80002c28:	0084b503          	ld	a0,8(s1)
    80002c2c:	00003097          	auipc	ra,0x3
    80002c30:	92c080e7          	jalr	-1748(ra) # 80005558 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80002c34:	0104b503          	ld	a0,16(s1)
    80002c38:	ffffe097          	auipc	ra,0xffffe
    80002c3c:	704080e7          	jalr	1796(ra) # 8000133c <_Z10sem_signalP3SEM>
}
    80002c40:	01813083          	ld	ra,24(sp)
    80002c44:	01013403          	ld	s0,16(sp)
    80002c48:	00813483          	ld	s1,8(sp)
    80002c4c:	00013903          	ld	s2,0(sp)
    80002c50:	02010113          	addi	sp,sp,32
    80002c54:	00008067          	ret

0000000080002c58 <_ZL8producerPv>:

static void producer(void *arg) {
    80002c58:	fe010113          	addi	sp,sp,-32
    80002c5c:	00113c23          	sd	ra,24(sp)
    80002c60:	00813823          	sd	s0,16(sp)
    80002c64:	00913423          	sd	s1,8(sp)
    80002c68:	01213023          	sd	s2,0(sp)
    80002c6c:	02010413          	addi	s0,sp,32
    80002c70:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80002c74:	00000913          	li	s2,0
    80002c78:	00c0006f          	j	80002c84 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80002c7c:	ffffe097          	auipc	ra,0xffffe
    80002c80:	608080e7          	jalr	1544(ra) # 80001284 <_Z15thread_dispatchv>
    while (!threadEnd) {
    80002c84:	00007797          	auipc	a5,0x7
    80002c88:	3d47a783          	lw	a5,980(a5) # 8000a058 <_ZL9threadEnd>
    80002c8c:	02079e63          	bnez	a5,80002cc8 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80002c90:	0004a583          	lw	a1,0(s1)
    80002c94:	0305859b          	addiw	a1,a1,48
    80002c98:	0084b503          	ld	a0,8(s1)
    80002c9c:	00003097          	auipc	ra,0x3
    80002ca0:	8bc080e7          	jalr	-1860(ra) # 80005558 <_ZN6Buffer3putEi>
        i++;
    80002ca4:	0019071b          	addiw	a4,s2,1
    80002ca8:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80002cac:	0004a683          	lw	a3,0(s1)
    80002cb0:	0026979b          	slliw	a5,a3,0x2
    80002cb4:	00d787bb          	addw	a5,a5,a3
    80002cb8:	0017979b          	slliw	a5,a5,0x1
    80002cbc:	02f767bb          	remw	a5,a4,a5
    80002cc0:	fc0792e3          	bnez	a5,80002c84 <_ZL8producerPv+0x2c>
    80002cc4:	fb9ff06f          	j	80002c7c <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80002cc8:	0104b503          	ld	a0,16(s1)
    80002ccc:	ffffe097          	auipc	ra,0xffffe
    80002cd0:	670080e7          	jalr	1648(ra) # 8000133c <_Z10sem_signalP3SEM>
}
    80002cd4:	01813083          	ld	ra,24(sp)
    80002cd8:	01013403          	ld	s0,16(sp)
    80002cdc:	00813483          	ld	s1,8(sp)
    80002ce0:	00013903          	ld	s2,0(sp)
    80002ce4:	02010113          	addi	sp,sp,32
    80002ce8:	00008067          	ret

0000000080002cec <_ZL8consumerPv>:

static void consumer(void *arg) {
    80002cec:	fd010113          	addi	sp,sp,-48
    80002cf0:	02113423          	sd	ra,40(sp)
    80002cf4:	02813023          	sd	s0,32(sp)
    80002cf8:	00913c23          	sd	s1,24(sp)
    80002cfc:	01213823          	sd	s2,16(sp)
    80002d00:	01313423          	sd	s3,8(sp)
    80002d04:	03010413          	addi	s0,sp,48
    80002d08:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80002d0c:	00000993          	li	s3,0
    80002d10:	01c0006f          	j	80002d2c <_ZL8consumerPv+0x40>
        i++;

        __putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80002d14:	ffffe097          	auipc	ra,0xffffe
    80002d18:	570080e7          	jalr	1392(ra) # 80001284 <_Z15thread_dispatchv>
    80002d1c:	0500006f          	j	80002d6c <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            __putc('\n');
    80002d20:	00a00513          	li	a0,10
    80002d24:	00005097          	auipc	ra,0x5
    80002d28:	b78080e7          	jalr	-1160(ra) # 8000789c <__putc>
    while (!threadEnd) {
    80002d2c:	00007797          	auipc	a5,0x7
    80002d30:	32c7a783          	lw	a5,812(a5) # 8000a058 <_ZL9threadEnd>
    80002d34:	06079063          	bnez	a5,80002d94 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80002d38:	00893503          	ld	a0,8(s2)
    80002d3c:	00003097          	auipc	ra,0x3
    80002d40:	8ac080e7          	jalr	-1876(ra) # 800055e8 <_ZN6Buffer3getEv>
        i++;
    80002d44:	0019849b          	addiw	s1,s3,1
    80002d48:	0004899b          	sext.w	s3,s1
        __putc(key);
    80002d4c:	0ff57513          	andi	a0,a0,255
    80002d50:	00005097          	auipc	ra,0x5
    80002d54:	b4c080e7          	jalr	-1204(ra) # 8000789c <__putc>
        if (i % (5 * data->id) == 0) {
    80002d58:	00092703          	lw	a4,0(s2)
    80002d5c:	0027179b          	slliw	a5,a4,0x2
    80002d60:	00e787bb          	addw	a5,a5,a4
    80002d64:	02f4e7bb          	remw	a5,s1,a5
    80002d68:	fa0786e3          	beqz	a5,80002d14 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80002d6c:	05000793          	li	a5,80
    80002d70:	02f4e4bb          	remw	s1,s1,a5
    80002d74:	fa049ce3          	bnez	s1,80002d2c <_ZL8consumerPv+0x40>
    80002d78:	fa9ff06f          	j	80002d20 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80002d7c:	00893503          	ld	a0,8(s2)
    80002d80:	00003097          	auipc	ra,0x3
    80002d84:	868080e7          	jalr	-1944(ra) # 800055e8 <_ZN6Buffer3getEv>
        __putc(key);
    80002d88:	0ff57513          	andi	a0,a0,255
    80002d8c:	00005097          	auipc	ra,0x5
    80002d90:	b10080e7          	jalr	-1264(ra) # 8000789c <__putc>
    while (data->buffer->getCnt() > 0) {
    80002d94:	00893503          	ld	a0,8(s2)
    80002d98:	00003097          	auipc	ra,0x3
    80002d9c:	8dc080e7          	jalr	-1828(ra) # 80005674 <_ZN6Buffer6getCntEv>
    80002da0:	fca04ee3          	bgtz	a0,80002d7c <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    80002da4:	01093503          	ld	a0,16(s2)
    80002da8:	ffffe097          	auipc	ra,0xffffe
    80002dac:	594080e7          	jalr	1428(ra) # 8000133c <_Z10sem_signalP3SEM>
}
    80002db0:	02813083          	ld	ra,40(sp)
    80002db4:	02013403          	ld	s0,32(sp)
    80002db8:	01813483          	ld	s1,24(sp)
    80002dbc:	01013903          	ld	s2,16(sp)
    80002dc0:	00813983          	ld	s3,8(sp)
    80002dc4:	03010113          	addi	sp,sp,48
    80002dc8:	00008067          	ret

0000000080002dcc <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80002dcc:	f9010113          	addi	sp,sp,-112
    80002dd0:	06113423          	sd	ra,104(sp)
    80002dd4:	06813023          	sd	s0,96(sp)
    80002dd8:	04913c23          	sd	s1,88(sp)
    80002ddc:	05213823          	sd	s2,80(sp)
    80002de0:	05313423          	sd	s3,72(sp)
    80002de4:	05413023          	sd	s4,64(sp)
    80002de8:	03513c23          	sd	s5,56(sp)
    80002dec:	03613823          	sd	s6,48(sp)
    80002df0:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80002df4:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80002df8:	00005517          	auipc	a0,0x5
    80002dfc:	2f850513          	addi	a0,a0,760 # 800080f0 <_ZZ12printIntegermE6digits+0x10>
    80002e00:	00002097          	auipc	ra,0x2
    80002e04:	a0c080e7          	jalr	-1524(ra) # 8000480c <_Z11printStringPKc>
    getString(input, 30);
    80002e08:	01e00593          	li	a1,30
    80002e0c:	fa040493          	addi	s1,s0,-96
    80002e10:	00048513          	mv	a0,s1
    80002e14:	00002097          	auipc	ra,0x2
    80002e18:	a80080e7          	jalr	-1408(ra) # 80004894 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80002e1c:	00048513          	mv	a0,s1
    80002e20:	00002097          	auipc	ra,0x2
    80002e24:	b4c080e7          	jalr	-1204(ra) # 8000496c <_Z11stringToIntPKc>
    80002e28:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80002e2c:	00005517          	auipc	a0,0x5
    80002e30:	2e450513          	addi	a0,a0,740 # 80008110 <_ZZ12printIntegermE6digits+0x30>
    80002e34:	00002097          	auipc	ra,0x2
    80002e38:	9d8080e7          	jalr	-1576(ra) # 8000480c <_Z11printStringPKc>
    getString(input, 30);
    80002e3c:	01e00593          	li	a1,30
    80002e40:	00048513          	mv	a0,s1
    80002e44:	00002097          	auipc	ra,0x2
    80002e48:	a50080e7          	jalr	-1456(ra) # 80004894 <_Z9getStringPci>
    n = stringToInt(input);
    80002e4c:	00048513          	mv	a0,s1
    80002e50:	00002097          	auipc	ra,0x2
    80002e54:	b1c080e7          	jalr	-1252(ra) # 8000496c <_Z11stringToIntPKc>
    80002e58:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80002e5c:	00005517          	auipc	a0,0x5
    80002e60:	2d450513          	addi	a0,a0,724 # 80008130 <_ZZ12printIntegermE6digits+0x50>
    80002e64:	00002097          	auipc	ra,0x2
    80002e68:	9a8080e7          	jalr	-1624(ra) # 8000480c <_Z11printStringPKc>
    80002e6c:	00000613          	li	a2,0
    80002e70:	00a00593          	li	a1,10
    80002e74:	00090513          	mv	a0,s2
    80002e78:	00002097          	auipc	ra,0x2
    80002e7c:	b44080e7          	jalr	-1212(ra) # 800049bc <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80002e80:	00005517          	auipc	a0,0x5
    80002e84:	2c850513          	addi	a0,a0,712 # 80008148 <_ZZ12printIntegermE6digits+0x68>
    80002e88:	00002097          	auipc	ra,0x2
    80002e8c:	984080e7          	jalr	-1660(ra) # 8000480c <_Z11printStringPKc>
    80002e90:	00000613          	li	a2,0
    80002e94:	00a00593          	li	a1,10
    80002e98:	00048513          	mv	a0,s1
    80002e9c:	00002097          	auipc	ra,0x2
    80002ea0:	b20080e7          	jalr	-1248(ra) # 800049bc <_Z8printIntiii>
    printString(".\n");
    80002ea4:	00005517          	auipc	a0,0x5
    80002ea8:	2bc50513          	addi	a0,a0,700 # 80008160 <_ZZ12printIntegermE6digits+0x80>
    80002eac:	00002097          	auipc	ra,0x2
    80002eb0:	960080e7          	jalr	-1696(ra) # 8000480c <_Z11printStringPKc>
    if(threadNum > n) {
    80002eb4:	0324c463          	blt	s1,s2,80002edc <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    80002eb8:	03205c63          	blez	s2,80002ef0 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    80002ebc:	03800513          	li	a0,56
    80002ec0:	fffff097          	auipc	ra,0xfffff
    80002ec4:	ddc080e7          	jalr	-548(ra) # 80001c9c <_Znwm>
    80002ec8:	00050a13          	mv	s4,a0
    80002ecc:	00048593          	mv	a1,s1
    80002ed0:	00002097          	auipc	ra,0x2
    80002ed4:	5ec080e7          	jalr	1516(ra) # 800054bc <_ZN6BufferC1Ei>
    80002ed8:	0300006f          	j	80002f08 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80002edc:	00005517          	auipc	a0,0x5
    80002ee0:	28c50513          	addi	a0,a0,652 # 80008168 <_ZZ12printIntegermE6digits+0x88>
    80002ee4:	00002097          	auipc	ra,0x2
    80002ee8:	928080e7          	jalr	-1752(ra) # 8000480c <_Z11printStringPKc>
        return;
    80002eec:	0140006f          	j	80002f00 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80002ef0:	00005517          	auipc	a0,0x5
    80002ef4:	2b850513          	addi	a0,a0,696 # 800081a8 <_ZZ12printIntegermE6digits+0xc8>
    80002ef8:	00002097          	auipc	ra,0x2
    80002efc:	914080e7          	jalr	-1772(ra) # 8000480c <_Z11printStringPKc>
        return;
    80002f00:	000b0113          	mv	sp,s6
    80002f04:	1500006f          	j	80003054 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    80002f08:	00000593          	li	a1,0
    80002f0c:	00007517          	auipc	a0,0x7
    80002f10:	15450513          	addi	a0,a0,340 # 8000a060 <_ZL10waitForAll>
    80002f14:	ffffe097          	auipc	ra,0xffffe
    80002f18:	394080e7          	jalr	916(ra) # 800012a8 <_Z8sem_openPP3SEMj>
    thread_t threads[threadNum];
    80002f1c:	00391793          	slli	a5,s2,0x3
    80002f20:	00f78793          	addi	a5,a5,15
    80002f24:	ff07f793          	andi	a5,a5,-16
    80002f28:	40f10133          	sub	sp,sp,a5
    80002f2c:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80002f30:	0019071b          	addiw	a4,s2,1
    80002f34:	00171793          	slli	a5,a4,0x1
    80002f38:	00e787b3          	add	a5,a5,a4
    80002f3c:	00379793          	slli	a5,a5,0x3
    80002f40:	00f78793          	addi	a5,a5,15
    80002f44:	ff07f793          	andi	a5,a5,-16
    80002f48:	40f10133          	sub	sp,sp,a5
    80002f4c:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80002f50:	00191613          	slli	a2,s2,0x1
    80002f54:	012607b3          	add	a5,a2,s2
    80002f58:	00379793          	slli	a5,a5,0x3
    80002f5c:	00f987b3          	add	a5,s3,a5
    80002f60:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80002f64:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80002f68:	00007717          	auipc	a4,0x7
    80002f6c:	0f873703          	ld	a4,248(a4) # 8000a060 <_ZL10waitForAll>
    80002f70:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80002f74:	00078613          	mv	a2,a5
    80002f78:	00000597          	auipc	a1,0x0
    80002f7c:	d7458593          	addi	a1,a1,-652 # 80002cec <_ZL8consumerPv>
    80002f80:	f9840513          	addi	a0,s0,-104
    80002f84:	ffffe097          	auipc	ra,0xffffe
    80002f88:	29c080e7          	jalr	668(ra) # 80001220 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80002f8c:	00000493          	li	s1,0
    80002f90:	0280006f          	j	80002fb8 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    80002f94:	00000597          	auipc	a1,0x0
    80002f98:	c1458593          	addi	a1,a1,-1004 # 80002ba8 <_ZL16producerKeyboardPv>
                      data + i);
    80002f9c:	00179613          	slli	a2,a5,0x1
    80002fa0:	00f60633          	add	a2,a2,a5
    80002fa4:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80002fa8:	00c98633          	add	a2,s3,a2
    80002fac:	ffffe097          	auipc	ra,0xffffe
    80002fb0:	274080e7          	jalr	628(ra) # 80001220 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80002fb4:	0014849b          	addiw	s1,s1,1
    80002fb8:	0524d263          	bge	s1,s2,80002ffc <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    80002fbc:	00149793          	slli	a5,s1,0x1
    80002fc0:	009787b3          	add	a5,a5,s1
    80002fc4:	00379793          	slli	a5,a5,0x3
    80002fc8:	00f987b3          	add	a5,s3,a5
    80002fcc:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80002fd0:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80002fd4:	00007717          	auipc	a4,0x7
    80002fd8:	08c73703          	ld	a4,140(a4) # 8000a060 <_ZL10waitForAll>
    80002fdc:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80002fe0:	00048793          	mv	a5,s1
    80002fe4:	00349513          	slli	a0,s1,0x3
    80002fe8:	00aa8533          	add	a0,s5,a0
    80002fec:	fa9054e3          	blez	s1,80002f94 <_Z22producerConsumer_C_APIv+0x1c8>
    80002ff0:	00000597          	auipc	a1,0x0
    80002ff4:	c6858593          	addi	a1,a1,-920 # 80002c58 <_ZL8producerPv>
    80002ff8:	fa5ff06f          	j	80002f9c <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    80002ffc:	ffffe097          	auipc	ra,0xffffe
    80003000:	288080e7          	jalr	648(ra) # 80001284 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    80003004:	00000493          	li	s1,0
    80003008:	00994e63          	blt	s2,s1,80003024 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    8000300c:	00007517          	auipc	a0,0x7
    80003010:	05453503          	ld	a0,84(a0) # 8000a060 <_ZL10waitForAll>
    80003014:	ffffe097          	auipc	ra,0xffffe
    80003018:	2f8080e7          	jalr	760(ra) # 8000130c <_Z8sem_waitP3SEM>
    for (int i = 0; i <= threadNum; i++) {
    8000301c:	0014849b          	addiw	s1,s1,1
    80003020:	fe9ff06f          	j	80003008 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80003024:	00007517          	auipc	a0,0x7
    80003028:	03c53503          	ld	a0,60(a0) # 8000a060 <_ZL10waitForAll>
    8000302c:	ffffe097          	auipc	ra,0xffffe
    80003030:	2b0080e7          	jalr	688(ra) # 800012dc <_Z9sem_closeP3SEM>
    delete buffer;
    80003034:	000a0e63          	beqz	s4,80003050 <_Z22producerConsumer_C_APIv+0x284>
    80003038:	000a0513          	mv	a0,s4
    8000303c:	00002097          	auipc	ra,0x2
    80003040:	6c0080e7          	jalr	1728(ra) # 800056fc <_ZN6BufferD1Ev>
    80003044:	000a0513          	mv	a0,s4
    80003048:	fffff097          	auipc	ra,0xfffff
    8000304c:	c7c080e7          	jalr	-900(ra) # 80001cc4 <_ZdlPv>
    80003050:	000b0113          	mv	sp,s6

}
    80003054:	f9040113          	addi	sp,s0,-112
    80003058:	06813083          	ld	ra,104(sp)
    8000305c:	06013403          	ld	s0,96(sp)
    80003060:	05813483          	ld	s1,88(sp)
    80003064:	05013903          	ld	s2,80(sp)
    80003068:	04813983          	ld	s3,72(sp)
    8000306c:	04013a03          	ld	s4,64(sp)
    80003070:	03813a83          	ld	s5,56(sp)
    80003074:	03013b03          	ld	s6,48(sp)
    80003078:	07010113          	addi	sp,sp,112
    8000307c:	00008067          	ret
    80003080:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80003084:	000a0513          	mv	a0,s4
    80003088:	fffff097          	auipc	ra,0xfffff
    8000308c:	c3c080e7          	jalr	-964(ra) # 80001cc4 <_ZdlPv>
    80003090:	00048513          	mv	a0,s1
    80003094:	00008097          	auipc	ra,0x8
    80003098:	0c4080e7          	jalr	196(ra) # 8000b158 <_Unwind_Resume>

000000008000309c <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    8000309c:	fe010113          	addi	sp,sp,-32
    800030a0:	00113c23          	sd	ra,24(sp)
    800030a4:	00813823          	sd	s0,16(sp)
    800030a8:	00913423          	sd	s1,8(sp)
    800030ac:	01213023          	sd	s2,0(sp)
    800030b0:	02010413          	addi	s0,sp,32
    800030b4:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800030b8:	00100793          	li	a5,1
    800030bc:	02a7f863          	bgeu	a5,a0,800030ec <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800030c0:	00a00793          	li	a5,10
    800030c4:	02f577b3          	remu	a5,a0,a5
    800030c8:	02078e63          	beqz	a5,80003104 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800030cc:	fff48513          	addi	a0,s1,-1
    800030d0:	00000097          	auipc	ra,0x0
    800030d4:	fcc080e7          	jalr	-52(ra) # 8000309c <_ZL9fibonaccim>
    800030d8:	00050913          	mv	s2,a0
    800030dc:	ffe48513          	addi	a0,s1,-2
    800030e0:	00000097          	auipc	ra,0x0
    800030e4:	fbc080e7          	jalr	-68(ra) # 8000309c <_ZL9fibonaccim>
    800030e8:	00a90533          	add	a0,s2,a0
}
    800030ec:	01813083          	ld	ra,24(sp)
    800030f0:	01013403          	ld	s0,16(sp)
    800030f4:	00813483          	ld	s1,8(sp)
    800030f8:	00013903          	ld	s2,0(sp)
    800030fc:	02010113          	addi	sp,sp,32
    80003100:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003104:	ffffe097          	auipc	ra,0xffffe
    80003108:	180080e7          	jalr	384(ra) # 80001284 <_Z15thread_dispatchv>
    8000310c:	fc1ff06f          	j	800030cc <_ZL9fibonaccim+0x30>

0000000080003110 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80003110:	fe010113          	addi	sp,sp,-32
    80003114:	00113c23          	sd	ra,24(sp)
    80003118:	00813823          	sd	s0,16(sp)
    8000311c:	00913423          	sd	s1,8(sp)
    80003120:	01213023          	sd	s2,0(sp)
    80003124:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003128:	00000913          	li	s2,0
    8000312c:	0380006f          	j	80003164 <_ZN7WorkerA11workerBodyAEPv+0x54>
        pprintString("A: i="); printInteger(i); pprintString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003130:	ffffe097          	auipc	ra,0xffffe
    80003134:	154080e7          	jalr	340(ra) # 80001284 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003138:	00148493          	addi	s1,s1,1
    8000313c:	000027b7          	lui	a5,0x2
    80003140:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003144:	0097ee63          	bltu	a5,s1,80003160 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003148:	00000713          	li	a4,0
    8000314c:	000077b7          	lui	a5,0x7
    80003150:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003154:	fce7eee3          	bltu	a5,a4,80003130 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80003158:	00170713          	addi	a4,a4,1
    8000315c:	ff1ff06f          	j	8000314c <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003160:	00190913          	addi	s2,s2,1
    80003164:	00900793          	li	a5,9
    80003168:	0327ec63          	bltu	a5,s2,800031a0 <_ZN7WorkerA11workerBodyAEPv+0x90>
        pprintString("A: i="); printInteger(i); pprintString("\n");
    8000316c:	00005517          	auipc	a0,0x5
    80003170:	ebc50513          	addi	a0,a0,-324 # 80008028 <CONSOLE_STATUS+0x18>
    80003174:	fffff097          	auipc	ra,0xfffff
    80003178:	674080e7          	jalr	1652(ra) # 800027e8 <_Z12pprintStringPKc>
    8000317c:	00090513          	mv	a0,s2
    80003180:	fffff097          	auipc	ra,0xfffff
    80003184:	6ac080e7          	jalr	1708(ra) # 8000282c <_Z12printIntegerm>
    80003188:	00005517          	auipc	a0,0x5
    8000318c:	18850513          	addi	a0,a0,392 # 80008310 <_ZZ12printIntegermE6digits+0x230>
    80003190:	fffff097          	auipc	ra,0xfffff
    80003194:	658080e7          	jalr	1624(ra) # 800027e8 <_Z12pprintStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003198:	00000493          	li	s1,0
    8000319c:	fa1ff06f          	j	8000313c <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    pprintString("A finished!\n");
    800031a0:	00005517          	auipc	a0,0x5
    800031a4:	e9050513          	addi	a0,a0,-368 # 80008030 <CONSOLE_STATUS+0x20>
    800031a8:	fffff097          	auipc	ra,0xfffff
    800031ac:	640080e7          	jalr	1600(ra) # 800027e8 <_Z12pprintStringPKc>
    finishedA = true;
    800031b0:	00100793          	li	a5,1
    800031b4:	00007717          	auipc	a4,0x7
    800031b8:	eaf70a23          	sb	a5,-332(a4) # 8000a068 <_ZL9finishedA>
}
    800031bc:	01813083          	ld	ra,24(sp)
    800031c0:	01013403          	ld	s0,16(sp)
    800031c4:	00813483          	ld	s1,8(sp)
    800031c8:	00013903          	ld	s2,0(sp)
    800031cc:	02010113          	addi	sp,sp,32
    800031d0:	00008067          	ret

00000000800031d4 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    800031d4:	fe010113          	addi	sp,sp,-32
    800031d8:	00113c23          	sd	ra,24(sp)
    800031dc:	00813823          	sd	s0,16(sp)
    800031e0:	00913423          	sd	s1,8(sp)
    800031e4:	01213023          	sd	s2,0(sp)
    800031e8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800031ec:	00000913          	li	s2,0
    800031f0:	0380006f          	j	80003228 <_ZN7WorkerB11workerBodyBEPv+0x54>
        pprintString("B: i="); printInteger(i); pprintString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800031f4:	ffffe097          	auipc	ra,0xffffe
    800031f8:	090080e7          	jalr	144(ra) # 80001284 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800031fc:	00148493          	addi	s1,s1,1
    80003200:	000027b7          	lui	a5,0x2
    80003204:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003208:	0097ee63          	bltu	a5,s1,80003224 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000320c:	00000713          	li	a4,0
    80003210:	000077b7          	lui	a5,0x7
    80003214:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003218:	fce7eee3          	bltu	a5,a4,800031f4 <_ZN7WorkerB11workerBodyBEPv+0x20>
    8000321c:	00170713          	addi	a4,a4,1
    80003220:	ff1ff06f          	j	80003210 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80003224:	00190913          	addi	s2,s2,1
    80003228:	00f00793          	li	a5,15
    8000322c:	0327ec63          	bltu	a5,s2,80003264 <_ZN7WorkerB11workerBodyBEPv+0x90>
        pprintString("B: i="); printInteger(i); pprintString("\n");
    80003230:	00005517          	auipc	a0,0x5
    80003234:	e1050513          	addi	a0,a0,-496 # 80008040 <CONSOLE_STATUS+0x30>
    80003238:	fffff097          	auipc	ra,0xfffff
    8000323c:	5b0080e7          	jalr	1456(ra) # 800027e8 <_Z12pprintStringPKc>
    80003240:	00090513          	mv	a0,s2
    80003244:	fffff097          	auipc	ra,0xfffff
    80003248:	5e8080e7          	jalr	1512(ra) # 8000282c <_Z12printIntegerm>
    8000324c:	00005517          	auipc	a0,0x5
    80003250:	0c450513          	addi	a0,a0,196 # 80008310 <_ZZ12printIntegermE6digits+0x230>
    80003254:	fffff097          	auipc	ra,0xfffff
    80003258:	594080e7          	jalr	1428(ra) # 800027e8 <_Z12pprintStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000325c:	00000493          	li	s1,0
    80003260:	fa1ff06f          	j	80003200 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    pprintString("B finished!\n");
    80003264:	00005517          	auipc	a0,0x5
    80003268:	de450513          	addi	a0,a0,-540 # 80008048 <CONSOLE_STATUS+0x38>
    8000326c:	fffff097          	auipc	ra,0xfffff
    80003270:	57c080e7          	jalr	1404(ra) # 800027e8 <_Z12pprintStringPKc>
    finishedB = true;
    80003274:	00100793          	li	a5,1
    80003278:	00007717          	auipc	a4,0x7
    8000327c:	def708a3          	sb	a5,-527(a4) # 8000a069 <_ZL9finishedB>
    thread_dispatch();
    80003280:	ffffe097          	auipc	ra,0xffffe
    80003284:	004080e7          	jalr	4(ra) # 80001284 <_Z15thread_dispatchv>
}
    80003288:	01813083          	ld	ra,24(sp)
    8000328c:	01013403          	ld	s0,16(sp)
    80003290:	00813483          	ld	s1,8(sp)
    80003294:	00013903          	ld	s2,0(sp)
    80003298:	02010113          	addi	sp,sp,32
    8000329c:	00008067          	ret

00000000800032a0 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    800032a0:	fe010113          	addi	sp,sp,-32
    800032a4:	00113c23          	sd	ra,24(sp)
    800032a8:	00813823          	sd	s0,16(sp)
    800032ac:	00913423          	sd	s1,8(sp)
    800032b0:	01213023          	sd	s2,0(sp)
    800032b4:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800032b8:	00000493          	li	s1,0
    800032bc:	0380006f          	j	800032f4 <_ZN7WorkerC11workerBodyCEPv+0x54>
    for (; i < 3; i++) {
        pprintString("C: i="); printInteger(i); pprintString("\n");
    800032c0:	00005517          	auipc	a0,0x5
    800032c4:	d9850513          	addi	a0,a0,-616 # 80008058 <CONSOLE_STATUS+0x48>
    800032c8:	fffff097          	auipc	ra,0xfffff
    800032cc:	520080e7          	jalr	1312(ra) # 800027e8 <_Z12pprintStringPKc>
    800032d0:	00048513          	mv	a0,s1
    800032d4:	fffff097          	auipc	ra,0xfffff
    800032d8:	558080e7          	jalr	1368(ra) # 8000282c <_Z12printIntegerm>
    800032dc:	00005517          	auipc	a0,0x5
    800032e0:	03450513          	addi	a0,a0,52 # 80008310 <_ZZ12printIntegermE6digits+0x230>
    800032e4:	fffff097          	auipc	ra,0xfffff
    800032e8:	504080e7          	jalr	1284(ra) # 800027e8 <_Z12pprintStringPKc>
    for (; i < 3; i++) {
    800032ec:	0014849b          	addiw	s1,s1,1
    800032f0:	0ff4f493          	andi	s1,s1,255
    800032f4:	00200793          	li	a5,2
    800032f8:	fc97f4e3          	bgeu	a5,s1,800032c0 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    pprintString("C: dispatch\n");
    800032fc:	00005517          	auipc	a0,0x5
    80003300:	edc50513          	addi	a0,a0,-292 # 800081d8 <_ZZ12printIntegermE6digits+0xf8>
    80003304:	fffff097          	auipc	ra,0xfffff
    80003308:	4e4080e7          	jalr	1252(ra) # 800027e8 <_Z12pprintStringPKc>
    __asm__ ("li t1, 7");
    8000330c:	00700313          	li	t1,7
    thread_dispatch();
    80003310:	ffffe097          	auipc	ra,0xffffe
    80003314:	f74080e7          	jalr	-140(ra) # 80001284 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003318:	00030913          	mv	s2,t1

    pprintString("C: t1="); printInteger(t1); pprintString("\n");
    8000331c:	00005517          	auipc	a0,0x5
    80003320:	ecc50513          	addi	a0,a0,-308 # 800081e8 <_ZZ12printIntegermE6digits+0x108>
    80003324:	fffff097          	auipc	ra,0xfffff
    80003328:	4c4080e7          	jalr	1220(ra) # 800027e8 <_Z12pprintStringPKc>
    8000332c:	00090513          	mv	a0,s2
    80003330:	fffff097          	auipc	ra,0xfffff
    80003334:	4fc080e7          	jalr	1276(ra) # 8000282c <_Z12printIntegerm>
    80003338:	00005517          	auipc	a0,0x5
    8000333c:	fd850513          	addi	a0,a0,-40 # 80008310 <_ZZ12printIntegermE6digits+0x230>
    80003340:	fffff097          	auipc	ra,0xfffff
    80003344:	4a8080e7          	jalr	1192(ra) # 800027e8 <_Z12pprintStringPKc>

    uint64 result = fibonacci(12);
    80003348:	00c00513          	li	a0,12
    8000334c:	00000097          	auipc	ra,0x0
    80003350:	d50080e7          	jalr	-688(ra) # 8000309c <_ZL9fibonaccim>
    80003354:	00050913          	mv	s2,a0
    pprintString("C: fibonaci="); printInteger(result); pprintString("\n");
    80003358:	00005517          	auipc	a0,0x5
    8000335c:	d1850513          	addi	a0,a0,-744 # 80008070 <CONSOLE_STATUS+0x60>
    80003360:	fffff097          	auipc	ra,0xfffff
    80003364:	488080e7          	jalr	1160(ra) # 800027e8 <_Z12pprintStringPKc>
    80003368:	00090513          	mv	a0,s2
    8000336c:	fffff097          	auipc	ra,0xfffff
    80003370:	4c0080e7          	jalr	1216(ra) # 8000282c <_Z12printIntegerm>
    80003374:	00005517          	auipc	a0,0x5
    80003378:	f9c50513          	addi	a0,a0,-100 # 80008310 <_ZZ12printIntegermE6digits+0x230>
    8000337c:	fffff097          	auipc	ra,0xfffff
    80003380:	46c080e7          	jalr	1132(ra) # 800027e8 <_Z12pprintStringPKc>
    80003384:	0380006f          	j	800033bc <_ZN7WorkerC11workerBodyCEPv+0x11c>

    for (; i < 6; i++) {
        pprintString("C: i="); printInteger(i); pprintString("\n");
    80003388:	00005517          	auipc	a0,0x5
    8000338c:	cd050513          	addi	a0,a0,-816 # 80008058 <CONSOLE_STATUS+0x48>
    80003390:	fffff097          	auipc	ra,0xfffff
    80003394:	458080e7          	jalr	1112(ra) # 800027e8 <_Z12pprintStringPKc>
    80003398:	00048513          	mv	a0,s1
    8000339c:	fffff097          	auipc	ra,0xfffff
    800033a0:	490080e7          	jalr	1168(ra) # 8000282c <_Z12printIntegerm>
    800033a4:	00005517          	auipc	a0,0x5
    800033a8:	f6c50513          	addi	a0,a0,-148 # 80008310 <_ZZ12printIntegermE6digits+0x230>
    800033ac:	fffff097          	auipc	ra,0xfffff
    800033b0:	43c080e7          	jalr	1084(ra) # 800027e8 <_Z12pprintStringPKc>
    for (; i < 6; i++) {
    800033b4:	0014849b          	addiw	s1,s1,1
    800033b8:	0ff4f493          	andi	s1,s1,255
    800033bc:	00500793          	li	a5,5
    800033c0:	fc97f4e3          	bgeu	a5,s1,80003388 <_ZN7WorkerC11workerBodyCEPv+0xe8>
    }

    pprintString("C finished!\n");
    800033c4:	00005517          	auipc	a0,0x5
    800033c8:	cbc50513          	addi	a0,a0,-836 # 80008080 <CONSOLE_STATUS+0x70>
    800033cc:	fffff097          	auipc	ra,0xfffff
    800033d0:	41c080e7          	jalr	1052(ra) # 800027e8 <_Z12pprintStringPKc>
    finishedC = true;
    800033d4:	00100793          	li	a5,1
    800033d8:	00007717          	auipc	a4,0x7
    800033dc:	c8f70923          	sb	a5,-878(a4) # 8000a06a <_ZL9finishedC>
    thread_dispatch();
    800033e0:	ffffe097          	auipc	ra,0xffffe
    800033e4:	ea4080e7          	jalr	-348(ra) # 80001284 <_Z15thread_dispatchv>
}
    800033e8:	01813083          	ld	ra,24(sp)
    800033ec:	01013403          	ld	s0,16(sp)
    800033f0:	00813483          	ld	s1,8(sp)
    800033f4:	00013903          	ld	s2,0(sp)
    800033f8:	02010113          	addi	sp,sp,32
    800033fc:	00008067          	ret

0000000080003400 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80003400:	fe010113          	addi	sp,sp,-32
    80003404:	00113c23          	sd	ra,24(sp)
    80003408:	00813823          	sd	s0,16(sp)
    8000340c:	00913423          	sd	s1,8(sp)
    80003410:	01213023          	sd	s2,0(sp)
    80003414:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003418:	00a00493          	li	s1,10
    8000341c:	0380006f          	j	80003454 <_ZN7WorkerD11workerBodyDEPv+0x54>
    for (; i < 13; i++) {
        pprintString("D: i="); printInteger(i); pprintString("\n");
    80003420:	00005517          	auipc	a0,0x5
    80003424:	dd050513          	addi	a0,a0,-560 # 800081f0 <_ZZ12printIntegermE6digits+0x110>
    80003428:	fffff097          	auipc	ra,0xfffff
    8000342c:	3c0080e7          	jalr	960(ra) # 800027e8 <_Z12pprintStringPKc>
    80003430:	00048513          	mv	a0,s1
    80003434:	fffff097          	auipc	ra,0xfffff
    80003438:	3f8080e7          	jalr	1016(ra) # 8000282c <_Z12printIntegerm>
    8000343c:	00005517          	auipc	a0,0x5
    80003440:	ed450513          	addi	a0,a0,-300 # 80008310 <_ZZ12printIntegermE6digits+0x230>
    80003444:	fffff097          	auipc	ra,0xfffff
    80003448:	3a4080e7          	jalr	932(ra) # 800027e8 <_Z12pprintStringPKc>
    for (; i < 13; i++) {
    8000344c:	0014849b          	addiw	s1,s1,1
    80003450:	0ff4f493          	andi	s1,s1,255
    80003454:	00c00793          	li	a5,12
    80003458:	fc97f4e3          	bgeu	a5,s1,80003420 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    pprintString("D: dispatch\n");
    8000345c:	00005517          	auipc	a0,0x5
    80003460:	d9c50513          	addi	a0,a0,-612 # 800081f8 <_ZZ12printIntegermE6digits+0x118>
    80003464:	fffff097          	auipc	ra,0xfffff
    80003468:	384080e7          	jalr	900(ra) # 800027e8 <_Z12pprintStringPKc>
    __asm__ ("li t1, 5");
    8000346c:	00500313          	li	t1,5
    thread_dispatch();
    80003470:	ffffe097          	auipc	ra,0xffffe
    80003474:	e14080e7          	jalr	-492(ra) # 80001284 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003478:	01000513          	li	a0,16
    8000347c:	00000097          	auipc	ra,0x0
    80003480:	c20080e7          	jalr	-992(ra) # 8000309c <_ZL9fibonaccim>
    80003484:	00050913          	mv	s2,a0
    pprintString("D: fibonaci="); printInteger(result); pprintString("\n");
    80003488:	00005517          	auipc	a0,0x5
    8000348c:	d8050513          	addi	a0,a0,-640 # 80008208 <_ZZ12printIntegermE6digits+0x128>
    80003490:	fffff097          	auipc	ra,0xfffff
    80003494:	358080e7          	jalr	856(ra) # 800027e8 <_Z12pprintStringPKc>
    80003498:	00090513          	mv	a0,s2
    8000349c:	fffff097          	auipc	ra,0xfffff
    800034a0:	390080e7          	jalr	912(ra) # 8000282c <_Z12printIntegerm>
    800034a4:	00005517          	auipc	a0,0x5
    800034a8:	e6c50513          	addi	a0,a0,-404 # 80008310 <_ZZ12printIntegermE6digits+0x230>
    800034ac:	fffff097          	auipc	ra,0xfffff
    800034b0:	33c080e7          	jalr	828(ra) # 800027e8 <_Z12pprintStringPKc>
    800034b4:	0380006f          	j	800034ec <_ZN7WorkerD11workerBodyDEPv+0xec>

    for (; i < 16; i++) {
        pprintString("D: i="); printInteger(i); pprintString("\n");
    800034b8:	00005517          	auipc	a0,0x5
    800034bc:	d3850513          	addi	a0,a0,-712 # 800081f0 <_ZZ12printIntegermE6digits+0x110>
    800034c0:	fffff097          	auipc	ra,0xfffff
    800034c4:	328080e7          	jalr	808(ra) # 800027e8 <_Z12pprintStringPKc>
    800034c8:	00048513          	mv	a0,s1
    800034cc:	fffff097          	auipc	ra,0xfffff
    800034d0:	360080e7          	jalr	864(ra) # 8000282c <_Z12printIntegerm>
    800034d4:	00005517          	auipc	a0,0x5
    800034d8:	e3c50513          	addi	a0,a0,-452 # 80008310 <_ZZ12printIntegermE6digits+0x230>
    800034dc:	fffff097          	auipc	ra,0xfffff
    800034e0:	30c080e7          	jalr	780(ra) # 800027e8 <_Z12pprintStringPKc>
    for (; i < 16; i++) {
    800034e4:	0014849b          	addiw	s1,s1,1
    800034e8:	0ff4f493          	andi	s1,s1,255
    800034ec:	00f00793          	li	a5,15
    800034f0:	fc97f4e3          	bgeu	a5,s1,800034b8 <_ZN7WorkerD11workerBodyDEPv+0xb8>
    }

    pprintString("D finished!\n");
    800034f4:	00005517          	auipc	a0,0x5
    800034f8:	d2450513          	addi	a0,a0,-732 # 80008218 <_ZZ12printIntegermE6digits+0x138>
    800034fc:	fffff097          	auipc	ra,0xfffff
    80003500:	2ec080e7          	jalr	748(ra) # 800027e8 <_Z12pprintStringPKc>
    finishedD = true;
    80003504:	00100793          	li	a5,1
    80003508:	00007717          	auipc	a4,0x7
    8000350c:	b6f701a3          	sb	a5,-1181(a4) # 8000a06b <_ZL9finishedD>
    thread_dispatch();
    80003510:	ffffe097          	auipc	ra,0xffffe
    80003514:	d74080e7          	jalr	-652(ra) # 80001284 <_Z15thread_dispatchv>
}
    80003518:	01813083          	ld	ra,24(sp)
    8000351c:	01013403          	ld	s0,16(sp)
    80003520:	00813483          	ld	s1,8(sp)
    80003524:	00013903          	ld	s2,0(sp)
    80003528:	02010113          	addi	sp,sp,32
    8000352c:	00008067          	ret

0000000080003530 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80003530:	fc010113          	addi	sp,sp,-64
    80003534:	02113c23          	sd	ra,56(sp)
    80003538:	02813823          	sd	s0,48(sp)
    8000353c:	02913423          	sd	s1,40(sp)
    80003540:	03213023          	sd	s2,32(sp)
    80003544:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80003548:	02000513          	li	a0,32
    8000354c:	ffffe097          	auipc	ra,0xffffe
    80003550:	750080e7          	jalr	1872(ra) # 80001c9c <_Znwm>
    80003554:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80003558:	fffff097          	auipc	ra,0xfffff
    8000355c:	8cc080e7          	jalr	-1844(ra) # 80001e24 <_ZN6ThreadC1Ev>
    80003560:	00007797          	auipc	a5,0x7
    80003564:	90078793          	addi	a5,a5,-1792 # 80009e60 <_ZTV7WorkerA+0x10>
    80003568:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    8000356c:	fc943023          	sd	s1,-64(s0)
    pprintString("ThreadA created\n");
    80003570:	00005517          	auipc	a0,0x5
    80003574:	cb850513          	addi	a0,a0,-840 # 80008228 <_ZZ12printIntegermE6digits+0x148>
    80003578:	fffff097          	auipc	ra,0xfffff
    8000357c:	270080e7          	jalr	624(ra) # 800027e8 <_Z12pprintStringPKc>

    threads[1] = new WorkerB();
    80003580:	02000513          	li	a0,32
    80003584:	ffffe097          	auipc	ra,0xffffe
    80003588:	718080e7          	jalr	1816(ra) # 80001c9c <_Znwm>
    8000358c:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80003590:	fffff097          	auipc	ra,0xfffff
    80003594:	894080e7          	jalr	-1900(ra) # 80001e24 <_ZN6ThreadC1Ev>
    80003598:	00007797          	auipc	a5,0x7
    8000359c:	8f078793          	addi	a5,a5,-1808 # 80009e88 <_ZTV7WorkerB+0x10>
    800035a0:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    800035a4:	fc943423          	sd	s1,-56(s0)
    pprintString("ThreadB created\n");
    800035a8:	00005517          	auipc	a0,0x5
    800035ac:	c9850513          	addi	a0,a0,-872 # 80008240 <_ZZ12printIntegermE6digits+0x160>
    800035b0:	fffff097          	auipc	ra,0xfffff
    800035b4:	238080e7          	jalr	568(ra) # 800027e8 <_Z12pprintStringPKc>

    threads[2] = new WorkerC();
    800035b8:	02000513          	li	a0,32
    800035bc:	ffffe097          	auipc	ra,0xffffe
    800035c0:	6e0080e7          	jalr	1760(ra) # 80001c9c <_Znwm>
    800035c4:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    800035c8:	fffff097          	auipc	ra,0xfffff
    800035cc:	85c080e7          	jalr	-1956(ra) # 80001e24 <_ZN6ThreadC1Ev>
    800035d0:	00007797          	auipc	a5,0x7
    800035d4:	8e078793          	addi	a5,a5,-1824 # 80009eb0 <_ZTV7WorkerC+0x10>
    800035d8:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    800035dc:	fc943823          	sd	s1,-48(s0)
    pprintString("ThreadC created\n");
    800035e0:	00005517          	auipc	a0,0x5
    800035e4:	c7850513          	addi	a0,a0,-904 # 80008258 <_ZZ12printIntegermE6digits+0x178>
    800035e8:	fffff097          	auipc	ra,0xfffff
    800035ec:	200080e7          	jalr	512(ra) # 800027e8 <_Z12pprintStringPKc>

    threads[3] = new WorkerD();
    800035f0:	02000513          	li	a0,32
    800035f4:	ffffe097          	auipc	ra,0xffffe
    800035f8:	6a8080e7          	jalr	1704(ra) # 80001c9c <_Znwm>
    800035fc:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80003600:	fffff097          	auipc	ra,0xfffff
    80003604:	824080e7          	jalr	-2012(ra) # 80001e24 <_ZN6ThreadC1Ev>
    80003608:	00007797          	auipc	a5,0x7
    8000360c:	8d078793          	addi	a5,a5,-1840 # 80009ed8 <_ZTV7WorkerD+0x10>
    80003610:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80003614:	fc943c23          	sd	s1,-40(s0)
    pprintString("ThreadD created\n");
    80003618:	00005517          	auipc	a0,0x5
    8000361c:	c5850513          	addi	a0,a0,-936 # 80008270 <_ZZ12printIntegermE6digits+0x190>
    80003620:	fffff097          	auipc	ra,0xfffff
    80003624:	1c8080e7          	jalr	456(ra) # 800027e8 <_Z12pprintStringPKc>

    for(int i=0; i<4; i++) {
    80003628:	00000493          	li	s1,0
    8000362c:	00300793          	li	a5,3
    80003630:	0297c663          	blt	a5,s1,8000365c <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80003634:	00349793          	slli	a5,s1,0x3
    80003638:	fe040713          	addi	a4,s0,-32
    8000363c:	00f707b3          	add	a5,a4,a5
    80003640:	fe07b503          	ld	a0,-32(a5)
    80003644:	fffff097          	auipc	ra,0xfffff
    80003648:	810080e7          	jalr	-2032(ra) # 80001e54 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    8000364c:	0014849b          	addiw	s1,s1,1
    80003650:	fddff06f          	j	8000362c <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80003654:	ffffe097          	auipc	ra,0xffffe
    80003658:	7a8080e7          	jalr	1960(ra) # 80001dfc <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    8000365c:	00007797          	auipc	a5,0x7
    80003660:	a0c7c783          	lbu	a5,-1524(a5) # 8000a068 <_ZL9finishedA>
    80003664:	fe0788e3          	beqz	a5,80003654 <_Z20Threads_CPP_API_testv+0x124>
    80003668:	00007797          	auipc	a5,0x7
    8000366c:	a017c783          	lbu	a5,-1535(a5) # 8000a069 <_ZL9finishedB>
    80003670:	fe0782e3          	beqz	a5,80003654 <_Z20Threads_CPP_API_testv+0x124>
    80003674:	00007797          	auipc	a5,0x7
    80003678:	9f67c783          	lbu	a5,-1546(a5) # 8000a06a <_ZL9finishedC>
    8000367c:	fc078ce3          	beqz	a5,80003654 <_Z20Threads_CPP_API_testv+0x124>
    80003680:	00007797          	auipc	a5,0x7
    80003684:	9eb7c783          	lbu	a5,-1557(a5) # 8000a06b <_ZL9finishedD>
    80003688:	fc0786e3          	beqz	a5,80003654 <_Z20Threads_CPP_API_testv+0x124>
    8000368c:	fc040493          	addi	s1,s0,-64
    80003690:	0080006f          	j	80003698 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    80003694:	00848493          	addi	s1,s1,8
    80003698:	fe040793          	addi	a5,s0,-32
    8000369c:	08f48663          	beq	s1,a5,80003728 <_Z20Threads_CPP_API_testv+0x1f8>
    800036a0:	0004b503          	ld	a0,0(s1)
    800036a4:	fe0508e3          	beqz	a0,80003694 <_Z20Threads_CPP_API_testv+0x164>
    800036a8:	00053783          	ld	a5,0(a0)
    800036ac:	0087b783          	ld	a5,8(a5)
    800036b0:	000780e7          	jalr	a5
    800036b4:	fe1ff06f          	j	80003694 <_Z20Threads_CPP_API_testv+0x164>
    800036b8:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    800036bc:	00048513          	mv	a0,s1
    800036c0:	ffffe097          	auipc	ra,0xffffe
    800036c4:	604080e7          	jalr	1540(ra) # 80001cc4 <_ZdlPv>
    800036c8:	00090513          	mv	a0,s2
    800036cc:	00008097          	auipc	ra,0x8
    800036d0:	a8c080e7          	jalr	-1396(ra) # 8000b158 <_Unwind_Resume>
    800036d4:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    800036d8:	00048513          	mv	a0,s1
    800036dc:	ffffe097          	auipc	ra,0xffffe
    800036e0:	5e8080e7          	jalr	1512(ra) # 80001cc4 <_ZdlPv>
    800036e4:	00090513          	mv	a0,s2
    800036e8:	00008097          	auipc	ra,0x8
    800036ec:	a70080e7          	jalr	-1424(ra) # 8000b158 <_Unwind_Resume>
    800036f0:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    800036f4:	00048513          	mv	a0,s1
    800036f8:	ffffe097          	auipc	ra,0xffffe
    800036fc:	5cc080e7          	jalr	1484(ra) # 80001cc4 <_ZdlPv>
    80003700:	00090513          	mv	a0,s2
    80003704:	00008097          	auipc	ra,0x8
    80003708:	a54080e7          	jalr	-1452(ra) # 8000b158 <_Unwind_Resume>
    8000370c:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80003710:	00048513          	mv	a0,s1
    80003714:	ffffe097          	auipc	ra,0xffffe
    80003718:	5b0080e7          	jalr	1456(ra) # 80001cc4 <_ZdlPv>
    8000371c:	00090513          	mv	a0,s2
    80003720:	00008097          	auipc	ra,0x8
    80003724:	a38080e7          	jalr	-1480(ra) # 8000b158 <_Unwind_Resume>
}
    80003728:	03813083          	ld	ra,56(sp)
    8000372c:	03013403          	ld	s0,48(sp)
    80003730:	02813483          	ld	s1,40(sp)
    80003734:	02013903          	ld	s2,32(sp)
    80003738:	04010113          	addi	sp,sp,64
    8000373c:	00008067          	ret

0000000080003740 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80003740:	ff010113          	addi	sp,sp,-16
    80003744:	00113423          	sd	ra,8(sp)
    80003748:	00813023          	sd	s0,0(sp)
    8000374c:	01010413          	addi	s0,sp,16
    80003750:	00006797          	auipc	a5,0x6
    80003754:	71078793          	addi	a5,a5,1808 # 80009e60 <_ZTV7WorkerA+0x10>
    80003758:	00f53023          	sd	a5,0(a0)
    8000375c:	ffffe097          	auipc	ra,0xffffe
    80003760:	590080e7          	jalr	1424(ra) # 80001cec <_ZN6ThreadD1Ev>
    80003764:	00813083          	ld	ra,8(sp)
    80003768:	00013403          	ld	s0,0(sp)
    8000376c:	01010113          	addi	sp,sp,16
    80003770:	00008067          	ret

0000000080003774 <_ZN7WorkerAD0Ev>:
    80003774:	fe010113          	addi	sp,sp,-32
    80003778:	00113c23          	sd	ra,24(sp)
    8000377c:	00813823          	sd	s0,16(sp)
    80003780:	00913423          	sd	s1,8(sp)
    80003784:	02010413          	addi	s0,sp,32
    80003788:	00050493          	mv	s1,a0
    8000378c:	00006797          	auipc	a5,0x6
    80003790:	6d478793          	addi	a5,a5,1748 # 80009e60 <_ZTV7WorkerA+0x10>
    80003794:	00f53023          	sd	a5,0(a0)
    80003798:	ffffe097          	auipc	ra,0xffffe
    8000379c:	554080e7          	jalr	1364(ra) # 80001cec <_ZN6ThreadD1Ev>
    800037a0:	00048513          	mv	a0,s1
    800037a4:	ffffe097          	auipc	ra,0xffffe
    800037a8:	520080e7          	jalr	1312(ra) # 80001cc4 <_ZdlPv>
    800037ac:	01813083          	ld	ra,24(sp)
    800037b0:	01013403          	ld	s0,16(sp)
    800037b4:	00813483          	ld	s1,8(sp)
    800037b8:	02010113          	addi	sp,sp,32
    800037bc:	00008067          	ret

00000000800037c0 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    800037c0:	ff010113          	addi	sp,sp,-16
    800037c4:	00113423          	sd	ra,8(sp)
    800037c8:	00813023          	sd	s0,0(sp)
    800037cc:	01010413          	addi	s0,sp,16
    800037d0:	00006797          	auipc	a5,0x6
    800037d4:	6b878793          	addi	a5,a5,1720 # 80009e88 <_ZTV7WorkerB+0x10>
    800037d8:	00f53023          	sd	a5,0(a0)
    800037dc:	ffffe097          	auipc	ra,0xffffe
    800037e0:	510080e7          	jalr	1296(ra) # 80001cec <_ZN6ThreadD1Ev>
    800037e4:	00813083          	ld	ra,8(sp)
    800037e8:	00013403          	ld	s0,0(sp)
    800037ec:	01010113          	addi	sp,sp,16
    800037f0:	00008067          	ret

00000000800037f4 <_ZN7WorkerBD0Ev>:
    800037f4:	fe010113          	addi	sp,sp,-32
    800037f8:	00113c23          	sd	ra,24(sp)
    800037fc:	00813823          	sd	s0,16(sp)
    80003800:	00913423          	sd	s1,8(sp)
    80003804:	02010413          	addi	s0,sp,32
    80003808:	00050493          	mv	s1,a0
    8000380c:	00006797          	auipc	a5,0x6
    80003810:	67c78793          	addi	a5,a5,1660 # 80009e88 <_ZTV7WorkerB+0x10>
    80003814:	00f53023          	sd	a5,0(a0)
    80003818:	ffffe097          	auipc	ra,0xffffe
    8000381c:	4d4080e7          	jalr	1236(ra) # 80001cec <_ZN6ThreadD1Ev>
    80003820:	00048513          	mv	a0,s1
    80003824:	ffffe097          	auipc	ra,0xffffe
    80003828:	4a0080e7          	jalr	1184(ra) # 80001cc4 <_ZdlPv>
    8000382c:	01813083          	ld	ra,24(sp)
    80003830:	01013403          	ld	s0,16(sp)
    80003834:	00813483          	ld	s1,8(sp)
    80003838:	02010113          	addi	sp,sp,32
    8000383c:	00008067          	ret

0000000080003840 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80003840:	ff010113          	addi	sp,sp,-16
    80003844:	00113423          	sd	ra,8(sp)
    80003848:	00813023          	sd	s0,0(sp)
    8000384c:	01010413          	addi	s0,sp,16
    80003850:	00006797          	auipc	a5,0x6
    80003854:	66078793          	addi	a5,a5,1632 # 80009eb0 <_ZTV7WorkerC+0x10>
    80003858:	00f53023          	sd	a5,0(a0)
    8000385c:	ffffe097          	auipc	ra,0xffffe
    80003860:	490080e7          	jalr	1168(ra) # 80001cec <_ZN6ThreadD1Ev>
    80003864:	00813083          	ld	ra,8(sp)
    80003868:	00013403          	ld	s0,0(sp)
    8000386c:	01010113          	addi	sp,sp,16
    80003870:	00008067          	ret

0000000080003874 <_ZN7WorkerCD0Ev>:
    80003874:	fe010113          	addi	sp,sp,-32
    80003878:	00113c23          	sd	ra,24(sp)
    8000387c:	00813823          	sd	s0,16(sp)
    80003880:	00913423          	sd	s1,8(sp)
    80003884:	02010413          	addi	s0,sp,32
    80003888:	00050493          	mv	s1,a0
    8000388c:	00006797          	auipc	a5,0x6
    80003890:	62478793          	addi	a5,a5,1572 # 80009eb0 <_ZTV7WorkerC+0x10>
    80003894:	00f53023          	sd	a5,0(a0)
    80003898:	ffffe097          	auipc	ra,0xffffe
    8000389c:	454080e7          	jalr	1108(ra) # 80001cec <_ZN6ThreadD1Ev>
    800038a0:	00048513          	mv	a0,s1
    800038a4:	ffffe097          	auipc	ra,0xffffe
    800038a8:	420080e7          	jalr	1056(ra) # 80001cc4 <_ZdlPv>
    800038ac:	01813083          	ld	ra,24(sp)
    800038b0:	01013403          	ld	s0,16(sp)
    800038b4:	00813483          	ld	s1,8(sp)
    800038b8:	02010113          	addi	sp,sp,32
    800038bc:	00008067          	ret

00000000800038c0 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    800038c0:	ff010113          	addi	sp,sp,-16
    800038c4:	00113423          	sd	ra,8(sp)
    800038c8:	00813023          	sd	s0,0(sp)
    800038cc:	01010413          	addi	s0,sp,16
    800038d0:	00006797          	auipc	a5,0x6
    800038d4:	60878793          	addi	a5,a5,1544 # 80009ed8 <_ZTV7WorkerD+0x10>
    800038d8:	00f53023          	sd	a5,0(a0)
    800038dc:	ffffe097          	auipc	ra,0xffffe
    800038e0:	410080e7          	jalr	1040(ra) # 80001cec <_ZN6ThreadD1Ev>
    800038e4:	00813083          	ld	ra,8(sp)
    800038e8:	00013403          	ld	s0,0(sp)
    800038ec:	01010113          	addi	sp,sp,16
    800038f0:	00008067          	ret

00000000800038f4 <_ZN7WorkerDD0Ev>:
    800038f4:	fe010113          	addi	sp,sp,-32
    800038f8:	00113c23          	sd	ra,24(sp)
    800038fc:	00813823          	sd	s0,16(sp)
    80003900:	00913423          	sd	s1,8(sp)
    80003904:	02010413          	addi	s0,sp,32
    80003908:	00050493          	mv	s1,a0
    8000390c:	00006797          	auipc	a5,0x6
    80003910:	5cc78793          	addi	a5,a5,1484 # 80009ed8 <_ZTV7WorkerD+0x10>
    80003914:	00f53023          	sd	a5,0(a0)
    80003918:	ffffe097          	auipc	ra,0xffffe
    8000391c:	3d4080e7          	jalr	980(ra) # 80001cec <_ZN6ThreadD1Ev>
    80003920:	00048513          	mv	a0,s1
    80003924:	ffffe097          	auipc	ra,0xffffe
    80003928:	3a0080e7          	jalr	928(ra) # 80001cc4 <_ZdlPv>
    8000392c:	01813083          	ld	ra,24(sp)
    80003930:	01013403          	ld	s0,16(sp)
    80003934:	00813483          	ld	s1,8(sp)
    80003938:	02010113          	addi	sp,sp,32
    8000393c:	00008067          	ret

0000000080003940 <_ZN7WorkerA3runEv>:
    void run() override {
    80003940:	ff010113          	addi	sp,sp,-16
    80003944:	00113423          	sd	ra,8(sp)
    80003948:	00813023          	sd	s0,0(sp)
    8000394c:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80003950:	00000593          	li	a1,0
    80003954:	fffff097          	auipc	ra,0xfffff
    80003958:	7bc080e7          	jalr	1980(ra) # 80003110 <_ZN7WorkerA11workerBodyAEPv>
    }
    8000395c:	00813083          	ld	ra,8(sp)
    80003960:	00013403          	ld	s0,0(sp)
    80003964:	01010113          	addi	sp,sp,16
    80003968:	00008067          	ret

000000008000396c <_ZN7WorkerB3runEv>:
    void run() override {
    8000396c:	ff010113          	addi	sp,sp,-16
    80003970:	00113423          	sd	ra,8(sp)
    80003974:	00813023          	sd	s0,0(sp)
    80003978:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    8000397c:	00000593          	li	a1,0
    80003980:	00000097          	auipc	ra,0x0
    80003984:	854080e7          	jalr	-1964(ra) # 800031d4 <_ZN7WorkerB11workerBodyBEPv>
    }
    80003988:	00813083          	ld	ra,8(sp)
    8000398c:	00013403          	ld	s0,0(sp)
    80003990:	01010113          	addi	sp,sp,16
    80003994:	00008067          	ret

0000000080003998 <_ZN7WorkerC3runEv>:
    void run() override {
    80003998:	ff010113          	addi	sp,sp,-16
    8000399c:	00113423          	sd	ra,8(sp)
    800039a0:	00813023          	sd	s0,0(sp)
    800039a4:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    800039a8:	00000593          	li	a1,0
    800039ac:	00000097          	auipc	ra,0x0
    800039b0:	8f4080e7          	jalr	-1804(ra) # 800032a0 <_ZN7WorkerC11workerBodyCEPv>
    }
    800039b4:	00813083          	ld	ra,8(sp)
    800039b8:	00013403          	ld	s0,0(sp)
    800039bc:	01010113          	addi	sp,sp,16
    800039c0:	00008067          	ret

00000000800039c4 <_ZN7WorkerD3runEv>:
    void run() override {
    800039c4:	ff010113          	addi	sp,sp,-16
    800039c8:	00113423          	sd	ra,8(sp)
    800039cc:	00813023          	sd	s0,0(sp)
    800039d0:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    800039d4:	00000593          	li	a1,0
    800039d8:	00000097          	auipc	ra,0x0
    800039dc:	a28080e7          	jalr	-1496(ra) # 80003400 <_ZN7WorkerD11workerBodyDEPv>
    }
    800039e0:	00813083          	ld	ra,8(sp)
    800039e4:	00013403          	ld	s0,0(sp)
    800039e8:	01010113          	addi	sp,sp,16
    800039ec:	00008067          	ret

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

0000000080003a64 <_ZL11workerBodyDPv>:
    pprintString("C finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80003a64:	fe010113          	addi	sp,sp,-32
    80003a68:	00113c23          	sd	ra,24(sp)
    80003a6c:	00813823          	sd	s0,16(sp)
    80003a70:	00913423          	sd	s1,8(sp)
    80003a74:	01213023          	sd	s2,0(sp)
    80003a78:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003a7c:	00a00493          	li	s1,10
    80003a80:	0380006f          	j	80003ab8 <_ZL11workerBodyDPv+0x54>
    for (; i < 13; i++) {
        pprintString("D: i="); printInteger(i); pprintString("\n");
    80003a84:	00004517          	auipc	a0,0x4
    80003a88:	76c50513          	addi	a0,a0,1900 # 800081f0 <_ZZ12printIntegermE6digits+0x110>
    80003a8c:	fffff097          	auipc	ra,0xfffff
    80003a90:	d5c080e7          	jalr	-676(ra) # 800027e8 <_Z12pprintStringPKc>
    80003a94:	00048513          	mv	a0,s1
    80003a98:	fffff097          	auipc	ra,0xfffff
    80003a9c:	d94080e7          	jalr	-620(ra) # 8000282c <_Z12printIntegerm>
    80003aa0:	00005517          	auipc	a0,0x5
    80003aa4:	87050513          	addi	a0,a0,-1936 # 80008310 <_ZZ12printIntegermE6digits+0x230>
    80003aa8:	fffff097          	auipc	ra,0xfffff
    80003aac:	d40080e7          	jalr	-704(ra) # 800027e8 <_Z12pprintStringPKc>
    for (; i < 13; i++) {
    80003ab0:	0014849b          	addiw	s1,s1,1
    80003ab4:	0ff4f493          	andi	s1,s1,255
    80003ab8:	00c00793          	li	a5,12
    80003abc:	fc97f4e3          	bgeu	a5,s1,80003a84 <_ZL11workerBodyDPv+0x20>
    }

    pprintString("D: dispatch\n");
    80003ac0:	00004517          	auipc	a0,0x4
    80003ac4:	73850513          	addi	a0,a0,1848 # 800081f8 <_ZZ12printIntegermE6digits+0x118>
    80003ac8:	fffff097          	auipc	ra,0xfffff
    80003acc:	d20080e7          	jalr	-736(ra) # 800027e8 <_Z12pprintStringPKc>
    __asm__ ("li t1, 5");
    80003ad0:	00500313          	li	t1,5
    thread_dispatch();
    80003ad4:	ffffd097          	auipc	ra,0xffffd
    80003ad8:	7b0080e7          	jalr	1968(ra) # 80001284 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003adc:	01000513          	li	a0,16
    80003ae0:	00000097          	auipc	ra,0x0
    80003ae4:	f10080e7          	jalr	-240(ra) # 800039f0 <_ZL9fibonaccim>
    80003ae8:	00050913          	mv	s2,a0
    pprintString("D: fibonaci="); printInteger(result); pprintString("\n");
    80003aec:	00004517          	auipc	a0,0x4
    80003af0:	71c50513          	addi	a0,a0,1820 # 80008208 <_ZZ12printIntegermE6digits+0x128>
    80003af4:	fffff097          	auipc	ra,0xfffff
    80003af8:	cf4080e7          	jalr	-780(ra) # 800027e8 <_Z12pprintStringPKc>
    80003afc:	00090513          	mv	a0,s2
    80003b00:	fffff097          	auipc	ra,0xfffff
    80003b04:	d2c080e7          	jalr	-724(ra) # 8000282c <_Z12printIntegerm>
    80003b08:	00005517          	auipc	a0,0x5
    80003b0c:	80850513          	addi	a0,a0,-2040 # 80008310 <_ZZ12printIntegermE6digits+0x230>
    80003b10:	fffff097          	auipc	ra,0xfffff
    80003b14:	cd8080e7          	jalr	-808(ra) # 800027e8 <_Z12pprintStringPKc>
    80003b18:	0380006f          	j	80003b50 <_ZL11workerBodyDPv+0xec>

    for (; i < 16; i++) {
        pprintString("D: i="); printInteger(i); pprintString("\n");
    80003b1c:	00004517          	auipc	a0,0x4
    80003b20:	6d450513          	addi	a0,a0,1748 # 800081f0 <_ZZ12printIntegermE6digits+0x110>
    80003b24:	fffff097          	auipc	ra,0xfffff
    80003b28:	cc4080e7          	jalr	-828(ra) # 800027e8 <_Z12pprintStringPKc>
    80003b2c:	00048513          	mv	a0,s1
    80003b30:	fffff097          	auipc	ra,0xfffff
    80003b34:	cfc080e7          	jalr	-772(ra) # 8000282c <_Z12printIntegerm>
    80003b38:	00004517          	auipc	a0,0x4
    80003b3c:	7d850513          	addi	a0,a0,2008 # 80008310 <_ZZ12printIntegermE6digits+0x230>
    80003b40:	fffff097          	auipc	ra,0xfffff
    80003b44:	ca8080e7          	jalr	-856(ra) # 800027e8 <_Z12pprintStringPKc>
    for (; i < 16; i++) {
    80003b48:	0014849b          	addiw	s1,s1,1
    80003b4c:	0ff4f493          	andi	s1,s1,255
    80003b50:	00f00793          	li	a5,15
    80003b54:	fc97f4e3          	bgeu	a5,s1,80003b1c <_ZL11workerBodyDPv+0xb8>
    }

    pprintString("D finished!\n");
    80003b58:	00004517          	auipc	a0,0x4
    80003b5c:	6c050513          	addi	a0,a0,1728 # 80008218 <_ZZ12printIntegermE6digits+0x138>
    80003b60:	fffff097          	auipc	ra,0xfffff
    80003b64:	c88080e7          	jalr	-888(ra) # 800027e8 <_Z12pprintStringPKc>
    finishedD = true;
    80003b68:	00100793          	li	a5,1
    80003b6c:	00006717          	auipc	a4,0x6
    80003b70:	50f70023          	sb	a5,1280(a4) # 8000a06c <_ZL9finishedD>
    thread_dispatch();
    80003b74:	ffffd097          	auipc	ra,0xffffd
    80003b78:	710080e7          	jalr	1808(ra) # 80001284 <_Z15thread_dispatchv>
}
    80003b7c:	01813083          	ld	ra,24(sp)
    80003b80:	01013403          	ld	s0,16(sp)
    80003b84:	00813483          	ld	s1,8(sp)
    80003b88:	00013903          	ld	s2,0(sp)
    80003b8c:	02010113          	addi	sp,sp,32
    80003b90:	00008067          	ret

0000000080003b94 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80003b94:	fe010113          	addi	sp,sp,-32
    80003b98:	00113c23          	sd	ra,24(sp)
    80003b9c:	00813823          	sd	s0,16(sp)
    80003ba0:	00913423          	sd	s1,8(sp)
    80003ba4:	01213023          	sd	s2,0(sp)
    80003ba8:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003bac:	00000493          	li	s1,0
    80003bb0:	0380006f          	j	80003be8 <_ZL11workerBodyCPv+0x54>
        pprintString("C: i="); printInteger(i); pprintString("\n");
    80003bb4:	00004517          	auipc	a0,0x4
    80003bb8:	4a450513          	addi	a0,a0,1188 # 80008058 <CONSOLE_STATUS+0x48>
    80003bbc:	fffff097          	auipc	ra,0xfffff
    80003bc0:	c2c080e7          	jalr	-980(ra) # 800027e8 <_Z12pprintStringPKc>
    80003bc4:	00048513          	mv	a0,s1
    80003bc8:	fffff097          	auipc	ra,0xfffff
    80003bcc:	c64080e7          	jalr	-924(ra) # 8000282c <_Z12printIntegerm>
    80003bd0:	00004517          	auipc	a0,0x4
    80003bd4:	74050513          	addi	a0,a0,1856 # 80008310 <_ZZ12printIntegermE6digits+0x230>
    80003bd8:	fffff097          	auipc	ra,0xfffff
    80003bdc:	c10080e7          	jalr	-1008(ra) # 800027e8 <_Z12pprintStringPKc>
    for (; i < 3; i++) {
    80003be0:	0014849b          	addiw	s1,s1,1
    80003be4:	0ff4f493          	andi	s1,s1,255
    80003be8:	00200793          	li	a5,2
    80003bec:	fc97f4e3          	bgeu	a5,s1,80003bb4 <_ZL11workerBodyCPv+0x20>
    pprintString("C: dispatch\n");
    80003bf0:	00004517          	auipc	a0,0x4
    80003bf4:	5e850513          	addi	a0,a0,1512 # 800081d8 <_ZZ12printIntegermE6digits+0xf8>
    80003bf8:	fffff097          	auipc	ra,0xfffff
    80003bfc:	bf0080e7          	jalr	-1040(ra) # 800027e8 <_Z12pprintStringPKc>
    __asm__ ("li t1, 7");
    80003c00:	00700313          	li	t1,7
    thread_dispatch();
    80003c04:	ffffd097          	auipc	ra,0xffffd
    80003c08:	680080e7          	jalr	1664(ra) # 80001284 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003c0c:	00030913          	mv	s2,t1
    pprintString("C: t1="); printInteger(t1); pprintString("\n");
    80003c10:	00004517          	auipc	a0,0x4
    80003c14:	5d850513          	addi	a0,a0,1496 # 800081e8 <_ZZ12printIntegermE6digits+0x108>
    80003c18:	fffff097          	auipc	ra,0xfffff
    80003c1c:	bd0080e7          	jalr	-1072(ra) # 800027e8 <_Z12pprintStringPKc>
    80003c20:	00090513          	mv	a0,s2
    80003c24:	fffff097          	auipc	ra,0xfffff
    80003c28:	c08080e7          	jalr	-1016(ra) # 8000282c <_Z12printIntegerm>
    80003c2c:	00004517          	auipc	a0,0x4
    80003c30:	6e450513          	addi	a0,a0,1764 # 80008310 <_ZZ12printIntegermE6digits+0x230>
    80003c34:	fffff097          	auipc	ra,0xfffff
    80003c38:	bb4080e7          	jalr	-1100(ra) # 800027e8 <_Z12pprintStringPKc>
    uint64 result = fibonacci(12);
    80003c3c:	00c00513          	li	a0,12
    80003c40:	00000097          	auipc	ra,0x0
    80003c44:	db0080e7          	jalr	-592(ra) # 800039f0 <_ZL9fibonaccim>
    80003c48:	00050913          	mv	s2,a0
    pprintString("C: fibonaci="); printInteger(result); pprintString("\n");
    80003c4c:	00004517          	auipc	a0,0x4
    80003c50:	42450513          	addi	a0,a0,1060 # 80008070 <CONSOLE_STATUS+0x60>
    80003c54:	fffff097          	auipc	ra,0xfffff
    80003c58:	b94080e7          	jalr	-1132(ra) # 800027e8 <_Z12pprintStringPKc>
    80003c5c:	00090513          	mv	a0,s2
    80003c60:	fffff097          	auipc	ra,0xfffff
    80003c64:	bcc080e7          	jalr	-1076(ra) # 8000282c <_Z12printIntegerm>
    80003c68:	00004517          	auipc	a0,0x4
    80003c6c:	6a850513          	addi	a0,a0,1704 # 80008310 <_ZZ12printIntegermE6digits+0x230>
    80003c70:	fffff097          	auipc	ra,0xfffff
    80003c74:	b78080e7          	jalr	-1160(ra) # 800027e8 <_Z12pprintStringPKc>
    80003c78:	0380006f          	j	80003cb0 <_ZL11workerBodyCPv+0x11c>
        pprintString("C: i="); printInteger(i); pprintString("\n");
    80003c7c:	00004517          	auipc	a0,0x4
    80003c80:	3dc50513          	addi	a0,a0,988 # 80008058 <CONSOLE_STATUS+0x48>
    80003c84:	fffff097          	auipc	ra,0xfffff
    80003c88:	b64080e7          	jalr	-1180(ra) # 800027e8 <_Z12pprintStringPKc>
    80003c8c:	00048513          	mv	a0,s1
    80003c90:	fffff097          	auipc	ra,0xfffff
    80003c94:	b9c080e7          	jalr	-1124(ra) # 8000282c <_Z12printIntegerm>
    80003c98:	00004517          	auipc	a0,0x4
    80003c9c:	67850513          	addi	a0,a0,1656 # 80008310 <_ZZ12printIntegermE6digits+0x230>
    80003ca0:	fffff097          	auipc	ra,0xfffff
    80003ca4:	b48080e7          	jalr	-1208(ra) # 800027e8 <_Z12pprintStringPKc>
    for (; i < 6; i++) {
    80003ca8:	0014849b          	addiw	s1,s1,1
    80003cac:	0ff4f493          	andi	s1,s1,255
    80003cb0:	00500793          	li	a5,5
    80003cb4:	fc97f4e3          	bgeu	a5,s1,80003c7c <_ZL11workerBodyCPv+0xe8>
    pprintString("C finished!\n");
    80003cb8:	00004517          	auipc	a0,0x4
    80003cbc:	3c850513          	addi	a0,a0,968 # 80008080 <CONSOLE_STATUS+0x70>
    80003cc0:	fffff097          	auipc	ra,0xfffff
    80003cc4:	b28080e7          	jalr	-1240(ra) # 800027e8 <_Z12pprintStringPKc>
    finishedC = true;
    80003cc8:	00100793          	li	a5,1
    80003ccc:	00006717          	auipc	a4,0x6
    80003cd0:	3af700a3          	sb	a5,929(a4) # 8000a06d <_ZL9finishedC>
    thread_dispatch();
    80003cd4:	ffffd097          	auipc	ra,0xffffd
    80003cd8:	5b0080e7          	jalr	1456(ra) # 80001284 <_Z15thread_dispatchv>
}
    80003cdc:	01813083          	ld	ra,24(sp)
    80003ce0:	01013403          	ld	s0,16(sp)
    80003ce4:	00813483          	ld	s1,8(sp)
    80003ce8:	00013903          	ld	s2,0(sp)
    80003cec:	02010113          	addi	sp,sp,32
    80003cf0:	00008067          	ret

0000000080003cf4 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80003cf4:	fe010113          	addi	sp,sp,-32
    80003cf8:	00113c23          	sd	ra,24(sp)
    80003cfc:	00813823          	sd	s0,16(sp)
    80003d00:	00913423          	sd	s1,8(sp)
    80003d04:	01213023          	sd	s2,0(sp)
    80003d08:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003d0c:	00000913          	li	s2,0
    80003d10:	0380006f          	j	80003d48 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80003d14:	ffffd097          	auipc	ra,0xffffd
    80003d18:	570080e7          	jalr	1392(ra) # 80001284 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003d1c:	00148493          	addi	s1,s1,1
    80003d20:	000027b7          	lui	a5,0x2
    80003d24:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003d28:	0097ee63          	bltu	a5,s1,80003d44 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003d2c:	00000713          	li	a4,0
    80003d30:	000077b7          	lui	a5,0x7
    80003d34:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003d38:	fce7eee3          	bltu	a5,a4,80003d14 <_ZL11workerBodyBPv+0x20>
    80003d3c:	00170713          	addi	a4,a4,1
    80003d40:	ff1ff06f          	j	80003d30 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80003d44:	00190913          	addi	s2,s2,1
    80003d48:	00f00793          	li	a5,15
    80003d4c:	0327ec63          	bltu	a5,s2,80003d84 <_ZL11workerBodyBPv+0x90>
        pprintString("B: i="); printInteger(i); pprintString("\n");
    80003d50:	00004517          	auipc	a0,0x4
    80003d54:	2f050513          	addi	a0,a0,752 # 80008040 <CONSOLE_STATUS+0x30>
    80003d58:	fffff097          	auipc	ra,0xfffff
    80003d5c:	a90080e7          	jalr	-1392(ra) # 800027e8 <_Z12pprintStringPKc>
    80003d60:	00090513          	mv	a0,s2
    80003d64:	fffff097          	auipc	ra,0xfffff
    80003d68:	ac8080e7          	jalr	-1336(ra) # 8000282c <_Z12printIntegerm>
    80003d6c:	00004517          	auipc	a0,0x4
    80003d70:	5a450513          	addi	a0,a0,1444 # 80008310 <_ZZ12printIntegermE6digits+0x230>
    80003d74:	fffff097          	auipc	ra,0xfffff
    80003d78:	a74080e7          	jalr	-1420(ra) # 800027e8 <_Z12pprintStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003d7c:	00000493          	li	s1,0
    80003d80:	fa1ff06f          	j	80003d20 <_ZL11workerBodyBPv+0x2c>
    pprintString("B finished!\n");
    80003d84:	00004517          	auipc	a0,0x4
    80003d88:	2c450513          	addi	a0,a0,708 # 80008048 <CONSOLE_STATUS+0x38>
    80003d8c:	fffff097          	auipc	ra,0xfffff
    80003d90:	a5c080e7          	jalr	-1444(ra) # 800027e8 <_Z12pprintStringPKc>
    finishedB = true;
    80003d94:	00100793          	li	a5,1
    80003d98:	00006717          	auipc	a4,0x6
    80003d9c:	2cf70b23          	sb	a5,726(a4) # 8000a06e <_ZL9finishedB>
    thread_dispatch();
    80003da0:	ffffd097          	auipc	ra,0xffffd
    80003da4:	4e4080e7          	jalr	1252(ra) # 80001284 <_Z15thread_dispatchv>
}
    80003da8:	01813083          	ld	ra,24(sp)
    80003dac:	01013403          	ld	s0,16(sp)
    80003db0:	00813483          	ld	s1,8(sp)
    80003db4:	00013903          	ld	s2,0(sp)
    80003db8:	02010113          	addi	sp,sp,32
    80003dbc:	00008067          	ret

0000000080003dc0 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80003dc0:	fe010113          	addi	sp,sp,-32
    80003dc4:	00113c23          	sd	ra,24(sp)
    80003dc8:	00813823          	sd	s0,16(sp)
    80003dcc:	00913423          	sd	s1,8(sp)
    80003dd0:	01213023          	sd	s2,0(sp)
    80003dd4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003dd8:	00000913          	li	s2,0
    80003ddc:	0380006f          	j	80003e14 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80003de0:	ffffd097          	auipc	ra,0xffffd
    80003de4:	4a4080e7          	jalr	1188(ra) # 80001284 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003de8:	00148493          	addi	s1,s1,1
    80003dec:	000027b7          	lui	a5,0x2
    80003df0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003df4:	0097ee63          	bltu	a5,s1,80003e10 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003df8:	00000713          	li	a4,0
    80003dfc:	000077b7          	lui	a5,0x7
    80003e00:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003e04:	fce7eee3          	bltu	a5,a4,80003de0 <_ZL11workerBodyAPv+0x20>
    80003e08:	00170713          	addi	a4,a4,1
    80003e0c:	ff1ff06f          	j	80003dfc <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003e10:	00190913          	addi	s2,s2,1
    80003e14:	00900793          	li	a5,9
    80003e18:	0327ec63          	bltu	a5,s2,80003e50 <_ZL11workerBodyAPv+0x90>
        pprintString("A: i="); printInteger(i); pprintString("\n");
    80003e1c:	00004517          	auipc	a0,0x4
    80003e20:	20c50513          	addi	a0,a0,524 # 80008028 <CONSOLE_STATUS+0x18>
    80003e24:	fffff097          	auipc	ra,0xfffff
    80003e28:	9c4080e7          	jalr	-1596(ra) # 800027e8 <_Z12pprintStringPKc>
    80003e2c:	00090513          	mv	a0,s2
    80003e30:	fffff097          	auipc	ra,0xfffff
    80003e34:	9fc080e7          	jalr	-1540(ra) # 8000282c <_Z12printIntegerm>
    80003e38:	00004517          	auipc	a0,0x4
    80003e3c:	4d850513          	addi	a0,a0,1240 # 80008310 <_ZZ12printIntegermE6digits+0x230>
    80003e40:	fffff097          	auipc	ra,0xfffff
    80003e44:	9a8080e7          	jalr	-1624(ra) # 800027e8 <_Z12pprintStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003e48:	00000493          	li	s1,0
    80003e4c:	fa1ff06f          	j	80003dec <_ZL11workerBodyAPv+0x2c>
    pprintString("A finished!\n");
    80003e50:	00004517          	auipc	a0,0x4
    80003e54:	1e050513          	addi	a0,a0,480 # 80008030 <CONSOLE_STATUS+0x20>
    80003e58:	fffff097          	auipc	ra,0xfffff
    80003e5c:	990080e7          	jalr	-1648(ra) # 800027e8 <_Z12pprintStringPKc>
    finishedA = true;
    80003e60:	00100793          	li	a5,1
    80003e64:	00006717          	auipc	a4,0x6
    80003e68:	20f705a3          	sb	a5,523(a4) # 8000a06f <_ZL9finishedA>
}
    80003e6c:	01813083          	ld	ra,24(sp)
    80003e70:	01013403          	ld	s0,16(sp)
    80003e74:	00813483          	ld	s1,8(sp)
    80003e78:	00013903          	ld	s2,0(sp)
    80003e7c:	02010113          	addi	sp,sp,32
    80003e80:	00008067          	ret

0000000080003e84 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80003e84:	fd010113          	addi	sp,sp,-48
    80003e88:	02113423          	sd	ra,40(sp)
    80003e8c:	02813023          	sd	s0,32(sp)
    80003e90:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80003e94:	00000613          	li	a2,0
    80003e98:	00000597          	auipc	a1,0x0
    80003e9c:	f2858593          	addi	a1,a1,-216 # 80003dc0 <_ZL11workerBodyAPv>
    80003ea0:	fd040513          	addi	a0,s0,-48
    80003ea4:	ffffd097          	auipc	ra,0xffffd
    80003ea8:	37c080e7          	jalr	892(ra) # 80001220 <_Z13thread_createPP3TCBPFvPvES2_>
    pprintString("ThreadA created\n");
    80003eac:	00004517          	auipc	a0,0x4
    80003eb0:	37c50513          	addi	a0,a0,892 # 80008228 <_ZZ12printIntegermE6digits+0x148>
    80003eb4:	fffff097          	auipc	ra,0xfffff
    80003eb8:	934080e7          	jalr	-1740(ra) # 800027e8 <_Z12pprintStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80003ebc:	00000613          	li	a2,0
    80003ec0:	00000597          	auipc	a1,0x0
    80003ec4:	e3458593          	addi	a1,a1,-460 # 80003cf4 <_ZL11workerBodyBPv>
    80003ec8:	fd840513          	addi	a0,s0,-40
    80003ecc:	ffffd097          	auipc	ra,0xffffd
    80003ed0:	354080e7          	jalr	852(ra) # 80001220 <_Z13thread_createPP3TCBPFvPvES2_>
    pprintString("ThreadB created\n");
    80003ed4:	00004517          	auipc	a0,0x4
    80003ed8:	36c50513          	addi	a0,a0,876 # 80008240 <_ZZ12printIntegermE6digits+0x160>
    80003edc:	fffff097          	auipc	ra,0xfffff
    80003ee0:	90c080e7          	jalr	-1780(ra) # 800027e8 <_Z12pprintStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80003ee4:	00000613          	li	a2,0
    80003ee8:	00000597          	auipc	a1,0x0
    80003eec:	cac58593          	addi	a1,a1,-852 # 80003b94 <_ZL11workerBodyCPv>
    80003ef0:	fe040513          	addi	a0,s0,-32
    80003ef4:	ffffd097          	auipc	ra,0xffffd
    80003ef8:	32c080e7          	jalr	812(ra) # 80001220 <_Z13thread_createPP3TCBPFvPvES2_>
    pprintString("ThreadC created\n");
    80003efc:	00004517          	auipc	a0,0x4
    80003f00:	35c50513          	addi	a0,a0,860 # 80008258 <_ZZ12printIntegermE6digits+0x178>
    80003f04:	fffff097          	auipc	ra,0xfffff
    80003f08:	8e4080e7          	jalr	-1820(ra) # 800027e8 <_Z12pprintStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80003f0c:	00000613          	li	a2,0
    80003f10:	00000597          	auipc	a1,0x0
    80003f14:	b5458593          	addi	a1,a1,-1196 # 80003a64 <_ZL11workerBodyDPv>
    80003f18:	fe840513          	addi	a0,s0,-24
    80003f1c:	ffffd097          	auipc	ra,0xffffd
    80003f20:	304080e7          	jalr	772(ra) # 80001220 <_Z13thread_createPP3TCBPFvPvES2_>
    pprintString("ThreadD created\n");
    80003f24:	00004517          	auipc	a0,0x4
    80003f28:	34c50513          	addi	a0,a0,844 # 80008270 <_ZZ12printIntegermE6digits+0x190>
    80003f2c:	fffff097          	auipc	ra,0xfffff
    80003f30:	8bc080e7          	jalr	-1860(ra) # 800027e8 <_Z12pprintStringPKc>
    80003f34:	00c0006f          	j	80003f40 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80003f38:	ffffd097          	auipc	ra,0xffffd
    80003f3c:	34c080e7          	jalr	844(ra) # 80001284 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80003f40:	00006797          	auipc	a5,0x6
    80003f44:	12f7c783          	lbu	a5,303(a5) # 8000a06f <_ZL9finishedA>
    80003f48:	fe0788e3          	beqz	a5,80003f38 <_Z18Threads_C_API_testv+0xb4>
    80003f4c:	00006797          	auipc	a5,0x6
    80003f50:	1227c783          	lbu	a5,290(a5) # 8000a06e <_ZL9finishedB>
    80003f54:	fe0782e3          	beqz	a5,80003f38 <_Z18Threads_C_API_testv+0xb4>
    80003f58:	00006797          	auipc	a5,0x6
    80003f5c:	1157c783          	lbu	a5,277(a5) # 8000a06d <_ZL9finishedC>
    80003f60:	fc078ce3          	beqz	a5,80003f38 <_Z18Threads_C_API_testv+0xb4>
    80003f64:	00006797          	auipc	a5,0x6
    80003f68:	1087c783          	lbu	a5,264(a5) # 8000a06c <_ZL9finishedD>
    80003f6c:	fc0786e3          	beqz	a5,80003f38 <_Z18Threads_C_API_testv+0xb4>
    }

}
    80003f70:	02813083          	ld	ra,40(sp)
    80003f74:	02013403          	ld	s0,32(sp)
    80003f78:	03010113          	addi	sp,sp,48
    80003f7c:	00008067          	ret

0000000080003f80 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80003f80:	fd010113          	addi	sp,sp,-48
    80003f84:	02113423          	sd	ra,40(sp)
    80003f88:	02813023          	sd	s0,32(sp)
    80003f8c:	00913c23          	sd	s1,24(sp)
    80003f90:	01213823          	sd	s2,16(sp)
    80003f94:	01313423          	sd	s3,8(sp)
    80003f98:	03010413          	addi	s0,sp,48
    80003f9c:	00050993          	mv	s3,a0
    80003fa0:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80003fa4:	00000913          	li	s2,0
    80003fa8:	00c0006f          	j	80003fb4 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = __getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80003fac:	ffffe097          	auipc	ra,0xffffe
    80003fb0:	e50080e7          	jalr	-432(ra) # 80001dfc <_ZN6Thread8dispatchEv>
    while ((key = __getc()) != 0x1b) {
    80003fb4:	00004097          	auipc	ra,0x4
    80003fb8:	924080e7          	jalr	-1756(ra) # 800078d8 <__getc>
    80003fbc:	0005059b          	sext.w	a1,a0
    80003fc0:	01b00793          	li	a5,27
    80003fc4:	02f58a63          	beq	a1,a5,80003ff8 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    80003fc8:	0084b503          	ld	a0,8(s1)
    80003fcc:	00001097          	auipc	ra,0x1
    80003fd0:	c64080e7          	jalr	-924(ra) # 80004c30 <_ZN9BufferCPP3putEi>
        i++;
    80003fd4:	0019071b          	addiw	a4,s2,1
    80003fd8:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003fdc:	0004a683          	lw	a3,0(s1)
    80003fe0:	0026979b          	slliw	a5,a3,0x2
    80003fe4:	00d787bb          	addw	a5,a5,a3
    80003fe8:	0017979b          	slliw	a5,a5,0x1
    80003fec:	02f767bb          	remw	a5,a4,a5
    80003ff0:	fc0792e3          	bnez	a5,80003fb4 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80003ff4:	fb9ff06f          	j	80003fac <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80003ff8:	00100793          	li	a5,1
    80003ffc:	00006717          	auipc	a4,0x6
    80004000:	06f72a23          	sw	a5,116(a4) # 8000a070 <_ZL9threadEnd>
    td->buffer->put('!');
    80004004:	0209b783          	ld	a5,32(s3)
    80004008:	02100593          	li	a1,33
    8000400c:	0087b503          	ld	a0,8(a5)
    80004010:	00001097          	auipc	ra,0x1
    80004014:	c20080e7          	jalr	-992(ra) # 80004c30 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80004018:	0104b503          	ld	a0,16(s1)
    8000401c:	ffffe097          	auipc	ra,0xffffe
    80004020:	ef0080e7          	jalr	-272(ra) # 80001f0c <_ZN9Semaphore6signalEv>
}
    80004024:	02813083          	ld	ra,40(sp)
    80004028:	02013403          	ld	s0,32(sp)
    8000402c:	01813483          	ld	s1,24(sp)
    80004030:	01013903          	ld	s2,16(sp)
    80004034:	00813983          	ld	s3,8(sp)
    80004038:	03010113          	addi	sp,sp,48
    8000403c:	00008067          	ret

0000000080004040 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    80004040:	fe010113          	addi	sp,sp,-32
    80004044:	00113c23          	sd	ra,24(sp)
    80004048:	00813823          	sd	s0,16(sp)
    8000404c:	00913423          	sd	s1,8(sp)
    80004050:	01213023          	sd	s2,0(sp)
    80004054:	02010413          	addi	s0,sp,32
    80004058:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    8000405c:	00000913          	li	s2,0
    80004060:	00c0006f          	j	8000406c <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004064:	ffffe097          	auipc	ra,0xffffe
    80004068:	d98080e7          	jalr	-616(ra) # 80001dfc <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    8000406c:	00006797          	auipc	a5,0x6
    80004070:	0047a783          	lw	a5,4(a5) # 8000a070 <_ZL9threadEnd>
    80004074:	02079e63          	bnez	a5,800040b0 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    80004078:	0004a583          	lw	a1,0(s1)
    8000407c:	0305859b          	addiw	a1,a1,48
    80004080:	0084b503          	ld	a0,8(s1)
    80004084:	00001097          	auipc	ra,0x1
    80004088:	bac080e7          	jalr	-1108(ra) # 80004c30 <_ZN9BufferCPP3putEi>
        i++;
    8000408c:	0019071b          	addiw	a4,s2,1
    80004090:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004094:	0004a683          	lw	a3,0(s1)
    80004098:	0026979b          	slliw	a5,a3,0x2
    8000409c:	00d787bb          	addw	a5,a5,a3
    800040a0:	0017979b          	slliw	a5,a5,0x1
    800040a4:	02f767bb          	remw	a5,a4,a5
    800040a8:	fc0792e3          	bnez	a5,8000406c <_ZN12ProducerSync8producerEPv+0x2c>
    800040ac:	fb9ff06f          	j	80004064 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    800040b0:	0104b503          	ld	a0,16(s1)
    800040b4:	ffffe097          	auipc	ra,0xffffe
    800040b8:	e58080e7          	jalr	-424(ra) # 80001f0c <_ZN9Semaphore6signalEv>
}
    800040bc:	01813083          	ld	ra,24(sp)
    800040c0:	01013403          	ld	s0,16(sp)
    800040c4:	00813483          	ld	s1,8(sp)
    800040c8:	00013903          	ld	s2,0(sp)
    800040cc:	02010113          	addi	sp,sp,32
    800040d0:	00008067          	ret

00000000800040d4 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    800040d4:	fd010113          	addi	sp,sp,-48
    800040d8:	02113423          	sd	ra,40(sp)
    800040dc:	02813023          	sd	s0,32(sp)
    800040e0:	00913c23          	sd	s1,24(sp)
    800040e4:	01213823          	sd	s2,16(sp)
    800040e8:	01313423          	sd	s3,8(sp)
    800040ec:	01413023          	sd	s4,0(sp)
    800040f0:	03010413          	addi	s0,sp,48
    800040f4:	00050993          	mv	s3,a0
    800040f8:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800040fc:	00000a13          	li	s4,0
    80004100:	01c0006f          	j	8000411c <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        __putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80004104:	ffffe097          	auipc	ra,0xffffe
    80004108:	cf8080e7          	jalr	-776(ra) # 80001dfc <_ZN6Thread8dispatchEv>
    8000410c:	0500006f          	j	8000415c <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            __putc('\n');
    80004110:	00a00513          	li	a0,10
    80004114:	00003097          	auipc	ra,0x3
    80004118:	788080e7          	jalr	1928(ra) # 8000789c <__putc>
    while (!threadEnd) {
    8000411c:	00006797          	auipc	a5,0x6
    80004120:	f547a783          	lw	a5,-172(a5) # 8000a070 <_ZL9threadEnd>
    80004124:	06079263          	bnez	a5,80004188 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    80004128:	00893503          	ld	a0,8(s2)
    8000412c:	00001097          	auipc	ra,0x1
    80004130:	b94080e7          	jalr	-1132(ra) # 80004cc0 <_ZN9BufferCPP3getEv>
        i++;
    80004134:	001a049b          	addiw	s1,s4,1
    80004138:	00048a1b          	sext.w	s4,s1
        __putc(key);
    8000413c:	0ff57513          	andi	a0,a0,255
    80004140:	00003097          	auipc	ra,0x3
    80004144:	75c080e7          	jalr	1884(ra) # 8000789c <__putc>
        if (i % (5 * data->id) == 0) {
    80004148:	00092703          	lw	a4,0(s2)
    8000414c:	0027179b          	slliw	a5,a4,0x2
    80004150:	00e787bb          	addw	a5,a5,a4
    80004154:	02f4e7bb          	remw	a5,s1,a5
    80004158:	fa0786e3          	beqz	a5,80004104 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    8000415c:	05000793          	li	a5,80
    80004160:	02f4e4bb          	remw	s1,s1,a5
    80004164:	fa049ce3          	bnez	s1,8000411c <_ZN12ConsumerSync8consumerEPv+0x48>
    80004168:	fa9ff06f          	j	80004110 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    8000416c:	0209b783          	ld	a5,32(s3)
    80004170:	0087b503          	ld	a0,8(a5)
    80004174:	00001097          	auipc	ra,0x1
    80004178:	b4c080e7          	jalr	-1204(ra) # 80004cc0 <_ZN9BufferCPP3getEv>
        __putc(key);
    8000417c:	0ff57513          	andi	a0,a0,255
    80004180:	00003097          	auipc	ra,0x3
    80004184:	71c080e7          	jalr	1820(ra) # 8000789c <__putc>
    while (td->buffer->getCnt() > 0) {
    80004188:	0209b783          	ld	a5,32(s3)
    8000418c:	0087b503          	ld	a0,8(a5)
    80004190:	00001097          	auipc	ra,0x1
    80004194:	bbc080e7          	jalr	-1092(ra) # 80004d4c <_ZN9BufferCPP6getCntEv>
    80004198:	fca04ae3          	bgtz	a0,8000416c <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    8000419c:	01093503          	ld	a0,16(s2)
    800041a0:	ffffe097          	auipc	ra,0xffffe
    800041a4:	d6c080e7          	jalr	-660(ra) # 80001f0c <_ZN9Semaphore6signalEv>
}
    800041a8:	02813083          	ld	ra,40(sp)
    800041ac:	02013403          	ld	s0,32(sp)
    800041b0:	01813483          	ld	s1,24(sp)
    800041b4:	01013903          	ld	s2,16(sp)
    800041b8:	00813983          	ld	s3,8(sp)
    800041bc:	00013a03          	ld	s4,0(sp)
    800041c0:	03010113          	addi	sp,sp,48
    800041c4:	00008067          	ret

00000000800041c8 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    800041c8:	f8010113          	addi	sp,sp,-128
    800041cc:	06113c23          	sd	ra,120(sp)
    800041d0:	06813823          	sd	s0,112(sp)
    800041d4:	06913423          	sd	s1,104(sp)
    800041d8:	07213023          	sd	s2,96(sp)
    800041dc:	05313c23          	sd	s3,88(sp)
    800041e0:	05413823          	sd	s4,80(sp)
    800041e4:	05513423          	sd	s5,72(sp)
    800041e8:	05613023          	sd	s6,64(sp)
    800041ec:	03713c23          	sd	s7,56(sp)
    800041f0:	03813823          	sd	s8,48(sp)
    800041f4:	03913423          	sd	s9,40(sp)
    800041f8:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    800041fc:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80004200:	00004517          	auipc	a0,0x4
    80004204:	ef050513          	addi	a0,a0,-272 # 800080f0 <_ZZ12printIntegermE6digits+0x10>
    80004208:	00000097          	auipc	ra,0x0
    8000420c:	604080e7          	jalr	1540(ra) # 8000480c <_Z11printStringPKc>
    getString(input, 30);
    80004210:	01e00593          	li	a1,30
    80004214:	f8040493          	addi	s1,s0,-128
    80004218:	00048513          	mv	a0,s1
    8000421c:	00000097          	auipc	ra,0x0
    80004220:	678080e7          	jalr	1656(ra) # 80004894 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004224:	00048513          	mv	a0,s1
    80004228:	00000097          	auipc	ra,0x0
    8000422c:	744080e7          	jalr	1860(ra) # 8000496c <_Z11stringToIntPKc>
    80004230:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80004234:	00004517          	auipc	a0,0x4
    80004238:	edc50513          	addi	a0,a0,-292 # 80008110 <_ZZ12printIntegermE6digits+0x30>
    8000423c:	00000097          	auipc	ra,0x0
    80004240:	5d0080e7          	jalr	1488(ra) # 8000480c <_Z11printStringPKc>
    getString(input, 30);
    80004244:	01e00593          	li	a1,30
    80004248:	00048513          	mv	a0,s1
    8000424c:	00000097          	auipc	ra,0x0
    80004250:	648080e7          	jalr	1608(ra) # 80004894 <_Z9getStringPci>
    n = stringToInt(input);
    80004254:	00048513          	mv	a0,s1
    80004258:	00000097          	auipc	ra,0x0
    8000425c:	714080e7          	jalr	1812(ra) # 8000496c <_Z11stringToIntPKc>
    80004260:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80004264:	00004517          	auipc	a0,0x4
    80004268:	ecc50513          	addi	a0,a0,-308 # 80008130 <_ZZ12printIntegermE6digits+0x50>
    8000426c:	00000097          	auipc	ra,0x0
    80004270:	5a0080e7          	jalr	1440(ra) # 8000480c <_Z11printStringPKc>
    80004274:	00000613          	li	a2,0
    80004278:	00a00593          	li	a1,10
    8000427c:	00090513          	mv	a0,s2
    80004280:	00000097          	auipc	ra,0x0
    80004284:	73c080e7          	jalr	1852(ra) # 800049bc <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80004288:	00004517          	auipc	a0,0x4
    8000428c:	ec050513          	addi	a0,a0,-320 # 80008148 <_ZZ12printIntegermE6digits+0x68>
    80004290:	00000097          	auipc	ra,0x0
    80004294:	57c080e7          	jalr	1404(ra) # 8000480c <_Z11printStringPKc>
    80004298:	00000613          	li	a2,0
    8000429c:	00a00593          	li	a1,10
    800042a0:	00048513          	mv	a0,s1
    800042a4:	00000097          	auipc	ra,0x0
    800042a8:	718080e7          	jalr	1816(ra) # 800049bc <_Z8printIntiii>
    printString(".\n");
    800042ac:	00004517          	auipc	a0,0x4
    800042b0:	eb450513          	addi	a0,a0,-332 # 80008160 <_ZZ12printIntegermE6digits+0x80>
    800042b4:	00000097          	auipc	ra,0x0
    800042b8:	558080e7          	jalr	1368(ra) # 8000480c <_Z11printStringPKc>
    if(threadNum > n) {
    800042bc:	0324c463          	blt	s1,s2,800042e4 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    800042c0:	03205c63          	blez	s2,800042f8 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    800042c4:	03800513          	li	a0,56
    800042c8:	ffffe097          	auipc	ra,0xffffe
    800042cc:	9d4080e7          	jalr	-1580(ra) # 80001c9c <_Znwm>
    800042d0:	00050a93          	mv	s5,a0
    800042d4:	00048593          	mv	a1,s1
    800042d8:	00001097          	auipc	ra,0x1
    800042dc:	804080e7          	jalr	-2044(ra) # 80004adc <_ZN9BufferCPPC1Ei>
    800042e0:	0300006f          	j	80004310 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800042e4:	00004517          	auipc	a0,0x4
    800042e8:	e8450513          	addi	a0,a0,-380 # 80008168 <_ZZ12printIntegermE6digits+0x88>
    800042ec:	00000097          	auipc	ra,0x0
    800042f0:	520080e7          	jalr	1312(ra) # 8000480c <_Z11printStringPKc>
        return;
    800042f4:	0140006f          	j	80004308 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800042f8:	00004517          	auipc	a0,0x4
    800042fc:	eb050513          	addi	a0,a0,-336 # 800081a8 <_ZZ12printIntegermE6digits+0xc8>
    80004300:	00000097          	auipc	ra,0x0
    80004304:	50c080e7          	jalr	1292(ra) # 8000480c <_Z11printStringPKc>
        return;
    80004308:	000b8113          	mv	sp,s7
    8000430c:	2380006f          	j	80004544 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    80004310:	01000513          	li	a0,16
    80004314:	ffffe097          	auipc	ra,0xffffe
    80004318:	988080e7          	jalr	-1656(ra) # 80001c9c <_Znwm>
    8000431c:	00050493          	mv	s1,a0
    80004320:	00000593          	li	a1,0
    80004324:	ffffe097          	auipc	ra,0xffffe
    80004328:	b84080e7          	jalr	-1148(ra) # 80001ea8 <_ZN9SemaphoreC1Ej>
    8000432c:	00006797          	auipc	a5,0x6
    80004330:	d497b623          	sd	s1,-692(a5) # 8000a078 <_ZL10waitForAll>
    Thread* threads[threadNum];
    80004334:	00391793          	slli	a5,s2,0x3
    80004338:	00f78793          	addi	a5,a5,15
    8000433c:	ff07f793          	andi	a5,a5,-16
    80004340:	40f10133          	sub	sp,sp,a5
    80004344:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80004348:	0019071b          	addiw	a4,s2,1
    8000434c:	00171793          	slli	a5,a4,0x1
    80004350:	00e787b3          	add	a5,a5,a4
    80004354:	00379793          	slli	a5,a5,0x3
    80004358:	00f78793          	addi	a5,a5,15
    8000435c:	ff07f793          	andi	a5,a5,-16
    80004360:	40f10133          	sub	sp,sp,a5
    80004364:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80004368:	00191c13          	slli	s8,s2,0x1
    8000436c:	012c07b3          	add	a5,s8,s2
    80004370:	00379793          	slli	a5,a5,0x3
    80004374:	00fa07b3          	add	a5,s4,a5
    80004378:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    8000437c:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80004380:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    80004384:	02800513          	li	a0,40
    80004388:	ffffe097          	auipc	ra,0xffffe
    8000438c:	914080e7          	jalr	-1772(ra) # 80001c9c <_Znwm>
    80004390:	00050b13          	mv	s6,a0
    80004394:	012c0c33          	add	s8,s8,s2
    80004398:	003c1c13          	slli	s8,s8,0x3
    8000439c:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    800043a0:	ffffe097          	auipc	ra,0xffffe
    800043a4:	a84080e7          	jalr	-1404(ra) # 80001e24 <_ZN6ThreadC1Ev>
    800043a8:	00006797          	auipc	a5,0x6
    800043ac:	ba878793          	addi	a5,a5,-1112 # 80009f50 <_ZTV12ConsumerSync+0x10>
    800043b0:	00fb3023          	sd	a5,0(s6)
    800043b4:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    800043b8:	000b0513          	mv	a0,s6
    800043bc:	ffffe097          	auipc	ra,0xffffe
    800043c0:	a98080e7          	jalr	-1384(ra) # 80001e54 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    800043c4:	00000493          	li	s1,0
    800043c8:	0380006f          	j	80004400 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    800043cc:	00006797          	auipc	a5,0x6
    800043d0:	b5c78793          	addi	a5,a5,-1188 # 80009f28 <_ZTV12ProducerSync+0x10>
    800043d4:	00fcb023          	sd	a5,0(s9)
    800043d8:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    800043dc:	00349793          	slli	a5,s1,0x3
    800043e0:	00f987b3          	add	a5,s3,a5
    800043e4:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    800043e8:	00349793          	slli	a5,s1,0x3
    800043ec:	00f987b3          	add	a5,s3,a5
    800043f0:	0007b503          	ld	a0,0(a5)
    800043f4:	ffffe097          	auipc	ra,0xffffe
    800043f8:	a60080e7          	jalr	-1440(ra) # 80001e54 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    800043fc:	0014849b          	addiw	s1,s1,1
    80004400:	0b24d063          	bge	s1,s2,800044a0 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    80004404:	00149793          	slli	a5,s1,0x1
    80004408:	009787b3          	add	a5,a5,s1
    8000440c:	00379793          	slli	a5,a5,0x3
    80004410:	00fa07b3          	add	a5,s4,a5
    80004414:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80004418:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    8000441c:	00006717          	auipc	a4,0x6
    80004420:	c5c73703          	ld	a4,-932(a4) # 8000a078 <_ZL10waitForAll>
    80004424:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80004428:	02905863          	blez	s1,80004458 <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    8000442c:	02800513          	li	a0,40
    80004430:	ffffe097          	auipc	ra,0xffffe
    80004434:	86c080e7          	jalr	-1940(ra) # 80001c9c <_Znwm>
    80004438:	00050c93          	mv	s9,a0
    8000443c:	00149c13          	slli	s8,s1,0x1
    80004440:	009c0c33          	add	s8,s8,s1
    80004444:	003c1c13          	slli	s8,s8,0x3
    80004448:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    8000444c:	ffffe097          	auipc	ra,0xffffe
    80004450:	9d8080e7          	jalr	-1576(ra) # 80001e24 <_ZN6ThreadC1Ev>
    80004454:	f79ff06f          	j	800043cc <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    80004458:	02800513          	li	a0,40
    8000445c:	ffffe097          	auipc	ra,0xffffe
    80004460:	840080e7          	jalr	-1984(ra) # 80001c9c <_Znwm>
    80004464:	00050c93          	mv	s9,a0
    80004468:	00149c13          	slli	s8,s1,0x1
    8000446c:	009c0c33          	add	s8,s8,s1
    80004470:	003c1c13          	slli	s8,s8,0x3
    80004474:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80004478:	ffffe097          	auipc	ra,0xffffe
    8000447c:	9ac080e7          	jalr	-1620(ra) # 80001e24 <_ZN6ThreadC1Ev>
    80004480:	00006797          	auipc	a5,0x6
    80004484:	a8078793          	addi	a5,a5,-1408 # 80009f00 <_ZTV16ProducerKeyboard+0x10>
    80004488:	00fcb023          	sd	a5,0(s9)
    8000448c:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    80004490:	00349793          	slli	a5,s1,0x3
    80004494:	00f987b3          	add	a5,s3,a5
    80004498:	0197b023          	sd	s9,0(a5)
    8000449c:	f4dff06f          	j	800043e8 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    800044a0:	ffffe097          	auipc	ra,0xffffe
    800044a4:	95c080e7          	jalr	-1700(ra) # 80001dfc <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    800044a8:	00000493          	li	s1,0
    800044ac:	00994e63          	blt	s2,s1,800044c8 <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    800044b0:	00006517          	auipc	a0,0x6
    800044b4:	bc853503          	ld	a0,-1080(a0) # 8000a078 <_ZL10waitForAll>
    800044b8:	ffffe097          	auipc	ra,0xffffe
    800044bc:	a28080e7          	jalr	-1496(ra) # 80001ee0 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    800044c0:	0014849b          	addiw	s1,s1,1
    800044c4:	fe9ff06f          	j	800044ac <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    800044c8:	00000493          	li	s1,0
    800044cc:	0080006f          	j	800044d4 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    800044d0:	0014849b          	addiw	s1,s1,1
    800044d4:	0324d263          	bge	s1,s2,800044f8 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    800044d8:	00349793          	slli	a5,s1,0x3
    800044dc:	00f987b3          	add	a5,s3,a5
    800044e0:	0007b503          	ld	a0,0(a5)
    800044e4:	fe0506e3          	beqz	a0,800044d0 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    800044e8:	00053783          	ld	a5,0(a0)
    800044ec:	0087b783          	ld	a5,8(a5)
    800044f0:	000780e7          	jalr	a5
    800044f4:	fddff06f          	j	800044d0 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    800044f8:	000b0a63          	beqz	s6,8000450c <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    800044fc:	000b3783          	ld	a5,0(s6)
    80004500:	0087b783          	ld	a5,8(a5)
    80004504:	000b0513          	mv	a0,s6
    80004508:	000780e7          	jalr	a5
    delete waitForAll;
    8000450c:	00006517          	auipc	a0,0x6
    80004510:	b6c53503          	ld	a0,-1172(a0) # 8000a078 <_ZL10waitForAll>
    80004514:	00050863          	beqz	a0,80004524 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    80004518:	00053783          	ld	a5,0(a0)
    8000451c:	0087b783          	ld	a5,8(a5)
    80004520:	000780e7          	jalr	a5
    delete buffer;
    80004524:	000a8e63          	beqz	s5,80004540 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    80004528:	000a8513          	mv	a0,s5
    8000452c:	00001097          	auipc	ra,0x1
    80004530:	8a8080e7          	jalr	-1880(ra) # 80004dd4 <_ZN9BufferCPPD1Ev>
    80004534:	000a8513          	mv	a0,s5
    80004538:	ffffd097          	auipc	ra,0xffffd
    8000453c:	78c080e7          	jalr	1932(ra) # 80001cc4 <_ZdlPv>
    80004540:	000b8113          	mv	sp,s7

}
    80004544:	f8040113          	addi	sp,s0,-128
    80004548:	07813083          	ld	ra,120(sp)
    8000454c:	07013403          	ld	s0,112(sp)
    80004550:	06813483          	ld	s1,104(sp)
    80004554:	06013903          	ld	s2,96(sp)
    80004558:	05813983          	ld	s3,88(sp)
    8000455c:	05013a03          	ld	s4,80(sp)
    80004560:	04813a83          	ld	s5,72(sp)
    80004564:	04013b03          	ld	s6,64(sp)
    80004568:	03813b83          	ld	s7,56(sp)
    8000456c:	03013c03          	ld	s8,48(sp)
    80004570:	02813c83          	ld	s9,40(sp)
    80004574:	08010113          	addi	sp,sp,128
    80004578:	00008067          	ret
    8000457c:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80004580:	000a8513          	mv	a0,s5
    80004584:	ffffd097          	auipc	ra,0xffffd
    80004588:	740080e7          	jalr	1856(ra) # 80001cc4 <_ZdlPv>
    8000458c:	00048513          	mv	a0,s1
    80004590:	00007097          	auipc	ra,0x7
    80004594:	bc8080e7          	jalr	-1080(ra) # 8000b158 <_Unwind_Resume>
    80004598:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    8000459c:	00048513          	mv	a0,s1
    800045a0:	ffffd097          	auipc	ra,0xffffd
    800045a4:	724080e7          	jalr	1828(ra) # 80001cc4 <_ZdlPv>
    800045a8:	00090513          	mv	a0,s2
    800045ac:	00007097          	auipc	ra,0x7
    800045b0:	bac080e7          	jalr	-1108(ra) # 8000b158 <_Unwind_Resume>
    800045b4:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    800045b8:	000b0513          	mv	a0,s6
    800045bc:	ffffd097          	auipc	ra,0xffffd
    800045c0:	708080e7          	jalr	1800(ra) # 80001cc4 <_ZdlPv>
    800045c4:	00048513          	mv	a0,s1
    800045c8:	00007097          	auipc	ra,0x7
    800045cc:	b90080e7          	jalr	-1136(ra) # 8000b158 <_Unwind_Resume>
    800045d0:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    800045d4:	000c8513          	mv	a0,s9
    800045d8:	ffffd097          	auipc	ra,0xffffd
    800045dc:	6ec080e7          	jalr	1772(ra) # 80001cc4 <_ZdlPv>
    800045e0:	00048513          	mv	a0,s1
    800045e4:	00007097          	auipc	ra,0x7
    800045e8:	b74080e7          	jalr	-1164(ra) # 8000b158 <_Unwind_Resume>
    800045ec:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    800045f0:	000c8513          	mv	a0,s9
    800045f4:	ffffd097          	auipc	ra,0xffffd
    800045f8:	6d0080e7          	jalr	1744(ra) # 80001cc4 <_ZdlPv>
    800045fc:	00048513          	mv	a0,s1
    80004600:	00007097          	auipc	ra,0x7
    80004604:	b58080e7          	jalr	-1192(ra) # 8000b158 <_Unwind_Resume>

0000000080004608 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80004608:	ff010113          	addi	sp,sp,-16
    8000460c:	00113423          	sd	ra,8(sp)
    80004610:	00813023          	sd	s0,0(sp)
    80004614:	01010413          	addi	s0,sp,16
    80004618:	00006797          	auipc	a5,0x6
    8000461c:	93878793          	addi	a5,a5,-1736 # 80009f50 <_ZTV12ConsumerSync+0x10>
    80004620:	00f53023          	sd	a5,0(a0)
    80004624:	ffffd097          	auipc	ra,0xffffd
    80004628:	6c8080e7          	jalr	1736(ra) # 80001cec <_ZN6ThreadD1Ev>
    8000462c:	00813083          	ld	ra,8(sp)
    80004630:	00013403          	ld	s0,0(sp)
    80004634:	01010113          	addi	sp,sp,16
    80004638:	00008067          	ret

000000008000463c <_ZN12ConsumerSyncD0Ev>:
    8000463c:	fe010113          	addi	sp,sp,-32
    80004640:	00113c23          	sd	ra,24(sp)
    80004644:	00813823          	sd	s0,16(sp)
    80004648:	00913423          	sd	s1,8(sp)
    8000464c:	02010413          	addi	s0,sp,32
    80004650:	00050493          	mv	s1,a0
    80004654:	00006797          	auipc	a5,0x6
    80004658:	8fc78793          	addi	a5,a5,-1796 # 80009f50 <_ZTV12ConsumerSync+0x10>
    8000465c:	00f53023          	sd	a5,0(a0)
    80004660:	ffffd097          	auipc	ra,0xffffd
    80004664:	68c080e7          	jalr	1676(ra) # 80001cec <_ZN6ThreadD1Ev>
    80004668:	00048513          	mv	a0,s1
    8000466c:	ffffd097          	auipc	ra,0xffffd
    80004670:	658080e7          	jalr	1624(ra) # 80001cc4 <_ZdlPv>
    80004674:	01813083          	ld	ra,24(sp)
    80004678:	01013403          	ld	s0,16(sp)
    8000467c:	00813483          	ld	s1,8(sp)
    80004680:	02010113          	addi	sp,sp,32
    80004684:	00008067          	ret

0000000080004688 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    80004688:	ff010113          	addi	sp,sp,-16
    8000468c:	00113423          	sd	ra,8(sp)
    80004690:	00813023          	sd	s0,0(sp)
    80004694:	01010413          	addi	s0,sp,16
    80004698:	00006797          	auipc	a5,0x6
    8000469c:	89078793          	addi	a5,a5,-1904 # 80009f28 <_ZTV12ProducerSync+0x10>
    800046a0:	00f53023          	sd	a5,0(a0)
    800046a4:	ffffd097          	auipc	ra,0xffffd
    800046a8:	648080e7          	jalr	1608(ra) # 80001cec <_ZN6ThreadD1Ev>
    800046ac:	00813083          	ld	ra,8(sp)
    800046b0:	00013403          	ld	s0,0(sp)
    800046b4:	01010113          	addi	sp,sp,16
    800046b8:	00008067          	ret

00000000800046bc <_ZN12ProducerSyncD0Ev>:
    800046bc:	fe010113          	addi	sp,sp,-32
    800046c0:	00113c23          	sd	ra,24(sp)
    800046c4:	00813823          	sd	s0,16(sp)
    800046c8:	00913423          	sd	s1,8(sp)
    800046cc:	02010413          	addi	s0,sp,32
    800046d0:	00050493          	mv	s1,a0
    800046d4:	00006797          	auipc	a5,0x6
    800046d8:	85478793          	addi	a5,a5,-1964 # 80009f28 <_ZTV12ProducerSync+0x10>
    800046dc:	00f53023          	sd	a5,0(a0)
    800046e0:	ffffd097          	auipc	ra,0xffffd
    800046e4:	60c080e7          	jalr	1548(ra) # 80001cec <_ZN6ThreadD1Ev>
    800046e8:	00048513          	mv	a0,s1
    800046ec:	ffffd097          	auipc	ra,0xffffd
    800046f0:	5d8080e7          	jalr	1496(ra) # 80001cc4 <_ZdlPv>
    800046f4:	01813083          	ld	ra,24(sp)
    800046f8:	01013403          	ld	s0,16(sp)
    800046fc:	00813483          	ld	s1,8(sp)
    80004700:	02010113          	addi	sp,sp,32
    80004704:	00008067          	ret

0000000080004708 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80004708:	ff010113          	addi	sp,sp,-16
    8000470c:	00113423          	sd	ra,8(sp)
    80004710:	00813023          	sd	s0,0(sp)
    80004714:	01010413          	addi	s0,sp,16
    80004718:	00005797          	auipc	a5,0x5
    8000471c:	7e878793          	addi	a5,a5,2024 # 80009f00 <_ZTV16ProducerKeyboard+0x10>
    80004720:	00f53023          	sd	a5,0(a0)
    80004724:	ffffd097          	auipc	ra,0xffffd
    80004728:	5c8080e7          	jalr	1480(ra) # 80001cec <_ZN6ThreadD1Ev>
    8000472c:	00813083          	ld	ra,8(sp)
    80004730:	00013403          	ld	s0,0(sp)
    80004734:	01010113          	addi	sp,sp,16
    80004738:	00008067          	ret

000000008000473c <_ZN16ProducerKeyboardD0Ev>:
    8000473c:	fe010113          	addi	sp,sp,-32
    80004740:	00113c23          	sd	ra,24(sp)
    80004744:	00813823          	sd	s0,16(sp)
    80004748:	00913423          	sd	s1,8(sp)
    8000474c:	02010413          	addi	s0,sp,32
    80004750:	00050493          	mv	s1,a0
    80004754:	00005797          	auipc	a5,0x5
    80004758:	7ac78793          	addi	a5,a5,1964 # 80009f00 <_ZTV16ProducerKeyboard+0x10>
    8000475c:	00f53023          	sd	a5,0(a0)
    80004760:	ffffd097          	auipc	ra,0xffffd
    80004764:	58c080e7          	jalr	1420(ra) # 80001cec <_ZN6ThreadD1Ev>
    80004768:	00048513          	mv	a0,s1
    8000476c:	ffffd097          	auipc	ra,0xffffd
    80004770:	558080e7          	jalr	1368(ra) # 80001cc4 <_ZdlPv>
    80004774:	01813083          	ld	ra,24(sp)
    80004778:	01013403          	ld	s0,16(sp)
    8000477c:	00813483          	ld	s1,8(sp)
    80004780:	02010113          	addi	sp,sp,32
    80004784:	00008067          	ret

0000000080004788 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80004788:	ff010113          	addi	sp,sp,-16
    8000478c:	00113423          	sd	ra,8(sp)
    80004790:	00813023          	sd	s0,0(sp)
    80004794:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80004798:	02053583          	ld	a1,32(a0)
    8000479c:	fffff097          	auipc	ra,0xfffff
    800047a0:	7e4080e7          	jalr	2020(ra) # 80003f80 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    800047a4:	00813083          	ld	ra,8(sp)
    800047a8:	00013403          	ld	s0,0(sp)
    800047ac:	01010113          	addi	sp,sp,16
    800047b0:	00008067          	ret

00000000800047b4 <_ZN12ProducerSync3runEv>:
    void run() override {
    800047b4:	ff010113          	addi	sp,sp,-16
    800047b8:	00113423          	sd	ra,8(sp)
    800047bc:	00813023          	sd	s0,0(sp)
    800047c0:	01010413          	addi	s0,sp,16
        producer(td);
    800047c4:	02053583          	ld	a1,32(a0)
    800047c8:	00000097          	auipc	ra,0x0
    800047cc:	878080e7          	jalr	-1928(ra) # 80004040 <_ZN12ProducerSync8producerEPv>
    }
    800047d0:	00813083          	ld	ra,8(sp)
    800047d4:	00013403          	ld	s0,0(sp)
    800047d8:	01010113          	addi	sp,sp,16
    800047dc:	00008067          	ret

00000000800047e0 <_ZN12ConsumerSync3runEv>:
    void run() override {
    800047e0:	ff010113          	addi	sp,sp,-16
    800047e4:	00113423          	sd	ra,8(sp)
    800047e8:	00813023          	sd	s0,0(sp)
    800047ec:	01010413          	addi	s0,sp,16
        consumer(td);
    800047f0:	02053583          	ld	a1,32(a0)
    800047f4:	00000097          	auipc	ra,0x0
    800047f8:	8e0080e7          	jalr	-1824(ra) # 800040d4 <_ZN12ConsumerSync8consumerEPv>
    }
    800047fc:	00813083          	ld	ra,8(sp)
    80004800:	00013403          	ld	s0,0(sp)
    80004804:	01010113          	addi	sp,sp,16
    80004808:	00008067          	ret

000000008000480c <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    8000480c:	fe010113          	addi	sp,sp,-32
    80004810:	00113c23          	sd	ra,24(sp)
    80004814:	00813823          	sd	s0,16(sp)
    80004818:	00913423          	sd	s1,8(sp)
    8000481c:	02010413          	addi	s0,sp,32
    80004820:	00050493          	mv	s1,a0
    LOCK();
    80004824:	00100613          	li	a2,1
    80004828:	00000593          	li	a1,0
    8000482c:	00006517          	auipc	a0,0x6
    80004830:	85450513          	addi	a0,a0,-1964 # 8000a080 <lockPrint>
    80004834:	ffffd097          	auipc	ra,0xffffd
    80004838:	900080e7          	jalr	-1792(ra) # 80001134 <copy_and_swap>
    8000483c:	00050863          	beqz	a0,8000484c <_Z11printStringPKc+0x40>
    80004840:	ffffd097          	auipc	ra,0xffffd
    80004844:	a44080e7          	jalr	-1468(ra) # 80001284 <_Z15thread_dispatchv>
    80004848:	fddff06f          	j	80004824 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    8000484c:	0004c503          	lbu	a0,0(s1)
    80004850:	00050a63          	beqz	a0,80004864 <_Z11printStringPKc+0x58>
    {
        __putc(*string);
    80004854:	00003097          	auipc	ra,0x3
    80004858:	048080e7          	jalr	72(ra) # 8000789c <__putc>
        string++;
    8000485c:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80004860:	fedff06f          	j	8000484c <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80004864:	00000613          	li	a2,0
    80004868:	00100593          	li	a1,1
    8000486c:	00006517          	auipc	a0,0x6
    80004870:	81450513          	addi	a0,a0,-2028 # 8000a080 <lockPrint>
    80004874:	ffffd097          	auipc	ra,0xffffd
    80004878:	8c0080e7          	jalr	-1856(ra) # 80001134 <copy_and_swap>
    8000487c:	fe0514e3          	bnez	a0,80004864 <_Z11printStringPKc+0x58>
}
    80004880:	01813083          	ld	ra,24(sp)
    80004884:	01013403          	ld	s0,16(sp)
    80004888:	00813483          	ld	s1,8(sp)
    8000488c:	02010113          	addi	sp,sp,32
    80004890:	00008067          	ret

0000000080004894 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80004894:	fd010113          	addi	sp,sp,-48
    80004898:	02113423          	sd	ra,40(sp)
    8000489c:	02813023          	sd	s0,32(sp)
    800048a0:	00913c23          	sd	s1,24(sp)
    800048a4:	01213823          	sd	s2,16(sp)
    800048a8:	01313423          	sd	s3,8(sp)
    800048ac:	01413023          	sd	s4,0(sp)
    800048b0:	03010413          	addi	s0,sp,48
    800048b4:	00050993          	mv	s3,a0
    800048b8:	00058a13          	mv	s4,a1
    LOCK();
    800048bc:	00100613          	li	a2,1
    800048c0:	00000593          	li	a1,0
    800048c4:	00005517          	auipc	a0,0x5
    800048c8:	7bc50513          	addi	a0,a0,1980 # 8000a080 <lockPrint>
    800048cc:	ffffd097          	auipc	ra,0xffffd
    800048d0:	868080e7          	jalr	-1944(ra) # 80001134 <copy_and_swap>
    800048d4:	00050863          	beqz	a0,800048e4 <_Z9getStringPci+0x50>
    800048d8:	ffffd097          	auipc	ra,0xffffd
    800048dc:	9ac080e7          	jalr	-1620(ra) # 80001284 <_Z15thread_dispatchv>
    800048e0:	fddff06f          	j	800048bc <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    800048e4:	00000913          	li	s2,0
    800048e8:	00090493          	mv	s1,s2
    800048ec:	0019091b          	addiw	s2,s2,1
    800048f0:	03495a63          	bge	s2,s4,80004924 <_Z9getStringPci+0x90>
        cc = __getc();
    800048f4:	00003097          	auipc	ra,0x3
    800048f8:	fe4080e7          	jalr	-28(ra) # 800078d8 <__getc>
        if(cc < 1)
    800048fc:	02050463          	beqz	a0,80004924 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80004900:	009984b3          	add	s1,s3,s1
    80004904:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80004908:	00a00793          	li	a5,10
    8000490c:	00f50a63          	beq	a0,a5,80004920 <_Z9getStringPci+0x8c>
    80004910:	00d00793          	li	a5,13
    80004914:	fcf51ae3          	bne	a0,a5,800048e8 <_Z9getStringPci+0x54>
        buf[i++] = c;
    80004918:	00090493          	mv	s1,s2
    8000491c:	0080006f          	j	80004924 <_Z9getStringPci+0x90>
    80004920:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80004924:	009984b3          	add	s1,s3,s1
    80004928:	00048023          	sb	zero,0(s1)

    UNLOCK();
    8000492c:	00000613          	li	a2,0
    80004930:	00100593          	li	a1,1
    80004934:	00005517          	auipc	a0,0x5
    80004938:	74c50513          	addi	a0,a0,1868 # 8000a080 <lockPrint>
    8000493c:	ffffc097          	auipc	ra,0xffffc
    80004940:	7f8080e7          	jalr	2040(ra) # 80001134 <copy_and_swap>
    80004944:	fe0514e3          	bnez	a0,8000492c <_Z9getStringPci+0x98>
    return buf;
}
    80004948:	00098513          	mv	a0,s3
    8000494c:	02813083          	ld	ra,40(sp)
    80004950:	02013403          	ld	s0,32(sp)
    80004954:	01813483          	ld	s1,24(sp)
    80004958:	01013903          	ld	s2,16(sp)
    8000495c:	00813983          	ld	s3,8(sp)
    80004960:	00013a03          	ld	s4,0(sp)
    80004964:	03010113          	addi	sp,sp,48
    80004968:	00008067          	ret

000000008000496c <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    8000496c:	ff010113          	addi	sp,sp,-16
    80004970:	00813423          	sd	s0,8(sp)
    80004974:	01010413          	addi	s0,sp,16
    80004978:	00050693          	mv	a3,a0
    int n;

    n = 0;
    8000497c:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80004980:	0006c603          	lbu	a2,0(a3)
    80004984:	fd06071b          	addiw	a4,a2,-48
    80004988:	0ff77713          	andi	a4,a4,255
    8000498c:	00900793          	li	a5,9
    80004990:	02e7e063          	bltu	a5,a4,800049b0 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80004994:	0025179b          	slliw	a5,a0,0x2
    80004998:	00a787bb          	addw	a5,a5,a0
    8000499c:	0017979b          	slliw	a5,a5,0x1
    800049a0:	00168693          	addi	a3,a3,1
    800049a4:	00c787bb          	addw	a5,a5,a2
    800049a8:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    800049ac:	fd5ff06f          	j	80004980 <_Z11stringToIntPKc+0x14>
    return n;
}
    800049b0:	00813403          	ld	s0,8(sp)
    800049b4:	01010113          	addi	sp,sp,16
    800049b8:	00008067          	ret

00000000800049bc <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    800049bc:	fc010113          	addi	sp,sp,-64
    800049c0:	02113c23          	sd	ra,56(sp)
    800049c4:	02813823          	sd	s0,48(sp)
    800049c8:	02913423          	sd	s1,40(sp)
    800049cc:	03213023          	sd	s2,32(sp)
    800049d0:	01313c23          	sd	s3,24(sp)
    800049d4:	04010413          	addi	s0,sp,64
    800049d8:	00050493          	mv	s1,a0
    800049dc:	00058913          	mv	s2,a1
    800049e0:	00060993          	mv	s3,a2
    LOCK();
    800049e4:	00100613          	li	a2,1
    800049e8:	00000593          	li	a1,0
    800049ec:	00005517          	auipc	a0,0x5
    800049f0:	69450513          	addi	a0,a0,1684 # 8000a080 <lockPrint>
    800049f4:	ffffc097          	auipc	ra,0xffffc
    800049f8:	740080e7          	jalr	1856(ra) # 80001134 <copy_and_swap>
    800049fc:	00050863          	beqz	a0,80004a0c <_Z8printIntiii+0x50>
    80004a00:	ffffd097          	auipc	ra,0xffffd
    80004a04:	884080e7          	jalr	-1916(ra) # 80001284 <_Z15thread_dispatchv>
    80004a08:	fddff06f          	j	800049e4 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80004a0c:	00098463          	beqz	s3,80004a14 <_Z8printIntiii+0x58>
    80004a10:	0804c463          	bltz	s1,80004a98 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80004a14:	0004851b          	sext.w	a0,s1
    neg = 0;
    80004a18:	00000593          	li	a1,0
    }

    i = 0;
    80004a1c:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80004a20:	0009079b          	sext.w	a5,s2
    80004a24:	0325773b          	remuw	a4,a0,s2
    80004a28:	00048613          	mv	a2,s1
    80004a2c:	0014849b          	addiw	s1,s1,1
    80004a30:	02071693          	slli	a3,a4,0x20
    80004a34:	0206d693          	srli	a3,a3,0x20
    80004a38:	00005717          	auipc	a4,0x5
    80004a3c:	53070713          	addi	a4,a4,1328 # 80009f68 <digits>
    80004a40:	00d70733          	add	a4,a4,a3
    80004a44:	00074683          	lbu	a3,0(a4)
    80004a48:	fd040713          	addi	a4,s0,-48
    80004a4c:	00c70733          	add	a4,a4,a2
    80004a50:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80004a54:	0005071b          	sext.w	a4,a0
    80004a58:	0325553b          	divuw	a0,a0,s2
    80004a5c:	fcf772e3          	bgeu	a4,a5,80004a20 <_Z8printIntiii+0x64>
    if(neg)
    80004a60:	00058c63          	beqz	a1,80004a78 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80004a64:	fd040793          	addi	a5,s0,-48
    80004a68:	009784b3          	add	s1,a5,s1
    80004a6c:	02d00793          	li	a5,45
    80004a70:	fef48823          	sb	a5,-16(s1)
    80004a74:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80004a78:	fff4849b          	addiw	s1,s1,-1
    80004a7c:	0204c463          	bltz	s1,80004aa4 <_Z8printIntiii+0xe8>
        __putc(buf[i]);
    80004a80:	fd040793          	addi	a5,s0,-48
    80004a84:	009787b3          	add	a5,a5,s1
    80004a88:	ff07c503          	lbu	a0,-16(a5)
    80004a8c:	00003097          	auipc	ra,0x3
    80004a90:	e10080e7          	jalr	-496(ra) # 8000789c <__putc>
    80004a94:	fe5ff06f          	j	80004a78 <_Z8printIntiii+0xbc>
        x = -xx;
    80004a98:	4090053b          	negw	a0,s1
        neg = 1;
    80004a9c:	00100593          	li	a1,1
        x = -xx;
    80004aa0:	f7dff06f          	j	80004a1c <_Z8printIntiii+0x60>

    UNLOCK();
    80004aa4:	00000613          	li	a2,0
    80004aa8:	00100593          	li	a1,1
    80004aac:	00005517          	auipc	a0,0x5
    80004ab0:	5d450513          	addi	a0,a0,1492 # 8000a080 <lockPrint>
    80004ab4:	ffffc097          	auipc	ra,0xffffc
    80004ab8:	680080e7          	jalr	1664(ra) # 80001134 <copy_and_swap>
    80004abc:	fe0514e3          	bnez	a0,80004aa4 <_Z8printIntiii+0xe8>
    80004ac0:	03813083          	ld	ra,56(sp)
    80004ac4:	03013403          	ld	s0,48(sp)
    80004ac8:	02813483          	ld	s1,40(sp)
    80004acc:	02013903          	ld	s2,32(sp)
    80004ad0:	01813983          	ld	s3,24(sp)
    80004ad4:	04010113          	addi	sp,sp,64
    80004ad8:	00008067          	ret

0000000080004adc <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80004adc:	fd010113          	addi	sp,sp,-48
    80004ae0:	02113423          	sd	ra,40(sp)
    80004ae4:	02813023          	sd	s0,32(sp)
    80004ae8:	00913c23          	sd	s1,24(sp)
    80004aec:	01213823          	sd	s2,16(sp)
    80004af0:	01313423          	sd	s3,8(sp)
    80004af4:	03010413          	addi	s0,sp,48
    80004af8:	00050493          	mv	s1,a0
    80004afc:	00058913          	mv	s2,a1
    80004b00:	0015879b          	addiw	a5,a1,1
    80004b04:	0007851b          	sext.w	a0,a5
    80004b08:	00f4a023          	sw	a5,0(s1)
    80004b0c:	0004a823          	sw	zero,16(s1)
    80004b10:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80004b14:	00251513          	slli	a0,a0,0x2
    80004b18:	ffffc097          	auipc	ra,0xffffc
    80004b1c:	63c080e7          	jalr	1596(ra) # 80001154 <_Z9mem_allocm>
    80004b20:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80004b24:	01000513          	li	a0,16
    80004b28:	ffffd097          	auipc	ra,0xffffd
    80004b2c:	174080e7          	jalr	372(ra) # 80001c9c <_Znwm>
    80004b30:	00050993          	mv	s3,a0
    80004b34:	00000593          	li	a1,0
    80004b38:	ffffd097          	auipc	ra,0xffffd
    80004b3c:	370080e7          	jalr	880(ra) # 80001ea8 <_ZN9SemaphoreC1Ej>
    80004b40:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80004b44:	01000513          	li	a0,16
    80004b48:	ffffd097          	auipc	ra,0xffffd
    80004b4c:	154080e7          	jalr	340(ra) # 80001c9c <_Znwm>
    80004b50:	00050993          	mv	s3,a0
    80004b54:	00090593          	mv	a1,s2
    80004b58:	ffffd097          	auipc	ra,0xffffd
    80004b5c:	350080e7          	jalr	848(ra) # 80001ea8 <_ZN9SemaphoreC1Ej>
    80004b60:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80004b64:	01000513          	li	a0,16
    80004b68:	ffffd097          	auipc	ra,0xffffd
    80004b6c:	134080e7          	jalr	308(ra) # 80001c9c <_Znwm>
    80004b70:	00050913          	mv	s2,a0
    80004b74:	00100593          	li	a1,1
    80004b78:	ffffd097          	auipc	ra,0xffffd
    80004b7c:	330080e7          	jalr	816(ra) # 80001ea8 <_ZN9SemaphoreC1Ej>
    80004b80:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80004b84:	01000513          	li	a0,16
    80004b88:	ffffd097          	auipc	ra,0xffffd
    80004b8c:	114080e7          	jalr	276(ra) # 80001c9c <_Znwm>
    80004b90:	00050913          	mv	s2,a0
    80004b94:	00100593          	li	a1,1
    80004b98:	ffffd097          	auipc	ra,0xffffd
    80004b9c:	310080e7          	jalr	784(ra) # 80001ea8 <_ZN9SemaphoreC1Ej>
    80004ba0:	0324b823          	sd	s2,48(s1)
}
    80004ba4:	02813083          	ld	ra,40(sp)
    80004ba8:	02013403          	ld	s0,32(sp)
    80004bac:	01813483          	ld	s1,24(sp)
    80004bb0:	01013903          	ld	s2,16(sp)
    80004bb4:	00813983          	ld	s3,8(sp)
    80004bb8:	03010113          	addi	sp,sp,48
    80004bbc:	00008067          	ret
    80004bc0:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80004bc4:	00098513          	mv	a0,s3
    80004bc8:	ffffd097          	auipc	ra,0xffffd
    80004bcc:	0fc080e7          	jalr	252(ra) # 80001cc4 <_ZdlPv>
    80004bd0:	00048513          	mv	a0,s1
    80004bd4:	00006097          	auipc	ra,0x6
    80004bd8:	584080e7          	jalr	1412(ra) # 8000b158 <_Unwind_Resume>
    80004bdc:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80004be0:	00098513          	mv	a0,s3
    80004be4:	ffffd097          	auipc	ra,0xffffd
    80004be8:	0e0080e7          	jalr	224(ra) # 80001cc4 <_ZdlPv>
    80004bec:	00048513          	mv	a0,s1
    80004bf0:	00006097          	auipc	ra,0x6
    80004bf4:	568080e7          	jalr	1384(ra) # 8000b158 <_Unwind_Resume>
    80004bf8:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80004bfc:	00090513          	mv	a0,s2
    80004c00:	ffffd097          	auipc	ra,0xffffd
    80004c04:	0c4080e7          	jalr	196(ra) # 80001cc4 <_ZdlPv>
    80004c08:	00048513          	mv	a0,s1
    80004c0c:	00006097          	auipc	ra,0x6
    80004c10:	54c080e7          	jalr	1356(ra) # 8000b158 <_Unwind_Resume>
    80004c14:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80004c18:	00090513          	mv	a0,s2
    80004c1c:	ffffd097          	auipc	ra,0xffffd
    80004c20:	0a8080e7          	jalr	168(ra) # 80001cc4 <_ZdlPv>
    80004c24:	00048513          	mv	a0,s1
    80004c28:	00006097          	auipc	ra,0x6
    80004c2c:	530080e7          	jalr	1328(ra) # 8000b158 <_Unwind_Resume>

0000000080004c30 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80004c30:	fe010113          	addi	sp,sp,-32
    80004c34:	00113c23          	sd	ra,24(sp)
    80004c38:	00813823          	sd	s0,16(sp)
    80004c3c:	00913423          	sd	s1,8(sp)
    80004c40:	01213023          	sd	s2,0(sp)
    80004c44:	02010413          	addi	s0,sp,32
    80004c48:	00050493          	mv	s1,a0
    80004c4c:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80004c50:	01853503          	ld	a0,24(a0)
    80004c54:	ffffd097          	auipc	ra,0xffffd
    80004c58:	28c080e7          	jalr	652(ra) # 80001ee0 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80004c5c:	0304b503          	ld	a0,48(s1)
    80004c60:	ffffd097          	auipc	ra,0xffffd
    80004c64:	280080e7          	jalr	640(ra) # 80001ee0 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80004c68:	0084b783          	ld	a5,8(s1)
    80004c6c:	0144a703          	lw	a4,20(s1)
    80004c70:	00271713          	slli	a4,a4,0x2
    80004c74:	00e787b3          	add	a5,a5,a4
    80004c78:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80004c7c:	0144a783          	lw	a5,20(s1)
    80004c80:	0017879b          	addiw	a5,a5,1
    80004c84:	0004a703          	lw	a4,0(s1)
    80004c88:	02e7e7bb          	remw	a5,a5,a4
    80004c8c:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80004c90:	0304b503          	ld	a0,48(s1)
    80004c94:	ffffd097          	auipc	ra,0xffffd
    80004c98:	278080e7          	jalr	632(ra) # 80001f0c <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80004c9c:	0204b503          	ld	a0,32(s1)
    80004ca0:	ffffd097          	auipc	ra,0xffffd
    80004ca4:	26c080e7          	jalr	620(ra) # 80001f0c <_ZN9Semaphore6signalEv>

}
    80004ca8:	01813083          	ld	ra,24(sp)
    80004cac:	01013403          	ld	s0,16(sp)
    80004cb0:	00813483          	ld	s1,8(sp)
    80004cb4:	00013903          	ld	s2,0(sp)
    80004cb8:	02010113          	addi	sp,sp,32
    80004cbc:	00008067          	ret

0000000080004cc0 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80004cc0:	fe010113          	addi	sp,sp,-32
    80004cc4:	00113c23          	sd	ra,24(sp)
    80004cc8:	00813823          	sd	s0,16(sp)
    80004ccc:	00913423          	sd	s1,8(sp)
    80004cd0:	01213023          	sd	s2,0(sp)
    80004cd4:	02010413          	addi	s0,sp,32
    80004cd8:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80004cdc:	02053503          	ld	a0,32(a0)
    80004ce0:	ffffd097          	auipc	ra,0xffffd
    80004ce4:	200080e7          	jalr	512(ra) # 80001ee0 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80004ce8:	0284b503          	ld	a0,40(s1)
    80004cec:	ffffd097          	auipc	ra,0xffffd
    80004cf0:	1f4080e7          	jalr	500(ra) # 80001ee0 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80004cf4:	0084b703          	ld	a4,8(s1)
    80004cf8:	0104a783          	lw	a5,16(s1)
    80004cfc:	00279693          	slli	a3,a5,0x2
    80004d00:	00d70733          	add	a4,a4,a3
    80004d04:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80004d08:	0017879b          	addiw	a5,a5,1
    80004d0c:	0004a703          	lw	a4,0(s1)
    80004d10:	02e7e7bb          	remw	a5,a5,a4
    80004d14:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80004d18:	0284b503          	ld	a0,40(s1)
    80004d1c:	ffffd097          	auipc	ra,0xffffd
    80004d20:	1f0080e7          	jalr	496(ra) # 80001f0c <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80004d24:	0184b503          	ld	a0,24(s1)
    80004d28:	ffffd097          	auipc	ra,0xffffd
    80004d2c:	1e4080e7          	jalr	484(ra) # 80001f0c <_ZN9Semaphore6signalEv>

    return ret;
}
    80004d30:	00090513          	mv	a0,s2
    80004d34:	01813083          	ld	ra,24(sp)
    80004d38:	01013403          	ld	s0,16(sp)
    80004d3c:	00813483          	ld	s1,8(sp)
    80004d40:	00013903          	ld	s2,0(sp)
    80004d44:	02010113          	addi	sp,sp,32
    80004d48:	00008067          	ret

0000000080004d4c <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80004d4c:	fe010113          	addi	sp,sp,-32
    80004d50:	00113c23          	sd	ra,24(sp)
    80004d54:	00813823          	sd	s0,16(sp)
    80004d58:	00913423          	sd	s1,8(sp)
    80004d5c:	01213023          	sd	s2,0(sp)
    80004d60:	02010413          	addi	s0,sp,32
    80004d64:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80004d68:	02853503          	ld	a0,40(a0)
    80004d6c:	ffffd097          	auipc	ra,0xffffd
    80004d70:	174080e7          	jalr	372(ra) # 80001ee0 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80004d74:	0304b503          	ld	a0,48(s1)
    80004d78:	ffffd097          	auipc	ra,0xffffd
    80004d7c:	168080e7          	jalr	360(ra) # 80001ee0 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80004d80:	0144a783          	lw	a5,20(s1)
    80004d84:	0104a903          	lw	s2,16(s1)
    80004d88:	0327ce63          	blt	a5,s2,80004dc4 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80004d8c:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80004d90:	0304b503          	ld	a0,48(s1)
    80004d94:	ffffd097          	auipc	ra,0xffffd
    80004d98:	178080e7          	jalr	376(ra) # 80001f0c <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80004d9c:	0284b503          	ld	a0,40(s1)
    80004da0:	ffffd097          	auipc	ra,0xffffd
    80004da4:	16c080e7          	jalr	364(ra) # 80001f0c <_ZN9Semaphore6signalEv>

    return ret;
}
    80004da8:	00090513          	mv	a0,s2
    80004dac:	01813083          	ld	ra,24(sp)
    80004db0:	01013403          	ld	s0,16(sp)
    80004db4:	00813483          	ld	s1,8(sp)
    80004db8:	00013903          	ld	s2,0(sp)
    80004dbc:	02010113          	addi	sp,sp,32
    80004dc0:	00008067          	ret
        ret = cap - head + tail;
    80004dc4:	0004a703          	lw	a4,0(s1)
    80004dc8:	4127093b          	subw	s2,a4,s2
    80004dcc:	00f9093b          	addw	s2,s2,a5
    80004dd0:	fc1ff06f          	j	80004d90 <_ZN9BufferCPP6getCntEv+0x44>

0000000080004dd4 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80004dd4:	fe010113          	addi	sp,sp,-32
    80004dd8:	00113c23          	sd	ra,24(sp)
    80004ddc:	00813823          	sd	s0,16(sp)
    80004de0:	00913423          	sd	s1,8(sp)
    80004de4:	02010413          	addi	s0,sp,32
    80004de8:	00050493          	mv	s1,a0
    __putc('\n');
    80004dec:	00a00513          	li	a0,10
    80004df0:	00003097          	auipc	ra,0x3
    80004df4:	aac080e7          	jalr	-1364(ra) # 8000789c <__putc>
    printString("Buffer deleted!\n");
    80004df8:	00003517          	auipc	a0,0x3
    80004dfc:	49050513          	addi	a0,a0,1168 # 80008288 <_ZZ12printIntegermE6digits+0x1a8>
    80004e00:	00000097          	auipc	ra,0x0
    80004e04:	a0c080e7          	jalr	-1524(ra) # 8000480c <_Z11printStringPKc>
    while (getCnt()) {
    80004e08:	00048513          	mv	a0,s1
    80004e0c:	00000097          	auipc	ra,0x0
    80004e10:	f40080e7          	jalr	-192(ra) # 80004d4c <_ZN9BufferCPP6getCntEv>
    80004e14:	02050c63          	beqz	a0,80004e4c <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80004e18:	0084b783          	ld	a5,8(s1)
    80004e1c:	0104a703          	lw	a4,16(s1)
    80004e20:	00271713          	slli	a4,a4,0x2
    80004e24:	00e787b3          	add	a5,a5,a4
        __putc(ch);
    80004e28:	0007c503          	lbu	a0,0(a5)
    80004e2c:	00003097          	auipc	ra,0x3
    80004e30:	a70080e7          	jalr	-1424(ra) # 8000789c <__putc>
        head = (head + 1) % cap;
    80004e34:	0104a783          	lw	a5,16(s1)
    80004e38:	0017879b          	addiw	a5,a5,1
    80004e3c:	0004a703          	lw	a4,0(s1)
    80004e40:	02e7e7bb          	remw	a5,a5,a4
    80004e44:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80004e48:	fc1ff06f          	j	80004e08 <_ZN9BufferCPPD1Ev+0x34>
    __putc('!');
    80004e4c:	02100513          	li	a0,33
    80004e50:	00003097          	auipc	ra,0x3
    80004e54:	a4c080e7          	jalr	-1460(ra) # 8000789c <__putc>
    __putc('\n');
    80004e58:	00a00513          	li	a0,10
    80004e5c:	00003097          	auipc	ra,0x3
    80004e60:	a40080e7          	jalr	-1472(ra) # 8000789c <__putc>
    mem_free(buffer);
    80004e64:	0084b503          	ld	a0,8(s1)
    80004e68:	ffffc097          	auipc	ra,0xffffc
    80004e6c:	32c080e7          	jalr	812(ra) # 80001194 <_Z8mem_freePv>
    delete itemAvailable;
    80004e70:	0204b503          	ld	a0,32(s1)
    80004e74:	00050863          	beqz	a0,80004e84 <_ZN9BufferCPPD1Ev+0xb0>
    80004e78:	00053783          	ld	a5,0(a0)
    80004e7c:	0087b783          	ld	a5,8(a5)
    80004e80:	000780e7          	jalr	a5
    delete spaceAvailable;
    80004e84:	0184b503          	ld	a0,24(s1)
    80004e88:	00050863          	beqz	a0,80004e98 <_ZN9BufferCPPD1Ev+0xc4>
    80004e8c:	00053783          	ld	a5,0(a0)
    80004e90:	0087b783          	ld	a5,8(a5)
    80004e94:	000780e7          	jalr	a5
    delete mutexTail;
    80004e98:	0304b503          	ld	a0,48(s1)
    80004e9c:	00050863          	beqz	a0,80004eac <_ZN9BufferCPPD1Ev+0xd8>
    80004ea0:	00053783          	ld	a5,0(a0)
    80004ea4:	0087b783          	ld	a5,8(a5)
    80004ea8:	000780e7          	jalr	a5
    delete mutexHead;
    80004eac:	0284b503          	ld	a0,40(s1)
    80004eb0:	00050863          	beqz	a0,80004ec0 <_ZN9BufferCPPD1Ev+0xec>
    80004eb4:	00053783          	ld	a5,0(a0)
    80004eb8:	0087b783          	ld	a5,8(a5)
    80004ebc:	000780e7          	jalr	a5
}
    80004ec0:	01813083          	ld	ra,24(sp)
    80004ec4:	01013403          	ld	s0,16(sp)
    80004ec8:	00813483          	ld	s1,8(sp)
    80004ecc:	02010113          	addi	sp,sp,32
    80004ed0:	00008067          	ret

0000000080004ed4 <_Z8userMainv>:
//#include "../test/ConsumerProducer_CPP_API_test.hpp"


#endif

void userMain() {
    80004ed4:	ff010113          	addi	sp,sp,-16
    80004ed8:	00113423          	sd	ra,8(sp)
    80004edc:	00813023          	sd	s0,0(sp)
    80004ee0:	01010413          	addi	s0,sp,16
    pprintString("Unesite broj testa? [1-7]\n");
    80004ee4:	00003517          	auipc	a0,0x3
    80004ee8:	3bc50513          	addi	a0,a0,956 # 800082a0 <_ZZ12printIntegermE6digits+0x1c0>
    80004eec:	ffffe097          	auipc	ra,0xffffe
    80004ef0:	8fc080e7          	jalr	-1796(ra) # 800027e8 <_Z12pprintStringPKc>
            pprintString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
#endif
            break;
        case 4:
#if LEVEL_3_IMPLEMENTED == 1
            producerConsumer_CPP_Sync_API();
    80004ef4:	fffff097          	auipc	ra,0xfffff
    80004ef8:	2d4080e7          	jalr	724(ra) # 800041c8 <_Z29producerConsumer_CPP_Sync_APIv>
            pprintString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    80004efc:	00003517          	auipc	a0,0x3
    80004f00:	3c450513          	addi	a0,a0,964 # 800082c0 <_ZZ12printIntegermE6digits+0x1e0>
    80004f04:	ffffe097          	auipc	ra,0xffffe
    80004f08:	8e4080e7          	jalr	-1820(ra) # 800027e8 <_Z12pprintStringPKc>
#endif
            break;
        default:
            pprintString("Niste uneli odgovarajuci broj za test\n");
    }
    80004f0c:	00813083          	ld	ra,8(sp)
    80004f10:	00013403          	ld	s0,0(sp)
    80004f14:	01010113          	addi	sp,sp,16
    80004f18:	00008067          	ret

0000000080004f1c <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80004f1c:	fe010113          	addi	sp,sp,-32
    80004f20:	00113c23          	sd	ra,24(sp)
    80004f24:	00813823          	sd	s0,16(sp)
    80004f28:	00913423          	sd	s1,8(sp)
    80004f2c:	01213023          	sd	s2,0(sp)
    80004f30:	02010413          	addi	s0,sp,32
    80004f34:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80004f38:	00100793          	li	a5,1
    80004f3c:	02a7f863          	bgeu	a5,a0,80004f6c <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80004f40:	00a00793          	li	a5,10
    80004f44:	02f577b3          	remu	a5,a0,a5
    80004f48:	02078e63          	beqz	a5,80004f84 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004f4c:	fff48513          	addi	a0,s1,-1
    80004f50:	00000097          	auipc	ra,0x0
    80004f54:	fcc080e7          	jalr	-52(ra) # 80004f1c <_ZL9fibonaccim>
    80004f58:	00050913          	mv	s2,a0
    80004f5c:	ffe48513          	addi	a0,s1,-2
    80004f60:	00000097          	auipc	ra,0x0
    80004f64:	fbc080e7          	jalr	-68(ra) # 80004f1c <_ZL9fibonaccim>
    80004f68:	00a90533          	add	a0,s2,a0
}
    80004f6c:	01813083          	ld	ra,24(sp)
    80004f70:	01013403          	ld	s0,16(sp)
    80004f74:	00813483          	ld	s1,8(sp)
    80004f78:	00013903          	ld	s2,0(sp)
    80004f7c:	02010113          	addi	sp,sp,32
    80004f80:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004f84:	ffffc097          	auipc	ra,0xffffc
    80004f88:	300080e7          	jalr	768(ra) # 80001284 <_Z15thread_dispatchv>
    80004f8c:	fc1ff06f          	j	80004f4c <_ZL9fibonaccim+0x30>

0000000080004f90 <_ZL11workerBodyDPv>:
    pprintString("C finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80004f90:	fe010113          	addi	sp,sp,-32
    80004f94:	00113c23          	sd	ra,24(sp)
    80004f98:	00813823          	sd	s0,16(sp)
    80004f9c:	00913423          	sd	s1,8(sp)
    80004fa0:	01213023          	sd	s2,0(sp)
    80004fa4:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004fa8:	00a00493          	li	s1,10
    80004fac:	0380006f          	j	80004fe4 <_ZL11workerBodyDPv+0x54>
    for (; i < 13; i++) {
        pprintString("D: i="); printInteger(i); pprintString("\n");
    80004fb0:	00003517          	auipc	a0,0x3
    80004fb4:	24050513          	addi	a0,a0,576 # 800081f0 <_ZZ12printIntegermE6digits+0x110>
    80004fb8:	ffffe097          	auipc	ra,0xffffe
    80004fbc:	830080e7          	jalr	-2000(ra) # 800027e8 <_Z12pprintStringPKc>
    80004fc0:	00048513          	mv	a0,s1
    80004fc4:	ffffe097          	auipc	ra,0xffffe
    80004fc8:	868080e7          	jalr	-1944(ra) # 8000282c <_Z12printIntegerm>
    80004fcc:	00003517          	auipc	a0,0x3
    80004fd0:	34450513          	addi	a0,a0,836 # 80008310 <_ZZ12printIntegermE6digits+0x230>
    80004fd4:	ffffe097          	auipc	ra,0xffffe
    80004fd8:	814080e7          	jalr	-2028(ra) # 800027e8 <_Z12pprintStringPKc>
    for (; i < 13; i++) {
    80004fdc:	0014849b          	addiw	s1,s1,1
    80004fe0:	0ff4f493          	andi	s1,s1,255
    80004fe4:	00c00793          	li	a5,12
    80004fe8:	fc97f4e3          	bgeu	a5,s1,80004fb0 <_ZL11workerBodyDPv+0x20>
    }

    pprintString("D: dispatch\n");
    80004fec:	00003517          	auipc	a0,0x3
    80004ff0:	20c50513          	addi	a0,a0,524 # 800081f8 <_ZZ12printIntegermE6digits+0x118>
    80004ff4:	ffffd097          	auipc	ra,0xffffd
    80004ff8:	7f4080e7          	jalr	2036(ra) # 800027e8 <_Z12pprintStringPKc>
    __asm__ ("li t1, 5");
    80004ffc:	00500313          	li	t1,5
    thread_dispatch();
    80005000:	ffffc097          	auipc	ra,0xffffc
    80005004:	284080e7          	jalr	644(ra) # 80001284 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80005008:	01000513          	li	a0,16
    8000500c:	00000097          	auipc	ra,0x0
    80005010:	f10080e7          	jalr	-240(ra) # 80004f1c <_ZL9fibonaccim>
    80005014:	00050913          	mv	s2,a0
    pprintString("D: fibonaci="); printInteger(result); pprintString("\n");
    80005018:	00003517          	auipc	a0,0x3
    8000501c:	1f050513          	addi	a0,a0,496 # 80008208 <_ZZ12printIntegermE6digits+0x128>
    80005020:	ffffd097          	auipc	ra,0xffffd
    80005024:	7c8080e7          	jalr	1992(ra) # 800027e8 <_Z12pprintStringPKc>
    80005028:	00090513          	mv	a0,s2
    8000502c:	ffffe097          	auipc	ra,0xffffe
    80005030:	800080e7          	jalr	-2048(ra) # 8000282c <_Z12printIntegerm>
    80005034:	00003517          	auipc	a0,0x3
    80005038:	2dc50513          	addi	a0,a0,732 # 80008310 <_ZZ12printIntegermE6digits+0x230>
    8000503c:	ffffd097          	auipc	ra,0xffffd
    80005040:	7ac080e7          	jalr	1964(ra) # 800027e8 <_Z12pprintStringPKc>
    80005044:	0380006f          	j	8000507c <_ZL11workerBodyDPv+0xec>

    for (; i < 16; i++) {
        pprintString("D: i="); printInteger(i); pprintString("\n");
    80005048:	00003517          	auipc	a0,0x3
    8000504c:	1a850513          	addi	a0,a0,424 # 800081f0 <_ZZ12printIntegermE6digits+0x110>
    80005050:	ffffd097          	auipc	ra,0xffffd
    80005054:	798080e7          	jalr	1944(ra) # 800027e8 <_Z12pprintStringPKc>
    80005058:	00048513          	mv	a0,s1
    8000505c:	ffffd097          	auipc	ra,0xffffd
    80005060:	7d0080e7          	jalr	2000(ra) # 8000282c <_Z12printIntegerm>
    80005064:	00003517          	auipc	a0,0x3
    80005068:	2ac50513          	addi	a0,a0,684 # 80008310 <_ZZ12printIntegermE6digits+0x230>
    8000506c:	ffffd097          	auipc	ra,0xffffd
    80005070:	77c080e7          	jalr	1916(ra) # 800027e8 <_Z12pprintStringPKc>
    for (; i < 16; i++) {
    80005074:	0014849b          	addiw	s1,s1,1
    80005078:	0ff4f493          	andi	s1,s1,255
    8000507c:	00f00793          	li	a5,15
    80005080:	fc97f4e3          	bgeu	a5,s1,80005048 <_ZL11workerBodyDPv+0xb8>
    }

    pprintString("D finished!\n");
    80005084:	00003517          	auipc	a0,0x3
    80005088:	19450513          	addi	a0,a0,404 # 80008218 <_ZZ12printIntegermE6digits+0x138>
    8000508c:	ffffd097          	auipc	ra,0xffffd
    80005090:	75c080e7          	jalr	1884(ra) # 800027e8 <_Z12pprintStringPKc>
    finishedD = true;
    80005094:	00100793          	li	a5,1
    80005098:	00005717          	auipc	a4,0x5
    8000509c:	fef70823          	sb	a5,-16(a4) # 8000a088 <_ZL9finishedD>
    thread_dispatch();
    800050a0:	ffffc097          	auipc	ra,0xffffc
    800050a4:	1e4080e7          	jalr	484(ra) # 80001284 <_Z15thread_dispatchv>
}
    800050a8:	01813083          	ld	ra,24(sp)
    800050ac:	01013403          	ld	s0,16(sp)
    800050b0:	00813483          	ld	s1,8(sp)
    800050b4:	00013903          	ld	s2,0(sp)
    800050b8:	02010113          	addi	sp,sp,32
    800050bc:	00008067          	ret

00000000800050c0 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    800050c0:	fe010113          	addi	sp,sp,-32
    800050c4:	00113c23          	sd	ra,24(sp)
    800050c8:	00813823          	sd	s0,16(sp)
    800050cc:	00913423          	sd	s1,8(sp)
    800050d0:	01213023          	sd	s2,0(sp)
    800050d4:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800050d8:	00000493          	li	s1,0
    800050dc:	0380006f          	j	80005114 <_ZL11workerBodyCPv+0x54>
        pprintString("C: i="); printInteger(i); pprintString("\n");
    800050e0:	00003517          	auipc	a0,0x3
    800050e4:	f7850513          	addi	a0,a0,-136 # 80008058 <CONSOLE_STATUS+0x48>
    800050e8:	ffffd097          	auipc	ra,0xffffd
    800050ec:	700080e7          	jalr	1792(ra) # 800027e8 <_Z12pprintStringPKc>
    800050f0:	00048513          	mv	a0,s1
    800050f4:	ffffd097          	auipc	ra,0xffffd
    800050f8:	738080e7          	jalr	1848(ra) # 8000282c <_Z12printIntegerm>
    800050fc:	00003517          	auipc	a0,0x3
    80005100:	21450513          	addi	a0,a0,532 # 80008310 <_ZZ12printIntegermE6digits+0x230>
    80005104:	ffffd097          	auipc	ra,0xffffd
    80005108:	6e4080e7          	jalr	1764(ra) # 800027e8 <_Z12pprintStringPKc>
    for (; i < 3; i++) {
    8000510c:	0014849b          	addiw	s1,s1,1
    80005110:	0ff4f493          	andi	s1,s1,255
    80005114:	00200793          	li	a5,2
    80005118:	fc97f4e3          	bgeu	a5,s1,800050e0 <_ZL11workerBodyCPv+0x20>
    pprintString("C: dispatch\n");
    8000511c:	00003517          	auipc	a0,0x3
    80005120:	0bc50513          	addi	a0,a0,188 # 800081d8 <_ZZ12printIntegermE6digits+0xf8>
    80005124:	ffffd097          	auipc	ra,0xffffd
    80005128:	6c4080e7          	jalr	1732(ra) # 800027e8 <_Z12pprintStringPKc>
    __asm__ ("li t1, 7");
    8000512c:	00700313          	li	t1,7
    thread_dispatch();
    80005130:	ffffc097          	auipc	ra,0xffffc
    80005134:	154080e7          	jalr	340(ra) # 80001284 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80005138:	00030913          	mv	s2,t1
    pprintString("C: t1="); printInteger(t1); pprintString("\n");
    8000513c:	00003517          	auipc	a0,0x3
    80005140:	0ac50513          	addi	a0,a0,172 # 800081e8 <_ZZ12printIntegermE6digits+0x108>
    80005144:	ffffd097          	auipc	ra,0xffffd
    80005148:	6a4080e7          	jalr	1700(ra) # 800027e8 <_Z12pprintStringPKc>
    8000514c:	00090513          	mv	a0,s2
    80005150:	ffffd097          	auipc	ra,0xffffd
    80005154:	6dc080e7          	jalr	1756(ra) # 8000282c <_Z12printIntegerm>
    80005158:	00003517          	auipc	a0,0x3
    8000515c:	1b850513          	addi	a0,a0,440 # 80008310 <_ZZ12printIntegermE6digits+0x230>
    80005160:	ffffd097          	auipc	ra,0xffffd
    80005164:	688080e7          	jalr	1672(ra) # 800027e8 <_Z12pprintStringPKc>
    uint64 result = fibonacci(12);
    80005168:	00c00513          	li	a0,12
    8000516c:	00000097          	auipc	ra,0x0
    80005170:	db0080e7          	jalr	-592(ra) # 80004f1c <_ZL9fibonaccim>
    80005174:	00050913          	mv	s2,a0
    pprintString("C: fibonaci="); printInteger(result); pprintString("\n");
    80005178:	00003517          	auipc	a0,0x3
    8000517c:	ef850513          	addi	a0,a0,-264 # 80008070 <CONSOLE_STATUS+0x60>
    80005180:	ffffd097          	auipc	ra,0xffffd
    80005184:	668080e7          	jalr	1640(ra) # 800027e8 <_Z12pprintStringPKc>
    80005188:	00090513          	mv	a0,s2
    8000518c:	ffffd097          	auipc	ra,0xffffd
    80005190:	6a0080e7          	jalr	1696(ra) # 8000282c <_Z12printIntegerm>
    80005194:	00003517          	auipc	a0,0x3
    80005198:	17c50513          	addi	a0,a0,380 # 80008310 <_ZZ12printIntegermE6digits+0x230>
    8000519c:	ffffd097          	auipc	ra,0xffffd
    800051a0:	64c080e7          	jalr	1612(ra) # 800027e8 <_Z12pprintStringPKc>
    800051a4:	0380006f          	j	800051dc <_ZL11workerBodyCPv+0x11c>
        pprintString("C: i="); printInteger(i); pprintString("\n");
    800051a8:	00003517          	auipc	a0,0x3
    800051ac:	eb050513          	addi	a0,a0,-336 # 80008058 <CONSOLE_STATUS+0x48>
    800051b0:	ffffd097          	auipc	ra,0xffffd
    800051b4:	638080e7          	jalr	1592(ra) # 800027e8 <_Z12pprintStringPKc>
    800051b8:	00048513          	mv	a0,s1
    800051bc:	ffffd097          	auipc	ra,0xffffd
    800051c0:	670080e7          	jalr	1648(ra) # 8000282c <_Z12printIntegerm>
    800051c4:	00003517          	auipc	a0,0x3
    800051c8:	14c50513          	addi	a0,a0,332 # 80008310 <_ZZ12printIntegermE6digits+0x230>
    800051cc:	ffffd097          	auipc	ra,0xffffd
    800051d0:	61c080e7          	jalr	1564(ra) # 800027e8 <_Z12pprintStringPKc>
    for (; i < 6; i++) {
    800051d4:	0014849b          	addiw	s1,s1,1
    800051d8:	0ff4f493          	andi	s1,s1,255
    800051dc:	00500793          	li	a5,5
    800051e0:	fc97f4e3          	bgeu	a5,s1,800051a8 <_ZL11workerBodyCPv+0xe8>
    pprintString("C finished!\n");
    800051e4:	00003517          	auipc	a0,0x3
    800051e8:	e9c50513          	addi	a0,a0,-356 # 80008080 <CONSOLE_STATUS+0x70>
    800051ec:	ffffd097          	auipc	ra,0xffffd
    800051f0:	5fc080e7          	jalr	1532(ra) # 800027e8 <_Z12pprintStringPKc>
    finishedC = true;
    800051f4:	00100793          	li	a5,1
    800051f8:	00005717          	auipc	a4,0x5
    800051fc:	e8f708a3          	sb	a5,-367(a4) # 8000a089 <_ZL9finishedC>
    thread_dispatch();
    80005200:	ffffc097          	auipc	ra,0xffffc
    80005204:	084080e7          	jalr	132(ra) # 80001284 <_Z15thread_dispatchv>
}
    80005208:	01813083          	ld	ra,24(sp)
    8000520c:	01013403          	ld	s0,16(sp)
    80005210:	00813483          	ld	s1,8(sp)
    80005214:	00013903          	ld	s2,0(sp)
    80005218:	02010113          	addi	sp,sp,32
    8000521c:	00008067          	ret

0000000080005220 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80005220:	fe010113          	addi	sp,sp,-32
    80005224:	00113c23          	sd	ra,24(sp)
    80005228:	00813823          	sd	s0,16(sp)
    8000522c:	00913423          	sd	s1,8(sp)
    80005230:	01213023          	sd	s2,0(sp)
    80005234:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80005238:	00000913          	li	s2,0
    8000523c:	0400006f          	j	8000527c <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80005240:	ffffc097          	auipc	ra,0xffffc
    80005244:	044080e7          	jalr	68(ra) # 80001284 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005248:	00148493          	addi	s1,s1,1
    8000524c:	000027b7          	lui	a5,0x2
    80005250:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005254:	0097ee63          	bltu	a5,s1,80005270 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005258:	00000713          	li	a4,0
    8000525c:	000077b7          	lui	a5,0x7
    80005260:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005264:	fce7eee3          	bltu	a5,a4,80005240 <_ZL11workerBodyBPv+0x20>
    80005268:	00170713          	addi	a4,a4,1
    8000526c:	ff1ff06f          	j	8000525c <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80005270:	00a00793          	li	a5,10
    80005274:	04f90263          	beq	s2,a5,800052b8 <_ZL11workerBodyBPv+0x98>
    for (uint64 i = 0; i < 16; i++) {
    80005278:	00190913          	addi	s2,s2,1
    8000527c:	00f00793          	li	a5,15
    80005280:	0527e063          	bltu	a5,s2,800052c0 <_ZL11workerBodyBPv+0xa0>
        pprintString("B: i="); printInteger(i); pprintString("\n");
    80005284:	00003517          	auipc	a0,0x3
    80005288:	dbc50513          	addi	a0,a0,-580 # 80008040 <CONSOLE_STATUS+0x30>
    8000528c:	ffffd097          	auipc	ra,0xffffd
    80005290:	55c080e7          	jalr	1372(ra) # 800027e8 <_Z12pprintStringPKc>
    80005294:	00090513          	mv	a0,s2
    80005298:	ffffd097          	auipc	ra,0xffffd
    8000529c:	594080e7          	jalr	1428(ra) # 8000282c <_Z12printIntegerm>
    800052a0:	00003517          	auipc	a0,0x3
    800052a4:	07050513          	addi	a0,a0,112 # 80008310 <_ZZ12printIntegermE6digits+0x230>
    800052a8:	ffffd097          	auipc	ra,0xffffd
    800052ac:	540080e7          	jalr	1344(ra) # 800027e8 <_Z12pprintStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800052b0:	00000493          	li	s1,0
    800052b4:	f99ff06f          	j	8000524c <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    800052b8:	14102ff3          	csrr	t6,sepc
    800052bc:	fbdff06f          	j	80005278 <_ZL11workerBodyBPv+0x58>
    pprintString("B finished!\n");
    800052c0:	00003517          	auipc	a0,0x3
    800052c4:	d8850513          	addi	a0,a0,-632 # 80008048 <CONSOLE_STATUS+0x38>
    800052c8:	ffffd097          	auipc	ra,0xffffd
    800052cc:	520080e7          	jalr	1312(ra) # 800027e8 <_Z12pprintStringPKc>
    finishedB = true;
    800052d0:	00100793          	li	a5,1
    800052d4:	00005717          	auipc	a4,0x5
    800052d8:	daf70b23          	sb	a5,-586(a4) # 8000a08a <_ZL9finishedB>
    thread_dispatch();
    800052dc:	ffffc097          	auipc	ra,0xffffc
    800052e0:	fa8080e7          	jalr	-88(ra) # 80001284 <_Z15thread_dispatchv>
}
    800052e4:	01813083          	ld	ra,24(sp)
    800052e8:	01013403          	ld	s0,16(sp)
    800052ec:	00813483          	ld	s1,8(sp)
    800052f0:	00013903          	ld	s2,0(sp)
    800052f4:	02010113          	addi	sp,sp,32
    800052f8:	00008067          	ret

00000000800052fc <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    800052fc:	fe010113          	addi	sp,sp,-32
    80005300:	00113c23          	sd	ra,24(sp)
    80005304:	00813823          	sd	s0,16(sp)
    80005308:	00913423          	sd	s1,8(sp)
    8000530c:	01213023          	sd	s2,0(sp)
    80005310:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80005314:	00000913          	li	s2,0
    80005318:	0380006f          	j	80005350 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    8000531c:	ffffc097          	auipc	ra,0xffffc
    80005320:	f68080e7          	jalr	-152(ra) # 80001284 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005324:	00148493          	addi	s1,s1,1
    80005328:	000027b7          	lui	a5,0x2
    8000532c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005330:	0097ee63          	bltu	a5,s1,8000534c <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005334:	00000713          	li	a4,0
    80005338:	000077b7          	lui	a5,0x7
    8000533c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005340:	fce7eee3          	bltu	a5,a4,8000531c <_ZL11workerBodyAPv+0x20>
    80005344:	00170713          	addi	a4,a4,1
    80005348:	ff1ff06f          	j	80005338 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    8000534c:	00190913          	addi	s2,s2,1
    80005350:	00900793          	li	a5,9
    80005354:	0327ec63          	bltu	a5,s2,8000538c <_ZL11workerBodyAPv+0x90>
        pprintString("A: i="); printInteger(i); pprintString("\n");
    80005358:	00003517          	auipc	a0,0x3
    8000535c:	cd050513          	addi	a0,a0,-816 # 80008028 <CONSOLE_STATUS+0x18>
    80005360:	ffffd097          	auipc	ra,0xffffd
    80005364:	488080e7          	jalr	1160(ra) # 800027e8 <_Z12pprintStringPKc>
    80005368:	00090513          	mv	a0,s2
    8000536c:	ffffd097          	auipc	ra,0xffffd
    80005370:	4c0080e7          	jalr	1216(ra) # 8000282c <_Z12printIntegerm>
    80005374:	00003517          	auipc	a0,0x3
    80005378:	f9c50513          	addi	a0,a0,-100 # 80008310 <_ZZ12printIntegermE6digits+0x230>
    8000537c:	ffffd097          	auipc	ra,0xffffd
    80005380:	46c080e7          	jalr	1132(ra) # 800027e8 <_Z12pprintStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005384:	00000493          	li	s1,0
    80005388:	fa1ff06f          	j	80005328 <_ZL11workerBodyAPv+0x2c>
    pprintString("A finished!\n");
    8000538c:	00003517          	auipc	a0,0x3
    80005390:	ca450513          	addi	a0,a0,-860 # 80008030 <CONSOLE_STATUS+0x20>
    80005394:	ffffd097          	auipc	ra,0xffffd
    80005398:	454080e7          	jalr	1108(ra) # 800027e8 <_Z12pprintStringPKc>
    finishedA = true;
    8000539c:	00100793          	li	a5,1
    800053a0:	00005717          	auipc	a4,0x5
    800053a4:	cef705a3          	sb	a5,-789(a4) # 8000a08b <_ZL9finishedA>
}
    800053a8:	01813083          	ld	ra,24(sp)
    800053ac:	01013403          	ld	s0,16(sp)
    800053b0:	00813483          	ld	s1,8(sp)
    800053b4:	00013903          	ld	s2,0(sp)
    800053b8:	02010113          	addi	sp,sp,32
    800053bc:	00008067          	ret

00000000800053c0 <_Z16System_Mode_testv>:


void System_Mode_test() {
    800053c0:	fd010113          	addi	sp,sp,-48
    800053c4:	02113423          	sd	ra,40(sp)
    800053c8:	02813023          	sd	s0,32(sp)
    800053cc:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    800053d0:	00000613          	li	a2,0
    800053d4:	00000597          	auipc	a1,0x0
    800053d8:	f2858593          	addi	a1,a1,-216 # 800052fc <_ZL11workerBodyAPv>
    800053dc:	fd040513          	addi	a0,s0,-48
    800053e0:	ffffc097          	auipc	ra,0xffffc
    800053e4:	e40080e7          	jalr	-448(ra) # 80001220 <_Z13thread_createPP3TCBPFvPvES2_>
    pprintString("ThreadA created\n");
    800053e8:	00003517          	auipc	a0,0x3
    800053ec:	e4050513          	addi	a0,a0,-448 # 80008228 <_ZZ12printIntegermE6digits+0x148>
    800053f0:	ffffd097          	auipc	ra,0xffffd
    800053f4:	3f8080e7          	jalr	1016(ra) # 800027e8 <_Z12pprintStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800053f8:	00000613          	li	a2,0
    800053fc:	00000597          	auipc	a1,0x0
    80005400:	e2458593          	addi	a1,a1,-476 # 80005220 <_ZL11workerBodyBPv>
    80005404:	fd840513          	addi	a0,s0,-40
    80005408:	ffffc097          	auipc	ra,0xffffc
    8000540c:	e18080e7          	jalr	-488(ra) # 80001220 <_Z13thread_createPP3TCBPFvPvES2_>
    pprintString("ThreadB created\n");
    80005410:	00003517          	auipc	a0,0x3
    80005414:	e3050513          	addi	a0,a0,-464 # 80008240 <_ZZ12printIntegermE6digits+0x160>
    80005418:	ffffd097          	auipc	ra,0xffffd
    8000541c:	3d0080e7          	jalr	976(ra) # 800027e8 <_Z12pprintStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80005420:	00000613          	li	a2,0
    80005424:	00000597          	auipc	a1,0x0
    80005428:	c9c58593          	addi	a1,a1,-868 # 800050c0 <_ZL11workerBodyCPv>
    8000542c:	fe040513          	addi	a0,s0,-32
    80005430:	ffffc097          	auipc	ra,0xffffc
    80005434:	df0080e7          	jalr	-528(ra) # 80001220 <_Z13thread_createPP3TCBPFvPvES2_>
    pprintString("ThreadC created\n");
    80005438:	00003517          	auipc	a0,0x3
    8000543c:	e2050513          	addi	a0,a0,-480 # 80008258 <_ZZ12printIntegermE6digits+0x178>
    80005440:	ffffd097          	auipc	ra,0xffffd
    80005444:	3a8080e7          	jalr	936(ra) # 800027e8 <_Z12pprintStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80005448:	00000613          	li	a2,0
    8000544c:	00000597          	auipc	a1,0x0
    80005450:	b4458593          	addi	a1,a1,-1212 # 80004f90 <_ZL11workerBodyDPv>
    80005454:	fe840513          	addi	a0,s0,-24
    80005458:	ffffc097          	auipc	ra,0xffffc
    8000545c:	dc8080e7          	jalr	-568(ra) # 80001220 <_Z13thread_createPP3TCBPFvPvES2_>
    pprintString("ThreadD created\n");
    80005460:	00003517          	auipc	a0,0x3
    80005464:	e1050513          	addi	a0,a0,-496 # 80008270 <_ZZ12printIntegermE6digits+0x190>
    80005468:	ffffd097          	auipc	ra,0xffffd
    8000546c:	380080e7          	jalr	896(ra) # 800027e8 <_Z12pprintStringPKc>
    80005470:	00c0006f          	j	8000547c <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80005474:	ffffc097          	auipc	ra,0xffffc
    80005478:	e10080e7          	jalr	-496(ra) # 80001284 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    8000547c:	00005797          	auipc	a5,0x5
    80005480:	c0f7c783          	lbu	a5,-1009(a5) # 8000a08b <_ZL9finishedA>
    80005484:	fe0788e3          	beqz	a5,80005474 <_Z16System_Mode_testv+0xb4>
    80005488:	00005797          	auipc	a5,0x5
    8000548c:	c027c783          	lbu	a5,-1022(a5) # 8000a08a <_ZL9finishedB>
    80005490:	fe0782e3          	beqz	a5,80005474 <_Z16System_Mode_testv+0xb4>
    80005494:	00005797          	auipc	a5,0x5
    80005498:	bf57c783          	lbu	a5,-1035(a5) # 8000a089 <_ZL9finishedC>
    8000549c:	fc078ce3          	beqz	a5,80005474 <_Z16System_Mode_testv+0xb4>
    800054a0:	00005797          	auipc	a5,0x5
    800054a4:	be87c783          	lbu	a5,-1048(a5) # 8000a088 <_ZL9finishedD>
    800054a8:	fc0786e3          	beqz	a5,80005474 <_Z16System_Mode_testv+0xb4>
    }

}
    800054ac:	02813083          	ld	ra,40(sp)
    800054b0:	02013403          	ld	s0,32(sp)
    800054b4:	03010113          	addi	sp,sp,48
    800054b8:	00008067          	ret

00000000800054bc <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800054bc:	fe010113          	addi	sp,sp,-32
    800054c0:	00113c23          	sd	ra,24(sp)
    800054c4:	00813823          	sd	s0,16(sp)
    800054c8:	00913423          	sd	s1,8(sp)
    800054cc:	01213023          	sd	s2,0(sp)
    800054d0:	02010413          	addi	s0,sp,32
    800054d4:	00050493          	mv	s1,a0
    800054d8:	00058913          	mv	s2,a1
    800054dc:	0015879b          	addiw	a5,a1,1
    800054e0:	0007851b          	sext.w	a0,a5
    800054e4:	00f4a023          	sw	a5,0(s1)
    800054e8:	0004a823          	sw	zero,16(s1)
    800054ec:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800054f0:	00251513          	slli	a0,a0,0x2
    800054f4:	ffffc097          	auipc	ra,0xffffc
    800054f8:	c60080e7          	jalr	-928(ra) # 80001154 <_Z9mem_allocm>
    800054fc:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80005500:	00000593          	li	a1,0
    80005504:	02048513          	addi	a0,s1,32
    80005508:	ffffc097          	auipc	ra,0xffffc
    8000550c:	da0080e7          	jalr	-608(ra) # 800012a8 <_Z8sem_openPP3SEMj>
    sem_open(&spaceAvailable, _cap);
    80005510:	00090593          	mv	a1,s2
    80005514:	01848513          	addi	a0,s1,24
    80005518:	ffffc097          	auipc	ra,0xffffc
    8000551c:	d90080e7          	jalr	-624(ra) # 800012a8 <_Z8sem_openPP3SEMj>
    sem_open(&mutexHead, 1);
    80005520:	00100593          	li	a1,1
    80005524:	02848513          	addi	a0,s1,40
    80005528:	ffffc097          	auipc	ra,0xffffc
    8000552c:	d80080e7          	jalr	-640(ra) # 800012a8 <_Z8sem_openPP3SEMj>
    sem_open(&mutexTail, 1);
    80005530:	00100593          	li	a1,1
    80005534:	03048513          	addi	a0,s1,48
    80005538:	ffffc097          	auipc	ra,0xffffc
    8000553c:	d70080e7          	jalr	-656(ra) # 800012a8 <_Z8sem_openPP3SEMj>
}
    80005540:	01813083          	ld	ra,24(sp)
    80005544:	01013403          	ld	s0,16(sp)
    80005548:	00813483          	ld	s1,8(sp)
    8000554c:	00013903          	ld	s2,0(sp)
    80005550:	02010113          	addi	sp,sp,32
    80005554:	00008067          	ret

0000000080005558 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80005558:	fe010113          	addi	sp,sp,-32
    8000555c:	00113c23          	sd	ra,24(sp)
    80005560:	00813823          	sd	s0,16(sp)
    80005564:	00913423          	sd	s1,8(sp)
    80005568:	01213023          	sd	s2,0(sp)
    8000556c:	02010413          	addi	s0,sp,32
    80005570:	00050493          	mv	s1,a0
    80005574:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80005578:	01853503          	ld	a0,24(a0)
    8000557c:	ffffc097          	auipc	ra,0xffffc
    80005580:	d90080e7          	jalr	-624(ra) # 8000130c <_Z8sem_waitP3SEM>

    sem_wait(mutexTail);
    80005584:	0304b503          	ld	a0,48(s1)
    80005588:	ffffc097          	auipc	ra,0xffffc
    8000558c:	d84080e7          	jalr	-636(ra) # 8000130c <_Z8sem_waitP3SEM>
    buffer[tail] = val;
    80005590:	0084b783          	ld	a5,8(s1)
    80005594:	0144a703          	lw	a4,20(s1)
    80005598:	00271713          	slli	a4,a4,0x2
    8000559c:	00e787b3          	add	a5,a5,a4
    800055a0:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800055a4:	0144a783          	lw	a5,20(s1)
    800055a8:	0017879b          	addiw	a5,a5,1
    800055ac:	0004a703          	lw	a4,0(s1)
    800055b0:	02e7e7bb          	remw	a5,a5,a4
    800055b4:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    800055b8:	0304b503          	ld	a0,48(s1)
    800055bc:	ffffc097          	auipc	ra,0xffffc
    800055c0:	d80080e7          	jalr	-640(ra) # 8000133c <_Z10sem_signalP3SEM>

    sem_signal(itemAvailable);
    800055c4:	0204b503          	ld	a0,32(s1)
    800055c8:	ffffc097          	auipc	ra,0xffffc
    800055cc:	d74080e7          	jalr	-652(ra) # 8000133c <_Z10sem_signalP3SEM>

}
    800055d0:	01813083          	ld	ra,24(sp)
    800055d4:	01013403          	ld	s0,16(sp)
    800055d8:	00813483          	ld	s1,8(sp)
    800055dc:	00013903          	ld	s2,0(sp)
    800055e0:	02010113          	addi	sp,sp,32
    800055e4:	00008067          	ret

00000000800055e8 <_ZN6Buffer3getEv>:

int Buffer::get() {
    800055e8:	fe010113          	addi	sp,sp,-32
    800055ec:	00113c23          	sd	ra,24(sp)
    800055f0:	00813823          	sd	s0,16(sp)
    800055f4:	00913423          	sd	s1,8(sp)
    800055f8:	01213023          	sd	s2,0(sp)
    800055fc:	02010413          	addi	s0,sp,32
    80005600:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80005604:	02053503          	ld	a0,32(a0)
    80005608:	ffffc097          	auipc	ra,0xffffc
    8000560c:	d04080e7          	jalr	-764(ra) # 8000130c <_Z8sem_waitP3SEM>

    sem_wait(mutexHead);
    80005610:	0284b503          	ld	a0,40(s1)
    80005614:	ffffc097          	auipc	ra,0xffffc
    80005618:	cf8080e7          	jalr	-776(ra) # 8000130c <_Z8sem_waitP3SEM>

    int ret = buffer[head];
    8000561c:	0084b703          	ld	a4,8(s1)
    80005620:	0104a783          	lw	a5,16(s1)
    80005624:	00279693          	slli	a3,a5,0x2
    80005628:	00d70733          	add	a4,a4,a3
    8000562c:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005630:	0017879b          	addiw	a5,a5,1
    80005634:	0004a703          	lw	a4,0(s1)
    80005638:	02e7e7bb          	remw	a5,a5,a4
    8000563c:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80005640:	0284b503          	ld	a0,40(s1)
    80005644:	ffffc097          	auipc	ra,0xffffc
    80005648:	cf8080e7          	jalr	-776(ra) # 8000133c <_Z10sem_signalP3SEM>

    sem_signal(spaceAvailable);
    8000564c:	0184b503          	ld	a0,24(s1)
    80005650:	ffffc097          	auipc	ra,0xffffc
    80005654:	cec080e7          	jalr	-788(ra) # 8000133c <_Z10sem_signalP3SEM>

    return ret;
}
    80005658:	00090513          	mv	a0,s2
    8000565c:	01813083          	ld	ra,24(sp)
    80005660:	01013403          	ld	s0,16(sp)
    80005664:	00813483          	ld	s1,8(sp)
    80005668:	00013903          	ld	s2,0(sp)
    8000566c:	02010113          	addi	sp,sp,32
    80005670:	00008067          	ret

0000000080005674 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80005674:	fe010113          	addi	sp,sp,-32
    80005678:	00113c23          	sd	ra,24(sp)
    8000567c:	00813823          	sd	s0,16(sp)
    80005680:	00913423          	sd	s1,8(sp)
    80005684:	01213023          	sd	s2,0(sp)
    80005688:	02010413          	addi	s0,sp,32
    8000568c:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80005690:	02853503          	ld	a0,40(a0)
    80005694:	ffffc097          	auipc	ra,0xffffc
    80005698:	c78080e7          	jalr	-904(ra) # 8000130c <_Z8sem_waitP3SEM>
    sem_wait(mutexTail);
    8000569c:	0304b503          	ld	a0,48(s1)
    800056a0:	ffffc097          	auipc	ra,0xffffc
    800056a4:	c6c080e7          	jalr	-916(ra) # 8000130c <_Z8sem_waitP3SEM>

    if (tail >= head) {
    800056a8:	0144a783          	lw	a5,20(s1)
    800056ac:	0104a903          	lw	s2,16(s1)
    800056b0:	0327ce63          	blt	a5,s2,800056ec <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    800056b4:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    800056b8:	0304b503          	ld	a0,48(s1)
    800056bc:	ffffc097          	auipc	ra,0xffffc
    800056c0:	c80080e7          	jalr	-896(ra) # 8000133c <_Z10sem_signalP3SEM>
    sem_signal(mutexHead);
    800056c4:	0284b503          	ld	a0,40(s1)
    800056c8:	ffffc097          	auipc	ra,0xffffc
    800056cc:	c74080e7          	jalr	-908(ra) # 8000133c <_Z10sem_signalP3SEM>

    return ret;
}
    800056d0:	00090513          	mv	a0,s2
    800056d4:	01813083          	ld	ra,24(sp)
    800056d8:	01013403          	ld	s0,16(sp)
    800056dc:	00813483          	ld	s1,8(sp)
    800056e0:	00013903          	ld	s2,0(sp)
    800056e4:	02010113          	addi	sp,sp,32
    800056e8:	00008067          	ret
        ret = cap - head + tail;
    800056ec:	0004a703          	lw	a4,0(s1)
    800056f0:	4127093b          	subw	s2,a4,s2
    800056f4:	00f9093b          	addw	s2,s2,a5
    800056f8:	fc1ff06f          	j	800056b8 <_ZN6Buffer6getCntEv+0x44>

00000000800056fc <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    800056fc:	fe010113          	addi	sp,sp,-32
    80005700:	00113c23          	sd	ra,24(sp)
    80005704:	00813823          	sd	s0,16(sp)
    80005708:	00913423          	sd	s1,8(sp)
    8000570c:	02010413          	addi	s0,sp,32
    80005710:	00050493          	mv	s1,a0
    __putc('\n');
    80005714:	00a00513          	li	a0,10
    80005718:	00002097          	auipc	ra,0x2
    8000571c:	184080e7          	jalr	388(ra) # 8000789c <__putc>
    printString("Buffer deleted!\n");
    80005720:	00003517          	auipc	a0,0x3
    80005724:	b6850513          	addi	a0,a0,-1176 # 80008288 <_ZZ12printIntegermE6digits+0x1a8>
    80005728:	fffff097          	auipc	ra,0xfffff
    8000572c:	0e4080e7          	jalr	228(ra) # 8000480c <_Z11printStringPKc>
    while (getCnt() > 0) {
    80005730:	00048513          	mv	a0,s1
    80005734:	00000097          	auipc	ra,0x0
    80005738:	f40080e7          	jalr	-192(ra) # 80005674 <_ZN6Buffer6getCntEv>
    8000573c:	02a05c63          	blez	a0,80005774 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80005740:	0084b783          	ld	a5,8(s1)
    80005744:	0104a703          	lw	a4,16(s1)
    80005748:	00271713          	slli	a4,a4,0x2
    8000574c:	00e787b3          	add	a5,a5,a4
        __putc(ch);
    80005750:	0007c503          	lbu	a0,0(a5)
    80005754:	00002097          	auipc	ra,0x2
    80005758:	148080e7          	jalr	328(ra) # 8000789c <__putc>
        head = (head + 1) % cap;
    8000575c:	0104a783          	lw	a5,16(s1)
    80005760:	0017879b          	addiw	a5,a5,1
    80005764:	0004a703          	lw	a4,0(s1)
    80005768:	02e7e7bb          	remw	a5,a5,a4
    8000576c:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80005770:	fc1ff06f          	j	80005730 <_ZN6BufferD1Ev+0x34>
    __putc('!');
    80005774:	02100513          	li	a0,33
    80005778:	00002097          	auipc	ra,0x2
    8000577c:	124080e7          	jalr	292(ra) # 8000789c <__putc>
    __putc('\n');
    80005780:	00a00513          	li	a0,10
    80005784:	00002097          	auipc	ra,0x2
    80005788:	118080e7          	jalr	280(ra) # 8000789c <__putc>
    mem_free(buffer);
    8000578c:	0084b503          	ld	a0,8(s1)
    80005790:	ffffc097          	auipc	ra,0xffffc
    80005794:	a04080e7          	jalr	-1532(ra) # 80001194 <_Z8mem_freePv>
    sem_close(itemAvailable);
    80005798:	0204b503          	ld	a0,32(s1)
    8000579c:	ffffc097          	auipc	ra,0xffffc
    800057a0:	b40080e7          	jalr	-1216(ra) # 800012dc <_Z9sem_closeP3SEM>
    sem_close(spaceAvailable);
    800057a4:	0184b503          	ld	a0,24(s1)
    800057a8:	ffffc097          	auipc	ra,0xffffc
    800057ac:	b34080e7          	jalr	-1228(ra) # 800012dc <_Z9sem_closeP3SEM>
    sem_close(mutexTail);
    800057b0:	0304b503          	ld	a0,48(s1)
    800057b4:	ffffc097          	auipc	ra,0xffffc
    800057b8:	b28080e7          	jalr	-1240(ra) # 800012dc <_Z9sem_closeP3SEM>
    sem_close(mutexHead);
    800057bc:	0284b503          	ld	a0,40(s1)
    800057c0:	ffffc097          	auipc	ra,0xffffc
    800057c4:	b1c080e7          	jalr	-1252(ra) # 800012dc <_Z9sem_closeP3SEM>
}
    800057c8:	01813083          	ld	ra,24(sp)
    800057cc:	01013403          	ld	s0,16(sp)
    800057d0:	00813483          	ld	s1,8(sp)
    800057d4:	02010113          	addi	sp,sp,32
    800057d8:	00008067          	ret

00000000800057dc <start>:
    800057dc:	ff010113          	addi	sp,sp,-16
    800057e0:	00813423          	sd	s0,8(sp)
    800057e4:	01010413          	addi	s0,sp,16
    800057e8:	300027f3          	csrr	a5,mstatus
    800057ec:	ffffe737          	lui	a4,0xffffe
    800057f0:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff350f>
    800057f4:	00e7f7b3          	and	a5,a5,a4
    800057f8:	00001737          	lui	a4,0x1
    800057fc:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80005800:	00e7e7b3          	or	a5,a5,a4
    80005804:	30079073          	csrw	mstatus,a5
    80005808:	00000797          	auipc	a5,0x0
    8000580c:	16078793          	addi	a5,a5,352 # 80005968 <system_main>
    80005810:	34179073          	csrw	mepc,a5
    80005814:	00000793          	li	a5,0
    80005818:	18079073          	csrw	satp,a5
    8000581c:	000107b7          	lui	a5,0x10
    80005820:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80005824:	30279073          	csrw	medeleg,a5
    80005828:	30379073          	csrw	mideleg,a5
    8000582c:	104027f3          	csrr	a5,sie
    80005830:	2227e793          	ori	a5,a5,546
    80005834:	10479073          	csrw	sie,a5
    80005838:	fff00793          	li	a5,-1
    8000583c:	00a7d793          	srli	a5,a5,0xa
    80005840:	3b079073          	csrw	pmpaddr0,a5
    80005844:	00f00793          	li	a5,15
    80005848:	3a079073          	csrw	pmpcfg0,a5
    8000584c:	f14027f3          	csrr	a5,mhartid
    80005850:	0200c737          	lui	a4,0x200c
    80005854:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80005858:	0007869b          	sext.w	a3,a5
    8000585c:	00269713          	slli	a4,a3,0x2
    80005860:	000f4637          	lui	a2,0xf4
    80005864:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80005868:	00d70733          	add	a4,a4,a3
    8000586c:	0037979b          	slliw	a5,a5,0x3
    80005870:	020046b7          	lui	a3,0x2004
    80005874:	00d787b3          	add	a5,a5,a3
    80005878:	00c585b3          	add	a1,a1,a2
    8000587c:	00371693          	slli	a3,a4,0x3
    80005880:	00005717          	auipc	a4,0x5
    80005884:	81070713          	addi	a4,a4,-2032 # 8000a090 <timer_scratch>
    80005888:	00b7b023          	sd	a1,0(a5)
    8000588c:	00d70733          	add	a4,a4,a3
    80005890:	00f73c23          	sd	a5,24(a4)
    80005894:	02c73023          	sd	a2,32(a4)
    80005898:	34071073          	csrw	mscratch,a4
    8000589c:	00000797          	auipc	a5,0x0
    800058a0:	6e478793          	addi	a5,a5,1764 # 80005f80 <timervec>
    800058a4:	30579073          	csrw	mtvec,a5
    800058a8:	300027f3          	csrr	a5,mstatus
    800058ac:	0087e793          	ori	a5,a5,8
    800058b0:	30079073          	csrw	mstatus,a5
    800058b4:	304027f3          	csrr	a5,mie
    800058b8:	0807e793          	ori	a5,a5,128
    800058bc:	30479073          	csrw	mie,a5
    800058c0:	f14027f3          	csrr	a5,mhartid
    800058c4:	0007879b          	sext.w	a5,a5
    800058c8:	00078213          	mv	tp,a5
    800058cc:	30200073          	mret
    800058d0:	00813403          	ld	s0,8(sp)
    800058d4:	01010113          	addi	sp,sp,16
    800058d8:	00008067          	ret

00000000800058dc <timerinit>:
    800058dc:	ff010113          	addi	sp,sp,-16
    800058e0:	00813423          	sd	s0,8(sp)
    800058e4:	01010413          	addi	s0,sp,16
    800058e8:	f14027f3          	csrr	a5,mhartid
    800058ec:	0200c737          	lui	a4,0x200c
    800058f0:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800058f4:	0007869b          	sext.w	a3,a5
    800058f8:	00269713          	slli	a4,a3,0x2
    800058fc:	000f4637          	lui	a2,0xf4
    80005900:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80005904:	00d70733          	add	a4,a4,a3
    80005908:	0037979b          	slliw	a5,a5,0x3
    8000590c:	020046b7          	lui	a3,0x2004
    80005910:	00d787b3          	add	a5,a5,a3
    80005914:	00c585b3          	add	a1,a1,a2
    80005918:	00371693          	slli	a3,a4,0x3
    8000591c:	00004717          	auipc	a4,0x4
    80005920:	77470713          	addi	a4,a4,1908 # 8000a090 <timer_scratch>
    80005924:	00b7b023          	sd	a1,0(a5)
    80005928:	00d70733          	add	a4,a4,a3
    8000592c:	00f73c23          	sd	a5,24(a4)
    80005930:	02c73023          	sd	a2,32(a4)
    80005934:	34071073          	csrw	mscratch,a4
    80005938:	00000797          	auipc	a5,0x0
    8000593c:	64878793          	addi	a5,a5,1608 # 80005f80 <timervec>
    80005940:	30579073          	csrw	mtvec,a5
    80005944:	300027f3          	csrr	a5,mstatus
    80005948:	0087e793          	ori	a5,a5,8
    8000594c:	30079073          	csrw	mstatus,a5
    80005950:	304027f3          	csrr	a5,mie
    80005954:	0807e793          	ori	a5,a5,128
    80005958:	30479073          	csrw	mie,a5
    8000595c:	00813403          	ld	s0,8(sp)
    80005960:	01010113          	addi	sp,sp,16
    80005964:	00008067          	ret

0000000080005968 <system_main>:
    80005968:	fe010113          	addi	sp,sp,-32
    8000596c:	00813823          	sd	s0,16(sp)
    80005970:	00913423          	sd	s1,8(sp)
    80005974:	00113c23          	sd	ra,24(sp)
    80005978:	02010413          	addi	s0,sp,32
    8000597c:	00000097          	auipc	ra,0x0
    80005980:	0c4080e7          	jalr	196(ra) # 80005a40 <cpuid>
    80005984:	00004497          	auipc	s1,0x4
    80005988:	65c48493          	addi	s1,s1,1628 # 80009fe0 <started>
    8000598c:	02050263          	beqz	a0,800059b0 <system_main+0x48>
    80005990:	0004a783          	lw	a5,0(s1)
    80005994:	0007879b          	sext.w	a5,a5
    80005998:	fe078ce3          	beqz	a5,80005990 <system_main+0x28>
    8000599c:	0ff0000f          	fence
    800059a0:	00003517          	auipc	a0,0x3
    800059a4:	9a850513          	addi	a0,a0,-1624 # 80008348 <_ZZ12printIntegermE6digits+0x268>
    800059a8:	00001097          	auipc	ra,0x1
    800059ac:	a74080e7          	jalr	-1420(ra) # 8000641c <panic>
    800059b0:	00001097          	auipc	ra,0x1
    800059b4:	9c8080e7          	jalr	-1592(ra) # 80006378 <consoleinit>
    800059b8:	00001097          	auipc	ra,0x1
    800059bc:	154080e7          	jalr	340(ra) # 80006b0c <printfinit>
    800059c0:	00003517          	auipc	a0,0x3
    800059c4:	95050513          	addi	a0,a0,-1712 # 80008310 <_ZZ12printIntegermE6digits+0x230>
    800059c8:	00001097          	auipc	ra,0x1
    800059cc:	ab0080e7          	jalr	-1360(ra) # 80006478 <__printf>
    800059d0:	00003517          	auipc	a0,0x3
    800059d4:	94850513          	addi	a0,a0,-1720 # 80008318 <_ZZ12printIntegermE6digits+0x238>
    800059d8:	00001097          	auipc	ra,0x1
    800059dc:	aa0080e7          	jalr	-1376(ra) # 80006478 <__printf>
    800059e0:	00003517          	auipc	a0,0x3
    800059e4:	93050513          	addi	a0,a0,-1744 # 80008310 <_ZZ12printIntegermE6digits+0x230>
    800059e8:	00001097          	auipc	ra,0x1
    800059ec:	a90080e7          	jalr	-1392(ra) # 80006478 <__printf>
    800059f0:	00001097          	auipc	ra,0x1
    800059f4:	4a8080e7          	jalr	1192(ra) # 80006e98 <kinit>
    800059f8:	00000097          	auipc	ra,0x0
    800059fc:	148080e7          	jalr	328(ra) # 80005b40 <trapinit>
    80005a00:	00000097          	auipc	ra,0x0
    80005a04:	16c080e7          	jalr	364(ra) # 80005b6c <trapinithart>
    80005a08:	00000097          	auipc	ra,0x0
    80005a0c:	5b8080e7          	jalr	1464(ra) # 80005fc0 <plicinit>
    80005a10:	00000097          	auipc	ra,0x0
    80005a14:	5d8080e7          	jalr	1496(ra) # 80005fe8 <plicinithart>
    80005a18:	00000097          	auipc	ra,0x0
    80005a1c:	078080e7          	jalr	120(ra) # 80005a90 <userinit>
    80005a20:	0ff0000f          	fence
    80005a24:	00100793          	li	a5,1
    80005a28:	00003517          	auipc	a0,0x3
    80005a2c:	90850513          	addi	a0,a0,-1784 # 80008330 <_ZZ12printIntegermE6digits+0x250>
    80005a30:	00f4a023          	sw	a5,0(s1)
    80005a34:	00001097          	auipc	ra,0x1
    80005a38:	a44080e7          	jalr	-1468(ra) # 80006478 <__printf>
    80005a3c:	0000006f          	j	80005a3c <system_main+0xd4>

0000000080005a40 <cpuid>:
    80005a40:	ff010113          	addi	sp,sp,-16
    80005a44:	00813423          	sd	s0,8(sp)
    80005a48:	01010413          	addi	s0,sp,16
    80005a4c:	00020513          	mv	a0,tp
    80005a50:	00813403          	ld	s0,8(sp)
    80005a54:	0005051b          	sext.w	a0,a0
    80005a58:	01010113          	addi	sp,sp,16
    80005a5c:	00008067          	ret

0000000080005a60 <mycpu>:
    80005a60:	ff010113          	addi	sp,sp,-16
    80005a64:	00813423          	sd	s0,8(sp)
    80005a68:	01010413          	addi	s0,sp,16
    80005a6c:	00020793          	mv	a5,tp
    80005a70:	00813403          	ld	s0,8(sp)
    80005a74:	0007879b          	sext.w	a5,a5
    80005a78:	00779793          	slli	a5,a5,0x7
    80005a7c:	00005517          	auipc	a0,0x5
    80005a80:	64450513          	addi	a0,a0,1604 # 8000b0c0 <cpus>
    80005a84:	00f50533          	add	a0,a0,a5
    80005a88:	01010113          	addi	sp,sp,16
    80005a8c:	00008067          	ret

0000000080005a90 <userinit>:
    80005a90:	ff010113          	addi	sp,sp,-16
    80005a94:	00813423          	sd	s0,8(sp)
    80005a98:	01010413          	addi	s0,sp,16
    80005a9c:	00813403          	ld	s0,8(sp)
    80005aa0:	01010113          	addi	sp,sp,16
    80005aa4:	ffffc317          	auipc	t1,0xffffc
    80005aa8:	07c30067          	jr	124(t1) # 80001b20 <main>

0000000080005aac <either_copyout>:
    80005aac:	ff010113          	addi	sp,sp,-16
    80005ab0:	00813023          	sd	s0,0(sp)
    80005ab4:	00113423          	sd	ra,8(sp)
    80005ab8:	01010413          	addi	s0,sp,16
    80005abc:	02051663          	bnez	a0,80005ae8 <either_copyout+0x3c>
    80005ac0:	00058513          	mv	a0,a1
    80005ac4:	00060593          	mv	a1,a2
    80005ac8:	0006861b          	sext.w	a2,a3
    80005acc:	00002097          	auipc	ra,0x2
    80005ad0:	c58080e7          	jalr	-936(ra) # 80007724 <__memmove>
    80005ad4:	00813083          	ld	ra,8(sp)
    80005ad8:	00013403          	ld	s0,0(sp)
    80005adc:	00000513          	li	a0,0
    80005ae0:	01010113          	addi	sp,sp,16
    80005ae4:	00008067          	ret
    80005ae8:	00003517          	auipc	a0,0x3
    80005aec:	88850513          	addi	a0,a0,-1912 # 80008370 <_ZZ12printIntegermE6digits+0x290>
    80005af0:	00001097          	auipc	ra,0x1
    80005af4:	92c080e7          	jalr	-1748(ra) # 8000641c <panic>

0000000080005af8 <either_copyin>:
    80005af8:	ff010113          	addi	sp,sp,-16
    80005afc:	00813023          	sd	s0,0(sp)
    80005b00:	00113423          	sd	ra,8(sp)
    80005b04:	01010413          	addi	s0,sp,16
    80005b08:	02059463          	bnez	a1,80005b30 <either_copyin+0x38>
    80005b0c:	00060593          	mv	a1,a2
    80005b10:	0006861b          	sext.w	a2,a3
    80005b14:	00002097          	auipc	ra,0x2
    80005b18:	c10080e7          	jalr	-1008(ra) # 80007724 <__memmove>
    80005b1c:	00813083          	ld	ra,8(sp)
    80005b20:	00013403          	ld	s0,0(sp)
    80005b24:	00000513          	li	a0,0
    80005b28:	01010113          	addi	sp,sp,16
    80005b2c:	00008067          	ret
    80005b30:	00003517          	auipc	a0,0x3
    80005b34:	86850513          	addi	a0,a0,-1944 # 80008398 <_ZZ12printIntegermE6digits+0x2b8>
    80005b38:	00001097          	auipc	ra,0x1
    80005b3c:	8e4080e7          	jalr	-1820(ra) # 8000641c <panic>

0000000080005b40 <trapinit>:
    80005b40:	ff010113          	addi	sp,sp,-16
    80005b44:	00813423          	sd	s0,8(sp)
    80005b48:	01010413          	addi	s0,sp,16
    80005b4c:	00813403          	ld	s0,8(sp)
    80005b50:	00003597          	auipc	a1,0x3
    80005b54:	87058593          	addi	a1,a1,-1936 # 800083c0 <_ZZ12printIntegermE6digits+0x2e0>
    80005b58:	00005517          	auipc	a0,0x5
    80005b5c:	5e850513          	addi	a0,a0,1512 # 8000b140 <tickslock>
    80005b60:	01010113          	addi	sp,sp,16
    80005b64:	00001317          	auipc	t1,0x1
    80005b68:	5c430067          	jr	1476(t1) # 80007128 <initlock>

0000000080005b6c <trapinithart>:
    80005b6c:	ff010113          	addi	sp,sp,-16
    80005b70:	00813423          	sd	s0,8(sp)
    80005b74:	01010413          	addi	s0,sp,16
    80005b78:	00000797          	auipc	a5,0x0
    80005b7c:	2f878793          	addi	a5,a5,760 # 80005e70 <kernelvec>
    80005b80:	10579073          	csrw	stvec,a5
    80005b84:	00813403          	ld	s0,8(sp)
    80005b88:	01010113          	addi	sp,sp,16
    80005b8c:	00008067          	ret

0000000080005b90 <usertrap>:
    80005b90:	ff010113          	addi	sp,sp,-16
    80005b94:	00813423          	sd	s0,8(sp)
    80005b98:	01010413          	addi	s0,sp,16
    80005b9c:	00813403          	ld	s0,8(sp)
    80005ba0:	01010113          	addi	sp,sp,16
    80005ba4:	00008067          	ret

0000000080005ba8 <usertrapret>:
    80005ba8:	ff010113          	addi	sp,sp,-16
    80005bac:	00813423          	sd	s0,8(sp)
    80005bb0:	01010413          	addi	s0,sp,16
    80005bb4:	00813403          	ld	s0,8(sp)
    80005bb8:	01010113          	addi	sp,sp,16
    80005bbc:	00008067          	ret

0000000080005bc0 <kerneltrap>:
    80005bc0:	fe010113          	addi	sp,sp,-32
    80005bc4:	00813823          	sd	s0,16(sp)
    80005bc8:	00113c23          	sd	ra,24(sp)
    80005bcc:	00913423          	sd	s1,8(sp)
    80005bd0:	02010413          	addi	s0,sp,32
    80005bd4:	142025f3          	csrr	a1,scause
    80005bd8:	100027f3          	csrr	a5,sstatus
    80005bdc:	0027f793          	andi	a5,a5,2
    80005be0:	10079c63          	bnez	a5,80005cf8 <kerneltrap+0x138>
    80005be4:	142027f3          	csrr	a5,scause
    80005be8:	0207ce63          	bltz	a5,80005c24 <kerneltrap+0x64>
    80005bec:	00003517          	auipc	a0,0x3
    80005bf0:	81c50513          	addi	a0,a0,-2020 # 80008408 <_ZZ12printIntegermE6digits+0x328>
    80005bf4:	00001097          	auipc	ra,0x1
    80005bf8:	884080e7          	jalr	-1916(ra) # 80006478 <__printf>
    80005bfc:	141025f3          	csrr	a1,sepc
    80005c00:	14302673          	csrr	a2,stval
    80005c04:	00003517          	auipc	a0,0x3
    80005c08:	81450513          	addi	a0,a0,-2028 # 80008418 <_ZZ12printIntegermE6digits+0x338>
    80005c0c:	00001097          	auipc	ra,0x1
    80005c10:	86c080e7          	jalr	-1940(ra) # 80006478 <__printf>
    80005c14:	00003517          	auipc	a0,0x3
    80005c18:	81c50513          	addi	a0,a0,-2020 # 80008430 <_ZZ12printIntegermE6digits+0x350>
    80005c1c:	00001097          	auipc	ra,0x1
    80005c20:	800080e7          	jalr	-2048(ra) # 8000641c <panic>
    80005c24:	0ff7f713          	andi	a4,a5,255
    80005c28:	00900693          	li	a3,9
    80005c2c:	04d70063          	beq	a4,a3,80005c6c <kerneltrap+0xac>
    80005c30:	fff00713          	li	a4,-1
    80005c34:	03f71713          	slli	a4,a4,0x3f
    80005c38:	00170713          	addi	a4,a4,1
    80005c3c:	fae798e3          	bne	a5,a4,80005bec <kerneltrap+0x2c>
    80005c40:	00000097          	auipc	ra,0x0
    80005c44:	e00080e7          	jalr	-512(ra) # 80005a40 <cpuid>
    80005c48:	06050663          	beqz	a0,80005cb4 <kerneltrap+0xf4>
    80005c4c:	144027f3          	csrr	a5,sip
    80005c50:	ffd7f793          	andi	a5,a5,-3
    80005c54:	14479073          	csrw	sip,a5
    80005c58:	01813083          	ld	ra,24(sp)
    80005c5c:	01013403          	ld	s0,16(sp)
    80005c60:	00813483          	ld	s1,8(sp)
    80005c64:	02010113          	addi	sp,sp,32
    80005c68:	00008067          	ret
    80005c6c:	00000097          	auipc	ra,0x0
    80005c70:	3c8080e7          	jalr	968(ra) # 80006034 <plic_claim>
    80005c74:	00a00793          	li	a5,10
    80005c78:	00050493          	mv	s1,a0
    80005c7c:	06f50863          	beq	a0,a5,80005cec <kerneltrap+0x12c>
    80005c80:	fc050ce3          	beqz	a0,80005c58 <kerneltrap+0x98>
    80005c84:	00050593          	mv	a1,a0
    80005c88:	00002517          	auipc	a0,0x2
    80005c8c:	76050513          	addi	a0,a0,1888 # 800083e8 <_ZZ12printIntegermE6digits+0x308>
    80005c90:	00000097          	auipc	ra,0x0
    80005c94:	7e8080e7          	jalr	2024(ra) # 80006478 <__printf>
    80005c98:	01013403          	ld	s0,16(sp)
    80005c9c:	01813083          	ld	ra,24(sp)
    80005ca0:	00048513          	mv	a0,s1
    80005ca4:	00813483          	ld	s1,8(sp)
    80005ca8:	02010113          	addi	sp,sp,32
    80005cac:	00000317          	auipc	t1,0x0
    80005cb0:	3c030067          	jr	960(t1) # 8000606c <plic_complete>
    80005cb4:	00005517          	auipc	a0,0x5
    80005cb8:	48c50513          	addi	a0,a0,1164 # 8000b140 <tickslock>
    80005cbc:	00001097          	auipc	ra,0x1
    80005cc0:	490080e7          	jalr	1168(ra) # 8000714c <acquire>
    80005cc4:	00004717          	auipc	a4,0x4
    80005cc8:	32070713          	addi	a4,a4,800 # 80009fe4 <ticks>
    80005ccc:	00072783          	lw	a5,0(a4)
    80005cd0:	00005517          	auipc	a0,0x5
    80005cd4:	47050513          	addi	a0,a0,1136 # 8000b140 <tickslock>
    80005cd8:	0017879b          	addiw	a5,a5,1
    80005cdc:	00f72023          	sw	a5,0(a4)
    80005ce0:	00001097          	auipc	ra,0x1
    80005ce4:	538080e7          	jalr	1336(ra) # 80007218 <release>
    80005ce8:	f65ff06f          	j	80005c4c <kerneltrap+0x8c>
    80005cec:	00001097          	auipc	ra,0x1
    80005cf0:	094080e7          	jalr	148(ra) # 80006d80 <uartintr>
    80005cf4:	fa5ff06f          	j	80005c98 <kerneltrap+0xd8>
    80005cf8:	00002517          	auipc	a0,0x2
    80005cfc:	6d050513          	addi	a0,a0,1744 # 800083c8 <_ZZ12printIntegermE6digits+0x2e8>
    80005d00:	00000097          	auipc	ra,0x0
    80005d04:	71c080e7          	jalr	1820(ra) # 8000641c <panic>

0000000080005d08 <clockintr>:
    80005d08:	fe010113          	addi	sp,sp,-32
    80005d0c:	00813823          	sd	s0,16(sp)
    80005d10:	00913423          	sd	s1,8(sp)
    80005d14:	00113c23          	sd	ra,24(sp)
    80005d18:	02010413          	addi	s0,sp,32
    80005d1c:	00005497          	auipc	s1,0x5
    80005d20:	42448493          	addi	s1,s1,1060 # 8000b140 <tickslock>
    80005d24:	00048513          	mv	a0,s1
    80005d28:	00001097          	auipc	ra,0x1
    80005d2c:	424080e7          	jalr	1060(ra) # 8000714c <acquire>
    80005d30:	00004717          	auipc	a4,0x4
    80005d34:	2b470713          	addi	a4,a4,692 # 80009fe4 <ticks>
    80005d38:	00072783          	lw	a5,0(a4)
    80005d3c:	01013403          	ld	s0,16(sp)
    80005d40:	01813083          	ld	ra,24(sp)
    80005d44:	00048513          	mv	a0,s1
    80005d48:	0017879b          	addiw	a5,a5,1
    80005d4c:	00813483          	ld	s1,8(sp)
    80005d50:	00f72023          	sw	a5,0(a4)
    80005d54:	02010113          	addi	sp,sp,32
    80005d58:	00001317          	auipc	t1,0x1
    80005d5c:	4c030067          	jr	1216(t1) # 80007218 <release>

0000000080005d60 <devintr>:
    80005d60:	142027f3          	csrr	a5,scause
    80005d64:	00000513          	li	a0,0
    80005d68:	0007c463          	bltz	a5,80005d70 <devintr+0x10>
    80005d6c:	00008067          	ret
    80005d70:	fe010113          	addi	sp,sp,-32
    80005d74:	00813823          	sd	s0,16(sp)
    80005d78:	00113c23          	sd	ra,24(sp)
    80005d7c:	00913423          	sd	s1,8(sp)
    80005d80:	02010413          	addi	s0,sp,32
    80005d84:	0ff7f713          	andi	a4,a5,255
    80005d88:	00900693          	li	a3,9
    80005d8c:	04d70c63          	beq	a4,a3,80005de4 <devintr+0x84>
    80005d90:	fff00713          	li	a4,-1
    80005d94:	03f71713          	slli	a4,a4,0x3f
    80005d98:	00170713          	addi	a4,a4,1
    80005d9c:	00e78c63          	beq	a5,a4,80005db4 <devintr+0x54>
    80005da0:	01813083          	ld	ra,24(sp)
    80005da4:	01013403          	ld	s0,16(sp)
    80005da8:	00813483          	ld	s1,8(sp)
    80005dac:	02010113          	addi	sp,sp,32
    80005db0:	00008067          	ret
    80005db4:	00000097          	auipc	ra,0x0
    80005db8:	c8c080e7          	jalr	-884(ra) # 80005a40 <cpuid>
    80005dbc:	06050663          	beqz	a0,80005e28 <devintr+0xc8>
    80005dc0:	144027f3          	csrr	a5,sip
    80005dc4:	ffd7f793          	andi	a5,a5,-3
    80005dc8:	14479073          	csrw	sip,a5
    80005dcc:	01813083          	ld	ra,24(sp)
    80005dd0:	01013403          	ld	s0,16(sp)
    80005dd4:	00813483          	ld	s1,8(sp)
    80005dd8:	00200513          	li	a0,2
    80005ddc:	02010113          	addi	sp,sp,32
    80005de0:	00008067          	ret
    80005de4:	00000097          	auipc	ra,0x0
    80005de8:	250080e7          	jalr	592(ra) # 80006034 <plic_claim>
    80005dec:	00a00793          	li	a5,10
    80005df0:	00050493          	mv	s1,a0
    80005df4:	06f50663          	beq	a0,a5,80005e60 <devintr+0x100>
    80005df8:	00100513          	li	a0,1
    80005dfc:	fa0482e3          	beqz	s1,80005da0 <devintr+0x40>
    80005e00:	00048593          	mv	a1,s1
    80005e04:	00002517          	auipc	a0,0x2
    80005e08:	5e450513          	addi	a0,a0,1508 # 800083e8 <_ZZ12printIntegermE6digits+0x308>
    80005e0c:	00000097          	auipc	ra,0x0
    80005e10:	66c080e7          	jalr	1644(ra) # 80006478 <__printf>
    80005e14:	00048513          	mv	a0,s1
    80005e18:	00000097          	auipc	ra,0x0
    80005e1c:	254080e7          	jalr	596(ra) # 8000606c <plic_complete>
    80005e20:	00100513          	li	a0,1
    80005e24:	f7dff06f          	j	80005da0 <devintr+0x40>
    80005e28:	00005517          	auipc	a0,0x5
    80005e2c:	31850513          	addi	a0,a0,792 # 8000b140 <tickslock>
    80005e30:	00001097          	auipc	ra,0x1
    80005e34:	31c080e7          	jalr	796(ra) # 8000714c <acquire>
    80005e38:	00004717          	auipc	a4,0x4
    80005e3c:	1ac70713          	addi	a4,a4,428 # 80009fe4 <ticks>
    80005e40:	00072783          	lw	a5,0(a4)
    80005e44:	00005517          	auipc	a0,0x5
    80005e48:	2fc50513          	addi	a0,a0,764 # 8000b140 <tickslock>
    80005e4c:	0017879b          	addiw	a5,a5,1
    80005e50:	00f72023          	sw	a5,0(a4)
    80005e54:	00001097          	auipc	ra,0x1
    80005e58:	3c4080e7          	jalr	964(ra) # 80007218 <release>
    80005e5c:	f65ff06f          	j	80005dc0 <devintr+0x60>
    80005e60:	00001097          	auipc	ra,0x1
    80005e64:	f20080e7          	jalr	-224(ra) # 80006d80 <uartintr>
    80005e68:	fadff06f          	j	80005e14 <devintr+0xb4>
    80005e6c:	0000                	unimp
	...

0000000080005e70 <kernelvec>:
    80005e70:	f0010113          	addi	sp,sp,-256
    80005e74:	00113023          	sd	ra,0(sp)
    80005e78:	00213423          	sd	sp,8(sp)
    80005e7c:	00313823          	sd	gp,16(sp)
    80005e80:	00413c23          	sd	tp,24(sp)
    80005e84:	02513023          	sd	t0,32(sp)
    80005e88:	02613423          	sd	t1,40(sp)
    80005e8c:	02713823          	sd	t2,48(sp)
    80005e90:	02813c23          	sd	s0,56(sp)
    80005e94:	04913023          	sd	s1,64(sp)
    80005e98:	04a13423          	sd	a0,72(sp)
    80005e9c:	04b13823          	sd	a1,80(sp)
    80005ea0:	04c13c23          	sd	a2,88(sp)
    80005ea4:	06d13023          	sd	a3,96(sp)
    80005ea8:	06e13423          	sd	a4,104(sp)
    80005eac:	06f13823          	sd	a5,112(sp)
    80005eb0:	07013c23          	sd	a6,120(sp)
    80005eb4:	09113023          	sd	a7,128(sp)
    80005eb8:	09213423          	sd	s2,136(sp)
    80005ebc:	09313823          	sd	s3,144(sp)
    80005ec0:	09413c23          	sd	s4,152(sp)
    80005ec4:	0b513023          	sd	s5,160(sp)
    80005ec8:	0b613423          	sd	s6,168(sp)
    80005ecc:	0b713823          	sd	s7,176(sp)
    80005ed0:	0b813c23          	sd	s8,184(sp)
    80005ed4:	0d913023          	sd	s9,192(sp)
    80005ed8:	0da13423          	sd	s10,200(sp)
    80005edc:	0db13823          	sd	s11,208(sp)
    80005ee0:	0dc13c23          	sd	t3,216(sp)
    80005ee4:	0fd13023          	sd	t4,224(sp)
    80005ee8:	0fe13423          	sd	t5,232(sp)
    80005eec:	0ff13823          	sd	t6,240(sp)
    80005ef0:	cd1ff0ef          	jal	ra,80005bc0 <kerneltrap>
    80005ef4:	00013083          	ld	ra,0(sp)
    80005ef8:	00813103          	ld	sp,8(sp)
    80005efc:	01013183          	ld	gp,16(sp)
    80005f00:	02013283          	ld	t0,32(sp)
    80005f04:	02813303          	ld	t1,40(sp)
    80005f08:	03013383          	ld	t2,48(sp)
    80005f0c:	03813403          	ld	s0,56(sp)
    80005f10:	04013483          	ld	s1,64(sp)
    80005f14:	04813503          	ld	a0,72(sp)
    80005f18:	05013583          	ld	a1,80(sp)
    80005f1c:	05813603          	ld	a2,88(sp)
    80005f20:	06013683          	ld	a3,96(sp)
    80005f24:	06813703          	ld	a4,104(sp)
    80005f28:	07013783          	ld	a5,112(sp)
    80005f2c:	07813803          	ld	a6,120(sp)
    80005f30:	08013883          	ld	a7,128(sp)
    80005f34:	08813903          	ld	s2,136(sp)
    80005f38:	09013983          	ld	s3,144(sp)
    80005f3c:	09813a03          	ld	s4,152(sp)
    80005f40:	0a013a83          	ld	s5,160(sp)
    80005f44:	0a813b03          	ld	s6,168(sp)
    80005f48:	0b013b83          	ld	s7,176(sp)
    80005f4c:	0b813c03          	ld	s8,184(sp)
    80005f50:	0c013c83          	ld	s9,192(sp)
    80005f54:	0c813d03          	ld	s10,200(sp)
    80005f58:	0d013d83          	ld	s11,208(sp)
    80005f5c:	0d813e03          	ld	t3,216(sp)
    80005f60:	0e013e83          	ld	t4,224(sp)
    80005f64:	0e813f03          	ld	t5,232(sp)
    80005f68:	0f013f83          	ld	t6,240(sp)
    80005f6c:	10010113          	addi	sp,sp,256
    80005f70:	10200073          	sret
    80005f74:	00000013          	nop
    80005f78:	00000013          	nop
    80005f7c:	00000013          	nop

0000000080005f80 <timervec>:
    80005f80:	34051573          	csrrw	a0,mscratch,a0
    80005f84:	00b53023          	sd	a1,0(a0)
    80005f88:	00c53423          	sd	a2,8(a0)
    80005f8c:	00d53823          	sd	a3,16(a0)
    80005f90:	01853583          	ld	a1,24(a0)
    80005f94:	02053603          	ld	a2,32(a0)
    80005f98:	0005b683          	ld	a3,0(a1)
    80005f9c:	00c686b3          	add	a3,a3,a2
    80005fa0:	00d5b023          	sd	a3,0(a1)
    80005fa4:	00200593          	li	a1,2
    80005fa8:	14459073          	csrw	sip,a1
    80005fac:	01053683          	ld	a3,16(a0)
    80005fb0:	00853603          	ld	a2,8(a0)
    80005fb4:	00053583          	ld	a1,0(a0)
    80005fb8:	34051573          	csrrw	a0,mscratch,a0
    80005fbc:	30200073          	mret

0000000080005fc0 <plicinit>:
    80005fc0:	ff010113          	addi	sp,sp,-16
    80005fc4:	00813423          	sd	s0,8(sp)
    80005fc8:	01010413          	addi	s0,sp,16
    80005fcc:	00813403          	ld	s0,8(sp)
    80005fd0:	0c0007b7          	lui	a5,0xc000
    80005fd4:	00100713          	li	a4,1
    80005fd8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80005fdc:	00e7a223          	sw	a4,4(a5)
    80005fe0:	01010113          	addi	sp,sp,16
    80005fe4:	00008067          	ret

0000000080005fe8 <plicinithart>:
    80005fe8:	ff010113          	addi	sp,sp,-16
    80005fec:	00813023          	sd	s0,0(sp)
    80005ff0:	00113423          	sd	ra,8(sp)
    80005ff4:	01010413          	addi	s0,sp,16
    80005ff8:	00000097          	auipc	ra,0x0
    80005ffc:	a48080e7          	jalr	-1464(ra) # 80005a40 <cpuid>
    80006000:	0085171b          	slliw	a4,a0,0x8
    80006004:	0c0027b7          	lui	a5,0xc002
    80006008:	00e787b3          	add	a5,a5,a4
    8000600c:	40200713          	li	a4,1026
    80006010:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80006014:	00813083          	ld	ra,8(sp)
    80006018:	00013403          	ld	s0,0(sp)
    8000601c:	00d5151b          	slliw	a0,a0,0xd
    80006020:	0c2017b7          	lui	a5,0xc201
    80006024:	00a78533          	add	a0,a5,a0
    80006028:	00052023          	sw	zero,0(a0)
    8000602c:	01010113          	addi	sp,sp,16
    80006030:	00008067          	ret

0000000080006034 <plic_claim>:
    80006034:	ff010113          	addi	sp,sp,-16
    80006038:	00813023          	sd	s0,0(sp)
    8000603c:	00113423          	sd	ra,8(sp)
    80006040:	01010413          	addi	s0,sp,16
    80006044:	00000097          	auipc	ra,0x0
    80006048:	9fc080e7          	jalr	-1540(ra) # 80005a40 <cpuid>
    8000604c:	00813083          	ld	ra,8(sp)
    80006050:	00013403          	ld	s0,0(sp)
    80006054:	00d5151b          	slliw	a0,a0,0xd
    80006058:	0c2017b7          	lui	a5,0xc201
    8000605c:	00a78533          	add	a0,a5,a0
    80006060:	00452503          	lw	a0,4(a0)
    80006064:	01010113          	addi	sp,sp,16
    80006068:	00008067          	ret

000000008000606c <plic_complete>:
    8000606c:	fe010113          	addi	sp,sp,-32
    80006070:	00813823          	sd	s0,16(sp)
    80006074:	00913423          	sd	s1,8(sp)
    80006078:	00113c23          	sd	ra,24(sp)
    8000607c:	02010413          	addi	s0,sp,32
    80006080:	00050493          	mv	s1,a0
    80006084:	00000097          	auipc	ra,0x0
    80006088:	9bc080e7          	jalr	-1604(ra) # 80005a40 <cpuid>
    8000608c:	01813083          	ld	ra,24(sp)
    80006090:	01013403          	ld	s0,16(sp)
    80006094:	00d5179b          	slliw	a5,a0,0xd
    80006098:	0c201737          	lui	a4,0xc201
    8000609c:	00f707b3          	add	a5,a4,a5
    800060a0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800060a4:	00813483          	ld	s1,8(sp)
    800060a8:	02010113          	addi	sp,sp,32
    800060ac:	00008067          	ret

00000000800060b0 <consolewrite>:
    800060b0:	fb010113          	addi	sp,sp,-80
    800060b4:	04813023          	sd	s0,64(sp)
    800060b8:	04113423          	sd	ra,72(sp)
    800060bc:	02913c23          	sd	s1,56(sp)
    800060c0:	03213823          	sd	s2,48(sp)
    800060c4:	03313423          	sd	s3,40(sp)
    800060c8:	03413023          	sd	s4,32(sp)
    800060cc:	01513c23          	sd	s5,24(sp)
    800060d0:	05010413          	addi	s0,sp,80
    800060d4:	06c05c63          	blez	a2,8000614c <consolewrite+0x9c>
    800060d8:	00060993          	mv	s3,a2
    800060dc:	00050a13          	mv	s4,a0
    800060e0:	00058493          	mv	s1,a1
    800060e4:	00000913          	li	s2,0
    800060e8:	fff00a93          	li	s5,-1
    800060ec:	01c0006f          	j	80006108 <consolewrite+0x58>
    800060f0:	fbf44503          	lbu	a0,-65(s0)
    800060f4:	0019091b          	addiw	s2,s2,1
    800060f8:	00148493          	addi	s1,s1,1
    800060fc:	00001097          	auipc	ra,0x1
    80006100:	a9c080e7          	jalr	-1380(ra) # 80006b98 <uartputc>
    80006104:	03298063          	beq	s3,s2,80006124 <consolewrite+0x74>
    80006108:	00048613          	mv	a2,s1
    8000610c:	00100693          	li	a3,1
    80006110:	000a0593          	mv	a1,s4
    80006114:	fbf40513          	addi	a0,s0,-65
    80006118:	00000097          	auipc	ra,0x0
    8000611c:	9e0080e7          	jalr	-1568(ra) # 80005af8 <either_copyin>
    80006120:	fd5518e3          	bne	a0,s5,800060f0 <consolewrite+0x40>
    80006124:	04813083          	ld	ra,72(sp)
    80006128:	04013403          	ld	s0,64(sp)
    8000612c:	03813483          	ld	s1,56(sp)
    80006130:	02813983          	ld	s3,40(sp)
    80006134:	02013a03          	ld	s4,32(sp)
    80006138:	01813a83          	ld	s5,24(sp)
    8000613c:	00090513          	mv	a0,s2
    80006140:	03013903          	ld	s2,48(sp)
    80006144:	05010113          	addi	sp,sp,80
    80006148:	00008067          	ret
    8000614c:	00000913          	li	s2,0
    80006150:	fd5ff06f          	j	80006124 <consolewrite+0x74>

0000000080006154 <consoleread>:
    80006154:	f9010113          	addi	sp,sp,-112
    80006158:	06813023          	sd	s0,96(sp)
    8000615c:	04913c23          	sd	s1,88(sp)
    80006160:	05213823          	sd	s2,80(sp)
    80006164:	05313423          	sd	s3,72(sp)
    80006168:	05413023          	sd	s4,64(sp)
    8000616c:	03513c23          	sd	s5,56(sp)
    80006170:	03613823          	sd	s6,48(sp)
    80006174:	03713423          	sd	s7,40(sp)
    80006178:	03813023          	sd	s8,32(sp)
    8000617c:	06113423          	sd	ra,104(sp)
    80006180:	01913c23          	sd	s9,24(sp)
    80006184:	07010413          	addi	s0,sp,112
    80006188:	00060b93          	mv	s7,a2
    8000618c:	00050913          	mv	s2,a0
    80006190:	00058c13          	mv	s8,a1
    80006194:	00060b1b          	sext.w	s6,a2
    80006198:	00005497          	auipc	s1,0x5
    8000619c:	fd048493          	addi	s1,s1,-48 # 8000b168 <cons>
    800061a0:	00400993          	li	s3,4
    800061a4:	fff00a13          	li	s4,-1
    800061a8:	00a00a93          	li	s5,10
    800061ac:	05705e63          	blez	s7,80006208 <consoleread+0xb4>
    800061b0:	09c4a703          	lw	a4,156(s1)
    800061b4:	0984a783          	lw	a5,152(s1)
    800061b8:	0007071b          	sext.w	a4,a4
    800061bc:	08e78463          	beq	a5,a4,80006244 <consoleread+0xf0>
    800061c0:	07f7f713          	andi	a4,a5,127
    800061c4:	00e48733          	add	a4,s1,a4
    800061c8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800061cc:	0017869b          	addiw	a3,a5,1
    800061d0:	08d4ac23          	sw	a3,152(s1)
    800061d4:	00070c9b          	sext.w	s9,a4
    800061d8:	0b370663          	beq	a4,s3,80006284 <consoleread+0x130>
    800061dc:	00100693          	li	a3,1
    800061e0:	f9f40613          	addi	a2,s0,-97
    800061e4:	000c0593          	mv	a1,s8
    800061e8:	00090513          	mv	a0,s2
    800061ec:	f8e40fa3          	sb	a4,-97(s0)
    800061f0:	00000097          	auipc	ra,0x0
    800061f4:	8bc080e7          	jalr	-1860(ra) # 80005aac <either_copyout>
    800061f8:	01450863          	beq	a0,s4,80006208 <consoleread+0xb4>
    800061fc:	001c0c13          	addi	s8,s8,1
    80006200:	fffb8b9b          	addiw	s7,s7,-1
    80006204:	fb5c94e3          	bne	s9,s5,800061ac <consoleread+0x58>
    80006208:	000b851b          	sext.w	a0,s7
    8000620c:	06813083          	ld	ra,104(sp)
    80006210:	06013403          	ld	s0,96(sp)
    80006214:	05813483          	ld	s1,88(sp)
    80006218:	05013903          	ld	s2,80(sp)
    8000621c:	04813983          	ld	s3,72(sp)
    80006220:	04013a03          	ld	s4,64(sp)
    80006224:	03813a83          	ld	s5,56(sp)
    80006228:	02813b83          	ld	s7,40(sp)
    8000622c:	02013c03          	ld	s8,32(sp)
    80006230:	01813c83          	ld	s9,24(sp)
    80006234:	40ab053b          	subw	a0,s6,a0
    80006238:	03013b03          	ld	s6,48(sp)
    8000623c:	07010113          	addi	sp,sp,112
    80006240:	00008067          	ret
    80006244:	00001097          	auipc	ra,0x1
    80006248:	1d8080e7          	jalr	472(ra) # 8000741c <push_on>
    8000624c:	0984a703          	lw	a4,152(s1)
    80006250:	09c4a783          	lw	a5,156(s1)
    80006254:	0007879b          	sext.w	a5,a5
    80006258:	fef70ce3          	beq	a4,a5,80006250 <consoleread+0xfc>
    8000625c:	00001097          	auipc	ra,0x1
    80006260:	234080e7          	jalr	564(ra) # 80007490 <pop_on>
    80006264:	0984a783          	lw	a5,152(s1)
    80006268:	07f7f713          	andi	a4,a5,127
    8000626c:	00e48733          	add	a4,s1,a4
    80006270:	01874703          	lbu	a4,24(a4)
    80006274:	0017869b          	addiw	a3,a5,1
    80006278:	08d4ac23          	sw	a3,152(s1)
    8000627c:	00070c9b          	sext.w	s9,a4
    80006280:	f5371ee3          	bne	a4,s3,800061dc <consoleread+0x88>
    80006284:	000b851b          	sext.w	a0,s7
    80006288:	f96bf2e3          	bgeu	s7,s6,8000620c <consoleread+0xb8>
    8000628c:	08f4ac23          	sw	a5,152(s1)
    80006290:	f7dff06f          	j	8000620c <consoleread+0xb8>

0000000080006294 <consputc>:
    80006294:	10000793          	li	a5,256
    80006298:	00f50663          	beq	a0,a5,800062a4 <consputc+0x10>
    8000629c:	00001317          	auipc	t1,0x1
    800062a0:	9f430067          	jr	-1548(t1) # 80006c90 <uartputc_sync>
    800062a4:	ff010113          	addi	sp,sp,-16
    800062a8:	00113423          	sd	ra,8(sp)
    800062ac:	00813023          	sd	s0,0(sp)
    800062b0:	01010413          	addi	s0,sp,16
    800062b4:	00800513          	li	a0,8
    800062b8:	00001097          	auipc	ra,0x1
    800062bc:	9d8080e7          	jalr	-1576(ra) # 80006c90 <uartputc_sync>
    800062c0:	02000513          	li	a0,32
    800062c4:	00001097          	auipc	ra,0x1
    800062c8:	9cc080e7          	jalr	-1588(ra) # 80006c90 <uartputc_sync>
    800062cc:	00013403          	ld	s0,0(sp)
    800062d0:	00813083          	ld	ra,8(sp)
    800062d4:	00800513          	li	a0,8
    800062d8:	01010113          	addi	sp,sp,16
    800062dc:	00001317          	auipc	t1,0x1
    800062e0:	9b430067          	jr	-1612(t1) # 80006c90 <uartputc_sync>

00000000800062e4 <consoleintr>:
    800062e4:	fe010113          	addi	sp,sp,-32
    800062e8:	00813823          	sd	s0,16(sp)
    800062ec:	00913423          	sd	s1,8(sp)
    800062f0:	01213023          	sd	s2,0(sp)
    800062f4:	00113c23          	sd	ra,24(sp)
    800062f8:	02010413          	addi	s0,sp,32
    800062fc:	00005917          	auipc	s2,0x5
    80006300:	e6c90913          	addi	s2,s2,-404 # 8000b168 <cons>
    80006304:	00050493          	mv	s1,a0
    80006308:	00090513          	mv	a0,s2
    8000630c:	00001097          	auipc	ra,0x1
    80006310:	e40080e7          	jalr	-448(ra) # 8000714c <acquire>
    80006314:	02048c63          	beqz	s1,8000634c <consoleintr+0x68>
    80006318:	0a092783          	lw	a5,160(s2)
    8000631c:	09892703          	lw	a4,152(s2)
    80006320:	07f00693          	li	a3,127
    80006324:	40e7873b          	subw	a4,a5,a4
    80006328:	02e6e263          	bltu	a3,a4,8000634c <consoleintr+0x68>
    8000632c:	00d00713          	li	a4,13
    80006330:	04e48063          	beq	s1,a4,80006370 <consoleintr+0x8c>
    80006334:	07f7f713          	andi	a4,a5,127
    80006338:	00e90733          	add	a4,s2,a4
    8000633c:	0017879b          	addiw	a5,a5,1
    80006340:	0af92023          	sw	a5,160(s2)
    80006344:	00970c23          	sb	s1,24(a4)
    80006348:	08f92e23          	sw	a5,156(s2)
    8000634c:	01013403          	ld	s0,16(sp)
    80006350:	01813083          	ld	ra,24(sp)
    80006354:	00813483          	ld	s1,8(sp)
    80006358:	00013903          	ld	s2,0(sp)
    8000635c:	00005517          	auipc	a0,0x5
    80006360:	e0c50513          	addi	a0,a0,-500 # 8000b168 <cons>
    80006364:	02010113          	addi	sp,sp,32
    80006368:	00001317          	auipc	t1,0x1
    8000636c:	eb030067          	jr	-336(t1) # 80007218 <release>
    80006370:	00a00493          	li	s1,10
    80006374:	fc1ff06f          	j	80006334 <consoleintr+0x50>

0000000080006378 <consoleinit>:
    80006378:	fe010113          	addi	sp,sp,-32
    8000637c:	00113c23          	sd	ra,24(sp)
    80006380:	00813823          	sd	s0,16(sp)
    80006384:	00913423          	sd	s1,8(sp)
    80006388:	02010413          	addi	s0,sp,32
    8000638c:	00005497          	auipc	s1,0x5
    80006390:	ddc48493          	addi	s1,s1,-548 # 8000b168 <cons>
    80006394:	00048513          	mv	a0,s1
    80006398:	00002597          	auipc	a1,0x2
    8000639c:	0a858593          	addi	a1,a1,168 # 80008440 <_ZZ12printIntegermE6digits+0x360>
    800063a0:	00001097          	auipc	ra,0x1
    800063a4:	d88080e7          	jalr	-632(ra) # 80007128 <initlock>
    800063a8:	00000097          	auipc	ra,0x0
    800063ac:	7ac080e7          	jalr	1964(ra) # 80006b54 <uartinit>
    800063b0:	01813083          	ld	ra,24(sp)
    800063b4:	01013403          	ld	s0,16(sp)
    800063b8:	00000797          	auipc	a5,0x0
    800063bc:	d9c78793          	addi	a5,a5,-612 # 80006154 <consoleread>
    800063c0:	0af4bc23          	sd	a5,184(s1)
    800063c4:	00000797          	auipc	a5,0x0
    800063c8:	cec78793          	addi	a5,a5,-788 # 800060b0 <consolewrite>
    800063cc:	0cf4b023          	sd	a5,192(s1)
    800063d0:	00813483          	ld	s1,8(sp)
    800063d4:	02010113          	addi	sp,sp,32
    800063d8:	00008067          	ret

00000000800063dc <console_read>:
    800063dc:	ff010113          	addi	sp,sp,-16
    800063e0:	00813423          	sd	s0,8(sp)
    800063e4:	01010413          	addi	s0,sp,16
    800063e8:	00813403          	ld	s0,8(sp)
    800063ec:	00005317          	auipc	t1,0x5
    800063f0:	e3433303          	ld	t1,-460(t1) # 8000b220 <devsw+0x10>
    800063f4:	01010113          	addi	sp,sp,16
    800063f8:	00030067          	jr	t1

00000000800063fc <console_write>:
    800063fc:	ff010113          	addi	sp,sp,-16
    80006400:	00813423          	sd	s0,8(sp)
    80006404:	01010413          	addi	s0,sp,16
    80006408:	00813403          	ld	s0,8(sp)
    8000640c:	00005317          	auipc	t1,0x5
    80006410:	e1c33303          	ld	t1,-484(t1) # 8000b228 <devsw+0x18>
    80006414:	01010113          	addi	sp,sp,16
    80006418:	00030067          	jr	t1

000000008000641c <panic>:
    8000641c:	fe010113          	addi	sp,sp,-32
    80006420:	00113c23          	sd	ra,24(sp)
    80006424:	00813823          	sd	s0,16(sp)
    80006428:	00913423          	sd	s1,8(sp)
    8000642c:	02010413          	addi	s0,sp,32
    80006430:	00050493          	mv	s1,a0
    80006434:	00002517          	auipc	a0,0x2
    80006438:	01450513          	addi	a0,a0,20 # 80008448 <_ZZ12printIntegermE6digits+0x368>
    8000643c:	00005797          	auipc	a5,0x5
    80006440:	e807a623          	sw	zero,-372(a5) # 8000b2c8 <pr+0x18>
    80006444:	00000097          	auipc	ra,0x0
    80006448:	034080e7          	jalr	52(ra) # 80006478 <__printf>
    8000644c:	00048513          	mv	a0,s1
    80006450:	00000097          	auipc	ra,0x0
    80006454:	028080e7          	jalr	40(ra) # 80006478 <__printf>
    80006458:	00002517          	auipc	a0,0x2
    8000645c:	eb850513          	addi	a0,a0,-328 # 80008310 <_ZZ12printIntegermE6digits+0x230>
    80006460:	00000097          	auipc	ra,0x0
    80006464:	018080e7          	jalr	24(ra) # 80006478 <__printf>
    80006468:	00100793          	li	a5,1
    8000646c:	00004717          	auipc	a4,0x4
    80006470:	b6f72e23          	sw	a5,-1156(a4) # 80009fe8 <panicked>
    80006474:	0000006f          	j	80006474 <panic+0x58>

0000000080006478 <__printf>:
    80006478:	f3010113          	addi	sp,sp,-208
    8000647c:	08813023          	sd	s0,128(sp)
    80006480:	07313423          	sd	s3,104(sp)
    80006484:	09010413          	addi	s0,sp,144
    80006488:	05813023          	sd	s8,64(sp)
    8000648c:	08113423          	sd	ra,136(sp)
    80006490:	06913c23          	sd	s1,120(sp)
    80006494:	07213823          	sd	s2,112(sp)
    80006498:	07413023          	sd	s4,96(sp)
    8000649c:	05513c23          	sd	s5,88(sp)
    800064a0:	05613823          	sd	s6,80(sp)
    800064a4:	05713423          	sd	s7,72(sp)
    800064a8:	03913c23          	sd	s9,56(sp)
    800064ac:	03a13823          	sd	s10,48(sp)
    800064b0:	03b13423          	sd	s11,40(sp)
    800064b4:	00005317          	auipc	t1,0x5
    800064b8:	dfc30313          	addi	t1,t1,-516 # 8000b2b0 <pr>
    800064bc:	01832c03          	lw	s8,24(t1)
    800064c0:	00b43423          	sd	a1,8(s0)
    800064c4:	00c43823          	sd	a2,16(s0)
    800064c8:	00d43c23          	sd	a3,24(s0)
    800064cc:	02e43023          	sd	a4,32(s0)
    800064d0:	02f43423          	sd	a5,40(s0)
    800064d4:	03043823          	sd	a6,48(s0)
    800064d8:	03143c23          	sd	a7,56(s0)
    800064dc:	00050993          	mv	s3,a0
    800064e0:	4a0c1663          	bnez	s8,8000698c <__printf+0x514>
    800064e4:	60098c63          	beqz	s3,80006afc <__printf+0x684>
    800064e8:	0009c503          	lbu	a0,0(s3)
    800064ec:	00840793          	addi	a5,s0,8
    800064f0:	f6f43c23          	sd	a5,-136(s0)
    800064f4:	00000493          	li	s1,0
    800064f8:	22050063          	beqz	a0,80006718 <__printf+0x2a0>
    800064fc:	00002a37          	lui	s4,0x2
    80006500:	00018ab7          	lui	s5,0x18
    80006504:	000f4b37          	lui	s6,0xf4
    80006508:	00989bb7          	lui	s7,0x989
    8000650c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80006510:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80006514:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80006518:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000651c:	00148c9b          	addiw	s9,s1,1
    80006520:	02500793          	li	a5,37
    80006524:	01998933          	add	s2,s3,s9
    80006528:	38f51263          	bne	a0,a5,800068ac <__printf+0x434>
    8000652c:	00094783          	lbu	a5,0(s2)
    80006530:	00078c9b          	sext.w	s9,a5
    80006534:	1e078263          	beqz	a5,80006718 <__printf+0x2a0>
    80006538:	0024849b          	addiw	s1,s1,2
    8000653c:	07000713          	li	a4,112
    80006540:	00998933          	add	s2,s3,s1
    80006544:	38e78a63          	beq	a5,a4,800068d8 <__printf+0x460>
    80006548:	20f76863          	bltu	a4,a5,80006758 <__printf+0x2e0>
    8000654c:	42a78863          	beq	a5,a0,8000697c <__printf+0x504>
    80006550:	06400713          	li	a4,100
    80006554:	40e79663          	bne	a5,a4,80006960 <__printf+0x4e8>
    80006558:	f7843783          	ld	a5,-136(s0)
    8000655c:	0007a603          	lw	a2,0(a5)
    80006560:	00878793          	addi	a5,a5,8
    80006564:	f6f43c23          	sd	a5,-136(s0)
    80006568:	42064a63          	bltz	a2,8000699c <__printf+0x524>
    8000656c:	00a00713          	li	a4,10
    80006570:	02e677bb          	remuw	a5,a2,a4
    80006574:	00002d97          	auipc	s11,0x2
    80006578:	efcd8d93          	addi	s11,s11,-260 # 80008470 <digits>
    8000657c:	00900593          	li	a1,9
    80006580:	0006051b          	sext.w	a0,a2
    80006584:	00000c93          	li	s9,0
    80006588:	02079793          	slli	a5,a5,0x20
    8000658c:	0207d793          	srli	a5,a5,0x20
    80006590:	00fd87b3          	add	a5,s11,a5
    80006594:	0007c783          	lbu	a5,0(a5)
    80006598:	02e656bb          	divuw	a3,a2,a4
    8000659c:	f8f40023          	sb	a5,-128(s0)
    800065a0:	14c5d863          	bge	a1,a2,800066f0 <__printf+0x278>
    800065a4:	06300593          	li	a1,99
    800065a8:	00100c93          	li	s9,1
    800065ac:	02e6f7bb          	remuw	a5,a3,a4
    800065b0:	02079793          	slli	a5,a5,0x20
    800065b4:	0207d793          	srli	a5,a5,0x20
    800065b8:	00fd87b3          	add	a5,s11,a5
    800065bc:	0007c783          	lbu	a5,0(a5)
    800065c0:	02e6d73b          	divuw	a4,a3,a4
    800065c4:	f8f400a3          	sb	a5,-127(s0)
    800065c8:	12a5f463          	bgeu	a1,a0,800066f0 <__printf+0x278>
    800065cc:	00a00693          	li	a3,10
    800065d0:	00900593          	li	a1,9
    800065d4:	02d777bb          	remuw	a5,a4,a3
    800065d8:	02079793          	slli	a5,a5,0x20
    800065dc:	0207d793          	srli	a5,a5,0x20
    800065e0:	00fd87b3          	add	a5,s11,a5
    800065e4:	0007c503          	lbu	a0,0(a5)
    800065e8:	02d757bb          	divuw	a5,a4,a3
    800065ec:	f8a40123          	sb	a0,-126(s0)
    800065f0:	48e5f263          	bgeu	a1,a4,80006a74 <__printf+0x5fc>
    800065f4:	06300513          	li	a0,99
    800065f8:	02d7f5bb          	remuw	a1,a5,a3
    800065fc:	02059593          	slli	a1,a1,0x20
    80006600:	0205d593          	srli	a1,a1,0x20
    80006604:	00bd85b3          	add	a1,s11,a1
    80006608:	0005c583          	lbu	a1,0(a1)
    8000660c:	02d7d7bb          	divuw	a5,a5,a3
    80006610:	f8b401a3          	sb	a1,-125(s0)
    80006614:	48e57263          	bgeu	a0,a4,80006a98 <__printf+0x620>
    80006618:	3e700513          	li	a0,999
    8000661c:	02d7f5bb          	remuw	a1,a5,a3
    80006620:	02059593          	slli	a1,a1,0x20
    80006624:	0205d593          	srli	a1,a1,0x20
    80006628:	00bd85b3          	add	a1,s11,a1
    8000662c:	0005c583          	lbu	a1,0(a1)
    80006630:	02d7d7bb          	divuw	a5,a5,a3
    80006634:	f8b40223          	sb	a1,-124(s0)
    80006638:	46e57663          	bgeu	a0,a4,80006aa4 <__printf+0x62c>
    8000663c:	02d7f5bb          	remuw	a1,a5,a3
    80006640:	02059593          	slli	a1,a1,0x20
    80006644:	0205d593          	srli	a1,a1,0x20
    80006648:	00bd85b3          	add	a1,s11,a1
    8000664c:	0005c583          	lbu	a1,0(a1)
    80006650:	02d7d7bb          	divuw	a5,a5,a3
    80006654:	f8b402a3          	sb	a1,-123(s0)
    80006658:	46ea7863          	bgeu	s4,a4,80006ac8 <__printf+0x650>
    8000665c:	02d7f5bb          	remuw	a1,a5,a3
    80006660:	02059593          	slli	a1,a1,0x20
    80006664:	0205d593          	srli	a1,a1,0x20
    80006668:	00bd85b3          	add	a1,s11,a1
    8000666c:	0005c583          	lbu	a1,0(a1)
    80006670:	02d7d7bb          	divuw	a5,a5,a3
    80006674:	f8b40323          	sb	a1,-122(s0)
    80006678:	3eeaf863          	bgeu	s5,a4,80006a68 <__printf+0x5f0>
    8000667c:	02d7f5bb          	remuw	a1,a5,a3
    80006680:	02059593          	slli	a1,a1,0x20
    80006684:	0205d593          	srli	a1,a1,0x20
    80006688:	00bd85b3          	add	a1,s11,a1
    8000668c:	0005c583          	lbu	a1,0(a1)
    80006690:	02d7d7bb          	divuw	a5,a5,a3
    80006694:	f8b403a3          	sb	a1,-121(s0)
    80006698:	42eb7e63          	bgeu	s6,a4,80006ad4 <__printf+0x65c>
    8000669c:	02d7f5bb          	remuw	a1,a5,a3
    800066a0:	02059593          	slli	a1,a1,0x20
    800066a4:	0205d593          	srli	a1,a1,0x20
    800066a8:	00bd85b3          	add	a1,s11,a1
    800066ac:	0005c583          	lbu	a1,0(a1)
    800066b0:	02d7d7bb          	divuw	a5,a5,a3
    800066b4:	f8b40423          	sb	a1,-120(s0)
    800066b8:	42ebfc63          	bgeu	s7,a4,80006af0 <__printf+0x678>
    800066bc:	02079793          	slli	a5,a5,0x20
    800066c0:	0207d793          	srli	a5,a5,0x20
    800066c4:	00fd8db3          	add	s11,s11,a5
    800066c8:	000dc703          	lbu	a4,0(s11)
    800066cc:	00a00793          	li	a5,10
    800066d0:	00900c93          	li	s9,9
    800066d4:	f8e404a3          	sb	a4,-119(s0)
    800066d8:	00065c63          	bgez	a2,800066f0 <__printf+0x278>
    800066dc:	f9040713          	addi	a4,s0,-112
    800066e0:	00f70733          	add	a4,a4,a5
    800066e4:	02d00693          	li	a3,45
    800066e8:	fed70823          	sb	a3,-16(a4)
    800066ec:	00078c93          	mv	s9,a5
    800066f0:	f8040793          	addi	a5,s0,-128
    800066f4:	01978cb3          	add	s9,a5,s9
    800066f8:	f7f40d13          	addi	s10,s0,-129
    800066fc:	000cc503          	lbu	a0,0(s9)
    80006700:	fffc8c93          	addi	s9,s9,-1
    80006704:	00000097          	auipc	ra,0x0
    80006708:	b90080e7          	jalr	-1136(ra) # 80006294 <consputc>
    8000670c:	ffac98e3          	bne	s9,s10,800066fc <__printf+0x284>
    80006710:	00094503          	lbu	a0,0(s2)
    80006714:	e00514e3          	bnez	a0,8000651c <__printf+0xa4>
    80006718:	1a0c1663          	bnez	s8,800068c4 <__printf+0x44c>
    8000671c:	08813083          	ld	ra,136(sp)
    80006720:	08013403          	ld	s0,128(sp)
    80006724:	07813483          	ld	s1,120(sp)
    80006728:	07013903          	ld	s2,112(sp)
    8000672c:	06813983          	ld	s3,104(sp)
    80006730:	06013a03          	ld	s4,96(sp)
    80006734:	05813a83          	ld	s5,88(sp)
    80006738:	05013b03          	ld	s6,80(sp)
    8000673c:	04813b83          	ld	s7,72(sp)
    80006740:	04013c03          	ld	s8,64(sp)
    80006744:	03813c83          	ld	s9,56(sp)
    80006748:	03013d03          	ld	s10,48(sp)
    8000674c:	02813d83          	ld	s11,40(sp)
    80006750:	0d010113          	addi	sp,sp,208
    80006754:	00008067          	ret
    80006758:	07300713          	li	a4,115
    8000675c:	1ce78a63          	beq	a5,a4,80006930 <__printf+0x4b8>
    80006760:	07800713          	li	a4,120
    80006764:	1ee79e63          	bne	a5,a4,80006960 <__printf+0x4e8>
    80006768:	f7843783          	ld	a5,-136(s0)
    8000676c:	0007a703          	lw	a4,0(a5)
    80006770:	00878793          	addi	a5,a5,8
    80006774:	f6f43c23          	sd	a5,-136(s0)
    80006778:	28074263          	bltz	a4,800069fc <__printf+0x584>
    8000677c:	00002d97          	auipc	s11,0x2
    80006780:	cf4d8d93          	addi	s11,s11,-780 # 80008470 <digits>
    80006784:	00f77793          	andi	a5,a4,15
    80006788:	00fd87b3          	add	a5,s11,a5
    8000678c:	0007c683          	lbu	a3,0(a5)
    80006790:	00f00613          	li	a2,15
    80006794:	0007079b          	sext.w	a5,a4
    80006798:	f8d40023          	sb	a3,-128(s0)
    8000679c:	0047559b          	srliw	a1,a4,0x4
    800067a0:	0047569b          	srliw	a3,a4,0x4
    800067a4:	00000c93          	li	s9,0
    800067a8:	0ee65063          	bge	a2,a4,80006888 <__printf+0x410>
    800067ac:	00f6f693          	andi	a3,a3,15
    800067b0:	00dd86b3          	add	a3,s11,a3
    800067b4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800067b8:	0087d79b          	srliw	a5,a5,0x8
    800067bc:	00100c93          	li	s9,1
    800067c0:	f8d400a3          	sb	a3,-127(s0)
    800067c4:	0cb67263          	bgeu	a2,a1,80006888 <__printf+0x410>
    800067c8:	00f7f693          	andi	a3,a5,15
    800067cc:	00dd86b3          	add	a3,s11,a3
    800067d0:	0006c583          	lbu	a1,0(a3)
    800067d4:	00f00613          	li	a2,15
    800067d8:	0047d69b          	srliw	a3,a5,0x4
    800067dc:	f8b40123          	sb	a1,-126(s0)
    800067e0:	0047d593          	srli	a1,a5,0x4
    800067e4:	28f67e63          	bgeu	a2,a5,80006a80 <__printf+0x608>
    800067e8:	00f6f693          	andi	a3,a3,15
    800067ec:	00dd86b3          	add	a3,s11,a3
    800067f0:	0006c503          	lbu	a0,0(a3)
    800067f4:	0087d813          	srli	a6,a5,0x8
    800067f8:	0087d69b          	srliw	a3,a5,0x8
    800067fc:	f8a401a3          	sb	a0,-125(s0)
    80006800:	28b67663          	bgeu	a2,a1,80006a8c <__printf+0x614>
    80006804:	00f6f693          	andi	a3,a3,15
    80006808:	00dd86b3          	add	a3,s11,a3
    8000680c:	0006c583          	lbu	a1,0(a3)
    80006810:	00c7d513          	srli	a0,a5,0xc
    80006814:	00c7d69b          	srliw	a3,a5,0xc
    80006818:	f8b40223          	sb	a1,-124(s0)
    8000681c:	29067a63          	bgeu	a2,a6,80006ab0 <__printf+0x638>
    80006820:	00f6f693          	andi	a3,a3,15
    80006824:	00dd86b3          	add	a3,s11,a3
    80006828:	0006c583          	lbu	a1,0(a3)
    8000682c:	0107d813          	srli	a6,a5,0x10
    80006830:	0107d69b          	srliw	a3,a5,0x10
    80006834:	f8b402a3          	sb	a1,-123(s0)
    80006838:	28a67263          	bgeu	a2,a0,80006abc <__printf+0x644>
    8000683c:	00f6f693          	andi	a3,a3,15
    80006840:	00dd86b3          	add	a3,s11,a3
    80006844:	0006c683          	lbu	a3,0(a3)
    80006848:	0147d79b          	srliw	a5,a5,0x14
    8000684c:	f8d40323          	sb	a3,-122(s0)
    80006850:	21067663          	bgeu	a2,a6,80006a5c <__printf+0x5e4>
    80006854:	02079793          	slli	a5,a5,0x20
    80006858:	0207d793          	srli	a5,a5,0x20
    8000685c:	00fd8db3          	add	s11,s11,a5
    80006860:	000dc683          	lbu	a3,0(s11)
    80006864:	00800793          	li	a5,8
    80006868:	00700c93          	li	s9,7
    8000686c:	f8d403a3          	sb	a3,-121(s0)
    80006870:	00075c63          	bgez	a4,80006888 <__printf+0x410>
    80006874:	f9040713          	addi	a4,s0,-112
    80006878:	00f70733          	add	a4,a4,a5
    8000687c:	02d00693          	li	a3,45
    80006880:	fed70823          	sb	a3,-16(a4)
    80006884:	00078c93          	mv	s9,a5
    80006888:	f8040793          	addi	a5,s0,-128
    8000688c:	01978cb3          	add	s9,a5,s9
    80006890:	f7f40d13          	addi	s10,s0,-129
    80006894:	000cc503          	lbu	a0,0(s9)
    80006898:	fffc8c93          	addi	s9,s9,-1
    8000689c:	00000097          	auipc	ra,0x0
    800068a0:	9f8080e7          	jalr	-1544(ra) # 80006294 <consputc>
    800068a4:	ff9d18e3          	bne	s10,s9,80006894 <__printf+0x41c>
    800068a8:	0100006f          	j	800068b8 <__printf+0x440>
    800068ac:	00000097          	auipc	ra,0x0
    800068b0:	9e8080e7          	jalr	-1560(ra) # 80006294 <consputc>
    800068b4:	000c8493          	mv	s1,s9
    800068b8:	00094503          	lbu	a0,0(s2)
    800068bc:	c60510e3          	bnez	a0,8000651c <__printf+0xa4>
    800068c0:	e40c0ee3          	beqz	s8,8000671c <__printf+0x2a4>
    800068c4:	00005517          	auipc	a0,0x5
    800068c8:	9ec50513          	addi	a0,a0,-1556 # 8000b2b0 <pr>
    800068cc:	00001097          	auipc	ra,0x1
    800068d0:	94c080e7          	jalr	-1716(ra) # 80007218 <release>
    800068d4:	e49ff06f          	j	8000671c <__printf+0x2a4>
    800068d8:	f7843783          	ld	a5,-136(s0)
    800068dc:	03000513          	li	a0,48
    800068e0:	01000d13          	li	s10,16
    800068e4:	00878713          	addi	a4,a5,8
    800068e8:	0007bc83          	ld	s9,0(a5)
    800068ec:	f6e43c23          	sd	a4,-136(s0)
    800068f0:	00000097          	auipc	ra,0x0
    800068f4:	9a4080e7          	jalr	-1628(ra) # 80006294 <consputc>
    800068f8:	07800513          	li	a0,120
    800068fc:	00000097          	auipc	ra,0x0
    80006900:	998080e7          	jalr	-1640(ra) # 80006294 <consputc>
    80006904:	00002d97          	auipc	s11,0x2
    80006908:	b6cd8d93          	addi	s11,s11,-1172 # 80008470 <digits>
    8000690c:	03ccd793          	srli	a5,s9,0x3c
    80006910:	00fd87b3          	add	a5,s11,a5
    80006914:	0007c503          	lbu	a0,0(a5)
    80006918:	fffd0d1b          	addiw	s10,s10,-1
    8000691c:	004c9c93          	slli	s9,s9,0x4
    80006920:	00000097          	auipc	ra,0x0
    80006924:	974080e7          	jalr	-1676(ra) # 80006294 <consputc>
    80006928:	fe0d12e3          	bnez	s10,8000690c <__printf+0x494>
    8000692c:	f8dff06f          	j	800068b8 <__printf+0x440>
    80006930:	f7843783          	ld	a5,-136(s0)
    80006934:	0007bc83          	ld	s9,0(a5)
    80006938:	00878793          	addi	a5,a5,8
    8000693c:	f6f43c23          	sd	a5,-136(s0)
    80006940:	000c9a63          	bnez	s9,80006954 <__printf+0x4dc>
    80006944:	1080006f          	j	80006a4c <__printf+0x5d4>
    80006948:	001c8c93          	addi	s9,s9,1
    8000694c:	00000097          	auipc	ra,0x0
    80006950:	948080e7          	jalr	-1720(ra) # 80006294 <consputc>
    80006954:	000cc503          	lbu	a0,0(s9)
    80006958:	fe0518e3          	bnez	a0,80006948 <__printf+0x4d0>
    8000695c:	f5dff06f          	j	800068b8 <__printf+0x440>
    80006960:	02500513          	li	a0,37
    80006964:	00000097          	auipc	ra,0x0
    80006968:	930080e7          	jalr	-1744(ra) # 80006294 <consputc>
    8000696c:	000c8513          	mv	a0,s9
    80006970:	00000097          	auipc	ra,0x0
    80006974:	924080e7          	jalr	-1756(ra) # 80006294 <consputc>
    80006978:	f41ff06f          	j	800068b8 <__printf+0x440>
    8000697c:	02500513          	li	a0,37
    80006980:	00000097          	auipc	ra,0x0
    80006984:	914080e7          	jalr	-1772(ra) # 80006294 <consputc>
    80006988:	f31ff06f          	j	800068b8 <__printf+0x440>
    8000698c:	00030513          	mv	a0,t1
    80006990:	00000097          	auipc	ra,0x0
    80006994:	7bc080e7          	jalr	1980(ra) # 8000714c <acquire>
    80006998:	b4dff06f          	j	800064e4 <__printf+0x6c>
    8000699c:	40c0053b          	negw	a0,a2
    800069a0:	00a00713          	li	a4,10
    800069a4:	02e576bb          	remuw	a3,a0,a4
    800069a8:	00002d97          	auipc	s11,0x2
    800069ac:	ac8d8d93          	addi	s11,s11,-1336 # 80008470 <digits>
    800069b0:	ff700593          	li	a1,-9
    800069b4:	02069693          	slli	a3,a3,0x20
    800069b8:	0206d693          	srli	a3,a3,0x20
    800069bc:	00dd86b3          	add	a3,s11,a3
    800069c0:	0006c683          	lbu	a3,0(a3)
    800069c4:	02e557bb          	divuw	a5,a0,a4
    800069c8:	f8d40023          	sb	a3,-128(s0)
    800069cc:	10b65e63          	bge	a2,a1,80006ae8 <__printf+0x670>
    800069d0:	06300593          	li	a1,99
    800069d4:	02e7f6bb          	remuw	a3,a5,a4
    800069d8:	02069693          	slli	a3,a3,0x20
    800069dc:	0206d693          	srli	a3,a3,0x20
    800069e0:	00dd86b3          	add	a3,s11,a3
    800069e4:	0006c683          	lbu	a3,0(a3)
    800069e8:	02e7d73b          	divuw	a4,a5,a4
    800069ec:	00200793          	li	a5,2
    800069f0:	f8d400a3          	sb	a3,-127(s0)
    800069f4:	bca5ece3          	bltu	a1,a0,800065cc <__printf+0x154>
    800069f8:	ce5ff06f          	j	800066dc <__printf+0x264>
    800069fc:	40e007bb          	negw	a5,a4
    80006a00:	00002d97          	auipc	s11,0x2
    80006a04:	a70d8d93          	addi	s11,s11,-1424 # 80008470 <digits>
    80006a08:	00f7f693          	andi	a3,a5,15
    80006a0c:	00dd86b3          	add	a3,s11,a3
    80006a10:	0006c583          	lbu	a1,0(a3)
    80006a14:	ff100613          	li	a2,-15
    80006a18:	0047d69b          	srliw	a3,a5,0x4
    80006a1c:	f8b40023          	sb	a1,-128(s0)
    80006a20:	0047d59b          	srliw	a1,a5,0x4
    80006a24:	0ac75e63          	bge	a4,a2,80006ae0 <__printf+0x668>
    80006a28:	00f6f693          	andi	a3,a3,15
    80006a2c:	00dd86b3          	add	a3,s11,a3
    80006a30:	0006c603          	lbu	a2,0(a3)
    80006a34:	00f00693          	li	a3,15
    80006a38:	0087d79b          	srliw	a5,a5,0x8
    80006a3c:	f8c400a3          	sb	a2,-127(s0)
    80006a40:	d8b6e4e3          	bltu	a3,a1,800067c8 <__printf+0x350>
    80006a44:	00200793          	li	a5,2
    80006a48:	e2dff06f          	j	80006874 <__printf+0x3fc>
    80006a4c:	00002c97          	auipc	s9,0x2
    80006a50:	a04c8c93          	addi	s9,s9,-1532 # 80008450 <_ZZ12printIntegermE6digits+0x370>
    80006a54:	02800513          	li	a0,40
    80006a58:	ef1ff06f          	j	80006948 <__printf+0x4d0>
    80006a5c:	00700793          	li	a5,7
    80006a60:	00600c93          	li	s9,6
    80006a64:	e0dff06f          	j	80006870 <__printf+0x3f8>
    80006a68:	00700793          	li	a5,7
    80006a6c:	00600c93          	li	s9,6
    80006a70:	c69ff06f          	j	800066d8 <__printf+0x260>
    80006a74:	00300793          	li	a5,3
    80006a78:	00200c93          	li	s9,2
    80006a7c:	c5dff06f          	j	800066d8 <__printf+0x260>
    80006a80:	00300793          	li	a5,3
    80006a84:	00200c93          	li	s9,2
    80006a88:	de9ff06f          	j	80006870 <__printf+0x3f8>
    80006a8c:	00400793          	li	a5,4
    80006a90:	00300c93          	li	s9,3
    80006a94:	dddff06f          	j	80006870 <__printf+0x3f8>
    80006a98:	00400793          	li	a5,4
    80006a9c:	00300c93          	li	s9,3
    80006aa0:	c39ff06f          	j	800066d8 <__printf+0x260>
    80006aa4:	00500793          	li	a5,5
    80006aa8:	00400c93          	li	s9,4
    80006aac:	c2dff06f          	j	800066d8 <__printf+0x260>
    80006ab0:	00500793          	li	a5,5
    80006ab4:	00400c93          	li	s9,4
    80006ab8:	db9ff06f          	j	80006870 <__printf+0x3f8>
    80006abc:	00600793          	li	a5,6
    80006ac0:	00500c93          	li	s9,5
    80006ac4:	dadff06f          	j	80006870 <__printf+0x3f8>
    80006ac8:	00600793          	li	a5,6
    80006acc:	00500c93          	li	s9,5
    80006ad0:	c09ff06f          	j	800066d8 <__printf+0x260>
    80006ad4:	00800793          	li	a5,8
    80006ad8:	00700c93          	li	s9,7
    80006adc:	bfdff06f          	j	800066d8 <__printf+0x260>
    80006ae0:	00100793          	li	a5,1
    80006ae4:	d91ff06f          	j	80006874 <__printf+0x3fc>
    80006ae8:	00100793          	li	a5,1
    80006aec:	bf1ff06f          	j	800066dc <__printf+0x264>
    80006af0:	00900793          	li	a5,9
    80006af4:	00800c93          	li	s9,8
    80006af8:	be1ff06f          	j	800066d8 <__printf+0x260>
    80006afc:	00002517          	auipc	a0,0x2
    80006b00:	95c50513          	addi	a0,a0,-1700 # 80008458 <_ZZ12printIntegermE6digits+0x378>
    80006b04:	00000097          	auipc	ra,0x0
    80006b08:	918080e7          	jalr	-1768(ra) # 8000641c <panic>

0000000080006b0c <printfinit>:
    80006b0c:	fe010113          	addi	sp,sp,-32
    80006b10:	00813823          	sd	s0,16(sp)
    80006b14:	00913423          	sd	s1,8(sp)
    80006b18:	00113c23          	sd	ra,24(sp)
    80006b1c:	02010413          	addi	s0,sp,32
    80006b20:	00004497          	auipc	s1,0x4
    80006b24:	79048493          	addi	s1,s1,1936 # 8000b2b0 <pr>
    80006b28:	00048513          	mv	a0,s1
    80006b2c:	00002597          	auipc	a1,0x2
    80006b30:	93c58593          	addi	a1,a1,-1732 # 80008468 <_ZZ12printIntegermE6digits+0x388>
    80006b34:	00000097          	auipc	ra,0x0
    80006b38:	5f4080e7          	jalr	1524(ra) # 80007128 <initlock>
    80006b3c:	01813083          	ld	ra,24(sp)
    80006b40:	01013403          	ld	s0,16(sp)
    80006b44:	0004ac23          	sw	zero,24(s1)
    80006b48:	00813483          	ld	s1,8(sp)
    80006b4c:	02010113          	addi	sp,sp,32
    80006b50:	00008067          	ret

0000000080006b54 <uartinit>:
    80006b54:	ff010113          	addi	sp,sp,-16
    80006b58:	00813423          	sd	s0,8(sp)
    80006b5c:	01010413          	addi	s0,sp,16
    80006b60:	100007b7          	lui	a5,0x10000
    80006b64:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80006b68:	f8000713          	li	a4,-128
    80006b6c:	00e781a3          	sb	a4,3(a5)
    80006b70:	00300713          	li	a4,3
    80006b74:	00e78023          	sb	a4,0(a5)
    80006b78:	000780a3          	sb	zero,1(a5)
    80006b7c:	00e781a3          	sb	a4,3(a5)
    80006b80:	00700693          	li	a3,7
    80006b84:	00d78123          	sb	a3,2(a5)
    80006b88:	00e780a3          	sb	a4,1(a5)
    80006b8c:	00813403          	ld	s0,8(sp)
    80006b90:	01010113          	addi	sp,sp,16
    80006b94:	00008067          	ret

0000000080006b98 <uartputc>:
    80006b98:	00003797          	auipc	a5,0x3
    80006b9c:	4507a783          	lw	a5,1104(a5) # 80009fe8 <panicked>
    80006ba0:	00078463          	beqz	a5,80006ba8 <uartputc+0x10>
    80006ba4:	0000006f          	j	80006ba4 <uartputc+0xc>
    80006ba8:	fd010113          	addi	sp,sp,-48
    80006bac:	02813023          	sd	s0,32(sp)
    80006bb0:	00913c23          	sd	s1,24(sp)
    80006bb4:	01213823          	sd	s2,16(sp)
    80006bb8:	01313423          	sd	s3,8(sp)
    80006bbc:	02113423          	sd	ra,40(sp)
    80006bc0:	03010413          	addi	s0,sp,48
    80006bc4:	00003917          	auipc	s2,0x3
    80006bc8:	42c90913          	addi	s2,s2,1068 # 80009ff0 <uart_tx_r>
    80006bcc:	00093783          	ld	a5,0(s2)
    80006bd0:	00003497          	auipc	s1,0x3
    80006bd4:	42848493          	addi	s1,s1,1064 # 80009ff8 <uart_tx_w>
    80006bd8:	0004b703          	ld	a4,0(s1)
    80006bdc:	02078693          	addi	a3,a5,32
    80006be0:	00050993          	mv	s3,a0
    80006be4:	02e69c63          	bne	a3,a4,80006c1c <uartputc+0x84>
    80006be8:	00001097          	auipc	ra,0x1
    80006bec:	834080e7          	jalr	-1996(ra) # 8000741c <push_on>
    80006bf0:	00093783          	ld	a5,0(s2)
    80006bf4:	0004b703          	ld	a4,0(s1)
    80006bf8:	02078793          	addi	a5,a5,32
    80006bfc:	00e79463          	bne	a5,a4,80006c04 <uartputc+0x6c>
    80006c00:	0000006f          	j	80006c00 <uartputc+0x68>
    80006c04:	00001097          	auipc	ra,0x1
    80006c08:	88c080e7          	jalr	-1908(ra) # 80007490 <pop_on>
    80006c0c:	00093783          	ld	a5,0(s2)
    80006c10:	0004b703          	ld	a4,0(s1)
    80006c14:	02078693          	addi	a3,a5,32
    80006c18:	fce688e3          	beq	a3,a4,80006be8 <uartputc+0x50>
    80006c1c:	01f77693          	andi	a3,a4,31
    80006c20:	00004597          	auipc	a1,0x4
    80006c24:	6b058593          	addi	a1,a1,1712 # 8000b2d0 <uart_tx_buf>
    80006c28:	00d586b3          	add	a3,a1,a3
    80006c2c:	00170713          	addi	a4,a4,1
    80006c30:	01368023          	sb	s3,0(a3)
    80006c34:	00e4b023          	sd	a4,0(s1)
    80006c38:	10000637          	lui	a2,0x10000
    80006c3c:	02f71063          	bne	a4,a5,80006c5c <uartputc+0xc4>
    80006c40:	0340006f          	j	80006c74 <uartputc+0xdc>
    80006c44:	00074703          	lbu	a4,0(a4)
    80006c48:	00f93023          	sd	a5,0(s2)
    80006c4c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80006c50:	00093783          	ld	a5,0(s2)
    80006c54:	0004b703          	ld	a4,0(s1)
    80006c58:	00f70e63          	beq	a4,a5,80006c74 <uartputc+0xdc>
    80006c5c:	00564683          	lbu	a3,5(a2)
    80006c60:	01f7f713          	andi	a4,a5,31
    80006c64:	00e58733          	add	a4,a1,a4
    80006c68:	0206f693          	andi	a3,a3,32
    80006c6c:	00178793          	addi	a5,a5,1
    80006c70:	fc069ae3          	bnez	a3,80006c44 <uartputc+0xac>
    80006c74:	02813083          	ld	ra,40(sp)
    80006c78:	02013403          	ld	s0,32(sp)
    80006c7c:	01813483          	ld	s1,24(sp)
    80006c80:	01013903          	ld	s2,16(sp)
    80006c84:	00813983          	ld	s3,8(sp)
    80006c88:	03010113          	addi	sp,sp,48
    80006c8c:	00008067          	ret

0000000080006c90 <uartputc_sync>:
    80006c90:	ff010113          	addi	sp,sp,-16
    80006c94:	00813423          	sd	s0,8(sp)
    80006c98:	01010413          	addi	s0,sp,16
    80006c9c:	00003717          	auipc	a4,0x3
    80006ca0:	34c72703          	lw	a4,844(a4) # 80009fe8 <panicked>
    80006ca4:	02071663          	bnez	a4,80006cd0 <uartputc_sync+0x40>
    80006ca8:	00050793          	mv	a5,a0
    80006cac:	100006b7          	lui	a3,0x10000
    80006cb0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80006cb4:	02077713          	andi	a4,a4,32
    80006cb8:	fe070ce3          	beqz	a4,80006cb0 <uartputc_sync+0x20>
    80006cbc:	0ff7f793          	andi	a5,a5,255
    80006cc0:	00f68023          	sb	a5,0(a3)
    80006cc4:	00813403          	ld	s0,8(sp)
    80006cc8:	01010113          	addi	sp,sp,16
    80006ccc:	00008067          	ret
    80006cd0:	0000006f          	j	80006cd0 <uartputc_sync+0x40>

0000000080006cd4 <uartstart>:
    80006cd4:	ff010113          	addi	sp,sp,-16
    80006cd8:	00813423          	sd	s0,8(sp)
    80006cdc:	01010413          	addi	s0,sp,16
    80006ce0:	00003617          	auipc	a2,0x3
    80006ce4:	31060613          	addi	a2,a2,784 # 80009ff0 <uart_tx_r>
    80006ce8:	00003517          	auipc	a0,0x3
    80006cec:	31050513          	addi	a0,a0,784 # 80009ff8 <uart_tx_w>
    80006cf0:	00063783          	ld	a5,0(a2)
    80006cf4:	00053703          	ld	a4,0(a0)
    80006cf8:	04f70263          	beq	a4,a5,80006d3c <uartstart+0x68>
    80006cfc:	100005b7          	lui	a1,0x10000
    80006d00:	00004817          	auipc	a6,0x4
    80006d04:	5d080813          	addi	a6,a6,1488 # 8000b2d0 <uart_tx_buf>
    80006d08:	01c0006f          	j	80006d24 <uartstart+0x50>
    80006d0c:	0006c703          	lbu	a4,0(a3)
    80006d10:	00f63023          	sd	a5,0(a2)
    80006d14:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80006d18:	00063783          	ld	a5,0(a2)
    80006d1c:	00053703          	ld	a4,0(a0)
    80006d20:	00f70e63          	beq	a4,a5,80006d3c <uartstart+0x68>
    80006d24:	01f7f713          	andi	a4,a5,31
    80006d28:	00e806b3          	add	a3,a6,a4
    80006d2c:	0055c703          	lbu	a4,5(a1)
    80006d30:	00178793          	addi	a5,a5,1
    80006d34:	02077713          	andi	a4,a4,32
    80006d38:	fc071ae3          	bnez	a4,80006d0c <uartstart+0x38>
    80006d3c:	00813403          	ld	s0,8(sp)
    80006d40:	01010113          	addi	sp,sp,16
    80006d44:	00008067          	ret

0000000080006d48 <uartgetc>:
    80006d48:	ff010113          	addi	sp,sp,-16
    80006d4c:	00813423          	sd	s0,8(sp)
    80006d50:	01010413          	addi	s0,sp,16
    80006d54:	10000737          	lui	a4,0x10000
    80006d58:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80006d5c:	0017f793          	andi	a5,a5,1
    80006d60:	00078c63          	beqz	a5,80006d78 <uartgetc+0x30>
    80006d64:	00074503          	lbu	a0,0(a4)
    80006d68:	0ff57513          	andi	a0,a0,255
    80006d6c:	00813403          	ld	s0,8(sp)
    80006d70:	01010113          	addi	sp,sp,16
    80006d74:	00008067          	ret
    80006d78:	fff00513          	li	a0,-1
    80006d7c:	ff1ff06f          	j	80006d6c <uartgetc+0x24>

0000000080006d80 <uartintr>:
    80006d80:	100007b7          	lui	a5,0x10000
    80006d84:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80006d88:	0017f793          	andi	a5,a5,1
    80006d8c:	0a078463          	beqz	a5,80006e34 <uartintr+0xb4>
    80006d90:	fe010113          	addi	sp,sp,-32
    80006d94:	00813823          	sd	s0,16(sp)
    80006d98:	00913423          	sd	s1,8(sp)
    80006d9c:	00113c23          	sd	ra,24(sp)
    80006da0:	02010413          	addi	s0,sp,32
    80006da4:	100004b7          	lui	s1,0x10000
    80006da8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80006dac:	0ff57513          	andi	a0,a0,255
    80006db0:	fffff097          	auipc	ra,0xfffff
    80006db4:	534080e7          	jalr	1332(ra) # 800062e4 <consoleintr>
    80006db8:	0054c783          	lbu	a5,5(s1)
    80006dbc:	0017f793          	andi	a5,a5,1
    80006dc0:	fe0794e3          	bnez	a5,80006da8 <uartintr+0x28>
    80006dc4:	00003617          	auipc	a2,0x3
    80006dc8:	22c60613          	addi	a2,a2,556 # 80009ff0 <uart_tx_r>
    80006dcc:	00003517          	auipc	a0,0x3
    80006dd0:	22c50513          	addi	a0,a0,556 # 80009ff8 <uart_tx_w>
    80006dd4:	00063783          	ld	a5,0(a2)
    80006dd8:	00053703          	ld	a4,0(a0)
    80006ddc:	04f70263          	beq	a4,a5,80006e20 <uartintr+0xa0>
    80006de0:	100005b7          	lui	a1,0x10000
    80006de4:	00004817          	auipc	a6,0x4
    80006de8:	4ec80813          	addi	a6,a6,1260 # 8000b2d0 <uart_tx_buf>
    80006dec:	01c0006f          	j	80006e08 <uartintr+0x88>
    80006df0:	0006c703          	lbu	a4,0(a3)
    80006df4:	00f63023          	sd	a5,0(a2)
    80006df8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80006dfc:	00063783          	ld	a5,0(a2)
    80006e00:	00053703          	ld	a4,0(a0)
    80006e04:	00f70e63          	beq	a4,a5,80006e20 <uartintr+0xa0>
    80006e08:	01f7f713          	andi	a4,a5,31
    80006e0c:	00e806b3          	add	a3,a6,a4
    80006e10:	0055c703          	lbu	a4,5(a1)
    80006e14:	00178793          	addi	a5,a5,1
    80006e18:	02077713          	andi	a4,a4,32
    80006e1c:	fc071ae3          	bnez	a4,80006df0 <uartintr+0x70>
    80006e20:	01813083          	ld	ra,24(sp)
    80006e24:	01013403          	ld	s0,16(sp)
    80006e28:	00813483          	ld	s1,8(sp)
    80006e2c:	02010113          	addi	sp,sp,32
    80006e30:	00008067          	ret
    80006e34:	00003617          	auipc	a2,0x3
    80006e38:	1bc60613          	addi	a2,a2,444 # 80009ff0 <uart_tx_r>
    80006e3c:	00003517          	auipc	a0,0x3
    80006e40:	1bc50513          	addi	a0,a0,444 # 80009ff8 <uart_tx_w>
    80006e44:	00063783          	ld	a5,0(a2)
    80006e48:	00053703          	ld	a4,0(a0)
    80006e4c:	04f70263          	beq	a4,a5,80006e90 <uartintr+0x110>
    80006e50:	100005b7          	lui	a1,0x10000
    80006e54:	00004817          	auipc	a6,0x4
    80006e58:	47c80813          	addi	a6,a6,1148 # 8000b2d0 <uart_tx_buf>
    80006e5c:	01c0006f          	j	80006e78 <uartintr+0xf8>
    80006e60:	0006c703          	lbu	a4,0(a3)
    80006e64:	00f63023          	sd	a5,0(a2)
    80006e68:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80006e6c:	00063783          	ld	a5,0(a2)
    80006e70:	00053703          	ld	a4,0(a0)
    80006e74:	02f70063          	beq	a4,a5,80006e94 <uartintr+0x114>
    80006e78:	01f7f713          	andi	a4,a5,31
    80006e7c:	00e806b3          	add	a3,a6,a4
    80006e80:	0055c703          	lbu	a4,5(a1)
    80006e84:	00178793          	addi	a5,a5,1
    80006e88:	02077713          	andi	a4,a4,32
    80006e8c:	fc071ae3          	bnez	a4,80006e60 <uartintr+0xe0>
    80006e90:	00008067          	ret
    80006e94:	00008067          	ret

0000000080006e98 <kinit>:
    80006e98:	fc010113          	addi	sp,sp,-64
    80006e9c:	02913423          	sd	s1,40(sp)
    80006ea0:	fffff7b7          	lui	a5,0xfffff
    80006ea4:	00005497          	auipc	s1,0x5
    80006ea8:	44b48493          	addi	s1,s1,1099 # 8000c2ef <end+0xfff>
    80006eac:	02813823          	sd	s0,48(sp)
    80006eb0:	01313c23          	sd	s3,24(sp)
    80006eb4:	00f4f4b3          	and	s1,s1,a5
    80006eb8:	02113c23          	sd	ra,56(sp)
    80006ebc:	03213023          	sd	s2,32(sp)
    80006ec0:	01413823          	sd	s4,16(sp)
    80006ec4:	01513423          	sd	s5,8(sp)
    80006ec8:	04010413          	addi	s0,sp,64
    80006ecc:	000017b7          	lui	a5,0x1
    80006ed0:	01100993          	li	s3,17
    80006ed4:	00f487b3          	add	a5,s1,a5
    80006ed8:	01b99993          	slli	s3,s3,0x1b
    80006edc:	06f9e063          	bltu	s3,a5,80006f3c <kinit+0xa4>
    80006ee0:	00004a97          	auipc	s5,0x4
    80006ee4:	410a8a93          	addi	s5,s5,1040 # 8000b2f0 <end>
    80006ee8:	0754ec63          	bltu	s1,s5,80006f60 <kinit+0xc8>
    80006eec:	0734fa63          	bgeu	s1,s3,80006f60 <kinit+0xc8>
    80006ef0:	00088a37          	lui	s4,0x88
    80006ef4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80006ef8:	00003917          	auipc	s2,0x3
    80006efc:	10890913          	addi	s2,s2,264 # 8000a000 <kmem>
    80006f00:	00ca1a13          	slli	s4,s4,0xc
    80006f04:	0140006f          	j	80006f18 <kinit+0x80>
    80006f08:	000017b7          	lui	a5,0x1
    80006f0c:	00f484b3          	add	s1,s1,a5
    80006f10:	0554e863          	bltu	s1,s5,80006f60 <kinit+0xc8>
    80006f14:	0534f663          	bgeu	s1,s3,80006f60 <kinit+0xc8>
    80006f18:	00001637          	lui	a2,0x1
    80006f1c:	00100593          	li	a1,1
    80006f20:	00048513          	mv	a0,s1
    80006f24:	00000097          	auipc	ra,0x0
    80006f28:	5e4080e7          	jalr	1508(ra) # 80007508 <__memset>
    80006f2c:	00093783          	ld	a5,0(s2)
    80006f30:	00f4b023          	sd	a5,0(s1)
    80006f34:	00993023          	sd	s1,0(s2)
    80006f38:	fd4498e3          	bne	s1,s4,80006f08 <kinit+0x70>
    80006f3c:	03813083          	ld	ra,56(sp)
    80006f40:	03013403          	ld	s0,48(sp)
    80006f44:	02813483          	ld	s1,40(sp)
    80006f48:	02013903          	ld	s2,32(sp)
    80006f4c:	01813983          	ld	s3,24(sp)
    80006f50:	01013a03          	ld	s4,16(sp)
    80006f54:	00813a83          	ld	s5,8(sp)
    80006f58:	04010113          	addi	sp,sp,64
    80006f5c:	00008067          	ret
    80006f60:	00001517          	auipc	a0,0x1
    80006f64:	52850513          	addi	a0,a0,1320 # 80008488 <digits+0x18>
    80006f68:	fffff097          	auipc	ra,0xfffff
    80006f6c:	4b4080e7          	jalr	1204(ra) # 8000641c <panic>

0000000080006f70 <freerange>:
    80006f70:	fc010113          	addi	sp,sp,-64
    80006f74:	000017b7          	lui	a5,0x1
    80006f78:	02913423          	sd	s1,40(sp)
    80006f7c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80006f80:	009504b3          	add	s1,a0,s1
    80006f84:	fffff537          	lui	a0,0xfffff
    80006f88:	02813823          	sd	s0,48(sp)
    80006f8c:	02113c23          	sd	ra,56(sp)
    80006f90:	03213023          	sd	s2,32(sp)
    80006f94:	01313c23          	sd	s3,24(sp)
    80006f98:	01413823          	sd	s4,16(sp)
    80006f9c:	01513423          	sd	s5,8(sp)
    80006fa0:	01613023          	sd	s6,0(sp)
    80006fa4:	04010413          	addi	s0,sp,64
    80006fa8:	00a4f4b3          	and	s1,s1,a0
    80006fac:	00f487b3          	add	a5,s1,a5
    80006fb0:	06f5e463          	bltu	a1,a5,80007018 <freerange+0xa8>
    80006fb4:	00004a97          	auipc	s5,0x4
    80006fb8:	33ca8a93          	addi	s5,s5,828 # 8000b2f0 <end>
    80006fbc:	0954e263          	bltu	s1,s5,80007040 <freerange+0xd0>
    80006fc0:	01100993          	li	s3,17
    80006fc4:	01b99993          	slli	s3,s3,0x1b
    80006fc8:	0734fc63          	bgeu	s1,s3,80007040 <freerange+0xd0>
    80006fcc:	00058a13          	mv	s4,a1
    80006fd0:	00003917          	auipc	s2,0x3
    80006fd4:	03090913          	addi	s2,s2,48 # 8000a000 <kmem>
    80006fd8:	00002b37          	lui	s6,0x2
    80006fdc:	0140006f          	j	80006ff0 <freerange+0x80>
    80006fe0:	000017b7          	lui	a5,0x1
    80006fe4:	00f484b3          	add	s1,s1,a5
    80006fe8:	0554ec63          	bltu	s1,s5,80007040 <freerange+0xd0>
    80006fec:	0534fa63          	bgeu	s1,s3,80007040 <freerange+0xd0>
    80006ff0:	00001637          	lui	a2,0x1
    80006ff4:	00100593          	li	a1,1
    80006ff8:	00048513          	mv	a0,s1
    80006ffc:	00000097          	auipc	ra,0x0
    80007000:	50c080e7          	jalr	1292(ra) # 80007508 <__memset>
    80007004:	00093703          	ld	a4,0(s2)
    80007008:	016487b3          	add	a5,s1,s6
    8000700c:	00e4b023          	sd	a4,0(s1)
    80007010:	00993023          	sd	s1,0(s2)
    80007014:	fcfa76e3          	bgeu	s4,a5,80006fe0 <freerange+0x70>
    80007018:	03813083          	ld	ra,56(sp)
    8000701c:	03013403          	ld	s0,48(sp)
    80007020:	02813483          	ld	s1,40(sp)
    80007024:	02013903          	ld	s2,32(sp)
    80007028:	01813983          	ld	s3,24(sp)
    8000702c:	01013a03          	ld	s4,16(sp)
    80007030:	00813a83          	ld	s5,8(sp)
    80007034:	00013b03          	ld	s6,0(sp)
    80007038:	04010113          	addi	sp,sp,64
    8000703c:	00008067          	ret
    80007040:	00001517          	auipc	a0,0x1
    80007044:	44850513          	addi	a0,a0,1096 # 80008488 <digits+0x18>
    80007048:	fffff097          	auipc	ra,0xfffff
    8000704c:	3d4080e7          	jalr	980(ra) # 8000641c <panic>

0000000080007050 <kfree>:
    80007050:	fe010113          	addi	sp,sp,-32
    80007054:	00813823          	sd	s0,16(sp)
    80007058:	00113c23          	sd	ra,24(sp)
    8000705c:	00913423          	sd	s1,8(sp)
    80007060:	02010413          	addi	s0,sp,32
    80007064:	03451793          	slli	a5,a0,0x34
    80007068:	04079c63          	bnez	a5,800070c0 <kfree+0x70>
    8000706c:	00004797          	auipc	a5,0x4
    80007070:	28478793          	addi	a5,a5,644 # 8000b2f0 <end>
    80007074:	00050493          	mv	s1,a0
    80007078:	04f56463          	bltu	a0,a5,800070c0 <kfree+0x70>
    8000707c:	01100793          	li	a5,17
    80007080:	01b79793          	slli	a5,a5,0x1b
    80007084:	02f57e63          	bgeu	a0,a5,800070c0 <kfree+0x70>
    80007088:	00001637          	lui	a2,0x1
    8000708c:	00100593          	li	a1,1
    80007090:	00000097          	auipc	ra,0x0
    80007094:	478080e7          	jalr	1144(ra) # 80007508 <__memset>
    80007098:	00003797          	auipc	a5,0x3
    8000709c:	f6878793          	addi	a5,a5,-152 # 8000a000 <kmem>
    800070a0:	0007b703          	ld	a4,0(a5)
    800070a4:	01813083          	ld	ra,24(sp)
    800070a8:	01013403          	ld	s0,16(sp)
    800070ac:	00e4b023          	sd	a4,0(s1)
    800070b0:	0097b023          	sd	s1,0(a5)
    800070b4:	00813483          	ld	s1,8(sp)
    800070b8:	02010113          	addi	sp,sp,32
    800070bc:	00008067          	ret
    800070c0:	00001517          	auipc	a0,0x1
    800070c4:	3c850513          	addi	a0,a0,968 # 80008488 <digits+0x18>
    800070c8:	fffff097          	auipc	ra,0xfffff
    800070cc:	354080e7          	jalr	852(ra) # 8000641c <panic>

00000000800070d0 <kalloc>:
    800070d0:	fe010113          	addi	sp,sp,-32
    800070d4:	00813823          	sd	s0,16(sp)
    800070d8:	00913423          	sd	s1,8(sp)
    800070dc:	00113c23          	sd	ra,24(sp)
    800070e0:	02010413          	addi	s0,sp,32
    800070e4:	00003797          	auipc	a5,0x3
    800070e8:	f1c78793          	addi	a5,a5,-228 # 8000a000 <kmem>
    800070ec:	0007b483          	ld	s1,0(a5)
    800070f0:	02048063          	beqz	s1,80007110 <kalloc+0x40>
    800070f4:	0004b703          	ld	a4,0(s1)
    800070f8:	00001637          	lui	a2,0x1
    800070fc:	00500593          	li	a1,5
    80007100:	00048513          	mv	a0,s1
    80007104:	00e7b023          	sd	a4,0(a5)
    80007108:	00000097          	auipc	ra,0x0
    8000710c:	400080e7          	jalr	1024(ra) # 80007508 <__memset>
    80007110:	01813083          	ld	ra,24(sp)
    80007114:	01013403          	ld	s0,16(sp)
    80007118:	00048513          	mv	a0,s1
    8000711c:	00813483          	ld	s1,8(sp)
    80007120:	02010113          	addi	sp,sp,32
    80007124:	00008067          	ret

0000000080007128 <initlock>:
    80007128:	ff010113          	addi	sp,sp,-16
    8000712c:	00813423          	sd	s0,8(sp)
    80007130:	01010413          	addi	s0,sp,16
    80007134:	00813403          	ld	s0,8(sp)
    80007138:	00b53423          	sd	a1,8(a0)
    8000713c:	00052023          	sw	zero,0(a0)
    80007140:	00053823          	sd	zero,16(a0)
    80007144:	01010113          	addi	sp,sp,16
    80007148:	00008067          	ret

000000008000714c <acquire>:
    8000714c:	fe010113          	addi	sp,sp,-32
    80007150:	00813823          	sd	s0,16(sp)
    80007154:	00913423          	sd	s1,8(sp)
    80007158:	00113c23          	sd	ra,24(sp)
    8000715c:	01213023          	sd	s2,0(sp)
    80007160:	02010413          	addi	s0,sp,32
    80007164:	00050493          	mv	s1,a0
    80007168:	10002973          	csrr	s2,sstatus
    8000716c:	100027f3          	csrr	a5,sstatus
    80007170:	ffd7f793          	andi	a5,a5,-3
    80007174:	10079073          	csrw	sstatus,a5
    80007178:	fffff097          	auipc	ra,0xfffff
    8000717c:	8e8080e7          	jalr	-1816(ra) # 80005a60 <mycpu>
    80007180:	07852783          	lw	a5,120(a0)
    80007184:	06078e63          	beqz	a5,80007200 <acquire+0xb4>
    80007188:	fffff097          	auipc	ra,0xfffff
    8000718c:	8d8080e7          	jalr	-1832(ra) # 80005a60 <mycpu>
    80007190:	07852783          	lw	a5,120(a0)
    80007194:	0004a703          	lw	a4,0(s1)
    80007198:	0017879b          	addiw	a5,a5,1
    8000719c:	06f52c23          	sw	a5,120(a0)
    800071a0:	04071063          	bnez	a4,800071e0 <acquire+0x94>
    800071a4:	00100713          	li	a4,1
    800071a8:	00070793          	mv	a5,a4
    800071ac:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800071b0:	0007879b          	sext.w	a5,a5
    800071b4:	fe079ae3          	bnez	a5,800071a8 <acquire+0x5c>
    800071b8:	0ff0000f          	fence
    800071bc:	fffff097          	auipc	ra,0xfffff
    800071c0:	8a4080e7          	jalr	-1884(ra) # 80005a60 <mycpu>
    800071c4:	01813083          	ld	ra,24(sp)
    800071c8:	01013403          	ld	s0,16(sp)
    800071cc:	00a4b823          	sd	a0,16(s1)
    800071d0:	00013903          	ld	s2,0(sp)
    800071d4:	00813483          	ld	s1,8(sp)
    800071d8:	02010113          	addi	sp,sp,32
    800071dc:	00008067          	ret
    800071e0:	0104b903          	ld	s2,16(s1)
    800071e4:	fffff097          	auipc	ra,0xfffff
    800071e8:	87c080e7          	jalr	-1924(ra) # 80005a60 <mycpu>
    800071ec:	faa91ce3          	bne	s2,a0,800071a4 <acquire+0x58>
    800071f0:	00001517          	auipc	a0,0x1
    800071f4:	2a050513          	addi	a0,a0,672 # 80008490 <digits+0x20>
    800071f8:	fffff097          	auipc	ra,0xfffff
    800071fc:	224080e7          	jalr	548(ra) # 8000641c <panic>
    80007200:	00195913          	srli	s2,s2,0x1
    80007204:	fffff097          	auipc	ra,0xfffff
    80007208:	85c080e7          	jalr	-1956(ra) # 80005a60 <mycpu>
    8000720c:	00197913          	andi	s2,s2,1
    80007210:	07252e23          	sw	s2,124(a0)
    80007214:	f75ff06f          	j	80007188 <acquire+0x3c>

0000000080007218 <release>:
    80007218:	fe010113          	addi	sp,sp,-32
    8000721c:	00813823          	sd	s0,16(sp)
    80007220:	00113c23          	sd	ra,24(sp)
    80007224:	00913423          	sd	s1,8(sp)
    80007228:	01213023          	sd	s2,0(sp)
    8000722c:	02010413          	addi	s0,sp,32
    80007230:	00052783          	lw	a5,0(a0)
    80007234:	00079a63          	bnez	a5,80007248 <release+0x30>
    80007238:	00001517          	auipc	a0,0x1
    8000723c:	26050513          	addi	a0,a0,608 # 80008498 <digits+0x28>
    80007240:	fffff097          	auipc	ra,0xfffff
    80007244:	1dc080e7          	jalr	476(ra) # 8000641c <panic>
    80007248:	01053903          	ld	s2,16(a0)
    8000724c:	00050493          	mv	s1,a0
    80007250:	fffff097          	auipc	ra,0xfffff
    80007254:	810080e7          	jalr	-2032(ra) # 80005a60 <mycpu>
    80007258:	fea910e3          	bne	s2,a0,80007238 <release+0x20>
    8000725c:	0004b823          	sd	zero,16(s1)
    80007260:	0ff0000f          	fence
    80007264:	0f50000f          	fence	iorw,ow
    80007268:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000726c:	ffffe097          	auipc	ra,0xffffe
    80007270:	7f4080e7          	jalr	2036(ra) # 80005a60 <mycpu>
    80007274:	100027f3          	csrr	a5,sstatus
    80007278:	0027f793          	andi	a5,a5,2
    8000727c:	04079a63          	bnez	a5,800072d0 <release+0xb8>
    80007280:	07852783          	lw	a5,120(a0)
    80007284:	02f05e63          	blez	a5,800072c0 <release+0xa8>
    80007288:	fff7871b          	addiw	a4,a5,-1
    8000728c:	06e52c23          	sw	a4,120(a0)
    80007290:	00071c63          	bnez	a4,800072a8 <release+0x90>
    80007294:	07c52783          	lw	a5,124(a0)
    80007298:	00078863          	beqz	a5,800072a8 <release+0x90>
    8000729c:	100027f3          	csrr	a5,sstatus
    800072a0:	0027e793          	ori	a5,a5,2
    800072a4:	10079073          	csrw	sstatus,a5
    800072a8:	01813083          	ld	ra,24(sp)
    800072ac:	01013403          	ld	s0,16(sp)
    800072b0:	00813483          	ld	s1,8(sp)
    800072b4:	00013903          	ld	s2,0(sp)
    800072b8:	02010113          	addi	sp,sp,32
    800072bc:	00008067          	ret
    800072c0:	00001517          	auipc	a0,0x1
    800072c4:	1f850513          	addi	a0,a0,504 # 800084b8 <digits+0x48>
    800072c8:	fffff097          	auipc	ra,0xfffff
    800072cc:	154080e7          	jalr	340(ra) # 8000641c <panic>
    800072d0:	00001517          	auipc	a0,0x1
    800072d4:	1d050513          	addi	a0,a0,464 # 800084a0 <digits+0x30>
    800072d8:	fffff097          	auipc	ra,0xfffff
    800072dc:	144080e7          	jalr	324(ra) # 8000641c <panic>

00000000800072e0 <holding>:
    800072e0:	00052783          	lw	a5,0(a0)
    800072e4:	00079663          	bnez	a5,800072f0 <holding+0x10>
    800072e8:	00000513          	li	a0,0
    800072ec:	00008067          	ret
    800072f0:	fe010113          	addi	sp,sp,-32
    800072f4:	00813823          	sd	s0,16(sp)
    800072f8:	00913423          	sd	s1,8(sp)
    800072fc:	00113c23          	sd	ra,24(sp)
    80007300:	02010413          	addi	s0,sp,32
    80007304:	01053483          	ld	s1,16(a0)
    80007308:	ffffe097          	auipc	ra,0xffffe
    8000730c:	758080e7          	jalr	1880(ra) # 80005a60 <mycpu>
    80007310:	01813083          	ld	ra,24(sp)
    80007314:	01013403          	ld	s0,16(sp)
    80007318:	40a48533          	sub	a0,s1,a0
    8000731c:	00153513          	seqz	a0,a0
    80007320:	00813483          	ld	s1,8(sp)
    80007324:	02010113          	addi	sp,sp,32
    80007328:	00008067          	ret

000000008000732c <push_off>:
    8000732c:	fe010113          	addi	sp,sp,-32
    80007330:	00813823          	sd	s0,16(sp)
    80007334:	00113c23          	sd	ra,24(sp)
    80007338:	00913423          	sd	s1,8(sp)
    8000733c:	02010413          	addi	s0,sp,32
    80007340:	100024f3          	csrr	s1,sstatus
    80007344:	100027f3          	csrr	a5,sstatus
    80007348:	ffd7f793          	andi	a5,a5,-3
    8000734c:	10079073          	csrw	sstatus,a5
    80007350:	ffffe097          	auipc	ra,0xffffe
    80007354:	710080e7          	jalr	1808(ra) # 80005a60 <mycpu>
    80007358:	07852783          	lw	a5,120(a0)
    8000735c:	02078663          	beqz	a5,80007388 <push_off+0x5c>
    80007360:	ffffe097          	auipc	ra,0xffffe
    80007364:	700080e7          	jalr	1792(ra) # 80005a60 <mycpu>
    80007368:	07852783          	lw	a5,120(a0)
    8000736c:	01813083          	ld	ra,24(sp)
    80007370:	01013403          	ld	s0,16(sp)
    80007374:	0017879b          	addiw	a5,a5,1
    80007378:	06f52c23          	sw	a5,120(a0)
    8000737c:	00813483          	ld	s1,8(sp)
    80007380:	02010113          	addi	sp,sp,32
    80007384:	00008067          	ret
    80007388:	0014d493          	srli	s1,s1,0x1
    8000738c:	ffffe097          	auipc	ra,0xffffe
    80007390:	6d4080e7          	jalr	1748(ra) # 80005a60 <mycpu>
    80007394:	0014f493          	andi	s1,s1,1
    80007398:	06952e23          	sw	s1,124(a0)
    8000739c:	fc5ff06f          	j	80007360 <push_off+0x34>

00000000800073a0 <pop_off>:
    800073a0:	ff010113          	addi	sp,sp,-16
    800073a4:	00813023          	sd	s0,0(sp)
    800073a8:	00113423          	sd	ra,8(sp)
    800073ac:	01010413          	addi	s0,sp,16
    800073b0:	ffffe097          	auipc	ra,0xffffe
    800073b4:	6b0080e7          	jalr	1712(ra) # 80005a60 <mycpu>
    800073b8:	100027f3          	csrr	a5,sstatus
    800073bc:	0027f793          	andi	a5,a5,2
    800073c0:	04079663          	bnez	a5,8000740c <pop_off+0x6c>
    800073c4:	07852783          	lw	a5,120(a0)
    800073c8:	02f05a63          	blez	a5,800073fc <pop_off+0x5c>
    800073cc:	fff7871b          	addiw	a4,a5,-1
    800073d0:	06e52c23          	sw	a4,120(a0)
    800073d4:	00071c63          	bnez	a4,800073ec <pop_off+0x4c>
    800073d8:	07c52783          	lw	a5,124(a0)
    800073dc:	00078863          	beqz	a5,800073ec <pop_off+0x4c>
    800073e0:	100027f3          	csrr	a5,sstatus
    800073e4:	0027e793          	ori	a5,a5,2
    800073e8:	10079073          	csrw	sstatus,a5
    800073ec:	00813083          	ld	ra,8(sp)
    800073f0:	00013403          	ld	s0,0(sp)
    800073f4:	01010113          	addi	sp,sp,16
    800073f8:	00008067          	ret
    800073fc:	00001517          	auipc	a0,0x1
    80007400:	0bc50513          	addi	a0,a0,188 # 800084b8 <digits+0x48>
    80007404:	fffff097          	auipc	ra,0xfffff
    80007408:	018080e7          	jalr	24(ra) # 8000641c <panic>
    8000740c:	00001517          	auipc	a0,0x1
    80007410:	09450513          	addi	a0,a0,148 # 800084a0 <digits+0x30>
    80007414:	fffff097          	auipc	ra,0xfffff
    80007418:	008080e7          	jalr	8(ra) # 8000641c <panic>

000000008000741c <push_on>:
    8000741c:	fe010113          	addi	sp,sp,-32
    80007420:	00813823          	sd	s0,16(sp)
    80007424:	00113c23          	sd	ra,24(sp)
    80007428:	00913423          	sd	s1,8(sp)
    8000742c:	02010413          	addi	s0,sp,32
    80007430:	100024f3          	csrr	s1,sstatus
    80007434:	100027f3          	csrr	a5,sstatus
    80007438:	0027e793          	ori	a5,a5,2
    8000743c:	10079073          	csrw	sstatus,a5
    80007440:	ffffe097          	auipc	ra,0xffffe
    80007444:	620080e7          	jalr	1568(ra) # 80005a60 <mycpu>
    80007448:	07852783          	lw	a5,120(a0)
    8000744c:	02078663          	beqz	a5,80007478 <push_on+0x5c>
    80007450:	ffffe097          	auipc	ra,0xffffe
    80007454:	610080e7          	jalr	1552(ra) # 80005a60 <mycpu>
    80007458:	07852783          	lw	a5,120(a0)
    8000745c:	01813083          	ld	ra,24(sp)
    80007460:	01013403          	ld	s0,16(sp)
    80007464:	0017879b          	addiw	a5,a5,1
    80007468:	06f52c23          	sw	a5,120(a0)
    8000746c:	00813483          	ld	s1,8(sp)
    80007470:	02010113          	addi	sp,sp,32
    80007474:	00008067          	ret
    80007478:	0014d493          	srli	s1,s1,0x1
    8000747c:	ffffe097          	auipc	ra,0xffffe
    80007480:	5e4080e7          	jalr	1508(ra) # 80005a60 <mycpu>
    80007484:	0014f493          	andi	s1,s1,1
    80007488:	06952e23          	sw	s1,124(a0)
    8000748c:	fc5ff06f          	j	80007450 <push_on+0x34>

0000000080007490 <pop_on>:
    80007490:	ff010113          	addi	sp,sp,-16
    80007494:	00813023          	sd	s0,0(sp)
    80007498:	00113423          	sd	ra,8(sp)
    8000749c:	01010413          	addi	s0,sp,16
    800074a0:	ffffe097          	auipc	ra,0xffffe
    800074a4:	5c0080e7          	jalr	1472(ra) # 80005a60 <mycpu>
    800074a8:	100027f3          	csrr	a5,sstatus
    800074ac:	0027f793          	andi	a5,a5,2
    800074b0:	04078463          	beqz	a5,800074f8 <pop_on+0x68>
    800074b4:	07852783          	lw	a5,120(a0)
    800074b8:	02f05863          	blez	a5,800074e8 <pop_on+0x58>
    800074bc:	fff7879b          	addiw	a5,a5,-1
    800074c0:	06f52c23          	sw	a5,120(a0)
    800074c4:	07853783          	ld	a5,120(a0)
    800074c8:	00079863          	bnez	a5,800074d8 <pop_on+0x48>
    800074cc:	100027f3          	csrr	a5,sstatus
    800074d0:	ffd7f793          	andi	a5,a5,-3
    800074d4:	10079073          	csrw	sstatus,a5
    800074d8:	00813083          	ld	ra,8(sp)
    800074dc:	00013403          	ld	s0,0(sp)
    800074e0:	01010113          	addi	sp,sp,16
    800074e4:	00008067          	ret
    800074e8:	00001517          	auipc	a0,0x1
    800074ec:	ff850513          	addi	a0,a0,-8 # 800084e0 <digits+0x70>
    800074f0:	fffff097          	auipc	ra,0xfffff
    800074f4:	f2c080e7          	jalr	-212(ra) # 8000641c <panic>
    800074f8:	00001517          	auipc	a0,0x1
    800074fc:	fc850513          	addi	a0,a0,-56 # 800084c0 <digits+0x50>
    80007500:	fffff097          	auipc	ra,0xfffff
    80007504:	f1c080e7          	jalr	-228(ra) # 8000641c <panic>

0000000080007508 <__memset>:
    80007508:	ff010113          	addi	sp,sp,-16
    8000750c:	00813423          	sd	s0,8(sp)
    80007510:	01010413          	addi	s0,sp,16
    80007514:	1a060e63          	beqz	a2,800076d0 <__memset+0x1c8>
    80007518:	40a007b3          	neg	a5,a0
    8000751c:	0077f793          	andi	a5,a5,7
    80007520:	00778693          	addi	a3,a5,7
    80007524:	00b00813          	li	a6,11
    80007528:	0ff5f593          	andi	a1,a1,255
    8000752c:	fff6071b          	addiw	a4,a2,-1
    80007530:	1b06e663          	bltu	a3,a6,800076dc <__memset+0x1d4>
    80007534:	1cd76463          	bltu	a4,a3,800076fc <__memset+0x1f4>
    80007538:	1a078e63          	beqz	a5,800076f4 <__memset+0x1ec>
    8000753c:	00b50023          	sb	a1,0(a0)
    80007540:	00100713          	li	a4,1
    80007544:	1ae78463          	beq	a5,a4,800076ec <__memset+0x1e4>
    80007548:	00b500a3          	sb	a1,1(a0)
    8000754c:	00200713          	li	a4,2
    80007550:	1ae78a63          	beq	a5,a4,80007704 <__memset+0x1fc>
    80007554:	00b50123          	sb	a1,2(a0)
    80007558:	00300713          	li	a4,3
    8000755c:	18e78463          	beq	a5,a4,800076e4 <__memset+0x1dc>
    80007560:	00b501a3          	sb	a1,3(a0)
    80007564:	00400713          	li	a4,4
    80007568:	1ae78263          	beq	a5,a4,8000770c <__memset+0x204>
    8000756c:	00b50223          	sb	a1,4(a0)
    80007570:	00500713          	li	a4,5
    80007574:	1ae78063          	beq	a5,a4,80007714 <__memset+0x20c>
    80007578:	00b502a3          	sb	a1,5(a0)
    8000757c:	00700713          	li	a4,7
    80007580:	18e79e63          	bne	a5,a4,8000771c <__memset+0x214>
    80007584:	00b50323          	sb	a1,6(a0)
    80007588:	00700e93          	li	t4,7
    8000758c:	00859713          	slli	a4,a1,0x8
    80007590:	00e5e733          	or	a4,a1,a4
    80007594:	01059e13          	slli	t3,a1,0x10
    80007598:	01c76e33          	or	t3,a4,t3
    8000759c:	01859313          	slli	t1,a1,0x18
    800075a0:	006e6333          	or	t1,t3,t1
    800075a4:	02059893          	slli	a7,a1,0x20
    800075a8:	40f60e3b          	subw	t3,a2,a5
    800075ac:	011368b3          	or	a7,t1,a7
    800075b0:	02859813          	slli	a6,a1,0x28
    800075b4:	0108e833          	or	a6,a7,a6
    800075b8:	03059693          	slli	a3,a1,0x30
    800075bc:	003e589b          	srliw	a7,t3,0x3
    800075c0:	00d866b3          	or	a3,a6,a3
    800075c4:	03859713          	slli	a4,a1,0x38
    800075c8:	00389813          	slli	a6,a7,0x3
    800075cc:	00f507b3          	add	a5,a0,a5
    800075d0:	00e6e733          	or	a4,a3,a4
    800075d4:	000e089b          	sext.w	a7,t3
    800075d8:	00f806b3          	add	a3,a6,a5
    800075dc:	00e7b023          	sd	a4,0(a5)
    800075e0:	00878793          	addi	a5,a5,8
    800075e4:	fed79ce3          	bne	a5,a3,800075dc <__memset+0xd4>
    800075e8:	ff8e7793          	andi	a5,t3,-8
    800075ec:	0007871b          	sext.w	a4,a5
    800075f0:	01d787bb          	addw	a5,a5,t4
    800075f4:	0ce88e63          	beq	a7,a4,800076d0 <__memset+0x1c8>
    800075f8:	00f50733          	add	a4,a0,a5
    800075fc:	00b70023          	sb	a1,0(a4)
    80007600:	0017871b          	addiw	a4,a5,1
    80007604:	0cc77663          	bgeu	a4,a2,800076d0 <__memset+0x1c8>
    80007608:	00e50733          	add	a4,a0,a4
    8000760c:	00b70023          	sb	a1,0(a4)
    80007610:	0027871b          	addiw	a4,a5,2
    80007614:	0ac77e63          	bgeu	a4,a2,800076d0 <__memset+0x1c8>
    80007618:	00e50733          	add	a4,a0,a4
    8000761c:	00b70023          	sb	a1,0(a4)
    80007620:	0037871b          	addiw	a4,a5,3
    80007624:	0ac77663          	bgeu	a4,a2,800076d0 <__memset+0x1c8>
    80007628:	00e50733          	add	a4,a0,a4
    8000762c:	00b70023          	sb	a1,0(a4)
    80007630:	0047871b          	addiw	a4,a5,4
    80007634:	08c77e63          	bgeu	a4,a2,800076d0 <__memset+0x1c8>
    80007638:	00e50733          	add	a4,a0,a4
    8000763c:	00b70023          	sb	a1,0(a4)
    80007640:	0057871b          	addiw	a4,a5,5
    80007644:	08c77663          	bgeu	a4,a2,800076d0 <__memset+0x1c8>
    80007648:	00e50733          	add	a4,a0,a4
    8000764c:	00b70023          	sb	a1,0(a4)
    80007650:	0067871b          	addiw	a4,a5,6
    80007654:	06c77e63          	bgeu	a4,a2,800076d0 <__memset+0x1c8>
    80007658:	00e50733          	add	a4,a0,a4
    8000765c:	00b70023          	sb	a1,0(a4)
    80007660:	0077871b          	addiw	a4,a5,7
    80007664:	06c77663          	bgeu	a4,a2,800076d0 <__memset+0x1c8>
    80007668:	00e50733          	add	a4,a0,a4
    8000766c:	00b70023          	sb	a1,0(a4)
    80007670:	0087871b          	addiw	a4,a5,8
    80007674:	04c77e63          	bgeu	a4,a2,800076d0 <__memset+0x1c8>
    80007678:	00e50733          	add	a4,a0,a4
    8000767c:	00b70023          	sb	a1,0(a4)
    80007680:	0097871b          	addiw	a4,a5,9
    80007684:	04c77663          	bgeu	a4,a2,800076d0 <__memset+0x1c8>
    80007688:	00e50733          	add	a4,a0,a4
    8000768c:	00b70023          	sb	a1,0(a4)
    80007690:	00a7871b          	addiw	a4,a5,10
    80007694:	02c77e63          	bgeu	a4,a2,800076d0 <__memset+0x1c8>
    80007698:	00e50733          	add	a4,a0,a4
    8000769c:	00b70023          	sb	a1,0(a4)
    800076a0:	00b7871b          	addiw	a4,a5,11
    800076a4:	02c77663          	bgeu	a4,a2,800076d0 <__memset+0x1c8>
    800076a8:	00e50733          	add	a4,a0,a4
    800076ac:	00b70023          	sb	a1,0(a4)
    800076b0:	00c7871b          	addiw	a4,a5,12
    800076b4:	00c77e63          	bgeu	a4,a2,800076d0 <__memset+0x1c8>
    800076b8:	00e50733          	add	a4,a0,a4
    800076bc:	00b70023          	sb	a1,0(a4)
    800076c0:	00d7879b          	addiw	a5,a5,13
    800076c4:	00c7f663          	bgeu	a5,a2,800076d0 <__memset+0x1c8>
    800076c8:	00f507b3          	add	a5,a0,a5
    800076cc:	00b78023          	sb	a1,0(a5)
    800076d0:	00813403          	ld	s0,8(sp)
    800076d4:	01010113          	addi	sp,sp,16
    800076d8:	00008067          	ret
    800076dc:	00b00693          	li	a3,11
    800076e0:	e55ff06f          	j	80007534 <__memset+0x2c>
    800076e4:	00300e93          	li	t4,3
    800076e8:	ea5ff06f          	j	8000758c <__memset+0x84>
    800076ec:	00100e93          	li	t4,1
    800076f0:	e9dff06f          	j	8000758c <__memset+0x84>
    800076f4:	00000e93          	li	t4,0
    800076f8:	e95ff06f          	j	8000758c <__memset+0x84>
    800076fc:	00000793          	li	a5,0
    80007700:	ef9ff06f          	j	800075f8 <__memset+0xf0>
    80007704:	00200e93          	li	t4,2
    80007708:	e85ff06f          	j	8000758c <__memset+0x84>
    8000770c:	00400e93          	li	t4,4
    80007710:	e7dff06f          	j	8000758c <__memset+0x84>
    80007714:	00500e93          	li	t4,5
    80007718:	e75ff06f          	j	8000758c <__memset+0x84>
    8000771c:	00600e93          	li	t4,6
    80007720:	e6dff06f          	j	8000758c <__memset+0x84>

0000000080007724 <__memmove>:
    80007724:	ff010113          	addi	sp,sp,-16
    80007728:	00813423          	sd	s0,8(sp)
    8000772c:	01010413          	addi	s0,sp,16
    80007730:	0e060863          	beqz	a2,80007820 <__memmove+0xfc>
    80007734:	fff6069b          	addiw	a3,a2,-1
    80007738:	0006881b          	sext.w	a6,a3
    8000773c:	0ea5e863          	bltu	a1,a0,8000782c <__memmove+0x108>
    80007740:	00758713          	addi	a4,a1,7
    80007744:	00a5e7b3          	or	a5,a1,a0
    80007748:	40a70733          	sub	a4,a4,a0
    8000774c:	0077f793          	andi	a5,a5,7
    80007750:	00f73713          	sltiu	a4,a4,15
    80007754:	00174713          	xori	a4,a4,1
    80007758:	0017b793          	seqz	a5,a5
    8000775c:	00e7f7b3          	and	a5,a5,a4
    80007760:	10078863          	beqz	a5,80007870 <__memmove+0x14c>
    80007764:	00900793          	li	a5,9
    80007768:	1107f463          	bgeu	a5,a6,80007870 <__memmove+0x14c>
    8000776c:	0036581b          	srliw	a6,a2,0x3
    80007770:	fff8081b          	addiw	a6,a6,-1
    80007774:	02081813          	slli	a6,a6,0x20
    80007778:	01d85893          	srli	a7,a6,0x1d
    8000777c:	00858813          	addi	a6,a1,8
    80007780:	00058793          	mv	a5,a1
    80007784:	00050713          	mv	a4,a0
    80007788:	01088833          	add	a6,a7,a6
    8000778c:	0007b883          	ld	a7,0(a5)
    80007790:	00878793          	addi	a5,a5,8
    80007794:	00870713          	addi	a4,a4,8
    80007798:	ff173c23          	sd	a7,-8(a4)
    8000779c:	ff0798e3          	bne	a5,a6,8000778c <__memmove+0x68>
    800077a0:	ff867713          	andi	a4,a2,-8
    800077a4:	02071793          	slli	a5,a4,0x20
    800077a8:	0207d793          	srli	a5,a5,0x20
    800077ac:	00f585b3          	add	a1,a1,a5
    800077b0:	40e686bb          	subw	a3,a3,a4
    800077b4:	00f507b3          	add	a5,a0,a5
    800077b8:	06e60463          	beq	a2,a4,80007820 <__memmove+0xfc>
    800077bc:	0005c703          	lbu	a4,0(a1)
    800077c0:	00e78023          	sb	a4,0(a5)
    800077c4:	04068e63          	beqz	a3,80007820 <__memmove+0xfc>
    800077c8:	0015c603          	lbu	a2,1(a1)
    800077cc:	00100713          	li	a4,1
    800077d0:	00c780a3          	sb	a2,1(a5)
    800077d4:	04e68663          	beq	a3,a4,80007820 <__memmove+0xfc>
    800077d8:	0025c603          	lbu	a2,2(a1)
    800077dc:	00200713          	li	a4,2
    800077e0:	00c78123          	sb	a2,2(a5)
    800077e4:	02e68e63          	beq	a3,a4,80007820 <__memmove+0xfc>
    800077e8:	0035c603          	lbu	a2,3(a1)
    800077ec:	00300713          	li	a4,3
    800077f0:	00c781a3          	sb	a2,3(a5)
    800077f4:	02e68663          	beq	a3,a4,80007820 <__memmove+0xfc>
    800077f8:	0045c603          	lbu	a2,4(a1)
    800077fc:	00400713          	li	a4,4
    80007800:	00c78223          	sb	a2,4(a5)
    80007804:	00e68e63          	beq	a3,a4,80007820 <__memmove+0xfc>
    80007808:	0055c603          	lbu	a2,5(a1)
    8000780c:	00500713          	li	a4,5
    80007810:	00c782a3          	sb	a2,5(a5)
    80007814:	00e68663          	beq	a3,a4,80007820 <__memmove+0xfc>
    80007818:	0065c703          	lbu	a4,6(a1)
    8000781c:	00e78323          	sb	a4,6(a5)
    80007820:	00813403          	ld	s0,8(sp)
    80007824:	01010113          	addi	sp,sp,16
    80007828:	00008067          	ret
    8000782c:	02061713          	slli	a4,a2,0x20
    80007830:	02075713          	srli	a4,a4,0x20
    80007834:	00e587b3          	add	a5,a1,a4
    80007838:	f0f574e3          	bgeu	a0,a5,80007740 <__memmove+0x1c>
    8000783c:	02069613          	slli	a2,a3,0x20
    80007840:	02065613          	srli	a2,a2,0x20
    80007844:	fff64613          	not	a2,a2
    80007848:	00e50733          	add	a4,a0,a4
    8000784c:	00c78633          	add	a2,a5,a2
    80007850:	fff7c683          	lbu	a3,-1(a5)
    80007854:	fff78793          	addi	a5,a5,-1
    80007858:	fff70713          	addi	a4,a4,-1
    8000785c:	00d70023          	sb	a3,0(a4)
    80007860:	fec798e3          	bne	a5,a2,80007850 <__memmove+0x12c>
    80007864:	00813403          	ld	s0,8(sp)
    80007868:	01010113          	addi	sp,sp,16
    8000786c:	00008067          	ret
    80007870:	02069713          	slli	a4,a3,0x20
    80007874:	02075713          	srli	a4,a4,0x20
    80007878:	00170713          	addi	a4,a4,1
    8000787c:	00e50733          	add	a4,a0,a4
    80007880:	00050793          	mv	a5,a0
    80007884:	0005c683          	lbu	a3,0(a1)
    80007888:	00178793          	addi	a5,a5,1
    8000788c:	00158593          	addi	a1,a1,1
    80007890:	fed78fa3          	sb	a3,-1(a5)
    80007894:	fee798e3          	bne	a5,a4,80007884 <__memmove+0x160>
    80007898:	f89ff06f          	j	80007820 <__memmove+0xfc>

000000008000789c <__putc>:
    8000789c:	fe010113          	addi	sp,sp,-32
    800078a0:	00813823          	sd	s0,16(sp)
    800078a4:	00113c23          	sd	ra,24(sp)
    800078a8:	02010413          	addi	s0,sp,32
    800078ac:	00050793          	mv	a5,a0
    800078b0:	fef40593          	addi	a1,s0,-17
    800078b4:	00100613          	li	a2,1
    800078b8:	00000513          	li	a0,0
    800078bc:	fef407a3          	sb	a5,-17(s0)
    800078c0:	fffff097          	auipc	ra,0xfffff
    800078c4:	b3c080e7          	jalr	-1220(ra) # 800063fc <console_write>
    800078c8:	01813083          	ld	ra,24(sp)
    800078cc:	01013403          	ld	s0,16(sp)
    800078d0:	02010113          	addi	sp,sp,32
    800078d4:	00008067          	ret

00000000800078d8 <__getc>:
    800078d8:	fe010113          	addi	sp,sp,-32
    800078dc:	00813823          	sd	s0,16(sp)
    800078e0:	00113c23          	sd	ra,24(sp)
    800078e4:	02010413          	addi	s0,sp,32
    800078e8:	fe840593          	addi	a1,s0,-24
    800078ec:	00100613          	li	a2,1
    800078f0:	00000513          	li	a0,0
    800078f4:	fffff097          	auipc	ra,0xfffff
    800078f8:	ae8080e7          	jalr	-1304(ra) # 800063dc <console_read>
    800078fc:	fe844503          	lbu	a0,-24(s0)
    80007900:	01813083          	ld	ra,24(sp)
    80007904:	01013403          	ld	s0,16(sp)
    80007908:	02010113          	addi	sp,sp,32
    8000790c:	00008067          	ret

0000000080007910 <console_handler>:
    80007910:	fe010113          	addi	sp,sp,-32
    80007914:	00813823          	sd	s0,16(sp)
    80007918:	00113c23          	sd	ra,24(sp)
    8000791c:	00913423          	sd	s1,8(sp)
    80007920:	02010413          	addi	s0,sp,32
    80007924:	14202773          	csrr	a4,scause
    80007928:	100027f3          	csrr	a5,sstatus
    8000792c:	0027f793          	andi	a5,a5,2
    80007930:	06079e63          	bnez	a5,800079ac <console_handler+0x9c>
    80007934:	00074c63          	bltz	a4,8000794c <console_handler+0x3c>
    80007938:	01813083          	ld	ra,24(sp)
    8000793c:	01013403          	ld	s0,16(sp)
    80007940:	00813483          	ld	s1,8(sp)
    80007944:	02010113          	addi	sp,sp,32
    80007948:	00008067          	ret
    8000794c:	0ff77713          	andi	a4,a4,255
    80007950:	00900793          	li	a5,9
    80007954:	fef712e3          	bne	a4,a5,80007938 <console_handler+0x28>
    80007958:	ffffe097          	auipc	ra,0xffffe
    8000795c:	6dc080e7          	jalr	1756(ra) # 80006034 <plic_claim>
    80007960:	00a00793          	li	a5,10
    80007964:	00050493          	mv	s1,a0
    80007968:	02f50c63          	beq	a0,a5,800079a0 <console_handler+0x90>
    8000796c:	fc0506e3          	beqz	a0,80007938 <console_handler+0x28>
    80007970:	00050593          	mv	a1,a0
    80007974:	00001517          	auipc	a0,0x1
    80007978:	a7450513          	addi	a0,a0,-1420 # 800083e8 <_ZZ12printIntegermE6digits+0x308>
    8000797c:	fffff097          	auipc	ra,0xfffff
    80007980:	afc080e7          	jalr	-1284(ra) # 80006478 <__printf>
    80007984:	01013403          	ld	s0,16(sp)
    80007988:	01813083          	ld	ra,24(sp)
    8000798c:	00048513          	mv	a0,s1
    80007990:	00813483          	ld	s1,8(sp)
    80007994:	02010113          	addi	sp,sp,32
    80007998:	ffffe317          	auipc	t1,0xffffe
    8000799c:	6d430067          	jr	1748(t1) # 8000606c <plic_complete>
    800079a0:	fffff097          	auipc	ra,0xfffff
    800079a4:	3e0080e7          	jalr	992(ra) # 80006d80 <uartintr>
    800079a8:	fddff06f          	j	80007984 <console_handler+0x74>
    800079ac:	00001517          	auipc	a0,0x1
    800079b0:	b3c50513          	addi	a0,a0,-1220 # 800084e8 <digits+0x78>
    800079b4:	fffff097          	auipc	ra,0xfffff
    800079b8:	a68080e7          	jalr	-1432(ra) # 8000641c <panic>
	...
