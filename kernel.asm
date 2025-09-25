
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00008117          	auipc	sp,0x8
    80000004:	6b013103          	ld	sp,1712(sp) # 800086b0 <_GLOBAL_OFFSET_TABLE_+0x20>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	0fc040ef          	jal	ra,80004118 <start>

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
    80001084:	1d0010ef          	jal	ra,80002254 <_ZN5Riscv21SupervisorTrapHandlerEv>
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

0000000080001134 <_Z9mem_allocm>:
{
    __asm__ volatile("mv a0, %0" ::"r"(opcode));
    __asm__ volatile("ecall");
}

void* mem_alloc(size_t size) {
    80001134:	ff010113          	addi	sp,sp,-16
    80001138:	00813423          	sd	s0,8(sp)
    8000113c:	01010413          	addi	s0,sp,16
    size_t offset = size % MEM_BLOCK_SIZE;
    80001140:	00357793          	andi	a5,a0,3
    if (offset!=0)
    80001144:	00078463          	beqz	a5,8000114c <_Z9mem_allocm+0x18>
        offset=1;
    80001148:	00100793          	li	a5,1
    size_t blocks=size/MEM_BLOCK_SIZE +offset;
    8000114c:	00255513          	srli	a0,a0,0x2
    80001150:	00f50533          	add	a0,a0,a5
    __asm__ volatile ("mv a1, %[x]" :: [x] "r" (blocks));
    80001154:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" ::"r"(opcode));
    80001158:	00100793          	li	a5,1
    8000115c:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001160:	00000073          	ecall
    invoke(MEM_ALLOC);

    uint64 ret;
    __asm__ volatile ("mv %[x], a0" : [x] "=r" (ret));
    80001164:	00050513          	mv	a0,a0
    return (void*)ret;
}
    80001168:	00813403          	ld	s0,8(sp)
    8000116c:	01010113          	addi	sp,sp,16
    80001170:	00008067          	ret

0000000080001174 <_Z8mem_freePv>:

int mem_free(void* ptr) {
    80001174:	ff010113          	addi	sp,sp,-16
    80001178:	00813423          	sd	s0,8(sp)
    8000117c:	01010413          	addi	s0,sp,16
    if (ptr==nullptr) {
    80001180:	02050463          	beqz	a0,800011a8 <_Z8mem_freePv+0x34>
        return 0;
    }
    void *p=ptr;
    __asm__ volatile ("mv a1, %[x]" :: [x] "r" (p));
    80001184:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" ::"r"(opcode));
    80001188:	00200793          	li	a5,2
    8000118c:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001190:	00000073          	ecall
    invoke(MEM_FREE);
    uint64 ret;
    __asm__ volatile ("mv %[x], a0" : [x] "=r" (ret));
    80001194:	00050513          	mv	a0,a0
    return (int)ret;
    80001198:	0005051b          	sext.w	a0,a0
}
    8000119c:	00813403          	ld	s0,8(sp)
    800011a0:	01010113          	addi	sp,sp,16
    800011a4:	00008067          	ret
        return 0;
    800011a8:	00000513          	li	a0,0
    800011ac:	ff1ff06f          	j	8000119c <_Z8mem_freePv+0x28>

00000000800011b0 <_Z18mem_get_free_spacev>:

size_t mem_get_free_space() {
    800011b0:	ff010113          	addi	sp,sp,-16
    800011b4:	00813423          	sd	s0,8(sp)
    800011b8:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a0, %0" ::"r"(opcode));
    800011bc:	00300793          	li	a5,3
    800011c0:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800011c4:	00000073          	ecall

    invoke(MEM_GET_FREE_SPACE);
    uint64 ret;
    __asm__ volatile ("mv %[x], a0" : [x] "=r" (ret));
    800011c8:	00050513          	mv	a0,a0
    return (size_t)ret;
}
    800011cc:	00813403          	ld	s0,8(sp)
    800011d0:	01010113          	addi	sp,sp,16
    800011d4:	00008067          	ret

00000000800011d8 <_Z26mem_get_largest_free_blockv>:

size_t mem_get_largest_free_block() {
    800011d8:	ff010113          	addi	sp,sp,-16
    800011dc:	00813423          	sd	s0,8(sp)
    800011e0:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a0, %0" ::"r"(opcode));
    800011e4:	00400793          	li	a5,4
    800011e8:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800011ec:	00000073          	ecall
    invoke(MEM_GET_LARGEST_FREE_BLOCK);
    uint64 ret;
    __asm__ volatile ("mv %[x], a0" : [x] "=r" (ret));
    800011f0:	00050513          	mv	a0,a0
    return (size_t)ret;
}
    800011f4:	00813403          	ld	s0,8(sp)
    800011f8:	01010113          	addi	sp,sp,16
    800011fc:	00008067          	ret

0000000080001200 <_Z13thread_createPP3TCBPFvPvES2_>:


int thread_create(thread_t* handle, void(*start_routine)(void*), void* arg)
{
    80001200:	ff010113          	addi	sp,sp,-16
    80001204:	00813423          	sd	s0,8(sp)
    80001208:	01010413          	addi	s0,sp,16

    __asm__ volatile ("mv a3, %[x]" :: [x] "r" (arg));
    8000120c:	00060693          	mv	a3,a2
    __asm__ volatile ("mv a2, %[x]" :: [x] "r" (start_routine));
    80001210:	00058613          	mv	a2,a1
    __asm__ volatile ("mv a1, %[x]" :: [x] "r" (handle));
    80001214:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" ::"r"(opcode));
    80001218:	01100793          	li	a5,17
    8000121c:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001220:	00000073          	ecall

    invoke(THREAD_CREATE);
    uint64 ret;
    __asm__ volatile ("mv %[x], a0" : [x] "=r" (ret));
    80001224:	00050513          	mv	a0,a0
    return (int)ret;
}
    80001228:	0005051b          	sext.w	a0,a0
    8000122c:	00813403          	ld	s0,8(sp)
    80001230:	01010113          	addi	sp,sp,16
    80001234:	00008067          	ret

0000000080001238 <_Z11thread_exitv>:
int thread_exit()
{
    80001238:	ff010113          	addi	sp,sp,-16
    8000123c:	00813423          	sd	s0,8(sp)
    80001240:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a0, %0" ::"r"(opcode));
    80001244:	01200793          	li	a5,18
    80001248:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    8000124c:	00000073          	ecall
    invoke(THREAD_EXIT);
    uint64 ret;
    __asm__ volatile ("mv %[x], a0" : [x] "=r" (ret));
    80001250:	00050513          	mv	a0,a0
    return (int)ret;
}
    80001254:	0005051b          	sext.w	a0,a0
    80001258:	00813403          	ld	s0,8(sp)
    8000125c:	01010113          	addi	sp,sp,16
    80001260:	00008067          	ret

0000000080001264 <_Z15thread_dispatchv>:

void thread_dispatch()
{
    80001264:	ff010113          	addi	sp,sp,-16
    80001268:	00813423          	sd	s0,8(sp)
    8000126c:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a0, %0" ::"r"(opcode));
    80001270:	01300793          	li	a5,19
    80001274:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001278:	00000073          	ecall
    invoke(THREAD_DISPATCH);
}
    8000127c:	00813403          	ld	s0,8(sp)
    80001280:	01010113          	addi	sp,sp,16
    80001284:	00008067          	ret

0000000080001288 <_Z8sem_openPP3SEMj>:


int sem_open(sem_t* handle, unsigned init)
{
    80001288:	ff010113          	addi	sp,sp,-16
    8000128c:	00813423          	sd	s0,8(sp)
    80001290:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a2, %[x]" :: [x] "r" (init));
    80001294:	00058613          	mv	a2,a1
    __asm__ volatile ("mv a1, %[x]" :: [x] "r" (handle));
    80001298:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" ::"r"(opcode));
    8000129c:	02100793          	li	a5,33
    800012a0:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800012a4:	00000073          	ecall
    invoke(SEM_OPEN);
    uint64 ret;
    __asm__ volatile ("mv %[x], a0" : [x] "=r" (ret));
    800012a8:	00050513          	mv	a0,a0
    return (int)ret;
}
    800012ac:	0005051b          	sext.w	a0,a0
    800012b0:	00813403          	ld	s0,8(sp)
    800012b4:	01010113          	addi	sp,sp,16
    800012b8:	00008067          	ret

00000000800012bc <_Z9sem_closeP3SEM>:

int sem_close(sem_t handle)
{
    800012bc:	ff010113          	addi	sp,sp,-16
    800012c0:	00813423          	sd	s0,8(sp)
    800012c4:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a1, %[x]" :: [x] "r" (handle));
    800012c8:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" ::"r"(opcode));
    800012cc:	02200793          	li	a5,34
    800012d0:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800012d4:	00000073          	ecall
    invoke(SEM_CLOSE);
    uint64 ret;
    __asm__ volatile ("mv %[x], a0" : [x] "=r" (ret));
    800012d8:	00050513          	mv	a0,a0
    return (int)ret;
}
    800012dc:	0005051b          	sext.w	a0,a0
    800012e0:	00813403          	ld	s0,8(sp)
    800012e4:	01010113          	addi	sp,sp,16
    800012e8:	00008067          	ret

00000000800012ec <_Z8sem_waitP3SEM>:

int sem_wait(sem_t id)
{
    800012ec:	ff010113          	addi	sp,sp,-16
    800012f0:	00813423          	sd	s0,8(sp)
    800012f4:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a1, %[x]" :: [x] "r" (id));
    800012f8:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" ::"r"(opcode));
    800012fc:	02300793          	li	a5,35
    80001300:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001304:	00000073          	ecall
    invoke(SEM_WAIT);
    uint64 ret;
    __asm__ volatile ("mv %[x], a0" : [x] "=r" (ret));
    80001308:	00050513          	mv	a0,a0
    return (int)ret;
}
    8000130c:	0005051b          	sext.w	a0,a0
    80001310:	00813403          	ld	s0,8(sp)
    80001314:	01010113          	addi	sp,sp,16
    80001318:	00008067          	ret

000000008000131c <_Z10sem_signalP3SEM>:

int sem_signal(sem_t id)
{
    8000131c:	ff010113          	addi	sp,sp,-16
    80001320:	00813423          	sd	s0,8(sp)
    80001324:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a1, %[x]" :: [x] "r" (id));
    80001328:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" ::"r"(opcode));
    8000132c:	02400793          	li	a5,36
    80001330:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001334:	00000073          	ecall
    invoke(SEM_SIGNAL);
    uint64 ret;
    __asm__ volatile ("mv %[x], a0" : [x] "=r" (ret));
    80001338:	00050513          	mv	a0,a0
    return (int)ret;
}
    8000133c:	0005051b          	sext.w	a0,a0
    80001340:	00813403          	ld	s0,8(sp)
    80001344:	01010113          	addi	sp,sp,16
    80001348:	00008067          	ret

000000008000134c <_Z9fibonaccim>:

#include "../h/print.hpp"
#include "../h/syscall_c.hpp"
#include "../h/syscall_cpp.hpp"

uint64 fibonacci(uint64 n) {
    8000134c:	fe010113          	addi	sp,sp,-32
    80001350:	00113c23          	sd	ra,24(sp)
    80001354:	00813823          	sd	s0,16(sp)
    80001358:	00913423          	sd	s1,8(sp)
    8000135c:	01213023          	sd	s2,0(sp)
    80001360:	02010413          	addi	s0,sp,32
    80001364:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80001368:	00100793          	li	a5,1
    8000136c:	02a7f663          	bgeu	a5,a0,80001398 <_Z9fibonaccim+0x4c>
    if (n % 4 == 0) thread_dispatch();
    80001370:	00357793          	andi	a5,a0,3
    80001374:	02078e63          	beqz	a5,800013b0 <_Z9fibonaccim+0x64>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80001378:	fff48513          	addi	a0,s1,-1
    8000137c:	00000097          	auipc	ra,0x0
    80001380:	fd0080e7          	jalr	-48(ra) # 8000134c <_Z9fibonaccim>
    80001384:	00050913          	mv	s2,a0
    80001388:	ffe48513          	addi	a0,s1,-2
    8000138c:	00000097          	auipc	ra,0x0
    80001390:	fc0080e7          	jalr	-64(ra) # 8000134c <_Z9fibonaccim>
    80001394:	00a90533          	add	a0,s2,a0
}
    80001398:	01813083          	ld	ra,24(sp)
    8000139c:	01013403          	ld	s0,16(sp)
    800013a0:	00813483          	ld	s1,8(sp)
    800013a4:	00013903          	ld	s2,0(sp)
    800013a8:	02010113          	addi	sp,sp,32
    800013ac:	00008067          	ret
    if (n % 4 == 0) thread_dispatch();
    800013b0:	00000097          	auipc	ra,0x0
    800013b4:	eb4080e7          	jalr	-332(ra) # 80001264 <_Z15thread_dispatchv>
    800013b8:	fc1ff06f          	j	80001378 <_Z9fibonaccim+0x2c>

00000000800013bc <_Z13initSemaphorev>:

Semaphore* semaphore;

void initSemaphore() {
    if (semaphore) {
    800013bc:	00007797          	auipc	a5,0x7
    800013c0:	3547b783          	ld	a5,852(a5) # 80008710 <semaphore>
    800013c4:	00078463          	beqz	a5,800013cc <_Z13initSemaphorev+0x10>
    800013c8:	00008067          	ret
void initSemaphore() {
    800013cc:	fe010113          	addi	sp,sp,-32
    800013d0:	00113c23          	sd	ra,24(sp)
    800013d4:	00813823          	sd	s0,16(sp)
    800013d8:	00913423          	sd	s1,8(sp)
    800013dc:	01213023          	sd	s2,0(sp)
    800013e0:	02010413          	addi	s0,sp,32
        return;
    }
    semaphore = new Semaphore(2);
    800013e4:	01000513          	li	a0,16
    800013e8:	00001097          	auipc	ra,0x1
    800013ec:	9a4080e7          	jalr	-1628(ra) # 80001d8c <_Znwm>
    800013f0:	00050493          	mv	s1,a0
    800013f4:	00200593          	li	a1,2
    800013f8:	00001097          	auipc	ra,0x1
    800013fc:	ba0080e7          	jalr	-1120(ra) # 80001f98 <_ZN9SemaphoreC1Ej>
    80001400:	00007797          	auipc	a5,0x7
    80001404:	3097b823          	sd	s1,784(a5) # 80008710 <semaphore>
    if (semaphore == nullptr) {
    80001408:	00048e63          	beqz	s1,80001424 <_Z13initSemaphorev+0x68>
        printString("Failed\n");

    }
}
    8000140c:	01813083          	ld	ra,24(sp)
    80001410:	01013403          	ld	s0,16(sp)
    80001414:	00813483          	ld	s1,8(sp)
    80001418:	00013903          	ld	s2,0(sp)
    8000141c:	02010113          	addi	sp,sp,32
    80001420:	00008067          	ret
        printString("Failed\n");
    80001424:	00006517          	auipc	a0,0x6
    80001428:	bfc50513          	addi	a0,a0,-1028 # 80007020 <CONSOLE_STATUS+0x10>
    8000142c:	00001097          	auipc	ra,0x1
    80001430:	460080e7          	jalr	1120(ra) # 8000288c <_Z11printStringPKc>
    80001434:	fd9ff06f          	j	8000140c <_Z13initSemaphorev+0x50>
    80001438:	00050913          	mv	s2,a0
    semaphore = new Semaphore(2);
    8000143c:	00048513          	mv	a0,s1
    80001440:	00001097          	auipc	ra,0x1
    80001444:	974080e7          	jalr	-1676(ra) # 80001db4 <_ZdlPv>
    80001448:	00090513          	mv	a0,s2
    8000144c:	00008097          	auipc	ra,0x8
    80001450:	3dc080e7          	jalr	988(ra) # 80009828 <_Unwind_Resume>

0000000080001454 <_Z11workerBodyAv>:

void workerBodyA() {
    80001454:	fe010113          	addi	sp,sp,-32
    80001458:	00113c23          	sd	ra,24(sp)
    8000145c:	00813823          	sd	s0,16(sp)
    80001460:	00913423          	sd	s1,8(sp)
    80001464:	01213023          	sd	s2,0(sp)
    80001468:	02010413          	addi	s0,sp,32
    initSemaphore();
    8000146c:	00000097          	auipc	ra,0x0
    80001470:	f50080e7          	jalr	-176(ra) # 800013bc <_Z13initSemaphorev>
    semaphore->wait();
    80001474:	00007517          	auipc	a0,0x7
    80001478:	29c53503          	ld	a0,668(a0) # 80008710 <semaphore>
    8000147c:	00001097          	auipc	ra,0x1
    80001480:	b54080e7          	jalr	-1196(ra) # 80001fd0 <_ZN9Semaphore4waitEv>
    uint8 i = 0;
    80001484:	00000493          	li	s1,0
    80001488:	0380006f          	j	800014c0 <_Z11workerBodyAv+0x6c>
    for (; i < 3; i++) { printString("A: i="); printInteger(i); printString("\n"); }
    8000148c:	00006517          	auipc	a0,0x6
    80001490:	b9c50513          	addi	a0,a0,-1124 # 80007028 <CONSOLE_STATUS+0x18>
    80001494:	00001097          	auipc	ra,0x1
    80001498:	3f8080e7          	jalr	1016(ra) # 8000288c <_Z11printStringPKc>
    8000149c:	00048513          	mv	a0,s1
    800014a0:	00001097          	auipc	ra,0x1
    800014a4:	430080e7          	jalr	1072(ra) # 800028d0 <_Z12printIntegerm>
    800014a8:	00006517          	auipc	a0,0x6
    800014ac:	c4050513          	addi	a0,a0,-960 # 800070e8 <CONSOLE_STATUS+0xd8>
    800014b0:	00001097          	auipc	ra,0x1
    800014b4:	3dc080e7          	jalr	988(ra) # 8000288c <_Z11printStringPKc>
    800014b8:	0014849b          	addiw	s1,s1,1
    800014bc:	0ff4f493          	andi	s1,s1,255
    800014c0:	00200793          	li	a5,2
    800014c4:	fc97f4e3          	bgeu	a5,s1,8000148c <_Z11workerBodyAv+0x38>

    printString("A: yield\n");
    800014c8:	00006517          	auipc	a0,0x6
    800014cc:	b6850513          	addi	a0,a0,-1176 # 80007030 <CONSOLE_STATUS+0x20>
    800014d0:	00001097          	auipc	ra,0x1
    800014d4:	3bc080e7          	jalr	956(ra) # 8000288c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800014d8:	00700313          	li	t1,7
    thread_dispatch();
    800014dc:	00000097          	auipc	ra,0x0
    800014e0:	d88080e7          	jalr	-632(ra) # 80001264 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800014e4:	00030913          	mv	s2,t1
    printString("A: t1="); printInteger(t1); printString("\n");
    800014e8:	00006517          	auipc	a0,0x6
    800014ec:	b5850513          	addi	a0,a0,-1192 # 80007040 <CONSOLE_STATUS+0x30>
    800014f0:	00001097          	auipc	ra,0x1
    800014f4:	39c080e7          	jalr	924(ra) # 8000288c <_Z11printStringPKc>
    800014f8:	00090513          	mv	a0,s2
    800014fc:	00001097          	auipc	ra,0x1
    80001500:	3d4080e7          	jalr	980(ra) # 800028d0 <_Z12printIntegerm>
    80001504:	00006517          	auipc	a0,0x6
    80001508:	be450513          	addi	a0,a0,-1052 # 800070e8 <CONSOLE_STATUS+0xd8>
    8000150c:	00001097          	auipc	ra,0x1
    80001510:	380080e7          	jalr	896(ra) # 8000288c <_Z11printStringPKc>

    uint64 result = fibonacci(20);
    80001514:	01400513          	li	a0,20
    80001518:	00000097          	auipc	ra,0x0
    8000151c:	e34080e7          	jalr	-460(ra) # 8000134c <_Z9fibonaccim>
    80001520:	00050913          	mv	s2,a0
    printString("A: fibonaci="); printInteger(result); printString("\n");
    80001524:	00006517          	auipc	a0,0x6
    80001528:	b2450513          	addi	a0,a0,-1244 # 80007048 <CONSOLE_STATUS+0x38>
    8000152c:	00001097          	auipc	ra,0x1
    80001530:	360080e7          	jalr	864(ra) # 8000288c <_Z11printStringPKc>
    80001534:	00090513          	mv	a0,s2
    80001538:	00001097          	auipc	ra,0x1
    8000153c:	398080e7          	jalr	920(ra) # 800028d0 <_Z12printIntegerm>
    80001540:	00006517          	auipc	a0,0x6
    80001544:	ba850513          	addi	a0,a0,-1112 # 800070e8 <CONSOLE_STATUS+0xd8>
    80001548:	00001097          	auipc	ra,0x1
    8000154c:	344080e7          	jalr	836(ra) # 8000288c <_Z11printStringPKc>
    80001550:	0380006f          	j	80001588 <_Z11workerBodyAv+0x134>

    for (; i < 6; i++) { printString("A: i="); printInteger(i); printString("\n"); }
    80001554:	00006517          	auipc	a0,0x6
    80001558:	ad450513          	addi	a0,a0,-1324 # 80007028 <CONSOLE_STATUS+0x18>
    8000155c:	00001097          	auipc	ra,0x1
    80001560:	330080e7          	jalr	816(ra) # 8000288c <_Z11printStringPKc>
    80001564:	00048513          	mv	a0,s1
    80001568:	00001097          	auipc	ra,0x1
    8000156c:	368080e7          	jalr	872(ra) # 800028d0 <_Z12printIntegerm>
    80001570:	00006517          	auipc	a0,0x6
    80001574:	b7850513          	addi	a0,a0,-1160 # 800070e8 <CONSOLE_STATUS+0xd8>
    80001578:	00001097          	auipc	ra,0x1
    8000157c:	314080e7          	jalr	788(ra) # 8000288c <_Z11printStringPKc>
    80001580:	0014849b          	addiw	s1,s1,1
    80001584:	0ff4f493          	andi	s1,s1,255
    80001588:	00500793          	li	a5,5
    8000158c:	fc97f4e3          	bgeu	a5,s1,80001554 <_Z11workerBodyAv+0x100>

    printString("A finished!\n");
    80001590:	00006517          	auipc	a0,0x6
    80001594:	ac850513          	addi	a0,a0,-1336 # 80007058 <CONSOLE_STATUS+0x48>
    80001598:	00001097          	auipc	ra,0x1
    8000159c:	2f4080e7          	jalr	756(ra) # 8000288c <_Z11printStringPKc>
    semaphore->signal();
    800015a0:	00007517          	auipc	a0,0x7
    800015a4:	17053503          	ld	a0,368(a0) # 80008710 <semaphore>
    800015a8:	00001097          	auipc	ra,0x1
    800015ac:	a54080e7          	jalr	-1452(ra) # 80001ffc <_ZN9Semaphore6signalEv>

}
    800015b0:	01813083          	ld	ra,24(sp)
    800015b4:	01013403          	ld	s0,16(sp)
    800015b8:	00813483          	ld	s1,8(sp)
    800015bc:	00013903          	ld	s2,0(sp)
    800015c0:	02010113          	addi	sp,sp,32
    800015c4:	00008067          	ret

00000000800015c8 <_Z11workerBodyBv>:

void workerBodyB() {
    800015c8:	fe010113          	addi	sp,sp,-32
    800015cc:	00113c23          	sd	ra,24(sp)
    800015d0:	00813823          	sd	s0,16(sp)
    800015d4:	00913423          	sd	s1,8(sp)
    800015d8:	01213023          	sd	s2,0(sp)
    800015dc:	02010413          	addi	s0,sp,32
    initSemaphore();
    800015e0:	00000097          	auipc	ra,0x0
    800015e4:	ddc080e7          	jalr	-548(ra) # 800013bc <_Z13initSemaphorev>
    semaphore->wait();
    800015e8:	00007517          	auipc	a0,0x7
    800015ec:	12853503          	ld	a0,296(a0) # 80008710 <semaphore>
    800015f0:	00001097          	auipc	ra,0x1
    800015f4:	9e0080e7          	jalr	-1568(ra) # 80001fd0 <_ZN9Semaphore4waitEv>
    uint8 i = 10;
    800015f8:	00a00493          	li	s1,10
    800015fc:	0380006f          	j	80001634 <_Z11workerBodyBv+0x6c>
    for (; i < 13; i++) { printString("B: i="); printInteger(i); printString("\n"); }
    80001600:	00006517          	auipc	a0,0x6
    80001604:	a6850513          	addi	a0,a0,-1432 # 80007068 <CONSOLE_STATUS+0x58>
    80001608:	00001097          	auipc	ra,0x1
    8000160c:	284080e7          	jalr	644(ra) # 8000288c <_Z11printStringPKc>
    80001610:	00048513          	mv	a0,s1
    80001614:	00001097          	auipc	ra,0x1
    80001618:	2bc080e7          	jalr	700(ra) # 800028d0 <_Z12printIntegerm>
    8000161c:	00006517          	auipc	a0,0x6
    80001620:	acc50513          	addi	a0,a0,-1332 # 800070e8 <CONSOLE_STATUS+0xd8>
    80001624:	00001097          	auipc	ra,0x1
    80001628:	268080e7          	jalr	616(ra) # 8000288c <_Z11printStringPKc>
    8000162c:	0014849b          	addiw	s1,s1,1
    80001630:	0ff4f493          	andi	s1,s1,255
    80001634:	00c00793          	li	a5,12
    80001638:	fc97f4e3          	bgeu	a5,s1,80001600 <_Z11workerBodyBv+0x38>

    printString("B: yield\n");
    8000163c:	00006517          	auipc	a0,0x6
    80001640:	a3450513          	addi	a0,a0,-1484 # 80007070 <CONSOLE_STATUS+0x60>
    80001644:	00001097          	auipc	ra,0x1
    80001648:	248080e7          	jalr	584(ra) # 8000288c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    8000164c:	00500313          	li	t1,5
    thread_dispatch();
    80001650:	00000097          	auipc	ra,0x0
    80001654:	c14080e7          	jalr	-1004(ra) # 80001264 <_Z15thread_dispatchv>

    uint64 result = fibonacci(23);
    80001658:	01700513          	li	a0,23
    8000165c:	00000097          	auipc	ra,0x0
    80001660:	cf0080e7          	jalr	-784(ra) # 8000134c <_Z9fibonaccim>
    80001664:	00050913          	mv	s2,a0
    printString("B: fibonaci="); printInteger(result); printString("\n");
    80001668:	00006517          	auipc	a0,0x6
    8000166c:	a1850513          	addi	a0,a0,-1512 # 80007080 <CONSOLE_STATUS+0x70>
    80001670:	00001097          	auipc	ra,0x1
    80001674:	21c080e7          	jalr	540(ra) # 8000288c <_Z11printStringPKc>
    80001678:	00090513          	mv	a0,s2
    8000167c:	00001097          	auipc	ra,0x1
    80001680:	254080e7          	jalr	596(ra) # 800028d0 <_Z12printIntegerm>
    80001684:	00006517          	auipc	a0,0x6
    80001688:	a6450513          	addi	a0,a0,-1436 # 800070e8 <CONSOLE_STATUS+0xd8>
    8000168c:	00001097          	auipc	ra,0x1
    80001690:	200080e7          	jalr	512(ra) # 8000288c <_Z11printStringPKc>
    80001694:	0380006f          	j	800016cc <_Z11workerBodyBv+0x104>

    for (; i < 16; i++) { printString("B: i="); printInteger(i); printString("\n"); }
    80001698:	00006517          	auipc	a0,0x6
    8000169c:	9d050513          	addi	a0,a0,-1584 # 80007068 <CONSOLE_STATUS+0x58>
    800016a0:	00001097          	auipc	ra,0x1
    800016a4:	1ec080e7          	jalr	492(ra) # 8000288c <_Z11printStringPKc>
    800016a8:	00048513          	mv	a0,s1
    800016ac:	00001097          	auipc	ra,0x1
    800016b0:	224080e7          	jalr	548(ra) # 800028d0 <_Z12printIntegerm>
    800016b4:	00006517          	auipc	a0,0x6
    800016b8:	a3450513          	addi	a0,a0,-1484 # 800070e8 <CONSOLE_STATUS+0xd8>
    800016bc:	00001097          	auipc	ra,0x1
    800016c0:	1d0080e7          	jalr	464(ra) # 8000288c <_Z11printStringPKc>
    800016c4:	0014849b          	addiw	s1,s1,1
    800016c8:	0ff4f493          	andi	s1,s1,255
    800016cc:	00f00793          	li	a5,15
    800016d0:	fc97f4e3          	bgeu	a5,s1,80001698 <_Z11workerBodyBv+0xd0>
    printString("B finished!\n");
    800016d4:	00006517          	auipc	a0,0x6
    800016d8:	9bc50513          	addi	a0,a0,-1604 # 80007090 <CONSOLE_STATUS+0x80>
    800016dc:	00001097          	auipc	ra,0x1
    800016e0:	1b0080e7          	jalr	432(ra) # 8000288c <_Z11printStringPKc>
    semaphore->signal();
    800016e4:	00007517          	auipc	a0,0x7
    800016e8:	02c53503          	ld	a0,44(a0) # 80008710 <semaphore>
    800016ec:	00001097          	auipc	ra,0x1
    800016f0:	910080e7          	jalr	-1776(ra) # 80001ffc <_ZN9Semaphore6signalEv>
}
    800016f4:	01813083          	ld	ra,24(sp)
    800016f8:	01013403          	ld	s0,16(sp)
    800016fc:	00813483          	ld	s1,8(sp)
    80001700:	00013903          	ld	s2,0(sp)
    80001704:	02010113          	addi	sp,sp,32
    80001708:	00008067          	ret

000000008000170c <_Z11workerBodyCv>:

void workerBodyC() {
    8000170c:	fe010113          	addi	sp,sp,-32
    80001710:	00113c23          	sd	ra,24(sp)
    80001714:	00813823          	sd	s0,16(sp)
    80001718:	00913423          	sd	s1,8(sp)
    8000171c:	01213023          	sd	s2,0(sp)
    80001720:	02010413          	addi	s0,sp,32
    initSemaphore();
    80001724:	00000097          	auipc	ra,0x0
    80001728:	c98080e7          	jalr	-872(ra) # 800013bc <_Z13initSemaphorev>
    semaphore->wait();
    8000172c:	00007517          	auipc	a0,0x7
    80001730:	fe453503          	ld	a0,-28(a0) # 80008710 <semaphore>
    80001734:	00001097          	auipc	ra,0x1
    80001738:	89c080e7          	jalr	-1892(ra) # 80001fd0 <_ZN9Semaphore4waitEv>
    uint8 i = 20;
    8000173c:	01400493          	li	s1,20
    80001740:	0380006f          	j	80001778 <_Z11workerBodyCv+0x6c>
    for (; i < 23; i++) { printString("C: i="); printInteger(i); printString("\n"); }
    80001744:	00006517          	auipc	a0,0x6
    80001748:	95c50513          	addi	a0,a0,-1700 # 800070a0 <CONSOLE_STATUS+0x90>
    8000174c:	00001097          	auipc	ra,0x1
    80001750:	140080e7          	jalr	320(ra) # 8000288c <_Z11printStringPKc>
    80001754:	00048513          	mv	a0,s1
    80001758:	00001097          	auipc	ra,0x1
    8000175c:	178080e7          	jalr	376(ra) # 800028d0 <_Z12printIntegerm>
    80001760:	00006517          	auipc	a0,0x6
    80001764:	98850513          	addi	a0,a0,-1656 # 800070e8 <CONSOLE_STATUS+0xd8>
    80001768:	00001097          	auipc	ra,0x1
    8000176c:	124080e7          	jalr	292(ra) # 8000288c <_Z11printStringPKc>
    80001770:	0014849b          	addiw	s1,s1,1
    80001774:	0ff4f493          	andi	s1,s1,255
    80001778:	01600793          	li	a5,22
    8000177c:	fc97f4e3          	bgeu	a5,s1,80001744 <_Z11workerBodyCv+0x38>

    printString("C: yield\n");
    80001780:	00006517          	auipc	a0,0x6
    80001784:	92850513          	addi	a0,a0,-1752 # 800070a8 <CONSOLE_STATUS+0x98>
    80001788:	00001097          	auipc	ra,0x1
    8000178c:	104080e7          	jalr	260(ra) # 8000288c <_Z11printStringPKc>
    __asm__ ("li t1, 9");
    80001790:	00900313          	li	t1,9
    thread_dispatch();
    80001794:	00000097          	auipc	ra,0x0
    80001798:	ad0080e7          	jalr	-1328(ra) # 80001264 <_Z15thread_dispatchv>

    uint64 result = fibonacci(35);
    8000179c:	02300513          	li	a0,35
    800017a0:	00000097          	auipc	ra,0x0
    800017a4:	bac080e7          	jalr	-1108(ra) # 8000134c <_Z9fibonaccim>
    800017a8:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInteger(result); printString("\n");
    800017ac:	00006517          	auipc	a0,0x6
    800017b0:	90c50513          	addi	a0,a0,-1780 # 800070b8 <CONSOLE_STATUS+0xa8>
    800017b4:	00001097          	auipc	ra,0x1
    800017b8:	0d8080e7          	jalr	216(ra) # 8000288c <_Z11printStringPKc>
    800017bc:	00090513          	mv	a0,s2
    800017c0:	00001097          	auipc	ra,0x1
    800017c4:	110080e7          	jalr	272(ra) # 800028d0 <_Z12printIntegerm>
    800017c8:	00006517          	auipc	a0,0x6
    800017cc:	92050513          	addi	a0,a0,-1760 # 800070e8 <CONSOLE_STATUS+0xd8>
    800017d0:	00001097          	auipc	ra,0x1
    800017d4:	0bc080e7          	jalr	188(ra) # 8000288c <_Z11printStringPKc>
    800017d8:	0380006f          	j	80001810 <_Z11workerBodyCv+0x104>

    for (; i < 26; i++) { printString("C: i="); printInteger(i); printString("\n"); }
    800017dc:	00006517          	auipc	a0,0x6
    800017e0:	8c450513          	addi	a0,a0,-1852 # 800070a0 <CONSOLE_STATUS+0x90>
    800017e4:	00001097          	auipc	ra,0x1
    800017e8:	0a8080e7          	jalr	168(ra) # 8000288c <_Z11printStringPKc>
    800017ec:	00048513          	mv	a0,s1
    800017f0:	00001097          	auipc	ra,0x1
    800017f4:	0e0080e7          	jalr	224(ra) # 800028d0 <_Z12printIntegerm>
    800017f8:	00006517          	auipc	a0,0x6
    800017fc:	8f050513          	addi	a0,a0,-1808 # 800070e8 <CONSOLE_STATUS+0xd8>
    80001800:	00001097          	auipc	ra,0x1
    80001804:	08c080e7          	jalr	140(ra) # 8000288c <_Z11printStringPKc>
    80001808:	0014849b          	addiw	s1,s1,1
    8000180c:	0ff4f493          	andi	s1,s1,255
    80001810:	01900793          	li	a5,25
    80001814:	fc97f4e3          	bgeu	a5,s1,800017dc <_Z11workerBodyCv+0xd0>
    printString("C finished!\n");
    80001818:	00006517          	auipc	a0,0x6
    8000181c:	8b050513          	addi	a0,a0,-1872 # 800070c8 <CONSOLE_STATUS+0xb8>
    80001820:	00001097          	auipc	ra,0x1
    80001824:	06c080e7          	jalr	108(ra) # 8000288c <_Z11printStringPKc>
    semaphore->signal();
    80001828:	00007517          	auipc	a0,0x7
    8000182c:	ee853503          	ld	a0,-280(a0) # 80008710 <semaphore>
    80001830:	00000097          	auipc	ra,0x0
    80001834:	7cc080e7          	jalr	1996(ra) # 80001ffc <_ZN9Semaphore6signalEv>
}
    80001838:	01813083          	ld	ra,24(sp)
    8000183c:	01013403          	ld	s0,16(sp)
    80001840:	00813483          	ld	s1,8(sp)
    80001844:	00013903          	ld	s2,0(sp)
    80001848:	02010113          	addi	sp,sp,32
    8000184c:	00008067          	ret

0000000080001850 <_Z41__static_initialization_and_destruction_0ii>:
    return queue.removeLast();
}

void Scheduler::put(TCB *x) {
    queue.addFirst(x);
    80001850:	ff010113          	addi	sp,sp,-16
    80001854:	00813423          	sd	s0,8(sp)
    80001858:	01010413          	addi	s0,sp,16
    8000185c:	00100793          	li	a5,1
    80001860:	00f50863          	beq	a0,a5,80001870 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80001864:	00813403          	ld	s0,8(sp)
    80001868:	01010113          	addi	sp,sp,16
    8000186c:	00008067          	ret
    80001870:	000107b7          	lui	a5,0x10
    80001874:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001878:	fef596e3          	bne	a1,a5,80001864 <_Z41__static_initialization_and_destruction_0ii+0x14>
    };
    Elem * head;
    Elem *tail;

public:
    List(): head(0), tail(0){}
    8000187c:	00007797          	auipc	a5,0x7
    80001880:	e9c78793          	addi	a5,a5,-356 # 80008718 <_ZN9Scheduler5queueE>
    80001884:	0007b023          	sd	zero,0(a5)
    80001888:	0007b423          	sd	zero,8(a5)
    8000188c:	0007a823          	sw	zero,16(a5)
    80001890:	fd5ff06f          	j	80001864 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080001894 <_ZN9Scheduler3getEv>:
TCB *Scheduler::get() {
    80001894:	fe010113          	addi	sp,sp,-32
    80001898:	00113c23          	sd	ra,24(sp)
    8000189c:	00813823          	sd	s0,16(sp)
    800018a0:	00913423          	sd	s1,8(sp)
    800018a4:	02010413          	addi	s0,sp,32
        if(!tail){tail=head;}
        size++;
    }
    T* removeLast()
    {
        size--;
    800018a8:	00007797          	auipc	a5,0x7
    800018ac:	e7078793          	addi	a5,a5,-400 # 80008718 <_ZN9Scheduler5queueE>
    800018b0:	0107a703          	lw	a4,16(a5)
    800018b4:	fff7071b          	addiw	a4,a4,-1
    800018b8:	00e7a823          	sw	a4,16(a5)
        if(!head){return 0;}
    800018bc:	0007b483          	ld	s1,0(a5)
    800018c0:	04048663          	beqz	s1,8000190c <_ZN9Scheduler3getEv+0x78>
        Elem* prev=0;
    800018c4:	00000793          	li	a5,0
        for(Elem* curr=head; curr && curr!=tail; prev=curr, curr=curr->next);
    800018c8:	00048e63          	beqz	s1,800018e4 <_ZN9Scheduler3getEv+0x50>
    800018cc:	00007717          	auipc	a4,0x7
    800018d0:	e5473703          	ld	a4,-428(a4) # 80008720 <_ZN9Scheduler5queueE+0x8>
    800018d4:	00e48863          	beq	s1,a4,800018e4 <_ZN9Scheduler3getEv+0x50>
    800018d8:	00048793          	mv	a5,s1
    800018dc:	0084b483          	ld	s1,8(s1)
    800018e0:	fe9ff06f          	j	800018c8 <_ZN9Scheduler3getEv+0x34>
        Elem* elem=tail;
    800018e4:	00007517          	auipc	a0,0x7
    800018e8:	e3c53503          	ld	a0,-452(a0) # 80008720 <_ZN9Scheduler5queueE+0x8>
        if(prev) prev->next=0;
    800018ec:	02078c63          	beqz	a5,80001924 <_ZN9Scheduler3getEv+0x90>
    800018f0:	0007b423          	sd	zero,8(a5)
        else head=0;
        tail=prev;
    800018f4:	00007717          	auipc	a4,0x7
    800018f8:	e2f73623          	sd	a5,-468(a4) # 80008720 <_ZN9Scheduler5queueE+0x8>
        T* retval= elem->data;
    800018fc:	00053483          	ld	s1,0(a0)
        delete elem;
    80001900:	00050663          	beqz	a0,8000190c <_ZN9Scheduler3getEv+0x78>
    80001904:	00000097          	auipc	ra,0x0
    80001908:	4b0080e7          	jalr	1200(ra) # 80001db4 <_ZdlPv>
}
    8000190c:	00048513          	mv	a0,s1
    80001910:	01813083          	ld	ra,24(sp)
    80001914:	01013403          	ld	s0,16(sp)
    80001918:	00813483          	ld	s1,8(sp)
    8000191c:	02010113          	addi	sp,sp,32
    80001920:	00008067          	ret
        else head=0;
    80001924:	00007717          	auipc	a4,0x7
    80001928:	de073a23          	sd	zero,-524(a4) # 80008718 <_ZN9Scheduler5queueE>
    8000192c:	fc9ff06f          	j	800018f4 <_ZN9Scheduler3getEv+0x60>

0000000080001930 <_ZN9Scheduler3putEP3TCB>:
void Scheduler::put(TCB *x) {
    80001930:	fe010113          	addi	sp,sp,-32
    80001934:	00113c23          	sd	ra,24(sp)
    80001938:	00813823          	sd	s0,16(sp)
    8000193c:	00913423          	sd	s1,8(sp)
    80001940:	02010413          	addi	s0,sp,32
    80001944:	00050493          	mv	s1,a0
        Elem* elem=new Elem(data, head);
    80001948:	01000513          	li	a0,16
    8000194c:	00000097          	auipc	ra,0x0
    80001950:	440080e7          	jalr	1088(ra) # 80001d8c <_Znwm>
    80001954:	00007797          	auipc	a5,0x7
    80001958:	dc478793          	addi	a5,a5,-572 # 80008718 <_ZN9Scheduler5queueE>
    8000195c:	0007b703          	ld	a4,0(a5)
        Elem(T* data, Elem* next=nullptr): data(data), next(next){}
    80001960:	00953023          	sd	s1,0(a0)
    80001964:	00e53423          	sd	a4,8(a0)
        head=elem;
    80001968:	00a7b023          	sd	a0,0(a5)
        if(!tail){tail=head;}
    8000196c:	0087b783          	ld	a5,8(a5)
    80001970:	02078663          	beqz	a5,8000199c <_ZN9Scheduler3putEP3TCB+0x6c>
        size++;
    80001974:	00007717          	auipc	a4,0x7
    80001978:	da470713          	addi	a4,a4,-604 # 80008718 <_ZN9Scheduler5queueE>
    8000197c:	01072783          	lw	a5,16(a4)
    80001980:	0017879b          	addiw	a5,a5,1
    80001984:	00f72823          	sw	a5,16(a4)
    80001988:	01813083          	ld	ra,24(sp)
    8000198c:	01013403          	ld	s0,16(sp)
    80001990:	00813483          	ld	s1,8(sp)
    80001994:	02010113          	addi	sp,sp,32
    80001998:	00008067          	ret
        if(!tail){tail=head;}
    8000199c:	00007797          	auipc	a5,0x7
    800019a0:	d8a7b223          	sd	a0,-636(a5) # 80008720 <_ZN9Scheduler5queueE+0x8>
    800019a4:	fd1ff06f          	j	80001974 <_ZN9Scheduler3putEP3TCB+0x44>

00000000800019a8 <_GLOBAL__sub_I__ZN9Scheduler5queueE>:
    800019a8:	ff010113          	addi	sp,sp,-16
    800019ac:	00113423          	sd	ra,8(sp)
    800019b0:	00813023          	sd	s0,0(sp)
    800019b4:	01010413          	addi	s0,sp,16
    800019b8:	000105b7          	lui	a1,0x10
    800019bc:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    800019c0:	00100513          	li	a0,1
    800019c4:	00000097          	auipc	ra,0x0
    800019c8:	e8c080e7          	jalr	-372(ra) # 80001850 <_Z41__static_initialization_and_destruction_0ii>
    800019cc:	00813083          	ld	ra,8(sp)
    800019d0:	00013403          	ld	s0,0(sp)
    800019d4:	01010113          	addi	sp,sp,16
    800019d8:	00008067          	ret

00000000800019dc <_Z14WorkerAWrapperPv>:
    userMain();
    printString("user main end:\n");
}

void WorkerAWrapper(void* arg)
{
    800019dc:	ff010113          	addi	sp,sp,-16
    800019e0:	00113423          	sd	ra,8(sp)
    800019e4:	00813023          	sd	s0,0(sp)
    800019e8:	01010413          	addi	s0,sp,16
    //printString("worker A start:\n");
    workerBodyA();
    800019ec:	00000097          	auipc	ra,0x0
    800019f0:	a68080e7          	jalr	-1432(ra) # 80001454 <_Z11workerBodyAv>
    //printString("worker A end:\n");
}
    800019f4:	00813083          	ld	ra,8(sp)
    800019f8:	00013403          	ld	s0,0(sp)
    800019fc:	01010113          	addi	sp,sp,16
    80001a00:	00008067          	ret

0000000080001a04 <_Z14WorkerBWrapperPv>:

void WorkerBWrapper(void* arg)
{
    80001a04:	ff010113          	addi	sp,sp,-16
    80001a08:	00113423          	sd	ra,8(sp)
    80001a0c:	00813023          	sd	s0,0(sp)
    80001a10:	01010413          	addi	s0,sp,16
    //printString("worker B start:\n");
    workerBodyB();
    80001a14:	00000097          	auipc	ra,0x0
    80001a18:	bb4080e7          	jalr	-1100(ra) # 800015c8 <_Z11workerBodyBv>
    //printString("worker B end:\n");
}
    80001a1c:	00813083          	ld	ra,8(sp)
    80001a20:	00013403          	ld	s0,0(sp)
    80001a24:	01010113          	addi	sp,sp,16
    80001a28:	00008067          	ret

0000000080001a2c <_Z14WorkerCWrapperPv>:

void WorkerCWrapper(void* arg)
{
    80001a2c:	ff010113          	addi	sp,sp,-16
    80001a30:	00113423          	sd	ra,8(sp)
    80001a34:	00813023          	sd	s0,0(sp)
    80001a38:	01010413          	addi	s0,sp,16
    //printString("worker C start:\n");
    workerBodyC();
    80001a3c:	00000097          	auipc	ra,0x0
    80001a40:	cd0080e7          	jalr	-816(ra) # 8000170c <_Z11workerBodyCv>
    //printString("worker C end:\n");
}
    80001a44:	00813083          	ld	ra,8(sp)
    80001a48:	00013403          	ld	s0,0(sp)
    80001a4c:	01010113          	addi	sp,sp,16
    80001a50:	00008067          	ret

0000000080001a54 <_Z13AllocatorTestv>:
void AllocatorTest() {
    80001a54:	fd010113          	addi	sp,sp,-48
    80001a58:	02113423          	sd	ra,40(sp)
    80001a5c:	02813023          	sd	s0,32(sp)
    80001a60:	00913c23          	sd	s1,24(sp)
    80001a64:	01213823          	sd	s2,16(sp)
    80001a68:	01313423          	sd	s3,8(sp)
    80001a6c:	03010413          	addi	s0,sp,48
    uint64* a1=new uint64;
    80001a70:	00800513          	li	a0,8
    80001a74:	00000097          	auipc	ra,0x0
    80001a78:	318080e7          	jalr	792(ra) # 80001d8c <_Znwm>
    80001a7c:	00050993          	mv	s3,a0
    *a1=4;
    80001a80:	00400793          	li	a5,4
    80001a84:	00f53023          	sd	a5,0(a0)
    __putc(*a1+'0');
    80001a88:	03400513          	li	a0,52
    80001a8c:	00004097          	auipc	ra,0x4
    80001a90:	750080e7          	jalr	1872(ra) # 800061dc <__putc>
    __putc('\n');
    80001a94:	00a00513          	li	a0,10
    80001a98:	00004097          	auipc	ra,0x4
    80001a9c:	744080e7          	jalr	1860(ra) # 800061dc <__putc>
    uint64* a2=new uint64;
    80001aa0:	00800513          	li	a0,8
    80001aa4:	00000097          	auipc	ra,0x0
    80001aa8:	2e8080e7          	jalr	744(ra) # 80001d8c <_Znwm>
    *a2=5;
    80001aac:	00500793          	li	a5,5
    80001ab0:	00f53023          	sd	a5,0(a0)
    __putc(*a2+'0');
    80001ab4:	03500513          	li	a0,53
    80001ab8:	00004097          	auipc	ra,0x4
    80001abc:	724080e7          	jalr	1828(ra) # 800061dc <__putc>
    __putc('\n');
    80001ac0:	00a00513          	li	a0,10
    80001ac4:	00004097          	auipc	ra,0x4
    80001ac8:	718080e7          	jalr	1816(ra) # 800061dc <__putc>
    uint64* a3=new uint64;
    80001acc:	00800513          	li	a0,8
    80001ad0:	00000097          	auipc	ra,0x0
    80001ad4:	2bc080e7          	jalr	700(ra) # 80001d8c <_Znwm>
    80001ad8:	00050913          	mv	s2,a0
    *a3=6;
    80001adc:	00600793          	li	a5,6
    80001ae0:	00f53023          	sd	a5,0(a0)
    __putc(*a3+'0');
    80001ae4:	03600513          	li	a0,54
    80001ae8:	00004097          	auipc	ra,0x4
    80001aec:	6f4080e7          	jalr	1780(ra) # 800061dc <__putc>
    __putc('\n');
    80001af0:	00a00513          	li	a0,10
    80001af4:	00004097          	auipc	ra,0x4
    80001af8:	6e8080e7          	jalr	1768(ra) # 800061dc <__putc>
    uint64* a4=new uint64;
    80001afc:	00800513          	li	a0,8
    80001b00:	00000097          	auipc	ra,0x0
    80001b04:	28c080e7          	jalr	652(ra) # 80001d8c <_Znwm>
    80001b08:	00050493          	mv	s1,a0
    *a4=7;
    80001b0c:	00700793          	li	a5,7
    80001b10:	00f53023          	sd	a5,0(a0)
    __putc(*a4+'0');
    80001b14:	03700513          	li	a0,55
    80001b18:	00004097          	auipc	ra,0x4
    80001b1c:	6c4080e7          	jalr	1732(ra) # 800061dc <__putc>
    __putc('\n');
    80001b20:	00a00513          	li	a0,10
    80001b24:	00004097          	auipc	ra,0x4
    80001b28:	6b8080e7          	jalr	1720(ra) # 800061dc <__putc>
    uint64* a5=new uint64;
    80001b2c:	00800513          	li	a0,8
    80001b30:	00000097          	auipc	ra,0x0
    80001b34:	25c080e7          	jalr	604(ra) # 80001d8c <_Znwm>
    *a5=8;
    80001b38:	00800793          	li	a5,8
    80001b3c:	00f53023          	sd	a5,0(a0)
    __putc(*a5+'0');
    80001b40:	03800513          	li	a0,56
    80001b44:	00004097          	auipc	ra,0x4
    80001b48:	698080e7          	jalr	1688(ra) # 800061dc <__putc>
    __putc('\n');
    80001b4c:	00a00513          	li	a0,10
    80001b50:	00004097          	auipc	ra,0x4
    80001b54:	68c080e7          	jalr	1676(ra) # 800061dc <__putc>
    delete a1;
    80001b58:	00098863          	beqz	s3,80001b68 <_Z13AllocatorTestv+0x114>
    80001b5c:	00098513          	mv	a0,s3
    80001b60:	00000097          	auipc	ra,0x0
    80001b64:	254080e7          	jalr	596(ra) # 80001db4 <_ZdlPv>
    delete a3;
    80001b68:	00090863          	beqz	s2,80001b78 <_Z13AllocatorTestv+0x124>
    80001b6c:	00090513          	mv	a0,s2
    80001b70:	00000097          	auipc	ra,0x0
    80001b74:	244080e7          	jalr	580(ra) # 80001db4 <_ZdlPv>
    delete a4;
    80001b78:	00048863          	beqz	s1,80001b88 <_Z13AllocatorTestv+0x134>
    80001b7c:	00048513          	mv	a0,s1
    80001b80:	00000097          	auipc	ra,0x0
    80001b84:	234080e7          	jalr	564(ra) # 80001db4 <_ZdlPv>
    uint64* a6=new uint64;
    80001b88:	00800513          	li	a0,8
    80001b8c:	00000097          	auipc	ra,0x0
    80001b90:	200080e7          	jalr	512(ra) # 80001d8c <_Znwm>
    *a6=9;
    80001b94:	00900793          	li	a5,9
    80001b98:	00f53023          	sd	a5,0(a0)
    __putc(*a6+'0');
    80001b9c:	03900513          	li	a0,57
    80001ba0:	00004097          	auipc	ra,0x4
    80001ba4:	63c080e7          	jalr	1596(ra) # 800061dc <__putc>
    __putc('\n');
    80001ba8:	00a00513          	li	a0,10
    80001bac:	00004097          	auipc	ra,0x4
    80001bb0:	630080e7          	jalr	1584(ra) # 800061dc <__putc>
}
    80001bb4:	02813083          	ld	ra,40(sp)
    80001bb8:	02013403          	ld	s0,32(sp)
    80001bbc:	01813483          	ld	s1,24(sp)
    80001bc0:	01013903          	ld	s2,16(sp)
    80001bc4:	00813983          	ld	s3,8(sp)
    80001bc8:	03010113          	addi	sp,sp,48
    80001bcc:	00008067          	ret

0000000080001bd0 <_Z11userWrapperPv>:
{
    80001bd0:	ff010113          	addi	sp,sp,-16
    80001bd4:	00113423          	sd	ra,8(sp)
    80001bd8:	00813023          	sd	s0,0(sp)
    80001bdc:	01010413          	addi	s0,sp,16
    printString("user main start:\n");
    80001be0:	00005517          	auipc	a0,0x5
    80001be4:	4f850513          	addi	a0,a0,1272 # 800070d8 <CONSOLE_STATUS+0xc8>
    80001be8:	00001097          	auipc	ra,0x1
    80001bec:	ca4080e7          	jalr	-860(ra) # 8000288c <_Z11printStringPKc>
    userMain();
    80001bf0:	00002097          	auipc	ra,0x2
    80001bf4:	f40080e7          	jalr	-192(ra) # 80003b30 <_Z8userMainv>
    printString("user main end:\n");
    80001bf8:	00005517          	auipc	a0,0x5
    80001bfc:	4f850513          	addi	a0,a0,1272 # 800070f0 <CONSOLE_STATUS+0xe0>
    80001c00:	00001097          	auipc	ra,0x1
    80001c04:	c8c080e7          	jalr	-884(ra) # 8000288c <_Z11printStringPKc>
}
    80001c08:	00813083          	ld	ra,8(sp)
    80001c0c:	00013403          	ld	s0,0(sp)
    80001c10:	01010113          	addi	sp,sp,16
    80001c14:	00008067          	ret

0000000080001c18 <main>:





void main() {
    80001c18:	fc010113          	addi	sp,sp,-64
    80001c1c:	02113c23          	sd	ra,56(sp)
    80001c20:	02813823          	sd	s0,48(sp)
    80001c24:	02913423          	sd	s1,40(sp)
    80001c28:	03213023          	sd	s2,32(sp)
    80001c2c:	04010413          	addi	s0,sp,64
    Riscv::set_stvec((uint64)Riscv::SupervisorTrap);
    80001c30:	00007797          	auipc	a5,0x7
    80001c34:	a707b783          	ld	a5,-1424(a5) # 800086a0 <_GLOBAL_OFFSET_TABLE_+0x10>
    static void SupervisorTrapHandler();
};


inline void Riscv::set_stvec(uint64 stvec) {
    __asm__ volatile ("csrw stvec, %[x]" :: [x] "r" (stvec));
    80001c38:	10579073          	csrw	stvec,a5
    //AllocatorTest();



     thread_t coroutines[4];
     thread_create(&coroutines[0],nullptr,nullptr);
    80001c3c:	00000613          	li	a2,0
    80001c40:	00000593          	li	a1,0
    80001c44:	fc040513          	addi	a0,s0,-64
    80001c48:	fffff097          	auipc	ra,0xfffff
    80001c4c:	5b8080e7          	jalr	1464(ra) # 80001200 <_Z13thread_createPP3TCBPFvPvES2_>
     thread_create(&coroutines[1],WorkerAWrapper,nullptr);
    80001c50:	00000613          	li	a2,0
    80001c54:	00000597          	auipc	a1,0x0
    80001c58:	d8858593          	addi	a1,a1,-632 # 800019dc <_Z14WorkerAWrapperPv>
    80001c5c:	fc840513          	addi	a0,s0,-56
    80001c60:	fffff097          	auipc	ra,0xfffff
    80001c64:	5a0080e7          	jalr	1440(ra) # 80001200 <_Z13thread_createPP3TCBPFvPvES2_>
     thread_create(&coroutines[2],WorkerBWrapper,nullptr);
    80001c68:	00000613          	li	a2,0
    80001c6c:	00000597          	auipc	a1,0x0
    80001c70:	d9858593          	addi	a1,a1,-616 # 80001a04 <_Z14WorkerBWrapperPv>
    80001c74:	fd040513          	addi	a0,s0,-48
    80001c78:	fffff097          	auipc	ra,0xfffff
    80001c7c:	588080e7          	jalr	1416(ra) # 80001200 <_Z13thread_createPP3TCBPFvPvES2_>
     thread_create(&coroutines[3],WorkerCWrapper,nullptr);
    80001c80:	00000613          	li	a2,0
    80001c84:	00000597          	auipc	a1,0x0
    80001c88:	da858593          	addi	a1,a1,-600 # 80001a2c <_Z14WorkerCWrapperPv>
    80001c8c:	fd840513          	addi	a0,s0,-40
    80001c90:	fffff097          	auipc	ra,0xfffff
    80001c94:	570080e7          	jalr	1392(ra) # 80001200 <_Z13thread_createPP3TCBPFvPvES2_>
public:

    static void put(TCB* x);
    static TCB* get();

    static int getSize() { return queue.size; }
    80001c98:	00007797          	auipc	a5,0x7
    80001c9c:	a107b783          	ld	a5,-1520(a5) # 800086a8 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001ca0:	0107a783          	lw	a5,16(a5)


     while (Scheduler::getSize()>0 ) {
    80001ca4:	00f05863          	blez	a5,80001cb4 <main+0x9c>
         thread_dispatch();
    80001ca8:	fffff097          	auipc	ra,0xfffff
    80001cac:	5bc080e7          	jalr	1468(ra) # 80001264 <_Z15thread_dispatchv>
    80001cb0:	fe9ff06f          	j	80001c98 <main+0x80>
     }

     for (auto coroutine: coroutines) { delete coroutine; }
    80001cb4:	fc040493          	addi	s1,s0,-64
    80001cb8:	0240006f          	j	80001cdc <main+0xc4>

    using Body=void(*)(void*);

    ~TCB()
    {
        delete stack;
    80001cbc:	00000097          	auipc	ra,0x0
    80001cc0:	0f8080e7          	jalr	248(ra) # 80001db4 <_ZdlPv>
        return MemoryAllocator::Instance()->mem_free(ptr);
    80001cc4:	00001097          	auipc	ra,0x1
    80001cc8:	8d4080e7          	jalr	-1836(ra) # 80002598 <_ZN15MemoryAllocator8InstanceEv>
    80001ccc:	00090593          	mv	a1,s2
    80001cd0:	00001097          	auipc	ra,0x1
    80001cd4:	a9c080e7          	jalr	-1380(ra) # 8000276c <_ZN15MemoryAllocator8mem_freeEPv>
    80001cd8:	00848493          	addi	s1,s1,8
    80001cdc:	fe040793          	addi	a5,s0,-32
    80001ce0:	00f48c63          	beq	s1,a5,80001cf8 <main+0xe0>
    80001ce4:	0004b903          	ld	s2,0(s1)
    80001ce8:	fe0908e3          	beqz	s2,80001cd8 <main+0xc0>
        delete stack;
    80001cec:	00893503          	ld	a0,8(s2)
    80001cf0:	fc0516e3          	bnez	a0,80001cbc <main+0xa4>
    80001cf4:	fd1ff06f          	j	80001cc4 <main+0xac>

     AllocatorTest();
    80001cf8:	00000097          	auipc	ra,0x0
    80001cfc:	d5c080e7          	jalr	-676(ra) # 80001a54 <_Z13AllocatorTestv>
     printString("Finished\n");
    80001d00:	00005517          	auipc	a0,0x5
    80001d04:	40050513          	addi	a0,a0,1024 # 80007100 <CONSOLE_STATUS+0xf0>
    80001d08:	00001097          	auipc	ra,0x1
    80001d0c:	b84080e7          	jalr	-1148(ra) # 8000288c <_Z11printStringPKc>
    // printString("\n");
    // size_t pom2= mem_get_largest_free_block();
    // printString("Largest free block: ");
    // printInteger(pom2);
    // printString("\n");
}
    80001d10:	03813083          	ld	ra,56(sp)
    80001d14:	03013403          	ld	s0,48(sp)
    80001d18:	02813483          	ld	s1,40(sp)
    80001d1c:	02013903          	ld	s2,32(sp)
    80001d20:	04010113          	addi	sp,sp,64
    80001d24:	00008067          	ret

0000000080001d28 <_ZN6Thread7wrapperEPv>:
        ret = thread_create(&myHandle, wrapper, (void*)this);
    }
    return ret;
}
void Thread::wrapper(void* ptr)
{
    80001d28:	ff010113          	addi	sp,sp,-16
    80001d2c:	00113423          	sd	ra,8(sp)
    80001d30:	00813023          	sd	s0,0(sp)
    80001d34:	01010413          	addi	s0,sp,16
    ((Thread*)ptr)->run();
    80001d38:	00053783          	ld	a5,0(a0)
    80001d3c:	0107b783          	ld	a5,16(a5)
    80001d40:	000780e7          	jalr	a5
}
    80001d44:	00813083          	ld	ra,8(sp)
    80001d48:	00013403          	ld	s0,0(sp)
    80001d4c:	01010113          	addi	sp,sp,16
    80001d50:	00008067          	ret

0000000080001d54 <_ZN9SemaphoreD1Ev>:
Semaphore::Semaphore(unsigned init) {

    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    80001d54:	ff010113          	addi	sp,sp,-16
    80001d58:	00113423          	sd	ra,8(sp)
    80001d5c:	00813023          	sd	s0,0(sp)
    80001d60:	01010413          	addi	s0,sp,16
    80001d64:	00007797          	auipc	a5,0x7
    80001d68:	87c78793          	addi	a5,a5,-1924 # 800085e0 <_ZTV9Semaphore+0x10>
    80001d6c:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    80001d70:	00853503          	ld	a0,8(a0)
    80001d74:	fffff097          	auipc	ra,0xfffff
    80001d78:	548080e7          	jalr	1352(ra) # 800012bc <_Z9sem_closeP3SEM>
}
    80001d7c:	00813083          	ld	ra,8(sp)
    80001d80:	00013403          	ld	s0,0(sp)
    80001d84:	01010113          	addi	sp,sp,16
    80001d88:	00008067          	ret

0000000080001d8c <_Znwm>:
{
    80001d8c:	ff010113          	addi	sp,sp,-16
    80001d90:	00113423          	sd	ra,8(sp)
    80001d94:	00813023          	sd	s0,0(sp)
    80001d98:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80001d9c:	fffff097          	auipc	ra,0xfffff
    80001da0:	398080e7          	jalr	920(ra) # 80001134 <_Z9mem_allocm>
}
    80001da4:	00813083          	ld	ra,8(sp)
    80001da8:	00013403          	ld	s0,0(sp)
    80001dac:	01010113          	addi	sp,sp,16
    80001db0:	00008067          	ret

0000000080001db4 <_ZdlPv>:
{
    80001db4:	ff010113          	addi	sp,sp,-16
    80001db8:	00113423          	sd	ra,8(sp)
    80001dbc:	00813023          	sd	s0,0(sp)
    80001dc0:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    80001dc4:	fffff097          	auipc	ra,0xfffff
    80001dc8:	3b0080e7          	jalr	944(ra) # 80001174 <_Z8mem_freePv>
}
    80001dcc:	00813083          	ld	ra,8(sp)
    80001dd0:	00013403          	ld	s0,0(sp)
    80001dd4:	01010113          	addi	sp,sp,16
    80001dd8:	00008067          	ret

0000000080001ddc <_ZN6ThreadD1Ev>:
Thread::~Thread() {
    80001ddc:	fe010113          	addi	sp,sp,-32
    80001de0:	00113c23          	sd	ra,24(sp)
    80001de4:	00813823          	sd	s0,16(sp)
    80001de8:	00913423          	sd	s1,8(sp)
    80001dec:	02010413          	addi	s0,sp,32
    80001df0:	00006797          	auipc	a5,0x6
    80001df4:	7c878793          	addi	a5,a5,1992 # 800085b8 <_ZTV6Thread+0x10>
    80001df8:	00f53023          	sd	a5,0(a0)
    delete myHandle;
    80001dfc:	00853483          	ld	s1,8(a0)
    80001e00:	02048463          	beqz	s1,80001e28 <_ZN6ThreadD1Ev+0x4c>
    }
    80001e04:	0084b503          	ld	a0,8(s1)
    80001e08:	00050663          	beqz	a0,80001e14 <_ZN6ThreadD1Ev+0x38>
    80001e0c:	00000097          	auipc	ra,0x0
    80001e10:	fa8080e7          	jalr	-88(ra) # 80001db4 <_ZdlPv>
    }
    80001e14:	00000097          	auipc	ra,0x0
    80001e18:	784080e7          	jalr	1924(ra) # 80002598 <_ZN15MemoryAllocator8InstanceEv>
    80001e1c:	00048593          	mv	a1,s1
    80001e20:	00001097          	auipc	ra,0x1
    80001e24:	94c080e7          	jalr	-1716(ra) # 8000276c <_ZN15MemoryAllocator8mem_freeEPv>
}
    80001e28:	01813083          	ld	ra,24(sp)
    80001e2c:	01013403          	ld	s0,16(sp)
    80001e30:	00813483          	ld	s1,8(sp)
    80001e34:	02010113          	addi	sp,sp,32
    80001e38:	00008067          	ret

0000000080001e3c <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80001e3c:	fe010113          	addi	sp,sp,-32
    80001e40:	00113c23          	sd	ra,24(sp)
    80001e44:	00813823          	sd	s0,16(sp)
    80001e48:	00913423          	sd	s1,8(sp)
    80001e4c:	02010413          	addi	s0,sp,32
    80001e50:	00050493          	mv	s1,a0
}
    80001e54:	00000097          	auipc	ra,0x0
    80001e58:	f88080e7          	jalr	-120(ra) # 80001ddc <_ZN6ThreadD1Ev>
    80001e5c:	00048513          	mv	a0,s1
    80001e60:	00000097          	auipc	ra,0x0
    80001e64:	f54080e7          	jalr	-172(ra) # 80001db4 <_ZdlPv>
    80001e68:	01813083          	ld	ra,24(sp)
    80001e6c:	01013403          	ld	s0,16(sp)
    80001e70:	00813483          	ld	s1,8(sp)
    80001e74:	02010113          	addi	sp,sp,32
    80001e78:	00008067          	ret

0000000080001e7c <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80001e7c:	fe010113          	addi	sp,sp,-32
    80001e80:	00113c23          	sd	ra,24(sp)
    80001e84:	00813823          	sd	s0,16(sp)
    80001e88:	00913423          	sd	s1,8(sp)
    80001e8c:	02010413          	addi	s0,sp,32
    80001e90:	00050493          	mv	s1,a0
}
    80001e94:	00000097          	auipc	ra,0x0
    80001e98:	ec0080e7          	jalr	-320(ra) # 80001d54 <_ZN9SemaphoreD1Ev>
    80001e9c:	00048513          	mv	a0,s1
    80001ea0:	00000097          	auipc	ra,0x0
    80001ea4:	f14080e7          	jalr	-236(ra) # 80001db4 <_ZdlPv>
    80001ea8:	01813083          	ld	ra,24(sp)
    80001eac:	01013403          	ld	s0,16(sp)
    80001eb0:	00813483          	ld	s1,8(sp)
    80001eb4:	02010113          	addi	sp,sp,32
    80001eb8:	00008067          	ret

0000000080001ebc <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) {
    80001ebc:	ff010113          	addi	sp,sp,-16
    80001ec0:	00813423          	sd	s0,8(sp)
    80001ec4:	01010413          	addi	s0,sp,16
    80001ec8:	00006797          	auipc	a5,0x6
    80001ecc:	6f078793          	addi	a5,a5,1776 # 800085b8 <_ZTV6Thread+0x10>
    80001ed0:	00f53023          	sd	a5,0(a0)
    myHandle= nullptr;
    80001ed4:	00053423          	sd	zero,8(a0)
    this->body=body;
    80001ed8:	00b53823          	sd	a1,16(a0)
    this->arg=arg;
    80001edc:	00c53c23          	sd	a2,24(a0)
}
    80001ee0:	00813403          	ld	s0,8(sp)
    80001ee4:	01010113          	addi	sp,sp,16
    80001ee8:	00008067          	ret

0000000080001eec <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80001eec:	ff010113          	addi	sp,sp,-16
    80001ef0:	00113423          	sd	ra,8(sp)
    80001ef4:	00813023          	sd	s0,0(sp)
    80001ef8:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80001efc:	fffff097          	auipc	ra,0xfffff
    80001f00:	368080e7          	jalr	872(ra) # 80001264 <_Z15thread_dispatchv>
}
    80001f04:	00813083          	ld	ra,8(sp)
    80001f08:	00013403          	ld	s0,0(sp)
    80001f0c:	01010113          	addi	sp,sp,16
    80001f10:	00008067          	ret

0000000080001f14 <_ZN6ThreadC1Ev>:
Thread::Thread() {
    80001f14:	ff010113          	addi	sp,sp,-16
    80001f18:	00813423          	sd	s0,8(sp)
    80001f1c:	01010413          	addi	s0,sp,16
    80001f20:	00006797          	auipc	a5,0x6
    80001f24:	69878793          	addi	a5,a5,1688 # 800085b8 <_ZTV6Thread+0x10>
    80001f28:	00f53023          	sd	a5,0(a0)
    myHandle=nullptr;
    80001f2c:	00053423          	sd	zero,8(a0)
    body=nullptr;
    80001f30:	00053823          	sd	zero,16(a0)
    arg=nullptr;
    80001f34:	00053c23          	sd	zero,24(a0)
}
    80001f38:	00813403          	ld	s0,8(sp)
    80001f3c:	01010113          	addi	sp,sp,16
    80001f40:	00008067          	ret

0000000080001f44 <_ZN6Thread5startEv>:
int Thread::start() {
    80001f44:	ff010113          	addi	sp,sp,-16
    80001f48:	00113423          	sd	ra,8(sp)
    80001f4c:	00813023          	sd	s0,0(sp)
    80001f50:	01010413          	addi	s0,sp,16
    if(body!=nullptr)
    80001f54:	01053583          	ld	a1,16(a0)
    80001f58:	02058263          	beqz	a1,80001f7c <_ZN6Thread5startEv+0x38>
        ret = thread_create(&myHandle, body, arg);
    80001f5c:	01853603          	ld	a2,24(a0)
    80001f60:	00850513          	addi	a0,a0,8
    80001f64:	fffff097          	auipc	ra,0xfffff
    80001f68:	29c080e7          	jalr	668(ra) # 80001200 <_Z13thread_createPP3TCBPFvPvES2_>
}
    80001f6c:	00813083          	ld	ra,8(sp)
    80001f70:	00013403          	ld	s0,0(sp)
    80001f74:	01010113          	addi	sp,sp,16
    80001f78:	00008067          	ret
        ret = thread_create(&myHandle, wrapper, (void*)this);
    80001f7c:	00050613          	mv	a2,a0
    80001f80:	00000597          	auipc	a1,0x0
    80001f84:	da858593          	addi	a1,a1,-600 # 80001d28 <_ZN6Thread7wrapperEPv>
    80001f88:	00850513          	addi	a0,a0,8
    80001f8c:	fffff097          	auipc	ra,0xfffff
    80001f90:	274080e7          	jalr	628(ra) # 80001200 <_Z13thread_createPP3TCBPFvPvES2_>
    80001f94:	fd9ff06f          	j	80001f6c <_ZN6Thread5startEv+0x28>

0000000080001f98 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned init) {
    80001f98:	ff010113          	addi	sp,sp,-16
    80001f9c:	00113423          	sd	ra,8(sp)
    80001fa0:	00813023          	sd	s0,0(sp)
    80001fa4:	01010413          	addi	s0,sp,16
    80001fa8:	00006797          	auipc	a5,0x6
    80001fac:	63878793          	addi	a5,a5,1592 # 800085e0 <_ZTV9Semaphore+0x10>
    80001fb0:	00f53023          	sd	a5,0(a0)
    sem_open(&myHandle, init);
    80001fb4:	00850513          	addi	a0,a0,8
    80001fb8:	fffff097          	auipc	ra,0xfffff
    80001fbc:	2d0080e7          	jalr	720(ra) # 80001288 <_Z8sem_openPP3SEMj>
}
    80001fc0:	00813083          	ld	ra,8(sp)
    80001fc4:	00013403          	ld	s0,0(sp)
    80001fc8:	01010113          	addi	sp,sp,16
    80001fcc:	00008067          	ret

0000000080001fd0 <_ZN9Semaphore4waitEv>:
int Semaphore::wait() {
    80001fd0:	ff010113          	addi	sp,sp,-16
    80001fd4:	00113423          	sd	ra,8(sp)
    80001fd8:	00813023          	sd	s0,0(sp)
    80001fdc:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80001fe0:	00853503          	ld	a0,8(a0)
    80001fe4:	fffff097          	auipc	ra,0xfffff
    80001fe8:	308080e7          	jalr	776(ra) # 800012ec <_Z8sem_waitP3SEM>
}
    80001fec:	00813083          	ld	ra,8(sp)
    80001ff0:	00013403          	ld	s0,0(sp)
    80001ff4:	01010113          	addi	sp,sp,16
    80001ff8:	00008067          	ret

0000000080001ffc <_ZN9Semaphore6signalEv>:

int Semaphore::signal() {
    80001ffc:	ff010113          	addi	sp,sp,-16
    80002000:	00113423          	sd	ra,8(sp)
    80002004:	00813023          	sd	s0,0(sp)
    80002008:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    8000200c:	00853503          	ld	a0,8(a0)
    80002010:	fffff097          	auipc	ra,0xfffff
    80002014:	30c080e7          	jalr	780(ra) # 8000131c <_Z10sem_signalP3SEM>
    80002018:	00813083          	ld	ra,8(sp)
    8000201c:	00013403          	ld	s0,0(sp)
    80002020:	01010113          	addi	sp,sp,16
    80002024:	00008067          	ret

0000000080002028 <_ZN6Thread3runEv>:
    int start ();
    static void dispatch ();
    //static int sleep (time_t);
protected:
    Thread ();
    virtual void run () {}
    80002028:	ff010113          	addi	sp,sp,-16
    8000202c:	00813423          	sd	s0,8(sp)
    80002030:	01010413          	addi	s0,sp,16
    80002034:	00813403          	ld	s0,8(sp)
    80002038:	01010113          	addi	sp,sp,16
    8000203c:	00008067          	ret

0000000080002040 <_ZN3TCB12createThreadEPFvPvES0_Pm>:

extern "C" void context_switch(TCB::Context* oldContext, TCB::Context* newContext);

TCB* TCB::running=nullptr;

TCB* TCB::createThread(Body body, void *arg, uint64 *stack) {
    80002040:	fd010113          	addi	sp,sp,-48
    80002044:	02113423          	sd	ra,40(sp)
    80002048:	02813023          	sd	s0,32(sp)
    8000204c:	00913c23          	sd	s1,24(sp)
    80002050:	01213823          	sd	s2,16(sp)
    80002054:	01313423          	sd	s3,8(sp)
    80002058:	01413023          	sd	s4,0(sp)
    8000205c:	03010413          	addi	s0,sp,48
    80002060:	00050993          	mv	s3,a0
    80002064:	00058a13          	mv	s4,a1
    80002068:	00060913          	mv	s2,a2
}
    8000206c:	00000097          	auipc	ra,0x0
    80002070:	52c080e7          	jalr	1324(ra) # 80002598 <_ZN15MemoryAllocator8InstanceEv>
    80002074:	03800593          	li	a1,56
    80002078:	00000097          	auipc	ra,0x0
    8000207c:	57c080e7          	jalr	1404(ra) # 800025f4 <_ZN15MemoryAllocator9mem_allocEm>
    80002080:	00050493          	mv	s1,a0
          context({
              body != nullptr ? (uint64)&TCBWrapper : 0,
              body != nullptr ? (uint64)((char*)stackMem + DEFAULT_STACK_SIZE) : 0
          }),
          body(body)
    {
    80002084:	00050023          	sb	zero,0(a0)
    80002088:	01253423          	sd	s2,8(a0)
    8000208c:	01453823          	sd	s4,16(a0)
              body != nullptr ? (uint64)((char*)stackMem + DEFAULT_STACK_SIZE) : 0
    80002090:	04098263          	beqz	s3,800020d4 <_ZN3TCB12createThreadEPFvPvES0_Pm+0x94>
    80002094:	00000797          	auipc	a5,0x0
    80002098:	15c78793          	addi	a5,a5,348 # 800021f0 <_ZN3TCB10TCBWrapperEv>
    {
    8000209c:	02f4b023          	sd	a5,32(s1)
          }),
    800020a0:	02098e63          	beqz	s3,800020dc <_ZN3TCB12createThreadEPFvPvES0_Pm+0x9c>
    800020a4:	00001637          	lui	a2,0x1
    800020a8:	00c90933          	add	s2,s2,a2
    {
    800020ac:	0324b423          	sd	s2,40(s1)
    800020b0:	0334b823          	sd	s3,48(s1)
        this->blocked = false;
        if (running == nullptr) {
    800020b4:	00048c23          	sb	zero,24(s1)
            running = this;
    800020b8:	00006797          	auipc	a5,0x6
    800020bc:	6787b783          	ld	a5,1656(a5) # 80008730 <_ZN3TCB7runningE>
    800020c0:	02078263          	beqz	a5,800020e4 <_ZN3TCB12createThreadEPFvPvES0_Pm+0xa4>
        } else {
            Scheduler::put(this);
        }
    800020c4:	00048513          	mv	a0,s1
    800020c8:	00000097          	auipc	ra,0x0
    800020cc:	868080e7          	jalr	-1944(ra) # 80001930 <_ZN9Scheduler3putEP3TCB>
    800020d0:	01c0006f          	j	800020ec <_ZN3TCB12createThreadEPFvPvES0_Pm+0xac>
              body != nullptr ? (uint64)((char*)stackMem + DEFAULT_STACK_SIZE) : 0
    800020d4:	00000793          	li	a5,0
    800020d8:	fc5ff06f          	j	8000209c <_ZN3TCB12createThreadEPFvPvES0_Pm+0x5c>
          }),
    800020dc:	00000913          	li	s2,0
    800020e0:	fcdff06f          	j	800020ac <_ZN3TCB12createThreadEPFvPvES0_Pm+0x6c>
        } else {
    800020e4:	00006797          	auipc	a5,0x6
    800020e8:	6497b623          	sd	s1,1612(a5) # 80008730 <_ZN3TCB7runningE>
    return new TCB(body, arg, stack);
}
    800020ec:	00048513          	mv	a0,s1
    800020f0:	02813083          	ld	ra,40(sp)
    800020f4:	02013403          	ld	s0,32(sp)
    800020f8:	01813483          	ld	s1,24(sp)
    800020fc:	01013903          	ld	s2,16(sp)
    80002100:	00813983          	ld	s3,8(sp)
    80002104:	00013a03          	ld	s4,0(sp)
    80002108:	03010113          	addi	sp,sp,48
    8000210c:	00008067          	ret
    80002110:	00050913          	mv	s2,a0
    }
    80002114:	00000097          	auipc	ra,0x0
    80002118:	484080e7          	jalr	1156(ra) # 80002598 <_ZN15MemoryAllocator8InstanceEv>
    8000211c:	00048593          	mv	a1,s1
    80002120:	00000097          	auipc	ra,0x0
    80002124:	64c080e7          	jalr	1612(ra) # 8000276c <_ZN15MemoryAllocator8mem_freeEPv>
    80002128:	00090513          	mv	a0,s2
    8000212c:	00007097          	auipc	ra,0x7
    80002130:	6fc080e7          	jalr	1788(ra) # 80009828 <_Unwind_Resume>

0000000080002134 <_ZN3TCB8dispatchEv>:

void TCB::dispatch() {
    80002134:	fe010113          	addi	sp,sp,-32
    80002138:	00113c23          	sd	ra,24(sp)
    8000213c:	00813823          	sd	s0,16(sp)
    80002140:	00913423          	sd	s1,8(sp)
    80002144:	02010413          	addi	s0,sp,32
    //printString("TCB::dispatch()\n");
    TCB *old=running;
    80002148:	00006497          	auipc	s1,0x6
    8000214c:	5e84b483          	ld	s1,1512(s1) # 80008730 <_ZN3TCB7runningE>

    80002150:	0004c783          	lbu	a5,0(s1)
    if (!old->isFinished() && !old->isBlocked()) {
    80002154:	00079663          	bnez	a5,80002160 <_ZN3TCB8dispatchEv+0x2c>

    80002158:	0184c783          	lbu	a5,24(s1)
    8000215c:	02078c63          	beqz	a5,80002194 <_ZN3TCB8dispatchEv+0x60>
        Scheduler::put(old);
    }
    running=Scheduler::get();
    80002160:	fffff097          	auipc	ra,0xfffff
    80002164:	734080e7          	jalr	1844(ra) # 80001894 <_ZN9Scheduler3getEv>
    80002168:	00006797          	auipc	a5,0x6
    8000216c:	5ca7b423          	sd	a0,1480(a5) # 80008730 <_ZN3TCB7runningE>


    //Riscv::restorePrivilege();
    context_switch(&old->context, &running->context);
    80002170:	02050593          	addi	a1,a0,32
    80002174:	02048513          	addi	a0,s1,32
    80002178:	fffff097          	auipc	ra,0xfffff
    8000217c:	fa8080e7          	jalr	-88(ra) # 80001120 <context_switch>
}
    80002180:	01813083          	ld	ra,24(sp)
    80002184:	01013403          	ld	s0,16(sp)
    80002188:	00813483          	ld	s1,8(sp)
    8000218c:	02010113          	addi	sp,sp,32
    80002190:	00008067          	ret
        Scheduler::put(old);
    80002194:	00048513          	mv	a0,s1
    80002198:	fffff097          	auipc	ra,0xfffff
    8000219c:	798080e7          	jalr	1944(ra) # 80001930 <_ZN9Scheduler3putEP3TCB>
    800021a0:	fc1ff06f          	j	80002160 <_ZN3TCB8dispatchEv+0x2c>

00000000800021a4 <_ZN3TCB4exitEv>:



int TCB::exit() {
    if (running->isFinished()) {
    800021a4:	00006797          	auipc	a5,0x6
    800021a8:	58c7b783          	ld	a5,1420(a5) # 80008730 <_ZN3TCB7runningE>

    800021ac:	0007c703          	lbu	a4,0(a5)
    800021b0:	02071c63          	bnez	a4,800021e8 <_ZN3TCB4exitEv+0x44>
int TCB::exit() {
    800021b4:	ff010113          	addi	sp,sp,-16
    800021b8:	00113423          	sd	ra,8(sp)
    800021bc:	00813023          	sd	s0,0(sp)
    800021c0:	01010413          	addi	s0,sp,16
        return -1;
    }
    running->finished=true;
    800021c4:	00100713          	li	a4,1
    800021c8:	00e78023          	sb	a4,0(a5)
    thread_dispatch();
    800021cc:	fffff097          	auipc	ra,0xfffff
    800021d0:	098080e7          	jalr	152(ra) # 80001264 <_Z15thread_dispatchv>
    return 0;
    800021d4:	00000513          	li	a0,0
}
    800021d8:	00813083          	ld	ra,8(sp)
    800021dc:	00013403          	ld	s0,0(sp)
    800021e0:	01010113          	addi	sp,sp,16
    800021e4:	00008067          	ret
        return -1;
    800021e8:	fff00513          	li	a0,-1
}
    800021ec:	00008067          	ret

00000000800021f0 <_ZN3TCB10TCBWrapperEv>:

void TCB::TCBWrapper() {
    800021f0:	ff010113          	addi	sp,sp,-16
    800021f4:	00113423          	sd	ra,8(sp)
    800021f8:	00813023          	sd	s0,0(sp)
    800021fc:	01010413          	addi	s0,sp,16
    //printString("Entered wrapper\n");
    //Riscv::restorePrivilege();
    Riscv::popSppSpie();
    80002200:	00000097          	auipc	ra,0x0
    80002204:	034080e7          	jalr	52(ra) # 80002234 <_ZN5Riscv10popSppSpieEv>
    running->body(running->arg);
    80002208:	00006797          	auipc	a5,0x6
    8000220c:	5287b783          	ld	a5,1320(a5) # 80008730 <_ZN3TCB7runningE>
    80002210:	0307b703          	ld	a4,48(a5)
    80002214:	0107b503          	ld	a0,16(a5)
    80002218:	000700e7          	jalr	a4
    exit();
    8000221c:	00000097          	auipc	ra,0x0
    80002220:	f88080e7          	jalr	-120(ra) # 800021a4 <_ZN3TCB4exitEv>
    80002224:	00813083          	ld	ra,8(sp)
    80002228:	00013403          	ld	s0,0(sp)
    8000222c:	01010113          	addi	sp,sp,16
    80002230:	00008067          	ret

0000000080002234 <_ZN5Riscv10popSppSpieEv>:
#include "../h/syscall_c.hpp"
#include "../h/MemoryAllocator.hpp"
#include  "../h/print.hpp"
using Body=void(*)(void*);

void Riscv::popSppSpie() {
    80002234:	ff010113          	addi	sp,sp,-16
    80002238:	00813423          	sd	s0,8(sp)
    8000223c:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    80002240:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80002244:	10200073          	sret
}
    80002248:	00813403          	ld	s0,8(sp)
    8000224c:	01010113          	addi	sp,sp,16
    80002250:	00008067          	ret

0000000080002254 <_ZN5Riscv21SupervisorTrapHandlerEv>:
//     else
//         mc_sstatus(SSTATUS_SPP);
// }


void Riscv::SupervisorTrapHandler() {
    80002254:	fa010113          	addi	sp,sp,-96
    80002258:	04113c23          	sd	ra,88(sp)
    8000225c:	04813823          	sd	s0,80(sp)
    80002260:	04913423          	sd	s1,72(sp)
    80002264:	05213023          	sd	s2,64(sp)
    80002268:	03313c23          	sd	s3,56(sp)
    8000226c:	03413823          	sd	s4,48(sp)
    80002270:	03513423          	sd	s5,40(sp)
    80002274:	06010413          	addi	s0,sp,96
    return sstatus;
}

inline uint64 Riscv::get_scause() {
    uint64 volatile scause;
    __asm__ volatile("csrr %[scause], scause":[scause]"=r"(scause));
    80002278:	142027f3          	csrr	a5,scause
    8000227c:	faf43423          	sd	a5,-88(s0)
    return scause;
    80002280:	fa843703          	ld	a4,-88(s0)
    __asm__ volatile ("csrr %[x],sepc" : [x] "=r" (sepc));
    80002284:	141024f3          	csrr	s1,sepc
    __asm__ volatile ("csrr %[x],sstatus" : [x] "=r" (sstatus));
    80002288:	10002973          	csrr	s2,sstatus
    uint64 sepc;
    uint64 sstatus;
    uint64 scause=get_scause();
    sepc=get_sepc();
    sstatus=get_sstatus();
    if (scause == 0x8000000000000001UL) {
    8000228c:	fff00793          	li	a5,-1
    80002290:	03f79793          	slli	a5,a5,0x3f
    80002294:	00178793          	addi	a5,a5,1
    80002298:	10f70c63          	beq	a4,a5,800023b0 <_ZN5Riscv21SupervisorTrapHandlerEv+0x15c>
        // interrupt: yes; cause code: supervisor software interrupt (CLINT; machine timer interrupt)
        mc_sip(SIP_SSIP);
    }
    else if (scause == 0x8000000000000009UL) {
    8000229c:	fff00793          	li	a5,-1
    800022a0:	03f79793          	slli	a5,a5,0x3f
    800022a4:	00978793          	addi	a5,a5,9
    800022a8:	10f70a63          	beq	a4,a5,800023bc <_ZN5Riscv21SupervisorTrapHandlerEv+0x168>
        // interrupt: yes; cause code: supervisor external interrupt (PLIC; could be keyboard)
        console_handler();
    }
    else {
        uint64 syscode;
    __asm__ volatile ("mv %[x], a0" : [x] "=r" (syscode));
    800022ac:	00050793          	mv	a5,a0

    if (syscode==MEM_ALLOC) {
    800022b0:	00100713          	li	a4,1
    800022b4:	10e78a63          	beq	a5,a4,800023c8 <_ZN5Riscv21SupervisorTrapHandlerEv+0x174>
        size_t size_in_blocks;
        __asm__ volatile ("mv %[x], a1" : [x] "=r" (size_in_blocks));
        void* ptr = MemoryAllocator::Instance()->mem_alloc(size_in_blocks * MEM_BLOCK_SIZE);
        __asm__ volatile ("mv a0,%[x]" :: [x] "r" (ptr));
    }
    else if (syscode==MEM_FREE) {
    800022b8:	00200713          	li	a4,2
    800022bc:	14e78c63          	beq	a5,a4,80002414 <_ZN5Riscv21SupervisorTrapHandlerEv+0x1c0>
        void* ptr;
        __asm__ volatile ("mv %[x], a1" : [x] "=r" (ptr));
        MemoryAllocator::Instance()->mem_free(ptr);
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (0));
    }
    else if (syscode==MEM_GET_FREE_SPACE) {
    800022c0:	00300713          	li	a4,3
    800022c4:	16e78a63          	beq	a5,a4,80002438 <_ZN5Riscv21SupervisorTrapHandlerEv+0x1e4>
        size_t freeMem = MemoryAllocator::Instance()->getFreeMemSize();
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (freeMem));
    }
    else if (syscode==MEM_GET_LARGEST_FREE_BLOCK) {
    800022c8:	00400713          	li	a4,4
    800022cc:	18e78063          	beq	a5,a4,8000244c <_ZN5Riscv21SupervisorTrapHandlerEv+0x1f8>
        size_t largestBlock = MemoryAllocator::Instance()->getLargestFreeBlock();
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (largestBlock));
    }
    else if (syscode==THREAD_CREATE) {
    800022d0:	01100713          	li	a4,17
    800022d4:	18e78863          	beq	a5,a4,80002464 <_ZN5Riscv21SupervisorTrapHandlerEv+0x210>
        else {
            ret=1;
        }
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (ret));
    }
    else if (syscode==THREAD_EXIT) {
    800022d8:	01200713          	li	a4,18
    800022dc:	1ce78c63          	beq	a5,a4,800024b4 <_ZN5Riscv21SupervisorTrapHandlerEv+0x260>
        int ret = TCB::exit();
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (ret));
    }
    else if (syscode==THREAD_DISPATCH) {
    800022e0:	01300713          	li	a4,19
    800022e4:	1ee78063          	beq	a5,a4,800024c4 <_ZN5Riscv21SupervisorTrapHandlerEv+0x270>
        TCB::dispatch();
    }
    else if (syscode==SEM_OPEN) {
    800022e8:	02100713          	li	a4,33
    800022ec:	1ee78263          	beq	a5,a4,800024d0 <_ZN5Riscv21SupervisorTrapHandlerEv+0x27c>
        else {
            ret=1;
        }
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (ret));
    }
    else if (syscode==SEM_CLOSE) {
    800022f0:	02200713          	li	a4,34
    800022f4:	20e78663          	beq	a5,a4,80002500 <_ZN5Riscv21SupervisorTrapHandlerEv+0x2ac>
        sem_t handle;
        __asm__ volatile ("mv %[x], a1" : [x] "=r" (handle));
        int ret=handle->close();
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (ret));
    }
    else if (syscode==SEM_WAIT) {
    800022f8:	02300713          	li	a4,35
    800022fc:	20e78c63          	beq	a5,a4,80002514 <_ZN5Riscv21SupervisorTrapHandlerEv+0x2c0>
        sem_t handle;
        __asm__ volatile ("mv %[x], a1" : [x] "=r" (handle));
        int ret=handle->wait();
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (ret));
    }
    else if (syscode==SEM_SIGNAL) {
    80002300:	02400713          	li	a4,36
    80002304:	22e78263          	beq	a5,a4,80002528 <_ZN5Riscv21SupervisorTrapHandlerEv+0x2d4>
    __asm__ volatile("csrr %[scause], scause":[scause]"=r"(scause));
    80002308:	142027f3          	csrr	a5,scause
    8000230c:	faf43c23          	sd	a5,-72(s0)
    return scause;
    80002310:	fb843a03          	ld	s4,-72(s0)
}
inline uint64 Riscv::get_stval() {
    uint64 volatile stval;
    __asm__ volatile("csrr %[stval], stval":[stval]"=r"(stval));
    80002314:	143027f3          	csrr	a5,stval
    80002318:	faf43823          	sd	a5,-80(s0)
    return stval;
    8000231c:	fb043983          	ld	s3,-80(s0)
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (ret));
    }
    else {
        uint64 scause= get_scause();
        uint64 stval= get_stval();
        printString("scause:");
    80002320:	00005517          	auipc	a0,0x5
    80002324:	df050513          	addi	a0,a0,-528 # 80007110 <CONSOLE_STATUS+0x100>
    80002328:	00000097          	auipc	ra,0x0
    8000232c:	564080e7          	jalr	1380(ra) # 8000288c <_Z11printStringPKc>
        printInteger(scause);
    80002330:	000a0513          	mv	a0,s4
    80002334:	00000097          	auipc	ra,0x0
    80002338:	59c080e7          	jalr	1436(ra) # 800028d0 <_Z12printIntegerm>
        printString("\n");
    8000233c:	00005517          	auipc	a0,0x5
    80002340:	dac50513          	addi	a0,a0,-596 # 800070e8 <CONSOLE_STATUS+0xd8>
    80002344:	00000097          	auipc	ra,0x0
    80002348:	548080e7          	jalr	1352(ra) # 8000288c <_Z11printStringPKc>

        printString("stval:");
    8000234c:	00005517          	auipc	a0,0x5
    80002350:	dcc50513          	addi	a0,a0,-564 # 80007118 <CONSOLE_STATUS+0x108>
    80002354:	00000097          	auipc	ra,0x0
    80002358:	538080e7          	jalr	1336(ra) # 8000288c <_Z11printStringPKc>
        printInteger(stval);
    8000235c:	00098513          	mv	a0,s3
    80002360:	00000097          	auipc	ra,0x0
    80002364:	570080e7          	jalr	1392(ra) # 800028d0 <_Z12printIntegerm>
        printString("\n");
    80002368:	00005517          	auipc	a0,0x5
    8000236c:	d8050513          	addi	a0,a0,-640 # 800070e8 <CONSOLE_STATUS+0xd8>
    80002370:	00000097          	auipc	ra,0x0
    80002374:	51c080e7          	jalr	1308(ra) # 8000288c <_Z11printStringPKc>

        printString("sepc:");
    80002378:	00005517          	auipc	a0,0x5
    8000237c:	da850513          	addi	a0,a0,-600 # 80007120 <CONSOLE_STATUS+0x110>
    80002380:	00000097          	auipc	ra,0x0
    80002384:	50c080e7          	jalr	1292(ra) # 8000288c <_Z11printStringPKc>
        printInteger(sepc);
    80002388:	00048513          	mv	a0,s1
    8000238c:	00000097          	auipc	ra,0x0
    80002390:	544080e7          	jalr	1348(ra) # 800028d0 <_Z12printIntegerm>
        printString("\n");
    80002394:	00005517          	auipc	a0,0x5
    80002398:	d5450513          	addi	a0,a0,-684 # 800070e8 <CONSOLE_STATUS+0xd8>
    8000239c:	00000097          	auipc	ra,0x0
    800023a0:	4f0080e7          	jalr	1264(ra) # 8000288c <_Z11printStringPKc>
        __getc();
    800023a4:	00004097          	auipc	ra,0x4
    800023a8:	e74080e7          	jalr	-396(ra) # 80006218 <__getc>
    800023ac:	0380006f          	j	800023e4 <_ZN5Riscv21SupervisorTrapHandlerEv+0x190>
inline void Riscv::mc_sstatus(uint64 mask) {
    __asm__ volatile("csrc sstatus,%[mask]"::[mask]"r"(mask));
}
inline void Riscv::mc_sip(uint64 mask)
{
    __asm__ volatile("csrc sip, %[mask]":: [mask]"r"(mask));
    800023b0:	00200793          	li	a5,2
    800023b4:	1447b073          	csrc	sip,a5
}
    800023b8:	0380006f          	j	800023f0 <_ZN5Riscv21SupervisorTrapHandlerEv+0x19c>
        console_handler();
    800023bc:	00004097          	auipc	ra,0x4
    800023c0:	e94080e7          	jalr	-364(ra) # 80006250 <console_handler>
    800023c4:	02c0006f          	j	800023f0 <_ZN5Riscv21SupervisorTrapHandlerEv+0x19c>
        __asm__ volatile ("mv %[x], a1" : [x] "=r" (size_in_blocks));
    800023c8:	00058993          	mv	s3,a1
        void* ptr = MemoryAllocator::Instance()->mem_alloc(size_in_blocks * MEM_BLOCK_SIZE);
    800023cc:	00000097          	auipc	ra,0x0
    800023d0:	1cc080e7          	jalr	460(ra) # 80002598 <_ZN15MemoryAllocator8InstanceEv>
    800023d4:	00299593          	slli	a1,s3,0x2
    800023d8:	00000097          	auipc	ra,0x0
    800023dc:	21c080e7          	jalr	540(ra) # 800025f4 <_ZN15MemoryAllocator9mem_allocEm>
        __asm__ volatile ("mv a0,%[x]" :: [x] "r" (ptr));
    800023e0:	00050513          	mv	a0,a0
    }
    set_sepc(sepc+4);
    800023e4:	00448493          	addi	s1,s1,4
    __asm__ volatile ("csrw sepc, %[x]" :: [x] "r" (sepc));
    800023e8:	14149073          	csrw	sepc,s1
    __asm__ volatile ("csrw sstatus, %[x]" :: [x] "r" (sstatus));
    800023ec:	10091073          	csrw	sstatus,s2
    set_sstatus(sstatus);
    }


    800023f0:	05813083          	ld	ra,88(sp)
    800023f4:	05013403          	ld	s0,80(sp)
    800023f8:	04813483          	ld	s1,72(sp)
    800023fc:	04013903          	ld	s2,64(sp)
    80002400:	03813983          	ld	s3,56(sp)
    80002404:	03013a03          	ld	s4,48(sp)
    80002408:	02813a83          	ld	s5,40(sp)
    8000240c:	06010113          	addi	sp,sp,96
    80002410:	00008067          	ret
        __asm__ volatile ("mv %[x], a1" : [x] "=r" (ptr));
    80002414:	00058993          	mv	s3,a1
        MemoryAllocator::Instance()->mem_free(ptr);
    80002418:	00000097          	auipc	ra,0x0
    8000241c:	180080e7          	jalr	384(ra) # 80002598 <_ZN15MemoryAllocator8InstanceEv>
    80002420:	00098593          	mv	a1,s3
    80002424:	00000097          	auipc	ra,0x0
    80002428:	348080e7          	jalr	840(ra) # 8000276c <_ZN15MemoryAllocator8mem_freeEPv>
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (0));
    8000242c:	00000793          	li	a5,0
    80002430:	00078513          	mv	a0,a5
    80002434:	fb1ff06f          	j	800023e4 <_ZN5Riscv21SupervisorTrapHandlerEv+0x190>
        size_t freeMem = MemoryAllocator::Instance()->getFreeMemSize();
    80002438:	00000097          	auipc	ra,0x0
    8000243c:	160080e7          	jalr	352(ra) # 80002598 <_ZN15MemoryAllocator8InstanceEv>
    void* mem_alloc(size_t size);//size in bytes

    void mem_free(void* ptr);

    size_t getFreeMemSize() {
        return this->freeMemSize;
    80002440:	00853783          	ld	a5,8(a0)
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (freeMem));
    80002444:	00078513          	mv	a0,a5
    80002448:	f9dff06f          	j	800023e4 <_ZN5Riscv21SupervisorTrapHandlerEv+0x190>
        size_t largestBlock = MemoryAllocator::Instance()->getLargestFreeBlock();
    8000244c:	00000097          	auipc	ra,0x0
    80002450:	14c080e7          	jalr	332(ra) # 80002598 <_ZN15MemoryAllocator8InstanceEv>
    80002454:	00000097          	auipc	ra,0x0
    80002458:	3fc080e7          	jalr	1020(ra) # 80002850 <_ZN15MemoryAllocator19getLargestFreeBlockEv>
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (largestBlock));
    8000245c:	00050513          	mv	a0,a0
    80002460:	f85ff06f          	j	800023e4 <_ZN5Riscv21SupervisorTrapHandlerEv+0x190>
        __asm__ volatile ("mv %[x], a1" : [x] "=r" (handle));
    80002464:	00058993          	mv	s3,a1
        __asm__ volatile ("mv %[x], a2" : [x] "=r" (start_routine));
    80002468:	00060a13          	mv	s4,a2
        __asm__ volatile ("mv %[x], a3" : [x] "=r" (arg));
    8000246c:	00068a93          	mv	s5,a3
        uint64 *sp=(uint64*)MemoryAllocator::Instance()->mem_alloc(DEFAULT_STACK_SIZE);
    80002470:	00000097          	auipc	ra,0x0
    80002474:	128080e7          	jalr	296(ra) # 80002598 <_ZN15MemoryAllocator8InstanceEv>
    80002478:	000015b7          	lui	a1,0x1
    8000247c:	00000097          	auipc	ra,0x0
    80002480:	178080e7          	jalr	376(ra) # 800025f4 <_ZN15MemoryAllocator9mem_allocEm>
    80002484:	00050613          	mv	a2,a0
        *handle=TCB::createThread( start_routine, arg,sp);
    80002488:	000a8593          	mv	a1,s5
    8000248c:	000a0513          	mv	a0,s4
    80002490:	00000097          	auipc	ra,0x0
    80002494:	bb0080e7          	jalr	-1104(ra) # 80002040 <_ZN3TCB12createThreadEPFvPvES0_Pm>
    80002498:	00a9b023          	sd	a0,0(s3)
        if (*handle) {
    8000249c:	00050863          	beqz	a0,800024ac <_ZN5Riscv21SupervisorTrapHandlerEv+0x258>
            ret=0;
    800024a0:	00000793          	li	a5,0
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (ret));
    800024a4:	00078513          	mv	a0,a5
    800024a8:	f3dff06f          	j	800023e4 <_ZN5Riscv21SupervisorTrapHandlerEv+0x190>
            ret=1;
    800024ac:	00100793          	li	a5,1
    800024b0:	ff5ff06f          	j	800024a4 <_ZN5Riscv21SupervisorTrapHandlerEv+0x250>
        int ret = TCB::exit();
    800024b4:	00000097          	auipc	ra,0x0
    800024b8:	cf0080e7          	jalr	-784(ra) # 800021a4 <_ZN3TCB4exitEv>
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (ret));
    800024bc:	00050513          	mv	a0,a0
    800024c0:	f25ff06f          	j	800023e4 <_ZN5Riscv21SupervisorTrapHandlerEv+0x190>
        TCB::dispatch();
    800024c4:	00000097          	auipc	ra,0x0
    800024c8:	c70080e7          	jalr	-912(ra) # 80002134 <_ZN3TCB8dispatchEv>
    800024cc:	f19ff06f          	j	800023e4 <_ZN5Riscv21SupervisorTrapHandlerEv+0x190>
        __asm__ volatile ("mv %[x], a1" : [x] "=r" (handle));
    800024d0:	00058993          	mv	s3,a1
        __asm__ volatile ("mv %[x], a2" : [x] "=r" (init));
    800024d4:	00060513          	mv	a0,a2
        *handle=SEM::open(init);
    800024d8:	0005051b          	sext.w	a0,a0
    800024dc:	00000097          	auipc	ra,0x0
    800024e0:	4b0080e7          	jalr	1200(ra) # 8000298c <_ZN3SEM4openEj>
    800024e4:	00a9b023          	sd	a0,0(s3)
        if (*handle) {
    800024e8:	00050863          	beqz	a0,800024f8 <_ZN5Riscv21SupervisorTrapHandlerEv+0x2a4>
            ret=0;
    800024ec:	00000793          	li	a5,0
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (ret));
    800024f0:	00078513          	mv	a0,a5
    800024f4:	ef1ff06f          	j	800023e4 <_ZN5Riscv21SupervisorTrapHandlerEv+0x190>
            ret=1;
    800024f8:	00100793          	li	a5,1
    800024fc:	ff5ff06f          	j	800024f0 <_ZN5Riscv21SupervisorTrapHandlerEv+0x29c>
        __asm__ volatile ("mv %[x], a1" : [x] "=r" (handle));
    80002500:	00058513          	mv	a0,a1
        int ret=handle->close();
    80002504:	00000097          	auipc	ra,0x0
    80002508:	4dc080e7          	jalr	1244(ra) # 800029e0 <_ZN3SEM5closeEv>
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (ret));
    8000250c:	00050513          	mv	a0,a0
    80002510:	ed5ff06f          	j	800023e4 <_ZN5Riscv21SupervisorTrapHandlerEv+0x190>
        __asm__ volatile ("mv %[x], a1" : [x] "=r" (handle));
    80002514:	00058513          	mv	a0,a1
        int ret=handle->wait();
    80002518:	00000097          	auipc	ra,0x0
    8000251c:	59c080e7          	jalr	1436(ra) # 80002ab4 <_ZN3SEM4waitEv>
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (ret));
    80002520:	00050513          	mv	a0,a0
    80002524:	ec1ff06f          	j	800023e4 <_ZN5Riscv21SupervisorTrapHandlerEv+0x190>
        __asm__ volatile ("mv %[x], a1" : [x] "=r" (handle));
    80002528:	00058513          	mv	a0,a1
        int ret=handle->signal();
    8000252c:	00000097          	auipc	ra,0x0
    80002530:	64c080e7          	jalr	1612(ra) # 80002b78 <_ZN3SEM6signalEv>
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (ret));
    80002534:	00050513          	mv	a0,a0
    80002538:	eadff06f          	j	800023e4 <_ZN5Riscv21SupervisorTrapHandlerEv+0x190>

000000008000253c <_ZN15MemoryAllocatorC1Ev>:

#include "../h/MemoryAllocator.hpp"
#include "../lib/console.h"


MemoryAllocator::MemoryAllocator() {
    8000253c:	ff010113          	addi	sp,sp,-16
    80002540:	00813423          	sd	s0,8(sp)
    80002544:	01010413          	addi	s0,sp,16
    this->head = (MemoryHeader*)HEAP_START_ADDR;
    80002548:	00006797          	auipc	a5,0x6
    8000254c:	1507b783          	ld	a5,336(a5) # 80008698 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002550:	0007b703          	ld	a4,0(a5)
    80002554:	00e53023          	sd	a4,0(a0)
    // this->tail = (MemoryHeader*)HEAP_START_ADDR;
    // this->tail->next=nullptr;
    // this->tail->prev=nullptr;
    this->head->next=nullptr;
    80002558:	00073423          	sd	zero,8(a4)
    this->head->prev=nullptr;
    8000255c:	00053783          	ld	a5,0(a0)
    80002560:	0007b823          	sd	zero,16(a5)
    this->head->size = (size_t)((char*)HEAP_END_ADDR - (char*)HEAP_START_ADDR - sizeof(MemoryHeader));
    80002564:	00006797          	auipc	a5,0x6
    80002568:	15c7b783          	ld	a5,348(a5) # 800086c0 <_GLOBAL_OFFSET_TABLE_+0x30>
    8000256c:	0007b783          	ld	a5,0(a5)
    80002570:	40e787b3          	sub	a5,a5,a4
    80002574:	00053703          	ld	a4,0(a0)
    80002578:	fe878793          	addi	a5,a5,-24
    8000257c:	00f73023          	sd	a5,0(a4)
    this->freeMemSize=this->head->size;
    80002580:	00053783          	ld	a5,0(a0)
    80002584:	0007b783          	ld	a5,0(a5)
    80002588:	00f53423          	sd	a5,8(a0)
}
    8000258c:	00813403          	ld	s0,8(sp)
    80002590:	01010113          	addi	sp,sp,16
    80002594:	00008067          	ret

0000000080002598 <_ZN15MemoryAllocator8InstanceEv>:




MemoryAllocator* MemoryAllocator::Instance() {
    static MemoryAllocator instance;
    80002598:	00006797          	auipc	a5,0x6
    8000259c:	1a07c783          	lbu	a5,416(a5) # 80008738 <_ZGVZN15MemoryAllocator8InstanceEvE8instance>
    800025a0:	00078863          	beqz	a5,800025b0 <_ZN15MemoryAllocator8InstanceEv+0x18>
    return &instance;
}
    800025a4:	00006517          	auipc	a0,0x6
    800025a8:	19c50513          	addi	a0,a0,412 # 80008740 <_ZZN15MemoryAllocator8InstanceEvE8instance>
    800025ac:	00008067          	ret
MemoryAllocator* MemoryAllocator::Instance() {
    800025b0:	ff010113          	addi	sp,sp,-16
    800025b4:	00113423          	sd	ra,8(sp)
    800025b8:	00813023          	sd	s0,0(sp)
    800025bc:	01010413          	addi	s0,sp,16
    static MemoryAllocator instance;
    800025c0:	00006517          	auipc	a0,0x6
    800025c4:	18050513          	addi	a0,a0,384 # 80008740 <_ZZN15MemoryAllocator8InstanceEvE8instance>
    800025c8:	00000097          	auipc	ra,0x0
    800025cc:	f74080e7          	jalr	-140(ra) # 8000253c <_ZN15MemoryAllocatorC1Ev>
    800025d0:	00100793          	li	a5,1
    800025d4:	00006717          	auipc	a4,0x6
    800025d8:	16f70223          	sb	a5,356(a4) # 80008738 <_ZGVZN15MemoryAllocator8InstanceEvE8instance>
}
    800025dc:	00006517          	auipc	a0,0x6
    800025e0:	16450513          	addi	a0,a0,356 # 80008740 <_ZZN15MemoryAllocator8InstanceEvE8instance>
    800025e4:	00813083          	ld	ra,8(sp)
    800025e8:	00013403          	ld	s0,0(sp)
    800025ec:	01010113          	addi	sp,sp,16
    800025f0:	00008067          	ret

00000000800025f4 <_ZN15MemoryAllocator9mem_allocEm>:


void* MemoryAllocator::mem_alloc(size_t size) {
    800025f4:	ff010113          	addi	sp,sp,-16
    800025f8:	00813423          	sd	s0,8(sp)
    800025fc:	01010413          	addi	s0,sp,16
    80002600:	00050813          	mv	a6,a0
    if (this->head==nullptr)
    80002604:	00053503          	ld	a0,0(a0)
    80002608:	0a050263          	beqz	a0,800026ac <_ZN15MemoryAllocator9mem_allocEm+0xb8>
        return nullptr;
    if (size==0) {
    8000260c:	0e058863          	beqz	a1,800026fc <_ZN15MemoryAllocator9mem_allocEm+0x108>
        return nullptr;
    }
    uint64 offset = size % MEM_BLOCK_SIZE;
    80002610:	0035f793          	andi	a5,a1,3
    if (offset!=0)
    80002614:	00078463          	beqz	a5,8000261c <_ZN15MemoryAllocator9mem_allocEm+0x28>
        offset=1;
    80002618:	00100793          	li	a5,1

    size_t actulalSize = (size  / MEM_BLOCK_SIZE+offset ) * MEM_BLOCK_SIZE;
    8000261c:	0025d693          	srli	a3,a1,0x2
    80002620:	00f686b3          	add	a3,a3,a5
    80002624:	00269693          	slli	a3,a3,0x2


    MemoryHeader* curr= this->head;
    80002628:	00050793          	mv	a5,a0
    while (curr->next!=nullptr && curr->size < actulalSize) {
    8000262c:	00078713          	mv	a4,a5
    80002630:	0087b783          	ld	a5,8(a5)
    80002634:	00078663          	beqz	a5,80002640 <_ZN15MemoryAllocator9mem_allocEm+0x4c>
    80002638:	00073603          	ld	a2,0(a4)
    8000263c:	fed668e3          	bltu	a2,a3,8000262c <_ZN15MemoryAllocator9mem_allocEm+0x38>
        curr=curr->next;
    }
    if (curr->size < actulalSize) {
    80002640:	00073603          	ld	a2,0(a4)
    80002644:	0cd66063          	bltu	a2,a3,80002704 <_ZN15MemoryAllocator9mem_allocEm+0x110>
        return nullptr;
    }



    if (curr->size - actulalSize >= MEM_BLOCK_SIZE+sizeof(MemoryHeader)) {
    80002648:	40d60633          	sub	a2,a2,a3
    8000264c:	01b00593          	li	a1,27
    80002650:	06c5f863          	bgeu	a1,a2,800026c0 <_ZN15MemoryAllocator9mem_allocEm+0xcc>


        MemoryHeader* new_seg=(MemoryHeader*)((char*)curr + sizeof(MemoryHeader) + actulalSize);
    80002654:	01868793          	addi	a5,a3,24
    80002658:	00f707b3          	add	a5,a4,a5
        new_seg->size = curr->size - actulalSize - sizeof(MemoryHeader);
    8000265c:	fe860613          	addi	a2,a2,-24 # fe8 <_entry-0x7ffff018>
    80002660:	00c7b023          	sd	a2,0(a5)
        new_seg->next=curr->next;
    80002664:	00873603          	ld	a2,8(a4)
    80002668:	00c7b423          	sd	a2,8(a5)
        new_seg->prev=curr->prev;
    8000266c:	01073603          	ld	a2,16(a4)
    80002670:	00c7b823          	sd	a2,16(a5)
        if (curr==this->head) {
    80002674:	00083603          	ld	a2,0(a6)
    80002678:	04e60063          	beq	a2,a4,800026b8 <_ZN15MemoryAllocator9mem_allocEm+0xc4>
            this->head=new_seg;
        }
        // if (curr==this->tail) {
        //     this->tail=new_seg;
        // }
        if (curr->prev)
    8000267c:	01073603          	ld	a2,16(a4)
    80002680:	00060463          	beqz	a2,80002688 <_ZN15MemoryAllocator9mem_allocEm+0x94>
            curr->prev->next=new_seg;
    80002684:	00f63423          	sd	a5,8(a2)
        if (curr->next)
    80002688:	00873603          	ld	a2,8(a4)
    8000268c:	00060463          	beqz	a2,80002694 <_ZN15MemoryAllocator9mem_allocEm+0xa0>
            curr->next->prev=new_seg;
    80002690:	00f63823          	sd	a5,16(a2)
        curr->size=actulalSize;
    80002694:	00d73023          	sd	a3,0(a4)
        this->freeMemSize-= (actulalSize + sizeof(MemoryHeader));
    80002698:	00883783          	ld	a5,8(a6)
    8000269c:	40d786b3          	sub	a3,a5,a3
    800026a0:	fe868693          	addi	a3,a3,-24
    800026a4:	00d83423          	sd	a3,8(a6)
    //__putc('m');
    //__putc('\n');



    return  (void*)((char*)curr + sizeof(MemoryHeader));
    800026a8:	01870513          	addi	a0,a4,24
}
    800026ac:	00813403          	ld	s0,8(sp)
    800026b0:	01010113          	addi	sp,sp,16
    800026b4:	00008067          	ret
            this->head=new_seg;
    800026b8:	00f83023          	sd	a5,0(a6)
    800026bc:	fc1ff06f          	j	8000267c <_ZN15MemoryAllocator9mem_allocEm+0x88>
        if (curr==this->head) {
    800026c0:	02e50a63          	beq	a0,a4,800026f4 <_ZN15MemoryAllocator9mem_allocEm+0x100>
        if (curr->prev)
    800026c4:	01073783          	ld	a5,16(a4)
    800026c8:	00078663          	beqz	a5,800026d4 <_ZN15MemoryAllocator9mem_allocEm+0xe0>
            curr->prev->next=curr->next;
    800026cc:	00873603          	ld	a2,8(a4)
    800026d0:	00c7b423          	sd	a2,8(a5)
        if (curr->next)
    800026d4:	00873783          	ld	a5,8(a4)
    800026d8:	00078663          	beqz	a5,800026e4 <_ZN15MemoryAllocator9mem_allocEm+0xf0>
            curr->next->prev=curr->prev;
    800026dc:	01073603          	ld	a2,16(a4)
    800026e0:	00c7b823          	sd	a2,16(a5)
        this->freeMemSize-= actulalSize;
    800026e4:	00883783          	ld	a5,8(a6)
    800026e8:	40d786b3          	sub	a3,a5,a3
    800026ec:	00d83423          	sd	a3,8(a6)
    800026f0:	fb9ff06f          	j	800026a8 <_ZN15MemoryAllocator9mem_allocEm+0xb4>
            this->head=curr->next;
    800026f4:	00f83023          	sd	a5,0(a6)
    800026f8:	fcdff06f          	j	800026c4 <_ZN15MemoryAllocator9mem_allocEm+0xd0>
        return nullptr;
    800026fc:	00000513          	li	a0,0
    80002700:	fadff06f          	j	800026ac <_ZN15MemoryAllocator9mem_allocEm+0xb8>
        return nullptr;
    80002704:	00000513          	li	a0,0
    80002708:	fa5ff06f          	j	800026ac <_ZN15MemoryAllocator9mem_allocEm+0xb8>

000000008000270c <_ZN15MemoryAllocator11try_to_joinEPNS_12MemoryHeaderE>:
    try_to_join(block->prev);
    try_to_join(block);
}


void MemoryAllocator::try_to_join(MemoryHeader* block) {
    8000270c:	ff010113          	addi	sp,sp,-16
    80002710:	00813423          	sd	s0,8(sp)
    80002714:	01010413          	addi	s0,sp,16
    if (block==nullptr)
    80002718:	00058e63          	beqz	a1,80002734 <_ZN15MemoryAllocator11try_to_joinEPNS_12MemoryHeaderE+0x28>
        return;
    if (block->next!=nullptr && ((char*)block + sizeof(MemoryHeader) + block->size) == (char*)block->next) {
    8000271c:	0085b783          	ld	a5,8(a1) # 1008 <_entry-0x7fffeff8>
    80002720:	00078a63          	beqz	a5,80002734 <_ZN15MemoryAllocator11try_to_joinEPNS_12MemoryHeaderE+0x28>
    80002724:	0005b683          	ld	a3,0(a1)
    80002728:	01868713          	addi	a4,a3,24
    8000272c:	00e58733          	add	a4,a1,a4
    80002730:	00e78863          	beq	a5,a4,80002740 <_ZN15MemoryAllocator11try_to_joinEPNS_12MemoryHeaderE+0x34>
        block->next=block->next->next;
        if (block->next)
            block->next->prev=block;
        this->freeMemSize+= sizeof(MemoryHeader);
    }
}
    80002734:	00813403          	ld	s0,8(sp)
    80002738:	01010113          	addi	sp,sp,16
    8000273c:	00008067          	ret
        block->size += block->next->size;
    80002740:	0007b703          	ld	a4,0(a5)
    80002744:	00e686b3          	add	a3,a3,a4
    80002748:	00d5b023          	sd	a3,0(a1)
        block->next=block->next->next;
    8000274c:	0087b783          	ld	a5,8(a5)
    80002750:	00f5b423          	sd	a5,8(a1)
        if (block->next)
    80002754:	00078463          	beqz	a5,8000275c <_ZN15MemoryAllocator11try_to_joinEPNS_12MemoryHeaderE+0x50>
            block->next->prev=block;
    80002758:	00b7b823          	sd	a1,16(a5)
        this->freeMemSize+= sizeof(MemoryHeader);
    8000275c:	00853783          	ld	a5,8(a0)
    80002760:	01878793          	addi	a5,a5,24
    80002764:	00f53423          	sd	a5,8(a0)
    80002768:	fcdff06f          	j	80002734 <_ZN15MemoryAllocator11try_to_joinEPNS_12MemoryHeaderE+0x28>

000000008000276c <_ZN15MemoryAllocator8mem_freeEPv>:
    if (ptr==nullptr) {
    8000276c:	0e058063          	beqz	a1,8000284c <_ZN15MemoryAllocator8mem_freeEPv+0xe0>
void MemoryAllocator::mem_free(void* ptr) {
    80002770:	fe010113          	addi	sp,sp,-32
    80002774:	00113c23          	sd	ra,24(sp)
    80002778:	00813823          	sd	s0,16(sp)
    8000277c:	00913423          	sd	s1,8(sp)
    80002780:	01213023          	sd	s2,0(sp)
    80002784:	02010413          	addi	s0,sp,32
    80002788:	00050913          	mv	s2,a0
	MemoryHeader* block = (MemoryHeader*)((char*)ptr - sizeof(MemoryHeader));
    8000278c:	fe858493          	addi	s1,a1,-24
    if (this->head==nullptr) {
    80002790:	00053683          	ld	a3,0(a0)
    80002794:	06068e63          	beqz	a3,80002810 <_ZN15MemoryAllocator8mem_freeEPv+0xa4>
    MemoryHeader* curr = this->head;
    80002798:	00068793          	mv	a5,a3
    while (curr->next!=nullptr && curr->next < block) {
    8000279c:	00078713          	mv	a4,a5
    800027a0:	0087b783          	ld	a5,8(a5)
    800027a4:	00078463          	beqz	a5,800027ac <_ZN15MemoryAllocator8mem_freeEPv+0x40>
    800027a8:	fe97eae3          	bltu	a5,s1,8000279c <_ZN15MemoryAllocator8mem_freeEPv+0x30>
    if (curr==this->head and curr > block) {
    800027ac:	08e68263          	beq	a3,a4,80002830 <_ZN15MemoryAllocator8mem_freeEPv+0xc4>
        block->next=curr->next;
    800027b0:	fef5b823          	sd	a5,-16(a1)
        block->prev=curr;
    800027b4:	fee5bc23          	sd	a4,-8(a1)
        curr->next=block;
    800027b8:	00973423          	sd	s1,8(a4)
        if (block->next) {
    800027bc:	ff05b783          	ld	a5,-16(a1)
    800027c0:	00078463          	beqz	a5,800027c8 <_ZN15MemoryAllocator8mem_freeEPv+0x5c>
            block->next->prev=block;
    800027c4:	0097b823          	sd	s1,16(a5)
    this->freeMemSize+= block->size;
    800027c8:	fe85b703          	ld	a4,-24(a1)
    800027cc:	00893783          	ld	a5,8(s2)
    800027d0:	00e787b3          	add	a5,a5,a4
    800027d4:	00f93423          	sd	a5,8(s2)
    try_to_join(block->prev);
    800027d8:	ff85b583          	ld	a1,-8(a1)
    800027dc:	00090513          	mv	a0,s2
    800027e0:	00000097          	auipc	ra,0x0
    800027e4:	f2c080e7          	jalr	-212(ra) # 8000270c <_ZN15MemoryAllocator11try_to_joinEPNS_12MemoryHeaderE>
    try_to_join(block);
    800027e8:	00048593          	mv	a1,s1
    800027ec:	00090513          	mv	a0,s2
    800027f0:	00000097          	auipc	ra,0x0
    800027f4:	f1c080e7          	jalr	-228(ra) # 8000270c <_ZN15MemoryAllocator11try_to_joinEPNS_12MemoryHeaderE>
}
    800027f8:	01813083          	ld	ra,24(sp)
    800027fc:	01013403          	ld	s0,16(sp)
    80002800:	00813483          	ld	s1,8(sp)
    80002804:	00013903          	ld	s2,0(sp)
    80002808:	02010113          	addi	sp,sp,32
    8000280c:	00008067          	ret
        this->head=block;
    80002810:	00953023          	sd	s1,0(a0)
        block->next=nullptr;
    80002814:	fe05b823          	sd	zero,-16(a1)
        block->prev=nullptr;
    80002818:	fe05bc23          	sd	zero,-8(a1)
        this->freeMemSize+= block->size;
    8000281c:	fe85b703          	ld	a4,-24(a1)
    80002820:	00853783          	ld	a5,8(a0)
    80002824:	00e787b3          	add	a5,a5,a4
    80002828:	00f53423          	sd	a5,8(a0)
        return;
    8000282c:	fcdff06f          	j	800027f8 <_ZN15MemoryAllocator8mem_freeEPv+0x8c>
    if (curr==this->head and curr > block) {
    80002830:	f8e4f0e3          	bgeu	s1,a4,800027b0 <_ZN15MemoryAllocator8mem_freeEPv+0x44>
        block->next=curr;
    80002834:	fee5b823          	sd	a4,-16(a1)
        block->prev=curr->prev;
    80002838:	01073783          	ld	a5,16(a4)
    8000283c:	fef5bc23          	sd	a5,-8(a1)
        curr->prev=block;
    80002840:	00973823          	sd	s1,16(a4)
        this->head=block;
    80002844:	00993023          	sd	s1,0(s2)
    80002848:	f81ff06f          	j	800027c8 <_ZN15MemoryAllocator8mem_freeEPv+0x5c>
    8000284c:	00008067          	ret

0000000080002850 <_ZN15MemoryAllocator19getLargestFreeBlockEv>:

size_t MemoryAllocator::getLargestFreeBlock() {
    80002850:	ff010113          	addi	sp,sp,-16
    80002854:	00813423          	sd	s0,8(sp)
    80002858:	01010413          	addi	s0,sp,16
    size_t maxSize=0;
    MemoryHeader* curr=this->head;
    8000285c:	00053783          	ld	a5,0(a0)
    size_t maxSize=0;
    80002860:	00000513          	li	a0,0
    80002864:	0080006f          	j	8000286c <_ZN15MemoryAllocator19getLargestFreeBlockEv+0x1c>
    while (curr!=nullptr) {
        if (curr->size > maxSize)
            maxSize=curr->size;
        curr=curr->next;
    80002868:	0087b783          	ld	a5,8(a5)
    while (curr!=nullptr) {
    8000286c:	00078a63          	beqz	a5,80002880 <_ZN15MemoryAllocator19getLargestFreeBlockEv+0x30>
        if (curr->size > maxSize)
    80002870:	0007b703          	ld	a4,0(a5)
    80002874:	fee57ae3          	bgeu	a0,a4,80002868 <_ZN15MemoryAllocator19getLargestFreeBlockEv+0x18>
            maxSize=curr->size;
    80002878:	00070513          	mv	a0,a4
    8000287c:	fedff06f          	j	80002868 <_ZN15MemoryAllocator19getLargestFreeBlockEv+0x18>
    }
    return maxSize;
    80002880:	00813403          	ld	s0,8(sp)
    80002884:	01010113          	addi	sp,sp,16
    80002888:	00008067          	ret

000000008000288c <_Z11printStringPKc>:
#include  "../h/print.hpp"
#include "../lib/console.h"


void printString(const char *string) {
    8000288c:	fe010113          	addi	sp,sp,-32
    80002890:	00113c23          	sd	ra,24(sp)
    80002894:	00813823          	sd	s0,16(sp)
    80002898:	00913423          	sd	s1,8(sp)
    8000289c:	02010413          	addi	s0,sp,32
    800028a0:	00050493          	mv	s1,a0
    while (*string!='\0') {
    800028a4:	0004c503          	lbu	a0,0(s1)
    800028a8:	00050a63          	beqz	a0,800028bc <_Z11printStringPKc+0x30>
        __putc(*string);
    800028ac:	00004097          	auipc	ra,0x4
    800028b0:	930080e7          	jalr	-1744(ra) # 800061dc <__putc>
        string++;
    800028b4:	00148493          	addi	s1,s1,1
    while (*string!='\0') {
    800028b8:	fedff06f          	j	800028a4 <_Z11printStringPKc+0x18>
    }
}
    800028bc:	01813083          	ld	ra,24(sp)
    800028c0:	01013403          	ld	s0,16(sp)
    800028c4:	00813483          	ld	s1,8(sp)
    800028c8:	02010113          	addi	sp,sp,32
    800028cc:	00008067          	ret

00000000800028d0 <_Z12printIntegerm>:
void printInteger(uint64 integer) {
    800028d0:	fd010113          	addi	sp,sp,-48
    800028d4:	02113423          	sd	ra,40(sp)
    800028d8:	02813023          	sd	s0,32(sp)
    800028dc:	00913c23          	sd	s1,24(sp)
    800028e0:	03010413          	addi	s0,sp,48
    neg=0;
    if (integer<0) {
        neg=1;
        x=-integer;
    } else {
        x=integer;
    800028e4:	0005051b          	sext.w	a0,a0
    }

    i=0;
    800028e8:	00000493          	li	s1,0
    do {
        buf[i++]=digits[x%10];
    800028ec:	00a00613          	li	a2,10
    800028f0:	02c5773b          	remuw	a4,a0,a2
    800028f4:	02071693          	slli	a3,a4,0x20
    800028f8:	0206d693          	srli	a3,a3,0x20
    800028fc:	00005717          	auipc	a4,0x5
    80002900:	82c70713          	addi	a4,a4,-2004 # 80007128 <_ZZ12printIntegermE6digits>
    80002904:	00d70733          	add	a4,a4,a3
    80002908:	00074703          	lbu	a4,0(a4)
    8000290c:	fe040693          	addi	a3,s0,-32
    80002910:	009687b3          	add	a5,a3,s1
    80002914:	0014849b          	addiw	s1,s1,1
    80002918:	fee78823          	sb	a4,-16(a5)
    }while ((x/=10)!=0);
    8000291c:	0005071b          	sext.w	a4,a0
    80002920:	02c5553b          	divuw	a0,a0,a2
    80002924:	00900793          	li	a5,9
    80002928:	fce7e2e3          	bltu	a5,a4,800028ec <_Z12printIntegerm+0x1c>
    if (neg) {
        buf[i++]='-';
    }

    while (--i>=0) {
    8000292c:	fff4849b          	addiw	s1,s1,-1
    80002930:	0004ce63          	bltz	s1,8000294c <_Z12printIntegerm+0x7c>
        __putc(buf[i]);
    80002934:	fe040793          	addi	a5,s0,-32
    80002938:	009787b3          	add	a5,a5,s1
    8000293c:	ff07c503          	lbu	a0,-16(a5)
    80002940:	00004097          	auipc	ra,0x4
    80002944:	89c080e7          	jalr	-1892(ra) # 800061dc <__putc>
    80002948:	fe5ff06f          	j	8000292c <_Z12printIntegerm+0x5c>
    }
    8000294c:	02813083          	ld	ra,40(sp)
    80002950:	02013403          	ld	s0,32(sp)
    80002954:	01813483          	ld	s1,24(sp)
    80002958:	03010113          	addi	sp,sp,48
    8000295c:	00008067          	ret

0000000080002960 <_ZN3SEMC1Ej>:
#include "../h/SEM.hpp"
#include "../h/syscall_cpp.hpp"
#include "../h/syscall_c.hpp"
#include "../h/print.hpp"

SEM::SEM(unsigned init) {
    80002960:	ff010113          	addi	sp,sp,-16
    80002964:	00813423          	sd	s0,8(sp)
    80002968:	01010413          	addi	s0,sp,16
    List(): head(0), tail(0){}
    8000296c:	00053423          	sd	zero,8(a0)
    80002970:	00053823          	sd	zero,16(a0)
    80002974:	00052c23          	sw	zero,24(a0)
    this->val=init;
    80002978:	00b52023          	sw	a1,0(a0)
    this->closed=false;
    8000297c:	00050223          	sb	zero,4(a0)

}
    80002980:	00813403          	ld	s0,8(sp)
    80002984:	01010113          	addi	sp,sp,16
    80002988:	00008067          	ret

000000008000298c <_ZN3SEM4openEj>:

SEM* SEM::open(unsigned init) {
    8000298c:	fe010113          	addi	sp,sp,-32
    80002990:	00113c23          	sd	ra,24(sp)
    80002994:	00813823          	sd	s0,16(sp)
    80002998:	00913423          	sd	s1,8(sp)
    8000299c:	01213023          	sd	s2,0(sp)
    800029a0:	02010413          	addi	s0,sp,32
    800029a4:	00050913          	mv	s2,a0
    //printString("Sem::open\n ");
    return new SEM(init);
    800029a8:	02000513          	li	a0,32
    800029ac:	fffff097          	auipc	ra,0xfffff
    800029b0:	3e0080e7          	jalr	992(ra) # 80001d8c <_Znwm>
    800029b4:	00050493          	mv	s1,a0
    800029b8:	00090593          	mv	a1,s2
    800029bc:	00000097          	auipc	ra,0x0
    800029c0:	fa4080e7          	jalr	-92(ra) # 80002960 <_ZN3SEMC1Ej>
}
    800029c4:	00048513          	mv	a0,s1
    800029c8:	01813083          	ld	ra,24(sp)
    800029cc:	01013403          	ld	s0,16(sp)
    800029d0:	00813483          	ld	s1,8(sp)
    800029d4:	00013903          	ld	s2,0(sp)
    800029d8:	02010113          	addi	sp,sp,32
    800029dc:	00008067          	ret

00000000800029e0 <_ZN3SEM5closeEv>:

int SEM::close() {
    //printString("Sem::close\n");
    if (this->closed) {
    800029e0:	00454783          	lbu	a5,4(a0)
    800029e4:	0a079263          	bnez	a5,80002a88 <_ZN3SEM5closeEv+0xa8>
int SEM::close() {
    800029e8:	fe010113          	addi	sp,sp,-32
    800029ec:	00113c23          	sd	ra,24(sp)
    800029f0:	00813823          	sd	s0,16(sp)
    800029f4:	00913423          	sd	s1,8(sp)
    800029f8:	01213023          	sd	s2,0(sp)
    800029fc:	02010413          	addi	s0,sp,32
    80002a00:	00050913          	mv	s2,a0
        return -1;
    }
    this->closed=true;
    80002a04:	00100793          	li	a5,1
    80002a08:	00f50223          	sb	a5,4(a0)
    80002a0c:	0380006f          	j	80002a44 <_ZN3SEM5closeEv+0x64>
        Elem* elem=tail;
    80002a10:	0087b503          	ld	a0,8(a5)
        if(prev) prev->next=0;
    80002a14:	06070663          	beqz	a4,80002a80 <_ZN3SEM5closeEv+0xa0>
    80002a18:	00073423          	sd	zero,8(a4)
        tail=prev;
    80002a1c:	00e7b423          	sd	a4,8(a5)
        T* retval= elem->data;
    80002a20:	00053483          	ld	s1,0(a0)
        delete elem;
    80002a24:	00050663          	beqz	a0,80002a30 <_ZN3SEM5closeEv+0x50>
    80002a28:	fffff097          	auipc	ra,0xfffff
    80002a2c:	38c080e7          	jalr	908(ra) # 80001db4 <_ZdlPv>

    while (blockedQueue.size> 0) {
        TCB* tcb = blockedQueue.removeLast();
        if (tcb == nullptr) {
    80002a30:	06048e63          	beqz	s1,80002aac <_ZN3SEM5closeEv+0xcc>
    bool isBlocked() const { return blocked; }
    80002a34:	00048c23          	sb	zero,24(s1)
            return -1;
        }
        tcb->unblock();
        Scheduler::put(tcb);
    80002a38:	00048513          	mv	a0,s1
    80002a3c:	fffff097          	auipc	ra,0xfffff
    80002a40:	ef4080e7          	jalr	-268(ra) # 80001930 <_ZN9Scheduler3putEP3TCB>
    while (blockedQueue.size> 0) {
    80002a44:	01892783          	lw	a5,24(s2)
    80002a48:	04f05463          	blez	a5,80002a90 <_ZN3SEM5closeEv+0xb0>
        TCB* tcb = blockedQueue.removeLast();
    80002a4c:	00890793          	addi	a5,s2,8
        size--;
    80002a50:	0107a703          	lw	a4,16(a5)
    80002a54:	fff7071b          	addiw	a4,a4,-1
    80002a58:	00e7a823          	sw	a4,16(a5)
        if(!head){return 0;}
    80002a5c:	00893483          	ld	s1,8(s2)
    80002a60:	fc0488e3          	beqz	s1,80002a30 <_ZN3SEM5closeEv+0x50>
        Elem* prev=0;
    80002a64:	00000713          	li	a4,0
        for(Elem* curr=head; curr && curr!=tail; prev=curr, curr=curr->next);
    80002a68:	fa0484e3          	beqz	s1,80002a10 <_ZN3SEM5closeEv+0x30>
    80002a6c:	0087b683          	ld	a3,8(a5)
    80002a70:	fad480e3          	beq	s1,a3,80002a10 <_ZN3SEM5closeEv+0x30>
    80002a74:	00048713          	mv	a4,s1
    80002a78:	0084b483          	ld	s1,8(s1)
    80002a7c:	fedff06f          	j	80002a68 <_ZN3SEM5closeEv+0x88>
        else head=0;
    80002a80:	00093423          	sd	zero,8(s2)
    80002a84:	f99ff06f          	j	80002a1c <_ZN3SEM5closeEv+0x3c>
        return -1;
    80002a88:	fff00513          	li	a0,-1
    }
    return 0;
}
    80002a8c:	00008067          	ret
    return 0;
    80002a90:	00000513          	li	a0,0
}
    80002a94:	01813083          	ld	ra,24(sp)
    80002a98:	01013403          	ld	s0,16(sp)
    80002a9c:	00813483          	ld	s1,8(sp)
    80002aa0:	00013903          	ld	s2,0(sp)
    80002aa4:	02010113          	addi	sp,sp,32
    80002aa8:	00008067          	ret
            return -1;
    80002aac:	fff00513          	li	a0,-1
    80002ab0:	fe5ff06f          	j	80002a94 <_ZN3SEM5closeEv+0xb4>

0000000080002ab4 <_ZN3SEM4waitEv>:

int SEM::wait() {
    //printString("Sem::wait\n");
    if (this->closed) {
    80002ab4:	00454783          	lbu	a5,4(a0)
    80002ab8:	0a079c63          	bnez	a5,80002b70 <_ZN3SEM4waitEv+0xbc>
int SEM::wait() {
    80002abc:	fd010113          	addi	sp,sp,-48
    80002ac0:	02113423          	sd	ra,40(sp)
    80002ac4:	02813023          	sd	s0,32(sp)
    80002ac8:	00913c23          	sd	s1,24(sp)
    80002acc:	01213823          	sd	s2,16(sp)
    80002ad0:	01313423          	sd	s3,8(sp)
    80002ad4:	03010413          	addi	s0,sp,48
    80002ad8:	00050493          	mv	s1,a0
        return -1;
    }
    val--;
    80002adc:	00052783          	lw	a5,0(a0)
    80002ae0:	fff7879b          	addiw	a5,a5,-1
    80002ae4:	00f52023          	sw	a5,0(a0)
    if (val<0) {
    80002ae8:	02079713          	slli	a4,a5,0x20
    80002aec:	02074263          	bltz	a4,80002b10 <_ZN3SEM4waitEv+0x5c>
        TCB::running->block();
        blockedQueue.addFirst(TCB::running);
        //thread_dispatch();
        TCB::dispatch();
    }
    return 0;
    80002af0:	00000513          	li	a0,0
}
    80002af4:	02813083          	ld	ra,40(sp)
    80002af8:	02013403          	ld	s0,32(sp)
    80002afc:	01813483          	ld	s1,24(sp)
    80002b00:	01013903          	ld	s2,16(sp)
    80002b04:	00813983          	ld	s3,8(sp)
    80002b08:	03010113          	addi	sp,sp,48
    80002b0c:	00008067          	ret
        TCB::running->block();
    80002b10:	00006797          	auipc	a5,0x6
    80002b14:	ba87b783          	ld	a5,-1112(a5) # 800086b8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002b18:	0007b983          	ld	s3,0(a5)
    void unblock() { this->blocked = false; }
    80002b1c:	00100793          	li	a5,1
    80002b20:	00f98c23          	sb	a5,24(s3)
        blockedQueue.addFirst(TCB::running);
    80002b24:	00850913          	addi	s2,a0,8
        Elem* elem=new Elem(data, head);
    80002b28:	01000513          	li	a0,16
    80002b2c:	fffff097          	auipc	ra,0xfffff
    80002b30:	260080e7          	jalr	608(ra) # 80001d8c <_Znwm>
    80002b34:	0084b783          	ld	a5,8(s1)
        Elem(T* data, Elem* next=nullptr): data(data), next(next){}
    80002b38:	01353023          	sd	s3,0(a0)
    80002b3c:	00f53423          	sd	a5,8(a0)
        head=elem;
    80002b40:	00a4b423          	sd	a0,8(s1)
        if(!tail){tail=head;}
    80002b44:	00893783          	ld	a5,8(s2)
    80002b48:	02078063          	beqz	a5,80002b68 <_ZN3SEM4waitEv+0xb4>
        size++;
    80002b4c:	01092783          	lw	a5,16(s2)
    80002b50:	0017879b          	addiw	a5,a5,1
    80002b54:	00f92823          	sw	a5,16(s2)
        TCB::dispatch();
    80002b58:	fffff097          	auipc	ra,0xfffff
    80002b5c:	5dc080e7          	jalr	1500(ra) # 80002134 <_ZN3TCB8dispatchEv>
    return 0;
    80002b60:	00000513          	li	a0,0
    80002b64:	f91ff06f          	j	80002af4 <_ZN3SEM4waitEv+0x40>
        if(!tail){tail=head;}
    80002b68:	00a93423          	sd	a0,8(s2)
    80002b6c:	fe1ff06f          	j	80002b4c <_ZN3SEM4waitEv+0x98>
        return -1;
    80002b70:	fff00513          	li	a0,-1
}
    80002b74:	00008067          	ret

0000000080002b78 <_ZN3SEM6signalEv>:

int SEM::signal() {
    //printString("Sem::signal\n");
    if (this->closed) {
    80002b78:	00454783          	lbu	a5,4(a0)
    80002b7c:	0c079063          	bnez	a5,80002c3c <_ZN3SEM6signalEv+0xc4>
        return -1;
    }
    val++;
    80002b80:	00052783          	lw	a5,0(a0)
    80002b84:	0017879b          	addiw	a5,a5,1
    80002b88:	0007871b          	sext.w	a4,a5
    80002b8c:	00f52023          	sw	a5,0(a0)
    if (val<=0) {
    80002b90:	00e05663          	blez	a4,80002b9c <_ZN3SEM6signalEv+0x24>
                return -1;
        }
        unblockTcb->unblock();
        Scheduler::put(unblockTcb);
    }
    return 0;
    80002b94:	00000513          	li	a0,0
}
    80002b98:	00008067          	ret
int SEM::signal() {
    80002b9c:	fe010113          	addi	sp,sp,-32
    80002ba0:	00113c23          	sd	ra,24(sp)
    80002ba4:	00813823          	sd	s0,16(sp)
    80002ba8:	00913423          	sd	s1,8(sp)
    80002bac:	02010413          	addi	s0,sp,32
        TCB *unblockTcb = blockedQueue.removeLast();
    80002bb0:	00850793          	addi	a5,a0,8
        size--;
    80002bb4:	0107a703          	lw	a4,16(a5)
    80002bb8:	fff7071b          	addiw	a4,a4,-1
    80002bbc:	00e7a823          	sw	a4,16(a5)
        if(!head){return 0;}
    80002bc0:	00853483          	ld	s1,8(a0)
    80002bc4:	04048263          	beqz	s1,80002c08 <_ZN3SEM6signalEv+0x90>
        Elem* prev=0;
    80002bc8:	00000693          	li	a3,0
        for(Elem* curr=head; curr && curr!=tail; prev=curr, curr=curr->next);
    80002bcc:	00048c63          	beqz	s1,80002be4 <_ZN3SEM6signalEv+0x6c>
    80002bd0:	0087b703          	ld	a4,8(a5)
    80002bd4:	00e48863          	beq	s1,a4,80002be4 <_ZN3SEM6signalEv+0x6c>
    80002bd8:	00048693          	mv	a3,s1
    80002bdc:	0084b483          	ld	s1,8(s1)
    80002be0:	fedff06f          	j	80002bcc <_ZN3SEM6signalEv+0x54>
        Elem* elem=tail;
    80002be4:	0087b703          	ld	a4,8(a5)
        if(prev) prev->next=0;
    80002be8:	04068663          	beqz	a3,80002c34 <_ZN3SEM6signalEv+0xbc>
    80002bec:	0006b423          	sd	zero,8(a3)
        tail=prev;
    80002bf0:	00d7b423          	sd	a3,8(a5)
        T* retval= elem->data;
    80002bf4:	00073483          	ld	s1,0(a4)
        delete elem;
    80002bf8:	00070863          	beqz	a4,80002c08 <_ZN3SEM6signalEv+0x90>
    80002bfc:	00070513          	mv	a0,a4
    80002c00:	fffff097          	auipc	ra,0xfffff
    80002c04:	1b4080e7          	jalr	436(ra) # 80001db4 <_ZdlPv>
        if (unblockTcb == nullptr) {
    80002c08:	02048e63          	beqz	s1,80002c44 <_ZN3SEM6signalEv+0xcc>
    bool isBlocked() const { return blocked; }
    80002c0c:	00048c23          	sb	zero,24(s1)
        Scheduler::put(unblockTcb);
    80002c10:	00048513          	mv	a0,s1
    80002c14:	fffff097          	auipc	ra,0xfffff
    80002c18:	d1c080e7          	jalr	-740(ra) # 80001930 <_ZN9Scheduler3putEP3TCB>
    return 0;
    80002c1c:	00000513          	li	a0,0
}
    80002c20:	01813083          	ld	ra,24(sp)
    80002c24:	01013403          	ld	s0,16(sp)
    80002c28:	00813483          	ld	s1,8(sp)
    80002c2c:	02010113          	addi	sp,sp,32
    80002c30:	00008067          	ret
        else head=0;
    80002c34:	00053423          	sd	zero,8(a0)
    80002c38:	fb9ff06f          	j	80002bf0 <_ZN3SEM6signalEv+0x78>
        return -1;
    80002c3c:	fff00513          	li	a0,-1
    80002c40:	00008067          	ret
                return -1;
    80002c44:	fff00513          	li	a0,-1
    80002c48:	fd9ff06f          	j	80002c20 <_ZN3SEM6signalEv+0xa8>

0000000080002c4c <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80002c4c:	fe010113          	addi	sp,sp,-32
    80002c50:	00113c23          	sd	ra,24(sp)
    80002c54:	00813823          	sd	s0,16(sp)
    80002c58:	00913423          	sd	s1,8(sp)
    80002c5c:	01213023          	sd	s2,0(sp)
    80002c60:	02010413          	addi	s0,sp,32
    80002c64:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80002c68:	00100793          	li	a5,1
    80002c6c:	02a7f863          	bgeu	a5,a0,80002c9c <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80002c70:	00a00793          	li	a5,10
    80002c74:	02f577b3          	remu	a5,a0,a5
    80002c78:	02078e63          	beqz	a5,80002cb4 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80002c7c:	fff48513          	addi	a0,s1,-1
    80002c80:	00000097          	auipc	ra,0x0
    80002c84:	fcc080e7          	jalr	-52(ra) # 80002c4c <_ZL9fibonaccim>
    80002c88:	00050913          	mv	s2,a0
    80002c8c:	ffe48513          	addi	a0,s1,-2
    80002c90:	00000097          	auipc	ra,0x0
    80002c94:	fbc080e7          	jalr	-68(ra) # 80002c4c <_ZL9fibonaccim>
    80002c98:	00a90533          	add	a0,s2,a0
}
    80002c9c:	01813083          	ld	ra,24(sp)
    80002ca0:	01013403          	ld	s0,16(sp)
    80002ca4:	00813483          	ld	s1,8(sp)
    80002ca8:	00013903          	ld	s2,0(sp)
    80002cac:	02010113          	addi	sp,sp,32
    80002cb0:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80002cb4:	ffffe097          	auipc	ra,0xffffe
    80002cb8:	5b0080e7          	jalr	1456(ra) # 80001264 <_Z15thread_dispatchv>
    80002cbc:	fc1ff06f          	j	80002c7c <_ZL9fibonaccim+0x30>

0000000080002cc0 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80002cc0:	fe010113          	addi	sp,sp,-32
    80002cc4:	00113c23          	sd	ra,24(sp)
    80002cc8:	00813823          	sd	s0,16(sp)
    80002ccc:	00913423          	sd	s1,8(sp)
    80002cd0:	01213023          	sd	s2,0(sp)
    80002cd4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80002cd8:	00000913          	li	s2,0
    80002cdc:	0380006f          	j	80002d14 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInteger(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80002ce0:	ffffe097          	auipc	ra,0xffffe
    80002ce4:	584080e7          	jalr	1412(ra) # 80001264 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002ce8:	00148493          	addi	s1,s1,1
    80002cec:	000027b7          	lui	a5,0x2
    80002cf0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002cf4:	0097ee63          	bltu	a5,s1,80002d10 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002cf8:	00000713          	li	a4,0
    80002cfc:	000077b7          	lui	a5,0x7
    80002d00:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002d04:	fce7eee3          	bltu	a5,a4,80002ce0 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80002d08:	00170713          	addi	a4,a4,1
    80002d0c:	ff1ff06f          	j	80002cfc <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80002d10:	00190913          	addi	s2,s2,1
    80002d14:	00900793          	li	a5,9
    80002d18:	0327ec63          	bltu	a5,s2,80002d50 <_ZN7WorkerA11workerBodyAEPv+0x90>
        printString("A: i="); printInteger(i); printString("\n");
    80002d1c:	00004517          	auipc	a0,0x4
    80002d20:	30c50513          	addi	a0,a0,780 # 80007028 <CONSOLE_STATUS+0x18>
    80002d24:	00000097          	auipc	ra,0x0
    80002d28:	b68080e7          	jalr	-1176(ra) # 8000288c <_Z11printStringPKc>
    80002d2c:	00090513          	mv	a0,s2
    80002d30:	00000097          	auipc	ra,0x0
    80002d34:	ba0080e7          	jalr	-1120(ra) # 800028d0 <_Z12printIntegerm>
    80002d38:	00004517          	auipc	a0,0x4
    80002d3c:	3b050513          	addi	a0,a0,944 # 800070e8 <CONSOLE_STATUS+0xd8>
    80002d40:	00000097          	auipc	ra,0x0
    80002d44:	b4c080e7          	jalr	-1204(ra) # 8000288c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002d48:	00000493          	li	s1,0
    80002d4c:	fa1ff06f          	j	80002cec <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80002d50:	00004517          	auipc	a0,0x4
    80002d54:	30850513          	addi	a0,a0,776 # 80007058 <CONSOLE_STATUS+0x48>
    80002d58:	00000097          	auipc	ra,0x0
    80002d5c:	b34080e7          	jalr	-1228(ra) # 8000288c <_Z11printStringPKc>
    finishedA = true;
    80002d60:	00100793          	li	a5,1
    80002d64:	00006717          	auipc	a4,0x6
    80002d68:	9ef70623          	sb	a5,-1556(a4) # 80008750 <_ZL9finishedA>
}
    80002d6c:	01813083          	ld	ra,24(sp)
    80002d70:	01013403          	ld	s0,16(sp)
    80002d74:	00813483          	ld	s1,8(sp)
    80002d78:	00013903          	ld	s2,0(sp)
    80002d7c:	02010113          	addi	sp,sp,32
    80002d80:	00008067          	ret

0000000080002d84 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80002d84:	fe010113          	addi	sp,sp,-32
    80002d88:	00113c23          	sd	ra,24(sp)
    80002d8c:	00813823          	sd	s0,16(sp)
    80002d90:	00913423          	sd	s1,8(sp)
    80002d94:	01213023          	sd	s2,0(sp)
    80002d98:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80002d9c:	00000913          	li	s2,0
    80002da0:	0380006f          	j	80002dd8 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInteger(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80002da4:	ffffe097          	auipc	ra,0xffffe
    80002da8:	4c0080e7          	jalr	1216(ra) # 80001264 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002dac:	00148493          	addi	s1,s1,1
    80002db0:	000027b7          	lui	a5,0x2
    80002db4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002db8:	0097ee63          	bltu	a5,s1,80002dd4 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002dbc:	00000713          	li	a4,0
    80002dc0:	000077b7          	lui	a5,0x7
    80002dc4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002dc8:	fce7eee3          	bltu	a5,a4,80002da4 <_ZN7WorkerB11workerBodyBEPv+0x20>
    80002dcc:	00170713          	addi	a4,a4,1
    80002dd0:	ff1ff06f          	j	80002dc0 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80002dd4:	00190913          	addi	s2,s2,1
    80002dd8:	00f00793          	li	a5,15
    80002ddc:	0327ec63          	bltu	a5,s2,80002e14 <_ZN7WorkerB11workerBodyBEPv+0x90>
        printString("B: i="); printInteger(i); printString("\n");
    80002de0:	00004517          	auipc	a0,0x4
    80002de4:	28850513          	addi	a0,a0,648 # 80007068 <CONSOLE_STATUS+0x58>
    80002de8:	00000097          	auipc	ra,0x0
    80002dec:	aa4080e7          	jalr	-1372(ra) # 8000288c <_Z11printStringPKc>
    80002df0:	00090513          	mv	a0,s2
    80002df4:	00000097          	auipc	ra,0x0
    80002df8:	adc080e7          	jalr	-1316(ra) # 800028d0 <_Z12printIntegerm>
    80002dfc:	00004517          	auipc	a0,0x4
    80002e00:	2ec50513          	addi	a0,a0,748 # 800070e8 <CONSOLE_STATUS+0xd8>
    80002e04:	00000097          	auipc	ra,0x0
    80002e08:	a88080e7          	jalr	-1400(ra) # 8000288c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002e0c:	00000493          	li	s1,0
    80002e10:	fa1ff06f          	j	80002db0 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80002e14:	00004517          	auipc	a0,0x4
    80002e18:	27c50513          	addi	a0,a0,636 # 80007090 <CONSOLE_STATUS+0x80>
    80002e1c:	00000097          	auipc	ra,0x0
    80002e20:	a70080e7          	jalr	-1424(ra) # 8000288c <_Z11printStringPKc>
    finishedB = true;
    80002e24:	00100793          	li	a5,1
    80002e28:	00006717          	auipc	a4,0x6
    80002e2c:	92f704a3          	sb	a5,-1751(a4) # 80008751 <_ZL9finishedB>
    thread_dispatch();
    80002e30:	ffffe097          	auipc	ra,0xffffe
    80002e34:	434080e7          	jalr	1076(ra) # 80001264 <_Z15thread_dispatchv>
}
    80002e38:	01813083          	ld	ra,24(sp)
    80002e3c:	01013403          	ld	s0,16(sp)
    80002e40:	00813483          	ld	s1,8(sp)
    80002e44:	00013903          	ld	s2,0(sp)
    80002e48:	02010113          	addi	sp,sp,32
    80002e4c:	00008067          	ret

0000000080002e50 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80002e50:	fe010113          	addi	sp,sp,-32
    80002e54:	00113c23          	sd	ra,24(sp)
    80002e58:	00813823          	sd	s0,16(sp)
    80002e5c:	00913423          	sd	s1,8(sp)
    80002e60:	01213023          	sd	s2,0(sp)
    80002e64:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80002e68:	00000493          	li	s1,0
    80002e6c:	0380006f          	j	80002ea4 <_ZN7WorkerC11workerBodyCEPv+0x54>
    for (; i < 3; i++) {
        printString("C: i="); printInteger(i); printString("\n");
    80002e70:	00004517          	auipc	a0,0x4
    80002e74:	23050513          	addi	a0,a0,560 # 800070a0 <CONSOLE_STATUS+0x90>
    80002e78:	00000097          	auipc	ra,0x0
    80002e7c:	a14080e7          	jalr	-1516(ra) # 8000288c <_Z11printStringPKc>
    80002e80:	00048513          	mv	a0,s1
    80002e84:	00000097          	auipc	ra,0x0
    80002e88:	a4c080e7          	jalr	-1460(ra) # 800028d0 <_Z12printIntegerm>
    80002e8c:	00004517          	auipc	a0,0x4
    80002e90:	25c50513          	addi	a0,a0,604 # 800070e8 <CONSOLE_STATUS+0xd8>
    80002e94:	00000097          	auipc	ra,0x0
    80002e98:	9f8080e7          	jalr	-1544(ra) # 8000288c <_Z11printStringPKc>
    for (; i < 3; i++) {
    80002e9c:	0014849b          	addiw	s1,s1,1
    80002ea0:	0ff4f493          	andi	s1,s1,255
    80002ea4:	00200793          	li	a5,2
    80002ea8:	fc97f4e3          	bgeu	a5,s1,80002e70 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80002eac:	00004517          	auipc	a0,0x4
    80002eb0:	28c50513          	addi	a0,a0,652 # 80007138 <_ZZ12printIntegermE6digits+0x10>
    80002eb4:	00000097          	auipc	ra,0x0
    80002eb8:	9d8080e7          	jalr	-1576(ra) # 8000288c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80002ebc:	00700313          	li	t1,7
    thread_dispatch();
    80002ec0:	ffffe097          	auipc	ra,0xffffe
    80002ec4:	3a4080e7          	jalr	932(ra) # 80001264 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80002ec8:	00030913          	mv	s2,t1

    printString("C: t1="); printInteger(t1); printString("\n");
    80002ecc:	00004517          	auipc	a0,0x4
    80002ed0:	27c50513          	addi	a0,a0,636 # 80007148 <_ZZ12printIntegermE6digits+0x20>
    80002ed4:	00000097          	auipc	ra,0x0
    80002ed8:	9b8080e7          	jalr	-1608(ra) # 8000288c <_Z11printStringPKc>
    80002edc:	00090513          	mv	a0,s2
    80002ee0:	00000097          	auipc	ra,0x0
    80002ee4:	9f0080e7          	jalr	-1552(ra) # 800028d0 <_Z12printIntegerm>
    80002ee8:	00004517          	auipc	a0,0x4
    80002eec:	20050513          	addi	a0,a0,512 # 800070e8 <CONSOLE_STATUS+0xd8>
    80002ef0:	00000097          	auipc	ra,0x0
    80002ef4:	99c080e7          	jalr	-1636(ra) # 8000288c <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80002ef8:	00c00513          	li	a0,12
    80002efc:	00000097          	auipc	ra,0x0
    80002f00:	d50080e7          	jalr	-688(ra) # 80002c4c <_ZL9fibonaccim>
    80002f04:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInteger(result); printString("\n");
    80002f08:	00004517          	auipc	a0,0x4
    80002f0c:	1b050513          	addi	a0,a0,432 # 800070b8 <CONSOLE_STATUS+0xa8>
    80002f10:	00000097          	auipc	ra,0x0
    80002f14:	97c080e7          	jalr	-1668(ra) # 8000288c <_Z11printStringPKc>
    80002f18:	00090513          	mv	a0,s2
    80002f1c:	00000097          	auipc	ra,0x0
    80002f20:	9b4080e7          	jalr	-1612(ra) # 800028d0 <_Z12printIntegerm>
    80002f24:	00004517          	auipc	a0,0x4
    80002f28:	1c450513          	addi	a0,a0,452 # 800070e8 <CONSOLE_STATUS+0xd8>
    80002f2c:	00000097          	auipc	ra,0x0
    80002f30:	960080e7          	jalr	-1696(ra) # 8000288c <_Z11printStringPKc>
    80002f34:	0380006f          	j	80002f6c <_ZN7WorkerC11workerBodyCEPv+0x11c>

    for (; i < 6; i++) {
        printString("C: i="); printInteger(i); printString("\n");
    80002f38:	00004517          	auipc	a0,0x4
    80002f3c:	16850513          	addi	a0,a0,360 # 800070a0 <CONSOLE_STATUS+0x90>
    80002f40:	00000097          	auipc	ra,0x0
    80002f44:	94c080e7          	jalr	-1716(ra) # 8000288c <_Z11printStringPKc>
    80002f48:	00048513          	mv	a0,s1
    80002f4c:	00000097          	auipc	ra,0x0
    80002f50:	984080e7          	jalr	-1660(ra) # 800028d0 <_Z12printIntegerm>
    80002f54:	00004517          	auipc	a0,0x4
    80002f58:	19450513          	addi	a0,a0,404 # 800070e8 <CONSOLE_STATUS+0xd8>
    80002f5c:	00000097          	auipc	ra,0x0
    80002f60:	930080e7          	jalr	-1744(ra) # 8000288c <_Z11printStringPKc>
    for (; i < 6; i++) {
    80002f64:	0014849b          	addiw	s1,s1,1
    80002f68:	0ff4f493          	andi	s1,s1,255
    80002f6c:	00500793          	li	a5,5
    80002f70:	fc97f4e3          	bgeu	a5,s1,80002f38 <_ZN7WorkerC11workerBodyCEPv+0xe8>
    }

    printString("C finished!\n");
    80002f74:	00004517          	auipc	a0,0x4
    80002f78:	15450513          	addi	a0,a0,340 # 800070c8 <CONSOLE_STATUS+0xb8>
    80002f7c:	00000097          	auipc	ra,0x0
    80002f80:	910080e7          	jalr	-1776(ra) # 8000288c <_Z11printStringPKc>
    finishedC = true;
    80002f84:	00100793          	li	a5,1
    80002f88:	00005717          	auipc	a4,0x5
    80002f8c:	7cf70523          	sb	a5,1994(a4) # 80008752 <_ZL9finishedC>
    thread_dispatch();
    80002f90:	ffffe097          	auipc	ra,0xffffe
    80002f94:	2d4080e7          	jalr	724(ra) # 80001264 <_Z15thread_dispatchv>
}
    80002f98:	01813083          	ld	ra,24(sp)
    80002f9c:	01013403          	ld	s0,16(sp)
    80002fa0:	00813483          	ld	s1,8(sp)
    80002fa4:	00013903          	ld	s2,0(sp)
    80002fa8:	02010113          	addi	sp,sp,32
    80002fac:	00008067          	ret

0000000080002fb0 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80002fb0:	fe010113          	addi	sp,sp,-32
    80002fb4:	00113c23          	sd	ra,24(sp)
    80002fb8:	00813823          	sd	s0,16(sp)
    80002fbc:	00913423          	sd	s1,8(sp)
    80002fc0:	01213023          	sd	s2,0(sp)
    80002fc4:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80002fc8:	00a00493          	li	s1,10
    80002fcc:	0380006f          	j	80003004 <_ZN7WorkerD11workerBodyDEPv+0x54>
    for (; i < 13; i++) {
        printString("D: i="); printInteger(i); printString("\n");
    80002fd0:	00004517          	auipc	a0,0x4
    80002fd4:	18050513          	addi	a0,a0,384 # 80007150 <_ZZ12printIntegermE6digits+0x28>
    80002fd8:	00000097          	auipc	ra,0x0
    80002fdc:	8b4080e7          	jalr	-1868(ra) # 8000288c <_Z11printStringPKc>
    80002fe0:	00048513          	mv	a0,s1
    80002fe4:	00000097          	auipc	ra,0x0
    80002fe8:	8ec080e7          	jalr	-1812(ra) # 800028d0 <_Z12printIntegerm>
    80002fec:	00004517          	auipc	a0,0x4
    80002ff0:	0fc50513          	addi	a0,a0,252 # 800070e8 <CONSOLE_STATUS+0xd8>
    80002ff4:	00000097          	auipc	ra,0x0
    80002ff8:	898080e7          	jalr	-1896(ra) # 8000288c <_Z11printStringPKc>
    for (; i < 13; i++) {
    80002ffc:	0014849b          	addiw	s1,s1,1
    80003000:	0ff4f493          	andi	s1,s1,255
    80003004:	00c00793          	li	a5,12
    80003008:	fc97f4e3          	bgeu	a5,s1,80002fd0 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    8000300c:	00004517          	auipc	a0,0x4
    80003010:	14c50513          	addi	a0,a0,332 # 80007158 <_ZZ12printIntegermE6digits+0x30>
    80003014:	00000097          	auipc	ra,0x0
    80003018:	878080e7          	jalr	-1928(ra) # 8000288c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    8000301c:	00500313          	li	t1,5
    thread_dispatch();
    80003020:	ffffe097          	auipc	ra,0xffffe
    80003024:	244080e7          	jalr	580(ra) # 80001264 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003028:	01000513          	li	a0,16
    8000302c:	00000097          	auipc	ra,0x0
    80003030:	c20080e7          	jalr	-992(ra) # 80002c4c <_ZL9fibonaccim>
    80003034:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInteger(result); printString("\n");
    80003038:	00004517          	auipc	a0,0x4
    8000303c:	13050513          	addi	a0,a0,304 # 80007168 <_ZZ12printIntegermE6digits+0x40>
    80003040:	00000097          	auipc	ra,0x0
    80003044:	84c080e7          	jalr	-1972(ra) # 8000288c <_Z11printStringPKc>
    80003048:	00090513          	mv	a0,s2
    8000304c:	00000097          	auipc	ra,0x0
    80003050:	884080e7          	jalr	-1916(ra) # 800028d0 <_Z12printIntegerm>
    80003054:	00004517          	auipc	a0,0x4
    80003058:	09450513          	addi	a0,a0,148 # 800070e8 <CONSOLE_STATUS+0xd8>
    8000305c:	00000097          	auipc	ra,0x0
    80003060:	830080e7          	jalr	-2000(ra) # 8000288c <_Z11printStringPKc>
    80003064:	0380006f          	j	8000309c <_ZN7WorkerD11workerBodyDEPv+0xec>

    for (; i < 16; i++) {
        printString("D: i="); printInteger(i); printString("\n");
    80003068:	00004517          	auipc	a0,0x4
    8000306c:	0e850513          	addi	a0,a0,232 # 80007150 <_ZZ12printIntegermE6digits+0x28>
    80003070:	00000097          	auipc	ra,0x0
    80003074:	81c080e7          	jalr	-2020(ra) # 8000288c <_Z11printStringPKc>
    80003078:	00048513          	mv	a0,s1
    8000307c:	00000097          	auipc	ra,0x0
    80003080:	854080e7          	jalr	-1964(ra) # 800028d0 <_Z12printIntegerm>
    80003084:	00004517          	auipc	a0,0x4
    80003088:	06450513          	addi	a0,a0,100 # 800070e8 <CONSOLE_STATUS+0xd8>
    8000308c:	00000097          	auipc	ra,0x0
    80003090:	800080e7          	jalr	-2048(ra) # 8000288c <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003094:	0014849b          	addiw	s1,s1,1
    80003098:	0ff4f493          	andi	s1,s1,255
    8000309c:	00f00793          	li	a5,15
    800030a0:	fc97f4e3          	bgeu	a5,s1,80003068 <_ZN7WorkerD11workerBodyDEPv+0xb8>
    }

    printString("D finished!\n");
    800030a4:	00004517          	auipc	a0,0x4
    800030a8:	0d450513          	addi	a0,a0,212 # 80007178 <_ZZ12printIntegermE6digits+0x50>
    800030ac:	fffff097          	auipc	ra,0xfffff
    800030b0:	7e0080e7          	jalr	2016(ra) # 8000288c <_Z11printStringPKc>
    finishedD = true;
    800030b4:	00100793          	li	a5,1
    800030b8:	00005717          	auipc	a4,0x5
    800030bc:	68f70da3          	sb	a5,1691(a4) # 80008753 <_ZL9finishedD>
    thread_dispatch();
    800030c0:	ffffe097          	auipc	ra,0xffffe
    800030c4:	1a4080e7          	jalr	420(ra) # 80001264 <_Z15thread_dispatchv>
}
    800030c8:	01813083          	ld	ra,24(sp)
    800030cc:	01013403          	ld	s0,16(sp)
    800030d0:	00813483          	ld	s1,8(sp)
    800030d4:	00013903          	ld	s2,0(sp)
    800030d8:	02010113          	addi	sp,sp,32
    800030dc:	00008067          	ret

00000000800030e0 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    800030e0:	fc010113          	addi	sp,sp,-64
    800030e4:	02113c23          	sd	ra,56(sp)
    800030e8:	02813823          	sd	s0,48(sp)
    800030ec:	02913423          	sd	s1,40(sp)
    800030f0:	03213023          	sd	s2,32(sp)
    800030f4:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    800030f8:	02000513          	li	a0,32
    800030fc:	fffff097          	auipc	ra,0xfffff
    80003100:	c90080e7          	jalr	-880(ra) # 80001d8c <_Znwm>
    80003104:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80003108:	fffff097          	auipc	ra,0xfffff
    8000310c:	e0c080e7          	jalr	-500(ra) # 80001f14 <_ZN6ThreadC1Ev>
    80003110:	00005797          	auipc	a5,0x5
    80003114:	4f078793          	addi	a5,a5,1264 # 80008600 <_ZTV7WorkerA+0x10>
    80003118:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    8000311c:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80003120:	00004517          	auipc	a0,0x4
    80003124:	06850513          	addi	a0,a0,104 # 80007188 <_ZZ12printIntegermE6digits+0x60>
    80003128:	fffff097          	auipc	ra,0xfffff
    8000312c:	764080e7          	jalr	1892(ra) # 8000288c <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80003130:	02000513          	li	a0,32
    80003134:	fffff097          	auipc	ra,0xfffff
    80003138:	c58080e7          	jalr	-936(ra) # 80001d8c <_Znwm>
    8000313c:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80003140:	fffff097          	auipc	ra,0xfffff
    80003144:	dd4080e7          	jalr	-556(ra) # 80001f14 <_ZN6ThreadC1Ev>
    80003148:	00005797          	auipc	a5,0x5
    8000314c:	4e078793          	addi	a5,a5,1248 # 80008628 <_ZTV7WorkerB+0x10>
    80003150:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80003154:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80003158:	00004517          	auipc	a0,0x4
    8000315c:	04850513          	addi	a0,a0,72 # 800071a0 <_ZZ12printIntegermE6digits+0x78>
    80003160:	fffff097          	auipc	ra,0xfffff
    80003164:	72c080e7          	jalr	1836(ra) # 8000288c <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80003168:	02000513          	li	a0,32
    8000316c:	fffff097          	auipc	ra,0xfffff
    80003170:	c20080e7          	jalr	-992(ra) # 80001d8c <_Znwm>
    80003174:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80003178:	fffff097          	auipc	ra,0xfffff
    8000317c:	d9c080e7          	jalr	-612(ra) # 80001f14 <_ZN6ThreadC1Ev>
    80003180:	00005797          	auipc	a5,0x5
    80003184:	4d078793          	addi	a5,a5,1232 # 80008650 <_ZTV7WorkerC+0x10>
    80003188:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    8000318c:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80003190:	00004517          	auipc	a0,0x4
    80003194:	02850513          	addi	a0,a0,40 # 800071b8 <_ZZ12printIntegermE6digits+0x90>
    80003198:	fffff097          	auipc	ra,0xfffff
    8000319c:	6f4080e7          	jalr	1780(ra) # 8000288c <_Z11printStringPKc>

    threads[3] = new WorkerD();
    800031a0:	02000513          	li	a0,32
    800031a4:	fffff097          	auipc	ra,0xfffff
    800031a8:	be8080e7          	jalr	-1048(ra) # 80001d8c <_Znwm>
    800031ac:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    800031b0:	fffff097          	auipc	ra,0xfffff
    800031b4:	d64080e7          	jalr	-668(ra) # 80001f14 <_ZN6ThreadC1Ev>
    800031b8:	00005797          	auipc	a5,0x5
    800031bc:	4c078793          	addi	a5,a5,1216 # 80008678 <_ZTV7WorkerD+0x10>
    800031c0:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    800031c4:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    800031c8:	00004517          	auipc	a0,0x4
    800031cc:	00850513          	addi	a0,a0,8 # 800071d0 <_ZZ12printIntegermE6digits+0xa8>
    800031d0:	fffff097          	auipc	ra,0xfffff
    800031d4:	6bc080e7          	jalr	1724(ra) # 8000288c <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    800031d8:	00000493          	li	s1,0
    800031dc:	00300793          	li	a5,3
    800031e0:	0297c663          	blt	a5,s1,8000320c <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    800031e4:	00349793          	slli	a5,s1,0x3
    800031e8:	fe040713          	addi	a4,s0,-32
    800031ec:	00f707b3          	add	a5,a4,a5
    800031f0:	fe07b503          	ld	a0,-32(a5)
    800031f4:	fffff097          	auipc	ra,0xfffff
    800031f8:	d50080e7          	jalr	-688(ra) # 80001f44 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    800031fc:	0014849b          	addiw	s1,s1,1
    80003200:	fddff06f          	j	800031dc <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80003204:	fffff097          	auipc	ra,0xfffff
    80003208:	ce8080e7          	jalr	-792(ra) # 80001eec <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    8000320c:	00005797          	auipc	a5,0x5
    80003210:	5447c783          	lbu	a5,1348(a5) # 80008750 <_ZL9finishedA>
    80003214:	fe0788e3          	beqz	a5,80003204 <_Z20Threads_CPP_API_testv+0x124>
    80003218:	00005797          	auipc	a5,0x5
    8000321c:	5397c783          	lbu	a5,1337(a5) # 80008751 <_ZL9finishedB>
    80003220:	fe0782e3          	beqz	a5,80003204 <_Z20Threads_CPP_API_testv+0x124>
    80003224:	00005797          	auipc	a5,0x5
    80003228:	52e7c783          	lbu	a5,1326(a5) # 80008752 <_ZL9finishedC>
    8000322c:	fc078ce3          	beqz	a5,80003204 <_Z20Threads_CPP_API_testv+0x124>
    80003230:	00005797          	auipc	a5,0x5
    80003234:	5237c783          	lbu	a5,1315(a5) # 80008753 <_ZL9finishedD>
    80003238:	fc0786e3          	beqz	a5,80003204 <_Z20Threads_CPP_API_testv+0x124>
    8000323c:	fc040493          	addi	s1,s0,-64
    80003240:	0080006f          	j	80003248 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    80003244:	00848493          	addi	s1,s1,8
    80003248:	fe040793          	addi	a5,s0,-32
    8000324c:	08f48663          	beq	s1,a5,800032d8 <_Z20Threads_CPP_API_testv+0x1f8>
    80003250:	0004b503          	ld	a0,0(s1)
    80003254:	fe0508e3          	beqz	a0,80003244 <_Z20Threads_CPP_API_testv+0x164>
    80003258:	00053783          	ld	a5,0(a0)
    8000325c:	0087b783          	ld	a5,8(a5)
    80003260:	000780e7          	jalr	a5
    80003264:	fe1ff06f          	j	80003244 <_Z20Threads_CPP_API_testv+0x164>
    80003268:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    8000326c:	00048513          	mv	a0,s1
    80003270:	fffff097          	auipc	ra,0xfffff
    80003274:	b44080e7          	jalr	-1212(ra) # 80001db4 <_ZdlPv>
    80003278:	00090513          	mv	a0,s2
    8000327c:	00006097          	auipc	ra,0x6
    80003280:	5ac080e7          	jalr	1452(ra) # 80009828 <_Unwind_Resume>
    80003284:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80003288:	00048513          	mv	a0,s1
    8000328c:	fffff097          	auipc	ra,0xfffff
    80003290:	b28080e7          	jalr	-1240(ra) # 80001db4 <_ZdlPv>
    80003294:	00090513          	mv	a0,s2
    80003298:	00006097          	auipc	ra,0x6
    8000329c:	590080e7          	jalr	1424(ra) # 80009828 <_Unwind_Resume>
    800032a0:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    800032a4:	00048513          	mv	a0,s1
    800032a8:	fffff097          	auipc	ra,0xfffff
    800032ac:	b0c080e7          	jalr	-1268(ra) # 80001db4 <_ZdlPv>
    800032b0:	00090513          	mv	a0,s2
    800032b4:	00006097          	auipc	ra,0x6
    800032b8:	574080e7          	jalr	1396(ra) # 80009828 <_Unwind_Resume>
    800032bc:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    800032c0:	00048513          	mv	a0,s1
    800032c4:	fffff097          	auipc	ra,0xfffff
    800032c8:	af0080e7          	jalr	-1296(ra) # 80001db4 <_ZdlPv>
    800032cc:	00090513          	mv	a0,s2
    800032d0:	00006097          	auipc	ra,0x6
    800032d4:	558080e7          	jalr	1368(ra) # 80009828 <_Unwind_Resume>
}
    800032d8:	03813083          	ld	ra,56(sp)
    800032dc:	03013403          	ld	s0,48(sp)
    800032e0:	02813483          	ld	s1,40(sp)
    800032e4:	02013903          	ld	s2,32(sp)
    800032e8:	04010113          	addi	sp,sp,64
    800032ec:	00008067          	ret

00000000800032f0 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    800032f0:	ff010113          	addi	sp,sp,-16
    800032f4:	00113423          	sd	ra,8(sp)
    800032f8:	00813023          	sd	s0,0(sp)
    800032fc:	01010413          	addi	s0,sp,16
    80003300:	00005797          	auipc	a5,0x5
    80003304:	30078793          	addi	a5,a5,768 # 80008600 <_ZTV7WorkerA+0x10>
    80003308:	00f53023          	sd	a5,0(a0)
    8000330c:	fffff097          	auipc	ra,0xfffff
    80003310:	ad0080e7          	jalr	-1328(ra) # 80001ddc <_ZN6ThreadD1Ev>
    80003314:	00813083          	ld	ra,8(sp)
    80003318:	00013403          	ld	s0,0(sp)
    8000331c:	01010113          	addi	sp,sp,16
    80003320:	00008067          	ret

0000000080003324 <_ZN7WorkerAD0Ev>:
    80003324:	fe010113          	addi	sp,sp,-32
    80003328:	00113c23          	sd	ra,24(sp)
    8000332c:	00813823          	sd	s0,16(sp)
    80003330:	00913423          	sd	s1,8(sp)
    80003334:	02010413          	addi	s0,sp,32
    80003338:	00050493          	mv	s1,a0
    8000333c:	00005797          	auipc	a5,0x5
    80003340:	2c478793          	addi	a5,a5,708 # 80008600 <_ZTV7WorkerA+0x10>
    80003344:	00f53023          	sd	a5,0(a0)
    80003348:	fffff097          	auipc	ra,0xfffff
    8000334c:	a94080e7          	jalr	-1388(ra) # 80001ddc <_ZN6ThreadD1Ev>
    80003350:	00048513          	mv	a0,s1
    80003354:	fffff097          	auipc	ra,0xfffff
    80003358:	a60080e7          	jalr	-1440(ra) # 80001db4 <_ZdlPv>
    8000335c:	01813083          	ld	ra,24(sp)
    80003360:	01013403          	ld	s0,16(sp)
    80003364:	00813483          	ld	s1,8(sp)
    80003368:	02010113          	addi	sp,sp,32
    8000336c:	00008067          	ret

0000000080003370 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80003370:	ff010113          	addi	sp,sp,-16
    80003374:	00113423          	sd	ra,8(sp)
    80003378:	00813023          	sd	s0,0(sp)
    8000337c:	01010413          	addi	s0,sp,16
    80003380:	00005797          	auipc	a5,0x5
    80003384:	2a878793          	addi	a5,a5,680 # 80008628 <_ZTV7WorkerB+0x10>
    80003388:	00f53023          	sd	a5,0(a0)
    8000338c:	fffff097          	auipc	ra,0xfffff
    80003390:	a50080e7          	jalr	-1456(ra) # 80001ddc <_ZN6ThreadD1Ev>
    80003394:	00813083          	ld	ra,8(sp)
    80003398:	00013403          	ld	s0,0(sp)
    8000339c:	01010113          	addi	sp,sp,16
    800033a0:	00008067          	ret

00000000800033a4 <_ZN7WorkerBD0Ev>:
    800033a4:	fe010113          	addi	sp,sp,-32
    800033a8:	00113c23          	sd	ra,24(sp)
    800033ac:	00813823          	sd	s0,16(sp)
    800033b0:	00913423          	sd	s1,8(sp)
    800033b4:	02010413          	addi	s0,sp,32
    800033b8:	00050493          	mv	s1,a0
    800033bc:	00005797          	auipc	a5,0x5
    800033c0:	26c78793          	addi	a5,a5,620 # 80008628 <_ZTV7WorkerB+0x10>
    800033c4:	00f53023          	sd	a5,0(a0)
    800033c8:	fffff097          	auipc	ra,0xfffff
    800033cc:	a14080e7          	jalr	-1516(ra) # 80001ddc <_ZN6ThreadD1Ev>
    800033d0:	00048513          	mv	a0,s1
    800033d4:	fffff097          	auipc	ra,0xfffff
    800033d8:	9e0080e7          	jalr	-1568(ra) # 80001db4 <_ZdlPv>
    800033dc:	01813083          	ld	ra,24(sp)
    800033e0:	01013403          	ld	s0,16(sp)
    800033e4:	00813483          	ld	s1,8(sp)
    800033e8:	02010113          	addi	sp,sp,32
    800033ec:	00008067          	ret

00000000800033f0 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    800033f0:	ff010113          	addi	sp,sp,-16
    800033f4:	00113423          	sd	ra,8(sp)
    800033f8:	00813023          	sd	s0,0(sp)
    800033fc:	01010413          	addi	s0,sp,16
    80003400:	00005797          	auipc	a5,0x5
    80003404:	25078793          	addi	a5,a5,592 # 80008650 <_ZTV7WorkerC+0x10>
    80003408:	00f53023          	sd	a5,0(a0)
    8000340c:	fffff097          	auipc	ra,0xfffff
    80003410:	9d0080e7          	jalr	-1584(ra) # 80001ddc <_ZN6ThreadD1Ev>
    80003414:	00813083          	ld	ra,8(sp)
    80003418:	00013403          	ld	s0,0(sp)
    8000341c:	01010113          	addi	sp,sp,16
    80003420:	00008067          	ret

0000000080003424 <_ZN7WorkerCD0Ev>:
    80003424:	fe010113          	addi	sp,sp,-32
    80003428:	00113c23          	sd	ra,24(sp)
    8000342c:	00813823          	sd	s0,16(sp)
    80003430:	00913423          	sd	s1,8(sp)
    80003434:	02010413          	addi	s0,sp,32
    80003438:	00050493          	mv	s1,a0
    8000343c:	00005797          	auipc	a5,0x5
    80003440:	21478793          	addi	a5,a5,532 # 80008650 <_ZTV7WorkerC+0x10>
    80003444:	00f53023          	sd	a5,0(a0)
    80003448:	fffff097          	auipc	ra,0xfffff
    8000344c:	994080e7          	jalr	-1644(ra) # 80001ddc <_ZN6ThreadD1Ev>
    80003450:	00048513          	mv	a0,s1
    80003454:	fffff097          	auipc	ra,0xfffff
    80003458:	960080e7          	jalr	-1696(ra) # 80001db4 <_ZdlPv>
    8000345c:	01813083          	ld	ra,24(sp)
    80003460:	01013403          	ld	s0,16(sp)
    80003464:	00813483          	ld	s1,8(sp)
    80003468:	02010113          	addi	sp,sp,32
    8000346c:	00008067          	ret

0000000080003470 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80003470:	ff010113          	addi	sp,sp,-16
    80003474:	00113423          	sd	ra,8(sp)
    80003478:	00813023          	sd	s0,0(sp)
    8000347c:	01010413          	addi	s0,sp,16
    80003480:	00005797          	auipc	a5,0x5
    80003484:	1f878793          	addi	a5,a5,504 # 80008678 <_ZTV7WorkerD+0x10>
    80003488:	00f53023          	sd	a5,0(a0)
    8000348c:	fffff097          	auipc	ra,0xfffff
    80003490:	950080e7          	jalr	-1712(ra) # 80001ddc <_ZN6ThreadD1Ev>
    80003494:	00813083          	ld	ra,8(sp)
    80003498:	00013403          	ld	s0,0(sp)
    8000349c:	01010113          	addi	sp,sp,16
    800034a0:	00008067          	ret

00000000800034a4 <_ZN7WorkerDD0Ev>:
    800034a4:	fe010113          	addi	sp,sp,-32
    800034a8:	00113c23          	sd	ra,24(sp)
    800034ac:	00813823          	sd	s0,16(sp)
    800034b0:	00913423          	sd	s1,8(sp)
    800034b4:	02010413          	addi	s0,sp,32
    800034b8:	00050493          	mv	s1,a0
    800034bc:	00005797          	auipc	a5,0x5
    800034c0:	1bc78793          	addi	a5,a5,444 # 80008678 <_ZTV7WorkerD+0x10>
    800034c4:	00f53023          	sd	a5,0(a0)
    800034c8:	fffff097          	auipc	ra,0xfffff
    800034cc:	914080e7          	jalr	-1772(ra) # 80001ddc <_ZN6ThreadD1Ev>
    800034d0:	00048513          	mv	a0,s1
    800034d4:	fffff097          	auipc	ra,0xfffff
    800034d8:	8e0080e7          	jalr	-1824(ra) # 80001db4 <_ZdlPv>
    800034dc:	01813083          	ld	ra,24(sp)
    800034e0:	01013403          	ld	s0,16(sp)
    800034e4:	00813483          	ld	s1,8(sp)
    800034e8:	02010113          	addi	sp,sp,32
    800034ec:	00008067          	ret

00000000800034f0 <_ZN7WorkerA3runEv>:
    void run() override {
    800034f0:	ff010113          	addi	sp,sp,-16
    800034f4:	00113423          	sd	ra,8(sp)
    800034f8:	00813023          	sd	s0,0(sp)
    800034fc:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80003500:	00000593          	li	a1,0
    80003504:	fffff097          	auipc	ra,0xfffff
    80003508:	7bc080e7          	jalr	1980(ra) # 80002cc0 <_ZN7WorkerA11workerBodyAEPv>
    }
    8000350c:	00813083          	ld	ra,8(sp)
    80003510:	00013403          	ld	s0,0(sp)
    80003514:	01010113          	addi	sp,sp,16
    80003518:	00008067          	ret

000000008000351c <_ZN7WorkerB3runEv>:
    void run() override {
    8000351c:	ff010113          	addi	sp,sp,-16
    80003520:	00113423          	sd	ra,8(sp)
    80003524:	00813023          	sd	s0,0(sp)
    80003528:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    8000352c:	00000593          	li	a1,0
    80003530:	00000097          	auipc	ra,0x0
    80003534:	854080e7          	jalr	-1964(ra) # 80002d84 <_ZN7WorkerB11workerBodyBEPv>
    }
    80003538:	00813083          	ld	ra,8(sp)
    8000353c:	00013403          	ld	s0,0(sp)
    80003540:	01010113          	addi	sp,sp,16
    80003544:	00008067          	ret

0000000080003548 <_ZN7WorkerC3runEv>:
    void run() override {
    80003548:	ff010113          	addi	sp,sp,-16
    8000354c:	00113423          	sd	ra,8(sp)
    80003550:	00813023          	sd	s0,0(sp)
    80003554:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80003558:	00000593          	li	a1,0
    8000355c:	00000097          	auipc	ra,0x0
    80003560:	8f4080e7          	jalr	-1804(ra) # 80002e50 <_ZN7WorkerC11workerBodyCEPv>
    }
    80003564:	00813083          	ld	ra,8(sp)
    80003568:	00013403          	ld	s0,0(sp)
    8000356c:	01010113          	addi	sp,sp,16
    80003570:	00008067          	ret

0000000080003574 <_ZN7WorkerD3runEv>:
    void run() override {
    80003574:	ff010113          	addi	sp,sp,-16
    80003578:	00113423          	sd	ra,8(sp)
    8000357c:	00813023          	sd	s0,0(sp)
    80003580:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80003584:	00000593          	li	a1,0
    80003588:	00000097          	auipc	ra,0x0
    8000358c:	a28080e7          	jalr	-1496(ra) # 80002fb0 <_ZN7WorkerD11workerBodyDEPv>
    }
    80003590:	00813083          	ld	ra,8(sp)
    80003594:	00013403          	ld	s0,0(sp)
    80003598:	01010113          	addi	sp,sp,16
    8000359c:	00008067          	ret

00000000800035a0 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800035a0:	fe010113          	addi	sp,sp,-32
    800035a4:	00113c23          	sd	ra,24(sp)
    800035a8:	00813823          	sd	s0,16(sp)
    800035ac:	00913423          	sd	s1,8(sp)
    800035b0:	01213023          	sd	s2,0(sp)
    800035b4:	02010413          	addi	s0,sp,32
    800035b8:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800035bc:	00100793          	li	a5,1
    800035c0:	02a7f863          	bgeu	a5,a0,800035f0 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800035c4:	00a00793          	li	a5,10
    800035c8:	02f577b3          	remu	a5,a0,a5
    800035cc:	02078e63          	beqz	a5,80003608 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800035d0:	fff48513          	addi	a0,s1,-1
    800035d4:	00000097          	auipc	ra,0x0
    800035d8:	fcc080e7          	jalr	-52(ra) # 800035a0 <_ZL9fibonaccim>
    800035dc:	00050913          	mv	s2,a0
    800035e0:	ffe48513          	addi	a0,s1,-2
    800035e4:	00000097          	auipc	ra,0x0
    800035e8:	fbc080e7          	jalr	-68(ra) # 800035a0 <_ZL9fibonaccim>
    800035ec:	00a90533          	add	a0,s2,a0
}
    800035f0:	01813083          	ld	ra,24(sp)
    800035f4:	01013403          	ld	s0,16(sp)
    800035f8:	00813483          	ld	s1,8(sp)
    800035fc:	00013903          	ld	s2,0(sp)
    80003600:	02010113          	addi	sp,sp,32
    80003604:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003608:	ffffe097          	auipc	ra,0xffffe
    8000360c:	c5c080e7          	jalr	-932(ra) # 80001264 <_Z15thread_dispatchv>
    80003610:	fc1ff06f          	j	800035d0 <_ZL9fibonaccim+0x30>

0000000080003614 <_ZL11workerBodyDPv>:
    printString("C finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80003614:	fe010113          	addi	sp,sp,-32
    80003618:	00113c23          	sd	ra,24(sp)
    8000361c:	00813823          	sd	s0,16(sp)
    80003620:	00913423          	sd	s1,8(sp)
    80003624:	01213023          	sd	s2,0(sp)
    80003628:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    8000362c:	00a00493          	li	s1,10
    80003630:	0380006f          	j	80003668 <_ZL11workerBodyDPv+0x54>
    for (; i < 13; i++) {
        printString("D: i="); printInteger(i); printString("\n");
    80003634:	00004517          	auipc	a0,0x4
    80003638:	b1c50513          	addi	a0,a0,-1252 # 80007150 <_ZZ12printIntegermE6digits+0x28>
    8000363c:	fffff097          	auipc	ra,0xfffff
    80003640:	250080e7          	jalr	592(ra) # 8000288c <_Z11printStringPKc>
    80003644:	00048513          	mv	a0,s1
    80003648:	fffff097          	auipc	ra,0xfffff
    8000364c:	288080e7          	jalr	648(ra) # 800028d0 <_Z12printIntegerm>
    80003650:	00004517          	auipc	a0,0x4
    80003654:	a9850513          	addi	a0,a0,-1384 # 800070e8 <CONSOLE_STATUS+0xd8>
    80003658:	fffff097          	auipc	ra,0xfffff
    8000365c:	234080e7          	jalr	564(ra) # 8000288c <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003660:	0014849b          	addiw	s1,s1,1
    80003664:	0ff4f493          	andi	s1,s1,255
    80003668:	00c00793          	li	a5,12
    8000366c:	fc97f4e3          	bgeu	a5,s1,80003634 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80003670:	00004517          	auipc	a0,0x4
    80003674:	ae850513          	addi	a0,a0,-1304 # 80007158 <_ZZ12printIntegermE6digits+0x30>
    80003678:	fffff097          	auipc	ra,0xfffff
    8000367c:	214080e7          	jalr	532(ra) # 8000288c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003680:	00500313          	li	t1,5
    thread_dispatch();
    80003684:	ffffe097          	auipc	ra,0xffffe
    80003688:	be0080e7          	jalr	-1056(ra) # 80001264 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    8000368c:	01000513          	li	a0,16
    80003690:	00000097          	auipc	ra,0x0
    80003694:	f10080e7          	jalr	-240(ra) # 800035a0 <_ZL9fibonaccim>
    80003698:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInteger(result); printString("\n");
    8000369c:	00004517          	auipc	a0,0x4
    800036a0:	acc50513          	addi	a0,a0,-1332 # 80007168 <_ZZ12printIntegermE6digits+0x40>
    800036a4:	fffff097          	auipc	ra,0xfffff
    800036a8:	1e8080e7          	jalr	488(ra) # 8000288c <_Z11printStringPKc>
    800036ac:	00090513          	mv	a0,s2
    800036b0:	fffff097          	auipc	ra,0xfffff
    800036b4:	220080e7          	jalr	544(ra) # 800028d0 <_Z12printIntegerm>
    800036b8:	00004517          	auipc	a0,0x4
    800036bc:	a3050513          	addi	a0,a0,-1488 # 800070e8 <CONSOLE_STATUS+0xd8>
    800036c0:	fffff097          	auipc	ra,0xfffff
    800036c4:	1cc080e7          	jalr	460(ra) # 8000288c <_Z11printStringPKc>
    800036c8:	0380006f          	j	80003700 <_ZL11workerBodyDPv+0xec>

    for (; i < 16; i++) {
        printString("D: i="); printInteger(i); printString("\n");
    800036cc:	00004517          	auipc	a0,0x4
    800036d0:	a8450513          	addi	a0,a0,-1404 # 80007150 <_ZZ12printIntegermE6digits+0x28>
    800036d4:	fffff097          	auipc	ra,0xfffff
    800036d8:	1b8080e7          	jalr	440(ra) # 8000288c <_Z11printStringPKc>
    800036dc:	00048513          	mv	a0,s1
    800036e0:	fffff097          	auipc	ra,0xfffff
    800036e4:	1f0080e7          	jalr	496(ra) # 800028d0 <_Z12printIntegerm>
    800036e8:	00004517          	auipc	a0,0x4
    800036ec:	a0050513          	addi	a0,a0,-1536 # 800070e8 <CONSOLE_STATUS+0xd8>
    800036f0:	fffff097          	auipc	ra,0xfffff
    800036f4:	19c080e7          	jalr	412(ra) # 8000288c <_Z11printStringPKc>
    for (; i < 16; i++) {
    800036f8:	0014849b          	addiw	s1,s1,1
    800036fc:	0ff4f493          	andi	s1,s1,255
    80003700:	00f00793          	li	a5,15
    80003704:	fc97f4e3          	bgeu	a5,s1,800036cc <_ZL11workerBodyDPv+0xb8>
    }

    printString("D finished!\n");
    80003708:	00004517          	auipc	a0,0x4
    8000370c:	a7050513          	addi	a0,a0,-1424 # 80007178 <_ZZ12printIntegermE6digits+0x50>
    80003710:	fffff097          	auipc	ra,0xfffff
    80003714:	17c080e7          	jalr	380(ra) # 8000288c <_Z11printStringPKc>
    finishedD = true;
    80003718:	00100793          	li	a5,1
    8000371c:	00005717          	auipc	a4,0x5
    80003720:	02f70c23          	sb	a5,56(a4) # 80008754 <_ZL9finishedD>
    thread_dispatch();
    80003724:	ffffe097          	auipc	ra,0xffffe
    80003728:	b40080e7          	jalr	-1216(ra) # 80001264 <_Z15thread_dispatchv>
}
    8000372c:	01813083          	ld	ra,24(sp)
    80003730:	01013403          	ld	s0,16(sp)
    80003734:	00813483          	ld	s1,8(sp)
    80003738:	00013903          	ld	s2,0(sp)
    8000373c:	02010113          	addi	sp,sp,32
    80003740:	00008067          	ret

0000000080003744 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80003744:	fe010113          	addi	sp,sp,-32
    80003748:	00113c23          	sd	ra,24(sp)
    8000374c:	00813823          	sd	s0,16(sp)
    80003750:	00913423          	sd	s1,8(sp)
    80003754:	01213023          	sd	s2,0(sp)
    80003758:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    8000375c:	00000493          	li	s1,0
    80003760:	0380006f          	j	80003798 <_ZL11workerBodyCPv+0x54>
        printString("C: i="); printInteger(i); printString("\n");
    80003764:	00004517          	auipc	a0,0x4
    80003768:	93c50513          	addi	a0,a0,-1732 # 800070a0 <CONSOLE_STATUS+0x90>
    8000376c:	fffff097          	auipc	ra,0xfffff
    80003770:	120080e7          	jalr	288(ra) # 8000288c <_Z11printStringPKc>
    80003774:	00048513          	mv	a0,s1
    80003778:	fffff097          	auipc	ra,0xfffff
    8000377c:	158080e7          	jalr	344(ra) # 800028d0 <_Z12printIntegerm>
    80003780:	00004517          	auipc	a0,0x4
    80003784:	96850513          	addi	a0,a0,-1688 # 800070e8 <CONSOLE_STATUS+0xd8>
    80003788:	fffff097          	auipc	ra,0xfffff
    8000378c:	104080e7          	jalr	260(ra) # 8000288c <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003790:	0014849b          	addiw	s1,s1,1
    80003794:	0ff4f493          	andi	s1,s1,255
    80003798:	00200793          	li	a5,2
    8000379c:	fc97f4e3          	bgeu	a5,s1,80003764 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    800037a0:	00004517          	auipc	a0,0x4
    800037a4:	99850513          	addi	a0,a0,-1640 # 80007138 <_ZZ12printIntegermE6digits+0x10>
    800037a8:	fffff097          	auipc	ra,0xfffff
    800037ac:	0e4080e7          	jalr	228(ra) # 8000288c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800037b0:	00700313          	li	t1,7
    thread_dispatch();
    800037b4:	ffffe097          	auipc	ra,0xffffe
    800037b8:	ab0080e7          	jalr	-1360(ra) # 80001264 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800037bc:	00030913          	mv	s2,t1
    printString("C: t1="); printInteger(t1); printString("\n");
    800037c0:	00004517          	auipc	a0,0x4
    800037c4:	98850513          	addi	a0,a0,-1656 # 80007148 <_ZZ12printIntegermE6digits+0x20>
    800037c8:	fffff097          	auipc	ra,0xfffff
    800037cc:	0c4080e7          	jalr	196(ra) # 8000288c <_Z11printStringPKc>
    800037d0:	00090513          	mv	a0,s2
    800037d4:	fffff097          	auipc	ra,0xfffff
    800037d8:	0fc080e7          	jalr	252(ra) # 800028d0 <_Z12printIntegerm>
    800037dc:	00004517          	auipc	a0,0x4
    800037e0:	90c50513          	addi	a0,a0,-1780 # 800070e8 <CONSOLE_STATUS+0xd8>
    800037e4:	fffff097          	auipc	ra,0xfffff
    800037e8:	0a8080e7          	jalr	168(ra) # 8000288c <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    800037ec:	00c00513          	li	a0,12
    800037f0:	00000097          	auipc	ra,0x0
    800037f4:	db0080e7          	jalr	-592(ra) # 800035a0 <_ZL9fibonaccim>
    800037f8:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInteger(result); printString("\n");
    800037fc:	00004517          	auipc	a0,0x4
    80003800:	8bc50513          	addi	a0,a0,-1860 # 800070b8 <CONSOLE_STATUS+0xa8>
    80003804:	fffff097          	auipc	ra,0xfffff
    80003808:	088080e7          	jalr	136(ra) # 8000288c <_Z11printStringPKc>
    8000380c:	00090513          	mv	a0,s2
    80003810:	fffff097          	auipc	ra,0xfffff
    80003814:	0c0080e7          	jalr	192(ra) # 800028d0 <_Z12printIntegerm>
    80003818:	00004517          	auipc	a0,0x4
    8000381c:	8d050513          	addi	a0,a0,-1840 # 800070e8 <CONSOLE_STATUS+0xd8>
    80003820:	fffff097          	auipc	ra,0xfffff
    80003824:	06c080e7          	jalr	108(ra) # 8000288c <_Z11printStringPKc>
    80003828:	0380006f          	j	80003860 <_ZL11workerBodyCPv+0x11c>
        printString("C: i="); printInteger(i); printString("\n");
    8000382c:	00004517          	auipc	a0,0x4
    80003830:	87450513          	addi	a0,a0,-1932 # 800070a0 <CONSOLE_STATUS+0x90>
    80003834:	fffff097          	auipc	ra,0xfffff
    80003838:	058080e7          	jalr	88(ra) # 8000288c <_Z11printStringPKc>
    8000383c:	00048513          	mv	a0,s1
    80003840:	fffff097          	auipc	ra,0xfffff
    80003844:	090080e7          	jalr	144(ra) # 800028d0 <_Z12printIntegerm>
    80003848:	00004517          	auipc	a0,0x4
    8000384c:	8a050513          	addi	a0,a0,-1888 # 800070e8 <CONSOLE_STATUS+0xd8>
    80003850:	fffff097          	auipc	ra,0xfffff
    80003854:	03c080e7          	jalr	60(ra) # 8000288c <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003858:	0014849b          	addiw	s1,s1,1
    8000385c:	0ff4f493          	andi	s1,s1,255
    80003860:	00500793          	li	a5,5
    80003864:	fc97f4e3          	bgeu	a5,s1,8000382c <_ZL11workerBodyCPv+0xe8>
    printString("C finished!\n");
    80003868:	00004517          	auipc	a0,0x4
    8000386c:	86050513          	addi	a0,a0,-1952 # 800070c8 <CONSOLE_STATUS+0xb8>
    80003870:	fffff097          	auipc	ra,0xfffff
    80003874:	01c080e7          	jalr	28(ra) # 8000288c <_Z11printStringPKc>
    finishedC = true;
    80003878:	00100793          	li	a5,1
    8000387c:	00005717          	auipc	a4,0x5
    80003880:	ecf70ca3          	sb	a5,-295(a4) # 80008755 <_ZL9finishedC>
    thread_dispatch();
    80003884:	ffffe097          	auipc	ra,0xffffe
    80003888:	9e0080e7          	jalr	-1568(ra) # 80001264 <_Z15thread_dispatchv>
}
    8000388c:	01813083          	ld	ra,24(sp)
    80003890:	01013403          	ld	s0,16(sp)
    80003894:	00813483          	ld	s1,8(sp)
    80003898:	00013903          	ld	s2,0(sp)
    8000389c:	02010113          	addi	sp,sp,32
    800038a0:	00008067          	ret

00000000800038a4 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    800038a4:	fe010113          	addi	sp,sp,-32
    800038a8:	00113c23          	sd	ra,24(sp)
    800038ac:	00813823          	sd	s0,16(sp)
    800038b0:	00913423          	sd	s1,8(sp)
    800038b4:	01213023          	sd	s2,0(sp)
    800038b8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800038bc:	00000913          	li	s2,0
    800038c0:	0380006f          	j	800038f8 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    800038c4:	ffffe097          	auipc	ra,0xffffe
    800038c8:	9a0080e7          	jalr	-1632(ra) # 80001264 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800038cc:	00148493          	addi	s1,s1,1
    800038d0:	000027b7          	lui	a5,0x2
    800038d4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800038d8:	0097ee63          	bltu	a5,s1,800038f4 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800038dc:	00000713          	li	a4,0
    800038e0:	000077b7          	lui	a5,0x7
    800038e4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800038e8:	fce7eee3          	bltu	a5,a4,800038c4 <_ZL11workerBodyBPv+0x20>
    800038ec:	00170713          	addi	a4,a4,1
    800038f0:	ff1ff06f          	j	800038e0 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800038f4:	00190913          	addi	s2,s2,1
    800038f8:	00f00793          	li	a5,15
    800038fc:	0327ec63          	bltu	a5,s2,80003934 <_ZL11workerBodyBPv+0x90>
        printString("B: i="); printInteger(i); printString("\n");
    80003900:	00003517          	auipc	a0,0x3
    80003904:	76850513          	addi	a0,a0,1896 # 80007068 <CONSOLE_STATUS+0x58>
    80003908:	fffff097          	auipc	ra,0xfffff
    8000390c:	f84080e7          	jalr	-124(ra) # 8000288c <_Z11printStringPKc>
    80003910:	00090513          	mv	a0,s2
    80003914:	fffff097          	auipc	ra,0xfffff
    80003918:	fbc080e7          	jalr	-68(ra) # 800028d0 <_Z12printIntegerm>
    8000391c:	00003517          	auipc	a0,0x3
    80003920:	7cc50513          	addi	a0,a0,1996 # 800070e8 <CONSOLE_STATUS+0xd8>
    80003924:	fffff097          	auipc	ra,0xfffff
    80003928:	f68080e7          	jalr	-152(ra) # 8000288c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000392c:	00000493          	li	s1,0
    80003930:	fa1ff06f          	j	800038d0 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80003934:	00003517          	auipc	a0,0x3
    80003938:	75c50513          	addi	a0,a0,1884 # 80007090 <CONSOLE_STATUS+0x80>
    8000393c:	fffff097          	auipc	ra,0xfffff
    80003940:	f50080e7          	jalr	-176(ra) # 8000288c <_Z11printStringPKc>
    finishedB = true;
    80003944:	00100793          	li	a5,1
    80003948:	00005717          	auipc	a4,0x5
    8000394c:	e0f70723          	sb	a5,-498(a4) # 80008756 <_ZL9finishedB>
    thread_dispatch();
    80003950:	ffffe097          	auipc	ra,0xffffe
    80003954:	914080e7          	jalr	-1772(ra) # 80001264 <_Z15thread_dispatchv>
}
    80003958:	01813083          	ld	ra,24(sp)
    8000395c:	01013403          	ld	s0,16(sp)
    80003960:	00813483          	ld	s1,8(sp)
    80003964:	00013903          	ld	s2,0(sp)
    80003968:	02010113          	addi	sp,sp,32
    8000396c:	00008067          	ret

0000000080003970 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80003970:	fe010113          	addi	sp,sp,-32
    80003974:	00113c23          	sd	ra,24(sp)
    80003978:	00813823          	sd	s0,16(sp)
    8000397c:	00913423          	sd	s1,8(sp)
    80003980:	01213023          	sd	s2,0(sp)
    80003984:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003988:	00000913          	li	s2,0
    8000398c:	0380006f          	j	800039c4 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80003990:	ffffe097          	auipc	ra,0xffffe
    80003994:	8d4080e7          	jalr	-1836(ra) # 80001264 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003998:	00148493          	addi	s1,s1,1
    8000399c:	000027b7          	lui	a5,0x2
    800039a0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800039a4:	0097ee63          	bltu	a5,s1,800039c0 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800039a8:	00000713          	li	a4,0
    800039ac:	000077b7          	lui	a5,0x7
    800039b0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800039b4:	fce7eee3          	bltu	a5,a4,80003990 <_ZL11workerBodyAPv+0x20>
    800039b8:	00170713          	addi	a4,a4,1
    800039bc:	ff1ff06f          	j	800039ac <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800039c0:	00190913          	addi	s2,s2,1
    800039c4:	00900793          	li	a5,9
    800039c8:	0327ec63          	bltu	a5,s2,80003a00 <_ZL11workerBodyAPv+0x90>
        printString("A: i="); printInteger(i); printString("\n");
    800039cc:	00003517          	auipc	a0,0x3
    800039d0:	65c50513          	addi	a0,a0,1628 # 80007028 <CONSOLE_STATUS+0x18>
    800039d4:	fffff097          	auipc	ra,0xfffff
    800039d8:	eb8080e7          	jalr	-328(ra) # 8000288c <_Z11printStringPKc>
    800039dc:	00090513          	mv	a0,s2
    800039e0:	fffff097          	auipc	ra,0xfffff
    800039e4:	ef0080e7          	jalr	-272(ra) # 800028d0 <_Z12printIntegerm>
    800039e8:	00003517          	auipc	a0,0x3
    800039ec:	70050513          	addi	a0,a0,1792 # 800070e8 <CONSOLE_STATUS+0xd8>
    800039f0:	fffff097          	auipc	ra,0xfffff
    800039f4:	e9c080e7          	jalr	-356(ra) # 8000288c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800039f8:	00000493          	li	s1,0
    800039fc:	fa1ff06f          	j	8000399c <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80003a00:	00003517          	auipc	a0,0x3
    80003a04:	65850513          	addi	a0,a0,1624 # 80007058 <CONSOLE_STATUS+0x48>
    80003a08:	fffff097          	auipc	ra,0xfffff
    80003a0c:	e84080e7          	jalr	-380(ra) # 8000288c <_Z11printStringPKc>
    finishedA = true;
    80003a10:	00100793          	li	a5,1
    80003a14:	00005717          	auipc	a4,0x5
    80003a18:	d4f701a3          	sb	a5,-701(a4) # 80008757 <_ZL9finishedA>
}
    80003a1c:	01813083          	ld	ra,24(sp)
    80003a20:	01013403          	ld	s0,16(sp)
    80003a24:	00813483          	ld	s1,8(sp)
    80003a28:	00013903          	ld	s2,0(sp)
    80003a2c:	02010113          	addi	sp,sp,32
    80003a30:	00008067          	ret

0000000080003a34 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80003a34:	fd010113          	addi	sp,sp,-48
    80003a38:	02113423          	sd	ra,40(sp)
    80003a3c:	02813023          	sd	s0,32(sp)
    80003a40:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80003a44:	00000613          	li	a2,0
    80003a48:	00000597          	auipc	a1,0x0
    80003a4c:	f2858593          	addi	a1,a1,-216 # 80003970 <_ZL11workerBodyAPv>
    80003a50:	fd040513          	addi	a0,s0,-48
    80003a54:	ffffd097          	auipc	ra,0xffffd
    80003a58:	7ac080e7          	jalr	1964(ra) # 80001200 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80003a5c:	00003517          	auipc	a0,0x3
    80003a60:	72c50513          	addi	a0,a0,1836 # 80007188 <_ZZ12printIntegermE6digits+0x60>
    80003a64:	fffff097          	auipc	ra,0xfffff
    80003a68:	e28080e7          	jalr	-472(ra) # 8000288c <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80003a6c:	00000613          	li	a2,0
    80003a70:	00000597          	auipc	a1,0x0
    80003a74:	e3458593          	addi	a1,a1,-460 # 800038a4 <_ZL11workerBodyBPv>
    80003a78:	fd840513          	addi	a0,s0,-40
    80003a7c:	ffffd097          	auipc	ra,0xffffd
    80003a80:	784080e7          	jalr	1924(ra) # 80001200 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80003a84:	00003517          	auipc	a0,0x3
    80003a88:	71c50513          	addi	a0,a0,1820 # 800071a0 <_ZZ12printIntegermE6digits+0x78>
    80003a8c:	fffff097          	auipc	ra,0xfffff
    80003a90:	e00080e7          	jalr	-512(ra) # 8000288c <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80003a94:	00000613          	li	a2,0
    80003a98:	00000597          	auipc	a1,0x0
    80003a9c:	cac58593          	addi	a1,a1,-852 # 80003744 <_ZL11workerBodyCPv>
    80003aa0:	fe040513          	addi	a0,s0,-32
    80003aa4:	ffffd097          	auipc	ra,0xffffd
    80003aa8:	75c080e7          	jalr	1884(ra) # 80001200 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80003aac:	00003517          	auipc	a0,0x3
    80003ab0:	70c50513          	addi	a0,a0,1804 # 800071b8 <_ZZ12printIntegermE6digits+0x90>
    80003ab4:	fffff097          	auipc	ra,0xfffff
    80003ab8:	dd8080e7          	jalr	-552(ra) # 8000288c <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80003abc:	00000613          	li	a2,0
    80003ac0:	00000597          	auipc	a1,0x0
    80003ac4:	b5458593          	addi	a1,a1,-1196 # 80003614 <_ZL11workerBodyDPv>
    80003ac8:	fe840513          	addi	a0,s0,-24
    80003acc:	ffffd097          	auipc	ra,0xffffd
    80003ad0:	734080e7          	jalr	1844(ra) # 80001200 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80003ad4:	00003517          	auipc	a0,0x3
    80003ad8:	6fc50513          	addi	a0,a0,1788 # 800071d0 <_ZZ12printIntegermE6digits+0xa8>
    80003adc:	fffff097          	auipc	ra,0xfffff
    80003ae0:	db0080e7          	jalr	-592(ra) # 8000288c <_Z11printStringPKc>
    80003ae4:	00c0006f          	j	80003af0 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80003ae8:	ffffd097          	auipc	ra,0xffffd
    80003aec:	77c080e7          	jalr	1916(ra) # 80001264 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80003af0:	00005797          	auipc	a5,0x5
    80003af4:	c677c783          	lbu	a5,-921(a5) # 80008757 <_ZL9finishedA>
    80003af8:	fe0788e3          	beqz	a5,80003ae8 <_Z18Threads_C_API_testv+0xb4>
    80003afc:	00005797          	auipc	a5,0x5
    80003b00:	c5a7c783          	lbu	a5,-934(a5) # 80008756 <_ZL9finishedB>
    80003b04:	fe0782e3          	beqz	a5,80003ae8 <_Z18Threads_C_API_testv+0xb4>
    80003b08:	00005797          	auipc	a5,0x5
    80003b0c:	c4d7c783          	lbu	a5,-947(a5) # 80008755 <_ZL9finishedC>
    80003b10:	fc078ce3          	beqz	a5,80003ae8 <_Z18Threads_C_API_testv+0xb4>
    80003b14:	00005797          	auipc	a5,0x5
    80003b18:	c407c783          	lbu	a5,-960(a5) # 80008754 <_ZL9finishedD>
    80003b1c:	fc0786e3          	beqz	a5,80003ae8 <_Z18Threads_C_API_testv+0xb4>
    }

}
    80003b20:	02813083          	ld	ra,40(sp)
    80003b24:	02013403          	ld	s0,32(sp)
    80003b28:	03010113          	addi	sp,sp,48
    80003b2c:	00008067          	ret

0000000080003b30 <_Z8userMainv>:
//#include "../test/ConsumerProducer_CPP_API_test.hpp"
//#include "System_Mode_test.hpp"

#endif

void userMain() {
    80003b30:	ff010113          	addi	sp,sp,-16
    80003b34:	00113423          	sd	ra,8(sp)
    80003b38:	00813023          	sd	s0,0(sp)
    80003b3c:	01010413          	addi	s0,sp,16
    printString("Unesite broj testa? [1-7]\n");
    80003b40:	00003517          	auipc	a0,0x3
    80003b44:	6a850513          	addi	a0,a0,1704 # 800071e8 <_ZZ12printIntegermE6digits+0xc0>
    80003b48:	fffff097          	auipc	ra,0xfffff
    80003b4c:	d44080e7          	jalr	-700(ra) # 8000288c <_Z11printStringPKc>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
#endif
            break;
        case 2:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_CPP_API_test();
    80003b50:	fffff097          	auipc	ra,0xfffff
    80003b54:	590080e7          	jalr	1424(ra) # 800030e0 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    80003b58:	00003517          	auipc	a0,0x3
    80003b5c:	6b050513          	addi	a0,a0,1712 # 80007208 <_ZZ12printIntegermE6digits+0xe0>
    80003b60:	fffff097          	auipc	ra,0xfffff
    80003b64:	d2c080e7          	jalr	-724(ra) # 8000288c <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    80003b68:	00813083          	ld	ra,8(sp)
    80003b6c:	00013403          	ld	s0,0(sp)
    80003b70:	01010113          	addi	sp,sp,16
    80003b74:	00008067          	ret

0000000080003b78 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003b78:	fe010113          	addi	sp,sp,-32
    80003b7c:	00113c23          	sd	ra,24(sp)
    80003b80:	00813823          	sd	s0,16(sp)
    80003b84:	00913423          	sd	s1,8(sp)
    80003b88:	01213023          	sd	s2,0(sp)
    80003b8c:	02010413          	addi	s0,sp,32
    80003b90:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003b94:	00100793          	li	a5,1
    80003b98:	02a7f863          	bgeu	a5,a0,80003bc8 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003b9c:	00a00793          	li	a5,10
    80003ba0:	02f577b3          	remu	a5,a0,a5
    80003ba4:	02078e63          	beqz	a5,80003be0 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003ba8:	fff48513          	addi	a0,s1,-1
    80003bac:	00000097          	auipc	ra,0x0
    80003bb0:	fcc080e7          	jalr	-52(ra) # 80003b78 <_ZL9fibonaccim>
    80003bb4:	00050913          	mv	s2,a0
    80003bb8:	ffe48513          	addi	a0,s1,-2
    80003bbc:	00000097          	auipc	ra,0x0
    80003bc0:	fbc080e7          	jalr	-68(ra) # 80003b78 <_ZL9fibonaccim>
    80003bc4:	00a90533          	add	a0,s2,a0
}
    80003bc8:	01813083          	ld	ra,24(sp)
    80003bcc:	01013403          	ld	s0,16(sp)
    80003bd0:	00813483          	ld	s1,8(sp)
    80003bd4:	00013903          	ld	s2,0(sp)
    80003bd8:	02010113          	addi	sp,sp,32
    80003bdc:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003be0:	ffffd097          	auipc	ra,0xffffd
    80003be4:	684080e7          	jalr	1668(ra) # 80001264 <_Z15thread_dispatchv>
    80003be8:	fc1ff06f          	j	80003ba8 <_ZL9fibonaccim+0x30>

0000000080003bec <_ZL11workerBodyDPv>:
    printString("C finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80003bec:	fe010113          	addi	sp,sp,-32
    80003bf0:	00113c23          	sd	ra,24(sp)
    80003bf4:	00813823          	sd	s0,16(sp)
    80003bf8:	00913423          	sd	s1,8(sp)
    80003bfc:	01213023          	sd	s2,0(sp)
    80003c00:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003c04:	00a00493          	li	s1,10
    80003c08:	0380006f          	j	80003c40 <_ZL11workerBodyDPv+0x54>
    for (; i < 13; i++) {
        printString("D: i="); printInteger(i); printString("\n");
    80003c0c:	00003517          	auipc	a0,0x3
    80003c10:	54450513          	addi	a0,a0,1348 # 80007150 <_ZZ12printIntegermE6digits+0x28>
    80003c14:	fffff097          	auipc	ra,0xfffff
    80003c18:	c78080e7          	jalr	-904(ra) # 8000288c <_Z11printStringPKc>
    80003c1c:	00048513          	mv	a0,s1
    80003c20:	fffff097          	auipc	ra,0xfffff
    80003c24:	cb0080e7          	jalr	-848(ra) # 800028d0 <_Z12printIntegerm>
    80003c28:	00003517          	auipc	a0,0x3
    80003c2c:	4c050513          	addi	a0,a0,1216 # 800070e8 <CONSOLE_STATUS+0xd8>
    80003c30:	fffff097          	auipc	ra,0xfffff
    80003c34:	c5c080e7          	jalr	-932(ra) # 8000288c <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003c38:	0014849b          	addiw	s1,s1,1
    80003c3c:	0ff4f493          	andi	s1,s1,255
    80003c40:	00c00793          	li	a5,12
    80003c44:	fc97f4e3          	bgeu	a5,s1,80003c0c <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80003c48:	00003517          	auipc	a0,0x3
    80003c4c:	51050513          	addi	a0,a0,1296 # 80007158 <_ZZ12printIntegermE6digits+0x30>
    80003c50:	fffff097          	auipc	ra,0xfffff
    80003c54:	c3c080e7          	jalr	-964(ra) # 8000288c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003c58:	00500313          	li	t1,5
    thread_dispatch();
    80003c5c:	ffffd097          	auipc	ra,0xffffd
    80003c60:	608080e7          	jalr	1544(ra) # 80001264 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003c64:	01000513          	li	a0,16
    80003c68:	00000097          	auipc	ra,0x0
    80003c6c:	f10080e7          	jalr	-240(ra) # 80003b78 <_ZL9fibonaccim>
    80003c70:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInteger(result); printString("\n");
    80003c74:	00003517          	auipc	a0,0x3
    80003c78:	4f450513          	addi	a0,a0,1268 # 80007168 <_ZZ12printIntegermE6digits+0x40>
    80003c7c:	fffff097          	auipc	ra,0xfffff
    80003c80:	c10080e7          	jalr	-1008(ra) # 8000288c <_Z11printStringPKc>
    80003c84:	00090513          	mv	a0,s2
    80003c88:	fffff097          	auipc	ra,0xfffff
    80003c8c:	c48080e7          	jalr	-952(ra) # 800028d0 <_Z12printIntegerm>
    80003c90:	00003517          	auipc	a0,0x3
    80003c94:	45850513          	addi	a0,a0,1112 # 800070e8 <CONSOLE_STATUS+0xd8>
    80003c98:	fffff097          	auipc	ra,0xfffff
    80003c9c:	bf4080e7          	jalr	-1036(ra) # 8000288c <_Z11printStringPKc>
    80003ca0:	0380006f          	j	80003cd8 <_ZL11workerBodyDPv+0xec>

    for (; i < 16; i++) {
        printString("D: i="); printInteger(i); printString("\n");
    80003ca4:	00003517          	auipc	a0,0x3
    80003ca8:	4ac50513          	addi	a0,a0,1196 # 80007150 <_ZZ12printIntegermE6digits+0x28>
    80003cac:	fffff097          	auipc	ra,0xfffff
    80003cb0:	be0080e7          	jalr	-1056(ra) # 8000288c <_Z11printStringPKc>
    80003cb4:	00048513          	mv	a0,s1
    80003cb8:	fffff097          	auipc	ra,0xfffff
    80003cbc:	c18080e7          	jalr	-1000(ra) # 800028d0 <_Z12printIntegerm>
    80003cc0:	00003517          	auipc	a0,0x3
    80003cc4:	42850513          	addi	a0,a0,1064 # 800070e8 <CONSOLE_STATUS+0xd8>
    80003cc8:	fffff097          	auipc	ra,0xfffff
    80003ccc:	bc4080e7          	jalr	-1084(ra) # 8000288c <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003cd0:	0014849b          	addiw	s1,s1,1
    80003cd4:	0ff4f493          	andi	s1,s1,255
    80003cd8:	00f00793          	li	a5,15
    80003cdc:	fc97f4e3          	bgeu	a5,s1,80003ca4 <_ZL11workerBodyDPv+0xb8>
    }

    printString("D finished!\n");
    80003ce0:	00003517          	auipc	a0,0x3
    80003ce4:	49850513          	addi	a0,a0,1176 # 80007178 <_ZZ12printIntegermE6digits+0x50>
    80003ce8:	fffff097          	auipc	ra,0xfffff
    80003cec:	ba4080e7          	jalr	-1116(ra) # 8000288c <_Z11printStringPKc>
    finishedD = true;
    80003cf0:	00100793          	li	a5,1
    80003cf4:	00005717          	auipc	a4,0x5
    80003cf8:	a6f70223          	sb	a5,-1436(a4) # 80008758 <_ZL9finishedD>
    thread_dispatch();
    80003cfc:	ffffd097          	auipc	ra,0xffffd
    80003d00:	568080e7          	jalr	1384(ra) # 80001264 <_Z15thread_dispatchv>
}
    80003d04:	01813083          	ld	ra,24(sp)
    80003d08:	01013403          	ld	s0,16(sp)
    80003d0c:	00813483          	ld	s1,8(sp)
    80003d10:	00013903          	ld	s2,0(sp)
    80003d14:	02010113          	addi	sp,sp,32
    80003d18:	00008067          	ret

0000000080003d1c <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80003d1c:	fe010113          	addi	sp,sp,-32
    80003d20:	00113c23          	sd	ra,24(sp)
    80003d24:	00813823          	sd	s0,16(sp)
    80003d28:	00913423          	sd	s1,8(sp)
    80003d2c:	01213023          	sd	s2,0(sp)
    80003d30:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003d34:	00000493          	li	s1,0
    80003d38:	0380006f          	j	80003d70 <_ZL11workerBodyCPv+0x54>
        printString("C: i="); printInteger(i); printString("\n");
    80003d3c:	00003517          	auipc	a0,0x3
    80003d40:	36450513          	addi	a0,a0,868 # 800070a0 <CONSOLE_STATUS+0x90>
    80003d44:	fffff097          	auipc	ra,0xfffff
    80003d48:	b48080e7          	jalr	-1208(ra) # 8000288c <_Z11printStringPKc>
    80003d4c:	00048513          	mv	a0,s1
    80003d50:	fffff097          	auipc	ra,0xfffff
    80003d54:	b80080e7          	jalr	-1152(ra) # 800028d0 <_Z12printIntegerm>
    80003d58:	00003517          	auipc	a0,0x3
    80003d5c:	39050513          	addi	a0,a0,912 # 800070e8 <CONSOLE_STATUS+0xd8>
    80003d60:	fffff097          	auipc	ra,0xfffff
    80003d64:	b2c080e7          	jalr	-1236(ra) # 8000288c <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003d68:	0014849b          	addiw	s1,s1,1
    80003d6c:	0ff4f493          	andi	s1,s1,255
    80003d70:	00200793          	li	a5,2
    80003d74:	fc97f4e3          	bgeu	a5,s1,80003d3c <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80003d78:	00003517          	auipc	a0,0x3
    80003d7c:	3c050513          	addi	a0,a0,960 # 80007138 <_ZZ12printIntegermE6digits+0x10>
    80003d80:	fffff097          	auipc	ra,0xfffff
    80003d84:	b0c080e7          	jalr	-1268(ra) # 8000288c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003d88:	00700313          	li	t1,7
    thread_dispatch();
    80003d8c:	ffffd097          	auipc	ra,0xffffd
    80003d90:	4d8080e7          	jalr	1240(ra) # 80001264 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003d94:	00030913          	mv	s2,t1
    printString("C: t1="); printInteger(t1); printString("\n");
    80003d98:	00003517          	auipc	a0,0x3
    80003d9c:	3b050513          	addi	a0,a0,944 # 80007148 <_ZZ12printIntegermE6digits+0x20>
    80003da0:	fffff097          	auipc	ra,0xfffff
    80003da4:	aec080e7          	jalr	-1300(ra) # 8000288c <_Z11printStringPKc>
    80003da8:	00090513          	mv	a0,s2
    80003dac:	fffff097          	auipc	ra,0xfffff
    80003db0:	b24080e7          	jalr	-1244(ra) # 800028d0 <_Z12printIntegerm>
    80003db4:	00003517          	auipc	a0,0x3
    80003db8:	33450513          	addi	a0,a0,820 # 800070e8 <CONSOLE_STATUS+0xd8>
    80003dbc:	fffff097          	auipc	ra,0xfffff
    80003dc0:	ad0080e7          	jalr	-1328(ra) # 8000288c <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80003dc4:	00c00513          	li	a0,12
    80003dc8:	00000097          	auipc	ra,0x0
    80003dcc:	db0080e7          	jalr	-592(ra) # 80003b78 <_ZL9fibonaccim>
    80003dd0:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInteger(result); printString("\n");
    80003dd4:	00003517          	auipc	a0,0x3
    80003dd8:	2e450513          	addi	a0,a0,740 # 800070b8 <CONSOLE_STATUS+0xa8>
    80003ddc:	fffff097          	auipc	ra,0xfffff
    80003de0:	ab0080e7          	jalr	-1360(ra) # 8000288c <_Z11printStringPKc>
    80003de4:	00090513          	mv	a0,s2
    80003de8:	fffff097          	auipc	ra,0xfffff
    80003dec:	ae8080e7          	jalr	-1304(ra) # 800028d0 <_Z12printIntegerm>
    80003df0:	00003517          	auipc	a0,0x3
    80003df4:	2f850513          	addi	a0,a0,760 # 800070e8 <CONSOLE_STATUS+0xd8>
    80003df8:	fffff097          	auipc	ra,0xfffff
    80003dfc:	a94080e7          	jalr	-1388(ra) # 8000288c <_Z11printStringPKc>
    80003e00:	0380006f          	j	80003e38 <_ZL11workerBodyCPv+0x11c>
        printString("C: i="); printInteger(i); printString("\n");
    80003e04:	00003517          	auipc	a0,0x3
    80003e08:	29c50513          	addi	a0,a0,668 # 800070a0 <CONSOLE_STATUS+0x90>
    80003e0c:	fffff097          	auipc	ra,0xfffff
    80003e10:	a80080e7          	jalr	-1408(ra) # 8000288c <_Z11printStringPKc>
    80003e14:	00048513          	mv	a0,s1
    80003e18:	fffff097          	auipc	ra,0xfffff
    80003e1c:	ab8080e7          	jalr	-1352(ra) # 800028d0 <_Z12printIntegerm>
    80003e20:	00003517          	auipc	a0,0x3
    80003e24:	2c850513          	addi	a0,a0,712 # 800070e8 <CONSOLE_STATUS+0xd8>
    80003e28:	fffff097          	auipc	ra,0xfffff
    80003e2c:	a64080e7          	jalr	-1436(ra) # 8000288c <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003e30:	0014849b          	addiw	s1,s1,1
    80003e34:	0ff4f493          	andi	s1,s1,255
    80003e38:	00500793          	li	a5,5
    80003e3c:	fc97f4e3          	bgeu	a5,s1,80003e04 <_ZL11workerBodyCPv+0xe8>
    printString("C finished!\n");
    80003e40:	00003517          	auipc	a0,0x3
    80003e44:	28850513          	addi	a0,a0,648 # 800070c8 <CONSOLE_STATUS+0xb8>
    80003e48:	fffff097          	auipc	ra,0xfffff
    80003e4c:	a44080e7          	jalr	-1468(ra) # 8000288c <_Z11printStringPKc>
    finishedC = true;
    80003e50:	00100793          	li	a5,1
    80003e54:	00005717          	auipc	a4,0x5
    80003e58:	90f702a3          	sb	a5,-1787(a4) # 80008759 <_ZL9finishedC>
    thread_dispatch();
    80003e5c:	ffffd097          	auipc	ra,0xffffd
    80003e60:	408080e7          	jalr	1032(ra) # 80001264 <_Z15thread_dispatchv>
}
    80003e64:	01813083          	ld	ra,24(sp)
    80003e68:	01013403          	ld	s0,16(sp)
    80003e6c:	00813483          	ld	s1,8(sp)
    80003e70:	00013903          	ld	s2,0(sp)
    80003e74:	02010113          	addi	sp,sp,32
    80003e78:	00008067          	ret

0000000080003e7c <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80003e7c:	fe010113          	addi	sp,sp,-32
    80003e80:	00113c23          	sd	ra,24(sp)
    80003e84:	00813823          	sd	s0,16(sp)
    80003e88:	00913423          	sd	s1,8(sp)
    80003e8c:	01213023          	sd	s2,0(sp)
    80003e90:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003e94:	00000913          	li	s2,0
    80003e98:	0400006f          	j	80003ed8 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80003e9c:	ffffd097          	auipc	ra,0xffffd
    80003ea0:	3c8080e7          	jalr	968(ra) # 80001264 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003ea4:	00148493          	addi	s1,s1,1
    80003ea8:	000027b7          	lui	a5,0x2
    80003eac:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003eb0:	0097ee63          	bltu	a5,s1,80003ecc <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003eb4:	00000713          	li	a4,0
    80003eb8:	000077b7          	lui	a5,0x7
    80003ebc:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003ec0:	fce7eee3          	bltu	a5,a4,80003e9c <_ZL11workerBodyBPv+0x20>
    80003ec4:	00170713          	addi	a4,a4,1
    80003ec8:	ff1ff06f          	j	80003eb8 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80003ecc:	00a00793          	li	a5,10
    80003ed0:	04f90263          	beq	s2,a5,80003f14 <_ZL11workerBodyBPv+0x98>
    for (uint64 i = 0; i < 16; i++) {
    80003ed4:	00190913          	addi	s2,s2,1
    80003ed8:	00f00793          	li	a5,15
    80003edc:	0527e063          	bltu	a5,s2,80003f1c <_ZL11workerBodyBPv+0xa0>
        printString("B: i="); printInteger(i); printString("\n");
    80003ee0:	00003517          	auipc	a0,0x3
    80003ee4:	18850513          	addi	a0,a0,392 # 80007068 <CONSOLE_STATUS+0x58>
    80003ee8:	fffff097          	auipc	ra,0xfffff
    80003eec:	9a4080e7          	jalr	-1628(ra) # 8000288c <_Z11printStringPKc>
    80003ef0:	00090513          	mv	a0,s2
    80003ef4:	fffff097          	auipc	ra,0xfffff
    80003ef8:	9dc080e7          	jalr	-1572(ra) # 800028d0 <_Z12printIntegerm>
    80003efc:	00003517          	auipc	a0,0x3
    80003f00:	1ec50513          	addi	a0,a0,492 # 800070e8 <CONSOLE_STATUS+0xd8>
    80003f04:	fffff097          	auipc	ra,0xfffff
    80003f08:	988080e7          	jalr	-1656(ra) # 8000288c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003f0c:	00000493          	li	s1,0
    80003f10:	f99ff06f          	j	80003ea8 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80003f14:	14102ff3          	csrr	t6,sepc
    80003f18:	fbdff06f          	j	80003ed4 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80003f1c:	00003517          	auipc	a0,0x3
    80003f20:	17450513          	addi	a0,a0,372 # 80007090 <CONSOLE_STATUS+0x80>
    80003f24:	fffff097          	auipc	ra,0xfffff
    80003f28:	968080e7          	jalr	-1688(ra) # 8000288c <_Z11printStringPKc>
    finishedB = true;
    80003f2c:	00100793          	li	a5,1
    80003f30:	00005717          	auipc	a4,0x5
    80003f34:	82f70523          	sb	a5,-2006(a4) # 8000875a <_ZL9finishedB>
    thread_dispatch();
    80003f38:	ffffd097          	auipc	ra,0xffffd
    80003f3c:	32c080e7          	jalr	812(ra) # 80001264 <_Z15thread_dispatchv>
}
    80003f40:	01813083          	ld	ra,24(sp)
    80003f44:	01013403          	ld	s0,16(sp)
    80003f48:	00813483          	ld	s1,8(sp)
    80003f4c:	00013903          	ld	s2,0(sp)
    80003f50:	02010113          	addi	sp,sp,32
    80003f54:	00008067          	ret

0000000080003f58 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80003f58:	fe010113          	addi	sp,sp,-32
    80003f5c:	00113c23          	sd	ra,24(sp)
    80003f60:	00813823          	sd	s0,16(sp)
    80003f64:	00913423          	sd	s1,8(sp)
    80003f68:	01213023          	sd	s2,0(sp)
    80003f6c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003f70:	00000913          	li	s2,0
    80003f74:	0380006f          	j	80003fac <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80003f78:	ffffd097          	auipc	ra,0xffffd
    80003f7c:	2ec080e7          	jalr	748(ra) # 80001264 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003f80:	00148493          	addi	s1,s1,1
    80003f84:	000027b7          	lui	a5,0x2
    80003f88:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003f8c:	0097ee63          	bltu	a5,s1,80003fa8 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003f90:	00000713          	li	a4,0
    80003f94:	000077b7          	lui	a5,0x7
    80003f98:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003f9c:	fce7eee3          	bltu	a5,a4,80003f78 <_ZL11workerBodyAPv+0x20>
    80003fa0:	00170713          	addi	a4,a4,1
    80003fa4:	ff1ff06f          	j	80003f94 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003fa8:	00190913          	addi	s2,s2,1
    80003fac:	00900793          	li	a5,9
    80003fb0:	0327ec63          	bltu	a5,s2,80003fe8 <_ZL11workerBodyAPv+0x90>
        printString("A: i="); printInteger(i); printString("\n");
    80003fb4:	00003517          	auipc	a0,0x3
    80003fb8:	07450513          	addi	a0,a0,116 # 80007028 <CONSOLE_STATUS+0x18>
    80003fbc:	fffff097          	auipc	ra,0xfffff
    80003fc0:	8d0080e7          	jalr	-1840(ra) # 8000288c <_Z11printStringPKc>
    80003fc4:	00090513          	mv	a0,s2
    80003fc8:	fffff097          	auipc	ra,0xfffff
    80003fcc:	908080e7          	jalr	-1784(ra) # 800028d0 <_Z12printIntegerm>
    80003fd0:	00003517          	auipc	a0,0x3
    80003fd4:	11850513          	addi	a0,a0,280 # 800070e8 <CONSOLE_STATUS+0xd8>
    80003fd8:	fffff097          	auipc	ra,0xfffff
    80003fdc:	8b4080e7          	jalr	-1868(ra) # 8000288c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003fe0:	00000493          	li	s1,0
    80003fe4:	fa1ff06f          	j	80003f84 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80003fe8:	00003517          	auipc	a0,0x3
    80003fec:	07050513          	addi	a0,a0,112 # 80007058 <CONSOLE_STATUS+0x48>
    80003ff0:	fffff097          	auipc	ra,0xfffff
    80003ff4:	89c080e7          	jalr	-1892(ra) # 8000288c <_Z11printStringPKc>
    finishedA = true;
    80003ff8:	00100793          	li	a5,1
    80003ffc:	00004717          	auipc	a4,0x4
    80004000:	74f70fa3          	sb	a5,1887(a4) # 8000875b <_ZL9finishedA>
}
    80004004:	01813083          	ld	ra,24(sp)
    80004008:	01013403          	ld	s0,16(sp)
    8000400c:	00813483          	ld	s1,8(sp)
    80004010:	00013903          	ld	s2,0(sp)
    80004014:	02010113          	addi	sp,sp,32
    80004018:	00008067          	ret

000000008000401c <_Z16System_Mode_testv>:


void System_Mode_test() {
    8000401c:	fd010113          	addi	sp,sp,-48
    80004020:	02113423          	sd	ra,40(sp)
    80004024:	02813023          	sd	s0,32(sp)
    80004028:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    8000402c:	00000613          	li	a2,0
    80004030:	00000597          	auipc	a1,0x0
    80004034:	f2858593          	addi	a1,a1,-216 # 80003f58 <_ZL11workerBodyAPv>
    80004038:	fd040513          	addi	a0,s0,-48
    8000403c:	ffffd097          	auipc	ra,0xffffd
    80004040:	1c4080e7          	jalr	452(ra) # 80001200 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80004044:	00003517          	auipc	a0,0x3
    80004048:	14450513          	addi	a0,a0,324 # 80007188 <_ZZ12printIntegermE6digits+0x60>
    8000404c:	fffff097          	auipc	ra,0xfffff
    80004050:	840080e7          	jalr	-1984(ra) # 8000288c <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80004054:	00000613          	li	a2,0
    80004058:	00000597          	auipc	a1,0x0
    8000405c:	e2458593          	addi	a1,a1,-476 # 80003e7c <_ZL11workerBodyBPv>
    80004060:	fd840513          	addi	a0,s0,-40
    80004064:	ffffd097          	auipc	ra,0xffffd
    80004068:	19c080e7          	jalr	412(ra) # 80001200 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    8000406c:	00003517          	auipc	a0,0x3
    80004070:	13450513          	addi	a0,a0,308 # 800071a0 <_ZZ12printIntegermE6digits+0x78>
    80004074:	fffff097          	auipc	ra,0xfffff
    80004078:	818080e7          	jalr	-2024(ra) # 8000288c <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    8000407c:	00000613          	li	a2,0
    80004080:	00000597          	auipc	a1,0x0
    80004084:	c9c58593          	addi	a1,a1,-868 # 80003d1c <_ZL11workerBodyCPv>
    80004088:	fe040513          	addi	a0,s0,-32
    8000408c:	ffffd097          	auipc	ra,0xffffd
    80004090:	174080e7          	jalr	372(ra) # 80001200 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80004094:	00003517          	auipc	a0,0x3
    80004098:	12450513          	addi	a0,a0,292 # 800071b8 <_ZZ12printIntegermE6digits+0x90>
    8000409c:	ffffe097          	auipc	ra,0xffffe
    800040a0:	7f0080e7          	jalr	2032(ra) # 8000288c <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    800040a4:	00000613          	li	a2,0
    800040a8:	00000597          	auipc	a1,0x0
    800040ac:	b4458593          	addi	a1,a1,-1212 # 80003bec <_ZL11workerBodyDPv>
    800040b0:	fe840513          	addi	a0,s0,-24
    800040b4:	ffffd097          	auipc	ra,0xffffd
    800040b8:	14c080e7          	jalr	332(ra) # 80001200 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    800040bc:	00003517          	auipc	a0,0x3
    800040c0:	11450513          	addi	a0,a0,276 # 800071d0 <_ZZ12printIntegermE6digits+0xa8>
    800040c4:	ffffe097          	auipc	ra,0xffffe
    800040c8:	7c8080e7          	jalr	1992(ra) # 8000288c <_Z11printStringPKc>
    800040cc:	00c0006f          	j	800040d8 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    800040d0:	ffffd097          	auipc	ra,0xffffd
    800040d4:	194080e7          	jalr	404(ra) # 80001264 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800040d8:	00004797          	auipc	a5,0x4
    800040dc:	6837c783          	lbu	a5,1667(a5) # 8000875b <_ZL9finishedA>
    800040e0:	fe0788e3          	beqz	a5,800040d0 <_Z16System_Mode_testv+0xb4>
    800040e4:	00004797          	auipc	a5,0x4
    800040e8:	6767c783          	lbu	a5,1654(a5) # 8000875a <_ZL9finishedB>
    800040ec:	fe0782e3          	beqz	a5,800040d0 <_Z16System_Mode_testv+0xb4>
    800040f0:	00004797          	auipc	a5,0x4
    800040f4:	6697c783          	lbu	a5,1641(a5) # 80008759 <_ZL9finishedC>
    800040f8:	fc078ce3          	beqz	a5,800040d0 <_Z16System_Mode_testv+0xb4>
    800040fc:	00004797          	auipc	a5,0x4
    80004100:	65c7c783          	lbu	a5,1628(a5) # 80008758 <_ZL9finishedD>
    80004104:	fc0786e3          	beqz	a5,800040d0 <_Z16System_Mode_testv+0xb4>
    }

}
    80004108:	02813083          	ld	ra,40(sp)
    8000410c:	02013403          	ld	s0,32(sp)
    80004110:	03010113          	addi	sp,sp,48
    80004114:	00008067          	ret

0000000080004118 <start>:
    80004118:	ff010113          	addi	sp,sp,-16
    8000411c:	00813423          	sd	s0,8(sp)
    80004120:	01010413          	addi	s0,sp,16
    80004124:	300027f3          	csrr	a5,mstatus
    80004128:	ffffe737          	lui	a4,0xffffe
    8000412c:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff4e3f>
    80004130:	00e7f7b3          	and	a5,a5,a4
    80004134:	00001737          	lui	a4,0x1
    80004138:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    8000413c:	00e7e7b3          	or	a5,a5,a4
    80004140:	30079073          	csrw	mstatus,a5
    80004144:	00000797          	auipc	a5,0x0
    80004148:	16078793          	addi	a5,a5,352 # 800042a4 <system_main>
    8000414c:	34179073          	csrw	mepc,a5
    80004150:	00000793          	li	a5,0
    80004154:	18079073          	csrw	satp,a5
    80004158:	000107b7          	lui	a5,0x10
    8000415c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80004160:	30279073          	csrw	medeleg,a5
    80004164:	30379073          	csrw	mideleg,a5
    80004168:	104027f3          	csrr	a5,sie
    8000416c:	2227e793          	ori	a5,a5,546
    80004170:	10479073          	csrw	sie,a5
    80004174:	fff00793          	li	a5,-1
    80004178:	00a7d793          	srli	a5,a5,0xa
    8000417c:	3b079073          	csrw	pmpaddr0,a5
    80004180:	00f00793          	li	a5,15
    80004184:	3a079073          	csrw	pmpcfg0,a5
    80004188:	f14027f3          	csrr	a5,mhartid
    8000418c:	0200c737          	lui	a4,0x200c
    80004190:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80004194:	0007869b          	sext.w	a3,a5
    80004198:	00269713          	slli	a4,a3,0x2
    8000419c:	000f4637          	lui	a2,0xf4
    800041a0:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800041a4:	00d70733          	add	a4,a4,a3
    800041a8:	0037979b          	slliw	a5,a5,0x3
    800041ac:	020046b7          	lui	a3,0x2004
    800041b0:	00d787b3          	add	a5,a5,a3
    800041b4:	00c585b3          	add	a1,a1,a2
    800041b8:	00371693          	slli	a3,a4,0x3
    800041bc:	00004717          	auipc	a4,0x4
    800041c0:	5a470713          	addi	a4,a4,1444 # 80008760 <timer_scratch>
    800041c4:	00b7b023          	sd	a1,0(a5)
    800041c8:	00d70733          	add	a4,a4,a3
    800041cc:	00f73c23          	sd	a5,24(a4)
    800041d0:	02c73023          	sd	a2,32(a4)
    800041d4:	34071073          	csrw	mscratch,a4
    800041d8:	00000797          	auipc	a5,0x0
    800041dc:	6e878793          	addi	a5,a5,1768 # 800048c0 <timervec>
    800041e0:	30579073          	csrw	mtvec,a5
    800041e4:	300027f3          	csrr	a5,mstatus
    800041e8:	0087e793          	ori	a5,a5,8
    800041ec:	30079073          	csrw	mstatus,a5
    800041f0:	304027f3          	csrr	a5,mie
    800041f4:	0807e793          	ori	a5,a5,128
    800041f8:	30479073          	csrw	mie,a5
    800041fc:	f14027f3          	csrr	a5,mhartid
    80004200:	0007879b          	sext.w	a5,a5
    80004204:	00078213          	mv	tp,a5
    80004208:	30200073          	mret
    8000420c:	00813403          	ld	s0,8(sp)
    80004210:	01010113          	addi	sp,sp,16
    80004214:	00008067          	ret

0000000080004218 <timerinit>:
    80004218:	ff010113          	addi	sp,sp,-16
    8000421c:	00813423          	sd	s0,8(sp)
    80004220:	01010413          	addi	s0,sp,16
    80004224:	f14027f3          	csrr	a5,mhartid
    80004228:	0200c737          	lui	a4,0x200c
    8000422c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80004230:	0007869b          	sext.w	a3,a5
    80004234:	00269713          	slli	a4,a3,0x2
    80004238:	000f4637          	lui	a2,0xf4
    8000423c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80004240:	00d70733          	add	a4,a4,a3
    80004244:	0037979b          	slliw	a5,a5,0x3
    80004248:	020046b7          	lui	a3,0x2004
    8000424c:	00d787b3          	add	a5,a5,a3
    80004250:	00c585b3          	add	a1,a1,a2
    80004254:	00371693          	slli	a3,a4,0x3
    80004258:	00004717          	auipc	a4,0x4
    8000425c:	50870713          	addi	a4,a4,1288 # 80008760 <timer_scratch>
    80004260:	00b7b023          	sd	a1,0(a5)
    80004264:	00d70733          	add	a4,a4,a3
    80004268:	00f73c23          	sd	a5,24(a4)
    8000426c:	02c73023          	sd	a2,32(a4)
    80004270:	34071073          	csrw	mscratch,a4
    80004274:	00000797          	auipc	a5,0x0
    80004278:	64c78793          	addi	a5,a5,1612 # 800048c0 <timervec>
    8000427c:	30579073          	csrw	mtvec,a5
    80004280:	300027f3          	csrr	a5,mstatus
    80004284:	0087e793          	ori	a5,a5,8
    80004288:	30079073          	csrw	mstatus,a5
    8000428c:	304027f3          	csrr	a5,mie
    80004290:	0807e793          	ori	a5,a5,128
    80004294:	30479073          	csrw	mie,a5
    80004298:	00813403          	ld	s0,8(sp)
    8000429c:	01010113          	addi	sp,sp,16
    800042a0:	00008067          	ret

00000000800042a4 <system_main>:
    800042a4:	fe010113          	addi	sp,sp,-32
    800042a8:	00813823          	sd	s0,16(sp)
    800042ac:	00913423          	sd	s1,8(sp)
    800042b0:	00113c23          	sd	ra,24(sp)
    800042b4:	02010413          	addi	s0,sp,32
    800042b8:	00000097          	auipc	ra,0x0
    800042bc:	0c4080e7          	jalr	196(ra) # 8000437c <cpuid>
    800042c0:	00004497          	auipc	s1,0x4
    800042c4:	42048493          	addi	s1,s1,1056 # 800086e0 <started>
    800042c8:	02050263          	beqz	a0,800042ec <system_main+0x48>
    800042cc:	0004a783          	lw	a5,0(s1)
    800042d0:	0007879b          	sext.w	a5,a5
    800042d4:	fe078ce3          	beqz	a5,800042cc <system_main+0x28>
    800042d8:	0ff0000f          	fence
    800042dc:	00003517          	auipc	a0,0x3
    800042e0:	f9c50513          	addi	a0,a0,-100 # 80007278 <_ZZ12printIntegermE6digits+0x150>
    800042e4:	00001097          	auipc	ra,0x1
    800042e8:	a78080e7          	jalr	-1416(ra) # 80004d5c <panic>
    800042ec:	00001097          	auipc	ra,0x1
    800042f0:	9cc080e7          	jalr	-1588(ra) # 80004cb8 <consoleinit>
    800042f4:	00001097          	auipc	ra,0x1
    800042f8:	158080e7          	jalr	344(ra) # 8000544c <printfinit>
    800042fc:	00003517          	auipc	a0,0x3
    80004300:	dec50513          	addi	a0,a0,-532 # 800070e8 <CONSOLE_STATUS+0xd8>
    80004304:	00001097          	auipc	ra,0x1
    80004308:	ab4080e7          	jalr	-1356(ra) # 80004db8 <__printf>
    8000430c:	00003517          	auipc	a0,0x3
    80004310:	f3c50513          	addi	a0,a0,-196 # 80007248 <_ZZ12printIntegermE6digits+0x120>
    80004314:	00001097          	auipc	ra,0x1
    80004318:	aa4080e7          	jalr	-1372(ra) # 80004db8 <__printf>
    8000431c:	00003517          	auipc	a0,0x3
    80004320:	dcc50513          	addi	a0,a0,-564 # 800070e8 <CONSOLE_STATUS+0xd8>
    80004324:	00001097          	auipc	ra,0x1
    80004328:	a94080e7          	jalr	-1388(ra) # 80004db8 <__printf>
    8000432c:	00001097          	auipc	ra,0x1
    80004330:	4ac080e7          	jalr	1196(ra) # 800057d8 <kinit>
    80004334:	00000097          	auipc	ra,0x0
    80004338:	148080e7          	jalr	328(ra) # 8000447c <trapinit>
    8000433c:	00000097          	auipc	ra,0x0
    80004340:	16c080e7          	jalr	364(ra) # 800044a8 <trapinithart>
    80004344:	00000097          	auipc	ra,0x0
    80004348:	5bc080e7          	jalr	1468(ra) # 80004900 <plicinit>
    8000434c:	00000097          	auipc	ra,0x0
    80004350:	5dc080e7          	jalr	1500(ra) # 80004928 <plicinithart>
    80004354:	00000097          	auipc	ra,0x0
    80004358:	078080e7          	jalr	120(ra) # 800043cc <userinit>
    8000435c:	0ff0000f          	fence
    80004360:	00100793          	li	a5,1
    80004364:	00003517          	auipc	a0,0x3
    80004368:	efc50513          	addi	a0,a0,-260 # 80007260 <_ZZ12printIntegermE6digits+0x138>
    8000436c:	00f4a023          	sw	a5,0(s1)
    80004370:	00001097          	auipc	ra,0x1
    80004374:	a48080e7          	jalr	-1464(ra) # 80004db8 <__printf>
    80004378:	0000006f          	j	80004378 <system_main+0xd4>

000000008000437c <cpuid>:
    8000437c:	ff010113          	addi	sp,sp,-16
    80004380:	00813423          	sd	s0,8(sp)
    80004384:	01010413          	addi	s0,sp,16
    80004388:	00020513          	mv	a0,tp
    8000438c:	00813403          	ld	s0,8(sp)
    80004390:	0005051b          	sext.w	a0,a0
    80004394:	01010113          	addi	sp,sp,16
    80004398:	00008067          	ret

000000008000439c <mycpu>:
    8000439c:	ff010113          	addi	sp,sp,-16
    800043a0:	00813423          	sd	s0,8(sp)
    800043a4:	01010413          	addi	s0,sp,16
    800043a8:	00020793          	mv	a5,tp
    800043ac:	00813403          	ld	s0,8(sp)
    800043b0:	0007879b          	sext.w	a5,a5
    800043b4:	00779793          	slli	a5,a5,0x7
    800043b8:	00005517          	auipc	a0,0x5
    800043bc:	3d850513          	addi	a0,a0,984 # 80009790 <cpus>
    800043c0:	00f50533          	add	a0,a0,a5
    800043c4:	01010113          	addi	sp,sp,16
    800043c8:	00008067          	ret

00000000800043cc <userinit>:
    800043cc:	ff010113          	addi	sp,sp,-16
    800043d0:	00813423          	sd	s0,8(sp)
    800043d4:	01010413          	addi	s0,sp,16
    800043d8:	00813403          	ld	s0,8(sp)
    800043dc:	01010113          	addi	sp,sp,16
    800043e0:	ffffe317          	auipc	t1,0xffffe
    800043e4:	83830067          	jr	-1992(t1) # 80001c18 <main>

00000000800043e8 <either_copyout>:
    800043e8:	ff010113          	addi	sp,sp,-16
    800043ec:	00813023          	sd	s0,0(sp)
    800043f0:	00113423          	sd	ra,8(sp)
    800043f4:	01010413          	addi	s0,sp,16
    800043f8:	02051663          	bnez	a0,80004424 <either_copyout+0x3c>
    800043fc:	00058513          	mv	a0,a1
    80004400:	00060593          	mv	a1,a2
    80004404:	0006861b          	sext.w	a2,a3
    80004408:	00002097          	auipc	ra,0x2
    8000440c:	c5c080e7          	jalr	-932(ra) # 80006064 <__memmove>
    80004410:	00813083          	ld	ra,8(sp)
    80004414:	00013403          	ld	s0,0(sp)
    80004418:	00000513          	li	a0,0
    8000441c:	01010113          	addi	sp,sp,16
    80004420:	00008067          	ret
    80004424:	00003517          	auipc	a0,0x3
    80004428:	e7c50513          	addi	a0,a0,-388 # 800072a0 <_ZZ12printIntegermE6digits+0x178>
    8000442c:	00001097          	auipc	ra,0x1
    80004430:	930080e7          	jalr	-1744(ra) # 80004d5c <panic>

0000000080004434 <either_copyin>:
    80004434:	ff010113          	addi	sp,sp,-16
    80004438:	00813023          	sd	s0,0(sp)
    8000443c:	00113423          	sd	ra,8(sp)
    80004440:	01010413          	addi	s0,sp,16
    80004444:	02059463          	bnez	a1,8000446c <either_copyin+0x38>
    80004448:	00060593          	mv	a1,a2
    8000444c:	0006861b          	sext.w	a2,a3
    80004450:	00002097          	auipc	ra,0x2
    80004454:	c14080e7          	jalr	-1004(ra) # 80006064 <__memmove>
    80004458:	00813083          	ld	ra,8(sp)
    8000445c:	00013403          	ld	s0,0(sp)
    80004460:	00000513          	li	a0,0
    80004464:	01010113          	addi	sp,sp,16
    80004468:	00008067          	ret
    8000446c:	00003517          	auipc	a0,0x3
    80004470:	e5c50513          	addi	a0,a0,-420 # 800072c8 <_ZZ12printIntegermE6digits+0x1a0>
    80004474:	00001097          	auipc	ra,0x1
    80004478:	8e8080e7          	jalr	-1816(ra) # 80004d5c <panic>

000000008000447c <trapinit>:
    8000447c:	ff010113          	addi	sp,sp,-16
    80004480:	00813423          	sd	s0,8(sp)
    80004484:	01010413          	addi	s0,sp,16
    80004488:	00813403          	ld	s0,8(sp)
    8000448c:	00003597          	auipc	a1,0x3
    80004490:	e6458593          	addi	a1,a1,-412 # 800072f0 <_ZZ12printIntegermE6digits+0x1c8>
    80004494:	00005517          	auipc	a0,0x5
    80004498:	37c50513          	addi	a0,a0,892 # 80009810 <tickslock>
    8000449c:	01010113          	addi	sp,sp,16
    800044a0:	00001317          	auipc	t1,0x1
    800044a4:	5c830067          	jr	1480(t1) # 80005a68 <initlock>

00000000800044a8 <trapinithart>:
    800044a8:	ff010113          	addi	sp,sp,-16
    800044ac:	00813423          	sd	s0,8(sp)
    800044b0:	01010413          	addi	s0,sp,16
    800044b4:	00000797          	auipc	a5,0x0
    800044b8:	2fc78793          	addi	a5,a5,764 # 800047b0 <kernelvec>
    800044bc:	10579073          	csrw	stvec,a5
    800044c0:	00813403          	ld	s0,8(sp)
    800044c4:	01010113          	addi	sp,sp,16
    800044c8:	00008067          	ret

00000000800044cc <usertrap>:
    800044cc:	ff010113          	addi	sp,sp,-16
    800044d0:	00813423          	sd	s0,8(sp)
    800044d4:	01010413          	addi	s0,sp,16
    800044d8:	00813403          	ld	s0,8(sp)
    800044dc:	01010113          	addi	sp,sp,16
    800044e0:	00008067          	ret

00000000800044e4 <usertrapret>:
    800044e4:	ff010113          	addi	sp,sp,-16
    800044e8:	00813423          	sd	s0,8(sp)
    800044ec:	01010413          	addi	s0,sp,16
    800044f0:	00813403          	ld	s0,8(sp)
    800044f4:	01010113          	addi	sp,sp,16
    800044f8:	00008067          	ret

00000000800044fc <kerneltrap>:
    800044fc:	fe010113          	addi	sp,sp,-32
    80004500:	00813823          	sd	s0,16(sp)
    80004504:	00113c23          	sd	ra,24(sp)
    80004508:	00913423          	sd	s1,8(sp)
    8000450c:	02010413          	addi	s0,sp,32
    80004510:	142025f3          	csrr	a1,scause
    80004514:	100027f3          	csrr	a5,sstatus
    80004518:	0027f793          	andi	a5,a5,2
    8000451c:	10079c63          	bnez	a5,80004634 <kerneltrap+0x138>
    80004520:	142027f3          	csrr	a5,scause
    80004524:	0207ce63          	bltz	a5,80004560 <kerneltrap+0x64>
    80004528:	00003517          	auipc	a0,0x3
    8000452c:	e1050513          	addi	a0,a0,-496 # 80007338 <_ZZ12printIntegermE6digits+0x210>
    80004530:	00001097          	auipc	ra,0x1
    80004534:	888080e7          	jalr	-1912(ra) # 80004db8 <__printf>
    80004538:	141025f3          	csrr	a1,sepc
    8000453c:	14302673          	csrr	a2,stval
    80004540:	00003517          	auipc	a0,0x3
    80004544:	e0850513          	addi	a0,a0,-504 # 80007348 <_ZZ12printIntegermE6digits+0x220>
    80004548:	00001097          	auipc	ra,0x1
    8000454c:	870080e7          	jalr	-1936(ra) # 80004db8 <__printf>
    80004550:	00003517          	auipc	a0,0x3
    80004554:	e1050513          	addi	a0,a0,-496 # 80007360 <_ZZ12printIntegermE6digits+0x238>
    80004558:	00001097          	auipc	ra,0x1
    8000455c:	804080e7          	jalr	-2044(ra) # 80004d5c <panic>
    80004560:	0ff7f713          	andi	a4,a5,255
    80004564:	00900693          	li	a3,9
    80004568:	04d70063          	beq	a4,a3,800045a8 <kerneltrap+0xac>
    8000456c:	fff00713          	li	a4,-1
    80004570:	03f71713          	slli	a4,a4,0x3f
    80004574:	00170713          	addi	a4,a4,1
    80004578:	fae798e3          	bne	a5,a4,80004528 <kerneltrap+0x2c>
    8000457c:	00000097          	auipc	ra,0x0
    80004580:	e00080e7          	jalr	-512(ra) # 8000437c <cpuid>
    80004584:	06050663          	beqz	a0,800045f0 <kerneltrap+0xf4>
    80004588:	144027f3          	csrr	a5,sip
    8000458c:	ffd7f793          	andi	a5,a5,-3
    80004590:	14479073          	csrw	sip,a5
    80004594:	01813083          	ld	ra,24(sp)
    80004598:	01013403          	ld	s0,16(sp)
    8000459c:	00813483          	ld	s1,8(sp)
    800045a0:	02010113          	addi	sp,sp,32
    800045a4:	00008067          	ret
    800045a8:	00000097          	auipc	ra,0x0
    800045ac:	3cc080e7          	jalr	972(ra) # 80004974 <plic_claim>
    800045b0:	00a00793          	li	a5,10
    800045b4:	00050493          	mv	s1,a0
    800045b8:	06f50863          	beq	a0,a5,80004628 <kerneltrap+0x12c>
    800045bc:	fc050ce3          	beqz	a0,80004594 <kerneltrap+0x98>
    800045c0:	00050593          	mv	a1,a0
    800045c4:	00003517          	auipc	a0,0x3
    800045c8:	d5450513          	addi	a0,a0,-684 # 80007318 <_ZZ12printIntegermE6digits+0x1f0>
    800045cc:	00000097          	auipc	ra,0x0
    800045d0:	7ec080e7          	jalr	2028(ra) # 80004db8 <__printf>
    800045d4:	01013403          	ld	s0,16(sp)
    800045d8:	01813083          	ld	ra,24(sp)
    800045dc:	00048513          	mv	a0,s1
    800045e0:	00813483          	ld	s1,8(sp)
    800045e4:	02010113          	addi	sp,sp,32
    800045e8:	00000317          	auipc	t1,0x0
    800045ec:	3c430067          	jr	964(t1) # 800049ac <plic_complete>
    800045f0:	00005517          	auipc	a0,0x5
    800045f4:	22050513          	addi	a0,a0,544 # 80009810 <tickslock>
    800045f8:	00001097          	auipc	ra,0x1
    800045fc:	494080e7          	jalr	1172(ra) # 80005a8c <acquire>
    80004600:	00004717          	auipc	a4,0x4
    80004604:	0e470713          	addi	a4,a4,228 # 800086e4 <ticks>
    80004608:	00072783          	lw	a5,0(a4)
    8000460c:	00005517          	auipc	a0,0x5
    80004610:	20450513          	addi	a0,a0,516 # 80009810 <tickslock>
    80004614:	0017879b          	addiw	a5,a5,1
    80004618:	00f72023          	sw	a5,0(a4)
    8000461c:	00001097          	auipc	ra,0x1
    80004620:	53c080e7          	jalr	1340(ra) # 80005b58 <release>
    80004624:	f65ff06f          	j	80004588 <kerneltrap+0x8c>
    80004628:	00001097          	auipc	ra,0x1
    8000462c:	098080e7          	jalr	152(ra) # 800056c0 <uartintr>
    80004630:	fa5ff06f          	j	800045d4 <kerneltrap+0xd8>
    80004634:	00003517          	auipc	a0,0x3
    80004638:	cc450513          	addi	a0,a0,-828 # 800072f8 <_ZZ12printIntegermE6digits+0x1d0>
    8000463c:	00000097          	auipc	ra,0x0
    80004640:	720080e7          	jalr	1824(ra) # 80004d5c <panic>

0000000080004644 <clockintr>:
    80004644:	fe010113          	addi	sp,sp,-32
    80004648:	00813823          	sd	s0,16(sp)
    8000464c:	00913423          	sd	s1,8(sp)
    80004650:	00113c23          	sd	ra,24(sp)
    80004654:	02010413          	addi	s0,sp,32
    80004658:	00005497          	auipc	s1,0x5
    8000465c:	1b848493          	addi	s1,s1,440 # 80009810 <tickslock>
    80004660:	00048513          	mv	a0,s1
    80004664:	00001097          	auipc	ra,0x1
    80004668:	428080e7          	jalr	1064(ra) # 80005a8c <acquire>
    8000466c:	00004717          	auipc	a4,0x4
    80004670:	07870713          	addi	a4,a4,120 # 800086e4 <ticks>
    80004674:	00072783          	lw	a5,0(a4)
    80004678:	01013403          	ld	s0,16(sp)
    8000467c:	01813083          	ld	ra,24(sp)
    80004680:	00048513          	mv	a0,s1
    80004684:	0017879b          	addiw	a5,a5,1
    80004688:	00813483          	ld	s1,8(sp)
    8000468c:	00f72023          	sw	a5,0(a4)
    80004690:	02010113          	addi	sp,sp,32
    80004694:	00001317          	auipc	t1,0x1
    80004698:	4c430067          	jr	1220(t1) # 80005b58 <release>

000000008000469c <devintr>:
    8000469c:	142027f3          	csrr	a5,scause
    800046a0:	00000513          	li	a0,0
    800046a4:	0007c463          	bltz	a5,800046ac <devintr+0x10>
    800046a8:	00008067          	ret
    800046ac:	fe010113          	addi	sp,sp,-32
    800046b0:	00813823          	sd	s0,16(sp)
    800046b4:	00113c23          	sd	ra,24(sp)
    800046b8:	00913423          	sd	s1,8(sp)
    800046bc:	02010413          	addi	s0,sp,32
    800046c0:	0ff7f713          	andi	a4,a5,255
    800046c4:	00900693          	li	a3,9
    800046c8:	04d70c63          	beq	a4,a3,80004720 <devintr+0x84>
    800046cc:	fff00713          	li	a4,-1
    800046d0:	03f71713          	slli	a4,a4,0x3f
    800046d4:	00170713          	addi	a4,a4,1
    800046d8:	00e78c63          	beq	a5,a4,800046f0 <devintr+0x54>
    800046dc:	01813083          	ld	ra,24(sp)
    800046e0:	01013403          	ld	s0,16(sp)
    800046e4:	00813483          	ld	s1,8(sp)
    800046e8:	02010113          	addi	sp,sp,32
    800046ec:	00008067          	ret
    800046f0:	00000097          	auipc	ra,0x0
    800046f4:	c8c080e7          	jalr	-884(ra) # 8000437c <cpuid>
    800046f8:	06050663          	beqz	a0,80004764 <devintr+0xc8>
    800046fc:	144027f3          	csrr	a5,sip
    80004700:	ffd7f793          	andi	a5,a5,-3
    80004704:	14479073          	csrw	sip,a5
    80004708:	01813083          	ld	ra,24(sp)
    8000470c:	01013403          	ld	s0,16(sp)
    80004710:	00813483          	ld	s1,8(sp)
    80004714:	00200513          	li	a0,2
    80004718:	02010113          	addi	sp,sp,32
    8000471c:	00008067          	ret
    80004720:	00000097          	auipc	ra,0x0
    80004724:	254080e7          	jalr	596(ra) # 80004974 <plic_claim>
    80004728:	00a00793          	li	a5,10
    8000472c:	00050493          	mv	s1,a0
    80004730:	06f50663          	beq	a0,a5,8000479c <devintr+0x100>
    80004734:	00100513          	li	a0,1
    80004738:	fa0482e3          	beqz	s1,800046dc <devintr+0x40>
    8000473c:	00048593          	mv	a1,s1
    80004740:	00003517          	auipc	a0,0x3
    80004744:	bd850513          	addi	a0,a0,-1064 # 80007318 <_ZZ12printIntegermE6digits+0x1f0>
    80004748:	00000097          	auipc	ra,0x0
    8000474c:	670080e7          	jalr	1648(ra) # 80004db8 <__printf>
    80004750:	00048513          	mv	a0,s1
    80004754:	00000097          	auipc	ra,0x0
    80004758:	258080e7          	jalr	600(ra) # 800049ac <plic_complete>
    8000475c:	00100513          	li	a0,1
    80004760:	f7dff06f          	j	800046dc <devintr+0x40>
    80004764:	00005517          	auipc	a0,0x5
    80004768:	0ac50513          	addi	a0,a0,172 # 80009810 <tickslock>
    8000476c:	00001097          	auipc	ra,0x1
    80004770:	320080e7          	jalr	800(ra) # 80005a8c <acquire>
    80004774:	00004717          	auipc	a4,0x4
    80004778:	f7070713          	addi	a4,a4,-144 # 800086e4 <ticks>
    8000477c:	00072783          	lw	a5,0(a4)
    80004780:	00005517          	auipc	a0,0x5
    80004784:	09050513          	addi	a0,a0,144 # 80009810 <tickslock>
    80004788:	0017879b          	addiw	a5,a5,1
    8000478c:	00f72023          	sw	a5,0(a4)
    80004790:	00001097          	auipc	ra,0x1
    80004794:	3c8080e7          	jalr	968(ra) # 80005b58 <release>
    80004798:	f65ff06f          	j	800046fc <devintr+0x60>
    8000479c:	00001097          	auipc	ra,0x1
    800047a0:	f24080e7          	jalr	-220(ra) # 800056c0 <uartintr>
    800047a4:	fadff06f          	j	80004750 <devintr+0xb4>
	...

00000000800047b0 <kernelvec>:
    800047b0:	f0010113          	addi	sp,sp,-256
    800047b4:	00113023          	sd	ra,0(sp)
    800047b8:	00213423          	sd	sp,8(sp)
    800047bc:	00313823          	sd	gp,16(sp)
    800047c0:	00413c23          	sd	tp,24(sp)
    800047c4:	02513023          	sd	t0,32(sp)
    800047c8:	02613423          	sd	t1,40(sp)
    800047cc:	02713823          	sd	t2,48(sp)
    800047d0:	02813c23          	sd	s0,56(sp)
    800047d4:	04913023          	sd	s1,64(sp)
    800047d8:	04a13423          	sd	a0,72(sp)
    800047dc:	04b13823          	sd	a1,80(sp)
    800047e0:	04c13c23          	sd	a2,88(sp)
    800047e4:	06d13023          	sd	a3,96(sp)
    800047e8:	06e13423          	sd	a4,104(sp)
    800047ec:	06f13823          	sd	a5,112(sp)
    800047f0:	07013c23          	sd	a6,120(sp)
    800047f4:	09113023          	sd	a7,128(sp)
    800047f8:	09213423          	sd	s2,136(sp)
    800047fc:	09313823          	sd	s3,144(sp)
    80004800:	09413c23          	sd	s4,152(sp)
    80004804:	0b513023          	sd	s5,160(sp)
    80004808:	0b613423          	sd	s6,168(sp)
    8000480c:	0b713823          	sd	s7,176(sp)
    80004810:	0b813c23          	sd	s8,184(sp)
    80004814:	0d913023          	sd	s9,192(sp)
    80004818:	0da13423          	sd	s10,200(sp)
    8000481c:	0db13823          	sd	s11,208(sp)
    80004820:	0dc13c23          	sd	t3,216(sp)
    80004824:	0fd13023          	sd	t4,224(sp)
    80004828:	0fe13423          	sd	t5,232(sp)
    8000482c:	0ff13823          	sd	t6,240(sp)
    80004830:	ccdff0ef          	jal	ra,800044fc <kerneltrap>
    80004834:	00013083          	ld	ra,0(sp)
    80004838:	00813103          	ld	sp,8(sp)
    8000483c:	01013183          	ld	gp,16(sp)
    80004840:	02013283          	ld	t0,32(sp)
    80004844:	02813303          	ld	t1,40(sp)
    80004848:	03013383          	ld	t2,48(sp)
    8000484c:	03813403          	ld	s0,56(sp)
    80004850:	04013483          	ld	s1,64(sp)
    80004854:	04813503          	ld	a0,72(sp)
    80004858:	05013583          	ld	a1,80(sp)
    8000485c:	05813603          	ld	a2,88(sp)
    80004860:	06013683          	ld	a3,96(sp)
    80004864:	06813703          	ld	a4,104(sp)
    80004868:	07013783          	ld	a5,112(sp)
    8000486c:	07813803          	ld	a6,120(sp)
    80004870:	08013883          	ld	a7,128(sp)
    80004874:	08813903          	ld	s2,136(sp)
    80004878:	09013983          	ld	s3,144(sp)
    8000487c:	09813a03          	ld	s4,152(sp)
    80004880:	0a013a83          	ld	s5,160(sp)
    80004884:	0a813b03          	ld	s6,168(sp)
    80004888:	0b013b83          	ld	s7,176(sp)
    8000488c:	0b813c03          	ld	s8,184(sp)
    80004890:	0c013c83          	ld	s9,192(sp)
    80004894:	0c813d03          	ld	s10,200(sp)
    80004898:	0d013d83          	ld	s11,208(sp)
    8000489c:	0d813e03          	ld	t3,216(sp)
    800048a0:	0e013e83          	ld	t4,224(sp)
    800048a4:	0e813f03          	ld	t5,232(sp)
    800048a8:	0f013f83          	ld	t6,240(sp)
    800048ac:	10010113          	addi	sp,sp,256
    800048b0:	10200073          	sret
    800048b4:	00000013          	nop
    800048b8:	00000013          	nop
    800048bc:	00000013          	nop

00000000800048c0 <timervec>:
    800048c0:	34051573          	csrrw	a0,mscratch,a0
    800048c4:	00b53023          	sd	a1,0(a0)
    800048c8:	00c53423          	sd	a2,8(a0)
    800048cc:	00d53823          	sd	a3,16(a0)
    800048d0:	01853583          	ld	a1,24(a0)
    800048d4:	02053603          	ld	a2,32(a0)
    800048d8:	0005b683          	ld	a3,0(a1)
    800048dc:	00c686b3          	add	a3,a3,a2
    800048e0:	00d5b023          	sd	a3,0(a1)
    800048e4:	00200593          	li	a1,2
    800048e8:	14459073          	csrw	sip,a1
    800048ec:	01053683          	ld	a3,16(a0)
    800048f0:	00853603          	ld	a2,8(a0)
    800048f4:	00053583          	ld	a1,0(a0)
    800048f8:	34051573          	csrrw	a0,mscratch,a0
    800048fc:	30200073          	mret

0000000080004900 <plicinit>:
    80004900:	ff010113          	addi	sp,sp,-16
    80004904:	00813423          	sd	s0,8(sp)
    80004908:	01010413          	addi	s0,sp,16
    8000490c:	00813403          	ld	s0,8(sp)
    80004910:	0c0007b7          	lui	a5,0xc000
    80004914:	00100713          	li	a4,1
    80004918:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000491c:	00e7a223          	sw	a4,4(a5)
    80004920:	01010113          	addi	sp,sp,16
    80004924:	00008067          	ret

0000000080004928 <plicinithart>:
    80004928:	ff010113          	addi	sp,sp,-16
    8000492c:	00813023          	sd	s0,0(sp)
    80004930:	00113423          	sd	ra,8(sp)
    80004934:	01010413          	addi	s0,sp,16
    80004938:	00000097          	auipc	ra,0x0
    8000493c:	a44080e7          	jalr	-1468(ra) # 8000437c <cpuid>
    80004940:	0085171b          	slliw	a4,a0,0x8
    80004944:	0c0027b7          	lui	a5,0xc002
    80004948:	00e787b3          	add	a5,a5,a4
    8000494c:	40200713          	li	a4,1026
    80004950:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80004954:	00813083          	ld	ra,8(sp)
    80004958:	00013403          	ld	s0,0(sp)
    8000495c:	00d5151b          	slliw	a0,a0,0xd
    80004960:	0c2017b7          	lui	a5,0xc201
    80004964:	00a78533          	add	a0,a5,a0
    80004968:	00052023          	sw	zero,0(a0)
    8000496c:	01010113          	addi	sp,sp,16
    80004970:	00008067          	ret

0000000080004974 <plic_claim>:
    80004974:	ff010113          	addi	sp,sp,-16
    80004978:	00813023          	sd	s0,0(sp)
    8000497c:	00113423          	sd	ra,8(sp)
    80004980:	01010413          	addi	s0,sp,16
    80004984:	00000097          	auipc	ra,0x0
    80004988:	9f8080e7          	jalr	-1544(ra) # 8000437c <cpuid>
    8000498c:	00813083          	ld	ra,8(sp)
    80004990:	00013403          	ld	s0,0(sp)
    80004994:	00d5151b          	slliw	a0,a0,0xd
    80004998:	0c2017b7          	lui	a5,0xc201
    8000499c:	00a78533          	add	a0,a5,a0
    800049a0:	00452503          	lw	a0,4(a0)
    800049a4:	01010113          	addi	sp,sp,16
    800049a8:	00008067          	ret

00000000800049ac <plic_complete>:
    800049ac:	fe010113          	addi	sp,sp,-32
    800049b0:	00813823          	sd	s0,16(sp)
    800049b4:	00913423          	sd	s1,8(sp)
    800049b8:	00113c23          	sd	ra,24(sp)
    800049bc:	02010413          	addi	s0,sp,32
    800049c0:	00050493          	mv	s1,a0
    800049c4:	00000097          	auipc	ra,0x0
    800049c8:	9b8080e7          	jalr	-1608(ra) # 8000437c <cpuid>
    800049cc:	01813083          	ld	ra,24(sp)
    800049d0:	01013403          	ld	s0,16(sp)
    800049d4:	00d5179b          	slliw	a5,a0,0xd
    800049d8:	0c201737          	lui	a4,0xc201
    800049dc:	00f707b3          	add	a5,a4,a5
    800049e0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800049e4:	00813483          	ld	s1,8(sp)
    800049e8:	02010113          	addi	sp,sp,32
    800049ec:	00008067          	ret

00000000800049f0 <consolewrite>:
    800049f0:	fb010113          	addi	sp,sp,-80
    800049f4:	04813023          	sd	s0,64(sp)
    800049f8:	04113423          	sd	ra,72(sp)
    800049fc:	02913c23          	sd	s1,56(sp)
    80004a00:	03213823          	sd	s2,48(sp)
    80004a04:	03313423          	sd	s3,40(sp)
    80004a08:	03413023          	sd	s4,32(sp)
    80004a0c:	01513c23          	sd	s5,24(sp)
    80004a10:	05010413          	addi	s0,sp,80
    80004a14:	06c05c63          	blez	a2,80004a8c <consolewrite+0x9c>
    80004a18:	00060993          	mv	s3,a2
    80004a1c:	00050a13          	mv	s4,a0
    80004a20:	00058493          	mv	s1,a1
    80004a24:	00000913          	li	s2,0
    80004a28:	fff00a93          	li	s5,-1
    80004a2c:	01c0006f          	j	80004a48 <consolewrite+0x58>
    80004a30:	fbf44503          	lbu	a0,-65(s0)
    80004a34:	0019091b          	addiw	s2,s2,1
    80004a38:	00148493          	addi	s1,s1,1
    80004a3c:	00001097          	auipc	ra,0x1
    80004a40:	a9c080e7          	jalr	-1380(ra) # 800054d8 <uartputc>
    80004a44:	03298063          	beq	s3,s2,80004a64 <consolewrite+0x74>
    80004a48:	00048613          	mv	a2,s1
    80004a4c:	00100693          	li	a3,1
    80004a50:	000a0593          	mv	a1,s4
    80004a54:	fbf40513          	addi	a0,s0,-65
    80004a58:	00000097          	auipc	ra,0x0
    80004a5c:	9dc080e7          	jalr	-1572(ra) # 80004434 <either_copyin>
    80004a60:	fd5518e3          	bne	a0,s5,80004a30 <consolewrite+0x40>
    80004a64:	04813083          	ld	ra,72(sp)
    80004a68:	04013403          	ld	s0,64(sp)
    80004a6c:	03813483          	ld	s1,56(sp)
    80004a70:	02813983          	ld	s3,40(sp)
    80004a74:	02013a03          	ld	s4,32(sp)
    80004a78:	01813a83          	ld	s5,24(sp)
    80004a7c:	00090513          	mv	a0,s2
    80004a80:	03013903          	ld	s2,48(sp)
    80004a84:	05010113          	addi	sp,sp,80
    80004a88:	00008067          	ret
    80004a8c:	00000913          	li	s2,0
    80004a90:	fd5ff06f          	j	80004a64 <consolewrite+0x74>

0000000080004a94 <consoleread>:
    80004a94:	f9010113          	addi	sp,sp,-112
    80004a98:	06813023          	sd	s0,96(sp)
    80004a9c:	04913c23          	sd	s1,88(sp)
    80004aa0:	05213823          	sd	s2,80(sp)
    80004aa4:	05313423          	sd	s3,72(sp)
    80004aa8:	05413023          	sd	s4,64(sp)
    80004aac:	03513c23          	sd	s5,56(sp)
    80004ab0:	03613823          	sd	s6,48(sp)
    80004ab4:	03713423          	sd	s7,40(sp)
    80004ab8:	03813023          	sd	s8,32(sp)
    80004abc:	06113423          	sd	ra,104(sp)
    80004ac0:	01913c23          	sd	s9,24(sp)
    80004ac4:	07010413          	addi	s0,sp,112
    80004ac8:	00060b93          	mv	s7,a2
    80004acc:	00050913          	mv	s2,a0
    80004ad0:	00058c13          	mv	s8,a1
    80004ad4:	00060b1b          	sext.w	s6,a2
    80004ad8:	00005497          	auipc	s1,0x5
    80004adc:	d6048493          	addi	s1,s1,-672 # 80009838 <cons>
    80004ae0:	00400993          	li	s3,4
    80004ae4:	fff00a13          	li	s4,-1
    80004ae8:	00a00a93          	li	s5,10
    80004aec:	05705e63          	blez	s7,80004b48 <consoleread+0xb4>
    80004af0:	09c4a703          	lw	a4,156(s1)
    80004af4:	0984a783          	lw	a5,152(s1)
    80004af8:	0007071b          	sext.w	a4,a4
    80004afc:	08e78463          	beq	a5,a4,80004b84 <consoleread+0xf0>
    80004b00:	07f7f713          	andi	a4,a5,127
    80004b04:	00e48733          	add	a4,s1,a4
    80004b08:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80004b0c:	0017869b          	addiw	a3,a5,1
    80004b10:	08d4ac23          	sw	a3,152(s1)
    80004b14:	00070c9b          	sext.w	s9,a4
    80004b18:	0b370663          	beq	a4,s3,80004bc4 <consoleread+0x130>
    80004b1c:	00100693          	li	a3,1
    80004b20:	f9f40613          	addi	a2,s0,-97
    80004b24:	000c0593          	mv	a1,s8
    80004b28:	00090513          	mv	a0,s2
    80004b2c:	f8e40fa3          	sb	a4,-97(s0)
    80004b30:	00000097          	auipc	ra,0x0
    80004b34:	8b8080e7          	jalr	-1864(ra) # 800043e8 <either_copyout>
    80004b38:	01450863          	beq	a0,s4,80004b48 <consoleread+0xb4>
    80004b3c:	001c0c13          	addi	s8,s8,1
    80004b40:	fffb8b9b          	addiw	s7,s7,-1
    80004b44:	fb5c94e3          	bne	s9,s5,80004aec <consoleread+0x58>
    80004b48:	000b851b          	sext.w	a0,s7
    80004b4c:	06813083          	ld	ra,104(sp)
    80004b50:	06013403          	ld	s0,96(sp)
    80004b54:	05813483          	ld	s1,88(sp)
    80004b58:	05013903          	ld	s2,80(sp)
    80004b5c:	04813983          	ld	s3,72(sp)
    80004b60:	04013a03          	ld	s4,64(sp)
    80004b64:	03813a83          	ld	s5,56(sp)
    80004b68:	02813b83          	ld	s7,40(sp)
    80004b6c:	02013c03          	ld	s8,32(sp)
    80004b70:	01813c83          	ld	s9,24(sp)
    80004b74:	40ab053b          	subw	a0,s6,a0
    80004b78:	03013b03          	ld	s6,48(sp)
    80004b7c:	07010113          	addi	sp,sp,112
    80004b80:	00008067          	ret
    80004b84:	00001097          	auipc	ra,0x1
    80004b88:	1d8080e7          	jalr	472(ra) # 80005d5c <push_on>
    80004b8c:	0984a703          	lw	a4,152(s1)
    80004b90:	09c4a783          	lw	a5,156(s1)
    80004b94:	0007879b          	sext.w	a5,a5
    80004b98:	fef70ce3          	beq	a4,a5,80004b90 <consoleread+0xfc>
    80004b9c:	00001097          	auipc	ra,0x1
    80004ba0:	234080e7          	jalr	564(ra) # 80005dd0 <pop_on>
    80004ba4:	0984a783          	lw	a5,152(s1)
    80004ba8:	07f7f713          	andi	a4,a5,127
    80004bac:	00e48733          	add	a4,s1,a4
    80004bb0:	01874703          	lbu	a4,24(a4)
    80004bb4:	0017869b          	addiw	a3,a5,1
    80004bb8:	08d4ac23          	sw	a3,152(s1)
    80004bbc:	00070c9b          	sext.w	s9,a4
    80004bc0:	f5371ee3          	bne	a4,s3,80004b1c <consoleread+0x88>
    80004bc4:	000b851b          	sext.w	a0,s7
    80004bc8:	f96bf2e3          	bgeu	s7,s6,80004b4c <consoleread+0xb8>
    80004bcc:	08f4ac23          	sw	a5,152(s1)
    80004bd0:	f7dff06f          	j	80004b4c <consoleread+0xb8>

0000000080004bd4 <consputc>:
    80004bd4:	10000793          	li	a5,256
    80004bd8:	00f50663          	beq	a0,a5,80004be4 <consputc+0x10>
    80004bdc:	00001317          	auipc	t1,0x1
    80004be0:	9f430067          	jr	-1548(t1) # 800055d0 <uartputc_sync>
    80004be4:	ff010113          	addi	sp,sp,-16
    80004be8:	00113423          	sd	ra,8(sp)
    80004bec:	00813023          	sd	s0,0(sp)
    80004bf0:	01010413          	addi	s0,sp,16
    80004bf4:	00800513          	li	a0,8
    80004bf8:	00001097          	auipc	ra,0x1
    80004bfc:	9d8080e7          	jalr	-1576(ra) # 800055d0 <uartputc_sync>
    80004c00:	02000513          	li	a0,32
    80004c04:	00001097          	auipc	ra,0x1
    80004c08:	9cc080e7          	jalr	-1588(ra) # 800055d0 <uartputc_sync>
    80004c0c:	00013403          	ld	s0,0(sp)
    80004c10:	00813083          	ld	ra,8(sp)
    80004c14:	00800513          	li	a0,8
    80004c18:	01010113          	addi	sp,sp,16
    80004c1c:	00001317          	auipc	t1,0x1
    80004c20:	9b430067          	jr	-1612(t1) # 800055d0 <uartputc_sync>

0000000080004c24 <consoleintr>:
    80004c24:	fe010113          	addi	sp,sp,-32
    80004c28:	00813823          	sd	s0,16(sp)
    80004c2c:	00913423          	sd	s1,8(sp)
    80004c30:	01213023          	sd	s2,0(sp)
    80004c34:	00113c23          	sd	ra,24(sp)
    80004c38:	02010413          	addi	s0,sp,32
    80004c3c:	00005917          	auipc	s2,0x5
    80004c40:	bfc90913          	addi	s2,s2,-1028 # 80009838 <cons>
    80004c44:	00050493          	mv	s1,a0
    80004c48:	00090513          	mv	a0,s2
    80004c4c:	00001097          	auipc	ra,0x1
    80004c50:	e40080e7          	jalr	-448(ra) # 80005a8c <acquire>
    80004c54:	02048c63          	beqz	s1,80004c8c <consoleintr+0x68>
    80004c58:	0a092783          	lw	a5,160(s2)
    80004c5c:	09892703          	lw	a4,152(s2)
    80004c60:	07f00693          	li	a3,127
    80004c64:	40e7873b          	subw	a4,a5,a4
    80004c68:	02e6e263          	bltu	a3,a4,80004c8c <consoleintr+0x68>
    80004c6c:	00d00713          	li	a4,13
    80004c70:	04e48063          	beq	s1,a4,80004cb0 <consoleintr+0x8c>
    80004c74:	07f7f713          	andi	a4,a5,127
    80004c78:	00e90733          	add	a4,s2,a4
    80004c7c:	0017879b          	addiw	a5,a5,1
    80004c80:	0af92023          	sw	a5,160(s2)
    80004c84:	00970c23          	sb	s1,24(a4)
    80004c88:	08f92e23          	sw	a5,156(s2)
    80004c8c:	01013403          	ld	s0,16(sp)
    80004c90:	01813083          	ld	ra,24(sp)
    80004c94:	00813483          	ld	s1,8(sp)
    80004c98:	00013903          	ld	s2,0(sp)
    80004c9c:	00005517          	auipc	a0,0x5
    80004ca0:	b9c50513          	addi	a0,a0,-1124 # 80009838 <cons>
    80004ca4:	02010113          	addi	sp,sp,32
    80004ca8:	00001317          	auipc	t1,0x1
    80004cac:	eb030067          	jr	-336(t1) # 80005b58 <release>
    80004cb0:	00a00493          	li	s1,10
    80004cb4:	fc1ff06f          	j	80004c74 <consoleintr+0x50>

0000000080004cb8 <consoleinit>:
    80004cb8:	fe010113          	addi	sp,sp,-32
    80004cbc:	00113c23          	sd	ra,24(sp)
    80004cc0:	00813823          	sd	s0,16(sp)
    80004cc4:	00913423          	sd	s1,8(sp)
    80004cc8:	02010413          	addi	s0,sp,32
    80004ccc:	00005497          	auipc	s1,0x5
    80004cd0:	b6c48493          	addi	s1,s1,-1172 # 80009838 <cons>
    80004cd4:	00048513          	mv	a0,s1
    80004cd8:	00002597          	auipc	a1,0x2
    80004cdc:	69858593          	addi	a1,a1,1688 # 80007370 <_ZZ12printIntegermE6digits+0x248>
    80004ce0:	00001097          	auipc	ra,0x1
    80004ce4:	d88080e7          	jalr	-632(ra) # 80005a68 <initlock>
    80004ce8:	00000097          	auipc	ra,0x0
    80004cec:	7ac080e7          	jalr	1964(ra) # 80005494 <uartinit>
    80004cf0:	01813083          	ld	ra,24(sp)
    80004cf4:	01013403          	ld	s0,16(sp)
    80004cf8:	00000797          	auipc	a5,0x0
    80004cfc:	d9c78793          	addi	a5,a5,-612 # 80004a94 <consoleread>
    80004d00:	0af4bc23          	sd	a5,184(s1)
    80004d04:	00000797          	auipc	a5,0x0
    80004d08:	cec78793          	addi	a5,a5,-788 # 800049f0 <consolewrite>
    80004d0c:	0cf4b023          	sd	a5,192(s1)
    80004d10:	00813483          	ld	s1,8(sp)
    80004d14:	02010113          	addi	sp,sp,32
    80004d18:	00008067          	ret

0000000080004d1c <console_read>:
    80004d1c:	ff010113          	addi	sp,sp,-16
    80004d20:	00813423          	sd	s0,8(sp)
    80004d24:	01010413          	addi	s0,sp,16
    80004d28:	00813403          	ld	s0,8(sp)
    80004d2c:	00005317          	auipc	t1,0x5
    80004d30:	bc433303          	ld	t1,-1084(t1) # 800098f0 <devsw+0x10>
    80004d34:	01010113          	addi	sp,sp,16
    80004d38:	00030067          	jr	t1

0000000080004d3c <console_write>:
    80004d3c:	ff010113          	addi	sp,sp,-16
    80004d40:	00813423          	sd	s0,8(sp)
    80004d44:	01010413          	addi	s0,sp,16
    80004d48:	00813403          	ld	s0,8(sp)
    80004d4c:	00005317          	auipc	t1,0x5
    80004d50:	bac33303          	ld	t1,-1108(t1) # 800098f8 <devsw+0x18>
    80004d54:	01010113          	addi	sp,sp,16
    80004d58:	00030067          	jr	t1

0000000080004d5c <panic>:
    80004d5c:	fe010113          	addi	sp,sp,-32
    80004d60:	00113c23          	sd	ra,24(sp)
    80004d64:	00813823          	sd	s0,16(sp)
    80004d68:	00913423          	sd	s1,8(sp)
    80004d6c:	02010413          	addi	s0,sp,32
    80004d70:	00050493          	mv	s1,a0
    80004d74:	00002517          	auipc	a0,0x2
    80004d78:	60450513          	addi	a0,a0,1540 # 80007378 <_ZZ12printIntegermE6digits+0x250>
    80004d7c:	00005797          	auipc	a5,0x5
    80004d80:	c007ae23          	sw	zero,-996(a5) # 80009998 <pr+0x18>
    80004d84:	00000097          	auipc	ra,0x0
    80004d88:	034080e7          	jalr	52(ra) # 80004db8 <__printf>
    80004d8c:	00048513          	mv	a0,s1
    80004d90:	00000097          	auipc	ra,0x0
    80004d94:	028080e7          	jalr	40(ra) # 80004db8 <__printf>
    80004d98:	00002517          	auipc	a0,0x2
    80004d9c:	35050513          	addi	a0,a0,848 # 800070e8 <CONSOLE_STATUS+0xd8>
    80004da0:	00000097          	auipc	ra,0x0
    80004da4:	018080e7          	jalr	24(ra) # 80004db8 <__printf>
    80004da8:	00100793          	li	a5,1
    80004dac:	00004717          	auipc	a4,0x4
    80004db0:	92f72e23          	sw	a5,-1732(a4) # 800086e8 <panicked>
    80004db4:	0000006f          	j	80004db4 <panic+0x58>

0000000080004db8 <__printf>:
    80004db8:	f3010113          	addi	sp,sp,-208
    80004dbc:	08813023          	sd	s0,128(sp)
    80004dc0:	07313423          	sd	s3,104(sp)
    80004dc4:	09010413          	addi	s0,sp,144
    80004dc8:	05813023          	sd	s8,64(sp)
    80004dcc:	08113423          	sd	ra,136(sp)
    80004dd0:	06913c23          	sd	s1,120(sp)
    80004dd4:	07213823          	sd	s2,112(sp)
    80004dd8:	07413023          	sd	s4,96(sp)
    80004ddc:	05513c23          	sd	s5,88(sp)
    80004de0:	05613823          	sd	s6,80(sp)
    80004de4:	05713423          	sd	s7,72(sp)
    80004de8:	03913c23          	sd	s9,56(sp)
    80004dec:	03a13823          	sd	s10,48(sp)
    80004df0:	03b13423          	sd	s11,40(sp)
    80004df4:	00005317          	auipc	t1,0x5
    80004df8:	b8c30313          	addi	t1,t1,-1140 # 80009980 <pr>
    80004dfc:	01832c03          	lw	s8,24(t1)
    80004e00:	00b43423          	sd	a1,8(s0)
    80004e04:	00c43823          	sd	a2,16(s0)
    80004e08:	00d43c23          	sd	a3,24(s0)
    80004e0c:	02e43023          	sd	a4,32(s0)
    80004e10:	02f43423          	sd	a5,40(s0)
    80004e14:	03043823          	sd	a6,48(s0)
    80004e18:	03143c23          	sd	a7,56(s0)
    80004e1c:	00050993          	mv	s3,a0
    80004e20:	4a0c1663          	bnez	s8,800052cc <__printf+0x514>
    80004e24:	60098c63          	beqz	s3,8000543c <__printf+0x684>
    80004e28:	0009c503          	lbu	a0,0(s3)
    80004e2c:	00840793          	addi	a5,s0,8
    80004e30:	f6f43c23          	sd	a5,-136(s0)
    80004e34:	00000493          	li	s1,0
    80004e38:	22050063          	beqz	a0,80005058 <__printf+0x2a0>
    80004e3c:	00002a37          	lui	s4,0x2
    80004e40:	00018ab7          	lui	s5,0x18
    80004e44:	000f4b37          	lui	s6,0xf4
    80004e48:	00989bb7          	lui	s7,0x989
    80004e4c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80004e50:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80004e54:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80004e58:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80004e5c:	00148c9b          	addiw	s9,s1,1
    80004e60:	02500793          	li	a5,37
    80004e64:	01998933          	add	s2,s3,s9
    80004e68:	38f51263          	bne	a0,a5,800051ec <__printf+0x434>
    80004e6c:	00094783          	lbu	a5,0(s2)
    80004e70:	00078c9b          	sext.w	s9,a5
    80004e74:	1e078263          	beqz	a5,80005058 <__printf+0x2a0>
    80004e78:	0024849b          	addiw	s1,s1,2
    80004e7c:	07000713          	li	a4,112
    80004e80:	00998933          	add	s2,s3,s1
    80004e84:	38e78a63          	beq	a5,a4,80005218 <__printf+0x460>
    80004e88:	20f76863          	bltu	a4,a5,80005098 <__printf+0x2e0>
    80004e8c:	42a78863          	beq	a5,a0,800052bc <__printf+0x504>
    80004e90:	06400713          	li	a4,100
    80004e94:	40e79663          	bne	a5,a4,800052a0 <__printf+0x4e8>
    80004e98:	f7843783          	ld	a5,-136(s0)
    80004e9c:	0007a603          	lw	a2,0(a5)
    80004ea0:	00878793          	addi	a5,a5,8
    80004ea4:	f6f43c23          	sd	a5,-136(s0)
    80004ea8:	42064a63          	bltz	a2,800052dc <__printf+0x524>
    80004eac:	00a00713          	li	a4,10
    80004eb0:	02e677bb          	remuw	a5,a2,a4
    80004eb4:	00002d97          	auipc	s11,0x2
    80004eb8:	4ecd8d93          	addi	s11,s11,1260 # 800073a0 <digits>
    80004ebc:	00900593          	li	a1,9
    80004ec0:	0006051b          	sext.w	a0,a2
    80004ec4:	00000c93          	li	s9,0
    80004ec8:	02079793          	slli	a5,a5,0x20
    80004ecc:	0207d793          	srli	a5,a5,0x20
    80004ed0:	00fd87b3          	add	a5,s11,a5
    80004ed4:	0007c783          	lbu	a5,0(a5)
    80004ed8:	02e656bb          	divuw	a3,a2,a4
    80004edc:	f8f40023          	sb	a5,-128(s0)
    80004ee0:	14c5d863          	bge	a1,a2,80005030 <__printf+0x278>
    80004ee4:	06300593          	li	a1,99
    80004ee8:	00100c93          	li	s9,1
    80004eec:	02e6f7bb          	remuw	a5,a3,a4
    80004ef0:	02079793          	slli	a5,a5,0x20
    80004ef4:	0207d793          	srli	a5,a5,0x20
    80004ef8:	00fd87b3          	add	a5,s11,a5
    80004efc:	0007c783          	lbu	a5,0(a5)
    80004f00:	02e6d73b          	divuw	a4,a3,a4
    80004f04:	f8f400a3          	sb	a5,-127(s0)
    80004f08:	12a5f463          	bgeu	a1,a0,80005030 <__printf+0x278>
    80004f0c:	00a00693          	li	a3,10
    80004f10:	00900593          	li	a1,9
    80004f14:	02d777bb          	remuw	a5,a4,a3
    80004f18:	02079793          	slli	a5,a5,0x20
    80004f1c:	0207d793          	srli	a5,a5,0x20
    80004f20:	00fd87b3          	add	a5,s11,a5
    80004f24:	0007c503          	lbu	a0,0(a5)
    80004f28:	02d757bb          	divuw	a5,a4,a3
    80004f2c:	f8a40123          	sb	a0,-126(s0)
    80004f30:	48e5f263          	bgeu	a1,a4,800053b4 <__printf+0x5fc>
    80004f34:	06300513          	li	a0,99
    80004f38:	02d7f5bb          	remuw	a1,a5,a3
    80004f3c:	02059593          	slli	a1,a1,0x20
    80004f40:	0205d593          	srli	a1,a1,0x20
    80004f44:	00bd85b3          	add	a1,s11,a1
    80004f48:	0005c583          	lbu	a1,0(a1)
    80004f4c:	02d7d7bb          	divuw	a5,a5,a3
    80004f50:	f8b401a3          	sb	a1,-125(s0)
    80004f54:	48e57263          	bgeu	a0,a4,800053d8 <__printf+0x620>
    80004f58:	3e700513          	li	a0,999
    80004f5c:	02d7f5bb          	remuw	a1,a5,a3
    80004f60:	02059593          	slli	a1,a1,0x20
    80004f64:	0205d593          	srli	a1,a1,0x20
    80004f68:	00bd85b3          	add	a1,s11,a1
    80004f6c:	0005c583          	lbu	a1,0(a1)
    80004f70:	02d7d7bb          	divuw	a5,a5,a3
    80004f74:	f8b40223          	sb	a1,-124(s0)
    80004f78:	46e57663          	bgeu	a0,a4,800053e4 <__printf+0x62c>
    80004f7c:	02d7f5bb          	remuw	a1,a5,a3
    80004f80:	02059593          	slli	a1,a1,0x20
    80004f84:	0205d593          	srli	a1,a1,0x20
    80004f88:	00bd85b3          	add	a1,s11,a1
    80004f8c:	0005c583          	lbu	a1,0(a1)
    80004f90:	02d7d7bb          	divuw	a5,a5,a3
    80004f94:	f8b402a3          	sb	a1,-123(s0)
    80004f98:	46ea7863          	bgeu	s4,a4,80005408 <__printf+0x650>
    80004f9c:	02d7f5bb          	remuw	a1,a5,a3
    80004fa0:	02059593          	slli	a1,a1,0x20
    80004fa4:	0205d593          	srli	a1,a1,0x20
    80004fa8:	00bd85b3          	add	a1,s11,a1
    80004fac:	0005c583          	lbu	a1,0(a1)
    80004fb0:	02d7d7bb          	divuw	a5,a5,a3
    80004fb4:	f8b40323          	sb	a1,-122(s0)
    80004fb8:	3eeaf863          	bgeu	s5,a4,800053a8 <__printf+0x5f0>
    80004fbc:	02d7f5bb          	remuw	a1,a5,a3
    80004fc0:	02059593          	slli	a1,a1,0x20
    80004fc4:	0205d593          	srli	a1,a1,0x20
    80004fc8:	00bd85b3          	add	a1,s11,a1
    80004fcc:	0005c583          	lbu	a1,0(a1)
    80004fd0:	02d7d7bb          	divuw	a5,a5,a3
    80004fd4:	f8b403a3          	sb	a1,-121(s0)
    80004fd8:	42eb7e63          	bgeu	s6,a4,80005414 <__printf+0x65c>
    80004fdc:	02d7f5bb          	remuw	a1,a5,a3
    80004fe0:	02059593          	slli	a1,a1,0x20
    80004fe4:	0205d593          	srli	a1,a1,0x20
    80004fe8:	00bd85b3          	add	a1,s11,a1
    80004fec:	0005c583          	lbu	a1,0(a1)
    80004ff0:	02d7d7bb          	divuw	a5,a5,a3
    80004ff4:	f8b40423          	sb	a1,-120(s0)
    80004ff8:	42ebfc63          	bgeu	s7,a4,80005430 <__printf+0x678>
    80004ffc:	02079793          	slli	a5,a5,0x20
    80005000:	0207d793          	srli	a5,a5,0x20
    80005004:	00fd8db3          	add	s11,s11,a5
    80005008:	000dc703          	lbu	a4,0(s11)
    8000500c:	00a00793          	li	a5,10
    80005010:	00900c93          	li	s9,9
    80005014:	f8e404a3          	sb	a4,-119(s0)
    80005018:	00065c63          	bgez	a2,80005030 <__printf+0x278>
    8000501c:	f9040713          	addi	a4,s0,-112
    80005020:	00f70733          	add	a4,a4,a5
    80005024:	02d00693          	li	a3,45
    80005028:	fed70823          	sb	a3,-16(a4)
    8000502c:	00078c93          	mv	s9,a5
    80005030:	f8040793          	addi	a5,s0,-128
    80005034:	01978cb3          	add	s9,a5,s9
    80005038:	f7f40d13          	addi	s10,s0,-129
    8000503c:	000cc503          	lbu	a0,0(s9)
    80005040:	fffc8c93          	addi	s9,s9,-1
    80005044:	00000097          	auipc	ra,0x0
    80005048:	b90080e7          	jalr	-1136(ra) # 80004bd4 <consputc>
    8000504c:	ffac98e3          	bne	s9,s10,8000503c <__printf+0x284>
    80005050:	00094503          	lbu	a0,0(s2)
    80005054:	e00514e3          	bnez	a0,80004e5c <__printf+0xa4>
    80005058:	1a0c1663          	bnez	s8,80005204 <__printf+0x44c>
    8000505c:	08813083          	ld	ra,136(sp)
    80005060:	08013403          	ld	s0,128(sp)
    80005064:	07813483          	ld	s1,120(sp)
    80005068:	07013903          	ld	s2,112(sp)
    8000506c:	06813983          	ld	s3,104(sp)
    80005070:	06013a03          	ld	s4,96(sp)
    80005074:	05813a83          	ld	s5,88(sp)
    80005078:	05013b03          	ld	s6,80(sp)
    8000507c:	04813b83          	ld	s7,72(sp)
    80005080:	04013c03          	ld	s8,64(sp)
    80005084:	03813c83          	ld	s9,56(sp)
    80005088:	03013d03          	ld	s10,48(sp)
    8000508c:	02813d83          	ld	s11,40(sp)
    80005090:	0d010113          	addi	sp,sp,208
    80005094:	00008067          	ret
    80005098:	07300713          	li	a4,115
    8000509c:	1ce78a63          	beq	a5,a4,80005270 <__printf+0x4b8>
    800050a0:	07800713          	li	a4,120
    800050a4:	1ee79e63          	bne	a5,a4,800052a0 <__printf+0x4e8>
    800050a8:	f7843783          	ld	a5,-136(s0)
    800050ac:	0007a703          	lw	a4,0(a5)
    800050b0:	00878793          	addi	a5,a5,8
    800050b4:	f6f43c23          	sd	a5,-136(s0)
    800050b8:	28074263          	bltz	a4,8000533c <__printf+0x584>
    800050bc:	00002d97          	auipc	s11,0x2
    800050c0:	2e4d8d93          	addi	s11,s11,740 # 800073a0 <digits>
    800050c4:	00f77793          	andi	a5,a4,15
    800050c8:	00fd87b3          	add	a5,s11,a5
    800050cc:	0007c683          	lbu	a3,0(a5)
    800050d0:	00f00613          	li	a2,15
    800050d4:	0007079b          	sext.w	a5,a4
    800050d8:	f8d40023          	sb	a3,-128(s0)
    800050dc:	0047559b          	srliw	a1,a4,0x4
    800050e0:	0047569b          	srliw	a3,a4,0x4
    800050e4:	00000c93          	li	s9,0
    800050e8:	0ee65063          	bge	a2,a4,800051c8 <__printf+0x410>
    800050ec:	00f6f693          	andi	a3,a3,15
    800050f0:	00dd86b3          	add	a3,s11,a3
    800050f4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800050f8:	0087d79b          	srliw	a5,a5,0x8
    800050fc:	00100c93          	li	s9,1
    80005100:	f8d400a3          	sb	a3,-127(s0)
    80005104:	0cb67263          	bgeu	a2,a1,800051c8 <__printf+0x410>
    80005108:	00f7f693          	andi	a3,a5,15
    8000510c:	00dd86b3          	add	a3,s11,a3
    80005110:	0006c583          	lbu	a1,0(a3)
    80005114:	00f00613          	li	a2,15
    80005118:	0047d69b          	srliw	a3,a5,0x4
    8000511c:	f8b40123          	sb	a1,-126(s0)
    80005120:	0047d593          	srli	a1,a5,0x4
    80005124:	28f67e63          	bgeu	a2,a5,800053c0 <__printf+0x608>
    80005128:	00f6f693          	andi	a3,a3,15
    8000512c:	00dd86b3          	add	a3,s11,a3
    80005130:	0006c503          	lbu	a0,0(a3)
    80005134:	0087d813          	srli	a6,a5,0x8
    80005138:	0087d69b          	srliw	a3,a5,0x8
    8000513c:	f8a401a3          	sb	a0,-125(s0)
    80005140:	28b67663          	bgeu	a2,a1,800053cc <__printf+0x614>
    80005144:	00f6f693          	andi	a3,a3,15
    80005148:	00dd86b3          	add	a3,s11,a3
    8000514c:	0006c583          	lbu	a1,0(a3)
    80005150:	00c7d513          	srli	a0,a5,0xc
    80005154:	00c7d69b          	srliw	a3,a5,0xc
    80005158:	f8b40223          	sb	a1,-124(s0)
    8000515c:	29067a63          	bgeu	a2,a6,800053f0 <__printf+0x638>
    80005160:	00f6f693          	andi	a3,a3,15
    80005164:	00dd86b3          	add	a3,s11,a3
    80005168:	0006c583          	lbu	a1,0(a3)
    8000516c:	0107d813          	srli	a6,a5,0x10
    80005170:	0107d69b          	srliw	a3,a5,0x10
    80005174:	f8b402a3          	sb	a1,-123(s0)
    80005178:	28a67263          	bgeu	a2,a0,800053fc <__printf+0x644>
    8000517c:	00f6f693          	andi	a3,a3,15
    80005180:	00dd86b3          	add	a3,s11,a3
    80005184:	0006c683          	lbu	a3,0(a3)
    80005188:	0147d79b          	srliw	a5,a5,0x14
    8000518c:	f8d40323          	sb	a3,-122(s0)
    80005190:	21067663          	bgeu	a2,a6,8000539c <__printf+0x5e4>
    80005194:	02079793          	slli	a5,a5,0x20
    80005198:	0207d793          	srli	a5,a5,0x20
    8000519c:	00fd8db3          	add	s11,s11,a5
    800051a0:	000dc683          	lbu	a3,0(s11)
    800051a4:	00800793          	li	a5,8
    800051a8:	00700c93          	li	s9,7
    800051ac:	f8d403a3          	sb	a3,-121(s0)
    800051b0:	00075c63          	bgez	a4,800051c8 <__printf+0x410>
    800051b4:	f9040713          	addi	a4,s0,-112
    800051b8:	00f70733          	add	a4,a4,a5
    800051bc:	02d00693          	li	a3,45
    800051c0:	fed70823          	sb	a3,-16(a4)
    800051c4:	00078c93          	mv	s9,a5
    800051c8:	f8040793          	addi	a5,s0,-128
    800051cc:	01978cb3          	add	s9,a5,s9
    800051d0:	f7f40d13          	addi	s10,s0,-129
    800051d4:	000cc503          	lbu	a0,0(s9)
    800051d8:	fffc8c93          	addi	s9,s9,-1
    800051dc:	00000097          	auipc	ra,0x0
    800051e0:	9f8080e7          	jalr	-1544(ra) # 80004bd4 <consputc>
    800051e4:	ff9d18e3          	bne	s10,s9,800051d4 <__printf+0x41c>
    800051e8:	0100006f          	j	800051f8 <__printf+0x440>
    800051ec:	00000097          	auipc	ra,0x0
    800051f0:	9e8080e7          	jalr	-1560(ra) # 80004bd4 <consputc>
    800051f4:	000c8493          	mv	s1,s9
    800051f8:	00094503          	lbu	a0,0(s2)
    800051fc:	c60510e3          	bnez	a0,80004e5c <__printf+0xa4>
    80005200:	e40c0ee3          	beqz	s8,8000505c <__printf+0x2a4>
    80005204:	00004517          	auipc	a0,0x4
    80005208:	77c50513          	addi	a0,a0,1916 # 80009980 <pr>
    8000520c:	00001097          	auipc	ra,0x1
    80005210:	94c080e7          	jalr	-1716(ra) # 80005b58 <release>
    80005214:	e49ff06f          	j	8000505c <__printf+0x2a4>
    80005218:	f7843783          	ld	a5,-136(s0)
    8000521c:	03000513          	li	a0,48
    80005220:	01000d13          	li	s10,16
    80005224:	00878713          	addi	a4,a5,8
    80005228:	0007bc83          	ld	s9,0(a5)
    8000522c:	f6e43c23          	sd	a4,-136(s0)
    80005230:	00000097          	auipc	ra,0x0
    80005234:	9a4080e7          	jalr	-1628(ra) # 80004bd4 <consputc>
    80005238:	07800513          	li	a0,120
    8000523c:	00000097          	auipc	ra,0x0
    80005240:	998080e7          	jalr	-1640(ra) # 80004bd4 <consputc>
    80005244:	00002d97          	auipc	s11,0x2
    80005248:	15cd8d93          	addi	s11,s11,348 # 800073a0 <digits>
    8000524c:	03ccd793          	srli	a5,s9,0x3c
    80005250:	00fd87b3          	add	a5,s11,a5
    80005254:	0007c503          	lbu	a0,0(a5)
    80005258:	fffd0d1b          	addiw	s10,s10,-1
    8000525c:	004c9c93          	slli	s9,s9,0x4
    80005260:	00000097          	auipc	ra,0x0
    80005264:	974080e7          	jalr	-1676(ra) # 80004bd4 <consputc>
    80005268:	fe0d12e3          	bnez	s10,8000524c <__printf+0x494>
    8000526c:	f8dff06f          	j	800051f8 <__printf+0x440>
    80005270:	f7843783          	ld	a5,-136(s0)
    80005274:	0007bc83          	ld	s9,0(a5)
    80005278:	00878793          	addi	a5,a5,8
    8000527c:	f6f43c23          	sd	a5,-136(s0)
    80005280:	000c9a63          	bnez	s9,80005294 <__printf+0x4dc>
    80005284:	1080006f          	j	8000538c <__printf+0x5d4>
    80005288:	001c8c93          	addi	s9,s9,1
    8000528c:	00000097          	auipc	ra,0x0
    80005290:	948080e7          	jalr	-1720(ra) # 80004bd4 <consputc>
    80005294:	000cc503          	lbu	a0,0(s9)
    80005298:	fe0518e3          	bnez	a0,80005288 <__printf+0x4d0>
    8000529c:	f5dff06f          	j	800051f8 <__printf+0x440>
    800052a0:	02500513          	li	a0,37
    800052a4:	00000097          	auipc	ra,0x0
    800052a8:	930080e7          	jalr	-1744(ra) # 80004bd4 <consputc>
    800052ac:	000c8513          	mv	a0,s9
    800052b0:	00000097          	auipc	ra,0x0
    800052b4:	924080e7          	jalr	-1756(ra) # 80004bd4 <consputc>
    800052b8:	f41ff06f          	j	800051f8 <__printf+0x440>
    800052bc:	02500513          	li	a0,37
    800052c0:	00000097          	auipc	ra,0x0
    800052c4:	914080e7          	jalr	-1772(ra) # 80004bd4 <consputc>
    800052c8:	f31ff06f          	j	800051f8 <__printf+0x440>
    800052cc:	00030513          	mv	a0,t1
    800052d0:	00000097          	auipc	ra,0x0
    800052d4:	7bc080e7          	jalr	1980(ra) # 80005a8c <acquire>
    800052d8:	b4dff06f          	j	80004e24 <__printf+0x6c>
    800052dc:	40c0053b          	negw	a0,a2
    800052e0:	00a00713          	li	a4,10
    800052e4:	02e576bb          	remuw	a3,a0,a4
    800052e8:	00002d97          	auipc	s11,0x2
    800052ec:	0b8d8d93          	addi	s11,s11,184 # 800073a0 <digits>
    800052f0:	ff700593          	li	a1,-9
    800052f4:	02069693          	slli	a3,a3,0x20
    800052f8:	0206d693          	srli	a3,a3,0x20
    800052fc:	00dd86b3          	add	a3,s11,a3
    80005300:	0006c683          	lbu	a3,0(a3)
    80005304:	02e557bb          	divuw	a5,a0,a4
    80005308:	f8d40023          	sb	a3,-128(s0)
    8000530c:	10b65e63          	bge	a2,a1,80005428 <__printf+0x670>
    80005310:	06300593          	li	a1,99
    80005314:	02e7f6bb          	remuw	a3,a5,a4
    80005318:	02069693          	slli	a3,a3,0x20
    8000531c:	0206d693          	srli	a3,a3,0x20
    80005320:	00dd86b3          	add	a3,s11,a3
    80005324:	0006c683          	lbu	a3,0(a3)
    80005328:	02e7d73b          	divuw	a4,a5,a4
    8000532c:	00200793          	li	a5,2
    80005330:	f8d400a3          	sb	a3,-127(s0)
    80005334:	bca5ece3          	bltu	a1,a0,80004f0c <__printf+0x154>
    80005338:	ce5ff06f          	j	8000501c <__printf+0x264>
    8000533c:	40e007bb          	negw	a5,a4
    80005340:	00002d97          	auipc	s11,0x2
    80005344:	060d8d93          	addi	s11,s11,96 # 800073a0 <digits>
    80005348:	00f7f693          	andi	a3,a5,15
    8000534c:	00dd86b3          	add	a3,s11,a3
    80005350:	0006c583          	lbu	a1,0(a3)
    80005354:	ff100613          	li	a2,-15
    80005358:	0047d69b          	srliw	a3,a5,0x4
    8000535c:	f8b40023          	sb	a1,-128(s0)
    80005360:	0047d59b          	srliw	a1,a5,0x4
    80005364:	0ac75e63          	bge	a4,a2,80005420 <__printf+0x668>
    80005368:	00f6f693          	andi	a3,a3,15
    8000536c:	00dd86b3          	add	a3,s11,a3
    80005370:	0006c603          	lbu	a2,0(a3)
    80005374:	00f00693          	li	a3,15
    80005378:	0087d79b          	srliw	a5,a5,0x8
    8000537c:	f8c400a3          	sb	a2,-127(s0)
    80005380:	d8b6e4e3          	bltu	a3,a1,80005108 <__printf+0x350>
    80005384:	00200793          	li	a5,2
    80005388:	e2dff06f          	j	800051b4 <__printf+0x3fc>
    8000538c:	00002c97          	auipc	s9,0x2
    80005390:	ff4c8c93          	addi	s9,s9,-12 # 80007380 <_ZZ12printIntegermE6digits+0x258>
    80005394:	02800513          	li	a0,40
    80005398:	ef1ff06f          	j	80005288 <__printf+0x4d0>
    8000539c:	00700793          	li	a5,7
    800053a0:	00600c93          	li	s9,6
    800053a4:	e0dff06f          	j	800051b0 <__printf+0x3f8>
    800053a8:	00700793          	li	a5,7
    800053ac:	00600c93          	li	s9,6
    800053b0:	c69ff06f          	j	80005018 <__printf+0x260>
    800053b4:	00300793          	li	a5,3
    800053b8:	00200c93          	li	s9,2
    800053bc:	c5dff06f          	j	80005018 <__printf+0x260>
    800053c0:	00300793          	li	a5,3
    800053c4:	00200c93          	li	s9,2
    800053c8:	de9ff06f          	j	800051b0 <__printf+0x3f8>
    800053cc:	00400793          	li	a5,4
    800053d0:	00300c93          	li	s9,3
    800053d4:	dddff06f          	j	800051b0 <__printf+0x3f8>
    800053d8:	00400793          	li	a5,4
    800053dc:	00300c93          	li	s9,3
    800053e0:	c39ff06f          	j	80005018 <__printf+0x260>
    800053e4:	00500793          	li	a5,5
    800053e8:	00400c93          	li	s9,4
    800053ec:	c2dff06f          	j	80005018 <__printf+0x260>
    800053f0:	00500793          	li	a5,5
    800053f4:	00400c93          	li	s9,4
    800053f8:	db9ff06f          	j	800051b0 <__printf+0x3f8>
    800053fc:	00600793          	li	a5,6
    80005400:	00500c93          	li	s9,5
    80005404:	dadff06f          	j	800051b0 <__printf+0x3f8>
    80005408:	00600793          	li	a5,6
    8000540c:	00500c93          	li	s9,5
    80005410:	c09ff06f          	j	80005018 <__printf+0x260>
    80005414:	00800793          	li	a5,8
    80005418:	00700c93          	li	s9,7
    8000541c:	bfdff06f          	j	80005018 <__printf+0x260>
    80005420:	00100793          	li	a5,1
    80005424:	d91ff06f          	j	800051b4 <__printf+0x3fc>
    80005428:	00100793          	li	a5,1
    8000542c:	bf1ff06f          	j	8000501c <__printf+0x264>
    80005430:	00900793          	li	a5,9
    80005434:	00800c93          	li	s9,8
    80005438:	be1ff06f          	j	80005018 <__printf+0x260>
    8000543c:	00002517          	auipc	a0,0x2
    80005440:	f4c50513          	addi	a0,a0,-180 # 80007388 <_ZZ12printIntegermE6digits+0x260>
    80005444:	00000097          	auipc	ra,0x0
    80005448:	918080e7          	jalr	-1768(ra) # 80004d5c <panic>

000000008000544c <printfinit>:
    8000544c:	fe010113          	addi	sp,sp,-32
    80005450:	00813823          	sd	s0,16(sp)
    80005454:	00913423          	sd	s1,8(sp)
    80005458:	00113c23          	sd	ra,24(sp)
    8000545c:	02010413          	addi	s0,sp,32
    80005460:	00004497          	auipc	s1,0x4
    80005464:	52048493          	addi	s1,s1,1312 # 80009980 <pr>
    80005468:	00048513          	mv	a0,s1
    8000546c:	00002597          	auipc	a1,0x2
    80005470:	f2c58593          	addi	a1,a1,-212 # 80007398 <_ZZ12printIntegermE6digits+0x270>
    80005474:	00000097          	auipc	ra,0x0
    80005478:	5f4080e7          	jalr	1524(ra) # 80005a68 <initlock>
    8000547c:	01813083          	ld	ra,24(sp)
    80005480:	01013403          	ld	s0,16(sp)
    80005484:	0004ac23          	sw	zero,24(s1)
    80005488:	00813483          	ld	s1,8(sp)
    8000548c:	02010113          	addi	sp,sp,32
    80005490:	00008067          	ret

0000000080005494 <uartinit>:
    80005494:	ff010113          	addi	sp,sp,-16
    80005498:	00813423          	sd	s0,8(sp)
    8000549c:	01010413          	addi	s0,sp,16
    800054a0:	100007b7          	lui	a5,0x10000
    800054a4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800054a8:	f8000713          	li	a4,-128
    800054ac:	00e781a3          	sb	a4,3(a5)
    800054b0:	00300713          	li	a4,3
    800054b4:	00e78023          	sb	a4,0(a5)
    800054b8:	000780a3          	sb	zero,1(a5)
    800054bc:	00e781a3          	sb	a4,3(a5)
    800054c0:	00700693          	li	a3,7
    800054c4:	00d78123          	sb	a3,2(a5)
    800054c8:	00e780a3          	sb	a4,1(a5)
    800054cc:	00813403          	ld	s0,8(sp)
    800054d0:	01010113          	addi	sp,sp,16
    800054d4:	00008067          	ret

00000000800054d8 <uartputc>:
    800054d8:	00003797          	auipc	a5,0x3
    800054dc:	2107a783          	lw	a5,528(a5) # 800086e8 <panicked>
    800054e0:	00078463          	beqz	a5,800054e8 <uartputc+0x10>
    800054e4:	0000006f          	j	800054e4 <uartputc+0xc>
    800054e8:	fd010113          	addi	sp,sp,-48
    800054ec:	02813023          	sd	s0,32(sp)
    800054f0:	00913c23          	sd	s1,24(sp)
    800054f4:	01213823          	sd	s2,16(sp)
    800054f8:	01313423          	sd	s3,8(sp)
    800054fc:	02113423          	sd	ra,40(sp)
    80005500:	03010413          	addi	s0,sp,48
    80005504:	00003917          	auipc	s2,0x3
    80005508:	1ec90913          	addi	s2,s2,492 # 800086f0 <uart_tx_r>
    8000550c:	00093783          	ld	a5,0(s2)
    80005510:	00003497          	auipc	s1,0x3
    80005514:	1e848493          	addi	s1,s1,488 # 800086f8 <uart_tx_w>
    80005518:	0004b703          	ld	a4,0(s1)
    8000551c:	02078693          	addi	a3,a5,32
    80005520:	00050993          	mv	s3,a0
    80005524:	02e69c63          	bne	a3,a4,8000555c <uartputc+0x84>
    80005528:	00001097          	auipc	ra,0x1
    8000552c:	834080e7          	jalr	-1996(ra) # 80005d5c <push_on>
    80005530:	00093783          	ld	a5,0(s2)
    80005534:	0004b703          	ld	a4,0(s1)
    80005538:	02078793          	addi	a5,a5,32
    8000553c:	00e79463          	bne	a5,a4,80005544 <uartputc+0x6c>
    80005540:	0000006f          	j	80005540 <uartputc+0x68>
    80005544:	00001097          	auipc	ra,0x1
    80005548:	88c080e7          	jalr	-1908(ra) # 80005dd0 <pop_on>
    8000554c:	00093783          	ld	a5,0(s2)
    80005550:	0004b703          	ld	a4,0(s1)
    80005554:	02078693          	addi	a3,a5,32
    80005558:	fce688e3          	beq	a3,a4,80005528 <uartputc+0x50>
    8000555c:	01f77693          	andi	a3,a4,31
    80005560:	00004597          	auipc	a1,0x4
    80005564:	44058593          	addi	a1,a1,1088 # 800099a0 <uart_tx_buf>
    80005568:	00d586b3          	add	a3,a1,a3
    8000556c:	00170713          	addi	a4,a4,1
    80005570:	01368023          	sb	s3,0(a3)
    80005574:	00e4b023          	sd	a4,0(s1)
    80005578:	10000637          	lui	a2,0x10000
    8000557c:	02f71063          	bne	a4,a5,8000559c <uartputc+0xc4>
    80005580:	0340006f          	j	800055b4 <uartputc+0xdc>
    80005584:	00074703          	lbu	a4,0(a4)
    80005588:	00f93023          	sd	a5,0(s2)
    8000558c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80005590:	00093783          	ld	a5,0(s2)
    80005594:	0004b703          	ld	a4,0(s1)
    80005598:	00f70e63          	beq	a4,a5,800055b4 <uartputc+0xdc>
    8000559c:	00564683          	lbu	a3,5(a2)
    800055a0:	01f7f713          	andi	a4,a5,31
    800055a4:	00e58733          	add	a4,a1,a4
    800055a8:	0206f693          	andi	a3,a3,32
    800055ac:	00178793          	addi	a5,a5,1
    800055b0:	fc069ae3          	bnez	a3,80005584 <uartputc+0xac>
    800055b4:	02813083          	ld	ra,40(sp)
    800055b8:	02013403          	ld	s0,32(sp)
    800055bc:	01813483          	ld	s1,24(sp)
    800055c0:	01013903          	ld	s2,16(sp)
    800055c4:	00813983          	ld	s3,8(sp)
    800055c8:	03010113          	addi	sp,sp,48
    800055cc:	00008067          	ret

00000000800055d0 <uartputc_sync>:
    800055d0:	ff010113          	addi	sp,sp,-16
    800055d4:	00813423          	sd	s0,8(sp)
    800055d8:	01010413          	addi	s0,sp,16
    800055dc:	00003717          	auipc	a4,0x3
    800055e0:	10c72703          	lw	a4,268(a4) # 800086e8 <panicked>
    800055e4:	02071663          	bnez	a4,80005610 <uartputc_sync+0x40>
    800055e8:	00050793          	mv	a5,a0
    800055ec:	100006b7          	lui	a3,0x10000
    800055f0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    800055f4:	02077713          	andi	a4,a4,32
    800055f8:	fe070ce3          	beqz	a4,800055f0 <uartputc_sync+0x20>
    800055fc:	0ff7f793          	andi	a5,a5,255
    80005600:	00f68023          	sb	a5,0(a3)
    80005604:	00813403          	ld	s0,8(sp)
    80005608:	01010113          	addi	sp,sp,16
    8000560c:	00008067          	ret
    80005610:	0000006f          	j	80005610 <uartputc_sync+0x40>

0000000080005614 <uartstart>:
    80005614:	ff010113          	addi	sp,sp,-16
    80005618:	00813423          	sd	s0,8(sp)
    8000561c:	01010413          	addi	s0,sp,16
    80005620:	00003617          	auipc	a2,0x3
    80005624:	0d060613          	addi	a2,a2,208 # 800086f0 <uart_tx_r>
    80005628:	00003517          	auipc	a0,0x3
    8000562c:	0d050513          	addi	a0,a0,208 # 800086f8 <uart_tx_w>
    80005630:	00063783          	ld	a5,0(a2)
    80005634:	00053703          	ld	a4,0(a0)
    80005638:	04f70263          	beq	a4,a5,8000567c <uartstart+0x68>
    8000563c:	100005b7          	lui	a1,0x10000
    80005640:	00004817          	auipc	a6,0x4
    80005644:	36080813          	addi	a6,a6,864 # 800099a0 <uart_tx_buf>
    80005648:	01c0006f          	j	80005664 <uartstart+0x50>
    8000564c:	0006c703          	lbu	a4,0(a3)
    80005650:	00f63023          	sd	a5,0(a2)
    80005654:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80005658:	00063783          	ld	a5,0(a2)
    8000565c:	00053703          	ld	a4,0(a0)
    80005660:	00f70e63          	beq	a4,a5,8000567c <uartstart+0x68>
    80005664:	01f7f713          	andi	a4,a5,31
    80005668:	00e806b3          	add	a3,a6,a4
    8000566c:	0055c703          	lbu	a4,5(a1)
    80005670:	00178793          	addi	a5,a5,1
    80005674:	02077713          	andi	a4,a4,32
    80005678:	fc071ae3          	bnez	a4,8000564c <uartstart+0x38>
    8000567c:	00813403          	ld	s0,8(sp)
    80005680:	01010113          	addi	sp,sp,16
    80005684:	00008067          	ret

0000000080005688 <uartgetc>:
    80005688:	ff010113          	addi	sp,sp,-16
    8000568c:	00813423          	sd	s0,8(sp)
    80005690:	01010413          	addi	s0,sp,16
    80005694:	10000737          	lui	a4,0x10000
    80005698:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000569c:	0017f793          	andi	a5,a5,1
    800056a0:	00078c63          	beqz	a5,800056b8 <uartgetc+0x30>
    800056a4:	00074503          	lbu	a0,0(a4)
    800056a8:	0ff57513          	andi	a0,a0,255
    800056ac:	00813403          	ld	s0,8(sp)
    800056b0:	01010113          	addi	sp,sp,16
    800056b4:	00008067          	ret
    800056b8:	fff00513          	li	a0,-1
    800056bc:	ff1ff06f          	j	800056ac <uartgetc+0x24>

00000000800056c0 <uartintr>:
    800056c0:	100007b7          	lui	a5,0x10000
    800056c4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800056c8:	0017f793          	andi	a5,a5,1
    800056cc:	0a078463          	beqz	a5,80005774 <uartintr+0xb4>
    800056d0:	fe010113          	addi	sp,sp,-32
    800056d4:	00813823          	sd	s0,16(sp)
    800056d8:	00913423          	sd	s1,8(sp)
    800056dc:	00113c23          	sd	ra,24(sp)
    800056e0:	02010413          	addi	s0,sp,32
    800056e4:	100004b7          	lui	s1,0x10000
    800056e8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800056ec:	0ff57513          	andi	a0,a0,255
    800056f0:	fffff097          	auipc	ra,0xfffff
    800056f4:	534080e7          	jalr	1332(ra) # 80004c24 <consoleintr>
    800056f8:	0054c783          	lbu	a5,5(s1)
    800056fc:	0017f793          	andi	a5,a5,1
    80005700:	fe0794e3          	bnez	a5,800056e8 <uartintr+0x28>
    80005704:	00003617          	auipc	a2,0x3
    80005708:	fec60613          	addi	a2,a2,-20 # 800086f0 <uart_tx_r>
    8000570c:	00003517          	auipc	a0,0x3
    80005710:	fec50513          	addi	a0,a0,-20 # 800086f8 <uart_tx_w>
    80005714:	00063783          	ld	a5,0(a2)
    80005718:	00053703          	ld	a4,0(a0)
    8000571c:	04f70263          	beq	a4,a5,80005760 <uartintr+0xa0>
    80005720:	100005b7          	lui	a1,0x10000
    80005724:	00004817          	auipc	a6,0x4
    80005728:	27c80813          	addi	a6,a6,636 # 800099a0 <uart_tx_buf>
    8000572c:	01c0006f          	j	80005748 <uartintr+0x88>
    80005730:	0006c703          	lbu	a4,0(a3)
    80005734:	00f63023          	sd	a5,0(a2)
    80005738:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000573c:	00063783          	ld	a5,0(a2)
    80005740:	00053703          	ld	a4,0(a0)
    80005744:	00f70e63          	beq	a4,a5,80005760 <uartintr+0xa0>
    80005748:	01f7f713          	andi	a4,a5,31
    8000574c:	00e806b3          	add	a3,a6,a4
    80005750:	0055c703          	lbu	a4,5(a1)
    80005754:	00178793          	addi	a5,a5,1
    80005758:	02077713          	andi	a4,a4,32
    8000575c:	fc071ae3          	bnez	a4,80005730 <uartintr+0x70>
    80005760:	01813083          	ld	ra,24(sp)
    80005764:	01013403          	ld	s0,16(sp)
    80005768:	00813483          	ld	s1,8(sp)
    8000576c:	02010113          	addi	sp,sp,32
    80005770:	00008067          	ret
    80005774:	00003617          	auipc	a2,0x3
    80005778:	f7c60613          	addi	a2,a2,-132 # 800086f0 <uart_tx_r>
    8000577c:	00003517          	auipc	a0,0x3
    80005780:	f7c50513          	addi	a0,a0,-132 # 800086f8 <uart_tx_w>
    80005784:	00063783          	ld	a5,0(a2)
    80005788:	00053703          	ld	a4,0(a0)
    8000578c:	04f70263          	beq	a4,a5,800057d0 <uartintr+0x110>
    80005790:	100005b7          	lui	a1,0x10000
    80005794:	00004817          	auipc	a6,0x4
    80005798:	20c80813          	addi	a6,a6,524 # 800099a0 <uart_tx_buf>
    8000579c:	01c0006f          	j	800057b8 <uartintr+0xf8>
    800057a0:	0006c703          	lbu	a4,0(a3)
    800057a4:	00f63023          	sd	a5,0(a2)
    800057a8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800057ac:	00063783          	ld	a5,0(a2)
    800057b0:	00053703          	ld	a4,0(a0)
    800057b4:	02f70063          	beq	a4,a5,800057d4 <uartintr+0x114>
    800057b8:	01f7f713          	andi	a4,a5,31
    800057bc:	00e806b3          	add	a3,a6,a4
    800057c0:	0055c703          	lbu	a4,5(a1)
    800057c4:	00178793          	addi	a5,a5,1
    800057c8:	02077713          	andi	a4,a4,32
    800057cc:	fc071ae3          	bnez	a4,800057a0 <uartintr+0xe0>
    800057d0:	00008067          	ret
    800057d4:	00008067          	ret

00000000800057d8 <kinit>:
    800057d8:	fc010113          	addi	sp,sp,-64
    800057dc:	02913423          	sd	s1,40(sp)
    800057e0:	fffff7b7          	lui	a5,0xfffff
    800057e4:	00005497          	auipc	s1,0x5
    800057e8:	1db48493          	addi	s1,s1,475 # 8000a9bf <end+0xfff>
    800057ec:	02813823          	sd	s0,48(sp)
    800057f0:	01313c23          	sd	s3,24(sp)
    800057f4:	00f4f4b3          	and	s1,s1,a5
    800057f8:	02113c23          	sd	ra,56(sp)
    800057fc:	03213023          	sd	s2,32(sp)
    80005800:	01413823          	sd	s4,16(sp)
    80005804:	01513423          	sd	s5,8(sp)
    80005808:	04010413          	addi	s0,sp,64
    8000580c:	000017b7          	lui	a5,0x1
    80005810:	01100993          	li	s3,17
    80005814:	00f487b3          	add	a5,s1,a5
    80005818:	01b99993          	slli	s3,s3,0x1b
    8000581c:	06f9e063          	bltu	s3,a5,8000587c <kinit+0xa4>
    80005820:	00004a97          	auipc	s5,0x4
    80005824:	1a0a8a93          	addi	s5,s5,416 # 800099c0 <end>
    80005828:	0754ec63          	bltu	s1,s5,800058a0 <kinit+0xc8>
    8000582c:	0734fa63          	bgeu	s1,s3,800058a0 <kinit+0xc8>
    80005830:	00088a37          	lui	s4,0x88
    80005834:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80005838:	00003917          	auipc	s2,0x3
    8000583c:	ec890913          	addi	s2,s2,-312 # 80008700 <kmem>
    80005840:	00ca1a13          	slli	s4,s4,0xc
    80005844:	0140006f          	j	80005858 <kinit+0x80>
    80005848:	000017b7          	lui	a5,0x1
    8000584c:	00f484b3          	add	s1,s1,a5
    80005850:	0554e863          	bltu	s1,s5,800058a0 <kinit+0xc8>
    80005854:	0534f663          	bgeu	s1,s3,800058a0 <kinit+0xc8>
    80005858:	00001637          	lui	a2,0x1
    8000585c:	00100593          	li	a1,1
    80005860:	00048513          	mv	a0,s1
    80005864:	00000097          	auipc	ra,0x0
    80005868:	5e4080e7          	jalr	1508(ra) # 80005e48 <__memset>
    8000586c:	00093783          	ld	a5,0(s2)
    80005870:	00f4b023          	sd	a5,0(s1)
    80005874:	00993023          	sd	s1,0(s2)
    80005878:	fd4498e3          	bne	s1,s4,80005848 <kinit+0x70>
    8000587c:	03813083          	ld	ra,56(sp)
    80005880:	03013403          	ld	s0,48(sp)
    80005884:	02813483          	ld	s1,40(sp)
    80005888:	02013903          	ld	s2,32(sp)
    8000588c:	01813983          	ld	s3,24(sp)
    80005890:	01013a03          	ld	s4,16(sp)
    80005894:	00813a83          	ld	s5,8(sp)
    80005898:	04010113          	addi	sp,sp,64
    8000589c:	00008067          	ret
    800058a0:	00002517          	auipc	a0,0x2
    800058a4:	b1850513          	addi	a0,a0,-1256 # 800073b8 <digits+0x18>
    800058a8:	fffff097          	auipc	ra,0xfffff
    800058ac:	4b4080e7          	jalr	1204(ra) # 80004d5c <panic>

00000000800058b0 <freerange>:
    800058b0:	fc010113          	addi	sp,sp,-64
    800058b4:	000017b7          	lui	a5,0x1
    800058b8:	02913423          	sd	s1,40(sp)
    800058bc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800058c0:	009504b3          	add	s1,a0,s1
    800058c4:	fffff537          	lui	a0,0xfffff
    800058c8:	02813823          	sd	s0,48(sp)
    800058cc:	02113c23          	sd	ra,56(sp)
    800058d0:	03213023          	sd	s2,32(sp)
    800058d4:	01313c23          	sd	s3,24(sp)
    800058d8:	01413823          	sd	s4,16(sp)
    800058dc:	01513423          	sd	s5,8(sp)
    800058e0:	01613023          	sd	s6,0(sp)
    800058e4:	04010413          	addi	s0,sp,64
    800058e8:	00a4f4b3          	and	s1,s1,a0
    800058ec:	00f487b3          	add	a5,s1,a5
    800058f0:	06f5e463          	bltu	a1,a5,80005958 <freerange+0xa8>
    800058f4:	00004a97          	auipc	s5,0x4
    800058f8:	0cca8a93          	addi	s5,s5,204 # 800099c0 <end>
    800058fc:	0954e263          	bltu	s1,s5,80005980 <freerange+0xd0>
    80005900:	01100993          	li	s3,17
    80005904:	01b99993          	slli	s3,s3,0x1b
    80005908:	0734fc63          	bgeu	s1,s3,80005980 <freerange+0xd0>
    8000590c:	00058a13          	mv	s4,a1
    80005910:	00003917          	auipc	s2,0x3
    80005914:	df090913          	addi	s2,s2,-528 # 80008700 <kmem>
    80005918:	00002b37          	lui	s6,0x2
    8000591c:	0140006f          	j	80005930 <freerange+0x80>
    80005920:	000017b7          	lui	a5,0x1
    80005924:	00f484b3          	add	s1,s1,a5
    80005928:	0554ec63          	bltu	s1,s5,80005980 <freerange+0xd0>
    8000592c:	0534fa63          	bgeu	s1,s3,80005980 <freerange+0xd0>
    80005930:	00001637          	lui	a2,0x1
    80005934:	00100593          	li	a1,1
    80005938:	00048513          	mv	a0,s1
    8000593c:	00000097          	auipc	ra,0x0
    80005940:	50c080e7          	jalr	1292(ra) # 80005e48 <__memset>
    80005944:	00093703          	ld	a4,0(s2)
    80005948:	016487b3          	add	a5,s1,s6
    8000594c:	00e4b023          	sd	a4,0(s1)
    80005950:	00993023          	sd	s1,0(s2)
    80005954:	fcfa76e3          	bgeu	s4,a5,80005920 <freerange+0x70>
    80005958:	03813083          	ld	ra,56(sp)
    8000595c:	03013403          	ld	s0,48(sp)
    80005960:	02813483          	ld	s1,40(sp)
    80005964:	02013903          	ld	s2,32(sp)
    80005968:	01813983          	ld	s3,24(sp)
    8000596c:	01013a03          	ld	s4,16(sp)
    80005970:	00813a83          	ld	s5,8(sp)
    80005974:	00013b03          	ld	s6,0(sp)
    80005978:	04010113          	addi	sp,sp,64
    8000597c:	00008067          	ret
    80005980:	00002517          	auipc	a0,0x2
    80005984:	a3850513          	addi	a0,a0,-1480 # 800073b8 <digits+0x18>
    80005988:	fffff097          	auipc	ra,0xfffff
    8000598c:	3d4080e7          	jalr	980(ra) # 80004d5c <panic>

0000000080005990 <kfree>:
    80005990:	fe010113          	addi	sp,sp,-32
    80005994:	00813823          	sd	s0,16(sp)
    80005998:	00113c23          	sd	ra,24(sp)
    8000599c:	00913423          	sd	s1,8(sp)
    800059a0:	02010413          	addi	s0,sp,32
    800059a4:	03451793          	slli	a5,a0,0x34
    800059a8:	04079c63          	bnez	a5,80005a00 <kfree+0x70>
    800059ac:	00004797          	auipc	a5,0x4
    800059b0:	01478793          	addi	a5,a5,20 # 800099c0 <end>
    800059b4:	00050493          	mv	s1,a0
    800059b8:	04f56463          	bltu	a0,a5,80005a00 <kfree+0x70>
    800059bc:	01100793          	li	a5,17
    800059c0:	01b79793          	slli	a5,a5,0x1b
    800059c4:	02f57e63          	bgeu	a0,a5,80005a00 <kfree+0x70>
    800059c8:	00001637          	lui	a2,0x1
    800059cc:	00100593          	li	a1,1
    800059d0:	00000097          	auipc	ra,0x0
    800059d4:	478080e7          	jalr	1144(ra) # 80005e48 <__memset>
    800059d8:	00003797          	auipc	a5,0x3
    800059dc:	d2878793          	addi	a5,a5,-728 # 80008700 <kmem>
    800059e0:	0007b703          	ld	a4,0(a5)
    800059e4:	01813083          	ld	ra,24(sp)
    800059e8:	01013403          	ld	s0,16(sp)
    800059ec:	00e4b023          	sd	a4,0(s1)
    800059f0:	0097b023          	sd	s1,0(a5)
    800059f4:	00813483          	ld	s1,8(sp)
    800059f8:	02010113          	addi	sp,sp,32
    800059fc:	00008067          	ret
    80005a00:	00002517          	auipc	a0,0x2
    80005a04:	9b850513          	addi	a0,a0,-1608 # 800073b8 <digits+0x18>
    80005a08:	fffff097          	auipc	ra,0xfffff
    80005a0c:	354080e7          	jalr	852(ra) # 80004d5c <panic>

0000000080005a10 <kalloc>:
    80005a10:	fe010113          	addi	sp,sp,-32
    80005a14:	00813823          	sd	s0,16(sp)
    80005a18:	00913423          	sd	s1,8(sp)
    80005a1c:	00113c23          	sd	ra,24(sp)
    80005a20:	02010413          	addi	s0,sp,32
    80005a24:	00003797          	auipc	a5,0x3
    80005a28:	cdc78793          	addi	a5,a5,-804 # 80008700 <kmem>
    80005a2c:	0007b483          	ld	s1,0(a5)
    80005a30:	02048063          	beqz	s1,80005a50 <kalloc+0x40>
    80005a34:	0004b703          	ld	a4,0(s1)
    80005a38:	00001637          	lui	a2,0x1
    80005a3c:	00500593          	li	a1,5
    80005a40:	00048513          	mv	a0,s1
    80005a44:	00e7b023          	sd	a4,0(a5)
    80005a48:	00000097          	auipc	ra,0x0
    80005a4c:	400080e7          	jalr	1024(ra) # 80005e48 <__memset>
    80005a50:	01813083          	ld	ra,24(sp)
    80005a54:	01013403          	ld	s0,16(sp)
    80005a58:	00048513          	mv	a0,s1
    80005a5c:	00813483          	ld	s1,8(sp)
    80005a60:	02010113          	addi	sp,sp,32
    80005a64:	00008067          	ret

0000000080005a68 <initlock>:
    80005a68:	ff010113          	addi	sp,sp,-16
    80005a6c:	00813423          	sd	s0,8(sp)
    80005a70:	01010413          	addi	s0,sp,16
    80005a74:	00813403          	ld	s0,8(sp)
    80005a78:	00b53423          	sd	a1,8(a0)
    80005a7c:	00052023          	sw	zero,0(a0)
    80005a80:	00053823          	sd	zero,16(a0)
    80005a84:	01010113          	addi	sp,sp,16
    80005a88:	00008067          	ret

0000000080005a8c <acquire>:
    80005a8c:	fe010113          	addi	sp,sp,-32
    80005a90:	00813823          	sd	s0,16(sp)
    80005a94:	00913423          	sd	s1,8(sp)
    80005a98:	00113c23          	sd	ra,24(sp)
    80005a9c:	01213023          	sd	s2,0(sp)
    80005aa0:	02010413          	addi	s0,sp,32
    80005aa4:	00050493          	mv	s1,a0
    80005aa8:	10002973          	csrr	s2,sstatus
    80005aac:	100027f3          	csrr	a5,sstatus
    80005ab0:	ffd7f793          	andi	a5,a5,-3
    80005ab4:	10079073          	csrw	sstatus,a5
    80005ab8:	fffff097          	auipc	ra,0xfffff
    80005abc:	8e4080e7          	jalr	-1820(ra) # 8000439c <mycpu>
    80005ac0:	07852783          	lw	a5,120(a0)
    80005ac4:	06078e63          	beqz	a5,80005b40 <acquire+0xb4>
    80005ac8:	fffff097          	auipc	ra,0xfffff
    80005acc:	8d4080e7          	jalr	-1836(ra) # 8000439c <mycpu>
    80005ad0:	07852783          	lw	a5,120(a0)
    80005ad4:	0004a703          	lw	a4,0(s1)
    80005ad8:	0017879b          	addiw	a5,a5,1
    80005adc:	06f52c23          	sw	a5,120(a0)
    80005ae0:	04071063          	bnez	a4,80005b20 <acquire+0x94>
    80005ae4:	00100713          	li	a4,1
    80005ae8:	00070793          	mv	a5,a4
    80005aec:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80005af0:	0007879b          	sext.w	a5,a5
    80005af4:	fe079ae3          	bnez	a5,80005ae8 <acquire+0x5c>
    80005af8:	0ff0000f          	fence
    80005afc:	fffff097          	auipc	ra,0xfffff
    80005b00:	8a0080e7          	jalr	-1888(ra) # 8000439c <mycpu>
    80005b04:	01813083          	ld	ra,24(sp)
    80005b08:	01013403          	ld	s0,16(sp)
    80005b0c:	00a4b823          	sd	a0,16(s1)
    80005b10:	00013903          	ld	s2,0(sp)
    80005b14:	00813483          	ld	s1,8(sp)
    80005b18:	02010113          	addi	sp,sp,32
    80005b1c:	00008067          	ret
    80005b20:	0104b903          	ld	s2,16(s1)
    80005b24:	fffff097          	auipc	ra,0xfffff
    80005b28:	878080e7          	jalr	-1928(ra) # 8000439c <mycpu>
    80005b2c:	faa91ce3          	bne	s2,a0,80005ae4 <acquire+0x58>
    80005b30:	00002517          	auipc	a0,0x2
    80005b34:	89050513          	addi	a0,a0,-1904 # 800073c0 <digits+0x20>
    80005b38:	fffff097          	auipc	ra,0xfffff
    80005b3c:	224080e7          	jalr	548(ra) # 80004d5c <panic>
    80005b40:	00195913          	srli	s2,s2,0x1
    80005b44:	fffff097          	auipc	ra,0xfffff
    80005b48:	858080e7          	jalr	-1960(ra) # 8000439c <mycpu>
    80005b4c:	00197913          	andi	s2,s2,1
    80005b50:	07252e23          	sw	s2,124(a0)
    80005b54:	f75ff06f          	j	80005ac8 <acquire+0x3c>

0000000080005b58 <release>:
    80005b58:	fe010113          	addi	sp,sp,-32
    80005b5c:	00813823          	sd	s0,16(sp)
    80005b60:	00113c23          	sd	ra,24(sp)
    80005b64:	00913423          	sd	s1,8(sp)
    80005b68:	01213023          	sd	s2,0(sp)
    80005b6c:	02010413          	addi	s0,sp,32
    80005b70:	00052783          	lw	a5,0(a0)
    80005b74:	00079a63          	bnez	a5,80005b88 <release+0x30>
    80005b78:	00002517          	auipc	a0,0x2
    80005b7c:	85050513          	addi	a0,a0,-1968 # 800073c8 <digits+0x28>
    80005b80:	fffff097          	auipc	ra,0xfffff
    80005b84:	1dc080e7          	jalr	476(ra) # 80004d5c <panic>
    80005b88:	01053903          	ld	s2,16(a0)
    80005b8c:	00050493          	mv	s1,a0
    80005b90:	fffff097          	auipc	ra,0xfffff
    80005b94:	80c080e7          	jalr	-2036(ra) # 8000439c <mycpu>
    80005b98:	fea910e3          	bne	s2,a0,80005b78 <release+0x20>
    80005b9c:	0004b823          	sd	zero,16(s1)
    80005ba0:	0ff0000f          	fence
    80005ba4:	0f50000f          	fence	iorw,ow
    80005ba8:	0804a02f          	amoswap.w	zero,zero,(s1)
    80005bac:	ffffe097          	auipc	ra,0xffffe
    80005bb0:	7f0080e7          	jalr	2032(ra) # 8000439c <mycpu>
    80005bb4:	100027f3          	csrr	a5,sstatus
    80005bb8:	0027f793          	andi	a5,a5,2
    80005bbc:	04079a63          	bnez	a5,80005c10 <release+0xb8>
    80005bc0:	07852783          	lw	a5,120(a0)
    80005bc4:	02f05e63          	blez	a5,80005c00 <release+0xa8>
    80005bc8:	fff7871b          	addiw	a4,a5,-1
    80005bcc:	06e52c23          	sw	a4,120(a0)
    80005bd0:	00071c63          	bnez	a4,80005be8 <release+0x90>
    80005bd4:	07c52783          	lw	a5,124(a0)
    80005bd8:	00078863          	beqz	a5,80005be8 <release+0x90>
    80005bdc:	100027f3          	csrr	a5,sstatus
    80005be0:	0027e793          	ori	a5,a5,2
    80005be4:	10079073          	csrw	sstatus,a5
    80005be8:	01813083          	ld	ra,24(sp)
    80005bec:	01013403          	ld	s0,16(sp)
    80005bf0:	00813483          	ld	s1,8(sp)
    80005bf4:	00013903          	ld	s2,0(sp)
    80005bf8:	02010113          	addi	sp,sp,32
    80005bfc:	00008067          	ret
    80005c00:	00001517          	auipc	a0,0x1
    80005c04:	7e850513          	addi	a0,a0,2024 # 800073e8 <digits+0x48>
    80005c08:	fffff097          	auipc	ra,0xfffff
    80005c0c:	154080e7          	jalr	340(ra) # 80004d5c <panic>
    80005c10:	00001517          	auipc	a0,0x1
    80005c14:	7c050513          	addi	a0,a0,1984 # 800073d0 <digits+0x30>
    80005c18:	fffff097          	auipc	ra,0xfffff
    80005c1c:	144080e7          	jalr	324(ra) # 80004d5c <panic>

0000000080005c20 <holding>:
    80005c20:	00052783          	lw	a5,0(a0)
    80005c24:	00079663          	bnez	a5,80005c30 <holding+0x10>
    80005c28:	00000513          	li	a0,0
    80005c2c:	00008067          	ret
    80005c30:	fe010113          	addi	sp,sp,-32
    80005c34:	00813823          	sd	s0,16(sp)
    80005c38:	00913423          	sd	s1,8(sp)
    80005c3c:	00113c23          	sd	ra,24(sp)
    80005c40:	02010413          	addi	s0,sp,32
    80005c44:	01053483          	ld	s1,16(a0)
    80005c48:	ffffe097          	auipc	ra,0xffffe
    80005c4c:	754080e7          	jalr	1876(ra) # 8000439c <mycpu>
    80005c50:	01813083          	ld	ra,24(sp)
    80005c54:	01013403          	ld	s0,16(sp)
    80005c58:	40a48533          	sub	a0,s1,a0
    80005c5c:	00153513          	seqz	a0,a0
    80005c60:	00813483          	ld	s1,8(sp)
    80005c64:	02010113          	addi	sp,sp,32
    80005c68:	00008067          	ret

0000000080005c6c <push_off>:
    80005c6c:	fe010113          	addi	sp,sp,-32
    80005c70:	00813823          	sd	s0,16(sp)
    80005c74:	00113c23          	sd	ra,24(sp)
    80005c78:	00913423          	sd	s1,8(sp)
    80005c7c:	02010413          	addi	s0,sp,32
    80005c80:	100024f3          	csrr	s1,sstatus
    80005c84:	100027f3          	csrr	a5,sstatus
    80005c88:	ffd7f793          	andi	a5,a5,-3
    80005c8c:	10079073          	csrw	sstatus,a5
    80005c90:	ffffe097          	auipc	ra,0xffffe
    80005c94:	70c080e7          	jalr	1804(ra) # 8000439c <mycpu>
    80005c98:	07852783          	lw	a5,120(a0)
    80005c9c:	02078663          	beqz	a5,80005cc8 <push_off+0x5c>
    80005ca0:	ffffe097          	auipc	ra,0xffffe
    80005ca4:	6fc080e7          	jalr	1788(ra) # 8000439c <mycpu>
    80005ca8:	07852783          	lw	a5,120(a0)
    80005cac:	01813083          	ld	ra,24(sp)
    80005cb0:	01013403          	ld	s0,16(sp)
    80005cb4:	0017879b          	addiw	a5,a5,1
    80005cb8:	06f52c23          	sw	a5,120(a0)
    80005cbc:	00813483          	ld	s1,8(sp)
    80005cc0:	02010113          	addi	sp,sp,32
    80005cc4:	00008067          	ret
    80005cc8:	0014d493          	srli	s1,s1,0x1
    80005ccc:	ffffe097          	auipc	ra,0xffffe
    80005cd0:	6d0080e7          	jalr	1744(ra) # 8000439c <mycpu>
    80005cd4:	0014f493          	andi	s1,s1,1
    80005cd8:	06952e23          	sw	s1,124(a0)
    80005cdc:	fc5ff06f          	j	80005ca0 <push_off+0x34>

0000000080005ce0 <pop_off>:
    80005ce0:	ff010113          	addi	sp,sp,-16
    80005ce4:	00813023          	sd	s0,0(sp)
    80005ce8:	00113423          	sd	ra,8(sp)
    80005cec:	01010413          	addi	s0,sp,16
    80005cf0:	ffffe097          	auipc	ra,0xffffe
    80005cf4:	6ac080e7          	jalr	1708(ra) # 8000439c <mycpu>
    80005cf8:	100027f3          	csrr	a5,sstatus
    80005cfc:	0027f793          	andi	a5,a5,2
    80005d00:	04079663          	bnez	a5,80005d4c <pop_off+0x6c>
    80005d04:	07852783          	lw	a5,120(a0)
    80005d08:	02f05a63          	blez	a5,80005d3c <pop_off+0x5c>
    80005d0c:	fff7871b          	addiw	a4,a5,-1
    80005d10:	06e52c23          	sw	a4,120(a0)
    80005d14:	00071c63          	bnez	a4,80005d2c <pop_off+0x4c>
    80005d18:	07c52783          	lw	a5,124(a0)
    80005d1c:	00078863          	beqz	a5,80005d2c <pop_off+0x4c>
    80005d20:	100027f3          	csrr	a5,sstatus
    80005d24:	0027e793          	ori	a5,a5,2
    80005d28:	10079073          	csrw	sstatus,a5
    80005d2c:	00813083          	ld	ra,8(sp)
    80005d30:	00013403          	ld	s0,0(sp)
    80005d34:	01010113          	addi	sp,sp,16
    80005d38:	00008067          	ret
    80005d3c:	00001517          	auipc	a0,0x1
    80005d40:	6ac50513          	addi	a0,a0,1708 # 800073e8 <digits+0x48>
    80005d44:	fffff097          	auipc	ra,0xfffff
    80005d48:	018080e7          	jalr	24(ra) # 80004d5c <panic>
    80005d4c:	00001517          	auipc	a0,0x1
    80005d50:	68450513          	addi	a0,a0,1668 # 800073d0 <digits+0x30>
    80005d54:	fffff097          	auipc	ra,0xfffff
    80005d58:	008080e7          	jalr	8(ra) # 80004d5c <panic>

0000000080005d5c <push_on>:
    80005d5c:	fe010113          	addi	sp,sp,-32
    80005d60:	00813823          	sd	s0,16(sp)
    80005d64:	00113c23          	sd	ra,24(sp)
    80005d68:	00913423          	sd	s1,8(sp)
    80005d6c:	02010413          	addi	s0,sp,32
    80005d70:	100024f3          	csrr	s1,sstatus
    80005d74:	100027f3          	csrr	a5,sstatus
    80005d78:	0027e793          	ori	a5,a5,2
    80005d7c:	10079073          	csrw	sstatus,a5
    80005d80:	ffffe097          	auipc	ra,0xffffe
    80005d84:	61c080e7          	jalr	1564(ra) # 8000439c <mycpu>
    80005d88:	07852783          	lw	a5,120(a0)
    80005d8c:	02078663          	beqz	a5,80005db8 <push_on+0x5c>
    80005d90:	ffffe097          	auipc	ra,0xffffe
    80005d94:	60c080e7          	jalr	1548(ra) # 8000439c <mycpu>
    80005d98:	07852783          	lw	a5,120(a0)
    80005d9c:	01813083          	ld	ra,24(sp)
    80005da0:	01013403          	ld	s0,16(sp)
    80005da4:	0017879b          	addiw	a5,a5,1
    80005da8:	06f52c23          	sw	a5,120(a0)
    80005dac:	00813483          	ld	s1,8(sp)
    80005db0:	02010113          	addi	sp,sp,32
    80005db4:	00008067          	ret
    80005db8:	0014d493          	srli	s1,s1,0x1
    80005dbc:	ffffe097          	auipc	ra,0xffffe
    80005dc0:	5e0080e7          	jalr	1504(ra) # 8000439c <mycpu>
    80005dc4:	0014f493          	andi	s1,s1,1
    80005dc8:	06952e23          	sw	s1,124(a0)
    80005dcc:	fc5ff06f          	j	80005d90 <push_on+0x34>

0000000080005dd0 <pop_on>:
    80005dd0:	ff010113          	addi	sp,sp,-16
    80005dd4:	00813023          	sd	s0,0(sp)
    80005dd8:	00113423          	sd	ra,8(sp)
    80005ddc:	01010413          	addi	s0,sp,16
    80005de0:	ffffe097          	auipc	ra,0xffffe
    80005de4:	5bc080e7          	jalr	1468(ra) # 8000439c <mycpu>
    80005de8:	100027f3          	csrr	a5,sstatus
    80005dec:	0027f793          	andi	a5,a5,2
    80005df0:	04078463          	beqz	a5,80005e38 <pop_on+0x68>
    80005df4:	07852783          	lw	a5,120(a0)
    80005df8:	02f05863          	blez	a5,80005e28 <pop_on+0x58>
    80005dfc:	fff7879b          	addiw	a5,a5,-1
    80005e00:	06f52c23          	sw	a5,120(a0)
    80005e04:	07853783          	ld	a5,120(a0)
    80005e08:	00079863          	bnez	a5,80005e18 <pop_on+0x48>
    80005e0c:	100027f3          	csrr	a5,sstatus
    80005e10:	ffd7f793          	andi	a5,a5,-3
    80005e14:	10079073          	csrw	sstatus,a5
    80005e18:	00813083          	ld	ra,8(sp)
    80005e1c:	00013403          	ld	s0,0(sp)
    80005e20:	01010113          	addi	sp,sp,16
    80005e24:	00008067          	ret
    80005e28:	00001517          	auipc	a0,0x1
    80005e2c:	5e850513          	addi	a0,a0,1512 # 80007410 <digits+0x70>
    80005e30:	fffff097          	auipc	ra,0xfffff
    80005e34:	f2c080e7          	jalr	-212(ra) # 80004d5c <panic>
    80005e38:	00001517          	auipc	a0,0x1
    80005e3c:	5b850513          	addi	a0,a0,1464 # 800073f0 <digits+0x50>
    80005e40:	fffff097          	auipc	ra,0xfffff
    80005e44:	f1c080e7          	jalr	-228(ra) # 80004d5c <panic>

0000000080005e48 <__memset>:
    80005e48:	ff010113          	addi	sp,sp,-16
    80005e4c:	00813423          	sd	s0,8(sp)
    80005e50:	01010413          	addi	s0,sp,16
    80005e54:	1a060e63          	beqz	a2,80006010 <__memset+0x1c8>
    80005e58:	40a007b3          	neg	a5,a0
    80005e5c:	0077f793          	andi	a5,a5,7
    80005e60:	00778693          	addi	a3,a5,7
    80005e64:	00b00813          	li	a6,11
    80005e68:	0ff5f593          	andi	a1,a1,255
    80005e6c:	fff6071b          	addiw	a4,a2,-1
    80005e70:	1b06e663          	bltu	a3,a6,8000601c <__memset+0x1d4>
    80005e74:	1cd76463          	bltu	a4,a3,8000603c <__memset+0x1f4>
    80005e78:	1a078e63          	beqz	a5,80006034 <__memset+0x1ec>
    80005e7c:	00b50023          	sb	a1,0(a0)
    80005e80:	00100713          	li	a4,1
    80005e84:	1ae78463          	beq	a5,a4,8000602c <__memset+0x1e4>
    80005e88:	00b500a3          	sb	a1,1(a0)
    80005e8c:	00200713          	li	a4,2
    80005e90:	1ae78a63          	beq	a5,a4,80006044 <__memset+0x1fc>
    80005e94:	00b50123          	sb	a1,2(a0)
    80005e98:	00300713          	li	a4,3
    80005e9c:	18e78463          	beq	a5,a4,80006024 <__memset+0x1dc>
    80005ea0:	00b501a3          	sb	a1,3(a0)
    80005ea4:	00400713          	li	a4,4
    80005ea8:	1ae78263          	beq	a5,a4,8000604c <__memset+0x204>
    80005eac:	00b50223          	sb	a1,4(a0)
    80005eb0:	00500713          	li	a4,5
    80005eb4:	1ae78063          	beq	a5,a4,80006054 <__memset+0x20c>
    80005eb8:	00b502a3          	sb	a1,5(a0)
    80005ebc:	00700713          	li	a4,7
    80005ec0:	18e79e63          	bne	a5,a4,8000605c <__memset+0x214>
    80005ec4:	00b50323          	sb	a1,6(a0)
    80005ec8:	00700e93          	li	t4,7
    80005ecc:	00859713          	slli	a4,a1,0x8
    80005ed0:	00e5e733          	or	a4,a1,a4
    80005ed4:	01059e13          	slli	t3,a1,0x10
    80005ed8:	01c76e33          	or	t3,a4,t3
    80005edc:	01859313          	slli	t1,a1,0x18
    80005ee0:	006e6333          	or	t1,t3,t1
    80005ee4:	02059893          	slli	a7,a1,0x20
    80005ee8:	40f60e3b          	subw	t3,a2,a5
    80005eec:	011368b3          	or	a7,t1,a7
    80005ef0:	02859813          	slli	a6,a1,0x28
    80005ef4:	0108e833          	or	a6,a7,a6
    80005ef8:	03059693          	slli	a3,a1,0x30
    80005efc:	003e589b          	srliw	a7,t3,0x3
    80005f00:	00d866b3          	or	a3,a6,a3
    80005f04:	03859713          	slli	a4,a1,0x38
    80005f08:	00389813          	slli	a6,a7,0x3
    80005f0c:	00f507b3          	add	a5,a0,a5
    80005f10:	00e6e733          	or	a4,a3,a4
    80005f14:	000e089b          	sext.w	a7,t3
    80005f18:	00f806b3          	add	a3,a6,a5
    80005f1c:	00e7b023          	sd	a4,0(a5)
    80005f20:	00878793          	addi	a5,a5,8
    80005f24:	fed79ce3          	bne	a5,a3,80005f1c <__memset+0xd4>
    80005f28:	ff8e7793          	andi	a5,t3,-8
    80005f2c:	0007871b          	sext.w	a4,a5
    80005f30:	01d787bb          	addw	a5,a5,t4
    80005f34:	0ce88e63          	beq	a7,a4,80006010 <__memset+0x1c8>
    80005f38:	00f50733          	add	a4,a0,a5
    80005f3c:	00b70023          	sb	a1,0(a4)
    80005f40:	0017871b          	addiw	a4,a5,1
    80005f44:	0cc77663          	bgeu	a4,a2,80006010 <__memset+0x1c8>
    80005f48:	00e50733          	add	a4,a0,a4
    80005f4c:	00b70023          	sb	a1,0(a4)
    80005f50:	0027871b          	addiw	a4,a5,2
    80005f54:	0ac77e63          	bgeu	a4,a2,80006010 <__memset+0x1c8>
    80005f58:	00e50733          	add	a4,a0,a4
    80005f5c:	00b70023          	sb	a1,0(a4)
    80005f60:	0037871b          	addiw	a4,a5,3
    80005f64:	0ac77663          	bgeu	a4,a2,80006010 <__memset+0x1c8>
    80005f68:	00e50733          	add	a4,a0,a4
    80005f6c:	00b70023          	sb	a1,0(a4)
    80005f70:	0047871b          	addiw	a4,a5,4
    80005f74:	08c77e63          	bgeu	a4,a2,80006010 <__memset+0x1c8>
    80005f78:	00e50733          	add	a4,a0,a4
    80005f7c:	00b70023          	sb	a1,0(a4)
    80005f80:	0057871b          	addiw	a4,a5,5
    80005f84:	08c77663          	bgeu	a4,a2,80006010 <__memset+0x1c8>
    80005f88:	00e50733          	add	a4,a0,a4
    80005f8c:	00b70023          	sb	a1,0(a4)
    80005f90:	0067871b          	addiw	a4,a5,6
    80005f94:	06c77e63          	bgeu	a4,a2,80006010 <__memset+0x1c8>
    80005f98:	00e50733          	add	a4,a0,a4
    80005f9c:	00b70023          	sb	a1,0(a4)
    80005fa0:	0077871b          	addiw	a4,a5,7
    80005fa4:	06c77663          	bgeu	a4,a2,80006010 <__memset+0x1c8>
    80005fa8:	00e50733          	add	a4,a0,a4
    80005fac:	00b70023          	sb	a1,0(a4)
    80005fb0:	0087871b          	addiw	a4,a5,8
    80005fb4:	04c77e63          	bgeu	a4,a2,80006010 <__memset+0x1c8>
    80005fb8:	00e50733          	add	a4,a0,a4
    80005fbc:	00b70023          	sb	a1,0(a4)
    80005fc0:	0097871b          	addiw	a4,a5,9
    80005fc4:	04c77663          	bgeu	a4,a2,80006010 <__memset+0x1c8>
    80005fc8:	00e50733          	add	a4,a0,a4
    80005fcc:	00b70023          	sb	a1,0(a4)
    80005fd0:	00a7871b          	addiw	a4,a5,10
    80005fd4:	02c77e63          	bgeu	a4,a2,80006010 <__memset+0x1c8>
    80005fd8:	00e50733          	add	a4,a0,a4
    80005fdc:	00b70023          	sb	a1,0(a4)
    80005fe0:	00b7871b          	addiw	a4,a5,11
    80005fe4:	02c77663          	bgeu	a4,a2,80006010 <__memset+0x1c8>
    80005fe8:	00e50733          	add	a4,a0,a4
    80005fec:	00b70023          	sb	a1,0(a4)
    80005ff0:	00c7871b          	addiw	a4,a5,12
    80005ff4:	00c77e63          	bgeu	a4,a2,80006010 <__memset+0x1c8>
    80005ff8:	00e50733          	add	a4,a0,a4
    80005ffc:	00b70023          	sb	a1,0(a4)
    80006000:	00d7879b          	addiw	a5,a5,13
    80006004:	00c7f663          	bgeu	a5,a2,80006010 <__memset+0x1c8>
    80006008:	00f507b3          	add	a5,a0,a5
    8000600c:	00b78023          	sb	a1,0(a5)
    80006010:	00813403          	ld	s0,8(sp)
    80006014:	01010113          	addi	sp,sp,16
    80006018:	00008067          	ret
    8000601c:	00b00693          	li	a3,11
    80006020:	e55ff06f          	j	80005e74 <__memset+0x2c>
    80006024:	00300e93          	li	t4,3
    80006028:	ea5ff06f          	j	80005ecc <__memset+0x84>
    8000602c:	00100e93          	li	t4,1
    80006030:	e9dff06f          	j	80005ecc <__memset+0x84>
    80006034:	00000e93          	li	t4,0
    80006038:	e95ff06f          	j	80005ecc <__memset+0x84>
    8000603c:	00000793          	li	a5,0
    80006040:	ef9ff06f          	j	80005f38 <__memset+0xf0>
    80006044:	00200e93          	li	t4,2
    80006048:	e85ff06f          	j	80005ecc <__memset+0x84>
    8000604c:	00400e93          	li	t4,4
    80006050:	e7dff06f          	j	80005ecc <__memset+0x84>
    80006054:	00500e93          	li	t4,5
    80006058:	e75ff06f          	j	80005ecc <__memset+0x84>
    8000605c:	00600e93          	li	t4,6
    80006060:	e6dff06f          	j	80005ecc <__memset+0x84>

0000000080006064 <__memmove>:
    80006064:	ff010113          	addi	sp,sp,-16
    80006068:	00813423          	sd	s0,8(sp)
    8000606c:	01010413          	addi	s0,sp,16
    80006070:	0e060863          	beqz	a2,80006160 <__memmove+0xfc>
    80006074:	fff6069b          	addiw	a3,a2,-1
    80006078:	0006881b          	sext.w	a6,a3
    8000607c:	0ea5e863          	bltu	a1,a0,8000616c <__memmove+0x108>
    80006080:	00758713          	addi	a4,a1,7
    80006084:	00a5e7b3          	or	a5,a1,a0
    80006088:	40a70733          	sub	a4,a4,a0
    8000608c:	0077f793          	andi	a5,a5,7
    80006090:	00f73713          	sltiu	a4,a4,15
    80006094:	00174713          	xori	a4,a4,1
    80006098:	0017b793          	seqz	a5,a5
    8000609c:	00e7f7b3          	and	a5,a5,a4
    800060a0:	10078863          	beqz	a5,800061b0 <__memmove+0x14c>
    800060a4:	00900793          	li	a5,9
    800060a8:	1107f463          	bgeu	a5,a6,800061b0 <__memmove+0x14c>
    800060ac:	0036581b          	srliw	a6,a2,0x3
    800060b0:	fff8081b          	addiw	a6,a6,-1
    800060b4:	02081813          	slli	a6,a6,0x20
    800060b8:	01d85893          	srli	a7,a6,0x1d
    800060bc:	00858813          	addi	a6,a1,8
    800060c0:	00058793          	mv	a5,a1
    800060c4:	00050713          	mv	a4,a0
    800060c8:	01088833          	add	a6,a7,a6
    800060cc:	0007b883          	ld	a7,0(a5)
    800060d0:	00878793          	addi	a5,a5,8
    800060d4:	00870713          	addi	a4,a4,8
    800060d8:	ff173c23          	sd	a7,-8(a4)
    800060dc:	ff0798e3          	bne	a5,a6,800060cc <__memmove+0x68>
    800060e0:	ff867713          	andi	a4,a2,-8
    800060e4:	02071793          	slli	a5,a4,0x20
    800060e8:	0207d793          	srli	a5,a5,0x20
    800060ec:	00f585b3          	add	a1,a1,a5
    800060f0:	40e686bb          	subw	a3,a3,a4
    800060f4:	00f507b3          	add	a5,a0,a5
    800060f8:	06e60463          	beq	a2,a4,80006160 <__memmove+0xfc>
    800060fc:	0005c703          	lbu	a4,0(a1)
    80006100:	00e78023          	sb	a4,0(a5)
    80006104:	04068e63          	beqz	a3,80006160 <__memmove+0xfc>
    80006108:	0015c603          	lbu	a2,1(a1)
    8000610c:	00100713          	li	a4,1
    80006110:	00c780a3          	sb	a2,1(a5)
    80006114:	04e68663          	beq	a3,a4,80006160 <__memmove+0xfc>
    80006118:	0025c603          	lbu	a2,2(a1)
    8000611c:	00200713          	li	a4,2
    80006120:	00c78123          	sb	a2,2(a5)
    80006124:	02e68e63          	beq	a3,a4,80006160 <__memmove+0xfc>
    80006128:	0035c603          	lbu	a2,3(a1)
    8000612c:	00300713          	li	a4,3
    80006130:	00c781a3          	sb	a2,3(a5)
    80006134:	02e68663          	beq	a3,a4,80006160 <__memmove+0xfc>
    80006138:	0045c603          	lbu	a2,4(a1)
    8000613c:	00400713          	li	a4,4
    80006140:	00c78223          	sb	a2,4(a5)
    80006144:	00e68e63          	beq	a3,a4,80006160 <__memmove+0xfc>
    80006148:	0055c603          	lbu	a2,5(a1)
    8000614c:	00500713          	li	a4,5
    80006150:	00c782a3          	sb	a2,5(a5)
    80006154:	00e68663          	beq	a3,a4,80006160 <__memmove+0xfc>
    80006158:	0065c703          	lbu	a4,6(a1)
    8000615c:	00e78323          	sb	a4,6(a5)
    80006160:	00813403          	ld	s0,8(sp)
    80006164:	01010113          	addi	sp,sp,16
    80006168:	00008067          	ret
    8000616c:	02061713          	slli	a4,a2,0x20
    80006170:	02075713          	srli	a4,a4,0x20
    80006174:	00e587b3          	add	a5,a1,a4
    80006178:	f0f574e3          	bgeu	a0,a5,80006080 <__memmove+0x1c>
    8000617c:	02069613          	slli	a2,a3,0x20
    80006180:	02065613          	srli	a2,a2,0x20
    80006184:	fff64613          	not	a2,a2
    80006188:	00e50733          	add	a4,a0,a4
    8000618c:	00c78633          	add	a2,a5,a2
    80006190:	fff7c683          	lbu	a3,-1(a5)
    80006194:	fff78793          	addi	a5,a5,-1
    80006198:	fff70713          	addi	a4,a4,-1
    8000619c:	00d70023          	sb	a3,0(a4)
    800061a0:	fec798e3          	bne	a5,a2,80006190 <__memmove+0x12c>
    800061a4:	00813403          	ld	s0,8(sp)
    800061a8:	01010113          	addi	sp,sp,16
    800061ac:	00008067          	ret
    800061b0:	02069713          	slli	a4,a3,0x20
    800061b4:	02075713          	srli	a4,a4,0x20
    800061b8:	00170713          	addi	a4,a4,1
    800061bc:	00e50733          	add	a4,a0,a4
    800061c0:	00050793          	mv	a5,a0
    800061c4:	0005c683          	lbu	a3,0(a1)
    800061c8:	00178793          	addi	a5,a5,1
    800061cc:	00158593          	addi	a1,a1,1
    800061d0:	fed78fa3          	sb	a3,-1(a5)
    800061d4:	fee798e3          	bne	a5,a4,800061c4 <__memmove+0x160>
    800061d8:	f89ff06f          	j	80006160 <__memmove+0xfc>

00000000800061dc <__putc>:
    800061dc:	fe010113          	addi	sp,sp,-32
    800061e0:	00813823          	sd	s0,16(sp)
    800061e4:	00113c23          	sd	ra,24(sp)
    800061e8:	02010413          	addi	s0,sp,32
    800061ec:	00050793          	mv	a5,a0
    800061f0:	fef40593          	addi	a1,s0,-17
    800061f4:	00100613          	li	a2,1
    800061f8:	00000513          	li	a0,0
    800061fc:	fef407a3          	sb	a5,-17(s0)
    80006200:	fffff097          	auipc	ra,0xfffff
    80006204:	b3c080e7          	jalr	-1220(ra) # 80004d3c <console_write>
    80006208:	01813083          	ld	ra,24(sp)
    8000620c:	01013403          	ld	s0,16(sp)
    80006210:	02010113          	addi	sp,sp,32
    80006214:	00008067          	ret

0000000080006218 <__getc>:
    80006218:	fe010113          	addi	sp,sp,-32
    8000621c:	00813823          	sd	s0,16(sp)
    80006220:	00113c23          	sd	ra,24(sp)
    80006224:	02010413          	addi	s0,sp,32
    80006228:	fe840593          	addi	a1,s0,-24
    8000622c:	00100613          	li	a2,1
    80006230:	00000513          	li	a0,0
    80006234:	fffff097          	auipc	ra,0xfffff
    80006238:	ae8080e7          	jalr	-1304(ra) # 80004d1c <console_read>
    8000623c:	fe844503          	lbu	a0,-24(s0)
    80006240:	01813083          	ld	ra,24(sp)
    80006244:	01013403          	ld	s0,16(sp)
    80006248:	02010113          	addi	sp,sp,32
    8000624c:	00008067          	ret

0000000080006250 <console_handler>:
    80006250:	fe010113          	addi	sp,sp,-32
    80006254:	00813823          	sd	s0,16(sp)
    80006258:	00113c23          	sd	ra,24(sp)
    8000625c:	00913423          	sd	s1,8(sp)
    80006260:	02010413          	addi	s0,sp,32
    80006264:	14202773          	csrr	a4,scause
    80006268:	100027f3          	csrr	a5,sstatus
    8000626c:	0027f793          	andi	a5,a5,2
    80006270:	06079e63          	bnez	a5,800062ec <console_handler+0x9c>
    80006274:	00074c63          	bltz	a4,8000628c <console_handler+0x3c>
    80006278:	01813083          	ld	ra,24(sp)
    8000627c:	01013403          	ld	s0,16(sp)
    80006280:	00813483          	ld	s1,8(sp)
    80006284:	02010113          	addi	sp,sp,32
    80006288:	00008067          	ret
    8000628c:	0ff77713          	andi	a4,a4,255
    80006290:	00900793          	li	a5,9
    80006294:	fef712e3          	bne	a4,a5,80006278 <console_handler+0x28>
    80006298:	ffffe097          	auipc	ra,0xffffe
    8000629c:	6dc080e7          	jalr	1756(ra) # 80004974 <plic_claim>
    800062a0:	00a00793          	li	a5,10
    800062a4:	00050493          	mv	s1,a0
    800062a8:	02f50c63          	beq	a0,a5,800062e0 <console_handler+0x90>
    800062ac:	fc0506e3          	beqz	a0,80006278 <console_handler+0x28>
    800062b0:	00050593          	mv	a1,a0
    800062b4:	00001517          	auipc	a0,0x1
    800062b8:	06450513          	addi	a0,a0,100 # 80007318 <_ZZ12printIntegermE6digits+0x1f0>
    800062bc:	fffff097          	auipc	ra,0xfffff
    800062c0:	afc080e7          	jalr	-1284(ra) # 80004db8 <__printf>
    800062c4:	01013403          	ld	s0,16(sp)
    800062c8:	01813083          	ld	ra,24(sp)
    800062cc:	00048513          	mv	a0,s1
    800062d0:	00813483          	ld	s1,8(sp)
    800062d4:	02010113          	addi	sp,sp,32
    800062d8:	ffffe317          	auipc	t1,0xffffe
    800062dc:	6d430067          	jr	1748(t1) # 800049ac <plic_complete>
    800062e0:	fffff097          	auipc	ra,0xfffff
    800062e4:	3e0080e7          	jalr	992(ra) # 800056c0 <uartintr>
    800062e8:	fddff06f          	j	800062c4 <console_handler+0x74>
    800062ec:	00001517          	auipc	a0,0x1
    800062f0:	12c50513          	addi	a0,a0,300 # 80007418 <digits+0x78>
    800062f4:	fffff097          	auipc	ra,0xfffff
    800062f8:	a68080e7          	jalr	-1432(ra) # 80004d5c <panic>
	...
