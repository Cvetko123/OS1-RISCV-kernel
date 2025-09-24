
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00007117          	auipc	sp,0x7
    80000004:	34013103          	ld	sp,832(sp) # 80007340 <_GLOBAL_OFFSET_TABLE_+0x10>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	211030ef          	jal	ra,80003a2c <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <SupervisorTrap>:
.align 4
.global SupervisorTrap


SupervisorTrap:
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


    call SupervisorTrapHandlerWrapper
    80001084:	090010ef          	jal	ra,80002114 <SupervisorTrapHandlerWrapper>
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

0000000080001120 <_ZN5Riscv13pushRegistersEv>:
.global _ZN5Riscv13pushRegistersEv
.type _ZN5Riscv13pushRegistersEv, @function
_ZN5Riscv13pushRegistersEv:
    addi sp, sp, -256
    80001120:	f0010113          	addi	sp,sp,-256

    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001124:	00313c23          	sd	gp,24(sp)
    80001128:	02413023          	sd	tp,32(sp)
    8000112c:	02513423          	sd	t0,40(sp)
    80001130:	02613823          	sd	t1,48(sp)
    80001134:	02713c23          	sd	t2,56(sp)
    80001138:	04813023          	sd	s0,64(sp)
    8000113c:	04913423          	sd	s1,72(sp)
    80001140:	04a13823          	sd	a0,80(sp)
    80001144:	04b13c23          	sd	a1,88(sp)
    80001148:	06c13023          	sd	a2,96(sp)
    8000114c:	06d13423          	sd	a3,104(sp)
    80001150:	06e13823          	sd	a4,112(sp)
    80001154:	06f13c23          	sd	a5,120(sp)
    80001158:	09013023          	sd	a6,128(sp)
    8000115c:	09113423          	sd	a7,136(sp)
    80001160:	09213823          	sd	s2,144(sp)
    80001164:	09313c23          	sd	s3,152(sp)
    80001168:	0b413023          	sd	s4,160(sp)
    8000116c:	0b513423          	sd	s5,168(sp)
    80001170:	0b613823          	sd	s6,176(sp)
    80001174:	0b713c23          	sd	s7,184(sp)
    80001178:	0d813023          	sd	s8,192(sp)
    8000117c:	0d913423          	sd	s9,200(sp)
    80001180:	0da13823          	sd	s10,208(sp)
    80001184:	0db13c23          	sd	s11,216(sp)
    80001188:	0fc13023          	sd	t3,224(sp)
    8000118c:	0fd13423          	sd	t4,232(sp)
    80001190:	0fe13823          	sd	t5,240(sp)
    80001194:	0ff13c23          	sd	t6,248(sp)
    ret
    80001198:	00008067          	ret

000000008000119c <_ZN5Riscv12popRegistersEv>:
.type _ZN5Riscv12popRegistersEv, @function
_ZN5Riscv12popRegistersEv:

    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    8000119c:	01813183          	ld	gp,24(sp)
    800011a0:	02013203          	ld	tp,32(sp)
    800011a4:	02813283          	ld	t0,40(sp)
    800011a8:	03013303          	ld	t1,48(sp)
    800011ac:	03813383          	ld	t2,56(sp)
    800011b0:	04013403          	ld	s0,64(sp)
    800011b4:	04813483          	ld	s1,72(sp)
    800011b8:	05013503          	ld	a0,80(sp)
    800011bc:	05813583          	ld	a1,88(sp)
    800011c0:	06013603          	ld	a2,96(sp)
    800011c4:	06813683          	ld	a3,104(sp)
    800011c8:	07013703          	ld	a4,112(sp)
    800011cc:	07813783          	ld	a5,120(sp)
    800011d0:	08013803          	ld	a6,128(sp)
    800011d4:	08813883          	ld	a7,136(sp)
    800011d8:	09013903          	ld	s2,144(sp)
    800011dc:	09813983          	ld	s3,152(sp)
    800011e0:	0a013a03          	ld	s4,160(sp)
    800011e4:	0a813a83          	ld	s5,168(sp)
    800011e8:	0b013b03          	ld	s6,176(sp)
    800011ec:	0b813b83          	ld	s7,184(sp)
    800011f0:	0c013c03          	ld	s8,192(sp)
    800011f4:	0c813c83          	ld	s9,200(sp)
    800011f8:	0d013d03          	ld	s10,208(sp)
    800011fc:	0d813d83          	ld	s11,216(sp)
    80001200:	0e013e03          	ld	t3,224(sp)
    80001204:	0e813e83          	ld	t4,232(sp)
    80001208:	0f013f03          	ld	t5,240(sp)
    8000120c:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001210:	10010113          	addi	sp,sp,256
    80001214:	00008067          	ret

0000000080001218 <context_switch>:
.global context_switch
context_switch:
    sd ra, 0*8(a0)
    80001218:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp, 1*8(a0)
    8000121c:	00253423          	sd	sp,8(a0)

    ld ra, 0*8(a1)
    80001220:	0005b083          	ld	ra,0(a1)
    ld sp, 1*8(a1)
    80001224:	0085b103          	ld	sp,8(a1)

    80001228:	00008067          	ret

000000008000122c <_Z9mem_allocm>:
{
    __asm__ volatile("mv a0, %0" ::"r"(opcode));
    __asm__ volatile("ecall");
}

void* mem_alloc(size_t size) {
    8000122c:	ff010113          	addi	sp,sp,-16
    80001230:	00813423          	sd	s0,8(sp)
    80001234:	01010413          	addi	s0,sp,16
    size_t offset = size % MEM_BLOCK_SIZE;
    80001238:	00357793          	andi	a5,a0,3
    if (offset!=0)
    8000123c:	00078463          	beqz	a5,80001244 <_Z9mem_allocm+0x18>
        offset=1;
    80001240:	00100793          	li	a5,1
    size_t blocks=size/MEM_BLOCK_SIZE +offset;
    80001244:	00255513          	srli	a0,a0,0x2
    80001248:	00f50533          	add	a0,a0,a5
    __asm__ volatile ("mv a1, %[x]" :: [x] "r" (blocks));
    8000124c:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" ::"r"(opcode));
    80001250:	00100793          	li	a5,1
    80001254:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001258:	00000073          	ecall
    invoke(MEM_ALLOC);

    uint64 ret;
    __asm__ volatile ("mv %[x], a0" : [x] "=r" (ret));
    8000125c:	00050513          	mv	a0,a0
    return (void*)ret;
}
    80001260:	00813403          	ld	s0,8(sp)
    80001264:	01010113          	addi	sp,sp,16
    80001268:	00008067          	ret

000000008000126c <_Z8mem_freePv>:

int mem_free(void* ptr) {
    8000126c:	ff010113          	addi	sp,sp,-16
    80001270:	00813423          	sd	s0,8(sp)
    80001274:	01010413          	addi	s0,sp,16
    if (ptr==nullptr) {
    80001278:	02050463          	beqz	a0,800012a0 <_Z8mem_freePv+0x34>
        return 0;
    }
    void *p=ptr;
    __asm__ volatile ("mv a1, %[x]" :: [x] "r" (p));
    8000127c:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" ::"r"(opcode));
    80001280:	00200793          	li	a5,2
    80001284:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001288:	00000073          	ecall
    invoke(MEM_FREE);
    uint64 ret;
    __asm__ volatile ("mv %[x], a0" : [x] "=r" (ret));
    8000128c:	00050513          	mv	a0,a0
    return (int)ret;
    80001290:	0005051b          	sext.w	a0,a0
}
    80001294:	00813403          	ld	s0,8(sp)
    80001298:	01010113          	addi	sp,sp,16
    8000129c:	00008067          	ret
        return 0;
    800012a0:	00000513          	li	a0,0
    800012a4:	ff1ff06f          	j	80001294 <_Z8mem_freePv+0x28>

00000000800012a8 <_Z18mem_get_free_spacev>:

size_t mem_get_free_space() {
    800012a8:	ff010113          	addi	sp,sp,-16
    800012ac:	00813423          	sd	s0,8(sp)
    800012b0:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a0, %0" ::"r"(opcode));
    800012b4:	00300793          	li	a5,3
    800012b8:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800012bc:	00000073          	ecall

    invoke(MEM_GET_FREE_SPACE);
    uint64 ret;
    __asm__ volatile ("mv %[x], a0" : [x] "=r" (ret));
    800012c0:	00050513          	mv	a0,a0
    return (size_t)ret;
}
    800012c4:	00813403          	ld	s0,8(sp)
    800012c8:	01010113          	addi	sp,sp,16
    800012cc:	00008067          	ret

00000000800012d0 <_Z26mem_get_largest_free_blockv>:

size_t mem_get_largest_free_block() {
    800012d0:	ff010113          	addi	sp,sp,-16
    800012d4:	00813423          	sd	s0,8(sp)
    800012d8:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a0, %0" ::"r"(opcode));
    800012dc:	00400793          	li	a5,4
    800012e0:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800012e4:	00000073          	ecall
    invoke(MEM_GET_LARGEST_FREE_BLOCK);
    uint64 ret;
    __asm__ volatile ("mv %[x], a0" : [x] "=r" (ret));
    800012e8:	00050513          	mv	a0,a0
    return (size_t)ret;
}
    800012ec:	00813403          	ld	s0,8(sp)
    800012f0:	01010113          	addi	sp,sp,16
    800012f4:	00008067          	ret

00000000800012f8 <_Z13thread_createPP3TCBPFvPvES2_>:


int thread_create(thread_t* handle, void(*start_routine)(void*), void* arg)
{
    800012f8:	ff010113          	addi	sp,sp,-16
    800012fc:	00813423          	sd	s0,8(sp)
    80001300:	01010413          	addi	s0,sp,16

    __asm__ volatile ("mv a3, %[x]" :: [x] "r" (arg));
    80001304:	00060693          	mv	a3,a2
    __asm__ volatile ("mv a2, %[x]" :: [x] "r" (start_routine));
    80001308:	00058613          	mv	a2,a1
    __asm__ volatile ("mv a1, %[x]" :: [x] "r" (handle));
    8000130c:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" ::"r"(opcode));
    80001310:	01100793          	li	a5,17
    80001314:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001318:	00000073          	ecall

    invoke(THREAD_CREATE);
    uint64 ret;
    __asm__ volatile ("mv %[x], a0" : [x] "=r" (ret));
    8000131c:	00050513          	mv	a0,a0
    return (int)ret;
}
    80001320:	0005051b          	sext.w	a0,a0
    80001324:	00813403          	ld	s0,8(sp)
    80001328:	01010113          	addi	sp,sp,16
    8000132c:	00008067          	ret

0000000080001330 <_Z11thread_exitv>:
int thread_exit()
{
    80001330:	ff010113          	addi	sp,sp,-16
    80001334:	00813423          	sd	s0,8(sp)
    80001338:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a0, %0" ::"r"(opcode));
    8000133c:	01200793          	li	a5,18
    80001340:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001344:	00000073          	ecall
    invoke(THREAD_EXIT);
    uint64 ret;
    __asm__ volatile ("mv %[x], a0" : [x] "=r" (ret));
    80001348:	00050513          	mv	a0,a0
    return (int)ret;
}
    8000134c:	0005051b          	sext.w	a0,a0
    80001350:	00813403          	ld	s0,8(sp)
    80001354:	01010113          	addi	sp,sp,16
    80001358:	00008067          	ret

000000008000135c <_Z15thread_dispatchv>:

void thread_dispatch()
{
    8000135c:	ff010113          	addi	sp,sp,-16
    80001360:	00813423          	sd	s0,8(sp)
    80001364:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a0, %0" ::"r"(opcode));
    80001368:	01300793          	li	a5,19
    8000136c:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001370:	00000073          	ecall
    invoke(THREAD_DISPATCH);
    80001374:	00813403          	ld	s0,8(sp)
    80001378:	01010113          	addi	sp,sp,16
    8000137c:	00008067          	ret

0000000080001380 <_Z9fibonaccim>:
//
#include "../h/workers.hpp"
#include "../lib/hw.h"
#include "../h/TCB.hpp"
#include "../h/print.hpp"
uint64 fibonacci(uint64 n) {
    80001380:	fe010113          	addi	sp,sp,-32
    80001384:	00113c23          	sd	ra,24(sp)
    80001388:	00813823          	sd	s0,16(sp)
    8000138c:	00913423          	sd	s1,8(sp)
    80001390:	01213023          	sd	s2,0(sp)
    80001394:	02010413          	addi	s0,sp,32
    80001398:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    8000139c:	00100793          	li	a5,1
    800013a0:	02a7f663          	bgeu	a5,a0,800013cc <_Z9fibonaccim+0x4c>
    if (n % 4 == 0) TCB::dispatch();
    800013a4:	00357793          	andi	a5,a0,3
    800013a8:	02078e63          	beqz	a5,800013e4 <_Z9fibonaccim+0x64>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800013ac:	fff48513          	addi	a0,s1,-1
    800013b0:	00000097          	auipc	ra,0x0
    800013b4:	fd0080e7          	jalr	-48(ra) # 80001380 <_Z9fibonaccim>
    800013b8:	00050913          	mv	s2,a0
    800013bc:	ffe48513          	addi	a0,s1,-2
    800013c0:	00000097          	auipc	ra,0x0
    800013c4:	fc0080e7          	jalr	-64(ra) # 80001380 <_Z9fibonaccim>
    800013c8:	00a90533          	add	a0,s2,a0
}
    800013cc:	01813083          	ld	ra,24(sp)
    800013d0:	01013403          	ld	s0,16(sp)
    800013d4:	00813483          	ld	s1,8(sp)
    800013d8:	00013903          	ld	s2,0(sp)
    800013dc:	02010113          	addi	sp,sp,32
    800013e0:	00008067          	ret
    if (n % 4 == 0) TCB::dispatch();
    800013e4:	00001097          	auipc	ra,0x1
    800013e8:	984080e7          	jalr	-1660(ra) # 80001d68 <_ZN3TCB8dispatchEv>
    800013ec:	fc1ff06f          	j	800013ac <_Z9fibonaccim+0x2c>

00000000800013f0 <_Z11workerBodyAv>:

void workerBodyA() {
    800013f0:	fe010113          	addi	sp,sp,-32
    800013f4:	00113c23          	sd	ra,24(sp)
    800013f8:	00813823          	sd	s0,16(sp)
    800013fc:	00913423          	sd	s1,8(sp)
    80001400:	01213023          	sd	s2,0(sp)
    80001404:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80001408:	00000493          	li	s1,0
    8000140c:	0380006f          	j	80001444 <_Z11workerBodyAv+0x54>
    for (; i < 3; i++) { printString("A: i="); printInteger(i); printString("\n"); }
    80001410:	00005517          	auipc	a0,0x5
    80001414:	c1050513          	addi	a0,a0,-1008 # 80006020 <CONSOLE_STATUS+0x10>
    80001418:	00001097          	auipc	ra,0x1
    8000141c:	074080e7          	jalr	116(ra) # 8000248c <_Z11printStringPKc>
    80001420:	00048513          	mv	a0,s1
    80001424:	00001097          	auipc	ra,0x1
    80001428:	0ac080e7          	jalr	172(ra) # 800024d0 <_Z12printIntegerm>
    8000142c:	00005517          	auipc	a0,0x5
    80001430:	c5c50513          	addi	a0,a0,-932 # 80006088 <CONSOLE_STATUS+0x78>
    80001434:	00001097          	auipc	ra,0x1
    80001438:	058080e7          	jalr	88(ra) # 8000248c <_Z11printStringPKc>
    8000143c:	0014849b          	addiw	s1,s1,1
    80001440:	0ff4f493          	andi	s1,s1,255
    80001444:	00200793          	li	a5,2
    80001448:	fc97f4e3          	bgeu	a5,s1,80001410 <_Z11workerBodyAv+0x20>

    printString("A: yield\n");
    8000144c:	00005517          	auipc	a0,0x5
    80001450:	bdc50513          	addi	a0,a0,-1060 # 80006028 <CONSOLE_STATUS+0x18>
    80001454:	00001097          	auipc	ra,0x1
    80001458:	038080e7          	jalr	56(ra) # 8000248c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    8000145c:	00700313          	li	t1,7
    TCB::dispatch();
    80001460:	00001097          	auipc	ra,0x1
    80001464:	908080e7          	jalr	-1784(ra) # 80001d68 <_ZN3TCB8dispatchEv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80001468:	00030913          	mv	s2,t1
    printString("A: t1="); printInteger(t1); printString("\n");
    8000146c:	00005517          	auipc	a0,0x5
    80001470:	bcc50513          	addi	a0,a0,-1076 # 80006038 <CONSOLE_STATUS+0x28>
    80001474:	00001097          	auipc	ra,0x1
    80001478:	018080e7          	jalr	24(ra) # 8000248c <_Z11printStringPKc>
    8000147c:	00090513          	mv	a0,s2
    80001480:	00001097          	auipc	ra,0x1
    80001484:	050080e7          	jalr	80(ra) # 800024d0 <_Z12printIntegerm>
    80001488:	00005517          	auipc	a0,0x5
    8000148c:	c0050513          	addi	a0,a0,-1024 # 80006088 <CONSOLE_STATUS+0x78>
    80001490:	00001097          	auipc	ra,0x1
    80001494:	ffc080e7          	jalr	-4(ra) # 8000248c <_Z11printStringPKc>

    uint64 result = fibonacci(20);
    80001498:	01400513          	li	a0,20
    8000149c:	00000097          	auipc	ra,0x0
    800014a0:	ee4080e7          	jalr	-284(ra) # 80001380 <_Z9fibonaccim>
    800014a4:	00050913          	mv	s2,a0
    printString("A: fibonaci="); printInteger(result); printString("\n");
    800014a8:	00005517          	auipc	a0,0x5
    800014ac:	b9850513          	addi	a0,a0,-1128 # 80006040 <CONSOLE_STATUS+0x30>
    800014b0:	00001097          	auipc	ra,0x1
    800014b4:	fdc080e7          	jalr	-36(ra) # 8000248c <_Z11printStringPKc>
    800014b8:	00090513          	mv	a0,s2
    800014bc:	00001097          	auipc	ra,0x1
    800014c0:	014080e7          	jalr	20(ra) # 800024d0 <_Z12printIntegerm>
    800014c4:	00005517          	auipc	a0,0x5
    800014c8:	bc450513          	addi	a0,a0,-1084 # 80006088 <CONSOLE_STATUS+0x78>
    800014cc:	00001097          	auipc	ra,0x1
    800014d0:	fc0080e7          	jalr	-64(ra) # 8000248c <_Z11printStringPKc>
    800014d4:	0380006f          	j	8000150c <_Z11workerBodyAv+0x11c>

    for (; i < 6; i++) { printString("A: i="); printInteger(i); printString("\n"); }
    800014d8:	00005517          	auipc	a0,0x5
    800014dc:	b4850513          	addi	a0,a0,-1208 # 80006020 <CONSOLE_STATUS+0x10>
    800014e0:	00001097          	auipc	ra,0x1
    800014e4:	fac080e7          	jalr	-84(ra) # 8000248c <_Z11printStringPKc>
    800014e8:	00048513          	mv	a0,s1
    800014ec:	00001097          	auipc	ra,0x1
    800014f0:	fe4080e7          	jalr	-28(ra) # 800024d0 <_Z12printIntegerm>
    800014f4:	00005517          	auipc	a0,0x5
    800014f8:	b9450513          	addi	a0,a0,-1132 # 80006088 <CONSOLE_STATUS+0x78>
    800014fc:	00001097          	auipc	ra,0x1
    80001500:	f90080e7          	jalr	-112(ra) # 8000248c <_Z11printStringPKc>
    80001504:	0014849b          	addiw	s1,s1,1
    80001508:	0ff4f493          	andi	s1,s1,255
    8000150c:	00500793          	li	a5,5
    80001510:	fc97f4e3          	bgeu	a5,s1,800014d8 <_Z11workerBodyAv+0xe8>

    TCB::dispatch();
    80001514:	00001097          	auipc	ra,0x1
    80001518:	854080e7          	jalr	-1964(ra) # 80001d68 <_ZN3TCB8dispatchEv>
}
    8000151c:	01813083          	ld	ra,24(sp)
    80001520:	01013403          	ld	s0,16(sp)
    80001524:	00813483          	ld	s1,8(sp)
    80001528:	00013903          	ld	s2,0(sp)
    8000152c:	02010113          	addi	sp,sp,32
    80001530:	00008067          	ret

0000000080001534 <_Z11workerBodyBv>:

void workerBodyB() {
    80001534:	fe010113          	addi	sp,sp,-32
    80001538:	00113c23          	sd	ra,24(sp)
    8000153c:	00813823          	sd	s0,16(sp)
    80001540:	00913423          	sd	s1,8(sp)
    80001544:	01213023          	sd	s2,0(sp)
    80001548:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    8000154c:	00a00493          	li	s1,10
    80001550:	0380006f          	j	80001588 <_Z11workerBodyBv+0x54>
    for (; i < 13; i++) { printString("B: i="); printInteger(i); printString("\n"); }
    80001554:	00005517          	auipc	a0,0x5
    80001558:	afc50513          	addi	a0,a0,-1284 # 80006050 <CONSOLE_STATUS+0x40>
    8000155c:	00001097          	auipc	ra,0x1
    80001560:	f30080e7          	jalr	-208(ra) # 8000248c <_Z11printStringPKc>
    80001564:	00048513          	mv	a0,s1
    80001568:	00001097          	auipc	ra,0x1
    8000156c:	f68080e7          	jalr	-152(ra) # 800024d0 <_Z12printIntegerm>
    80001570:	00005517          	auipc	a0,0x5
    80001574:	b1850513          	addi	a0,a0,-1256 # 80006088 <CONSOLE_STATUS+0x78>
    80001578:	00001097          	auipc	ra,0x1
    8000157c:	f14080e7          	jalr	-236(ra) # 8000248c <_Z11printStringPKc>
    80001580:	0014849b          	addiw	s1,s1,1
    80001584:	0ff4f493          	andi	s1,s1,255
    80001588:	00c00793          	li	a5,12
    8000158c:	fc97f4e3          	bgeu	a5,s1,80001554 <_Z11workerBodyBv+0x20>

    printString("B: yield\n");
    80001590:	00005517          	auipc	a0,0x5
    80001594:	ac850513          	addi	a0,a0,-1336 # 80006058 <CONSOLE_STATUS+0x48>
    80001598:	00001097          	auipc	ra,0x1
    8000159c:	ef4080e7          	jalr	-268(ra) # 8000248c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800015a0:	00500313          	li	t1,5
    TCB::dispatch();
    800015a4:	00000097          	auipc	ra,0x0
    800015a8:	7c4080e7          	jalr	1988(ra) # 80001d68 <_ZN3TCB8dispatchEv>

    uint64 result = fibonacci(23);
    800015ac:	01700513          	li	a0,23
    800015b0:	00000097          	auipc	ra,0x0
    800015b4:	dd0080e7          	jalr	-560(ra) # 80001380 <_Z9fibonaccim>
    800015b8:	00050913          	mv	s2,a0
    printString("B: fibonaci="); printInteger(result); printString("\n");
    800015bc:	00005517          	auipc	a0,0x5
    800015c0:	aac50513          	addi	a0,a0,-1364 # 80006068 <CONSOLE_STATUS+0x58>
    800015c4:	00001097          	auipc	ra,0x1
    800015c8:	ec8080e7          	jalr	-312(ra) # 8000248c <_Z11printStringPKc>
    800015cc:	00090513          	mv	a0,s2
    800015d0:	00001097          	auipc	ra,0x1
    800015d4:	f00080e7          	jalr	-256(ra) # 800024d0 <_Z12printIntegerm>
    800015d8:	00005517          	auipc	a0,0x5
    800015dc:	ab050513          	addi	a0,a0,-1360 # 80006088 <CONSOLE_STATUS+0x78>
    800015e0:	00001097          	auipc	ra,0x1
    800015e4:	eac080e7          	jalr	-340(ra) # 8000248c <_Z11printStringPKc>
    800015e8:	0380006f          	j	80001620 <_Z11workerBodyBv+0xec>

    for (; i < 16; i++) { printString("B: i="); printInteger(i); printString("\n"); }
    800015ec:	00005517          	auipc	a0,0x5
    800015f0:	a6450513          	addi	a0,a0,-1436 # 80006050 <CONSOLE_STATUS+0x40>
    800015f4:	00001097          	auipc	ra,0x1
    800015f8:	e98080e7          	jalr	-360(ra) # 8000248c <_Z11printStringPKc>
    800015fc:	00048513          	mv	a0,s1
    80001600:	00001097          	auipc	ra,0x1
    80001604:	ed0080e7          	jalr	-304(ra) # 800024d0 <_Z12printIntegerm>
    80001608:	00005517          	auipc	a0,0x5
    8000160c:	a8050513          	addi	a0,a0,-1408 # 80006088 <CONSOLE_STATUS+0x78>
    80001610:	00001097          	auipc	ra,0x1
    80001614:	e7c080e7          	jalr	-388(ra) # 8000248c <_Z11printStringPKc>
    80001618:	0014849b          	addiw	s1,s1,1
    8000161c:	0ff4f493          	andi	s1,s1,255
    80001620:	00f00793          	li	a5,15
    80001624:	fc97f4e3          	bgeu	a5,s1,800015ec <_Z11workerBodyBv+0xb8>
    TCB::dispatch();
    80001628:	00000097          	auipc	ra,0x0
    8000162c:	740080e7          	jalr	1856(ra) # 80001d68 <_ZN3TCB8dispatchEv>
}
    80001630:	01813083          	ld	ra,24(sp)
    80001634:	01013403          	ld	s0,16(sp)
    80001638:	00813483          	ld	s1,8(sp)
    8000163c:	00013903          	ld	s2,0(sp)
    80001640:	02010113          	addi	sp,sp,32
    80001644:	00008067          	ret

0000000080001648 <_Z41__static_initialization_and_destruction_0ii>:
    return queue.removeLast();
}

void Scheduler::put(TCB *x) {
    queue.addFirst(x);
    80001648:	ff010113          	addi	sp,sp,-16
    8000164c:	00813423          	sd	s0,8(sp)
    80001650:	01010413          	addi	s0,sp,16
    80001654:	00100793          	li	a5,1
    80001658:	00f50863          	beq	a0,a5,80001668 <_Z41__static_initialization_and_destruction_0ii+0x20>
    8000165c:	00813403          	ld	s0,8(sp)
    80001660:	01010113          	addi	sp,sp,16
    80001664:	00008067          	ret
    80001668:	000107b7          	lui	a5,0x10
    8000166c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001670:	fef596e3          	bne	a1,a5,8000165c <_Z41__static_initialization_and_destruction_0ii+0x14>
    };
    Elem * head;
    Elem *tail;
    int size=0;
public:
    List(): head(0), tail(0){}
    80001674:	00006797          	auipc	a5,0x6
    80001678:	d2c78793          	addi	a5,a5,-724 # 800073a0 <_ZN9Scheduler5queueE>
    8000167c:	0007b023          	sd	zero,0(a5)
    80001680:	0007b423          	sd	zero,8(a5)
    80001684:	0007a823          	sw	zero,16(a5)
    80001688:	fd5ff06f          	j	8000165c <_Z41__static_initialization_and_destruction_0ii+0x14>

000000008000168c <_ZN9Scheduler3getEv>:
TCB *Scheduler::get() {
    8000168c:	fe010113          	addi	sp,sp,-32
    80001690:	00113c23          	sd	ra,24(sp)
    80001694:	00813823          	sd	s0,16(sp)
    80001698:	00913423          	sd	s1,8(sp)
    8000169c:	02010413          	addi	s0,sp,32
        if(!tail){tail=head;}
        size++;
    }
    T* removeLast()
    {
        size--;
    800016a0:	00006797          	auipc	a5,0x6
    800016a4:	d0078793          	addi	a5,a5,-768 # 800073a0 <_ZN9Scheduler5queueE>
    800016a8:	0107a703          	lw	a4,16(a5)
    800016ac:	fff7071b          	addiw	a4,a4,-1
    800016b0:	00e7a823          	sw	a4,16(a5)
        if(!head){return 0;}
    800016b4:	0007b483          	ld	s1,0(a5)
    800016b8:	04048663          	beqz	s1,80001704 <_ZN9Scheduler3getEv+0x78>
        Elem* prev=0;
    800016bc:	00000793          	li	a5,0
        for(Elem* curr=head; curr && curr!=tail; prev=curr, curr=curr->next);
    800016c0:	00048e63          	beqz	s1,800016dc <_ZN9Scheduler3getEv+0x50>
    800016c4:	00006717          	auipc	a4,0x6
    800016c8:	ce473703          	ld	a4,-796(a4) # 800073a8 <_ZN9Scheduler5queueE+0x8>
    800016cc:	00e48863          	beq	s1,a4,800016dc <_ZN9Scheduler3getEv+0x50>
    800016d0:	00048793          	mv	a5,s1
    800016d4:	0084b483          	ld	s1,8(s1)
    800016d8:	fe9ff06f          	j	800016c0 <_ZN9Scheduler3getEv+0x34>
        Elem* elem=tail;
    800016dc:	00006517          	auipc	a0,0x6
    800016e0:	ccc53503          	ld	a0,-820(a0) # 800073a8 <_ZN9Scheduler5queueE+0x8>
        if(prev) prev->next=0;
    800016e4:	02078c63          	beqz	a5,8000171c <_ZN9Scheduler3getEv+0x90>
    800016e8:	0007b423          	sd	zero,8(a5)
        else head=0;
        tail=prev;
    800016ec:	00006717          	auipc	a4,0x6
    800016f0:	caf73e23          	sd	a5,-836(a4) # 800073a8 <_ZN9Scheduler5queueE+0x8>
        T* retval= elem->data;
    800016f4:	00053483          	ld	s1,0(a0)
        delete elem;
    800016f8:	00050663          	beqz	a0,80001704 <_ZN9Scheduler3getEv+0x78>
    800016fc:	00000097          	auipc	ra,0x0
    80001700:	434080e7          	jalr	1076(ra) # 80001b30 <_ZdlPv>
}
    80001704:	00048513          	mv	a0,s1
    80001708:	01813083          	ld	ra,24(sp)
    8000170c:	01013403          	ld	s0,16(sp)
    80001710:	00813483          	ld	s1,8(sp)
    80001714:	02010113          	addi	sp,sp,32
    80001718:	00008067          	ret
        else head=0;
    8000171c:	00006717          	auipc	a4,0x6
    80001720:	c8073223          	sd	zero,-892(a4) # 800073a0 <_ZN9Scheduler5queueE>
    80001724:	fc9ff06f          	j	800016ec <_ZN9Scheduler3getEv+0x60>

0000000080001728 <_ZN9Scheduler3putEP3TCB>:
void Scheduler::put(TCB *x) {
    80001728:	fe010113          	addi	sp,sp,-32
    8000172c:	00113c23          	sd	ra,24(sp)
    80001730:	00813823          	sd	s0,16(sp)
    80001734:	00913423          	sd	s1,8(sp)
    80001738:	02010413          	addi	s0,sp,32
    8000173c:	00050493          	mv	s1,a0
        Elem* elem=new Elem(data, head);
    80001740:	01000513          	li	a0,16
    80001744:	00000097          	auipc	ra,0x0
    80001748:	3c4080e7          	jalr	964(ra) # 80001b08 <_Znwm>
    8000174c:	00006797          	auipc	a5,0x6
    80001750:	c5478793          	addi	a5,a5,-940 # 800073a0 <_ZN9Scheduler5queueE>
    80001754:	0007b703          	ld	a4,0(a5)
        Elem(T* data, Elem* next=nullptr): data(data), next(next){}
    80001758:	00953023          	sd	s1,0(a0)
    8000175c:	00e53423          	sd	a4,8(a0)
        head=elem;
    80001760:	00a7b023          	sd	a0,0(a5)
        if(!tail){tail=head;}
    80001764:	0087b783          	ld	a5,8(a5)
    80001768:	02078663          	beqz	a5,80001794 <_ZN9Scheduler3putEP3TCB+0x6c>
        size++;
    8000176c:	00006717          	auipc	a4,0x6
    80001770:	c3470713          	addi	a4,a4,-972 # 800073a0 <_ZN9Scheduler5queueE>
    80001774:	01072783          	lw	a5,16(a4)
    80001778:	0017879b          	addiw	a5,a5,1
    8000177c:	00f72823          	sw	a5,16(a4)
    80001780:	01813083          	ld	ra,24(sp)
    80001784:	01013403          	ld	s0,16(sp)
    80001788:	00813483          	ld	s1,8(sp)
    8000178c:	02010113          	addi	sp,sp,32
    80001790:	00008067          	ret
        if(!tail){tail=head;}
    80001794:	00006797          	auipc	a5,0x6
    80001798:	c0a7ba23          	sd	a0,-1004(a5) # 800073a8 <_ZN9Scheduler5queueE+0x8>
    8000179c:	fd1ff06f          	j	8000176c <_ZN9Scheduler3putEP3TCB+0x44>

00000000800017a0 <_GLOBAL__sub_I__ZN9Scheduler5queueE>:
    800017a0:	ff010113          	addi	sp,sp,-16
    800017a4:	00113423          	sd	ra,8(sp)
    800017a8:	00813023          	sd	s0,0(sp)
    800017ac:	01010413          	addi	s0,sp,16
    800017b0:	000105b7          	lui	a1,0x10
    800017b4:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    800017b8:	00100513          	li	a0,1
    800017bc:	00000097          	auipc	ra,0x0
    800017c0:	e8c080e7          	jalr	-372(ra) # 80001648 <_Z41__static_initialization_and_destruction_0ii>
    800017c4:	00813083          	ld	ra,8(sp)
    800017c8:	00013403          	ld	s0,0(sp)
    800017cc:	01010113          	addi	sp,sp,16
    800017d0:	00008067          	ret

00000000800017d4 <_Z11userWrapperPv>:
    __putc('\n');
}
extern void userMain();

void userWrapper(void* arg)
{
    800017d4:	ff010113          	addi	sp,sp,-16
    800017d8:	00113423          	sd	ra,8(sp)
    800017dc:	00813023          	sd	s0,0(sp)
    800017e0:	01010413          	addi	s0,sp,16
    printString("user main start:\n");
    800017e4:	00005517          	auipc	a0,0x5
    800017e8:	89450513          	addi	a0,a0,-1900 # 80006078 <CONSOLE_STATUS+0x68>
    800017ec:	00001097          	auipc	ra,0x1
    800017f0:	ca0080e7          	jalr	-864(ra) # 8000248c <_Z11printStringPKc>
    userMain();
    800017f4:	00002097          	auipc	ra,0x2
    800017f8:	c50080e7          	jalr	-944(ra) # 80003444 <_Z8userMainv>
    printString("user main end:\n");
    800017fc:	00005517          	auipc	a0,0x5
    80001800:	89450513          	addi	a0,a0,-1900 # 80006090 <CONSOLE_STATUS+0x80>
    80001804:	00001097          	auipc	ra,0x1
    80001808:	c88080e7          	jalr	-888(ra) # 8000248c <_Z11printStringPKc>
}
    8000180c:	00813083          	ld	ra,8(sp)
    80001810:	00013403          	ld	s0,0(sp)
    80001814:	01010113          	addi	sp,sp,16
    80001818:	00008067          	ret

000000008000181c <_Z13AllocatorTestv>:
void AllocatorTest() {
    8000181c:	fd010113          	addi	sp,sp,-48
    80001820:	02113423          	sd	ra,40(sp)
    80001824:	02813023          	sd	s0,32(sp)
    80001828:	00913c23          	sd	s1,24(sp)
    8000182c:	01213823          	sd	s2,16(sp)
    80001830:	01313423          	sd	s3,8(sp)
    80001834:	03010413          	addi	s0,sp,48
    uint64* a1=new uint64;
    80001838:	00800513          	li	a0,8
    8000183c:	00000097          	auipc	ra,0x0
    80001840:	2cc080e7          	jalr	716(ra) # 80001b08 <_Znwm>
    80001844:	00050993          	mv	s3,a0
    *a1=4;
    80001848:	00400793          	li	a5,4
    8000184c:	00f53023          	sd	a5,0(a0)
    __putc(*a1+'0');
    80001850:	03400513          	li	a0,52
    80001854:	00004097          	auipc	ra,0x4
    80001858:	298080e7          	jalr	664(ra) # 80005aec <__putc>
    __putc('\n');
    8000185c:	00a00513          	li	a0,10
    80001860:	00004097          	auipc	ra,0x4
    80001864:	28c080e7          	jalr	652(ra) # 80005aec <__putc>
    uint64* a2=new uint64;
    80001868:	00800513          	li	a0,8
    8000186c:	00000097          	auipc	ra,0x0
    80001870:	29c080e7          	jalr	668(ra) # 80001b08 <_Znwm>
    *a2=5;
    80001874:	00500793          	li	a5,5
    80001878:	00f53023          	sd	a5,0(a0)
    __putc(*a2+'0');
    8000187c:	03500513          	li	a0,53
    80001880:	00004097          	auipc	ra,0x4
    80001884:	26c080e7          	jalr	620(ra) # 80005aec <__putc>
    __putc('\n');
    80001888:	00a00513          	li	a0,10
    8000188c:	00004097          	auipc	ra,0x4
    80001890:	260080e7          	jalr	608(ra) # 80005aec <__putc>
    uint64* a3=new uint64;
    80001894:	00800513          	li	a0,8
    80001898:	00000097          	auipc	ra,0x0
    8000189c:	270080e7          	jalr	624(ra) # 80001b08 <_Znwm>
    800018a0:	00050913          	mv	s2,a0
    *a3=6;
    800018a4:	00600793          	li	a5,6
    800018a8:	00f53023          	sd	a5,0(a0)
    __putc(*a3+'0');
    800018ac:	03600513          	li	a0,54
    800018b0:	00004097          	auipc	ra,0x4
    800018b4:	23c080e7          	jalr	572(ra) # 80005aec <__putc>
    __putc('\n');
    800018b8:	00a00513          	li	a0,10
    800018bc:	00004097          	auipc	ra,0x4
    800018c0:	230080e7          	jalr	560(ra) # 80005aec <__putc>
    uint64* a4=new uint64;
    800018c4:	00800513          	li	a0,8
    800018c8:	00000097          	auipc	ra,0x0
    800018cc:	240080e7          	jalr	576(ra) # 80001b08 <_Znwm>
    800018d0:	00050493          	mv	s1,a0
    *a4=7;
    800018d4:	00700793          	li	a5,7
    800018d8:	00f53023          	sd	a5,0(a0)
    __putc(*a4+'0');
    800018dc:	03700513          	li	a0,55
    800018e0:	00004097          	auipc	ra,0x4
    800018e4:	20c080e7          	jalr	524(ra) # 80005aec <__putc>
    __putc('\n');
    800018e8:	00a00513          	li	a0,10
    800018ec:	00004097          	auipc	ra,0x4
    800018f0:	200080e7          	jalr	512(ra) # 80005aec <__putc>
    uint64* a5=new uint64;
    800018f4:	00800513          	li	a0,8
    800018f8:	00000097          	auipc	ra,0x0
    800018fc:	210080e7          	jalr	528(ra) # 80001b08 <_Znwm>
    *a5=8;
    80001900:	00800793          	li	a5,8
    80001904:	00f53023          	sd	a5,0(a0)
    __putc(*a5+'0');
    80001908:	03800513          	li	a0,56
    8000190c:	00004097          	auipc	ra,0x4
    80001910:	1e0080e7          	jalr	480(ra) # 80005aec <__putc>
    __putc('\n');
    80001914:	00a00513          	li	a0,10
    80001918:	00004097          	auipc	ra,0x4
    8000191c:	1d4080e7          	jalr	468(ra) # 80005aec <__putc>
    delete a1;
    80001920:	00098863          	beqz	s3,80001930 <_Z13AllocatorTestv+0x114>
    80001924:	00098513          	mv	a0,s3
    80001928:	00000097          	auipc	ra,0x0
    8000192c:	208080e7          	jalr	520(ra) # 80001b30 <_ZdlPv>
    delete a3;
    80001930:	00090863          	beqz	s2,80001940 <_Z13AllocatorTestv+0x124>
    80001934:	00090513          	mv	a0,s2
    80001938:	00000097          	auipc	ra,0x0
    8000193c:	1f8080e7          	jalr	504(ra) # 80001b30 <_ZdlPv>
    delete a4;
    80001940:	00048863          	beqz	s1,80001950 <_Z13AllocatorTestv+0x134>
    80001944:	00048513          	mv	a0,s1
    80001948:	00000097          	auipc	ra,0x0
    8000194c:	1e8080e7          	jalr	488(ra) # 80001b30 <_ZdlPv>
    uint64* a6=new uint64;
    80001950:	00800513          	li	a0,8
    80001954:	00000097          	auipc	ra,0x0
    80001958:	1b4080e7          	jalr	436(ra) # 80001b08 <_Znwm>
    *a6=9;
    8000195c:	00900793          	li	a5,9
    80001960:	00f53023          	sd	a5,0(a0)
    __putc(*a6+'0');
    80001964:	03900513          	li	a0,57
    80001968:	00004097          	auipc	ra,0x4
    8000196c:	184080e7          	jalr	388(ra) # 80005aec <__putc>
    __putc('\n');
    80001970:	00a00513          	li	a0,10
    80001974:	00004097          	auipc	ra,0x4
    80001978:	178080e7          	jalr	376(ra) # 80005aec <__putc>
}
    8000197c:	02813083          	ld	ra,40(sp)
    80001980:	02013403          	ld	s0,32(sp)
    80001984:	01813483          	ld	s1,24(sp)
    80001988:	01013903          	ld	s2,16(sp)
    8000198c:	00813983          	ld	s3,8(sp)
    80001990:	03010113          	addi	sp,sp,48
    80001994:	00008067          	ret

0000000080001998 <_Z14WorkerAWrapperPv>:

void WorkerAWrapper(void* arg)
{
    80001998:	ff010113          	addi	sp,sp,-16
    8000199c:	00113423          	sd	ra,8(sp)
    800019a0:	00813023          	sd	s0,0(sp)
    800019a4:	01010413          	addi	s0,sp,16
    //printString("worker A start:\n");
    workerBodyA();
    800019a8:	00000097          	auipc	ra,0x0
    800019ac:	a48080e7          	jalr	-1464(ra) # 800013f0 <_Z11workerBodyAv>
    //printString("worker A end:\n");
}
    800019b0:	00813083          	ld	ra,8(sp)
    800019b4:	00013403          	ld	s0,0(sp)
    800019b8:	01010113          	addi	sp,sp,16
    800019bc:	00008067          	ret

00000000800019c0 <_Z14WorkerBWrapperPv>:

void WorkerBWrapper(void* arg)
{
    800019c0:	ff010113          	addi	sp,sp,-16
    800019c4:	00113423          	sd	ra,8(sp)
    800019c8:	00813023          	sd	s0,0(sp)
    800019cc:	01010413          	addi	s0,sp,16
    //printString("worker B start:\n");
    workerBodyB();
    800019d0:	00000097          	auipc	ra,0x0
    800019d4:	b64080e7          	jalr	-1180(ra) # 80001534 <_Z11workerBodyBv>
    //printString("worker B end:\n");
}
    800019d8:	00813083          	ld	ra,8(sp)
    800019dc:	00013403          	ld	s0,0(sp)
    800019e0:	01010113          	addi	sp,sp,16
    800019e4:	00008067          	ret

00000000800019e8 <main>:

extern "C" void SupervisorTrap();



void main() {
    800019e8:	fd010113          	addi	sp,sp,-48
    800019ec:	02113423          	sd	ra,40(sp)
    800019f0:	02813023          	sd	s0,32(sp)
    800019f4:	00913c23          	sd	s1,24(sp)
    800019f8:	01213823          	sd	s2,16(sp)
    800019fc:	03010413          	addi	s0,sp,48
    Riscv::set_stvec((uint64)SupervisorTrap);
    80001a00:	00006797          	auipc	a5,0x6
    80001a04:	9487b783          	ld	a5,-1720(a5) # 80007348 <_GLOBAL_OFFSET_TABLE_+0x18>
    static void SupervisorTrapHandler();
};


inline void Riscv::set_stvec(uint64 stvec) {
    __asm__ volatile ("csrw stvec, %[x]" :: [x] "r" (stvec));
    80001a08:	10579073          	csrw	stvec,a5
    //AllocatorTest();

     thread_t coroutines[2];
     thread_create(&coroutines[0],nullptr,nullptr);
    80001a0c:	00000613          	li	a2,0
    80001a10:	00000593          	li	a1,0
    80001a14:	fd040513          	addi	a0,s0,-48
    80001a18:	00000097          	auipc	ra,0x0
    80001a1c:	8e0080e7          	jalr	-1824(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
     thread_create(&coroutines[1],userWrapper,nullptr);
    80001a20:	00000613          	li	a2,0
    80001a24:	00000597          	auipc	a1,0x0
    80001a28:	db058593          	addi	a1,a1,-592 # 800017d4 <_Z11userWrapperPv>
    80001a2c:	fd840513          	addi	a0,s0,-40
    80001a30:	00000097          	auipc	ra,0x0
    80001a34:	8c8080e7          	jalr	-1848(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>


     while (!coroutines[1]->isFinished()) {
    80001a38:	fd843783          	ld	a5,-40(s0)
    static TCB* createThread(Body body, void* arg, uint64* stack);

    static void dispatch();
    static int exit();

    bool isFinished() const { return finished;}
    80001a3c:	0007c783          	lbu	a5,0(a5)
    80001a40:	00079863          	bnez	a5,80001a50 <main+0x68>
         TCB::dispatch();
    80001a44:	00000097          	auipc	ra,0x0
    80001a48:	324080e7          	jalr	804(ra) # 80001d68 <_ZN3TCB8dispatchEv>
    80001a4c:	fedff06f          	j	80001a38 <main+0x50>
     }

     for (auto coroutine: coroutines) { delete coroutine; }
    80001a50:	fd040493          	addi	s1,s0,-48
    80001a54:	01c0006f          	j	80001a70 <main+0x88>
        return MemoryAllocator::Instance()->mem_free(ptr);
    80001a58:	00000097          	auipc	ra,0x0
    80001a5c:	740080e7          	jalr	1856(ra) # 80002198 <_ZN15MemoryAllocator8InstanceEv>
    80001a60:	00090593          	mv	a1,s2
    80001a64:	00001097          	auipc	ra,0x1
    80001a68:	908080e7          	jalr	-1784(ra) # 8000236c <_ZN15MemoryAllocator8mem_freeEPv>
    80001a6c:	00848493          	addi	s1,s1,8
    80001a70:	fe040793          	addi	a5,s0,-32
    80001a74:	02f48063          	beq	s1,a5,80001a94 <main+0xac>
    80001a78:	0004b903          	ld	s2,0(s1)
    80001a7c:	fe0908e3          	beqz	s2,80001a6c <main+0x84>
        delete stack;
    80001a80:	00893503          	ld	a0,8(s2)
    80001a84:	fc050ae3          	beqz	a0,80001a58 <main+0x70>
    80001a88:	00000097          	auipc	ra,0x0
    80001a8c:	0a8080e7          	jalr	168(ra) # 80001b30 <_ZdlPv>
    80001a90:	fc9ff06f          	j	80001a58 <main+0x70>

     AllocatorTest();
    80001a94:	00000097          	auipc	ra,0x0
    80001a98:	d88080e7          	jalr	-632(ra) # 8000181c <_Z13AllocatorTestv>
     printString("Finished\n");
    80001a9c:	00004517          	auipc	a0,0x4
    80001aa0:	60450513          	addi	a0,a0,1540 # 800060a0 <CONSOLE_STATUS+0x90>
    80001aa4:	00001097          	auipc	ra,0x1
    80001aa8:	9e8080e7          	jalr	-1560(ra) # 8000248c <_Z11printStringPKc>
    // printString("\n");
    // size_t pom2= mem_get_largest_free_block();
    // printString("Largest free block: ");
    // printInteger(pom2);
    // printString("\n");
}
    80001aac:	02813083          	ld	ra,40(sp)
    80001ab0:	02013403          	ld	s0,32(sp)
    80001ab4:	01813483          	ld	s1,24(sp)
    80001ab8:	01013903          	ld	s2,16(sp)
    80001abc:	03010113          	addi	sp,sp,48
    80001ac0:	00008067          	ret

0000000080001ac4 <_ZN6ThreadD1Ev>:
Thread::Thread() {
    myHandle=nullptr;
    body=nullptr;
    arg=nullptr;
}
Thread::~Thread() { }
    80001ac4:	ff010113          	addi	sp,sp,-16
    80001ac8:	00813423          	sd	s0,8(sp)
    80001acc:	01010413          	addi	s0,sp,16
    80001ad0:	00813403          	ld	s0,8(sp)
    80001ad4:	01010113          	addi	sp,sp,16
    80001ad8:	00008067          	ret

0000000080001adc <_ZN6Thread7wrapperEPv>:
        ret = thread_create(&myHandle, wrapper, (void*)this);
    }
    return ret;
}
void Thread::wrapper(void* ptr)
{
    80001adc:	ff010113          	addi	sp,sp,-16
    80001ae0:	00113423          	sd	ra,8(sp)
    80001ae4:	00813023          	sd	s0,0(sp)
    80001ae8:	01010413          	addi	s0,sp,16
    ((Thread*)ptr)->run();
    80001aec:	00053783          	ld	a5,0(a0)
    80001af0:	0107b783          	ld	a5,16(a5)
    80001af4:	000780e7          	jalr	a5
    80001af8:	00813083          	ld	ra,8(sp)
    80001afc:	00013403          	ld	s0,0(sp)
    80001b00:	01010113          	addi	sp,sp,16
    80001b04:	00008067          	ret

0000000080001b08 <_Znwm>:
{
    80001b08:	ff010113          	addi	sp,sp,-16
    80001b0c:	00113423          	sd	ra,8(sp)
    80001b10:	00813023          	sd	s0,0(sp)
    80001b14:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80001b18:	fffff097          	auipc	ra,0xfffff
    80001b1c:	714080e7          	jalr	1812(ra) # 8000122c <_Z9mem_allocm>
}
    80001b20:	00813083          	ld	ra,8(sp)
    80001b24:	00013403          	ld	s0,0(sp)
    80001b28:	01010113          	addi	sp,sp,16
    80001b2c:	00008067          	ret

0000000080001b30 <_ZdlPv>:
{
    80001b30:	ff010113          	addi	sp,sp,-16
    80001b34:	00113423          	sd	ra,8(sp)
    80001b38:	00813023          	sd	s0,0(sp)
    80001b3c:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    80001b40:	fffff097          	auipc	ra,0xfffff
    80001b44:	72c080e7          	jalr	1836(ra) # 8000126c <_Z8mem_freePv>
}
    80001b48:	00813083          	ld	ra,8(sp)
    80001b4c:	00013403          	ld	s0,0(sp)
    80001b50:	01010113          	addi	sp,sp,16
    80001b54:	00008067          	ret

0000000080001b58 <_ZN6ThreadD0Ev>:
Thread::~Thread() { }
    80001b58:	ff010113          	addi	sp,sp,-16
    80001b5c:	00113423          	sd	ra,8(sp)
    80001b60:	00813023          	sd	s0,0(sp)
    80001b64:	01010413          	addi	s0,sp,16
    80001b68:	00000097          	auipc	ra,0x0
    80001b6c:	fc8080e7          	jalr	-56(ra) # 80001b30 <_ZdlPv>
    80001b70:	00813083          	ld	ra,8(sp)
    80001b74:	00013403          	ld	s0,0(sp)
    80001b78:	01010113          	addi	sp,sp,16
    80001b7c:	00008067          	ret

0000000080001b80 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) {
    80001b80:	ff010113          	addi	sp,sp,-16
    80001b84:	00813423          	sd	s0,8(sp)
    80001b88:	01010413          	addi	s0,sp,16
    80001b8c:	00005797          	auipc	a5,0x5
    80001b90:	6e478793          	addi	a5,a5,1764 # 80007270 <_ZTV6Thread+0x10>
    80001b94:	00f53023          	sd	a5,0(a0)
    myHandle= nullptr;
    80001b98:	00053423          	sd	zero,8(a0)
    this->body=body;
    80001b9c:	00b53823          	sd	a1,16(a0)
    this->arg=arg;
    80001ba0:	00c53c23          	sd	a2,24(a0)
}
    80001ba4:	00813403          	ld	s0,8(sp)
    80001ba8:	01010113          	addi	sp,sp,16
    80001bac:	00008067          	ret

0000000080001bb0 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80001bb0:	ff010113          	addi	sp,sp,-16
    80001bb4:	00113423          	sd	ra,8(sp)
    80001bb8:	00813023          	sd	s0,0(sp)
    80001bbc:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80001bc0:	fffff097          	auipc	ra,0xfffff
    80001bc4:	79c080e7          	jalr	1948(ra) # 8000135c <_Z15thread_dispatchv>
}
    80001bc8:	00813083          	ld	ra,8(sp)
    80001bcc:	00013403          	ld	s0,0(sp)
    80001bd0:	01010113          	addi	sp,sp,16
    80001bd4:	00008067          	ret

0000000080001bd8 <_ZN6ThreadC1Ev>:
Thread::Thread() {
    80001bd8:	ff010113          	addi	sp,sp,-16
    80001bdc:	00813423          	sd	s0,8(sp)
    80001be0:	01010413          	addi	s0,sp,16
    80001be4:	00005797          	auipc	a5,0x5
    80001be8:	68c78793          	addi	a5,a5,1676 # 80007270 <_ZTV6Thread+0x10>
    80001bec:	00f53023          	sd	a5,0(a0)
    myHandle=nullptr;
    80001bf0:	00053423          	sd	zero,8(a0)
    body=nullptr;
    80001bf4:	00053823          	sd	zero,16(a0)
    arg=nullptr;
    80001bf8:	00053c23          	sd	zero,24(a0)
}
    80001bfc:	00813403          	ld	s0,8(sp)
    80001c00:	01010113          	addi	sp,sp,16
    80001c04:	00008067          	ret

0000000080001c08 <_ZN6Thread5startEv>:
int Thread::start() {
    80001c08:	ff010113          	addi	sp,sp,-16
    80001c0c:	00113423          	sd	ra,8(sp)
    80001c10:	00813023          	sd	s0,0(sp)
    80001c14:	01010413          	addi	s0,sp,16
    if(body!=nullptr)
    80001c18:	01053583          	ld	a1,16(a0)
    80001c1c:	02058263          	beqz	a1,80001c40 <_ZN6Thread5startEv+0x38>
        ret = thread_create(&myHandle, body, arg);
    80001c20:	01853603          	ld	a2,24(a0)
    80001c24:	00850513          	addi	a0,a0,8
    80001c28:	fffff097          	auipc	ra,0xfffff
    80001c2c:	6d0080e7          	jalr	1744(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
}
    80001c30:	00813083          	ld	ra,8(sp)
    80001c34:	00013403          	ld	s0,0(sp)
    80001c38:	01010113          	addi	sp,sp,16
    80001c3c:	00008067          	ret
        ret = thread_create(&myHandle, wrapper, (void*)this);
    80001c40:	00050613          	mv	a2,a0
    80001c44:	00000597          	auipc	a1,0x0
    80001c48:	e9858593          	addi	a1,a1,-360 # 80001adc <_ZN6Thread7wrapperEPv>
    80001c4c:	00850513          	addi	a0,a0,8
    80001c50:	fffff097          	auipc	ra,0xfffff
    80001c54:	6a8080e7          	jalr	1704(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    80001c58:	fd9ff06f          	j	80001c30 <_ZN6Thread5startEv+0x28>

0000000080001c5c <_ZN6Thread3runEv>:
    int start ();
    static void dispatch ();
    //static int sleep (time_t);
protected:
    Thread ();
    virtual void run () {}
    80001c5c:	ff010113          	addi	sp,sp,-16
    80001c60:	00813423          	sd	s0,8(sp)
    80001c64:	01010413          	addi	s0,sp,16
    80001c68:	00813403          	ld	s0,8(sp)
    80001c6c:	01010113          	addi	sp,sp,16
    80001c70:	00008067          	ret

0000000080001c74 <_ZN3TCB12createThreadEPFvPvES0_Pm>:

extern "C" void context_switch(TCB::Context* oldContext, TCB::Context* newContext);

TCB* TCB::running=nullptr;

TCB* TCB::createThread(Body body, void *arg, uint64 *stack) {
    80001c74:	fd010113          	addi	sp,sp,-48
    80001c78:	02113423          	sd	ra,40(sp)
    80001c7c:	02813023          	sd	s0,32(sp)
    80001c80:	00913c23          	sd	s1,24(sp)
    80001c84:	01213823          	sd	s2,16(sp)
    80001c88:	01313423          	sd	s3,8(sp)
    80001c8c:	01413023          	sd	s4,0(sp)
    80001c90:	03010413          	addi	s0,sp,48
    80001c94:	00050993          	mv	s3,a0
    80001c98:	00058a13          	mv	s4,a1
    80001c9c:	00060913          	mv	s2,a2
    return MemoryAllocator::Instance()->mem_alloc(size);
    80001ca0:	00000097          	auipc	ra,0x0
    80001ca4:	4f8080e7          	jalr	1272(ra) # 80002198 <_ZN15MemoryAllocator8InstanceEv>
    80001ca8:	03800593          	li	a1,56
    80001cac:	00000097          	auipc	ra,0x0
    80001cb0:	548080e7          	jalr	1352(ra) # 800021f4 <_ZN15MemoryAllocator9mem_allocEm>
    80001cb4:	00050493          	mv	s1,a0
          id(0),      // optional init
          context({
              body != nullptr ? (uint64)&TCBWrapper : 0,
              body != nullptr ? (uint64)((char*)stackMem + DEFAULT_STACK_SIZE) : 0
          }),
          body(body)
    80001cb8:	00050023          	sb	zero,0(a0)
    80001cbc:	01253423          	sd	s2,8(a0)
    80001cc0:	01453823          	sd	s4,16(a0)
    80001cc4:	00052c23          	sw	zero,24(a0)
              body != nullptr ? (uint64)&TCBWrapper : 0,
    80001cc8:	04098063          	beqz	s3,80001d08 <_ZN3TCB12createThreadEPFvPvES0_Pm+0x94>
    80001ccc:	00000797          	auipc	a5,0x0
    80001cd0:	17078793          	addi	a5,a5,368 # 80001e3c <_ZN3TCB10TCBWrapperEv>
          body(body)
    80001cd4:	02f4b023          	sd	a5,32(s1)
              body != nullptr ? (uint64)((char*)stackMem + DEFAULT_STACK_SIZE) : 0
    80001cd8:	02098c63          	beqz	s3,80001d10 <_ZN3TCB12createThreadEPFvPvES0_Pm+0x9c>
    80001cdc:	00001637          	lui	a2,0x1
    80001ce0:	00c90933          	add	s2,s2,a2
          body(body)
    80001ce4:	0324b423          	sd	s2,40(s1)
    80001ce8:	0334b823          	sd	s3,48(s1)
    {
        if (running == nullptr) {
    80001cec:	00005797          	auipc	a5,0x5
    80001cf0:	6cc7b783          	ld	a5,1740(a5) # 800073b8 <_ZN3TCB7runningE>
    80001cf4:	02078263          	beqz	a5,80001d18 <_ZN3TCB12createThreadEPFvPvES0_Pm+0xa4>
            running = this;
        } else {
            Scheduler::put(this);
    80001cf8:	00048513          	mv	a0,s1
    80001cfc:	00000097          	auipc	ra,0x0
    80001d00:	a2c080e7          	jalr	-1492(ra) # 80001728 <_ZN9Scheduler3putEP3TCB>
    80001d04:	01c0006f          	j	80001d20 <_ZN3TCB12createThreadEPFvPvES0_Pm+0xac>
              body != nullptr ? (uint64)&TCBWrapper : 0,
    80001d08:	00000793          	li	a5,0
    80001d0c:	fc9ff06f          	j	80001cd4 <_ZN3TCB12createThreadEPFvPvES0_Pm+0x60>
              body != nullptr ? (uint64)((char*)stackMem + DEFAULT_STACK_SIZE) : 0
    80001d10:	00000913          	li	s2,0
    80001d14:	fd1ff06f          	j	80001ce4 <_ZN3TCB12createThreadEPFvPvES0_Pm+0x70>
            running = this;
    80001d18:	00005797          	auipc	a5,0x5
    80001d1c:	6a97b023          	sd	s1,1696(a5) # 800073b8 <_ZN3TCB7runningE>
    return new TCB(body, arg, stack);
}
    80001d20:	00048513          	mv	a0,s1
    80001d24:	02813083          	ld	ra,40(sp)
    80001d28:	02013403          	ld	s0,32(sp)
    80001d2c:	01813483          	ld	s1,24(sp)
    80001d30:	01013903          	ld	s2,16(sp)
    80001d34:	00813983          	ld	s3,8(sp)
    80001d38:	00013a03          	ld	s4,0(sp)
    80001d3c:	03010113          	addi	sp,sp,48
    80001d40:	00008067          	ret
    80001d44:	00050913          	mv	s2,a0
        return MemoryAllocator::Instance()->mem_free(ptr);
    80001d48:	00000097          	auipc	ra,0x0
    80001d4c:	450080e7          	jalr	1104(ra) # 80002198 <_ZN15MemoryAllocator8InstanceEv>
    80001d50:	00048593          	mv	a1,s1
    80001d54:	00000097          	auipc	ra,0x0
    80001d58:	618080e7          	jalr	1560(ra) # 8000236c <_ZN15MemoryAllocator8mem_freeEPv>
    80001d5c:	00090513          	mv	a0,s2
    80001d60:	00006097          	auipc	ra,0x6
    80001d64:	758080e7          	jalr	1880(ra) # 800084b8 <_Unwind_Resume>

0000000080001d68 <_ZN3TCB8dispatchEv>:

void TCB::dispatch() {
    80001d68:	fe010113          	addi	sp,sp,-32
    80001d6c:	00113c23          	sd	ra,24(sp)
    80001d70:	00813823          	sd	s0,16(sp)
    80001d74:	00913423          	sd	s1,8(sp)
    80001d78:	01213023          	sd	s2,0(sp)
    80001d7c:	02010413          	addi	s0,sp,32
    //printString("TCB::dispatch()\n");
    TCB *old=running;
    80001d80:	00005497          	auipc	s1,0x5
    80001d84:	6384b483          	ld	s1,1592(s1) # 800073b8 <_ZN3TCB7runningE>
    bool isFinished() const { return finished;}
    80001d88:	0004c783          	lbu	a5,0(s1)
    if (!old->isFinished()) {
    80001d8c:	04078a63          	beqz	a5,80001de0 <_ZN3TCB8dispatchEv+0x78>
        Scheduler::put(old);
    }
    running=Scheduler::get();
    80001d90:	00000097          	auipc	ra,0x0
    80001d94:	8fc080e7          	jalr	-1796(ra) # 8000168c <_ZN9Scheduler3getEv>
    80001d98:	00005917          	auipc	s2,0x5
    80001d9c:	62090913          	addi	s2,s2,1568 # 800073b8 <_ZN3TCB7runningE>
    80001da0:	00a93023          	sd	a0,0(s2)


    Riscv::pushRegisters();
    80001da4:	fffff097          	auipc	ra,0xfffff
    80001da8:	37c080e7          	jalr	892(ra) # 80001120 <_ZN5Riscv13pushRegistersEv>
    //Riscv::restorePrivilege();
    context_switch(&old->context, &running->context);
    80001dac:	00093583          	ld	a1,0(s2)
    80001db0:	02058593          	addi	a1,a1,32
    80001db4:	02048513          	addi	a0,s1,32
    80001db8:	fffff097          	auipc	ra,0xfffff
    80001dbc:	460080e7          	jalr	1120(ra) # 80001218 <context_switch>
    Riscv::popRegisters();
    80001dc0:	fffff097          	auipc	ra,0xfffff
    80001dc4:	3dc080e7          	jalr	988(ra) # 8000119c <_ZN5Riscv12popRegistersEv>
}
    80001dc8:	01813083          	ld	ra,24(sp)
    80001dcc:	01013403          	ld	s0,16(sp)
    80001dd0:	00813483          	ld	s1,8(sp)
    80001dd4:	00013903          	ld	s2,0(sp)
    80001dd8:	02010113          	addi	sp,sp,32
    80001ddc:	00008067          	ret
        Scheduler::put(old);
    80001de0:	00048513          	mv	a0,s1
    80001de4:	00000097          	auipc	ra,0x0
    80001de8:	944080e7          	jalr	-1724(ra) # 80001728 <_ZN9Scheduler3putEP3TCB>
    80001dec:	fa5ff06f          	j	80001d90 <_ZN3TCB8dispatchEv+0x28>

0000000080001df0 <_ZN3TCB4exitEv>:



int TCB::exit() {
    if (running->isFinished()) {
    80001df0:	00005797          	auipc	a5,0x5
    80001df4:	5c87b783          	ld	a5,1480(a5) # 800073b8 <_ZN3TCB7runningE>
    80001df8:	0007c703          	lbu	a4,0(a5)
    80001dfc:	02071c63          	bnez	a4,80001e34 <_ZN3TCB4exitEv+0x44>
int TCB::exit() {
    80001e00:	ff010113          	addi	sp,sp,-16
    80001e04:	00113423          	sd	ra,8(sp)
    80001e08:	00813023          	sd	s0,0(sp)
    80001e0c:	01010413          	addi	s0,sp,16
        return -1;
    }
    running->finished=true;
    80001e10:	00100713          	li	a4,1
    80001e14:	00e78023          	sb	a4,0(a5)
    dispatch();
    80001e18:	00000097          	auipc	ra,0x0
    80001e1c:	f50080e7          	jalr	-176(ra) # 80001d68 <_ZN3TCB8dispatchEv>
    return 0;
    80001e20:	00000513          	li	a0,0
}
    80001e24:	00813083          	ld	ra,8(sp)
    80001e28:	00013403          	ld	s0,0(sp)
    80001e2c:	01010113          	addi	sp,sp,16
    80001e30:	00008067          	ret
        return -1;
    80001e34:	fff00513          	li	a0,-1
}
    80001e38:	00008067          	ret

0000000080001e3c <_ZN3TCB10TCBWrapperEv>:

void TCB::TCBWrapper() {
    80001e3c:	ff010113          	addi	sp,sp,-16
    80001e40:	00113423          	sd	ra,8(sp)
    80001e44:	00813023          	sd	s0,0(sp)
    80001e48:	01010413          	addi	s0,sp,16
    //printString("Entered wrapper\n");
    //Riscv::restorePrivilege();
    //Riscv::popSppSpie();
    running->body(running->arg);
    80001e4c:	00005797          	auipc	a5,0x5
    80001e50:	56c7b783          	ld	a5,1388(a5) # 800073b8 <_ZN3TCB7runningE>
    80001e54:	0307b703          	ld	a4,48(a5)
    80001e58:	0107b503          	ld	a0,16(a5)
    80001e5c:	000700e7          	jalr	a4
    exit();
    80001e60:	00000097          	auipc	ra,0x0
    80001e64:	f90080e7          	jalr	-112(ra) # 80001df0 <_ZN3TCB4exitEv>
    80001e68:	00813083          	ld	ra,8(sp)
    80001e6c:	00013403          	ld	s0,0(sp)
    80001e70:	01010113          	addi	sp,sp,16
    80001e74:	00008067          	ret

0000000080001e78 <_ZN5Riscv10popSppSpieEv>:
#include  "../h/print.hpp"
using Body=void(*)(void*);
extern  "C" void SupervisorTrapHandlerWrapper() {
    Riscv::SupervisorTrapHandler();
}
void Riscv::popSppSpie() {
    80001e78:	ff010113          	addi	sp,sp,-16
    80001e7c:	00813423          	sd	s0,8(sp)
    80001e80:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    80001e84:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80001e88:	10200073          	sret
}
    80001e8c:	00813403          	ld	s0,8(sp)
    80001e90:	01010113          	addi	sp,sp,16
    80001e94:	00008067          	ret

0000000080001e98 <_ZN5Riscv16restorePrivilegeEv>:

void Riscv::restorePrivilege()
{
    80001e98:	ff010113          	addi	sp,sp,-16
    80001e9c:	00813423          	sd	s0,8(sp)
    80001ea0:	01010413          	addi	s0,sp,16
    uint64 volatile stval;
    __asm__ volatile("csrr %[stval], stval":[stval]"=r"(stval));
    return stval;
}
inline void Riscv::mc_sstatus(uint64 mask) {
    __asm__ volatile("csrc sstatus,%[mask]"::[mask]"r"(mask));
    80001ea4:	10000793          	li	a5,256
    80001ea8:	1007b073          	csrc	sstatus,a5
    mc_sstatus(SSTATUS_SPP);
}
    80001eac:	00813403          	ld	s0,8(sp)
    80001eb0:	01010113          	addi	sp,sp,16
    80001eb4:	00008067          	ret

0000000080001eb8 <_ZN5Riscv21SupervisorTrapHandlerEv>:


void Riscv::SupervisorTrapHandler() {
    80001eb8:	fa010113          	addi	sp,sp,-96
    80001ebc:	04113c23          	sd	ra,88(sp)
    80001ec0:	04813823          	sd	s0,80(sp)
    80001ec4:	04913423          	sd	s1,72(sp)
    80001ec8:	05213023          	sd	s2,64(sp)
    80001ecc:	03313c23          	sd	s3,56(sp)
    80001ed0:	03413823          	sd	s4,48(sp)
    80001ed4:	03513423          	sd	s5,40(sp)
    80001ed8:	06010413          	addi	s0,sp,96
    __asm__ volatile("csrr %[scause], scause":[scause]"=r"(scause));
    80001edc:	142027f3          	csrr	a5,scause
    80001ee0:	faf43423          	sd	a5,-88(s0)
    return scause;
    80001ee4:	fa843703          	ld	a4,-88(s0)
    __asm__ volatile ("csrr %[x],sepc" : [x] "=r" (sepc));
    80001ee8:	141024f3          	csrr	s1,sepc
    __asm__ volatile ("csrr %[x],sstatus" : [x] "=r" (sstatus));
    80001eec:	10002973          	csrr	s2,sstatus
    uint64 sepc;
    uint64 sstatus;
    uint64 scause=get_scause();
    sepc=get_sepc();
    sstatus=get_sstatus();
    if (scause == 0x8000000000000001UL) {
    80001ef0:	fff00793          	li	a5,-1
    80001ef4:	03f79793          	slli	a5,a5,0x3f
    80001ef8:	00178793          	addi	a5,a5,1
    80001efc:	0ef70c63          	beq	a4,a5,80001ff4 <_ZN5Riscv21SupervisorTrapHandlerEv+0x13c>
        // interrupt: yes; cause code: supervisor software interrupt (CLINT; machine timer interrupt)
        mc_sip(SIP_SSIP);
    }
    else if (scause == 0x8000000000000009UL) {
    80001f00:	fff00793          	li	a5,-1
    80001f04:	03f79793          	slli	a5,a5,0x3f
    80001f08:	00978793          	addi	a5,a5,9
    80001f0c:	0ef70a63          	beq	a4,a5,80002000 <_ZN5Riscv21SupervisorTrapHandlerEv+0x148>
        // interrupt: yes; cause code: supervisor external interrupt (PLIC; could be keyboard)
        console_handler();
    }
    else {
        uint64 syscode;
    __asm__ volatile ("mv %[x], a0" : [x] "=r" (syscode));
    80001f10:	00050793          	mv	a5,a0

    if (syscode==MEM_ALLOC) {
    80001f14:	00100713          	li	a4,1
    80001f18:	0ee78a63          	beq	a5,a4,8000200c <_ZN5Riscv21SupervisorTrapHandlerEv+0x154>
        size_t size_in_blocks;
        __asm__ volatile ("mv %[x], a1" : [x] "=r" (size_in_blocks));
        void* ptr = MemoryAllocator::Instance()->mem_alloc(size_in_blocks * MEM_BLOCK_SIZE);
        __asm__ volatile ("mv a0,%[x]" :: [x] "r" (ptr));
    }
    else if (syscode==MEM_FREE) {
    80001f1c:	00200713          	li	a4,2
    80001f20:	12e78c63          	beq	a5,a4,80002058 <_ZN5Riscv21SupervisorTrapHandlerEv+0x1a0>
        void* ptr;
        __asm__ volatile ("mv %[x], a1" : [x] "=r" (ptr));
        MemoryAllocator::Instance()->mem_free(ptr);
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (0));
    }
    else if (syscode==MEM_GET_FREE_SPACE) {
    80001f24:	00300713          	li	a4,3
    80001f28:	14e78a63          	beq	a5,a4,8000207c <_ZN5Riscv21SupervisorTrapHandlerEv+0x1c4>
        size_t freeMem = MemoryAllocator::Instance()->getFreeMemSize();
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (freeMem));
    }
    else if (syscode==MEM_GET_LARGEST_FREE_BLOCK) {
    80001f2c:	00400713          	li	a4,4
    80001f30:	16e78063          	beq	a5,a4,80002090 <_ZN5Riscv21SupervisorTrapHandlerEv+0x1d8>
        size_t largestBlock = MemoryAllocator::Instance()->getLargestFreeBlock();
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (largestBlock));
    }
    else if (syscode==THREAD_CREATE) {
    80001f34:	01100713          	li	a4,17
    80001f38:	16e78863          	beq	a5,a4,800020a8 <_ZN5Riscv21SupervisorTrapHandlerEv+0x1f0>
        else {
            ret=1;
        }
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (ret));
    }
    else if (syscode==THREAD_EXIT) {
    80001f3c:	01200713          	li	a4,18
    80001f40:	1ae78c63          	beq	a5,a4,800020f8 <_ZN5Riscv21SupervisorTrapHandlerEv+0x240>
        int ret = TCB::exit();
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (ret));
    }
    else if (syscode==THREAD_DISPATCH) {
    80001f44:	01300713          	li	a4,19
    80001f48:	1ce78063          	beq	a5,a4,80002108 <_ZN5Riscv21SupervisorTrapHandlerEv+0x250>
    __asm__ volatile("csrr %[scause], scause":[scause]"=r"(scause));
    80001f4c:	142027f3          	csrr	a5,scause
    80001f50:	faf43c23          	sd	a5,-72(s0)
    return scause;
    80001f54:	fb843a03          	ld	s4,-72(s0)
    __asm__ volatile("csrr %[stval], stval":[stval]"=r"(stval));
    80001f58:	143027f3          	csrr	a5,stval
    80001f5c:	faf43823          	sd	a5,-80(s0)
    return stval;
    80001f60:	fb043983          	ld	s3,-80(s0)
        TCB::dispatch();
    }
    else {
        uint64 scause= get_scause();
        uint64 stval= get_stval();
        printString("scause:");
    80001f64:	00004517          	auipc	a0,0x4
    80001f68:	14c50513          	addi	a0,a0,332 # 800060b0 <CONSOLE_STATUS+0xa0>
    80001f6c:	00000097          	auipc	ra,0x0
    80001f70:	520080e7          	jalr	1312(ra) # 8000248c <_Z11printStringPKc>
        printInteger(scause);
    80001f74:	000a0513          	mv	a0,s4
    80001f78:	00000097          	auipc	ra,0x0
    80001f7c:	558080e7          	jalr	1368(ra) # 800024d0 <_Z12printIntegerm>
        printString("\n");
    80001f80:	00004517          	auipc	a0,0x4
    80001f84:	10850513          	addi	a0,a0,264 # 80006088 <CONSOLE_STATUS+0x78>
    80001f88:	00000097          	auipc	ra,0x0
    80001f8c:	504080e7          	jalr	1284(ra) # 8000248c <_Z11printStringPKc>

        printString("stval:");
    80001f90:	00004517          	auipc	a0,0x4
    80001f94:	12850513          	addi	a0,a0,296 # 800060b8 <CONSOLE_STATUS+0xa8>
    80001f98:	00000097          	auipc	ra,0x0
    80001f9c:	4f4080e7          	jalr	1268(ra) # 8000248c <_Z11printStringPKc>
        printInteger(stval);
    80001fa0:	00098513          	mv	a0,s3
    80001fa4:	00000097          	auipc	ra,0x0
    80001fa8:	52c080e7          	jalr	1324(ra) # 800024d0 <_Z12printIntegerm>
        printString("\n");
    80001fac:	00004517          	auipc	a0,0x4
    80001fb0:	0dc50513          	addi	a0,a0,220 # 80006088 <CONSOLE_STATUS+0x78>
    80001fb4:	00000097          	auipc	ra,0x0
    80001fb8:	4d8080e7          	jalr	1240(ra) # 8000248c <_Z11printStringPKc>

        printString("sepc:");
    80001fbc:	00004517          	auipc	a0,0x4
    80001fc0:	10450513          	addi	a0,a0,260 # 800060c0 <CONSOLE_STATUS+0xb0>
    80001fc4:	00000097          	auipc	ra,0x0
    80001fc8:	4c8080e7          	jalr	1224(ra) # 8000248c <_Z11printStringPKc>
        printInteger(sepc);
    80001fcc:	00048513          	mv	a0,s1
    80001fd0:	00000097          	auipc	ra,0x0
    80001fd4:	500080e7          	jalr	1280(ra) # 800024d0 <_Z12printIntegerm>
        printString("\n");
    80001fd8:	00004517          	auipc	a0,0x4
    80001fdc:	0b050513          	addi	a0,a0,176 # 80006088 <CONSOLE_STATUS+0x78>
    80001fe0:	00000097          	auipc	ra,0x0
    80001fe4:	4ac080e7          	jalr	1196(ra) # 8000248c <_Z11printStringPKc>
        __getc();
    80001fe8:	00004097          	auipc	ra,0x4
    80001fec:	b40080e7          	jalr	-1216(ra) # 80005b28 <__getc>
    80001ff0:	0380006f          	j	80002028 <_ZN5Riscv21SupervisorTrapHandlerEv+0x170>
}
inline void Riscv::mc_sip(uint64 mask)
{
    __asm__ volatile("csrc sip, %[mask]":: [mask]"r"(mask));
    80001ff4:	00200793          	li	a5,2
    80001ff8:	1447b073          	csrc	sip,a5
}
    80001ffc:	0380006f          	j	80002034 <_ZN5Riscv21SupervisorTrapHandlerEv+0x17c>
        console_handler();
    80002000:	00004097          	auipc	ra,0x4
    80002004:	b60080e7          	jalr	-1184(ra) # 80005b60 <console_handler>
    80002008:	02c0006f          	j	80002034 <_ZN5Riscv21SupervisorTrapHandlerEv+0x17c>
        __asm__ volatile ("mv %[x], a1" : [x] "=r" (size_in_blocks));
    8000200c:	00058993          	mv	s3,a1
        void* ptr = MemoryAllocator::Instance()->mem_alloc(size_in_blocks * MEM_BLOCK_SIZE);
    80002010:	00000097          	auipc	ra,0x0
    80002014:	188080e7          	jalr	392(ra) # 80002198 <_ZN15MemoryAllocator8InstanceEv>
    80002018:	00299593          	slli	a1,s3,0x2
    8000201c:	00000097          	auipc	ra,0x0
    80002020:	1d8080e7          	jalr	472(ra) # 800021f4 <_ZN15MemoryAllocator9mem_allocEm>
        __asm__ volatile ("mv a0,%[x]" :: [x] "r" (ptr));
    80002024:	00050513          	mv	a0,a0
    }
    set_sepc(sepc+4);
    80002028:	00448493          	addi	s1,s1,4
    __asm__ volatile ("csrw sepc, %[x]" :: [x] "r" (sepc));
    8000202c:	14149073          	csrw	sepc,s1
    __asm__ volatile ("csrw sstatus, %[x]" :: [x] "r" (sstatus));
    80002030:	10091073          	csrw	sstatus,s2
    set_sstatus(sstatus);
    }


    80002034:	05813083          	ld	ra,88(sp)
    80002038:	05013403          	ld	s0,80(sp)
    8000203c:	04813483          	ld	s1,72(sp)
    80002040:	04013903          	ld	s2,64(sp)
    80002044:	03813983          	ld	s3,56(sp)
    80002048:	03013a03          	ld	s4,48(sp)
    8000204c:	02813a83          	ld	s5,40(sp)
    80002050:	06010113          	addi	sp,sp,96
    80002054:	00008067          	ret
        __asm__ volatile ("mv %[x], a1" : [x] "=r" (ptr));
    80002058:	00058993          	mv	s3,a1
        MemoryAllocator::Instance()->mem_free(ptr);
    8000205c:	00000097          	auipc	ra,0x0
    80002060:	13c080e7          	jalr	316(ra) # 80002198 <_ZN15MemoryAllocator8InstanceEv>
    80002064:	00098593          	mv	a1,s3
    80002068:	00000097          	auipc	ra,0x0
    8000206c:	304080e7          	jalr	772(ra) # 8000236c <_ZN15MemoryAllocator8mem_freeEPv>
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (0));
    80002070:	00000793          	li	a5,0
    80002074:	00078513          	mv	a0,a5
    80002078:	fb1ff06f          	j	80002028 <_ZN5Riscv21SupervisorTrapHandlerEv+0x170>
        size_t freeMem = MemoryAllocator::Instance()->getFreeMemSize();
    8000207c:	00000097          	auipc	ra,0x0
    80002080:	11c080e7          	jalr	284(ra) # 80002198 <_ZN15MemoryAllocator8InstanceEv>
    void* mem_alloc(size_t size);//size in bytes

    void mem_free(void* ptr);

    size_t getFreeMemSize() {
        return this->freeMemSize;
    80002084:	00853783          	ld	a5,8(a0)
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (freeMem));
    80002088:	00078513          	mv	a0,a5
    8000208c:	f9dff06f          	j	80002028 <_ZN5Riscv21SupervisorTrapHandlerEv+0x170>
        size_t largestBlock = MemoryAllocator::Instance()->getLargestFreeBlock();
    80002090:	00000097          	auipc	ra,0x0
    80002094:	108080e7          	jalr	264(ra) # 80002198 <_ZN15MemoryAllocator8InstanceEv>
    80002098:	00000097          	auipc	ra,0x0
    8000209c:	3b8080e7          	jalr	952(ra) # 80002450 <_ZN15MemoryAllocator19getLargestFreeBlockEv>
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (largestBlock));
    800020a0:	00050513          	mv	a0,a0
    800020a4:	f85ff06f          	j	80002028 <_ZN5Riscv21SupervisorTrapHandlerEv+0x170>
        __asm__ volatile ("mv %[x], a1" : [x] "=r" (handle));
    800020a8:	00058993          	mv	s3,a1
        __asm__ volatile ("mv %[x], a2" : [x] "=r" (start_routine));
    800020ac:	00060a13          	mv	s4,a2
        __asm__ volatile ("mv %[x], a3" : [x] "=r" (arg));
    800020b0:	00068a93          	mv	s5,a3
        uint64 *sp=(uint64*)MemoryAllocator::Instance()->mem_alloc(DEFAULT_STACK_SIZE);
    800020b4:	00000097          	auipc	ra,0x0
    800020b8:	0e4080e7          	jalr	228(ra) # 80002198 <_ZN15MemoryAllocator8InstanceEv>
    800020bc:	000015b7          	lui	a1,0x1
    800020c0:	00000097          	auipc	ra,0x0
    800020c4:	134080e7          	jalr	308(ra) # 800021f4 <_ZN15MemoryAllocator9mem_allocEm>
    800020c8:	00050613          	mv	a2,a0
        *handle=TCB::createThread( start_routine, arg,sp);
    800020cc:	000a8593          	mv	a1,s5
    800020d0:	000a0513          	mv	a0,s4
    800020d4:	00000097          	auipc	ra,0x0
    800020d8:	ba0080e7          	jalr	-1120(ra) # 80001c74 <_ZN3TCB12createThreadEPFvPvES0_Pm>
    800020dc:	00a9b023          	sd	a0,0(s3)
        if (*handle) {
    800020e0:	00050863          	beqz	a0,800020f0 <_ZN5Riscv21SupervisorTrapHandlerEv+0x238>
            ret=0;
    800020e4:	00000793          	li	a5,0
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (ret));
    800020e8:	00078513          	mv	a0,a5
    800020ec:	f3dff06f          	j	80002028 <_ZN5Riscv21SupervisorTrapHandlerEv+0x170>
            ret=1;
    800020f0:	00100793          	li	a5,1
    800020f4:	ff5ff06f          	j	800020e8 <_ZN5Riscv21SupervisorTrapHandlerEv+0x230>
        int ret = TCB::exit();
    800020f8:	00000097          	auipc	ra,0x0
    800020fc:	cf8080e7          	jalr	-776(ra) # 80001df0 <_ZN3TCB4exitEv>
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (ret));
    80002100:	00050513          	mv	a0,a0
    80002104:	f25ff06f          	j	80002028 <_ZN5Riscv21SupervisorTrapHandlerEv+0x170>
        TCB::dispatch();
    80002108:	00000097          	auipc	ra,0x0
    8000210c:	c60080e7          	jalr	-928(ra) # 80001d68 <_ZN3TCB8dispatchEv>
    80002110:	f19ff06f          	j	80002028 <_ZN5Riscv21SupervisorTrapHandlerEv+0x170>

0000000080002114 <SupervisorTrapHandlerWrapper>:
extern  "C" void SupervisorTrapHandlerWrapper() {
    80002114:	ff010113          	addi	sp,sp,-16
    80002118:	00113423          	sd	ra,8(sp)
    8000211c:	00813023          	sd	s0,0(sp)
    80002120:	01010413          	addi	s0,sp,16
    Riscv::SupervisorTrapHandler();
    80002124:	00000097          	auipc	ra,0x0
    80002128:	d94080e7          	jalr	-620(ra) # 80001eb8 <_ZN5Riscv21SupervisorTrapHandlerEv>
}
    8000212c:	00813083          	ld	ra,8(sp)
    80002130:	00013403          	ld	s0,0(sp)
    80002134:	01010113          	addi	sp,sp,16
    80002138:	00008067          	ret

000000008000213c <_ZN15MemoryAllocatorC1Ev>:

#include "../h/MemoryAllocator.hpp"
#include "../lib/console.h"


MemoryAllocator::MemoryAllocator() {
    8000213c:	ff010113          	addi	sp,sp,-16
    80002140:	00813423          	sd	s0,8(sp)
    80002144:	01010413          	addi	s0,sp,16
    this->head = (MemoryHeader*)HEAP_START_ADDR;
    80002148:	00005797          	auipc	a5,0x5
    8000214c:	1f07b783          	ld	a5,496(a5) # 80007338 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002150:	0007b703          	ld	a4,0(a5)
    80002154:	00e53023          	sd	a4,0(a0)
    // this->tail = (MemoryHeader*)HEAP_START_ADDR;
    // this->tail->next=nullptr;
    // this->tail->prev=nullptr;
    this->head->next=nullptr;
    80002158:	00073423          	sd	zero,8(a4)
    this->head->prev=nullptr;
    8000215c:	00053783          	ld	a5,0(a0)
    80002160:	0007b823          	sd	zero,16(a5)
    this->head->size = (size_t)((char*)HEAP_END_ADDR - (char*)HEAP_START_ADDR - sizeof(MemoryHeader));
    80002164:	00005797          	auipc	a5,0x5
    80002168:	1ec7b783          	ld	a5,492(a5) # 80007350 <_GLOBAL_OFFSET_TABLE_+0x20>
    8000216c:	0007b783          	ld	a5,0(a5)
    80002170:	40e787b3          	sub	a5,a5,a4
    80002174:	00053703          	ld	a4,0(a0)
    80002178:	fe878793          	addi	a5,a5,-24
    8000217c:	00f73023          	sd	a5,0(a4)
    this->freeMemSize=this->head->size;
    80002180:	00053783          	ld	a5,0(a0)
    80002184:	0007b783          	ld	a5,0(a5)
    80002188:	00f53423          	sd	a5,8(a0)
}
    8000218c:	00813403          	ld	s0,8(sp)
    80002190:	01010113          	addi	sp,sp,16
    80002194:	00008067          	ret

0000000080002198 <_ZN15MemoryAllocator8InstanceEv>:




MemoryAllocator* MemoryAllocator::Instance() {
    static MemoryAllocator instance;
    80002198:	00005797          	auipc	a5,0x5
    8000219c:	2287c783          	lbu	a5,552(a5) # 800073c0 <_ZGVZN15MemoryAllocator8InstanceEvE8instance>
    800021a0:	00078863          	beqz	a5,800021b0 <_ZN15MemoryAllocator8InstanceEv+0x18>
    return &instance;
}
    800021a4:	00005517          	auipc	a0,0x5
    800021a8:	22450513          	addi	a0,a0,548 # 800073c8 <_ZZN15MemoryAllocator8InstanceEvE8instance>
    800021ac:	00008067          	ret
MemoryAllocator* MemoryAllocator::Instance() {
    800021b0:	ff010113          	addi	sp,sp,-16
    800021b4:	00113423          	sd	ra,8(sp)
    800021b8:	00813023          	sd	s0,0(sp)
    800021bc:	01010413          	addi	s0,sp,16
    static MemoryAllocator instance;
    800021c0:	00005517          	auipc	a0,0x5
    800021c4:	20850513          	addi	a0,a0,520 # 800073c8 <_ZZN15MemoryAllocator8InstanceEvE8instance>
    800021c8:	00000097          	auipc	ra,0x0
    800021cc:	f74080e7          	jalr	-140(ra) # 8000213c <_ZN15MemoryAllocatorC1Ev>
    800021d0:	00100793          	li	a5,1
    800021d4:	00005717          	auipc	a4,0x5
    800021d8:	1ef70623          	sb	a5,492(a4) # 800073c0 <_ZGVZN15MemoryAllocator8InstanceEvE8instance>
}
    800021dc:	00005517          	auipc	a0,0x5
    800021e0:	1ec50513          	addi	a0,a0,492 # 800073c8 <_ZZN15MemoryAllocator8InstanceEvE8instance>
    800021e4:	00813083          	ld	ra,8(sp)
    800021e8:	00013403          	ld	s0,0(sp)
    800021ec:	01010113          	addi	sp,sp,16
    800021f0:	00008067          	ret

00000000800021f4 <_ZN15MemoryAllocator9mem_allocEm>:


void* MemoryAllocator::mem_alloc(size_t size) {
    800021f4:	ff010113          	addi	sp,sp,-16
    800021f8:	00813423          	sd	s0,8(sp)
    800021fc:	01010413          	addi	s0,sp,16
    80002200:	00050813          	mv	a6,a0
    if (this->head==nullptr)
    80002204:	00053503          	ld	a0,0(a0)
    80002208:	0a050263          	beqz	a0,800022ac <_ZN15MemoryAllocator9mem_allocEm+0xb8>
        return nullptr;
    if (size==0) {
    8000220c:	0e058863          	beqz	a1,800022fc <_ZN15MemoryAllocator9mem_allocEm+0x108>
        return nullptr;
    }
    uint64 offset = size % MEM_BLOCK_SIZE;
    80002210:	0035f793          	andi	a5,a1,3
    if (offset!=0)
    80002214:	00078463          	beqz	a5,8000221c <_ZN15MemoryAllocator9mem_allocEm+0x28>
        offset=1;
    80002218:	00100793          	li	a5,1

    size_t actulalSize = (size  / MEM_BLOCK_SIZE+offset ) * MEM_BLOCK_SIZE;
    8000221c:	0025d693          	srli	a3,a1,0x2
    80002220:	00f686b3          	add	a3,a3,a5
    80002224:	00269693          	slli	a3,a3,0x2


    MemoryHeader* curr= this->head;
    80002228:	00050793          	mv	a5,a0
    while (curr->next!=nullptr && curr->size < actulalSize) {
    8000222c:	00078713          	mv	a4,a5
    80002230:	0087b783          	ld	a5,8(a5)
    80002234:	00078663          	beqz	a5,80002240 <_ZN15MemoryAllocator9mem_allocEm+0x4c>
    80002238:	00073603          	ld	a2,0(a4)
    8000223c:	fed668e3          	bltu	a2,a3,8000222c <_ZN15MemoryAllocator9mem_allocEm+0x38>
        curr=curr->next;
    }
    if (curr->size < actulalSize) {
    80002240:	00073603          	ld	a2,0(a4)
    80002244:	0cd66063          	bltu	a2,a3,80002304 <_ZN15MemoryAllocator9mem_allocEm+0x110>
        return nullptr;
    }



    if (curr->size - actulalSize >= MEM_BLOCK_SIZE+sizeof(MemoryHeader)) {
    80002248:	40d60633          	sub	a2,a2,a3
    8000224c:	01b00593          	li	a1,27
    80002250:	06c5f863          	bgeu	a1,a2,800022c0 <_ZN15MemoryAllocator9mem_allocEm+0xcc>


        MemoryHeader* new_seg=(MemoryHeader*)((char*)curr + sizeof(MemoryHeader) + actulalSize);
    80002254:	01868793          	addi	a5,a3,24
    80002258:	00f707b3          	add	a5,a4,a5
        new_seg->size = curr->size - actulalSize - sizeof(MemoryHeader);
    8000225c:	fe860613          	addi	a2,a2,-24 # fe8 <_entry-0x7ffff018>
    80002260:	00c7b023          	sd	a2,0(a5)
        new_seg->next=curr->next;
    80002264:	00873603          	ld	a2,8(a4)
    80002268:	00c7b423          	sd	a2,8(a5)
        new_seg->prev=curr->prev;
    8000226c:	01073603          	ld	a2,16(a4)
    80002270:	00c7b823          	sd	a2,16(a5)
        if (curr==this->head) {
    80002274:	00083603          	ld	a2,0(a6)
    80002278:	04e60063          	beq	a2,a4,800022b8 <_ZN15MemoryAllocator9mem_allocEm+0xc4>
            this->head=new_seg;
        }
        // if (curr==this->tail) {
        //     this->tail=new_seg;
        // }
        if (curr->prev)
    8000227c:	01073603          	ld	a2,16(a4)
    80002280:	00060463          	beqz	a2,80002288 <_ZN15MemoryAllocator9mem_allocEm+0x94>
            curr->prev->next=new_seg;
    80002284:	00f63423          	sd	a5,8(a2)
        if (curr->next)
    80002288:	00873603          	ld	a2,8(a4)
    8000228c:	00060463          	beqz	a2,80002294 <_ZN15MemoryAllocator9mem_allocEm+0xa0>
            curr->next->prev=new_seg;
    80002290:	00f63823          	sd	a5,16(a2)
        curr->size=actulalSize;
    80002294:	00d73023          	sd	a3,0(a4)
        this->freeMemSize-= (actulalSize + sizeof(MemoryHeader));
    80002298:	00883783          	ld	a5,8(a6)
    8000229c:	40d786b3          	sub	a3,a5,a3
    800022a0:	fe868693          	addi	a3,a3,-24
    800022a4:	00d83423          	sd	a3,8(a6)
    //__putc('m');
    //__putc('\n');



    return  (void*)((char*)curr + sizeof(MemoryHeader));
    800022a8:	01870513          	addi	a0,a4,24
}
    800022ac:	00813403          	ld	s0,8(sp)
    800022b0:	01010113          	addi	sp,sp,16
    800022b4:	00008067          	ret
            this->head=new_seg;
    800022b8:	00f83023          	sd	a5,0(a6)
    800022bc:	fc1ff06f          	j	8000227c <_ZN15MemoryAllocator9mem_allocEm+0x88>
        if (curr==this->head) {
    800022c0:	02e50a63          	beq	a0,a4,800022f4 <_ZN15MemoryAllocator9mem_allocEm+0x100>
        if (curr->prev)
    800022c4:	01073783          	ld	a5,16(a4)
    800022c8:	00078663          	beqz	a5,800022d4 <_ZN15MemoryAllocator9mem_allocEm+0xe0>
            curr->prev->next=curr->next;
    800022cc:	00873603          	ld	a2,8(a4)
    800022d0:	00c7b423          	sd	a2,8(a5)
        if (curr->next)
    800022d4:	00873783          	ld	a5,8(a4)
    800022d8:	00078663          	beqz	a5,800022e4 <_ZN15MemoryAllocator9mem_allocEm+0xf0>
            curr->next->prev=curr->prev;
    800022dc:	01073603          	ld	a2,16(a4)
    800022e0:	00c7b823          	sd	a2,16(a5)
        this->freeMemSize-= actulalSize;
    800022e4:	00883783          	ld	a5,8(a6)
    800022e8:	40d786b3          	sub	a3,a5,a3
    800022ec:	00d83423          	sd	a3,8(a6)
    800022f0:	fb9ff06f          	j	800022a8 <_ZN15MemoryAllocator9mem_allocEm+0xb4>
            this->head=curr->next;
    800022f4:	00f83023          	sd	a5,0(a6)
    800022f8:	fcdff06f          	j	800022c4 <_ZN15MemoryAllocator9mem_allocEm+0xd0>
        return nullptr;
    800022fc:	00000513          	li	a0,0
    80002300:	fadff06f          	j	800022ac <_ZN15MemoryAllocator9mem_allocEm+0xb8>
        return nullptr;
    80002304:	00000513          	li	a0,0
    80002308:	fa5ff06f          	j	800022ac <_ZN15MemoryAllocator9mem_allocEm+0xb8>

000000008000230c <_ZN15MemoryAllocator11try_to_joinEPNS_12MemoryHeaderE>:
    try_to_join(block->prev);
    try_to_join(block);
}


void MemoryAllocator::try_to_join(MemoryHeader* block) {
    8000230c:	ff010113          	addi	sp,sp,-16
    80002310:	00813423          	sd	s0,8(sp)
    80002314:	01010413          	addi	s0,sp,16
    if (block==nullptr)
    80002318:	00058e63          	beqz	a1,80002334 <_ZN15MemoryAllocator11try_to_joinEPNS_12MemoryHeaderE+0x28>
        return;
    if (block->next!=nullptr && ((char*)block + sizeof(MemoryHeader) + block->size) == (char*)block->next) {
    8000231c:	0085b783          	ld	a5,8(a1) # 1008 <_entry-0x7fffeff8>
    80002320:	00078a63          	beqz	a5,80002334 <_ZN15MemoryAllocator11try_to_joinEPNS_12MemoryHeaderE+0x28>
    80002324:	0005b683          	ld	a3,0(a1)
    80002328:	01868713          	addi	a4,a3,24
    8000232c:	00e58733          	add	a4,a1,a4
    80002330:	00e78863          	beq	a5,a4,80002340 <_ZN15MemoryAllocator11try_to_joinEPNS_12MemoryHeaderE+0x34>
        block->next=block->next->next;
        if (block->next)
            block->next->prev=block;
        this->freeMemSize+= sizeof(MemoryHeader);
    }
}
    80002334:	00813403          	ld	s0,8(sp)
    80002338:	01010113          	addi	sp,sp,16
    8000233c:	00008067          	ret
        block->size += block->next->size;
    80002340:	0007b703          	ld	a4,0(a5)
    80002344:	00e686b3          	add	a3,a3,a4
    80002348:	00d5b023          	sd	a3,0(a1)
        block->next=block->next->next;
    8000234c:	0087b783          	ld	a5,8(a5)
    80002350:	00f5b423          	sd	a5,8(a1)
        if (block->next)
    80002354:	00078463          	beqz	a5,8000235c <_ZN15MemoryAllocator11try_to_joinEPNS_12MemoryHeaderE+0x50>
            block->next->prev=block;
    80002358:	00b7b823          	sd	a1,16(a5)
        this->freeMemSize+= sizeof(MemoryHeader);
    8000235c:	00853783          	ld	a5,8(a0)
    80002360:	01878793          	addi	a5,a5,24
    80002364:	00f53423          	sd	a5,8(a0)
    80002368:	fcdff06f          	j	80002334 <_ZN15MemoryAllocator11try_to_joinEPNS_12MemoryHeaderE+0x28>

000000008000236c <_ZN15MemoryAllocator8mem_freeEPv>:
    if (ptr==nullptr) {
    8000236c:	0e058063          	beqz	a1,8000244c <_ZN15MemoryAllocator8mem_freeEPv+0xe0>
void MemoryAllocator::mem_free(void* ptr) {
    80002370:	fe010113          	addi	sp,sp,-32
    80002374:	00113c23          	sd	ra,24(sp)
    80002378:	00813823          	sd	s0,16(sp)
    8000237c:	00913423          	sd	s1,8(sp)
    80002380:	01213023          	sd	s2,0(sp)
    80002384:	02010413          	addi	s0,sp,32
    80002388:	00050913          	mv	s2,a0
	MemoryHeader* block = (MemoryHeader*)((char*)ptr - sizeof(MemoryHeader));
    8000238c:	fe858493          	addi	s1,a1,-24
    if (this->head==nullptr) {
    80002390:	00053683          	ld	a3,0(a0)
    80002394:	06068e63          	beqz	a3,80002410 <_ZN15MemoryAllocator8mem_freeEPv+0xa4>
    MemoryHeader* curr = this->head;
    80002398:	00068793          	mv	a5,a3
    while (curr->next!=nullptr && curr->next < block) {
    8000239c:	00078713          	mv	a4,a5
    800023a0:	0087b783          	ld	a5,8(a5)
    800023a4:	00078463          	beqz	a5,800023ac <_ZN15MemoryAllocator8mem_freeEPv+0x40>
    800023a8:	fe97eae3          	bltu	a5,s1,8000239c <_ZN15MemoryAllocator8mem_freeEPv+0x30>
    if (curr==this->head and curr > block) {
    800023ac:	08e68263          	beq	a3,a4,80002430 <_ZN15MemoryAllocator8mem_freeEPv+0xc4>
        block->next=curr->next;
    800023b0:	fef5b823          	sd	a5,-16(a1)
        block->prev=curr;
    800023b4:	fee5bc23          	sd	a4,-8(a1)
        curr->next=block;
    800023b8:	00973423          	sd	s1,8(a4)
        if (block->next) {
    800023bc:	ff05b783          	ld	a5,-16(a1)
    800023c0:	00078463          	beqz	a5,800023c8 <_ZN15MemoryAllocator8mem_freeEPv+0x5c>
            block->next->prev=block;
    800023c4:	0097b823          	sd	s1,16(a5)
    this->freeMemSize+= block->size;
    800023c8:	fe85b703          	ld	a4,-24(a1)
    800023cc:	00893783          	ld	a5,8(s2)
    800023d0:	00e787b3          	add	a5,a5,a4
    800023d4:	00f93423          	sd	a5,8(s2)
    try_to_join(block->prev);
    800023d8:	ff85b583          	ld	a1,-8(a1)
    800023dc:	00090513          	mv	a0,s2
    800023e0:	00000097          	auipc	ra,0x0
    800023e4:	f2c080e7          	jalr	-212(ra) # 8000230c <_ZN15MemoryAllocator11try_to_joinEPNS_12MemoryHeaderE>
    try_to_join(block);
    800023e8:	00048593          	mv	a1,s1
    800023ec:	00090513          	mv	a0,s2
    800023f0:	00000097          	auipc	ra,0x0
    800023f4:	f1c080e7          	jalr	-228(ra) # 8000230c <_ZN15MemoryAllocator11try_to_joinEPNS_12MemoryHeaderE>
}
    800023f8:	01813083          	ld	ra,24(sp)
    800023fc:	01013403          	ld	s0,16(sp)
    80002400:	00813483          	ld	s1,8(sp)
    80002404:	00013903          	ld	s2,0(sp)
    80002408:	02010113          	addi	sp,sp,32
    8000240c:	00008067          	ret
        this->head=block;
    80002410:	00953023          	sd	s1,0(a0)
        block->next=nullptr;
    80002414:	fe05b823          	sd	zero,-16(a1)
        block->prev=nullptr;
    80002418:	fe05bc23          	sd	zero,-8(a1)
        this->freeMemSize+= block->size;
    8000241c:	fe85b703          	ld	a4,-24(a1)
    80002420:	00853783          	ld	a5,8(a0)
    80002424:	00e787b3          	add	a5,a5,a4
    80002428:	00f53423          	sd	a5,8(a0)
        return;
    8000242c:	fcdff06f          	j	800023f8 <_ZN15MemoryAllocator8mem_freeEPv+0x8c>
    if (curr==this->head and curr > block) {
    80002430:	f8e4f0e3          	bgeu	s1,a4,800023b0 <_ZN15MemoryAllocator8mem_freeEPv+0x44>
        block->next=curr;
    80002434:	fee5b823          	sd	a4,-16(a1)
        block->prev=curr->prev;
    80002438:	01073783          	ld	a5,16(a4)
    8000243c:	fef5bc23          	sd	a5,-8(a1)
        curr->prev=block;
    80002440:	00973823          	sd	s1,16(a4)
        this->head=block;
    80002444:	00993023          	sd	s1,0(s2)
    80002448:	f81ff06f          	j	800023c8 <_ZN15MemoryAllocator8mem_freeEPv+0x5c>
    8000244c:	00008067          	ret

0000000080002450 <_ZN15MemoryAllocator19getLargestFreeBlockEv>:

size_t MemoryAllocator::getLargestFreeBlock() {
    80002450:	ff010113          	addi	sp,sp,-16
    80002454:	00813423          	sd	s0,8(sp)
    80002458:	01010413          	addi	s0,sp,16
    size_t maxSize=0;
    MemoryHeader* curr=this->head;
    8000245c:	00053783          	ld	a5,0(a0)
    size_t maxSize=0;
    80002460:	00000513          	li	a0,0
    80002464:	0080006f          	j	8000246c <_ZN15MemoryAllocator19getLargestFreeBlockEv+0x1c>
    while (curr!=nullptr) {
        if (curr->size > maxSize)
            maxSize=curr->size;
        curr=curr->next;
    80002468:	0087b783          	ld	a5,8(a5)
    while (curr!=nullptr) {
    8000246c:	00078a63          	beqz	a5,80002480 <_ZN15MemoryAllocator19getLargestFreeBlockEv+0x30>
        if (curr->size > maxSize)
    80002470:	0007b703          	ld	a4,0(a5)
    80002474:	fee57ae3          	bgeu	a0,a4,80002468 <_ZN15MemoryAllocator19getLargestFreeBlockEv+0x18>
            maxSize=curr->size;
    80002478:	00070513          	mv	a0,a4
    8000247c:	fedff06f          	j	80002468 <_ZN15MemoryAllocator19getLargestFreeBlockEv+0x18>
    }
    return maxSize;
    80002480:	00813403          	ld	s0,8(sp)
    80002484:	01010113          	addi	sp,sp,16
    80002488:	00008067          	ret

000000008000248c <_Z11printStringPKc>:
#include  "../h/print.hpp"
#include "../lib/console.h"


void printString(const char *string) {
    8000248c:	fe010113          	addi	sp,sp,-32
    80002490:	00113c23          	sd	ra,24(sp)
    80002494:	00813823          	sd	s0,16(sp)
    80002498:	00913423          	sd	s1,8(sp)
    8000249c:	02010413          	addi	s0,sp,32
    800024a0:	00050493          	mv	s1,a0
    while (*string!='\0') {
    800024a4:	0004c503          	lbu	a0,0(s1)
    800024a8:	00050a63          	beqz	a0,800024bc <_Z11printStringPKc+0x30>
        __putc(*string);
    800024ac:	00003097          	auipc	ra,0x3
    800024b0:	640080e7          	jalr	1600(ra) # 80005aec <__putc>
        string++;
    800024b4:	00148493          	addi	s1,s1,1
    while (*string!='\0') {
    800024b8:	fedff06f          	j	800024a4 <_Z11printStringPKc+0x18>
    }
}
    800024bc:	01813083          	ld	ra,24(sp)
    800024c0:	01013403          	ld	s0,16(sp)
    800024c4:	00813483          	ld	s1,8(sp)
    800024c8:	02010113          	addi	sp,sp,32
    800024cc:	00008067          	ret

00000000800024d0 <_Z12printIntegerm>:
void printInteger(uint64 integer) {
    800024d0:	fd010113          	addi	sp,sp,-48
    800024d4:	02113423          	sd	ra,40(sp)
    800024d8:	02813023          	sd	s0,32(sp)
    800024dc:	00913c23          	sd	s1,24(sp)
    800024e0:	03010413          	addi	s0,sp,48
    neg=0;
    if (integer<0) {
        neg=1;
        x=-integer;
    } else {
        x=integer;
    800024e4:	0005051b          	sext.w	a0,a0
    }

    i=0;
    800024e8:	00000493          	li	s1,0
    do {
        buf[i++]=digits[x%10];
    800024ec:	00a00613          	li	a2,10
    800024f0:	02c5773b          	remuw	a4,a0,a2
    800024f4:	02071693          	slli	a3,a4,0x20
    800024f8:	0206d693          	srli	a3,a3,0x20
    800024fc:	00004717          	auipc	a4,0x4
    80002500:	bcc70713          	addi	a4,a4,-1076 # 800060c8 <_ZZ12printIntegermE6digits>
    80002504:	00d70733          	add	a4,a4,a3
    80002508:	00074703          	lbu	a4,0(a4)
    8000250c:	fe040693          	addi	a3,s0,-32
    80002510:	009687b3          	add	a5,a3,s1
    80002514:	0014849b          	addiw	s1,s1,1
    80002518:	fee78823          	sb	a4,-16(a5)
    }while ((x/=10)!=0);
    8000251c:	0005071b          	sext.w	a4,a0
    80002520:	02c5553b          	divuw	a0,a0,a2
    80002524:	00900793          	li	a5,9
    80002528:	fce7e2e3          	bltu	a5,a4,800024ec <_Z12printIntegerm+0x1c>
    if (neg) {
        buf[i++]='-';
    }

    while (--i>=0) {
    8000252c:	fff4849b          	addiw	s1,s1,-1
    80002530:	0004ce63          	bltz	s1,8000254c <_Z12printIntegerm+0x7c>
        __putc(buf[i]);
    80002534:	fe040793          	addi	a5,s0,-32
    80002538:	009787b3          	add	a5,a5,s1
    8000253c:	ff07c503          	lbu	a0,-16(a5)
    80002540:	00003097          	auipc	ra,0x3
    80002544:	5ac080e7          	jalr	1452(ra) # 80005aec <__putc>
    80002548:	fe5ff06f          	j	8000252c <_Z12printIntegerm+0x5c>
    }
    8000254c:	02813083          	ld	ra,40(sp)
    80002550:	02013403          	ld	s0,32(sp)
    80002554:	01813483          	ld	s1,24(sp)
    80002558:	03010113          	addi	sp,sp,48
    8000255c:	00008067          	ret

0000000080002560 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80002560:	fe010113          	addi	sp,sp,-32
    80002564:	00113c23          	sd	ra,24(sp)
    80002568:	00813823          	sd	s0,16(sp)
    8000256c:	00913423          	sd	s1,8(sp)
    80002570:	01213023          	sd	s2,0(sp)
    80002574:	02010413          	addi	s0,sp,32
    80002578:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    8000257c:	00100793          	li	a5,1
    80002580:	02a7f863          	bgeu	a5,a0,800025b0 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80002584:	00a00793          	li	a5,10
    80002588:	02f577b3          	remu	a5,a0,a5
    8000258c:	02078e63          	beqz	a5,800025c8 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80002590:	fff48513          	addi	a0,s1,-1
    80002594:	00000097          	auipc	ra,0x0
    80002598:	fcc080e7          	jalr	-52(ra) # 80002560 <_ZL9fibonaccim>
    8000259c:	00050913          	mv	s2,a0
    800025a0:	ffe48513          	addi	a0,s1,-2
    800025a4:	00000097          	auipc	ra,0x0
    800025a8:	fbc080e7          	jalr	-68(ra) # 80002560 <_ZL9fibonaccim>
    800025ac:	00a90533          	add	a0,s2,a0
}
    800025b0:	01813083          	ld	ra,24(sp)
    800025b4:	01013403          	ld	s0,16(sp)
    800025b8:	00813483          	ld	s1,8(sp)
    800025bc:	00013903          	ld	s2,0(sp)
    800025c0:	02010113          	addi	sp,sp,32
    800025c4:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800025c8:	fffff097          	auipc	ra,0xfffff
    800025cc:	d94080e7          	jalr	-620(ra) # 8000135c <_Z15thread_dispatchv>
    800025d0:	fc1ff06f          	j	80002590 <_ZL9fibonaccim+0x30>

00000000800025d4 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    800025d4:	fe010113          	addi	sp,sp,-32
    800025d8:	00113c23          	sd	ra,24(sp)
    800025dc:	00813823          	sd	s0,16(sp)
    800025e0:	00913423          	sd	s1,8(sp)
    800025e4:	01213023          	sd	s2,0(sp)
    800025e8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800025ec:	00000913          	li	s2,0
    800025f0:	0380006f          	j	80002628 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInteger(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800025f4:	fffff097          	auipc	ra,0xfffff
    800025f8:	d68080e7          	jalr	-664(ra) # 8000135c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800025fc:	00148493          	addi	s1,s1,1
    80002600:	000027b7          	lui	a5,0x2
    80002604:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002608:	0097ee63          	bltu	a5,s1,80002624 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000260c:	00000713          	li	a4,0
    80002610:	000077b7          	lui	a5,0x7
    80002614:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002618:	fce7eee3          	bltu	a5,a4,800025f4 <_ZN7WorkerA11workerBodyAEPv+0x20>
    8000261c:	00170713          	addi	a4,a4,1
    80002620:	ff1ff06f          	j	80002610 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80002624:	00190913          	addi	s2,s2,1
    80002628:	00900793          	li	a5,9
    8000262c:	0327ec63          	bltu	a5,s2,80002664 <_ZN7WorkerA11workerBodyAEPv+0x90>
        printString("A: i="); printInteger(i); printString("\n");
    80002630:	00004517          	auipc	a0,0x4
    80002634:	9f050513          	addi	a0,a0,-1552 # 80006020 <CONSOLE_STATUS+0x10>
    80002638:	00000097          	auipc	ra,0x0
    8000263c:	e54080e7          	jalr	-428(ra) # 8000248c <_Z11printStringPKc>
    80002640:	00090513          	mv	a0,s2
    80002644:	00000097          	auipc	ra,0x0
    80002648:	e8c080e7          	jalr	-372(ra) # 800024d0 <_Z12printIntegerm>
    8000264c:	00004517          	auipc	a0,0x4
    80002650:	a3c50513          	addi	a0,a0,-1476 # 80006088 <CONSOLE_STATUS+0x78>
    80002654:	00000097          	auipc	ra,0x0
    80002658:	e38080e7          	jalr	-456(ra) # 8000248c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000265c:	00000493          	li	s1,0
    80002660:	fa1ff06f          	j	80002600 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80002664:	00004517          	auipc	a0,0x4
    80002668:	a7450513          	addi	a0,a0,-1420 # 800060d8 <_ZZ12printIntegermE6digits+0x10>
    8000266c:	00000097          	auipc	ra,0x0
    80002670:	e20080e7          	jalr	-480(ra) # 8000248c <_Z11printStringPKc>
    finishedA = true;
    80002674:	00100793          	li	a5,1
    80002678:	00005717          	auipc	a4,0x5
    8000267c:	d6f70023          	sb	a5,-672(a4) # 800073d8 <_ZL9finishedA>
}
    80002680:	01813083          	ld	ra,24(sp)
    80002684:	01013403          	ld	s0,16(sp)
    80002688:	00813483          	ld	s1,8(sp)
    8000268c:	00013903          	ld	s2,0(sp)
    80002690:	02010113          	addi	sp,sp,32
    80002694:	00008067          	ret

0000000080002698 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80002698:	fe010113          	addi	sp,sp,-32
    8000269c:	00113c23          	sd	ra,24(sp)
    800026a0:	00813823          	sd	s0,16(sp)
    800026a4:	00913423          	sd	s1,8(sp)
    800026a8:	01213023          	sd	s2,0(sp)
    800026ac:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800026b0:	00000913          	li	s2,0
    800026b4:	0380006f          	j	800026ec <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInteger(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800026b8:	fffff097          	auipc	ra,0xfffff
    800026bc:	ca4080e7          	jalr	-860(ra) # 8000135c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800026c0:	00148493          	addi	s1,s1,1
    800026c4:	000027b7          	lui	a5,0x2
    800026c8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800026cc:	0097ee63          	bltu	a5,s1,800026e8 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800026d0:	00000713          	li	a4,0
    800026d4:	000077b7          	lui	a5,0x7
    800026d8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800026dc:	fce7eee3          	bltu	a5,a4,800026b8 <_ZN7WorkerB11workerBodyBEPv+0x20>
    800026e0:	00170713          	addi	a4,a4,1
    800026e4:	ff1ff06f          	j	800026d4 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800026e8:	00190913          	addi	s2,s2,1
    800026ec:	00f00793          	li	a5,15
    800026f0:	0327ec63          	bltu	a5,s2,80002728 <_ZN7WorkerB11workerBodyBEPv+0x90>
        printString("B: i="); printInteger(i); printString("\n");
    800026f4:	00004517          	auipc	a0,0x4
    800026f8:	95c50513          	addi	a0,a0,-1700 # 80006050 <CONSOLE_STATUS+0x40>
    800026fc:	00000097          	auipc	ra,0x0
    80002700:	d90080e7          	jalr	-624(ra) # 8000248c <_Z11printStringPKc>
    80002704:	00090513          	mv	a0,s2
    80002708:	00000097          	auipc	ra,0x0
    8000270c:	dc8080e7          	jalr	-568(ra) # 800024d0 <_Z12printIntegerm>
    80002710:	00004517          	auipc	a0,0x4
    80002714:	97850513          	addi	a0,a0,-1672 # 80006088 <CONSOLE_STATUS+0x78>
    80002718:	00000097          	auipc	ra,0x0
    8000271c:	d74080e7          	jalr	-652(ra) # 8000248c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002720:	00000493          	li	s1,0
    80002724:	fa1ff06f          	j	800026c4 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80002728:	00004517          	auipc	a0,0x4
    8000272c:	9c050513          	addi	a0,a0,-1600 # 800060e8 <_ZZ12printIntegermE6digits+0x20>
    80002730:	00000097          	auipc	ra,0x0
    80002734:	d5c080e7          	jalr	-676(ra) # 8000248c <_Z11printStringPKc>
    finishedB = true;
    80002738:	00100793          	li	a5,1
    8000273c:	00005717          	auipc	a4,0x5
    80002740:	c8f70ea3          	sb	a5,-867(a4) # 800073d9 <_ZL9finishedB>
    thread_dispatch();
    80002744:	fffff097          	auipc	ra,0xfffff
    80002748:	c18080e7          	jalr	-1000(ra) # 8000135c <_Z15thread_dispatchv>
}
    8000274c:	01813083          	ld	ra,24(sp)
    80002750:	01013403          	ld	s0,16(sp)
    80002754:	00813483          	ld	s1,8(sp)
    80002758:	00013903          	ld	s2,0(sp)
    8000275c:	02010113          	addi	sp,sp,32
    80002760:	00008067          	ret

0000000080002764 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80002764:	fe010113          	addi	sp,sp,-32
    80002768:	00113c23          	sd	ra,24(sp)
    8000276c:	00813823          	sd	s0,16(sp)
    80002770:	00913423          	sd	s1,8(sp)
    80002774:	01213023          	sd	s2,0(sp)
    80002778:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    8000277c:	00000493          	li	s1,0
    80002780:	0380006f          	j	800027b8 <_ZN7WorkerC11workerBodyCEPv+0x54>
    for (; i < 3; i++) {
        printString("C: i="); printInteger(i); printString("\n");
    80002784:	00004517          	auipc	a0,0x4
    80002788:	97450513          	addi	a0,a0,-1676 # 800060f8 <_ZZ12printIntegermE6digits+0x30>
    8000278c:	00000097          	auipc	ra,0x0
    80002790:	d00080e7          	jalr	-768(ra) # 8000248c <_Z11printStringPKc>
    80002794:	00048513          	mv	a0,s1
    80002798:	00000097          	auipc	ra,0x0
    8000279c:	d38080e7          	jalr	-712(ra) # 800024d0 <_Z12printIntegerm>
    800027a0:	00004517          	auipc	a0,0x4
    800027a4:	8e850513          	addi	a0,a0,-1816 # 80006088 <CONSOLE_STATUS+0x78>
    800027a8:	00000097          	auipc	ra,0x0
    800027ac:	ce4080e7          	jalr	-796(ra) # 8000248c <_Z11printStringPKc>
    for (; i < 3; i++) {
    800027b0:	0014849b          	addiw	s1,s1,1
    800027b4:	0ff4f493          	andi	s1,s1,255
    800027b8:	00200793          	li	a5,2
    800027bc:	fc97f4e3          	bgeu	a5,s1,80002784 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    800027c0:	00004517          	auipc	a0,0x4
    800027c4:	94050513          	addi	a0,a0,-1728 # 80006100 <_ZZ12printIntegermE6digits+0x38>
    800027c8:	00000097          	auipc	ra,0x0
    800027cc:	cc4080e7          	jalr	-828(ra) # 8000248c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800027d0:	00700313          	li	t1,7
    thread_dispatch();
    800027d4:	fffff097          	auipc	ra,0xfffff
    800027d8:	b88080e7          	jalr	-1144(ra) # 8000135c <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800027dc:	00030913          	mv	s2,t1

    printString("C: t1="); printInteger(t1); printString("\n");
    800027e0:	00004517          	auipc	a0,0x4
    800027e4:	93050513          	addi	a0,a0,-1744 # 80006110 <_ZZ12printIntegermE6digits+0x48>
    800027e8:	00000097          	auipc	ra,0x0
    800027ec:	ca4080e7          	jalr	-860(ra) # 8000248c <_Z11printStringPKc>
    800027f0:	00090513          	mv	a0,s2
    800027f4:	00000097          	auipc	ra,0x0
    800027f8:	cdc080e7          	jalr	-804(ra) # 800024d0 <_Z12printIntegerm>
    800027fc:	00004517          	auipc	a0,0x4
    80002800:	88c50513          	addi	a0,a0,-1908 # 80006088 <CONSOLE_STATUS+0x78>
    80002804:	00000097          	auipc	ra,0x0
    80002808:	c88080e7          	jalr	-888(ra) # 8000248c <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    8000280c:	00c00513          	li	a0,12
    80002810:	00000097          	auipc	ra,0x0
    80002814:	d50080e7          	jalr	-688(ra) # 80002560 <_ZL9fibonaccim>
    80002818:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInteger(result); printString("\n");
    8000281c:	00004517          	auipc	a0,0x4
    80002820:	8fc50513          	addi	a0,a0,-1796 # 80006118 <_ZZ12printIntegermE6digits+0x50>
    80002824:	00000097          	auipc	ra,0x0
    80002828:	c68080e7          	jalr	-920(ra) # 8000248c <_Z11printStringPKc>
    8000282c:	00090513          	mv	a0,s2
    80002830:	00000097          	auipc	ra,0x0
    80002834:	ca0080e7          	jalr	-864(ra) # 800024d0 <_Z12printIntegerm>
    80002838:	00004517          	auipc	a0,0x4
    8000283c:	85050513          	addi	a0,a0,-1968 # 80006088 <CONSOLE_STATUS+0x78>
    80002840:	00000097          	auipc	ra,0x0
    80002844:	c4c080e7          	jalr	-948(ra) # 8000248c <_Z11printStringPKc>
    80002848:	0380006f          	j	80002880 <_ZN7WorkerC11workerBodyCEPv+0x11c>

    for (; i < 6; i++) {
        printString("C: i="); printInteger(i); printString("\n");
    8000284c:	00004517          	auipc	a0,0x4
    80002850:	8ac50513          	addi	a0,a0,-1876 # 800060f8 <_ZZ12printIntegermE6digits+0x30>
    80002854:	00000097          	auipc	ra,0x0
    80002858:	c38080e7          	jalr	-968(ra) # 8000248c <_Z11printStringPKc>
    8000285c:	00048513          	mv	a0,s1
    80002860:	00000097          	auipc	ra,0x0
    80002864:	c70080e7          	jalr	-912(ra) # 800024d0 <_Z12printIntegerm>
    80002868:	00004517          	auipc	a0,0x4
    8000286c:	82050513          	addi	a0,a0,-2016 # 80006088 <CONSOLE_STATUS+0x78>
    80002870:	00000097          	auipc	ra,0x0
    80002874:	c1c080e7          	jalr	-996(ra) # 8000248c <_Z11printStringPKc>
    for (; i < 6; i++) {
    80002878:	0014849b          	addiw	s1,s1,1
    8000287c:	0ff4f493          	andi	s1,s1,255
    80002880:	00500793          	li	a5,5
    80002884:	fc97f4e3          	bgeu	a5,s1,8000284c <_ZN7WorkerC11workerBodyCEPv+0xe8>
    }

    printString("C finished!\n");
    80002888:	00004517          	auipc	a0,0x4
    8000288c:	8a050513          	addi	a0,a0,-1888 # 80006128 <_ZZ12printIntegermE6digits+0x60>
    80002890:	00000097          	auipc	ra,0x0
    80002894:	bfc080e7          	jalr	-1028(ra) # 8000248c <_Z11printStringPKc>
    finishedC = true;
    80002898:	00100793          	li	a5,1
    8000289c:	00005717          	auipc	a4,0x5
    800028a0:	b2f70f23          	sb	a5,-1218(a4) # 800073da <_ZL9finishedC>
    thread_dispatch();
    800028a4:	fffff097          	auipc	ra,0xfffff
    800028a8:	ab8080e7          	jalr	-1352(ra) # 8000135c <_Z15thread_dispatchv>
}
    800028ac:	01813083          	ld	ra,24(sp)
    800028b0:	01013403          	ld	s0,16(sp)
    800028b4:	00813483          	ld	s1,8(sp)
    800028b8:	00013903          	ld	s2,0(sp)
    800028bc:	02010113          	addi	sp,sp,32
    800028c0:	00008067          	ret

00000000800028c4 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    800028c4:	fe010113          	addi	sp,sp,-32
    800028c8:	00113c23          	sd	ra,24(sp)
    800028cc:	00813823          	sd	s0,16(sp)
    800028d0:	00913423          	sd	s1,8(sp)
    800028d4:	01213023          	sd	s2,0(sp)
    800028d8:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800028dc:	00a00493          	li	s1,10
    800028e0:	0380006f          	j	80002918 <_ZN7WorkerD11workerBodyDEPv+0x54>
    for (; i < 13; i++) {
        printString("D: i="); printInteger(i); printString("\n");
    800028e4:	00004517          	auipc	a0,0x4
    800028e8:	85450513          	addi	a0,a0,-1964 # 80006138 <_ZZ12printIntegermE6digits+0x70>
    800028ec:	00000097          	auipc	ra,0x0
    800028f0:	ba0080e7          	jalr	-1120(ra) # 8000248c <_Z11printStringPKc>
    800028f4:	00048513          	mv	a0,s1
    800028f8:	00000097          	auipc	ra,0x0
    800028fc:	bd8080e7          	jalr	-1064(ra) # 800024d0 <_Z12printIntegerm>
    80002900:	00003517          	auipc	a0,0x3
    80002904:	78850513          	addi	a0,a0,1928 # 80006088 <CONSOLE_STATUS+0x78>
    80002908:	00000097          	auipc	ra,0x0
    8000290c:	b84080e7          	jalr	-1148(ra) # 8000248c <_Z11printStringPKc>
    for (; i < 13; i++) {
    80002910:	0014849b          	addiw	s1,s1,1
    80002914:	0ff4f493          	andi	s1,s1,255
    80002918:	00c00793          	li	a5,12
    8000291c:	fc97f4e3          	bgeu	a5,s1,800028e4 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80002920:	00004517          	auipc	a0,0x4
    80002924:	82050513          	addi	a0,a0,-2016 # 80006140 <_ZZ12printIntegermE6digits+0x78>
    80002928:	00000097          	auipc	ra,0x0
    8000292c:	b64080e7          	jalr	-1180(ra) # 8000248c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80002930:	00500313          	li	t1,5
    thread_dispatch();
    80002934:	fffff097          	auipc	ra,0xfffff
    80002938:	a28080e7          	jalr	-1496(ra) # 8000135c <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    8000293c:	01000513          	li	a0,16
    80002940:	00000097          	auipc	ra,0x0
    80002944:	c20080e7          	jalr	-992(ra) # 80002560 <_ZL9fibonaccim>
    80002948:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInteger(result); printString("\n");
    8000294c:	00004517          	auipc	a0,0x4
    80002950:	80450513          	addi	a0,a0,-2044 # 80006150 <_ZZ12printIntegermE6digits+0x88>
    80002954:	00000097          	auipc	ra,0x0
    80002958:	b38080e7          	jalr	-1224(ra) # 8000248c <_Z11printStringPKc>
    8000295c:	00090513          	mv	a0,s2
    80002960:	00000097          	auipc	ra,0x0
    80002964:	b70080e7          	jalr	-1168(ra) # 800024d0 <_Z12printIntegerm>
    80002968:	00003517          	auipc	a0,0x3
    8000296c:	72050513          	addi	a0,a0,1824 # 80006088 <CONSOLE_STATUS+0x78>
    80002970:	00000097          	auipc	ra,0x0
    80002974:	b1c080e7          	jalr	-1252(ra) # 8000248c <_Z11printStringPKc>
    80002978:	0380006f          	j	800029b0 <_ZN7WorkerD11workerBodyDEPv+0xec>

    for (; i < 16; i++) {
        printString("D: i="); printInteger(i); printString("\n");
    8000297c:	00003517          	auipc	a0,0x3
    80002980:	7bc50513          	addi	a0,a0,1980 # 80006138 <_ZZ12printIntegermE6digits+0x70>
    80002984:	00000097          	auipc	ra,0x0
    80002988:	b08080e7          	jalr	-1272(ra) # 8000248c <_Z11printStringPKc>
    8000298c:	00048513          	mv	a0,s1
    80002990:	00000097          	auipc	ra,0x0
    80002994:	b40080e7          	jalr	-1216(ra) # 800024d0 <_Z12printIntegerm>
    80002998:	00003517          	auipc	a0,0x3
    8000299c:	6f050513          	addi	a0,a0,1776 # 80006088 <CONSOLE_STATUS+0x78>
    800029a0:	00000097          	auipc	ra,0x0
    800029a4:	aec080e7          	jalr	-1300(ra) # 8000248c <_Z11printStringPKc>
    for (; i < 16; i++) {
    800029a8:	0014849b          	addiw	s1,s1,1
    800029ac:	0ff4f493          	andi	s1,s1,255
    800029b0:	00f00793          	li	a5,15
    800029b4:	fc97f4e3          	bgeu	a5,s1,8000297c <_ZN7WorkerD11workerBodyDEPv+0xb8>
    }

    printString("D finished!\n");
    800029b8:	00003517          	auipc	a0,0x3
    800029bc:	7a850513          	addi	a0,a0,1960 # 80006160 <_ZZ12printIntegermE6digits+0x98>
    800029c0:	00000097          	auipc	ra,0x0
    800029c4:	acc080e7          	jalr	-1332(ra) # 8000248c <_Z11printStringPKc>
    finishedD = true;
    800029c8:	00100793          	li	a5,1
    800029cc:	00005717          	auipc	a4,0x5
    800029d0:	a0f707a3          	sb	a5,-1521(a4) # 800073db <_ZL9finishedD>
    thread_dispatch();
    800029d4:	fffff097          	auipc	ra,0xfffff
    800029d8:	988080e7          	jalr	-1656(ra) # 8000135c <_Z15thread_dispatchv>
}
    800029dc:	01813083          	ld	ra,24(sp)
    800029e0:	01013403          	ld	s0,16(sp)
    800029e4:	00813483          	ld	s1,8(sp)
    800029e8:	00013903          	ld	s2,0(sp)
    800029ec:	02010113          	addi	sp,sp,32
    800029f0:	00008067          	ret

00000000800029f4 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    800029f4:	fc010113          	addi	sp,sp,-64
    800029f8:	02113c23          	sd	ra,56(sp)
    800029fc:	02813823          	sd	s0,48(sp)
    80002a00:	02913423          	sd	s1,40(sp)
    80002a04:	03213023          	sd	s2,32(sp)
    80002a08:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80002a0c:	02000513          	li	a0,32
    80002a10:	fffff097          	auipc	ra,0xfffff
    80002a14:	0f8080e7          	jalr	248(ra) # 80001b08 <_Znwm>
    80002a18:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80002a1c:	fffff097          	auipc	ra,0xfffff
    80002a20:	1bc080e7          	jalr	444(ra) # 80001bd8 <_ZN6ThreadC1Ev>
    80002a24:	00005797          	auipc	a5,0x5
    80002a28:	87c78793          	addi	a5,a5,-1924 # 800072a0 <_ZTV7WorkerA+0x10>
    80002a2c:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80002a30:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80002a34:	00003517          	auipc	a0,0x3
    80002a38:	73c50513          	addi	a0,a0,1852 # 80006170 <_ZZ12printIntegermE6digits+0xa8>
    80002a3c:	00000097          	auipc	ra,0x0
    80002a40:	a50080e7          	jalr	-1456(ra) # 8000248c <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80002a44:	02000513          	li	a0,32
    80002a48:	fffff097          	auipc	ra,0xfffff
    80002a4c:	0c0080e7          	jalr	192(ra) # 80001b08 <_Znwm>
    80002a50:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80002a54:	fffff097          	auipc	ra,0xfffff
    80002a58:	184080e7          	jalr	388(ra) # 80001bd8 <_ZN6ThreadC1Ev>
    80002a5c:	00005797          	auipc	a5,0x5
    80002a60:	86c78793          	addi	a5,a5,-1940 # 800072c8 <_ZTV7WorkerB+0x10>
    80002a64:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80002a68:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80002a6c:	00003517          	auipc	a0,0x3
    80002a70:	71c50513          	addi	a0,a0,1820 # 80006188 <_ZZ12printIntegermE6digits+0xc0>
    80002a74:	00000097          	auipc	ra,0x0
    80002a78:	a18080e7          	jalr	-1512(ra) # 8000248c <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80002a7c:	02000513          	li	a0,32
    80002a80:	fffff097          	auipc	ra,0xfffff
    80002a84:	088080e7          	jalr	136(ra) # 80001b08 <_Znwm>
    80002a88:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80002a8c:	fffff097          	auipc	ra,0xfffff
    80002a90:	14c080e7          	jalr	332(ra) # 80001bd8 <_ZN6ThreadC1Ev>
    80002a94:	00005797          	auipc	a5,0x5
    80002a98:	85c78793          	addi	a5,a5,-1956 # 800072f0 <_ZTV7WorkerC+0x10>
    80002a9c:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80002aa0:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80002aa4:	00003517          	auipc	a0,0x3
    80002aa8:	6fc50513          	addi	a0,a0,1788 # 800061a0 <_ZZ12printIntegermE6digits+0xd8>
    80002aac:	00000097          	auipc	ra,0x0
    80002ab0:	9e0080e7          	jalr	-1568(ra) # 8000248c <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80002ab4:	02000513          	li	a0,32
    80002ab8:	fffff097          	auipc	ra,0xfffff
    80002abc:	050080e7          	jalr	80(ra) # 80001b08 <_Znwm>
    80002ac0:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80002ac4:	fffff097          	auipc	ra,0xfffff
    80002ac8:	114080e7          	jalr	276(ra) # 80001bd8 <_ZN6ThreadC1Ev>
    80002acc:	00005797          	auipc	a5,0x5
    80002ad0:	84c78793          	addi	a5,a5,-1972 # 80007318 <_ZTV7WorkerD+0x10>
    80002ad4:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80002ad8:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80002adc:	00003517          	auipc	a0,0x3
    80002ae0:	6dc50513          	addi	a0,a0,1756 # 800061b8 <_ZZ12printIntegermE6digits+0xf0>
    80002ae4:	00000097          	auipc	ra,0x0
    80002ae8:	9a8080e7          	jalr	-1624(ra) # 8000248c <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80002aec:	00000493          	li	s1,0
    80002af0:	00300793          	li	a5,3
    80002af4:	0297c663          	blt	a5,s1,80002b20 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80002af8:	00349793          	slli	a5,s1,0x3
    80002afc:	fe040713          	addi	a4,s0,-32
    80002b00:	00f707b3          	add	a5,a4,a5
    80002b04:	fe07b503          	ld	a0,-32(a5)
    80002b08:	fffff097          	auipc	ra,0xfffff
    80002b0c:	100080e7          	jalr	256(ra) # 80001c08 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80002b10:	0014849b          	addiw	s1,s1,1
    80002b14:	fddff06f          	j	80002af0 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80002b18:	fffff097          	auipc	ra,0xfffff
    80002b1c:	098080e7          	jalr	152(ra) # 80001bb0 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80002b20:	00005797          	auipc	a5,0x5
    80002b24:	8b87c783          	lbu	a5,-1864(a5) # 800073d8 <_ZL9finishedA>
    80002b28:	fe0788e3          	beqz	a5,80002b18 <_Z20Threads_CPP_API_testv+0x124>
    80002b2c:	00005797          	auipc	a5,0x5
    80002b30:	8ad7c783          	lbu	a5,-1875(a5) # 800073d9 <_ZL9finishedB>
    80002b34:	fe0782e3          	beqz	a5,80002b18 <_Z20Threads_CPP_API_testv+0x124>
    80002b38:	00005797          	auipc	a5,0x5
    80002b3c:	8a27c783          	lbu	a5,-1886(a5) # 800073da <_ZL9finishedC>
    80002b40:	fc078ce3          	beqz	a5,80002b18 <_Z20Threads_CPP_API_testv+0x124>
    80002b44:	00005797          	auipc	a5,0x5
    80002b48:	8977c783          	lbu	a5,-1897(a5) # 800073db <_ZL9finishedD>
    80002b4c:	fc0786e3          	beqz	a5,80002b18 <_Z20Threads_CPP_API_testv+0x124>
    80002b50:	fc040493          	addi	s1,s0,-64
    80002b54:	0080006f          	j	80002b5c <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    80002b58:	00848493          	addi	s1,s1,8
    80002b5c:	fe040793          	addi	a5,s0,-32
    80002b60:	08f48663          	beq	s1,a5,80002bec <_Z20Threads_CPP_API_testv+0x1f8>
    80002b64:	0004b503          	ld	a0,0(s1)
    80002b68:	fe0508e3          	beqz	a0,80002b58 <_Z20Threads_CPP_API_testv+0x164>
    80002b6c:	00053783          	ld	a5,0(a0)
    80002b70:	0087b783          	ld	a5,8(a5)
    80002b74:	000780e7          	jalr	a5
    80002b78:	fe1ff06f          	j	80002b58 <_Z20Threads_CPP_API_testv+0x164>
    80002b7c:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80002b80:	00048513          	mv	a0,s1
    80002b84:	fffff097          	auipc	ra,0xfffff
    80002b88:	fac080e7          	jalr	-84(ra) # 80001b30 <_ZdlPv>
    80002b8c:	00090513          	mv	a0,s2
    80002b90:	00006097          	auipc	ra,0x6
    80002b94:	928080e7          	jalr	-1752(ra) # 800084b8 <_Unwind_Resume>
    80002b98:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80002b9c:	00048513          	mv	a0,s1
    80002ba0:	fffff097          	auipc	ra,0xfffff
    80002ba4:	f90080e7          	jalr	-112(ra) # 80001b30 <_ZdlPv>
    80002ba8:	00090513          	mv	a0,s2
    80002bac:	00006097          	auipc	ra,0x6
    80002bb0:	90c080e7          	jalr	-1780(ra) # 800084b8 <_Unwind_Resume>
    80002bb4:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80002bb8:	00048513          	mv	a0,s1
    80002bbc:	fffff097          	auipc	ra,0xfffff
    80002bc0:	f74080e7          	jalr	-140(ra) # 80001b30 <_ZdlPv>
    80002bc4:	00090513          	mv	a0,s2
    80002bc8:	00006097          	auipc	ra,0x6
    80002bcc:	8f0080e7          	jalr	-1808(ra) # 800084b8 <_Unwind_Resume>
    80002bd0:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80002bd4:	00048513          	mv	a0,s1
    80002bd8:	fffff097          	auipc	ra,0xfffff
    80002bdc:	f58080e7          	jalr	-168(ra) # 80001b30 <_ZdlPv>
    80002be0:	00090513          	mv	a0,s2
    80002be4:	00006097          	auipc	ra,0x6
    80002be8:	8d4080e7          	jalr	-1836(ra) # 800084b8 <_Unwind_Resume>
}
    80002bec:	03813083          	ld	ra,56(sp)
    80002bf0:	03013403          	ld	s0,48(sp)
    80002bf4:	02813483          	ld	s1,40(sp)
    80002bf8:	02013903          	ld	s2,32(sp)
    80002bfc:	04010113          	addi	sp,sp,64
    80002c00:	00008067          	ret

0000000080002c04 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80002c04:	ff010113          	addi	sp,sp,-16
    80002c08:	00113423          	sd	ra,8(sp)
    80002c0c:	00813023          	sd	s0,0(sp)
    80002c10:	01010413          	addi	s0,sp,16
    80002c14:	00004797          	auipc	a5,0x4
    80002c18:	68c78793          	addi	a5,a5,1676 # 800072a0 <_ZTV7WorkerA+0x10>
    80002c1c:	00f53023          	sd	a5,0(a0)
    80002c20:	fffff097          	auipc	ra,0xfffff
    80002c24:	ea4080e7          	jalr	-348(ra) # 80001ac4 <_ZN6ThreadD1Ev>
    80002c28:	00813083          	ld	ra,8(sp)
    80002c2c:	00013403          	ld	s0,0(sp)
    80002c30:	01010113          	addi	sp,sp,16
    80002c34:	00008067          	ret

0000000080002c38 <_ZN7WorkerAD0Ev>:
    80002c38:	fe010113          	addi	sp,sp,-32
    80002c3c:	00113c23          	sd	ra,24(sp)
    80002c40:	00813823          	sd	s0,16(sp)
    80002c44:	00913423          	sd	s1,8(sp)
    80002c48:	02010413          	addi	s0,sp,32
    80002c4c:	00050493          	mv	s1,a0
    80002c50:	00004797          	auipc	a5,0x4
    80002c54:	65078793          	addi	a5,a5,1616 # 800072a0 <_ZTV7WorkerA+0x10>
    80002c58:	00f53023          	sd	a5,0(a0)
    80002c5c:	fffff097          	auipc	ra,0xfffff
    80002c60:	e68080e7          	jalr	-408(ra) # 80001ac4 <_ZN6ThreadD1Ev>
    80002c64:	00048513          	mv	a0,s1
    80002c68:	fffff097          	auipc	ra,0xfffff
    80002c6c:	ec8080e7          	jalr	-312(ra) # 80001b30 <_ZdlPv>
    80002c70:	01813083          	ld	ra,24(sp)
    80002c74:	01013403          	ld	s0,16(sp)
    80002c78:	00813483          	ld	s1,8(sp)
    80002c7c:	02010113          	addi	sp,sp,32
    80002c80:	00008067          	ret

0000000080002c84 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80002c84:	ff010113          	addi	sp,sp,-16
    80002c88:	00113423          	sd	ra,8(sp)
    80002c8c:	00813023          	sd	s0,0(sp)
    80002c90:	01010413          	addi	s0,sp,16
    80002c94:	00004797          	auipc	a5,0x4
    80002c98:	63478793          	addi	a5,a5,1588 # 800072c8 <_ZTV7WorkerB+0x10>
    80002c9c:	00f53023          	sd	a5,0(a0)
    80002ca0:	fffff097          	auipc	ra,0xfffff
    80002ca4:	e24080e7          	jalr	-476(ra) # 80001ac4 <_ZN6ThreadD1Ev>
    80002ca8:	00813083          	ld	ra,8(sp)
    80002cac:	00013403          	ld	s0,0(sp)
    80002cb0:	01010113          	addi	sp,sp,16
    80002cb4:	00008067          	ret

0000000080002cb8 <_ZN7WorkerBD0Ev>:
    80002cb8:	fe010113          	addi	sp,sp,-32
    80002cbc:	00113c23          	sd	ra,24(sp)
    80002cc0:	00813823          	sd	s0,16(sp)
    80002cc4:	00913423          	sd	s1,8(sp)
    80002cc8:	02010413          	addi	s0,sp,32
    80002ccc:	00050493          	mv	s1,a0
    80002cd0:	00004797          	auipc	a5,0x4
    80002cd4:	5f878793          	addi	a5,a5,1528 # 800072c8 <_ZTV7WorkerB+0x10>
    80002cd8:	00f53023          	sd	a5,0(a0)
    80002cdc:	fffff097          	auipc	ra,0xfffff
    80002ce0:	de8080e7          	jalr	-536(ra) # 80001ac4 <_ZN6ThreadD1Ev>
    80002ce4:	00048513          	mv	a0,s1
    80002ce8:	fffff097          	auipc	ra,0xfffff
    80002cec:	e48080e7          	jalr	-440(ra) # 80001b30 <_ZdlPv>
    80002cf0:	01813083          	ld	ra,24(sp)
    80002cf4:	01013403          	ld	s0,16(sp)
    80002cf8:	00813483          	ld	s1,8(sp)
    80002cfc:	02010113          	addi	sp,sp,32
    80002d00:	00008067          	ret

0000000080002d04 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80002d04:	ff010113          	addi	sp,sp,-16
    80002d08:	00113423          	sd	ra,8(sp)
    80002d0c:	00813023          	sd	s0,0(sp)
    80002d10:	01010413          	addi	s0,sp,16
    80002d14:	00004797          	auipc	a5,0x4
    80002d18:	5dc78793          	addi	a5,a5,1500 # 800072f0 <_ZTV7WorkerC+0x10>
    80002d1c:	00f53023          	sd	a5,0(a0)
    80002d20:	fffff097          	auipc	ra,0xfffff
    80002d24:	da4080e7          	jalr	-604(ra) # 80001ac4 <_ZN6ThreadD1Ev>
    80002d28:	00813083          	ld	ra,8(sp)
    80002d2c:	00013403          	ld	s0,0(sp)
    80002d30:	01010113          	addi	sp,sp,16
    80002d34:	00008067          	ret

0000000080002d38 <_ZN7WorkerCD0Ev>:
    80002d38:	fe010113          	addi	sp,sp,-32
    80002d3c:	00113c23          	sd	ra,24(sp)
    80002d40:	00813823          	sd	s0,16(sp)
    80002d44:	00913423          	sd	s1,8(sp)
    80002d48:	02010413          	addi	s0,sp,32
    80002d4c:	00050493          	mv	s1,a0
    80002d50:	00004797          	auipc	a5,0x4
    80002d54:	5a078793          	addi	a5,a5,1440 # 800072f0 <_ZTV7WorkerC+0x10>
    80002d58:	00f53023          	sd	a5,0(a0)
    80002d5c:	fffff097          	auipc	ra,0xfffff
    80002d60:	d68080e7          	jalr	-664(ra) # 80001ac4 <_ZN6ThreadD1Ev>
    80002d64:	00048513          	mv	a0,s1
    80002d68:	fffff097          	auipc	ra,0xfffff
    80002d6c:	dc8080e7          	jalr	-568(ra) # 80001b30 <_ZdlPv>
    80002d70:	01813083          	ld	ra,24(sp)
    80002d74:	01013403          	ld	s0,16(sp)
    80002d78:	00813483          	ld	s1,8(sp)
    80002d7c:	02010113          	addi	sp,sp,32
    80002d80:	00008067          	ret

0000000080002d84 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80002d84:	ff010113          	addi	sp,sp,-16
    80002d88:	00113423          	sd	ra,8(sp)
    80002d8c:	00813023          	sd	s0,0(sp)
    80002d90:	01010413          	addi	s0,sp,16
    80002d94:	00004797          	auipc	a5,0x4
    80002d98:	58478793          	addi	a5,a5,1412 # 80007318 <_ZTV7WorkerD+0x10>
    80002d9c:	00f53023          	sd	a5,0(a0)
    80002da0:	fffff097          	auipc	ra,0xfffff
    80002da4:	d24080e7          	jalr	-732(ra) # 80001ac4 <_ZN6ThreadD1Ev>
    80002da8:	00813083          	ld	ra,8(sp)
    80002dac:	00013403          	ld	s0,0(sp)
    80002db0:	01010113          	addi	sp,sp,16
    80002db4:	00008067          	ret

0000000080002db8 <_ZN7WorkerDD0Ev>:
    80002db8:	fe010113          	addi	sp,sp,-32
    80002dbc:	00113c23          	sd	ra,24(sp)
    80002dc0:	00813823          	sd	s0,16(sp)
    80002dc4:	00913423          	sd	s1,8(sp)
    80002dc8:	02010413          	addi	s0,sp,32
    80002dcc:	00050493          	mv	s1,a0
    80002dd0:	00004797          	auipc	a5,0x4
    80002dd4:	54878793          	addi	a5,a5,1352 # 80007318 <_ZTV7WorkerD+0x10>
    80002dd8:	00f53023          	sd	a5,0(a0)
    80002ddc:	fffff097          	auipc	ra,0xfffff
    80002de0:	ce8080e7          	jalr	-792(ra) # 80001ac4 <_ZN6ThreadD1Ev>
    80002de4:	00048513          	mv	a0,s1
    80002de8:	fffff097          	auipc	ra,0xfffff
    80002dec:	d48080e7          	jalr	-696(ra) # 80001b30 <_ZdlPv>
    80002df0:	01813083          	ld	ra,24(sp)
    80002df4:	01013403          	ld	s0,16(sp)
    80002df8:	00813483          	ld	s1,8(sp)
    80002dfc:	02010113          	addi	sp,sp,32
    80002e00:	00008067          	ret

0000000080002e04 <_ZN7WorkerA3runEv>:
    void run() override {
    80002e04:	ff010113          	addi	sp,sp,-16
    80002e08:	00113423          	sd	ra,8(sp)
    80002e0c:	00813023          	sd	s0,0(sp)
    80002e10:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80002e14:	00000593          	li	a1,0
    80002e18:	fffff097          	auipc	ra,0xfffff
    80002e1c:	7bc080e7          	jalr	1980(ra) # 800025d4 <_ZN7WorkerA11workerBodyAEPv>
    }
    80002e20:	00813083          	ld	ra,8(sp)
    80002e24:	00013403          	ld	s0,0(sp)
    80002e28:	01010113          	addi	sp,sp,16
    80002e2c:	00008067          	ret

0000000080002e30 <_ZN7WorkerB3runEv>:
    void run() override {
    80002e30:	ff010113          	addi	sp,sp,-16
    80002e34:	00113423          	sd	ra,8(sp)
    80002e38:	00813023          	sd	s0,0(sp)
    80002e3c:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80002e40:	00000593          	li	a1,0
    80002e44:	00000097          	auipc	ra,0x0
    80002e48:	854080e7          	jalr	-1964(ra) # 80002698 <_ZN7WorkerB11workerBodyBEPv>
    }
    80002e4c:	00813083          	ld	ra,8(sp)
    80002e50:	00013403          	ld	s0,0(sp)
    80002e54:	01010113          	addi	sp,sp,16
    80002e58:	00008067          	ret

0000000080002e5c <_ZN7WorkerC3runEv>:
    void run() override {
    80002e5c:	ff010113          	addi	sp,sp,-16
    80002e60:	00113423          	sd	ra,8(sp)
    80002e64:	00813023          	sd	s0,0(sp)
    80002e68:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80002e6c:	00000593          	li	a1,0
    80002e70:	00000097          	auipc	ra,0x0
    80002e74:	8f4080e7          	jalr	-1804(ra) # 80002764 <_ZN7WorkerC11workerBodyCEPv>
    }
    80002e78:	00813083          	ld	ra,8(sp)
    80002e7c:	00013403          	ld	s0,0(sp)
    80002e80:	01010113          	addi	sp,sp,16
    80002e84:	00008067          	ret

0000000080002e88 <_ZN7WorkerD3runEv>:
    void run() override {
    80002e88:	ff010113          	addi	sp,sp,-16
    80002e8c:	00113423          	sd	ra,8(sp)
    80002e90:	00813023          	sd	s0,0(sp)
    80002e94:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80002e98:	00000593          	li	a1,0
    80002e9c:	00000097          	auipc	ra,0x0
    80002ea0:	a28080e7          	jalr	-1496(ra) # 800028c4 <_ZN7WorkerD11workerBodyDEPv>
    }
    80002ea4:	00813083          	ld	ra,8(sp)
    80002ea8:	00013403          	ld	s0,0(sp)
    80002eac:	01010113          	addi	sp,sp,16
    80002eb0:	00008067          	ret

0000000080002eb4 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80002eb4:	fe010113          	addi	sp,sp,-32
    80002eb8:	00113c23          	sd	ra,24(sp)
    80002ebc:	00813823          	sd	s0,16(sp)
    80002ec0:	00913423          	sd	s1,8(sp)
    80002ec4:	01213023          	sd	s2,0(sp)
    80002ec8:	02010413          	addi	s0,sp,32
    80002ecc:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80002ed0:	00100793          	li	a5,1
    80002ed4:	02a7f863          	bgeu	a5,a0,80002f04 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80002ed8:	00a00793          	li	a5,10
    80002edc:	02f577b3          	remu	a5,a0,a5
    80002ee0:	02078e63          	beqz	a5,80002f1c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80002ee4:	fff48513          	addi	a0,s1,-1
    80002ee8:	00000097          	auipc	ra,0x0
    80002eec:	fcc080e7          	jalr	-52(ra) # 80002eb4 <_ZL9fibonaccim>
    80002ef0:	00050913          	mv	s2,a0
    80002ef4:	ffe48513          	addi	a0,s1,-2
    80002ef8:	00000097          	auipc	ra,0x0
    80002efc:	fbc080e7          	jalr	-68(ra) # 80002eb4 <_ZL9fibonaccim>
    80002f00:	00a90533          	add	a0,s2,a0
}
    80002f04:	01813083          	ld	ra,24(sp)
    80002f08:	01013403          	ld	s0,16(sp)
    80002f0c:	00813483          	ld	s1,8(sp)
    80002f10:	00013903          	ld	s2,0(sp)
    80002f14:	02010113          	addi	sp,sp,32
    80002f18:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80002f1c:	ffffe097          	auipc	ra,0xffffe
    80002f20:	440080e7          	jalr	1088(ra) # 8000135c <_Z15thread_dispatchv>
    80002f24:	fc1ff06f          	j	80002ee4 <_ZL9fibonaccim+0x30>

0000000080002f28 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80002f28:	fe010113          	addi	sp,sp,-32
    80002f2c:	00113c23          	sd	ra,24(sp)
    80002f30:	00813823          	sd	s0,16(sp)
    80002f34:	00913423          	sd	s1,8(sp)
    80002f38:	01213023          	sd	s2,0(sp)
    80002f3c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80002f40:	00a00493          	li	s1,10
    80002f44:	0380006f          	j	80002f7c <_ZL11workerBodyDPv+0x54>
    for (; i < 13; i++) {
        printString("D: i="); printInteger(i); printString("\n");
    80002f48:	00003517          	auipc	a0,0x3
    80002f4c:	1f050513          	addi	a0,a0,496 # 80006138 <_ZZ12printIntegermE6digits+0x70>
    80002f50:	fffff097          	auipc	ra,0xfffff
    80002f54:	53c080e7          	jalr	1340(ra) # 8000248c <_Z11printStringPKc>
    80002f58:	00048513          	mv	a0,s1
    80002f5c:	fffff097          	auipc	ra,0xfffff
    80002f60:	574080e7          	jalr	1396(ra) # 800024d0 <_Z12printIntegerm>
    80002f64:	00003517          	auipc	a0,0x3
    80002f68:	12450513          	addi	a0,a0,292 # 80006088 <CONSOLE_STATUS+0x78>
    80002f6c:	fffff097          	auipc	ra,0xfffff
    80002f70:	520080e7          	jalr	1312(ra) # 8000248c <_Z11printStringPKc>
    for (; i < 13; i++) {
    80002f74:	0014849b          	addiw	s1,s1,1
    80002f78:	0ff4f493          	andi	s1,s1,255
    80002f7c:	00c00793          	li	a5,12
    80002f80:	fc97f4e3          	bgeu	a5,s1,80002f48 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80002f84:	00003517          	auipc	a0,0x3
    80002f88:	1bc50513          	addi	a0,a0,444 # 80006140 <_ZZ12printIntegermE6digits+0x78>
    80002f8c:	fffff097          	auipc	ra,0xfffff
    80002f90:	500080e7          	jalr	1280(ra) # 8000248c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80002f94:	00500313          	li	t1,5
    thread_dispatch();
    80002f98:	ffffe097          	auipc	ra,0xffffe
    80002f9c:	3c4080e7          	jalr	964(ra) # 8000135c <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80002fa0:	01000513          	li	a0,16
    80002fa4:	00000097          	auipc	ra,0x0
    80002fa8:	f10080e7          	jalr	-240(ra) # 80002eb4 <_ZL9fibonaccim>
    80002fac:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInteger(result); printString("\n");
    80002fb0:	00003517          	auipc	a0,0x3
    80002fb4:	1a050513          	addi	a0,a0,416 # 80006150 <_ZZ12printIntegermE6digits+0x88>
    80002fb8:	fffff097          	auipc	ra,0xfffff
    80002fbc:	4d4080e7          	jalr	1236(ra) # 8000248c <_Z11printStringPKc>
    80002fc0:	00090513          	mv	a0,s2
    80002fc4:	fffff097          	auipc	ra,0xfffff
    80002fc8:	50c080e7          	jalr	1292(ra) # 800024d0 <_Z12printIntegerm>
    80002fcc:	00003517          	auipc	a0,0x3
    80002fd0:	0bc50513          	addi	a0,a0,188 # 80006088 <CONSOLE_STATUS+0x78>
    80002fd4:	fffff097          	auipc	ra,0xfffff
    80002fd8:	4b8080e7          	jalr	1208(ra) # 8000248c <_Z11printStringPKc>
    80002fdc:	0380006f          	j	80003014 <_ZL11workerBodyDPv+0xec>

    for (; i < 16; i++) {
        printString("D: i="); printInteger(i); printString("\n");
    80002fe0:	00003517          	auipc	a0,0x3
    80002fe4:	15850513          	addi	a0,a0,344 # 80006138 <_ZZ12printIntegermE6digits+0x70>
    80002fe8:	fffff097          	auipc	ra,0xfffff
    80002fec:	4a4080e7          	jalr	1188(ra) # 8000248c <_Z11printStringPKc>
    80002ff0:	00048513          	mv	a0,s1
    80002ff4:	fffff097          	auipc	ra,0xfffff
    80002ff8:	4dc080e7          	jalr	1244(ra) # 800024d0 <_Z12printIntegerm>
    80002ffc:	00003517          	auipc	a0,0x3
    80003000:	08c50513          	addi	a0,a0,140 # 80006088 <CONSOLE_STATUS+0x78>
    80003004:	fffff097          	auipc	ra,0xfffff
    80003008:	488080e7          	jalr	1160(ra) # 8000248c <_Z11printStringPKc>
    for (; i < 16; i++) {
    8000300c:	0014849b          	addiw	s1,s1,1
    80003010:	0ff4f493          	andi	s1,s1,255
    80003014:	00f00793          	li	a5,15
    80003018:	fc97f4e3          	bgeu	a5,s1,80002fe0 <_ZL11workerBodyDPv+0xb8>
    }

    printString("D finished!\n");
    8000301c:	00003517          	auipc	a0,0x3
    80003020:	14450513          	addi	a0,a0,324 # 80006160 <_ZZ12printIntegermE6digits+0x98>
    80003024:	fffff097          	auipc	ra,0xfffff
    80003028:	468080e7          	jalr	1128(ra) # 8000248c <_Z11printStringPKc>
    finishedD = true;
    8000302c:	00100793          	li	a5,1
    80003030:	00004717          	auipc	a4,0x4
    80003034:	3af70623          	sb	a5,940(a4) # 800073dc <_ZL9finishedD>
    thread_dispatch();
    80003038:	ffffe097          	auipc	ra,0xffffe
    8000303c:	324080e7          	jalr	804(ra) # 8000135c <_Z15thread_dispatchv>
}
    80003040:	01813083          	ld	ra,24(sp)
    80003044:	01013403          	ld	s0,16(sp)
    80003048:	00813483          	ld	s1,8(sp)
    8000304c:	00013903          	ld	s2,0(sp)
    80003050:	02010113          	addi	sp,sp,32
    80003054:	00008067          	ret

0000000080003058 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80003058:	fe010113          	addi	sp,sp,-32
    8000305c:	00113c23          	sd	ra,24(sp)
    80003060:	00813823          	sd	s0,16(sp)
    80003064:	00913423          	sd	s1,8(sp)
    80003068:	01213023          	sd	s2,0(sp)
    8000306c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003070:	00000493          	li	s1,0
    80003074:	0380006f          	j	800030ac <_ZL11workerBodyCPv+0x54>
        printString("C: i="); printInteger(i); printString("\n");
    80003078:	00003517          	auipc	a0,0x3
    8000307c:	08050513          	addi	a0,a0,128 # 800060f8 <_ZZ12printIntegermE6digits+0x30>
    80003080:	fffff097          	auipc	ra,0xfffff
    80003084:	40c080e7          	jalr	1036(ra) # 8000248c <_Z11printStringPKc>
    80003088:	00048513          	mv	a0,s1
    8000308c:	fffff097          	auipc	ra,0xfffff
    80003090:	444080e7          	jalr	1092(ra) # 800024d0 <_Z12printIntegerm>
    80003094:	00003517          	auipc	a0,0x3
    80003098:	ff450513          	addi	a0,a0,-12 # 80006088 <CONSOLE_STATUS+0x78>
    8000309c:	fffff097          	auipc	ra,0xfffff
    800030a0:	3f0080e7          	jalr	1008(ra) # 8000248c <_Z11printStringPKc>
    for (; i < 3; i++) {
    800030a4:	0014849b          	addiw	s1,s1,1
    800030a8:	0ff4f493          	andi	s1,s1,255
    800030ac:	00200793          	li	a5,2
    800030b0:	fc97f4e3          	bgeu	a5,s1,80003078 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    800030b4:	00003517          	auipc	a0,0x3
    800030b8:	04c50513          	addi	a0,a0,76 # 80006100 <_ZZ12printIntegermE6digits+0x38>
    800030bc:	fffff097          	auipc	ra,0xfffff
    800030c0:	3d0080e7          	jalr	976(ra) # 8000248c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800030c4:	00700313          	li	t1,7
    thread_dispatch();
    800030c8:	ffffe097          	auipc	ra,0xffffe
    800030cc:	294080e7          	jalr	660(ra) # 8000135c <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800030d0:	00030913          	mv	s2,t1
    printString("C: t1="); printInteger(t1); printString("\n");
    800030d4:	00003517          	auipc	a0,0x3
    800030d8:	03c50513          	addi	a0,a0,60 # 80006110 <_ZZ12printIntegermE6digits+0x48>
    800030dc:	fffff097          	auipc	ra,0xfffff
    800030e0:	3b0080e7          	jalr	944(ra) # 8000248c <_Z11printStringPKc>
    800030e4:	00090513          	mv	a0,s2
    800030e8:	fffff097          	auipc	ra,0xfffff
    800030ec:	3e8080e7          	jalr	1000(ra) # 800024d0 <_Z12printIntegerm>
    800030f0:	00003517          	auipc	a0,0x3
    800030f4:	f9850513          	addi	a0,a0,-104 # 80006088 <CONSOLE_STATUS+0x78>
    800030f8:	fffff097          	auipc	ra,0xfffff
    800030fc:	394080e7          	jalr	916(ra) # 8000248c <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80003100:	00c00513          	li	a0,12
    80003104:	00000097          	auipc	ra,0x0
    80003108:	db0080e7          	jalr	-592(ra) # 80002eb4 <_ZL9fibonaccim>
    8000310c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInteger(result); printString("\n");
    80003110:	00003517          	auipc	a0,0x3
    80003114:	00850513          	addi	a0,a0,8 # 80006118 <_ZZ12printIntegermE6digits+0x50>
    80003118:	fffff097          	auipc	ra,0xfffff
    8000311c:	374080e7          	jalr	884(ra) # 8000248c <_Z11printStringPKc>
    80003120:	00090513          	mv	a0,s2
    80003124:	fffff097          	auipc	ra,0xfffff
    80003128:	3ac080e7          	jalr	940(ra) # 800024d0 <_Z12printIntegerm>
    8000312c:	00003517          	auipc	a0,0x3
    80003130:	f5c50513          	addi	a0,a0,-164 # 80006088 <CONSOLE_STATUS+0x78>
    80003134:	fffff097          	auipc	ra,0xfffff
    80003138:	358080e7          	jalr	856(ra) # 8000248c <_Z11printStringPKc>
    8000313c:	0380006f          	j	80003174 <_ZL11workerBodyCPv+0x11c>
        printString("C: i="); printInteger(i); printString("\n");
    80003140:	00003517          	auipc	a0,0x3
    80003144:	fb850513          	addi	a0,a0,-72 # 800060f8 <_ZZ12printIntegermE6digits+0x30>
    80003148:	fffff097          	auipc	ra,0xfffff
    8000314c:	344080e7          	jalr	836(ra) # 8000248c <_Z11printStringPKc>
    80003150:	00048513          	mv	a0,s1
    80003154:	fffff097          	auipc	ra,0xfffff
    80003158:	37c080e7          	jalr	892(ra) # 800024d0 <_Z12printIntegerm>
    8000315c:	00003517          	auipc	a0,0x3
    80003160:	f2c50513          	addi	a0,a0,-212 # 80006088 <CONSOLE_STATUS+0x78>
    80003164:	fffff097          	auipc	ra,0xfffff
    80003168:	328080e7          	jalr	808(ra) # 8000248c <_Z11printStringPKc>
    for (; i < 6; i++) {
    8000316c:	0014849b          	addiw	s1,s1,1
    80003170:	0ff4f493          	andi	s1,s1,255
    80003174:	00500793          	li	a5,5
    80003178:	fc97f4e3          	bgeu	a5,s1,80003140 <_ZL11workerBodyCPv+0xe8>
    printString("A finished!\n");
    8000317c:	00003517          	auipc	a0,0x3
    80003180:	f5c50513          	addi	a0,a0,-164 # 800060d8 <_ZZ12printIntegermE6digits+0x10>
    80003184:	fffff097          	auipc	ra,0xfffff
    80003188:	308080e7          	jalr	776(ra) # 8000248c <_Z11printStringPKc>
    finishedC = true;
    8000318c:	00100793          	li	a5,1
    80003190:	00004717          	auipc	a4,0x4
    80003194:	24f706a3          	sb	a5,589(a4) # 800073dd <_ZL9finishedC>
    thread_dispatch();
    80003198:	ffffe097          	auipc	ra,0xffffe
    8000319c:	1c4080e7          	jalr	452(ra) # 8000135c <_Z15thread_dispatchv>
}
    800031a0:	01813083          	ld	ra,24(sp)
    800031a4:	01013403          	ld	s0,16(sp)
    800031a8:	00813483          	ld	s1,8(sp)
    800031ac:	00013903          	ld	s2,0(sp)
    800031b0:	02010113          	addi	sp,sp,32
    800031b4:	00008067          	ret

00000000800031b8 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    800031b8:	fe010113          	addi	sp,sp,-32
    800031bc:	00113c23          	sd	ra,24(sp)
    800031c0:	00813823          	sd	s0,16(sp)
    800031c4:	00913423          	sd	s1,8(sp)
    800031c8:	01213023          	sd	s2,0(sp)
    800031cc:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800031d0:	00000913          	li	s2,0
    800031d4:	0380006f          	j	8000320c <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    800031d8:	ffffe097          	auipc	ra,0xffffe
    800031dc:	184080e7          	jalr	388(ra) # 8000135c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800031e0:	00148493          	addi	s1,s1,1
    800031e4:	000027b7          	lui	a5,0x2
    800031e8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800031ec:	0097ee63          	bltu	a5,s1,80003208 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800031f0:	00000713          	li	a4,0
    800031f4:	000077b7          	lui	a5,0x7
    800031f8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800031fc:	fce7eee3          	bltu	a5,a4,800031d8 <_ZL11workerBodyBPv+0x20>
    80003200:	00170713          	addi	a4,a4,1
    80003204:	ff1ff06f          	j	800031f4 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80003208:	00190913          	addi	s2,s2,1
    8000320c:	00f00793          	li	a5,15
    80003210:	0327ec63          	bltu	a5,s2,80003248 <_ZL11workerBodyBPv+0x90>
        printString("B: i="); printInteger(i); printString("\n");
    80003214:	00003517          	auipc	a0,0x3
    80003218:	e3c50513          	addi	a0,a0,-452 # 80006050 <CONSOLE_STATUS+0x40>
    8000321c:	fffff097          	auipc	ra,0xfffff
    80003220:	270080e7          	jalr	624(ra) # 8000248c <_Z11printStringPKc>
    80003224:	00090513          	mv	a0,s2
    80003228:	fffff097          	auipc	ra,0xfffff
    8000322c:	2a8080e7          	jalr	680(ra) # 800024d0 <_Z12printIntegerm>
    80003230:	00003517          	auipc	a0,0x3
    80003234:	e5850513          	addi	a0,a0,-424 # 80006088 <CONSOLE_STATUS+0x78>
    80003238:	fffff097          	auipc	ra,0xfffff
    8000323c:	254080e7          	jalr	596(ra) # 8000248c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003240:	00000493          	li	s1,0
    80003244:	fa1ff06f          	j	800031e4 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80003248:	00003517          	auipc	a0,0x3
    8000324c:	ea050513          	addi	a0,a0,-352 # 800060e8 <_ZZ12printIntegermE6digits+0x20>
    80003250:	fffff097          	auipc	ra,0xfffff
    80003254:	23c080e7          	jalr	572(ra) # 8000248c <_Z11printStringPKc>
    finishedB = true;
    80003258:	00100793          	li	a5,1
    8000325c:	00004717          	auipc	a4,0x4
    80003260:	18f70123          	sb	a5,386(a4) # 800073de <_ZL9finishedB>
    thread_dispatch();
    80003264:	ffffe097          	auipc	ra,0xffffe
    80003268:	0f8080e7          	jalr	248(ra) # 8000135c <_Z15thread_dispatchv>
}
    8000326c:	01813083          	ld	ra,24(sp)
    80003270:	01013403          	ld	s0,16(sp)
    80003274:	00813483          	ld	s1,8(sp)
    80003278:	00013903          	ld	s2,0(sp)
    8000327c:	02010113          	addi	sp,sp,32
    80003280:	00008067          	ret

0000000080003284 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80003284:	fe010113          	addi	sp,sp,-32
    80003288:	00113c23          	sd	ra,24(sp)
    8000328c:	00813823          	sd	s0,16(sp)
    80003290:	00913423          	sd	s1,8(sp)
    80003294:	01213023          	sd	s2,0(sp)
    80003298:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    8000329c:	00000913          	li	s2,0
    800032a0:	0380006f          	j	800032d8 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    800032a4:	ffffe097          	auipc	ra,0xffffe
    800032a8:	0b8080e7          	jalr	184(ra) # 8000135c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800032ac:	00148493          	addi	s1,s1,1
    800032b0:	000027b7          	lui	a5,0x2
    800032b4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800032b8:	0097ee63          	bltu	a5,s1,800032d4 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800032bc:	00000713          	li	a4,0
    800032c0:	000077b7          	lui	a5,0x7
    800032c4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800032c8:	fce7eee3          	bltu	a5,a4,800032a4 <_ZL11workerBodyAPv+0x20>
    800032cc:	00170713          	addi	a4,a4,1
    800032d0:	ff1ff06f          	j	800032c0 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800032d4:	00190913          	addi	s2,s2,1
    800032d8:	00900793          	li	a5,9
    800032dc:	0327ec63          	bltu	a5,s2,80003314 <_ZL11workerBodyAPv+0x90>
        printString("A: i="); printInteger(i); printString("\n");
    800032e0:	00003517          	auipc	a0,0x3
    800032e4:	d4050513          	addi	a0,a0,-704 # 80006020 <CONSOLE_STATUS+0x10>
    800032e8:	fffff097          	auipc	ra,0xfffff
    800032ec:	1a4080e7          	jalr	420(ra) # 8000248c <_Z11printStringPKc>
    800032f0:	00090513          	mv	a0,s2
    800032f4:	fffff097          	auipc	ra,0xfffff
    800032f8:	1dc080e7          	jalr	476(ra) # 800024d0 <_Z12printIntegerm>
    800032fc:	00003517          	auipc	a0,0x3
    80003300:	d8c50513          	addi	a0,a0,-628 # 80006088 <CONSOLE_STATUS+0x78>
    80003304:	fffff097          	auipc	ra,0xfffff
    80003308:	188080e7          	jalr	392(ra) # 8000248c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000330c:	00000493          	li	s1,0
    80003310:	fa1ff06f          	j	800032b0 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80003314:	00003517          	auipc	a0,0x3
    80003318:	dc450513          	addi	a0,a0,-572 # 800060d8 <_ZZ12printIntegermE6digits+0x10>
    8000331c:	fffff097          	auipc	ra,0xfffff
    80003320:	170080e7          	jalr	368(ra) # 8000248c <_Z11printStringPKc>
    finishedA = true;
    80003324:	00100793          	li	a5,1
    80003328:	00004717          	auipc	a4,0x4
    8000332c:	0af70ba3          	sb	a5,183(a4) # 800073df <_ZL9finishedA>
}
    80003330:	01813083          	ld	ra,24(sp)
    80003334:	01013403          	ld	s0,16(sp)
    80003338:	00813483          	ld	s1,8(sp)
    8000333c:	00013903          	ld	s2,0(sp)
    80003340:	02010113          	addi	sp,sp,32
    80003344:	00008067          	ret

0000000080003348 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80003348:	fd010113          	addi	sp,sp,-48
    8000334c:	02113423          	sd	ra,40(sp)
    80003350:	02813023          	sd	s0,32(sp)
    80003354:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80003358:	00000613          	li	a2,0
    8000335c:	00000597          	auipc	a1,0x0
    80003360:	f2858593          	addi	a1,a1,-216 # 80003284 <_ZL11workerBodyAPv>
    80003364:	fd040513          	addi	a0,s0,-48
    80003368:	ffffe097          	auipc	ra,0xffffe
    8000336c:	f90080e7          	jalr	-112(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80003370:	00003517          	auipc	a0,0x3
    80003374:	e0050513          	addi	a0,a0,-512 # 80006170 <_ZZ12printIntegermE6digits+0xa8>
    80003378:	fffff097          	auipc	ra,0xfffff
    8000337c:	114080e7          	jalr	276(ra) # 8000248c <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80003380:	00000613          	li	a2,0
    80003384:	00000597          	auipc	a1,0x0
    80003388:	e3458593          	addi	a1,a1,-460 # 800031b8 <_ZL11workerBodyBPv>
    8000338c:	fd840513          	addi	a0,s0,-40
    80003390:	ffffe097          	auipc	ra,0xffffe
    80003394:	f68080e7          	jalr	-152(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80003398:	00003517          	auipc	a0,0x3
    8000339c:	df050513          	addi	a0,a0,-528 # 80006188 <_ZZ12printIntegermE6digits+0xc0>
    800033a0:	fffff097          	auipc	ra,0xfffff
    800033a4:	0ec080e7          	jalr	236(ra) # 8000248c <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    800033a8:	00000613          	li	a2,0
    800033ac:	00000597          	auipc	a1,0x0
    800033b0:	cac58593          	addi	a1,a1,-852 # 80003058 <_ZL11workerBodyCPv>
    800033b4:	fe040513          	addi	a0,s0,-32
    800033b8:	ffffe097          	auipc	ra,0xffffe
    800033bc:	f40080e7          	jalr	-192(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    800033c0:	00003517          	auipc	a0,0x3
    800033c4:	de050513          	addi	a0,a0,-544 # 800061a0 <_ZZ12printIntegermE6digits+0xd8>
    800033c8:	fffff097          	auipc	ra,0xfffff
    800033cc:	0c4080e7          	jalr	196(ra) # 8000248c <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    800033d0:	00000613          	li	a2,0
    800033d4:	00000597          	auipc	a1,0x0
    800033d8:	b5458593          	addi	a1,a1,-1196 # 80002f28 <_ZL11workerBodyDPv>
    800033dc:	fe840513          	addi	a0,s0,-24
    800033e0:	ffffe097          	auipc	ra,0xffffe
    800033e4:	f18080e7          	jalr	-232(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    800033e8:	00003517          	auipc	a0,0x3
    800033ec:	dd050513          	addi	a0,a0,-560 # 800061b8 <_ZZ12printIntegermE6digits+0xf0>
    800033f0:	fffff097          	auipc	ra,0xfffff
    800033f4:	09c080e7          	jalr	156(ra) # 8000248c <_Z11printStringPKc>
    800033f8:	00c0006f          	j	80003404 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    800033fc:	ffffe097          	auipc	ra,0xffffe
    80003400:	f60080e7          	jalr	-160(ra) # 8000135c <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80003404:	00004797          	auipc	a5,0x4
    80003408:	fdb7c783          	lbu	a5,-37(a5) # 800073df <_ZL9finishedA>
    8000340c:	fe0788e3          	beqz	a5,800033fc <_Z18Threads_C_API_testv+0xb4>
    80003410:	00004797          	auipc	a5,0x4
    80003414:	fce7c783          	lbu	a5,-50(a5) # 800073de <_ZL9finishedB>
    80003418:	fe0782e3          	beqz	a5,800033fc <_Z18Threads_C_API_testv+0xb4>
    8000341c:	00004797          	auipc	a5,0x4
    80003420:	fc17c783          	lbu	a5,-63(a5) # 800073dd <_ZL9finishedC>
    80003424:	fc078ce3          	beqz	a5,800033fc <_Z18Threads_C_API_testv+0xb4>
    80003428:	00004797          	auipc	a5,0x4
    8000342c:	fb47c783          	lbu	a5,-76(a5) # 800073dc <_ZL9finishedD>
    80003430:	fc0786e3          	beqz	a5,800033fc <_Z18Threads_C_API_testv+0xb4>
    }

}
    80003434:	02813083          	ld	ra,40(sp)
    80003438:	02013403          	ld	s0,32(sp)
    8000343c:	03010113          	addi	sp,sp,48
    80003440:	00008067          	ret

0000000080003444 <_Z8userMainv>:
//#include "../test/ConsumerProducer_CPP_API_test.hpp"
//#include "System_Mode_test.hpp"

#endif

void userMain() {
    80003444:	ff010113          	addi	sp,sp,-16
    80003448:	00113423          	sd	ra,8(sp)
    8000344c:	00813023          	sd	s0,0(sp)
    80003450:	01010413          	addi	s0,sp,16
    printString("Unesite broj testa? [1-7]\n");
    80003454:	00003517          	auipc	a0,0x3
    80003458:	d7c50513          	addi	a0,a0,-644 # 800061d0 <_ZZ12printIntegermE6digits+0x108>
    8000345c:	fffff097          	auipc	ra,0xfffff
    80003460:	030080e7          	jalr	48(ra) # 8000248c <_Z11printStringPKc>
    }

    switch (test) {
        case 1:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_C_API_test();
    80003464:	00000097          	auipc	ra,0x0
    80003468:	ee4080e7          	jalr	-284(ra) # 80003348 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    8000346c:	00003517          	auipc	a0,0x3
    80003470:	d8450513          	addi	a0,a0,-636 # 800061f0 <_ZZ12printIntegermE6digits+0x128>
    80003474:	fffff097          	auipc	ra,0xfffff
    80003478:	018080e7          	jalr	24(ra) # 8000248c <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    8000347c:	00813083          	ld	ra,8(sp)
    80003480:	00013403          	ld	s0,0(sp)
    80003484:	01010113          	addi	sp,sp,16
    80003488:	00008067          	ret

000000008000348c <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    8000348c:	fe010113          	addi	sp,sp,-32
    80003490:	00113c23          	sd	ra,24(sp)
    80003494:	00813823          	sd	s0,16(sp)
    80003498:	00913423          	sd	s1,8(sp)
    8000349c:	01213023          	sd	s2,0(sp)
    800034a0:	02010413          	addi	s0,sp,32
    800034a4:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800034a8:	00100793          	li	a5,1
    800034ac:	02a7f863          	bgeu	a5,a0,800034dc <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800034b0:	00a00793          	li	a5,10
    800034b4:	02f577b3          	remu	a5,a0,a5
    800034b8:	02078e63          	beqz	a5,800034f4 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800034bc:	fff48513          	addi	a0,s1,-1
    800034c0:	00000097          	auipc	ra,0x0
    800034c4:	fcc080e7          	jalr	-52(ra) # 8000348c <_ZL9fibonaccim>
    800034c8:	00050913          	mv	s2,a0
    800034cc:	ffe48513          	addi	a0,s1,-2
    800034d0:	00000097          	auipc	ra,0x0
    800034d4:	fbc080e7          	jalr	-68(ra) # 8000348c <_ZL9fibonaccim>
    800034d8:	00a90533          	add	a0,s2,a0
}
    800034dc:	01813083          	ld	ra,24(sp)
    800034e0:	01013403          	ld	s0,16(sp)
    800034e4:	00813483          	ld	s1,8(sp)
    800034e8:	00013903          	ld	s2,0(sp)
    800034ec:	02010113          	addi	sp,sp,32
    800034f0:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800034f4:	ffffe097          	auipc	ra,0xffffe
    800034f8:	e68080e7          	jalr	-408(ra) # 8000135c <_Z15thread_dispatchv>
    800034fc:	fc1ff06f          	j	800034bc <_ZL9fibonaccim+0x30>

0000000080003500 <_ZL11workerBodyDPv>:
    printString("C finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80003500:	fe010113          	addi	sp,sp,-32
    80003504:	00113c23          	sd	ra,24(sp)
    80003508:	00813823          	sd	s0,16(sp)
    8000350c:	00913423          	sd	s1,8(sp)
    80003510:	01213023          	sd	s2,0(sp)
    80003514:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003518:	00a00493          	li	s1,10
    8000351c:	0380006f          	j	80003554 <_ZL11workerBodyDPv+0x54>
    for (; i < 13; i++) {
        printString("D: i="); printInteger(i); printString("\n");
    80003520:	00003517          	auipc	a0,0x3
    80003524:	c1850513          	addi	a0,a0,-1000 # 80006138 <_ZZ12printIntegermE6digits+0x70>
    80003528:	fffff097          	auipc	ra,0xfffff
    8000352c:	f64080e7          	jalr	-156(ra) # 8000248c <_Z11printStringPKc>
    80003530:	00048513          	mv	a0,s1
    80003534:	fffff097          	auipc	ra,0xfffff
    80003538:	f9c080e7          	jalr	-100(ra) # 800024d0 <_Z12printIntegerm>
    8000353c:	00003517          	auipc	a0,0x3
    80003540:	b4c50513          	addi	a0,a0,-1204 # 80006088 <CONSOLE_STATUS+0x78>
    80003544:	fffff097          	auipc	ra,0xfffff
    80003548:	f48080e7          	jalr	-184(ra) # 8000248c <_Z11printStringPKc>
    for (; i < 13; i++) {
    8000354c:	0014849b          	addiw	s1,s1,1
    80003550:	0ff4f493          	andi	s1,s1,255
    80003554:	00c00793          	li	a5,12
    80003558:	fc97f4e3          	bgeu	a5,s1,80003520 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    8000355c:	00003517          	auipc	a0,0x3
    80003560:	be450513          	addi	a0,a0,-1052 # 80006140 <_ZZ12printIntegermE6digits+0x78>
    80003564:	fffff097          	auipc	ra,0xfffff
    80003568:	f28080e7          	jalr	-216(ra) # 8000248c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    8000356c:	00500313          	li	t1,5
    thread_dispatch();
    80003570:	ffffe097          	auipc	ra,0xffffe
    80003574:	dec080e7          	jalr	-532(ra) # 8000135c <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003578:	01000513          	li	a0,16
    8000357c:	00000097          	auipc	ra,0x0
    80003580:	f10080e7          	jalr	-240(ra) # 8000348c <_ZL9fibonaccim>
    80003584:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInteger(result); printString("\n");
    80003588:	00003517          	auipc	a0,0x3
    8000358c:	bc850513          	addi	a0,a0,-1080 # 80006150 <_ZZ12printIntegermE6digits+0x88>
    80003590:	fffff097          	auipc	ra,0xfffff
    80003594:	efc080e7          	jalr	-260(ra) # 8000248c <_Z11printStringPKc>
    80003598:	00090513          	mv	a0,s2
    8000359c:	fffff097          	auipc	ra,0xfffff
    800035a0:	f34080e7          	jalr	-204(ra) # 800024d0 <_Z12printIntegerm>
    800035a4:	00003517          	auipc	a0,0x3
    800035a8:	ae450513          	addi	a0,a0,-1308 # 80006088 <CONSOLE_STATUS+0x78>
    800035ac:	fffff097          	auipc	ra,0xfffff
    800035b0:	ee0080e7          	jalr	-288(ra) # 8000248c <_Z11printStringPKc>
    800035b4:	0380006f          	j	800035ec <_ZL11workerBodyDPv+0xec>

    for (; i < 16; i++) {
        printString("D: i="); printInteger(i); printString("\n");
    800035b8:	00003517          	auipc	a0,0x3
    800035bc:	b8050513          	addi	a0,a0,-1152 # 80006138 <_ZZ12printIntegermE6digits+0x70>
    800035c0:	fffff097          	auipc	ra,0xfffff
    800035c4:	ecc080e7          	jalr	-308(ra) # 8000248c <_Z11printStringPKc>
    800035c8:	00048513          	mv	a0,s1
    800035cc:	fffff097          	auipc	ra,0xfffff
    800035d0:	f04080e7          	jalr	-252(ra) # 800024d0 <_Z12printIntegerm>
    800035d4:	00003517          	auipc	a0,0x3
    800035d8:	ab450513          	addi	a0,a0,-1356 # 80006088 <CONSOLE_STATUS+0x78>
    800035dc:	fffff097          	auipc	ra,0xfffff
    800035e0:	eb0080e7          	jalr	-336(ra) # 8000248c <_Z11printStringPKc>
    for (; i < 16; i++) {
    800035e4:	0014849b          	addiw	s1,s1,1
    800035e8:	0ff4f493          	andi	s1,s1,255
    800035ec:	00f00793          	li	a5,15
    800035f0:	fc97f4e3          	bgeu	a5,s1,800035b8 <_ZL11workerBodyDPv+0xb8>
    }

    printString("D finished!\n");
    800035f4:	00003517          	auipc	a0,0x3
    800035f8:	b6c50513          	addi	a0,a0,-1172 # 80006160 <_ZZ12printIntegermE6digits+0x98>
    800035fc:	fffff097          	auipc	ra,0xfffff
    80003600:	e90080e7          	jalr	-368(ra) # 8000248c <_Z11printStringPKc>
    finishedD = true;
    80003604:	00100793          	li	a5,1
    80003608:	00004717          	auipc	a4,0x4
    8000360c:	dcf70c23          	sb	a5,-552(a4) # 800073e0 <_ZL9finishedD>
    thread_dispatch();
    80003610:	ffffe097          	auipc	ra,0xffffe
    80003614:	d4c080e7          	jalr	-692(ra) # 8000135c <_Z15thread_dispatchv>
}
    80003618:	01813083          	ld	ra,24(sp)
    8000361c:	01013403          	ld	s0,16(sp)
    80003620:	00813483          	ld	s1,8(sp)
    80003624:	00013903          	ld	s2,0(sp)
    80003628:	02010113          	addi	sp,sp,32
    8000362c:	00008067          	ret

0000000080003630 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80003630:	fe010113          	addi	sp,sp,-32
    80003634:	00113c23          	sd	ra,24(sp)
    80003638:	00813823          	sd	s0,16(sp)
    8000363c:	00913423          	sd	s1,8(sp)
    80003640:	01213023          	sd	s2,0(sp)
    80003644:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003648:	00000493          	li	s1,0
    8000364c:	0380006f          	j	80003684 <_ZL11workerBodyCPv+0x54>
        printString("C: i="); printInteger(i); printString("\n");
    80003650:	00003517          	auipc	a0,0x3
    80003654:	aa850513          	addi	a0,a0,-1368 # 800060f8 <_ZZ12printIntegermE6digits+0x30>
    80003658:	fffff097          	auipc	ra,0xfffff
    8000365c:	e34080e7          	jalr	-460(ra) # 8000248c <_Z11printStringPKc>
    80003660:	00048513          	mv	a0,s1
    80003664:	fffff097          	auipc	ra,0xfffff
    80003668:	e6c080e7          	jalr	-404(ra) # 800024d0 <_Z12printIntegerm>
    8000366c:	00003517          	auipc	a0,0x3
    80003670:	a1c50513          	addi	a0,a0,-1508 # 80006088 <CONSOLE_STATUS+0x78>
    80003674:	fffff097          	auipc	ra,0xfffff
    80003678:	e18080e7          	jalr	-488(ra) # 8000248c <_Z11printStringPKc>
    for (; i < 3; i++) {
    8000367c:	0014849b          	addiw	s1,s1,1
    80003680:	0ff4f493          	andi	s1,s1,255
    80003684:	00200793          	li	a5,2
    80003688:	fc97f4e3          	bgeu	a5,s1,80003650 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    8000368c:	00003517          	auipc	a0,0x3
    80003690:	a7450513          	addi	a0,a0,-1420 # 80006100 <_ZZ12printIntegermE6digits+0x38>
    80003694:	fffff097          	auipc	ra,0xfffff
    80003698:	df8080e7          	jalr	-520(ra) # 8000248c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    8000369c:	00700313          	li	t1,7
    thread_dispatch();
    800036a0:	ffffe097          	auipc	ra,0xffffe
    800036a4:	cbc080e7          	jalr	-836(ra) # 8000135c <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800036a8:	00030913          	mv	s2,t1
    printString("C: t1="); printInteger(t1); printString("\n");
    800036ac:	00003517          	auipc	a0,0x3
    800036b0:	a6450513          	addi	a0,a0,-1436 # 80006110 <_ZZ12printIntegermE6digits+0x48>
    800036b4:	fffff097          	auipc	ra,0xfffff
    800036b8:	dd8080e7          	jalr	-552(ra) # 8000248c <_Z11printStringPKc>
    800036bc:	00090513          	mv	a0,s2
    800036c0:	fffff097          	auipc	ra,0xfffff
    800036c4:	e10080e7          	jalr	-496(ra) # 800024d0 <_Z12printIntegerm>
    800036c8:	00003517          	auipc	a0,0x3
    800036cc:	9c050513          	addi	a0,a0,-1600 # 80006088 <CONSOLE_STATUS+0x78>
    800036d0:	fffff097          	auipc	ra,0xfffff
    800036d4:	dbc080e7          	jalr	-580(ra) # 8000248c <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    800036d8:	00c00513          	li	a0,12
    800036dc:	00000097          	auipc	ra,0x0
    800036e0:	db0080e7          	jalr	-592(ra) # 8000348c <_ZL9fibonaccim>
    800036e4:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInteger(result); printString("\n");
    800036e8:	00003517          	auipc	a0,0x3
    800036ec:	a3050513          	addi	a0,a0,-1488 # 80006118 <_ZZ12printIntegermE6digits+0x50>
    800036f0:	fffff097          	auipc	ra,0xfffff
    800036f4:	d9c080e7          	jalr	-612(ra) # 8000248c <_Z11printStringPKc>
    800036f8:	00090513          	mv	a0,s2
    800036fc:	fffff097          	auipc	ra,0xfffff
    80003700:	dd4080e7          	jalr	-556(ra) # 800024d0 <_Z12printIntegerm>
    80003704:	00003517          	auipc	a0,0x3
    80003708:	98450513          	addi	a0,a0,-1660 # 80006088 <CONSOLE_STATUS+0x78>
    8000370c:	fffff097          	auipc	ra,0xfffff
    80003710:	d80080e7          	jalr	-640(ra) # 8000248c <_Z11printStringPKc>
    80003714:	0380006f          	j	8000374c <_ZL11workerBodyCPv+0x11c>
        printString("C: i="); printInteger(i); printString("\n");
    80003718:	00003517          	auipc	a0,0x3
    8000371c:	9e050513          	addi	a0,a0,-1568 # 800060f8 <_ZZ12printIntegermE6digits+0x30>
    80003720:	fffff097          	auipc	ra,0xfffff
    80003724:	d6c080e7          	jalr	-660(ra) # 8000248c <_Z11printStringPKc>
    80003728:	00048513          	mv	a0,s1
    8000372c:	fffff097          	auipc	ra,0xfffff
    80003730:	da4080e7          	jalr	-604(ra) # 800024d0 <_Z12printIntegerm>
    80003734:	00003517          	auipc	a0,0x3
    80003738:	95450513          	addi	a0,a0,-1708 # 80006088 <CONSOLE_STATUS+0x78>
    8000373c:	fffff097          	auipc	ra,0xfffff
    80003740:	d50080e7          	jalr	-688(ra) # 8000248c <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003744:	0014849b          	addiw	s1,s1,1
    80003748:	0ff4f493          	andi	s1,s1,255
    8000374c:	00500793          	li	a5,5
    80003750:	fc97f4e3          	bgeu	a5,s1,80003718 <_ZL11workerBodyCPv+0xe8>
    printString("C finished!\n");
    80003754:	00003517          	auipc	a0,0x3
    80003758:	9d450513          	addi	a0,a0,-1580 # 80006128 <_ZZ12printIntegermE6digits+0x60>
    8000375c:	fffff097          	auipc	ra,0xfffff
    80003760:	d30080e7          	jalr	-720(ra) # 8000248c <_Z11printStringPKc>
    finishedC = true;
    80003764:	00100793          	li	a5,1
    80003768:	00004717          	auipc	a4,0x4
    8000376c:	c6f70ca3          	sb	a5,-903(a4) # 800073e1 <_ZL9finishedC>
    thread_dispatch();
    80003770:	ffffe097          	auipc	ra,0xffffe
    80003774:	bec080e7          	jalr	-1044(ra) # 8000135c <_Z15thread_dispatchv>
}
    80003778:	01813083          	ld	ra,24(sp)
    8000377c:	01013403          	ld	s0,16(sp)
    80003780:	00813483          	ld	s1,8(sp)
    80003784:	00013903          	ld	s2,0(sp)
    80003788:	02010113          	addi	sp,sp,32
    8000378c:	00008067          	ret

0000000080003790 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80003790:	fe010113          	addi	sp,sp,-32
    80003794:	00113c23          	sd	ra,24(sp)
    80003798:	00813823          	sd	s0,16(sp)
    8000379c:	00913423          	sd	s1,8(sp)
    800037a0:	01213023          	sd	s2,0(sp)
    800037a4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800037a8:	00000913          	li	s2,0
    800037ac:	0400006f          	j	800037ec <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    800037b0:	ffffe097          	auipc	ra,0xffffe
    800037b4:	bac080e7          	jalr	-1108(ra) # 8000135c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800037b8:	00148493          	addi	s1,s1,1
    800037bc:	000027b7          	lui	a5,0x2
    800037c0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800037c4:	0097ee63          	bltu	a5,s1,800037e0 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800037c8:	00000713          	li	a4,0
    800037cc:	000077b7          	lui	a5,0x7
    800037d0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800037d4:	fce7eee3          	bltu	a5,a4,800037b0 <_ZL11workerBodyBPv+0x20>
    800037d8:	00170713          	addi	a4,a4,1
    800037dc:	ff1ff06f          	j	800037cc <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    800037e0:	00a00793          	li	a5,10
    800037e4:	04f90263          	beq	s2,a5,80003828 <_ZL11workerBodyBPv+0x98>
    for (uint64 i = 0; i < 16; i++) {
    800037e8:	00190913          	addi	s2,s2,1
    800037ec:	00f00793          	li	a5,15
    800037f0:	0527e063          	bltu	a5,s2,80003830 <_ZL11workerBodyBPv+0xa0>
        printString("B: i="); printInteger(i); printString("\n");
    800037f4:	00003517          	auipc	a0,0x3
    800037f8:	85c50513          	addi	a0,a0,-1956 # 80006050 <CONSOLE_STATUS+0x40>
    800037fc:	fffff097          	auipc	ra,0xfffff
    80003800:	c90080e7          	jalr	-880(ra) # 8000248c <_Z11printStringPKc>
    80003804:	00090513          	mv	a0,s2
    80003808:	fffff097          	auipc	ra,0xfffff
    8000380c:	cc8080e7          	jalr	-824(ra) # 800024d0 <_Z12printIntegerm>
    80003810:	00003517          	auipc	a0,0x3
    80003814:	87850513          	addi	a0,a0,-1928 # 80006088 <CONSOLE_STATUS+0x78>
    80003818:	fffff097          	auipc	ra,0xfffff
    8000381c:	c74080e7          	jalr	-908(ra) # 8000248c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003820:	00000493          	li	s1,0
    80003824:	f99ff06f          	j	800037bc <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80003828:	14102ff3          	csrr	t6,sepc
    8000382c:	fbdff06f          	j	800037e8 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80003830:	00003517          	auipc	a0,0x3
    80003834:	8b850513          	addi	a0,a0,-1864 # 800060e8 <_ZZ12printIntegermE6digits+0x20>
    80003838:	fffff097          	auipc	ra,0xfffff
    8000383c:	c54080e7          	jalr	-940(ra) # 8000248c <_Z11printStringPKc>
    finishedB = true;
    80003840:	00100793          	li	a5,1
    80003844:	00004717          	auipc	a4,0x4
    80003848:	b8f70f23          	sb	a5,-1122(a4) # 800073e2 <_ZL9finishedB>
    thread_dispatch();
    8000384c:	ffffe097          	auipc	ra,0xffffe
    80003850:	b10080e7          	jalr	-1264(ra) # 8000135c <_Z15thread_dispatchv>
}
    80003854:	01813083          	ld	ra,24(sp)
    80003858:	01013403          	ld	s0,16(sp)
    8000385c:	00813483          	ld	s1,8(sp)
    80003860:	00013903          	ld	s2,0(sp)
    80003864:	02010113          	addi	sp,sp,32
    80003868:	00008067          	ret

000000008000386c <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    8000386c:	fe010113          	addi	sp,sp,-32
    80003870:	00113c23          	sd	ra,24(sp)
    80003874:	00813823          	sd	s0,16(sp)
    80003878:	00913423          	sd	s1,8(sp)
    8000387c:	01213023          	sd	s2,0(sp)
    80003880:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003884:	00000913          	li	s2,0
    80003888:	0380006f          	j	800038c0 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    8000388c:	ffffe097          	auipc	ra,0xffffe
    80003890:	ad0080e7          	jalr	-1328(ra) # 8000135c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003894:	00148493          	addi	s1,s1,1
    80003898:	000027b7          	lui	a5,0x2
    8000389c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800038a0:	0097ee63          	bltu	a5,s1,800038bc <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800038a4:	00000713          	li	a4,0
    800038a8:	000077b7          	lui	a5,0x7
    800038ac:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800038b0:	fce7eee3          	bltu	a5,a4,8000388c <_ZL11workerBodyAPv+0x20>
    800038b4:	00170713          	addi	a4,a4,1
    800038b8:	ff1ff06f          	j	800038a8 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800038bc:	00190913          	addi	s2,s2,1
    800038c0:	00900793          	li	a5,9
    800038c4:	0327ec63          	bltu	a5,s2,800038fc <_ZL11workerBodyAPv+0x90>
        printString("A: i="); printInteger(i); printString("\n");
    800038c8:	00002517          	auipc	a0,0x2
    800038cc:	75850513          	addi	a0,a0,1880 # 80006020 <CONSOLE_STATUS+0x10>
    800038d0:	fffff097          	auipc	ra,0xfffff
    800038d4:	bbc080e7          	jalr	-1092(ra) # 8000248c <_Z11printStringPKc>
    800038d8:	00090513          	mv	a0,s2
    800038dc:	fffff097          	auipc	ra,0xfffff
    800038e0:	bf4080e7          	jalr	-1036(ra) # 800024d0 <_Z12printIntegerm>
    800038e4:	00002517          	auipc	a0,0x2
    800038e8:	7a450513          	addi	a0,a0,1956 # 80006088 <CONSOLE_STATUS+0x78>
    800038ec:	fffff097          	auipc	ra,0xfffff
    800038f0:	ba0080e7          	jalr	-1120(ra) # 8000248c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800038f4:	00000493          	li	s1,0
    800038f8:	fa1ff06f          	j	80003898 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    800038fc:	00002517          	auipc	a0,0x2
    80003900:	7dc50513          	addi	a0,a0,2012 # 800060d8 <_ZZ12printIntegermE6digits+0x10>
    80003904:	fffff097          	auipc	ra,0xfffff
    80003908:	b88080e7          	jalr	-1144(ra) # 8000248c <_Z11printStringPKc>
    finishedA = true;
    8000390c:	00100793          	li	a5,1
    80003910:	00004717          	auipc	a4,0x4
    80003914:	acf709a3          	sb	a5,-1325(a4) # 800073e3 <_ZL9finishedA>
}
    80003918:	01813083          	ld	ra,24(sp)
    8000391c:	01013403          	ld	s0,16(sp)
    80003920:	00813483          	ld	s1,8(sp)
    80003924:	00013903          	ld	s2,0(sp)
    80003928:	02010113          	addi	sp,sp,32
    8000392c:	00008067          	ret

0000000080003930 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80003930:	fd010113          	addi	sp,sp,-48
    80003934:	02113423          	sd	ra,40(sp)
    80003938:	02813023          	sd	s0,32(sp)
    8000393c:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80003940:	00000613          	li	a2,0
    80003944:	00000597          	auipc	a1,0x0
    80003948:	f2858593          	addi	a1,a1,-216 # 8000386c <_ZL11workerBodyAPv>
    8000394c:	fd040513          	addi	a0,s0,-48
    80003950:	ffffe097          	auipc	ra,0xffffe
    80003954:	9a8080e7          	jalr	-1624(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80003958:	00003517          	auipc	a0,0x3
    8000395c:	81850513          	addi	a0,a0,-2024 # 80006170 <_ZZ12printIntegermE6digits+0xa8>
    80003960:	fffff097          	auipc	ra,0xfffff
    80003964:	b2c080e7          	jalr	-1236(ra) # 8000248c <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80003968:	00000613          	li	a2,0
    8000396c:	00000597          	auipc	a1,0x0
    80003970:	e2458593          	addi	a1,a1,-476 # 80003790 <_ZL11workerBodyBPv>
    80003974:	fd840513          	addi	a0,s0,-40
    80003978:	ffffe097          	auipc	ra,0xffffe
    8000397c:	980080e7          	jalr	-1664(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80003980:	00003517          	auipc	a0,0x3
    80003984:	80850513          	addi	a0,a0,-2040 # 80006188 <_ZZ12printIntegermE6digits+0xc0>
    80003988:	fffff097          	auipc	ra,0xfffff
    8000398c:	b04080e7          	jalr	-1276(ra) # 8000248c <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80003990:	00000613          	li	a2,0
    80003994:	00000597          	auipc	a1,0x0
    80003998:	c9c58593          	addi	a1,a1,-868 # 80003630 <_ZL11workerBodyCPv>
    8000399c:	fe040513          	addi	a0,s0,-32
    800039a0:	ffffe097          	auipc	ra,0xffffe
    800039a4:	958080e7          	jalr	-1704(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    800039a8:	00002517          	auipc	a0,0x2
    800039ac:	7f850513          	addi	a0,a0,2040 # 800061a0 <_ZZ12printIntegermE6digits+0xd8>
    800039b0:	fffff097          	auipc	ra,0xfffff
    800039b4:	adc080e7          	jalr	-1316(ra) # 8000248c <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    800039b8:	00000613          	li	a2,0
    800039bc:	00000597          	auipc	a1,0x0
    800039c0:	b4458593          	addi	a1,a1,-1212 # 80003500 <_ZL11workerBodyDPv>
    800039c4:	fe840513          	addi	a0,s0,-24
    800039c8:	ffffe097          	auipc	ra,0xffffe
    800039cc:	930080e7          	jalr	-1744(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    800039d0:	00002517          	auipc	a0,0x2
    800039d4:	7e850513          	addi	a0,a0,2024 # 800061b8 <_ZZ12printIntegermE6digits+0xf0>
    800039d8:	fffff097          	auipc	ra,0xfffff
    800039dc:	ab4080e7          	jalr	-1356(ra) # 8000248c <_Z11printStringPKc>
    800039e0:	00c0006f          	j	800039ec <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    800039e4:	ffffe097          	auipc	ra,0xffffe
    800039e8:	978080e7          	jalr	-1672(ra) # 8000135c <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800039ec:	00004797          	auipc	a5,0x4
    800039f0:	9f77c783          	lbu	a5,-1545(a5) # 800073e3 <_ZL9finishedA>
    800039f4:	fe0788e3          	beqz	a5,800039e4 <_Z16System_Mode_testv+0xb4>
    800039f8:	00004797          	auipc	a5,0x4
    800039fc:	9ea7c783          	lbu	a5,-1558(a5) # 800073e2 <_ZL9finishedB>
    80003a00:	fe0782e3          	beqz	a5,800039e4 <_Z16System_Mode_testv+0xb4>
    80003a04:	00004797          	auipc	a5,0x4
    80003a08:	9dd7c783          	lbu	a5,-1571(a5) # 800073e1 <_ZL9finishedC>
    80003a0c:	fc078ce3          	beqz	a5,800039e4 <_Z16System_Mode_testv+0xb4>
    80003a10:	00004797          	auipc	a5,0x4
    80003a14:	9d07c783          	lbu	a5,-1584(a5) # 800073e0 <_ZL9finishedD>
    80003a18:	fc0786e3          	beqz	a5,800039e4 <_Z16System_Mode_testv+0xb4>
    }

}
    80003a1c:	02813083          	ld	ra,40(sp)
    80003a20:	02013403          	ld	s0,32(sp)
    80003a24:	03010113          	addi	sp,sp,48
    80003a28:	00008067          	ret

0000000080003a2c <start>:
    80003a2c:	ff010113          	addi	sp,sp,-16
    80003a30:	00813423          	sd	s0,8(sp)
    80003a34:	01010413          	addi	s0,sp,16
    80003a38:	300027f3          	csrr	a5,mstatus
    80003a3c:	ffffe737          	lui	a4,0xffffe
    80003a40:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff61af>
    80003a44:	00e7f7b3          	and	a5,a5,a4
    80003a48:	00001737          	lui	a4,0x1
    80003a4c:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80003a50:	00e7e7b3          	or	a5,a5,a4
    80003a54:	30079073          	csrw	mstatus,a5
    80003a58:	00000797          	auipc	a5,0x0
    80003a5c:	16078793          	addi	a5,a5,352 # 80003bb8 <system_main>
    80003a60:	34179073          	csrw	mepc,a5
    80003a64:	00000793          	li	a5,0
    80003a68:	18079073          	csrw	satp,a5
    80003a6c:	000107b7          	lui	a5,0x10
    80003a70:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80003a74:	30279073          	csrw	medeleg,a5
    80003a78:	30379073          	csrw	mideleg,a5
    80003a7c:	104027f3          	csrr	a5,sie
    80003a80:	2227e793          	ori	a5,a5,546
    80003a84:	10479073          	csrw	sie,a5
    80003a88:	fff00793          	li	a5,-1
    80003a8c:	00a7d793          	srli	a5,a5,0xa
    80003a90:	3b079073          	csrw	pmpaddr0,a5
    80003a94:	00f00793          	li	a5,15
    80003a98:	3a079073          	csrw	pmpcfg0,a5
    80003a9c:	f14027f3          	csrr	a5,mhartid
    80003aa0:	0200c737          	lui	a4,0x200c
    80003aa4:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80003aa8:	0007869b          	sext.w	a3,a5
    80003aac:	00269713          	slli	a4,a3,0x2
    80003ab0:	000f4637          	lui	a2,0xf4
    80003ab4:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80003ab8:	00d70733          	add	a4,a4,a3
    80003abc:	0037979b          	slliw	a5,a5,0x3
    80003ac0:	020046b7          	lui	a3,0x2004
    80003ac4:	00d787b3          	add	a5,a5,a3
    80003ac8:	00c585b3          	add	a1,a1,a2
    80003acc:	00371693          	slli	a3,a4,0x3
    80003ad0:	00004717          	auipc	a4,0x4
    80003ad4:	92070713          	addi	a4,a4,-1760 # 800073f0 <timer_scratch>
    80003ad8:	00b7b023          	sd	a1,0(a5)
    80003adc:	00d70733          	add	a4,a4,a3
    80003ae0:	00f73c23          	sd	a5,24(a4)
    80003ae4:	02c73023          	sd	a2,32(a4)
    80003ae8:	34071073          	csrw	mscratch,a4
    80003aec:	00000797          	auipc	a5,0x0
    80003af0:	6e478793          	addi	a5,a5,1764 # 800041d0 <timervec>
    80003af4:	30579073          	csrw	mtvec,a5
    80003af8:	300027f3          	csrr	a5,mstatus
    80003afc:	0087e793          	ori	a5,a5,8
    80003b00:	30079073          	csrw	mstatus,a5
    80003b04:	304027f3          	csrr	a5,mie
    80003b08:	0807e793          	ori	a5,a5,128
    80003b0c:	30479073          	csrw	mie,a5
    80003b10:	f14027f3          	csrr	a5,mhartid
    80003b14:	0007879b          	sext.w	a5,a5
    80003b18:	00078213          	mv	tp,a5
    80003b1c:	30200073          	mret
    80003b20:	00813403          	ld	s0,8(sp)
    80003b24:	01010113          	addi	sp,sp,16
    80003b28:	00008067          	ret

0000000080003b2c <timerinit>:
    80003b2c:	ff010113          	addi	sp,sp,-16
    80003b30:	00813423          	sd	s0,8(sp)
    80003b34:	01010413          	addi	s0,sp,16
    80003b38:	f14027f3          	csrr	a5,mhartid
    80003b3c:	0200c737          	lui	a4,0x200c
    80003b40:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80003b44:	0007869b          	sext.w	a3,a5
    80003b48:	00269713          	slli	a4,a3,0x2
    80003b4c:	000f4637          	lui	a2,0xf4
    80003b50:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80003b54:	00d70733          	add	a4,a4,a3
    80003b58:	0037979b          	slliw	a5,a5,0x3
    80003b5c:	020046b7          	lui	a3,0x2004
    80003b60:	00d787b3          	add	a5,a5,a3
    80003b64:	00c585b3          	add	a1,a1,a2
    80003b68:	00371693          	slli	a3,a4,0x3
    80003b6c:	00004717          	auipc	a4,0x4
    80003b70:	88470713          	addi	a4,a4,-1916 # 800073f0 <timer_scratch>
    80003b74:	00b7b023          	sd	a1,0(a5)
    80003b78:	00d70733          	add	a4,a4,a3
    80003b7c:	00f73c23          	sd	a5,24(a4)
    80003b80:	02c73023          	sd	a2,32(a4)
    80003b84:	34071073          	csrw	mscratch,a4
    80003b88:	00000797          	auipc	a5,0x0
    80003b8c:	64878793          	addi	a5,a5,1608 # 800041d0 <timervec>
    80003b90:	30579073          	csrw	mtvec,a5
    80003b94:	300027f3          	csrr	a5,mstatus
    80003b98:	0087e793          	ori	a5,a5,8
    80003b9c:	30079073          	csrw	mstatus,a5
    80003ba0:	304027f3          	csrr	a5,mie
    80003ba4:	0807e793          	ori	a5,a5,128
    80003ba8:	30479073          	csrw	mie,a5
    80003bac:	00813403          	ld	s0,8(sp)
    80003bb0:	01010113          	addi	sp,sp,16
    80003bb4:	00008067          	ret

0000000080003bb8 <system_main>:
    80003bb8:	fe010113          	addi	sp,sp,-32
    80003bbc:	00813823          	sd	s0,16(sp)
    80003bc0:	00913423          	sd	s1,8(sp)
    80003bc4:	00113c23          	sd	ra,24(sp)
    80003bc8:	02010413          	addi	s0,sp,32
    80003bcc:	00000097          	auipc	ra,0x0
    80003bd0:	0c4080e7          	jalr	196(ra) # 80003c90 <cpuid>
    80003bd4:	00003497          	auipc	s1,0x3
    80003bd8:	79c48493          	addi	s1,s1,1948 # 80007370 <started>
    80003bdc:	02050263          	beqz	a0,80003c00 <system_main+0x48>
    80003be0:	0004a783          	lw	a5,0(s1)
    80003be4:	0007879b          	sext.w	a5,a5
    80003be8:	fe078ce3          	beqz	a5,80003be0 <system_main+0x28>
    80003bec:	0ff0000f          	fence
    80003bf0:	00002517          	auipc	a0,0x2
    80003bf4:	67050513          	addi	a0,a0,1648 # 80006260 <_ZZ12printIntegermE6digits+0x198>
    80003bf8:	00001097          	auipc	ra,0x1
    80003bfc:	a74080e7          	jalr	-1420(ra) # 8000466c <panic>
    80003c00:	00001097          	auipc	ra,0x1
    80003c04:	9c8080e7          	jalr	-1592(ra) # 800045c8 <consoleinit>
    80003c08:	00001097          	auipc	ra,0x1
    80003c0c:	154080e7          	jalr	340(ra) # 80004d5c <printfinit>
    80003c10:	00002517          	auipc	a0,0x2
    80003c14:	47850513          	addi	a0,a0,1144 # 80006088 <CONSOLE_STATUS+0x78>
    80003c18:	00001097          	auipc	ra,0x1
    80003c1c:	ab0080e7          	jalr	-1360(ra) # 800046c8 <__printf>
    80003c20:	00002517          	auipc	a0,0x2
    80003c24:	61050513          	addi	a0,a0,1552 # 80006230 <_ZZ12printIntegermE6digits+0x168>
    80003c28:	00001097          	auipc	ra,0x1
    80003c2c:	aa0080e7          	jalr	-1376(ra) # 800046c8 <__printf>
    80003c30:	00002517          	auipc	a0,0x2
    80003c34:	45850513          	addi	a0,a0,1112 # 80006088 <CONSOLE_STATUS+0x78>
    80003c38:	00001097          	auipc	ra,0x1
    80003c3c:	a90080e7          	jalr	-1392(ra) # 800046c8 <__printf>
    80003c40:	00001097          	auipc	ra,0x1
    80003c44:	4a8080e7          	jalr	1192(ra) # 800050e8 <kinit>
    80003c48:	00000097          	auipc	ra,0x0
    80003c4c:	148080e7          	jalr	328(ra) # 80003d90 <trapinit>
    80003c50:	00000097          	auipc	ra,0x0
    80003c54:	16c080e7          	jalr	364(ra) # 80003dbc <trapinithart>
    80003c58:	00000097          	auipc	ra,0x0
    80003c5c:	5b8080e7          	jalr	1464(ra) # 80004210 <plicinit>
    80003c60:	00000097          	auipc	ra,0x0
    80003c64:	5d8080e7          	jalr	1496(ra) # 80004238 <plicinithart>
    80003c68:	00000097          	auipc	ra,0x0
    80003c6c:	078080e7          	jalr	120(ra) # 80003ce0 <userinit>
    80003c70:	0ff0000f          	fence
    80003c74:	00100793          	li	a5,1
    80003c78:	00002517          	auipc	a0,0x2
    80003c7c:	5d050513          	addi	a0,a0,1488 # 80006248 <_ZZ12printIntegermE6digits+0x180>
    80003c80:	00f4a023          	sw	a5,0(s1)
    80003c84:	00001097          	auipc	ra,0x1
    80003c88:	a44080e7          	jalr	-1468(ra) # 800046c8 <__printf>
    80003c8c:	0000006f          	j	80003c8c <system_main+0xd4>

0000000080003c90 <cpuid>:
    80003c90:	ff010113          	addi	sp,sp,-16
    80003c94:	00813423          	sd	s0,8(sp)
    80003c98:	01010413          	addi	s0,sp,16
    80003c9c:	00020513          	mv	a0,tp
    80003ca0:	00813403          	ld	s0,8(sp)
    80003ca4:	0005051b          	sext.w	a0,a0
    80003ca8:	01010113          	addi	sp,sp,16
    80003cac:	00008067          	ret

0000000080003cb0 <mycpu>:
    80003cb0:	ff010113          	addi	sp,sp,-16
    80003cb4:	00813423          	sd	s0,8(sp)
    80003cb8:	01010413          	addi	s0,sp,16
    80003cbc:	00020793          	mv	a5,tp
    80003cc0:	00813403          	ld	s0,8(sp)
    80003cc4:	0007879b          	sext.w	a5,a5
    80003cc8:	00779793          	slli	a5,a5,0x7
    80003ccc:	00004517          	auipc	a0,0x4
    80003cd0:	75450513          	addi	a0,a0,1876 # 80008420 <cpus>
    80003cd4:	00f50533          	add	a0,a0,a5
    80003cd8:	01010113          	addi	sp,sp,16
    80003cdc:	00008067          	ret

0000000080003ce0 <userinit>:
    80003ce0:	ff010113          	addi	sp,sp,-16
    80003ce4:	00813423          	sd	s0,8(sp)
    80003ce8:	01010413          	addi	s0,sp,16
    80003cec:	00813403          	ld	s0,8(sp)
    80003cf0:	01010113          	addi	sp,sp,16
    80003cf4:	ffffe317          	auipc	t1,0xffffe
    80003cf8:	cf430067          	jr	-780(t1) # 800019e8 <main>

0000000080003cfc <either_copyout>:
    80003cfc:	ff010113          	addi	sp,sp,-16
    80003d00:	00813023          	sd	s0,0(sp)
    80003d04:	00113423          	sd	ra,8(sp)
    80003d08:	01010413          	addi	s0,sp,16
    80003d0c:	02051663          	bnez	a0,80003d38 <either_copyout+0x3c>
    80003d10:	00058513          	mv	a0,a1
    80003d14:	00060593          	mv	a1,a2
    80003d18:	0006861b          	sext.w	a2,a3
    80003d1c:	00002097          	auipc	ra,0x2
    80003d20:	c58080e7          	jalr	-936(ra) # 80005974 <__memmove>
    80003d24:	00813083          	ld	ra,8(sp)
    80003d28:	00013403          	ld	s0,0(sp)
    80003d2c:	00000513          	li	a0,0
    80003d30:	01010113          	addi	sp,sp,16
    80003d34:	00008067          	ret
    80003d38:	00002517          	auipc	a0,0x2
    80003d3c:	55050513          	addi	a0,a0,1360 # 80006288 <_ZZ12printIntegermE6digits+0x1c0>
    80003d40:	00001097          	auipc	ra,0x1
    80003d44:	92c080e7          	jalr	-1748(ra) # 8000466c <panic>

0000000080003d48 <either_copyin>:
    80003d48:	ff010113          	addi	sp,sp,-16
    80003d4c:	00813023          	sd	s0,0(sp)
    80003d50:	00113423          	sd	ra,8(sp)
    80003d54:	01010413          	addi	s0,sp,16
    80003d58:	02059463          	bnez	a1,80003d80 <either_copyin+0x38>
    80003d5c:	00060593          	mv	a1,a2
    80003d60:	0006861b          	sext.w	a2,a3
    80003d64:	00002097          	auipc	ra,0x2
    80003d68:	c10080e7          	jalr	-1008(ra) # 80005974 <__memmove>
    80003d6c:	00813083          	ld	ra,8(sp)
    80003d70:	00013403          	ld	s0,0(sp)
    80003d74:	00000513          	li	a0,0
    80003d78:	01010113          	addi	sp,sp,16
    80003d7c:	00008067          	ret
    80003d80:	00002517          	auipc	a0,0x2
    80003d84:	53050513          	addi	a0,a0,1328 # 800062b0 <_ZZ12printIntegermE6digits+0x1e8>
    80003d88:	00001097          	auipc	ra,0x1
    80003d8c:	8e4080e7          	jalr	-1820(ra) # 8000466c <panic>

0000000080003d90 <trapinit>:
    80003d90:	ff010113          	addi	sp,sp,-16
    80003d94:	00813423          	sd	s0,8(sp)
    80003d98:	01010413          	addi	s0,sp,16
    80003d9c:	00813403          	ld	s0,8(sp)
    80003da0:	00002597          	auipc	a1,0x2
    80003da4:	53858593          	addi	a1,a1,1336 # 800062d8 <_ZZ12printIntegermE6digits+0x210>
    80003da8:	00004517          	auipc	a0,0x4
    80003dac:	6f850513          	addi	a0,a0,1784 # 800084a0 <tickslock>
    80003db0:	01010113          	addi	sp,sp,16
    80003db4:	00001317          	auipc	t1,0x1
    80003db8:	5c430067          	jr	1476(t1) # 80005378 <initlock>

0000000080003dbc <trapinithart>:
    80003dbc:	ff010113          	addi	sp,sp,-16
    80003dc0:	00813423          	sd	s0,8(sp)
    80003dc4:	01010413          	addi	s0,sp,16
    80003dc8:	00000797          	auipc	a5,0x0
    80003dcc:	2f878793          	addi	a5,a5,760 # 800040c0 <kernelvec>
    80003dd0:	10579073          	csrw	stvec,a5
    80003dd4:	00813403          	ld	s0,8(sp)
    80003dd8:	01010113          	addi	sp,sp,16
    80003ddc:	00008067          	ret

0000000080003de0 <usertrap>:
    80003de0:	ff010113          	addi	sp,sp,-16
    80003de4:	00813423          	sd	s0,8(sp)
    80003de8:	01010413          	addi	s0,sp,16
    80003dec:	00813403          	ld	s0,8(sp)
    80003df0:	01010113          	addi	sp,sp,16
    80003df4:	00008067          	ret

0000000080003df8 <usertrapret>:
    80003df8:	ff010113          	addi	sp,sp,-16
    80003dfc:	00813423          	sd	s0,8(sp)
    80003e00:	01010413          	addi	s0,sp,16
    80003e04:	00813403          	ld	s0,8(sp)
    80003e08:	01010113          	addi	sp,sp,16
    80003e0c:	00008067          	ret

0000000080003e10 <kerneltrap>:
    80003e10:	fe010113          	addi	sp,sp,-32
    80003e14:	00813823          	sd	s0,16(sp)
    80003e18:	00113c23          	sd	ra,24(sp)
    80003e1c:	00913423          	sd	s1,8(sp)
    80003e20:	02010413          	addi	s0,sp,32
    80003e24:	142025f3          	csrr	a1,scause
    80003e28:	100027f3          	csrr	a5,sstatus
    80003e2c:	0027f793          	andi	a5,a5,2
    80003e30:	10079c63          	bnez	a5,80003f48 <kerneltrap+0x138>
    80003e34:	142027f3          	csrr	a5,scause
    80003e38:	0207ce63          	bltz	a5,80003e74 <kerneltrap+0x64>
    80003e3c:	00002517          	auipc	a0,0x2
    80003e40:	4e450513          	addi	a0,a0,1252 # 80006320 <_ZZ12printIntegermE6digits+0x258>
    80003e44:	00001097          	auipc	ra,0x1
    80003e48:	884080e7          	jalr	-1916(ra) # 800046c8 <__printf>
    80003e4c:	141025f3          	csrr	a1,sepc
    80003e50:	14302673          	csrr	a2,stval
    80003e54:	00002517          	auipc	a0,0x2
    80003e58:	4dc50513          	addi	a0,a0,1244 # 80006330 <_ZZ12printIntegermE6digits+0x268>
    80003e5c:	00001097          	auipc	ra,0x1
    80003e60:	86c080e7          	jalr	-1940(ra) # 800046c8 <__printf>
    80003e64:	00002517          	auipc	a0,0x2
    80003e68:	4e450513          	addi	a0,a0,1252 # 80006348 <_ZZ12printIntegermE6digits+0x280>
    80003e6c:	00001097          	auipc	ra,0x1
    80003e70:	800080e7          	jalr	-2048(ra) # 8000466c <panic>
    80003e74:	0ff7f713          	andi	a4,a5,255
    80003e78:	00900693          	li	a3,9
    80003e7c:	04d70063          	beq	a4,a3,80003ebc <kerneltrap+0xac>
    80003e80:	fff00713          	li	a4,-1
    80003e84:	03f71713          	slli	a4,a4,0x3f
    80003e88:	00170713          	addi	a4,a4,1
    80003e8c:	fae798e3          	bne	a5,a4,80003e3c <kerneltrap+0x2c>
    80003e90:	00000097          	auipc	ra,0x0
    80003e94:	e00080e7          	jalr	-512(ra) # 80003c90 <cpuid>
    80003e98:	06050663          	beqz	a0,80003f04 <kerneltrap+0xf4>
    80003e9c:	144027f3          	csrr	a5,sip
    80003ea0:	ffd7f793          	andi	a5,a5,-3
    80003ea4:	14479073          	csrw	sip,a5
    80003ea8:	01813083          	ld	ra,24(sp)
    80003eac:	01013403          	ld	s0,16(sp)
    80003eb0:	00813483          	ld	s1,8(sp)
    80003eb4:	02010113          	addi	sp,sp,32
    80003eb8:	00008067          	ret
    80003ebc:	00000097          	auipc	ra,0x0
    80003ec0:	3c8080e7          	jalr	968(ra) # 80004284 <plic_claim>
    80003ec4:	00a00793          	li	a5,10
    80003ec8:	00050493          	mv	s1,a0
    80003ecc:	06f50863          	beq	a0,a5,80003f3c <kerneltrap+0x12c>
    80003ed0:	fc050ce3          	beqz	a0,80003ea8 <kerneltrap+0x98>
    80003ed4:	00050593          	mv	a1,a0
    80003ed8:	00002517          	auipc	a0,0x2
    80003edc:	42850513          	addi	a0,a0,1064 # 80006300 <_ZZ12printIntegermE6digits+0x238>
    80003ee0:	00000097          	auipc	ra,0x0
    80003ee4:	7e8080e7          	jalr	2024(ra) # 800046c8 <__printf>
    80003ee8:	01013403          	ld	s0,16(sp)
    80003eec:	01813083          	ld	ra,24(sp)
    80003ef0:	00048513          	mv	a0,s1
    80003ef4:	00813483          	ld	s1,8(sp)
    80003ef8:	02010113          	addi	sp,sp,32
    80003efc:	00000317          	auipc	t1,0x0
    80003f00:	3c030067          	jr	960(t1) # 800042bc <plic_complete>
    80003f04:	00004517          	auipc	a0,0x4
    80003f08:	59c50513          	addi	a0,a0,1436 # 800084a0 <tickslock>
    80003f0c:	00001097          	auipc	ra,0x1
    80003f10:	490080e7          	jalr	1168(ra) # 8000539c <acquire>
    80003f14:	00003717          	auipc	a4,0x3
    80003f18:	46070713          	addi	a4,a4,1120 # 80007374 <ticks>
    80003f1c:	00072783          	lw	a5,0(a4)
    80003f20:	00004517          	auipc	a0,0x4
    80003f24:	58050513          	addi	a0,a0,1408 # 800084a0 <tickslock>
    80003f28:	0017879b          	addiw	a5,a5,1
    80003f2c:	00f72023          	sw	a5,0(a4)
    80003f30:	00001097          	auipc	ra,0x1
    80003f34:	538080e7          	jalr	1336(ra) # 80005468 <release>
    80003f38:	f65ff06f          	j	80003e9c <kerneltrap+0x8c>
    80003f3c:	00001097          	auipc	ra,0x1
    80003f40:	094080e7          	jalr	148(ra) # 80004fd0 <uartintr>
    80003f44:	fa5ff06f          	j	80003ee8 <kerneltrap+0xd8>
    80003f48:	00002517          	auipc	a0,0x2
    80003f4c:	39850513          	addi	a0,a0,920 # 800062e0 <_ZZ12printIntegermE6digits+0x218>
    80003f50:	00000097          	auipc	ra,0x0
    80003f54:	71c080e7          	jalr	1820(ra) # 8000466c <panic>

0000000080003f58 <clockintr>:
    80003f58:	fe010113          	addi	sp,sp,-32
    80003f5c:	00813823          	sd	s0,16(sp)
    80003f60:	00913423          	sd	s1,8(sp)
    80003f64:	00113c23          	sd	ra,24(sp)
    80003f68:	02010413          	addi	s0,sp,32
    80003f6c:	00004497          	auipc	s1,0x4
    80003f70:	53448493          	addi	s1,s1,1332 # 800084a0 <tickslock>
    80003f74:	00048513          	mv	a0,s1
    80003f78:	00001097          	auipc	ra,0x1
    80003f7c:	424080e7          	jalr	1060(ra) # 8000539c <acquire>
    80003f80:	00003717          	auipc	a4,0x3
    80003f84:	3f470713          	addi	a4,a4,1012 # 80007374 <ticks>
    80003f88:	00072783          	lw	a5,0(a4)
    80003f8c:	01013403          	ld	s0,16(sp)
    80003f90:	01813083          	ld	ra,24(sp)
    80003f94:	00048513          	mv	a0,s1
    80003f98:	0017879b          	addiw	a5,a5,1
    80003f9c:	00813483          	ld	s1,8(sp)
    80003fa0:	00f72023          	sw	a5,0(a4)
    80003fa4:	02010113          	addi	sp,sp,32
    80003fa8:	00001317          	auipc	t1,0x1
    80003fac:	4c030067          	jr	1216(t1) # 80005468 <release>

0000000080003fb0 <devintr>:
    80003fb0:	142027f3          	csrr	a5,scause
    80003fb4:	00000513          	li	a0,0
    80003fb8:	0007c463          	bltz	a5,80003fc0 <devintr+0x10>
    80003fbc:	00008067          	ret
    80003fc0:	fe010113          	addi	sp,sp,-32
    80003fc4:	00813823          	sd	s0,16(sp)
    80003fc8:	00113c23          	sd	ra,24(sp)
    80003fcc:	00913423          	sd	s1,8(sp)
    80003fd0:	02010413          	addi	s0,sp,32
    80003fd4:	0ff7f713          	andi	a4,a5,255
    80003fd8:	00900693          	li	a3,9
    80003fdc:	04d70c63          	beq	a4,a3,80004034 <devintr+0x84>
    80003fe0:	fff00713          	li	a4,-1
    80003fe4:	03f71713          	slli	a4,a4,0x3f
    80003fe8:	00170713          	addi	a4,a4,1
    80003fec:	00e78c63          	beq	a5,a4,80004004 <devintr+0x54>
    80003ff0:	01813083          	ld	ra,24(sp)
    80003ff4:	01013403          	ld	s0,16(sp)
    80003ff8:	00813483          	ld	s1,8(sp)
    80003ffc:	02010113          	addi	sp,sp,32
    80004000:	00008067          	ret
    80004004:	00000097          	auipc	ra,0x0
    80004008:	c8c080e7          	jalr	-884(ra) # 80003c90 <cpuid>
    8000400c:	06050663          	beqz	a0,80004078 <devintr+0xc8>
    80004010:	144027f3          	csrr	a5,sip
    80004014:	ffd7f793          	andi	a5,a5,-3
    80004018:	14479073          	csrw	sip,a5
    8000401c:	01813083          	ld	ra,24(sp)
    80004020:	01013403          	ld	s0,16(sp)
    80004024:	00813483          	ld	s1,8(sp)
    80004028:	00200513          	li	a0,2
    8000402c:	02010113          	addi	sp,sp,32
    80004030:	00008067          	ret
    80004034:	00000097          	auipc	ra,0x0
    80004038:	250080e7          	jalr	592(ra) # 80004284 <plic_claim>
    8000403c:	00a00793          	li	a5,10
    80004040:	00050493          	mv	s1,a0
    80004044:	06f50663          	beq	a0,a5,800040b0 <devintr+0x100>
    80004048:	00100513          	li	a0,1
    8000404c:	fa0482e3          	beqz	s1,80003ff0 <devintr+0x40>
    80004050:	00048593          	mv	a1,s1
    80004054:	00002517          	auipc	a0,0x2
    80004058:	2ac50513          	addi	a0,a0,684 # 80006300 <_ZZ12printIntegermE6digits+0x238>
    8000405c:	00000097          	auipc	ra,0x0
    80004060:	66c080e7          	jalr	1644(ra) # 800046c8 <__printf>
    80004064:	00048513          	mv	a0,s1
    80004068:	00000097          	auipc	ra,0x0
    8000406c:	254080e7          	jalr	596(ra) # 800042bc <plic_complete>
    80004070:	00100513          	li	a0,1
    80004074:	f7dff06f          	j	80003ff0 <devintr+0x40>
    80004078:	00004517          	auipc	a0,0x4
    8000407c:	42850513          	addi	a0,a0,1064 # 800084a0 <tickslock>
    80004080:	00001097          	auipc	ra,0x1
    80004084:	31c080e7          	jalr	796(ra) # 8000539c <acquire>
    80004088:	00003717          	auipc	a4,0x3
    8000408c:	2ec70713          	addi	a4,a4,748 # 80007374 <ticks>
    80004090:	00072783          	lw	a5,0(a4)
    80004094:	00004517          	auipc	a0,0x4
    80004098:	40c50513          	addi	a0,a0,1036 # 800084a0 <tickslock>
    8000409c:	0017879b          	addiw	a5,a5,1
    800040a0:	00f72023          	sw	a5,0(a4)
    800040a4:	00001097          	auipc	ra,0x1
    800040a8:	3c4080e7          	jalr	964(ra) # 80005468 <release>
    800040ac:	f65ff06f          	j	80004010 <devintr+0x60>
    800040b0:	00001097          	auipc	ra,0x1
    800040b4:	f20080e7          	jalr	-224(ra) # 80004fd0 <uartintr>
    800040b8:	fadff06f          	j	80004064 <devintr+0xb4>
    800040bc:	0000                	unimp
	...

00000000800040c0 <kernelvec>:
    800040c0:	f0010113          	addi	sp,sp,-256
    800040c4:	00113023          	sd	ra,0(sp)
    800040c8:	00213423          	sd	sp,8(sp)
    800040cc:	00313823          	sd	gp,16(sp)
    800040d0:	00413c23          	sd	tp,24(sp)
    800040d4:	02513023          	sd	t0,32(sp)
    800040d8:	02613423          	sd	t1,40(sp)
    800040dc:	02713823          	sd	t2,48(sp)
    800040e0:	02813c23          	sd	s0,56(sp)
    800040e4:	04913023          	sd	s1,64(sp)
    800040e8:	04a13423          	sd	a0,72(sp)
    800040ec:	04b13823          	sd	a1,80(sp)
    800040f0:	04c13c23          	sd	a2,88(sp)
    800040f4:	06d13023          	sd	a3,96(sp)
    800040f8:	06e13423          	sd	a4,104(sp)
    800040fc:	06f13823          	sd	a5,112(sp)
    80004100:	07013c23          	sd	a6,120(sp)
    80004104:	09113023          	sd	a7,128(sp)
    80004108:	09213423          	sd	s2,136(sp)
    8000410c:	09313823          	sd	s3,144(sp)
    80004110:	09413c23          	sd	s4,152(sp)
    80004114:	0b513023          	sd	s5,160(sp)
    80004118:	0b613423          	sd	s6,168(sp)
    8000411c:	0b713823          	sd	s7,176(sp)
    80004120:	0b813c23          	sd	s8,184(sp)
    80004124:	0d913023          	sd	s9,192(sp)
    80004128:	0da13423          	sd	s10,200(sp)
    8000412c:	0db13823          	sd	s11,208(sp)
    80004130:	0dc13c23          	sd	t3,216(sp)
    80004134:	0fd13023          	sd	t4,224(sp)
    80004138:	0fe13423          	sd	t5,232(sp)
    8000413c:	0ff13823          	sd	t6,240(sp)
    80004140:	cd1ff0ef          	jal	ra,80003e10 <kerneltrap>
    80004144:	00013083          	ld	ra,0(sp)
    80004148:	00813103          	ld	sp,8(sp)
    8000414c:	01013183          	ld	gp,16(sp)
    80004150:	02013283          	ld	t0,32(sp)
    80004154:	02813303          	ld	t1,40(sp)
    80004158:	03013383          	ld	t2,48(sp)
    8000415c:	03813403          	ld	s0,56(sp)
    80004160:	04013483          	ld	s1,64(sp)
    80004164:	04813503          	ld	a0,72(sp)
    80004168:	05013583          	ld	a1,80(sp)
    8000416c:	05813603          	ld	a2,88(sp)
    80004170:	06013683          	ld	a3,96(sp)
    80004174:	06813703          	ld	a4,104(sp)
    80004178:	07013783          	ld	a5,112(sp)
    8000417c:	07813803          	ld	a6,120(sp)
    80004180:	08013883          	ld	a7,128(sp)
    80004184:	08813903          	ld	s2,136(sp)
    80004188:	09013983          	ld	s3,144(sp)
    8000418c:	09813a03          	ld	s4,152(sp)
    80004190:	0a013a83          	ld	s5,160(sp)
    80004194:	0a813b03          	ld	s6,168(sp)
    80004198:	0b013b83          	ld	s7,176(sp)
    8000419c:	0b813c03          	ld	s8,184(sp)
    800041a0:	0c013c83          	ld	s9,192(sp)
    800041a4:	0c813d03          	ld	s10,200(sp)
    800041a8:	0d013d83          	ld	s11,208(sp)
    800041ac:	0d813e03          	ld	t3,216(sp)
    800041b0:	0e013e83          	ld	t4,224(sp)
    800041b4:	0e813f03          	ld	t5,232(sp)
    800041b8:	0f013f83          	ld	t6,240(sp)
    800041bc:	10010113          	addi	sp,sp,256
    800041c0:	10200073          	sret
    800041c4:	00000013          	nop
    800041c8:	00000013          	nop
    800041cc:	00000013          	nop

00000000800041d0 <timervec>:
    800041d0:	34051573          	csrrw	a0,mscratch,a0
    800041d4:	00b53023          	sd	a1,0(a0)
    800041d8:	00c53423          	sd	a2,8(a0)
    800041dc:	00d53823          	sd	a3,16(a0)
    800041e0:	01853583          	ld	a1,24(a0)
    800041e4:	02053603          	ld	a2,32(a0)
    800041e8:	0005b683          	ld	a3,0(a1)
    800041ec:	00c686b3          	add	a3,a3,a2
    800041f0:	00d5b023          	sd	a3,0(a1)
    800041f4:	00200593          	li	a1,2
    800041f8:	14459073          	csrw	sip,a1
    800041fc:	01053683          	ld	a3,16(a0)
    80004200:	00853603          	ld	a2,8(a0)
    80004204:	00053583          	ld	a1,0(a0)
    80004208:	34051573          	csrrw	a0,mscratch,a0
    8000420c:	30200073          	mret

0000000080004210 <plicinit>:
    80004210:	ff010113          	addi	sp,sp,-16
    80004214:	00813423          	sd	s0,8(sp)
    80004218:	01010413          	addi	s0,sp,16
    8000421c:	00813403          	ld	s0,8(sp)
    80004220:	0c0007b7          	lui	a5,0xc000
    80004224:	00100713          	li	a4,1
    80004228:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000422c:	00e7a223          	sw	a4,4(a5)
    80004230:	01010113          	addi	sp,sp,16
    80004234:	00008067          	ret

0000000080004238 <plicinithart>:
    80004238:	ff010113          	addi	sp,sp,-16
    8000423c:	00813023          	sd	s0,0(sp)
    80004240:	00113423          	sd	ra,8(sp)
    80004244:	01010413          	addi	s0,sp,16
    80004248:	00000097          	auipc	ra,0x0
    8000424c:	a48080e7          	jalr	-1464(ra) # 80003c90 <cpuid>
    80004250:	0085171b          	slliw	a4,a0,0x8
    80004254:	0c0027b7          	lui	a5,0xc002
    80004258:	00e787b3          	add	a5,a5,a4
    8000425c:	40200713          	li	a4,1026
    80004260:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80004264:	00813083          	ld	ra,8(sp)
    80004268:	00013403          	ld	s0,0(sp)
    8000426c:	00d5151b          	slliw	a0,a0,0xd
    80004270:	0c2017b7          	lui	a5,0xc201
    80004274:	00a78533          	add	a0,a5,a0
    80004278:	00052023          	sw	zero,0(a0)
    8000427c:	01010113          	addi	sp,sp,16
    80004280:	00008067          	ret

0000000080004284 <plic_claim>:
    80004284:	ff010113          	addi	sp,sp,-16
    80004288:	00813023          	sd	s0,0(sp)
    8000428c:	00113423          	sd	ra,8(sp)
    80004290:	01010413          	addi	s0,sp,16
    80004294:	00000097          	auipc	ra,0x0
    80004298:	9fc080e7          	jalr	-1540(ra) # 80003c90 <cpuid>
    8000429c:	00813083          	ld	ra,8(sp)
    800042a0:	00013403          	ld	s0,0(sp)
    800042a4:	00d5151b          	slliw	a0,a0,0xd
    800042a8:	0c2017b7          	lui	a5,0xc201
    800042ac:	00a78533          	add	a0,a5,a0
    800042b0:	00452503          	lw	a0,4(a0)
    800042b4:	01010113          	addi	sp,sp,16
    800042b8:	00008067          	ret

00000000800042bc <plic_complete>:
    800042bc:	fe010113          	addi	sp,sp,-32
    800042c0:	00813823          	sd	s0,16(sp)
    800042c4:	00913423          	sd	s1,8(sp)
    800042c8:	00113c23          	sd	ra,24(sp)
    800042cc:	02010413          	addi	s0,sp,32
    800042d0:	00050493          	mv	s1,a0
    800042d4:	00000097          	auipc	ra,0x0
    800042d8:	9bc080e7          	jalr	-1604(ra) # 80003c90 <cpuid>
    800042dc:	01813083          	ld	ra,24(sp)
    800042e0:	01013403          	ld	s0,16(sp)
    800042e4:	00d5179b          	slliw	a5,a0,0xd
    800042e8:	0c201737          	lui	a4,0xc201
    800042ec:	00f707b3          	add	a5,a4,a5
    800042f0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800042f4:	00813483          	ld	s1,8(sp)
    800042f8:	02010113          	addi	sp,sp,32
    800042fc:	00008067          	ret

0000000080004300 <consolewrite>:
    80004300:	fb010113          	addi	sp,sp,-80
    80004304:	04813023          	sd	s0,64(sp)
    80004308:	04113423          	sd	ra,72(sp)
    8000430c:	02913c23          	sd	s1,56(sp)
    80004310:	03213823          	sd	s2,48(sp)
    80004314:	03313423          	sd	s3,40(sp)
    80004318:	03413023          	sd	s4,32(sp)
    8000431c:	01513c23          	sd	s5,24(sp)
    80004320:	05010413          	addi	s0,sp,80
    80004324:	06c05c63          	blez	a2,8000439c <consolewrite+0x9c>
    80004328:	00060993          	mv	s3,a2
    8000432c:	00050a13          	mv	s4,a0
    80004330:	00058493          	mv	s1,a1
    80004334:	00000913          	li	s2,0
    80004338:	fff00a93          	li	s5,-1
    8000433c:	01c0006f          	j	80004358 <consolewrite+0x58>
    80004340:	fbf44503          	lbu	a0,-65(s0)
    80004344:	0019091b          	addiw	s2,s2,1
    80004348:	00148493          	addi	s1,s1,1
    8000434c:	00001097          	auipc	ra,0x1
    80004350:	a9c080e7          	jalr	-1380(ra) # 80004de8 <uartputc>
    80004354:	03298063          	beq	s3,s2,80004374 <consolewrite+0x74>
    80004358:	00048613          	mv	a2,s1
    8000435c:	00100693          	li	a3,1
    80004360:	000a0593          	mv	a1,s4
    80004364:	fbf40513          	addi	a0,s0,-65
    80004368:	00000097          	auipc	ra,0x0
    8000436c:	9e0080e7          	jalr	-1568(ra) # 80003d48 <either_copyin>
    80004370:	fd5518e3          	bne	a0,s5,80004340 <consolewrite+0x40>
    80004374:	04813083          	ld	ra,72(sp)
    80004378:	04013403          	ld	s0,64(sp)
    8000437c:	03813483          	ld	s1,56(sp)
    80004380:	02813983          	ld	s3,40(sp)
    80004384:	02013a03          	ld	s4,32(sp)
    80004388:	01813a83          	ld	s5,24(sp)
    8000438c:	00090513          	mv	a0,s2
    80004390:	03013903          	ld	s2,48(sp)
    80004394:	05010113          	addi	sp,sp,80
    80004398:	00008067          	ret
    8000439c:	00000913          	li	s2,0
    800043a0:	fd5ff06f          	j	80004374 <consolewrite+0x74>

00000000800043a4 <consoleread>:
    800043a4:	f9010113          	addi	sp,sp,-112
    800043a8:	06813023          	sd	s0,96(sp)
    800043ac:	04913c23          	sd	s1,88(sp)
    800043b0:	05213823          	sd	s2,80(sp)
    800043b4:	05313423          	sd	s3,72(sp)
    800043b8:	05413023          	sd	s4,64(sp)
    800043bc:	03513c23          	sd	s5,56(sp)
    800043c0:	03613823          	sd	s6,48(sp)
    800043c4:	03713423          	sd	s7,40(sp)
    800043c8:	03813023          	sd	s8,32(sp)
    800043cc:	06113423          	sd	ra,104(sp)
    800043d0:	01913c23          	sd	s9,24(sp)
    800043d4:	07010413          	addi	s0,sp,112
    800043d8:	00060b93          	mv	s7,a2
    800043dc:	00050913          	mv	s2,a0
    800043e0:	00058c13          	mv	s8,a1
    800043e4:	00060b1b          	sext.w	s6,a2
    800043e8:	00004497          	auipc	s1,0x4
    800043ec:	0e048493          	addi	s1,s1,224 # 800084c8 <cons>
    800043f0:	00400993          	li	s3,4
    800043f4:	fff00a13          	li	s4,-1
    800043f8:	00a00a93          	li	s5,10
    800043fc:	05705e63          	blez	s7,80004458 <consoleread+0xb4>
    80004400:	09c4a703          	lw	a4,156(s1)
    80004404:	0984a783          	lw	a5,152(s1)
    80004408:	0007071b          	sext.w	a4,a4
    8000440c:	08e78463          	beq	a5,a4,80004494 <consoleread+0xf0>
    80004410:	07f7f713          	andi	a4,a5,127
    80004414:	00e48733          	add	a4,s1,a4
    80004418:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000441c:	0017869b          	addiw	a3,a5,1
    80004420:	08d4ac23          	sw	a3,152(s1)
    80004424:	00070c9b          	sext.w	s9,a4
    80004428:	0b370663          	beq	a4,s3,800044d4 <consoleread+0x130>
    8000442c:	00100693          	li	a3,1
    80004430:	f9f40613          	addi	a2,s0,-97
    80004434:	000c0593          	mv	a1,s8
    80004438:	00090513          	mv	a0,s2
    8000443c:	f8e40fa3          	sb	a4,-97(s0)
    80004440:	00000097          	auipc	ra,0x0
    80004444:	8bc080e7          	jalr	-1860(ra) # 80003cfc <either_copyout>
    80004448:	01450863          	beq	a0,s4,80004458 <consoleread+0xb4>
    8000444c:	001c0c13          	addi	s8,s8,1
    80004450:	fffb8b9b          	addiw	s7,s7,-1
    80004454:	fb5c94e3          	bne	s9,s5,800043fc <consoleread+0x58>
    80004458:	000b851b          	sext.w	a0,s7
    8000445c:	06813083          	ld	ra,104(sp)
    80004460:	06013403          	ld	s0,96(sp)
    80004464:	05813483          	ld	s1,88(sp)
    80004468:	05013903          	ld	s2,80(sp)
    8000446c:	04813983          	ld	s3,72(sp)
    80004470:	04013a03          	ld	s4,64(sp)
    80004474:	03813a83          	ld	s5,56(sp)
    80004478:	02813b83          	ld	s7,40(sp)
    8000447c:	02013c03          	ld	s8,32(sp)
    80004480:	01813c83          	ld	s9,24(sp)
    80004484:	40ab053b          	subw	a0,s6,a0
    80004488:	03013b03          	ld	s6,48(sp)
    8000448c:	07010113          	addi	sp,sp,112
    80004490:	00008067          	ret
    80004494:	00001097          	auipc	ra,0x1
    80004498:	1d8080e7          	jalr	472(ra) # 8000566c <push_on>
    8000449c:	0984a703          	lw	a4,152(s1)
    800044a0:	09c4a783          	lw	a5,156(s1)
    800044a4:	0007879b          	sext.w	a5,a5
    800044a8:	fef70ce3          	beq	a4,a5,800044a0 <consoleread+0xfc>
    800044ac:	00001097          	auipc	ra,0x1
    800044b0:	234080e7          	jalr	564(ra) # 800056e0 <pop_on>
    800044b4:	0984a783          	lw	a5,152(s1)
    800044b8:	07f7f713          	andi	a4,a5,127
    800044bc:	00e48733          	add	a4,s1,a4
    800044c0:	01874703          	lbu	a4,24(a4)
    800044c4:	0017869b          	addiw	a3,a5,1
    800044c8:	08d4ac23          	sw	a3,152(s1)
    800044cc:	00070c9b          	sext.w	s9,a4
    800044d0:	f5371ee3          	bne	a4,s3,8000442c <consoleread+0x88>
    800044d4:	000b851b          	sext.w	a0,s7
    800044d8:	f96bf2e3          	bgeu	s7,s6,8000445c <consoleread+0xb8>
    800044dc:	08f4ac23          	sw	a5,152(s1)
    800044e0:	f7dff06f          	j	8000445c <consoleread+0xb8>

00000000800044e4 <consputc>:
    800044e4:	10000793          	li	a5,256
    800044e8:	00f50663          	beq	a0,a5,800044f4 <consputc+0x10>
    800044ec:	00001317          	auipc	t1,0x1
    800044f0:	9f430067          	jr	-1548(t1) # 80004ee0 <uartputc_sync>
    800044f4:	ff010113          	addi	sp,sp,-16
    800044f8:	00113423          	sd	ra,8(sp)
    800044fc:	00813023          	sd	s0,0(sp)
    80004500:	01010413          	addi	s0,sp,16
    80004504:	00800513          	li	a0,8
    80004508:	00001097          	auipc	ra,0x1
    8000450c:	9d8080e7          	jalr	-1576(ra) # 80004ee0 <uartputc_sync>
    80004510:	02000513          	li	a0,32
    80004514:	00001097          	auipc	ra,0x1
    80004518:	9cc080e7          	jalr	-1588(ra) # 80004ee0 <uartputc_sync>
    8000451c:	00013403          	ld	s0,0(sp)
    80004520:	00813083          	ld	ra,8(sp)
    80004524:	00800513          	li	a0,8
    80004528:	01010113          	addi	sp,sp,16
    8000452c:	00001317          	auipc	t1,0x1
    80004530:	9b430067          	jr	-1612(t1) # 80004ee0 <uartputc_sync>

0000000080004534 <consoleintr>:
    80004534:	fe010113          	addi	sp,sp,-32
    80004538:	00813823          	sd	s0,16(sp)
    8000453c:	00913423          	sd	s1,8(sp)
    80004540:	01213023          	sd	s2,0(sp)
    80004544:	00113c23          	sd	ra,24(sp)
    80004548:	02010413          	addi	s0,sp,32
    8000454c:	00004917          	auipc	s2,0x4
    80004550:	f7c90913          	addi	s2,s2,-132 # 800084c8 <cons>
    80004554:	00050493          	mv	s1,a0
    80004558:	00090513          	mv	a0,s2
    8000455c:	00001097          	auipc	ra,0x1
    80004560:	e40080e7          	jalr	-448(ra) # 8000539c <acquire>
    80004564:	02048c63          	beqz	s1,8000459c <consoleintr+0x68>
    80004568:	0a092783          	lw	a5,160(s2)
    8000456c:	09892703          	lw	a4,152(s2)
    80004570:	07f00693          	li	a3,127
    80004574:	40e7873b          	subw	a4,a5,a4
    80004578:	02e6e263          	bltu	a3,a4,8000459c <consoleintr+0x68>
    8000457c:	00d00713          	li	a4,13
    80004580:	04e48063          	beq	s1,a4,800045c0 <consoleintr+0x8c>
    80004584:	07f7f713          	andi	a4,a5,127
    80004588:	00e90733          	add	a4,s2,a4
    8000458c:	0017879b          	addiw	a5,a5,1
    80004590:	0af92023          	sw	a5,160(s2)
    80004594:	00970c23          	sb	s1,24(a4)
    80004598:	08f92e23          	sw	a5,156(s2)
    8000459c:	01013403          	ld	s0,16(sp)
    800045a0:	01813083          	ld	ra,24(sp)
    800045a4:	00813483          	ld	s1,8(sp)
    800045a8:	00013903          	ld	s2,0(sp)
    800045ac:	00004517          	auipc	a0,0x4
    800045b0:	f1c50513          	addi	a0,a0,-228 # 800084c8 <cons>
    800045b4:	02010113          	addi	sp,sp,32
    800045b8:	00001317          	auipc	t1,0x1
    800045bc:	eb030067          	jr	-336(t1) # 80005468 <release>
    800045c0:	00a00493          	li	s1,10
    800045c4:	fc1ff06f          	j	80004584 <consoleintr+0x50>

00000000800045c8 <consoleinit>:
    800045c8:	fe010113          	addi	sp,sp,-32
    800045cc:	00113c23          	sd	ra,24(sp)
    800045d0:	00813823          	sd	s0,16(sp)
    800045d4:	00913423          	sd	s1,8(sp)
    800045d8:	02010413          	addi	s0,sp,32
    800045dc:	00004497          	auipc	s1,0x4
    800045e0:	eec48493          	addi	s1,s1,-276 # 800084c8 <cons>
    800045e4:	00048513          	mv	a0,s1
    800045e8:	00002597          	auipc	a1,0x2
    800045ec:	d7058593          	addi	a1,a1,-656 # 80006358 <_ZZ12printIntegermE6digits+0x290>
    800045f0:	00001097          	auipc	ra,0x1
    800045f4:	d88080e7          	jalr	-632(ra) # 80005378 <initlock>
    800045f8:	00000097          	auipc	ra,0x0
    800045fc:	7ac080e7          	jalr	1964(ra) # 80004da4 <uartinit>
    80004600:	01813083          	ld	ra,24(sp)
    80004604:	01013403          	ld	s0,16(sp)
    80004608:	00000797          	auipc	a5,0x0
    8000460c:	d9c78793          	addi	a5,a5,-612 # 800043a4 <consoleread>
    80004610:	0af4bc23          	sd	a5,184(s1)
    80004614:	00000797          	auipc	a5,0x0
    80004618:	cec78793          	addi	a5,a5,-788 # 80004300 <consolewrite>
    8000461c:	0cf4b023          	sd	a5,192(s1)
    80004620:	00813483          	ld	s1,8(sp)
    80004624:	02010113          	addi	sp,sp,32
    80004628:	00008067          	ret

000000008000462c <console_read>:
    8000462c:	ff010113          	addi	sp,sp,-16
    80004630:	00813423          	sd	s0,8(sp)
    80004634:	01010413          	addi	s0,sp,16
    80004638:	00813403          	ld	s0,8(sp)
    8000463c:	00004317          	auipc	t1,0x4
    80004640:	f4433303          	ld	t1,-188(t1) # 80008580 <devsw+0x10>
    80004644:	01010113          	addi	sp,sp,16
    80004648:	00030067          	jr	t1

000000008000464c <console_write>:
    8000464c:	ff010113          	addi	sp,sp,-16
    80004650:	00813423          	sd	s0,8(sp)
    80004654:	01010413          	addi	s0,sp,16
    80004658:	00813403          	ld	s0,8(sp)
    8000465c:	00004317          	auipc	t1,0x4
    80004660:	f2c33303          	ld	t1,-212(t1) # 80008588 <devsw+0x18>
    80004664:	01010113          	addi	sp,sp,16
    80004668:	00030067          	jr	t1

000000008000466c <panic>:
    8000466c:	fe010113          	addi	sp,sp,-32
    80004670:	00113c23          	sd	ra,24(sp)
    80004674:	00813823          	sd	s0,16(sp)
    80004678:	00913423          	sd	s1,8(sp)
    8000467c:	02010413          	addi	s0,sp,32
    80004680:	00050493          	mv	s1,a0
    80004684:	00002517          	auipc	a0,0x2
    80004688:	cdc50513          	addi	a0,a0,-804 # 80006360 <_ZZ12printIntegermE6digits+0x298>
    8000468c:	00004797          	auipc	a5,0x4
    80004690:	f807ae23          	sw	zero,-100(a5) # 80008628 <pr+0x18>
    80004694:	00000097          	auipc	ra,0x0
    80004698:	034080e7          	jalr	52(ra) # 800046c8 <__printf>
    8000469c:	00048513          	mv	a0,s1
    800046a0:	00000097          	auipc	ra,0x0
    800046a4:	028080e7          	jalr	40(ra) # 800046c8 <__printf>
    800046a8:	00002517          	auipc	a0,0x2
    800046ac:	9e050513          	addi	a0,a0,-1568 # 80006088 <CONSOLE_STATUS+0x78>
    800046b0:	00000097          	auipc	ra,0x0
    800046b4:	018080e7          	jalr	24(ra) # 800046c8 <__printf>
    800046b8:	00100793          	li	a5,1
    800046bc:	00003717          	auipc	a4,0x3
    800046c0:	caf72e23          	sw	a5,-836(a4) # 80007378 <panicked>
    800046c4:	0000006f          	j	800046c4 <panic+0x58>

00000000800046c8 <__printf>:
    800046c8:	f3010113          	addi	sp,sp,-208
    800046cc:	08813023          	sd	s0,128(sp)
    800046d0:	07313423          	sd	s3,104(sp)
    800046d4:	09010413          	addi	s0,sp,144
    800046d8:	05813023          	sd	s8,64(sp)
    800046dc:	08113423          	sd	ra,136(sp)
    800046e0:	06913c23          	sd	s1,120(sp)
    800046e4:	07213823          	sd	s2,112(sp)
    800046e8:	07413023          	sd	s4,96(sp)
    800046ec:	05513c23          	sd	s5,88(sp)
    800046f0:	05613823          	sd	s6,80(sp)
    800046f4:	05713423          	sd	s7,72(sp)
    800046f8:	03913c23          	sd	s9,56(sp)
    800046fc:	03a13823          	sd	s10,48(sp)
    80004700:	03b13423          	sd	s11,40(sp)
    80004704:	00004317          	auipc	t1,0x4
    80004708:	f0c30313          	addi	t1,t1,-244 # 80008610 <pr>
    8000470c:	01832c03          	lw	s8,24(t1)
    80004710:	00b43423          	sd	a1,8(s0)
    80004714:	00c43823          	sd	a2,16(s0)
    80004718:	00d43c23          	sd	a3,24(s0)
    8000471c:	02e43023          	sd	a4,32(s0)
    80004720:	02f43423          	sd	a5,40(s0)
    80004724:	03043823          	sd	a6,48(s0)
    80004728:	03143c23          	sd	a7,56(s0)
    8000472c:	00050993          	mv	s3,a0
    80004730:	4a0c1663          	bnez	s8,80004bdc <__printf+0x514>
    80004734:	60098c63          	beqz	s3,80004d4c <__printf+0x684>
    80004738:	0009c503          	lbu	a0,0(s3)
    8000473c:	00840793          	addi	a5,s0,8
    80004740:	f6f43c23          	sd	a5,-136(s0)
    80004744:	00000493          	li	s1,0
    80004748:	22050063          	beqz	a0,80004968 <__printf+0x2a0>
    8000474c:	00002a37          	lui	s4,0x2
    80004750:	00018ab7          	lui	s5,0x18
    80004754:	000f4b37          	lui	s6,0xf4
    80004758:	00989bb7          	lui	s7,0x989
    8000475c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80004760:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80004764:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80004768:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000476c:	00148c9b          	addiw	s9,s1,1
    80004770:	02500793          	li	a5,37
    80004774:	01998933          	add	s2,s3,s9
    80004778:	38f51263          	bne	a0,a5,80004afc <__printf+0x434>
    8000477c:	00094783          	lbu	a5,0(s2)
    80004780:	00078c9b          	sext.w	s9,a5
    80004784:	1e078263          	beqz	a5,80004968 <__printf+0x2a0>
    80004788:	0024849b          	addiw	s1,s1,2
    8000478c:	07000713          	li	a4,112
    80004790:	00998933          	add	s2,s3,s1
    80004794:	38e78a63          	beq	a5,a4,80004b28 <__printf+0x460>
    80004798:	20f76863          	bltu	a4,a5,800049a8 <__printf+0x2e0>
    8000479c:	42a78863          	beq	a5,a0,80004bcc <__printf+0x504>
    800047a0:	06400713          	li	a4,100
    800047a4:	40e79663          	bne	a5,a4,80004bb0 <__printf+0x4e8>
    800047a8:	f7843783          	ld	a5,-136(s0)
    800047ac:	0007a603          	lw	a2,0(a5)
    800047b0:	00878793          	addi	a5,a5,8
    800047b4:	f6f43c23          	sd	a5,-136(s0)
    800047b8:	42064a63          	bltz	a2,80004bec <__printf+0x524>
    800047bc:	00a00713          	li	a4,10
    800047c0:	02e677bb          	remuw	a5,a2,a4
    800047c4:	00002d97          	auipc	s11,0x2
    800047c8:	bc4d8d93          	addi	s11,s11,-1084 # 80006388 <digits>
    800047cc:	00900593          	li	a1,9
    800047d0:	0006051b          	sext.w	a0,a2
    800047d4:	00000c93          	li	s9,0
    800047d8:	02079793          	slli	a5,a5,0x20
    800047dc:	0207d793          	srli	a5,a5,0x20
    800047e0:	00fd87b3          	add	a5,s11,a5
    800047e4:	0007c783          	lbu	a5,0(a5)
    800047e8:	02e656bb          	divuw	a3,a2,a4
    800047ec:	f8f40023          	sb	a5,-128(s0)
    800047f0:	14c5d863          	bge	a1,a2,80004940 <__printf+0x278>
    800047f4:	06300593          	li	a1,99
    800047f8:	00100c93          	li	s9,1
    800047fc:	02e6f7bb          	remuw	a5,a3,a4
    80004800:	02079793          	slli	a5,a5,0x20
    80004804:	0207d793          	srli	a5,a5,0x20
    80004808:	00fd87b3          	add	a5,s11,a5
    8000480c:	0007c783          	lbu	a5,0(a5)
    80004810:	02e6d73b          	divuw	a4,a3,a4
    80004814:	f8f400a3          	sb	a5,-127(s0)
    80004818:	12a5f463          	bgeu	a1,a0,80004940 <__printf+0x278>
    8000481c:	00a00693          	li	a3,10
    80004820:	00900593          	li	a1,9
    80004824:	02d777bb          	remuw	a5,a4,a3
    80004828:	02079793          	slli	a5,a5,0x20
    8000482c:	0207d793          	srli	a5,a5,0x20
    80004830:	00fd87b3          	add	a5,s11,a5
    80004834:	0007c503          	lbu	a0,0(a5)
    80004838:	02d757bb          	divuw	a5,a4,a3
    8000483c:	f8a40123          	sb	a0,-126(s0)
    80004840:	48e5f263          	bgeu	a1,a4,80004cc4 <__printf+0x5fc>
    80004844:	06300513          	li	a0,99
    80004848:	02d7f5bb          	remuw	a1,a5,a3
    8000484c:	02059593          	slli	a1,a1,0x20
    80004850:	0205d593          	srli	a1,a1,0x20
    80004854:	00bd85b3          	add	a1,s11,a1
    80004858:	0005c583          	lbu	a1,0(a1)
    8000485c:	02d7d7bb          	divuw	a5,a5,a3
    80004860:	f8b401a3          	sb	a1,-125(s0)
    80004864:	48e57263          	bgeu	a0,a4,80004ce8 <__printf+0x620>
    80004868:	3e700513          	li	a0,999
    8000486c:	02d7f5bb          	remuw	a1,a5,a3
    80004870:	02059593          	slli	a1,a1,0x20
    80004874:	0205d593          	srli	a1,a1,0x20
    80004878:	00bd85b3          	add	a1,s11,a1
    8000487c:	0005c583          	lbu	a1,0(a1)
    80004880:	02d7d7bb          	divuw	a5,a5,a3
    80004884:	f8b40223          	sb	a1,-124(s0)
    80004888:	46e57663          	bgeu	a0,a4,80004cf4 <__printf+0x62c>
    8000488c:	02d7f5bb          	remuw	a1,a5,a3
    80004890:	02059593          	slli	a1,a1,0x20
    80004894:	0205d593          	srli	a1,a1,0x20
    80004898:	00bd85b3          	add	a1,s11,a1
    8000489c:	0005c583          	lbu	a1,0(a1)
    800048a0:	02d7d7bb          	divuw	a5,a5,a3
    800048a4:	f8b402a3          	sb	a1,-123(s0)
    800048a8:	46ea7863          	bgeu	s4,a4,80004d18 <__printf+0x650>
    800048ac:	02d7f5bb          	remuw	a1,a5,a3
    800048b0:	02059593          	slli	a1,a1,0x20
    800048b4:	0205d593          	srli	a1,a1,0x20
    800048b8:	00bd85b3          	add	a1,s11,a1
    800048bc:	0005c583          	lbu	a1,0(a1)
    800048c0:	02d7d7bb          	divuw	a5,a5,a3
    800048c4:	f8b40323          	sb	a1,-122(s0)
    800048c8:	3eeaf863          	bgeu	s5,a4,80004cb8 <__printf+0x5f0>
    800048cc:	02d7f5bb          	remuw	a1,a5,a3
    800048d0:	02059593          	slli	a1,a1,0x20
    800048d4:	0205d593          	srli	a1,a1,0x20
    800048d8:	00bd85b3          	add	a1,s11,a1
    800048dc:	0005c583          	lbu	a1,0(a1)
    800048e0:	02d7d7bb          	divuw	a5,a5,a3
    800048e4:	f8b403a3          	sb	a1,-121(s0)
    800048e8:	42eb7e63          	bgeu	s6,a4,80004d24 <__printf+0x65c>
    800048ec:	02d7f5bb          	remuw	a1,a5,a3
    800048f0:	02059593          	slli	a1,a1,0x20
    800048f4:	0205d593          	srli	a1,a1,0x20
    800048f8:	00bd85b3          	add	a1,s11,a1
    800048fc:	0005c583          	lbu	a1,0(a1)
    80004900:	02d7d7bb          	divuw	a5,a5,a3
    80004904:	f8b40423          	sb	a1,-120(s0)
    80004908:	42ebfc63          	bgeu	s7,a4,80004d40 <__printf+0x678>
    8000490c:	02079793          	slli	a5,a5,0x20
    80004910:	0207d793          	srli	a5,a5,0x20
    80004914:	00fd8db3          	add	s11,s11,a5
    80004918:	000dc703          	lbu	a4,0(s11)
    8000491c:	00a00793          	li	a5,10
    80004920:	00900c93          	li	s9,9
    80004924:	f8e404a3          	sb	a4,-119(s0)
    80004928:	00065c63          	bgez	a2,80004940 <__printf+0x278>
    8000492c:	f9040713          	addi	a4,s0,-112
    80004930:	00f70733          	add	a4,a4,a5
    80004934:	02d00693          	li	a3,45
    80004938:	fed70823          	sb	a3,-16(a4)
    8000493c:	00078c93          	mv	s9,a5
    80004940:	f8040793          	addi	a5,s0,-128
    80004944:	01978cb3          	add	s9,a5,s9
    80004948:	f7f40d13          	addi	s10,s0,-129
    8000494c:	000cc503          	lbu	a0,0(s9)
    80004950:	fffc8c93          	addi	s9,s9,-1
    80004954:	00000097          	auipc	ra,0x0
    80004958:	b90080e7          	jalr	-1136(ra) # 800044e4 <consputc>
    8000495c:	ffac98e3          	bne	s9,s10,8000494c <__printf+0x284>
    80004960:	00094503          	lbu	a0,0(s2)
    80004964:	e00514e3          	bnez	a0,8000476c <__printf+0xa4>
    80004968:	1a0c1663          	bnez	s8,80004b14 <__printf+0x44c>
    8000496c:	08813083          	ld	ra,136(sp)
    80004970:	08013403          	ld	s0,128(sp)
    80004974:	07813483          	ld	s1,120(sp)
    80004978:	07013903          	ld	s2,112(sp)
    8000497c:	06813983          	ld	s3,104(sp)
    80004980:	06013a03          	ld	s4,96(sp)
    80004984:	05813a83          	ld	s5,88(sp)
    80004988:	05013b03          	ld	s6,80(sp)
    8000498c:	04813b83          	ld	s7,72(sp)
    80004990:	04013c03          	ld	s8,64(sp)
    80004994:	03813c83          	ld	s9,56(sp)
    80004998:	03013d03          	ld	s10,48(sp)
    8000499c:	02813d83          	ld	s11,40(sp)
    800049a0:	0d010113          	addi	sp,sp,208
    800049a4:	00008067          	ret
    800049a8:	07300713          	li	a4,115
    800049ac:	1ce78a63          	beq	a5,a4,80004b80 <__printf+0x4b8>
    800049b0:	07800713          	li	a4,120
    800049b4:	1ee79e63          	bne	a5,a4,80004bb0 <__printf+0x4e8>
    800049b8:	f7843783          	ld	a5,-136(s0)
    800049bc:	0007a703          	lw	a4,0(a5)
    800049c0:	00878793          	addi	a5,a5,8
    800049c4:	f6f43c23          	sd	a5,-136(s0)
    800049c8:	28074263          	bltz	a4,80004c4c <__printf+0x584>
    800049cc:	00002d97          	auipc	s11,0x2
    800049d0:	9bcd8d93          	addi	s11,s11,-1604 # 80006388 <digits>
    800049d4:	00f77793          	andi	a5,a4,15
    800049d8:	00fd87b3          	add	a5,s11,a5
    800049dc:	0007c683          	lbu	a3,0(a5)
    800049e0:	00f00613          	li	a2,15
    800049e4:	0007079b          	sext.w	a5,a4
    800049e8:	f8d40023          	sb	a3,-128(s0)
    800049ec:	0047559b          	srliw	a1,a4,0x4
    800049f0:	0047569b          	srliw	a3,a4,0x4
    800049f4:	00000c93          	li	s9,0
    800049f8:	0ee65063          	bge	a2,a4,80004ad8 <__printf+0x410>
    800049fc:	00f6f693          	andi	a3,a3,15
    80004a00:	00dd86b3          	add	a3,s11,a3
    80004a04:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80004a08:	0087d79b          	srliw	a5,a5,0x8
    80004a0c:	00100c93          	li	s9,1
    80004a10:	f8d400a3          	sb	a3,-127(s0)
    80004a14:	0cb67263          	bgeu	a2,a1,80004ad8 <__printf+0x410>
    80004a18:	00f7f693          	andi	a3,a5,15
    80004a1c:	00dd86b3          	add	a3,s11,a3
    80004a20:	0006c583          	lbu	a1,0(a3)
    80004a24:	00f00613          	li	a2,15
    80004a28:	0047d69b          	srliw	a3,a5,0x4
    80004a2c:	f8b40123          	sb	a1,-126(s0)
    80004a30:	0047d593          	srli	a1,a5,0x4
    80004a34:	28f67e63          	bgeu	a2,a5,80004cd0 <__printf+0x608>
    80004a38:	00f6f693          	andi	a3,a3,15
    80004a3c:	00dd86b3          	add	a3,s11,a3
    80004a40:	0006c503          	lbu	a0,0(a3)
    80004a44:	0087d813          	srli	a6,a5,0x8
    80004a48:	0087d69b          	srliw	a3,a5,0x8
    80004a4c:	f8a401a3          	sb	a0,-125(s0)
    80004a50:	28b67663          	bgeu	a2,a1,80004cdc <__printf+0x614>
    80004a54:	00f6f693          	andi	a3,a3,15
    80004a58:	00dd86b3          	add	a3,s11,a3
    80004a5c:	0006c583          	lbu	a1,0(a3)
    80004a60:	00c7d513          	srli	a0,a5,0xc
    80004a64:	00c7d69b          	srliw	a3,a5,0xc
    80004a68:	f8b40223          	sb	a1,-124(s0)
    80004a6c:	29067a63          	bgeu	a2,a6,80004d00 <__printf+0x638>
    80004a70:	00f6f693          	andi	a3,a3,15
    80004a74:	00dd86b3          	add	a3,s11,a3
    80004a78:	0006c583          	lbu	a1,0(a3)
    80004a7c:	0107d813          	srli	a6,a5,0x10
    80004a80:	0107d69b          	srliw	a3,a5,0x10
    80004a84:	f8b402a3          	sb	a1,-123(s0)
    80004a88:	28a67263          	bgeu	a2,a0,80004d0c <__printf+0x644>
    80004a8c:	00f6f693          	andi	a3,a3,15
    80004a90:	00dd86b3          	add	a3,s11,a3
    80004a94:	0006c683          	lbu	a3,0(a3)
    80004a98:	0147d79b          	srliw	a5,a5,0x14
    80004a9c:	f8d40323          	sb	a3,-122(s0)
    80004aa0:	21067663          	bgeu	a2,a6,80004cac <__printf+0x5e4>
    80004aa4:	02079793          	slli	a5,a5,0x20
    80004aa8:	0207d793          	srli	a5,a5,0x20
    80004aac:	00fd8db3          	add	s11,s11,a5
    80004ab0:	000dc683          	lbu	a3,0(s11)
    80004ab4:	00800793          	li	a5,8
    80004ab8:	00700c93          	li	s9,7
    80004abc:	f8d403a3          	sb	a3,-121(s0)
    80004ac0:	00075c63          	bgez	a4,80004ad8 <__printf+0x410>
    80004ac4:	f9040713          	addi	a4,s0,-112
    80004ac8:	00f70733          	add	a4,a4,a5
    80004acc:	02d00693          	li	a3,45
    80004ad0:	fed70823          	sb	a3,-16(a4)
    80004ad4:	00078c93          	mv	s9,a5
    80004ad8:	f8040793          	addi	a5,s0,-128
    80004adc:	01978cb3          	add	s9,a5,s9
    80004ae0:	f7f40d13          	addi	s10,s0,-129
    80004ae4:	000cc503          	lbu	a0,0(s9)
    80004ae8:	fffc8c93          	addi	s9,s9,-1
    80004aec:	00000097          	auipc	ra,0x0
    80004af0:	9f8080e7          	jalr	-1544(ra) # 800044e4 <consputc>
    80004af4:	ff9d18e3          	bne	s10,s9,80004ae4 <__printf+0x41c>
    80004af8:	0100006f          	j	80004b08 <__printf+0x440>
    80004afc:	00000097          	auipc	ra,0x0
    80004b00:	9e8080e7          	jalr	-1560(ra) # 800044e4 <consputc>
    80004b04:	000c8493          	mv	s1,s9
    80004b08:	00094503          	lbu	a0,0(s2)
    80004b0c:	c60510e3          	bnez	a0,8000476c <__printf+0xa4>
    80004b10:	e40c0ee3          	beqz	s8,8000496c <__printf+0x2a4>
    80004b14:	00004517          	auipc	a0,0x4
    80004b18:	afc50513          	addi	a0,a0,-1284 # 80008610 <pr>
    80004b1c:	00001097          	auipc	ra,0x1
    80004b20:	94c080e7          	jalr	-1716(ra) # 80005468 <release>
    80004b24:	e49ff06f          	j	8000496c <__printf+0x2a4>
    80004b28:	f7843783          	ld	a5,-136(s0)
    80004b2c:	03000513          	li	a0,48
    80004b30:	01000d13          	li	s10,16
    80004b34:	00878713          	addi	a4,a5,8
    80004b38:	0007bc83          	ld	s9,0(a5)
    80004b3c:	f6e43c23          	sd	a4,-136(s0)
    80004b40:	00000097          	auipc	ra,0x0
    80004b44:	9a4080e7          	jalr	-1628(ra) # 800044e4 <consputc>
    80004b48:	07800513          	li	a0,120
    80004b4c:	00000097          	auipc	ra,0x0
    80004b50:	998080e7          	jalr	-1640(ra) # 800044e4 <consputc>
    80004b54:	00002d97          	auipc	s11,0x2
    80004b58:	834d8d93          	addi	s11,s11,-1996 # 80006388 <digits>
    80004b5c:	03ccd793          	srli	a5,s9,0x3c
    80004b60:	00fd87b3          	add	a5,s11,a5
    80004b64:	0007c503          	lbu	a0,0(a5)
    80004b68:	fffd0d1b          	addiw	s10,s10,-1
    80004b6c:	004c9c93          	slli	s9,s9,0x4
    80004b70:	00000097          	auipc	ra,0x0
    80004b74:	974080e7          	jalr	-1676(ra) # 800044e4 <consputc>
    80004b78:	fe0d12e3          	bnez	s10,80004b5c <__printf+0x494>
    80004b7c:	f8dff06f          	j	80004b08 <__printf+0x440>
    80004b80:	f7843783          	ld	a5,-136(s0)
    80004b84:	0007bc83          	ld	s9,0(a5)
    80004b88:	00878793          	addi	a5,a5,8
    80004b8c:	f6f43c23          	sd	a5,-136(s0)
    80004b90:	000c9a63          	bnez	s9,80004ba4 <__printf+0x4dc>
    80004b94:	1080006f          	j	80004c9c <__printf+0x5d4>
    80004b98:	001c8c93          	addi	s9,s9,1
    80004b9c:	00000097          	auipc	ra,0x0
    80004ba0:	948080e7          	jalr	-1720(ra) # 800044e4 <consputc>
    80004ba4:	000cc503          	lbu	a0,0(s9)
    80004ba8:	fe0518e3          	bnez	a0,80004b98 <__printf+0x4d0>
    80004bac:	f5dff06f          	j	80004b08 <__printf+0x440>
    80004bb0:	02500513          	li	a0,37
    80004bb4:	00000097          	auipc	ra,0x0
    80004bb8:	930080e7          	jalr	-1744(ra) # 800044e4 <consputc>
    80004bbc:	000c8513          	mv	a0,s9
    80004bc0:	00000097          	auipc	ra,0x0
    80004bc4:	924080e7          	jalr	-1756(ra) # 800044e4 <consputc>
    80004bc8:	f41ff06f          	j	80004b08 <__printf+0x440>
    80004bcc:	02500513          	li	a0,37
    80004bd0:	00000097          	auipc	ra,0x0
    80004bd4:	914080e7          	jalr	-1772(ra) # 800044e4 <consputc>
    80004bd8:	f31ff06f          	j	80004b08 <__printf+0x440>
    80004bdc:	00030513          	mv	a0,t1
    80004be0:	00000097          	auipc	ra,0x0
    80004be4:	7bc080e7          	jalr	1980(ra) # 8000539c <acquire>
    80004be8:	b4dff06f          	j	80004734 <__printf+0x6c>
    80004bec:	40c0053b          	negw	a0,a2
    80004bf0:	00a00713          	li	a4,10
    80004bf4:	02e576bb          	remuw	a3,a0,a4
    80004bf8:	00001d97          	auipc	s11,0x1
    80004bfc:	790d8d93          	addi	s11,s11,1936 # 80006388 <digits>
    80004c00:	ff700593          	li	a1,-9
    80004c04:	02069693          	slli	a3,a3,0x20
    80004c08:	0206d693          	srli	a3,a3,0x20
    80004c0c:	00dd86b3          	add	a3,s11,a3
    80004c10:	0006c683          	lbu	a3,0(a3)
    80004c14:	02e557bb          	divuw	a5,a0,a4
    80004c18:	f8d40023          	sb	a3,-128(s0)
    80004c1c:	10b65e63          	bge	a2,a1,80004d38 <__printf+0x670>
    80004c20:	06300593          	li	a1,99
    80004c24:	02e7f6bb          	remuw	a3,a5,a4
    80004c28:	02069693          	slli	a3,a3,0x20
    80004c2c:	0206d693          	srli	a3,a3,0x20
    80004c30:	00dd86b3          	add	a3,s11,a3
    80004c34:	0006c683          	lbu	a3,0(a3)
    80004c38:	02e7d73b          	divuw	a4,a5,a4
    80004c3c:	00200793          	li	a5,2
    80004c40:	f8d400a3          	sb	a3,-127(s0)
    80004c44:	bca5ece3          	bltu	a1,a0,8000481c <__printf+0x154>
    80004c48:	ce5ff06f          	j	8000492c <__printf+0x264>
    80004c4c:	40e007bb          	negw	a5,a4
    80004c50:	00001d97          	auipc	s11,0x1
    80004c54:	738d8d93          	addi	s11,s11,1848 # 80006388 <digits>
    80004c58:	00f7f693          	andi	a3,a5,15
    80004c5c:	00dd86b3          	add	a3,s11,a3
    80004c60:	0006c583          	lbu	a1,0(a3)
    80004c64:	ff100613          	li	a2,-15
    80004c68:	0047d69b          	srliw	a3,a5,0x4
    80004c6c:	f8b40023          	sb	a1,-128(s0)
    80004c70:	0047d59b          	srliw	a1,a5,0x4
    80004c74:	0ac75e63          	bge	a4,a2,80004d30 <__printf+0x668>
    80004c78:	00f6f693          	andi	a3,a3,15
    80004c7c:	00dd86b3          	add	a3,s11,a3
    80004c80:	0006c603          	lbu	a2,0(a3)
    80004c84:	00f00693          	li	a3,15
    80004c88:	0087d79b          	srliw	a5,a5,0x8
    80004c8c:	f8c400a3          	sb	a2,-127(s0)
    80004c90:	d8b6e4e3          	bltu	a3,a1,80004a18 <__printf+0x350>
    80004c94:	00200793          	li	a5,2
    80004c98:	e2dff06f          	j	80004ac4 <__printf+0x3fc>
    80004c9c:	00001c97          	auipc	s9,0x1
    80004ca0:	6ccc8c93          	addi	s9,s9,1740 # 80006368 <_ZZ12printIntegermE6digits+0x2a0>
    80004ca4:	02800513          	li	a0,40
    80004ca8:	ef1ff06f          	j	80004b98 <__printf+0x4d0>
    80004cac:	00700793          	li	a5,7
    80004cb0:	00600c93          	li	s9,6
    80004cb4:	e0dff06f          	j	80004ac0 <__printf+0x3f8>
    80004cb8:	00700793          	li	a5,7
    80004cbc:	00600c93          	li	s9,6
    80004cc0:	c69ff06f          	j	80004928 <__printf+0x260>
    80004cc4:	00300793          	li	a5,3
    80004cc8:	00200c93          	li	s9,2
    80004ccc:	c5dff06f          	j	80004928 <__printf+0x260>
    80004cd0:	00300793          	li	a5,3
    80004cd4:	00200c93          	li	s9,2
    80004cd8:	de9ff06f          	j	80004ac0 <__printf+0x3f8>
    80004cdc:	00400793          	li	a5,4
    80004ce0:	00300c93          	li	s9,3
    80004ce4:	dddff06f          	j	80004ac0 <__printf+0x3f8>
    80004ce8:	00400793          	li	a5,4
    80004cec:	00300c93          	li	s9,3
    80004cf0:	c39ff06f          	j	80004928 <__printf+0x260>
    80004cf4:	00500793          	li	a5,5
    80004cf8:	00400c93          	li	s9,4
    80004cfc:	c2dff06f          	j	80004928 <__printf+0x260>
    80004d00:	00500793          	li	a5,5
    80004d04:	00400c93          	li	s9,4
    80004d08:	db9ff06f          	j	80004ac0 <__printf+0x3f8>
    80004d0c:	00600793          	li	a5,6
    80004d10:	00500c93          	li	s9,5
    80004d14:	dadff06f          	j	80004ac0 <__printf+0x3f8>
    80004d18:	00600793          	li	a5,6
    80004d1c:	00500c93          	li	s9,5
    80004d20:	c09ff06f          	j	80004928 <__printf+0x260>
    80004d24:	00800793          	li	a5,8
    80004d28:	00700c93          	li	s9,7
    80004d2c:	bfdff06f          	j	80004928 <__printf+0x260>
    80004d30:	00100793          	li	a5,1
    80004d34:	d91ff06f          	j	80004ac4 <__printf+0x3fc>
    80004d38:	00100793          	li	a5,1
    80004d3c:	bf1ff06f          	j	8000492c <__printf+0x264>
    80004d40:	00900793          	li	a5,9
    80004d44:	00800c93          	li	s9,8
    80004d48:	be1ff06f          	j	80004928 <__printf+0x260>
    80004d4c:	00001517          	auipc	a0,0x1
    80004d50:	62450513          	addi	a0,a0,1572 # 80006370 <_ZZ12printIntegermE6digits+0x2a8>
    80004d54:	00000097          	auipc	ra,0x0
    80004d58:	918080e7          	jalr	-1768(ra) # 8000466c <panic>

0000000080004d5c <printfinit>:
    80004d5c:	fe010113          	addi	sp,sp,-32
    80004d60:	00813823          	sd	s0,16(sp)
    80004d64:	00913423          	sd	s1,8(sp)
    80004d68:	00113c23          	sd	ra,24(sp)
    80004d6c:	02010413          	addi	s0,sp,32
    80004d70:	00004497          	auipc	s1,0x4
    80004d74:	8a048493          	addi	s1,s1,-1888 # 80008610 <pr>
    80004d78:	00048513          	mv	a0,s1
    80004d7c:	00001597          	auipc	a1,0x1
    80004d80:	60458593          	addi	a1,a1,1540 # 80006380 <_ZZ12printIntegermE6digits+0x2b8>
    80004d84:	00000097          	auipc	ra,0x0
    80004d88:	5f4080e7          	jalr	1524(ra) # 80005378 <initlock>
    80004d8c:	01813083          	ld	ra,24(sp)
    80004d90:	01013403          	ld	s0,16(sp)
    80004d94:	0004ac23          	sw	zero,24(s1)
    80004d98:	00813483          	ld	s1,8(sp)
    80004d9c:	02010113          	addi	sp,sp,32
    80004da0:	00008067          	ret

0000000080004da4 <uartinit>:
    80004da4:	ff010113          	addi	sp,sp,-16
    80004da8:	00813423          	sd	s0,8(sp)
    80004dac:	01010413          	addi	s0,sp,16
    80004db0:	100007b7          	lui	a5,0x10000
    80004db4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80004db8:	f8000713          	li	a4,-128
    80004dbc:	00e781a3          	sb	a4,3(a5)
    80004dc0:	00300713          	li	a4,3
    80004dc4:	00e78023          	sb	a4,0(a5)
    80004dc8:	000780a3          	sb	zero,1(a5)
    80004dcc:	00e781a3          	sb	a4,3(a5)
    80004dd0:	00700693          	li	a3,7
    80004dd4:	00d78123          	sb	a3,2(a5)
    80004dd8:	00e780a3          	sb	a4,1(a5)
    80004ddc:	00813403          	ld	s0,8(sp)
    80004de0:	01010113          	addi	sp,sp,16
    80004de4:	00008067          	ret

0000000080004de8 <uartputc>:
    80004de8:	00002797          	auipc	a5,0x2
    80004dec:	5907a783          	lw	a5,1424(a5) # 80007378 <panicked>
    80004df0:	00078463          	beqz	a5,80004df8 <uartputc+0x10>
    80004df4:	0000006f          	j	80004df4 <uartputc+0xc>
    80004df8:	fd010113          	addi	sp,sp,-48
    80004dfc:	02813023          	sd	s0,32(sp)
    80004e00:	00913c23          	sd	s1,24(sp)
    80004e04:	01213823          	sd	s2,16(sp)
    80004e08:	01313423          	sd	s3,8(sp)
    80004e0c:	02113423          	sd	ra,40(sp)
    80004e10:	03010413          	addi	s0,sp,48
    80004e14:	00002917          	auipc	s2,0x2
    80004e18:	56c90913          	addi	s2,s2,1388 # 80007380 <uart_tx_r>
    80004e1c:	00093783          	ld	a5,0(s2)
    80004e20:	00002497          	auipc	s1,0x2
    80004e24:	56848493          	addi	s1,s1,1384 # 80007388 <uart_tx_w>
    80004e28:	0004b703          	ld	a4,0(s1)
    80004e2c:	02078693          	addi	a3,a5,32
    80004e30:	00050993          	mv	s3,a0
    80004e34:	02e69c63          	bne	a3,a4,80004e6c <uartputc+0x84>
    80004e38:	00001097          	auipc	ra,0x1
    80004e3c:	834080e7          	jalr	-1996(ra) # 8000566c <push_on>
    80004e40:	00093783          	ld	a5,0(s2)
    80004e44:	0004b703          	ld	a4,0(s1)
    80004e48:	02078793          	addi	a5,a5,32
    80004e4c:	00e79463          	bne	a5,a4,80004e54 <uartputc+0x6c>
    80004e50:	0000006f          	j	80004e50 <uartputc+0x68>
    80004e54:	00001097          	auipc	ra,0x1
    80004e58:	88c080e7          	jalr	-1908(ra) # 800056e0 <pop_on>
    80004e5c:	00093783          	ld	a5,0(s2)
    80004e60:	0004b703          	ld	a4,0(s1)
    80004e64:	02078693          	addi	a3,a5,32
    80004e68:	fce688e3          	beq	a3,a4,80004e38 <uartputc+0x50>
    80004e6c:	01f77693          	andi	a3,a4,31
    80004e70:	00003597          	auipc	a1,0x3
    80004e74:	7c058593          	addi	a1,a1,1984 # 80008630 <uart_tx_buf>
    80004e78:	00d586b3          	add	a3,a1,a3
    80004e7c:	00170713          	addi	a4,a4,1
    80004e80:	01368023          	sb	s3,0(a3)
    80004e84:	00e4b023          	sd	a4,0(s1)
    80004e88:	10000637          	lui	a2,0x10000
    80004e8c:	02f71063          	bne	a4,a5,80004eac <uartputc+0xc4>
    80004e90:	0340006f          	j	80004ec4 <uartputc+0xdc>
    80004e94:	00074703          	lbu	a4,0(a4)
    80004e98:	00f93023          	sd	a5,0(s2)
    80004e9c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80004ea0:	00093783          	ld	a5,0(s2)
    80004ea4:	0004b703          	ld	a4,0(s1)
    80004ea8:	00f70e63          	beq	a4,a5,80004ec4 <uartputc+0xdc>
    80004eac:	00564683          	lbu	a3,5(a2)
    80004eb0:	01f7f713          	andi	a4,a5,31
    80004eb4:	00e58733          	add	a4,a1,a4
    80004eb8:	0206f693          	andi	a3,a3,32
    80004ebc:	00178793          	addi	a5,a5,1
    80004ec0:	fc069ae3          	bnez	a3,80004e94 <uartputc+0xac>
    80004ec4:	02813083          	ld	ra,40(sp)
    80004ec8:	02013403          	ld	s0,32(sp)
    80004ecc:	01813483          	ld	s1,24(sp)
    80004ed0:	01013903          	ld	s2,16(sp)
    80004ed4:	00813983          	ld	s3,8(sp)
    80004ed8:	03010113          	addi	sp,sp,48
    80004edc:	00008067          	ret

0000000080004ee0 <uartputc_sync>:
    80004ee0:	ff010113          	addi	sp,sp,-16
    80004ee4:	00813423          	sd	s0,8(sp)
    80004ee8:	01010413          	addi	s0,sp,16
    80004eec:	00002717          	auipc	a4,0x2
    80004ef0:	48c72703          	lw	a4,1164(a4) # 80007378 <panicked>
    80004ef4:	02071663          	bnez	a4,80004f20 <uartputc_sync+0x40>
    80004ef8:	00050793          	mv	a5,a0
    80004efc:	100006b7          	lui	a3,0x10000
    80004f00:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80004f04:	02077713          	andi	a4,a4,32
    80004f08:	fe070ce3          	beqz	a4,80004f00 <uartputc_sync+0x20>
    80004f0c:	0ff7f793          	andi	a5,a5,255
    80004f10:	00f68023          	sb	a5,0(a3)
    80004f14:	00813403          	ld	s0,8(sp)
    80004f18:	01010113          	addi	sp,sp,16
    80004f1c:	00008067          	ret
    80004f20:	0000006f          	j	80004f20 <uartputc_sync+0x40>

0000000080004f24 <uartstart>:
    80004f24:	ff010113          	addi	sp,sp,-16
    80004f28:	00813423          	sd	s0,8(sp)
    80004f2c:	01010413          	addi	s0,sp,16
    80004f30:	00002617          	auipc	a2,0x2
    80004f34:	45060613          	addi	a2,a2,1104 # 80007380 <uart_tx_r>
    80004f38:	00002517          	auipc	a0,0x2
    80004f3c:	45050513          	addi	a0,a0,1104 # 80007388 <uart_tx_w>
    80004f40:	00063783          	ld	a5,0(a2)
    80004f44:	00053703          	ld	a4,0(a0)
    80004f48:	04f70263          	beq	a4,a5,80004f8c <uartstart+0x68>
    80004f4c:	100005b7          	lui	a1,0x10000
    80004f50:	00003817          	auipc	a6,0x3
    80004f54:	6e080813          	addi	a6,a6,1760 # 80008630 <uart_tx_buf>
    80004f58:	01c0006f          	j	80004f74 <uartstart+0x50>
    80004f5c:	0006c703          	lbu	a4,0(a3)
    80004f60:	00f63023          	sd	a5,0(a2)
    80004f64:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004f68:	00063783          	ld	a5,0(a2)
    80004f6c:	00053703          	ld	a4,0(a0)
    80004f70:	00f70e63          	beq	a4,a5,80004f8c <uartstart+0x68>
    80004f74:	01f7f713          	andi	a4,a5,31
    80004f78:	00e806b3          	add	a3,a6,a4
    80004f7c:	0055c703          	lbu	a4,5(a1)
    80004f80:	00178793          	addi	a5,a5,1
    80004f84:	02077713          	andi	a4,a4,32
    80004f88:	fc071ae3          	bnez	a4,80004f5c <uartstart+0x38>
    80004f8c:	00813403          	ld	s0,8(sp)
    80004f90:	01010113          	addi	sp,sp,16
    80004f94:	00008067          	ret

0000000080004f98 <uartgetc>:
    80004f98:	ff010113          	addi	sp,sp,-16
    80004f9c:	00813423          	sd	s0,8(sp)
    80004fa0:	01010413          	addi	s0,sp,16
    80004fa4:	10000737          	lui	a4,0x10000
    80004fa8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80004fac:	0017f793          	andi	a5,a5,1
    80004fb0:	00078c63          	beqz	a5,80004fc8 <uartgetc+0x30>
    80004fb4:	00074503          	lbu	a0,0(a4)
    80004fb8:	0ff57513          	andi	a0,a0,255
    80004fbc:	00813403          	ld	s0,8(sp)
    80004fc0:	01010113          	addi	sp,sp,16
    80004fc4:	00008067          	ret
    80004fc8:	fff00513          	li	a0,-1
    80004fcc:	ff1ff06f          	j	80004fbc <uartgetc+0x24>

0000000080004fd0 <uartintr>:
    80004fd0:	100007b7          	lui	a5,0x10000
    80004fd4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80004fd8:	0017f793          	andi	a5,a5,1
    80004fdc:	0a078463          	beqz	a5,80005084 <uartintr+0xb4>
    80004fe0:	fe010113          	addi	sp,sp,-32
    80004fe4:	00813823          	sd	s0,16(sp)
    80004fe8:	00913423          	sd	s1,8(sp)
    80004fec:	00113c23          	sd	ra,24(sp)
    80004ff0:	02010413          	addi	s0,sp,32
    80004ff4:	100004b7          	lui	s1,0x10000
    80004ff8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80004ffc:	0ff57513          	andi	a0,a0,255
    80005000:	fffff097          	auipc	ra,0xfffff
    80005004:	534080e7          	jalr	1332(ra) # 80004534 <consoleintr>
    80005008:	0054c783          	lbu	a5,5(s1)
    8000500c:	0017f793          	andi	a5,a5,1
    80005010:	fe0794e3          	bnez	a5,80004ff8 <uartintr+0x28>
    80005014:	00002617          	auipc	a2,0x2
    80005018:	36c60613          	addi	a2,a2,876 # 80007380 <uart_tx_r>
    8000501c:	00002517          	auipc	a0,0x2
    80005020:	36c50513          	addi	a0,a0,876 # 80007388 <uart_tx_w>
    80005024:	00063783          	ld	a5,0(a2)
    80005028:	00053703          	ld	a4,0(a0)
    8000502c:	04f70263          	beq	a4,a5,80005070 <uartintr+0xa0>
    80005030:	100005b7          	lui	a1,0x10000
    80005034:	00003817          	auipc	a6,0x3
    80005038:	5fc80813          	addi	a6,a6,1532 # 80008630 <uart_tx_buf>
    8000503c:	01c0006f          	j	80005058 <uartintr+0x88>
    80005040:	0006c703          	lbu	a4,0(a3)
    80005044:	00f63023          	sd	a5,0(a2)
    80005048:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000504c:	00063783          	ld	a5,0(a2)
    80005050:	00053703          	ld	a4,0(a0)
    80005054:	00f70e63          	beq	a4,a5,80005070 <uartintr+0xa0>
    80005058:	01f7f713          	andi	a4,a5,31
    8000505c:	00e806b3          	add	a3,a6,a4
    80005060:	0055c703          	lbu	a4,5(a1)
    80005064:	00178793          	addi	a5,a5,1
    80005068:	02077713          	andi	a4,a4,32
    8000506c:	fc071ae3          	bnez	a4,80005040 <uartintr+0x70>
    80005070:	01813083          	ld	ra,24(sp)
    80005074:	01013403          	ld	s0,16(sp)
    80005078:	00813483          	ld	s1,8(sp)
    8000507c:	02010113          	addi	sp,sp,32
    80005080:	00008067          	ret
    80005084:	00002617          	auipc	a2,0x2
    80005088:	2fc60613          	addi	a2,a2,764 # 80007380 <uart_tx_r>
    8000508c:	00002517          	auipc	a0,0x2
    80005090:	2fc50513          	addi	a0,a0,764 # 80007388 <uart_tx_w>
    80005094:	00063783          	ld	a5,0(a2)
    80005098:	00053703          	ld	a4,0(a0)
    8000509c:	04f70263          	beq	a4,a5,800050e0 <uartintr+0x110>
    800050a0:	100005b7          	lui	a1,0x10000
    800050a4:	00003817          	auipc	a6,0x3
    800050a8:	58c80813          	addi	a6,a6,1420 # 80008630 <uart_tx_buf>
    800050ac:	01c0006f          	j	800050c8 <uartintr+0xf8>
    800050b0:	0006c703          	lbu	a4,0(a3)
    800050b4:	00f63023          	sd	a5,0(a2)
    800050b8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800050bc:	00063783          	ld	a5,0(a2)
    800050c0:	00053703          	ld	a4,0(a0)
    800050c4:	02f70063          	beq	a4,a5,800050e4 <uartintr+0x114>
    800050c8:	01f7f713          	andi	a4,a5,31
    800050cc:	00e806b3          	add	a3,a6,a4
    800050d0:	0055c703          	lbu	a4,5(a1)
    800050d4:	00178793          	addi	a5,a5,1
    800050d8:	02077713          	andi	a4,a4,32
    800050dc:	fc071ae3          	bnez	a4,800050b0 <uartintr+0xe0>
    800050e0:	00008067          	ret
    800050e4:	00008067          	ret

00000000800050e8 <kinit>:
    800050e8:	fc010113          	addi	sp,sp,-64
    800050ec:	02913423          	sd	s1,40(sp)
    800050f0:	fffff7b7          	lui	a5,0xfffff
    800050f4:	00004497          	auipc	s1,0x4
    800050f8:	55b48493          	addi	s1,s1,1371 # 8000964f <end+0xfff>
    800050fc:	02813823          	sd	s0,48(sp)
    80005100:	01313c23          	sd	s3,24(sp)
    80005104:	00f4f4b3          	and	s1,s1,a5
    80005108:	02113c23          	sd	ra,56(sp)
    8000510c:	03213023          	sd	s2,32(sp)
    80005110:	01413823          	sd	s4,16(sp)
    80005114:	01513423          	sd	s5,8(sp)
    80005118:	04010413          	addi	s0,sp,64
    8000511c:	000017b7          	lui	a5,0x1
    80005120:	01100993          	li	s3,17
    80005124:	00f487b3          	add	a5,s1,a5
    80005128:	01b99993          	slli	s3,s3,0x1b
    8000512c:	06f9e063          	bltu	s3,a5,8000518c <kinit+0xa4>
    80005130:	00003a97          	auipc	s5,0x3
    80005134:	520a8a93          	addi	s5,s5,1312 # 80008650 <end>
    80005138:	0754ec63          	bltu	s1,s5,800051b0 <kinit+0xc8>
    8000513c:	0734fa63          	bgeu	s1,s3,800051b0 <kinit+0xc8>
    80005140:	00088a37          	lui	s4,0x88
    80005144:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80005148:	00002917          	auipc	s2,0x2
    8000514c:	24890913          	addi	s2,s2,584 # 80007390 <kmem>
    80005150:	00ca1a13          	slli	s4,s4,0xc
    80005154:	0140006f          	j	80005168 <kinit+0x80>
    80005158:	000017b7          	lui	a5,0x1
    8000515c:	00f484b3          	add	s1,s1,a5
    80005160:	0554e863          	bltu	s1,s5,800051b0 <kinit+0xc8>
    80005164:	0534f663          	bgeu	s1,s3,800051b0 <kinit+0xc8>
    80005168:	00001637          	lui	a2,0x1
    8000516c:	00100593          	li	a1,1
    80005170:	00048513          	mv	a0,s1
    80005174:	00000097          	auipc	ra,0x0
    80005178:	5e4080e7          	jalr	1508(ra) # 80005758 <__memset>
    8000517c:	00093783          	ld	a5,0(s2)
    80005180:	00f4b023          	sd	a5,0(s1)
    80005184:	00993023          	sd	s1,0(s2)
    80005188:	fd4498e3          	bne	s1,s4,80005158 <kinit+0x70>
    8000518c:	03813083          	ld	ra,56(sp)
    80005190:	03013403          	ld	s0,48(sp)
    80005194:	02813483          	ld	s1,40(sp)
    80005198:	02013903          	ld	s2,32(sp)
    8000519c:	01813983          	ld	s3,24(sp)
    800051a0:	01013a03          	ld	s4,16(sp)
    800051a4:	00813a83          	ld	s5,8(sp)
    800051a8:	04010113          	addi	sp,sp,64
    800051ac:	00008067          	ret
    800051b0:	00001517          	auipc	a0,0x1
    800051b4:	1f050513          	addi	a0,a0,496 # 800063a0 <digits+0x18>
    800051b8:	fffff097          	auipc	ra,0xfffff
    800051bc:	4b4080e7          	jalr	1204(ra) # 8000466c <panic>

00000000800051c0 <freerange>:
    800051c0:	fc010113          	addi	sp,sp,-64
    800051c4:	000017b7          	lui	a5,0x1
    800051c8:	02913423          	sd	s1,40(sp)
    800051cc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800051d0:	009504b3          	add	s1,a0,s1
    800051d4:	fffff537          	lui	a0,0xfffff
    800051d8:	02813823          	sd	s0,48(sp)
    800051dc:	02113c23          	sd	ra,56(sp)
    800051e0:	03213023          	sd	s2,32(sp)
    800051e4:	01313c23          	sd	s3,24(sp)
    800051e8:	01413823          	sd	s4,16(sp)
    800051ec:	01513423          	sd	s5,8(sp)
    800051f0:	01613023          	sd	s6,0(sp)
    800051f4:	04010413          	addi	s0,sp,64
    800051f8:	00a4f4b3          	and	s1,s1,a0
    800051fc:	00f487b3          	add	a5,s1,a5
    80005200:	06f5e463          	bltu	a1,a5,80005268 <freerange+0xa8>
    80005204:	00003a97          	auipc	s5,0x3
    80005208:	44ca8a93          	addi	s5,s5,1100 # 80008650 <end>
    8000520c:	0954e263          	bltu	s1,s5,80005290 <freerange+0xd0>
    80005210:	01100993          	li	s3,17
    80005214:	01b99993          	slli	s3,s3,0x1b
    80005218:	0734fc63          	bgeu	s1,s3,80005290 <freerange+0xd0>
    8000521c:	00058a13          	mv	s4,a1
    80005220:	00002917          	auipc	s2,0x2
    80005224:	17090913          	addi	s2,s2,368 # 80007390 <kmem>
    80005228:	00002b37          	lui	s6,0x2
    8000522c:	0140006f          	j	80005240 <freerange+0x80>
    80005230:	000017b7          	lui	a5,0x1
    80005234:	00f484b3          	add	s1,s1,a5
    80005238:	0554ec63          	bltu	s1,s5,80005290 <freerange+0xd0>
    8000523c:	0534fa63          	bgeu	s1,s3,80005290 <freerange+0xd0>
    80005240:	00001637          	lui	a2,0x1
    80005244:	00100593          	li	a1,1
    80005248:	00048513          	mv	a0,s1
    8000524c:	00000097          	auipc	ra,0x0
    80005250:	50c080e7          	jalr	1292(ra) # 80005758 <__memset>
    80005254:	00093703          	ld	a4,0(s2)
    80005258:	016487b3          	add	a5,s1,s6
    8000525c:	00e4b023          	sd	a4,0(s1)
    80005260:	00993023          	sd	s1,0(s2)
    80005264:	fcfa76e3          	bgeu	s4,a5,80005230 <freerange+0x70>
    80005268:	03813083          	ld	ra,56(sp)
    8000526c:	03013403          	ld	s0,48(sp)
    80005270:	02813483          	ld	s1,40(sp)
    80005274:	02013903          	ld	s2,32(sp)
    80005278:	01813983          	ld	s3,24(sp)
    8000527c:	01013a03          	ld	s4,16(sp)
    80005280:	00813a83          	ld	s5,8(sp)
    80005284:	00013b03          	ld	s6,0(sp)
    80005288:	04010113          	addi	sp,sp,64
    8000528c:	00008067          	ret
    80005290:	00001517          	auipc	a0,0x1
    80005294:	11050513          	addi	a0,a0,272 # 800063a0 <digits+0x18>
    80005298:	fffff097          	auipc	ra,0xfffff
    8000529c:	3d4080e7          	jalr	980(ra) # 8000466c <panic>

00000000800052a0 <kfree>:
    800052a0:	fe010113          	addi	sp,sp,-32
    800052a4:	00813823          	sd	s0,16(sp)
    800052a8:	00113c23          	sd	ra,24(sp)
    800052ac:	00913423          	sd	s1,8(sp)
    800052b0:	02010413          	addi	s0,sp,32
    800052b4:	03451793          	slli	a5,a0,0x34
    800052b8:	04079c63          	bnez	a5,80005310 <kfree+0x70>
    800052bc:	00003797          	auipc	a5,0x3
    800052c0:	39478793          	addi	a5,a5,916 # 80008650 <end>
    800052c4:	00050493          	mv	s1,a0
    800052c8:	04f56463          	bltu	a0,a5,80005310 <kfree+0x70>
    800052cc:	01100793          	li	a5,17
    800052d0:	01b79793          	slli	a5,a5,0x1b
    800052d4:	02f57e63          	bgeu	a0,a5,80005310 <kfree+0x70>
    800052d8:	00001637          	lui	a2,0x1
    800052dc:	00100593          	li	a1,1
    800052e0:	00000097          	auipc	ra,0x0
    800052e4:	478080e7          	jalr	1144(ra) # 80005758 <__memset>
    800052e8:	00002797          	auipc	a5,0x2
    800052ec:	0a878793          	addi	a5,a5,168 # 80007390 <kmem>
    800052f0:	0007b703          	ld	a4,0(a5)
    800052f4:	01813083          	ld	ra,24(sp)
    800052f8:	01013403          	ld	s0,16(sp)
    800052fc:	00e4b023          	sd	a4,0(s1)
    80005300:	0097b023          	sd	s1,0(a5)
    80005304:	00813483          	ld	s1,8(sp)
    80005308:	02010113          	addi	sp,sp,32
    8000530c:	00008067          	ret
    80005310:	00001517          	auipc	a0,0x1
    80005314:	09050513          	addi	a0,a0,144 # 800063a0 <digits+0x18>
    80005318:	fffff097          	auipc	ra,0xfffff
    8000531c:	354080e7          	jalr	852(ra) # 8000466c <panic>

0000000080005320 <kalloc>:
    80005320:	fe010113          	addi	sp,sp,-32
    80005324:	00813823          	sd	s0,16(sp)
    80005328:	00913423          	sd	s1,8(sp)
    8000532c:	00113c23          	sd	ra,24(sp)
    80005330:	02010413          	addi	s0,sp,32
    80005334:	00002797          	auipc	a5,0x2
    80005338:	05c78793          	addi	a5,a5,92 # 80007390 <kmem>
    8000533c:	0007b483          	ld	s1,0(a5)
    80005340:	02048063          	beqz	s1,80005360 <kalloc+0x40>
    80005344:	0004b703          	ld	a4,0(s1)
    80005348:	00001637          	lui	a2,0x1
    8000534c:	00500593          	li	a1,5
    80005350:	00048513          	mv	a0,s1
    80005354:	00e7b023          	sd	a4,0(a5)
    80005358:	00000097          	auipc	ra,0x0
    8000535c:	400080e7          	jalr	1024(ra) # 80005758 <__memset>
    80005360:	01813083          	ld	ra,24(sp)
    80005364:	01013403          	ld	s0,16(sp)
    80005368:	00048513          	mv	a0,s1
    8000536c:	00813483          	ld	s1,8(sp)
    80005370:	02010113          	addi	sp,sp,32
    80005374:	00008067          	ret

0000000080005378 <initlock>:
    80005378:	ff010113          	addi	sp,sp,-16
    8000537c:	00813423          	sd	s0,8(sp)
    80005380:	01010413          	addi	s0,sp,16
    80005384:	00813403          	ld	s0,8(sp)
    80005388:	00b53423          	sd	a1,8(a0)
    8000538c:	00052023          	sw	zero,0(a0)
    80005390:	00053823          	sd	zero,16(a0)
    80005394:	01010113          	addi	sp,sp,16
    80005398:	00008067          	ret

000000008000539c <acquire>:
    8000539c:	fe010113          	addi	sp,sp,-32
    800053a0:	00813823          	sd	s0,16(sp)
    800053a4:	00913423          	sd	s1,8(sp)
    800053a8:	00113c23          	sd	ra,24(sp)
    800053ac:	01213023          	sd	s2,0(sp)
    800053b0:	02010413          	addi	s0,sp,32
    800053b4:	00050493          	mv	s1,a0
    800053b8:	10002973          	csrr	s2,sstatus
    800053bc:	100027f3          	csrr	a5,sstatus
    800053c0:	ffd7f793          	andi	a5,a5,-3
    800053c4:	10079073          	csrw	sstatus,a5
    800053c8:	fffff097          	auipc	ra,0xfffff
    800053cc:	8e8080e7          	jalr	-1816(ra) # 80003cb0 <mycpu>
    800053d0:	07852783          	lw	a5,120(a0)
    800053d4:	06078e63          	beqz	a5,80005450 <acquire+0xb4>
    800053d8:	fffff097          	auipc	ra,0xfffff
    800053dc:	8d8080e7          	jalr	-1832(ra) # 80003cb0 <mycpu>
    800053e0:	07852783          	lw	a5,120(a0)
    800053e4:	0004a703          	lw	a4,0(s1)
    800053e8:	0017879b          	addiw	a5,a5,1
    800053ec:	06f52c23          	sw	a5,120(a0)
    800053f0:	04071063          	bnez	a4,80005430 <acquire+0x94>
    800053f4:	00100713          	li	a4,1
    800053f8:	00070793          	mv	a5,a4
    800053fc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80005400:	0007879b          	sext.w	a5,a5
    80005404:	fe079ae3          	bnez	a5,800053f8 <acquire+0x5c>
    80005408:	0ff0000f          	fence
    8000540c:	fffff097          	auipc	ra,0xfffff
    80005410:	8a4080e7          	jalr	-1884(ra) # 80003cb0 <mycpu>
    80005414:	01813083          	ld	ra,24(sp)
    80005418:	01013403          	ld	s0,16(sp)
    8000541c:	00a4b823          	sd	a0,16(s1)
    80005420:	00013903          	ld	s2,0(sp)
    80005424:	00813483          	ld	s1,8(sp)
    80005428:	02010113          	addi	sp,sp,32
    8000542c:	00008067          	ret
    80005430:	0104b903          	ld	s2,16(s1)
    80005434:	fffff097          	auipc	ra,0xfffff
    80005438:	87c080e7          	jalr	-1924(ra) # 80003cb0 <mycpu>
    8000543c:	faa91ce3          	bne	s2,a0,800053f4 <acquire+0x58>
    80005440:	00001517          	auipc	a0,0x1
    80005444:	f6850513          	addi	a0,a0,-152 # 800063a8 <digits+0x20>
    80005448:	fffff097          	auipc	ra,0xfffff
    8000544c:	224080e7          	jalr	548(ra) # 8000466c <panic>
    80005450:	00195913          	srli	s2,s2,0x1
    80005454:	fffff097          	auipc	ra,0xfffff
    80005458:	85c080e7          	jalr	-1956(ra) # 80003cb0 <mycpu>
    8000545c:	00197913          	andi	s2,s2,1
    80005460:	07252e23          	sw	s2,124(a0)
    80005464:	f75ff06f          	j	800053d8 <acquire+0x3c>

0000000080005468 <release>:
    80005468:	fe010113          	addi	sp,sp,-32
    8000546c:	00813823          	sd	s0,16(sp)
    80005470:	00113c23          	sd	ra,24(sp)
    80005474:	00913423          	sd	s1,8(sp)
    80005478:	01213023          	sd	s2,0(sp)
    8000547c:	02010413          	addi	s0,sp,32
    80005480:	00052783          	lw	a5,0(a0)
    80005484:	00079a63          	bnez	a5,80005498 <release+0x30>
    80005488:	00001517          	auipc	a0,0x1
    8000548c:	f2850513          	addi	a0,a0,-216 # 800063b0 <digits+0x28>
    80005490:	fffff097          	auipc	ra,0xfffff
    80005494:	1dc080e7          	jalr	476(ra) # 8000466c <panic>
    80005498:	01053903          	ld	s2,16(a0)
    8000549c:	00050493          	mv	s1,a0
    800054a0:	fffff097          	auipc	ra,0xfffff
    800054a4:	810080e7          	jalr	-2032(ra) # 80003cb0 <mycpu>
    800054a8:	fea910e3          	bne	s2,a0,80005488 <release+0x20>
    800054ac:	0004b823          	sd	zero,16(s1)
    800054b0:	0ff0000f          	fence
    800054b4:	0f50000f          	fence	iorw,ow
    800054b8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800054bc:	ffffe097          	auipc	ra,0xffffe
    800054c0:	7f4080e7          	jalr	2036(ra) # 80003cb0 <mycpu>
    800054c4:	100027f3          	csrr	a5,sstatus
    800054c8:	0027f793          	andi	a5,a5,2
    800054cc:	04079a63          	bnez	a5,80005520 <release+0xb8>
    800054d0:	07852783          	lw	a5,120(a0)
    800054d4:	02f05e63          	blez	a5,80005510 <release+0xa8>
    800054d8:	fff7871b          	addiw	a4,a5,-1
    800054dc:	06e52c23          	sw	a4,120(a0)
    800054e0:	00071c63          	bnez	a4,800054f8 <release+0x90>
    800054e4:	07c52783          	lw	a5,124(a0)
    800054e8:	00078863          	beqz	a5,800054f8 <release+0x90>
    800054ec:	100027f3          	csrr	a5,sstatus
    800054f0:	0027e793          	ori	a5,a5,2
    800054f4:	10079073          	csrw	sstatus,a5
    800054f8:	01813083          	ld	ra,24(sp)
    800054fc:	01013403          	ld	s0,16(sp)
    80005500:	00813483          	ld	s1,8(sp)
    80005504:	00013903          	ld	s2,0(sp)
    80005508:	02010113          	addi	sp,sp,32
    8000550c:	00008067          	ret
    80005510:	00001517          	auipc	a0,0x1
    80005514:	ec050513          	addi	a0,a0,-320 # 800063d0 <digits+0x48>
    80005518:	fffff097          	auipc	ra,0xfffff
    8000551c:	154080e7          	jalr	340(ra) # 8000466c <panic>
    80005520:	00001517          	auipc	a0,0x1
    80005524:	e9850513          	addi	a0,a0,-360 # 800063b8 <digits+0x30>
    80005528:	fffff097          	auipc	ra,0xfffff
    8000552c:	144080e7          	jalr	324(ra) # 8000466c <panic>

0000000080005530 <holding>:
    80005530:	00052783          	lw	a5,0(a0)
    80005534:	00079663          	bnez	a5,80005540 <holding+0x10>
    80005538:	00000513          	li	a0,0
    8000553c:	00008067          	ret
    80005540:	fe010113          	addi	sp,sp,-32
    80005544:	00813823          	sd	s0,16(sp)
    80005548:	00913423          	sd	s1,8(sp)
    8000554c:	00113c23          	sd	ra,24(sp)
    80005550:	02010413          	addi	s0,sp,32
    80005554:	01053483          	ld	s1,16(a0)
    80005558:	ffffe097          	auipc	ra,0xffffe
    8000555c:	758080e7          	jalr	1880(ra) # 80003cb0 <mycpu>
    80005560:	01813083          	ld	ra,24(sp)
    80005564:	01013403          	ld	s0,16(sp)
    80005568:	40a48533          	sub	a0,s1,a0
    8000556c:	00153513          	seqz	a0,a0
    80005570:	00813483          	ld	s1,8(sp)
    80005574:	02010113          	addi	sp,sp,32
    80005578:	00008067          	ret

000000008000557c <push_off>:
    8000557c:	fe010113          	addi	sp,sp,-32
    80005580:	00813823          	sd	s0,16(sp)
    80005584:	00113c23          	sd	ra,24(sp)
    80005588:	00913423          	sd	s1,8(sp)
    8000558c:	02010413          	addi	s0,sp,32
    80005590:	100024f3          	csrr	s1,sstatus
    80005594:	100027f3          	csrr	a5,sstatus
    80005598:	ffd7f793          	andi	a5,a5,-3
    8000559c:	10079073          	csrw	sstatus,a5
    800055a0:	ffffe097          	auipc	ra,0xffffe
    800055a4:	710080e7          	jalr	1808(ra) # 80003cb0 <mycpu>
    800055a8:	07852783          	lw	a5,120(a0)
    800055ac:	02078663          	beqz	a5,800055d8 <push_off+0x5c>
    800055b0:	ffffe097          	auipc	ra,0xffffe
    800055b4:	700080e7          	jalr	1792(ra) # 80003cb0 <mycpu>
    800055b8:	07852783          	lw	a5,120(a0)
    800055bc:	01813083          	ld	ra,24(sp)
    800055c0:	01013403          	ld	s0,16(sp)
    800055c4:	0017879b          	addiw	a5,a5,1
    800055c8:	06f52c23          	sw	a5,120(a0)
    800055cc:	00813483          	ld	s1,8(sp)
    800055d0:	02010113          	addi	sp,sp,32
    800055d4:	00008067          	ret
    800055d8:	0014d493          	srli	s1,s1,0x1
    800055dc:	ffffe097          	auipc	ra,0xffffe
    800055e0:	6d4080e7          	jalr	1748(ra) # 80003cb0 <mycpu>
    800055e4:	0014f493          	andi	s1,s1,1
    800055e8:	06952e23          	sw	s1,124(a0)
    800055ec:	fc5ff06f          	j	800055b0 <push_off+0x34>

00000000800055f0 <pop_off>:
    800055f0:	ff010113          	addi	sp,sp,-16
    800055f4:	00813023          	sd	s0,0(sp)
    800055f8:	00113423          	sd	ra,8(sp)
    800055fc:	01010413          	addi	s0,sp,16
    80005600:	ffffe097          	auipc	ra,0xffffe
    80005604:	6b0080e7          	jalr	1712(ra) # 80003cb0 <mycpu>
    80005608:	100027f3          	csrr	a5,sstatus
    8000560c:	0027f793          	andi	a5,a5,2
    80005610:	04079663          	bnez	a5,8000565c <pop_off+0x6c>
    80005614:	07852783          	lw	a5,120(a0)
    80005618:	02f05a63          	blez	a5,8000564c <pop_off+0x5c>
    8000561c:	fff7871b          	addiw	a4,a5,-1
    80005620:	06e52c23          	sw	a4,120(a0)
    80005624:	00071c63          	bnez	a4,8000563c <pop_off+0x4c>
    80005628:	07c52783          	lw	a5,124(a0)
    8000562c:	00078863          	beqz	a5,8000563c <pop_off+0x4c>
    80005630:	100027f3          	csrr	a5,sstatus
    80005634:	0027e793          	ori	a5,a5,2
    80005638:	10079073          	csrw	sstatus,a5
    8000563c:	00813083          	ld	ra,8(sp)
    80005640:	00013403          	ld	s0,0(sp)
    80005644:	01010113          	addi	sp,sp,16
    80005648:	00008067          	ret
    8000564c:	00001517          	auipc	a0,0x1
    80005650:	d8450513          	addi	a0,a0,-636 # 800063d0 <digits+0x48>
    80005654:	fffff097          	auipc	ra,0xfffff
    80005658:	018080e7          	jalr	24(ra) # 8000466c <panic>
    8000565c:	00001517          	auipc	a0,0x1
    80005660:	d5c50513          	addi	a0,a0,-676 # 800063b8 <digits+0x30>
    80005664:	fffff097          	auipc	ra,0xfffff
    80005668:	008080e7          	jalr	8(ra) # 8000466c <panic>

000000008000566c <push_on>:
    8000566c:	fe010113          	addi	sp,sp,-32
    80005670:	00813823          	sd	s0,16(sp)
    80005674:	00113c23          	sd	ra,24(sp)
    80005678:	00913423          	sd	s1,8(sp)
    8000567c:	02010413          	addi	s0,sp,32
    80005680:	100024f3          	csrr	s1,sstatus
    80005684:	100027f3          	csrr	a5,sstatus
    80005688:	0027e793          	ori	a5,a5,2
    8000568c:	10079073          	csrw	sstatus,a5
    80005690:	ffffe097          	auipc	ra,0xffffe
    80005694:	620080e7          	jalr	1568(ra) # 80003cb0 <mycpu>
    80005698:	07852783          	lw	a5,120(a0)
    8000569c:	02078663          	beqz	a5,800056c8 <push_on+0x5c>
    800056a0:	ffffe097          	auipc	ra,0xffffe
    800056a4:	610080e7          	jalr	1552(ra) # 80003cb0 <mycpu>
    800056a8:	07852783          	lw	a5,120(a0)
    800056ac:	01813083          	ld	ra,24(sp)
    800056b0:	01013403          	ld	s0,16(sp)
    800056b4:	0017879b          	addiw	a5,a5,1
    800056b8:	06f52c23          	sw	a5,120(a0)
    800056bc:	00813483          	ld	s1,8(sp)
    800056c0:	02010113          	addi	sp,sp,32
    800056c4:	00008067          	ret
    800056c8:	0014d493          	srli	s1,s1,0x1
    800056cc:	ffffe097          	auipc	ra,0xffffe
    800056d0:	5e4080e7          	jalr	1508(ra) # 80003cb0 <mycpu>
    800056d4:	0014f493          	andi	s1,s1,1
    800056d8:	06952e23          	sw	s1,124(a0)
    800056dc:	fc5ff06f          	j	800056a0 <push_on+0x34>

00000000800056e0 <pop_on>:
    800056e0:	ff010113          	addi	sp,sp,-16
    800056e4:	00813023          	sd	s0,0(sp)
    800056e8:	00113423          	sd	ra,8(sp)
    800056ec:	01010413          	addi	s0,sp,16
    800056f0:	ffffe097          	auipc	ra,0xffffe
    800056f4:	5c0080e7          	jalr	1472(ra) # 80003cb0 <mycpu>
    800056f8:	100027f3          	csrr	a5,sstatus
    800056fc:	0027f793          	andi	a5,a5,2
    80005700:	04078463          	beqz	a5,80005748 <pop_on+0x68>
    80005704:	07852783          	lw	a5,120(a0)
    80005708:	02f05863          	blez	a5,80005738 <pop_on+0x58>
    8000570c:	fff7879b          	addiw	a5,a5,-1
    80005710:	06f52c23          	sw	a5,120(a0)
    80005714:	07853783          	ld	a5,120(a0)
    80005718:	00079863          	bnez	a5,80005728 <pop_on+0x48>
    8000571c:	100027f3          	csrr	a5,sstatus
    80005720:	ffd7f793          	andi	a5,a5,-3
    80005724:	10079073          	csrw	sstatus,a5
    80005728:	00813083          	ld	ra,8(sp)
    8000572c:	00013403          	ld	s0,0(sp)
    80005730:	01010113          	addi	sp,sp,16
    80005734:	00008067          	ret
    80005738:	00001517          	auipc	a0,0x1
    8000573c:	cc050513          	addi	a0,a0,-832 # 800063f8 <digits+0x70>
    80005740:	fffff097          	auipc	ra,0xfffff
    80005744:	f2c080e7          	jalr	-212(ra) # 8000466c <panic>
    80005748:	00001517          	auipc	a0,0x1
    8000574c:	c9050513          	addi	a0,a0,-880 # 800063d8 <digits+0x50>
    80005750:	fffff097          	auipc	ra,0xfffff
    80005754:	f1c080e7          	jalr	-228(ra) # 8000466c <panic>

0000000080005758 <__memset>:
    80005758:	ff010113          	addi	sp,sp,-16
    8000575c:	00813423          	sd	s0,8(sp)
    80005760:	01010413          	addi	s0,sp,16
    80005764:	1a060e63          	beqz	a2,80005920 <__memset+0x1c8>
    80005768:	40a007b3          	neg	a5,a0
    8000576c:	0077f793          	andi	a5,a5,7
    80005770:	00778693          	addi	a3,a5,7
    80005774:	00b00813          	li	a6,11
    80005778:	0ff5f593          	andi	a1,a1,255
    8000577c:	fff6071b          	addiw	a4,a2,-1
    80005780:	1b06e663          	bltu	a3,a6,8000592c <__memset+0x1d4>
    80005784:	1cd76463          	bltu	a4,a3,8000594c <__memset+0x1f4>
    80005788:	1a078e63          	beqz	a5,80005944 <__memset+0x1ec>
    8000578c:	00b50023          	sb	a1,0(a0)
    80005790:	00100713          	li	a4,1
    80005794:	1ae78463          	beq	a5,a4,8000593c <__memset+0x1e4>
    80005798:	00b500a3          	sb	a1,1(a0)
    8000579c:	00200713          	li	a4,2
    800057a0:	1ae78a63          	beq	a5,a4,80005954 <__memset+0x1fc>
    800057a4:	00b50123          	sb	a1,2(a0)
    800057a8:	00300713          	li	a4,3
    800057ac:	18e78463          	beq	a5,a4,80005934 <__memset+0x1dc>
    800057b0:	00b501a3          	sb	a1,3(a0)
    800057b4:	00400713          	li	a4,4
    800057b8:	1ae78263          	beq	a5,a4,8000595c <__memset+0x204>
    800057bc:	00b50223          	sb	a1,4(a0)
    800057c0:	00500713          	li	a4,5
    800057c4:	1ae78063          	beq	a5,a4,80005964 <__memset+0x20c>
    800057c8:	00b502a3          	sb	a1,5(a0)
    800057cc:	00700713          	li	a4,7
    800057d0:	18e79e63          	bne	a5,a4,8000596c <__memset+0x214>
    800057d4:	00b50323          	sb	a1,6(a0)
    800057d8:	00700e93          	li	t4,7
    800057dc:	00859713          	slli	a4,a1,0x8
    800057e0:	00e5e733          	or	a4,a1,a4
    800057e4:	01059e13          	slli	t3,a1,0x10
    800057e8:	01c76e33          	or	t3,a4,t3
    800057ec:	01859313          	slli	t1,a1,0x18
    800057f0:	006e6333          	or	t1,t3,t1
    800057f4:	02059893          	slli	a7,a1,0x20
    800057f8:	40f60e3b          	subw	t3,a2,a5
    800057fc:	011368b3          	or	a7,t1,a7
    80005800:	02859813          	slli	a6,a1,0x28
    80005804:	0108e833          	or	a6,a7,a6
    80005808:	03059693          	slli	a3,a1,0x30
    8000580c:	003e589b          	srliw	a7,t3,0x3
    80005810:	00d866b3          	or	a3,a6,a3
    80005814:	03859713          	slli	a4,a1,0x38
    80005818:	00389813          	slli	a6,a7,0x3
    8000581c:	00f507b3          	add	a5,a0,a5
    80005820:	00e6e733          	or	a4,a3,a4
    80005824:	000e089b          	sext.w	a7,t3
    80005828:	00f806b3          	add	a3,a6,a5
    8000582c:	00e7b023          	sd	a4,0(a5)
    80005830:	00878793          	addi	a5,a5,8
    80005834:	fed79ce3          	bne	a5,a3,8000582c <__memset+0xd4>
    80005838:	ff8e7793          	andi	a5,t3,-8
    8000583c:	0007871b          	sext.w	a4,a5
    80005840:	01d787bb          	addw	a5,a5,t4
    80005844:	0ce88e63          	beq	a7,a4,80005920 <__memset+0x1c8>
    80005848:	00f50733          	add	a4,a0,a5
    8000584c:	00b70023          	sb	a1,0(a4)
    80005850:	0017871b          	addiw	a4,a5,1
    80005854:	0cc77663          	bgeu	a4,a2,80005920 <__memset+0x1c8>
    80005858:	00e50733          	add	a4,a0,a4
    8000585c:	00b70023          	sb	a1,0(a4)
    80005860:	0027871b          	addiw	a4,a5,2
    80005864:	0ac77e63          	bgeu	a4,a2,80005920 <__memset+0x1c8>
    80005868:	00e50733          	add	a4,a0,a4
    8000586c:	00b70023          	sb	a1,0(a4)
    80005870:	0037871b          	addiw	a4,a5,3
    80005874:	0ac77663          	bgeu	a4,a2,80005920 <__memset+0x1c8>
    80005878:	00e50733          	add	a4,a0,a4
    8000587c:	00b70023          	sb	a1,0(a4)
    80005880:	0047871b          	addiw	a4,a5,4
    80005884:	08c77e63          	bgeu	a4,a2,80005920 <__memset+0x1c8>
    80005888:	00e50733          	add	a4,a0,a4
    8000588c:	00b70023          	sb	a1,0(a4)
    80005890:	0057871b          	addiw	a4,a5,5
    80005894:	08c77663          	bgeu	a4,a2,80005920 <__memset+0x1c8>
    80005898:	00e50733          	add	a4,a0,a4
    8000589c:	00b70023          	sb	a1,0(a4)
    800058a0:	0067871b          	addiw	a4,a5,6
    800058a4:	06c77e63          	bgeu	a4,a2,80005920 <__memset+0x1c8>
    800058a8:	00e50733          	add	a4,a0,a4
    800058ac:	00b70023          	sb	a1,0(a4)
    800058b0:	0077871b          	addiw	a4,a5,7
    800058b4:	06c77663          	bgeu	a4,a2,80005920 <__memset+0x1c8>
    800058b8:	00e50733          	add	a4,a0,a4
    800058bc:	00b70023          	sb	a1,0(a4)
    800058c0:	0087871b          	addiw	a4,a5,8
    800058c4:	04c77e63          	bgeu	a4,a2,80005920 <__memset+0x1c8>
    800058c8:	00e50733          	add	a4,a0,a4
    800058cc:	00b70023          	sb	a1,0(a4)
    800058d0:	0097871b          	addiw	a4,a5,9
    800058d4:	04c77663          	bgeu	a4,a2,80005920 <__memset+0x1c8>
    800058d8:	00e50733          	add	a4,a0,a4
    800058dc:	00b70023          	sb	a1,0(a4)
    800058e0:	00a7871b          	addiw	a4,a5,10
    800058e4:	02c77e63          	bgeu	a4,a2,80005920 <__memset+0x1c8>
    800058e8:	00e50733          	add	a4,a0,a4
    800058ec:	00b70023          	sb	a1,0(a4)
    800058f0:	00b7871b          	addiw	a4,a5,11
    800058f4:	02c77663          	bgeu	a4,a2,80005920 <__memset+0x1c8>
    800058f8:	00e50733          	add	a4,a0,a4
    800058fc:	00b70023          	sb	a1,0(a4)
    80005900:	00c7871b          	addiw	a4,a5,12
    80005904:	00c77e63          	bgeu	a4,a2,80005920 <__memset+0x1c8>
    80005908:	00e50733          	add	a4,a0,a4
    8000590c:	00b70023          	sb	a1,0(a4)
    80005910:	00d7879b          	addiw	a5,a5,13
    80005914:	00c7f663          	bgeu	a5,a2,80005920 <__memset+0x1c8>
    80005918:	00f507b3          	add	a5,a0,a5
    8000591c:	00b78023          	sb	a1,0(a5)
    80005920:	00813403          	ld	s0,8(sp)
    80005924:	01010113          	addi	sp,sp,16
    80005928:	00008067          	ret
    8000592c:	00b00693          	li	a3,11
    80005930:	e55ff06f          	j	80005784 <__memset+0x2c>
    80005934:	00300e93          	li	t4,3
    80005938:	ea5ff06f          	j	800057dc <__memset+0x84>
    8000593c:	00100e93          	li	t4,1
    80005940:	e9dff06f          	j	800057dc <__memset+0x84>
    80005944:	00000e93          	li	t4,0
    80005948:	e95ff06f          	j	800057dc <__memset+0x84>
    8000594c:	00000793          	li	a5,0
    80005950:	ef9ff06f          	j	80005848 <__memset+0xf0>
    80005954:	00200e93          	li	t4,2
    80005958:	e85ff06f          	j	800057dc <__memset+0x84>
    8000595c:	00400e93          	li	t4,4
    80005960:	e7dff06f          	j	800057dc <__memset+0x84>
    80005964:	00500e93          	li	t4,5
    80005968:	e75ff06f          	j	800057dc <__memset+0x84>
    8000596c:	00600e93          	li	t4,6
    80005970:	e6dff06f          	j	800057dc <__memset+0x84>

0000000080005974 <__memmove>:
    80005974:	ff010113          	addi	sp,sp,-16
    80005978:	00813423          	sd	s0,8(sp)
    8000597c:	01010413          	addi	s0,sp,16
    80005980:	0e060863          	beqz	a2,80005a70 <__memmove+0xfc>
    80005984:	fff6069b          	addiw	a3,a2,-1
    80005988:	0006881b          	sext.w	a6,a3
    8000598c:	0ea5e863          	bltu	a1,a0,80005a7c <__memmove+0x108>
    80005990:	00758713          	addi	a4,a1,7
    80005994:	00a5e7b3          	or	a5,a1,a0
    80005998:	40a70733          	sub	a4,a4,a0
    8000599c:	0077f793          	andi	a5,a5,7
    800059a0:	00f73713          	sltiu	a4,a4,15
    800059a4:	00174713          	xori	a4,a4,1
    800059a8:	0017b793          	seqz	a5,a5
    800059ac:	00e7f7b3          	and	a5,a5,a4
    800059b0:	10078863          	beqz	a5,80005ac0 <__memmove+0x14c>
    800059b4:	00900793          	li	a5,9
    800059b8:	1107f463          	bgeu	a5,a6,80005ac0 <__memmove+0x14c>
    800059bc:	0036581b          	srliw	a6,a2,0x3
    800059c0:	fff8081b          	addiw	a6,a6,-1
    800059c4:	02081813          	slli	a6,a6,0x20
    800059c8:	01d85893          	srli	a7,a6,0x1d
    800059cc:	00858813          	addi	a6,a1,8
    800059d0:	00058793          	mv	a5,a1
    800059d4:	00050713          	mv	a4,a0
    800059d8:	01088833          	add	a6,a7,a6
    800059dc:	0007b883          	ld	a7,0(a5)
    800059e0:	00878793          	addi	a5,a5,8
    800059e4:	00870713          	addi	a4,a4,8
    800059e8:	ff173c23          	sd	a7,-8(a4)
    800059ec:	ff0798e3          	bne	a5,a6,800059dc <__memmove+0x68>
    800059f0:	ff867713          	andi	a4,a2,-8
    800059f4:	02071793          	slli	a5,a4,0x20
    800059f8:	0207d793          	srli	a5,a5,0x20
    800059fc:	00f585b3          	add	a1,a1,a5
    80005a00:	40e686bb          	subw	a3,a3,a4
    80005a04:	00f507b3          	add	a5,a0,a5
    80005a08:	06e60463          	beq	a2,a4,80005a70 <__memmove+0xfc>
    80005a0c:	0005c703          	lbu	a4,0(a1)
    80005a10:	00e78023          	sb	a4,0(a5)
    80005a14:	04068e63          	beqz	a3,80005a70 <__memmove+0xfc>
    80005a18:	0015c603          	lbu	a2,1(a1)
    80005a1c:	00100713          	li	a4,1
    80005a20:	00c780a3          	sb	a2,1(a5)
    80005a24:	04e68663          	beq	a3,a4,80005a70 <__memmove+0xfc>
    80005a28:	0025c603          	lbu	a2,2(a1)
    80005a2c:	00200713          	li	a4,2
    80005a30:	00c78123          	sb	a2,2(a5)
    80005a34:	02e68e63          	beq	a3,a4,80005a70 <__memmove+0xfc>
    80005a38:	0035c603          	lbu	a2,3(a1)
    80005a3c:	00300713          	li	a4,3
    80005a40:	00c781a3          	sb	a2,3(a5)
    80005a44:	02e68663          	beq	a3,a4,80005a70 <__memmove+0xfc>
    80005a48:	0045c603          	lbu	a2,4(a1)
    80005a4c:	00400713          	li	a4,4
    80005a50:	00c78223          	sb	a2,4(a5)
    80005a54:	00e68e63          	beq	a3,a4,80005a70 <__memmove+0xfc>
    80005a58:	0055c603          	lbu	a2,5(a1)
    80005a5c:	00500713          	li	a4,5
    80005a60:	00c782a3          	sb	a2,5(a5)
    80005a64:	00e68663          	beq	a3,a4,80005a70 <__memmove+0xfc>
    80005a68:	0065c703          	lbu	a4,6(a1)
    80005a6c:	00e78323          	sb	a4,6(a5)
    80005a70:	00813403          	ld	s0,8(sp)
    80005a74:	01010113          	addi	sp,sp,16
    80005a78:	00008067          	ret
    80005a7c:	02061713          	slli	a4,a2,0x20
    80005a80:	02075713          	srli	a4,a4,0x20
    80005a84:	00e587b3          	add	a5,a1,a4
    80005a88:	f0f574e3          	bgeu	a0,a5,80005990 <__memmove+0x1c>
    80005a8c:	02069613          	slli	a2,a3,0x20
    80005a90:	02065613          	srli	a2,a2,0x20
    80005a94:	fff64613          	not	a2,a2
    80005a98:	00e50733          	add	a4,a0,a4
    80005a9c:	00c78633          	add	a2,a5,a2
    80005aa0:	fff7c683          	lbu	a3,-1(a5)
    80005aa4:	fff78793          	addi	a5,a5,-1
    80005aa8:	fff70713          	addi	a4,a4,-1
    80005aac:	00d70023          	sb	a3,0(a4)
    80005ab0:	fec798e3          	bne	a5,a2,80005aa0 <__memmove+0x12c>
    80005ab4:	00813403          	ld	s0,8(sp)
    80005ab8:	01010113          	addi	sp,sp,16
    80005abc:	00008067          	ret
    80005ac0:	02069713          	slli	a4,a3,0x20
    80005ac4:	02075713          	srli	a4,a4,0x20
    80005ac8:	00170713          	addi	a4,a4,1
    80005acc:	00e50733          	add	a4,a0,a4
    80005ad0:	00050793          	mv	a5,a0
    80005ad4:	0005c683          	lbu	a3,0(a1)
    80005ad8:	00178793          	addi	a5,a5,1
    80005adc:	00158593          	addi	a1,a1,1
    80005ae0:	fed78fa3          	sb	a3,-1(a5)
    80005ae4:	fee798e3          	bne	a5,a4,80005ad4 <__memmove+0x160>
    80005ae8:	f89ff06f          	j	80005a70 <__memmove+0xfc>

0000000080005aec <__putc>:
    80005aec:	fe010113          	addi	sp,sp,-32
    80005af0:	00813823          	sd	s0,16(sp)
    80005af4:	00113c23          	sd	ra,24(sp)
    80005af8:	02010413          	addi	s0,sp,32
    80005afc:	00050793          	mv	a5,a0
    80005b00:	fef40593          	addi	a1,s0,-17
    80005b04:	00100613          	li	a2,1
    80005b08:	00000513          	li	a0,0
    80005b0c:	fef407a3          	sb	a5,-17(s0)
    80005b10:	fffff097          	auipc	ra,0xfffff
    80005b14:	b3c080e7          	jalr	-1220(ra) # 8000464c <console_write>
    80005b18:	01813083          	ld	ra,24(sp)
    80005b1c:	01013403          	ld	s0,16(sp)
    80005b20:	02010113          	addi	sp,sp,32
    80005b24:	00008067          	ret

0000000080005b28 <__getc>:
    80005b28:	fe010113          	addi	sp,sp,-32
    80005b2c:	00813823          	sd	s0,16(sp)
    80005b30:	00113c23          	sd	ra,24(sp)
    80005b34:	02010413          	addi	s0,sp,32
    80005b38:	fe840593          	addi	a1,s0,-24
    80005b3c:	00100613          	li	a2,1
    80005b40:	00000513          	li	a0,0
    80005b44:	fffff097          	auipc	ra,0xfffff
    80005b48:	ae8080e7          	jalr	-1304(ra) # 8000462c <console_read>
    80005b4c:	fe844503          	lbu	a0,-24(s0)
    80005b50:	01813083          	ld	ra,24(sp)
    80005b54:	01013403          	ld	s0,16(sp)
    80005b58:	02010113          	addi	sp,sp,32
    80005b5c:	00008067          	ret

0000000080005b60 <console_handler>:
    80005b60:	fe010113          	addi	sp,sp,-32
    80005b64:	00813823          	sd	s0,16(sp)
    80005b68:	00113c23          	sd	ra,24(sp)
    80005b6c:	00913423          	sd	s1,8(sp)
    80005b70:	02010413          	addi	s0,sp,32
    80005b74:	14202773          	csrr	a4,scause
    80005b78:	100027f3          	csrr	a5,sstatus
    80005b7c:	0027f793          	andi	a5,a5,2
    80005b80:	06079e63          	bnez	a5,80005bfc <console_handler+0x9c>
    80005b84:	00074c63          	bltz	a4,80005b9c <console_handler+0x3c>
    80005b88:	01813083          	ld	ra,24(sp)
    80005b8c:	01013403          	ld	s0,16(sp)
    80005b90:	00813483          	ld	s1,8(sp)
    80005b94:	02010113          	addi	sp,sp,32
    80005b98:	00008067          	ret
    80005b9c:	0ff77713          	andi	a4,a4,255
    80005ba0:	00900793          	li	a5,9
    80005ba4:	fef712e3          	bne	a4,a5,80005b88 <console_handler+0x28>
    80005ba8:	ffffe097          	auipc	ra,0xffffe
    80005bac:	6dc080e7          	jalr	1756(ra) # 80004284 <plic_claim>
    80005bb0:	00a00793          	li	a5,10
    80005bb4:	00050493          	mv	s1,a0
    80005bb8:	02f50c63          	beq	a0,a5,80005bf0 <console_handler+0x90>
    80005bbc:	fc0506e3          	beqz	a0,80005b88 <console_handler+0x28>
    80005bc0:	00050593          	mv	a1,a0
    80005bc4:	00000517          	auipc	a0,0x0
    80005bc8:	73c50513          	addi	a0,a0,1852 # 80006300 <_ZZ12printIntegermE6digits+0x238>
    80005bcc:	fffff097          	auipc	ra,0xfffff
    80005bd0:	afc080e7          	jalr	-1284(ra) # 800046c8 <__printf>
    80005bd4:	01013403          	ld	s0,16(sp)
    80005bd8:	01813083          	ld	ra,24(sp)
    80005bdc:	00048513          	mv	a0,s1
    80005be0:	00813483          	ld	s1,8(sp)
    80005be4:	02010113          	addi	sp,sp,32
    80005be8:	ffffe317          	auipc	t1,0xffffe
    80005bec:	6d430067          	jr	1748(t1) # 800042bc <plic_complete>
    80005bf0:	fffff097          	auipc	ra,0xfffff
    80005bf4:	3e0080e7          	jalr	992(ra) # 80004fd0 <uartintr>
    80005bf8:	fddff06f          	j	80005bd4 <console_handler+0x74>
    80005bfc:	00001517          	auipc	a0,0x1
    80005c00:	80450513          	addi	a0,a0,-2044 # 80006400 <digits+0x78>
    80005c04:	fffff097          	auipc	ra,0xfffff
    80005c08:	a68080e7          	jalr	-1432(ra) # 8000466c <panic>
	...
