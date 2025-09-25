
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00007117          	auipc	sp,0x7
    80000004:	30013103          	ld	sp,768(sp) # 80007300 <_GLOBAL_OFFSET_TABLE_+0x20>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	740030ef          	jal	ra,8000375c <start>

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
    80001084:	38d000ef          	jal	ra,80001c10 <_ZN5Riscv21SupervisorTrapHandlerEv>
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

0000000080001288 <_Z9fibonaccim>:
#include "../lib/hw.h"
#include "../h/TCB.hpp"
#include "../h/print.hpp"
#include "../h/syscall_c.hpp"

uint64 fibonacci(uint64 n) {
    80001288:	fe010113          	addi	sp,sp,-32
    8000128c:	00113c23          	sd	ra,24(sp)
    80001290:	00813823          	sd	s0,16(sp)
    80001294:	00913423          	sd	s1,8(sp)
    80001298:	01213023          	sd	s2,0(sp)
    8000129c:	02010413          	addi	s0,sp,32
    800012a0:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800012a4:	00100793          	li	a5,1
    800012a8:	02a7f663          	bgeu	a5,a0,800012d4 <_Z9fibonaccim+0x4c>
    if (n % 4 == 0) thread_dispatch();
    800012ac:	00357793          	andi	a5,a0,3
    800012b0:	02078e63          	beqz	a5,800012ec <_Z9fibonaccim+0x64>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800012b4:	fff48513          	addi	a0,s1,-1
    800012b8:	00000097          	auipc	ra,0x0
    800012bc:	fd0080e7          	jalr	-48(ra) # 80001288 <_Z9fibonaccim>
    800012c0:	00050913          	mv	s2,a0
    800012c4:	ffe48513          	addi	a0,s1,-2
    800012c8:	00000097          	auipc	ra,0x0
    800012cc:	fc0080e7          	jalr	-64(ra) # 80001288 <_Z9fibonaccim>
    800012d0:	00a90533          	add	a0,s2,a0
}
    800012d4:	01813083          	ld	ra,24(sp)
    800012d8:	01013403          	ld	s0,16(sp)
    800012dc:	00813483          	ld	s1,8(sp)
    800012e0:	00013903          	ld	s2,0(sp)
    800012e4:	02010113          	addi	sp,sp,32
    800012e8:	00008067          	ret
    if (n % 4 == 0) thread_dispatch();
    800012ec:	00000097          	auipc	ra,0x0
    800012f0:	f78080e7          	jalr	-136(ra) # 80001264 <_Z15thread_dispatchv>
    800012f4:	fc1ff06f          	j	800012b4 <_Z9fibonaccim+0x2c>

00000000800012f8 <_Z11workerBodyAv>:

void workerBodyA() {
    800012f8:	ff010113          	addi	sp,sp,-16
    800012fc:	00113423          	sd	ra,8(sp)
    80001300:	00813023          	sd	s0,0(sp)
    80001304:	01010413          	addi	s0,sp,16
    // printString("A: fibonaci="); printInteger(result); printString("\n");
    //
    // for (; i < 6; i++) { printString("A: i="); printInteger(i); printString("\n"); }
    //
    // thread_dispatch();
    printString("A started!\n");
    80001308:	00005517          	auipc	a0,0x5
    8000130c:	d1850513          	addi	a0,a0,-744 # 80006020 <CONSOLE_STATUS+0x10>
    80001310:	00001097          	auipc	ra,0x1
    80001314:	eac080e7          	jalr	-340(ra) # 800021bc <_Z11printStringPKc>
    thread_dispatch();
    80001318:	00000097          	auipc	ra,0x0
    8000131c:	f4c080e7          	jalr	-180(ra) # 80001264 <_Z15thread_dispatchv>
    printString("A finished!\n");
    80001320:	00005517          	auipc	a0,0x5
    80001324:	d1050513          	addi	a0,a0,-752 # 80006030 <CONSOLE_STATUS+0x20>
    80001328:	00001097          	auipc	ra,0x1
    8000132c:	e94080e7          	jalr	-364(ra) # 800021bc <_Z11printStringPKc>
}
    80001330:	00813083          	ld	ra,8(sp)
    80001334:	00013403          	ld	s0,0(sp)
    80001338:	01010113          	addi	sp,sp,16
    8000133c:	00008067          	ret

0000000080001340 <_Z11workerBodyBv>:

void workerBodyB() {
    80001340:	ff010113          	addi	sp,sp,-16
    80001344:	00113423          	sd	ra,8(sp)
    80001348:	00813023          	sd	s0,0(sp)
    8000134c:	01010413          	addi	s0,sp,16
    // printString("B: fibonaci="); printInteger(result); printString("\n");
    //
    // for (; i < 16; i++) { printString("B: i="); printInteger(i); printString("\n"); }
    // thread_dispatch();

    printString("B started!\n");
    80001350:	00005517          	auipc	a0,0x5
    80001354:	cf050513          	addi	a0,a0,-784 # 80006040 <CONSOLE_STATUS+0x30>
    80001358:	00001097          	auipc	ra,0x1
    8000135c:	e64080e7          	jalr	-412(ra) # 800021bc <_Z11printStringPKc>
    thread_dispatch();
    80001360:	00000097          	auipc	ra,0x0
    80001364:	f04080e7          	jalr	-252(ra) # 80001264 <_Z15thread_dispatchv>
    printString("B finished!\n");
    80001368:	00005517          	auipc	a0,0x5
    8000136c:	ce850513          	addi	a0,a0,-792 # 80006050 <CONSOLE_STATUS+0x40>
    80001370:	00001097          	auipc	ra,0x1
    80001374:	e4c080e7          	jalr	-436(ra) # 800021bc <_Z11printStringPKc>
}
    80001378:	00813083          	ld	ra,8(sp)
    8000137c:	00013403          	ld	s0,0(sp)
    80001380:	01010113          	addi	sp,sp,16
    80001384:	00008067          	ret

0000000080001388 <_Z41__static_initialization_and_destruction_0ii>:
    return queue.removeLast();
}

void Scheduler::put(TCB *x) {
    queue.addFirst(x);
    80001388:	ff010113          	addi	sp,sp,-16
    8000138c:	00813423          	sd	s0,8(sp)
    80001390:	01010413          	addi	s0,sp,16
    80001394:	00100793          	li	a5,1
    80001398:	00f50863          	beq	a0,a5,800013a8 <_Z41__static_initialization_and_destruction_0ii+0x20>
    8000139c:	00813403          	ld	s0,8(sp)
    800013a0:	01010113          	addi	sp,sp,16
    800013a4:	00008067          	ret
    800013a8:	000107b7          	lui	a5,0x10
    800013ac:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800013b0:	fef596e3          	bne	a1,a5,8000139c <_Z41__static_initialization_and_destruction_0ii+0x14>
    };
    Elem * head;
    Elem *tail;

public:
    List(): head(0), tail(0){}
    800013b4:	00006797          	auipc	a5,0x6
    800013b8:	fac78793          	addi	a5,a5,-84 # 80007360 <_ZN9Scheduler5queueE>
    800013bc:	0007b023          	sd	zero,0(a5)
    800013c0:	0007b423          	sd	zero,8(a5)
    800013c4:	0007a823          	sw	zero,16(a5)
    800013c8:	fd5ff06f          	j	8000139c <_Z41__static_initialization_and_destruction_0ii+0x14>

00000000800013cc <_ZN9Scheduler3getEv>:
TCB *Scheduler::get() {
    800013cc:	fe010113          	addi	sp,sp,-32
    800013d0:	00113c23          	sd	ra,24(sp)
    800013d4:	00813823          	sd	s0,16(sp)
    800013d8:	00913423          	sd	s1,8(sp)
    800013dc:	02010413          	addi	s0,sp,32
        if(!tail){tail=head;}
        size++;
    }
    T* removeLast()
    {
        size--;
    800013e0:	00006797          	auipc	a5,0x6
    800013e4:	f8078793          	addi	a5,a5,-128 # 80007360 <_ZN9Scheduler5queueE>
    800013e8:	0107a703          	lw	a4,16(a5)
    800013ec:	fff7071b          	addiw	a4,a4,-1
    800013f0:	00e7a823          	sw	a4,16(a5)
        if(!head){return 0;}
    800013f4:	0007b483          	ld	s1,0(a5)
    800013f8:	04048663          	beqz	s1,80001444 <_ZN9Scheduler3getEv+0x78>
        Elem* prev=0;
    800013fc:	00000793          	li	a5,0
        for(Elem* curr=head; curr && curr!=tail; prev=curr, curr=curr->next);
    80001400:	00048e63          	beqz	s1,8000141c <_ZN9Scheduler3getEv+0x50>
    80001404:	00006717          	auipc	a4,0x6
    80001408:	f6473703          	ld	a4,-156(a4) # 80007368 <_ZN9Scheduler5queueE+0x8>
    8000140c:	00e48863          	beq	s1,a4,8000141c <_ZN9Scheduler3getEv+0x50>
    80001410:	00048793          	mv	a5,s1
    80001414:	0084b483          	ld	s1,8(s1)
    80001418:	fe9ff06f          	j	80001400 <_ZN9Scheduler3getEv+0x34>
        Elem* elem=tail;
    8000141c:	00006517          	auipc	a0,0x6
    80001420:	f4c53503          	ld	a0,-180(a0) # 80007368 <_ZN9Scheduler5queueE+0x8>
        if(prev) prev->next=0;
    80001424:	02078c63          	beqz	a5,8000145c <_ZN9Scheduler3getEv+0x90>
    80001428:	0007b423          	sd	zero,8(a5)
        else head=0;
        tail=prev;
    8000142c:	00006717          	auipc	a4,0x6
    80001430:	f2f73e23          	sd	a5,-196(a4) # 80007368 <_ZN9Scheduler5queueE+0x8>
        T* retval= elem->data;
    80001434:	00053483          	ld	s1,0(a0)
        delete elem;
    80001438:	00050663          	beqz	a0,80001444 <_ZN9Scheduler3getEv+0x78>
    8000143c:	00000097          	auipc	ra,0x0
    80001440:	444080e7          	jalr	1092(ra) # 80001880 <_ZdlPv>
}
    80001444:	00048513          	mv	a0,s1
    80001448:	01813083          	ld	ra,24(sp)
    8000144c:	01013403          	ld	s0,16(sp)
    80001450:	00813483          	ld	s1,8(sp)
    80001454:	02010113          	addi	sp,sp,32
    80001458:	00008067          	ret
        else head=0;
    8000145c:	00006717          	auipc	a4,0x6
    80001460:	f0073223          	sd	zero,-252(a4) # 80007360 <_ZN9Scheduler5queueE>
    80001464:	fc9ff06f          	j	8000142c <_ZN9Scheduler3getEv+0x60>

0000000080001468 <_ZN9Scheduler3putEP3TCB>:
void Scheduler::put(TCB *x) {
    80001468:	fe010113          	addi	sp,sp,-32
    8000146c:	00113c23          	sd	ra,24(sp)
    80001470:	00813823          	sd	s0,16(sp)
    80001474:	00913423          	sd	s1,8(sp)
    80001478:	02010413          	addi	s0,sp,32
    8000147c:	00050493          	mv	s1,a0
        Elem* elem=new Elem(data, head);
    80001480:	01000513          	li	a0,16
    80001484:	00000097          	auipc	ra,0x0
    80001488:	3d4080e7          	jalr	980(ra) # 80001858 <_Znwm>
    8000148c:	00006797          	auipc	a5,0x6
    80001490:	ed478793          	addi	a5,a5,-300 # 80007360 <_ZN9Scheduler5queueE>
    80001494:	0007b703          	ld	a4,0(a5)
        Elem(T* data, Elem* next=nullptr): data(data), next(next){}
    80001498:	00953023          	sd	s1,0(a0)
    8000149c:	00e53423          	sd	a4,8(a0)
        head=elem;
    800014a0:	00a7b023          	sd	a0,0(a5)
        if(!tail){tail=head;}
    800014a4:	0087b783          	ld	a5,8(a5)
    800014a8:	02078663          	beqz	a5,800014d4 <_ZN9Scheduler3putEP3TCB+0x6c>
        size++;
    800014ac:	00006717          	auipc	a4,0x6
    800014b0:	eb470713          	addi	a4,a4,-332 # 80007360 <_ZN9Scheduler5queueE>
    800014b4:	01072783          	lw	a5,16(a4)
    800014b8:	0017879b          	addiw	a5,a5,1
    800014bc:	00f72823          	sw	a5,16(a4)
    800014c0:	01813083          	ld	ra,24(sp)
    800014c4:	01013403          	ld	s0,16(sp)
    800014c8:	00813483          	ld	s1,8(sp)
    800014cc:	02010113          	addi	sp,sp,32
    800014d0:	00008067          	ret
        if(!tail){tail=head;}
    800014d4:	00006797          	auipc	a5,0x6
    800014d8:	e8a7ba23          	sd	a0,-364(a5) # 80007368 <_ZN9Scheduler5queueE+0x8>
    800014dc:	fd1ff06f          	j	800014ac <_ZN9Scheduler3putEP3TCB+0x44>

00000000800014e0 <_GLOBAL__sub_I__ZN9Scheduler5queueE>:
    800014e0:	ff010113          	addi	sp,sp,-16
    800014e4:	00113423          	sd	ra,8(sp)
    800014e8:	00813023          	sd	s0,0(sp)
    800014ec:	01010413          	addi	s0,sp,16
    800014f0:	000105b7          	lui	a1,0x10
    800014f4:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    800014f8:	00100513          	li	a0,1
    800014fc:	00000097          	auipc	ra,0x0
    80001500:	e8c080e7          	jalr	-372(ra) # 80001388 <_Z41__static_initialization_and_destruction_0ii>
    80001504:	00813083          	ld	ra,8(sp)
    80001508:	00013403          	ld	s0,0(sp)
    8000150c:	01010113          	addi	sp,sp,16
    80001510:	00008067          	ret

0000000080001514 <_Z11userWrapperPv>:
    __putc('\n');
}
extern void userMain();

void userWrapper(void* arg)
{
    80001514:	ff010113          	addi	sp,sp,-16
    80001518:	00113423          	sd	ra,8(sp)
    8000151c:	00813023          	sd	s0,0(sp)
    80001520:	01010413          	addi	s0,sp,16
    printString("user main start:\n");
    80001524:	00005517          	auipc	a0,0x5
    80001528:	b3c50513          	addi	a0,a0,-1220 # 80006060 <CONSOLE_STATUS+0x50>
    8000152c:	00001097          	auipc	ra,0x1
    80001530:	c90080e7          	jalr	-880(ra) # 800021bc <_Z11printStringPKc>
    userMain();
    80001534:	00002097          	auipc	ra,0x2
    80001538:	c40080e7          	jalr	-960(ra) # 80003174 <_Z8userMainv>
    printString("user main end:\n");
    8000153c:	00005517          	auipc	a0,0x5
    80001540:	b3c50513          	addi	a0,a0,-1220 # 80006078 <CONSOLE_STATUS+0x68>
    80001544:	00001097          	auipc	ra,0x1
    80001548:	c78080e7          	jalr	-904(ra) # 800021bc <_Z11printStringPKc>
}
    8000154c:	00813083          	ld	ra,8(sp)
    80001550:	00013403          	ld	s0,0(sp)
    80001554:	01010113          	addi	sp,sp,16
    80001558:	00008067          	ret

000000008000155c <_Z13AllocatorTestv>:
void AllocatorTest() {
    8000155c:	fd010113          	addi	sp,sp,-48
    80001560:	02113423          	sd	ra,40(sp)
    80001564:	02813023          	sd	s0,32(sp)
    80001568:	00913c23          	sd	s1,24(sp)
    8000156c:	01213823          	sd	s2,16(sp)
    80001570:	01313423          	sd	s3,8(sp)
    80001574:	03010413          	addi	s0,sp,48
    uint64* a1=new uint64;
    80001578:	00800513          	li	a0,8
    8000157c:	00000097          	auipc	ra,0x0
    80001580:	2dc080e7          	jalr	732(ra) # 80001858 <_Znwm>
    80001584:	00050993          	mv	s3,a0
    *a1=4;
    80001588:	00400793          	li	a5,4
    8000158c:	00f53023          	sd	a5,0(a0)
    __putc(*a1+'0');
    80001590:	03400513          	li	a0,52
    80001594:	00004097          	auipc	ra,0x4
    80001598:	288080e7          	jalr	648(ra) # 8000581c <__putc>
    __putc('\n');
    8000159c:	00a00513          	li	a0,10
    800015a0:	00004097          	auipc	ra,0x4
    800015a4:	27c080e7          	jalr	636(ra) # 8000581c <__putc>
    uint64* a2=new uint64;
    800015a8:	00800513          	li	a0,8
    800015ac:	00000097          	auipc	ra,0x0
    800015b0:	2ac080e7          	jalr	684(ra) # 80001858 <_Znwm>
    *a2=5;
    800015b4:	00500793          	li	a5,5
    800015b8:	00f53023          	sd	a5,0(a0)
    __putc(*a2+'0');
    800015bc:	03500513          	li	a0,53
    800015c0:	00004097          	auipc	ra,0x4
    800015c4:	25c080e7          	jalr	604(ra) # 8000581c <__putc>
    __putc('\n');
    800015c8:	00a00513          	li	a0,10
    800015cc:	00004097          	auipc	ra,0x4
    800015d0:	250080e7          	jalr	592(ra) # 8000581c <__putc>
    uint64* a3=new uint64;
    800015d4:	00800513          	li	a0,8
    800015d8:	00000097          	auipc	ra,0x0
    800015dc:	280080e7          	jalr	640(ra) # 80001858 <_Znwm>
    800015e0:	00050913          	mv	s2,a0
    *a3=6;
    800015e4:	00600793          	li	a5,6
    800015e8:	00f53023          	sd	a5,0(a0)
    __putc(*a3+'0');
    800015ec:	03600513          	li	a0,54
    800015f0:	00004097          	auipc	ra,0x4
    800015f4:	22c080e7          	jalr	556(ra) # 8000581c <__putc>
    __putc('\n');
    800015f8:	00a00513          	li	a0,10
    800015fc:	00004097          	auipc	ra,0x4
    80001600:	220080e7          	jalr	544(ra) # 8000581c <__putc>
    uint64* a4=new uint64;
    80001604:	00800513          	li	a0,8
    80001608:	00000097          	auipc	ra,0x0
    8000160c:	250080e7          	jalr	592(ra) # 80001858 <_Znwm>
    80001610:	00050493          	mv	s1,a0
    *a4=7;
    80001614:	00700793          	li	a5,7
    80001618:	00f53023          	sd	a5,0(a0)
    __putc(*a4+'0');
    8000161c:	03700513          	li	a0,55
    80001620:	00004097          	auipc	ra,0x4
    80001624:	1fc080e7          	jalr	508(ra) # 8000581c <__putc>
    __putc('\n');
    80001628:	00a00513          	li	a0,10
    8000162c:	00004097          	auipc	ra,0x4
    80001630:	1f0080e7          	jalr	496(ra) # 8000581c <__putc>
    uint64* a5=new uint64;
    80001634:	00800513          	li	a0,8
    80001638:	00000097          	auipc	ra,0x0
    8000163c:	220080e7          	jalr	544(ra) # 80001858 <_Znwm>
    *a5=8;
    80001640:	00800793          	li	a5,8
    80001644:	00f53023          	sd	a5,0(a0)
    __putc(*a5+'0');
    80001648:	03800513          	li	a0,56
    8000164c:	00004097          	auipc	ra,0x4
    80001650:	1d0080e7          	jalr	464(ra) # 8000581c <__putc>
    __putc('\n');
    80001654:	00a00513          	li	a0,10
    80001658:	00004097          	auipc	ra,0x4
    8000165c:	1c4080e7          	jalr	452(ra) # 8000581c <__putc>
    delete a1;
    80001660:	00098863          	beqz	s3,80001670 <_Z13AllocatorTestv+0x114>
    80001664:	00098513          	mv	a0,s3
    80001668:	00000097          	auipc	ra,0x0
    8000166c:	218080e7          	jalr	536(ra) # 80001880 <_ZdlPv>
    delete a3;
    80001670:	00090863          	beqz	s2,80001680 <_Z13AllocatorTestv+0x124>
    80001674:	00090513          	mv	a0,s2
    80001678:	00000097          	auipc	ra,0x0
    8000167c:	208080e7          	jalr	520(ra) # 80001880 <_ZdlPv>
    delete a4;
    80001680:	00048863          	beqz	s1,80001690 <_Z13AllocatorTestv+0x134>
    80001684:	00048513          	mv	a0,s1
    80001688:	00000097          	auipc	ra,0x0
    8000168c:	1f8080e7          	jalr	504(ra) # 80001880 <_ZdlPv>
    uint64* a6=new uint64;
    80001690:	00800513          	li	a0,8
    80001694:	00000097          	auipc	ra,0x0
    80001698:	1c4080e7          	jalr	452(ra) # 80001858 <_Znwm>
    *a6=9;
    8000169c:	00900793          	li	a5,9
    800016a0:	00f53023          	sd	a5,0(a0)
    __putc(*a6+'0');
    800016a4:	03900513          	li	a0,57
    800016a8:	00004097          	auipc	ra,0x4
    800016ac:	174080e7          	jalr	372(ra) # 8000581c <__putc>
    __putc('\n');
    800016b0:	00a00513          	li	a0,10
    800016b4:	00004097          	auipc	ra,0x4
    800016b8:	168080e7          	jalr	360(ra) # 8000581c <__putc>
}
    800016bc:	02813083          	ld	ra,40(sp)
    800016c0:	02013403          	ld	s0,32(sp)
    800016c4:	01813483          	ld	s1,24(sp)
    800016c8:	01013903          	ld	s2,16(sp)
    800016cc:	00813983          	ld	s3,8(sp)
    800016d0:	03010113          	addi	sp,sp,48
    800016d4:	00008067          	ret

00000000800016d8 <_Z14WorkerAWrapperPv>:

void WorkerAWrapper(void* arg)
{
    800016d8:	ff010113          	addi	sp,sp,-16
    800016dc:	00113423          	sd	ra,8(sp)
    800016e0:	00813023          	sd	s0,0(sp)
    800016e4:	01010413          	addi	s0,sp,16
    //printString("worker A start:\n");
    workerBodyA();
    800016e8:	00000097          	auipc	ra,0x0
    800016ec:	c10080e7          	jalr	-1008(ra) # 800012f8 <_Z11workerBodyAv>
    //printString("worker A end:\n");
}
    800016f0:	00813083          	ld	ra,8(sp)
    800016f4:	00013403          	ld	s0,0(sp)
    800016f8:	01010113          	addi	sp,sp,16
    800016fc:	00008067          	ret

0000000080001700 <_Z14WorkerBWrapperPv>:

void WorkerBWrapper(void* arg)
{
    80001700:	ff010113          	addi	sp,sp,-16
    80001704:	00113423          	sd	ra,8(sp)
    80001708:	00813023          	sd	s0,0(sp)
    8000170c:	01010413          	addi	s0,sp,16
    //printString("worker B start:\n");
    workerBodyB();
    80001710:	00000097          	auipc	ra,0x0
    80001714:	c30080e7          	jalr	-976(ra) # 80001340 <_Z11workerBodyBv>
    //printString("worker B end:\n");
}
    80001718:	00813083          	ld	ra,8(sp)
    8000171c:	00013403          	ld	s0,0(sp)
    80001720:	01010113          	addi	sp,sp,16
    80001724:	00008067          	ret

0000000080001728 <main>:





void main() {
    80001728:	fc010113          	addi	sp,sp,-64
    8000172c:	02113c23          	sd	ra,56(sp)
    80001730:	02813823          	sd	s0,48(sp)
    80001734:	02913423          	sd	s1,40(sp)
    80001738:	03213023          	sd	s2,32(sp)
    8000173c:	04010413          	addi	s0,sp,64
    Riscv::set_stvec((uint64)Riscv::SupervisorTrap);
    80001740:	00006797          	auipc	a5,0x6
    80001744:	bb07b783          	ld	a5,-1104(a5) # 800072f0 <_GLOBAL_OFFSET_TABLE_+0x10>
    static void SupervisorTrapHandler();
};


inline void Riscv::set_stvec(uint64 stvec) {
    __asm__ volatile ("csrw stvec, %[x]" :: [x] "r" (stvec));
    80001748:	10579073          	csrw	stvec,a5
    //AllocatorTest();



     thread_t coroutines[3];
     thread_create(&coroutines[0],nullptr,nullptr);
    8000174c:	00000613          	li	a2,0
    80001750:	00000593          	li	a1,0
    80001754:	fc840513          	addi	a0,s0,-56
    80001758:	00000097          	auipc	ra,0x0
    8000175c:	aa8080e7          	jalr	-1368(ra) # 80001200 <_Z13thread_createPP3TCBPFvPvES2_>
    static void dispatch();
    static int exit();

    bool isFinished() const { return finished;}

    void setSysThread(bool sysThread) { this->sysThread = sysThread; }
    80001760:	fc843783          	ld	a5,-56(s0)
    80001764:	00100713          	li	a4,1
    80001768:	00e78c23          	sb	a4,24(a5)
     coroutines[0]->setSysThread(true);
     thread_create(&coroutines[1],userWrapper,nullptr);
    8000176c:	00000613          	li	a2,0
    80001770:	00000597          	auipc	a1,0x0
    80001774:	da458593          	addi	a1,a1,-604 # 80001514 <_Z11userWrapperPv>
    80001778:	fd040513          	addi	a0,s0,-48
    8000177c:	00000097          	auipc	ra,0x0
    80001780:	a84080e7          	jalr	-1404(ra) # 80001200 <_Z13thread_createPP3TCBPFvPvES2_>
     //thread_create(&coroutines[2],WorkerBWrapper,nullptr);


     while (Scheduler::queue.size>0 ) {
    80001784:	00006797          	auipc	a5,0x6
    80001788:	b747b783          	ld	a5,-1164(a5) # 800072f8 <_GLOBAL_OFFSET_TABLE_+0x18>
    8000178c:	0107a783          	lw	a5,16(a5)
    80001790:	00f05863          	blez	a5,800017a0 <main+0x78>
         thread_dispatch();
    80001794:	00000097          	auipc	ra,0x0
    80001798:	ad0080e7          	jalr	-1328(ra) # 80001264 <_Z15thread_dispatchv>
    8000179c:	fe9ff06f          	j	80001784 <main+0x5c>
     }

     for (auto coroutine: coroutines) { delete coroutine; }
    800017a0:	fc840493          	addi	s1,s0,-56
    800017a4:	01c0006f          	j	800017c0 <main+0x98>
        return MemoryAllocator::Instance()->mem_free(ptr);
    800017a8:	00000097          	auipc	ra,0x0
    800017ac:	720080e7          	jalr	1824(ra) # 80001ec8 <_ZN15MemoryAllocator8InstanceEv>
    800017b0:	00090593          	mv	a1,s2
    800017b4:	00001097          	auipc	ra,0x1
    800017b8:	8e8080e7          	jalr	-1816(ra) # 8000209c <_ZN15MemoryAllocator8mem_freeEPv>
    800017bc:	00848493          	addi	s1,s1,8
    800017c0:	fe040793          	addi	a5,s0,-32
    800017c4:	02f48063          	beq	s1,a5,800017e4 <main+0xbc>
    800017c8:	0004b903          	ld	s2,0(s1)
    800017cc:	fe0908e3          	beqz	s2,800017bc <main+0x94>
        delete stack;
    800017d0:	00893503          	ld	a0,8(s2)
    800017d4:	fc050ae3          	beqz	a0,800017a8 <main+0x80>
    800017d8:	00000097          	auipc	ra,0x0
    800017dc:	0a8080e7          	jalr	168(ra) # 80001880 <_ZdlPv>
    800017e0:	fc9ff06f          	j	800017a8 <main+0x80>

     AllocatorTest();
    800017e4:	00000097          	auipc	ra,0x0
    800017e8:	d78080e7          	jalr	-648(ra) # 8000155c <_Z13AllocatorTestv>
     printString("Finished\n");
    800017ec:	00005517          	auipc	a0,0x5
    800017f0:	89c50513          	addi	a0,a0,-1892 # 80006088 <CONSOLE_STATUS+0x78>
    800017f4:	00001097          	auipc	ra,0x1
    800017f8:	9c8080e7          	jalr	-1592(ra) # 800021bc <_Z11printStringPKc>
    // printString("\n");
    // size_t pom2= mem_get_largest_free_block();
    // printString("Largest free block: ");
    // printInteger(pom2);
    // printString("\n");
}
    800017fc:	03813083          	ld	ra,56(sp)
    80001800:	03013403          	ld	s0,48(sp)
    80001804:	02813483          	ld	s1,40(sp)
    80001808:	02013903          	ld	s2,32(sp)
    8000180c:	04010113          	addi	sp,sp,64
    80001810:	00008067          	ret

0000000080001814 <_ZN6ThreadD1Ev>:
Thread::Thread() {
    myHandle=nullptr;
    body=nullptr;
    arg=nullptr;
}
Thread::~Thread() { }
    80001814:	ff010113          	addi	sp,sp,-16
    80001818:	00813423          	sd	s0,8(sp)
    8000181c:	01010413          	addi	s0,sp,16
    80001820:	00813403          	ld	s0,8(sp)
    80001824:	01010113          	addi	sp,sp,16
    80001828:	00008067          	ret

000000008000182c <_ZN6Thread7wrapperEPv>:
        ret = thread_create(&myHandle, wrapper, (void*)this);
    }
    return ret;
}
void Thread::wrapper(void* ptr)
{
    8000182c:	ff010113          	addi	sp,sp,-16
    80001830:	00113423          	sd	ra,8(sp)
    80001834:	00813023          	sd	s0,0(sp)
    80001838:	01010413          	addi	s0,sp,16
    ((Thread*)ptr)->run();
    8000183c:	00053783          	ld	a5,0(a0)
    80001840:	0107b783          	ld	a5,16(a5)
    80001844:	000780e7          	jalr	a5
    80001848:	00813083          	ld	ra,8(sp)
    8000184c:	00013403          	ld	s0,0(sp)
    80001850:	01010113          	addi	sp,sp,16
    80001854:	00008067          	ret

0000000080001858 <_Znwm>:
{
    80001858:	ff010113          	addi	sp,sp,-16
    8000185c:	00113423          	sd	ra,8(sp)
    80001860:	00813023          	sd	s0,0(sp)
    80001864:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80001868:	00000097          	auipc	ra,0x0
    8000186c:	8cc080e7          	jalr	-1844(ra) # 80001134 <_Z9mem_allocm>
}
    80001870:	00813083          	ld	ra,8(sp)
    80001874:	00013403          	ld	s0,0(sp)
    80001878:	01010113          	addi	sp,sp,16
    8000187c:	00008067          	ret

0000000080001880 <_ZdlPv>:
{
    80001880:	ff010113          	addi	sp,sp,-16
    80001884:	00113423          	sd	ra,8(sp)
    80001888:	00813023          	sd	s0,0(sp)
    8000188c:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    80001890:	00000097          	auipc	ra,0x0
    80001894:	8e4080e7          	jalr	-1820(ra) # 80001174 <_Z8mem_freePv>
}
    80001898:	00813083          	ld	ra,8(sp)
    8000189c:	00013403          	ld	s0,0(sp)
    800018a0:	01010113          	addi	sp,sp,16
    800018a4:	00008067          	ret

00000000800018a8 <_ZN6ThreadD0Ev>:
Thread::~Thread() { }
    800018a8:	ff010113          	addi	sp,sp,-16
    800018ac:	00113423          	sd	ra,8(sp)
    800018b0:	00813023          	sd	s0,0(sp)
    800018b4:	01010413          	addi	s0,sp,16
    800018b8:	00000097          	auipc	ra,0x0
    800018bc:	fc8080e7          	jalr	-56(ra) # 80001880 <_ZdlPv>
    800018c0:	00813083          	ld	ra,8(sp)
    800018c4:	00013403          	ld	s0,0(sp)
    800018c8:	01010113          	addi	sp,sp,16
    800018cc:	00008067          	ret

00000000800018d0 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) {
    800018d0:	ff010113          	addi	sp,sp,-16
    800018d4:	00813423          	sd	s0,8(sp)
    800018d8:	01010413          	addi	s0,sp,16
    800018dc:	00006797          	auipc	a5,0x6
    800018e0:	94478793          	addi	a5,a5,-1724 # 80007220 <_ZTV6Thread+0x10>
    800018e4:	00f53023          	sd	a5,0(a0)
    myHandle= nullptr;
    800018e8:	00053423          	sd	zero,8(a0)
    this->body=body;
    800018ec:	00b53823          	sd	a1,16(a0)
    this->arg=arg;
    800018f0:	00c53c23          	sd	a2,24(a0)
}
    800018f4:	00813403          	ld	s0,8(sp)
    800018f8:	01010113          	addi	sp,sp,16
    800018fc:	00008067          	ret

0000000080001900 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80001900:	ff010113          	addi	sp,sp,-16
    80001904:	00113423          	sd	ra,8(sp)
    80001908:	00813023          	sd	s0,0(sp)
    8000190c:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80001910:	00000097          	auipc	ra,0x0
    80001914:	954080e7          	jalr	-1708(ra) # 80001264 <_Z15thread_dispatchv>
}
    80001918:	00813083          	ld	ra,8(sp)
    8000191c:	00013403          	ld	s0,0(sp)
    80001920:	01010113          	addi	sp,sp,16
    80001924:	00008067          	ret

0000000080001928 <_ZN6ThreadC1Ev>:
Thread::Thread() {
    80001928:	ff010113          	addi	sp,sp,-16
    8000192c:	00813423          	sd	s0,8(sp)
    80001930:	01010413          	addi	s0,sp,16
    80001934:	00006797          	auipc	a5,0x6
    80001938:	8ec78793          	addi	a5,a5,-1812 # 80007220 <_ZTV6Thread+0x10>
    8000193c:	00f53023          	sd	a5,0(a0)
    myHandle=nullptr;
    80001940:	00053423          	sd	zero,8(a0)
    body=nullptr;
    80001944:	00053823          	sd	zero,16(a0)
    arg=nullptr;
    80001948:	00053c23          	sd	zero,24(a0)
}
    8000194c:	00813403          	ld	s0,8(sp)
    80001950:	01010113          	addi	sp,sp,16
    80001954:	00008067          	ret

0000000080001958 <_ZN6Thread5startEv>:
int Thread::start() {
    80001958:	ff010113          	addi	sp,sp,-16
    8000195c:	00113423          	sd	ra,8(sp)
    80001960:	00813023          	sd	s0,0(sp)
    80001964:	01010413          	addi	s0,sp,16
    if(body!=nullptr)
    80001968:	01053583          	ld	a1,16(a0)
    8000196c:	02058263          	beqz	a1,80001990 <_ZN6Thread5startEv+0x38>
        ret = thread_create(&myHandle, body, arg);
    80001970:	01853603          	ld	a2,24(a0)
    80001974:	00850513          	addi	a0,a0,8
    80001978:	00000097          	auipc	ra,0x0
    8000197c:	888080e7          	jalr	-1912(ra) # 80001200 <_Z13thread_createPP3TCBPFvPvES2_>
}
    80001980:	00813083          	ld	ra,8(sp)
    80001984:	00013403          	ld	s0,0(sp)
    80001988:	01010113          	addi	sp,sp,16
    8000198c:	00008067          	ret
        ret = thread_create(&myHandle, wrapper, (void*)this);
    80001990:	00050613          	mv	a2,a0
    80001994:	00000597          	auipc	a1,0x0
    80001998:	e9858593          	addi	a1,a1,-360 # 8000182c <_ZN6Thread7wrapperEPv>
    8000199c:	00850513          	addi	a0,a0,8
    800019a0:	00000097          	auipc	ra,0x0
    800019a4:	860080e7          	jalr	-1952(ra) # 80001200 <_Z13thread_createPP3TCBPFvPvES2_>
    800019a8:	fd9ff06f          	j	80001980 <_ZN6Thread5startEv+0x28>

00000000800019ac <_ZN6Thread3runEv>:
    int start ();
    static void dispatch ();
    //static int sleep (time_t);
protected:
    Thread ();
    virtual void run () {}
    800019ac:	ff010113          	addi	sp,sp,-16
    800019b0:	00813423          	sd	s0,8(sp)
    800019b4:	01010413          	addi	s0,sp,16
    800019b8:	00813403          	ld	s0,8(sp)
    800019bc:	01010113          	addi	sp,sp,16
    800019c0:	00008067          	ret

00000000800019c4 <_ZN3TCB12createThreadEPFvPvES0_Pm>:

extern "C" void context_switch(TCB::Context* oldContext, TCB::Context* newContext);

TCB* TCB::running=nullptr;

TCB* TCB::createThread(Body body, void *arg, uint64 *stack) {
    800019c4:	fd010113          	addi	sp,sp,-48
    800019c8:	02113423          	sd	ra,40(sp)
    800019cc:	02813023          	sd	s0,32(sp)
    800019d0:	00913c23          	sd	s1,24(sp)
    800019d4:	01213823          	sd	s2,16(sp)
    800019d8:	01313423          	sd	s3,8(sp)
    800019dc:	01413023          	sd	s4,0(sp)
    800019e0:	03010413          	addi	s0,sp,48
    800019e4:	00050993          	mv	s3,a0
    800019e8:	00058a13          	mv	s4,a1
    800019ec:	00060913          	mv	s2,a2
    return MemoryAllocator::Instance()->mem_alloc(size);
    800019f0:	00000097          	auipc	ra,0x0
    800019f4:	4d8080e7          	jalr	1240(ra) # 80001ec8 <_ZN15MemoryAllocator8InstanceEv>
    800019f8:	03800593          	li	a1,56
    800019fc:	00000097          	auipc	ra,0x0
    80001a00:	528080e7          	jalr	1320(ra) # 80001f24 <_ZN15MemoryAllocator9mem_allocEm>
    80001a04:	00050493          	mv	s1,a0
          arg(arg),   // now in correct order
          context({
              body != nullptr ? (uint64)&TCBWrapper : 0,
              body != nullptr ? (uint64)((char*)stackMem + DEFAULT_STACK_SIZE) : 0
          }),
          body(body)
    80001a08:	00050023          	sb	zero,0(a0)
    80001a0c:	01253423          	sd	s2,8(a0)
    80001a10:	01453823          	sd	s4,16(a0)
              body != nullptr ? (uint64)&TCBWrapper : 0,
    80001a14:	04098263          	beqz	s3,80001a58 <_ZN3TCB12createThreadEPFvPvES0_Pm+0x94>
    80001a18:	00000797          	auipc	a5,0x0
    80001a1c:	15478793          	addi	a5,a5,340 # 80001b6c <_ZN3TCB10TCBWrapperEv>
          body(body)
    80001a20:	02f4b023          	sd	a5,32(s1)
              body != nullptr ? (uint64)((char*)stackMem + DEFAULT_STACK_SIZE) : 0
    80001a24:	02098e63          	beqz	s3,80001a60 <_ZN3TCB12createThreadEPFvPvES0_Pm+0x9c>
    80001a28:	00001637          	lui	a2,0x1
    80001a2c:	00c90933          	add	s2,s2,a2
          body(body)
    80001a30:	0324b423          	sd	s2,40(s1)
    80001a34:	0334b823          	sd	s3,48(s1)
    {
        this->sysThread = sysThread;
    80001a38:	00048c23          	sb	zero,24(s1)
        if (running == nullptr) {
    80001a3c:	00006797          	auipc	a5,0x6
    80001a40:	93c7b783          	ld	a5,-1732(a5) # 80007378 <_ZN3TCB7runningE>
    80001a44:	02078263          	beqz	a5,80001a68 <_ZN3TCB12createThreadEPFvPvES0_Pm+0xa4>
            running = this;
        } else {
            Scheduler::put(this);
    80001a48:	00048513          	mv	a0,s1
    80001a4c:	00000097          	auipc	ra,0x0
    80001a50:	a1c080e7          	jalr	-1508(ra) # 80001468 <_ZN9Scheduler3putEP3TCB>
    80001a54:	01c0006f          	j	80001a70 <_ZN3TCB12createThreadEPFvPvES0_Pm+0xac>
              body != nullptr ? (uint64)&TCBWrapper : 0,
    80001a58:	00000793          	li	a5,0
    80001a5c:	fc5ff06f          	j	80001a20 <_ZN3TCB12createThreadEPFvPvES0_Pm+0x5c>
              body != nullptr ? (uint64)((char*)stackMem + DEFAULT_STACK_SIZE) : 0
    80001a60:	00000913          	li	s2,0
    80001a64:	fcdff06f          	j	80001a30 <_ZN3TCB12createThreadEPFvPvES0_Pm+0x6c>
            running = this;
    80001a68:	00006797          	auipc	a5,0x6
    80001a6c:	9097b823          	sd	s1,-1776(a5) # 80007378 <_ZN3TCB7runningE>
    return new TCB(body, arg, stack);
}
    80001a70:	00048513          	mv	a0,s1
    80001a74:	02813083          	ld	ra,40(sp)
    80001a78:	02013403          	ld	s0,32(sp)
    80001a7c:	01813483          	ld	s1,24(sp)
    80001a80:	01013903          	ld	s2,16(sp)
    80001a84:	00813983          	ld	s3,8(sp)
    80001a88:	00013a03          	ld	s4,0(sp)
    80001a8c:	03010113          	addi	sp,sp,48
    80001a90:	00008067          	ret
    80001a94:	00050913          	mv	s2,a0
        return MemoryAllocator::Instance()->mem_free(ptr);
    80001a98:	00000097          	auipc	ra,0x0
    80001a9c:	430080e7          	jalr	1072(ra) # 80001ec8 <_ZN15MemoryAllocator8InstanceEv>
    80001aa0:	00048593          	mv	a1,s1
    80001aa4:	00000097          	auipc	ra,0x0
    80001aa8:	5f8080e7          	jalr	1528(ra) # 8000209c <_ZN15MemoryAllocator8mem_freeEPv>
    80001aac:	00090513          	mv	a0,s2
    80001ab0:	00007097          	auipc	ra,0x7
    80001ab4:	9c8080e7          	jalr	-1592(ra) # 80008478 <_Unwind_Resume>

0000000080001ab8 <_ZN3TCB8dispatchEv>:

void TCB::dispatch() {
    80001ab8:	fe010113          	addi	sp,sp,-32
    80001abc:	00113c23          	sd	ra,24(sp)
    80001ac0:	00813823          	sd	s0,16(sp)
    80001ac4:	00913423          	sd	s1,8(sp)
    80001ac8:	02010413          	addi	s0,sp,32
    //printString("TCB::dispatch()\n");
    TCB *old=running;
    80001acc:	00006497          	auipc	s1,0x6
    80001ad0:	8ac4b483          	ld	s1,-1876(s1) # 80007378 <_ZN3TCB7runningE>
    bool isFinished() const { return finished;}
    80001ad4:	0004c783          	lbu	a5,0(s1)
    if (!old->isFinished()) {
    80001ad8:	02078c63          	beqz	a5,80001b10 <_ZN3TCB8dispatchEv+0x58>
        Scheduler::put(old);
    }
    running=Scheduler::get();
    80001adc:	00000097          	auipc	ra,0x0
    80001ae0:	8f0080e7          	jalr	-1808(ra) # 800013cc <_ZN9Scheduler3getEv>
    80001ae4:	00006797          	auipc	a5,0x6
    80001ae8:	88a7ba23          	sd	a0,-1900(a5) # 80007378 <_ZN3TCB7runningE>


    //Riscv::restorePrivilege();
    context_switch(&old->context, &running->context);
    80001aec:	02050593          	addi	a1,a0,32
    80001af0:	02048513          	addi	a0,s1,32
    80001af4:	fffff097          	auipc	ra,0xfffff
    80001af8:	62c080e7          	jalr	1580(ra) # 80001120 <context_switch>
}
    80001afc:	01813083          	ld	ra,24(sp)
    80001b00:	01013403          	ld	s0,16(sp)
    80001b04:	00813483          	ld	s1,8(sp)
    80001b08:	02010113          	addi	sp,sp,32
    80001b0c:	00008067          	ret
        Scheduler::put(old);
    80001b10:	00048513          	mv	a0,s1
    80001b14:	00000097          	auipc	ra,0x0
    80001b18:	954080e7          	jalr	-1708(ra) # 80001468 <_ZN9Scheduler3putEP3TCB>
    80001b1c:	fc1ff06f          	j	80001adc <_ZN3TCB8dispatchEv+0x24>

0000000080001b20 <_ZN3TCB4exitEv>:



int TCB::exit() {
    if (running->isFinished()) {
    80001b20:	00006797          	auipc	a5,0x6
    80001b24:	8587b783          	ld	a5,-1960(a5) # 80007378 <_ZN3TCB7runningE>
    80001b28:	0007c703          	lbu	a4,0(a5)
    80001b2c:	02071c63          	bnez	a4,80001b64 <_ZN3TCB4exitEv+0x44>
int TCB::exit() {
    80001b30:	ff010113          	addi	sp,sp,-16
    80001b34:	00113423          	sd	ra,8(sp)
    80001b38:	00813023          	sd	s0,0(sp)
    80001b3c:	01010413          	addi	s0,sp,16
        return -1;
    }
    running->finished=true;
    80001b40:	00100713          	li	a4,1
    80001b44:	00e78023          	sb	a4,0(a5)
    thread_dispatch();
    80001b48:	fffff097          	auipc	ra,0xfffff
    80001b4c:	71c080e7          	jalr	1820(ra) # 80001264 <_Z15thread_dispatchv>
    return 0;
    80001b50:	00000513          	li	a0,0
}
    80001b54:	00813083          	ld	ra,8(sp)
    80001b58:	00013403          	ld	s0,0(sp)
    80001b5c:	01010113          	addi	sp,sp,16
    80001b60:	00008067          	ret
        return -1;
    80001b64:	fff00513          	li	a0,-1
}
    80001b68:	00008067          	ret

0000000080001b6c <_ZN3TCB10TCBWrapperEv>:

void TCB::TCBWrapper() {
    80001b6c:	ff010113          	addi	sp,sp,-16
    80001b70:	00113423          	sd	ra,8(sp)
    80001b74:	00813023          	sd	s0,0(sp)
    80001b78:	01010413          	addi	s0,sp,16
    //printString("Entered wrapper\n");
    //Riscv::restorePrivilege();
    Riscv::popSppSpie();
    80001b7c:	00000097          	auipc	ra,0x0
    80001b80:	034080e7          	jalr	52(ra) # 80001bb0 <_ZN5Riscv10popSppSpieEv>
    running->body(running->arg);
    80001b84:	00005797          	auipc	a5,0x5
    80001b88:	7f47b783          	ld	a5,2036(a5) # 80007378 <_ZN3TCB7runningE>
    80001b8c:	0307b703          	ld	a4,48(a5)
    80001b90:	0107b503          	ld	a0,16(a5)
    80001b94:	000700e7          	jalr	a4
    exit();
    80001b98:	00000097          	auipc	ra,0x0
    80001b9c:	f88080e7          	jalr	-120(ra) # 80001b20 <_ZN3TCB4exitEv>
    80001ba0:	00813083          	ld	ra,8(sp)
    80001ba4:	00013403          	ld	s0,0(sp)
    80001ba8:	01010113          	addi	sp,sp,16
    80001bac:	00008067          	ret

0000000080001bb0 <_ZN5Riscv10popSppSpieEv>:
#include "../h/syscall_c.hpp"
#include "../h/MemoryAllocator.hpp"
#include  "../h/print.hpp"
using Body=void(*)(void*);

void Riscv::popSppSpie() {
    80001bb0:	ff010113          	addi	sp,sp,-16
    80001bb4:	00813423          	sd	s0,8(sp)
    80001bb8:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    80001bbc:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80001bc0:	10200073          	sret
}
    80001bc4:	00813403          	ld	s0,8(sp)
    80001bc8:	01010113          	addi	sp,sp,16
    80001bcc:	00008067          	ret

0000000080001bd0 <_ZN5Riscv16restorePrivilegeEv>:

void Riscv::restorePrivilege()
{
    80001bd0:	ff010113          	addi	sp,sp,-16
    80001bd4:	00813423          	sd	s0,8(sp)
    80001bd8:	01010413          	addi	s0,sp,16
    if(TCB::running->isSysThread())
    80001bdc:	00005797          	auipc	a5,0x5
    80001be0:	72c7b783          	ld	a5,1836(a5) # 80007308 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001be4:	0007b783          	ld	a5,0(a5)
    bool isSysThread() const { return sysThread; }
    80001be8:	0187c783          	lbu	a5,24(a5)
    80001bec:	00078c63          	beqz	a5,80001c04 <_ZN5Riscv16restorePrivilegeEv+0x34>
    uint64 volatile stval;
    __asm__ volatile("csrr %[stval], stval":[stval]"=r"(stval));
    return stval;
}
inline void Riscv::ms_sstatus(uint64 mask) {
    __asm__ volatile("csrs sstatus,%[mask]"::[mask]"r"(mask));
    80001bf0:	10000793          	li	a5,256
    80001bf4:	1007a073          	csrs	sstatus,a5
        ms_sstatus(SSTATUS_SPP);
    else
        mc_sstatus(SSTATUS_SPP);
}
    80001bf8:	00813403          	ld	s0,8(sp)
    80001bfc:	01010113          	addi	sp,sp,16
    80001c00:	00008067          	ret
}
inline void Riscv::mc_sstatus(uint64 mask) {
    __asm__ volatile("csrc sstatus,%[mask]"::[mask]"r"(mask));
    80001c04:	10000793          	li	a5,256
    80001c08:	1007b073          	csrc	sstatus,a5
    80001c0c:	fedff06f          	j	80001bf8 <_ZN5Riscv16restorePrivilegeEv+0x28>

0000000080001c10 <_ZN5Riscv21SupervisorTrapHandlerEv>:


void Riscv::SupervisorTrapHandler() {
    80001c10:	fa010113          	addi	sp,sp,-96
    80001c14:	04113c23          	sd	ra,88(sp)
    80001c18:	04813823          	sd	s0,80(sp)
    80001c1c:	04913423          	sd	s1,72(sp)
    80001c20:	05213023          	sd	s2,64(sp)
    80001c24:	03313c23          	sd	s3,56(sp)
    80001c28:	03413823          	sd	s4,48(sp)
    80001c2c:	03513423          	sd	s5,40(sp)
    80001c30:	06010413          	addi	s0,sp,96
    __asm__ volatile("csrr %[scause], scause":[scause]"=r"(scause));
    80001c34:	142027f3          	csrr	a5,scause
    80001c38:	faf43423          	sd	a5,-88(s0)
    return scause;
    80001c3c:	fa843703          	ld	a4,-88(s0)
    __asm__ volatile ("csrr %[x],sepc" : [x] "=r" (sepc));
    80001c40:	141024f3          	csrr	s1,sepc
    __asm__ volatile ("csrr %[x],sstatus" : [x] "=r" (sstatus));
    80001c44:	10002973          	csrr	s2,sstatus
    uint64 sepc;
    uint64 sstatus;
    uint64 scause=get_scause();
    sepc=get_sepc();
    sstatus=get_sstatus();
    if (scause == 0x8000000000000001UL) {
    80001c48:	fff00793          	li	a5,-1
    80001c4c:	03f79793          	slli	a5,a5,0x3f
    80001c50:	00178793          	addi	a5,a5,1
    80001c54:	0ef70c63          	beq	a4,a5,80001d4c <_ZN5Riscv21SupervisorTrapHandlerEv+0x13c>
        // interrupt: yes; cause code: supervisor software interrupt (CLINT; machine timer interrupt)
        mc_sip(SIP_SSIP);
    }
    else if (scause == 0x8000000000000009UL) {
    80001c58:	fff00793          	li	a5,-1
    80001c5c:	03f79793          	slli	a5,a5,0x3f
    80001c60:	00978793          	addi	a5,a5,9
    80001c64:	0ef70a63          	beq	a4,a5,80001d58 <_ZN5Riscv21SupervisorTrapHandlerEv+0x148>
        // interrupt: yes; cause code: supervisor external interrupt (PLIC; could be keyboard)
        console_handler();
    }
    else {
        uint64 syscode;
    __asm__ volatile ("mv %[x], a0" : [x] "=r" (syscode));
    80001c68:	00050793          	mv	a5,a0

    if (syscode==MEM_ALLOC) {
    80001c6c:	00100713          	li	a4,1
    80001c70:	0ee78a63          	beq	a5,a4,80001d64 <_ZN5Riscv21SupervisorTrapHandlerEv+0x154>
        size_t size_in_blocks;
        __asm__ volatile ("mv %[x], a1" : [x] "=r" (size_in_blocks));
        void* ptr = MemoryAllocator::Instance()->mem_alloc(size_in_blocks * MEM_BLOCK_SIZE);
        __asm__ volatile ("mv a0,%[x]" :: [x] "r" (ptr));
    }
    else if (syscode==MEM_FREE) {
    80001c74:	00200713          	li	a4,2
    80001c78:	12e78c63          	beq	a5,a4,80001db0 <_ZN5Riscv21SupervisorTrapHandlerEv+0x1a0>
        void* ptr;
        __asm__ volatile ("mv %[x], a1" : [x] "=r" (ptr));
        MemoryAllocator::Instance()->mem_free(ptr);
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (0));
    }
    else if (syscode==MEM_GET_FREE_SPACE) {
    80001c7c:	00300713          	li	a4,3
    80001c80:	14e78a63          	beq	a5,a4,80001dd4 <_ZN5Riscv21SupervisorTrapHandlerEv+0x1c4>
        size_t freeMem = MemoryAllocator::Instance()->getFreeMemSize();
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (freeMem));
    }
    else if (syscode==MEM_GET_LARGEST_FREE_BLOCK) {
    80001c84:	00400713          	li	a4,4
    80001c88:	16e78063          	beq	a5,a4,80001de8 <_ZN5Riscv21SupervisorTrapHandlerEv+0x1d8>
        size_t largestBlock = MemoryAllocator::Instance()->getLargestFreeBlock();
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (largestBlock));
    }
    else if (syscode==THREAD_CREATE) {
    80001c8c:	01100713          	li	a4,17
    80001c90:	16e78863          	beq	a5,a4,80001e00 <_ZN5Riscv21SupervisorTrapHandlerEv+0x1f0>
        else {
            ret=1;
        }
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (ret));
    }
    else if (syscode==THREAD_EXIT) {
    80001c94:	01200713          	li	a4,18
    80001c98:	1ae78c63          	beq	a5,a4,80001e50 <_ZN5Riscv21SupervisorTrapHandlerEv+0x240>
        int ret = TCB::exit();
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (ret));
    }
    else if (syscode==THREAD_DISPATCH) {
    80001c9c:	01300713          	li	a4,19
    80001ca0:	1ce78063          	beq	a5,a4,80001e60 <_ZN5Riscv21SupervisorTrapHandlerEv+0x250>
    __asm__ volatile("csrr %[scause], scause":[scause]"=r"(scause));
    80001ca4:	142027f3          	csrr	a5,scause
    80001ca8:	faf43c23          	sd	a5,-72(s0)
    return scause;
    80001cac:	fb843a03          	ld	s4,-72(s0)
    __asm__ volatile("csrr %[stval], stval":[stval]"=r"(stval));
    80001cb0:	143027f3          	csrr	a5,stval
    80001cb4:	faf43823          	sd	a5,-80(s0)
    return stval;
    80001cb8:	fb043983          	ld	s3,-80(s0)
        TCB::dispatch();
    }
    else {
        uint64 scause= get_scause();
        uint64 stval= get_stval();
        printString("scause:");
    80001cbc:	00004517          	auipc	a0,0x4
    80001cc0:	3dc50513          	addi	a0,a0,988 # 80006098 <CONSOLE_STATUS+0x88>
    80001cc4:	00000097          	auipc	ra,0x0
    80001cc8:	4f8080e7          	jalr	1272(ra) # 800021bc <_Z11printStringPKc>
        printInteger(scause);
    80001ccc:	000a0513          	mv	a0,s4
    80001cd0:	00000097          	auipc	ra,0x0
    80001cd4:	530080e7          	jalr	1328(ra) # 80002200 <_Z12printIntegerm>
        printString("\n");
    80001cd8:	00004517          	auipc	a0,0x4
    80001cdc:	39850513          	addi	a0,a0,920 # 80006070 <CONSOLE_STATUS+0x60>
    80001ce0:	00000097          	auipc	ra,0x0
    80001ce4:	4dc080e7          	jalr	1244(ra) # 800021bc <_Z11printStringPKc>

        printString("stval:");
    80001ce8:	00004517          	auipc	a0,0x4
    80001cec:	3b850513          	addi	a0,a0,952 # 800060a0 <CONSOLE_STATUS+0x90>
    80001cf0:	00000097          	auipc	ra,0x0
    80001cf4:	4cc080e7          	jalr	1228(ra) # 800021bc <_Z11printStringPKc>
        printInteger(stval);
    80001cf8:	00098513          	mv	a0,s3
    80001cfc:	00000097          	auipc	ra,0x0
    80001d00:	504080e7          	jalr	1284(ra) # 80002200 <_Z12printIntegerm>
        printString("\n");
    80001d04:	00004517          	auipc	a0,0x4
    80001d08:	36c50513          	addi	a0,a0,876 # 80006070 <CONSOLE_STATUS+0x60>
    80001d0c:	00000097          	auipc	ra,0x0
    80001d10:	4b0080e7          	jalr	1200(ra) # 800021bc <_Z11printStringPKc>

        printString("sepc:");
    80001d14:	00004517          	auipc	a0,0x4
    80001d18:	39450513          	addi	a0,a0,916 # 800060a8 <CONSOLE_STATUS+0x98>
    80001d1c:	00000097          	auipc	ra,0x0
    80001d20:	4a0080e7          	jalr	1184(ra) # 800021bc <_Z11printStringPKc>
        printInteger(sepc);
    80001d24:	00048513          	mv	a0,s1
    80001d28:	00000097          	auipc	ra,0x0
    80001d2c:	4d8080e7          	jalr	1240(ra) # 80002200 <_Z12printIntegerm>
        printString("\n");
    80001d30:	00004517          	auipc	a0,0x4
    80001d34:	34050513          	addi	a0,a0,832 # 80006070 <CONSOLE_STATUS+0x60>
    80001d38:	00000097          	auipc	ra,0x0
    80001d3c:	484080e7          	jalr	1156(ra) # 800021bc <_Z11printStringPKc>
        __getc();
    80001d40:	00004097          	auipc	ra,0x4
    80001d44:	b18080e7          	jalr	-1256(ra) # 80005858 <__getc>
    80001d48:	0380006f          	j	80001d80 <_ZN5Riscv21SupervisorTrapHandlerEv+0x170>
}
inline void Riscv::mc_sip(uint64 mask)
{
    __asm__ volatile("csrc sip, %[mask]":: [mask]"r"(mask));
    80001d4c:	00200793          	li	a5,2
    80001d50:	1447b073          	csrc	sip,a5
}
    80001d54:	0380006f          	j	80001d8c <_ZN5Riscv21SupervisorTrapHandlerEv+0x17c>
        console_handler();
    80001d58:	00004097          	auipc	ra,0x4
    80001d5c:	b38080e7          	jalr	-1224(ra) # 80005890 <console_handler>
    80001d60:	02c0006f          	j	80001d8c <_ZN5Riscv21SupervisorTrapHandlerEv+0x17c>
        __asm__ volatile ("mv %[x], a1" : [x] "=r" (size_in_blocks));
    80001d64:	00058993          	mv	s3,a1
        void* ptr = MemoryAllocator::Instance()->mem_alloc(size_in_blocks * MEM_BLOCK_SIZE);
    80001d68:	00000097          	auipc	ra,0x0
    80001d6c:	160080e7          	jalr	352(ra) # 80001ec8 <_ZN15MemoryAllocator8InstanceEv>
    80001d70:	00299593          	slli	a1,s3,0x2
    80001d74:	00000097          	auipc	ra,0x0
    80001d78:	1b0080e7          	jalr	432(ra) # 80001f24 <_ZN15MemoryAllocator9mem_allocEm>
        __asm__ volatile ("mv a0,%[x]" :: [x] "r" (ptr));
    80001d7c:	00050513          	mv	a0,a0
    }
    set_sepc(sepc+4);
    80001d80:	00448493          	addi	s1,s1,4
    __asm__ volatile ("csrw sepc, %[x]" :: [x] "r" (sepc));
    80001d84:	14149073          	csrw	sepc,s1
    __asm__ volatile ("csrw sstatus, %[x]" :: [x] "r" (sstatus));
    80001d88:	10091073          	csrw	sstatus,s2
    set_sstatus(sstatus);
    }


    80001d8c:	05813083          	ld	ra,88(sp)
    80001d90:	05013403          	ld	s0,80(sp)
    80001d94:	04813483          	ld	s1,72(sp)
    80001d98:	04013903          	ld	s2,64(sp)
    80001d9c:	03813983          	ld	s3,56(sp)
    80001da0:	03013a03          	ld	s4,48(sp)
    80001da4:	02813a83          	ld	s5,40(sp)
    80001da8:	06010113          	addi	sp,sp,96
    80001dac:	00008067          	ret
        __asm__ volatile ("mv %[x], a1" : [x] "=r" (ptr));
    80001db0:	00058993          	mv	s3,a1
        MemoryAllocator::Instance()->mem_free(ptr);
    80001db4:	00000097          	auipc	ra,0x0
    80001db8:	114080e7          	jalr	276(ra) # 80001ec8 <_ZN15MemoryAllocator8InstanceEv>
    80001dbc:	00098593          	mv	a1,s3
    80001dc0:	00000097          	auipc	ra,0x0
    80001dc4:	2dc080e7          	jalr	732(ra) # 8000209c <_ZN15MemoryAllocator8mem_freeEPv>
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (0));
    80001dc8:	00000793          	li	a5,0
    80001dcc:	00078513          	mv	a0,a5
    80001dd0:	fb1ff06f          	j	80001d80 <_ZN5Riscv21SupervisorTrapHandlerEv+0x170>
        size_t freeMem = MemoryAllocator::Instance()->getFreeMemSize();
    80001dd4:	00000097          	auipc	ra,0x0
    80001dd8:	0f4080e7          	jalr	244(ra) # 80001ec8 <_ZN15MemoryAllocator8InstanceEv>
    void* mem_alloc(size_t size);//size in bytes

    void mem_free(void* ptr);

    size_t getFreeMemSize() {
        return this->freeMemSize;
    80001ddc:	00853783          	ld	a5,8(a0)
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (freeMem));
    80001de0:	00078513          	mv	a0,a5
    80001de4:	f9dff06f          	j	80001d80 <_ZN5Riscv21SupervisorTrapHandlerEv+0x170>
        size_t largestBlock = MemoryAllocator::Instance()->getLargestFreeBlock();
    80001de8:	00000097          	auipc	ra,0x0
    80001dec:	0e0080e7          	jalr	224(ra) # 80001ec8 <_ZN15MemoryAllocator8InstanceEv>
    80001df0:	00000097          	auipc	ra,0x0
    80001df4:	390080e7          	jalr	912(ra) # 80002180 <_ZN15MemoryAllocator19getLargestFreeBlockEv>
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (largestBlock));
    80001df8:	00050513          	mv	a0,a0
    80001dfc:	f85ff06f          	j	80001d80 <_ZN5Riscv21SupervisorTrapHandlerEv+0x170>
        __asm__ volatile ("mv %[x], a1" : [x] "=r" (handle));
    80001e00:	00058993          	mv	s3,a1
        __asm__ volatile ("mv %[x], a2" : [x] "=r" (start_routine));
    80001e04:	00060a13          	mv	s4,a2
        __asm__ volatile ("mv %[x], a3" : [x] "=r" (arg));
    80001e08:	00068a93          	mv	s5,a3
        uint64 *sp=(uint64*)MemoryAllocator::Instance()->mem_alloc(DEFAULT_STACK_SIZE);
    80001e0c:	00000097          	auipc	ra,0x0
    80001e10:	0bc080e7          	jalr	188(ra) # 80001ec8 <_ZN15MemoryAllocator8InstanceEv>
    80001e14:	000015b7          	lui	a1,0x1
    80001e18:	00000097          	auipc	ra,0x0
    80001e1c:	10c080e7          	jalr	268(ra) # 80001f24 <_ZN15MemoryAllocator9mem_allocEm>
    80001e20:	00050613          	mv	a2,a0
        *handle=TCB::createThread( start_routine, arg,sp);
    80001e24:	000a8593          	mv	a1,s5
    80001e28:	000a0513          	mv	a0,s4
    80001e2c:	00000097          	auipc	ra,0x0
    80001e30:	b98080e7          	jalr	-1128(ra) # 800019c4 <_ZN3TCB12createThreadEPFvPvES0_Pm>
    80001e34:	00a9b023          	sd	a0,0(s3)
        if (*handle) {
    80001e38:	00050863          	beqz	a0,80001e48 <_ZN5Riscv21SupervisorTrapHandlerEv+0x238>
            ret=0;
    80001e3c:	00000793          	li	a5,0
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (ret));
    80001e40:	00078513          	mv	a0,a5
    80001e44:	f3dff06f          	j	80001d80 <_ZN5Riscv21SupervisorTrapHandlerEv+0x170>
            ret=1;
    80001e48:	00100793          	li	a5,1
    80001e4c:	ff5ff06f          	j	80001e40 <_ZN5Riscv21SupervisorTrapHandlerEv+0x230>
        int ret = TCB::exit();
    80001e50:	00000097          	auipc	ra,0x0
    80001e54:	cd0080e7          	jalr	-816(ra) # 80001b20 <_ZN3TCB4exitEv>
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (ret));
    80001e58:	00050513          	mv	a0,a0
    80001e5c:	f25ff06f          	j	80001d80 <_ZN5Riscv21SupervisorTrapHandlerEv+0x170>
        TCB::dispatch();
    80001e60:	00000097          	auipc	ra,0x0
    80001e64:	c58080e7          	jalr	-936(ra) # 80001ab8 <_ZN3TCB8dispatchEv>
    80001e68:	f19ff06f          	j	80001d80 <_ZN5Riscv21SupervisorTrapHandlerEv+0x170>

0000000080001e6c <_ZN15MemoryAllocatorC1Ev>:

#include "../h/MemoryAllocator.hpp"
#include "../lib/console.h"


MemoryAllocator::MemoryAllocator() {
    80001e6c:	ff010113          	addi	sp,sp,-16
    80001e70:	00813423          	sd	s0,8(sp)
    80001e74:	01010413          	addi	s0,sp,16
    this->head = (MemoryHeader*)HEAP_START_ADDR;
    80001e78:	00005797          	auipc	a5,0x5
    80001e7c:	4707b783          	ld	a5,1136(a5) # 800072e8 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001e80:	0007b703          	ld	a4,0(a5)
    80001e84:	00e53023          	sd	a4,0(a0)
    // this->tail = (MemoryHeader*)HEAP_START_ADDR;
    // this->tail->next=nullptr;
    // this->tail->prev=nullptr;
    this->head->next=nullptr;
    80001e88:	00073423          	sd	zero,8(a4)
    this->head->prev=nullptr;
    80001e8c:	00053783          	ld	a5,0(a0)
    80001e90:	0007b823          	sd	zero,16(a5)
    this->head->size = (size_t)((char*)HEAP_END_ADDR - (char*)HEAP_START_ADDR - sizeof(MemoryHeader));
    80001e94:	00005797          	auipc	a5,0x5
    80001e98:	47c7b783          	ld	a5,1148(a5) # 80007310 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001e9c:	0007b783          	ld	a5,0(a5)
    80001ea0:	40e787b3          	sub	a5,a5,a4
    80001ea4:	00053703          	ld	a4,0(a0)
    80001ea8:	fe878793          	addi	a5,a5,-24
    80001eac:	00f73023          	sd	a5,0(a4)
    this->freeMemSize=this->head->size;
    80001eb0:	00053783          	ld	a5,0(a0)
    80001eb4:	0007b783          	ld	a5,0(a5)
    80001eb8:	00f53423          	sd	a5,8(a0)
}
    80001ebc:	00813403          	ld	s0,8(sp)
    80001ec0:	01010113          	addi	sp,sp,16
    80001ec4:	00008067          	ret

0000000080001ec8 <_ZN15MemoryAllocator8InstanceEv>:




MemoryAllocator* MemoryAllocator::Instance() {
    static MemoryAllocator instance;
    80001ec8:	00005797          	auipc	a5,0x5
    80001ecc:	4b87c783          	lbu	a5,1208(a5) # 80007380 <_ZGVZN15MemoryAllocator8InstanceEvE8instance>
    80001ed0:	00078863          	beqz	a5,80001ee0 <_ZN15MemoryAllocator8InstanceEv+0x18>
    return &instance;
}
    80001ed4:	00005517          	auipc	a0,0x5
    80001ed8:	4b450513          	addi	a0,a0,1204 # 80007388 <_ZZN15MemoryAllocator8InstanceEvE8instance>
    80001edc:	00008067          	ret
MemoryAllocator* MemoryAllocator::Instance() {
    80001ee0:	ff010113          	addi	sp,sp,-16
    80001ee4:	00113423          	sd	ra,8(sp)
    80001ee8:	00813023          	sd	s0,0(sp)
    80001eec:	01010413          	addi	s0,sp,16
    static MemoryAllocator instance;
    80001ef0:	00005517          	auipc	a0,0x5
    80001ef4:	49850513          	addi	a0,a0,1176 # 80007388 <_ZZN15MemoryAllocator8InstanceEvE8instance>
    80001ef8:	00000097          	auipc	ra,0x0
    80001efc:	f74080e7          	jalr	-140(ra) # 80001e6c <_ZN15MemoryAllocatorC1Ev>
    80001f00:	00100793          	li	a5,1
    80001f04:	00005717          	auipc	a4,0x5
    80001f08:	46f70e23          	sb	a5,1148(a4) # 80007380 <_ZGVZN15MemoryAllocator8InstanceEvE8instance>
}
    80001f0c:	00005517          	auipc	a0,0x5
    80001f10:	47c50513          	addi	a0,a0,1148 # 80007388 <_ZZN15MemoryAllocator8InstanceEvE8instance>
    80001f14:	00813083          	ld	ra,8(sp)
    80001f18:	00013403          	ld	s0,0(sp)
    80001f1c:	01010113          	addi	sp,sp,16
    80001f20:	00008067          	ret

0000000080001f24 <_ZN15MemoryAllocator9mem_allocEm>:


void* MemoryAllocator::mem_alloc(size_t size) {
    80001f24:	ff010113          	addi	sp,sp,-16
    80001f28:	00813423          	sd	s0,8(sp)
    80001f2c:	01010413          	addi	s0,sp,16
    80001f30:	00050813          	mv	a6,a0
    if (this->head==nullptr)
    80001f34:	00053503          	ld	a0,0(a0)
    80001f38:	0a050263          	beqz	a0,80001fdc <_ZN15MemoryAllocator9mem_allocEm+0xb8>
        return nullptr;
    if (size==0) {
    80001f3c:	0e058863          	beqz	a1,8000202c <_ZN15MemoryAllocator9mem_allocEm+0x108>
        return nullptr;
    }
    uint64 offset = size % MEM_BLOCK_SIZE;
    80001f40:	0035f793          	andi	a5,a1,3
    if (offset!=0)
    80001f44:	00078463          	beqz	a5,80001f4c <_ZN15MemoryAllocator9mem_allocEm+0x28>
        offset=1;
    80001f48:	00100793          	li	a5,1

    size_t actulalSize = (size  / MEM_BLOCK_SIZE+offset ) * MEM_BLOCK_SIZE;
    80001f4c:	0025d693          	srli	a3,a1,0x2
    80001f50:	00f686b3          	add	a3,a3,a5
    80001f54:	00269693          	slli	a3,a3,0x2


    MemoryHeader* curr= this->head;
    80001f58:	00050793          	mv	a5,a0
    while (curr->next!=nullptr && curr->size < actulalSize) {
    80001f5c:	00078713          	mv	a4,a5
    80001f60:	0087b783          	ld	a5,8(a5)
    80001f64:	00078663          	beqz	a5,80001f70 <_ZN15MemoryAllocator9mem_allocEm+0x4c>
    80001f68:	00073603          	ld	a2,0(a4)
    80001f6c:	fed668e3          	bltu	a2,a3,80001f5c <_ZN15MemoryAllocator9mem_allocEm+0x38>
        curr=curr->next;
    }
    if (curr->size < actulalSize) {
    80001f70:	00073603          	ld	a2,0(a4)
    80001f74:	0cd66063          	bltu	a2,a3,80002034 <_ZN15MemoryAllocator9mem_allocEm+0x110>
        return nullptr;
    }



    if (curr->size - actulalSize >= MEM_BLOCK_SIZE+sizeof(MemoryHeader)) {
    80001f78:	40d60633          	sub	a2,a2,a3
    80001f7c:	01b00593          	li	a1,27
    80001f80:	06c5f863          	bgeu	a1,a2,80001ff0 <_ZN15MemoryAllocator9mem_allocEm+0xcc>


        MemoryHeader* new_seg=(MemoryHeader*)((char*)curr + sizeof(MemoryHeader) + actulalSize);
    80001f84:	01868793          	addi	a5,a3,24
    80001f88:	00f707b3          	add	a5,a4,a5
        new_seg->size = curr->size - actulalSize - sizeof(MemoryHeader);
    80001f8c:	fe860613          	addi	a2,a2,-24 # fe8 <_entry-0x7ffff018>
    80001f90:	00c7b023          	sd	a2,0(a5)
        new_seg->next=curr->next;
    80001f94:	00873603          	ld	a2,8(a4)
    80001f98:	00c7b423          	sd	a2,8(a5)
        new_seg->prev=curr->prev;
    80001f9c:	01073603          	ld	a2,16(a4)
    80001fa0:	00c7b823          	sd	a2,16(a5)
        if (curr==this->head) {
    80001fa4:	00083603          	ld	a2,0(a6)
    80001fa8:	04e60063          	beq	a2,a4,80001fe8 <_ZN15MemoryAllocator9mem_allocEm+0xc4>
            this->head=new_seg;
        }
        // if (curr==this->tail) {
        //     this->tail=new_seg;
        // }
        if (curr->prev)
    80001fac:	01073603          	ld	a2,16(a4)
    80001fb0:	00060463          	beqz	a2,80001fb8 <_ZN15MemoryAllocator9mem_allocEm+0x94>
            curr->prev->next=new_seg;
    80001fb4:	00f63423          	sd	a5,8(a2)
        if (curr->next)
    80001fb8:	00873603          	ld	a2,8(a4)
    80001fbc:	00060463          	beqz	a2,80001fc4 <_ZN15MemoryAllocator9mem_allocEm+0xa0>
            curr->next->prev=new_seg;
    80001fc0:	00f63823          	sd	a5,16(a2)
        curr->size=actulalSize;
    80001fc4:	00d73023          	sd	a3,0(a4)
        this->freeMemSize-= (actulalSize + sizeof(MemoryHeader));
    80001fc8:	00883783          	ld	a5,8(a6)
    80001fcc:	40d786b3          	sub	a3,a5,a3
    80001fd0:	fe868693          	addi	a3,a3,-24
    80001fd4:	00d83423          	sd	a3,8(a6)
    //__putc('m');
    //__putc('\n');



    return  (void*)((char*)curr + sizeof(MemoryHeader));
    80001fd8:	01870513          	addi	a0,a4,24
}
    80001fdc:	00813403          	ld	s0,8(sp)
    80001fe0:	01010113          	addi	sp,sp,16
    80001fe4:	00008067          	ret
            this->head=new_seg;
    80001fe8:	00f83023          	sd	a5,0(a6)
    80001fec:	fc1ff06f          	j	80001fac <_ZN15MemoryAllocator9mem_allocEm+0x88>
        if (curr==this->head) {
    80001ff0:	02e50a63          	beq	a0,a4,80002024 <_ZN15MemoryAllocator9mem_allocEm+0x100>
        if (curr->prev)
    80001ff4:	01073783          	ld	a5,16(a4)
    80001ff8:	00078663          	beqz	a5,80002004 <_ZN15MemoryAllocator9mem_allocEm+0xe0>
            curr->prev->next=curr->next;
    80001ffc:	00873603          	ld	a2,8(a4)
    80002000:	00c7b423          	sd	a2,8(a5)
        if (curr->next)
    80002004:	00873783          	ld	a5,8(a4)
    80002008:	00078663          	beqz	a5,80002014 <_ZN15MemoryAllocator9mem_allocEm+0xf0>
            curr->next->prev=curr->prev;
    8000200c:	01073603          	ld	a2,16(a4)
    80002010:	00c7b823          	sd	a2,16(a5)
        this->freeMemSize-= actulalSize;
    80002014:	00883783          	ld	a5,8(a6)
    80002018:	40d786b3          	sub	a3,a5,a3
    8000201c:	00d83423          	sd	a3,8(a6)
    80002020:	fb9ff06f          	j	80001fd8 <_ZN15MemoryAllocator9mem_allocEm+0xb4>
            this->head=curr->next;
    80002024:	00f83023          	sd	a5,0(a6)
    80002028:	fcdff06f          	j	80001ff4 <_ZN15MemoryAllocator9mem_allocEm+0xd0>
        return nullptr;
    8000202c:	00000513          	li	a0,0
    80002030:	fadff06f          	j	80001fdc <_ZN15MemoryAllocator9mem_allocEm+0xb8>
        return nullptr;
    80002034:	00000513          	li	a0,0
    80002038:	fa5ff06f          	j	80001fdc <_ZN15MemoryAllocator9mem_allocEm+0xb8>

000000008000203c <_ZN15MemoryAllocator11try_to_joinEPNS_12MemoryHeaderE>:
    try_to_join(block->prev);
    try_to_join(block);
}


void MemoryAllocator::try_to_join(MemoryHeader* block) {
    8000203c:	ff010113          	addi	sp,sp,-16
    80002040:	00813423          	sd	s0,8(sp)
    80002044:	01010413          	addi	s0,sp,16
    if (block==nullptr)
    80002048:	00058e63          	beqz	a1,80002064 <_ZN15MemoryAllocator11try_to_joinEPNS_12MemoryHeaderE+0x28>
        return;
    if (block->next!=nullptr && ((char*)block + sizeof(MemoryHeader) + block->size) == (char*)block->next) {
    8000204c:	0085b783          	ld	a5,8(a1) # 1008 <_entry-0x7fffeff8>
    80002050:	00078a63          	beqz	a5,80002064 <_ZN15MemoryAllocator11try_to_joinEPNS_12MemoryHeaderE+0x28>
    80002054:	0005b683          	ld	a3,0(a1)
    80002058:	01868713          	addi	a4,a3,24
    8000205c:	00e58733          	add	a4,a1,a4
    80002060:	00e78863          	beq	a5,a4,80002070 <_ZN15MemoryAllocator11try_to_joinEPNS_12MemoryHeaderE+0x34>
        block->next=block->next->next;
        if (block->next)
            block->next->prev=block;
        this->freeMemSize+= sizeof(MemoryHeader);
    }
}
    80002064:	00813403          	ld	s0,8(sp)
    80002068:	01010113          	addi	sp,sp,16
    8000206c:	00008067          	ret
        block->size += block->next->size;
    80002070:	0007b703          	ld	a4,0(a5)
    80002074:	00e686b3          	add	a3,a3,a4
    80002078:	00d5b023          	sd	a3,0(a1)
        block->next=block->next->next;
    8000207c:	0087b783          	ld	a5,8(a5)
    80002080:	00f5b423          	sd	a5,8(a1)
        if (block->next)
    80002084:	00078463          	beqz	a5,8000208c <_ZN15MemoryAllocator11try_to_joinEPNS_12MemoryHeaderE+0x50>
            block->next->prev=block;
    80002088:	00b7b823          	sd	a1,16(a5)
        this->freeMemSize+= sizeof(MemoryHeader);
    8000208c:	00853783          	ld	a5,8(a0)
    80002090:	01878793          	addi	a5,a5,24
    80002094:	00f53423          	sd	a5,8(a0)
    80002098:	fcdff06f          	j	80002064 <_ZN15MemoryAllocator11try_to_joinEPNS_12MemoryHeaderE+0x28>

000000008000209c <_ZN15MemoryAllocator8mem_freeEPv>:
    if (ptr==nullptr) {
    8000209c:	0e058063          	beqz	a1,8000217c <_ZN15MemoryAllocator8mem_freeEPv+0xe0>
void MemoryAllocator::mem_free(void* ptr) {
    800020a0:	fe010113          	addi	sp,sp,-32
    800020a4:	00113c23          	sd	ra,24(sp)
    800020a8:	00813823          	sd	s0,16(sp)
    800020ac:	00913423          	sd	s1,8(sp)
    800020b0:	01213023          	sd	s2,0(sp)
    800020b4:	02010413          	addi	s0,sp,32
    800020b8:	00050913          	mv	s2,a0
	MemoryHeader* block = (MemoryHeader*)((char*)ptr - sizeof(MemoryHeader));
    800020bc:	fe858493          	addi	s1,a1,-24
    if (this->head==nullptr) {
    800020c0:	00053683          	ld	a3,0(a0)
    800020c4:	06068e63          	beqz	a3,80002140 <_ZN15MemoryAllocator8mem_freeEPv+0xa4>
    MemoryHeader* curr = this->head;
    800020c8:	00068793          	mv	a5,a3
    while (curr->next!=nullptr && curr->next < block) {
    800020cc:	00078713          	mv	a4,a5
    800020d0:	0087b783          	ld	a5,8(a5)
    800020d4:	00078463          	beqz	a5,800020dc <_ZN15MemoryAllocator8mem_freeEPv+0x40>
    800020d8:	fe97eae3          	bltu	a5,s1,800020cc <_ZN15MemoryAllocator8mem_freeEPv+0x30>
    if (curr==this->head and curr > block) {
    800020dc:	08e68263          	beq	a3,a4,80002160 <_ZN15MemoryAllocator8mem_freeEPv+0xc4>
        block->next=curr->next;
    800020e0:	fef5b823          	sd	a5,-16(a1)
        block->prev=curr;
    800020e4:	fee5bc23          	sd	a4,-8(a1)
        curr->next=block;
    800020e8:	00973423          	sd	s1,8(a4)
        if (block->next) {
    800020ec:	ff05b783          	ld	a5,-16(a1)
    800020f0:	00078463          	beqz	a5,800020f8 <_ZN15MemoryAllocator8mem_freeEPv+0x5c>
            block->next->prev=block;
    800020f4:	0097b823          	sd	s1,16(a5)
    this->freeMemSize+= block->size;
    800020f8:	fe85b703          	ld	a4,-24(a1)
    800020fc:	00893783          	ld	a5,8(s2)
    80002100:	00e787b3          	add	a5,a5,a4
    80002104:	00f93423          	sd	a5,8(s2)
    try_to_join(block->prev);
    80002108:	ff85b583          	ld	a1,-8(a1)
    8000210c:	00090513          	mv	a0,s2
    80002110:	00000097          	auipc	ra,0x0
    80002114:	f2c080e7          	jalr	-212(ra) # 8000203c <_ZN15MemoryAllocator11try_to_joinEPNS_12MemoryHeaderE>
    try_to_join(block);
    80002118:	00048593          	mv	a1,s1
    8000211c:	00090513          	mv	a0,s2
    80002120:	00000097          	auipc	ra,0x0
    80002124:	f1c080e7          	jalr	-228(ra) # 8000203c <_ZN15MemoryAllocator11try_to_joinEPNS_12MemoryHeaderE>
}
    80002128:	01813083          	ld	ra,24(sp)
    8000212c:	01013403          	ld	s0,16(sp)
    80002130:	00813483          	ld	s1,8(sp)
    80002134:	00013903          	ld	s2,0(sp)
    80002138:	02010113          	addi	sp,sp,32
    8000213c:	00008067          	ret
        this->head=block;
    80002140:	00953023          	sd	s1,0(a0)
        block->next=nullptr;
    80002144:	fe05b823          	sd	zero,-16(a1)
        block->prev=nullptr;
    80002148:	fe05bc23          	sd	zero,-8(a1)
        this->freeMemSize+= block->size;
    8000214c:	fe85b703          	ld	a4,-24(a1)
    80002150:	00853783          	ld	a5,8(a0)
    80002154:	00e787b3          	add	a5,a5,a4
    80002158:	00f53423          	sd	a5,8(a0)
        return;
    8000215c:	fcdff06f          	j	80002128 <_ZN15MemoryAllocator8mem_freeEPv+0x8c>
    if (curr==this->head and curr > block) {
    80002160:	f8e4f0e3          	bgeu	s1,a4,800020e0 <_ZN15MemoryAllocator8mem_freeEPv+0x44>
        block->next=curr;
    80002164:	fee5b823          	sd	a4,-16(a1)
        block->prev=curr->prev;
    80002168:	01073783          	ld	a5,16(a4)
    8000216c:	fef5bc23          	sd	a5,-8(a1)
        curr->prev=block;
    80002170:	00973823          	sd	s1,16(a4)
        this->head=block;
    80002174:	00993023          	sd	s1,0(s2)
    80002178:	f81ff06f          	j	800020f8 <_ZN15MemoryAllocator8mem_freeEPv+0x5c>
    8000217c:	00008067          	ret

0000000080002180 <_ZN15MemoryAllocator19getLargestFreeBlockEv>:

size_t MemoryAllocator::getLargestFreeBlock() {
    80002180:	ff010113          	addi	sp,sp,-16
    80002184:	00813423          	sd	s0,8(sp)
    80002188:	01010413          	addi	s0,sp,16
    size_t maxSize=0;
    MemoryHeader* curr=this->head;
    8000218c:	00053783          	ld	a5,0(a0)
    size_t maxSize=0;
    80002190:	00000513          	li	a0,0
    80002194:	0080006f          	j	8000219c <_ZN15MemoryAllocator19getLargestFreeBlockEv+0x1c>
    while (curr!=nullptr) {
        if (curr->size > maxSize)
            maxSize=curr->size;
        curr=curr->next;
    80002198:	0087b783          	ld	a5,8(a5)
    while (curr!=nullptr) {
    8000219c:	00078a63          	beqz	a5,800021b0 <_ZN15MemoryAllocator19getLargestFreeBlockEv+0x30>
        if (curr->size > maxSize)
    800021a0:	0007b703          	ld	a4,0(a5)
    800021a4:	fee57ae3          	bgeu	a0,a4,80002198 <_ZN15MemoryAllocator19getLargestFreeBlockEv+0x18>
            maxSize=curr->size;
    800021a8:	00070513          	mv	a0,a4
    800021ac:	fedff06f          	j	80002198 <_ZN15MemoryAllocator19getLargestFreeBlockEv+0x18>
    }
    return maxSize;
    800021b0:	00813403          	ld	s0,8(sp)
    800021b4:	01010113          	addi	sp,sp,16
    800021b8:	00008067          	ret

00000000800021bc <_Z11printStringPKc>:
#include  "../h/print.hpp"
#include "../lib/console.h"


void printString(const char *string) {
    800021bc:	fe010113          	addi	sp,sp,-32
    800021c0:	00113c23          	sd	ra,24(sp)
    800021c4:	00813823          	sd	s0,16(sp)
    800021c8:	00913423          	sd	s1,8(sp)
    800021cc:	02010413          	addi	s0,sp,32
    800021d0:	00050493          	mv	s1,a0
    while (*string!='\0') {
    800021d4:	0004c503          	lbu	a0,0(s1)
    800021d8:	00050a63          	beqz	a0,800021ec <_Z11printStringPKc+0x30>
        __putc(*string);
    800021dc:	00003097          	auipc	ra,0x3
    800021e0:	640080e7          	jalr	1600(ra) # 8000581c <__putc>
        string++;
    800021e4:	00148493          	addi	s1,s1,1
    while (*string!='\0') {
    800021e8:	fedff06f          	j	800021d4 <_Z11printStringPKc+0x18>
    }
}
    800021ec:	01813083          	ld	ra,24(sp)
    800021f0:	01013403          	ld	s0,16(sp)
    800021f4:	00813483          	ld	s1,8(sp)
    800021f8:	02010113          	addi	sp,sp,32
    800021fc:	00008067          	ret

0000000080002200 <_Z12printIntegerm>:
void printInteger(uint64 integer) {
    80002200:	fd010113          	addi	sp,sp,-48
    80002204:	02113423          	sd	ra,40(sp)
    80002208:	02813023          	sd	s0,32(sp)
    8000220c:	00913c23          	sd	s1,24(sp)
    80002210:	03010413          	addi	s0,sp,48
    neg=0;
    if (integer<0) {
        neg=1;
        x=-integer;
    } else {
        x=integer;
    80002214:	0005051b          	sext.w	a0,a0
    }

    i=0;
    80002218:	00000493          	li	s1,0
    do {
        buf[i++]=digits[x%10];
    8000221c:	00a00613          	li	a2,10
    80002220:	02c5773b          	remuw	a4,a0,a2
    80002224:	02071693          	slli	a3,a4,0x20
    80002228:	0206d693          	srli	a3,a3,0x20
    8000222c:	00004717          	auipc	a4,0x4
    80002230:	e8470713          	addi	a4,a4,-380 # 800060b0 <_ZZ12printIntegermE6digits>
    80002234:	00d70733          	add	a4,a4,a3
    80002238:	00074703          	lbu	a4,0(a4)
    8000223c:	fe040693          	addi	a3,s0,-32
    80002240:	009687b3          	add	a5,a3,s1
    80002244:	0014849b          	addiw	s1,s1,1
    80002248:	fee78823          	sb	a4,-16(a5)
    }while ((x/=10)!=0);
    8000224c:	0005071b          	sext.w	a4,a0
    80002250:	02c5553b          	divuw	a0,a0,a2
    80002254:	00900793          	li	a5,9
    80002258:	fce7e2e3          	bltu	a5,a4,8000221c <_Z12printIntegerm+0x1c>
    if (neg) {
        buf[i++]='-';
    }

    while (--i>=0) {
    8000225c:	fff4849b          	addiw	s1,s1,-1
    80002260:	0004ce63          	bltz	s1,8000227c <_Z12printIntegerm+0x7c>
        __putc(buf[i]);
    80002264:	fe040793          	addi	a5,s0,-32
    80002268:	009787b3          	add	a5,a5,s1
    8000226c:	ff07c503          	lbu	a0,-16(a5)
    80002270:	00003097          	auipc	ra,0x3
    80002274:	5ac080e7          	jalr	1452(ra) # 8000581c <__putc>
    80002278:	fe5ff06f          	j	8000225c <_Z12printIntegerm+0x5c>
    }
    8000227c:	02813083          	ld	ra,40(sp)
    80002280:	02013403          	ld	s0,32(sp)
    80002284:	01813483          	ld	s1,24(sp)
    80002288:	03010113          	addi	sp,sp,48
    8000228c:	00008067          	ret

0000000080002290 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80002290:	fe010113          	addi	sp,sp,-32
    80002294:	00113c23          	sd	ra,24(sp)
    80002298:	00813823          	sd	s0,16(sp)
    8000229c:	00913423          	sd	s1,8(sp)
    800022a0:	01213023          	sd	s2,0(sp)
    800022a4:	02010413          	addi	s0,sp,32
    800022a8:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800022ac:	00100793          	li	a5,1
    800022b0:	02a7f863          	bgeu	a5,a0,800022e0 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800022b4:	00a00793          	li	a5,10
    800022b8:	02f577b3          	remu	a5,a0,a5
    800022bc:	02078e63          	beqz	a5,800022f8 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800022c0:	fff48513          	addi	a0,s1,-1
    800022c4:	00000097          	auipc	ra,0x0
    800022c8:	fcc080e7          	jalr	-52(ra) # 80002290 <_ZL9fibonaccim>
    800022cc:	00050913          	mv	s2,a0
    800022d0:	ffe48513          	addi	a0,s1,-2
    800022d4:	00000097          	auipc	ra,0x0
    800022d8:	fbc080e7          	jalr	-68(ra) # 80002290 <_ZL9fibonaccim>
    800022dc:	00a90533          	add	a0,s2,a0
}
    800022e0:	01813083          	ld	ra,24(sp)
    800022e4:	01013403          	ld	s0,16(sp)
    800022e8:	00813483          	ld	s1,8(sp)
    800022ec:	00013903          	ld	s2,0(sp)
    800022f0:	02010113          	addi	sp,sp,32
    800022f4:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800022f8:	fffff097          	auipc	ra,0xfffff
    800022fc:	f6c080e7          	jalr	-148(ra) # 80001264 <_Z15thread_dispatchv>
    80002300:	fc1ff06f          	j	800022c0 <_ZL9fibonaccim+0x30>

0000000080002304 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80002304:	fe010113          	addi	sp,sp,-32
    80002308:	00113c23          	sd	ra,24(sp)
    8000230c:	00813823          	sd	s0,16(sp)
    80002310:	00913423          	sd	s1,8(sp)
    80002314:	01213023          	sd	s2,0(sp)
    80002318:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    8000231c:	00000913          	li	s2,0
    80002320:	0380006f          	j	80002358 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInteger(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80002324:	fffff097          	auipc	ra,0xfffff
    80002328:	f40080e7          	jalr	-192(ra) # 80001264 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    8000232c:	00148493          	addi	s1,s1,1
    80002330:	000027b7          	lui	a5,0x2
    80002334:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002338:	0097ee63          	bltu	a5,s1,80002354 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000233c:	00000713          	li	a4,0
    80002340:	000077b7          	lui	a5,0x7
    80002344:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002348:	fce7eee3          	bltu	a5,a4,80002324 <_ZN7WorkerA11workerBodyAEPv+0x20>
    8000234c:	00170713          	addi	a4,a4,1
    80002350:	ff1ff06f          	j	80002340 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80002354:	00190913          	addi	s2,s2,1
    80002358:	00900793          	li	a5,9
    8000235c:	0327ec63          	bltu	a5,s2,80002394 <_ZN7WorkerA11workerBodyAEPv+0x90>
        printString("A: i="); printInteger(i); printString("\n");
    80002360:	00004517          	auipc	a0,0x4
    80002364:	d6050513          	addi	a0,a0,-672 # 800060c0 <_ZZ12printIntegermE6digits+0x10>
    80002368:	00000097          	auipc	ra,0x0
    8000236c:	e54080e7          	jalr	-428(ra) # 800021bc <_Z11printStringPKc>
    80002370:	00090513          	mv	a0,s2
    80002374:	00000097          	auipc	ra,0x0
    80002378:	e8c080e7          	jalr	-372(ra) # 80002200 <_Z12printIntegerm>
    8000237c:	00004517          	auipc	a0,0x4
    80002380:	cf450513          	addi	a0,a0,-780 # 80006070 <CONSOLE_STATUS+0x60>
    80002384:	00000097          	auipc	ra,0x0
    80002388:	e38080e7          	jalr	-456(ra) # 800021bc <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000238c:	00000493          	li	s1,0
    80002390:	fa1ff06f          	j	80002330 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80002394:	00004517          	auipc	a0,0x4
    80002398:	c9c50513          	addi	a0,a0,-868 # 80006030 <CONSOLE_STATUS+0x20>
    8000239c:	00000097          	auipc	ra,0x0
    800023a0:	e20080e7          	jalr	-480(ra) # 800021bc <_Z11printStringPKc>
    finishedA = true;
    800023a4:	00100793          	li	a5,1
    800023a8:	00005717          	auipc	a4,0x5
    800023ac:	fef70823          	sb	a5,-16(a4) # 80007398 <_ZL9finishedA>
}
    800023b0:	01813083          	ld	ra,24(sp)
    800023b4:	01013403          	ld	s0,16(sp)
    800023b8:	00813483          	ld	s1,8(sp)
    800023bc:	00013903          	ld	s2,0(sp)
    800023c0:	02010113          	addi	sp,sp,32
    800023c4:	00008067          	ret

00000000800023c8 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    800023c8:	fe010113          	addi	sp,sp,-32
    800023cc:	00113c23          	sd	ra,24(sp)
    800023d0:	00813823          	sd	s0,16(sp)
    800023d4:	00913423          	sd	s1,8(sp)
    800023d8:	01213023          	sd	s2,0(sp)
    800023dc:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800023e0:	00000913          	li	s2,0
    800023e4:	0380006f          	j	8000241c <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInteger(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800023e8:	fffff097          	auipc	ra,0xfffff
    800023ec:	e7c080e7          	jalr	-388(ra) # 80001264 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800023f0:	00148493          	addi	s1,s1,1
    800023f4:	000027b7          	lui	a5,0x2
    800023f8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800023fc:	0097ee63          	bltu	a5,s1,80002418 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002400:	00000713          	li	a4,0
    80002404:	000077b7          	lui	a5,0x7
    80002408:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000240c:	fce7eee3          	bltu	a5,a4,800023e8 <_ZN7WorkerB11workerBodyBEPv+0x20>
    80002410:	00170713          	addi	a4,a4,1
    80002414:	ff1ff06f          	j	80002404 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80002418:	00190913          	addi	s2,s2,1
    8000241c:	00f00793          	li	a5,15
    80002420:	0327ec63          	bltu	a5,s2,80002458 <_ZN7WorkerB11workerBodyBEPv+0x90>
        printString("B: i="); printInteger(i); printString("\n");
    80002424:	00004517          	auipc	a0,0x4
    80002428:	ca450513          	addi	a0,a0,-860 # 800060c8 <_ZZ12printIntegermE6digits+0x18>
    8000242c:	00000097          	auipc	ra,0x0
    80002430:	d90080e7          	jalr	-624(ra) # 800021bc <_Z11printStringPKc>
    80002434:	00090513          	mv	a0,s2
    80002438:	00000097          	auipc	ra,0x0
    8000243c:	dc8080e7          	jalr	-568(ra) # 80002200 <_Z12printIntegerm>
    80002440:	00004517          	auipc	a0,0x4
    80002444:	c3050513          	addi	a0,a0,-976 # 80006070 <CONSOLE_STATUS+0x60>
    80002448:	00000097          	auipc	ra,0x0
    8000244c:	d74080e7          	jalr	-652(ra) # 800021bc <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002450:	00000493          	li	s1,0
    80002454:	fa1ff06f          	j	800023f4 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80002458:	00004517          	auipc	a0,0x4
    8000245c:	bf850513          	addi	a0,a0,-1032 # 80006050 <CONSOLE_STATUS+0x40>
    80002460:	00000097          	auipc	ra,0x0
    80002464:	d5c080e7          	jalr	-676(ra) # 800021bc <_Z11printStringPKc>
    finishedB = true;
    80002468:	00100793          	li	a5,1
    8000246c:	00005717          	auipc	a4,0x5
    80002470:	f2f706a3          	sb	a5,-211(a4) # 80007399 <_ZL9finishedB>
    thread_dispatch();
    80002474:	fffff097          	auipc	ra,0xfffff
    80002478:	df0080e7          	jalr	-528(ra) # 80001264 <_Z15thread_dispatchv>
}
    8000247c:	01813083          	ld	ra,24(sp)
    80002480:	01013403          	ld	s0,16(sp)
    80002484:	00813483          	ld	s1,8(sp)
    80002488:	00013903          	ld	s2,0(sp)
    8000248c:	02010113          	addi	sp,sp,32
    80002490:	00008067          	ret

0000000080002494 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80002494:	fe010113          	addi	sp,sp,-32
    80002498:	00113c23          	sd	ra,24(sp)
    8000249c:	00813823          	sd	s0,16(sp)
    800024a0:	00913423          	sd	s1,8(sp)
    800024a4:	01213023          	sd	s2,0(sp)
    800024a8:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800024ac:	00000493          	li	s1,0
    800024b0:	0380006f          	j	800024e8 <_ZN7WorkerC11workerBodyCEPv+0x54>
    for (; i < 3; i++) {
        printString("C: i="); printInteger(i); printString("\n");
    800024b4:	00004517          	auipc	a0,0x4
    800024b8:	c1c50513          	addi	a0,a0,-996 # 800060d0 <_ZZ12printIntegermE6digits+0x20>
    800024bc:	00000097          	auipc	ra,0x0
    800024c0:	d00080e7          	jalr	-768(ra) # 800021bc <_Z11printStringPKc>
    800024c4:	00048513          	mv	a0,s1
    800024c8:	00000097          	auipc	ra,0x0
    800024cc:	d38080e7          	jalr	-712(ra) # 80002200 <_Z12printIntegerm>
    800024d0:	00004517          	auipc	a0,0x4
    800024d4:	ba050513          	addi	a0,a0,-1120 # 80006070 <CONSOLE_STATUS+0x60>
    800024d8:	00000097          	auipc	ra,0x0
    800024dc:	ce4080e7          	jalr	-796(ra) # 800021bc <_Z11printStringPKc>
    for (; i < 3; i++) {
    800024e0:	0014849b          	addiw	s1,s1,1
    800024e4:	0ff4f493          	andi	s1,s1,255
    800024e8:	00200793          	li	a5,2
    800024ec:	fc97f4e3          	bgeu	a5,s1,800024b4 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    800024f0:	00004517          	auipc	a0,0x4
    800024f4:	be850513          	addi	a0,a0,-1048 # 800060d8 <_ZZ12printIntegermE6digits+0x28>
    800024f8:	00000097          	auipc	ra,0x0
    800024fc:	cc4080e7          	jalr	-828(ra) # 800021bc <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80002500:	00700313          	li	t1,7
    thread_dispatch();
    80002504:	fffff097          	auipc	ra,0xfffff
    80002508:	d60080e7          	jalr	-672(ra) # 80001264 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    8000250c:	00030913          	mv	s2,t1

    printString("C: t1="); printInteger(t1); printString("\n");
    80002510:	00004517          	auipc	a0,0x4
    80002514:	bd850513          	addi	a0,a0,-1064 # 800060e8 <_ZZ12printIntegermE6digits+0x38>
    80002518:	00000097          	auipc	ra,0x0
    8000251c:	ca4080e7          	jalr	-860(ra) # 800021bc <_Z11printStringPKc>
    80002520:	00090513          	mv	a0,s2
    80002524:	00000097          	auipc	ra,0x0
    80002528:	cdc080e7          	jalr	-804(ra) # 80002200 <_Z12printIntegerm>
    8000252c:	00004517          	auipc	a0,0x4
    80002530:	b4450513          	addi	a0,a0,-1212 # 80006070 <CONSOLE_STATUS+0x60>
    80002534:	00000097          	auipc	ra,0x0
    80002538:	c88080e7          	jalr	-888(ra) # 800021bc <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    8000253c:	00c00513          	li	a0,12
    80002540:	00000097          	auipc	ra,0x0
    80002544:	d50080e7          	jalr	-688(ra) # 80002290 <_ZL9fibonaccim>
    80002548:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInteger(result); printString("\n");
    8000254c:	00004517          	auipc	a0,0x4
    80002550:	ba450513          	addi	a0,a0,-1116 # 800060f0 <_ZZ12printIntegermE6digits+0x40>
    80002554:	00000097          	auipc	ra,0x0
    80002558:	c68080e7          	jalr	-920(ra) # 800021bc <_Z11printStringPKc>
    8000255c:	00090513          	mv	a0,s2
    80002560:	00000097          	auipc	ra,0x0
    80002564:	ca0080e7          	jalr	-864(ra) # 80002200 <_Z12printIntegerm>
    80002568:	00004517          	auipc	a0,0x4
    8000256c:	b0850513          	addi	a0,a0,-1272 # 80006070 <CONSOLE_STATUS+0x60>
    80002570:	00000097          	auipc	ra,0x0
    80002574:	c4c080e7          	jalr	-948(ra) # 800021bc <_Z11printStringPKc>
    80002578:	0380006f          	j	800025b0 <_ZN7WorkerC11workerBodyCEPv+0x11c>

    for (; i < 6; i++) {
        printString("C: i="); printInteger(i); printString("\n");
    8000257c:	00004517          	auipc	a0,0x4
    80002580:	b5450513          	addi	a0,a0,-1196 # 800060d0 <_ZZ12printIntegermE6digits+0x20>
    80002584:	00000097          	auipc	ra,0x0
    80002588:	c38080e7          	jalr	-968(ra) # 800021bc <_Z11printStringPKc>
    8000258c:	00048513          	mv	a0,s1
    80002590:	00000097          	auipc	ra,0x0
    80002594:	c70080e7          	jalr	-912(ra) # 80002200 <_Z12printIntegerm>
    80002598:	00004517          	auipc	a0,0x4
    8000259c:	ad850513          	addi	a0,a0,-1320 # 80006070 <CONSOLE_STATUS+0x60>
    800025a0:	00000097          	auipc	ra,0x0
    800025a4:	c1c080e7          	jalr	-996(ra) # 800021bc <_Z11printStringPKc>
    for (; i < 6; i++) {
    800025a8:	0014849b          	addiw	s1,s1,1
    800025ac:	0ff4f493          	andi	s1,s1,255
    800025b0:	00500793          	li	a5,5
    800025b4:	fc97f4e3          	bgeu	a5,s1,8000257c <_ZN7WorkerC11workerBodyCEPv+0xe8>
    }

    printString("C finished!\n");
    800025b8:	00004517          	auipc	a0,0x4
    800025bc:	b4850513          	addi	a0,a0,-1208 # 80006100 <_ZZ12printIntegermE6digits+0x50>
    800025c0:	00000097          	auipc	ra,0x0
    800025c4:	bfc080e7          	jalr	-1028(ra) # 800021bc <_Z11printStringPKc>
    finishedC = true;
    800025c8:	00100793          	li	a5,1
    800025cc:	00005717          	auipc	a4,0x5
    800025d0:	dcf70723          	sb	a5,-562(a4) # 8000739a <_ZL9finishedC>
    thread_dispatch();
    800025d4:	fffff097          	auipc	ra,0xfffff
    800025d8:	c90080e7          	jalr	-880(ra) # 80001264 <_Z15thread_dispatchv>
}
    800025dc:	01813083          	ld	ra,24(sp)
    800025e0:	01013403          	ld	s0,16(sp)
    800025e4:	00813483          	ld	s1,8(sp)
    800025e8:	00013903          	ld	s2,0(sp)
    800025ec:	02010113          	addi	sp,sp,32
    800025f0:	00008067          	ret

00000000800025f4 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    800025f4:	fe010113          	addi	sp,sp,-32
    800025f8:	00113c23          	sd	ra,24(sp)
    800025fc:	00813823          	sd	s0,16(sp)
    80002600:	00913423          	sd	s1,8(sp)
    80002604:	01213023          	sd	s2,0(sp)
    80002608:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    8000260c:	00a00493          	li	s1,10
    80002610:	0380006f          	j	80002648 <_ZN7WorkerD11workerBodyDEPv+0x54>
    for (; i < 13; i++) {
        printString("D: i="); printInteger(i); printString("\n");
    80002614:	00004517          	auipc	a0,0x4
    80002618:	afc50513          	addi	a0,a0,-1284 # 80006110 <_ZZ12printIntegermE6digits+0x60>
    8000261c:	00000097          	auipc	ra,0x0
    80002620:	ba0080e7          	jalr	-1120(ra) # 800021bc <_Z11printStringPKc>
    80002624:	00048513          	mv	a0,s1
    80002628:	00000097          	auipc	ra,0x0
    8000262c:	bd8080e7          	jalr	-1064(ra) # 80002200 <_Z12printIntegerm>
    80002630:	00004517          	auipc	a0,0x4
    80002634:	a4050513          	addi	a0,a0,-1472 # 80006070 <CONSOLE_STATUS+0x60>
    80002638:	00000097          	auipc	ra,0x0
    8000263c:	b84080e7          	jalr	-1148(ra) # 800021bc <_Z11printStringPKc>
    for (; i < 13; i++) {
    80002640:	0014849b          	addiw	s1,s1,1
    80002644:	0ff4f493          	andi	s1,s1,255
    80002648:	00c00793          	li	a5,12
    8000264c:	fc97f4e3          	bgeu	a5,s1,80002614 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80002650:	00004517          	auipc	a0,0x4
    80002654:	ac850513          	addi	a0,a0,-1336 # 80006118 <_ZZ12printIntegermE6digits+0x68>
    80002658:	00000097          	auipc	ra,0x0
    8000265c:	b64080e7          	jalr	-1180(ra) # 800021bc <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80002660:	00500313          	li	t1,5
    thread_dispatch();
    80002664:	fffff097          	auipc	ra,0xfffff
    80002668:	c00080e7          	jalr	-1024(ra) # 80001264 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    8000266c:	01000513          	li	a0,16
    80002670:	00000097          	auipc	ra,0x0
    80002674:	c20080e7          	jalr	-992(ra) # 80002290 <_ZL9fibonaccim>
    80002678:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInteger(result); printString("\n");
    8000267c:	00004517          	auipc	a0,0x4
    80002680:	aac50513          	addi	a0,a0,-1364 # 80006128 <_ZZ12printIntegermE6digits+0x78>
    80002684:	00000097          	auipc	ra,0x0
    80002688:	b38080e7          	jalr	-1224(ra) # 800021bc <_Z11printStringPKc>
    8000268c:	00090513          	mv	a0,s2
    80002690:	00000097          	auipc	ra,0x0
    80002694:	b70080e7          	jalr	-1168(ra) # 80002200 <_Z12printIntegerm>
    80002698:	00004517          	auipc	a0,0x4
    8000269c:	9d850513          	addi	a0,a0,-1576 # 80006070 <CONSOLE_STATUS+0x60>
    800026a0:	00000097          	auipc	ra,0x0
    800026a4:	b1c080e7          	jalr	-1252(ra) # 800021bc <_Z11printStringPKc>
    800026a8:	0380006f          	j	800026e0 <_ZN7WorkerD11workerBodyDEPv+0xec>

    for (; i < 16; i++) {
        printString("D: i="); printInteger(i); printString("\n");
    800026ac:	00004517          	auipc	a0,0x4
    800026b0:	a6450513          	addi	a0,a0,-1436 # 80006110 <_ZZ12printIntegermE6digits+0x60>
    800026b4:	00000097          	auipc	ra,0x0
    800026b8:	b08080e7          	jalr	-1272(ra) # 800021bc <_Z11printStringPKc>
    800026bc:	00048513          	mv	a0,s1
    800026c0:	00000097          	auipc	ra,0x0
    800026c4:	b40080e7          	jalr	-1216(ra) # 80002200 <_Z12printIntegerm>
    800026c8:	00004517          	auipc	a0,0x4
    800026cc:	9a850513          	addi	a0,a0,-1624 # 80006070 <CONSOLE_STATUS+0x60>
    800026d0:	00000097          	auipc	ra,0x0
    800026d4:	aec080e7          	jalr	-1300(ra) # 800021bc <_Z11printStringPKc>
    for (; i < 16; i++) {
    800026d8:	0014849b          	addiw	s1,s1,1
    800026dc:	0ff4f493          	andi	s1,s1,255
    800026e0:	00f00793          	li	a5,15
    800026e4:	fc97f4e3          	bgeu	a5,s1,800026ac <_ZN7WorkerD11workerBodyDEPv+0xb8>
    }

    printString("D finished!\n");
    800026e8:	00004517          	auipc	a0,0x4
    800026ec:	a5050513          	addi	a0,a0,-1456 # 80006138 <_ZZ12printIntegermE6digits+0x88>
    800026f0:	00000097          	auipc	ra,0x0
    800026f4:	acc080e7          	jalr	-1332(ra) # 800021bc <_Z11printStringPKc>
    finishedD = true;
    800026f8:	00100793          	li	a5,1
    800026fc:	00005717          	auipc	a4,0x5
    80002700:	c8f70fa3          	sb	a5,-865(a4) # 8000739b <_ZL9finishedD>
    thread_dispatch();
    80002704:	fffff097          	auipc	ra,0xfffff
    80002708:	b60080e7          	jalr	-1184(ra) # 80001264 <_Z15thread_dispatchv>
}
    8000270c:	01813083          	ld	ra,24(sp)
    80002710:	01013403          	ld	s0,16(sp)
    80002714:	00813483          	ld	s1,8(sp)
    80002718:	00013903          	ld	s2,0(sp)
    8000271c:	02010113          	addi	sp,sp,32
    80002720:	00008067          	ret

0000000080002724 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80002724:	fc010113          	addi	sp,sp,-64
    80002728:	02113c23          	sd	ra,56(sp)
    8000272c:	02813823          	sd	s0,48(sp)
    80002730:	02913423          	sd	s1,40(sp)
    80002734:	03213023          	sd	s2,32(sp)
    80002738:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    8000273c:	02000513          	li	a0,32
    80002740:	fffff097          	auipc	ra,0xfffff
    80002744:	118080e7          	jalr	280(ra) # 80001858 <_Znwm>
    80002748:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    8000274c:	fffff097          	auipc	ra,0xfffff
    80002750:	1dc080e7          	jalr	476(ra) # 80001928 <_ZN6ThreadC1Ev>
    80002754:	00005797          	auipc	a5,0x5
    80002758:	afc78793          	addi	a5,a5,-1284 # 80007250 <_ZTV7WorkerA+0x10>
    8000275c:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80002760:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80002764:	00004517          	auipc	a0,0x4
    80002768:	9e450513          	addi	a0,a0,-1564 # 80006148 <_ZZ12printIntegermE6digits+0x98>
    8000276c:	00000097          	auipc	ra,0x0
    80002770:	a50080e7          	jalr	-1456(ra) # 800021bc <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80002774:	02000513          	li	a0,32
    80002778:	fffff097          	auipc	ra,0xfffff
    8000277c:	0e0080e7          	jalr	224(ra) # 80001858 <_Znwm>
    80002780:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80002784:	fffff097          	auipc	ra,0xfffff
    80002788:	1a4080e7          	jalr	420(ra) # 80001928 <_ZN6ThreadC1Ev>
    8000278c:	00005797          	auipc	a5,0x5
    80002790:	aec78793          	addi	a5,a5,-1300 # 80007278 <_ZTV7WorkerB+0x10>
    80002794:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80002798:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    8000279c:	00004517          	auipc	a0,0x4
    800027a0:	9c450513          	addi	a0,a0,-1596 # 80006160 <_ZZ12printIntegermE6digits+0xb0>
    800027a4:	00000097          	auipc	ra,0x0
    800027a8:	a18080e7          	jalr	-1512(ra) # 800021bc <_Z11printStringPKc>

    threads[2] = new WorkerC();
    800027ac:	02000513          	li	a0,32
    800027b0:	fffff097          	auipc	ra,0xfffff
    800027b4:	0a8080e7          	jalr	168(ra) # 80001858 <_Znwm>
    800027b8:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    800027bc:	fffff097          	auipc	ra,0xfffff
    800027c0:	16c080e7          	jalr	364(ra) # 80001928 <_ZN6ThreadC1Ev>
    800027c4:	00005797          	auipc	a5,0x5
    800027c8:	adc78793          	addi	a5,a5,-1316 # 800072a0 <_ZTV7WorkerC+0x10>
    800027cc:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    800027d0:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    800027d4:	00004517          	auipc	a0,0x4
    800027d8:	9a450513          	addi	a0,a0,-1628 # 80006178 <_ZZ12printIntegermE6digits+0xc8>
    800027dc:	00000097          	auipc	ra,0x0
    800027e0:	9e0080e7          	jalr	-1568(ra) # 800021bc <_Z11printStringPKc>

    threads[3] = new WorkerD();
    800027e4:	02000513          	li	a0,32
    800027e8:	fffff097          	auipc	ra,0xfffff
    800027ec:	070080e7          	jalr	112(ra) # 80001858 <_Znwm>
    800027f0:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    800027f4:	fffff097          	auipc	ra,0xfffff
    800027f8:	134080e7          	jalr	308(ra) # 80001928 <_ZN6ThreadC1Ev>
    800027fc:	00005797          	auipc	a5,0x5
    80002800:	acc78793          	addi	a5,a5,-1332 # 800072c8 <_ZTV7WorkerD+0x10>
    80002804:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80002808:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    8000280c:	00004517          	auipc	a0,0x4
    80002810:	98450513          	addi	a0,a0,-1660 # 80006190 <_ZZ12printIntegermE6digits+0xe0>
    80002814:	00000097          	auipc	ra,0x0
    80002818:	9a8080e7          	jalr	-1624(ra) # 800021bc <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    8000281c:	00000493          	li	s1,0
    80002820:	00300793          	li	a5,3
    80002824:	0297c663          	blt	a5,s1,80002850 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80002828:	00349793          	slli	a5,s1,0x3
    8000282c:	fe040713          	addi	a4,s0,-32
    80002830:	00f707b3          	add	a5,a4,a5
    80002834:	fe07b503          	ld	a0,-32(a5)
    80002838:	fffff097          	auipc	ra,0xfffff
    8000283c:	120080e7          	jalr	288(ra) # 80001958 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80002840:	0014849b          	addiw	s1,s1,1
    80002844:	fddff06f          	j	80002820 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80002848:	fffff097          	auipc	ra,0xfffff
    8000284c:	0b8080e7          	jalr	184(ra) # 80001900 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80002850:	00005797          	auipc	a5,0x5
    80002854:	b487c783          	lbu	a5,-1208(a5) # 80007398 <_ZL9finishedA>
    80002858:	fe0788e3          	beqz	a5,80002848 <_Z20Threads_CPP_API_testv+0x124>
    8000285c:	00005797          	auipc	a5,0x5
    80002860:	b3d7c783          	lbu	a5,-1219(a5) # 80007399 <_ZL9finishedB>
    80002864:	fe0782e3          	beqz	a5,80002848 <_Z20Threads_CPP_API_testv+0x124>
    80002868:	00005797          	auipc	a5,0x5
    8000286c:	b327c783          	lbu	a5,-1230(a5) # 8000739a <_ZL9finishedC>
    80002870:	fc078ce3          	beqz	a5,80002848 <_Z20Threads_CPP_API_testv+0x124>
    80002874:	00005797          	auipc	a5,0x5
    80002878:	b277c783          	lbu	a5,-1241(a5) # 8000739b <_ZL9finishedD>
    8000287c:	fc0786e3          	beqz	a5,80002848 <_Z20Threads_CPP_API_testv+0x124>
    80002880:	fc040493          	addi	s1,s0,-64
    80002884:	0080006f          	j	8000288c <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    80002888:	00848493          	addi	s1,s1,8
    8000288c:	fe040793          	addi	a5,s0,-32
    80002890:	08f48663          	beq	s1,a5,8000291c <_Z20Threads_CPP_API_testv+0x1f8>
    80002894:	0004b503          	ld	a0,0(s1)
    80002898:	fe0508e3          	beqz	a0,80002888 <_Z20Threads_CPP_API_testv+0x164>
    8000289c:	00053783          	ld	a5,0(a0)
    800028a0:	0087b783          	ld	a5,8(a5)
    800028a4:	000780e7          	jalr	a5
    800028a8:	fe1ff06f          	j	80002888 <_Z20Threads_CPP_API_testv+0x164>
    800028ac:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    800028b0:	00048513          	mv	a0,s1
    800028b4:	fffff097          	auipc	ra,0xfffff
    800028b8:	fcc080e7          	jalr	-52(ra) # 80001880 <_ZdlPv>
    800028bc:	00090513          	mv	a0,s2
    800028c0:	00006097          	auipc	ra,0x6
    800028c4:	bb8080e7          	jalr	-1096(ra) # 80008478 <_Unwind_Resume>
    800028c8:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    800028cc:	00048513          	mv	a0,s1
    800028d0:	fffff097          	auipc	ra,0xfffff
    800028d4:	fb0080e7          	jalr	-80(ra) # 80001880 <_ZdlPv>
    800028d8:	00090513          	mv	a0,s2
    800028dc:	00006097          	auipc	ra,0x6
    800028e0:	b9c080e7          	jalr	-1124(ra) # 80008478 <_Unwind_Resume>
    800028e4:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    800028e8:	00048513          	mv	a0,s1
    800028ec:	fffff097          	auipc	ra,0xfffff
    800028f0:	f94080e7          	jalr	-108(ra) # 80001880 <_ZdlPv>
    800028f4:	00090513          	mv	a0,s2
    800028f8:	00006097          	auipc	ra,0x6
    800028fc:	b80080e7          	jalr	-1152(ra) # 80008478 <_Unwind_Resume>
    80002900:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80002904:	00048513          	mv	a0,s1
    80002908:	fffff097          	auipc	ra,0xfffff
    8000290c:	f78080e7          	jalr	-136(ra) # 80001880 <_ZdlPv>
    80002910:	00090513          	mv	a0,s2
    80002914:	00006097          	auipc	ra,0x6
    80002918:	b64080e7          	jalr	-1180(ra) # 80008478 <_Unwind_Resume>
}
    8000291c:	03813083          	ld	ra,56(sp)
    80002920:	03013403          	ld	s0,48(sp)
    80002924:	02813483          	ld	s1,40(sp)
    80002928:	02013903          	ld	s2,32(sp)
    8000292c:	04010113          	addi	sp,sp,64
    80002930:	00008067          	ret

0000000080002934 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80002934:	ff010113          	addi	sp,sp,-16
    80002938:	00113423          	sd	ra,8(sp)
    8000293c:	00813023          	sd	s0,0(sp)
    80002940:	01010413          	addi	s0,sp,16
    80002944:	00005797          	auipc	a5,0x5
    80002948:	90c78793          	addi	a5,a5,-1780 # 80007250 <_ZTV7WorkerA+0x10>
    8000294c:	00f53023          	sd	a5,0(a0)
    80002950:	fffff097          	auipc	ra,0xfffff
    80002954:	ec4080e7          	jalr	-316(ra) # 80001814 <_ZN6ThreadD1Ev>
    80002958:	00813083          	ld	ra,8(sp)
    8000295c:	00013403          	ld	s0,0(sp)
    80002960:	01010113          	addi	sp,sp,16
    80002964:	00008067          	ret

0000000080002968 <_ZN7WorkerAD0Ev>:
    80002968:	fe010113          	addi	sp,sp,-32
    8000296c:	00113c23          	sd	ra,24(sp)
    80002970:	00813823          	sd	s0,16(sp)
    80002974:	00913423          	sd	s1,8(sp)
    80002978:	02010413          	addi	s0,sp,32
    8000297c:	00050493          	mv	s1,a0
    80002980:	00005797          	auipc	a5,0x5
    80002984:	8d078793          	addi	a5,a5,-1840 # 80007250 <_ZTV7WorkerA+0x10>
    80002988:	00f53023          	sd	a5,0(a0)
    8000298c:	fffff097          	auipc	ra,0xfffff
    80002990:	e88080e7          	jalr	-376(ra) # 80001814 <_ZN6ThreadD1Ev>
    80002994:	00048513          	mv	a0,s1
    80002998:	fffff097          	auipc	ra,0xfffff
    8000299c:	ee8080e7          	jalr	-280(ra) # 80001880 <_ZdlPv>
    800029a0:	01813083          	ld	ra,24(sp)
    800029a4:	01013403          	ld	s0,16(sp)
    800029a8:	00813483          	ld	s1,8(sp)
    800029ac:	02010113          	addi	sp,sp,32
    800029b0:	00008067          	ret

00000000800029b4 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    800029b4:	ff010113          	addi	sp,sp,-16
    800029b8:	00113423          	sd	ra,8(sp)
    800029bc:	00813023          	sd	s0,0(sp)
    800029c0:	01010413          	addi	s0,sp,16
    800029c4:	00005797          	auipc	a5,0x5
    800029c8:	8b478793          	addi	a5,a5,-1868 # 80007278 <_ZTV7WorkerB+0x10>
    800029cc:	00f53023          	sd	a5,0(a0)
    800029d0:	fffff097          	auipc	ra,0xfffff
    800029d4:	e44080e7          	jalr	-444(ra) # 80001814 <_ZN6ThreadD1Ev>
    800029d8:	00813083          	ld	ra,8(sp)
    800029dc:	00013403          	ld	s0,0(sp)
    800029e0:	01010113          	addi	sp,sp,16
    800029e4:	00008067          	ret

00000000800029e8 <_ZN7WorkerBD0Ev>:
    800029e8:	fe010113          	addi	sp,sp,-32
    800029ec:	00113c23          	sd	ra,24(sp)
    800029f0:	00813823          	sd	s0,16(sp)
    800029f4:	00913423          	sd	s1,8(sp)
    800029f8:	02010413          	addi	s0,sp,32
    800029fc:	00050493          	mv	s1,a0
    80002a00:	00005797          	auipc	a5,0x5
    80002a04:	87878793          	addi	a5,a5,-1928 # 80007278 <_ZTV7WorkerB+0x10>
    80002a08:	00f53023          	sd	a5,0(a0)
    80002a0c:	fffff097          	auipc	ra,0xfffff
    80002a10:	e08080e7          	jalr	-504(ra) # 80001814 <_ZN6ThreadD1Ev>
    80002a14:	00048513          	mv	a0,s1
    80002a18:	fffff097          	auipc	ra,0xfffff
    80002a1c:	e68080e7          	jalr	-408(ra) # 80001880 <_ZdlPv>
    80002a20:	01813083          	ld	ra,24(sp)
    80002a24:	01013403          	ld	s0,16(sp)
    80002a28:	00813483          	ld	s1,8(sp)
    80002a2c:	02010113          	addi	sp,sp,32
    80002a30:	00008067          	ret

0000000080002a34 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80002a34:	ff010113          	addi	sp,sp,-16
    80002a38:	00113423          	sd	ra,8(sp)
    80002a3c:	00813023          	sd	s0,0(sp)
    80002a40:	01010413          	addi	s0,sp,16
    80002a44:	00005797          	auipc	a5,0x5
    80002a48:	85c78793          	addi	a5,a5,-1956 # 800072a0 <_ZTV7WorkerC+0x10>
    80002a4c:	00f53023          	sd	a5,0(a0)
    80002a50:	fffff097          	auipc	ra,0xfffff
    80002a54:	dc4080e7          	jalr	-572(ra) # 80001814 <_ZN6ThreadD1Ev>
    80002a58:	00813083          	ld	ra,8(sp)
    80002a5c:	00013403          	ld	s0,0(sp)
    80002a60:	01010113          	addi	sp,sp,16
    80002a64:	00008067          	ret

0000000080002a68 <_ZN7WorkerCD0Ev>:
    80002a68:	fe010113          	addi	sp,sp,-32
    80002a6c:	00113c23          	sd	ra,24(sp)
    80002a70:	00813823          	sd	s0,16(sp)
    80002a74:	00913423          	sd	s1,8(sp)
    80002a78:	02010413          	addi	s0,sp,32
    80002a7c:	00050493          	mv	s1,a0
    80002a80:	00005797          	auipc	a5,0x5
    80002a84:	82078793          	addi	a5,a5,-2016 # 800072a0 <_ZTV7WorkerC+0x10>
    80002a88:	00f53023          	sd	a5,0(a0)
    80002a8c:	fffff097          	auipc	ra,0xfffff
    80002a90:	d88080e7          	jalr	-632(ra) # 80001814 <_ZN6ThreadD1Ev>
    80002a94:	00048513          	mv	a0,s1
    80002a98:	fffff097          	auipc	ra,0xfffff
    80002a9c:	de8080e7          	jalr	-536(ra) # 80001880 <_ZdlPv>
    80002aa0:	01813083          	ld	ra,24(sp)
    80002aa4:	01013403          	ld	s0,16(sp)
    80002aa8:	00813483          	ld	s1,8(sp)
    80002aac:	02010113          	addi	sp,sp,32
    80002ab0:	00008067          	ret

0000000080002ab4 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80002ab4:	ff010113          	addi	sp,sp,-16
    80002ab8:	00113423          	sd	ra,8(sp)
    80002abc:	00813023          	sd	s0,0(sp)
    80002ac0:	01010413          	addi	s0,sp,16
    80002ac4:	00005797          	auipc	a5,0x5
    80002ac8:	80478793          	addi	a5,a5,-2044 # 800072c8 <_ZTV7WorkerD+0x10>
    80002acc:	00f53023          	sd	a5,0(a0)
    80002ad0:	fffff097          	auipc	ra,0xfffff
    80002ad4:	d44080e7          	jalr	-700(ra) # 80001814 <_ZN6ThreadD1Ev>
    80002ad8:	00813083          	ld	ra,8(sp)
    80002adc:	00013403          	ld	s0,0(sp)
    80002ae0:	01010113          	addi	sp,sp,16
    80002ae4:	00008067          	ret

0000000080002ae8 <_ZN7WorkerDD0Ev>:
    80002ae8:	fe010113          	addi	sp,sp,-32
    80002aec:	00113c23          	sd	ra,24(sp)
    80002af0:	00813823          	sd	s0,16(sp)
    80002af4:	00913423          	sd	s1,8(sp)
    80002af8:	02010413          	addi	s0,sp,32
    80002afc:	00050493          	mv	s1,a0
    80002b00:	00004797          	auipc	a5,0x4
    80002b04:	7c878793          	addi	a5,a5,1992 # 800072c8 <_ZTV7WorkerD+0x10>
    80002b08:	00f53023          	sd	a5,0(a0)
    80002b0c:	fffff097          	auipc	ra,0xfffff
    80002b10:	d08080e7          	jalr	-760(ra) # 80001814 <_ZN6ThreadD1Ev>
    80002b14:	00048513          	mv	a0,s1
    80002b18:	fffff097          	auipc	ra,0xfffff
    80002b1c:	d68080e7          	jalr	-664(ra) # 80001880 <_ZdlPv>
    80002b20:	01813083          	ld	ra,24(sp)
    80002b24:	01013403          	ld	s0,16(sp)
    80002b28:	00813483          	ld	s1,8(sp)
    80002b2c:	02010113          	addi	sp,sp,32
    80002b30:	00008067          	ret

0000000080002b34 <_ZN7WorkerA3runEv>:
    void run() override {
    80002b34:	ff010113          	addi	sp,sp,-16
    80002b38:	00113423          	sd	ra,8(sp)
    80002b3c:	00813023          	sd	s0,0(sp)
    80002b40:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80002b44:	00000593          	li	a1,0
    80002b48:	fffff097          	auipc	ra,0xfffff
    80002b4c:	7bc080e7          	jalr	1980(ra) # 80002304 <_ZN7WorkerA11workerBodyAEPv>
    }
    80002b50:	00813083          	ld	ra,8(sp)
    80002b54:	00013403          	ld	s0,0(sp)
    80002b58:	01010113          	addi	sp,sp,16
    80002b5c:	00008067          	ret

0000000080002b60 <_ZN7WorkerB3runEv>:
    void run() override {
    80002b60:	ff010113          	addi	sp,sp,-16
    80002b64:	00113423          	sd	ra,8(sp)
    80002b68:	00813023          	sd	s0,0(sp)
    80002b6c:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80002b70:	00000593          	li	a1,0
    80002b74:	00000097          	auipc	ra,0x0
    80002b78:	854080e7          	jalr	-1964(ra) # 800023c8 <_ZN7WorkerB11workerBodyBEPv>
    }
    80002b7c:	00813083          	ld	ra,8(sp)
    80002b80:	00013403          	ld	s0,0(sp)
    80002b84:	01010113          	addi	sp,sp,16
    80002b88:	00008067          	ret

0000000080002b8c <_ZN7WorkerC3runEv>:
    void run() override {
    80002b8c:	ff010113          	addi	sp,sp,-16
    80002b90:	00113423          	sd	ra,8(sp)
    80002b94:	00813023          	sd	s0,0(sp)
    80002b98:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80002b9c:	00000593          	li	a1,0
    80002ba0:	00000097          	auipc	ra,0x0
    80002ba4:	8f4080e7          	jalr	-1804(ra) # 80002494 <_ZN7WorkerC11workerBodyCEPv>
    }
    80002ba8:	00813083          	ld	ra,8(sp)
    80002bac:	00013403          	ld	s0,0(sp)
    80002bb0:	01010113          	addi	sp,sp,16
    80002bb4:	00008067          	ret

0000000080002bb8 <_ZN7WorkerD3runEv>:
    void run() override {
    80002bb8:	ff010113          	addi	sp,sp,-16
    80002bbc:	00113423          	sd	ra,8(sp)
    80002bc0:	00813023          	sd	s0,0(sp)
    80002bc4:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80002bc8:	00000593          	li	a1,0
    80002bcc:	00000097          	auipc	ra,0x0
    80002bd0:	a28080e7          	jalr	-1496(ra) # 800025f4 <_ZN7WorkerD11workerBodyDEPv>
    }
    80002bd4:	00813083          	ld	ra,8(sp)
    80002bd8:	00013403          	ld	s0,0(sp)
    80002bdc:	01010113          	addi	sp,sp,16
    80002be0:	00008067          	ret

0000000080002be4 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80002be4:	fe010113          	addi	sp,sp,-32
    80002be8:	00113c23          	sd	ra,24(sp)
    80002bec:	00813823          	sd	s0,16(sp)
    80002bf0:	00913423          	sd	s1,8(sp)
    80002bf4:	01213023          	sd	s2,0(sp)
    80002bf8:	02010413          	addi	s0,sp,32
    80002bfc:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80002c00:	00100793          	li	a5,1
    80002c04:	02a7f863          	bgeu	a5,a0,80002c34 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80002c08:	00a00793          	li	a5,10
    80002c0c:	02f577b3          	remu	a5,a0,a5
    80002c10:	02078e63          	beqz	a5,80002c4c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80002c14:	fff48513          	addi	a0,s1,-1
    80002c18:	00000097          	auipc	ra,0x0
    80002c1c:	fcc080e7          	jalr	-52(ra) # 80002be4 <_ZL9fibonaccim>
    80002c20:	00050913          	mv	s2,a0
    80002c24:	ffe48513          	addi	a0,s1,-2
    80002c28:	00000097          	auipc	ra,0x0
    80002c2c:	fbc080e7          	jalr	-68(ra) # 80002be4 <_ZL9fibonaccim>
    80002c30:	00a90533          	add	a0,s2,a0
}
    80002c34:	01813083          	ld	ra,24(sp)
    80002c38:	01013403          	ld	s0,16(sp)
    80002c3c:	00813483          	ld	s1,8(sp)
    80002c40:	00013903          	ld	s2,0(sp)
    80002c44:	02010113          	addi	sp,sp,32
    80002c48:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80002c4c:	ffffe097          	auipc	ra,0xffffe
    80002c50:	618080e7          	jalr	1560(ra) # 80001264 <_Z15thread_dispatchv>
    80002c54:	fc1ff06f          	j	80002c14 <_ZL9fibonaccim+0x30>

0000000080002c58 <_ZL11workerBodyDPv>:
    printString("C finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80002c58:	fe010113          	addi	sp,sp,-32
    80002c5c:	00113c23          	sd	ra,24(sp)
    80002c60:	00813823          	sd	s0,16(sp)
    80002c64:	00913423          	sd	s1,8(sp)
    80002c68:	01213023          	sd	s2,0(sp)
    80002c6c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80002c70:	00a00493          	li	s1,10
    80002c74:	0380006f          	j	80002cac <_ZL11workerBodyDPv+0x54>
    for (; i < 13; i++) {
        printString("D: i="); printInteger(i); printString("\n");
    80002c78:	00003517          	auipc	a0,0x3
    80002c7c:	49850513          	addi	a0,a0,1176 # 80006110 <_ZZ12printIntegermE6digits+0x60>
    80002c80:	fffff097          	auipc	ra,0xfffff
    80002c84:	53c080e7          	jalr	1340(ra) # 800021bc <_Z11printStringPKc>
    80002c88:	00048513          	mv	a0,s1
    80002c8c:	fffff097          	auipc	ra,0xfffff
    80002c90:	574080e7          	jalr	1396(ra) # 80002200 <_Z12printIntegerm>
    80002c94:	00003517          	auipc	a0,0x3
    80002c98:	3dc50513          	addi	a0,a0,988 # 80006070 <CONSOLE_STATUS+0x60>
    80002c9c:	fffff097          	auipc	ra,0xfffff
    80002ca0:	520080e7          	jalr	1312(ra) # 800021bc <_Z11printStringPKc>
    for (; i < 13; i++) {
    80002ca4:	0014849b          	addiw	s1,s1,1
    80002ca8:	0ff4f493          	andi	s1,s1,255
    80002cac:	00c00793          	li	a5,12
    80002cb0:	fc97f4e3          	bgeu	a5,s1,80002c78 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80002cb4:	00003517          	auipc	a0,0x3
    80002cb8:	46450513          	addi	a0,a0,1124 # 80006118 <_ZZ12printIntegermE6digits+0x68>
    80002cbc:	fffff097          	auipc	ra,0xfffff
    80002cc0:	500080e7          	jalr	1280(ra) # 800021bc <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80002cc4:	00500313          	li	t1,5
    thread_dispatch();
    80002cc8:	ffffe097          	auipc	ra,0xffffe
    80002ccc:	59c080e7          	jalr	1436(ra) # 80001264 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80002cd0:	01000513          	li	a0,16
    80002cd4:	00000097          	auipc	ra,0x0
    80002cd8:	f10080e7          	jalr	-240(ra) # 80002be4 <_ZL9fibonaccim>
    80002cdc:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInteger(result); printString("\n");
    80002ce0:	00003517          	auipc	a0,0x3
    80002ce4:	44850513          	addi	a0,a0,1096 # 80006128 <_ZZ12printIntegermE6digits+0x78>
    80002ce8:	fffff097          	auipc	ra,0xfffff
    80002cec:	4d4080e7          	jalr	1236(ra) # 800021bc <_Z11printStringPKc>
    80002cf0:	00090513          	mv	a0,s2
    80002cf4:	fffff097          	auipc	ra,0xfffff
    80002cf8:	50c080e7          	jalr	1292(ra) # 80002200 <_Z12printIntegerm>
    80002cfc:	00003517          	auipc	a0,0x3
    80002d00:	37450513          	addi	a0,a0,884 # 80006070 <CONSOLE_STATUS+0x60>
    80002d04:	fffff097          	auipc	ra,0xfffff
    80002d08:	4b8080e7          	jalr	1208(ra) # 800021bc <_Z11printStringPKc>
    80002d0c:	0380006f          	j	80002d44 <_ZL11workerBodyDPv+0xec>

    for (; i < 16; i++) {
        printString("D: i="); printInteger(i); printString("\n");
    80002d10:	00003517          	auipc	a0,0x3
    80002d14:	40050513          	addi	a0,a0,1024 # 80006110 <_ZZ12printIntegermE6digits+0x60>
    80002d18:	fffff097          	auipc	ra,0xfffff
    80002d1c:	4a4080e7          	jalr	1188(ra) # 800021bc <_Z11printStringPKc>
    80002d20:	00048513          	mv	a0,s1
    80002d24:	fffff097          	auipc	ra,0xfffff
    80002d28:	4dc080e7          	jalr	1244(ra) # 80002200 <_Z12printIntegerm>
    80002d2c:	00003517          	auipc	a0,0x3
    80002d30:	34450513          	addi	a0,a0,836 # 80006070 <CONSOLE_STATUS+0x60>
    80002d34:	fffff097          	auipc	ra,0xfffff
    80002d38:	488080e7          	jalr	1160(ra) # 800021bc <_Z11printStringPKc>
    for (; i < 16; i++) {
    80002d3c:	0014849b          	addiw	s1,s1,1
    80002d40:	0ff4f493          	andi	s1,s1,255
    80002d44:	00f00793          	li	a5,15
    80002d48:	fc97f4e3          	bgeu	a5,s1,80002d10 <_ZL11workerBodyDPv+0xb8>
    }

    printString("D finished!\n");
    80002d4c:	00003517          	auipc	a0,0x3
    80002d50:	3ec50513          	addi	a0,a0,1004 # 80006138 <_ZZ12printIntegermE6digits+0x88>
    80002d54:	fffff097          	auipc	ra,0xfffff
    80002d58:	468080e7          	jalr	1128(ra) # 800021bc <_Z11printStringPKc>
    finishedD = true;
    80002d5c:	00100793          	li	a5,1
    80002d60:	00004717          	auipc	a4,0x4
    80002d64:	62f70e23          	sb	a5,1596(a4) # 8000739c <_ZL9finishedD>
    thread_dispatch();
    80002d68:	ffffe097          	auipc	ra,0xffffe
    80002d6c:	4fc080e7          	jalr	1276(ra) # 80001264 <_Z15thread_dispatchv>
}
    80002d70:	01813083          	ld	ra,24(sp)
    80002d74:	01013403          	ld	s0,16(sp)
    80002d78:	00813483          	ld	s1,8(sp)
    80002d7c:	00013903          	ld	s2,0(sp)
    80002d80:	02010113          	addi	sp,sp,32
    80002d84:	00008067          	ret

0000000080002d88 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80002d88:	fe010113          	addi	sp,sp,-32
    80002d8c:	00113c23          	sd	ra,24(sp)
    80002d90:	00813823          	sd	s0,16(sp)
    80002d94:	00913423          	sd	s1,8(sp)
    80002d98:	01213023          	sd	s2,0(sp)
    80002d9c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80002da0:	00000493          	li	s1,0
    80002da4:	0380006f          	j	80002ddc <_ZL11workerBodyCPv+0x54>
        printString("C: i="); printInteger(i); printString("\n");
    80002da8:	00003517          	auipc	a0,0x3
    80002dac:	32850513          	addi	a0,a0,808 # 800060d0 <_ZZ12printIntegermE6digits+0x20>
    80002db0:	fffff097          	auipc	ra,0xfffff
    80002db4:	40c080e7          	jalr	1036(ra) # 800021bc <_Z11printStringPKc>
    80002db8:	00048513          	mv	a0,s1
    80002dbc:	fffff097          	auipc	ra,0xfffff
    80002dc0:	444080e7          	jalr	1092(ra) # 80002200 <_Z12printIntegerm>
    80002dc4:	00003517          	auipc	a0,0x3
    80002dc8:	2ac50513          	addi	a0,a0,684 # 80006070 <CONSOLE_STATUS+0x60>
    80002dcc:	fffff097          	auipc	ra,0xfffff
    80002dd0:	3f0080e7          	jalr	1008(ra) # 800021bc <_Z11printStringPKc>
    for (; i < 3; i++) {
    80002dd4:	0014849b          	addiw	s1,s1,1
    80002dd8:	0ff4f493          	andi	s1,s1,255
    80002ddc:	00200793          	li	a5,2
    80002de0:	fc97f4e3          	bgeu	a5,s1,80002da8 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80002de4:	00003517          	auipc	a0,0x3
    80002de8:	2f450513          	addi	a0,a0,756 # 800060d8 <_ZZ12printIntegermE6digits+0x28>
    80002dec:	fffff097          	auipc	ra,0xfffff
    80002df0:	3d0080e7          	jalr	976(ra) # 800021bc <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80002df4:	00700313          	li	t1,7
    thread_dispatch();
    80002df8:	ffffe097          	auipc	ra,0xffffe
    80002dfc:	46c080e7          	jalr	1132(ra) # 80001264 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80002e00:	00030913          	mv	s2,t1
    printString("C: t1="); printInteger(t1); printString("\n");
    80002e04:	00003517          	auipc	a0,0x3
    80002e08:	2e450513          	addi	a0,a0,740 # 800060e8 <_ZZ12printIntegermE6digits+0x38>
    80002e0c:	fffff097          	auipc	ra,0xfffff
    80002e10:	3b0080e7          	jalr	944(ra) # 800021bc <_Z11printStringPKc>
    80002e14:	00090513          	mv	a0,s2
    80002e18:	fffff097          	auipc	ra,0xfffff
    80002e1c:	3e8080e7          	jalr	1000(ra) # 80002200 <_Z12printIntegerm>
    80002e20:	00003517          	auipc	a0,0x3
    80002e24:	25050513          	addi	a0,a0,592 # 80006070 <CONSOLE_STATUS+0x60>
    80002e28:	fffff097          	auipc	ra,0xfffff
    80002e2c:	394080e7          	jalr	916(ra) # 800021bc <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80002e30:	00c00513          	li	a0,12
    80002e34:	00000097          	auipc	ra,0x0
    80002e38:	db0080e7          	jalr	-592(ra) # 80002be4 <_ZL9fibonaccim>
    80002e3c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInteger(result); printString("\n");
    80002e40:	00003517          	auipc	a0,0x3
    80002e44:	2b050513          	addi	a0,a0,688 # 800060f0 <_ZZ12printIntegermE6digits+0x40>
    80002e48:	fffff097          	auipc	ra,0xfffff
    80002e4c:	374080e7          	jalr	884(ra) # 800021bc <_Z11printStringPKc>
    80002e50:	00090513          	mv	a0,s2
    80002e54:	fffff097          	auipc	ra,0xfffff
    80002e58:	3ac080e7          	jalr	940(ra) # 80002200 <_Z12printIntegerm>
    80002e5c:	00003517          	auipc	a0,0x3
    80002e60:	21450513          	addi	a0,a0,532 # 80006070 <CONSOLE_STATUS+0x60>
    80002e64:	fffff097          	auipc	ra,0xfffff
    80002e68:	358080e7          	jalr	856(ra) # 800021bc <_Z11printStringPKc>
    80002e6c:	0380006f          	j	80002ea4 <_ZL11workerBodyCPv+0x11c>
        printString("C: i="); printInteger(i); printString("\n");
    80002e70:	00003517          	auipc	a0,0x3
    80002e74:	26050513          	addi	a0,a0,608 # 800060d0 <_ZZ12printIntegermE6digits+0x20>
    80002e78:	fffff097          	auipc	ra,0xfffff
    80002e7c:	344080e7          	jalr	836(ra) # 800021bc <_Z11printStringPKc>
    80002e80:	00048513          	mv	a0,s1
    80002e84:	fffff097          	auipc	ra,0xfffff
    80002e88:	37c080e7          	jalr	892(ra) # 80002200 <_Z12printIntegerm>
    80002e8c:	00003517          	auipc	a0,0x3
    80002e90:	1e450513          	addi	a0,a0,484 # 80006070 <CONSOLE_STATUS+0x60>
    80002e94:	fffff097          	auipc	ra,0xfffff
    80002e98:	328080e7          	jalr	808(ra) # 800021bc <_Z11printStringPKc>
    for (; i < 6; i++) {
    80002e9c:	0014849b          	addiw	s1,s1,1
    80002ea0:	0ff4f493          	andi	s1,s1,255
    80002ea4:	00500793          	li	a5,5
    80002ea8:	fc97f4e3          	bgeu	a5,s1,80002e70 <_ZL11workerBodyCPv+0xe8>
    printString("C finished!\n");
    80002eac:	00003517          	auipc	a0,0x3
    80002eb0:	25450513          	addi	a0,a0,596 # 80006100 <_ZZ12printIntegermE6digits+0x50>
    80002eb4:	fffff097          	auipc	ra,0xfffff
    80002eb8:	308080e7          	jalr	776(ra) # 800021bc <_Z11printStringPKc>
    finishedC = true;
    80002ebc:	00100793          	li	a5,1
    80002ec0:	00004717          	auipc	a4,0x4
    80002ec4:	4cf70ea3          	sb	a5,1245(a4) # 8000739d <_ZL9finishedC>
    thread_dispatch();
    80002ec8:	ffffe097          	auipc	ra,0xffffe
    80002ecc:	39c080e7          	jalr	924(ra) # 80001264 <_Z15thread_dispatchv>
}
    80002ed0:	01813083          	ld	ra,24(sp)
    80002ed4:	01013403          	ld	s0,16(sp)
    80002ed8:	00813483          	ld	s1,8(sp)
    80002edc:	00013903          	ld	s2,0(sp)
    80002ee0:	02010113          	addi	sp,sp,32
    80002ee4:	00008067          	ret

0000000080002ee8 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80002ee8:	fe010113          	addi	sp,sp,-32
    80002eec:	00113c23          	sd	ra,24(sp)
    80002ef0:	00813823          	sd	s0,16(sp)
    80002ef4:	00913423          	sd	s1,8(sp)
    80002ef8:	01213023          	sd	s2,0(sp)
    80002efc:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80002f00:	00000913          	li	s2,0
    80002f04:	0380006f          	j	80002f3c <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80002f08:	ffffe097          	auipc	ra,0xffffe
    80002f0c:	35c080e7          	jalr	860(ra) # 80001264 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002f10:	00148493          	addi	s1,s1,1
    80002f14:	000027b7          	lui	a5,0x2
    80002f18:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002f1c:	0097ee63          	bltu	a5,s1,80002f38 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002f20:	00000713          	li	a4,0
    80002f24:	000077b7          	lui	a5,0x7
    80002f28:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002f2c:	fce7eee3          	bltu	a5,a4,80002f08 <_ZL11workerBodyBPv+0x20>
    80002f30:	00170713          	addi	a4,a4,1
    80002f34:	ff1ff06f          	j	80002f24 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80002f38:	00190913          	addi	s2,s2,1
    80002f3c:	00f00793          	li	a5,15
    80002f40:	0327ec63          	bltu	a5,s2,80002f78 <_ZL11workerBodyBPv+0x90>
        printString("B: i="); printInteger(i); printString("\n");
    80002f44:	00003517          	auipc	a0,0x3
    80002f48:	18450513          	addi	a0,a0,388 # 800060c8 <_ZZ12printIntegermE6digits+0x18>
    80002f4c:	fffff097          	auipc	ra,0xfffff
    80002f50:	270080e7          	jalr	624(ra) # 800021bc <_Z11printStringPKc>
    80002f54:	00090513          	mv	a0,s2
    80002f58:	fffff097          	auipc	ra,0xfffff
    80002f5c:	2a8080e7          	jalr	680(ra) # 80002200 <_Z12printIntegerm>
    80002f60:	00003517          	auipc	a0,0x3
    80002f64:	11050513          	addi	a0,a0,272 # 80006070 <CONSOLE_STATUS+0x60>
    80002f68:	fffff097          	auipc	ra,0xfffff
    80002f6c:	254080e7          	jalr	596(ra) # 800021bc <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002f70:	00000493          	li	s1,0
    80002f74:	fa1ff06f          	j	80002f14 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80002f78:	00003517          	auipc	a0,0x3
    80002f7c:	0d850513          	addi	a0,a0,216 # 80006050 <CONSOLE_STATUS+0x40>
    80002f80:	fffff097          	auipc	ra,0xfffff
    80002f84:	23c080e7          	jalr	572(ra) # 800021bc <_Z11printStringPKc>
    finishedB = true;
    80002f88:	00100793          	li	a5,1
    80002f8c:	00004717          	auipc	a4,0x4
    80002f90:	40f70923          	sb	a5,1042(a4) # 8000739e <_ZL9finishedB>
    thread_dispatch();
    80002f94:	ffffe097          	auipc	ra,0xffffe
    80002f98:	2d0080e7          	jalr	720(ra) # 80001264 <_Z15thread_dispatchv>
}
    80002f9c:	01813083          	ld	ra,24(sp)
    80002fa0:	01013403          	ld	s0,16(sp)
    80002fa4:	00813483          	ld	s1,8(sp)
    80002fa8:	00013903          	ld	s2,0(sp)
    80002fac:	02010113          	addi	sp,sp,32
    80002fb0:	00008067          	ret

0000000080002fb4 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80002fb4:	fe010113          	addi	sp,sp,-32
    80002fb8:	00113c23          	sd	ra,24(sp)
    80002fbc:	00813823          	sd	s0,16(sp)
    80002fc0:	00913423          	sd	s1,8(sp)
    80002fc4:	01213023          	sd	s2,0(sp)
    80002fc8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80002fcc:	00000913          	li	s2,0
    80002fd0:	0380006f          	j	80003008 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80002fd4:	ffffe097          	auipc	ra,0xffffe
    80002fd8:	290080e7          	jalr	656(ra) # 80001264 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002fdc:	00148493          	addi	s1,s1,1
    80002fe0:	000027b7          	lui	a5,0x2
    80002fe4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002fe8:	0097ee63          	bltu	a5,s1,80003004 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002fec:	00000713          	li	a4,0
    80002ff0:	000077b7          	lui	a5,0x7
    80002ff4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002ff8:	fce7eee3          	bltu	a5,a4,80002fd4 <_ZL11workerBodyAPv+0x20>
    80002ffc:	00170713          	addi	a4,a4,1
    80003000:	ff1ff06f          	j	80002ff0 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003004:	00190913          	addi	s2,s2,1
    80003008:	00900793          	li	a5,9
    8000300c:	0327ec63          	bltu	a5,s2,80003044 <_ZL11workerBodyAPv+0x90>
        printString("A: i="); printInteger(i); printString("\n");
    80003010:	00003517          	auipc	a0,0x3
    80003014:	0b050513          	addi	a0,a0,176 # 800060c0 <_ZZ12printIntegermE6digits+0x10>
    80003018:	fffff097          	auipc	ra,0xfffff
    8000301c:	1a4080e7          	jalr	420(ra) # 800021bc <_Z11printStringPKc>
    80003020:	00090513          	mv	a0,s2
    80003024:	fffff097          	auipc	ra,0xfffff
    80003028:	1dc080e7          	jalr	476(ra) # 80002200 <_Z12printIntegerm>
    8000302c:	00003517          	auipc	a0,0x3
    80003030:	04450513          	addi	a0,a0,68 # 80006070 <CONSOLE_STATUS+0x60>
    80003034:	fffff097          	auipc	ra,0xfffff
    80003038:	188080e7          	jalr	392(ra) # 800021bc <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000303c:	00000493          	li	s1,0
    80003040:	fa1ff06f          	j	80002fe0 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80003044:	00003517          	auipc	a0,0x3
    80003048:	fec50513          	addi	a0,a0,-20 # 80006030 <CONSOLE_STATUS+0x20>
    8000304c:	fffff097          	auipc	ra,0xfffff
    80003050:	170080e7          	jalr	368(ra) # 800021bc <_Z11printStringPKc>
    finishedA = true;
    80003054:	00100793          	li	a5,1
    80003058:	00004717          	auipc	a4,0x4
    8000305c:	34f703a3          	sb	a5,839(a4) # 8000739f <_ZL9finishedA>
}
    80003060:	01813083          	ld	ra,24(sp)
    80003064:	01013403          	ld	s0,16(sp)
    80003068:	00813483          	ld	s1,8(sp)
    8000306c:	00013903          	ld	s2,0(sp)
    80003070:	02010113          	addi	sp,sp,32
    80003074:	00008067          	ret

0000000080003078 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80003078:	fd010113          	addi	sp,sp,-48
    8000307c:	02113423          	sd	ra,40(sp)
    80003080:	02813023          	sd	s0,32(sp)
    80003084:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80003088:	00000613          	li	a2,0
    8000308c:	00000597          	auipc	a1,0x0
    80003090:	f2858593          	addi	a1,a1,-216 # 80002fb4 <_ZL11workerBodyAPv>
    80003094:	fd040513          	addi	a0,s0,-48
    80003098:	ffffe097          	auipc	ra,0xffffe
    8000309c:	168080e7          	jalr	360(ra) # 80001200 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    800030a0:	00003517          	auipc	a0,0x3
    800030a4:	0a850513          	addi	a0,a0,168 # 80006148 <_ZZ12printIntegermE6digits+0x98>
    800030a8:	fffff097          	auipc	ra,0xfffff
    800030ac:	114080e7          	jalr	276(ra) # 800021bc <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800030b0:	00000613          	li	a2,0
    800030b4:	00000597          	auipc	a1,0x0
    800030b8:	e3458593          	addi	a1,a1,-460 # 80002ee8 <_ZL11workerBodyBPv>
    800030bc:	fd840513          	addi	a0,s0,-40
    800030c0:	ffffe097          	auipc	ra,0xffffe
    800030c4:	140080e7          	jalr	320(ra) # 80001200 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    800030c8:	00003517          	auipc	a0,0x3
    800030cc:	09850513          	addi	a0,a0,152 # 80006160 <_ZZ12printIntegermE6digits+0xb0>
    800030d0:	fffff097          	auipc	ra,0xfffff
    800030d4:	0ec080e7          	jalr	236(ra) # 800021bc <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    800030d8:	00000613          	li	a2,0
    800030dc:	00000597          	auipc	a1,0x0
    800030e0:	cac58593          	addi	a1,a1,-852 # 80002d88 <_ZL11workerBodyCPv>
    800030e4:	fe040513          	addi	a0,s0,-32
    800030e8:	ffffe097          	auipc	ra,0xffffe
    800030ec:	118080e7          	jalr	280(ra) # 80001200 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    800030f0:	00003517          	auipc	a0,0x3
    800030f4:	08850513          	addi	a0,a0,136 # 80006178 <_ZZ12printIntegermE6digits+0xc8>
    800030f8:	fffff097          	auipc	ra,0xfffff
    800030fc:	0c4080e7          	jalr	196(ra) # 800021bc <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80003100:	00000613          	li	a2,0
    80003104:	00000597          	auipc	a1,0x0
    80003108:	b5458593          	addi	a1,a1,-1196 # 80002c58 <_ZL11workerBodyDPv>
    8000310c:	fe840513          	addi	a0,s0,-24
    80003110:	ffffe097          	auipc	ra,0xffffe
    80003114:	0f0080e7          	jalr	240(ra) # 80001200 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80003118:	00003517          	auipc	a0,0x3
    8000311c:	07850513          	addi	a0,a0,120 # 80006190 <_ZZ12printIntegermE6digits+0xe0>
    80003120:	fffff097          	auipc	ra,0xfffff
    80003124:	09c080e7          	jalr	156(ra) # 800021bc <_Z11printStringPKc>
    80003128:	00c0006f          	j	80003134 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    8000312c:	ffffe097          	auipc	ra,0xffffe
    80003130:	138080e7          	jalr	312(ra) # 80001264 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80003134:	00004797          	auipc	a5,0x4
    80003138:	26b7c783          	lbu	a5,619(a5) # 8000739f <_ZL9finishedA>
    8000313c:	fe0788e3          	beqz	a5,8000312c <_Z18Threads_C_API_testv+0xb4>
    80003140:	00004797          	auipc	a5,0x4
    80003144:	25e7c783          	lbu	a5,606(a5) # 8000739e <_ZL9finishedB>
    80003148:	fe0782e3          	beqz	a5,8000312c <_Z18Threads_C_API_testv+0xb4>
    8000314c:	00004797          	auipc	a5,0x4
    80003150:	2517c783          	lbu	a5,593(a5) # 8000739d <_ZL9finishedC>
    80003154:	fc078ce3          	beqz	a5,8000312c <_Z18Threads_C_API_testv+0xb4>
    80003158:	00004797          	auipc	a5,0x4
    8000315c:	2447c783          	lbu	a5,580(a5) # 8000739c <_ZL9finishedD>
    80003160:	fc0786e3          	beqz	a5,8000312c <_Z18Threads_C_API_testv+0xb4>
    }

}
    80003164:	02813083          	ld	ra,40(sp)
    80003168:	02013403          	ld	s0,32(sp)
    8000316c:	03010113          	addi	sp,sp,48
    80003170:	00008067          	ret

0000000080003174 <_Z8userMainv>:
//#include "../test/ConsumerProducer_CPP_API_test.hpp"
//#include "System_Mode_test.hpp"

#endif

void userMain() {
    80003174:	ff010113          	addi	sp,sp,-16
    80003178:	00113423          	sd	ra,8(sp)
    8000317c:	00813023          	sd	s0,0(sp)
    80003180:	01010413          	addi	s0,sp,16
    printString("Unesite broj testa? [1-7]\n");
    80003184:	00003517          	auipc	a0,0x3
    80003188:	02450513          	addi	a0,a0,36 # 800061a8 <_ZZ12printIntegermE6digits+0xf8>
    8000318c:	fffff097          	auipc	ra,0xfffff
    80003190:	030080e7          	jalr	48(ra) # 800021bc <_Z11printStringPKc>
    }

    switch (test) {
        case 1:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_C_API_test();
    80003194:	00000097          	auipc	ra,0x0
    80003198:	ee4080e7          	jalr	-284(ra) # 80003078 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    8000319c:	00003517          	auipc	a0,0x3
    800031a0:	02c50513          	addi	a0,a0,44 # 800061c8 <_ZZ12printIntegermE6digits+0x118>
    800031a4:	fffff097          	auipc	ra,0xfffff
    800031a8:	018080e7          	jalr	24(ra) # 800021bc <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    800031ac:	00813083          	ld	ra,8(sp)
    800031b0:	00013403          	ld	s0,0(sp)
    800031b4:	01010113          	addi	sp,sp,16
    800031b8:	00008067          	ret

00000000800031bc <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800031bc:	fe010113          	addi	sp,sp,-32
    800031c0:	00113c23          	sd	ra,24(sp)
    800031c4:	00813823          	sd	s0,16(sp)
    800031c8:	00913423          	sd	s1,8(sp)
    800031cc:	01213023          	sd	s2,0(sp)
    800031d0:	02010413          	addi	s0,sp,32
    800031d4:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800031d8:	00100793          	li	a5,1
    800031dc:	02a7f863          	bgeu	a5,a0,8000320c <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800031e0:	00a00793          	li	a5,10
    800031e4:	02f577b3          	remu	a5,a0,a5
    800031e8:	02078e63          	beqz	a5,80003224 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800031ec:	fff48513          	addi	a0,s1,-1
    800031f0:	00000097          	auipc	ra,0x0
    800031f4:	fcc080e7          	jalr	-52(ra) # 800031bc <_ZL9fibonaccim>
    800031f8:	00050913          	mv	s2,a0
    800031fc:	ffe48513          	addi	a0,s1,-2
    80003200:	00000097          	auipc	ra,0x0
    80003204:	fbc080e7          	jalr	-68(ra) # 800031bc <_ZL9fibonaccim>
    80003208:	00a90533          	add	a0,s2,a0
}
    8000320c:	01813083          	ld	ra,24(sp)
    80003210:	01013403          	ld	s0,16(sp)
    80003214:	00813483          	ld	s1,8(sp)
    80003218:	00013903          	ld	s2,0(sp)
    8000321c:	02010113          	addi	sp,sp,32
    80003220:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003224:	ffffe097          	auipc	ra,0xffffe
    80003228:	040080e7          	jalr	64(ra) # 80001264 <_Z15thread_dispatchv>
    8000322c:	fc1ff06f          	j	800031ec <_ZL9fibonaccim+0x30>

0000000080003230 <_ZL11workerBodyDPv>:
    printString("C finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80003230:	fe010113          	addi	sp,sp,-32
    80003234:	00113c23          	sd	ra,24(sp)
    80003238:	00813823          	sd	s0,16(sp)
    8000323c:	00913423          	sd	s1,8(sp)
    80003240:	01213023          	sd	s2,0(sp)
    80003244:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003248:	00a00493          	li	s1,10
    8000324c:	0380006f          	j	80003284 <_ZL11workerBodyDPv+0x54>
    for (; i < 13; i++) {
        printString("D: i="); printInteger(i); printString("\n");
    80003250:	00003517          	auipc	a0,0x3
    80003254:	ec050513          	addi	a0,a0,-320 # 80006110 <_ZZ12printIntegermE6digits+0x60>
    80003258:	fffff097          	auipc	ra,0xfffff
    8000325c:	f64080e7          	jalr	-156(ra) # 800021bc <_Z11printStringPKc>
    80003260:	00048513          	mv	a0,s1
    80003264:	fffff097          	auipc	ra,0xfffff
    80003268:	f9c080e7          	jalr	-100(ra) # 80002200 <_Z12printIntegerm>
    8000326c:	00003517          	auipc	a0,0x3
    80003270:	e0450513          	addi	a0,a0,-508 # 80006070 <CONSOLE_STATUS+0x60>
    80003274:	fffff097          	auipc	ra,0xfffff
    80003278:	f48080e7          	jalr	-184(ra) # 800021bc <_Z11printStringPKc>
    for (; i < 13; i++) {
    8000327c:	0014849b          	addiw	s1,s1,1
    80003280:	0ff4f493          	andi	s1,s1,255
    80003284:	00c00793          	li	a5,12
    80003288:	fc97f4e3          	bgeu	a5,s1,80003250 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    8000328c:	00003517          	auipc	a0,0x3
    80003290:	e8c50513          	addi	a0,a0,-372 # 80006118 <_ZZ12printIntegermE6digits+0x68>
    80003294:	fffff097          	auipc	ra,0xfffff
    80003298:	f28080e7          	jalr	-216(ra) # 800021bc <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    8000329c:	00500313          	li	t1,5
    thread_dispatch();
    800032a0:	ffffe097          	auipc	ra,0xffffe
    800032a4:	fc4080e7          	jalr	-60(ra) # 80001264 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800032a8:	01000513          	li	a0,16
    800032ac:	00000097          	auipc	ra,0x0
    800032b0:	f10080e7          	jalr	-240(ra) # 800031bc <_ZL9fibonaccim>
    800032b4:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInteger(result); printString("\n");
    800032b8:	00003517          	auipc	a0,0x3
    800032bc:	e7050513          	addi	a0,a0,-400 # 80006128 <_ZZ12printIntegermE6digits+0x78>
    800032c0:	fffff097          	auipc	ra,0xfffff
    800032c4:	efc080e7          	jalr	-260(ra) # 800021bc <_Z11printStringPKc>
    800032c8:	00090513          	mv	a0,s2
    800032cc:	fffff097          	auipc	ra,0xfffff
    800032d0:	f34080e7          	jalr	-204(ra) # 80002200 <_Z12printIntegerm>
    800032d4:	00003517          	auipc	a0,0x3
    800032d8:	d9c50513          	addi	a0,a0,-612 # 80006070 <CONSOLE_STATUS+0x60>
    800032dc:	fffff097          	auipc	ra,0xfffff
    800032e0:	ee0080e7          	jalr	-288(ra) # 800021bc <_Z11printStringPKc>
    800032e4:	0380006f          	j	8000331c <_ZL11workerBodyDPv+0xec>

    for (; i < 16; i++) {
        printString("D: i="); printInteger(i); printString("\n");
    800032e8:	00003517          	auipc	a0,0x3
    800032ec:	e2850513          	addi	a0,a0,-472 # 80006110 <_ZZ12printIntegermE6digits+0x60>
    800032f0:	fffff097          	auipc	ra,0xfffff
    800032f4:	ecc080e7          	jalr	-308(ra) # 800021bc <_Z11printStringPKc>
    800032f8:	00048513          	mv	a0,s1
    800032fc:	fffff097          	auipc	ra,0xfffff
    80003300:	f04080e7          	jalr	-252(ra) # 80002200 <_Z12printIntegerm>
    80003304:	00003517          	auipc	a0,0x3
    80003308:	d6c50513          	addi	a0,a0,-660 # 80006070 <CONSOLE_STATUS+0x60>
    8000330c:	fffff097          	auipc	ra,0xfffff
    80003310:	eb0080e7          	jalr	-336(ra) # 800021bc <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003314:	0014849b          	addiw	s1,s1,1
    80003318:	0ff4f493          	andi	s1,s1,255
    8000331c:	00f00793          	li	a5,15
    80003320:	fc97f4e3          	bgeu	a5,s1,800032e8 <_ZL11workerBodyDPv+0xb8>
    }

    printString("D finished!\n");
    80003324:	00003517          	auipc	a0,0x3
    80003328:	e1450513          	addi	a0,a0,-492 # 80006138 <_ZZ12printIntegermE6digits+0x88>
    8000332c:	fffff097          	auipc	ra,0xfffff
    80003330:	e90080e7          	jalr	-368(ra) # 800021bc <_Z11printStringPKc>
    finishedD = true;
    80003334:	00100793          	li	a5,1
    80003338:	00004717          	auipc	a4,0x4
    8000333c:	06f70423          	sb	a5,104(a4) # 800073a0 <_ZL9finishedD>
    thread_dispatch();
    80003340:	ffffe097          	auipc	ra,0xffffe
    80003344:	f24080e7          	jalr	-220(ra) # 80001264 <_Z15thread_dispatchv>
}
    80003348:	01813083          	ld	ra,24(sp)
    8000334c:	01013403          	ld	s0,16(sp)
    80003350:	00813483          	ld	s1,8(sp)
    80003354:	00013903          	ld	s2,0(sp)
    80003358:	02010113          	addi	sp,sp,32
    8000335c:	00008067          	ret

0000000080003360 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80003360:	fe010113          	addi	sp,sp,-32
    80003364:	00113c23          	sd	ra,24(sp)
    80003368:	00813823          	sd	s0,16(sp)
    8000336c:	00913423          	sd	s1,8(sp)
    80003370:	01213023          	sd	s2,0(sp)
    80003374:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003378:	00000493          	li	s1,0
    8000337c:	0380006f          	j	800033b4 <_ZL11workerBodyCPv+0x54>
        printString("C: i="); printInteger(i); printString("\n");
    80003380:	00003517          	auipc	a0,0x3
    80003384:	d5050513          	addi	a0,a0,-688 # 800060d0 <_ZZ12printIntegermE6digits+0x20>
    80003388:	fffff097          	auipc	ra,0xfffff
    8000338c:	e34080e7          	jalr	-460(ra) # 800021bc <_Z11printStringPKc>
    80003390:	00048513          	mv	a0,s1
    80003394:	fffff097          	auipc	ra,0xfffff
    80003398:	e6c080e7          	jalr	-404(ra) # 80002200 <_Z12printIntegerm>
    8000339c:	00003517          	auipc	a0,0x3
    800033a0:	cd450513          	addi	a0,a0,-812 # 80006070 <CONSOLE_STATUS+0x60>
    800033a4:	fffff097          	auipc	ra,0xfffff
    800033a8:	e18080e7          	jalr	-488(ra) # 800021bc <_Z11printStringPKc>
    for (; i < 3; i++) {
    800033ac:	0014849b          	addiw	s1,s1,1
    800033b0:	0ff4f493          	andi	s1,s1,255
    800033b4:	00200793          	li	a5,2
    800033b8:	fc97f4e3          	bgeu	a5,s1,80003380 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    800033bc:	00003517          	auipc	a0,0x3
    800033c0:	d1c50513          	addi	a0,a0,-740 # 800060d8 <_ZZ12printIntegermE6digits+0x28>
    800033c4:	fffff097          	auipc	ra,0xfffff
    800033c8:	df8080e7          	jalr	-520(ra) # 800021bc <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800033cc:	00700313          	li	t1,7
    thread_dispatch();
    800033d0:	ffffe097          	auipc	ra,0xffffe
    800033d4:	e94080e7          	jalr	-364(ra) # 80001264 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800033d8:	00030913          	mv	s2,t1
    printString("C: t1="); printInteger(t1); printString("\n");
    800033dc:	00003517          	auipc	a0,0x3
    800033e0:	d0c50513          	addi	a0,a0,-756 # 800060e8 <_ZZ12printIntegermE6digits+0x38>
    800033e4:	fffff097          	auipc	ra,0xfffff
    800033e8:	dd8080e7          	jalr	-552(ra) # 800021bc <_Z11printStringPKc>
    800033ec:	00090513          	mv	a0,s2
    800033f0:	fffff097          	auipc	ra,0xfffff
    800033f4:	e10080e7          	jalr	-496(ra) # 80002200 <_Z12printIntegerm>
    800033f8:	00003517          	auipc	a0,0x3
    800033fc:	c7850513          	addi	a0,a0,-904 # 80006070 <CONSOLE_STATUS+0x60>
    80003400:	fffff097          	auipc	ra,0xfffff
    80003404:	dbc080e7          	jalr	-580(ra) # 800021bc <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80003408:	00c00513          	li	a0,12
    8000340c:	00000097          	auipc	ra,0x0
    80003410:	db0080e7          	jalr	-592(ra) # 800031bc <_ZL9fibonaccim>
    80003414:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInteger(result); printString("\n");
    80003418:	00003517          	auipc	a0,0x3
    8000341c:	cd850513          	addi	a0,a0,-808 # 800060f0 <_ZZ12printIntegermE6digits+0x40>
    80003420:	fffff097          	auipc	ra,0xfffff
    80003424:	d9c080e7          	jalr	-612(ra) # 800021bc <_Z11printStringPKc>
    80003428:	00090513          	mv	a0,s2
    8000342c:	fffff097          	auipc	ra,0xfffff
    80003430:	dd4080e7          	jalr	-556(ra) # 80002200 <_Z12printIntegerm>
    80003434:	00003517          	auipc	a0,0x3
    80003438:	c3c50513          	addi	a0,a0,-964 # 80006070 <CONSOLE_STATUS+0x60>
    8000343c:	fffff097          	auipc	ra,0xfffff
    80003440:	d80080e7          	jalr	-640(ra) # 800021bc <_Z11printStringPKc>
    80003444:	0380006f          	j	8000347c <_ZL11workerBodyCPv+0x11c>
        printString("C: i="); printInteger(i); printString("\n");
    80003448:	00003517          	auipc	a0,0x3
    8000344c:	c8850513          	addi	a0,a0,-888 # 800060d0 <_ZZ12printIntegermE6digits+0x20>
    80003450:	fffff097          	auipc	ra,0xfffff
    80003454:	d6c080e7          	jalr	-660(ra) # 800021bc <_Z11printStringPKc>
    80003458:	00048513          	mv	a0,s1
    8000345c:	fffff097          	auipc	ra,0xfffff
    80003460:	da4080e7          	jalr	-604(ra) # 80002200 <_Z12printIntegerm>
    80003464:	00003517          	auipc	a0,0x3
    80003468:	c0c50513          	addi	a0,a0,-1012 # 80006070 <CONSOLE_STATUS+0x60>
    8000346c:	fffff097          	auipc	ra,0xfffff
    80003470:	d50080e7          	jalr	-688(ra) # 800021bc <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003474:	0014849b          	addiw	s1,s1,1
    80003478:	0ff4f493          	andi	s1,s1,255
    8000347c:	00500793          	li	a5,5
    80003480:	fc97f4e3          	bgeu	a5,s1,80003448 <_ZL11workerBodyCPv+0xe8>
    printString("C finished!\n");
    80003484:	00003517          	auipc	a0,0x3
    80003488:	c7c50513          	addi	a0,a0,-900 # 80006100 <_ZZ12printIntegermE6digits+0x50>
    8000348c:	fffff097          	auipc	ra,0xfffff
    80003490:	d30080e7          	jalr	-720(ra) # 800021bc <_Z11printStringPKc>
    finishedC = true;
    80003494:	00100793          	li	a5,1
    80003498:	00004717          	auipc	a4,0x4
    8000349c:	f0f704a3          	sb	a5,-247(a4) # 800073a1 <_ZL9finishedC>
    thread_dispatch();
    800034a0:	ffffe097          	auipc	ra,0xffffe
    800034a4:	dc4080e7          	jalr	-572(ra) # 80001264 <_Z15thread_dispatchv>
}
    800034a8:	01813083          	ld	ra,24(sp)
    800034ac:	01013403          	ld	s0,16(sp)
    800034b0:	00813483          	ld	s1,8(sp)
    800034b4:	00013903          	ld	s2,0(sp)
    800034b8:	02010113          	addi	sp,sp,32
    800034bc:	00008067          	ret

00000000800034c0 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    800034c0:	fe010113          	addi	sp,sp,-32
    800034c4:	00113c23          	sd	ra,24(sp)
    800034c8:	00813823          	sd	s0,16(sp)
    800034cc:	00913423          	sd	s1,8(sp)
    800034d0:	01213023          	sd	s2,0(sp)
    800034d4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800034d8:	00000913          	li	s2,0
    800034dc:	0400006f          	j	8000351c <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    800034e0:	ffffe097          	auipc	ra,0xffffe
    800034e4:	d84080e7          	jalr	-636(ra) # 80001264 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800034e8:	00148493          	addi	s1,s1,1
    800034ec:	000027b7          	lui	a5,0x2
    800034f0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800034f4:	0097ee63          	bltu	a5,s1,80003510 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800034f8:	00000713          	li	a4,0
    800034fc:	000077b7          	lui	a5,0x7
    80003500:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003504:	fce7eee3          	bltu	a5,a4,800034e0 <_ZL11workerBodyBPv+0x20>
    80003508:	00170713          	addi	a4,a4,1
    8000350c:	ff1ff06f          	j	800034fc <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80003510:	00a00793          	li	a5,10
    80003514:	04f90263          	beq	s2,a5,80003558 <_ZL11workerBodyBPv+0x98>
    for (uint64 i = 0; i < 16; i++) {
    80003518:	00190913          	addi	s2,s2,1
    8000351c:	00f00793          	li	a5,15
    80003520:	0527e063          	bltu	a5,s2,80003560 <_ZL11workerBodyBPv+0xa0>
        printString("B: i="); printInteger(i); printString("\n");
    80003524:	00003517          	auipc	a0,0x3
    80003528:	ba450513          	addi	a0,a0,-1116 # 800060c8 <_ZZ12printIntegermE6digits+0x18>
    8000352c:	fffff097          	auipc	ra,0xfffff
    80003530:	c90080e7          	jalr	-880(ra) # 800021bc <_Z11printStringPKc>
    80003534:	00090513          	mv	a0,s2
    80003538:	fffff097          	auipc	ra,0xfffff
    8000353c:	cc8080e7          	jalr	-824(ra) # 80002200 <_Z12printIntegerm>
    80003540:	00003517          	auipc	a0,0x3
    80003544:	b3050513          	addi	a0,a0,-1232 # 80006070 <CONSOLE_STATUS+0x60>
    80003548:	fffff097          	auipc	ra,0xfffff
    8000354c:	c74080e7          	jalr	-908(ra) # 800021bc <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003550:	00000493          	li	s1,0
    80003554:	f99ff06f          	j	800034ec <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80003558:	14102ff3          	csrr	t6,sepc
    8000355c:	fbdff06f          	j	80003518 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80003560:	00003517          	auipc	a0,0x3
    80003564:	af050513          	addi	a0,a0,-1296 # 80006050 <CONSOLE_STATUS+0x40>
    80003568:	fffff097          	auipc	ra,0xfffff
    8000356c:	c54080e7          	jalr	-940(ra) # 800021bc <_Z11printStringPKc>
    finishedB = true;
    80003570:	00100793          	li	a5,1
    80003574:	00004717          	auipc	a4,0x4
    80003578:	e2f70723          	sb	a5,-466(a4) # 800073a2 <_ZL9finishedB>
    thread_dispatch();
    8000357c:	ffffe097          	auipc	ra,0xffffe
    80003580:	ce8080e7          	jalr	-792(ra) # 80001264 <_Z15thread_dispatchv>
}
    80003584:	01813083          	ld	ra,24(sp)
    80003588:	01013403          	ld	s0,16(sp)
    8000358c:	00813483          	ld	s1,8(sp)
    80003590:	00013903          	ld	s2,0(sp)
    80003594:	02010113          	addi	sp,sp,32
    80003598:	00008067          	ret

000000008000359c <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    8000359c:	fe010113          	addi	sp,sp,-32
    800035a0:	00113c23          	sd	ra,24(sp)
    800035a4:	00813823          	sd	s0,16(sp)
    800035a8:	00913423          	sd	s1,8(sp)
    800035ac:	01213023          	sd	s2,0(sp)
    800035b0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800035b4:	00000913          	li	s2,0
    800035b8:	0380006f          	j	800035f0 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    800035bc:	ffffe097          	auipc	ra,0xffffe
    800035c0:	ca8080e7          	jalr	-856(ra) # 80001264 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800035c4:	00148493          	addi	s1,s1,1
    800035c8:	000027b7          	lui	a5,0x2
    800035cc:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800035d0:	0097ee63          	bltu	a5,s1,800035ec <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800035d4:	00000713          	li	a4,0
    800035d8:	000077b7          	lui	a5,0x7
    800035dc:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800035e0:	fce7eee3          	bltu	a5,a4,800035bc <_ZL11workerBodyAPv+0x20>
    800035e4:	00170713          	addi	a4,a4,1
    800035e8:	ff1ff06f          	j	800035d8 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800035ec:	00190913          	addi	s2,s2,1
    800035f0:	00900793          	li	a5,9
    800035f4:	0327ec63          	bltu	a5,s2,8000362c <_ZL11workerBodyAPv+0x90>
        printString("A: i="); printInteger(i); printString("\n");
    800035f8:	00003517          	auipc	a0,0x3
    800035fc:	ac850513          	addi	a0,a0,-1336 # 800060c0 <_ZZ12printIntegermE6digits+0x10>
    80003600:	fffff097          	auipc	ra,0xfffff
    80003604:	bbc080e7          	jalr	-1092(ra) # 800021bc <_Z11printStringPKc>
    80003608:	00090513          	mv	a0,s2
    8000360c:	fffff097          	auipc	ra,0xfffff
    80003610:	bf4080e7          	jalr	-1036(ra) # 80002200 <_Z12printIntegerm>
    80003614:	00003517          	auipc	a0,0x3
    80003618:	a5c50513          	addi	a0,a0,-1444 # 80006070 <CONSOLE_STATUS+0x60>
    8000361c:	fffff097          	auipc	ra,0xfffff
    80003620:	ba0080e7          	jalr	-1120(ra) # 800021bc <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003624:	00000493          	li	s1,0
    80003628:	fa1ff06f          	j	800035c8 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    8000362c:	00003517          	auipc	a0,0x3
    80003630:	a0450513          	addi	a0,a0,-1532 # 80006030 <CONSOLE_STATUS+0x20>
    80003634:	fffff097          	auipc	ra,0xfffff
    80003638:	b88080e7          	jalr	-1144(ra) # 800021bc <_Z11printStringPKc>
    finishedA = true;
    8000363c:	00100793          	li	a5,1
    80003640:	00004717          	auipc	a4,0x4
    80003644:	d6f701a3          	sb	a5,-669(a4) # 800073a3 <_ZL9finishedA>
}
    80003648:	01813083          	ld	ra,24(sp)
    8000364c:	01013403          	ld	s0,16(sp)
    80003650:	00813483          	ld	s1,8(sp)
    80003654:	00013903          	ld	s2,0(sp)
    80003658:	02010113          	addi	sp,sp,32
    8000365c:	00008067          	ret

0000000080003660 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80003660:	fd010113          	addi	sp,sp,-48
    80003664:	02113423          	sd	ra,40(sp)
    80003668:	02813023          	sd	s0,32(sp)
    8000366c:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80003670:	00000613          	li	a2,0
    80003674:	00000597          	auipc	a1,0x0
    80003678:	f2858593          	addi	a1,a1,-216 # 8000359c <_ZL11workerBodyAPv>
    8000367c:	fd040513          	addi	a0,s0,-48
    80003680:	ffffe097          	auipc	ra,0xffffe
    80003684:	b80080e7          	jalr	-1152(ra) # 80001200 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80003688:	00003517          	auipc	a0,0x3
    8000368c:	ac050513          	addi	a0,a0,-1344 # 80006148 <_ZZ12printIntegermE6digits+0x98>
    80003690:	fffff097          	auipc	ra,0xfffff
    80003694:	b2c080e7          	jalr	-1236(ra) # 800021bc <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80003698:	00000613          	li	a2,0
    8000369c:	00000597          	auipc	a1,0x0
    800036a0:	e2458593          	addi	a1,a1,-476 # 800034c0 <_ZL11workerBodyBPv>
    800036a4:	fd840513          	addi	a0,s0,-40
    800036a8:	ffffe097          	auipc	ra,0xffffe
    800036ac:	b58080e7          	jalr	-1192(ra) # 80001200 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    800036b0:	00003517          	auipc	a0,0x3
    800036b4:	ab050513          	addi	a0,a0,-1360 # 80006160 <_ZZ12printIntegermE6digits+0xb0>
    800036b8:	fffff097          	auipc	ra,0xfffff
    800036bc:	b04080e7          	jalr	-1276(ra) # 800021bc <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    800036c0:	00000613          	li	a2,0
    800036c4:	00000597          	auipc	a1,0x0
    800036c8:	c9c58593          	addi	a1,a1,-868 # 80003360 <_ZL11workerBodyCPv>
    800036cc:	fe040513          	addi	a0,s0,-32
    800036d0:	ffffe097          	auipc	ra,0xffffe
    800036d4:	b30080e7          	jalr	-1232(ra) # 80001200 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    800036d8:	00003517          	auipc	a0,0x3
    800036dc:	aa050513          	addi	a0,a0,-1376 # 80006178 <_ZZ12printIntegermE6digits+0xc8>
    800036e0:	fffff097          	auipc	ra,0xfffff
    800036e4:	adc080e7          	jalr	-1316(ra) # 800021bc <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    800036e8:	00000613          	li	a2,0
    800036ec:	00000597          	auipc	a1,0x0
    800036f0:	b4458593          	addi	a1,a1,-1212 # 80003230 <_ZL11workerBodyDPv>
    800036f4:	fe840513          	addi	a0,s0,-24
    800036f8:	ffffe097          	auipc	ra,0xffffe
    800036fc:	b08080e7          	jalr	-1272(ra) # 80001200 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80003700:	00003517          	auipc	a0,0x3
    80003704:	a9050513          	addi	a0,a0,-1392 # 80006190 <_ZZ12printIntegermE6digits+0xe0>
    80003708:	fffff097          	auipc	ra,0xfffff
    8000370c:	ab4080e7          	jalr	-1356(ra) # 800021bc <_Z11printStringPKc>
    80003710:	00c0006f          	j	8000371c <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80003714:	ffffe097          	auipc	ra,0xffffe
    80003718:	b50080e7          	jalr	-1200(ra) # 80001264 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    8000371c:	00004797          	auipc	a5,0x4
    80003720:	c877c783          	lbu	a5,-889(a5) # 800073a3 <_ZL9finishedA>
    80003724:	fe0788e3          	beqz	a5,80003714 <_Z16System_Mode_testv+0xb4>
    80003728:	00004797          	auipc	a5,0x4
    8000372c:	c7a7c783          	lbu	a5,-902(a5) # 800073a2 <_ZL9finishedB>
    80003730:	fe0782e3          	beqz	a5,80003714 <_Z16System_Mode_testv+0xb4>
    80003734:	00004797          	auipc	a5,0x4
    80003738:	c6d7c783          	lbu	a5,-915(a5) # 800073a1 <_ZL9finishedC>
    8000373c:	fc078ce3          	beqz	a5,80003714 <_Z16System_Mode_testv+0xb4>
    80003740:	00004797          	auipc	a5,0x4
    80003744:	c607c783          	lbu	a5,-928(a5) # 800073a0 <_ZL9finishedD>
    80003748:	fc0786e3          	beqz	a5,80003714 <_Z16System_Mode_testv+0xb4>
    }

}
    8000374c:	02813083          	ld	ra,40(sp)
    80003750:	02013403          	ld	s0,32(sp)
    80003754:	03010113          	addi	sp,sp,48
    80003758:	00008067          	ret

000000008000375c <start>:
    8000375c:	ff010113          	addi	sp,sp,-16
    80003760:	00813423          	sd	s0,8(sp)
    80003764:	01010413          	addi	s0,sp,16
    80003768:	300027f3          	csrr	a5,mstatus
    8000376c:	ffffe737          	lui	a4,0xffffe
    80003770:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff61ef>
    80003774:	00e7f7b3          	and	a5,a5,a4
    80003778:	00001737          	lui	a4,0x1
    8000377c:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80003780:	00e7e7b3          	or	a5,a5,a4
    80003784:	30079073          	csrw	mstatus,a5
    80003788:	00000797          	auipc	a5,0x0
    8000378c:	16078793          	addi	a5,a5,352 # 800038e8 <system_main>
    80003790:	34179073          	csrw	mepc,a5
    80003794:	00000793          	li	a5,0
    80003798:	18079073          	csrw	satp,a5
    8000379c:	000107b7          	lui	a5,0x10
    800037a0:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800037a4:	30279073          	csrw	medeleg,a5
    800037a8:	30379073          	csrw	mideleg,a5
    800037ac:	104027f3          	csrr	a5,sie
    800037b0:	2227e793          	ori	a5,a5,546
    800037b4:	10479073          	csrw	sie,a5
    800037b8:	fff00793          	li	a5,-1
    800037bc:	00a7d793          	srli	a5,a5,0xa
    800037c0:	3b079073          	csrw	pmpaddr0,a5
    800037c4:	00f00793          	li	a5,15
    800037c8:	3a079073          	csrw	pmpcfg0,a5
    800037cc:	f14027f3          	csrr	a5,mhartid
    800037d0:	0200c737          	lui	a4,0x200c
    800037d4:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800037d8:	0007869b          	sext.w	a3,a5
    800037dc:	00269713          	slli	a4,a3,0x2
    800037e0:	000f4637          	lui	a2,0xf4
    800037e4:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800037e8:	00d70733          	add	a4,a4,a3
    800037ec:	0037979b          	slliw	a5,a5,0x3
    800037f0:	020046b7          	lui	a3,0x2004
    800037f4:	00d787b3          	add	a5,a5,a3
    800037f8:	00c585b3          	add	a1,a1,a2
    800037fc:	00371693          	slli	a3,a4,0x3
    80003800:	00004717          	auipc	a4,0x4
    80003804:	bb070713          	addi	a4,a4,-1104 # 800073b0 <timer_scratch>
    80003808:	00b7b023          	sd	a1,0(a5)
    8000380c:	00d70733          	add	a4,a4,a3
    80003810:	00f73c23          	sd	a5,24(a4)
    80003814:	02c73023          	sd	a2,32(a4)
    80003818:	34071073          	csrw	mscratch,a4
    8000381c:	00000797          	auipc	a5,0x0
    80003820:	6e478793          	addi	a5,a5,1764 # 80003f00 <timervec>
    80003824:	30579073          	csrw	mtvec,a5
    80003828:	300027f3          	csrr	a5,mstatus
    8000382c:	0087e793          	ori	a5,a5,8
    80003830:	30079073          	csrw	mstatus,a5
    80003834:	304027f3          	csrr	a5,mie
    80003838:	0807e793          	ori	a5,a5,128
    8000383c:	30479073          	csrw	mie,a5
    80003840:	f14027f3          	csrr	a5,mhartid
    80003844:	0007879b          	sext.w	a5,a5
    80003848:	00078213          	mv	tp,a5
    8000384c:	30200073          	mret
    80003850:	00813403          	ld	s0,8(sp)
    80003854:	01010113          	addi	sp,sp,16
    80003858:	00008067          	ret

000000008000385c <timerinit>:
    8000385c:	ff010113          	addi	sp,sp,-16
    80003860:	00813423          	sd	s0,8(sp)
    80003864:	01010413          	addi	s0,sp,16
    80003868:	f14027f3          	csrr	a5,mhartid
    8000386c:	0200c737          	lui	a4,0x200c
    80003870:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80003874:	0007869b          	sext.w	a3,a5
    80003878:	00269713          	slli	a4,a3,0x2
    8000387c:	000f4637          	lui	a2,0xf4
    80003880:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80003884:	00d70733          	add	a4,a4,a3
    80003888:	0037979b          	slliw	a5,a5,0x3
    8000388c:	020046b7          	lui	a3,0x2004
    80003890:	00d787b3          	add	a5,a5,a3
    80003894:	00c585b3          	add	a1,a1,a2
    80003898:	00371693          	slli	a3,a4,0x3
    8000389c:	00004717          	auipc	a4,0x4
    800038a0:	b1470713          	addi	a4,a4,-1260 # 800073b0 <timer_scratch>
    800038a4:	00b7b023          	sd	a1,0(a5)
    800038a8:	00d70733          	add	a4,a4,a3
    800038ac:	00f73c23          	sd	a5,24(a4)
    800038b0:	02c73023          	sd	a2,32(a4)
    800038b4:	34071073          	csrw	mscratch,a4
    800038b8:	00000797          	auipc	a5,0x0
    800038bc:	64878793          	addi	a5,a5,1608 # 80003f00 <timervec>
    800038c0:	30579073          	csrw	mtvec,a5
    800038c4:	300027f3          	csrr	a5,mstatus
    800038c8:	0087e793          	ori	a5,a5,8
    800038cc:	30079073          	csrw	mstatus,a5
    800038d0:	304027f3          	csrr	a5,mie
    800038d4:	0807e793          	ori	a5,a5,128
    800038d8:	30479073          	csrw	mie,a5
    800038dc:	00813403          	ld	s0,8(sp)
    800038e0:	01010113          	addi	sp,sp,16
    800038e4:	00008067          	ret

00000000800038e8 <system_main>:
    800038e8:	fe010113          	addi	sp,sp,-32
    800038ec:	00813823          	sd	s0,16(sp)
    800038f0:	00913423          	sd	s1,8(sp)
    800038f4:	00113c23          	sd	ra,24(sp)
    800038f8:	02010413          	addi	s0,sp,32
    800038fc:	00000097          	auipc	ra,0x0
    80003900:	0c4080e7          	jalr	196(ra) # 800039c0 <cpuid>
    80003904:	00004497          	auipc	s1,0x4
    80003908:	a2c48493          	addi	s1,s1,-1492 # 80007330 <started>
    8000390c:	02050263          	beqz	a0,80003930 <system_main+0x48>
    80003910:	0004a783          	lw	a5,0(s1)
    80003914:	0007879b          	sext.w	a5,a5
    80003918:	fe078ce3          	beqz	a5,80003910 <system_main+0x28>
    8000391c:	0ff0000f          	fence
    80003920:	00003517          	auipc	a0,0x3
    80003924:	91850513          	addi	a0,a0,-1768 # 80006238 <_ZZ12printIntegermE6digits+0x188>
    80003928:	00001097          	auipc	ra,0x1
    8000392c:	a74080e7          	jalr	-1420(ra) # 8000439c <panic>
    80003930:	00001097          	auipc	ra,0x1
    80003934:	9c8080e7          	jalr	-1592(ra) # 800042f8 <consoleinit>
    80003938:	00001097          	auipc	ra,0x1
    8000393c:	154080e7          	jalr	340(ra) # 80004a8c <printfinit>
    80003940:	00002517          	auipc	a0,0x2
    80003944:	73050513          	addi	a0,a0,1840 # 80006070 <CONSOLE_STATUS+0x60>
    80003948:	00001097          	auipc	ra,0x1
    8000394c:	ab0080e7          	jalr	-1360(ra) # 800043f8 <__printf>
    80003950:	00003517          	auipc	a0,0x3
    80003954:	8b850513          	addi	a0,a0,-1864 # 80006208 <_ZZ12printIntegermE6digits+0x158>
    80003958:	00001097          	auipc	ra,0x1
    8000395c:	aa0080e7          	jalr	-1376(ra) # 800043f8 <__printf>
    80003960:	00002517          	auipc	a0,0x2
    80003964:	71050513          	addi	a0,a0,1808 # 80006070 <CONSOLE_STATUS+0x60>
    80003968:	00001097          	auipc	ra,0x1
    8000396c:	a90080e7          	jalr	-1392(ra) # 800043f8 <__printf>
    80003970:	00001097          	auipc	ra,0x1
    80003974:	4a8080e7          	jalr	1192(ra) # 80004e18 <kinit>
    80003978:	00000097          	auipc	ra,0x0
    8000397c:	148080e7          	jalr	328(ra) # 80003ac0 <trapinit>
    80003980:	00000097          	auipc	ra,0x0
    80003984:	16c080e7          	jalr	364(ra) # 80003aec <trapinithart>
    80003988:	00000097          	auipc	ra,0x0
    8000398c:	5b8080e7          	jalr	1464(ra) # 80003f40 <plicinit>
    80003990:	00000097          	auipc	ra,0x0
    80003994:	5d8080e7          	jalr	1496(ra) # 80003f68 <plicinithart>
    80003998:	00000097          	auipc	ra,0x0
    8000399c:	078080e7          	jalr	120(ra) # 80003a10 <userinit>
    800039a0:	0ff0000f          	fence
    800039a4:	00100793          	li	a5,1
    800039a8:	00003517          	auipc	a0,0x3
    800039ac:	87850513          	addi	a0,a0,-1928 # 80006220 <_ZZ12printIntegermE6digits+0x170>
    800039b0:	00f4a023          	sw	a5,0(s1)
    800039b4:	00001097          	auipc	ra,0x1
    800039b8:	a44080e7          	jalr	-1468(ra) # 800043f8 <__printf>
    800039bc:	0000006f          	j	800039bc <system_main+0xd4>

00000000800039c0 <cpuid>:
    800039c0:	ff010113          	addi	sp,sp,-16
    800039c4:	00813423          	sd	s0,8(sp)
    800039c8:	01010413          	addi	s0,sp,16
    800039cc:	00020513          	mv	a0,tp
    800039d0:	00813403          	ld	s0,8(sp)
    800039d4:	0005051b          	sext.w	a0,a0
    800039d8:	01010113          	addi	sp,sp,16
    800039dc:	00008067          	ret

00000000800039e0 <mycpu>:
    800039e0:	ff010113          	addi	sp,sp,-16
    800039e4:	00813423          	sd	s0,8(sp)
    800039e8:	01010413          	addi	s0,sp,16
    800039ec:	00020793          	mv	a5,tp
    800039f0:	00813403          	ld	s0,8(sp)
    800039f4:	0007879b          	sext.w	a5,a5
    800039f8:	00779793          	slli	a5,a5,0x7
    800039fc:	00005517          	auipc	a0,0x5
    80003a00:	9e450513          	addi	a0,a0,-1564 # 800083e0 <cpus>
    80003a04:	00f50533          	add	a0,a0,a5
    80003a08:	01010113          	addi	sp,sp,16
    80003a0c:	00008067          	ret

0000000080003a10 <userinit>:
    80003a10:	ff010113          	addi	sp,sp,-16
    80003a14:	00813423          	sd	s0,8(sp)
    80003a18:	01010413          	addi	s0,sp,16
    80003a1c:	00813403          	ld	s0,8(sp)
    80003a20:	01010113          	addi	sp,sp,16
    80003a24:	ffffe317          	auipc	t1,0xffffe
    80003a28:	d0430067          	jr	-764(t1) # 80001728 <main>

0000000080003a2c <either_copyout>:
    80003a2c:	ff010113          	addi	sp,sp,-16
    80003a30:	00813023          	sd	s0,0(sp)
    80003a34:	00113423          	sd	ra,8(sp)
    80003a38:	01010413          	addi	s0,sp,16
    80003a3c:	02051663          	bnez	a0,80003a68 <either_copyout+0x3c>
    80003a40:	00058513          	mv	a0,a1
    80003a44:	00060593          	mv	a1,a2
    80003a48:	0006861b          	sext.w	a2,a3
    80003a4c:	00002097          	auipc	ra,0x2
    80003a50:	c58080e7          	jalr	-936(ra) # 800056a4 <__memmove>
    80003a54:	00813083          	ld	ra,8(sp)
    80003a58:	00013403          	ld	s0,0(sp)
    80003a5c:	00000513          	li	a0,0
    80003a60:	01010113          	addi	sp,sp,16
    80003a64:	00008067          	ret
    80003a68:	00002517          	auipc	a0,0x2
    80003a6c:	7f850513          	addi	a0,a0,2040 # 80006260 <_ZZ12printIntegermE6digits+0x1b0>
    80003a70:	00001097          	auipc	ra,0x1
    80003a74:	92c080e7          	jalr	-1748(ra) # 8000439c <panic>

0000000080003a78 <either_copyin>:
    80003a78:	ff010113          	addi	sp,sp,-16
    80003a7c:	00813023          	sd	s0,0(sp)
    80003a80:	00113423          	sd	ra,8(sp)
    80003a84:	01010413          	addi	s0,sp,16
    80003a88:	02059463          	bnez	a1,80003ab0 <either_copyin+0x38>
    80003a8c:	00060593          	mv	a1,a2
    80003a90:	0006861b          	sext.w	a2,a3
    80003a94:	00002097          	auipc	ra,0x2
    80003a98:	c10080e7          	jalr	-1008(ra) # 800056a4 <__memmove>
    80003a9c:	00813083          	ld	ra,8(sp)
    80003aa0:	00013403          	ld	s0,0(sp)
    80003aa4:	00000513          	li	a0,0
    80003aa8:	01010113          	addi	sp,sp,16
    80003aac:	00008067          	ret
    80003ab0:	00002517          	auipc	a0,0x2
    80003ab4:	7d850513          	addi	a0,a0,2008 # 80006288 <_ZZ12printIntegermE6digits+0x1d8>
    80003ab8:	00001097          	auipc	ra,0x1
    80003abc:	8e4080e7          	jalr	-1820(ra) # 8000439c <panic>

0000000080003ac0 <trapinit>:
    80003ac0:	ff010113          	addi	sp,sp,-16
    80003ac4:	00813423          	sd	s0,8(sp)
    80003ac8:	01010413          	addi	s0,sp,16
    80003acc:	00813403          	ld	s0,8(sp)
    80003ad0:	00002597          	auipc	a1,0x2
    80003ad4:	7e058593          	addi	a1,a1,2016 # 800062b0 <_ZZ12printIntegermE6digits+0x200>
    80003ad8:	00005517          	auipc	a0,0x5
    80003adc:	98850513          	addi	a0,a0,-1656 # 80008460 <tickslock>
    80003ae0:	01010113          	addi	sp,sp,16
    80003ae4:	00001317          	auipc	t1,0x1
    80003ae8:	5c430067          	jr	1476(t1) # 800050a8 <initlock>

0000000080003aec <trapinithart>:
    80003aec:	ff010113          	addi	sp,sp,-16
    80003af0:	00813423          	sd	s0,8(sp)
    80003af4:	01010413          	addi	s0,sp,16
    80003af8:	00000797          	auipc	a5,0x0
    80003afc:	2f878793          	addi	a5,a5,760 # 80003df0 <kernelvec>
    80003b00:	10579073          	csrw	stvec,a5
    80003b04:	00813403          	ld	s0,8(sp)
    80003b08:	01010113          	addi	sp,sp,16
    80003b0c:	00008067          	ret

0000000080003b10 <usertrap>:
    80003b10:	ff010113          	addi	sp,sp,-16
    80003b14:	00813423          	sd	s0,8(sp)
    80003b18:	01010413          	addi	s0,sp,16
    80003b1c:	00813403          	ld	s0,8(sp)
    80003b20:	01010113          	addi	sp,sp,16
    80003b24:	00008067          	ret

0000000080003b28 <usertrapret>:
    80003b28:	ff010113          	addi	sp,sp,-16
    80003b2c:	00813423          	sd	s0,8(sp)
    80003b30:	01010413          	addi	s0,sp,16
    80003b34:	00813403          	ld	s0,8(sp)
    80003b38:	01010113          	addi	sp,sp,16
    80003b3c:	00008067          	ret

0000000080003b40 <kerneltrap>:
    80003b40:	fe010113          	addi	sp,sp,-32
    80003b44:	00813823          	sd	s0,16(sp)
    80003b48:	00113c23          	sd	ra,24(sp)
    80003b4c:	00913423          	sd	s1,8(sp)
    80003b50:	02010413          	addi	s0,sp,32
    80003b54:	142025f3          	csrr	a1,scause
    80003b58:	100027f3          	csrr	a5,sstatus
    80003b5c:	0027f793          	andi	a5,a5,2
    80003b60:	10079c63          	bnez	a5,80003c78 <kerneltrap+0x138>
    80003b64:	142027f3          	csrr	a5,scause
    80003b68:	0207ce63          	bltz	a5,80003ba4 <kerneltrap+0x64>
    80003b6c:	00002517          	auipc	a0,0x2
    80003b70:	78c50513          	addi	a0,a0,1932 # 800062f8 <_ZZ12printIntegermE6digits+0x248>
    80003b74:	00001097          	auipc	ra,0x1
    80003b78:	884080e7          	jalr	-1916(ra) # 800043f8 <__printf>
    80003b7c:	141025f3          	csrr	a1,sepc
    80003b80:	14302673          	csrr	a2,stval
    80003b84:	00002517          	auipc	a0,0x2
    80003b88:	78450513          	addi	a0,a0,1924 # 80006308 <_ZZ12printIntegermE6digits+0x258>
    80003b8c:	00001097          	auipc	ra,0x1
    80003b90:	86c080e7          	jalr	-1940(ra) # 800043f8 <__printf>
    80003b94:	00002517          	auipc	a0,0x2
    80003b98:	78c50513          	addi	a0,a0,1932 # 80006320 <_ZZ12printIntegermE6digits+0x270>
    80003b9c:	00001097          	auipc	ra,0x1
    80003ba0:	800080e7          	jalr	-2048(ra) # 8000439c <panic>
    80003ba4:	0ff7f713          	andi	a4,a5,255
    80003ba8:	00900693          	li	a3,9
    80003bac:	04d70063          	beq	a4,a3,80003bec <kerneltrap+0xac>
    80003bb0:	fff00713          	li	a4,-1
    80003bb4:	03f71713          	slli	a4,a4,0x3f
    80003bb8:	00170713          	addi	a4,a4,1
    80003bbc:	fae798e3          	bne	a5,a4,80003b6c <kerneltrap+0x2c>
    80003bc0:	00000097          	auipc	ra,0x0
    80003bc4:	e00080e7          	jalr	-512(ra) # 800039c0 <cpuid>
    80003bc8:	06050663          	beqz	a0,80003c34 <kerneltrap+0xf4>
    80003bcc:	144027f3          	csrr	a5,sip
    80003bd0:	ffd7f793          	andi	a5,a5,-3
    80003bd4:	14479073          	csrw	sip,a5
    80003bd8:	01813083          	ld	ra,24(sp)
    80003bdc:	01013403          	ld	s0,16(sp)
    80003be0:	00813483          	ld	s1,8(sp)
    80003be4:	02010113          	addi	sp,sp,32
    80003be8:	00008067          	ret
    80003bec:	00000097          	auipc	ra,0x0
    80003bf0:	3c8080e7          	jalr	968(ra) # 80003fb4 <plic_claim>
    80003bf4:	00a00793          	li	a5,10
    80003bf8:	00050493          	mv	s1,a0
    80003bfc:	06f50863          	beq	a0,a5,80003c6c <kerneltrap+0x12c>
    80003c00:	fc050ce3          	beqz	a0,80003bd8 <kerneltrap+0x98>
    80003c04:	00050593          	mv	a1,a0
    80003c08:	00002517          	auipc	a0,0x2
    80003c0c:	6d050513          	addi	a0,a0,1744 # 800062d8 <_ZZ12printIntegermE6digits+0x228>
    80003c10:	00000097          	auipc	ra,0x0
    80003c14:	7e8080e7          	jalr	2024(ra) # 800043f8 <__printf>
    80003c18:	01013403          	ld	s0,16(sp)
    80003c1c:	01813083          	ld	ra,24(sp)
    80003c20:	00048513          	mv	a0,s1
    80003c24:	00813483          	ld	s1,8(sp)
    80003c28:	02010113          	addi	sp,sp,32
    80003c2c:	00000317          	auipc	t1,0x0
    80003c30:	3c030067          	jr	960(t1) # 80003fec <plic_complete>
    80003c34:	00005517          	auipc	a0,0x5
    80003c38:	82c50513          	addi	a0,a0,-2004 # 80008460 <tickslock>
    80003c3c:	00001097          	auipc	ra,0x1
    80003c40:	490080e7          	jalr	1168(ra) # 800050cc <acquire>
    80003c44:	00003717          	auipc	a4,0x3
    80003c48:	6f070713          	addi	a4,a4,1776 # 80007334 <ticks>
    80003c4c:	00072783          	lw	a5,0(a4)
    80003c50:	00005517          	auipc	a0,0x5
    80003c54:	81050513          	addi	a0,a0,-2032 # 80008460 <tickslock>
    80003c58:	0017879b          	addiw	a5,a5,1
    80003c5c:	00f72023          	sw	a5,0(a4)
    80003c60:	00001097          	auipc	ra,0x1
    80003c64:	538080e7          	jalr	1336(ra) # 80005198 <release>
    80003c68:	f65ff06f          	j	80003bcc <kerneltrap+0x8c>
    80003c6c:	00001097          	auipc	ra,0x1
    80003c70:	094080e7          	jalr	148(ra) # 80004d00 <uartintr>
    80003c74:	fa5ff06f          	j	80003c18 <kerneltrap+0xd8>
    80003c78:	00002517          	auipc	a0,0x2
    80003c7c:	64050513          	addi	a0,a0,1600 # 800062b8 <_ZZ12printIntegermE6digits+0x208>
    80003c80:	00000097          	auipc	ra,0x0
    80003c84:	71c080e7          	jalr	1820(ra) # 8000439c <panic>

0000000080003c88 <clockintr>:
    80003c88:	fe010113          	addi	sp,sp,-32
    80003c8c:	00813823          	sd	s0,16(sp)
    80003c90:	00913423          	sd	s1,8(sp)
    80003c94:	00113c23          	sd	ra,24(sp)
    80003c98:	02010413          	addi	s0,sp,32
    80003c9c:	00004497          	auipc	s1,0x4
    80003ca0:	7c448493          	addi	s1,s1,1988 # 80008460 <tickslock>
    80003ca4:	00048513          	mv	a0,s1
    80003ca8:	00001097          	auipc	ra,0x1
    80003cac:	424080e7          	jalr	1060(ra) # 800050cc <acquire>
    80003cb0:	00003717          	auipc	a4,0x3
    80003cb4:	68470713          	addi	a4,a4,1668 # 80007334 <ticks>
    80003cb8:	00072783          	lw	a5,0(a4)
    80003cbc:	01013403          	ld	s0,16(sp)
    80003cc0:	01813083          	ld	ra,24(sp)
    80003cc4:	00048513          	mv	a0,s1
    80003cc8:	0017879b          	addiw	a5,a5,1
    80003ccc:	00813483          	ld	s1,8(sp)
    80003cd0:	00f72023          	sw	a5,0(a4)
    80003cd4:	02010113          	addi	sp,sp,32
    80003cd8:	00001317          	auipc	t1,0x1
    80003cdc:	4c030067          	jr	1216(t1) # 80005198 <release>

0000000080003ce0 <devintr>:
    80003ce0:	142027f3          	csrr	a5,scause
    80003ce4:	00000513          	li	a0,0
    80003ce8:	0007c463          	bltz	a5,80003cf0 <devintr+0x10>
    80003cec:	00008067          	ret
    80003cf0:	fe010113          	addi	sp,sp,-32
    80003cf4:	00813823          	sd	s0,16(sp)
    80003cf8:	00113c23          	sd	ra,24(sp)
    80003cfc:	00913423          	sd	s1,8(sp)
    80003d00:	02010413          	addi	s0,sp,32
    80003d04:	0ff7f713          	andi	a4,a5,255
    80003d08:	00900693          	li	a3,9
    80003d0c:	04d70c63          	beq	a4,a3,80003d64 <devintr+0x84>
    80003d10:	fff00713          	li	a4,-1
    80003d14:	03f71713          	slli	a4,a4,0x3f
    80003d18:	00170713          	addi	a4,a4,1
    80003d1c:	00e78c63          	beq	a5,a4,80003d34 <devintr+0x54>
    80003d20:	01813083          	ld	ra,24(sp)
    80003d24:	01013403          	ld	s0,16(sp)
    80003d28:	00813483          	ld	s1,8(sp)
    80003d2c:	02010113          	addi	sp,sp,32
    80003d30:	00008067          	ret
    80003d34:	00000097          	auipc	ra,0x0
    80003d38:	c8c080e7          	jalr	-884(ra) # 800039c0 <cpuid>
    80003d3c:	06050663          	beqz	a0,80003da8 <devintr+0xc8>
    80003d40:	144027f3          	csrr	a5,sip
    80003d44:	ffd7f793          	andi	a5,a5,-3
    80003d48:	14479073          	csrw	sip,a5
    80003d4c:	01813083          	ld	ra,24(sp)
    80003d50:	01013403          	ld	s0,16(sp)
    80003d54:	00813483          	ld	s1,8(sp)
    80003d58:	00200513          	li	a0,2
    80003d5c:	02010113          	addi	sp,sp,32
    80003d60:	00008067          	ret
    80003d64:	00000097          	auipc	ra,0x0
    80003d68:	250080e7          	jalr	592(ra) # 80003fb4 <plic_claim>
    80003d6c:	00a00793          	li	a5,10
    80003d70:	00050493          	mv	s1,a0
    80003d74:	06f50663          	beq	a0,a5,80003de0 <devintr+0x100>
    80003d78:	00100513          	li	a0,1
    80003d7c:	fa0482e3          	beqz	s1,80003d20 <devintr+0x40>
    80003d80:	00048593          	mv	a1,s1
    80003d84:	00002517          	auipc	a0,0x2
    80003d88:	55450513          	addi	a0,a0,1364 # 800062d8 <_ZZ12printIntegermE6digits+0x228>
    80003d8c:	00000097          	auipc	ra,0x0
    80003d90:	66c080e7          	jalr	1644(ra) # 800043f8 <__printf>
    80003d94:	00048513          	mv	a0,s1
    80003d98:	00000097          	auipc	ra,0x0
    80003d9c:	254080e7          	jalr	596(ra) # 80003fec <plic_complete>
    80003da0:	00100513          	li	a0,1
    80003da4:	f7dff06f          	j	80003d20 <devintr+0x40>
    80003da8:	00004517          	auipc	a0,0x4
    80003dac:	6b850513          	addi	a0,a0,1720 # 80008460 <tickslock>
    80003db0:	00001097          	auipc	ra,0x1
    80003db4:	31c080e7          	jalr	796(ra) # 800050cc <acquire>
    80003db8:	00003717          	auipc	a4,0x3
    80003dbc:	57c70713          	addi	a4,a4,1404 # 80007334 <ticks>
    80003dc0:	00072783          	lw	a5,0(a4)
    80003dc4:	00004517          	auipc	a0,0x4
    80003dc8:	69c50513          	addi	a0,a0,1692 # 80008460 <tickslock>
    80003dcc:	0017879b          	addiw	a5,a5,1
    80003dd0:	00f72023          	sw	a5,0(a4)
    80003dd4:	00001097          	auipc	ra,0x1
    80003dd8:	3c4080e7          	jalr	964(ra) # 80005198 <release>
    80003ddc:	f65ff06f          	j	80003d40 <devintr+0x60>
    80003de0:	00001097          	auipc	ra,0x1
    80003de4:	f20080e7          	jalr	-224(ra) # 80004d00 <uartintr>
    80003de8:	fadff06f          	j	80003d94 <devintr+0xb4>
    80003dec:	0000                	unimp
	...

0000000080003df0 <kernelvec>:
    80003df0:	f0010113          	addi	sp,sp,-256
    80003df4:	00113023          	sd	ra,0(sp)
    80003df8:	00213423          	sd	sp,8(sp)
    80003dfc:	00313823          	sd	gp,16(sp)
    80003e00:	00413c23          	sd	tp,24(sp)
    80003e04:	02513023          	sd	t0,32(sp)
    80003e08:	02613423          	sd	t1,40(sp)
    80003e0c:	02713823          	sd	t2,48(sp)
    80003e10:	02813c23          	sd	s0,56(sp)
    80003e14:	04913023          	sd	s1,64(sp)
    80003e18:	04a13423          	sd	a0,72(sp)
    80003e1c:	04b13823          	sd	a1,80(sp)
    80003e20:	04c13c23          	sd	a2,88(sp)
    80003e24:	06d13023          	sd	a3,96(sp)
    80003e28:	06e13423          	sd	a4,104(sp)
    80003e2c:	06f13823          	sd	a5,112(sp)
    80003e30:	07013c23          	sd	a6,120(sp)
    80003e34:	09113023          	sd	a7,128(sp)
    80003e38:	09213423          	sd	s2,136(sp)
    80003e3c:	09313823          	sd	s3,144(sp)
    80003e40:	09413c23          	sd	s4,152(sp)
    80003e44:	0b513023          	sd	s5,160(sp)
    80003e48:	0b613423          	sd	s6,168(sp)
    80003e4c:	0b713823          	sd	s7,176(sp)
    80003e50:	0b813c23          	sd	s8,184(sp)
    80003e54:	0d913023          	sd	s9,192(sp)
    80003e58:	0da13423          	sd	s10,200(sp)
    80003e5c:	0db13823          	sd	s11,208(sp)
    80003e60:	0dc13c23          	sd	t3,216(sp)
    80003e64:	0fd13023          	sd	t4,224(sp)
    80003e68:	0fe13423          	sd	t5,232(sp)
    80003e6c:	0ff13823          	sd	t6,240(sp)
    80003e70:	cd1ff0ef          	jal	ra,80003b40 <kerneltrap>
    80003e74:	00013083          	ld	ra,0(sp)
    80003e78:	00813103          	ld	sp,8(sp)
    80003e7c:	01013183          	ld	gp,16(sp)
    80003e80:	02013283          	ld	t0,32(sp)
    80003e84:	02813303          	ld	t1,40(sp)
    80003e88:	03013383          	ld	t2,48(sp)
    80003e8c:	03813403          	ld	s0,56(sp)
    80003e90:	04013483          	ld	s1,64(sp)
    80003e94:	04813503          	ld	a0,72(sp)
    80003e98:	05013583          	ld	a1,80(sp)
    80003e9c:	05813603          	ld	a2,88(sp)
    80003ea0:	06013683          	ld	a3,96(sp)
    80003ea4:	06813703          	ld	a4,104(sp)
    80003ea8:	07013783          	ld	a5,112(sp)
    80003eac:	07813803          	ld	a6,120(sp)
    80003eb0:	08013883          	ld	a7,128(sp)
    80003eb4:	08813903          	ld	s2,136(sp)
    80003eb8:	09013983          	ld	s3,144(sp)
    80003ebc:	09813a03          	ld	s4,152(sp)
    80003ec0:	0a013a83          	ld	s5,160(sp)
    80003ec4:	0a813b03          	ld	s6,168(sp)
    80003ec8:	0b013b83          	ld	s7,176(sp)
    80003ecc:	0b813c03          	ld	s8,184(sp)
    80003ed0:	0c013c83          	ld	s9,192(sp)
    80003ed4:	0c813d03          	ld	s10,200(sp)
    80003ed8:	0d013d83          	ld	s11,208(sp)
    80003edc:	0d813e03          	ld	t3,216(sp)
    80003ee0:	0e013e83          	ld	t4,224(sp)
    80003ee4:	0e813f03          	ld	t5,232(sp)
    80003ee8:	0f013f83          	ld	t6,240(sp)
    80003eec:	10010113          	addi	sp,sp,256
    80003ef0:	10200073          	sret
    80003ef4:	00000013          	nop
    80003ef8:	00000013          	nop
    80003efc:	00000013          	nop

0000000080003f00 <timervec>:
    80003f00:	34051573          	csrrw	a0,mscratch,a0
    80003f04:	00b53023          	sd	a1,0(a0)
    80003f08:	00c53423          	sd	a2,8(a0)
    80003f0c:	00d53823          	sd	a3,16(a0)
    80003f10:	01853583          	ld	a1,24(a0)
    80003f14:	02053603          	ld	a2,32(a0)
    80003f18:	0005b683          	ld	a3,0(a1)
    80003f1c:	00c686b3          	add	a3,a3,a2
    80003f20:	00d5b023          	sd	a3,0(a1)
    80003f24:	00200593          	li	a1,2
    80003f28:	14459073          	csrw	sip,a1
    80003f2c:	01053683          	ld	a3,16(a0)
    80003f30:	00853603          	ld	a2,8(a0)
    80003f34:	00053583          	ld	a1,0(a0)
    80003f38:	34051573          	csrrw	a0,mscratch,a0
    80003f3c:	30200073          	mret

0000000080003f40 <plicinit>:
    80003f40:	ff010113          	addi	sp,sp,-16
    80003f44:	00813423          	sd	s0,8(sp)
    80003f48:	01010413          	addi	s0,sp,16
    80003f4c:	00813403          	ld	s0,8(sp)
    80003f50:	0c0007b7          	lui	a5,0xc000
    80003f54:	00100713          	li	a4,1
    80003f58:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80003f5c:	00e7a223          	sw	a4,4(a5)
    80003f60:	01010113          	addi	sp,sp,16
    80003f64:	00008067          	ret

0000000080003f68 <plicinithart>:
    80003f68:	ff010113          	addi	sp,sp,-16
    80003f6c:	00813023          	sd	s0,0(sp)
    80003f70:	00113423          	sd	ra,8(sp)
    80003f74:	01010413          	addi	s0,sp,16
    80003f78:	00000097          	auipc	ra,0x0
    80003f7c:	a48080e7          	jalr	-1464(ra) # 800039c0 <cpuid>
    80003f80:	0085171b          	slliw	a4,a0,0x8
    80003f84:	0c0027b7          	lui	a5,0xc002
    80003f88:	00e787b3          	add	a5,a5,a4
    80003f8c:	40200713          	li	a4,1026
    80003f90:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80003f94:	00813083          	ld	ra,8(sp)
    80003f98:	00013403          	ld	s0,0(sp)
    80003f9c:	00d5151b          	slliw	a0,a0,0xd
    80003fa0:	0c2017b7          	lui	a5,0xc201
    80003fa4:	00a78533          	add	a0,a5,a0
    80003fa8:	00052023          	sw	zero,0(a0)
    80003fac:	01010113          	addi	sp,sp,16
    80003fb0:	00008067          	ret

0000000080003fb4 <plic_claim>:
    80003fb4:	ff010113          	addi	sp,sp,-16
    80003fb8:	00813023          	sd	s0,0(sp)
    80003fbc:	00113423          	sd	ra,8(sp)
    80003fc0:	01010413          	addi	s0,sp,16
    80003fc4:	00000097          	auipc	ra,0x0
    80003fc8:	9fc080e7          	jalr	-1540(ra) # 800039c0 <cpuid>
    80003fcc:	00813083          	ld	ra,8(sp)
    80003fd0:	00013403          	ld	s0,0(sp)
    80003fd4:	00d5151b          	slliw	a0,a0,0xd
    80003fd8:	0c2017b7          	lui	a5,0xc201
    80003fdc:	00a78533          	add	a0,a5,a0
    80003fe0:	00452503          	lw	a0,4(a0)
    80003fe4:	01010113          	addi	sp,sp,16
    80003fe8:	00008067          	ret

0000000080003fec <plic_complete>:
    80003fec:	fe010113          	addi	sp,sp,-32
    80003ff0:	00813823          	sd	s0,16(sp)
    80003ff4:	00913423          	sd	s1,8(sp)
    80003ff8:	00113c23          	sd	ra,24(sp)
    80003ffc:	02010413          	addi	s0,sp,32
    80004000:	00050493          	mv	s1,a0
    80004004:	00000097          	auipc	ra,0x0
    80004008:	9bc080e7          	jalr	-1604(ra) # 800039c0 <cpuid>
    8000400c:	01813083          	ld	ra,24(sp)
    80004010:	01013403          	ld	s0,16(sp)
    80004014:	00d5179b          	slliw	a5,a0,0xd
    80004018:	0c201737          	lui	a4,0xc201
    8000401c:	00f707b3          	add	a5,a4,a5
    80004020:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80004024:	00813483          	ld	s1,8(sp)
    80004028:	02010113          	addi	sp,sp,32
    8000402c:	00008067          	ret

0000000080004030 <consolewrite>:
    80004030:	fb010113          	addi	sp,sp,-80
    80004034:	04813023          	sd	s0,64(sp)
    80004038:	04113423          	sd	ra,72(sp)
    8000403c:	02913c23          	sd	s1,56(sp)
    80004040:	03213823          	sd	s2,48(sp)
    80004044:	03313423          	sd	s3,40(sp)
    80004048:	03413023          	sd	s4,32(sp)
    8000404c:	01513c23          	sd	s5,24(sp)
    80004050:	05010413          	addi	s0,sp,80
    80004054:	06c05c63          	blez	a2,800040cc <consolewrite+0x9c>
    80004058:	00060993          	mv	s3,a2
    8000405c:	00050a13          	mv	s4,a0
    80004060:	00058493          	mv	s1,a1
    80004064:	00000913          	li	s2,0
    80004068:	fff00a93          	li	s5,-1
    8000406c:	01c0006f          	j	80004088 <consolewrite+0x58>
    80004070:	fbf44503          	lbu	a0,-65(s0)
    80004074:	0019091b          	addiw	s2,s2,1
    80004078:	00148493          	addi	s1,s1,1
    8000407c:	00001097          	auipc	ra,0x1
    80004080:	a9c080e7          	jalr	-1380(ra) # 80004b18 <uartputc>
    80004084:	03298063          	beq	s3,s2,800040a4 <consolewrite+0x74>
    80004088:	00048613          	mv	a2,s1
    8000408c:	00100693          	li	a3,1
    80004090:	000a0593          	mv	a1,s4
    80004094:	fbf40513          	addi	a0,s0,-65
    80004098:	00000097          	auipc	ra,0x0
    8000409c:	9e0080e7          	jalr	-1568(ra) # 80003a78 <either_copyin>
    800040a0:	fd5518e3          	bne	a0,s5,80004070 <consolewrite+0x40>
    800040a4:	04813083          	ld	ra,72(sp)
    800040a8:	04013403          	ld	s0,64(sp)
    800040ac:	03813483          	ld	s1,56(sp)
    800040b0:	02813983          	ld	s3,40(sp)
    800040b4:	02013a03          	ld	s4,32(sp)
    800040b8:	01813a83          	ld	s5,24(sp)
    800040bc:	00090513          	mv	a0,s2
    800040c0:	03013903          	ld	s2,48(sp)
    800040c4:	05010113          	addi	sp,sp,80
    800040c8:	00008067          	ret
    800040cc:	00000913          	li	s2,0
    800040d0:	fd5ff06f          	j	800040a4 <consolewrite+0x74>

00000000800040d4 <consoleread>:
    800040d4:	f9010113          	addi	sp,sp,-112
    800040d8:	06813023          	sd	s0,96(sp)
    800040dc:	04913c23          	sd	s1,88(sp)
    800040e0:	05213823          	sd	s2,80(sp)
    800040e4:	05313423          	sd	s3,72(sp)
    800040e8:	05413023          	sd	s4,64(sp)
    800040ec:	03513c23          	sd	s5,56(sp)
    800040f0:	03613823          	sd	s6,48(sp)
    800040f4:	03713423          	sd	s7,40(sp)
    800040f8:	03813023          	sd	s8,32(sp)
    800040fc:	06113423          	sd	ra,104(sp)
    80004100:	01913c23          	sd	s9,24(sp)
    80004104:	07010413          	addi	s0,sp,112
    80004108:	00060b93          	mv	s7,a2
    8000410c:	00050913          	mv	s2,a0
    80004110:	00058c13          	mv	s8,a1
    80004114:	00060b1b          	sext.w	s6,a2
    80004118:	00004497          	auipc	s1,0x4
    8000411c:	37048493          	addi	s1,s1,880 # 80008488 <cons>
    80004120:	00400993          	li	s3,4
    80004124:	fff00a13          	li	s4,-1
    80004128:	00a00a93          	li	s5,10
    8000412c:	05705e63          	blez	s7,80004188 <consoleread+0xb4>
    80004130:	09c4a703          	lw	a4,156(s1)
    80004134:	0984a783          	lw	a5,152(s1)
    80004138:	0007071b          	sext.w	a4,a4
    8000413c:	08e78463          	beq	a5,a4,800041c4 <consoleread+0xf0>
    80004140:	07f7f713          	andi	a4,a5,127
    80004144:	00e48733          	add	a4,s1,a4
    80004148:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000414c:	0017869b          	addiw	a3,a5,1
    80004150:	08d4ac23          	sw	a3,152(s1)
    80004154:	00070c9b          	sext.w	s9,a4
    80004158:	0b370663          	beq	a4,s3,80004204 <consoleread+0x130>
    8000415c:	00100693          	li	a3,1
    80004160:	f9f40613          	addi	a2,s0,-97
    80004164:	000c0593          	mv	a1,s8
    80004168:	00090513          	mv	a0,s2
    8000416c:	f8e40fa3          	sb	a4,-97(s0)
    80004170:	00000097          	auipc	ra,0x0
    80004174:	8bc080e7          	jalr	-1860(ra) # 80003a2c <either_copyout>
    80004178:	01450863          	beq	a0,s4,80004188 <consoleread+0xb4>
    8000417c:	001c0c13          	addi	s8,s8,1
    80004180:	fffb8b9b          	addiw	s7,s7,-1
    80004184:	fb5c94e3          	bne	s9,s5,8000412c <consoleread+0x58>
    80004188:	000b851b          	sext.w	a0,s7
    8000418c:	06813083          	ld	ra,104(sp)
    80004190:	06013403          	ld	s0,96(sp)
    80004194:	05813483          	ld	s1,88(sp)
    80004198:	05013903          	ld	s2,80(sp)
    8000419c:	04813983          	ld	s3,72(sp)
    800041a0:	04013a03          	ld	s4,64(sp)
    800041a4:	03813a83          	ld	s5,56(sp)
    800041a8:	02813b83          	ld	s7,40(sp)
    800041ac:	02013c03          	ld	s8,32(sp)
    800041b0:	01813c83          	ld	s9,24(sp)
    800041b4:	40ab053b          	subw	a0,s6,a0
    800041b8:	03013b03          	ld	s6,48(sp)
    800041bc:	07010113          	addi	sp,sp,112
    800041c0:	00008067          	ret
    800041c4:	00001097          	auipc	ra,0x1
    800041c8:	1d8080e7          	jalr	472(ra) # 8000539c <push_on>
    800041cc:	0984a703          	lw	a4,152(s1)
    800041d0:	09c4a783          	lw	a5,156(s1)
    800041d4:	0007879b          	sext.w	a5,a5
    800041d8:	fef70ce3          	beq	a4,a5,800041d0 <consoleread+0xfc>
    800041dc:	00001097          	auipc	ra,0x1
    800041e0:	234080e7          	jalr	564(ra) # 80005410 <pop_on>
    800041e4:	0984a783          	lw	a5,152(s1)
    800041e8:	07f7f713          	andi	a4,a5,127
    800041ec:	00e48733          	add	a4,s1,a4
    800041f0:	01874703          	lbu	a4,24(a4)
    800041f4:	0017869b          	addiw	a3,a5,1
    800041f8:	08d4ac23          	sw	a3,152(s1)
    800041fc:	00070c9b          	sext.w	s9,a4
    80004200:	f5371ee3          	bne	a4,s3,8000415c <consoleread+0x88>
    80004204:	000b851b          	sext.w	a0,s7
    80004208:	f96bf2e3          	bgeu	s7,s6,8000418c <consoleread+0xb8>
    8000420c:	08f4ac23          	sw	a5,152(s1)
    80004210:	f7dff06f          	j	8000418c <consoleread+0xb8>

0000000080004214 <consputc>:
    80004214:	10000793          	li	a5,256
    80004218:	00f50663          	beq	a0,a5,80004224 <consputc+0x10>
    8000421c:	00001317          	auipc	t1,0x1
    80004220:	9f430067          	jr	-1548(t1) # 80004c10 <uartputc_sync>
    80004224:	ff010113          	addi	sp,sp,-16
    80004228:	00113423          	sd	ra,8(sp)
    8000422c:	00813023          	sd	s0,0(sp)
    80004230:	01010413          	addi	s0,sp,16
    80004234:	00800513          	li	a0,8
    80004238:	00001097          	auipc	ra,0x1
    8000423c:	9d8080e7          	jalr	-1576(ra) # 80004c10 <uartputc_sync>
    80004240:	02000513          	li	a0,32
    80004244:	00001097          	auipc	ra,0x1
    80004248:	9cc080e7          	jalr	-1588(ra) # 80004c10 <uartputc_sync>
    8000424c:	00013403          	ld	s0,0(sp)
    80004250:	00813083          	ld	ra,8(sp)
    80004254:	00800513          	li	a0,8
    80004258:	01010113          	addi	sp,sp,16
    8000425c:	00001317          	auipc	t1,0x1
    80004260:	9b430067          	jr	-1612(t1) # 80004c10 <uartputc_sync>

0000000080004264 <consoleintr>:
    80004264:	fe010113          	addi	sp,sp,-32
    80004268:	00813823          	sd	s0,16(sp)
    8000426c:	00913423          	sd	s1,8(sp)
    80004270:	01213023          	sd	s2,0(sp)
    80004274:	00113c23          	sd	ra,24(sp)
    80004278:	02010413          	addi	s0,sp,32
    8000427c:	00004917          	auipc	s2,0x4
    80004280:	20c90913          	addi	s2,s2,524 # 80008488 <cons>
    80004284:	00050493          	mv	s1,a0
    80004288:	00090513          	mv	a0,s2
    8000428c:	00001097          	auipc	ra,0x1
    80004290:	e40080e7          	jalr	-448(ra) # 800050cc <acquire>
    80004294:	02048c63          	beqz	s1,800042cc <consoleintr+0x68>
    80004298:	0a092783          	lw	a5,160(s2)
    8000429c:	09892703          	lw	a4,152(s2)
    800042a0:	07f00693          	li	a3,127
    800042a4:	40e7873b          	subw	a4,a5,a4
    800042a8:	02e6e263          	bltu	a3,a4,800042cc <consoleintr+0x68>
    800042ac:	00d00713          	li	a4,13
    800042b0:	04e48063          	beq	s1,a4,800042f0 <consoleintr+0x8c>
    800042b4:	07f7f713          	andi	a4,a5,127
    800042b8:	00e90733          	add	a4,s2,a4
    800042bc:	0017879b          	addiw	a5,a5,1
    800042c0:	0af92023          	sw	a5,160(s2)
    800042c4:	00970c23          	sb	s1,24(a4)
    800042c8:	08f92e23          	sw	a5,156(s2)
    800042cc:	01013403          	ld	s0,16(sp)
    800042d0:	01813083          	ld	ra,24(sp)
    800042d4:	00813483          	ld	s1,8(sp)
    800042d8:	00013903          	ld	s2,0(sp)
    800042dc:	00004517          	auipc	a0,0x4
    800042e0:	1ac50513          	addi	a0,a0,428 # 80008488 <cons>
    800042e4:	02010113          	addi	sp,sp,32
    800042e8:	00001317          	auipc	t1,0x1
    800042ec:	eb030067          	jr	-336(t1) # 80005198 <release>
    800042f0:	00a00493          	li	s1,10
    800042f4:	fc1ff06f          	j	800042b4 <consoleintr+0x50>

00000000800042f8 <consoleinit>:
    800042f8:	fe010113          	addi	sp,sp,-32
    800042fc:	00113c23          	sd	ra,24(sp)
    80004300:	00813823          	sd	s0,16(sp)
    80004304:	00913423          	sd	s1,8(sp)
    80004308:	02010413          	addi	s0,sp,32
    8000430c:	00004497          	auipc	s1,0x4
    80004310:	17c48493          	addi	s1,s1,380 # 80008488 <cons>
    80004314:	00048513          	mv	a0,s1
    80004318:	00002597          	auipc	a1,0x2
    8000431c:	01858593          	addi	a1,a1,24 # 80006330 <_ZZ12printIntegermE6digits+0x280>
    80004320:	00001097          	auipc	ra,0x1
    80004324:	d88080e7          	jalr	-632(ra) # 800050a8 <initlock>
    80004328:	00000097          	auipc	ra,0x0
    8000432c:	7ac080e7          	jalr	1964(ra) # 80004ad4 <uartinit>
    80004330:	01813083          	ld	ra,24(sp)
    80004334:	01013403          	ld	s0,16(sp)
    80004338:	00000797          	auipc	a5,0x0
    8000433c:	d9c78793          	addi	a5,a5,-612 # 800040d4 <consoleread>
    80004340:	0af4bc23          	sd	a5,184(s1)
    80004344:	00000797          	auipc	a5,0x0
    80004348:	cec78793          	addi	a5,a5,-788 # 80004030 <consolewrite>
    8000434c:	0cf4b023          	sd	a5,192(s1)
    80004350:	00813483          	ld	s1,8(sp)
    80004354:	02010113          	addi	sp,sp,32
    80004358:	00008067          	ret

000000008000435c <console_read>:
    8000435c:	ff010113          	addi	sp,sp,-16
    80004360:	00813423          	sd	s0,8(sp)
    80004364:	01010413          	addi	s0,sp,16
    80004368:	00813403          	ld	s0,8(sp)
    8000436c:	00004317          	auipc	t1,0x4
    80004370:	1d433303          	ld	t1,468(t1) # 80008540 <devsw+0x10>
    80004374:	01010113          	addi	sp,sp,16
    80004378:	00030067          	jr	t1

000000008000437c <console_write>:
    8000437c:	ff010113          	addi	sp,sp,-16
    80004380:	00813423          	sd	s0,8(sp)
    80004384:	01010413          	addi	s0,sp,16
    80004388:	00813403          	ld	s0,8(sp)
    8000438c:	00004317          	auipc	t1,0x4
    80004390:	1bc33303          	ld	t1,444(t1) # 80008548 <devsw+0x18>
    80004394:	01010113          	addi	sp,sp,16
    80004398:	00030067          	jr	t1

000000008000439c <panic>:
    8000439c:	fe010113          	addi	sp,sp,-32
    800043a0:	00113c23          	sd	ra,24(sp)
    800043a4:	00813823          	sd	s0,16(sp)
    800043a8:	00913423          	sd	s1,8(sp)
    800043ac:	02010413          	addi	s0,sp,32
    800043b0:	00050493          	mv	s1,a0
    800043b4:	00002517          	auipc	a0,0x2
    800043b8:	f8450513          	addi	a0,a0,-124 # 80006338 <_ZZ12printIntegermE6digits+0x288>
    800043bc:	00004797          	auipc	a5,0x4
    800043c0:	2207a623          	sw	zero,556(a5) # 800085e8 <pr+0x18>
    800043c4:	00000097          	auipc	ra,0x0
    800043c8:	034080e7          	jalr	52(ra) # 800043f8 <__printf>
    800043cc:	00048513          	mv	a0,s1
    800043d0:	00000097          	auipc	ra,0x0
    800043d4:	028080e7          	jalr	40(ra) # 800043f8 <__printf>
    800043d8:	00002517          	auipc	a0,0x2
    800043dc:	c9850513          	addi	a0,a0,-872 # 80006070 <CONSOLE_STATUS+0x60>
    800043e0:	00000097          	auipc	ra,0x0
    800043e4:	018080e7          	jalr	24(ra) # 800043f8 <__printf>
    800043e8:	00100793          	li	a5,1
    800043ec:	00003717          	auipc	a4,0x3
    800043f0:	f4f72623          	sw	a5,-180(a4) # 80007338 <panicked>
    800043f4:	0000006f          	j	800043f4 <panic+0x58>

00000000800043f8 <__printf>:
    800043f8:	f3010113          	addi	sp,sp,-208
    800043fc:	08813023          	sd	s0,128(sp)
    80004400:	07313423          	sd	s3,104(sp)
    80004404:	09010413          	addi	s0,sp,144
    80004408:	05813023          	sd	s8,64(sp)
    8000440c:	08113423          	sd	ra,136(sp)
    80004410:	06913c23          	sd	s1,120(sp)
    80004414:	07213823          	sd	s2,112(sp)
    80004418:	07413023          	sd	s4,96(sp)
    8000441c:	05513c23          	sd	s5,88(sp)
    80004420:	05613823          	sd	s6,80(sp)
    80004424:	05713423          	sd	s7,72(sp)
    80004428:	03913c23          	sd	s9,56(sp)
    8000442c:	03a13823          	sd	s10,48(sp)
    80004430:	03b13423          	sd	s11,40(sp)
    80004434:	00004317          	auipc	t1,0x4
    80004438:	19c30313          	addi	t1,t1,412 # 800085d0 <pr>
    8000443c:	01832c03          	lw	s8,24(t1)
    80004440:	00b43423          	sd	a1,8(s0)
    80004444:	00c43823          	sd	a2,16(s0)
    80004448:	00d43c23          	sd	a3,24(s0)
    8000444c:	02e43023          	sd	a4,32(s0)
    80004450:	02f43423          	sd	a5,40(s0)
    80004454:	03043823          	sd	a6,48(s0)
    80004458:	03143c23          	sd	a7,56(s0)
    8000445c:	00050993          	mv	s3,a0
    80004460:	4a0c1663          	bnez	s8,8000490c <__printf+0x514>
    80004464:	60098c63          	beqz	s3,80004a7c <__printf+0x684>
    80004468:	0009c503          	lbu	a0,0(s3)
    8000446c:	00840793          	addi	a5,s0,8
    80004470:	f6f43c23          	sd	a5,-136(s0)
    80004474:	00000493          	li	s1,0
    80004478:	22050063          	beqz	a0,80004698 <__printf+0x2a0>
    8000447c:	00002a37          	lui	s4,0x2
    80004480:	00018ab7          	lui	s5,0x18
    80004484:	000f4b37          	lui	s6,0xf4
    80004488:	00989bb7          	lui	s7,0x989
    8000448c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80004490:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80004494:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80004498:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000449c:	00148c9b          	addiw	s9,s1,1
    800044a0:	02500793          	li	a5,37
    800044a4:	01998933          	add	s2,s3,s9
    800044a8:	38f51263          	bne	a0,a5,8000482c <__printf+0x434>
    800044ac:	00094783          	lbu	a5,0(s2)
    800044b0:	00078c9b          	sext.w	s9,a5
    800044b4:	1e078263          	beqz	a5,80004698 <__printf+0x2a0>
    800044b8:	0024849b          	addiw	s1,s1,2
    800044bc:	07000713          	li	a4,112
    800044c0:	00998933          	add	s2,s3,s1
    800044c4:	38e78a63          	beq	a5,a4,80004858 <__printf+0x460>
    800044c8:	20f76863          	bltu	a4,a5,800046d8 <__printf+0x2e0>
    800044cc:	42a78863          	beq	a5,a0,800048fc <__printf+0x504>
    800044d0:	06400713          	li	a4,100
    800044d4:	40e79663          	bne	a5,a4,800048e0 <__printf+0x4e8>
    800044d8:	f7843783          	ld	a5,-136(s0)
    800044dc:	0007a603          	lw	a2,0(a5)
    800044e0:	00878793          	addi	a5,a5,8
    800044e4:	f6f43c23          	sd	a5,-136(s0)
    800044e8:	42064a63          	bltz	a2,8000491c <__printf+0x524>
    800044ec:	00a00713          	li	a4,10
    800044f0:	02e677bb          	remuw	a5,a2,a4
    800044f4:	00002d97          	auipc	s11,0x2
    800044f8:	e6cd8d93          	addi	s11,s11,-404 # 80006360 <digits>
    800044fc:	00900593          	li	a1,9
    80004500:	0006051b          	sext.w	a0,a2
    80004504:	00000c93          	li	s9,0
    80004508:	02079793          	slli	a5,a5,0x20
    8000450c:	0207d793          	srli	a5,a5,0x20
    80004510:	00fd87b3          	add	a5,s11,a5
    80004514:	0007c783          	lbu	a5,0(a5)
    80004518:	02e656bb          	divuw	a3,a2,a4
    8000451c:	f8f40023          	sb	a5,-128(s0)
    80004520:	14c5d863          	bge	a1,a2,80004670 <__printf+0x278>
    80004524:	06300593          	li	a1,99
    80004528:	00100c93          	li	s9,1
    8000452c:	02e6f7bb          	remuw	a5,a3,a4
    80004530:	02079793          	slli	a5,a5,0x20
    80004534:	0207d793          	srli	a5,a5,0x20
    80004538:	00fd87b3          	add	a5,s11,a5
    8000453c:	0007c783          	lbu	a5,0(a5)
    80004540:	02e6d73b          	divuw	a4,a3,a4
    80004544:	f8f400a3          	sb	a5,-127(s0)
    80004548:	12a5f463          	bgeu	a1,a0,80004670 <__printf+0x278>
    8000454c:	00a00693          	li	a3,10
    80004550:	00900593          	li	a1,9
    80004554:	02d777bb          	remuw	a5,a4,a3
    80004558:	02079793          	slli	a5,a5,0x20
    8000455c:	0207d793          	srli	a5,a5,0x20
    80004560:	00fd87b3          	add	a5,s11,a5
    80004564:	0007c503          	lbu	a0,0(a5)
    80004568:	02d757bb          	divuw	a5,a4,a3
    8000456c:	f8a40123          	sb	a0,-126(s0)
    80004570:	48e5f263          	bgeu	a1,a4,800049f4 <__printf+0x5fc>
    80004574:	06300513          	li	a0,99
    80004578:	02d7f5bb          	remuw	a1,a5,a3
    8000457c:	02059593          	slli	a1,a1,0x20
    80004580:	0205d593          	srli	a1,a1,0x20
    80004584:	00bd85b3          	add	a1,s11,a1
    80004588:	0005c583          	lbu	a1,0(a1)
    8000458c:	02d7d7bb          	divuw	a5,a5,a3
    80004590:	f8b401a3          	sb	a1,-125(s0)
    80004594:	48e57263          	bgeu	a0,a4,80004a18 <__printf+0x620>
    80004598:	3e700513          	li	a0,999
    8000459c:	02d7f5bb          	remuw	a1,a5,a3
    800045a0:	02059593          	slli	a1,a1,0x20
    800045a4:	0205d593          	srli	a1,a1,0x20
    800045a8:	00bd85b3          	add	a1,s11,a1
    800045ac:	0005c583          	lbu	a1,0(a1)
    800045b0:	02d7d7bb          	divuw	a5,a5,a3
    800045b4:	f8b40223          	sb	a1,-124(s0)
    800045b8:	46e57663          	bgeu	a0,a4,80004a24 <__printf+0x62c>
    800045bc:	02d7f5bb          	remuw	a1,a5,a3
    800045c0:	02059593          	slli	a1,a1,0x20
    800045c4:	0205d593          	srli	a1,a1,0x20
    800045c8:	00bd85b3          	add	a1,s11,a1
    800045cc:	0005c583          	lbu	a1,0(a1)
    800045d0:	02d7d7bb          	divuw	a5,a5,a3
    800045d4:	f8b402a3          	sb	a1,-123(s0)
    800045d8:	46ea7863          	bgeu	s4,a4,80004a48 <__printf+0x650>
    800045dc:	02d7f5bb          	remuw	a1,a5,a3
    800045e0:	02059593          	slli	a1,a1,0x20
    800045e4:	0205d593          	srli	a1,a1,0x20
    800045e8:	00bd85b3          	add	a1,s11,a1
    800045ec:	0005c583          	lbu	a1,0(a1)
    800045f0:	02d7d7bb          	divuw	a5,a5,a3
    800045f4:	f8b40323          	sb	a1,-122(s0)
    800045f8:	3eeaf863          	bgeu	s5,a4,800049e8 <__printf+0x5f0>
    800045fc:	02d7f5bb          	remuw	a1,a5,a3
    80004600:	02059593          	slli	a1,a1,0x20
    80004604:	0205d593          	srli	a1,a1,0x20
    80004608:	00bd85b3          	add	a1,s11,a1
    8000460c:	0005c583          	lbu	a1,0(a1)
    80004610:	02d7d7bb          	divuw	a5,a5,a3
    80004614:	f8b403a3          	sb	a1,-121(s0)
    80004618:	42eb7e63          	bgeu	s6,a4,80004a54 <__printf+0x65c>
    8000461c:	02d7f5bb          	remuw	a1,a5,a3
    80004620:	02059593          	slli	a1,a1,0x20
    80004624:	0205d593          	srli	a1,a1,0x20
    80004628:	00bd85b3          	add	a1,s11,a1
    8000462c:	0005c583          	lbu	a1,0(a1)
    80004630:	02d7d7bb          	divuw	a5,a5,a3
    80004634:	f8b40423          	sb	a1,-120(s0)
    80004638:	42ebfc63          	bgeu	s7,a4,80004a70 <__printf+0x678>
    8000463c:	02079793          	slli	a5,a5,0x20
    80004640:	0207d793          	srli	a5,a5,0x20
    80004644:	00fd8db3          	add	s11,s11,a5
    80004648:	000dc703          	lbu	a4,0(s11)
    8000464c:	00a00793          	li	a5,10
    80004650:	00900c93          	li	s9,9
    80004654:	f8e404a3          	sb	a4,-119(s0)
    80004658:	00065c63          	bgez	a2,80004670 <__printf+0x278>
    8000465c:	f9040713          	addi	a4,s0,-112
    80004660:	00f70733          	add	a4,a4,a5
    80004664:	02d00693          	li	a3,45
    80004668:	fed70823          	sb	a3,-16(a4)
    8000466c:	00078c93          	mv	s9,a5
    80004670:	f8040793          	addi	a5,s0,-128
    80004674:	01978cb3          	add	s9,a5,s9
    80004678:	f7f40d13          	addi	s10,s0,-129
    8000467c:	000cc503          	lbu	a0,0(s9)
    80004680:	fffc8c93          	addi	s9,s9,-1
    80004684:	00000097          	auipc	ra,0x0
    80004688:	b90080e7          	jalr	-1136(ra) # 80004214 <consputc>
    8000468c:	ffac98e3          	bne	s9,s10,8000467c <__printf+0x284>
    80004690:	00094503          	lbu	a0,0(s2)
    80004694:	e00514e3          	bnez	a0,8000449c <__printf+0xa4>
    80004698:	1a0c1663          	bnez	s8,80004844 <__printf+0x44c>
    8000469c:	08813083          	ld	ra,136(sp)
    800046a0:	08013403          	ld	s0,128(sp)
    800046a4:	07813483          	ld	s1,120(sp)
    800046a8:	07013903          	ld	s2,112(sp)
    800046ac:	06813983          	ld	s3,104(sp)
    800046b0:	06013a03          	ld	s4,96(sp)
    800046b4:	05813a83          	ld	s5,88(sp)
    800046b8:	05013b03          	ld	s6,80(sp)
    800046bc:	04813b83          	ld	s7,72(sp)
    800046c0:	04013c03          	ld	s8,64(sp)
    800046c4:	03813c83          	ld	s9,56(sp)
    800046c8:	03013d03          	ld	s10,48(sp)
    800046cc:	02813d83          	ld	s11,40(sp)
    800046d0:	0d010113          	addi	sp,sp,208
    800046d4:	00008067          	ret
    800046d8:	07300713          	li	a4,115
    800046dc:	1ce78a63          	beq	a5,a4,800048b0 <__printf+0x4b8>
    800046e0:	07800713          	li	a4,120
    800046e4:	1ee79e63          	bne	a5,a4,800048e0 <__printf+0x4e8>
    800046e8:	f7843783          	ld	a5,-136(s0)
    800046ec:	0007a703          	lw	a4,0(a5)
    800046f0:	00878793          	addi	a5,a5,8
    800046f4:	f6f43c23          	sd	a5,-136(s0)
    800046f8:	28074263          	bltz	a4,8000497c <__printf+0x584>
    800046fc:	00002d97          	auipc	s11,0x2
    80004700:	c64d8d93          	addi	s11,s11,-924 # 80006360 <digits>
    80004704:	00f77793          	andi	a5,a4,15
    80004708:	00fd87b3          	add	a5,s11,a5
    8000470c:	0007c683          	lbu	a3,0(a5)
    80004710:	00f00613          	li	a2,15
    80004714:	0007079b          	sext.w	a5,a4
    80004718:	f8d40023          	sb	a3,-128(s0)
    8000471c:	0047559b          	srliw	a1,a4,0x4
    80004720:	0047569b          	srliw	a3,a4,0x4
    80004724:	00000c93          	li	s9,0
    80004728:	0ee65063          	bge	a2,a4,80004808 <__printf+0x410>
    8000472c:	00f6f693          	andi	a3,a3,15
    80004730:	00dd86b3          	add	a3,s11,a3
    80004734:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80004738:	0087d79b          	srliw	a5,a5,0x8
    8000473c:	00100c93          	li	s9,1
    80004740:	f8d400a3          	sb	a3,-127(s0)
    80004744:	0cb67263          	bgeu	a2,a1,80004808 <__printf+0x410>
    80004748:	00f7f693          	andi	a3,a5,15
    8000474c:	00dd86b3          	add	a3,s11,a3
    80004750:	0006c583          	lbu	a1,0(a3)
    80004754:	00f00613          	li	a2,15
    80004758:	0047d69b          	srliw	a3,a5,0x4
    8000475c:	f8b40123          	sb	a1,-126(s0)
    80004760:	0047d593          	srli	a1,a5,0x4
    80004764:	28f67e63          	bgeu	a2,a5,80004a00 <__printf+0x608>
    80004768:	00f6f693          	andi	a3,a3,15
    8000476c:	00dd86b3          	add	a3,s11,a3
    80004770:	0006c503          	lbu	a0,0(a3)
    80004774:	0087d813          	srli	a6,a5,0x8
    80004778:	0087d69b          	srliw	a3,a5,0x8
    8000477c:	f8a401a3          	sb	a0,-125(s0)
    80004780:	28b67663          	bgeu	a2,a1,80004a0c <__printf+0x614>
    80004784:	00f6f693          	andi	a3,a3,15
    80004788:	00dd86b3          	add	a3,s11,a3
    8000478c:	0006c583          	lbu	a1,0(a3)
    80004790:	00c7d513          	srli	a0,a5,0xc
    80004794:	00c7d69b          	srliw	a3,a5,0xc
    80004798:	f8b40223          	sb	a1,-124(s0)
    8000479c:	29067a63          	bgeu	a2,a6,80004a30 <__printf+0x638>
    800047a0:	00f6f693          	andi	a3,a3,15
    800047a4:	00dd86b3          	add	a3,s11,a3
    800047a8:	0006c583          	lbu	a1,0(a3)
    800047ac:	0107d813          	srli	a6,a5,0x10
    800047b0:	0107d69b          	srliw	a3,a5,0x10
    800047b4:	f8b402a3          	sb	a1,-123(s0)
    800047b8:	28a67263          	bgeu	a2,a0,80004a3c <__printf+0x644>
    800047bc:	00f6f693          	andi	a3,a3,15
    800047c0:	00dd86b3          	add	a3,s11,a3
    800047c4:	0006c683          	lbu	a3,0(a3)
    800047c8:	0147d79b          	srliw	a5,a5,0x14
    800047cc:	f8d40323          	sb	a3,-122(s0)
    800047d0:	21067663          	bgeu	a2,a6,800049dc <__printf+0x5e4>
    800047d4:	02079793          	slli	a5,a5,0x20
    800047d8:	0207d793          	srli	a5,a5,0x20
    800047dc:	00fd8db3          	add	s11,s11,a5
    800047e0:	000dc683          	lbu	a3,0(s11)
    800047e4:	00800793          	li	a5,8
    800047e8:	00700c93          	li	s9,7
    800047ec:	f8d403a3          	sb	a3,-121(s0)
    800047f0:	00075c63          	bgez	a4,80004808 <__printf+0x410>
    800047f4:	f9040713          	addi	a4,s0,-112
    800047f8:	00f70733          	add	a4,a4,a5
    800047fc:	02d00693          	li	a3,45
    80004800:	fed70823          	sb	a3,-16(a4)
    80004804:	00078c93          	mv	s9,a5
    80004808:	f8040793          	addi	a5,s0,-128
    8000480c:	01978cb3          	add	s9,a5,s9
    80004810:	f7f40d13          	addi	s10,s0,-129
    80004814:	000cc503          	lbu	a0,0(s9)
    80004818:	fffc8c93          	addi	s9,s9,-1
    8000481c:	00000097          	auipc	ra,0x0
    80004820:	9f8080e7          	jalr	-1544(ra) # 80004214 <consputc>
    80004824:	ff9d18e3          	bne	s10,s9,80004814 <__printf+0x41c>
    80004828:	0100006f          	j	80004838 <__printf+0x440>
    8000482c:	00000097          	auipc	ra,0x0
    80004830:	9e8080e7          	jalr	-1560(ra) # 80004214 <consputc>
    80004834:	000c8493          	mv	s1,s9
    80004838:	00094503          	lbu	a0,0(s2)
    8000483c:	c60510e3          	bnez	a0,8000449c <__printf+0xa4>
    80004840:	e40c0ee3          	beqz	s8,8000469c <__printf+0x2a4>
    80004844:	00004517          	auipc	a0,0x4
    80004848:	d8c50513          	addi	a0,a0,-628 # 800085d0 <pr>
    8000484c:	00001097          	auipc	ra,0x1
    80004850:	94c080e7          	jalr	-1716(ra) # 80005198 <release>
    80004854:	e49ff06f          	j	8000469c <__printf+0x2a4>
    80004858:	f7843783          	ld	a5,-136(s0)
    8000485c:	03000513          	li	a0,48
    80004860:	01000d13          	li	s10,16
    80004864:	00878713          	addi	a4,a5,8
    80004868:	0007bc83          	ld	s9,0(a5)
    8000486c:	f6e43c23          	sd	a4,-136(s0)
    80004870:	00000097          	auipc	ra,0x0
    80004874:	9a4080e7          	jalr	-1628(ra) # 80004214 <consputc>
    80004878:	07800513          	li	a0,120
    8000487c:	00000097          	auipc	ra,0x0
    80004880:	998080e7          	jalr	-1640(ra) # 80004214 <consputc>
    80004884:	00002d97          	auipc	s11,0x2
    80004888:	adcd8d93          	addi	s11,s11,-1316 # 80006360 <digits>
    8000488c:	03ccd793          	srli	a5,s9,0x3c
    80004890:	00fd87b3          	add	a5,s11,a5
    80004894:	0007c503          	lbu	a0,0(a5)
    80004898:	fffd0d1b          	addiw	s10,s10,-1
    8000489c:	004c9c93          	slli	s9,s9,0x4
    800048a0:	00000097          	auipc	ra,0x0
    800048a4:	974080e7          	jalr	-1676(ra) # 80004214 <consputc>
    800048a8:	fe0d12e3          	bnez	s10,8000488c <__printf+0x494>
    800048ac:	f8dff06f          	j	80004838 <__printf+0x440>
    800048b0:	f7843783          	ld	a5,-136(s0)
    800048b4:	0007bc83          	ld	s9,0(a5)
    800048b8:	00878793          	addi	a5,a5,8
    800048bc:	f6f43c23          	sd	a5,-136(s0)
    800048c0:	000c9a63          	bnez	s9,800048d4 <__printf+0x4dc>
    800048c4:	1080006f          	j	800049cc <__printf+0x5d4>
    800048c8:	001c8c93          	addi	s9,s9,1
    800048cc:	00000097          	auipc	ra,0x0
    800048d0:	948080e7          	jalr	-1720(ra) # 80004214 <consputc>
    800048d4:	000cc503          	lbu	a0,0(s9)
    800048d8:	fe0518e3          	bnez	a0,800048c8 <__printf+0x4d0>
    800048dc:	f5dff06f          	j	80004838 <__printf+0x440>
    800048e0:	02500513          	li	a0,37
    800048e4:	00000097          	auipc	ra,0x0
    800048e8:	930080e7          	jalr	-1744(ra) # 80004214 <consputc>
    800048ec:	000c8513          	mv	a0,s9
    800048f0:	00000097          	auipc	ra,0x0
    800048f4:	924080e7          	jalr	-1756(ra) # 80004214 <consputc>
    800048f8:	f41ff06f          	j	80004838 <__printf+0x440>
    800048fc:	02500513          	li	a0,37
    80004900:	00000097          	auipc	ra,0x0
    80004904:	914080e7          	jalr	-1772(ra) # 80004214 <consputc>
    80004908:	f31ff06f          	j	80004838 <__printf+0x440>
    8000490c:	00030513          	mv	a0,t1
    80004910:	00000097          	auipc	ra,0x0
    80004914:	7bc080e7          	jalr	1980(ra) # 800050cc <acquire>
    80004918:	b4dff06f          	j	80004464 <__printf+0x6c>
    8000491c:	40c0053b          	negw	a0,a2
    80004920:	00a00713          	li	a4,10
    80004924:	02e576bb          	remuw	a3,a0,a4
    80004928:	00002d97          	auipc	s11,0x2
    8000492c:	a38d8d93          	addi	s11,s11,-1480 # 80006360 <digits>
    80004930:	ff700593          	li	a1,-9
    80004934:	02069693          	slli	a3,a3,0x20
    80004938:	0206d693          	srli	a3,a3,0x20
    8000493c:	00dd86b3          	add	a3,s11,a3
    80004940:	0006c683          	lbu	a3,0(a3)
    80004944:	02e557bb          	divuw	a5,a0,a4
    80004948:	f8d40023          	sb	a3,-128(s0)
    8000494c:	10b65e63          	bge	a2,a1,80004a68 <__printf+0x670>
    80004950:	06300593          	li	a1,99
    80004954:	02e7f6bb          	remuw	a3,a5,a4
    80004958:	02069693          	slli	a3,a3,0x20
    8000495c:	0206d693          	srli	a3,a3,0x20
    80004960:	00dd86b3          	add	a3,s11,a3
    80004964:	0006c683          	lbu	a3,0(a3)
    80004968:	02e7d73b          	divuw	a4,a5,a4
    8000496c:	00200793          	li	a5,2
    80004970:	f8d400a3          	sb	a3,-127(s0)
    80004974:	bca5ece3          	bltu	a1,a0,8000454c <__printf+0x154>
    80004978:	ce5ff06f          	j	8000465c <__printf+0x264>
    8000497c:	40e007bb          	negw	a5,a4
    80004980:	00002d97          	auipc	s11,0x2
    80004984:	9e0d8d93          	addi	s11,s11,-1568 # 80006360 <digits>
    80004988:	00f7f693          	andi	a3,a5,15
    8000498c:	00dd86b3          	add	a3,s11,a3
    80004990:	0006c583          	lbu	a1,0(a3)
    80004994:	ff100613          	li	a2,-15
    80004998:	0047d69b          	srliw	a3,a5,0x4
    8000499c:	f8b40023          	sb	a1,-128(s0)
    800049a0:	0047d59b          	srliw	a1,a5,0x4
    800049a4:	0ac75e63          	bge	a4,a2,80004a60 <__printf+0x668>
    800049a8:	00f6f693          	andi	a3,a3,15
    800049ac:	00dd86b3          	add	a3,s11,a3
    800049b0:	0006c603          	lbu	a2,0(a3)
    800049b4:	00f00693          	li	a3,15
    800049b8:	0087d79b          	srliw	a5,a5,0x8
    800049bc:	f8c400a3          	sb	a2,-127(s0)
    800049c0:	d8b6e4e3          	bltu	a3,a1,80004748 <__printf+0x350>
    800049c4:	00200793          	li	a5,2
    800049c8:	e2dff06f          	j	800047f4 <__printf+0x3fc>
    800049cc:	00002c97          	auipc	s9,0x2
    800049d0:	974c8c93          	addi	s9,s9,-1676 # 80006340 <_ZZ12printIntegermE6digits+0x290>
    800049d4:	02800513          	li	a0,40
    800049d8:	ef1ff06f          	j	800048c8 <__printf+0x4d0>
    800049dc:	00700793          	li	a5,7
    800049e0:	00600c93          	li	s9,6
    800049e4:	e0dff06f          	j	800047f0 <__printf+0x3f8>
    800049e8:	00700793          	li	a5,7
    800049ec:	00600c93          	li	s9,6
    800049f0:	c69ff06f          	j	80004658 <__printf+0x260>
    800049f4:	00300793          	li	a5,3
    800049f8:	00200c93          	li	s9,2
    800049fc:	c5dff06f          	j	80004658 <__printf+0x260>
    80004a00:	00300793          	li	a5,3
    80004a04:	00200c93          	li	s9,2
    80004a08:	de9ff06f          	j	800047f0 <__printf+0x3f8>
    80004a0c:	00400793          	li	a5,4
    80004a10:	00300c93          	li	s9,3
    80004a14:	dddff06f          	j	800047f0 <__printf+0x3f8>
    80004a18:	00400793          	li	a5,4
    80004a1c:	00300c93          	li	s9,3
    80004a20:	c39ff06f          	j	80004658 <__printf+0x260>
    80004a24:	00500793          	li	a5,5
    80004a28:	00400c93          	li	s9,4
    80004a2c:	c2dff06f          	j	80004658 <__printf+0x260>
    80004a30:	00500793          	li	a5,5
    80004a34:	00400c93          	li	s9,4
    80004a38:	db9ff06f          	j	800047f0 <__printf+0x3f8>
    80004a3c:	00600793          	li	a5,6
    80004a40:	00500c93          	li	s9,5
    80004a44:	dadff06f          	j	800047f0 <__printf+0x3f8>
    80004a48:	00600793          	li	a5,6
    80004a4c:	00500c93          	li	s9,5
    80004a50:	c09ff06f          	j	80004658 <__printf+0x260>
    80004a54:	00800793          	li	a5,8
    80004a58:	00700c93          	li	s9,7
    80004a5c:	bfdff06f          	j	80004658 <__printf+0x260>
    80004a60:	00100793          	li	a5,1
    80004a64:	d91ff06f          	j	800047f4 <__printf+0x3fc>
    80004a68:	00100793          	li	a5,1
    80004a6c:	bf1ff06f          	j	8000465c <__printf+0x264>
    80004a70:	00900793          	li	a5,9
    80004a74:	00800c93          	li	s9,8
    80004a78:	be1ff06f          	j	80004658 <__printf+0x260>
    80004a7c:	00002517          	auipc	a0,0x2
    80004a80:	8cc50513          	addi	a0,a0,-1844 # 80006348 <_ZZ12printIntegermE6digits+0x298>
    80004a84:	00000097          	auipc	ra,0x0
    80004a88:	918080e7          	jalr	-1768(ra) # 8000439c <panic>

0000000080004a8c <printfinit>:
    80004a8c:	fe010113          	addi	sp,sp,-32
    80004a90:	00813823          	sd	s0,16(sp)
    80004a94:	00913423          	sd	s1,8(sp)
    80004a98:	00113c23          	sd	ra,24(sp)
    80004a9c:	02010413          	addi	s0,sp,32
    80004aa0:	00004497          	auipc	s1,0x4
    80004aa4:	b3048493          	addi	s1,s1,-1232 # 800085d0 <pr>
    80004aa8:	00048513          	mv	a0,s1
    80004aac:	00002597          	auipc	a1,0x2
    80004ab0:	8ac58593          	addi	a1,a1,-1876 # 80006358 <_ZZ12printIntegermE6digits+0x2a8>
    80004ab4:	00000097          	auipc	ra,0x0
    80004ab8:	5f4080e7          	jalr	1524(ra) # 800050a8 <initlock>
    80004abc:	01813083          	ld	ra,24(sp)
    80004ac0:	01013403          	ld	s0,16(sp)
    80004ac4:	0004ac23          	sw	zero,24(s1)
    80004ac8:	00813483          	ld	s1,8(sp)
    80004acc:	02010113          	addi	sp,sp,32
    80004ad0:	00008067          	ret

0000000080004ad4 <uartinit>:
    80004ad4:	ff010113          	addi	sp,sp,-16
    80004ad8:	00813423          	sd	s0,8(sp)
    80004adc:	01010413          	addi	s0,sp,16
    80004ae0:	100007b7          	lui	a5,0x10000
    80004ae4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80004ae8:	f8000713          	li	a4,-128
    80004aec:	00e781a3          	sb	a4,3(a5)
    80004af0:	00300713          	li	a4,3
    80004af4:	00e78023          	sb	a4,0(a5)
    80004af8:	000780a3          	sb	zero,1(a5)
    80004afc:	00e781a3          	sb	a4,3(a5)
    80004b00:	00700693          	li	a3,7
    80004b04:	00d78123          	sb	a3,2(a5)
    80004b08:	00e780a3          	sb	a4,1(a5)
    80004b0c:	00813403          	ld	s0,8(sp)
    80004b10:	01010113          	addi	sp,sp,16
    80004b14:	00008067          	ret

0000000080004b18 <uartputc>:
    80004b18:	00003797          	auipc	a5,0x3
    80004b1c:	8207a783          	lw	a5,-2016(a5) # 80007338 <panicked>
    80004b20:	00078463          	beqz	a5,80004b28 <uartputc+0x10>
    80004b24:	0000006f          	j	80004b24 <uartputc+0xc>
    80004b28:	fd010113          	addi	sp,sp,-48
    80004b2c:	02813023          	sd	s0,32(sp)
    80004b30:	00913c23          	sd	s1,24(sp)
    80004b34:	01213823          	sd	s2,16(sp)
    80004b38:	01313423          	sd	s3,8(sp)
    80004b3c:	02113423          	sd	ra,40(sp)
    80004b40:	03010413          	addi	s0,sp,48
    80004b44:	00002917          	auipc	s2,0x2
    80004b48:	7fc90913          	addi	s2,s2,2044 # 80007340 <uart_tx_r>
    80004b4c:	00093783          	ld	a5,0(s2)
    80004b50:	00002497          	auipc	s1,0x2
    80004b54:	7f848493          	addi	s1,s1,2040 # 80007348 <uart_tx_w>
    80004b58:	0004b703          	ld	a4,0(s1)
    80004b5c:	02078693          	addi	a3,a5,32
    80004b60:	00050993          	mv	s3,a0
    80004b64:	02e69c63          	bne	a3,a4,80004b9c <uartputc+0x84>
    80004b68:	00001097          	auipc	ra,0x1
    80004b6c:	834080e7          	jalr	-1996(ra) # 8000539c <push_on>
    80004b70:	00093783          	ld	a5,0(s2)
    80004b74:	0004b703          	ld	a4,0(s1)
    80004b78:	02078793          	addi	a5,a5,32
    80004b7c:	00e79463          	bne	a5,a4,80004b84 <uartputc+0x6c>
    80004b80:	0000006f          	j	80004b80 <uartputc+0x68>
    80004b84:	00001097          	auipc	ra,0x1
    80004b88:	88c080e7          	jalr	-1908(ra) # 80005410 <pop_on>
    80004b8c:	00093783          	ld	a5,0(s2)
    80004b90:	0004b703          	ld	a4,0(s1)
    80004b94:	02078693          	addi	a3,a5,32
    80004b98:	fce688e3          	beq	a3,a4,80004b68 <uartputc+0x50>
    80004b9c:	01f77693          	andi	a3,a4,31
    80004ba0:	00004597          	auipc	a1,0x4
    80004ba4:	a5058593          	addi	a1,a1,-1456 # 800085f0 <uart_tx_buf>
    80004ba8:	00d586b3          	add	a3,a1,a3
    80004bac:	00170713          	addi	a4,a4,1
    80004bb0:	01368023          	sb	s3,0(a3)
    80004bb4:	00e4b023          	sd	a4,0(s1)
    80004bb8:	10000637          	lui	a2,0x10000
    80004bbc:	02f71063          	bne	a4,a5,80004bdc <uartputc+0xc4>
    80004bc0:	0340006f          	j	80004bf4 <uartputc+0xdc>
    80004bc4:	00074703          	lbu	a4,0(a4)
    80004bc8:	00f93023          	sd	a5,0(s2)
    80004bcc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80004bd0:	00093783          	ld	a5,0(s2)
    80004bd4:	0004b703          	ld	a4,0(s1)
    80004bd8:	00f70e63          	beq	a4,a5,80004bf4 <uartputc+0xdc>
    80004bdc:	00564683          	lbu	a3,5(a2)
    80004be0:	01f7f713          	andi	a4,a5,31
    80004be4:	00e58733          	add	a4,a1,a4
    80004be8:	0206f693          	andi	a3,a3,32
    80004bec:	00178793          	addi	a5,a5,1
    80004bf0:	fc069ae3          	bnez	a3,80004bc4 <uartputc+0xac>
    80004bf4:	02813083          	ld	ra,40(sp)
    80004bf8:	02013403          	ld	s0,32(sp)
    80004bfc:	01813483          	ld	s1,24(sp)
    80004c00:	01013903          	ld	s2,16(sp)
    80004c04:	00813983          	ld	s3,8(sp)
    80004c08:	03010113          	addi	sp,sp,48
    80004c0c:	00008067          	ret

0000000080004c10 <uartputc_sync>:
    80004c10:	ff010113          	addi	sp,sp,-16
    80004c14:	00813423          	sd	s0,8(sp)
    80004c18:	01010413          	addi	s0,sp,16
    80004c1c:	00002717          	auipc	a4,0x2
    80004c20:	71c72703          	lw	a4,1820(a4) # 80007338 <panicked>
    80004c24:	02071663          	bnez	a4,80004c50 <uartputc_sync+0x40>
    80004c28:	00050793          	mv	a5,a0
    80004c2c:	100006b7          	lui	a3,0x10000
    80004c30:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80004c34:	02077713          	andi	a4,a4,32
    80004c38:	fe070ce3          	beqz	a4,80004c30 <uartputc_sync+0x20>
    80004c3c:	0ff7f793          	andi	a5,a5,255
    80004c40:	00f68023          	sb	a5,0(a3)
    80004c44:	00813403          	ld	s0,8(sp)
    80004c48:	01010113          	addi	sp,sp,16
    80004c4c:	00008067          	ret
    80004c50:	0000006f          	j	80004c50 <uartputc_sync+0x40>

0000000080004c54 <uartstart>:
    80004c54:	ff010113          	addi	sp,sp,-16
    80004c58:	00813423          	sd	s0,8(sp)
    80004c5c:	01010413          	addi	s0,sp,16
    80004c60:	00002617          	auipc	a2,0x2
    80004c64:	6e060613          	addi	a2,a2,1760 # 80007340 <uart_tx_r>
    80004c68:	00002517          	auipc	a0,0x2
    80004c6c:	6e050513          	addi	a0,a0,1760 # 80007348 <uart_tx_w>
    80004c70:	00063783          	ld	a5,0(a2)
    80004c74:	00053703          	ld	a4,0(a0)
    80004c78:	04f70263          	beq	a4,a5,80004cbc <uartstart+0x68>
    80004c7c:	100005b7          	lui	a1,0x10000
    80004c80:	00004817          	auipc	a6,0x4
    80004c84:	97080813          	addi	a6,a6,-1680 # 800085f0 <uart_tx_buf>
    80004c88:	01c0006f          	j	80004ca4 <uartstart+0x50>
    80004c8c:	0006c703          	lbu	a4,0(a3)
    80004c90:	00f63023          	sd	a5,0(a2)
    80004c94:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004c98:	00063783          	ld	a5,0(a2)
    80004c9c:	00053703          	ld	a4,0(a0)
    80004ca0:	00f70e63          	beq	a4,a5,80004cbc <uartstart+0x68>
    80004ca4:	01f7f713          	andi	a4,a5,31
    80004ca8:	00e806b3          	add	a3,a6,a4
    80004cac:	0055c703          	lbu	a4,5(a1)
    80004cb0:	00178793          	addi	a5,a5,1
    80004cb4:	02077713          	andi	a4,a4,32
    80004cb8:	fc071ae3          	bnez	a4,80004c8c <uartstart+0x38>
    80004cbc:	00813403          	ld	s0,8(sp)
    80004cc0:	01010113          	addi	sp,sp,16
    80004cc4:	00008067          	ret

0000000080004cc8 <uartgetc>:
    80004cc8:	ff010113          	addi	sp,sp,-16
    80004ccc:	00813423          	sd	s0,8(sp)
    80004cd0:	01010413          	addi	s0,sp,16
    80004cd4:	10000737          	lui	a4,0x10000
    80004cd8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80004cdc:	0017f793          	andi	a5,a5,1
    80004ce0:	00078c63          	beqz	a5,80004cf8 <uartgetc+0x30>
    80004ce4:	00074503          	lbu	a0,0(a4)
    80004ce8:	0ff57513          	andi	a0,a0,255
    80004cec:	00813403          	ld	s0,8(sp)
    80004cf0:	01010113          	addi	sp,sp,16
    80004cf4:	00008067          	ret
    80004cf8:	fff00513          	li	a0,-1
    80004cfc:	ff1ff06f          	j	80004cec <uartgetc+0x24>

0000000080004d00 <uartintr>:
    80004d00:	100007b7          	lui	a5,0x10000
    80004d04:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80004d08:	0017f793          	andi	a5,a5,1
    80004d0c:	0a078463          	beqz	a5,80004db4 <uartintr+0xb4>
    80004d10:	fe010113          	addi	sp,sp,-32
    80004d14:	00813823          	sd	s0,16(sp)
    80004d18:	00913423          	sd	s1,8(sp)
    80004d1c:	00113c23          	sd	ra,24(sp)
    80004d20:	02010413          	addi	s0,sp,32
    80004d24:	100004b7          	lui	s1,0x10000
    80004d28:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80004d2c:	0ff57513          	andi	a0,a0,255
    80004d30:	fffff097          	auipc	ra,0xfffff
    80004d34:	534080e7          	jalr	1332(ra) # 80004264 <consoleintr>
    80004d38:	0054c783          	lbu	a5,5(s1)
    80004d3c:	0017f793          	andi	a5,a5,1
    80004d40:	fe0794e3          	bnez	a5,80004d28 <uartintr+0x28>
    80004d44:	00002617          	auipc	a2,0x2
    80004d48:	5fc60613          	addi	a2,a2,1532 # 80007340 <uart_tx_r>
    80004d4c:	00002517          	auipc	a0,0x2
    80004d50:	5fc50513          	addi	a0,a0,1532 # 80007348 <uart_tx_w>
    80004d54:	00063783          	ld	a5,0(a2)
    80004d58:	00053703          	ld	a4,0(a0)
    80004d5c:	04f70263          	beq	a4,a5,80004da0 <uartintr+0xa0>
    80004d60:	100005b7          	lui	a1,0x10000
    80004d64:	00004817          	auipc	a6,0x4
    80004d68:	88c80813          	addi	a6,a6,-1908 # 800085f0 <uart_tx_buf>
    80004d6c:	01c0006f          	j	80004d88 <uartintr+0x88>
    80004d70:	0006c703          	lbu	a4,0(a3)
    80004d74:	00f63023          	sd	a5,0(a2)
    80004d78:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004d7c:	00063783          	ld	a5,0(a2)
    80004d80:	00053703          	ld	a4,0(a0)
    80004d84:	00f70e63          	beq	a4,a5,80004da0 <uartintr+0xa0>
    80004d88:	01f7f713          	andi	a4,a5,31
    80004d8c:	00e806b3          	add	a3,a6,a4
    80004d90:	0055c703          	lbu	a4,5(a1)
    80004d94:	00178793          	addi	a5,a5,1
    80004d98:	02077713          	andi	a4,a4,32
    80004d9c:	fc071ae3          	bnez	a4,80004d70 <uartintr+0x70>
    80004da0:	01813083          	ld	ra,24(sp)
    80004da4:	01013403          	ld	s0,16(sp)
    80004da8:	00813483          	ld	s1,8(sp)
    80004dac:	02010113          	addi	sp,sp,32
    80004db0:	00008067          	ret
    80004db4:	00002617          	auipc	a2,0x2
    80004db8:	58c60613          	addi	a2,a2,1420 # 80007340 <uart_tx_r>
    80004dbc:	00002517          	auipc	a0,0x2
    80004dc0:	58c50513          	addi	a0,a0,1420 # 80007348 <uart_tx_w>
    80004dc4:	00063783          	ld	a5,0(a2)
    80004dc8:	00053703          	ld	a4,0(a0)
    80004dcc:	04f70263          	beq	a4,a5,80004e10 <uartintr+0x110>
    80004dd0:	100005b7          	lui	a1,0x10000
    80004dd4:	00004817          	auipc	a6,0x4
    80004dd8:	81c80813          	addi	a6,a6,-2020 # 800085f0 <uart_tx_buf>
    80004ddc:	01c0006f          	j	80004df8 <uartintr+0xf8>
    80004de0:	0006c703          	lbu	a4,0(a3)
    80004de4:	00f63023          	sd	a5,0(a2)
    80004de8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004dec:	00063783          	ld	a5,0(a2)
    80004df0:	00053703          	ld	a4,0(a0)
    80004df4:	02f70063          	beq	a4,a5,80004e14 <uartintr+0x114>
    80004df8:	01f7f713          	andi	a4,a5,31
    80004dfc:	00e806b3          	add	a3,a6,a4
    80004e00:	0055c703          	lbu	a4,5(a1)
    80004e04:	00178793          	addi	a5,a5,1
    80004e08:	02077713          	andi	a4,a4,32
    80004e0c:	fc071ae3          	bnez	a4,80004de0 <uartintr+0xe0>
    80004e10:	00008067          	ret
    80004e14:	00008067          	ret

0000000080004e18 <kinit>:
    80004e18:	fc010113          	addi	sp,sp,-64
    80004e1c:	02913423          	sd	s1,40(sp)
    80004e20:	fffff7b7          	lui	a5,0xfffff
    80004e24:	00004497          	auipc	s1,0x4
    80004e28:	7eb48493          	addi	s1,s1,2027 # 8000960f <end+0xfff>
    80004e2c:	02813823          	sd	s0,48(sp)
    80004e30:	01313c23          	sd	s3,24(sp)
    80004e34:	00f4f4b3          	and	s1,s1,a5
    80004e38:	02113c23          	sd	ra,56(sp)
    80004e3c:	03213023          	sd	s2,32(sp)
    80004e40:	01413823          	sd	s4,16(sp)
    80004e44:	01513423          	sd	s5,8(sp)
    80004e48:	04010413          	addi	s0,sp,64
    80004e4c:	000017b7          	lui	a5,0x1
    80004e50:	01100993          	li	s3,17
    80004e54:	00f487b3          	add	a5,s1,a5
    80004e58:	01b99993          	slli	s3,s3,0x1b
    80004e5c:	06f9e063          	bltu	s3,a5,80004ebc <kinit+0xa4>
    80004e60:	00003a97          	auipc	s5,0x3
    80004e64:	7b0a8a93          	addi	s5,s5,1968 # 80008610 <end>
    80004e68:	0754ec63          	bltu	s1,s5,80004ee0 <kinit+0xc8>
    80004e6c:	0734fa63          	bgeu	s1,s3,80004ee0 <kinit+0xc8>
    80004e70:	00088a37          	lui	s4,0x88
    80004e74:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80004e78:	00002917          	auipc	s2,0x2
    80004e7c:	4d890913          	addi	s2,s2,1240 # 80007350 <kmem>
    80004e80:	00ca1a13          	slli	s4,s4,0xc
    80004e84:	0140006f          	j	80004e98 <kinit+0x80>
    80004e88:	000017b7          	lui	a5,0x1
    80004e8c:	00f484b3          	add	s1,s1,a5
    80004e90:	0554e863          	bltu	s1,s5,80004ee0 <kinit+0xc8>
    80004e94:	0534f663          	bgeu	s1,s3,80004ee0 <kinit+0xc8>
    80004e98:	00001637          	lui	a2,0x1
    80004e9c:	00100593          	li	a1,1
    80004ea0:	00048513          	mv	a0,s1
    80004ea4:	00000097          	auipc	ra,0x0
    80004ea8:	5e4080e7          	jalr	1508(ra) # 80005488 <__memset>
    80004eac:	00093783          	ld	a5,0(s2)
    80004eb0:	00f4b023          	sd	a5,0(s1)
    80004eb4:	00993023          	sd	s1,0(s2)
    80004eb8:	fd4498e3          	bne	s1,s4,80004e88 <kinit+0x70>
    80004ebc:	03813083          	ld	ra,56(sp)
    80004ec0:	03013403          	ld	s0,48(sp)
    80004ec4:	02813483          	ld	s1,40(sp)
    80004ec8:	02013903          	ld	s2,32(sp)
    80004ecc:	01813983          	ld	s3,24(sp)
    80004ed0:	01013a03          	ld	s4,16(sp)
    80004ed4:	00813a83          	ld	s5,8(sp)
    80004ed8:	04010113          	addi	sp,sp,64
    80004edc:	00008067          	ret
    80004ee0:	00001517          	auipc	a0,0x1
    80004ee4:	49850513          	addi	a0,a0,1176 # 80006378 <digits+0x18>
    80004ee8:	fffff097          	auipc	ra,0xfffff
    80004eec:	4b4080e7          	jalr	1204(ra) # 8000439c <panic>

0000000080004ef0 <freerange>:
    80004ef0:	fc010113          	addi	sp,sp,-64
    80004ef4:	000017b7          	lui	a5,0x1
    80004ef8:	02913423          	sd	s1,40(sp)
    80004efc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80004f00:	009504b3          	add	s1,a0,s1
    80004f04:	fffff537          	lui	a0,0xfffff
    80004f08:	02813823          	sd	s0,48(sp)
    80004f0c:	02113c23          	sd	ra,56(sp)
    80004f10:	03213023          	sd	s2,32(sp)
    80004f14:	01313c23          	sd	s3,24(sp)
    80004f18:	01413823          	sd	s4,16(sp)
    80004f1c:	01513423          	sd	s5,8(sp)
    80004f20:	01613023          	sd	s6,0(sp)
    80004f24:	04010413          	addi	s0,sp,64
    80004f28:	00a4f4b3          	and	s1,s1,a0
    80004f2c:	00f487b3          	add	a5,s1,a5
    80004f30:	06f5e463          	bltu	a1,a5,80004f98 <freerange+0xa8>
    80004f34:	00003a97          	auipc	s5,0x3
    80004f38:	6dca8a93          	addi	s5,s5,1756 # 80008610 <end>
    80004f3c:	0954e263          	bltu	s1,s5,80004fc0 <freerange+0xd0>
    80004f40:	01100993          	li	s3,17
    80004f44:	01b99993          	slli	s3,s3,0x1b
    80004f48:	0734fc63          	bgeu	s1,s3,80004fc0 <freerange+0xd0>
    80004f4c:	00058a13          	mv	s4,a1
    80004f50:	00002917          	auipc	s2,0x2
    80004f54:	40090913          	addi	s2,s2,1024 # 80007350 <kmem>
    80004f58:	00002b37          	lui	s6,0x2
    80004f5c:	0140006f          	j	80004f70 <freerange+0x80>
    80004f60:	000017b7          	lui	a5,0x1
    80004f64:	00f484b3          	add	s1,s1,a5
    80004f68:	0554ec63          	bltu	s1,s5,80004fc0 <freerange+0xd0>
    80004f6c:	0534fa63          	bgeu	s1,s3,80004fc0 <freerange+0xd0>
    80004f70:	00001637          	lui	a2,0x1
    80004f74:	00100593          	li	a1,1
    80004f78:	00048513          	mv	a0,s1
    80004f7c:	00000097          	auipc	ra,0x0
    80004f80:	50c080e7          	jalr	1292(ra) # 80005488 <__memset>
    80004f84:	00093703          	ld	a4,0(s2)
    80004f88:	016487b3          	add	a5,s1,s6
    80004f8c:	00e4b023          	sd	a4,0(s1)
    80004f90:	00993023          	sd	s1,0(s2)
    80004f94:	fcfa76e3          	bgeu	s4,a5,80004f60 <freerange+0x70>
    80004f98:	03813083          	ld	ra,56(sp)
    80004f9c:	03013403          	ld	s0,48(sp)
    80004fa0:	02813483          	ld	s1,40(sp)
    80004fa4:	02013903          	ld	s2,32(sp)
    80004fa8:	01813983          	ld	s3,24(sp)
    80004fac:	01013a03          	ld	s4,16(sp)
    80004fb0:	00813a83          	ld	s5,8(sp)
    80004fb4:	00013b03          	ld	s6,0(sp)
    80004fb8:	04010113          	addi	sp,sp,64
    80004fbc:	00008067          	ret
    80004fc0:	00001517          	auipc	a0,0x1
    80004fc4:	3b850513          	addi	a0,a0,952 # 80006378 <digits+0x18>
    80004fc8:	fffff097          	auipc	ra,0xfffff
    80004fcc:	3d4080e7          	jalr	980(ra) # 8000439c <panic>

0000000080004fd0 <kfree>:
    80004fd0:	fe010113          	addi	sp,sp,-32
    80004fd4:	00813823          	sd	s0,16(sp)
    80004fd8:	00113c23          	sd	ra,24(sp)
    80004fdc:	00913423          	sd	s1,8(sp)
    80004fe0:	02010413          	addi	s0,sp,32
    80004fe4:	03451793          	slli	a5,a0,0x34
    80004fe8:	04079c63          	bnez	a5,80005040 <kfree+0x70>
    80004fec:	00003797          	auipc	a5,0x3
    80004ff0:	62478793          	addi	a5,a5,1572 # 80008610 <end>
    80004ff4:	00050493          	mv	s1,a0
    80004ff8:	04f56463          	bltu	a0,a5,80005040 <kfree+0x70>
    80004ffc:	01100793          	li	a5,17
    80005000:	01b79793          	slli	a5,a5,0x1b
    80005004:	02f57e63          	bgeu	a0,a5,80005040 <kfree+0x70>
    80005008:	00001637          	lui	a2,0x1
    8000500c:	00100593          	li	a1,1
    80005010:	00000097          	auipc	ra,0x0
    80005014:	478080e7          	jalr	1144(ra) # 80005488 <__memset>
    80005018:	00002797          	auipc	a5,0x2
    8000501c:	33878793          	addi	a5,a5,824 # 80007350 <kmem>
    80005020:	0007b703          	ld	a4,0(a5)
    80005024:	01813083          	ld	ra,24(sp)
    80005028:	01013403          	ld	s0,16(sp)
    8000502c:	00e4b023          	sd	a4,0(s1)
    80005030:	0097b023          	sd	s1,0(a5)
    80005034:	00813483          	ld	s1,8(sp)
    80005038:	02010113          	addi	sp,sp,32
    8000503c:	00008067          	ret
    80005040:	00001517          	auipc	a0,0x1
    80005044:	33850513          	addi	a0,a0,824 # 80006378 <digits+0x18>
    80005048:	fffff097          	auipc	ra,0xfffff
    8000504c:	354080e7          	jalr	852(ra) # 8000439c <panic>

0000000080005050 <kalloc>:
    80005050:	fe010113          	addi	sp,sp,-32
    80005054:	00813823          	sd	s0,16(sp)
    80005058:	00913423          	sd	s1,8(sp)
    8000505c:	00113c23          	sd	ra,24(sp)
    80005060:	02010413          	addi	s0,sp,32
    80005064:	00002797          	auipc	a5,0x2
    80005068:	2ec78793          	addi	a5,a5,748 # 80007350 <kmem>
    8000506c:	0007b483          	ld	s1,0(a5)
    80005070:	02048063          	beqz	s1,80005090 <kalloc+0x40>
    80005074:	0004b703          	ld	a4,0(s1)
    80005078:	00001637          	lui	a2,0x1
    8000507c:	00500593          	li	a1,5
    80005080:	00048513          	mv	a0,s1
    80005084:	00e7b023          	sd	a4,0(a5)
    80005088:	00000097          	auipc	ra,0x0
    8000508c:	400080e7          	jalr	1024(ra) # 80005488 <__memset>
    80005090:	01813083          	ld	ra,24(sp)
    80005094:	01013403          	ld	s0,16(sp)
    80005098:	00048513          	mv	a0,s1
    8000509c:	00813483          	ld	s1,8(sp)
    800050a0:	02010113          	addi	sp,sp,32
    800050a4:	00008067          	ret

00000000800050a8 <initlock>:
    800050a8:	ff010113          	addi	sp,sp,-16
    800050ac:	00813423          	sd	s0,8(sp)
    800050b0:	01010413          	addi	s0,sp,16
    800050b4:	00813403          	ld	s0,8(sp)
    800050b8:	00b53423          	sd	a1,8(a0)
    800050bc:	00052023          	sw	zero,0(a0)
    800050c0:	00053823          	sd	zero,16(a0)
    800050c4:	01010113          	addi	sp,sp,16
    800050c8:	00008067          	ret

00000000800050cc <acquire>:
    800050cc:	fe010113          	addi	sp,sp,-32
    800050d0:	00813823          	sd	s0,16(sp)
    800050d4:	00913423          	sd	s1,8(sp)
    800050d8:	00113c23          	sd	ra,24(sp)
    800050dc:	01213023          	sd	s2,0(sp)
    800050e0:	02010413          	addi	s0,sp,32
    800050e4:	00050493          	mv	s1,a0
    800050e8:	10002973          	csrr	s2,sstatus
    800050ec:	100027f3          	csrr	a5,sstatus
    800050f0:	ffd7f793          	andi	a5,a5,-3
    800050f4:	10079073          	csrw	sstatus,a5
    800050f8:	fffff097          	auipc	ra,0xfffff
    800050fc:	8e8080e7          	jalr	-1816(ra) # 800039e0 <mycpu>
    80005100:	07852783          	lw	a5,120(a0)
    80005104:	06078e63          	beqz	a5,80005180 <acquire+0xb4>
    80005108:	fffff097          	auipc	ra,0xfffff
    8000510c:	8d8080e7          	jalr	-1832(ra) # 800039e0 <mycpu>
    80005110:	07852783          	lw	a5,120(a0)
    80005114:	0004a703          	lw	a4,0(s1)
    80005118:	0017879b          	addiw	a5,a5,1
    8000511c:	06f52c23          	sw	a5,120(a0)
    80005120:	04071063          	bnez	a4,80005160 <acquire+0x94>
    80005124:	00100713          	li	a4,1
    80005128:	00070793          	mv	a5,a4
    8000512c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80005130:	0007879b          	sext.w	a5,a5
    80005134:	fe079ae3          	bnez	a5,80005128 <acquire+0x5c>
    80005138:	0ff0000f          	fence
    8000513c:	fffff097          	auipc	ra,0xfffff
    80005140:	8a4080e7          	jalr	-1884(ra) # 800039e0 <mycpu>
    80005144:	01813083          	ld	ra,24(sp)
    80005148:	01013403          	ld	s0,16(sp)
    8000514c:	00a4b823          	sd	a0,16(s1)
    80005150:	00013903          	ld	s2,0(sp)
    80005154:	00813483          	ld	s1,8(sp)
    80005158:	02010113          	addi	sp,sp,32
    8000515c:	00008067          	ret
    80005160:	0104b903          	ld	s2,16(s1)
    80005164:	fffff097          	auipc	ra,0xfffff
    80005168:	87c080e7          	jalr	-1924(ra) # 800039e0 <mycpu>
    8000516c:	faa91ce3          	bne	s2,a0,80005124 <acquire+0x58>
    80005170:	00001517          	auipc	a0,0x1
    80005174:	21050513          	addi	a0,a0,528 # 80006380 <digits+0x20>
    80005178:	fffff097          	auipc	ra,0xfffff
    8000517c:	224080e7          	jalr	548(ra) # 8000439c <panic>
    80005180:	00195913          	srli	s2,s2,0x1
    80005184:	fffff097          	auipc	ra,0xfffff
    80005188:	85c080e7          	jalr	-1956(ra) # 800039e0 <mycpu>
    8000518c:	00197913          	andi	s2,s2,1
    80005190:	07252e23          	sw	s2,124(a0)
    80005194:	f75ff06f          	j	80005108 <acquire+0x3c>

0000000080005198 <release>:
    80005198:	fe010113          	addi	sp,sp,-32
    8000519c:	00813823          	sd	s0,16(sp)
    800051a0:	00113c23          	sd	ra,24(sp)
    800051a4:	00913423          	sd	s1,8(sp)
    800051a8:	01213023          	sd	s2,0(sp)
    800051ac:	02010413          	addi	s0,sp,32
    800051b0:	00052783          	lw	a5,0(a0)
    800051b4:	00079a63          	bnez	a5,800051c8 <release+0x30>
    800051b8:	00001517          	auipc	a0,0x1
    800051bc:	1d050513          	addi	a0,a0,464 # 80006388 <digits+0x28>
    800051c0:	fffff097          	auipc	ra,0xfffff
    800051c4:	1dc080e7          	jalr	476(ra) # 8000439c <panic>
    800051c8:	01053903          	ld	s2,16(a0)
    800051cc:	00050493          	mv	s1,a0
    800051d0:	fffff097          	auipc	ra,0xfffff
    800051d4:	810080e7          	jalr	-2032(ra) # 800039e0 <mycpu>
    800051d8:	fea910e3          	bne	s2,a0,800051b8 <release+0x20>
    800051dc:	0004b823          	sd	zero,16(s1)
    800051e0:	0ff0000f          	fence
    800051e4:	0f50000f          	fence	iorw,ow
    800051e8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800051ec:	ffffe097          	auipc	ra,0xffffe
    800051f0:	7f4080e7          	jalr	2036(ra) # 800039e0 <mycpu>
    800051f4:	100027f3          	csrr	a5,sstatus
    800051f8:	0027f793          	andi	a5,a5,2
    800051fc:	04079a63          	bnez	a5,80005250 <release+0xb8>
    80005200:	07852783          	lw	a5,120(a0)
    80005204:	02f05e63          	blez	a5,80005240 <release+0xa8>
    80005208:	fff7871b          	addiw	a4,a5,-1
    8000520c:	06e52c23          	sw	a4,120(a0)
    80005210:	00071c63          	bnez	a4,80005228 <release+0x90>
    80005214:	07c52783          	lw	a5,124(a0)
    80005218:	00078863          	beqz	a5,80005228 <release+0x90>
    8000521c:	100027f3          	csrr	a5,sstatus
    80005220:	0027e793          	ori	a5,a5,2
    80005224:	10079073          	csrw	sstatus,a5
    80005228:	01813083          	ld	ra,24(sp)
    8000522c:	01013403          	ld	s0,16(sp)
    80005230:	00813483          	ld	s1,8(sp)
    80005234:	00013903          	ld	s2,0(sp)
    80005238:	02010113          	addi	sp,sp,32
    8000523c:	00008067          	ret
    80005240:	00001517          	auipc	a0,0x1
    80005244:	16850513          	addi	a0,a0,360 # 800063a8 <digits+0x48>
    80005248:	fffff097          	auipc	ra,0xfffff
    8000524c:	154080e7          	jalr	340(ra) # 8000439c <panic>
    80005250:	00001517          	auipc	a0,0x1
    80005254:	14050513          	addi	a0,a0,320 # 80006390 <digits+0x30>
    80005258:	fffff097          	auipc	ra,0xfffff
    8000525c:	144080e7          	jalr	324(ra) # 8000439c <panic>

0000000080005260 <holding>:
    80005260:	00052783          	lw	a5,0(a0)
    80005264:	00079663          	bnez	a5,80005270 <holding+0x10>
    80005268:	00000513          	li	a0,0
    8000526c:	00008067          	ret
    80005270:	fe010113          	addi	sp,sp,-32
    80005274:	00813823          	sd	s0,16(sp)
    80005278:	00913423          	sd	s1,8(sp)
    8000527c:	00113c23          	sd	ra,24(sp)
    80005280:	02010413          	addi	s0,sp,32
    80005284:	01053483          	ld	s1,16(a0)
    80005288:	ffffe097          	auipc	ra,0xffffe
    8000528c:	758080e7          	jalr	1880(ra) # 800039e0 <mycpu>
    80005290:	01813083          	ld	ra,24(sp)
    80005294:	01013403          	ld	s0,16(sp)
    80005298:	40a48533          	sub	a0,s1,a0
    8000529c:	00153513          	seqz	a0,a0
    800052a0:	00813483          	ld	s1,8(sp)
    800052a4:	02010113          	addi	sp,sp,32
    800052a8:	00008067          	ret

00000000800052ac <push_off>:
    800052ac:	fe010113          	addi	sp,sp,-32
    800052b0:	00813823          	sd	s0,16(sp)
    800052b4:	00113c23          	sd	ra,24(sp)
    800052b8:	00913423          	sd	s1,8(sp)
    800052bc:	02010413          	addi	s0,sp,32
    800052c0:	100024f3          	csrr	s1,sstatus
    800052c4:	100027f3          	csrr	a5,sstatus
    800052c8:	ffd7f793          	andi	a5,a5,-3
    800052cc:	10079073          	csrw	sstatus,a5
    800052d0:	ffffe097          	auipc	ra,0xffffe
    800052d4:	710080e7          	jalr	1808(ra) # 800039e0 <mycpu>
    800052d8:	07852783          	lw	a5,120(a0)
    800052dc:	02078663          	beqz	a5,80005308 <push_off+0x5c>
    800052e0:	ffffe097          	auipc	ra,0xffffe
    800052e4:	700080e7          	jalr	1792(ra) # 800039e0 <mycpu>
    800052e8:	07852783          	lw	a5,120(a0)
    800052ec:	01813083          	ld	ra,24(sp)
    800052f0:	01013403          	ld	s0,16(sp)
    800052f4:	0017879b          	addiw	a5,a5,1
    800052f8:	06f52c23          	sw	a5,120(a0)
    800052fc:	00813483          	ld	s1,8(sp)
    80005300:	02010113          	addi	sp,sp,32
    80005304:	00008067          	ret
    80005308:	0014d493          	srli	s1,s1,0x1
    8000530c:	ffffe097          	auipc	ra,0xffffe
    80005310:	6d4080e7          	jalr	1748(ra) # 800039e0 <mycpu>
    80005314:	0014f493          	andi	s1,s1,1
    80005318:	06952e23          	sw	s1,124(a0)
    8000531c:	fc5ff06f          	j	800052e0 <push_off+0x34>

0000000080005320 <pop_off>:
    80005320:	ff010113          	addi	sp,sp,-16
    80005324:	00813023          	sd	s0,0(sp)
    80005328:	00113423          	sd	ra,8(sp)
    8000532c:	01010413          	addi	s0,sp,16
    80005330:	ffffe097          	auipc	ra,0xffffe
    80005334:	6b0080e7          	jalr	1712(ra) # 800039e0 <mycpu>
    80005338:	100027f3          	csrr	a5,sstatus
    8000533c:	0027f793          	andi	a5,a5,2
    80005340:	04079663          	bnez	a5,8000538c <pop_off+0x6c>
    80005344:	07852783          	lw	a5,120(a0)
    80005348:	02f05a63          	blez	a5,8000537c <pop_off+0x5c>
    8000534c:	fff7871b          	addiw	a4,a5,-1
    80005350:	06e52c23          	sw	a4,120(a0)
    80005354:	00071c63          	bnez	a4,8000536c <pop_off+0x4c>
    80005358:	07c52783          	lw	a5,124(a0)
    8000535c:	00078863          	beqz	a5,8000536c <pop_off+0x4c>
    80005360:	100027f3          	csrr	a5,sstatus
    80005364:	0027e793          	ori	a5,a5,2
    80005368:	10079073          	csrw	sstatus,a5
    8000536c:	00813083          	ld	ra,8(sp)
    80005370:	00013403          	ld	s0,0(sp)
    80005374:	01010113          	addi	sp,sp,16
    80005378:	00008067          	ret
    8000537c:	00001517          	auipc	a0,0x1
    80005380:	02c50513          	addi	a0,a0,44 # 800063a8 <digits+0x48>
    80005384:	fffff097          	auipc	ra,0xfffff
    80005388:	018080e7          	jalr	24(ra) # 8000439c <panic>
    8000538c:	00001517          	auipc	a0,0x1
    80005390:	00450513          	addi	a0,a0,4 # 80006390 <digits+0x30>
    80005394:	fffff097          	auipc	ra,0xfffff
    80005398:	008080e7          	jalr	8(ra) # 8000439c <panic>

000000008000539c <push_on>:
    8000539c:	fe010113          	addi	sp,sp,-32
    800053a0:	00813823          	sd	s0,16(sp)
    800053a4:	00113c23          	sd	ra,24(sp)
    800053a8:	00913423          	sd	s1,8(sp)
    800053ac:	02010413          	addi	s0,sp,32
    800053b0:	100024f3          	csrr	s1,sstatus
    800053b4:	100027f3          	csrr	a5,sstatus
    800053b8:	0027e793          	ori	a5,a5,2
    800053bc:	10079073          	csrw	sstatus,a5
    800053c0:	ffffe097          	auipc	ra,0xffffe
    800053c4:	620080e7          	jalr	1568(ra) # 800039e0 <mycpu>
    800053c8:	07852783          	lw	a5,120(a0)
    800053cc:	02078663          	beqz	a5,800053f8 <push_on+0x5c>
    800053d0:	ffffe097          	auipc	ra,0xffffe
    800053d4:	610080e7          	jalr	1552(ra) # 800039e0 <mycpu>
    800053d8:	07852783          	lw	a5,120(a0)
    800053dc:	01813083          	ld	ra,24(sp)
    800053e0:	01013403          	ld	s0,16(sp)
    800053e4:	0017879b          	addiw	a5,a5,1
    800053e8:	06f52c23          	sw	a5,120(a0)
    800053ec:	00813483          	ld	s1,8(sp)
    800053f0:	02010113          	addi	sp,sp,32
    800053f4:	00008067          	ret
    800053f8:	0014d493          	srli	s1,s1,0x1
    800053fc:	ffffe097          	auipc	ra,0xffffe
    80005400:	5e4080e7          	jalr	1508(ra) # 800039e0 <mycpu>
    80005404:	0014f493          	andi	s1,s1,1
    80005408:	06952e23          	sw	s1,124(a0)
    8000540c:	fc5ff06f          	j	800053d0 <push_on+0x34>

0000000080005410 <pop_on>:
    80005410:	ff010113          	addi	sp,sp,-16
    80005414:	00813023          	sd	s0,0(sp)
    80005418:	00113423          	sd	ra,8(sp)
    8000541c:	01010413          	addi	s0,sp,16
    80005420:	ffffe097          	auipc	ra,0xffffe
    80005424:	5c0080e7          	jalr	1472(ra) # 800039e0 <mycpu>
    80005428:	100027f3          	csrr	a5,sstatus
    8000542c:	0027f793          	andi	a5,a5,2
    80005430:	04078463          	beqz	a5,80005478 <pop_on+0x68>
    80005434:	07852783          	lw	a5,120(a0)
    80005438:	02f05863          	blez	a5,80005468 <pop_on+0x58>
    8000543c:	fff7879b          	addiw	a5,a5,-1
    80005440:	06f52c23          	sw	a5,120(a0)
    80005444:	07853783          	ld	a5,120(a0)
    80005448:	00079863          	bnez	a5,80005458 <pop_on+0x48>
    8000544c:	100027f3          	csrr	a5,sstatus
    80005450:	ffd7f793          	andi	a5,a5,-3
    80005454:	10079073          	csrw	sstatus,a5
    80005458:	00813083          	ld	ra,8(sp)
    8000545c:	00013403          	ld	s0,0(sp)
    80005460:	01010113          	addi	sp,sp,16
    80005464:	00008067          	ret
    80005468:	00001517          	auipc	a0,0x1
    8000546c:	f6850513          	addi	a0,a0,-152 # 800063d0 <digits+0x70>
    80005470:	fffff097          	auipc	ra,0xfffff
    80005474:	f2c080e7          	jalr	-212(ra) # 8000439c <panic>
    80005478:	00001517          	auipc	a0,0x1
    8000547c:	f3850513          	addi	a0,a0,-200 # 800063b0 <digits+0x50>
    80005480:	fffff097          	auipc	ra,0xfffff
    80005484:	f1c080e7          	jalr	-228(ra) # 8000439c <panic>

0000000080005488 <__memset>:
    80005488:	ff010113          	addi	sp,sp,-16
    8000548c:	00813423          	sd	s0,8(sp)
    80005490:	01010413          	addi	s0,sp,16
    80005494:	1a060e63          	beqz	a2,80005650 <__memset+0x1c8>
    80005498:	40a007b3          	neg	a5,a0
    8000549c:	0077f793          	andi	a5,a5,7
    800054a0:	00778693          	addi	a3,a5,7
    800054a4:	00b00813          	li	a6,11
    800054a8:	0ff5f593          	andi	a1,a1,255
    800054ac:	fff6071b          	addiw	a4,a2,-1
    800054b0:	1b06e663          	bltu	a3,a6,8000565c <__memset+0x1d4>
    800054b4:	1cd76463          	bltu	a4,a3,8000567c <__memset+0x1f4>
    800054b8:	1a078e63          	beqz	a5,80005674 <__memset+0x1ec>
    800054bc:	00b50023          	sb	a1,0(a0)
    800054c0:	00100713          	li	a4,1
    800054c4:	1ae78463          	beq	a5,a4,8000566c <__memset+0x1e4>
    800054c8:	00b500a3          	sb	a1,1(a0)
    800054cc:	00200713          	li	a4,2
    800054d0:	1ae78a63          	beq	a5,a4,80005684 <__memset+0x1fc>
    800054d4:	00b50123          	sb	a1,2(a0)
    800054d8:	00300713          	li	a4,3
    800054dc:	18e78463          	beq	a5,a4,80005664 <__memset+0x1dc>
    800054e0:	00b501a3          	sb	a1,3(a0)
    800054e4:	00400713          	li	a4,4
    800054e8:	1ae78263          	beq	a5,a4,8000568c <__memset+0x204>
    800054ec:	00b50223          	sb	a1,4(a0)
    800054f0:	00500713          	li	a4,5
    800054f4:	1ae78063          	beq	a5,a4,80005694 <__memset+0x20c>
    800054f8:	00b502a3          	sb	a1,5(a0)
    800054fc:	00700713          	li	a4,7
    80005500:	18e79e63          	bne	a5,a4,8000569c <__memset+0x214>
    80005504:	00b50323          	sb	a1,6(a0)
    80005508:	00700e93          	li	t4,7
    8000550c:	00859713          	slli	a4,a1,0x8
    80005510:	00e5e733          	or	a4,a1,a4
    80005514:	01059e13          	slli	t3,a1,0x10
    80005518:	01c76e33          	or	t3,a4,t3
    8000551c:	01859313          	slli	t1,a1,0x18
    80005520:	006e6333          	or	t1,t3,t1
    80005524:	02059893          	slli	a7,a1,0x20
    80005528:	40f60e3b          	subw	t3,a2,a5
    8000552c:	011368b3          	or	a7,t1,a7
    80005530:	02859813          	slli	a6,a1,0x28
    80005534:	0108e833          	or	a6,a7,a6
    80005538:	03059693          	slli	a3,a1,0x30
    8000553c:	003e589b          	srliw	a7,t3,0x3
    80005540:	00d866b3          	or	a3,a6,a3
    80005544:	03859713          	slli	a4,a1,0x38
    80005548:	00389813          	slli	a6,a7,0x3
    8000554c:	00f507b3          	add	a5,a0,a5
    80005550:	00e6e733          	or	a4,a3,a4
    80005554:	000e089b          	sext.w	a7,t3
    80005558:	00f806b3          	add	a3,a6,a5
    8000555c:	00e7b023          	sd	a4,0(a5)
    80005560:	00878793          	addi	a5,a5,8
    80005564:	fed79ce3          	bne	a5,a3,8000555c <__memset+0xd4>
    80005568:	ff8e7793          	andi	a5,t3,-8
    8000556c:	0007871b          	sext.w	a4,a5
    80005570:	01d787bb          	addw	a5,a5,t4
    80005574:	0ce88e63          	beq	a7,a4,80005650 <__memset+0x1c8>
    80005578:	00f50733          	add	a4,a0,a5
    8000557c:	00b70023          	sb	a1,0(a4)
    80005580:	0017871b          	addiw	a4,a5,1
    80005584:	0cc77663          	bgeu	a4,a2,80005650 <__memset+0x1c8>
    80005588:	00e50733          	add	a4,a0,a4
    8000558c:	00b70023          	sb	a1,0(a4)
    80005590:	0027871b          	addiw	a4,a5,2
    80005594:	0ac77e63          	bgeu	a4,a2,80005650 <__memset+0x1c8>
    80005598:	00e50733          	add	a4,a0,a4
    8000559c:	00b70023          	sb	a1,0(a4)
    800055a0:	0037871b          	addiw	a4,a5,3
    800055a4:	0ac77663          	bgeu	a4,a2,80005650 <__memset+0x1c8>
    800055a8:	00e50733          	add	a4,a0,a4
    800055ac:	00b70023          	sb	a1,0(a4)
    800055b0:	0047871b          	addiw	a4,a5,4
    800055b4:	08c77e63          	bgeu	a4,a2,80005650 <__memset+0x1c8>
    800055b8:	00e50733          	add	a4,a0,a4
    800055bc:	00b70023          	sb	a1,0(a4)
    800055c0:	0057871b          	addiw	a4,a5,5
    800055c4:	08c77663          	bgeu	a4,a2,80005650 <__memset+0x1c8>
    800055c8:	00e50733          	add	a4,a0,a4
    800055cc:	00b70023          	sb	a1,0(a4)
    800055d0:	0067871b          	addiw	a4,a5,6
    800055d4:	06c77e63          	bgeu	a4,a2,80005650 <__memset+0x1c8>
    800055d8:	00e50733          	add	a4,a0,a4
    800055dc:	00b70023          	sb	a1,0(a4)
    800055e0:	0077871b          	addiw	a4,a5,7
    800055e4:	06c77663          	bgeu	a4,a2,80005650 <__memset+0x1c8>
    800055e8:	00e50733          	add	a4,a0,a4
    800055ec:	00b70023          	sb	a1,0(a4)
    800055f0:	0087871b          	addiw	a4,a5,8
    800055f4:	04c77e63          	bgeu	a4,a2,80005650 <__memset+0x1c8>
    800055f8:	00e50733          	add	a4,a0,a4
    800055fc:	00b70023          	sb	a1,0(a4)
    80005600:	0097871b          	addiw	a4,a5,9
    80005604:	04c77663          	bgeu	a4,a2,80005650 <__memset+0x1c8>
    80005608:	00e50733          	add	a4,a0,a4
    8000560c:	00b70023          	sb	a1,0(a4)
    80005610:	00a7871b          	addiw	a4,a5,10
    80005614:	02c77e63          	bgeu	a4,a2,80005650 <__memset+0x1c8>
    80005618:	00e50733          	add	a4,a0,a4
    8000561c:	00b70023          	sb	a1,0(a4)
    80005620:	00b7871b          	addiw	a4,a5,11
    80005624:	02c77663          	bgeu	a4,a2,80005650 <__memset+0x1c8>
    80005628:	00e50733          	add	a4,a0,a4
    8000562c:	00b70023          	sb	a1,0(a4)
    80005630:	00c7871b          	addiw	a4,a5,12
    80005634:	00c77e63          	bgeu	a4,a2,80005650 <__memset+0x1c8>
    80005638:	00e50733          	add	a4,a0,a4
    8000563c:	00b70023          	sb	a1,0(a4)
    80005640:	00d7879b          	addiw	a5,a5,13
    80005644:	00c7f663          	bgeu	a5,a2,80005650 <__memset+0x1c8>
    80005648:	00f507b3          	add	a5,a0,a5
    8000564c:	00b78023          	sb	a1,0(a5)
    80005650:	00813403          	ld	s0,8(sp)
    80005654:	01010113          	addi	sp,sp,16
    80005658:	00008067          	ret
    8000565c:	00b00693          	li	a3,11
    80005660:	e55ff06f          	j	800054b4 <__memset+0x2c>
    80005664:	00300e93          	li	t4,3
    80005668:	ea5ff06f          	j	8000550c <__memset+0x84>
    8000566c:	00100e93          	li	t4,1
    80005670:	e9dff06f          	j	8000550c <__memset+0x84>
    80005674:	00000e93          	li	t4,0
    80005678:	e95ff06f          	j	8000550c <__memset+0x84>
    8000567c:	00000793          	li	a5,0
    80005680:	ef9ff06f          	j	80005578 <__memset+0xf0>
    80005684:	00200e93          	li	t4,2
    80005688:	e85ff06f          	j	8000550c <__memset+0x84>
    8000568c:	00400e93          	li	t4,4
    80005690:	e7dff06f          	j	8000550c <__memset+0x84>
    80005694:	00500e93          	li	t4,5
    80005698:	e75ff06f          	j	8000550c <__memset+0x84>
    8000569c:	00600e93          	li	t4,6
    800056a0:	e6dff06f          	j	8000550c <__memset+0x84>

00000000800056a4 <__memmove>:
    800056a4:	ff010113          	addi	sp,sp,-16
    800056a8:	00813423          	sd	s0,8(sp)
    800056ac:	01010413          	addi	s0,sp,16
    800056b0:	0e060863          	beqz	a2,800057a0 <__memmove+0xfc>
    800056b4:	fff6069b          	addiw	a3,a2,-1
    800056b8:	0006881b          	sext.w	a6,a3
    800056bc:	0ea5e863          	bltu	a1,a0,800057ac <__memmove+0x108>
    800056c0:	00758713          	addi	a4,a1,7
    800056c4:	00a5e7b3          	or	a5,a1,a0
    800056c8:	40a70733          	sub	a4,a4,a0
    800056cc:	0077f793          	andi	a5,a5,7
    800056d0:	00f73713          	sltiu	a4,a4,15
    800056d4:	00174713          	xori	a4,a4,1
    800056d8:	0017b793          	seqz	a5,a5
    800056dc:	00e7f7b3          	and	a5,a5,a4
    800056e0:	10078863          	beqz	a5,800057f0 <__memmove+0x14c>
    800056e4:	00900793          	li	a5,9
    800056e8:	1107f463          	bgeu	a5,a6,800057f0 <__memmove+0x14c>
    800056ec:	0036581b          	srliw	a6,a2,0x3
    800056f0:	fff8081b          	addiw	a6,a6,-1
    800056f4:	02081813          	slli	a6,a6,0x20
    800056f8:	01d85893          	srli	a7,a6,0x1d
    800056fc:	00858813          	addi	a6,a1,8
    80005700:	00058793          	mv	a5,a1
    80005704:	00050713          	mv	a4,a0
    80005708:	01088833          	add	a6,a7,a6
    8000570c:	0007b883          	ld	a7,0(a5)
    80005710:	00878793          	addi	a5,a5,8
    80005714:	00870713          	addi	a4,a4,8
    80005718:	ff173c23          	sd	a7,-8(a4)
    8000571c:	ff0798e3          	bne	a5,a6,8000570c <__memmove+0x68>
    80005720:	ff867713          	andi	a4,a2,-8
    80005724:	02071793          	slli	a5,a4,0x20
    80005728:	0207d793          	srli	a5,a5,0x20
    8000572c:	00f585b3          	add	a1,a1,a5
    80005730:	40e686bb          	subw	a3,a3,a4
    80005734:	00f507b3          	add	a5,a0,a5
    80005738:	06e60463          	beq	a2,a4,800057a0 <__memmove+0xfc>
    8000573c:	0005c703          	lbu	a4,0(a1)
    80005740:	00e78023          	sb	a4,0(a5)
    80005744:	04068e63          	beqz	a3,800057a0 <__memmove+0xfc>
    80005748:	0015c603          	lbu	a2,1(a1)
    8000574c:	00100713          	li	a4,1
    80005750:	00c780a3          	sb	a2,1(a5)
    80005754:	04e68663          	beq	a3,a4,800057a0 <__memmove+0xfc>
    80005758:	0025c603          	lbu	a2,2(a1)
    8000575c:	00200713          	li	a4,2
    80005760:	00c78123          	sb	a2,2(a5)
    80005764:	02e68e63          	beq	a3,a4,800057a0 <__memmove+0xfc>
    80005768:	0035c603          	lbu	a2,3(a1)
    8000576c:	00300713          	li	a4,3
    80005770:	00c781a3          	sb	a2,3(a5)
    80005774:	02e68663          	beq	a3,a4,800057a0 <__memmove+0xfc>
    80005778:	0045c603          	lbu	a2,4(a1)
    8000577c:	00400713          	li	a4,4
    80005780:	00c78223          	sb	a2,4(a5)
    80005784:	00e68e63          	beq	a3,a4,800057a0 <__memmove+0xfc>
    80005788:	0055c603          	lbu	a2,5(a1)
    8000578c:	00500713          	li	a4,5
    80005790:	00c782a3          	sb	a2,5(a5)
    80005794:	00e68663          	beq	a3,a4,800057a0 <__memmove+0xfc>
    80005798:	0065c703          	lbu	a4,6(a1)
    8000579c:	00e78323          	sb	a4,6(a5)
    800057a0:	00813403          	ld	s0,8(sp)
    800057a4:	01010113          	addi	sp,sp,16
    800057a8:	00008067          	ret
    800057ac:	02061713          	slli	a4,a2,0x20
    800057b0:	02075713          	srli	a4,a4,0x20
    800057b4:	00e587b3          	add	a5,a1,a4
    800057b8:	f0f574e3          	bgeu	a0,a5,800056c0 <__memmove+0x1c>
    800057bc:	02069613          	slli	a2,a3,0x20
    800057c0:	02065613          	srli	a2,a2,0x20
    800057c4:	fff64613          	not	a2,a2
    800057c8:	00e50733          	add	a4,a0,a4
    800057cc:	00c78633          	add	a2,a5,a2
    800057d0:	fff7c683          	lbu	a3,-1(a5)
    800057d4:	fff78793          	addi	a5,a5,-1
    800057d8:	fff70713          	addi	a4,a4,-1
    800057dc:	00d70023          	sb	a3,0(a4)
    800057e0:	fec798e3          	bne	a5,a2,800057d0 <__memmove+0x12c>
    800057e4:	00813403          	ld	s0,8(sp)
    800057e8:	01010113          	addi	sp,sp,16
    800057ec:	00008067          	ret
    800057f0:	02069713          	slli	a4,a3,0x20
    800057f4:	02075713          	srli	a4,a4,0x20
    800057f8:	00170713          	addi	a4,a4,1
    800057fc:	00e50733          	add	a4,a0,a4
    80005800:	00050793          	mv	a5,a0
    80005804:	0005c683          	lbu	a3,0(a1)
    80005808:	00178793          	addi	a5,a5,1
    8000580c:	00158593          	addi	a1,a1,1
    80005810:	fed78fa3          	sb	a3,-1(a5)
    80005814:	fee798e3          	bne	a5,a4,80005804 <__memmove+0x160>
    80005818:	f89ff06f          	j	800057a0 <__memmove+0xfc>

000000008000581c <__putc>:
    8000581c:	fe010113          	addi	sp,sp,-32
    80005820:	00813823          	sd	s0,16(sp)
    80005824:	00113c23          	sd	ra,24(sp)
    80005828:	02010413          	addi	s0,sp,32
    8000582c:	00050793          	mv	a5,a0
    80005830:	fef40593          	addi	a1,s0,-17
    80005834:	00100613          	li	a2,1
    80005838:	00000513          	li	a0,0
    8000583c:	fef407a3          	sb	a5,-17(s0)
    80005840:	fffff097          	auipc	ra,0xfffff
    80005844:	b3c080e7          	jalr	-1220(ra) # 8000437c <console_write>
    80005848:	01813083          	ld	ra,24(sp)
    8000584c:	01013403          	ld	s0,16(sp)
    80005850:	02010113          	addi	sp,sp,32
    80005854:	00008067          	ret

0000000080005858 <__getc>:
    80005858:	fe010113          	addi	sp,sp,-32
    8000585c:	00813823          	sd	s0,16(sp)
    80005860:	00113c23          	sd	ra,24(sp)
    80005864:	02010413          	addi	s0,sp,32
    80005868:	fe840593          	addi	a1,s0,-24
    8000586c:	00100613          	li	a2,1
    80005870:	00000513          	li	a0,0
    80005874:	fffff097          	auipc	ra,0xfffff
    80005878:	ae8080e7          	jalr	-1304(ra) # 8000435c <console_read>
    8000587c:	fe844503          	lbu	a0,-24(s0)
    80005880:	01813083          	ld	ra,24(sp)
    80005884:	01013403          	ld	s0,16(sp)
    80005888:	02010113          	addi	sp,sp,32
    8000588c:	00008067          	ret

0000000080005890 <console_handler>:
    80005890:	fe010113          	addi	sp,sp,-32
    80005894:	00813823          	sd	s0,16(sp)
    80005898:	00113c23          	sd	ra,24(sp)
    8000589c:	00913423          	sd	s1,8(sp)
    800058a0:	02010413          	addi	s0,sp,32
    800058a4:	14202773          	csrr	a4,scause
    800058a8:	100027f3          	csrr	a5,sstatus
    800058ac:	0027f793          	andi	a5,a5,2
    800058b0:	06079e63          	bnez	a5,8000592c <console_handler+0x9c>
    800058b4:	00074c63          	bltz	a4,800058cc <console_handler+0x3c>
    800058b8:	01813083          	ld	ra,24(sp)
    800058bc:	01013403          	ld	s0,16(sp)
    800058c0:	00813483          	ld	s1,8(sp)
    800058c4:	02010113          	addi	sp,sp,32
    800058c8:	00008067          	ret
    800058cc:	0ff77713          	andi	a4,a4,255
    800058d0:	00900793          	li	a5,9
    800058d4:	fef712e3          	bne	a4,a5,800058b8 <console_handler+0x28>
    800058d8:	ffffe097          	auipc	ra,0xffffe
    800058dc:	6dc080e7          	jalr	1756(ra) # 80003fb4 <plic_claim>
    800058e0:	00a00793          	li	a5,10
    800058e4:	00050493          	mv	s1,a0
    800058e8:	02f50c63          	beq	a0,a5,80005920 <console_handler+0x90>
    800058ec:	fc0506e3          	beqz	a0,800058b8 <console_handler+0x28>
    800058f0:	00050593          	mv	a1,a0
    800058f4:	00001517          	auipc	a0,0x1
    800058f8:	9e450513          	addi	a0,a0,-1564 # 800062d8 <_ZZ12printIntegermE6digits+0x228>
    800058fc:	fffff097          	auipc	ra,0xfffff
    80005900:	afc080e7          	jalr	-1284(ra) # 800043f8 <__printf>
    80005904:	01013403          	ld	s0,16(sp)
    80005908:	01813083          	ld	ra,24(sp)
    8000590c:	00048513          	mv	a0,s1
    80005910:	00813483          	ld	s1,8(sp)
    80005914:	02010113          	addi	sp,sp,32
    80005918:	ffffe317          	auipc	t1,0xffffe
    8000591c:	6d430067          	jr	1748(t1) # 80003fec <plic_complete>
    80005920:	fffff097          	auipc	ra,0xfffff
    80005924:	3e0080e7          	jalr	992(ra) # 80004d00 <uartintr>
    80005928:	fddff06f          	j	80005904 <console_handler+0x74>
    8000592c:	00001517          	auipc	a0,0x1
    80005930:	aac50513          	addi	a0,a0,-1364 # 800063d8 <digits+0x78>
    80005934:	fffff097          	auipc	ra,0xfffff
    80005938:	a68080e7          	jalr	-1432(ra) # 8000439c <panic>
	...
