
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00007117          	auipc	sp,0x7
    80000004:	f8813103          	ld	sp,-120(sp) # 80006f88 <_GLOBAL_OFFSET_TABLE_+0x10>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	048030ef          	jal	ra,80003064 <start>

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
    80001084:	739000ef          	jal	ra,80001fbc <SupervisorTrapHandlerWrapper>
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
    800013e8:	824080e7          	jalr	-2012(ra) # 80001c08 <_ZN3TCB8dispatchEv>
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
    8000141c:	f1c080e7          	jalr	-228(ra) # 80002334 <_Z11printStringPKc>
    80001420:	00048513          	mv	a0,s1
    80001424:	00001097          	auipc	ra,0x1
    80001428:	f54080e7          	jalr	-172(ra) # 80002378 <_Z12printIntegerm>
    8000142c:	00005517          	auipc	a0,0x5
    80001430:	ed450513          	addi	a0,a0,-300 # 80006300 <_ZZ12printIntegermE6digits+0x238>
    80001434:	00001097          	auipc	ra,0x1
    80001438:	f00080e7          	jalr	-256(ra) # 80002334 <_Z11printStringPKc>
    8000143c:	0014849b          	addiw	s1,s1,1
    80001440:	0ff4f493          	andi	s1,s1,255
    80001444:	00200793          	li	a5,2
    80001448:	fc97f4e3          	bgeu	a5,s1,80001410 <_Z11workerBodyAv+0x20>

    printString("A: yield\n");
    8000144c:	00005517          	auipc	a0,0x5
    80001450:	bdc50513          	addi	a0,a0,-1060 # 80006028 <CONSOLE_STATUS+0x18>
    80001454:	00001097          	auipc	ra,0x1
    80001458:	ee0080e7          	jalr	-288(ra) # 80002334 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    8000145c:	00700313          	li	t1,7
    TCB::dispatch();
    80001460:	00000097          	auipc	ra,0x0
    80001464:	7a8080e7          	jalr	1960(ra) # 80001c08 <_ZN3TCB8dispatchEv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80001468:	00030913          	mv	s2,t1
    printString("A: t1="); printInteger(t1); printString("\n");
    8000146c:	00005517          	auipc	a0,0x5
    80001470:	bcc50513          	addi	a0,a0,-1076 # 80006038 <CONSOLE_STATUS+0x28>
    80001474:	00001097          	auipc	ra,0x1
    80001478:	ec0080e7          	jalr	-320(ra) # 80002334 <_Z11printStringPKc>
    8000147c:	00090513          	mv	a0,s2
    80001480:	00001097          	auipc	ra,0x1
    80001484:	ef8080e7          	jalr	-264(ra) # 80002378 <_Z12printIntegerm>
    80001488:	00005517          	auipc	a0,0x5
    8000148c:	e7850513          	addi	a0,a0,-392 # 80006300 <_ZZ12printIntegermE6digits+0x238>
    80001490:	00001097          	auipc	ra,0x1
    80001494:	ea4080e7          	jalr	-348(ra) # 80002334 <_Z11printStringPKc>

    uint64 result = fibonacci(20);
    80001498:	01400513          	li	a0,20
    8000149c:	00000097          	auipc	ra,0x0
    800014a0:	ee4080e7          	jalr	-284(ra) # 80001380 <_Z9fibonaccim>
    800014a4:	00050913          	mv	s2,a0
    printString("A: fibonaci="); printInteger(result); printString("\n");
    800014a8:	00005517          	auipc	a0,0x5
    800014ac:	b9850513          	addi	a0,a0,-1128 # 80006040 <CONSOLE_STATUS+0x30>
    800014b0:	00001097          	auipc	ra,0x1
    800014b4:	e84080e7          	jalr	-380(ra) # 80002334 <_Z11printStringPKc>
    800014b8:	00090513          	mv	a0,s2
    800014bc:	00001097          	auipc	ra,0x1
    800014c0:	ebc080e7          	jalr	-324(ra) # 80002378 <_Z12printIntegerm>
    800014c4:	00005517          	auipc	a0,0x5
    800014c8:	e3c50513          	addi	a0,a0,-452 # 80006300 <_ZZ12printIntegermE6digits+0x238>
    800014cc:	00001097          	auipc	ra,0x1
    800014d0:	e68080e7          	jalr	-408(ra) # 80002334 <_Z11printStringPKc>
    800014d4:	0380006f          	j	8000150c <_Z11workerBodyAv+0x11c>

    for (; i < 6; i++) { printString("A: i="); printInteger(i); printString("\n"); }
    800014d8:	00005517          	auipc	a0,0x5
    800014dc:	b4850513          	addi	a0,a0,-1208 # 80006020 <CONSOLE_STATUS+0x10>
    800014e0:	00001097          	auipc	ra,0x1
    800014e4:	e54080e7          	jalr	-428(ra) # 80002334 <_Z11printStringPKc>
    800014e8:	00048513          	mv	a0,s1
    800014ec:	00001097          	auipc	ra,0x1
    800014f0:	e8c080e7          	jalr	-372(ra) # 80002378 <_Z12printIntegerm>
    800014f4:	00005517          	auipc	a0,0x5
    800014f8:	e0c50513          	addi	a0,a0,-500 # 80006300 <_ZZ12printIntegermE6digits+0x238>
    800014fc:	00001097          	auipc	ra,0x1
    80001500:	e38080e7          	jalr	-456(ra) # 80002334 <_Z11printStringPKc>
    80001504:	0014849b          	addiw	s1,s1,1
    80001508:	0ff4f493          	andi	s1,s1,255
    8000150c:	00500793          	li	a5,5
    80001510:	fc97f4e3          	bgeu	a5,s1,800014d8 <_Z11workerBodyAv+0xe8>

    TCB::dispatch();
    80001514:	00000097          	auipc	ra,0x0
    80001518:	6f4080e7          	jalr	1780(ra) # 80001c08 <_ZN3TCB8dispatchEv>
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
    80001560:	dd8080e7          	jalr	-552(ra) # 80002334 <_Z11printStringPKc>
    80001564:	00048513          	mv	a0,s1
    80001568:	00001097          	auipc	ra,0x1
    8000156c:	e10080e7          	jalr	-496(ra) # 80002378 <_Z12printIntegerm>
    80001570:	00005517          	auipc	a0,0x5
    80001574:	d9050513          	addi	a0,a0,-624 # 80006300 <_ZZ12printIntegermE6digits+0x238>
    80001578:	00001097          	auipc	ra,0x1
    8000157c:	dbc080e7          	jalr	-580(ra) # 80002334 <_Z11printStringPKc>
    80001580:	0014849b          	addiw	s1,s1,1
    80001584:	0ff4f493          	andi	s1,s1,255
    80001588:	00c00793          	li	a5,12
    8000158c:	fc97f4e3          	bgeu	a5,s1,80001554 <_Z11workerBodyBv+0x20>

    printString("B: yield\n");
    80001590:	00005517          	auipc	a0,0x5
    80001594:	ac850513          	addi	a0,a0,-1336 # 80006058 <CONSOLE_STATUS+0x48>
    80001598:	00001097          	auipc	ra,0x1
    8000159c:	d9c080e7          	jalr	-612(ra) # 80002334 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800015a0:	00500313          	li	t1,5
    TCB::dispatch();
    800015a4:	00000097          	auipc	ra,0x0
    800015a8:	664080e7          	jalr	1636(ra) # 80001c08 <_ZN3TCB8dispatchEv>

    uint64 result = fibonacci(23);
    800015ac:	01700513          	li	a0,23
    800015b0:	00000097          	auipc	ra,0x0
    800015b4:	dd0080e7          	jalr	-560(ra) # 80001380 <_Z9fibonaccim>
    800015b8:	00050913          	mv	s2,a0
    printString("B: fibonaci="); printInteger(result); printString("\n");
    800015bc:	00005517          	auipc	a0,0x5
    800015c0:	aac50513          	addi	a0,a0,-1364 # 80006068 <CONSOLE_STATUS+0x58>
    800015c4:	00001097          	auipc	ra,0x1
    800015c8:	d70080e7          	jalr	-656(ra) # 80002334 <_Z11printStringPKc>
    800015cc:	00090513          	mv	a0,s2
    800015d0:	00001097          	auipc	ra,0x1
    800015d4:	da8080e7          	jalr	-600(ra) # 80002378 <_Z12printIntegerm>
    800015d8:	00005517          	auipc	a0,0x5
    800015dc:	d2850513          	addi	a0,a0,-728 # 80006300 <_ZZ12printIntegermE6digits+0x238>
    800015e0:	00001097          	auipc	ra,0x1
    800015e4:	d54080e7          	jalr	-684(ra) # 80002334 <_Z11printStringPKc>
    800015e8:	0380006f          	j	80001620 <_Z11workerBodyBv+0xec>

    for (; i < 16; i++) { printString("B: i="); printInteger(i); printString("\n"); }
    800015ec:	00005517          	auipc	a0,0x5
    800015f0:	a6450513          	addi	a0,a0,-1436 # 80006050 <CONSOLE_STATUS+0x40>
    800015f4:	00001097          	auipc	ra,0x1
    800015f8:	d40080e7          	jalr	-704(ra) # 80002334 <_Z11printStringPKc>
    800015fc:	00048513          	mv	a0,s1
    80001600:	00001097          	auipc	ra,0x1
    80001604:	d78080e7          	jalr	-648(ra) # 80002378 <_Z12printIntegerm>
    80001608:	00005517          	auipc	a0,0x5
    8000160c:	cf850513          	addi	a0,a0,-776 # 80006300 <_ZZ12printIntegermE6digits+0x238>
    80001610:	00001097          	auipc	ra,0x1
    80001614:	d24080e7          	jalr	-732(ra) # 80002334 <_Z11printStringPKc>
    80001618:	0014849b          	addiw	s1,s1,1
    8000161c:	0ff4f493          	andi	s1,s1,255
    80001620:	00f00793          	li	a5,15
    80001624:	fc97f4e3          	bgeu	a5,s1,800015ec <_Z11workerBodyBv+0xb8>
    TCB::dispatch();
    80001628:	00000097          	auipc	ra,0x0
    8000162c:	5e0080e7          	jalr	1504(ra) # 80001c08 <_ZN3TCB8dispatchEv>
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
    80001678:	97c78793          	addi	a5,a5,-1668 # 80006ff0 <_ZN9Scheduler5queueE>
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
    800016a4:	95078793          	addi	a5,a5,-1712 # 80006ff0 <_ZN9Scheduler5queueE>
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
    800016c8:	93473703          	ld	a4,-1740(a4) # 80006ff8 <_ZN9Scheduler5queueE+0x8>
    800016cc:	00e48863          	beq	s1,a4,800016dc <_ZN9Scheduler3getEv+0x50>
    800016d0:	00048793          	mv	a5,s1
    800016d4:	0084b483          	ld	s1,8(s1)
    800016d8:	fe9ff06f          	j	800016c0 <_ZN9Scheduler3getEv+0x34>
        Elem* elem=tail;
    800016dc:	00006517          	auipc	a0,0x6
    800016e0:	91c53503          	ld	a0,-1764(a0) # 80006ff8 <_ZN9Scheduler5queueE+0x8>
        if(prev) prev->next=0;
    800016e4:	02078c63          	beqz	a5,8000171c <_ZN9Scheduler3getEv+0x90>
    800016e8:	0007b423          	sd	zero,8(a5)
        else head=0;
        tail=prev;
    800016ec:	00006717          	auipc	a4,0x6
    800016f0:	90f73623          	sd	a5,-1780(a4) # 80006ff8 <_ZN9Scheduler5queueE+0x8>
        T* retval= elem->data;
    800016f4:	00053483          	ld	s1,0(a0)
        delete elem;
    800016f8:	00050663          	beqz	a0,80001704 <_ZN9Scheduler3getEv+0x78>
    800016fc:	00000097          	auipc	ra,0x0
    80001700:	3f0080e7          	jalr	1008(ra) # 80001aec <_ZdlPv>
}
    80001704:	00048513          	mv	a0,s1
    80001708:	01813083          	ld	ra,24(sp)
    8000170c:	01013403          	ld	s0,16(sp)
    80001710:	00813483          	ld	s1,8(sp)
    80001714:	02010113          	addi	sp,sp,32
    80001718:	00008067          	ret
        else head=0;
    8000171c:	00006717          	auipc	a4,0x6
    80001720:	8c073a23          	sd	zero,-1836(a4) # 80006ff0 <_ZN9Scheduler5queueE>
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
    80001748:	380080e7          	jalr	896(ra) # 80001ac4 <_Znwm>
    8000174c:	00006797          	auipc	a5,0x6
    80001750:	8a478793          	addi	a5,a5,-1884 # 80006ff0 <_ZN9Scheduler5queueE>
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
    80001770:	88470713          	addi	a4,a4,-1916 # 80006ff0 <_ZN9Scheduler5queueE>
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
    80001798:	86a7b223          	sd	a0,-1948(a5) # 80006ff8 <_ZN9Scheduler5queueE+0x8>
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
    800017f0:	b48080e7          	jalr	-1208(ra) # 80002334 <_Z11printStringPKc>
    userMain();
    800017f4:	00001097          	auipc	ra,0x1
    800017f8:	1a4080e7          	jalr	420(ra) # 80002998 <_Z8userMainv>
    printString("user main end:\n");
    800017fc:	00005517          	auipc	a0,0x5
    80001800:	89450513          	addi	a0,a0,-1900 # 80006090 <CONSOLE_STATUS+0x80>
    80001804:	00001097          	auipc	ra,0x1
    80001808:	b30080e7          	jalr	-1232(ra) # 80002334 <_Z11printStringPKc>
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
    80001840:	288080e7          	jalr	648(ra) # 80001ac4 <_Znwm>
    80001844:	00050993          	mv	s3,a0
    *a1=4;
    80001848:	00400793          	li	a5,4
    8000184c:	00f53023          	sd	a5,0(a0)
    __putc(*a1+'0');
    80001850:	03400513          	li	a0,52
    80001854:	00004097          	auipc	ra,0x4
    80001858:	8d8080e7          	jalr	-1832(ra) # 8000512c <__putc>
    __putc('\n');
    8000185c:	00a00513          	li	a0,10
    80001860:	00004097          	auipc	ra,0x4
    80001864:	8cc080e7          	jalr	-1844(ra) # 8000512c <__putc>
    uint64* a2=new uint64;
    80001868:	00800513          	li	a0,8
    8000186c:	00000097          	auipc	ra,0x0
    80001870:	258080e7          	jalr	600(ra) # 80001ac4 <_Znwm>
    *a2=5;
    80001874:	00500793          	li	a5,5
    80001878:	00f53023          	sd	a5,0(a0)
    __putc(*a2+'0');
    8000187c:	03500513          	li	a0,53
    80001880:	00004097          	auipc	ra,0x4
    80001884:	8ac080e7          	jalr	-1876(ra) # 8000512c <__putc>
    __putc('\n');
    80001888:	00a00513          	li	a0,10
    8000188c:	00004097          	auipc	ra,0x4
    80001890:	8a0080e7          	jalr	-1888(ra) # 8000512c <__putc>
    uint64* a3=new uint64;
    80001894:	00800513          	li	a0,8
    80001898:	00000097          	auipc	ra,0x0
    8000189c:	22c080e7          	jalr	556(ra) # 80001ac4 <_Znwm>
    800018a0:	00050913          	mv	s2,a0
    *a3=6;
    800018a4:	00600793          	li	a5,6
    800018a8:	00f53023          	sd	a5,0(a0)
    __putc(*a3+'0');
    800018ac:	03600513          	li	a0,54
    800018b0:	00004097          	auipc	ra,0x4
    800018b4:	87c080e7          	jalr	-1924(ra) # 8000512c <__putc>
    __putc('\n');
    800018b8:	00a00513          	li	a0,10
    800018bc:	00004097          	auipc	ra,0x4
    800018c0:	870080e7          	jalr	-1936(ra) # 8000512c <__putc>
    uint64* a4=new uint64;
    800018c4:	00800513          	li	a0,8
    800018c8:	00000097          	auipc	ra,0x0
    800018cc:	1fc080e7          	jalr	508(ra) # 80001ac4 <_Znwm>
    800018d0:	00050493          	mv	s1,a0
    *a4=7;
    800018d4:	00700793          	li	a5,7
    800018d8:	00f53023          	sd	a5,0(a0)
    __putc(*a4+'0');
    800018dc:	03700513          	li	a0,55
    800018e0:	00004097          	auipc	ra,0x4
    800018e4:	84c080e7          	jalr	-1972(ra) # 8000512c <__putc>
    __putc('\n');
    800018e8:	00a00513          	li	a0,10
    800018ec:	00004097          	auipc	ra,0x4
    800018f0:	840080e7          	jalr	-1984(ra) # 8000512c <__putc>
    uint64* a5=new uint64;
    800018f4:	00800513          	li	a0,8
    800018f8:	00000097          	auipc	ra,0x0
    800018fc:	1cc080e7          	jalr	460(ra) # 80001ac4 <_Znwm>
    *a5=8;
    80001900:	00800793          	li	a5,8
    80001904:	00f53023          	sd	a5,0(a0)
    __putc(*a5+'0');
    80001908:	03800513          	li	a0,56
    8000190c:	00004097          	auipc	ra,0x4
    80001910:	820080e7          	jalr	-2016(ra) # 8000512c <__putc>
    __putc('\n');
    80001914:	00a00513          	li	a0,10
    80001918:	00004097          	auipc	ra,0x4
    8000191c:	814080e7          	jalr	-2028(ra) # 8000512c <__putc>
    delete a1;
    80001920:	00098863          	beqz	s3,80001930 <_Z13AllocatorTestv+0x114>
    80001924:	00098513          	mv	a0,s3
    80001928:	00000097          	auipc	ra,0x0
    8000192c:	1c4080e7          	jalr	452(ra) # 80001aec <_ZdlPv>
    delete a3;
    80001930:	00090863          	beqz	s2,80001940 <_Z13AllocatorTestv+0x124>
    80001934:	00090513          	mv	a0,s2
    80001938:	00000097          	auipc	ra,0x0
    8000193c:	1b4080e7          	jalr	436(ra) # 80001aec <_ZdlPv>
    delete a4;
    80001940:	00048863          	beqz	s1,80001950 <_Z13AllocatorTestv+0x134>
    80001944:	00048513          	mv	a0,s1
    80001948:	00000097          	auipc	ra,0x0
    8000194c:	1a4080e7          	jalr	420(ra) # 80001aec <_ZdlPv>
    uint64* a6=new uint64;
    80001950:	00800513          	li	a0,8
    80001954:	00000097          	auipc	ra,0x0
    80001958:	170080e7          	jalr	368(ra) # 80001ac4 <_Znwm>
    *a6=9;
    8000195c:	00900793          	li	a5,9
    80001960:	00f53023          	sd	a5,0(a0)
    __putc(*a6+'0');
    80001964:	03900513          	li	a0,57
    80001968:	00003097          	auipc	ra,0x3
    8000196c:	7c4080e7          	jalr	1988(ra) # 8000512c <__putc>
    __putc('\n');
    80001970:	00a00513          	li	a0,10
    80001974:	00003097          	auipc	ra,0x3
    80001978:	7b8080e7          	jalr	1976(ra) # 8000512c <__putc>
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
    80001a00:	00005797          	auipc	a5,0x5
    80001a04:	5907b783          	ld	a5,1424(a5) # 80006f90 <_GLOBAL_OFFSET_TABLE_+0x18>
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
    80001a48:	1c4080e7          	jalr	452(ra) # 80001c08 <_ZN3TCB8dispatchEv>
    80001a4c:	fedff06f          	j	80001a38 <main+0x50>
     }

     for (auto coroutine: coroutines) { delete coroutine; }
    80001a50:	fd040493          	addi	s1,s0,-48
    80001a54:	01c0006f          	j	80001a70 <main+0x88>
        return MemoryAllocator::Instance()->mem_free(ptr);
    80001a58:	00000097          	auipc	ra,0x0
    80001a5c:	5e8080e7          	jalr	1512(ra) # 80002040 <_ZN15MemoryAllocator8InstanceEv>
    80001a60:	00090593          	mv	a1,s2
    80001a64:	00000097          	auipc	ra,0x0
    80001a68:	7b0080e7          	jalr	1968(ra) # 80002214 <_ZN15MemoryAllocator8mem_freeEPv>
    80001a6c:	00848493          	addi	s1,s1,8
    80001a70:	fe040793          	addi	a5,s0,-32
    80001a74:	02f48063          	beq	s1,a5,80001a94 <main+0xac>
    80001a78:	0004b903          	ld	s2,0(s1)
    80001a7c:	fe0908e3          	beqz	s2,80001a6c <main+0x84>
        delete stack;
    80001a80:	00893503          	ld	a0,8(s2)
    80001a84:	fc050ae3          	beqz	a0,80001a58 <main+0x70>
    80001a88:	00000097          	auipc	ra,0x0
    80001a8c:	064080e7          	jalr	100(ra) # 80001aec <_ZdlPv>
    80001a90:	fc9ff06f          	j	80001a58 <main+0x70>

     AllocatorTest();
    80001a94:	00000097          	auipc	ra,0x0
    80001a98:	d88080e7          	jalr	-632(ra) # 8000181c <_Z13AllocatorTestv>
     printString("Finished\n");
    80001a9c:	00004517          	auipc	a0,0x4
    80001aa0:	60450513          	addi	a0,a0,1540 # 800060a0 <CONSOLE_STATUS+0x90>
    80001aa4:	00001097          	auipc	ra,0x1
    80001aa8:	890080e7          	jalr	-1904(ra) # 80002334 <_Z11printStringPKc>
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

0000000080001ac4 <_Znwm>:
//
#include "../h/syscall_cpp.hpp"
#include "../h/syscall_c.hpp"

void* operator new(size_t size)
{
    80001ac4:	ff010113          	addi	sp,sp,-16
    80001ac8:	00113423          	sd	ra,8(sp)
    80001acc:	00813023          	sd	s0,0(sp)
    80001ad0:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80001ad4:	fffff097          	auipc	ra,0xfffff
    80001ad8:	758080e7          	jalr	1880(ra) # 8000122c <_Z9mem_allocm>
}
    80001adc:	00813083          	ld	ra,8(sp)
    80001ae0:	00013403          	ld	s0,0(sp)
    80001ae4:	01010113          	addi	sp,sp,16
    80001ae8:	00008067          	ret

0000000080001aec <_ZdlPv>:

void operator delete(void* ptr)
{
    80001aec:	ff010113          	addi	sp,sp,-16
    80001af0:	00113423          	sd	ra,8(sp)
    80001af4:	00813023          	sd	s0,0(sp)
    80001af8:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    80001afc:	fffff097          	auipc	ra,0xfffff
    80001b00:	770080e7          	jalr	1904(ra) # 8000126c <_Z8mem_freePv>
    80001b04:	00813083          	ld	ra,8(sp)
    80001b08:	00013403          	ld	s0,0(sp)
    80001b0c:	01010113          	addi	sp,sp,16
    80001b10:	00008067          	ret

0000000080001b14 <_ZN3TCB12createThreadEPFvPvES0_Pm>:

extern "C" void context_switch(TCB::Context* oldContext, TCB::Context* newContext);

TCB* TCB::running=nullptr;

TCB* TCB::createThread(Body body, void *arg, uint64 *stack) {
    80001b14:	fd010113          	addi	sp,sp,-48
    80001b18:	02113423          	sd	ra,40(sp)
    80001b1c:	02813023          	sd	s0,32(sp)
    80001b20:	00913c23          	sd	s1,24(sp)
    80001b24:	01213823          	sd	s2,16(sp)
    80001b28:	01313423          	sd	s3,8(sp)
    80001b2c:	01413023          	sd	s4,0(sp)
    80001b30:	03010413          	addi	s0,sp,48
    80001b34:	00050993          	mv	s3,a0
    80001b38:	00058a13          	mv	s4,a1
    80001b3c:	00060913          	mv	s2,a2
    return MemoryAllocator::Instance()->mem_alloc(size);
    80001b40:	00000097          	auipc	ra,0x0
    80001b44:	500080e7          	jalr	1280(ra) # 80002040 <_ZN15MemoryAllocator8InstanceEv>
    80001b48:	03800593          	li	a1,56
    80001b4c:	00000097          	auipc	ra,0x0
    80001b50:	550080e7          	jalr	1360(ra) # 8000209c <_ZN15MemoryAllocator9mem_allocEm>
    80001b54:	00050493          	mv	s1,a0
          id(0),      // optional init
          context({
              body != nullptr ? (uint64)&TCBWrapper : 0,
              body != nullptr ? (uint64)((char*)stackMem + DEFAULT_STACK_SIZE) : 0
          }),
          body(body)
    80001b58:	00050023          	sb	zero,0(a0)
    80001b5c:	01253423          	sd	s2,8(a0)
    80001b60:	01453823          	sd	s4,16(a0)
    80001b64:	00052c23          	sw	zero,24(a0)
              body != nullptr ? (uint64)&TCBWrapper : 0,
    80001b68:	04098063          	beqz	s3,80001ba8 <_ZN3TCB12createThreadEPFvPvES0_Pm+0x94>
    80001b6c:	00000797          	auipc	a5,0x0
    80001b70:	17078793          	addi	a5,a5,368 # 80001cdc <_ZN3TCB10TCBWrapperEv>
          body(body)
    80001b74:	02f4b023          	sd	a5,32(s1)
              body != nullptr ? (uint64)((char*)stackMem + DEFAULT_STACK_SIZE) : 0
    80001b78:	02098c63          	beqz	s3,80001bb0 <_ZN3TCB12createThreadEPFvPvES0_Pm+0x9c>
    80001b7c:	00001637          	lui	a2,0x1
    80001b80:	00c90933          	add	s2,s2,a2
          body(body)
    80001b84:	0324b423          	sd	s2,40(s1)
    80001b88:	0334b823          	sd	s3,48(s1)
    {
        if (running == nullptr) {
    80001b8c:	00005797          	auipc	a5,0x5
    80001b90:	47c7b783          	ld	a5,1148(a5) # 80007008 <_ZN3TCB7runningE>
    80001b94:	02078263          	beqz	a5,80001bb8 <_ZN3TCB12createThreadEPFvPvES0_Pm+0xa4>
            running = this;
        } else {
            Scheduler::put(this);
    80001b98:	00048513          	mv	a0,s1
    80001b9c:	00000097          	auipc	ra,0x0
    80001ba0:	b8c080e7          	jalr	-1140(ra) # 80001728 <_ZN9Scheduler3putEP3TCB>
    80001ba4:	01c0006f          	j	80001bc0 <_ZN3TCB12createThreadEPFvPvES0_Pm+0xac>
              body != nullptr ? (uint64)&TCBWrapper : 0,
    80001ba8:	00000793          	li	a5,0
    80001bac:	fc9ff06f          	j	80001b74 <_ZN3TCB12createThreadEPFvPvES0_Pm+0x60>
              body != nullptr ? (uint64)((char*)stackMem + DEFAULT_STACK_SIZE) : 0
    80001bb0:	00000913          	li	s2,0
    80001bb4:	fd1ff06f          	j	80001b84 <_ZN3TCB12createThreadEPFvPvES0_Pm+0x70>
            running = this;
    80001bb8:	00005797          	auipc	a5,0x5
    80001bbc:	4497b823          	sd	s1,1104(a5) # 80007008 <_ZN3TCB7runningE>
    return new TCB(body, arg, stack);
}
    80001bc0:	00048513          	mv	a0,s1
    80001bc4:	02813083          	ld	ra,40(sp)
    80001bc8:	02013403          	ld	s0,32(sp)
    80001bcc:	01813483          	ld	s1,24(sp)
    80001bd0:	01013903          	ld	s2,16(sp)
    80001bd4:	00813983          	ld	s3,8(sp)
    80001bd8:	00013a03          	ld	s4,0(sp)
    80001bdc:	03010113          	addi	sp,sp,48
    80001be0:	00008067          	ret
    80001be4:	00050913          	mv	s2,a0
        return MemoryAllocator::Instance()->mem_free(ptr);
    80001be8:	00000097          	auipc	ra,0x0
    80001bec:	458080e7          	jalr	1112(ra) # 80002040 <_ZN15MemoryAllocator8InstanceEv>
    80001bf0:	00048593          	mv	a1,s1
    80001bf4:	00000097          	auipc	ra,0x0
    80001bf8:	620080e7          	jalr	1568(ra) # 80002214 <_ZN15MemoryAllocator8mem_freeEPv>
    80001bfc:	00090513          	mv	a0,s2
    80001c00:	00006097          	auipc	ra,0x6
    80001c04:	4f8080e7          	jalr	1272(ra) # 800080f8 <_Unwind_Resume>

0000000080001c08 <_ZN3TCB8dispatchEv>:

void TCB::dispatch() {
    80001c08:	fe010113          	addi	sp,sp,-32
    80001c0c:	00113c23          	sd	ra,24(sp)
    80001c10:	00813823          	sd	s0,16(sp)
    80001c14:	00913423          	sd	s1,8(sp)
    80001c18:	01213023          	sd	s2,0(sp)
    80001c1c:	02010413          	addi	s0,sp,32
    //printString("TCB::dispatch()\n");
    TCB *old=running;
    80001c20:	00005497          	auipc	s1,0x5
    80001c24:	3e84b483          	ld	s1,1000(s1) # 80007008 <_ZN3TCB7runningE>
    bool isFinished() const { return finished;}
    80001c28:	0004c783          	lbu	a5,0(s1)
    if (!old->isFinished()) {
    80001c2c:	04078a63          	beqz	a5,80001c80 <_ZN3TCB8dispatchEv+0x78>
        Scheduler::put(old);
    }
    running=Scheduler::get();
    80001c30:	00000097          	auipc	ra,0x0
    80001c34:	a5c080e7          	jalr	-1444(ra) # 8000168c <_ZN9Scheduler3getEv>
    80001c38:	00005917          	auipc	s2,0x5
    80001c3c:	3d090913          	addi	s2,s2,976 # 80007008 <_ZN3TCB7runningE>
    80001c40:	00a93023          	sd	a0,0(s2)


    Riscv::pushRegisters();
    80001c44:	fffff097          	auipc	ra,0xfffff
    80001c48:	4dc080e7          	jalr	1244(ra) # 80001120 <_ZN5Riscv13pushRegistersEv>
    //Riscv::restorePrivilege();
    context_switch(&old->context, &running->context);
    80001c4c:	00093583          	ld	a1,0(s2)
    80001c50:	02058593          	addi	a1,a1,32
    80001c54:	02048513          	addi	a0,s1,32
    80001c58:	fffff097          	auipc	ra,0xfffff
    80001c5c:	5c0080e7          	jalr	1472(ra) # 80001218 <context_switch>
    Riscv::popRegisters();
    80001c60:	fffff097          	auipc	ra,0xfffff
    80001c64:	53c080e7          	jalr	1340(ra) # 8000119c <_ZN5Riscv12popRegistersEv>
}
    80001c68:	01813083          	ld	ra,24(sp)
    80001c6c:	01013403          	ld	s0,16(sp)
    80001c70:	00813483          	ld	s1,8(sp)
    80001c74:	00013903          	ld	s2,0(sp)
    80001c78:	02010113          	addi	sp,sp,32
    80001c7c:	00008067          	ret
        Scheduler::put(old);
    80001c80:	00048513          	mv	a0,s1
    80001c84:	00000097          	auipc	ra,0x0
    80001c88:	aa4080e7          	jalr	-1372(ra) # 80001728 <_ZN9Scheduler3putEP3TCB>
    80001c8c:	fa5ff06f          	j	80001c30 <_ZN3TCB8dispatchEv+0x28>

0000000080001c90 <_ZN3TCB4exitEv>:



int TCB::exit() {
    if (running->isFinished()) {
    80001c90:	00005797          	auipc	a5,0x5
    80001c94:	3787b783          	ld	a5,888(a5) # 80007008 <_ZN3TCB7runningE>
    80001c98:	0007c703          	lbu	a4,0(a5)
    80001c9c:	02071c63          	bnez	a4,80001cd4 <_ZN3TCB4exitEv+0x44>
int TCB::exit() {
    80001ca0:	ff010113          	addi	sp,sp,-16
    80001ca4:	00113423          	sd	ra,8(sp)
    80001ca8:	00813023          	sd	s0,0(sp)
    80001cac:	01010413          	addi	s0,sp,16
        return -1;
    }
    running->finished=true;
    80001cb0:	00100713          	li	a4,1
    80001cb4:	00e78023          	sb	a4,0(a5)
    dispatch();
    80001cb8:	00000097          	auipc	ra,0x0
    80001cbc:	f50080e7          	jalr	-176(ra) # 80001c08 <_ZN3TCB8dispatchEv>
    return 0;
    80001cc0:	00000513          	li	a0,0
}
    80001cc4:	00813083          	ld	ra,8(sp)
    80001cc8:	00013403          	ld	s0,0(sp)
    80001ccc:	01010113          	addi	sp,sp,16
    80001cd0:	00008067          	ret
        return -1;
    80001cd4:	fff00513          	li	a0,-1
}
    80001cd8:	00008067          	ret

0000000080001cdc <_ZN3TCB10TCBWrapperEv>:

void TCB::TCBWrapper() {
    80001cdc:	ff010113          	addi	sp,sp,-16
    80001ce0:	00113423          	sd	ra,8(sp)
    80001ce4:	00813023          	sd	s0,0(sp)
    80001ce8:	01010413          	addi	s0,sp,16
    //printString("Entered wrapper\n");
    Riscv::restorePrivilege();
    80001cec:	00000097          	auipc	ra,0x0
    80001cf0:	054080e7          	jalr	84(ra) # 80001d40 <_ZN5Riscv16restorePrivilegeEv>
    //Riscv::popSppSpie();
    running->body(running->arg);
    80001cf4:	00005797          	auipc	a5,0x5
    80001cf8:	3147b783          	ld	a5,788(a5) # 80007008 <_ZN3TCB7runningE>
    80001cfc:	0307b703          	ld	a4,48(a5)
    80001d00:	0107b503          	ld	a0,16(a5)
    80001d04:	000700e7          	jalr	a4
    exit();
    80001d08:	00000097          	auipc	ra,0x0
    80001d0c:	f88080e7          	jalr	-120(ra) # 80001c90 <_ZN3TCB4exitEv>
    80001d10:	00813083          	ld	ra,8(sp)
    80001d14:	00013403          	ld	s0,0(sp)
    80001d18:	01010113          	addi	sp,sp,16
    80001d1c:	00008067          	ret

0000000080001d20 <_ZN5Riscv10popSppSpieEv>:
#include  "../h/print.hpp"
using Body=void(*)(void*);
extern  "C" void SupervisorTrapHandlerWrapper() {
    Riscv::SupervisorTrapHandler();
}
void Riscv::popSppSpie() {
    80001d20:	ff010113          	addi	sp,sp,-16
    80001d24:	00813423          	sd	s0,8(sp)
    80001d28:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    80001d2c:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80001d30:	10200073          	sret
}
    80001d34:	00813403          	ld	s0,8(sp)
    80001d38:	01010113          	addi	sp,sp,16
    80001d3c:	00008067          	ret

0000000080001d40 <_ZN5Riscv16restorePrivilegeEv>:

void Riscv::restorePrivilege()
{
    80001d40:	ff010113          	addi	sp,sp,-16
    80001d44:	00813423          	sd	s0,8(sp)
    80001d48:	01010413          	addi	s0,sp,16
    uint64 volatile stval;
    __asm__ volatile("csrr %[stval], stval":[stval]"=r"(stval));
    return stval;
}
inline void Riscv::mc_sstatus(uint64 mask) {
    __asm__ volatile("csrc sstatus,%[mask]"::[mask]"r"(mask));
    80001d4c:	10000793          	li	a5,256
    80001d50:	1007b073          	csrc	sstatus,a5
    mc_sstatus(SSTATUS_SPP);
}
    80001d54:	00813403          	ld	s0,8(sp)
    80001d58:	01010113          	addi	sp,sp,16
    80001d5c:	00008067          	ret

0000000080001d60 <_ZN5Riscv21SupervisorTrapHandlerEv>:


void Riscv::SupervisorTrapHandler() {
    80001d60:	fa010113          	addi	sp,sp,-96
    80001d64:	04113c23          	sd	ra,88(sp)
    80001d68:	04813823          	sd	s0,80(sp)
    80001d6c:	04913423          	sd	s1,72(sp)
    80001d70:	05213023          	sd	s2,64(sp)
    80001d74:	03313c23          	sd	s3,56(sp)
    80001d78:	03413823          	sd	s4,48(sp)
    80001d7c:	03513423          	sd	s5,40(sp)
    80001d80:	06010413          	addi	s0,sp,96
    __asm__ volatile("csrr %[scause], scause":[scause]"=r"(scause));
    80001d84:	142027f3          	csrr	a5,scause
    80001d88:	faf43423          	sd	a5,-88(s0)
    return scause;
    80001d8c:	fa843703          	ld	a4,-88(s0)
    __asm__ volatile ("csrr %[x],sepc" : [x] "=r" (sepc));
    80001d90:	141024f3          	csrr	s1,sepc
    __asm__ volatile ("csrr %[x],sstatus" : [x] "=r" (sstatus));
    80001d94:	10002973          	csrr	s2,sstatus
    uint64 sepc;
    uint64 sstatus;
    uint64 scause=get_scause();
    sepc=get_sepc();
    sstatus=get_sstatus();
    if (scause == 0x8000000000000001UL) {
    80001d98:	fff00793          	li	a5,-1
    80001d9c:	03f79793          	slli	a5,a5,0x3f
    80001da0:	00178793          	addi	a5,a5,1
    80001da4:	0ef70c63          	beq	a4,a5,80001e9c <_ZN5Riscv21SupervisorTrapHandlerEv+0x13c>
        // interrupt: yes; cause code: supervisor software interrupt (CLINT; machine timer interrupt)
        mc_sip(SIP_SSIP);
    }
    else if (scause == 0x8000000000000009UL) {
    80001da8:	fff00793          	li	a5,-1
    80001dac:	03f79793          	slli	a5,a5,0x3f
    80001db0:	00978793          	addi	a5,a5,9
    80001db4:	0ef70a63          	beq	a4,a5,80001ea8 <_ZN5Riscv21SupervisorTrapHandlerEv+0x148>
        // interrupt: yes; cause code: supervisor external interrupt (PLIC; could be keyboard)
        console_handler();
    }
    else {
        uint64 syscode;
    __asm__ volatile ("mv %[x], a0" : [x] "=r" (syscode));
    80001db8:	00050793          	mv	a5,a0

    if (syscode==MEM_ALLOC) {
    80001dbc:	00100713          	li	a4,1
    80001dc0:	0ee78a63          	beq	a5,a4,80001eb4 <_ZN5Riscv21SupervisorTrapHandlerEv+0x154>
        size_t size_in_blocks;
        __asm__ volatile ("mv %[x], a1" : [x] "=r" (size_in_blocks));
        void* ptr = MemoryAllocator::Instance()->mem_alloc(size_in_blocks * MEM_BLOCK_SIZE);
        __asm__ volatile ("mv a0,%[x]" :: [x] "r" (ptr));
    }
    else if (syscode==MEM_FREE) {
    80001dc4:	00200713          	li	a4,2
    80001dc8:	12e78c63          	beq	a5,a4,80001f00 <_ZN5Riscv21SupervisorTrapHandlerEv+0x1a0>
        void* ptr;
        __asm__ volatile ("mv %[x], a1" : [x] "=r" (ptr));
        MemoryAllocator::Instance()->mem_free(ptr);
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (0));
    }
    else if (syscode==MEM_GET_FREE_SPACE) {
    80001dcc:	00300713          	li	a4,3
    80001dd0:	14e78a63          	beq	a5,a4,80001f24 <_ZN5Riscv21SupervisorTrapHandlerEv+0x1c4>
        size_t freeMem = MemoryAllocator::Instance()->getFreeMemSize();
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (freeMem));
    }
    else if (syscode==MEM_GET_LARGEST_FREE_BLOCK) {
    80001dd4:	00400713          	li	a4,4
    80001dd8:	16e78063          	beq	a5,a4,80001f38 <_ZN5Riscv21SupervisorTrapHandlerEv+0x1d8>
        size_t largestBlock = MemoryAllocator::Instance()->getLargestFreeBlock();
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (largestBlock));
    }
    else if (syscode==THREAD_CREATE) {
    80001ddc:	01100713          	li	a4,17
    80001de0:	16e78863          	beq	a5,a4,80001f50 <_ZN5Riscv21SupervisorTrapHandlerEv+0x1f0>
        else {
            ret=1;
        }
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (ret));
    }
    else if (syscode==THREAD_EXIT) {
    80001de4:	01200713          	li	a4,18
    80001de8:	1ae78c63          	beq	a5,a4,80001fa0 <_ZN5Riscv21SupervisorTrapHandlerEv+0x240>
        int ret = TCB::exit();
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (ret));
    }
    else if (syscode==THREAD_DISPATCH) {
    80001dec:	01300713          	li	a4,19
    80001df0:	1ce78063          	beq	a5,a4,80001fb0 <_ZN5Riscv21SupervisorTrapHandlerEv+0x250>
    __asm__ volatile("csrr %[scause], scause":[scause]"=r"(scause));
    80001df4:	142027f3          	csrr	a5,scause
    80001df8:	faf43c23          	sd	a5,-72(s0)
    return scause;
    80001dfc:	fb843a03          	ld	s4,-72(s0)
    __asm__ volatile("csrr %[stval], stval":[stval]"=r"(stval));
    80001e00:	143027f3          	csrr	a5,stval
    80001e04:	faf43823          	sd	a5,-80(s0)
    return stval;
    80001e08:	fb043983          	ld	s3,-80(s0)
        TCB::dispatch();
    }
    else {
        uint64 scause= get_scause();
        uint64 stval= get_stval();
        printString("scause:");
    80001e0c:	00004517          	auipc	a0,0x4
    80001e10:	2a450513          	addi	a0,a0,676 # 800060b0 <CONSOLE_STATUS+0xa0>
    80001e14:	00000097          	auipc	ra,0x0
    80001e18:	520080e7          	jalr	1312(ra) # 80002334 <_Z11printStringPKc>
        printInteger(scause);
    80001e1c:	000a0513          	mv	a0,s4
    80001e20:	00000097          	auipc	ra,0x0
    80001e24:	558080e7          	jalr	1368(ra) # 80002378 <_Z12printIntegerm>
        printString("\n");
    80001e28:	00004517          	auipc	a0,0x4
    80001e2c:	4d850513          	addi	a0,a0,1240 # 80006300 <_ZZ12printIntegermE6digits+0x238>
    80001e30:	00000097          	auipc	ra,0x0
    80001e34:	504080e7          	jalr	1284(ra) # 80002334 <_Z11printStringPKc>

        printString("stval:");
    80001e38:	00004517          	auipc	a0,0x4
    80001e3c:	28050513          	addi	a0,a0,640 # 800060b8 <CONSOLE_STATUS+0xa8>
    80001e40:	00000097          	auipc	ra,0x0
    80001e44:	4f4080e7          	jalr	1268(ra) # 80002334 <_Z11printStringPKc>
        printInteger(stval);
    80001e48:	00098513          	mv	a0,s3
    80001e4c:	00000097          	auipc	ra,0x0
    80001e50:	52c080e7          	jalr	1324(ra) # 80002378 <_Z12printIntegerm>
        printString("\n");
    80001e54:	00004517          	auipc	a0,0x4
    80001e58:	4ac50513          	addi	a0,a0,1196 # 80006300 <_ZZ12printIntegermE6digits+0x238>
    80001e5c:	00000097          	auipc	ra,0x0
    80001e60:	4d8080e7          	jalr	1240(ra) # 80002334 <_Z11printStringPKc>

        printString("sepc:");
    80001e64:	00004517          	auipc	a0,0x4
    80001e68:	25c50513          	addi	a0,a0,604 # 800060c0 <CONSOLE_STATUS+0xb0>
    80001e6c:	00000097          	auipc	ra,0x0
    80001e70:	4c8080e7          	jalr	1224(ra) # 80002334 <_Z11printStringPKc>
        printInteger(sepc);
    80001e74:	00048513          	mv	a0,s1
    80001e78:	00000097          	auipc	ra,0x0
    80001e7c:	500080e7          	jalr	1280(ra) # 80002378 <_Z12printIntegerm>
        printString("\n");
    80001e80:	00004517          	auipc	a0,0x4
    80001e84:	48050513          	addi	a0,a0,1152 # 80006300 <_ZZ12printIntegermE6digits+0x238>
    80001e88:	00000097          	auipc	ra,0x0
    80001e8c:	4ac080e7          	jalr	1196(ra) # 80002334 <_Z11printStringPKc>
        __getc();
    80001e90:	00003097          	auipc	ra,0x3
    80001e94:	2d8080e7          	jalr	728(ra) # 80005168 <__getc>
    80001e98:	0380006f          	j	80001ed0 <_ZN5Riscv21SupervisorTrapHandlerEv+0x170>
}
inline void Riscv::mc_sip(uint64 mask)
{
    __asm__ volatile("csrc sip, %[mask]":: [mask]"r"(mask));
    80001e9c:	00200793          	li	a5,2
    80001ea0:	1447b073          	csrc	sip,a5
}
    80001ea4:	0380006f          	j	80001edc <_ZN5Riscv21SupervisorTrapHandlerEv+0x17c>
        console_handler();
    80001ea8:	00003097          	auipc	ra,0x3
    80001eac:	2f8080e7          	jalr	760(ra) # 800051a0 <console_handler>
    80001eb0:	02c0006f          	j	80001edc <_ZN5Riscv21SupervisorTrapHandlerEv+0x17c>
        __asm__ volatile ("mv %[x], a1" : [x] "=r" (size_in_blocks));
    80001eb4:	00058993          	mv	s3,a1
        void* ptr = MemoryAllocator::Instance()->mem_alloc(size_in_blocks * MEM_BLOCK_SIZE);
    80001eb8:	00000097          	auipc	ra,0x0
    80001ebc:	188080e7          	jalr	392(ra) # 80002040 <_ZN15MemoryAllocator8InstanceEv>
    80001ec0:	00299593          	slli	a1,s3,0x2
    80001ec4:	00000097          	auipc	ra,0x0
    80001ec8:	1d8080e7          	jalr	472(ra) # 8000209c <_ZN15MemoryAllocator9mem_allocEm>
        __asm__ volatile ("mv a0,%[x]" :: [x] "r" (ptr));
    80001ecc:	00050513          	mv	a0,a0
    }
    set_sepc(sepc+4);
    80001ed0:	00448493          	addi	s1,s1,4
    __asm__ volatile ("csrw sepc, %[x]" :: [x] "r" (sepc));
    80001ed4:	14149073          	csrw	sepc,s1
    __asm__ volatile ("csrw sstatus, %[x]" :: [x] "r" (sstatus));
    80001ed8:	10091073          	csrw	sstatus,s2
    set_sstatus(sstatus);
    }


    80001edc:	05813083          	ld	ra,88(sp)
    80001ee0:	05013403          	ld	s0,80(sp)
    80001ee4:	04813483          	ld	s1,72(sp)
    80001ee8:	04013903          	ld	s2,64(sp)
    80001eec:	03813983          	ld	s3,56(sp)
    80001ef0:	03013a03          	ld	s4,48(sp)
    80001ef4:	02813a83          	ld	s5,40(sp)
    80001ef8:	06010113          	addi	sp,sp,96
    80001efc:	00008067          	ret
        __asm__ volatile ("mv %[x], a1" : [x] "=r" (ptr));
    80001f00:	00058993          	mv	s3,a1
        MemoryAllocator::Instance()->mem_free(ptr);
    80001f04:	00000097          	auipc	ra,0x0
    80001f08:	13c080e7          	jalr	316(ra) # 80002040 <_ZN15MemoryAllocator8InstanceEv>
    80001f0c:	00098593          	mv	a1,s3
    80001f10:	00000097          	auipc	ra,0x0
    80001f14:	304080e7          	jalr	772(ra) # 80002214 <_ZN15MemoryAllocator8mem_freeEPv>
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (0));
    80001f18:	00000793          	li	a5,0
    80001f1c:	00078513          	mv	a0,a5
    80001f20:	fb1ff06f          	j	80001ed0 <_ZN5Riscv21SupervisorTrapHandlerEv+0x170>
        size_t freeMem = MemoryAllocator::Instance()->getFreeMemSize();
    80001f24:	00000097          	auipc	ra,0x0
    80001f28:	11c080e7          	jalr	284(ra) # 80002040 <_ZN15MemoryAllocator8InstanceEv>
    void* mem_alloc(size_t size);//size in bytes

    void mem_free(void* ptr);

    size_t getFreeMemSize() {
        return this->freeMemSize;
    80001f2c:	00853783          	ld	a5,8(a0)
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (freeMem));
    80001f30:	00078513          	mv	a0,a5
    80001f34:	f9dff06f          	j	80001ed0 <_ZN5Riscv21SupervisorTrapHandlerEv+0x170>
        size_t largestBlock = MemoryAllocator::Instance()->getLargestFreeBlock();
    80001f38:	00000097          	auipc	ra,0x0
    80001f3c:	108080e7          	jalr	264(ra) # 80002040 <_ZN15MemoryAllocator8InstanceEv>
    80001f40:	00000097          	auipc	ra,0x0
    80001f44:	3b8080e7          	jalr	952(ra) # 800022f8 <_ZN15MemoryAllocator19getLargestFreeBlockEv>
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (largestBlock));
    80001f48:	00050513          	mv	a0,a0
    80001f4c:	f85ff06f          	j	80001ed0 <_ZN5Riscv21SupervisorTrapHandlerEv+0x170>
        __asm__ volatile ("mv %[x], a1" : [x] "=r" (handle));
    80001f50:	00058993          	mv	s3,a1
        __asm__ volatile ("mv %[x], a2" : [x] "=r" (start_routine));
    80001f54:	00060a13          	mv	s4,a2
        __asm__ volatile ("mv %[x], a3" : [x] "=r" (arg));
    80001f58:	00068a93          	mv	s5,a3
        uint64 *sp=(uint64*)MemoryAllocator::Instance()->mem_alloc(DEFAULT_STACK_SIZE);
    80001f5c:	00000097          	auipc	ra,0x0
    80001f60:	0e4080e7          	jalr	228(ra) # 80002040 <_ZN15MemoryAllocator8InstanceEv>
    80001f64:	000015b7          	lui	a1,0x1
    80001f68:	00000097          	auipc	ra,0x0
    80001f6c:	134080e7          	jalr	308(ra) # 8000209c <_ZN15MemoryAllocator9mem_allocEm>
    80001f70:	00050613          	mv	a2,a0
        *handle=TCB::createThread( start_routine, arg,sp);
    80001f74:	000a8593          	mv	a1,s5
    80001f78:	000a0513          	mv	a0,s4
    80001f7c:	00000097          	auipc	ra,0x0
    80001f80:	b98080e7          	jalr	-1128(ra) # 80001b14 <_ZN3TCB12createThreadEPFvPvES0_Pm>
    80001f84:	00a9b023          	sd	a0,0(s3)
        if (*handle) {
    80001f88:	00050863          	beqz	a0,80001f98 <_ZN5Riscv21SupervisorTrapHandlerEv+0x238>
            ret=0;
    80001f8c:	00000793          	li	a5,0
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (ret));
    80001f90:	00078513          	mv	a0,a5
    80001f94:	f3dff06f          	j	80001ed0 <_ZN5Riscv21SupervisorTrapHandlerEv+0x170>
            ret=1;
    80001f98:	00100793          	li	a5,1
    80001f9c:	ff5ff06f          	j	80001f90 <_ZN5Riscv21SupervisorTrapHandlerEv+0x230>
        int ret = TCB::exit();
    80001fa0:	00000097          	auipc	ra,0x0
    80001fa4:	cf0080e7          	jalr	-784(ra) # 80001c90 <_ZN3TCB4exitEv>
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (ret));
    80001fa8:	00050513          	mv	a0,a0
    80001fac:	f25ff06f          	j	80001ed0 <_ZN5Riscv21SupervisorTrapHandlerEv+0x170>
        TCB::dispatch();
    80001fb0:	00000097          	auipc	ra,0x0
    80001fb4:	c58080e7          	jalr	-936(ra) # 80001c08 <_ZN3TCB8dispatchEv>
    80001fb8:	f19ff06f          	j	80001ed0 <_ZN5Riscv21SupervisorTrapHandlerEv+0x170>

0000000080001fbc <SupervisorTrapHandlerWrapper>:
extern  "C" void SupervisorTrapHandlerWrapper() {
    80001fbc:	ff010113          	addi	sp,sp,-16
    80001fc0:	00113423          	sd	ra,8(sp)
    80001fc4:	00813023          	sd	s0,0(sp)
    80001fc8:	01010413          	addi	s0,sp,16
    Riscv::SupervisorTrapHandler();
    80001fcc:	00000097          	auipc	ra,0x0
    80001fd0:	d94080e7          	jalr	-620(ra) # 80001d60 <_ZN5Riscv21SupervisorTrapHandlerEv>
}
    80001fd4:	00813083          	ld	ra,8(sp)
    80001fd8:	00013403          	ld	s0,0(sp)
    80001fdc:	01010113          	addi	sp,sp,16
    80001fe0:	00008067          	ret

0000000080001fe4 <_ZN15MemoryAllocatorC1Ev>:

#include "../h/MemoryAllocator.hpp"
#include "../lib/console.h"


MemoryAllocator::MemoryAllocator() {
    80001fe4:	ff010113          	addi	sp,sp,-16
    80001fe8:	00813423          	sd	s0,8(sp)
    80001fec:	01010413          	addi	s0,sp,16
    this->head = (MemoryHeader*)HEAP_START_ADDR;
    80001ff0:	00005797          	auipc	a5,0x5
    80001ff4:	f907b783          	ld	a5,-112(a5) # 80006f80 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001ff8:	0007b703          	ld	a4,0(a5)
    80001ffc:	00e53023          	sd	a4,0(a0)
    // this->tail = (MemoryHeader*)HEAP_START_ADDR;
    // this->tail->next=nullptr;
    // this->tail->prev=nullptr;
    this->head->next=nullptr;
    80002000:	00073423          	sd	zero,8(a4)
    this->head->prev=nullptr;
    80002004:	00053783          	ld	a5,0(a0)
    80002008:	0007b823          	sd	zero,16(a5)
    this->head->size = (size_t)((char*)HEAP_END_ADDR - (char*)HEAP_START_ADDR - sizeof(MemoryHeader));
    8000200c:	00005797          	auipc	a5,0x5
    80002010:	f8c7b783          	ld	a5,-116(a5) # 80006f98 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002014:	0007b783          	ld	a5,0(a5)
    80002018:	40e787b3          	sub	a5,a5,a4
    8000201c:	00053703          	ld	a4,0(a0)
    80002020:	fe878793          	addi	a5,a5,-24
    80002024:	00f73023          	sd	a5,0(a4)
    this->freeMemSize=this->head->size;
    80002028:	00053783          	ld	a5,0(a0)
    8000202c:	0007b783          	ld	a5,0(a5)
    80002030:	00f53423          	sd	a5,8(a0)
}
    80002034:	00813403          	ld	s0,8(sp)
    80002038:	01010113          	addi	sp,sp,16
    8000203c:	00008067          	ret

0000000080002040 <_ZN15MemoryAllocator8InstanceEv>:




MemoryAllocator* MemoryAllocator::Instance() {
    static MemoryAllocator instance;
    80002040:	00005797          	auipc	a5,0x5
    80002044:	fd07c783          	lbu	a5,-48(a5) # 80007010 <_ZGVZN15MemoryAllocator8InstanceEvE8instance>
    80002048:	00078863          	beqz	a5,80002058 <_ZN15MemoryAllocator8InstanceEv+0x18>
    return &instance;
}
    8000204c:	00005517          	auipc	a0,0x5
    80002050:	fcc50513          	addi	a0,a0,-52 # 80007018 <_ZZN15MemoryAllocator8InstanceEvE8instance>
    80002054:	00008067          	ret
MemoryAllocator* MemoryAllocator::Instance() {
    80002058:	ff010113          	addi	sp,sp,-16
    8000205c:	00113423          	sd	ra,8(sp)
    80002060:	00813023          	sd	s0,0(sp)
    80002064:	01010413          	addi	s0,sp,16
    static MemoryAllocator instance;
    80002068:	00005517          	auipc	a0,0x5
    8000206c:	fb050513          	addi	a0,a0,-80 # 80007018 <_ZZN15MemoryAllocator8InstanceEvE8instance>
    80002070:	00000097          	auipc	ra,0x0
    80002074:	f74080e7          	jalr	-140(ra) # 80001fe4 <_ZN15MemoryAllocatorC1Ev>
    80002078:	00100793          	li	a5,1
    8000207c:	00005717          	auipc	a4,0x5
    80002080:	f8f70a23          	sb	a5,-108(a4) # 80007010 <_ZGVZN15MemoryAllocator8InstanceEvE8instance>
}
    80002084:	00005517          	auipc	a0,0x5
    80002088:	f9450513          	addi	a0,a0,-108 # 80007018 <_ZZN15MemoryAllocator8InstanceEvE8instance>
    8000208c:	00813083          	ld	ra,8(sp)
    80002090:	00013403          	ld	s0,0(sp)
    80002094:	01010113          	addi	sp,sp,16
    80002098:	00008067          	ret

000000008000209c <_ZN15MemoryAllocator9mem_allocEm>:


void* MemoryAllocator::mem_alloc(size_t size) {
    8000209c:	ff010113          	addi	sp,sp,-16
    800020a0:	00813423          	sd	s0,8(sp)
    800020a4:	01010413          	addi	s0,sp,16
    800020a8:	00050813          	mv	a6,a0
    if (this->head==nullptr)
    800020ac:	00053503          	ld	a0,0(a0)
    800020b0:	0a050263          	beqz	a0,80002154 <_ZN15MemoryAllocator9mem_allocEm+0xb8>
        return nullptr;
    if (size==0) {
    800020b4:	0e058863          	beqz	a1,800021a4 <_ZN15MemoryAllocator9mem_allocEm+0x108>
        return nullptr;
    }
    uint64 offset = size % MEM_BLOCK_SIZE;
    800020b8:	0035f793          	andi	a5,a1,3
    if (offset!=0)
    800020bc:	00078463          	beqz	a5,800020c4 <_ZN15MemoryAllocator9mem_allocEm+0x28>
        offset=1;
    800020c0:	00100793          	li	a5,1

    size_t actulalSize = (size  / MEM_BLOCK_SIZE+offset ) * MEM_BLOCK_SIZE;
    800020c4:	0025d693          	srli	a3,a1,0x2
    800020c8:	00f686b3          	add	a3,a3,a5
    800020cc:	00269693          	slli	a3,a3,0x2


    MemoryHeader* curr= this->head;
    800020d0:	00050793          	mv	a5,a0
    while (curr->next!=nullptr && curr->size < actulalSize) {
    800020d4:	00078713          	mv	a4,a5
    800020d8:	0087b783          	ld	a5,8(a5)
    800020dc:	00078663          	beqz	a5,800020e8 <_ZN15MemoryAllocator9mem_allocEm+0x4c>
    800020e0:	00073603          	ld	a2,0(a4)
    800020e4:	fed668e3          	bltu	a2,a3,800020d4 <_ZN15MemoryAllocator9mem_allocEm+0x38>
        curr=curr->next;
    }
    if (curr->size < actulalSize) {
    800020e8:	00073603          	ld	a2,0(a4)
    800020ec:	0cd66063          	bltu	a2,a3,800021ac <_ZN15MemoryAllocator9mem_allocEm+0x110>
        return nullptr;
    }



    if (curr->size - actulalSize >= MEM_BLOCK_SIZE+sizeof(MemoryHeader)) {
    800020f0:	40d60633          	sub	a2,a2,a3
    800020f4:	01b00593          	li	a1,27
    800020f8:	06c5f863          	bgeu	a1,a2,80002168 <_ZN15MemoryAllocator9mem_allocEm+0xcc>


        MemoryHeader* new_seg=(MemoryHeader*)((char*)curr + sizeof(MemoryHeader) + actulalSize);
    800020fc:	01868793          	addi	a5,a3,24
    80002100:	00f707b3          	add	a5,a4,a5
        new_seg->size = curr->size - actulalSize - sizeof(MemoryHeader);
    80002104:	fe860613          	addi	a2,a2,-24 # fe8 <_entry-0x7ffff018>
    80002108:	00c7b023          	sd	a2,0(a5)
        new_seg->next=curr->next;
    8000210c:	00873603          	ld	a2,8(a4)
    80002110:	00c7b423          	sd	a2,8(a5)
        new_seg->prev=curr->prev;
    80002114:	01073603          	ld	a2,16(a4)
    80002118:	00c7b823          	sd	a2,16(a5)
        if (curr==this->head) {
    8000211c:	00083603          	ld	a2,0(a6)
    80002120:	04e60063          	beq	a2,a4,80002160 <_ZN15MemoryAllocator9mem_allocEm+0xc4>
            this->head=new_seg;
        }
        // if (curr==this->tail) {
        //     this->tail=new_seg;
        // }
        if (curr->prev)
    80002124:	01073603          	ld	a2,16(a4)
    80002128:	00060463          	beqz	a2,80002130 <_ZN15MemoryAllocator9mem_allocEm+0x94>
            curr->prev->next=new_seg;
    8000212c:	00f63423          	sd	a5,8(a2)
        if (curr->next)
    80002130:	00873603          	ld	a2,8(a4)
    80002134:	00060463          	beqz	a2,8000213c <_ZN15MemoryAllocator9mem_allocEm+0xa0>
            curr->next->prev=new_seg;
    80002138:	00f63823          	sd	a5,16(a2)
        curr->size=actulalSize;
    8000213c:	00d73023          	sd	a3,0(a4)
        this->freeMemSize-= (actulalSize + sizeof(MemoryHeader));
    80002140:	00883783          	ld	a5,8(a6)
    80002144:	40d786b3          	sub	a3,a5,a3
    80002148:	fe868693          	addi	a3,a3,-24
    8000214c:	00d83423          	sd	a3,8(a6)
    //__putc('m');
    //__putc('\n');



    return  (void*)((char*)curr + sizeof(MemoryHeader));
    80002150:	01870513          	addi	a0,a4,24
}
    80002154:	00813403          	ld	s0,8(sp)
    80002158:	01010113          	addi	sp,sp,16
    8000215c:	00008067          	ret
            this->head=new_seg;
    80002160:	00f83023          	sd	a5,0(a6)
    80002164:	fc1ff06f          	j	80002124 <_ZN15MemoryAllocator9mem_allocEm+0x88>
        if (curr==this->head) {
    80002168:	02e50a63          	beq	a0,a4,8000219c <_ZN15MemoryAllocator9mem_allocEm+0x100>
        if (curr->prev)
    8000216c:	01073783          	ld	a5,16(a4)
    80002170:	00078663          	beqz	a5,8000217c <_ZN15MemoryAllocator9mem_allocEm+0xe0>
            curr->prev->next=curr->next;
    80002174:	00873603          	ld	a2,8(a4)
    80002178:	00c7b423          	sd	a2,8(a5)
        if (curr->next)
    8000217c:	00873783          	ld	a5,8(a4)
    80002180:	00078663          	beqz	a5,8000218c <_ZN15MemoryAllocator9mem_allocEm+0xf0>
            curr->next->prev=curr->prev;
    80002184:	01073603          	ld	a2,16(a4)
    80002188:	00c7b823          	sd	a2,16(a5)
        this->freeMemSize-= actulalSize;
    8000218c:	00883783          	ld	a5,8(a6)
    80002190:	40d786b3          	sub	a3,a5,a3
    80002194:	00d83423          	sd	a3,8(a6)
    80002198:	fb9ff06f          	j	80002150 <_ZN15MemoryAllocator9mem_allocEm+0xb4>
            this->head=curr->next;
    8000219c:	00f83023          	sd	a5,0(a6)
    800021a0:	fcdff06f          	j	8000216c <_ZN15MemoryAllocator9mem_allocEm+0xd0>
        return nullptr;
    800021a4:	00000513          	li	a0,0
    800021a8:	fadff06f          	j	80002154 <_ZN15MemoryAllocator9mem_allocEm+0xb8>
        return nullptr;
    800021ac:	00000513          	li	a0,0
    800021b0:	fa5ff06f          	j	80002154 <_ZN15MemoryAllocator9mem_allocEm+0xb8>

00000000800021b4 <_ZN15MemoryAllocator11try_to_joinEPNS_12MemoryHeaderE>:
    try_to_join(block->prev);
    try_to_join(block);
}


void MemoryAllocator::try_to_join(MemoryHeader* block) {
    800021b4:	ff010113          	addi	sp,sp,-16
    800021b8:	00813423          	sd	s0,8(sp)
    800021bc:	01010413          	addi	s0,sp,16
    if (block==nullptr)
    800021c0:	00058e63          	beqz	a1,800021dc <_ZN15MemoryAllocator11try_to_joinEPNS_12MemoryHeaderE+0x28>
        return;
    if (block->next!=nullptr && ((char*)block + sizeof(MemoryHeader) + block->size) == (char*)block->next) {
    800021c4:	0085b783          	ld	a5,8(a1) # 1008 <_entry-0x7fffeff8>
    800021c8:	00078a63          	beqz	a5,800021dc <_ZN15MemoryAllocator11try_to_joinEPNS_12MemoryHeaderE+0x28>
    800021cc:	0005b683          	ld	a3,0(a1)
    800021d0:	01868713          	addi	a4,a3,24
    800021d4:	00e58733          	add	a4,a1,a4
    800021d8:	00e78863          	beq	a5,a4,800021e8 <_ZN15MemoryAllocator11try_to_joinEPNS_12MemoryHeaderE+0x34>
        block->next=block->next->next;
        if (block->next)
            block->next->prev=block;
        this->freeMemSize+= sizeof(MemoryHeader);
    }
}
    800021dc:	00813403          	ld	s0,8(sp)
    800021e0:	01010113          	addi	sp,sp,16
    800021e4:	00008067          	ret
        block->size += block->next->size;
    800021e8:	0007b703          	ld	a4,0(a5)
    800021ec:	00e686b3          	add	a3,a3,a4
    800021f0:	00d5b023          	sd	a3,0(a1)
        block->next=block->next->next;
    800021f4:	0087b783          	ld	a5,8(a5)
    800021f8:	00f5b423          	sd	a5,8(a1)
        if (block->next)
    800021fc:	00078463          	beqz	a5,80002204 <_ZN15MemoryAllocator11try_to_joinEPNS_12MemoryHeaderE+0x50>
            block->next->prev=block;
    80002200:	00b7b823          	sd	a1,16(a5)
        this->freeMemSize+= sizeof(MemoryHeader);
    80002204:	00853783          	ld	a5,8(a0)
    80002208:	01878793          	addi	a5,a5,24
    8000220c:	00f53423          	sd	a5,8(a0)
    80002210:	fcdff06f          	j	800021dc <_ZN15MemoryAllocator11try_to_joinEPNS_12MemoryHeaderE+0x28>

0000000080002214 <_ZN15MemoryAllocator8mem_freeEPv>:
    if (ptr==nullptr) {
    80002214:	0e058063          	beqz	a1,800022f4 <_ZN15MemoryAllocator8mem_freeEPv+0xe0>
void MemoryAllocator::mem_free(void* ptr) {
    80002218:	fe010113          	addi	sp,sp,-32
    8000221c:	00113c23          	sd	ra,24(sp)
    80002220:	00813823          	sd	s0,16(sp)
    80002224:	00913423          	sd	s1,8(sp)
    80002228:	01213023          	sd	s2,0(sp)
    8000222c:	02010413          	addi	s0,sp,32
    80002230:	00050913          	mv	s2,a0
	MemoryHeader* block = (MemoryHeader*)((char*)ptr - sizeof(MemoryHeader));
    80002234:	fe858493          	addi	s1,a1,-24
    if (this->head==nullptr) {
    80002238:	00053683          	ld	a3,0(a0)
    8000223c:	06068e63          	beqz	a3,800022b8 <_ZN15MemoryAllocator8mem_freeEPv+0xa4>
    MemoryHeader* curr = this->head;
    80002240:	00068793          	mv	a5,a3
    while (curr->next!=nullptr && curr->next < block) {
    80002244:	00078713          	mv	a4,a5
    80002248:	0087b783          	ld	a5,8(a5)
    8000224c:	00078463          	beqz	a5,80002254 <_ZN15MemoryAllocator8mem_freeEPv+0x40>
    80002250:	fe97eae3          	bltu	a5,s1,80002244 <_ZN15MemoryAllocator8mem_freeEPv+0x30>
    if (curr==this->head and curr > block) {
    80002254:	08e68263          	beq	a3,a4,800022d8 <_ZN15MemoryAllocator8mem_freeEPv+0xc4>
        block->next=curr->next;
    80002258:	fef5b823          	sd	a5,-16(a1)
        block->prev=curr;
    8000225c:	fee5bc23          	sd	a4,-8(a1)
        curr->next=block;
    80002260:	00973423          	sd	s1,8(a4)
        if (block->next) {
    80002264:	ff05b783          	ld	a5,-16(a1)
    80002268:	00078463          	beqz	a5,80002270 <_ZN15MemoryAllocator8mem_freeEPv+0x5c>
            block->next->prev=block;
    8000226c:	0097b823          	sd	s1,16(a5)
    this->freeMemSize+= block->size;
    80002270:	fe85b703          	ld	a4,-24(a1)
    80002274:	00893783          	ld	a5,8(s2)
    80002278:	00e787b3          	add	a5,a5,a4
    8000227c:	00f93423          	sd	a5,8(s2)
    try_to_join(block->prev);
    80002280:	ff85b583          	ld	a1,-8(a1)
    80002284:	00090513          	mv	a0,s2
    80002288:	00000097          	auipc	ra,0x0
    8000228c:	f2c080e7          	jalr	-212(ra) # 800021b4 <_ZN15MemoryAllocator11try_to_joinEPNS_12MemoryHeaderE>
    try_to_join(block);
    80002290:	00048593          	mv	a1,s1
    80002294:	00090513          	mv	a0,s2
    80002298:	00000097          	auipc	ra,0x0
    8000229c:	f1c080e7          	jalr	-228(ra) # 800021b4 <_ZN15MemoryAllocator11try_to_joinEPNS_12MemoryHeaderE>
}
    800022a0:	01813083          	ld	ra,24(sp)
    800022a4:	01013403          	ld	s0,16(sp)
    800022a8:	00813483          	ld	s1,8(sp)
    800022ac:	00013903          	ld	s2,0(sp)
    800022b0:	02010113          	addi	sp,sp,32
    800022b4:	00008067          	ret
        this->head=block;
    800022b8:	00953023          	sd	s1,0(a0)
        block->next=nullptr;
    800022bc:	fe05b823          	sd	zero,-16(a1)
        block->prev=nullptr;
    800022c0:	fe05bc23          	sd	zero,-8(a1)
        this->freeMemSize+= block->size;
    800022c4:	fe85b703          	ld	a4,-24(a1)
    800022c8:	00853783          	ld	a5,8(a0)
    800022cc:	00e787b3          	add	a5,a5,a4
    800022d0:	00f53423          	sd	a5,8(a0)
        return;
    800022d4:	fcdff06f          	j	800022a0 <_ZN15MemoryAllocator8mem_freeEPv+0x8c>
    if (curr==this->head and curr > block) {
    800022d8:	f8e4f0e3          	bgeu	s1,a4,80002258 <_ZN15MemoryAllocator8mem_freeEPv+0x44>
        block->next=curr;
    800022dc:	fee5b823          	sd	a4,-16(a1)
        block->prev=curr->prev;
    800022e0:	01073783          	ld	a5,16(a4)
    800022e4:	fef5bc23          	sd	a5,-8(a1)
        curr->prev=block;
    800022e8:	00973823          	sd	s1,16(a4)
        this->head=block;
    800022ec:	00993023          	sd	s1,0(s2)
    800022f0:	f81ff06f          	j	80002270 <_ZN15MemoryAllocator8mem_freeEPv+0x5c>
    800022f4:	00008067          	ret

00000000800022f8 <_ZN15MemoryAllocator19getLargestFreeBlockEv>:

size_t MemoryAllocator::getLargestFreeBlock() {
    800022f8:	ff010113          	addi	sp,sp,-16
    800022fc:	00813423          	sd	s0,8(sp)
    80002300:	01010413          	addi	s0,sp,16
    size_t maxSize=0;
    MemoryHeader* curr=this->head;
    80002304:	00053783          	ld	a5,0(a0)
    size_t maxSize=0;
    80002308:	00000513          	li	a0,0
    8000230c:	0080006f          	j	80002314 <_ZN15MemoryAllocator19getLargestFreeBlockEv+0x1c>
    while (curr!=nullptr) {
        if (curr->size > maxSize)
            maxSize=curr->size;
        curr=curr->next;
    80002310:	0087b783          	ld	a5,8(a5)
    while (curr!=nullptr) {
    80002314:	00078a63          	beqz	a5,80002328 <_ZN15MemoryAllocator19getLargestFreeBlockEv+0x30>
        if (curr->size > maxSize)
    80002318:	0007b703          	ld	a4,0(a5)
    8000231c:	fee57ae3          	bgeu	a0,a4,80002310 <_ZN15MemoryAllocator19getLargestFreeBlockEv+0x18>
            maxSize=curr->size;
    80002320:	00070513          	mv	a0,a4
    80002324:	fedff06f          	j	80002310 <_ZN15MemoryAllocator19getLargestFreeBlockEv+0x18>
    }
    return maxSize;
    80002328:	00813403          	ld	s0,8(sp)
    8000232c:	01010113          	addi	sp,sp,16
    80002330:	00008067          	ret

0000000080002334 <_Z11printStringPKc>:
#include  "../h/print.hpp"
#include "../lib/console.h"


void printString(const char *string) {
    80002334:	fe010113          	addi	sp,sp,-32
    80002338:	00113c23          	sd	ra,24(sp)
    8000233c:	00813823          	sd	s0,16(sp)
    80002340:	00913423          	sd	s1,8(sp)
    80002344:	02010413          	addi	s0,sp,32
    80002348:	00050493          	mv	s1,a0
    while (*string!='\0') {
    8000234c:	0004c503          	lbu	a0,0(s1)
    80002350:	00050a63          	beqz	a0,80002364 <_Z11printStringPKc+0x30>
        __putc(*string);
    80002354:	00003097          	auipc	ra,0x3
    80002358:	dd8080e7          	jalr	-552(ra) # 8000512c <__putc>
        string++;
    8000235c:	00148493          	addi	s1,s1,1
    while (*string!='\0') {
    80002360:	fedff06f          	j	8000234c <_Z11printStringPKc+0x18>
    }
}
    80002364:	01813083          	ld	ra,24(sp)
    80002368:	01013403          	ld	s0,16(sp)
    8000236c:	00813483          	ld	s1,8(sp)
    80002370:	02010113          	addi	sp,sp,32
    80002374:	00008067          	ret

0000000080002378 <_Z12printIntegerm>:
void printInteger(uint64 integer) {
    80002378:	fd010113          	addi	sp,sp,-48
    8000237c:	02113423          	sd	ra,40(sp)
    80002380:	02813023          	sd	s0,32(sp)
    80002384:	00913c23          	sd	s1,24(sp)
    80002388:	03010413          	addi	s0,sp,48
    neg=0;
    if (integer<0) {
        neg=1;
        x=-integer;
    } else {
        x=integer;
    8000238c:	0005051b          	sext.w	a0,a0
    }

    i=0;
    80002390:	00000493          	li	s1,0
    do {
        buf[i++]=digits[x%10];
    80002394:	00a00613          	li	a2,10
    80002398:	02c5773b          	remuw	a4,a0,a2
    8000239c:	02071693          	slli	a3,a4,0x20
    800023a0:	0206d693          	srli	a3,a3,0x20
    800023a4:	00004717          	auipc	a4,0x4
    800023a8:	d2470713          	addi	a4,a4,-732 # 800060c8 <_ZZ12printIntegermE6digits>
    800023ac:	00d70733          	add	a4,a4,a3
    800023b0:	00074703          	lbu	a4,0(a4)
    800023b4:	fe040693          	addi	a3,s0,-32
    800023b8:	009687b3          	add	a5,a3,s1
    800023bc:	0014849b          	addiw	s1,s1,1
    800023c0:	fee78823          	sb	a4,-16(a5)
    }while ((x/=10)!=0);
    800023c4:	0005071b          	sext.w	a4,a0
    800023c8:	02c5553b          	divuw	a0,a0,a2
    800023cc:	00900793          	li	a5,9
    800023d0:	fce7e2e3          	bltu	a5,a4,80002394 <_Z12printIntegerm+0x1c>
    if (neg) {
        buf[i++]='-';
    }

    while (--i>=0) {
    800023d4:	fff4849b          	addiw	s1,s1,-1
    800023d8:	0004ce63          	bltz	s1,800023f4 <_Z12printIntegerm+0x7c>
        __putc(buf[i]);
    800023dc:	fe040793          	addi	a5,s0,-32
    800023e0:	009787b3          	add	a5,a5,s1
    800023e4:	ff07c503          	lbu	a0,-16(a5)
    800023e8:	00003097          	auipc	ra,0x3
    800023ec:	d44080e7          	jalr	-700(ra) # 8000512c <__putc>
    800023f0:	fe5ff06f          	j	800023d4 <_Z12printIntegerm+0x5c>
    }
    800023f4:	02813083          	ld	ra,40(sp)
    800023f8:	02013403          	ld	s0,32(sp)
    800023fc:	01813483          	ld	s1,24(sp)
    80002400:	03010113          	addi	sp,sp,48
    80002404:	00008067          	ret

0000000080002408 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80002408:	fe010113          	addi	sp,sp,-32
    8000240c:	00113c23          	sd	ra,24(sp)
    80002410:	00813823          	sd	s0,16(sp)
    80002414:	00913423          	sd	s1,8(sp)
    80002418:	01213023          	sd	s2,0(sp)
    8000241c:	02010413          	addi	s0,sp,32
    80002420:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80002424:	00100793          	li	a5,1
    80002428:	02a7f863          	bgeu	a5,a0,80002458 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    8000242c:	00a00793          	li	a5,10
    80002430:	02f577b3          	remu	a5,a0,a5
    80002434:	02078e63          	beqz	a5,80002470 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80002438:	fff48513          	addi	a0,s1,-1
    8000243c:	00000097          	auipc	ra,0x0
    80002440:	fcc080e7          	jalr	-52(ra) # 80002408 <_ZL9fibonaccim>
    80002444:	00050913          	mv	s2,a0
    80002448:	ffe48513          	addi	a0,s1,-2
    8000244c:	00000097          	auipc	ra,0x0
    80002450:	fbc080e7          	jalr	-68(ra) # 80002408 <_ZL9fibonaccim>
    80002454:	00a90533          	add	a0,s2,a0
}
    80002458:	01813083          	ld	ra,24(sp)
    8000245c:	01013403          	ld	s0,16(sp)
    80002460:	00813483          	ld	s1,8(sp)
    80002464:	00013903          	ld	s2,0(sp)
    80002468:	02010113          	addi	sp,sp,32
    8000246c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80002470:	fffff097          	auipc	ra,0xfffff
    80002474:	eec080e7          	jalr	-276(ra) # 8000135c <_Z15thread_dispatchv>
    80002478:	fc1ff06f          	j	80002438 <_ZL9fibonaccim+0x30>

000000008000247c <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    8000247c:	fe010113          	addi	sp,sp,-32
    80002480:	00113c23          	sd	ra,24(sp)
    80002484:	00813823          	sd	s0,16(sp)
    80002488:	00913423          	sd	s1,8(sp)
    8000248c:	01213023          	sd	s2,0(sp)
    80002490:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80002494:	00a00493          	li	s1,10
    80002498:	0380006f          	j	800024d0 <_ZL11workerBodyDPv+0x54>
    for (; i < 13; i++) {
        printString("D: i="); printInteger(i); printString("\n");
    8000249c:	00004517          	auipc	a0,0x4
    800024a0:	c3c50513          	addi	a0,a0,-964 # 800060d8 <_ZZ12printIntegermE6digits+0x10>
    800024a4:	00000097          	auipc	ra,0x0
    800024a8:	e90080e7          	jalr	-368(ra) # 80002334 <_Z11printStringPKc>
    800024ac:	00048513          	mv	a0,s1
    800024b0:	00000097          	auipc	ra,0x0
    800024b4:	ec8080e7          	jalr	-312(ra) # 80002378 <_Z12printIntegerm>
    800024b8:	00004517          	auipc	a0,0x4
    800024bc:	e4850513          	addi	a0,a0,-440 # 80006300 <_ZZ12printIntegermE6digits+0x238>
    800024c0:	00000097          	auipc	ra,0x0
    800024c4:	e74080e7          	jalr	-396(ra) # 80002334 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800024c8:	0014849b          	addiw	s1,s1,1
    800024cc:	0ff4f493          	andi	s1,s1,255
    800024d0:	00c00793          	li	a5,12
    800024d4:	fc97f4e3          	bgeu	a5,s1,8000249c <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    800024d8:	00004517          	auipc	a0,0x4
    800024dc:	c0850513          	addi	a0,a0,-1016 # 800060e0 <_ZZ12printIntegermE6digits+0x18>
    800024e0:	00000097          	auipc	ra,0x0
    800024e4:	e54080e7          	jalr	-428(ra) # 80002334 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800024e8:	00500313          	li	t1,5
    thread_dispatch();
    800024ec:	fffff097          	auipc	ra,0xfffff
    800024f0:	e70080e7          	jalr	-400(ra) # 8000135c <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800024f4:	01000513          	li	a0,16
    800024f8:	00000097          	auipc	ra,0x0
    800024fc:	f10080e7          	jalr	-240(ra) # 80002408 <_ZL9fibonaccim>
    80002500:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInteger(result); printString("\n");
    80002504:	00004517          	auipc	a0,0x4
    80002508:	bec50513          	addi	a0,a0,-1044 # 800060f0 <_ZZ12printIntegermE6digits+0x28>
    8000250c:	00000097          	auipc	ra,0x0
    80002510:	e28080e7          	jalr	-472(ra) # 80002334 <_Z11printStringPKc>
    80002514:	00090513          	mv	a0,s2
    80002518:	00000097          	auipc	ra,0x0
    8000251c:	e60080e7          	jalr	-416(ra) # 80002378 <_Z12printIntegerm>
    80002520:	00004517          	auipc	a0,0x4
    80002524:	de050513          	addi	a0,a0,-544 # 80006300 <_ZZ12printIntegermE6digits+0x238>
    80002528:	00000097          	auipc	ra,0x0
    8000252c:	e0c080e7          	jalr	-500(ra) # 80002334 <_Z11printStringPKc>
    80002530:	0380006f          	j	80002568 <_ZL11workerBodyDPv+0xec>

    for (; i < 16; i++) {
        printString("D: i="); printInteger(i); printString("\n");
    80002534:	00004517          	auipc	a0,0x4
    80002538:	ba450513          	addi	a0,a0,-1116 # 800060d8 <_ZZ12printIntegermE6digits+0x10>
    8000253c:	00000097          	auipc	ra,0x0
    80002540:	df8080e7          	jalr	-520(ra) # 80002334 <_Z11printStringPKc>
    80002544:	00048513          	mv	a0,s1
    80002548:	00000097          	auipc	ra,0x0
    8000254c:	e30080e7          	jalr	-464(ra) # 80002378 <_Z12printIntegerm>
    80002550:	00004517          	auipc	a0,0x4
    80002554:	db050513          	addi	a0,a0,-592 # 80006300 <_ZZ12printIntegermE6digits+0x238>
    80002558:	00000097          	auipc	ra,0x0
    8000255c:	ddc080e7          	jalr	-548(ra) # 80002334 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80002560:	0014849b          	addiw	s1,s1,1
    80002564:	0ff4f493          	andi	s1,s1,255
    80002568:	00f00793          	li	a5,15
    8000256c:	fc97f4e3          	bgeu	a5,s1,80002534 <_ZL11workerBodyDPv+0xb8>
    }

    printString("D finished!\n");
    80002570:	00004517          	auipc	a0,0x4
    80002574:	b9050513          	addi	a0,a0,-1136 # 80006100 <_ZZ12printIntegermE6digits+0x38>
    80002578:	00000097          	auipc	ra,0x0
    8000257c:	dbc080e7          	jalr	-580(ra) # 80002334 <_Z11printStringPKc>
    finishedD = true;
    80002580:	00100793          	li	a5,1
    80002584:	00005717          	auipc	a4,0x5
    80002588:	aaf70223          	sb	a5,-1372(a4) # 80007028 <_ZL9finishedD>
    thread_dispatch();
    8000258c:	fffff097          	auipc	ra,0xfffff
    80002590:	dd0080e7          	jalr	-560(ra) # 8000135c <_Z15thread_dispatchv>
}
    80002594:	01813083          	ld	ra,24(sp)
    80002598:	01013403          	ld	s0,16(sp)
    8000259c:	00813483          	ld	s1,8(sp)
    800025a0:	00013903          	ld	s2,0(sp)
    800025a4:	02010113          	addi	sp,sp,32
    800025a8:	00008067          	ret

00000000800025ac <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    800025ac:	fe010113          	addi	sp,sp,-32
    800025b0:	00113c23          	sd	ra,24(sp)
    800025b4:	00813823          	sd	s0,16(sp)
    800025b8:	00913423          	sd	s1,8(sp)
    800025bc:	01213023          	sd	s2,0(sp)
    800025c0:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800025c4:	00000493          	li	s1,0
    800025c8:	0380006f          	j	80002600 <_ZL11workerBodyCPv+0x54>
        printString("C: i="); printInteger(i); printString("\n");
    800025cc:	00004517          	auipc	a0,0x4
    800025d0:	b4450513          	addi	a0,a0,-1212 # 80006110 <_ZZ12printIntegermE6digits+0x48>
    800025d4:	00000097          	auipc	ra,0x0
    800025d8:	d60080e7          	jalr	-672(ra) # 80002334 <_Z11printStringPKc>
    800025dc:	00048513          	mv	a0,s1
    800025e0:	00000097          	auipc	ra,0x0
    800025e4:	d98080e7          	jalr	-616(ra) # 80002378 <_Z12printIntegerm>
    800025e8:	00004517          	auipc	a0,0x4
    800025ec:	d1850513          	addi	a0,a0,-744 # 80006300 <_ZZ12printIntegermE6digits+0x238>
    800025f0:	00000097          	auipc	ra,0x0
    800025f4:	d44080e7          	jalr	-700(ra) # 80002334 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800025f8:	0014849b          	addiw	s1,s1,1
    800025fc:	0ff4f493          	andi	s1,s1,255
    80002600:	00200793          	li	a5,2
    80002604:	fc97f4e3          	bgeu	a5,s1,800025cc <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80002608:	00004517          	auipc	a0,0x4
    8000260c:	b1050513          	addi	a0,a0,-1264 # 80006118 <_ZZ12printIntegermE6digits+0x50>
    80002610:	00000097          	auipc	ra,0x0
    80002614:	d24080e7          	jalr	-732(ra) # 80002334 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80002618:	00700313          	li	t1,7
    thread_dispatch();
    8000261c:	fffff097          	auipc	ra,0xfffff
    80002620:	d40080e7          	jalr	-704(ra) # 8000135c <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80002624:	00030913          	mv	s2,t1
    printString("C: t1="); printInteger(t1); printString("\n");
    80002628:	00004517          	auipc	a0,0x4
    8000262c:	b0050513          	addi	a0,a0,-1280 # 80006128 <_ZZ12printIntegermE6digits+0x60>
    80002630:	00000097          	auipc	ra,0x0
    80002634:	d04080e7          	jalr	-764(ra) # 80002334 <_Z11printStringPKc>
    80002638:	00090513          	mv	a0,s2
    8000263c:	00000097          	auipc	ra,0x0
    80002640:	d3c080e7          	jalr	-708(ra) # 80002378 <_Z12printIntegerm>
    80002644:	00004517          	auipc	a0,0x4
    80002648:	cbc50513          	addi	a0,a0,-836 # 80006300 <_ZZ12printIntegermE6digits+0x238>
    8000264c:	00000097          	auipc	ra,0x0
    80002650:	ce8080e7          	jalr	-792(ra) # 80002334 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80002654:	00c00513          	li	a0,12
    80002658:	00000097          	auipc	ra,0x0
    8000265c:	db0080e7          	jalr	-592(ra) # 80002408 <_ZL9fibonaccim>
    80002660:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInteger(result); printString("\n");
    80002664:	00004517          	auipc	a0,0x4
    80002668:	acc50513          	addi	a0,a0,-1332 # 80006130 <_ZZ12printIntegermE6digits+0x68>
    8000266c:	00000097          	auipc	ra,0x0
    80002670:	cc8080e7          	jalr	-824(ra) # 80002334 <_Z11printStringPKc>
    80002674:	00090513          	mv	a0,s2
    80002678:	00000097          	auipc	ra,0x0
    8000267c:	d00080e7          	jalr	-768(ra) # 80002378 <_Z12printIntegerm>
    80002680:	00004517          	auipc	a0,0x4
    80002684:	c8050513          	addi	a0,a0,-896 # 80006300 <_ZZ12printIntegermE6digits+0x238>
    80002688:	00000097          	auipc	ra,0x0
    8000268c:	cac080e7          	jalr	-852(ra) # 80002334 <_Z11printStringPKc>
    80002690:	0380006f          	j	800026c8 <_ZL11workerBodyCPv+0x11c>
        printString("C: i="); printInteger(i); printString("\n");
    80002694:	00004517          	auipc	a0,0x4
    80002698:	a7c50513          	addi	a0,a0,-1412 # 80006110 <_ZZ12printIntegermE6digits+0x48>
    8000269c:	00000097          	auipc	ra,0x0
    800026a0:	c98080e7          	jalr	-872(ra) # 80002334 <_Z11printStringPKc>
    800026a4:	00048513          	mv	a0,s1
    800026a8:	00000097          	auipc	ra,0x0
    800026ac:	cd0080e7          	jalr	-816(ra) # 80002378 <_Z12printIntegerm>
    800026b0:	00004517          	auipc	a0,0x4
    800026b4:	c5050513          	addi	a0,a0,-944 # 80006300 <_ZZ12printIntegermE6digits+0x238>
    800026b8:	00000097          	auipc	ra,0x0
    800026bc:	c7c080e7          	jalr	-900(ra) # 80002334 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800026c0:	0014849b          	addiw	s1,s1,1
    800026c4:	0ff4f493          	andi	s1,s1,255
    800026c8:	00500793          	li	a5,5
    800026cc:	fc97f4e3          	bgeu	a5,s1,80002694 <_ZL11workerBodyCPv+0xe8>
    printString("A finished!\n");
    800026d0:	00004517          	auipc	a0,0x4
    800026d4:	a7050513          	addi	a0,a0,-1424 # 80006140 <_ZZ12printIntegermE6digits+0x78>
    800026d8:	00000097          	auipc	ra,0x0
    800026dc:	c5c080e7          	jalr	-932(ra) # 80002334 <_Z11printStringPKc>
    finishedC = true;
    800026e0:	00100793          	li	a5,1
    800026e4:	00005717          	auipc	a4,0x5
    800026e8:	94f702a3          	sb	a5,-1723(a4) # 80007029 <_ZL9finishedC>
    thread_dispatch();
    800026ec:	fffff097          	auipc	ra,0xfffff
    800026f0:	c70080e7          	jalr	-912(ra) # 8000135c <_Z15thread_dispatchv>
}
    800026f4:	01813083          	ld	ra,24(sp)
    800026f8:	01013403          	ld	s0,16(sp)
    800026fc:	00813483          	ld	s1,8(sp)
    80002700:	00013903          	ld	s2,0(sp)
    80002704:	02010113          	addi	sp,sp,32
    80002708:	00008067          	ret

000000008000270c <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    8000270c:	fe010113          	addi	sp,sp,-32
    80002710:	00113c23          	sd	ra,24(sp)
    80002714:	00813823          	sd	s0,16(sp)
    80002718:	00913423          	sd	s1,8(sp)
    8000271c:	01213023          	sd	s2,0(sp)
    80002720:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80002724:	00000913          	li	s2,0
    80002728:	0380006f          	j	80002760 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    8000272c:	fffff097          	auipc	ra,0xfffff
    80002730:	c30080e7          	jalr	-976(ra) # 8000135c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002734:	00148493          	addi	s1,s1,1
    80002738:	000027b7          	lui	a5,0x2
    8000273c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002740:	0097ee63          	bltu	a5,s1,8000275c <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002744:	00000713          	li	a4,0
    80002748:	000077b7          	lui	a5,0x7
    8000274c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002750:	fce7eee3          	bltu	a5,a4,8000272c <_ZL11workerBodyBPv+0x20>
    80002754:	00170713          	addi	a4,a4,1
    80002758:	ff1ff06f          	j	80002748 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    8000275c:	00190913          	addi	s2,s2,1
    80002760:	00f00793          	li	a5,15
    80002764:	0327ec63          	bltu	a5,s2,8000279c <_ZL11workerBodyBPv+0x90>
        printString("B: i="); printInteger(i); printString("\n");
    80002768:	00004517          	auipc	a0,0x4
    8000276c:	8e850513          	addi	a0,a0,-1816 # 80006050 <CONSOLE_STATUS+0x40>
    80002770:	00000097          	auipc	ra,0x0
    80002774:	bc4080e7          	jalr	-1084(ra) # 80002334 <_Z11printStringPKc>
    80002778:	00090513          	mv	a0,s2
    8000277c:	00000097          	auipc	ra,0x0
    80002780:	bfc080e7          	jalr	-1028(ra) # 80002378 <_Z12printIntegerm>
    80002784:	00004517          	auipc	a0,0x4
    80002788:	b7c50513          	addi	a0,a0,-1156 # 80006300 <_ZZ12printIntegermE6digits+0x238>
    8000278c:	00000097          	auipc	ra,0x0
    80002790:	ba8080e7          	jalr	-1112(ra) # 80002334 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002794:	00000493          	li	s1,0
    80002798:	fa1ff06f          	j	80002738 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    8000279c:	00004517          	auipc	a0,0x4
    800027a0:	9b450513          	addi	a0,a0,-1612 # 80006150 <_ZZ12printIntegermE6digits+0x88>
    800027a4:	00000097          	auipc	ra,0x0
    800027a8:	b90080e7          	jalr	-1136(ra) # 80002334 <_Z11printStringPKc>
    finishedB = true;
    800027ac:	00100793          	li	a5,1
    800027b0:	00005717          	auipc	a4,0x5
    800027b4:	86f70d23          	sb	a5,-1926(a4) # 8000702a <_ZL9finishedB>
    thread_dispatch();
    800027b8:	fffff097          	auipc	ra,0xfffff
    800027bc:	ba4080e7          	jalr	-1116(ra) # 8000135c <_Z15thread_dispatchv>
}
    800027c0:	01813083          	ld	ra,24(sp)
    800027c4:	01013403          	ld	s0,16(sp)
    800027c8:	00813483          	ld	s1,8(sp)
    800027cc:	00013903          	ld	s2,0(sp)
    800027d0:	02010113          	addi	sp,sp,32
    800027d4:	00008067          	ret

00000000800027d8 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    800027d8:	fe010113          	addi	sp,sp,-32
    800027dc:	00113c23          	sd	ra,24(sp)
    800027e0:	00813823          	sd	s0,16(sp)
    800027e4:	00913423          	sd	s1,8(sp)
    800027e8:	01213023          	sd	s2,0(sp)
    800027ec:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800027f0:	00000913          	li	s2,0
    800027f4:	0380006f          	j	8000282c <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    800027f8:	fffff097          	auipc	ra,0xfffff
    800027fc:	b64080e7          	jalr	-1180(ra) # 8000135c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002800:	00148493          	addi	s1,s1,1
    80002804:	000027b7          	lui	a5,0x2
    80002808:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000280c:	0097ee63          	bltu	a5,s1,80002828 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002810:	00000713          	li	a4,0
    80002814:	000077b7          	lui	a5,0x7
    80002818:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000281c:	fce7eee3          	bltu	a5,a4,800027f8 <_ZL11workerBodyAPv+0x20>
    80002820:	00170713          	addi	a4,a4,1
    80002824:	ff1ff06f          	j	80002814 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80002828:	00190913          	addi	s2,s2,1
    8000282c:	00900793          	li	a5,9
    80002830:	0327ec63          	bltu	a5,s2,80002868 <_ZL11workerBodyAPv+0x90>
        printString("A: i="); printInteger(i); printString("\n");
    80002834:	00003517          	auipc	a0,0x3
    80002838:	7ec50513          	addi	a0,a0,2028 # 80006020 <CONSOLE_STATUS+0x10>
    8000283c:	00000097          	auipc	ra,0x0
    80002840:	af8080e7          	jalr	-1288(ra) # 80002334 <_Z11printStringPKc>
    80002844:	00090513          	mv	a0,s2
    80002848:	00000097          	auipc	ra,0x0
    8000284c:	b30080e7          	jalr	-1232(ra) # 80002378 <_Z12printIntegerm>
    80002850:	00004517          	auipc	a0,0x4
    80002854:	ab050513          	addi	a0,a0,-1360 # 80006300 <_ZZ12printIntegermE6digits+0x238>
    80002858:	00000097          	auipc	ra,0x0
    8000285c:	adc080e7          	jalr	-1316(ra) # 80002334 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002860:	00000493          	li	s1,0
    80002864:	fa1ff06f          	j	80002804 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80002868:	00004517          	auipc	a0,0x4
    8000286c:	8d850513          	addi	a0,a0,-1832 # 80006140 <_ZZ12printIntegermE6digits+0x78>
    80002870:	00000097          	auipc	ra,0x0
    80002874:	ac4080e7          	jalr	-1340(ra) # 80002334 <_Z11printStringPKc>
    finishedA = true;
    80002878:	00100793          	li	a5,1
    8000287c:	00004717          	auipc	a4,0x4
    80002880:	7af707a3          	sb	a5,1967(a4) # 8000702b <_ZL9finishedA>
}
    80002884:	01813083          	ld	ra,24(sp)
    80002888:	01013403          	ld	s0,16(sp)
    8000288c:	00813483          	ld	s1,8(sp)
    80002890:	00013903          	ld	s2,0(sp)
    80002894:	02010113          	addi	sp,sp,32
    80002898:	00008067          	ret

000000008000289c <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    8000289c:	fd010113          	addi	sp,sp,-48
    800028a0:	02113423          	sd	ra,40(sp)
    800028a4:	02813023          	sd	s0,32(sp)
    800028a8:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    800028ac:	00000613          	li	a2,0
    800028b0:	00000597          	auipc	a1,0x0
    800028b4:	f2858593          	addi	a1,a1,-216 # 800027d8 <_ZL11workerBodyAPv>
    800028b8:	fd040513          	addi	a0,s0,-48
    800028bc:	fffff097          	auipc	ra,0xfffff
    800028c0:	a3c080e7          	jalr	-1476(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    800028c4:	00004517          	auipc	a0,0x4
    800028c8:	89c50513          	addi	a0,a0,-1892 # 80006160 <_ZZ12printIntegermE6digits+0x98>
    800028cc:	00000097          	auipc	ra,0x0
    800028d0:	a68080e7          	jalr	-1432(ra) # 80002334 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800028d4:	00000613          	li	a2,0
    800028d8:	00000597          	auipc	a1,0x0
    800028dc:	e3458593          	addi	a1,a1,-460 # 8000270c <_ZL11workerBodyBPv>
    800028e0:	fd840513          	addi	a0,s0,-40
    800028e4:	fffff097          	auipc	ra,0xfffff
    800028e8:	a14080e7          	jalr	-1516(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    800028ec:	00004517          	auipc	a0,0x4
    800028f0:	88c50513          	addi	a0,a0,-1908 # 80006178 <_ZZ12printIntegermE6digits+0xb0>
    800028f4:	00000097          	auipc	ra,0x0
    800028f8:	a40080e7          	jalr	-1472(ra) # 80002334 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    800028fc:	00000613          	li	a2,0
    80002900:	00000597          	auipc	a1,0x0
    80002904:	cac58593          	addi	a1,a1,-852 # 800025ac <_ZL11workerBodyCPv>
    80002908:	fe040513          	addi	a0,s0,-32
    8000290c:	fffff097          	auipc	ra,0xfffff
    80002910:	9ec080e7          	jalr	-1556(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80002914:	00004517          	auipc	a0,0x4
    80002918:	87c50513          	addi	a0,a0,-1924 # 80006190 <_ZZ12printIntegermE6digits+0xc8>
    8000291c:	00000097          	auipc	ra,0x0
    80002920:	a18080e7          	jalr	-1512(ra) # 80002334 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80002924:	00000613          	li	a2,0
    80002928:	00000597          	auipc	a1,0x0
    8000292c:	b5458593          	addi	a1,a1,-1196 # 8000247c <_ZL11workerBodyDPv>
    80002930:	fe840513          	addi	a0,s0,-24
    80002934:	fffff097          	auipc	ra,0xfffff
    80002938:	9c4080e7          	jalr	-1596(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    8000293c:	00004517          	auipc	a0,0x4
    80002940:	86c50513          	addi	a0,a0,-1940 # 800061a8 <_ZZ12printIntegermE6digits+0xe0>
    80002944:	00000097          	auipc	ra,0x0
    80002948:	9f0080e7          	jalr	-1552(ra) # 80002334 <_Z11printStringPKc>
    8000294c:	00c0006f          	j	80002958 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80002950:	fffff097          	auipc	ra,0xfffff
    80002954:	a0c080e7          	jalr	-1524(ra) # 8000135c <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80002958:	00004797          	auipc	a5,0x4
    8000295c:	6d37c783          	lbu	a5,1747(a5) # 8000702b <_ZL9finishedA>
    80002960:	fe0788e3          	beqz	a5,80002950 <_Z18Threads_C_API_testv+0xb4>
    80002964:	00004797          	auipc	a5,0x4
    80002968:	6c67c783          	lbu	a5,1734(a5) # 8000702a <_ZL9finishedB>
    8000296c:	fe0782e3          	beqz	a5,80002950 <_Z18Threads_C_API_testv+0xb4>
    80002970:	00004797          	auipc	a5,0x4
    80002974:	6b97c783          	lbu	a5,1721(a5) # 80007029 <_ZL9finishedC>
    80002978:	fc078ce3          	beqz	a5,80002950 <_Z18Threads_C_API_testv+0xb4>
    8000297c:	00004797          	auipc	a5,0x4
    80002980:	6ac7c783          	lbu	a5,1708(a5) # 80007028 <_ZL9finishedD>
    80002984:	fc0786e3          	beqz	a5,80002950 <_Z18Threads_C_API_testv+0xb4>
    }

}
    80002988:	02813083          	ld	ra,40(sp)
    8000298c:	02013403          	ld	s0,32(sp)
    80002990:	03010113          	addi	sp,sp,48
    80002994:	00008067          	ret

0000000080002998 <_Z8userMainv>:
//#include "../test/ConsumerProducer_CPP_API_test.hpp"
//#include "System_Mode_test.hpp"

#endif

void userMain() {
    80002998:	fe010113          	addi	sp,sp,-32
    8000299c:	00113c23          	sd	ra,24(sp)
    800029a0:	00813823          	sd	s0,16(sp)
    800029a4:	00913423          	sd	s1,8(sp)
    800029a8:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    800029ac:	00004517          	auipc	a0,0x4
    800029b0:	81450513          	addi	a0,a0,-2028 # 800061c0 <_ZZ12printIntegermE6digits+0xf8>
    800029b4:	00000097          	auipc	ra,0x0
    800029b8:	980080e7          	jalr	-1664(ra) # 80002334 <_Z11printStringPKc>
    int test = __getc() - '0';
    800029bc:	00002097          	auipc	ra,0x2
    800029c0:	7ac080e7          	jalr	1964(ra) # 80005168 <__getc>
    800029c4:	fd05049b          	addiw	s1,a0,-48
    __getc(); // Enter posle broja
    800029c8:	00002097          	auipc	ra,0x2
    800029cc:	7a0080e7          	jalr	1952(ra) # 80005168 <__getc>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    800029d0:	00700793          	li	a5,7
    800029d4:	0c97ee63          	bltu	a5,s1,80002ab0 <_Z8userMainv+0x118>
    800029d8:	00249493          	slli	s1,s1,0x2
    800029dc:	00004717          	auipc	a4,0x4
    800029e0:	a3c70713          	addi	a4,a4,-1476 # 80006418 <_ZZ12printIntegermE6digits+0x350>
    800029e4:	00e484b3          	add	s1,s1,a4
    800029e8:	0004a783          	lw	a5,0(s1)
    800029ec:	00e787b3          	add	a5,a5,a4
    800029f0:	00078067          	jr	a5
        case 1:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_C_API_test();
    800029f4:	00000097          	auipc	ra,0x0
    800029f8:	ea8080e7          	jalr	-344(ra) # 8000289c <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    800029fc:	00003517          	auipc	a0,0x3
    80002a00:	7e450513          	addi	a0,a0,2020 # 800061e0 <_ZZ12printIntegermE6digits+0x118>
    80002a04:	00000097          	auipc	ra,0x0
    80002a08:	930080e7          	jalr	-1744(ra) # 80002334 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    80002a0c:	01813083          	ld	ra,24(sp)
    80002a10:	01013403          	ld	s0,16(sp)
    80002a14:	00813483          	ld	s1,8(sp)
    80002a18:	02010113          	addi	sp,sp,32
    80002a1c:	00008067          	ret
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    80002a20:	00004517          	auipc	a0,0x4
    80002a24:	80050513          	addi	a0,a0,-2048 # 80006220 <_ZZ12printIntegermE6digits+0x158>
    80002a28:	00000097          	auipc	ra,0x0
    80002a2c:	90c080e7          	jalr	-1780(ra) # 80002334 <_Z11printStringPKc>
            break;
    80002a30:	fddff06f          	j	80002a0c <_Z8userMainv+0x74>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    80002a34:	00004517          	auipc	a0,0x4
    80002a38:	82c50513          	addi	a0,a0,-2004 # 80006260 <_ZZ12printIntegermE6digits+0x198>
    80002a3c:	00000097          	auipc	ra,0x0
    80002a40:	8f8080e7          	jalr	-1800(ra) # 80002334 <_Z11printStringPKc>
            break;
    80002a44:	fc9ff06f          	j	80002a0c <_Z8userMainv+0x74>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    80002a48:	00004517          	auipc	a0,0x4
    80002a4c:	86850513          	addi	a0,a0,-1944 # 800062b0 <_ZZ12printIntegermE6digits+0x1e8>
    80002a50:	00000097          	auipc	ra,0x0
    80002a54:	8e4080e7          	jalr	-1820(ra) # 80002334 <_Z11printStringPKc>
            break;
    80002a58:	fb5ff06f          	j	80002a0c <_Z8userMainv+0x74>
            printString("TEST 5 (zadatak 4., thread_sleep test C API)\n");
    80002a5c:	00004517          	auipc	a0,0x4
    80002a60:	8ac50513          	addi	a0,a0,-1876 # 80006308 <_ZZ12printIntegermE6digits+0x240>
    80002a64:	00000097          	auipc	ra,0x0
    80002a68:	8d0080e7          	jalr	-1840(ra) # 80002334 <_Z11printStringPKc>
            break;
    80002a6c:	fa1ff06f          	j	80002a0c <_Z8userMainv+0x74>
            printString("TEST 6 (zadatak 4. CPP API i asinhrona promena konteksta)\n");
    80002a70:	00004517          	auipc	a0,0x4
    80002a74:	8c850513          	addi	a0,a0,-1848 # 80006338 <_ZZ12printIntegermE6digits+0x270>
    80002a78:	00000097          	auipc	ra,0x0
    80002a7c:	8bc080e7          	jalr	-1860(ra) # 80002334 <_Z11printStringPKc>
            break;
    80002a80:	f8dff06f          	j	80002a0c <_Z8userMainv+0x74>
            System_Mode_test();
    80002a84:	00000097          	auipc	ra,0x0
    80002a88:	4e4080e7          	jalr	1252(ra) # 80002f68 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    80002a8c:	00004517          	auipc	a0,0x4
    80002a90:	8ec50513          	addi	a0,a0,-1812 # 80006378 <_ZZ12printIntegermE6digits+0x2b0>
    80002a94:	00000097          	auipc	ra,0x0
    80002a98:	8a0080e7          	jalr	-1888(ra) # 80002334 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80002a9c:	00004517          	auipc	a0,0x4
    80002aa0:	8fc50513          	addi	a0,a0,-1796 # 80006398 <_ZZ12printIntegermE6digits+0x2d0>
    80002aa4:	00000097          	auipc	ra,0x0
    80002aa8:	890080e7          	jalr	-1904(ra) # 80002334 <_Z11printStringPKc>
            break;
    80002aac:	f61ff06f          	j	80002a0c <_Z8userMainv+0x74>
            printString("Niste uneli odgovarajuci broj za test\n");
    80002ab0:	00004517          	auipc	a0,0x4
    80002ab4:	94050513          	addi	a0,a0,-1728 # 800063f0 <_ZZ12printIntegermE6digits+0x328>
    80002ab8:	00000097          	auipc	ra,0x0
    80002abc:	87c080e7          	jalr	-1924(ra) # 80002334 <_Z11printStringPKc>
    80002ac0:	f4dff06f          	j	80002a0c <_Z8userMainv+0x74>

0000000080002ac4 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80002ac4:	fe010113          	addi	sp,sp,-32
    80002ac8:	00113c23          	sd	ra,24(sp)
    80002acc:	00813823          	sd	s0,16(sp)
    80002ad0:	00913423          	sd	s1,8(sp)
    80002ad4:	01213023          	sd	s2,0(sp)
    80002ad8:	02010413          	addi	s0,sp,32
    80002adc:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80002ae0:	00100793          	li	a5,1
    80002ae4:	02a7f863          	bgeu	a5,a0,80002b14 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80002ae8:	00a00793          	li	a5,10
    80002aec:	02f577b3          	remu	a5,a0,a5
    80002af0:	02078e63          	beqz	a5,80002b2c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80002af4:	fff48513          	addi	a0,s1,-1
    80002af8:	00000097          	auipc	ra,0x0
    80002afc:	fcc080e7          	jalr	-52(ra) # 80002ac4 <_ZL9fibonaccim>
    80002b00:	00050913          	mv	s2,a0
    80002b04:	ffe48513          	addi	a0,s1,-2
    80002b08:	00000097          	auipc	ra,0x0
    80002b0c:	fbc080e7          	jalr	-68(ra) # 80002ac4 <_ZL9fibonaccim>
    80002b10:	00a90533          	add	a0,s2,a0
}
    80002b14:	01813083          	ld	ra,24(sp)
    80002b18:	01013403          	ld	s0,16(sp)
    80002b1c:	00813483          	ld	s1,8(sp)
    80002b20:	00013903          	ld	s2,0(sp)
    80002b24:	02010113          	addi	sp,sp,32
    80002b28:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80002b2c:	fffff097          	auipc	ra,0xfffff
    80002b30:	830080e7          	jalr	-2000(ra) # 8000135c <_Z15thread_dispatchv>
    80002b34:	fc1ff06f          	j	80002af4 <_ZL9fibonaccim+0x30>

0000000080002b38 <_ZL11workerBodyDPv>:
    printString("C finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80002b38:	fe010113          	addi	sp,sp,-32
    80002b3c:	00113c23          	sd	ra,24(sp)
    80002b40:	00813823          	sd	s0,16(sp)
    80002b44:	00913423          	sd	s1,8(sp)
    80002b48:	01213023          	sd	s2,0(sp)
    80002b4c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80002b50:	00a00493          	li	s1,10
    80002b54:	0380006f          	j	80002b8c <_ZL11workerBodyDPv+0x54>
    for (; i < 13; i++) {
        printString("D: i="); printInteger(i); printString("\n");
    80002b58:	00003517          	auipc	a0,0x3
    80002b5c:	58050513          	addi	a0,a0,1408 # 800060d8 <_ZZ12printIntegermE6digits+0x10>
    80002b60:	fffff097          	auipc	ra,0xfffff
    80002b64:	7d4080e7          	jalr	2004(ra) # 80002334 <_Z11printStringPKc>
    80002b68:	00048513          	mv	a0,s1
    80002b6c:	00000097          	auipc	ra,0x0
    80002b70:	80c080e7          	jalr	-2036(ra) # 80002378 <_Z12printIntegerm>
    80002b74:	00003517          	auipc	a0,0x3
    80002b78:	78c50513          	addi	a0,a0,1932 # 80006300 <_ZZ12printIntegermE6digits+0x238>
    80002b7c:	fffff097          	auipc	ra,0xfffff
    80002b80:	7b8080e7          	jalr	1976(ra) # 80002334 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80002b84:	0014849b          	addiw	s1,s1,1
    80002b88:	0ff4f493          	andi	s1,s1,255
    80002b8c:	00c00793          	li	a5,12
    80002b90:	fc97f4e3          	bgeu	a5,s1,80002b58 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80002b94:	00003517          	auipc	a0,0x3
    80002b98:	54c50513          	addi	a0,a0,1356 # 800060e0 <_ZZ12printIntegermE6digits+0x18>
    80002b9c:	fffff097          	auipc	ra,0xfffff
    80002ba0:	798080e7          	jalr	1944(ra) # 80002334 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80002ba4:	00500313          	li	t1,5
    thread_dispatch();
    80002ba8:	ffffe097          	auipc	ra,0xffffe
    80002bac:	7b4080e7          	jalr	1972(ra) # 8000135c <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80002bb0:	01000513          	li	a0,16
    80002bb4:	00000097          	auipc	ra,0x0
    80002bb8:	f10080e7          	jalr	-240(ra) # 80002ac4 <_ZL9fibonaccim>
    80002bbc:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInteger(result); printString("\n");
    80002bc0:	00003517          	auipc	a0,0x3
    80002bc4:	53050513          	addi	a0,a0,1328 # 800060f0 <_ZZ12printIntegermE6digits+0x28>
    80002bc8:	fffff097          	auipc	ra,0xfffff
    80002bcc:	76c080e7          	jalr	1900(ra) # 80002334 <_Z11printStringPKc>
    80002bd0:	00090513          	mv	a0,s2
    80002bd4:	fffff097          	auipc	ra,0xfffff
    80002bd8:	7a4080e7          	jalr	1956(ra) # 80002378 <_Z12printIntegerm>
    80002bdc:	00003517          	auipc	a0,0x3
    80002be0:	72450513          	addi	a0,a0,1828 # 80006300 <_ZZ12printIntegermE6digits+0x238>
    80002be4:	fffff097          	auipc	ra,0xfffff
    80002be8:	750080e7          	jalr	1872(ra) # 80002334 <_Z11printStringPKc>
    80002bec:	0380006f          	j	80002c24 <_ZL11workerBodyDPv+0xec>

    for (; i < 16; i++) {
        printString("D: i="); printInteger(i); printString("\n");
    80002bf0:	00003517          	auipc	a0,0x3
    80002bf4:	4e850513          	addi	a0,a0,1256 # 800060d8 <_ZZ12printIntegermE6digits+0x10>
    80002bf8:	fffff097          	auipc	ra,0xfffff
    80002bfc:	73c080e7          	jalr	1852(ra) # 80002334 <_Z11printStringPKc>
    80002c00:	00048513          	mv	a0,s1
    80002c04:	fffff097          	auipc	ra,0xfffff
    80002c08:	774080e7          	jalr	1908(ra) # 80002378 <_Z12printIntegerm>
    80002c0c:	00003517          	auipc	a0,0x3
    80002c10:	6f450513          	addi	a0,a0,1780 # 80006300 <_ZZ12printIntegermE6digits+0x238>
    80002c14:	fffff097          	auipc	ra,0xfffff
    80002c18:	720080e7          	jalr	1824(ra) # 80002334 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80002c1c:	0014849b          	addiw	s1,s1,1
    80002c20:	0ff4f493          	andi	s1,s1,255
    80002c24:	00f00793          	li	a5,15
    80002c28:	fc97f4e3          	bgeu	a5,s1,80002bf0 <_ZL11workerBodyDPv+0xb8>
    }

    printString("D finished!\n");
    80002c2c:	00003517          	auipc	a0,0x3
    80002c30:	4d450513          	addi	a0,a0,1236 # 80006100 <_ZZ12printIntegermE6digits+0x38>
    80002c34:	fffff097          	auipc	ra,0xfffff
    80002c38:	700080e7          	jalr	1792(ra) # 80002334 <_Z11printStringPKc>
    finishedD = true;
    80002c3c:	00100793          	li	a5,1
    80002c40:	00004717          	auipc	a4,0x4
    80002c44:	3ef70623          	sb	a5,1004(a4) # 8000702c <_ZL9finishedD>
    thread_dispatch();
    80002c48:	ffffe097          	auipc	ra,0xffffe
    80002c4c:	714080e7          	jalr	1812(ra) # 8000135c <_Z15thread_dispatchv>
}
    80002c50:	01813083          	ld	ra,24(sp)
    80002c54:	01013403          	ld	s0,16(sp)
    80002c58:	00813483          	ld	s1,8(sp)
    80002c5c:	00013903          	ld	s2,0(sp)
    80002c60:	02010113          	addi	sp,sp,32
    80002c64:	00008067          	ret

0000000080002c68 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80002c68:	fe010113          	addi	sp,sp,-32
    80002c6c:	00113c23          	sd	ra,24(sp)
    80002c70:	00813823          	sd	s0,16(sp)
    80002c74:	00913423          	sd	s1,8(sp)
    80002c78:	01213023          	sd	s2,0(sp)
    80002c7c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80002c80:	00000493          	li	s1,0
    80002c84:	0380006f          	j	80002cbc <_ZL11workerBodyCPv+0x54>
        printString("C: i="); printInteger(i); printString("\n");
    80002c88:	00003517          	auipc	a0,0x3
    80002c8c:	48850513          	addi	a0,a0,1160 # 80006110 <_ZZ12printIntegermE6digits+0x48>
    80002c90:	fffff097          	auipc	ra,0xfffff
    80002c94:	6a4080e7          	jalr	1700(ra) # 80002334 <_Z11printStringPKc>
    80002c98:	00048513          	mv	a0,s1
    80002c9c:	fffff097          	auipc	ra,0xfffff
    80002ca0:	6dc080e7          	jalr	1756(ra) # 80002378 <_Z12printIntegerm>
    80002ca4:	00003517          	auipc	a0,0x3
    80002ca8:	65c50513          	addi	a0,a0,1628 # 80006300 <_ZZ12printIntegermE6digits+0x238>
    80002cac:	fffff097          	auipc	ra,0xfffff
    80002cb0:	688080e7          	jalr	1672(ra) # 80002334 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80002cb4:	0014849b          	addiw	s1,s1,1
    80002cb8:	0ff4f493          	andi	s1,s1,255
    80002cbc:	00200793          	li	a5,2
    80002cc0:	fc97f4e3          	bgeu	a5,s1,80002c88 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80002cc4:	00003517          	auipc	a0,0x3
    80002cc8:	45450513          	addi	a0,a0,1108 # 80006118 <_ZZ12printIntegermE6digits+0x50>
    80002ccc:	fffff097          	auipc	ra,0xfffff
    80002cd0:	668080e7          	jalr	1640(ra) # 80002334 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80002cd4:	00700313          	li	t1,7
    thread_dispatch();
    80002cd8:	ffffe097          	auipc	ra,0xffffe
    80002cdc:	684080e7          	jalr	1668(ra) # 8000135c <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80002ce0:	00030913          	mv	s2,t1
    printString("C: t1="); printInteger(t1); printString("\n");
    80002ce4:	00003517          	auipc	a0,0x3
    80002ce8:	44450513          	addi	a0,a0,1092 # 80006128 <_ZZ12printIntegermE6digits+0x60>
    80002cec:	fffff097          	auipc	ra,0xfffff
    80002cf0:	648080e7          	jalr	1608(ra) # 80002334 <_Z11printStringPKc>
    80002cf4:	00090513          	mv	a0,s2
    80002cf8:	fffff097          	auipc	ra,0xfffff
    80002cfc:	680080e7          	jalr	1664(ra) # 80002378 <_Z12printIntegerm>
    80002d00:	00003517          	auipc	a0,0x3
    80002d04:	60050513          	addi	a0,a0,1536 # 80006300 <_ZZ12printIntegermE6digits+0x238>
    80002d08:	fffff097          	auipc	ra,0xfffff
    80002d0c:	62c080e7          	jalr	1580(ra) # 80002334 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80002d10:	00c00513          	li	a0,12
    80002d14:	00000097          	auipc	ra,0x0
    80002d18:	db0080e7          	jalr	-592(ra) # 80002ac4 <_ZL9fibonaccim>
    80002d1c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInteger(result); printString("\n");
    80002d20:	00003517          	auipc	a0,0x3
    80002d24:	41050513          	addi	a0,a0,1040 # 80006130 <_ZZ12printIntegermE6digits+0x68>
    80002d28:	fffff097          	auipc	ra,0xfffff
    80002d2c:	60c080e7          	jalr	1548(ra) # 80002334 <_Z11printStringPKc>
    80002d30:	00090513          	mv	a0,s2
    80002d34:	fffff097          	auipc	ra,0xfffff
    80002d38:	644080e7          	jalr	1604(ra) # 80002378 <_Z12printIntegerm>
    80002d3c:	00003517          	auipc	a0,0x3
    80002d40:	5c450513          	addi	a0,a0,1476 # 80006300 <_ZZ12printIntegermE6digits+0x238>
    80002d44:	fffff097          	auipc	ra,0xfffff
    80002d48:	5f0080e7          	jalr	1520(ra) # 80002334 <_Z11printStringPKc>
    80002d4c:	0380006f          	j	80002d84 <_ZL11workerBodyCPv+0x11c>
        printString("C: i="); printInteger(i); printString("\n");
    80002d50:	00003517          	auipc	a0,0x3
    80002d54:	3c050513          	addi	a0,a0,960 # 80006110 <_ZZ12printIntegermE6digits+0x48>
    80002d58:	fffff097          	auipc	ra,0xfffff
    80002d5c:	5dc080e7          	jalr	1500(ra) # 80002334 <_Z11printStringPKc>
    80002d60:	00048513          	mv	a0,s1
    80002d64:	fffff097          	auipc	ra,0xfffff
    80002d68:	614080e7          	jalr	1556(ra) # 80002378 <_Z12printIntegerm>
    80002d6c:	00003517          	auipc	a0,0x3
    80002d70:	59450513          	addi	a0,a0,1428 # 80006300 <_ZZ12printIntegermE6digits+0x238>
    80002d74:	fffff097          	auipc	ra,0xfffff
    80002d78:	5c0080e7          	jalr	1472(ra) # 80002334 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80002d7c:	0014849b          	addiw	s1,s1,1
    80002d80:	0ff4f493          	andi	s1,s1,255
    80002d84:	00500793          	li	a5,5
    80002d88:	fc97f4e3          	bgeu	a5,s1,80002d50 <_ZL11workerBodyCPv+0xe8>
    printString("C finished!\n");
    80002d8c:	00003517          	auipc	a0,0x3
    80002d90:	6ac50513          	addi	a0,a0,1708 # 80006438 <_ZZ12printIntegermE6digits+0x370>
    80002d94:	fffff097          	auipc	ra,0xfffff
    80002d98:	5a0080e7          	jalr	1440(ra) # 80002334 <_Z11printStringPKc>
    finishedC = true;
    80002d9c:	00100793          	li	a5,1
    80002da0:	00004717          	auipc	a4,0x4
    80002da4:	28f706a3          	sb	a5,653(a4) # 8000702d <_ZL9finishedC>
    thread_dispatch();
    80002da8:	ffffe097          	auipc	ra,0xffffe
    80002dac:	5b4080e7          	jalr	1460(ra) # 8000135c <_Z15thread_dispatchv>
}
    80002db0:	01813083          	ld	ra,24(sp)
    80002db4:	01013403          	ld	s0,16(sp)
    80002db8:	00813483          	ld	s1,8(sp)
    80002dbc:	00013903          	ld	s2,0(sp)
    80002dc0:	02010113          	addi	sp,sp,32
    80002dc4:	00008067          	ret

0000000080002dc8 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80002dc8:	fe010113          	addi	sp,sp,-32
    80002dcc:	00113c23          	sd	ra,24(sp)
    80002dd0:	00813823          	sd	s0,16(sp)
    80002dd4:	00913423          	sd	s1,8(sp)
    80002dd8:	01213023          	sd	s2,0(sp)
    80002ddc:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80002de0:	00000913          	li	s2,0
    80002de4:	0400006f          	j	80002e24 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80002de8:	ffffe097          	auipc	ra,0xffffe
    80002dec:	574080e7          	jalr	1396(ra) # 8000135c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002df0:	00148493          	addi	s1,s1,1
    80002df4:	000027b7          	lui	a5,0x2
    80002df8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002dfc:	0097ee63          	bltu	a5,s1,80002e18 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002e00:	00000713          	li	a4,0
    80002e04:	000077b7          	lui	a5,0x7
    80002e08:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002e0c:	fce7eee3          	bltu	a5,a4,80002de8 <_ZL11workerBodyBPv+0x20>
    80002e10:	00170713          	addi	a4,a4,1
    80002e14:	ff1ff06f          	j	80002e04 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80002e18:	00a00793          	li	a5,10
    80002e1c:	04f90263          	beq	s2,a5,80002e60 <_ZL11workerBodyBPv+0x98>
    for (uint64 i = 0; i < 16; i++) {
    80002e20:	00190913          	addi	s2,s2,1
    80002e24:	00f00793          	li	a5,15
    80002e28:	0527e063          	bltu	a5,s2,80002e68 <_ZL11workerBodyBPv+0xa0>
        printString("B: i="); printInteger(i); printString("\n");
    80002e2c:	00003517          	auipc	a0,0x3
    80002e30:	22450513          	addi	a0,a0,548 # 80006050 <CONSOLE_STATUS+0x40>
    80002e34:	fffff097          	auipc	ra,0xfffff
    80002e38:	500080e7          	jalr	1280(ra) # 80002334 <_Z11printStringPKc>
    80002e3c:	00090513          	mv	a0,s2
    80002e40:	fffff097          	auipc	ra,0xfffff
    80002e44:	538080e7          	jalr	1336(ra) # 80002378 <_Z12printIntegerm>
    80002e48:	00003517          	auipc	a0,0x3
    80002e4c:	4b850513          	addi	a0,a0,1208 # 80006300 <_ZZ12printIntegermE6digits+0x238>
    80002e50:	fffff097          	auipc	ra,0xfffff
    80002e54:	4e4080e7          	jalr	1252(ra) # 80002334 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002e58:	00000493          	li	s1,0
    80002e5c:	f99ff06f          	j	80002df4 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80002e60:	14102ff3          	csrr	t6,sepc
    80002e64:	fbdff06f          	j	80002e20 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80002e68:	00003517          	auipc	a0,0x3
    80002e6c:	2e850513          	addi	a0,a0,744 # 80006150 <_ZZ12printIntegermE6digits+0x88>
    80002e70:	fffff097          	auipc	ra,0xfffff
    80002e74:	4c4080e7          	jalr	1220(ra) # 80002334 <_Z11printStringPKc>
    finishedB = true;
    80002e78:	00100793          	li	a5,1
    80002e7c:	00004717          	auipc	a4,0x4
    80002e80:	1af70923          	sb	a5,434(a4) # 8000702e <_ZL9finishedB>
    thread_dispatch();
    80002e84:	ffffe097          	auipc	ra,0xffffe
    80002e88:	4d8080e7          	jalr	1240(ra) # 8000135c <_Z15thread_dispatchv>
}
    80002e8c:	01813083          	ld	ra,24(sp)
    80002e90:	01013403          	ld	s0,16(sp)
    80002e94:	00813483          	ld	s1,8(sp)
    80002e98:	00013903          	ld	s2,0(sp)
    80002e9c:	02010113          	addi	sp,sp,32
    80002ea0:	00008067          	ret

0000000080002ea4 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80002ea4:	fe010113          	addi	sp,sp,-32
    80002ea8:	00113c23          	sd	ra,24(sp)
    80002eac:	00813823          	sd	s0,16(sp)
    80002eb0:	00913423          	sd	s1,8(sp)
    80002eb4:	01213023          	sd	s2,0(sp)
    80002eb8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80002ebc:	00000913          	li	s2,0
    80002ec0:	0380006f          	j	80002ef8 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80002ec4:	ffffe097          	auipc	ra,0xffffe
    80002ec8:	498080e7          	jalr	1176(ra) # 8000135c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002ecc:	00148493          	addi	s1,s1,1
    80002ed0:	000027b7          	lui	a5,0x2
    80002ed4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002ed8:	0097ee63          	bltu	a5,s1,80002ef4 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002edc:	00000713          	li	a4,0
    80002ee0:	000077b7          	lui	a5,0x7
    80002ee4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002ee8:	fce7eee3          	bltu	a5,a4,80002ec4 <_ZL11workerBodyAPv+0x20>
    80002eec:	00170713          	addi	a4,a4,1
    80002ef0:	ff1ff06f          	j	80002ee0 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80002ef4:	00190913          	addi	s2,s2,1
    80002ef8:	00900793          	li	a5,9
    80002efc:	0327ec63          	bltu	a5,s2,80002f34 <_ZL11workerBodyAPv+0x90>
        printString("A: i="); printInteger(i); printString("\n");
    80002f00:	00003517          	auipc	a0,0x3
    80002f04:	12050513          	addi	a0,a0,288 # 80006020 <CONSOLE_STATUS+0x10>
    80002f08:	fffff097          	auipc	ra,0xfffff
    80002f0c:	42c080e7          	jalr	1068(ra) # 80002334 <_Z11printStringPKc>
    80002f10:	00090513          	mv	a0,s2
    80002f14:	fffff097          	auipc	ra,0xfffff
    80002f18:	464080e7          	jalr	1124(ra) # 80002378 <_Z12printIntegerm>
    80002f1c:	00003517          	auipc	a0,0x3
    80002f20:	3e450513          	addi	a0,a0,996 # 80006300 <_ZZ12printIntegermE6digits+0x238>
    80002f24:	fffff097          	auipc	ra,0xfffff
    80002f28:	410080e7          	jalr	1040(ra) # 80002334 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002f2c:	00000493          	li	s1,0
    80002f30:	fa1ff06f          	j	80002ed0 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80002f34:	00003517          	auipc	a0,0x3
    80002f38:	20c50513          	addi	a0,a0,524 # 80006140 <_ZZ12printIntegermE6digits+0x78>
    80002f3c:	fffff097          	auipc	ra,0xfffff
    80002f40:	3f8080e7          	jalr	1016(ra) # 80002334 <_Z11printStringPKc>
    finishedA = true;
    80002f44:	00100793          	li	a5,1
    80002f48:	00004717          	auipc	a4,0x4
    80002f4c:	0ef703a3          	sb	a5,231(a4) # 8000702f <_ZL9finishedA>
}
    80002f50:	01813083          	ld	ra,24(sp)
    80002f54:	01013403          	ld	s0,16(sp)
    80002f58:	00813483          	ld	s1,8(sp)
    80002f5c:	00013903          	ld	s2,0(sp)
    80002f60:	02010113          	addi	sp,sp,32
    80002f64:	00008067          	ret

0000000080002f68 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80002f68:	fd010113          	addi	sp,sp,-48
    80002f6c:	02113423          	sd	ra,40(sp)
    80002f70:	02813023          	sd	s0,32(sp)
    80002f74:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80002f78:	00000613          	li	a2,0
    80002f7c:	00000597          	auipc	a1,0x0
    80002f80:	f2858593          	addi	a1,a1,-216 # 80002ea4 <_ZL11workerBodyAPv>
    80002f84:	fd040513          	addi	a0,s0,-48
    80002f88:	ffffe097          	auipc	ra,0xffffe
    80002f8c:	370080e7          	jalr	880(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80002f90:	00003517          	auipc	a0,0x3
    80002f94:	1d050513          	addi	a0,a0,464 # 80006160 <_ZZ12printIntegermE6digits+0x98>
    80002f98:	fffff097          	auipc	ra,0xfffff
    80002f9c:	39c080e7          	jalr	924(ra) # 80002334 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80002fa0:	00000613          	li	a2,0
    80002fa4:	00000597          	auipc	a1,0x0
    80002fa8:	e2458593          	addi	a1,a1,-476 # 80002dc8 <_ZL11workerBodyBPv>
    80002fac:	fd840513          	addi	a0,s0,-40
    80002fb0:	ffffe097          	auipc	ra,0xffffe
    80002fb4:	348080e7          	jalr	840(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80002fb8:	00003517          	auipc	a0,0x3
    80002fbc:	1c050513          	addi	a0,a0,448 # 80006178 <_ZZ12printIntegermE6digits+0xb0>
    80002fc0:	fffff097          	auipc	ra,0xfffff
    80002fc4:	374080e7          	jalr	884(ra) # 80002334 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80002fc8:	00000613          	li	a2,0
    80002fcc:	00000597          	auipc	a1,0x0
    80002fd0:	c9c58593          	addi	a1,a1,-868 # 80002c68 <_ZL11workerBodyCPv>
    80002fd4:	fe040513          	addi	a0,s0,-32
    80002fd8:	ffffe097          	auipc	ra,0xffffe
    80002fdc:	320080e7          	jalr	800(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80002fe0:	00003517          	auipc	a0,0x3
    80002fe4:	1b050513          	addi	a0,a0,432 # 80006190 <_ZZ12printIntegermE6digits+0xc8>
    80002fe8:	fffff097          	auipc	ra,0xfffff
    80002fec:	34c080e7          	jalr	844(ra) # 80002334 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80002ff0:	00000613          	li	a2,0
    80002ff4:	00000597          	auipc	a1,0x0
    80002ff8:	b4458593          	addi	a1,a1,-1212 # 80002b38 <_ZL11workerBodyDPv>
    80002ffc:	fe840513          	addi	a0,s0,-24
    80003000:	ffffe097          	auipc	ra,0xffffe
    80003004:	2f8080e7          	jalr	760(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80003008:	00003517          	auipc	a0,0x3
    8000300c:	1a050513          	addi	a0,a0,416 # 800061a8 <_ZZ12printIntegermE6digits+0xe0>
    80003010:	fffff097          	auipc	ra,0xfffff
    80003014:	324080e7          	jalr	804(ra) # 80002334 <_Z11printStringPKc>
    80003018:	00c0006f          	j	80003024 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    8000301c:	ffffe097          	auipc	ra,0xffffe
    80003020:	340080e7          	jalr	832(ra) # 8000135c <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80003024:	00004797          	auipc	a5,0x4
    80003028:	00b7c783          	lbu	a5,11(a5) # 8000702f <_ZL9finishedA>
    8000302c:	fe0788e3          	beqz	a5,8000301c <_Z16System_Mode_testv+0xb4>
    80003030:	00004797          	auipc	a5,0x4
    80003034:	ffe7c783          	lbu	a5,-2(a5) # 8000702e <_ZL9finishedB>
    80003038:	fe0782e3          	beqz	a5,8000301c <_Z16System_Mode_testv+0xb4>
    8000303c:	00004797          	auipc	a5,0x4
    80003040:	ff17c783          	lbu	a5,-15(a5) # 8000702d <_ZL9finishedC>
    80003044:	fc078ce3          	beqz	a5,8000301c <_Z16System_Mode_testv+0xb4>
    80003048:	00004797          	auipc	a5,0x4
    8000304c:	fe47c783          	lbu	a5,-28(a5) # 8000702c <_ZL9finishedD>
    80003050:	fc0786e3          	beqz	a5,8000301c <_Z16System_Mode_testv+0xb4>
    }

}
    80003054:	02813083          	ld	ra,40(sp)
    80003058:	02013403          	ld	s0,32(sp)
    8000305c:	03010113          	addi	sp,sp,48
    80003060:	00008067          	ret

0000000080003064 <start>:
    80003064:	ff010113          	addi	sp,sp,-16
    80003068:	00813423          	sd	s0,8(sp)
    8000306c:	01010413          	addi	s0,sp,16
    80003070:	300027f3          	csrr	a5,mstatus
    80003074:	ffffe737          	lui	a4,0xffffe
    80003078:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff656f>
    8000307c:	00e7f7b3          	and	a5,a5,a4
    80003080:	00001737          	lui	a4,0x1
    80003084:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80003088:	00e7e7b3          	or	a5,a5,a4
    8000308c:	30079073          	csrw	mstatus,a5
    80003090:	00000797          	auipc	a5,0x0
    80003094:	16078793          	addi	a5,a5,352 # 800031f0 <system_main>
    80003098:	34179073          	csrw	mepc,a5
    8000309c:	00000793          	li	a5,0
    800030a0:	18079073          	csrw	satp,a5
    800030a4:	000107b7          	lui	a5,0x10
    800030a8:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800030ac:	30279073          	csrw	medeleg,a5
    800030b0:	30379073          	csrw	mideleg,a5
    800030b4:	104027f3          	csrr	a5,sie
    800030b8:	2227e793          	ori	a5,a5,546
    800030bc:	10479073          	csrw	sie,a5
    800030c0:	fff00793          	li	a5,-1
    800030c4:	00a7d793          	srli	a5,a5,0xa
    800030c8:	3b079073          	csrw	pmpaddr0,a5
    800030cc:	00f00793          	li	a5,15
    800030d0:	3a079073          	csrw	pmpcfg0,a5
    800030d4:	f14027f3          	csrr	a5,mhartid
    800030d8:	0200c737          	lui	a4,0x200c
    800030dc:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800030e0:	0007869b          	sext.w	a3,a5
    800030e4:	00269713          	slli	a4,a3,0x2
    800030e8:	000f4637          	lui	a2,0xf4
    800030ec:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800030f0:	00d70733          	add	a4,a4,a3
    800030f4:	0037979b          	slliw	a5,a5,0x3
    800030f8:	020046b7          	lui	a3,0x2004
    800030fc:	00d787b3          	add	a5,a5,a3
    80003100:	00c585b3          	add	a1,a1,a2
    80003104:	00371693          	slli	a3,a4,0x3
    80003108:	00004717          	auipc	a4,0x4
    8000310c:	f2870713          	addi	a4,a4,-216 # 80007030 <timer_scratch>
    80003110:	00b7b023          	sd	a1,0(a5)
    80003114:	00d70733          	add	a4,a4,a3
    80003118:	00f73c23          	sd	a5,24(a4)
    8000311c:	02c73023          	sd	a2,32(a4)
    80003120:	34071073          	csrw	mscratch,a4
    80003124:	00000797          	auipc	a5,0x0
    80003128:	6ec78793          	addi	a5,a5,1772 # 80003810 <timervec>
    8000312c:	30579073          	csrw	mtvec,a5
    80003130:	300027f3          	csrr	a5,mstatus
    80003134:	0087e793          	ori	a5,a5,8
    80003138:	30079073          	csrw	mstatus,a5
    8000313c:	304027f3          	csrr	a5,mie
    80003140:	0807e793          	ori	a5,a5,128
    80003144:	30479073          	csrw	mie,a5
    80003148:	f14027f3          	csrr	a5,mhartid
    8000314c:	0007879b          	sext.w	a5,a5
    80003150:	00078213          	mv	tp,a5
    80003154:	30200073          	mret
    80003158:	00813403          	ld	s0,8(sp)
    8000315c:	01010113          	addi	sp,sp,16
    80003160:	00008067          	ret

0000000080003164 <timerinit>:
    80003164:	ff010113          	addi	sp,sp,-16
    80003168:	00813423          	sd	s0,8(sp)
    8000316c:	01010413          	addi	s0,sp,16
    80003170:	f14027f3          	csrr	a5,mhartid
    80003174:	0200c737          	lui	a4,0x200c
    80003178:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    8000317c:	0007869b          	sext.w	a3,a5
    80003180:	00269713          	slli	a4,a3,0x2
    80003184:	000f4637          	lui	a2,0xf4
    80003188:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    8000318c:	00d70733          	add	a4,a4,a3
    80003190:	0037979b          	slliw	a5,a5,0x3
    80003194:	020046b7          	lui	a3,0x2004
    80003198:	00d787b3          	add	a5,a5,a3
    8000319c:	00c585b3          	add	a1,a1,a2
    800031a0:	00371693          	slli	a3,a4,0x3
    800031a4:	00004717          	auipc	a4,0x4
    800031a8:	e8c70713          	addi	a4,a4,-372 # 80007030 <timer_scratch>
    800031ac:	00b7b023          	sd	a1,0(a5)
    800031b0:	00d70733          	add	a4,a4,a3
    800031b4:	00f73c23          	sd	a5,24(a4)
    800031b8:	02c73023          	sd	a2,32(a4)
    800031bc:	34071073          	csrw	mscratch,a4
    800031c0:	00000797          	auipc	a5,0x0
    800031c4:	65078793          	addi	a5,a5,1616 # 80003810 <timervec>
    800031c8:	30579073          	csrw	mtvec,a5
    800031cc:	300027f3          	csrr	a5,mstatus
    800031d0:	0087e793          	ori	a5,a5,8
    800031d4:	30079073          	csrw	mstatus,a5
    800031d8:	304027f3          	csrr	a5,mie
    800031dc:	0807e793          	ori	a5,a5,128
    800031e0:	30479073          	csrw	mie,a5
    800031e4:	00813403          	ld	s0,8(sp)
    800031e8:	01010113          	addi	sp,sp,16
    800031ec:	00008067          	ret

00000000800031f0 <system_main>:
    800031f0:	fe010113          	addi	sp,sp,-32
    800031f4:	00813823          	sd	s0,16(sp)
    800031f8:	00913423          	sd	s1,8(sp)
    800031fc:	00113c23          	sd	ra,24(sp)
    80003200:	02010413          	addi	s0,sp,32
    80003204:	00000097          	auipc	ra,0x0
    80003208:	0c4080e7          	jalr	196(ra) # 800032c8 <cpuid>
    8000320c:	00004497          	auipc	s1,0x4
    80003210:	db448493          	addi	s1,s1,-588 # 80006fc0 <started>
    80003214:	02050263          	beqz	a0,80003238 <system_main+0x48>
    80003218:	0004a783          	lw	a5,0(s1)
    8000321c:	0007879b          	sext.w	a5,a5
    80003220:	fe078ce3          	beqz	a5,80003218 <system_main+0x28>
    80003224:	0ff0000f          	fence
    80003228:	00003517          	auipc	a0,0x3
    8000322c:	25050513          	addi	a0,a0,592 # 80006478 <_ZZ12printIntegermE6digits+0x3b0>
    80003230:	00001097          	auipc	ra,0x1
    80003234:	a7c080e7          	jalr	-1412(ra) # 80003cac <panic>
    80003238:	00001097          	auipc	ra,0x1
    8000323c:	9d0080e7          	jalr	-1584(ra) # 80003c08 <consoleinit>
    80003240:	00001097          	auipc	ra,0x1
    80003244:	15c080e7          	jalr	348(ra) # 8000439c <printfinit>
    80003248:	00003517          	auipc	a0,0x3
    8000324c:	0b850513          	addi	a0,a0,184 # 80006300 <_ZZ12printIntegermE6digits+0x238>
    80003250:	00001097          	auipc	ra,0x1
    80003254:	ab8080e7          	jalr	-1352(ra) # 80003d08 <__printf>
    80003258:	00003517          	auipc	a0,0x3
    8000325c:	1f050513          	addi	a0,a0,496 # 80006448 <_ZZ12printIntegermE6digits+0x380>
    80003260:	00001097          	auipc	ra,0x1
    80003264:	aa8080e7          	jalr	-1368(ra) # 80003d08 <__printf>
    80003268:	00003517          	auipc	a0,0x3
    8000326c:	09850513          	addi	a0,a0,152 # 80006300 <_ZZ12printIntegermE6digits+0x238>
    80003270:	00001097          	auipc	ra,0x1
    80003274:	a98080e7          	jalr	-1384(ra) # 80003d08 <__printf>
    80003278:	00001097          	auipc	ra,0x1
    8000327c:	4b0080e7          	jalr	1200(ra) # 80004728 <kinit>
    80003280:	00000097          	auipc	ra,0x0
    80003284:	148080e7          	jalr	328(ra) # 800033c8 <trapinit>
    80003288:	00000097          	auipc	ra,0x0
    8000328c:	16c080e7          	jalr	364(ra) # 800033f4 <trapinithart>
    80003290:	00000097          	auipc	ra,0x0
    80003294:	5c0080e7          	jalr	1472(ra) # 80003850 <plicinit>
    80003298:	00000097          	auipc	ra,0x0
    8000329c:	5e0080e7          	jalr	1504(ra) # 80003878 <plicinithart>
    800032a0:	00000097          	auipc	ra,0x0
    800032a4:	078080e7          	jalr	120(ra) # 80003318 <userinit>
    800032a8:	0ff0000f          	fence
    800032ac:	00100793          	li	a5,1
    800032b0:	00003517          	auipc	a0,0x3
    800032b4:	1b050513          	addi	a0,a0,432 # 80006460 <_ZZ12printIntegermE6digits+0x398>
    800032b8:	00f4a023          	sw	a5,0(s1)
    800032bc:	00001097          	auipc	ra,0x1
    800032c0:	a4c080e7          	jalr	-1460(ra) # 80003d08 <__printf>
    800032c4:	0000006f          	j	800032c4 <system_main+0xd4>

00000000800032c8 <cpuid>:
    800032c8:	ff010113          	addi	sp,sp,-16
    800032cc:	00813423          	sd	s0,8(sp)
    800032d0:	01010413          	addi	s0,sp,16
    800032d4:	00020513          	mv	a0,tp
    800032d8:	00813403          	ld	s0,8(sp)
    800032dc:	0005051b          	sext.w	a0,a0
    800032e0:	01010113          	addi	sp,sp,16
    800032e4:	00008067          	ret

00000000800032e8 <mycpu>:
    800032e8:	ff010113          	addi	sp,sp,-16
    800032ec:	00813423          	sd	s0,8(sp)
    800032f0:	01010413          	addi	s0,sp,16
    800032f4:	00020793          	mv	a5,tp
    800032f8:	00813403          	ld	s0,8(sp)
    800032fc:	0007879b          	sext.w	a5,a5
    80003300:	00779793          	slli	a5,a5,0x7
    80003304:	00005517          	auipc	a0,0x5
    80003308:	d5c50513          	addi	a0,a0,-676 # 80008060 <cpus>
    8000330c:	00f50533          	add	a0,a0,a5
    80003310:	01010113          	addi	sp,sp,16
    80003314:	00008067          	ret

0000000080003318 <userinit>:
    80003318:	ff010113          	addi	sp,sp,-16
    8000331c:	00813423          	sd	s0,8(sp)
    80003320:	01010413          	addi	s0,sp,16
    80003324:	00813403          	ld	s0,8(sp)
    80003328:	01010113          	addi	sp,sp,16
    8000332c:	ffffe317          	auipc	t1,0xffffe
    80003330:	6bc30067          	jr	1724(t1) # 800019e8 <main>

0000000080003334 <either_copyout>:
    80003334:	ff010113          	addi	sp,sp,-16
    80003338:	00813023          	sd	s0,0(sp)
    8000333c:	00113423          	sd	ra,8(sp)
    80003340:	01010413          	addi	s0,sp,16
    80003344:	02051663          	bnez	a0,80003370 <either_copyout+0x3c>
    80003348:	00058513          	mv	a0,a1
    8000334c:	00060593          	mv	a1,a2
    80003350:	0006861b          	sext.w	a2,a3
    80003354:	00002097          	auipc	ra,0x2
    80003358:	c60080e7          	jalr	-928(ra) # 80004fb4 <__memmove>
    8000335c:	00813083          	ld	ra,8(sp)
    80003360:	00013403          	ld	s0,0(sp)
    80003364:	00000513          	li	a0,0
    80003368:	01010113          	addi	sp,sp,16
    8000336c:	00008067          	ret
    80003370:	00003517          	auipc	a0,0x3
    80003374:	13050513          	addi	a0,a0,304 # 800064a0 <_ZZ12printIntegermE6digits+0x3d8>
    80003378:	00001097          	auipc	ra,0x1
    8000337c:	934080e7          	jalr	-1740(ra) # 80003cac <panic>

0000000080003380 <either_copyin>:
    80003380:	ff010113          	addi	sp,sp,-16
    80003384:	00813023          	sd	s0,0(sp)
    80003388:	00113423          	sd	ra,8(sp)
    8000338c:	01010413          	addi	s0,sp,16
    80003390:	02059463          	bnez	a1,800033b8 <either_copyin+0x38>
    80003394:	00060593          	mv	a1,a2
    80003398:	0006861b          	sext.w	a2,a3
    8000339c:	00002097          	auipc	ra,0x2
    800033a0:	c18080e7          	jalr	-1000(ra) # 80004fb4 <__memmove>
    800033a4:	00813083          	ld	ra,8(sp)
    800033a8:	00013403          	ld	s0,0(sp)
    800033ac:	00000513          	li	a0,0
    800033b0:	01010113          	addi	sp,sp,16
    800033b4:	00008067          	ret
    800033b8:	00003517          	auipc	a0,0x3
    800033bc:	11050513          	addi	a0,a0,272 # 800064c8 <_ZZ12printIntegermE6digits+0x400>
    800033c0:	00001097          	auipc	ra,0x1
    800033c4:	8ec080e7          	jalr	-1812(ra) # 80003cac <panic>

00000000800033c8 <trapinit>:
    800033c8:	ff010113          	addi	sp,sp,-16
    800033cc:	00813423          	sd	s0,8(sp)
    800033d0:	01010413          	addi	s0,sp,16
    800033d4:	00813403          	ld	s0,8(sp)
    800033d8:	00003597          	auipc	a1,0x3
    800033dc:	11858593          	addi	a1,a1,280 # 800064f0 <_ZZ12printIntegermE6digits+0x428>
    800033e0:	00005517          	auipc	a0,0x5
    800033e4:	d0050513          	addi	a0,a0,-768 # 800080e0 <tickslock>
    800033e8:	01010113          	addi	sp,sp,16
    800033ec:	00001317          	auipc	t1,0x1
    800033f0:	5cc30067          	jr	1484(t1) # 800049b8 <initlock>

00000000800033f4 <trapinithart>:
    800033f4:	ff010113          	addi	sp,sp,-16
    800033f8:	00813423          	sd	s0,8(sp)
    800033fc:	01010413          	addi	s0,sp,16
    80003400:	00000797          	auipc	a5,0x0
    80003404:	30078793          	addi	a5,a5,768 # 80003700 <kernelvec>
    80003408:	10579073          	csrw	stvec,a5
    8000340c:	00813403          	ld	s0,8(sp)
    80003410:	01010113          	addi	sp,sp,16
    80003414:	00008067          	ret

0000000080003418 <usertrap>:
    80003418:	ff010113          	addi	sp,sp,-16
    8000341c:	00813423          	sd	s0,8(sp)
    80003420:	01010413          	addi	s0,sp,16
    80003424:	00813403          	ld	s0,8(sp)
    80003428:	01010113          	addi	sp,sp,16
    8000342c:	00008067          	ret

0000000080003430 <usertrapret>:
    80003430:	ff010113          	addi	sp,sp,-16
    80003434:	00813423          	sd	s0,8(sp)
    80003438:	01010413          	addi	s0,sp,16
    8000343c:	00813403          	ld	s0,8(sp)
    80003440:	01010113          	addi	sp,sp,16
    80003444:	00008067          	ret

0000000080003448 <kerneltrap>:
    80003448:	fe010113          	addi	sp,sp,-32
    8000344c:	00813823          	sd	s0,16(sp)
    80003450:	00113c23          	sd	ra,24(sp)
    80003454:	00913423          	sd	s1,8(sp)
    80003458:	02010413          	addi	s0,sp,32
    8000345c:	142025f3          	csrr	a1,scause
    80003460:	100027f3          	csrr	a5,sstatus
    80003464:	0027f793          	andi	a5,a5,2
    80003468:	10079c63          	bnez	a5,80003580 <kerneltrap+0x138>
    8000346c:	142027f3          	csrr	a5,scause
    80003470:	0207ce63          	bltz	a5,800034ac <kerneltrap+0x64>
    80003474:	00003517          	auipc	a0,0x3
    80003478:	0c450513          	addi	a0,a0,196 # 80006538 <_ZZ12printIntegermE6digits+0x470>
    8000347c:	00001097          	auipc	ra,0x1
    80003480:	88c080e7          	jalr	-1908(ra) # 80003d08 <__printf>
    80003484:	141025f3          	csrr	a1,sepc
    80003488:	14302673          	csrr	a2,stval
    8000348c:	00003517          	auipc	a0,0x3
    80003490:	0bc50513          	addi	a0,a0,188 # 80006548 <_ZZ12printIntegermE6digits+0x480>
    80003494:	00001097          	auipc	ra,0x1
    80003498:	874080e7          	jalr	-1932(ra) # 80003d08 <__printf>
    8000349c:	00003517          	auipc	a0,0x3
    800034a0:	0c450513          	addi	a0,a0,196 # 80006560 <_ZZ12printIntegermE6digits+0x498>
    800034a4:	00001097          	auipc	ra,0x1
    800034a8:	808080e7          	jalr	-2040(ra) # 80003cac <panic>
    800034ac:	0ff7f713          	andi	a4,a5,255
    800034b0:	00900693          	li	a3,9
    800034b4:	04d70063          	beq	a4,a3,800034f4 <kerneltrap+0xac>
    800034b8:	fff00713          	li	a4,-1
    800034bc:	03f71713          	slli	a4,a4,0x3f
    800034c0:	00170713          	addi	a4,a4,1
    800034c4:	fae798e3          	bne	a5,a4,80003474 <kerneltrap+0x2c>
    800034c8:	00000097          	auipc	ra,0x0
    800034cc:	e00080e7          	jalr	-512(ra) # 800032c8 <cpuid>
    800034d0:	06050663          	beqz	a0,8000353c <kerneltrap+0xf4>
    800034d4:	144027f3          	csrr	a5,sip
    800034d8:	ffd7f793          	andi	a5,a5,-3
    800034dc:	14479073          	csrw	sip,a5
    800034e0:	01813083          	ld	ra,24(sp)
    800034e4:	01013403          	ld	s0,16(sp)
    800034e8:	00813483          	ld	s1,8(sp)
    800034ec:	02010113          	addi	sp,sp,32
    800034f0:	00008067          	ret
    800034f4:	00000097          	auipc	ra,0x0
    800034f8:	3d0080e7          	jalr	976(ra) # 800038c4 <plic_claim>
    800034fc:	00a00793          	li	a5,10
    80003500:	00050493          	mv	s1,a0
    80003504:	06f50863          	beq	a0,a5,80003574 <kerneltrap+0x12c>
    80003508:	fc050ce3          	beqz	a0,800034e0 <kerneltrap+0x98>
    8000350c:	00050593          	mv	a1,a0
    80003510:	00003517          	auipc	a0,0x3
    80003514:	00850513          	addi	a0,a0,8 # 80006518 <_ZZ12printIntegermE6digits+0x450>
    80003518:	00000097          	auipc	ra,0x0
    8000351c:	7f0080e7          	jalr	2032(ra) # 80003d08 <__printf>
    80003520:	01013403          	ld	s0,16(sp)
    80003524:	01813083          	ld	ra,24(sp)
    80003528:	00048513          	mv	a0,s1
    8000352c:	00813483          	ld	s1,8(sp)
    80003530:	02010113          	addi	sp,sp,32
    80003534:	00000317          	auipc	t1,0x0
    80003538:	3c830067          	jr	968(t1) # 800038fc <plic_complete>
    8000353c:	00005517          	auipc	a0,0x5
    80003540:	ba450513          	addi	a0,a0,-1116 # 800080e0 <tickslock>
    80003544:	00001097          	auipc	ra,0x1
    80003548:	498080e7          	jalr	1176(ra) # 800049dc <acquire>
    8000354c:	00004717          	auipc	a4,0x4
    80003550:	a7870713          	addi	a4,a4,-1416 # 80006fc4 <ticks>
    80003554:	00072783          	lw	a5,0(a4)
    80003558:	00005517          	auipc	a0,0x5
    8000355c:	b8850513          	addi	a0,a0,-1144 # 800080e0 <tickslock>
    80003560:	0017879b          	addiw	a5,a5,1
    80003564:	00f72023          	sw	a5,0(a4)
    80003568:	00001097          	auipc	ra,0x1
    8000356c:	540080e7          	jalr	1344(ra) # 80004aa8 <release>
    80003570:	f65ff06f          	j	800034d4 <kerneltrap+0x8c>
    80003574:	00001097          	auipc	ra,0x1
    80003578:	09c080e7          	jalr	156(ra) # 80004610 <uartintr>
    8000357c:	fa5ff06f          	j	80003520 <kerneltrap+0xd8>
    80003580:	00003517          	auipc	a0,0x3
    80003584:	f7850513          	addi	a0,a0,-136 # 800064f8 <_ZZ12printIntegermE6digits+0x430>
    80003588:	00000097          	auipc	ra,0x0
    8000358c:	724080e7          	jalr	1828(ra) # 80003cac <panic>

0000000080003590 <clockintr>:
    80003590:	fe010113          	addi	sp,sp,-32
    80003594:	00813823          	sd	s0,16(sp)
    80003598:	00913423          	sd	s1,8(sp)
    8000359c:	00113c23          	sd	ra,24(sp)
    800035a0:	02010413          	addi	s0,sp,32
    800035a4:	00005497          	auipc	s1,0x5
    800035a8:	b3c48493          	addi	s1,s1,-1220 # 800080e0 <tickslock>
    800035ac:	00048513          	mv	a0,s1
    800035b0:	00001097          	auipc	ra,0x1
    800035b4:	42c080e7          	jalr	1068(ra) # 800049dc <acquire>
    800035b8:	00004717          	auipc	a4,0x4
    800035bc:	a0c70713          	addi	a4,a4,-1524 # 80006fc4 <ticks>
    800035c0:	00072783          	lw	a5,0(a4)
    800035c4:	01013403          	ld	s0,16(sp)
    800035c8:	01813083          	ld	ra,24(sp)
    800035cc:	00048513          	mv	a0,s1
    800035d0:	0017879b          	addiw	a5,a5,1
    800035d4:	00813483          	ld	s1,8(sp)
    800035d8:	00f72023          	sw	a5,0(a4)
    800035dc:	02010113          	addi	sp,sp,32
    800035e0:	00001317          	auipc	t1,0x1
    800035e4:	4c830067          	jr	1224(t1) # 80004aa8 <release>

00000000800035e8 <devintr>:
    800035e8:	142027f3          	csrr	a5,scause
    800035ec:	00000513          	li	a0,0
    800035f0:	0007c463          	bltz	a5,800035f8 <devintr+0x10>
    800035f4:	00008067          	ret
    800035f8:	fe010113          	addi	sp,sp,-32
    800035fc:	00813823          	sd	s0,16(sp)
    80003600:	00113c23          	sd	ra,24(sp)
    80003604:	00913423          	sd	s1,8(sp)
    80003608:	02010413          	addi	s0,sp,32
    8000360c:	0ff7f713          	andi	a4,a5,255
    80003610:	00900693          	li	a3,9
    80003614:	04d70c63          	beq	a4,a3,8000366c <devintr+0x84>
    80003618:	fff00713          	li	a4,-1
    8000361c:	03f71713          	slli	a4,a4,0x3f
    80003620:	00170713          	addi	a4,a4,1
    80003624:	00e78c63          	beq	a5,a4,8000363c <devintr+0x54>
    80003628:	01813083          	ld	ra,24(sp)
    8000362c:	01013403          	ld	s0,16(sp)
    80003630:	00813483          	ld	s1,8(sp)
    80003634:	02010113          	addi	sp,sp,32
    80003638:	00008067          	ret
    8000363c:	00000097          	auipc	ra,0x0
    80003640:	c8c080e7          	jalr	-884(ra) # 800032c8 <cpuid>
    80003644:	06050663          	beqz	a0,800036b0 <devintr+0xc8>
    80003648:	144027f3          	csrr	a5,sip
    8000364c:	ffd7f793          	andi	a5,a5,-3
    80003650:	14479073          	csrw	sip,a5
    80003654:	01813083          	ld	ra,24(sp)
    80003658:	01013403          	ld	s0,16(sp)
    8000365c:	00813483          	ld	s1,8(sp)
    80003660:	00200513          	li	a0,2
    80003664:	02010113          	addi	sp,sp,32
    80003668:	00008067          	ret
    8000366c:	00000097          	auipc	ra,0x0
    80003670:	258080e7          	jalr	600(ra) # 800038c4 <plic_claim>
    80003674:	00a00793          	li	a5,10
    80003678:	00050493          	mv	s1,a0
    8000367c:	06f50663          	beq	a0,a5,800036e8 <devintr+0x100>
    80003680:	00100513          	li	a0,1
    80003684:	fa0482e3          	beqz	s1,80003628 <devintr+0x40>
    80003688:	00048593          	mv	a1,s1
    8000368c:	00003517          	auipc	a0,0x3
    80003690:	e8c50513          	addi	a0,a0,-372 # 80006518 <_ZZ12printIntegermE6digits+0x450>
    80003694:	00000097          	auipc	ra,0x0
    80003698:	674080e7          	jalr	1652(ra) # 80003d08 <__printf>
    8000369c:	00048513          	mv	a0,s1
    800036a0:	00000097          	auipc	ra,0x0
    800036a4:	25c080e7          	jalr	604(ra) # 800038fc <plic_complete>
    800036a8:	00100513          	li	a0,1
    800036ac:	f7dff06f          	j	80003628 <devintr+0x40>
    800036b0:	00005517          	auipc	a0,0x5
    800036b4:	a3050513          	addi	a0,a0,-1488 # 800080e0 <tickslock>
    800036b8:	00001097          	auipc	ra,0x1
    800036bc:	324080e7          	jalr	804(ra) # 800049dc <acquire>
    800036c0:	00004717          	auipc	a4,0x4
    800036c4:	90470713          	addi	a4,a4,-1788 # 80006fc4 <ticks>
    800036c8:	00072783          	lw	a5,0(a4)
    800036cc:	00005517          	auipc	a0,0x5
    800036d0:	a1450513          	addi	a0,a0,-1516 # 800080e0 <tickslock>
    800036d4:	0017879b          	addiw	a5,a5,1
    800036d8:	00f72023          	sw	a5,0(a4)
    800036dc:	00001097          	auipc	ra,0x1
    800036e0:	3cc080e7          	jalr	972(ra) # 80004aa8 <release>
    800036e4:	f65ff06f          	j	80003648 <devintr+0x60>
    800036e8:	00001097          	auipc	ra,0x1
    800036ec:	f28080e7          	jalr	-216(ra) # 80004610 <uartintr>
    800036f0:	fadff06f          	j	8000369c <devintr+0xb4>
	...

0000000080003700 <kernelvec>:
    80003700:	f0010113          	addi	sp,sp,-256
    80003704:	00113023          	sd	ra,0(sp)
    80003708:	00213423          	sd	sp,8(sp)
    8000370c:	00313823          	sd	gp,16(sp)
    80003710:	00413c23          	sd	tp,24(sp)
    80003714:	02513023          	sd	t0,32(sp)
    80003718:	02613423          	sd	t1,40(sp)
    8000371c:	02713823          	sd	t2,48(sp)
    80003720:	02813c23          	sd	s0,56(sp)
    80003724:	04913023          	sd	s1,64(sp)
    80003728:	04a13423          	sd	a0,72(sp)
    8000372c:	04b13823          	sd	a1,80(sp)
    80003730:	04c13c23          	sd	a2,88(sp)
    80003734:	06d13023          	sd	a3,96(sp)
    80003738:	06e13423          	sd	a4,104(sp)
    8000373c:	06f13823          	sd	a5,112(sp)
    80003740:	07013c23          	sd	a6,120(sp)
    80003744:	09113023          	sd	a7,128(sp)
    80003748:	09213423          	sd	s2,136(sp)
    8000374c:	09313823          	sd	s3,144(sp)
    80003750:	09413c23          	sd	s4,152(sp)
    80003754:	0b513023          	sd	s5,160(sp)
    80003758:	0b613423          	sd	s6,168(sp)
    8000375c:	0b713823          	sd	s7,176(sp)
    80003760:	0b813c23          	sd	s8,184(sp)
    80003764:	0d913023          	sd	s9,192(sp)
    80003768:	0da13423          	sd	s10,200(sp)
    8000376c:	0db13823          	sd	s11,208(sp)
    80003770:	0dc13c23          	sd	t3,216(sp)
    80003774:	0fd13023          	sd	t4,224(sp)
    80003778:	0fe13423          	sd	t5,232(sp)
    8000377c:	0ff13823          	sd	t6,240(sp)
    80003780:	cc9ff0ef          	jal	ra,80003448 <kerneltrap>
    80003784:	00013083          	ld	ra,0(sp)
    80003788:	00813103          	ld	sp,8(sp)
    8000378c:	01013183          	ld	gp,16(sp)
    80003790:	02013283          	ld	t0,32(sp)
    80003794:	02813303          	ld	t1,40(sp)
    80003798:	03013383          	ld	t2,48(sp)
    8000379c:	03813403          	ld	s0,56(sp)
    800037a0:	04013483          	ld	s1,64(sp)
    800037a4:	04813503          	ld	a0,72(sp)
    800037a8:	05013583          	ld	a1,80(sp)
    800037ac:	05813603          	ld	a2,88(sp)
    800037b0:	06013683          	ld	a3,96(sp)
    800037b4:	06813703          	ld	a4,104(sp)
    800037b8:	07013783          	ld	a5,112(sp)
    800037bc:	07813803          	ld	a6,120(sp)
    800037c0:	08013883          	ld	a7,128(sp)
    800037c4:	08813903          	ld	s2,136(sp)
    800037c8:	09013983          	ld	s3,144(sp)
    800037cc:	09813a03          	ld	s4,152(sp)
    800037d0:	0a013a83          	ld	s5,160(sp)
    800037d4:	0a813b03          	ld	s6,168(sp)
    800037d8:	0b013b83          	ld	s7,176(sp)
    800037dc:	0b813c03          	ld	s8,184(sp)
    800037e0:	0c013c83          	ld	s9,192(sp)
    800037e4:	0c813d03          	ld	s10,200(sp)
    800037e8:	0d013d83          	ld	s11,208(sp)
    800037ec:	0d813e03          	ld	t3,216(sp)
    800037f0:	0e013e83          	ld	t4,224(sp)
    800037f4:	0e813f03          	ld	t5,232(sp)
    800037f8:	0f013f83          	ld	t6,240(sp)
    800037fc:	10010113          	addi	sp,sp,256
    80003800:	10200073          	sret
    80003804:	00000013          	nop
    80003808:	00000013          	nop
    8000380c:	00000013          	nop

0000000080003810 <timervec>:
    80003810:	34051573          	csrrw	a0,mscratch,a0
    80003814:	00b53023          	sd	a1,0(a0)
    80003818:	00c53423          	sd	a2,8(a0)
    8000381c:	00d53823          	sd	a3,16(a0)
    80003820:	01853583          	ld	a1,24(a0)
    80003824:	02053603          	ld	a2,32(a0)
    80003828:	0005b683          	ld	a3,0(a1)
    8000382c:	00c686b3          	add	a3,a3,a2
    80003830:	00d5b023          	sd	a3,0(a1)
    80003834:	00200593          	li	a1,2
    80003838:	14459073          	csrw	sip,a1
    8000383c:	01053683          	ld	a3,16(a0)
    80003840:	00853603          	ld	a2,8(a0)
    80003844:	00053583          	ld	a1,0(a0)
    80003848:	34051573          	csrrw	a0,mscratch,a0
    8000384c:	30200073          	mret

0000000080003850 <plicinit>:
    80003850:	ff010113          	addi	sp,sp,-16
    80003854:	00813423          	sd	s0,8(sp)
    80003858:	01010413          	addi	s0,sp,16
    8000385c:	00813403          	ld	s0,8(sp)
    80003860:	0c0007b7          	lui	a5,0xc000
    80003864:	00100713          	li	a4,1
    80003868:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000386c:	00e7a223          	sw	a4,4(a5)
    80003870:	01010113          	addi	sp,sp,16
    80003874:	00008067          	ret

0000000080003878 <plicinithart>:
    80003878:	ff010113          	addi	sp,sp,-16
    8000387c:	00813023          	sd	s0,0(sp)
    80003880:	00113423          	sd	ra,8(sp)
    80003884:	01010413          	addi	s0,sp,16
    80003888:	00000097          	auipc	ra,0x0
    8000388c:	a40080e7          	jalr	-1472(ra) # 800032c8 <cpuid>
    80003890:	0085171b          	slliw	a4,a0,0x8
    80003894:	0c0027b7          	lui	a5,0xc002
    80003898:	00e787b3          	add	a5,a5,a4
    8000389c:	40200713          	li	a4,1026
    800038a0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800038a4:	00813083          	ld	ra,8(sp)
    800038a8:	00013403          	ld	s0,0(sp)
    800038ac:	00d5151b          	slliw	a0,a0,0xd
    800038b0:	0c2017b7          	lui	a5,0xc201
    800038b4:	00a78533          	add	a0,a5,a0
    800038b8:	00052023          	sw	zero,0(a0)
    800038bc:	01010113          	addi	sp,sp,16
    800038c0:	00008067          	ret

00000000800038c4 <plic_claim>:
    800038c4:	ff010113          	addi	sp,sp,-16
    800038c8:	00813023          	sd	s0,0(sp)
    800038cc:	00113423          	sd	ra,8(sp)
    800038d0:	01010413          	addi	s0,sp,16
    800038d4:	00000097          	auipc	ra,0x0
    800038d8:	9f4080e7          	jalr	-1548(ra) # 800032c8 <cpuid>
    800038dc:	00813083          	ld	ra,8(sp)
    800038e0:	00013403          	ld	s0,0(sp)
    800038e4:	00d5151b          	slliw	a0,a0,0xd
    800038e8:	0c2017b7          	lui	a5,0xc201
    800038ec:	00a78533          	add	a0,a5,a0
    800038f0:	00452503          	lw	a0,4(a0)
    800038f4:	01010113          	addi	sp,sp,16
    800038f8:	00008067          	ret

00000000800038fc <plic_complete>:
    800038fc:	fe010113          	addi	sp,sp,-32
    80003900:	00813823          	sd	s0,16(sp)
    80003904:	00913423          	sd	s1,8(sp)
    80003908:	00113c23          	sd	ra,24(sp)
    8000390c:	02010413          	addi	s0,sp,32
    80003910:	00050493          	mv	s1,a0
    80003914:	00000097          	auipc	ra,0x0
    80003918:	9b4080e7          	jalr	-1612(ra) # 800032c8 <cpuid>
    8000391c:	01813083          	ld	ra,24(sp)
    80003920:	01013403          	ld	s0,16(sp)
    80003924:	00d5179b          	slliw	a5,a0,0xd
    80003928:	0c201737          	lui	a4,0xc201
    8000392c:	00f707b3          	add	a5,a4,a5
    80003930:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80003934:	00813483          	ld	s1,8(sp)
    80003938:	02010113          	addi	sp,sp,32
    8000393c:	00008067          	ret

0000000080003940 <consolewrite>:
    80003940:	fb010113          	addi	sp,sp,-80
    80003944:	04813023          	sd	s0,64(sp)
    80003948:	04113423          	sd	ra,72(sp)
    8000394c:	02913c23          	sd	s1,56(sp)
    80003950:	03213823          	sd	s2,48(sp)
    80003954:	03313423          	sd	s3,40(sp)
    80003958:	03413023          	sd	s4,32(sp)
    8000395c:	01513c23          	sd	s5,24(sp)
    80003960:	05010413          	addi	s0,sp,80
    80003964:	06c05c63          	blez	a2,800039dc <consolewrite+0x9c>
    80003968:	00060993          	mv	s3,a2
    8000396c:	00050a13          	mv	s4,a0
    80003970:	00058493          	mv	s1,a1
    80003974:	00000913          	li	s2,0
    80003978:	fff00a93          	li	s5,-1
    8000397c:	01c0006f          	j	80003998 <consolewrite+0x58>
    80003980:	fbf44503          	lbu	a0,-65(s0)
    80003984:	0019091b          	addiw	s2,s2,1
    80003988:	00148493          	addi	s1,s1,1
    8000398c:	00001097          	auipc	ra,0x1
    80003990:	a9c080e7          	jalr	-1380(ra) # 80004428 <uartputc>
    80003994:	03298063          	beq	s3,s2,800039b4 <consolewrite+0x74>
    80003998:	00048613          	mv	a2,s1
    8000399c:	00100693          	li	a3,1
    800039a0:	000a0593          	mv	a1,s4
    800039a4:	fbf40513          	addi	a0,s0,-65
    800039a8:	00000097          	auipc	ra,0x0
    800039ac:	9d8080e7          	jalr	-1576(ra) # 80003380 <either_copyin>
    800039b0:	fd5518e3          	bne	a0,s5,80003980 <consolewrite+0x40>
    800039b4:	04813083          	ld	ra,72(sp)
    800039b8:	04013403          	ld	s0,64(sp)
    800039bc:	03813483          	ld	s1,56(sp)
    800039c0:	02813983          	ld	s3,40(sp)
    800039c4:	02013a03          	ld	s4,32(sp)
    800039c8:	01813a83          	ld	s5,24(sp)
    800039cc:	00090513          	mv	a0,s2
    800039d0:	03013903          	ld	s2,48(sp)
    800039d4:	05010113          	addi	sp,sp,80
    800039d8:	00008067          	ret
    800039dc:	00000913          	li	s2,0
    800039e0:	fd5ff06f          	j	800039b4 <consolewrite+0x74>

00000000800039e4 <consoleread>:
    800039e4:	f9010113          	addi	sp,sp,-112
    800039e8:	06813023          	sd	s0,96(sp)
    800039ec:	04913c23          	sd	s1,88(sp)
    800039f0:	05213823          	sd	s2,80(sp)
    800039f4:	05313423          	sd	s3,72(sp)
    800039f8:	05413023          	sd	s4,64(sp)
    800039fc:	03513c23          	sd	s5,56(sp)
    80003a00:	03613823          	sd	s6,48(sp)
    80003a04:	03713423          	sd	s7,40(sp)
    80003a08:	03813023          	sd	s8,32(sp)
    80003a0c:	06113423          	sd	ra,104(sp)
    80003a10:	01913c23          	sd	s9,24(sp)
    80003a14:	07010413          	addi	s0,sp,112
    80003a18:	00060b93          	mv	s7,a2
    80003a1c:	00050913          	mv	s2,a0
    80003a20:	00058c13          	mv	s8,a1
    80003a24:	00060b1b          	sext.w	s6,a2
    80003a28:	00004497          	auipc	s1,0x4
    80003a2c:	6e048493          	addi	s1,s1,1760 # 80008108 <cons>
    80003a30:	00400993          	li	s3,4
    80003a34:	fff00a13          	li	s4,-1
    80003a38:	00a00a93          	li	s5,10
    80003a3c:	05705e63          	blez	s7,80003a98 <consoleread+0xb4>
    80003a40:	09c4a703          	lw	a4,156(s1)
    80003a44:	0984a783          	lw	a5,152(s1)
    80003a48:	0007071b          	sext.w	a4,a4
    80003a4c:	08e78463          	beq	a5,a4,80003ad4 <consoleread+0xf0>
    80003a50:	07f7f713          	andi	a4,a5,127
    80003a54:	00e48733          	add	a4,s1,a4
    80003a58:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80003a5c:	0017869b          	addiw	a3,a5,1
    80003a60:	08d4ac23          	sw	a3,152(s1)
    80003a64:	00070c9b          	sext.w	s9,a4
    80003a68:	0b370663          	beq	a4,s3,80003b14 <consoleread+0x130>
    80003a6c:	00100693          	li	a3,1
    80003a70:	f9f40613          	addi	a2,s0,-97
    80003a74:	000c0593          	mv	a1,s8
    80003a78:	00090513          	mv	a0,s2
    80003a7c:	f8e40fa3          	sb	a4,-97(s0)
    80003a80:	00000097          	auipc	ra,0x0
    80003a84:	8b4080e7          	jalr	-1868(ra) # 80003334 <either_copyout>
    80003a88:	01450863          	beq	a0,s4,80003a98 <consoleread+0xb4>
    80003a8c:	001c0c13          	addi	s8,s8,1
    80003a90:	fffb8b9b          	addiw	s7,s7,-1
    80003a94:	fb5c94e3          	bne	s9,s5,80003a3c <consoleread+0x58>
    80003a98:	000b851b          	sext.w	a0,s7
    80003a9c:	06813083          	ld	ra,104(sp)
    80003aa0:	06013403          	ld	s0,96(sp)
    80003aa4:	05813483          	ld	s1,88(sp)
    80003aa8:	05013903          	ld	s2,80(sp)
    80003aac:	04813983          	ld	s3,72(sp)
    80003ab0:	04013a03          	ld	s4,64(sp)
    80003ab4:	03813a83          	ld	s5,56(sp)
    80003ab8:	02813b83          	ld	s7,40(sp)
    80003abc:	02013c03          	ld	s8,32(sp)
    80003ac0:	01813c83          	ld	s9,24(sp)
    80003ac4:	40ab053b          	subw	a0,s6,a0
    80003ac8:	03013b03          	ld	s6,48(sp)
    80003acc:	07010113          	addi	sp,sp,112
    80003ad0:	00008067          	ret
    80003ad4:	00001097          	auipc	ra,0x1
    80003ad8:	1d8080e7          	jalr	472(ra) # 80004cac <push_on>
    80003adc:	0984a703          	lw	a4,152(s1)
    80003ae0:	09c4a783          	lw	a5,156(s1)
    80003ae4:	0007879b          	sext.w	a5,a5
    80003ae8:	fef70ce3          	beq	a4,a5,80003ae0 <consoleread+0xfc>
    80003aec:	00001097          	auipc	ra,0x1
    80003af0:	234080e7          	jalr	564(ra) # 80004d20 <pop_on>
    80003af4:	0984a783          	lw	a5,152(s1)
    80003af8:	07f7f713          	andi	a4,a5,127
    80003afc:	00e48733          	add	a4,s1,a4
    80003b00:	01874703          	lbu	a4,24(a4)
    80003b04:	0017869b          	addiw	a3,a5,1
    80003b08:	08d4ac23          	sw	a3,152(s1)
    80003b0c:	00070c9b          	sext.w	s9,a4
    80003b10:	f5371ee3          	bne	a4,s3,80003a6c <consoleread+0x88>
    80003b14:	000b851b          	sext.w	a0,s7
    80003b18:	f96bf2e3          	bgeu	s7,s6,80003a9c <consoleread+0xb8>
    80003b1c:	08f4ac23          	sw	a5,152(s1)
    80003b20:	f7dff06f          	j	80003a9c <consoleread+0xb8>

0000000080003b24 <consputc>:
    80003b24:	10000793          	li	a5,256
    80003b28:	00f50663          	beq	a0,a5,80003b34 <consputc+0x10>
    80003b2c:	00001317          	auipc	t1,0x1
    80003b30:	9f430067          	jr	-1548(t1) # 80004520 <uartputc_sync>
    80003b34:	ff010113          	addi	sp,sp,-16
    80003b38:	00113423          	sd	ra,8(sp)
    80003b3c:	00813023          	sd	s0,0(sp)
    80003b40:	01010413          	addi	s0,sp,16
    80003b44:	00800513          	li	a0,8
    80003b48:	00001097          	auipc	ra,0x1
    80003b4c:	9d8080e7          	jalr	-1576(ra) # 80004520 <uartputc_sync>
    80003b50:	02000513          	li	a0,32
    80003b54:	00001097          	auipc	ra,0x1
    80003b58:	9cc080e7          	jalr	-1588(ra) # 80004520 <uartputc_sync>
    80003b5c:	00013403          	ld	s0,0(sp)
    80003b60:	00813083          	ld	ra,8(sp)
    80003b64:	00800513          	li	a0,8
    80003b68:	01010113          	addi	sp,sp,16
    80003b6c:	00001317          	auipc	t1,0x1
    80003b70:	9b430067          	jr	-1612(t1) # 80004520 <uartputc_sync>

0000000080003b74 <consoleintr>:
    80003b74:	fe010113          	addi	sp,sp,-32
    80003b78:	00813823          	sd	s0,16(sp)
    80003b7c:	00913423          	sd	s1,8(sp)
    80003b80:	01213023          	sd	s2,0(sp)
    80003b84:	00113c23          	sd	ra,24(sp)
    80003b88:	02010413          	addi	s0,sp,32
    80003b8c:	00004917          	auipc	s2,0x4
    80003b90:	57c90913          	addi	s2,s2,1404 # 80008108 <cons>
    80003b94:	00050493          	mv	s1,a0
    80003b98:	00090513          	mv	a0,s2
    80003b9c:	00001097          	auipc	ra,0x1
    80003ba0:	e40080e7          	jalr	-448(ra) # 800049dc <acquire>
    80003ba4:	02048c63          	beqz	s1,80003bdc <consoleintr+0x68>
    80003ba8:	0a092783          	lw	a5,160(s2)
    80003bac:	09892703          	lw	a4,152(s2)
    80003bb0:	07f00693          	li	a3,127
    80003bb4:	40e7873b          	subw	a4,a5,a4
    80003bb8:	02e6e263          	bltu	a3,a4,80003bdc <consoleintr+0x68>
    80003bbc:	00d00713          	li	a4,13
    80003bc0:	04e48063          	beq	s1,a4,80003c00 <consoleintr+0x8c>
    80003bc4:	07f7f713          	andi	a4,a5,127
    80003bc8:	00e90733          	add	a4,s2,a4
    80003bcc:	0017879b          	addiw	a5,a5,1
    80003bd0:	0af92023          	sw	a5,160(s2)
    80003bd4:	00970c23          	sb	s1,24(a4)
    80003bd8:	08f92e23          	sw	a5,156(s2)
    80003bdc:	01013403          	ld	s0,16(sp)
    80003be0:	01813083          	ld	ra,24(sp)
    80003be4:	00813483          	ld	s1,8(sp)
    80003be8:	00013903          	ld	s2,0(sp)
    80003bec:	00004517          	auipc	a0,0x4
    80003bf0:	51c50513          	addi	a0,a0,1308 # 80008108 <cons>
    80003bf4:	02010113          	addi	sp,sp,32
    80003bf8:	00001317          	auipc	t1,0x1
    80003bfc:	eb030067          	jr	-336(t1) # 80004aa8 <release>
    80003c00:	00a00493          	li	s1,10
    80003c04:	fc1ff06f          	j	80003bc4 <consoleintr+0x50>

0000000080003c08 <consoleinit>:
    80003c08:	fe010113          	addi	sp,sp,-32
    80003c0c:	00113c23          	sd	ra,24(sp)
    80003c10:	00813823          	sd	s0,16(sp)
    80003c14:	00913423          	sd	s1,8(sp)
    80003c18:	02010413          	addi	s0,sp,32
    80003c1c:	00004497          	auipc	s1,0x4
    80003c20:	4ec48493          	addi	s1,s1,1260 # 80008108 <cons>
    80003c24:	00048513          	mv	a0,s1
    80003c28:	00003597          	auipc	a1,0x3
    80003c2c:	94858593          	addi	a1,a1,-1720 # 80006570 <_ZZ12printIntegermE6digits+0x4a8>
    80003c30:	00001097          	auipc	ra,0x1
    80003c34:	d88080e7          	jalr	-632(ra) # 800049b8 <initlock>
    80003c38:	00000097          	auipc	ra,0x0
    80003c3c:	7ac080e7          	jalr	1964(ra) # 800043e4 <uartinit>
    80003c40:	01813083          	ld	ra,24(sp)
    80003c44:	01013403          	ld	s0,16(sp)
    80003c48:	00000797          	auipc	a5,0x0
    80003c4c:	d9c78793          	addi	a5,a5,-612 # 800039e4 <consoleread>
    80003c50:	0af4bc23          	sd	a5,184(s1)
    80003c54:	00000797          	auipc	a5,0x0
    80003c58:	cec78793          	addi	a5,a5,-788 # 80003940 <consolewrite>
    80003c5c:	0cf4b023          	sd	a5,192(s1)
    80003c60:	00813483          	ld	s1,8(sp)
    80003c64:	02010113          	addi	sp,sp,32
    80003c68:	00008067          	ret

0000000080003c6c <console_read>:
    80003c6c:	ff010113          	addi	sp,sp,-16
    80003c70:	00813423          	sd	s0,8(sp)
    80003c74:	01010413          	addi	s0,sp,16
    80003c78:	00813403          	ld	s0,8(sp)
    80003c7c:	00004317          	auipc	t1,0x4
    80003c80:	54433303          	ld	t1,1348(t1) # 800081c0 <devsw+0x10>
    80003c84:	01010113          	addi	sp,sp,16
    80003c88:	00030067          	jr	t1

0000000080003c8c <console_write>:
    80003c8c:	ff010113          	addi	sp,sp,-16
    80003c90:	00813423          	sd	s0,8(sp)
    80003c94:	01010413          	addi	s0,sp,16
    80003c98:	00813403          	ld	s0,8(sp)
    80003c9c:	00004317          	auipc	t1,0x4
    80003ca0:	52c33303          	ld	t1,1324(t1) # 800081c8 <devsw+0x18>
    80003ca4:	01010113          	addi	sp,sp,16
    80003ca8:	00030067          	jr	t1

0000000080003cac <panic>:
    80003cac:	fe010113          	addi	sp,sp,-32
    80003cb0:	00113c23          	sd	ra,24(sp)
    80003cb4:	00813823          	sd	s0,16(sp)
    80003cb8:	00913423          	sd	s1,8(sp)
    80003cbc:	02010413          	addi	s0,sp,32
    80003cc0:	00050493          	mv	s1,a0
    80003cc4:	00003517          	auipc	a0,0x3
    80003cc8:	8b450513          	addi	a0,a0,-1868 # 80006578 <_ZZ12printIntegermE6digits+0x4b0>
    80003ccc:	00004797          	auipc	a5,0x4
    80003cd0:	5807ae23          	sw	zero,1436(a5) # 80008268 <pr+0x18>
    80003cd4:	00000097          	auipc	ra,0x0
    80003cd8:	034080e7          	jalr	52(ra) # 80003d08 <__printf>
    80003cdc:	00048513          	mv	a0,s1
    80003ce0:	00000097          	auipc	ra,0x0
    80003ce4:	028080e7          	jalr	40(ra) # 80003d08 <__printf>
    80003ce8:	00002517          	auipc	a0,0x2
    80003cec:	61850513          	addi	a0,a0,1560 # 80006300 <_ZZ12printIntegermE6digits+0x238>
    80003cf0:	00000097          	auipc	ra,0x0
    80003cf4:	018080e7          	jalr	24(ra) # 80003d08 <__printf>
    80003cf8:	00100793          	li	a5,1
    80003cfc:	00003717          	auipc	a4,0x3
    80003d00:	2cf72623          	sw	a5,716(a4) # 80006fc8 <panicked>
    80003d04:	0000006f          	j	80003d04 <panic+0x58>

0000000080003d08 <__printf>:
    80003d08:	f3010113          	addi	sp,sp,-208
    80003d0c:	08813023          	sd	s0,128(sp)
    80003d10:	07313423          	sd	s3,104(sp)
    80003d14:	09010413          	addi	s0,sp,144
    80003d18:	05813023          	sd	s8,64(sp)
    80003d1c:	08113423          	sd	ra,136(sp)
    80003d20:	06913c23          	sd	s1,120(sp)
    80003d24:	07213823          	sd	s2,112(sp)
    80003d28:	07413023          	sd	s4,96(sp)
    80003d2c:	05513c23          	sd	s5,88(sp)
    80003d30:	05613823          	sd	s6,80(sp)
    80003d34:	05713423          	sd	s7,72(sp)
    80003d38:	03913c23          	sd	s9,56(sp)
    80003d3c:	03a13823          	sd	s10,48(sp)
    80003d40:	03b13423          	sd	s11,40(sp)
    80003d44:	00004317          	auipc	t1,0x4
    80003d48:	50c30313          	addi	t1,t1,1292 # 80008250 <pr>
    80003d4c:	01832c03          	lw	s8,24(t1)
    80003d50:	00b43423          	sd	a1,8(s0)
    80003d54:	00c43823          	sd	a2,16(s0)
    80003d58:	00d43c23          	sd	a3,24(s0)
    80003d5c:	02e43023          	sd	a4,32(s0)
    80003d60:	02f43423          	sd	a5,40(s0)
    80003d64:	03043823          	sd	a6,48(s0)
    80003d68:	03143c23          	sd	a7,56(s0)
    80003d6c:	00050993          	mv	s3,a0
    80003d70:	4a0c1663          	bnez	s8,8000421c <__printf+0x514>
    80003d74:	60098c63          	beqz	s3,8000438c <__printf+0x684>
    80003d78:	0009c503          	lbu	a0,0(s3)
    80003d7c:	00840793          	addi	a5,s0,8
    80003d80:	f6f43c23          	sd	a5,-136(s0)
    80003d84:	00000493          	li	s1,0
    80003d88:	22050063          	beqz	a0,80003fa8 <__printf+0x2a0>
    80003d8c:	00002a37          	lui	s4,0x2
    80003d90:	00018ab7          	lui	s5,0x18
    80003d94:	000f4b37          	lui	s6,0xf4
    80003d98:	00989bb7          	lui	s7,0x989
    80003d9c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80003da0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80003da4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80003da8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80003dac:	00148c9b          	addiw	s9,s1,1
    80003db0:	02500793          	li	a5,37
    80003db4:	01998933          	add	s2,s3,s9
    80003db8:	38f51263          	bne	a0,a5,8000413c <__printf+0x434>
    80003dbc:	00094783          	lbu	a5,0(s2)
    80003dc0:	00078c9b          	sext.w	s9,a5
    80003dc4:	1e078263          	beqz	a5,80003fa8 <__printf+0x2a0>
    80003dc8:	0024849b          	addiw	s1,s1,2
    80003dcc:	07000713          	li	a4,112
    80003dd0:	00998933          	add	s2,s3,s1
    80003dd4:	38e78a63          	beq	a5,a4,80004168 <__printf+0x460>
    80003dd8:	20f76863          	bltu	a4,a5,80003fe8 <__printf+0x2e0>
    80003ddc:	42a78863          	beq	a5,a0,8000420c <__printf+0x504>
    80003de0:	06400713          	li	a4,100
    80003de4:	40e79663          	bne	a5,a4,800041f0 <__printf+0x4e8>
    80003de8:	f7843783          	ld	a5,-136(s0)
    80003dec:	0007a603          	lw	a2,0(a5)
    80003df0:	00878793          	addi	a5,a5,8
    80003df4:	f6f43c23          	sd	a5,-136(s0)
    80003df8:	42064a63          	bltz	a2,8000422c <__printf+0x524>
    80003dfc:	00a00713          	li	a4,10
    80003e00:	02e677bb          	remuw	a5,a2,a4
    80003e04:	00002d97          	auipc	s11,0x2
    80003e08:	79cd8d93          	addi	s11,s11,1948 # 800065a0 <digits>
    80003e0c:	00900593          	li	a1,9
    80003e10:	0006051b          	sext.w	a0,a2
    80003e14:	00000c93          	li	s9,0
    80003e18:	02079793          	slli	a5,a5,0x20
    80003e1c:	0207d793          	srli	a5,a5,0x20
    80003e20:	00fd87b3          	add	a5,s11,a5
    80003e24:	0007c783          	lbu	a5,0(a5)
    80003e28:	02e656bb          	divuw	a3,a2,a4
    80003e2c:	f8f40023          	sb	a5,-128(s0)
    80003e30:	14c5d863          	bge	a1,a2,80003f80 <__printf+0x278>
    80003e34:	06300593          	li	a1,99
    80003e38:	00100c93          	li	s9,1
    80003e3c:	02e6f7bb          	remuw	a5,a3,a4
    80003e40:	02079793          	slli	a5,a5,0x20
    80003e44:	0207d793          	srli	a5,a5,0x20
    80003e48:	00fd87b3          	add	a5,s11,a5
    80003e4c:	0007c783          	lbu	a5,0(a5)
    80003e50:	02e6d73b          	divuw	a4,a3,a4
    80003e54:	f8f400a3          	sb	a5,-127(s0)
    80003e58:	12a5f463          	bgeu	a1,a0,80003f80 <__printf+0x278>
    80003e5c:	00a00693          	li	a3,10
    80003e60:	00900593          	li	a1,9
    80003e64:	02d777bb          	remuw	a5,a4,a3
    80003e68:	02079793          	slli	a5,a5,0x20
    80003e6c:	0207d793          	srli	a5,a5,0x20
    80003e70:	00fd87b3          	add	a5,s11,a5
    80003e74:	0007c503          	lbu	a0,0(a5)
    80003e78:	02d757bb          	divuw	a5,a4,a3
    80003e7c:	f8a40123          	sb	a0,-126(s0)
    80003e80:	48e5f263          	bgeu	a1,a4,80004304 <__printf+0x5fc>
    80003e84:	06300513          	li	a0,99
    80003e88:	02d7f5bb          	remuw	a1,a5,a3
    80003e8c:	02059593          	slli	a1,a1,0x20
    80003e90:	0205d593          	srli	a1,a1,0x20
    80003e94:	00bd85b3          	add	a1,s11,a1
    80003e98:	0005c583          	lbu	a1,0(a1)
    80003e9c:	02d7d7bb          	divuw	a5,a5,a3
    80003ea0:	f8b401a3          	sb	a1,-125(s0)
    80003ea4:	48e57263          	bgeu	a0,a4,80004328 <__printf+0x620>
    80003ea8:	3e700513          	li	a0,999
    80003eac:	02d7f5bb          	remuw	a1,a5,a3
    80003eb0:	02059593          	slli	a1,a1,0x20
    80003eb4:	0205d593          	srli	a1,a1,0x20
    80003eb8:	00bd85b3          	add	a1,s11,a1
    80003ebc:	0005c583          	lbu	a1,0(a1)
    80003ec0:	02d7d7bb          	divuw	a5,a5,a3
    80003ec4:	f8b40223          	sb	a1,-124(s0)
    80003ec8:	46e57663          	bgeu	a0,a4,80004334 <__printf+0x62c>
    80003ecc:	02d7f5bb          	remuw	a1,a5,a3
    80003ed0:	02059593          	slli	a1,a1,0x20
    80003ed4:	0205d593          	srli	a1,a1,0x20
    80003ed8:	00bd85b3          	add	a1,s11,a1
    80003edc:	0005c583          	lbu	a1,0(a1)
    80003ee0:	02d7d7bb          	divuw	a5,a5,a3
    80003ee4:	f8b402a3          	sb	a1,-123(s0)
    80003ee8:	46ea7863          	bgeu	s4,a4,80004358 <__printf+0x650>
    80003eec:	02d7f5bb          	remuw	a1,a5,a3
    80003ef0:	02059593          	slli	a1,a1,0x20
    80003ef4:	0205d593          	srli	a1,a1,0x20
    80003ef8:	00bd85b3          	add	a1,s11,a1
    80003efc:	0005c583          	lbu	a1,0(a1)
    80003f00:	02d7d7bb          	divuw	a5,a5,a3
    80003f04:	f8b40323          	sb	a1,-122(s0)
    80003f08:	3eeaf863          	bgeu	s5,a4,800042f8 <__printf+0x5f0>
    80003f0c:	02d7f5bb          	remuw	a1,a5,a3
    80003f10:	02059593          	slli	a1,a1,0x20
    80003f14:	0205d593          	srli	a1,a1,0x20
    80003f18:	00bd85b3          	add	a1,s11,a1
    80003f1c:	0005c583          	lbu	a1,0(a1)
    80003f20:	02d7d7bb          	divuw	a5,a5,a3
    80003f24:	f8b403a3          	sb	a1,-121(s0)
    80003f28:	42eb7e63          	bgeu	s6,a4,80004364 <__printf+0x65c>
    80003f2c:	02d7f5bb          	remuw	a1,a5,a3
    80003f30:	02059593          	slli	a1,a1,0x20
    80003f34:	0205d593          	srli	a1,a1,0x20
    80003f38:	00bd85b3          	add	a1,s11,a1
    80003f3c:	0005c583          	lbu	a1,0(a1)
    80003f40:	02d7d7bb          	divuw	a5,a5,a3
    80003f44:	f8b40423          	sb	a1,-120(s0)
    80003f48:	42ebfc63          	bgeu	s7,a4,80004380 <__printf+0x678>
    80003f4c:	02079793          	slli	a5,a5,0x20
    80003f50:	0207d793          	srli	a5,a5,0x20
    80003f54:	00fd8db3          	add	s11,s11,a5
    80003f58:	000dc703          	lbu	a4,0(s11)
    80003f5c:	00a00793          	li	a5,10
    80003f60:	00900c93          	li	s9,9
    80003f64:	f8e404a3          	sb	a4,-119(s0)
    80003f68:	00065c63          	bgez	a2,80003f80 <__printf+0x278>
    80003f6c:	f9040713          	addi	a4,s0,-112
    80003f70:	00f70733          	add	a4,a4,a5
    80003f74:	02d00693          	li	a3,45
    80003f78:	fed70823          	sb	a3,-16(a4)
    80003f7c:	00078c93          	mv	s9,a5
    80003f80:	f8040793          	addi	a5,s0,-128
    80003f84:	01978cb3          	add	s9,a5,s9
    80003f88:	f7f40d13          	addi	s10,s0,-129
    80003f8c:	000cc503          	lbu	a0,0(s9)
    80003f90:	fffc8c93          	addi	s9,s9,-1
    80003f94:	00000097          	auipc	ra,0x0
    80003f98:	b90080e7          	jalr	-1136(ra) # 80003b24 <consputc>
    80003f9c:	ffac98e3          	bne	s9,s10,80003f8c <__printf+0x284>
    80003fa0:	00094503          	lbu	a0,0(s2)
    80003fa4:	e00514e3          	bnez	a0,80003dac <__printf+0xa4>
    80003fa8:	1a0c1663          	bnez	s8,80004154 <__printf+0x44c>
    80003fac:	08813083          	ld	ra,136(sp)
    80003fb0:	08013403          	ld	s0,128(sp)
    80003fb4:	07813483          	ld	s1,120(sp)
    80003fb8:	07013903          	ld	s2,112(sp)
    80003fbc:	06813983          	ld	s3,104(sp)
    80003fc0:	06013a03          	ld	s4,96(sp)
    80003fc4:	05813a83          	ld	s5,88(sp)
    80003fc8:	05013b03          	ld	s6,80(sp)
    80003fcc:	04813b83          	ld	s7,72(sp)
    80003fd0:	04013c03          	ld	s8,64(sp)
    80003fd4:	03813c83          	ld	s9,56(sp)
    80003fd8:	03013d03          	ld	s10,48(sp)
    80003fdc:	02813d83          	ld	s11,40(sp)
    80003fe0:	0d010113          	addi	sp,sp,208
    80003fe4:	00008067          	ret
    80003fe8:	07300713          	li	a4,115
    80003fec:	1ce78a63          	beq	a5,a4,800041c0 <__printf+0x4b8>
    80003ff0:	07800713          	li	a4,120
    80003ff4:	1ee79e63          	bne	a5,a4,800041f0 <__printf+0x4e8>
    80003ff8:	f7843783          	ld	a5,-136(s0)
    80003ffc:	0007a703          	lw	a4,0(a5)
    80004000:	00878793          	addi	a5,a5,8
    80004004:	f6f43c23          	sd	a5,-136(s0)
    80004008:	28074263          	bltz	a4,8000428c <__printf+0x584>
    8000400c:	00002d97          	auipc	s11,0x2
    80004010:	594d8d93          	addi	s11,s11,1428 # 800065a0 <digits>
    80004014:	00f77793          	andi	a5,a4,15
    80004018:	00fd87b3          	add	a5,s11,a5
    8000401c:	0007c683          	lbu	a3,0(a5)
    80004020:	00f00613          	li	a2,15
    80004024:	0007079b          	sext.w	a5,a4
    80004028:	f8d40023          	sb	a3,-128(s0)
    8000402c:	0047559b          	srliw	a1,a4,0x4
    80004030:	0047569b          	srliw	a3,a4,0x4
    80004034:	00000c93          	li	s9,0
    80004038:	0ee65063          	bge	a2,a4,80004118 <__printf+0x410>
    8000403c:	00f6f693          	andi	a3,a3,15
    80004040:	00dd86b3          	add	a3,s11,a3
    80004044:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80004048:	0087d79b          	srliw	a5,a5,0x8
    8000404c:	00100c93          	li	s9,1
    80004050:	f8d400a3          	sb	a3,-127(s0)
    80004054:	0cb67263          	bgeu	a2,a1,80004118 <__printf+0x410>
    80004058:	00f7f693          	andi	a3,a5,15
    8000405c:	00dd86b3          	add	a3,s11,a3
    80004060:	0006c583          	lbu	a1,0(a3)
    80004064:	00f00613          	li	a2,15
    80004068:	0047d69b          	srliw	a3,a5,0x4
    8000406c:	f8b40123          	sb	a1,-126(s0)
    80004070:	0047d593          	srli	a1,a5,0x4
    80004074:	28f67e63          	bgeu	a2,a5,80004310 <__printf+0x608>
    80004078:	00f6f693          	andi	a3,a3,15
    8000407c:	00dd86b3          	add	a3,s11,a3
    80004080:	0006c503          	lbu	a0,0(a3)
    80004084:	0087d813          	srli	a6,a5,0x8
    80004088:	0087d69b          	srliw	a3,a5,0x8
    8000408c:	f8a401a3          	sb	a0,-125(s0)
    80004090:	28b67663          	bgeu	a2,a1,8000431c <__printf+0x614>
    80004094:	00f6f693          	andi	a3,a3,15
    80004098:	00dd86b3          	add	a3,s11,a3
    8000409c:	0006c583          	lbu	a1,0(a3)
    800040a0:	00c7d513          	srli	a0,a5,0xc
    800040a4:	00c7d69b          	srliw	a3,a5,0xc
    800040a8:	f8b40223          	sb	a1,-124(s0)
    800040ac:	29067a63          	bgeu	a2,a6,80004340 <__printf+0x638>
    800040b0:	00f6f693          	andi	a3,a3,15
    800040b4:	00dd86b3          	add	a3,s11,a3
    800040b8:	0006c583          	lbu	a1,0(a3)
    800040bc:	0107d813          	srli	a6,a5,0x10
    800040c0:	0107d69b          	srliw	a3,a5,0x10
    800040c4:	f8b402a3          	sb	a1,-123(s0)
    800040c8:	28a67263          	bgeu	a2,a0,8000434c <__printf+0x644>
    800040cc:	00f6f693          	andi	a3,a3,15
    800040d0:	00dd86b3          	add	a3,s11,a3
    800040d4:	0006c683          	lbu	a3,0(a3)
    800040d8:	0147d79b          	srliw	a5,a5,0x14
    800040dc:	f8d40323          	sb	a3,-122(s0)
    800040e0:	21067663          	bgeu	a2,a6,800042ec <__printf+0x5e4>
    800040e4:	02079793          	slli	a5,a5,0x20
    800040e8:	0207d793          	srli	a5,a5,0x20
    800040ec:	00fd8db3          	add	s11,s11,a5
    800040f0:	000dc683          	lbu	a3,0(s11)
    800040f4:	00800793          	li	a5,8
    800040f8:	00700c93          	li	s9,7
    800040fc:	f8d403a3          	sb	a3,-121(s0)
    80004100:	00075c63          	bgez	a4,80004118 <__printf+0x410>
    80004104:	f9040713          	addi	a4,s0,-112
    80004108:	00f70733          	add	a4,a4,a5
    8000410c:	02d00693          	li	a3,45
    80004110:	fed70823          	sb	a3,-16(a4)
    80004114:	00078c93          	mv	s9,a5
    80004118:	f8040793          	addi	a5,s0,-128
    8000411c:	01978cb3          	add	s9,a5,s9
    80004120:	f7f40d13          	addi	s10,s0,-129
    80004124:	000cc503          	lbu	a0,0(s9)
    80004128:	fffc8c93          	addi	s9,s9,-1
    8000412c:	00000097          	auipc	ra,0x0
    80004130:	9f8080e7          	jalr	-1544(ra) # 80003b24 <consputc>
    80004134:	ff9d18e3          	bne	s10,s9,80004124 <__printf+0x41c>
    80004138:	0100006f          	j	80004148 <__printf+0x440>
    8000413c:	00000097          	auipc	ra,0x0
    80004140:	9e8080e7          	jalr	-1560(ra) # 80003b24 <consputc>
    80004144:	000c8493          	mv	s1,s9
    80004148:	00094503          	lbu	a0,0(s2)
    8000414c:	c60510e3          	bnez	a0,80003dac <__printf+0xa4>
    80004150:	e40c0ee3          	beqz	s8,80003fac <__printf+0x2a4>
    80004154:	00004517          	auipc	a0,0x4
    80004158:	0fc50513          	addi	a0,a0,252 # 80008250 <pr>
    8000415c:	00001097          	auipc	ra,0x1
    80004160:	94c080e7          	jalr	-1716(ra) # 80004aa8 <release>
    80004164:	e49ff06f          	j	80003fac <__printf+0x2a4>
    80004168:	f7843783          	ld	a5,-136(s0)
    8000416c:	03000513          	li	a0,48
    80004170:	01000d13          	li	s10,16
    80004174:	00878713          	addi	a4,a5,8
    80004178:	0007bc83          	ld	s9,0(a5)
    8000417c:	f6e43c23          	sd	a4,-136(s0)
    80004180:	00000097          	auipc	ra,0x0
    80004184:	9a4080e7          	jalr	-1628(ra) # 80003b24 <consputc>
    80004188:	07800513          	li	a0,120
    8000418c:	00000097          	auipc	ra,0x0
    80004190:	998080e7          	jalr	-1640(ra) # 80003b24 <consputc>
    80004194:	00002d97          	auipc	s11,0x2
    80004198:	40cd8d93          	addi	s11,s11,1036 # 800065a0 <digits>
    8000419c:	03ccd793          	srli	a5,s9,0x3c
    800041a0:	00fd87b3          	add	a5,s11,a5
    800041a4:	0007c503          	lbu	a0,0(a5)
    800041a8:	fffd0d1b          	addiw	s10,s10,-1
    800041ac:	004c9c93          	slli	s9,s9,0x4
    800041b0:	00000097          	auipc	ra,0x0
    800041b4:	974080e7          	jalr	-1676(ra) # 80003b24 <consputc>
    800041b8:	fe0d12e3          	bnez	s10,8000419c <__printf+0x494>
    800041bc:	f8dff06f          	j	80004148 <__printf+0x440>
    800041c0:	f7843783          	ld	a5,-136(s0)
    800041c4:	0007bc83          	ld	s9,0(a5)
    800041c8:	00878793          	addi	a5,a5,8
    800041cc:	f6f43c23          	sd	a5,-136(s0)
    800041d0:	000c9a63          	bnez	s9,800041e4 <__printf+0x4dc>
    800041d4:	1080006f          	j	800042dc <__printf+0x5d4>
    800041d8:	001c8c93          	addi	s9,s9,1
    800041dc:	00000097          	auipc	ra,0x0
    800041e0:	948080e7          	jalr	-1720(ra) # 80003b24 <consputc>
    800041e4:	000cc503          	lbu	a0,0(s9)
    800041e8:	fe0518e3          	bnez	a0,800041d8 <__printf+0x4d0>
    800041ec:	f5dff06f          	j	80004148 <__printf+0x440>
    800041f0:	02500513          	li	a0,37
    800041f4:	00000097          	auipc	ra,0x0
    800041f8:	930080e7          	jalr	-1744(ra) # 80003b24 <consputc>
    800041fc:	000c8513          	mv	a0,s9
    80004200:	00000097          	auipc	ra,0x0
    80004204:	924080e7          	jalr	-1756(ra) # 80003b24 <consputc>
    80004208:	f41ff06f          	j	80004148 <__printf+0x440>
    8000420c:	02500513          	li	a0,37
    80004210:	00000097          	auipc	ra,0x0
    80004214:	914080e7          	jalr	-1772(ra) # 80003b24 <consputc>
    80004218:	f31ff06f          	j	80004148 <__printf+0x440>
    8000421c:	00030513          	mv	a0,t1
    80004220:	00000097          	auipc	ra,0x0
    80004224:	7bc080e7          	jalr	1980(ra) # 800049dc <acquire>
    80004228:	b4dff06f          	j	80003d74 <__printf+0x6c>
    8000422c:	40c0053b          	negw	a0,a2
    80004230:	00a00713          	li	a4,10
    80004234:	02e576bb          	remuw	a3,a0,a4
    80004238:	00002d97          	auipc	s11,0x2
    8000423c:	368d8d93          	addi	s11,s11,872 # 800065a0 <digits>
    80004240:	ff700593          	li	a1,-9
    80004244:	02069693          	slli	a3,a3,0x20
    80004248:	0206d693          	srli	a3,a3,0x20
    8000424c:	00dd86b3          	add	a3,s11,a3
    80004250:	0006c683          	lbu	a3,0(a3)
    80004254:	02e557bb          	divuw	a5,a0,a4
    80004258:	f8d40023          	sb	a3,-128(s0)
    8000425c:	10b65e63          	bge	a2,a1,80004378 <__printf+0x670>
    80004260:	06300593          	li	a1,99
    80004264:	02e7f6bb          	remuw	a3,a5,a4
    80004268:	02069693          	slli	a3,a3,0x20
    8000426c:	0206d693          	srli	a3,a3,0x20
    80004270:	00dd86b3          	add	a3,s11,a3
    80004274:	0006c683          	lbu	a3,0(a3)
    80004278:	02e7d73b          	divuw	a4,a5,a4
    8000427c:	00200793          	li	a5,2
    80004280:	f8d400a3          	sb	a3,-127(s0)
    80004284:	bca5ece3          	bltu	a1,a0,80003e5c <__printf+0x154>
    80004288:	ce5ff06f          	j	80003f6c <__printf+0x264>
    8000428c:	40e007bb          	negw	a5,a4
    80004290:	00002d97          	auipc	s11,0x2
    80004294:	310d8d93          	addi	s11,s11,784 # 800065a0 <digits>
    80004298:	00f7f693          	andi	a3,a5,15
    8000429c:	00dd86b3          	add	a3,s11,a3
    800042a0:	0006c583          	lbu	a1,0(a3)
    800042a4:	ff100613          	li	a2,-15
    800042a8:	0047d69b          	srliw	a3,a5,0x4
    800042ac:	f8b40023          	sb	a1,-128(s0)
    800042b0:	0047d59b          	srliw	a1,a5,0x4
    800042b4:	0ac75e63          	bge	a4,a2,80004370 <__printf+0x668>
    800042b8:	00f6f693          	andi	a3,a3,15
    800042bc:	00dd86b3          	add	a3,s11,a3
    800042c0:	0006c603          	lbu	a2,0(a3)
    800042c4:	00f00693          	li	a3,15
    800042c8:	0087d79b          	srliw	a5,a5,0x8
    800042cc:	f8c400a3          	sb	a2,-127(s0)
    800042d0:	d8b6e4e3          	bltu	a3,a1,80004058 <__printf+0x350>
    800042d4:	00200793          	li	a5,2
    800042d8:	e2dff06f          	j	80004104 <__printf+0x3fc>
    800042dc:	00002c97          	auipc	s9,0x2
    800042e0:	2a4c8c93          	addi	s9,s9,676 # 80006580 <_ZZ12printIntegermE6digits+0x4b8>
    800042e4:	02800513          	li	a0,40
    800042e8:	ef1ff06f          	j	800041d8 <__printf+0x4d0>
    800042ec:	00700793          	li	a5,7
    800042f0:	00600c93          	li	s9,6
    800042f4:	e0dff06f          	j	80004100 <__printf+0x3f8>
    800042f8:	00700793          	li	a5,7
    800042fc:	00600c93          	li	s9,6
    80004300:	c69ff06f          	j	80003f68 <__printf+0x260>
    80004304:	00300793          	li	a5,3
    80004308:	00200c93          	li	s9,2
    8000430c:	c5dff06f          	j	80003f68 <__printf+0x260>
    80004310:	00300793          	li	a5,3
    80004314:	00200c93          	li	s9,2
    80004318:	de9ff06f          	j	80004100 <__printf+0x3f8>
    8000431c:	00400793          	li	a5,4
    80004320:	00300c93          	li	s9,3
    80004324:	dddff06f          	j	80004100 <__printf+0x3f8>
    80004328:	00400793          	li	a5,4
    8000432c:	00300c93          	li	s9,3
    80004330:	c39ff06f          	j	80003f68 <__printf+0x260>
    80004334:	00500793          	li	a5,5
    80004338:	00400c93          	li	s9,4
    8000433c:	c2dff06f          	j	80003f68 <__printf+0x260>
    80004340:	00500793          	li	a5,5
    80004344:	00400c93          	li	s9,4
    80004348:	db9ff06f          	j	80004100 <__printf+0x3f8>
    8000434c:	00600793          	li	a5,6
    80004350:	00500c93          	li	s9,5
    80004354:	dadff06f          	j	80004100 <__printf+0x3f8>
    80004358:	00600793          	li	a5,6
    8000435c:	00500c93          	li	s9,5
    80004360:	c09ff06f          	j	80003f68 <__printf+0x260>
    80004364:	00800793          	li	a5,8
    80004368:	00700c93          	li	s9,7
    8000436c:	bfdff06f          	j	80003f68 <__printf+0x260>
    80004370:	00100793          	li	a5,1
    80004374:	d91ff06f          	j	80004104 <__printf+0x3fc>
    80004378:	00100793          	li	a5,1
    8000437c:	bf1ff06f          	j	80003f6c <__printf+0x264>
    80004380:	00900793          	li	a5,9
    80004384:	00800c93          	li	s9,8
    80004388:	be1ff06f          	j	80003f68 <__printf+0x260>
    8000438c:	00002517          	auipc	a0,0x2
    80004390:	1fc50513          	addi	a0,a0,508 # 80006588 <_ZZ12printIntegermE6digits+0x4c0>
    80004394:	00000097          	auipc	ra,0x0
    80004398:	918080e7          	jalr	-1768(ra) # 80003cac <panic>

000000008000439c <printfinit>:
    8000439c:	fe010113          	addi	sp,sp,-32
    800043a0:	00813823          	sd	s0,16(sp)
    800043a4:	00913423          	sd	s1,8(sp)
    800043a8:	00113c23          	sd	ra,24(sp)
    800043ac:	02010413          	addi	s0,sp,32
    800043b0:	00004497          	auipc	s1,0x4
    800043b4:	ea048493          	addi	s1,s1,-352 # 80008250 <pr>
    800043b8:	00048513          	mv	a0,s1
    800043bc:	00002597          	auipc	a1,0x2
    800043c0:	1dc58593          	addi	a1,a1,476 # 80006598 <_ZZ12printIntegermE6digits+0x4d0>
    800043c4:	00000097          	auipc	ra,0x0
    800043c8:	5f4080e7          	jalr	1524(ra) # 800049b8 <initlock>
    800043cc:	01813083          	ld	ra,24(sp)
    800043d0:	01013403          	ld	s0,16(sp)
    800043d4:	0004ac23          	sw	zero,24(s1)
    800043d8:	00813483          	ld	s1,8(sp)
    800043dc:	02010113          	addi	sp,sp,32
    800043e0:	00008067          	ret

00000000800043e4 <uartinit>:
    800043e4:	ff010113          	addi	sp,sp,-16
    800043e8:	00813423          	sd	s0,8(sp)
    800043ec:	01010413          	addi	s0,sp,16
    800043f0:	100007b7          	lui	a5,0x10000
    800043f4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800043f8:	f8000713          	li	a4,-128
    800043fc:	00e781a3          	sb	a4,3(a5)
    80004400:	00300713          	li	a4,3
    80004404:	00e78023          	sb	a4,0(a5)
    80004408:	000780a3          	sb	zero,1(a5)
    8000440c:	00e781a3          	sb	a4,3(a5)
    80004410:	00700693          	li	a3,7
    80004414:	00d78123          	sb	a3,2(a5)
    80004418:	00e780a3          	sb	a4,1(a5)
    8000441c:	00813403          	ld	s0,8(sp)
    80004420:	01010113          	addi	sp,sp,16
    80004424:	00008067          	ret

0000000080004428 <uartputc>:
    80004428:	00003797          	auipc	a5,0x3
    8000442c:	ba07a783          	lw	a5,-1120(a5) # 80006fc8 <panicked>
    80004430:	00078463          	beqz	a5,80004438 <uartputc+0x10>
    80004434:	0000006f          	j	80004434 <uartputc+0xc>
    80004438:	fd010113          	addi	sp,sp,-48
    8000443c:	02813023          	sd	s0,32(sp)
    80004440:	00913c23          	sd	s1,24(sp)
    80004444:	01213823          	sd	s2,16(sp)
    80004448:	01313423          	sd	s3,8(sp)
    8000444c:	02113423          	sd	ra,40(sp)
    80004450:	03010413          	addi	s0,sp,48
    80004454:	00003917          	auipc	s2,0x3
    80004458:	b7c90913          	addi	s2,s2,-1156 # 80006fd0 <uart_tx_r>
    8000445c:	00093783          	ld	a5,0(s2)
    80004460:	00003497          	auipc	s1,0x3
    80004464:	b7848493          	addi	s1,s1,-1160 # 80006fd8 <uart_tx_w>
    80004468:	0004b703          	ld	a4,0(s1)
    8000446c:	02078693          	addi	a3,a5,32
    80004470:	00050993          	mv	s3,a0
    80004474:	02e69c63          	bne	a3,a4,800044ac <uartputc+0x84>
    80004478:	00001097          	auipc	ra,0x1
    8000447c:	834080e7          	jalr	-1996(ra) # 80004cac <push_on>
    80004480:	00093783          	ld	a5,0(s2)
    80004484:	0004b703          	ld	a4,0(s1)
    80004488:	02078793          	addi	a5,a5,32
    8000448c:	00e79463          	bne	a5,a4,80004494 <uartputc+0x6c>
    80004490:	0000006f          	j	80004490 <uartputc+0x68>
    80004494:	00001097          	auipc	ra,0x1
    80004498:	88c080e7          	jalr	-1908(ra) # 80004d20 <pop_on>
    8000449c:	00093783          	ld	a5,0(s2)
    800044a0:	0004b703          	ld	a4,0(s1)
    800044a4:	02078693          	addi	a3,a5,32
    800044a8:	fce688e3          	beq	a3,a4,80004478 <uartputc+0x50>
    800044ac:	01f77693          	andi	a3,a4,31
    800044b0:	00004597          	auipc	a1,0x4
    800044b4:	dc058593          	addi	a1,a1,-576 # 80008270 <uart_tx_buf>
    800044b8:	00d586b3          	add	a3,a1,a3
    800044bc:	00170713          	addi	a4,a4,1
    800044c0:	01368023          	sb	s3,0(a3)
    800044c4:	00e4b023          	sd	a4,0(s1)
    800044c8:	10000637          	lui	a2,0x10000
    800044cc:	02f71063          	bne	a4,a5,800044ec <uartputc+0xc4>
    800044d0:	0340006f          	j	80004504 <uartputc+0xdc>
    800044d4:	00074703          	lbu	a4,0(a4)
    800044d8:	00f93023          	sd	a5,0(s2)
    800044dc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800044e0:	00093783          	ld	a5,0(s2)
    800044e4:	0004b703          	ld	a4,0(s1)
    800044e8:	00f70e63          	beq	a4,a5,80004504 <uartputc+0xdc>
    800044ec:	00564683          	lbu	a3,5(a2)
    800044f0:	01f7f713          	andi	a4,a5,31
    800044f4:	00e58733          	add	a4,a1,a4
    800044f8:	0206f693          	andi	a3,a3,32
    800044fc:	00178793          	addi	a5,a5,1
    80004500:	fc069ae3          	bnez	a3,800044d4 <uartputc+0xac>
    80004504:	02813083          	ld	ra,40(sp)
    80004508:	02013403          	ld	s0,32(sp)
    8000450c:	01813483          	ld	s1,24(sp)
    80004510:	01013903          	ld	s2,16(sp)
    80004514:	00813983          	ld	s3,8(sp)
    80004518:	03010113          	addi	sp,sp,48
    8000451c:	00008067          	ret

0000000080004520 <uartputc_sync>:
    80004520:	ff010113          	addi	sp,sp,-16
    80004524:	00813423          	sd	s0,8(sp)
    80004528:	01010413          	addi	s0,sp,16
    8000452c:	00003717          	auipc	a4,0x3
    80004530:	a9c72703          	lw	a4,-1380(a4) # 80006fc8 <panicked>
    80004534:	02071663          	bnez	a4,80004560 <uartputc_sync+0x40>
    80004538:	00050793          	mv	a5,a0
    8000453c:	100006b7          	lui	a3,0x10000
    80004540:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80004544:	02077713          	andi	a4,a4,32
    80004548:	fe070ce3          	beqz	a4,80004540 <uartputc_sync+0x20>
    8000454c:	0ff7f793          	andi	a5,a5,255
    80004550:	00f68023          	sb	a5,0(a3)
    80004554:	00813403          	ld	s0,8(sp)
    80004558:	01010113          	addi	sp,sp,16
    8000455c:	00008067          	ret
    80004560:	0000006f          	j	80004560 <uartputc_sync+0x40>

0000000080004564 <uartstart>:
    80004564:	ff010113          	addi	sp,sp,-16
    80004568:	00813423          	sd	s0,8(sp)
    8000456c:	01010413          	addi	s0,sp,16
    80004570:	00003617          	auipc	a2,0x3
    80004574:	a6060613          	addi	a2,a2,-1440 # 80006fd0 <uart_tx_r>
    80004578:	00003517          	auipc	a0,0x3
    8000457c:	a6050513          	addi	a0,a0,-1440 # 80006fd8 <uart_tx_w>
    80004580:	00063783          	ld	a5,0(a2)
    80004584:	00053703          	ld	a4,0(a0)
    80004588:	04f70263          	beq	a4,a5,800045cc <uartstart+0x68>
    8000458c:	100005b7          	lui	a1,0x10000
    80004590:	00004817          	auipc	a6,0x4
    80004594:	ce080813          	addi	a6,a6,-800 # 80008270 <uart_tx_buf>
    80004598:	01c0006f          	j	800045b4 <uartstart+0x50>
    8000459c:	0006c703          	lbu	a4,0(a3)
    800045a0:	00f63023          	sd	a5,0(a2)
    800045a4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800045a8:	00063783          	ld	a5,0(a2)
    800045ac:	00053703          	ld	a4,0(a0)
    800045b0:	00f70e63          	beq	a4,a5,800045cc <uartstart+0x68>
    800045b4:	01f7f713          	andi	a4,a5,31
    800045b8:	00e806b3          	add	a3,a6,a4
    800045bc:	0055c703          	lbu	a4,5(a1)
    800045c0:	00178793          	addi	a5,a5,1
    800045c4:	02077713          	andi	a4,a4,32
    800045c8:	fc071ae3          	bnez	a4,8000459c <uartstart+0x38>
    800045cc:	00813403          	ld	s0,8(sp)
    800045d0:	01010113          	addi	sp,sp,16
    800045d4:	00008067          	ret

00000000800045d8 <uartgetc>:
    800045d8:	ff010113          	addi	sp,sp,-16
    800045dc:	00813423          	sd	s0,8(sp)
    800045e0:	01010413          	addi	s0,sp,16
    800045e4:	10000737          	lui	a4,0x10000
    800045e8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800045ec:	0017f793          	andi	a5,a5,1
    800045f0:	00078c63          	beqz	a5,80004608 <uartgetc+0x30>
    800045f4:	00074503          	lbu	a0,0(a4)
    800045f8:	0ff57513          	andi	a0,a0,255
    800045fc:	00813403          	ld	s0,8(sp)
    80004600:	01010113          	addi	sp,sp,16
    80004604:	00008067          	ret
    80004608:	fff00513          	li	a0,-1
    8000460c:	ff1ff06f          	j	800045fc <uartgetc+0x24>

0000000080004610 <uartintr>:
    80004610:	100007b7          	lui	a5,0x10000
    80004614:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80004618:	0017f793          	andi	a5,a5,1
    8000461c:	0a078463          	beqz	a5,800046c4 <uartintr+0xb4>
    80004620:	fe010113          	addi	sp,sp,-32
    80004624:	00813823          	sd	s0,16(sp)
    80004628:	00913423          	sd	s1,8(sp)
    8000462c:	00113c23          	sd	ra,24(sp)
    80004630:	02010413          	addi	s0,sp,32
    80004634:	100004b7          	lui	s1,0x10000
    80004638:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000463c:	0ff57513          	andi	a0,a0,255
    80004640:	fffff097          	auipc	ra,0xfffff
    80004644:	534080e7          	jalr	1332(ra) # 80003b74 <consoleintr>
    80004648:	0054c783          	lbu	a5,5(s1)
    8000464c:	0017f793          	andi	a5,a5,1
    80004650:	fe0794e3          	bnez	a5,80004638 <uartintr+0x28>
    80004654:	00003617          	auipc	a2,0x3
    80004658:	97c60613          	addi	a2,a2,-1668 # 80006fd0 <uart_tx_r>
    8000465c:	00003517          	auipc	a0,0x3
    80004660:	97c50513          	addi	a0,a0,-1668 # 80006fd8 <uart_tx_w>
    80004664:	00063783          	ld	a5,0(a2)
    80004668:	00053703          	ld	a4,0(a0)
    8000466c:	04f70263          	beq	a4,a5,800046b0 <uartintr+0xa0>
    80004670:	100005b7          	lui	a1,0x10000
    80004674:	00004817          	auipc	a6,0x4
    80004678:	bfc80813          	addi	a6,a6,-1028 # 80008270 <uart_tx_buf>
    8000467c:	01c0006f          	j	80004698 <uartintr+0x88>
    80004680:	0006c703          	lbu	a4,0(a3)
    80004684:	00f63023          	sd	a5,0(a2)
    80004688:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000468c:	00063783          	ld	a5,0(a2)
    80004690:	00053703          	ld	a4,0(a0)
    80004694:	00f70e63          	beq	a4,a5,800046b0 <uartintr+0xa0>
    80004698:	01f7f713          	andi	a4,a5,31
    8000469c:	00e806b3          	add	a3,a6,a4
    800046a0:	0055c703          	lbu	a4,5(a1)
    800046a4:	00178793          	addi	a5,a5,1
    800046a8:	02077713          	andi	a4,a4,32
    800046ac:	fc071ae3          	bnez	a4,80004680 <uartintr+0x70>
    800046b0:	01813083          	ld	ra,24(sp)
    800046b4:	01013403          	ld	s0,16(sp)
    800046b8:	00813483          	ld	s1,8(sp)
    800046bc:	02010113          	addi	sp,sp,32
    800046c0:	00008067          	ret
    800046c4:	00003617          	auipc	a2,0x3
    800046c8:	90c60613          	addi	a2,a2,-1780 # 80006fd0 <uart_tx_r>
    800046cc:	00003517          	auipc	a0,0x3
    800046d0:	90c50513          	addi	a0,a0,-1780 # 80006fd8 <uart_tx_w>
    800046d4:	00063783          	ld	a5,0(a2)
    800046d8:	00053703          	ld	a4,0(a0)
    800046dc:	04f70263          	beq	a4,a5,80004720 <uartintr+0x110>
    800046e0:	100005b7          	lui	a1,0x10000
    800046e4:	00004817          	auipc	a6,0x4
    800046e8:	b8c80813          	addi	a6,a6,-1140 # 80008270 <uart_tx_buf>
    800046ec:	01c0006f          	j	80004708 <uartintr+0xf8>
    800046f0:	0006c703          	lbu	a4,0(a3)
    800046f4:	00f63023          	sd	a5,0(a2)
    800046f8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800046fc:	00063783          	ld	a5,0(a2)
    80004700:	00053703          	ld	a4,0(a0)
    80004704:	02f70063          	beq	a4,a5,80004724 <uartintr+0x114>
    80004708:	01f7f713          	andi	a4,a5,31
    8000470c:	00e806b3          	add	a3,a6,a4
    80004710:	0055c703          	lbu	a4,5(a1)
    80004714:	00178793          	addi	a5,a5,1
    80004718:	02077713          	andi	a4,a4,32
    8000471c:	fc071ae3          	bnez	a4,800046f0 <uartintr+0xe0>
    80004720:	00008067          	ret
    80004724:	00008067          	ret

0000000080004728 <kinit>:
    80004728:	fc010113          	addi	sp,sp,-64
    8000472c:	02913423          	sd	s1,40(sp)
    80004730:	fffff7b7          	lui	a5,0xfffff
    80004734:	00005497          	auipc	s1,0x5
    80004738:	b5b48493          	addi	s1,s1,-1189 # 8000928f <end+0xfff>
    8000473c:	02813823          	sd	s0,48(sp)
    80004740:	01313c23          	sd	s3,24(sp)
    80004744:	00f4f4b3          	and	s1,s1,a5
    80004748:	02113c23          	sd	ra,56(sp)
    8000474c:	03213023          	sd	s2,32(sp)
    80004750:	01413823          	sd	s4,16(sp)
    80004754:	01513423          	sd	s5,8(sp)
    80004758:	04010413          	addi	s0,sp,64
    8000475c:	000017b7          	lui	a5,0x1
    80004760:	01100993          	li	s3,17
    80004764:	00f487b3          	add	a5,s1,a5
    80004768:	01b99993          	slli	s3,s3,0x1b
    8000476c:	06f9e063          	bltu	s3,a5,800047cc <kinit+0xa4>
    80004770:	00004a97          	auipc	s5,0x4
    80004774:	b20a8a93          	addi	s5,s5,-1248 # 80008290 <end>
    80004778:	0754ec63          	bltu	s1,s5,800047f0 <kinit+0xc8>
    8000477c:	0734fa63          	bgeu	s1,s3,800047f0 <kinit+0xc8>
    80004780:	00088a37          	lui	s4,0x88
    80004784:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80004788:	00003917          	auipc	s2,0x3
    8000478c:	85890913          	addi	s2,s2,-1960 # 80006fe0 <kmem>
    80004790:	00ca1a13          	slli	s4,s4,0xc
    80004794:	0140006f          	j	800047a8 <kinit+0x80>
    80004798:	000017b7          	lui	a5,0x1
    8000479c:	00f484b3          	add	s1,s1,a5
    800047a0:	0554e863          	bltu	s1,s5,800047f0 <kinit+0xc8>
    800047a4:	0534f663          	bgeu	s1,s3,800047f0 <kinit+0xc8>
    800047a8:	00001637          	lui	a2,0x1
    800047ac:	00100593          	li	a1,1
    800047b0:	00048513          	mv	a0,s1
    800047b4:	00000097          	auipc	ra,0x0
    800047b8:	5e4080e7          	jalr	1508(ra) # 80004d98 <__memset>
    800047bc:	00093783          	ld	a5,0(s2)
    800047c0:	00f4b023          	sd	a5,0(s1)
    800047c4:	00993023          	sd	s1,0(s2)
    800047c8:	fd4498e3          	bne	s1,s4,80004798 <kinit+0x70>
    800047cc:	03813083          	ld	ra,56(sp)
    800047d0:	03013403          	ld	s0,48(sp)
    800047d4:	02813483          	ld	s1,40(sp)
    800047d8:	02013903          	ld	s2,32(sp)
    800047dc:	01813983          	ld	s3,24(sp)
    800047e0:	01013a03          	ld	s4,16(sp)
    800047e4:	00813a83          	ld	s5,8(sp)
    800047e8:	04010113          	addi	sp,sp,64
    800047ec:	00008067          	ret
    800047f0:	00002517          	auipc	a0,0x2
    800047f4:	dc850513          	addi	a0,a0,-568 # 800065b8 <digits+0x18>
    800047f8:	fffff097          	auipc	ra,0xfffff
    800047fc:	4b4080e7          	jalr	1204(ra) # 80003cac <panic>

0000000080004800 <freerange>:
    80004800:	fc010113          	addi	sp,sp,-64
    80004804:	000017b7          	lui	a5,0x1
    80004808:	02913423          	sd	s1,40(sp)
    8000480c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80004810:	009504b3          	add	s1,a0,s1
    80004814:	fffff537          	lui	a0,0xfffff
    80004818:	02813823          	sd	s0,48(sp)
    8000481c:	02113c23          	sd	ra,56(sp)
    80004820:	03213023          	sd	s2,32(sp)
    80004824:	01313c23          	sd	s3,24(sp)
    80004828:	01413823          	sd	s4,16(sp)
    8000482c:	01513423          	sd	s5,8(sp)
    80004830:	01613023          	sd	s6,0(sp)
    80004834:	04010413          	addi	s0,sp,64
    80004838:	00a4f4b3          	and	s1,s1,a0
    8000483c:	00f487b3          	add	a5,s1,a5
    80004840:	06f5e463          	bltu	a1,a5,800048a8 <freerange+0xa8>
    80004844:	00004a97          	auipc	s5,0x4
    80004848:	a4ca8a93          	addi	s5,s5,-1460 # 80008290 <end>
    8000484c:	0954e263          	bltu	s1,s5,800048d0 <freerange+0xd0>
    80004850:	01100993          	li	s3,17
    80004854:	01b99993          	slli	s3,s3,0x1b
    80004858:	0734fc63          	bgeu	s1,s3,800048d0 <freerange+0xd0>
    8000485c:	00058a13          	mv	s4,a1
    80004860:	00002917          	auipc	s2,0x2
    80004864:	78090913          	addi	s2,s2,1920 # 80006fe0 <kmem>
    80004868:	00002b37          	lui	s6,0x2
    8000486c:	0140006f          	j	80004880 <freerange+0x80>
    80004870:	000017b7          	lui	a5,0x1
    80004874:	00f484b3          	add	s1,s1,a5
    80004878:	0554ec63          	bltu	s1,s5,800048d0 <freerange+0xd0>
    8000487c:	0534fa63          	bgeu	s1,s3,800048d0 <freerange+0xd0>
    80004880:	00001637          	lui	a2,0x1
    80004884:	00100593          	li	a1,1
    80004888:	00048513          	mv	a0,s1
    8000488c:	00000097          	auipc	ra,0x0
    80004890:	50c080e7          	jalr	1292(ra) # 80004d98 <__memset>
    80004894:	00093703          	ld	a4,0(s2)
    80004898:	016487b3          	add	a5,s1,s6
    8000489c:	00e4b023          	sd	a4,0(s1)
    800048a0:	00993023          	sd	s1,0(s2)
    800048a4:	fcfa76e3          	bgeu	s4,a5,80004870 <freerange+0x70>
    800048a8:	03813083          	ld	ra,56(sp)
    800048ac:	03013403          	ld	s0,48(sp)
    800048b0:	02813483          	ld	s1,40(sp)
    800048b4:	02013903          	ld	s2,32(sp)
    800048b8:	01813983          	ld	s3,24(sp)
    800048bc:	01013a03          	ld	s4,16(sp)
    800048c0:	00813a83          	ld	s5,8(sp)
    800048c4:	00013b03          	ld	s6,0(sp)
    800048c8:	04010113          	addi	sp,sp,64
    800048cc:	00008067          	ret
    800048d0:	00002517          	auipc	a0,0x2
    800048d4:	ce850513          	addi	a0,a0,-792 # 800065b8 <digits+0x18>
    800048d8:	fffff097          	auipc	ra,0xfffff
    800048dc:	3d4080e7          	jalr	980(ra) # 80003cac <panic>

00000000800048e0 <kfree>:
    800048e0:	fe010113          	addi	sp,sp,-32
    800048e4:	00813823          	sd	s0,16(sp)
    800048e8:	00113c23          	sd	ra,24(sp)
    800048ec:	00913423          	sd	s1,8(sp)
    800048f0:	02010413          	addi	s0,sp,32
    800048f4:	03451793          	slli	a5,a0,0x34
    800048f8:	04079c63          	bnez	a5,80004950 <kfree+0x70>
    800048fc:	00004797          	auipc	a5,0x4
    80004900:	99478793          	addi	a5,a5,-1644 # 80008290 <end>
    80004904:	00050493          	mv	s1,a0
    80004908:	04f56463          	bltu	a0,a5,80004950 <kfree+0x70>
    8000490c:	01100793          	li	a5,17
    80004910:	01b79793          	slli	a5,a5,0x1b
    80004914:	02f57e63          	bgeu	a0,a5,80004950 <kfree+0x70>
    80004918:	00001637          	lui	a2,0x1
    8000491c:	00100593          	li	a1,1
    80004920:	00000097          	auipc	ra,0x0
    80004924:	478080e7          	jalr	1144(ra) # 80004d98 <__memset>
    80004928:	00002797          	auipc	a5,0x2
    8000492c:	6b878793          	addi	a5,a5,1720 # 80006fe0 <kmem>
    80004930:	0007b703          	ld	a4,0(a5)
    80004934:	01813083          	ld	ra,24(sp)
    80004938:	01013403          	ld	s0,16(sp)
    8000493c:	00e4b023          	sd	a4,0(s1)
    80004940:	0097b023          	sd	s1,0(a5)
    80004944:	00813483          	ld	s1,8(sp)
    80004948:	02010113          	addi	sp,sp,32
    8000494c:	00008067          	ret
    80004950:	00002517          	auipc	a0,0x2
    80004954:	c6850513          	addi	a0,a0,-920 # 800065b8 <digits+0x18>
    80004958:	fffff097          	auipc	ra,0xfffff
    8000495c:	354080e7          	jalr	852(ra) # 80003cac <panic>

0000000080004960 <kalloc>:
    80004960:	fe010113          	addi	sp,sp,-32
    80004964:	00813823          	sd	s0,16(sp)
    80004968:	00913423          	sd	s1,8(sp)
    8000496c:	00113c23          	sd	ra,24(sp)
    80004970:	02010413          	addi	s0,sp,32
    80004974:	00002797          	auipc	a5,0x2
    80004978:	66c78793          	addi	a5,a5,1644 # 80006fe0 <kmem>
    8000497c:	0007b483          	ld	s1,0(a5)
    80004980:	02048063          	beqz	s1,800049a0 <kalloc+0x40>
    80004984:	0004b703          	ld	a4,0(s1)
    80004988:	00001637          	lui	a2,0x1
    8000498c:	00500593          	li	a1,5
    80004990:	00048513          	mv	a0,s1
    80004994:	00e7b023          	sd	a4,0(a5)
    80004998:	00000097          	auipc	ra,0x0
    8000499c:	400080e7          	jalr	1024(ra) # 80004d98 <__memset>
    800049a0:	01813083          	ld	ra,24(sp)
    800049a4:	01013403          	ld	s0,16(sp)
    800049a8:	00048513          	mv	a0,s1
    800049ac:	00813483          	ld	s1,8(sp)
    800049b0:	02010113          	addi	sp,sp,32
    800049b4:	00008067          	ret

00000000800049b8 <initlock>:
    800049b8:	ff010113          	addi	sp,sp,-16
    800049bc:	00813423          	sd	s0,8(sp)
    800049c0:	01010413          	addi	s0,sp,16
    800049c4:	00813403          	ld	s0,8(sp)
    800049c8:	00b53423          	sd	a1,8(a0)
    800049cc:	00052023          	sw	zero,0(a0)
    800049d0:	00053823          	sd	zero,16(a0)
    800049d4:	01010113          	addi	sp,sp,16
    800049d8:	00008067          	ret

00000000800049dc <acquire>:
    800049dc:	fe010113          	addi	sp,sp,-32
    800049e0:	00813823          	sd	s0,16(sp)
    800049e4:	00913423          	sd	s1,8(sp)
    800049e8:	00113c23          	sd	ra,24(sp)
    800049ec:	01213023          	sd	s2,0(sp)
    800049f0:	02010413          	addi	s0,sp,32
    800049f4:	00050493          	mv	s1,a0
    800049f8:	10002973          	csrr	s2,sstatus
    800049fc:	100027f3          	csrr	a5,sstatus
    80004a00:	ffd7f793          	andi	a5,a5,-3
    80004a04:	10079073          	csrw	sstatus,a5
    80004a08:	fffff097          	auipc	ra,0xfffff
    80004a0c:	8e0080e7          	jalr	-1824(ra) # 800032e8 <mycpu>
    80004a10:	07852783          	lw	a5,120(a0)
    80004a14:	06078e63          	beqz	a5,80004a90 <acquire+0xb4>
    80004a18:	fffff097          	auipc	ra,0xfffff
    80004a1c:	8d0080e7          	jalr	-1840(ra) # 800032e8 <mycpu>
    80004a20:	07852783          	lw	a5,120(a0)
    80004a24:	0004a703          	lw	a4,0(s1)
    80004a28:	0017879b          	addiw	a5,a5,1
    80004a2c:	06f52c23          	sw	a5,120(a0)
    80004a30:	04071063          	bnez	a4,80004a70 <acquire+0x94>
    80004a34:	00100713          	li	a4,1
    80004a38:	00070793          	mv	a5,a4
    80004a3c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80004a40:	0007879b          	sext.w	a5,a5
    80004a44:	fe079ae3          	bnez	a5,80004a38 <acquire+0x5c>
    80004a48:	0ff0000f          	fence
    80004a4c:	fffff097          	auipc	ra,0xfffff
    80004a50:	89c080e7          	jalr	-1892(ra) # 800032e8 <mycpu>
    80004a54:	01813083          	ld	ra,24(sp)
    80004a58:	01013403          	ld	s0,16(sp)
    80004a5c:	00a4b823          	sd	a0,16(s1)
    80004a60:	00013903          	ld	s2,0(sp)
    80004a64:	00813483          	ld	s1,8(sp)
    80004a68:	02010113          	addi	sp,sp,32
    80004a6c:	00008067          	ret
    80004a70:	0104b903          	ld	s2,16(s1)
    80004a74:	fffff097          	auipc	ra,0xfffff
    80004a78:	874080e7          	jalr	-1932(ra) # 800032e8 <mycpu>
    80004a7c:	faa91ce3          	bne	s2,a0,80004a34 <acquire+0x58>
    80004a80:	00002517          	auipc	a0,0x2
    80004a84:	b4050513          	addi	a0,a0,-1216 # 800065c0 <digits+0x20>
    80004a88:	fffff097          	auipc	ra,0xfffff
    80004a8c:	224080e7          	jalr	548(ra) # 80003cac <panic>
    80004a90:	00195913          	srli	s2,s2,0x1
    80004a94:	fffff097          	auipc	ra,0xfffff
    80004a98:	854080e7          	jalr	-1964(ra) # 800032e8 <mycpu>
    80004a9c:	00197913          	andi	s2,s2,1
    80004aa0:	07252e23          	sw	s2,124(a0)
    80004aa4:	f75ff06f          	j	80004a18 <acquire+0x3c>

0000000080004aa8 <release>:
    80004aa8:	fe010113          	addi	sp,sp,-32
    80004aac:	00813823          	sd	s0,16(sp)
    80004ab0:	00113c23          	sd	ra,24(sp)
    80004ab4:	00913423          	sd	s1,8(sp)
    80004ab8:	01213023          	sd	s2,0(sp)
    80004abc:	02010413          	addi	s0,sp,32
    80004ac0:	00052783          	lw	a5,0(a0)
    80004ac4:	00079a63          	bnez	a5,80004ad8 <release+0x30>
    80004ac8:	00002517          	auipc	a0,0x2
    80004acc:	b0050513          	addi	a0,a0,-1280 # 800065c8 <digits+0x28>
    80004ad0:	fffff097          	auipc	ra,0xfffff
    80004ad4:	1dc080e7          	jalr	476(ra) # 80003cac <panic>
    80004ad8:	01053903          	ld	s2,16(a0)
    80004adc:	00050493          	mv	s1,a0
    80004ae0:	fffff097          	auipc	ra,0xfffff
    80004ae4:	808080e7          	jalr	-2040(ra) # 800032e8 <mycpu>
    80004ae8:	fea910e3          	bne	s2,a0,80004ac8 <release+0x20>
    80004aec:	0004b823          	sd	zero,16(s1)
    80004af0:	0ff0000f          	fence
    80004af4:	0f50000f          	fence	iorw,ow
    80004af8:	0804a02f          	amoswap.w	zero,zero,(s1)
    80004afc:	ffffe097          	auipc	ra,0xffffe
    80004b00:	7ec080e7          	jalr	2028(ra) # 800032e8 <mycpu>
    80004b04:	100027f3          	csrr	a5,sstatus
    80004b08:	0027f793          	andi	a5,a5,2
    80004b0c:	04079a63          	bnez	a5,80004b60 <release+0xb8>
    80004b10:	07852783          	lw	a5,120(a0)
    80004b14:	02f05e63          	blez	a5,80004b50 <release+0xa8>
    80004b18:	fff7871b          	addiw	a4,a5,-1
    80004b1c:	06e52c23          	sw	a4,120(a0)
    80004b20:	00071c63          	bnez	a4,80004b38 <release+0x90>
    80004b24:	07c52783          	lw	a5,124(a0)
    80004b28:	00078863          	beqz	a5,80004b38 <release+0x90>
    80004b2c:	100027f3          	csrr	a5,sstatus
    80004b30:	0027e793          	ori	a5,a5,2
    80004b34:	10079073          	csrw	sstatus,a5
    80004b38:	01813083          	ld	ra,24(sp)
    80004b3c:	01013403          	ld	s0,16(sp)
    80004b40:	00813483          	ld	s1,8(sp)
    80004b44:	00013903          	ld	s2,0(sp)
    80004b48:	02010113          	addi	sp,sp,32
    80004b4c:	00008067          	ret
    80004b50:	00002517          	auipc	a0,0x2
    80004b54:	a9850513          	addi	a0,a0,-1384 # 800065e8 <digits+0x48>
    80004b58:	fffff097          	auipc	ra,0xfffff
    80004b5c:	154080e7          	jalr	340(ra) # 80003cac <panic>
    80004b60:	00002517          	auipc	a0,0x2
    80004b64:	a7050513          	addi	a0,a0,-1424 # 800065d0 <digits+0x30>
    80004b68:	fffff097          	auipc	ra,0xfffff
    80004b6c:	144080e7          	jalr	324(ra) # 80003cac <panic>

0000000080004b70 <holding>:
    80004b70:	00052783          	lw	a5,0(a0)
    80004b74:	00079663          	bnez	a5,80004b80 <holding+0x10>
    80004b78:	00000513          	li	a0,0
    80004b7c:	00008067          	ret
    80004b80:	fe010113          	addi	sp,sp,-32
    80004b84:	00813823          	sd	s0,16(sp)
    80004b88:	00913423          	sd	s1,8(sp)
    80004b8c:	00113c23          	sd	ra,24(sp)
    80004b90:	02010413          	addi	s0,sp,32
    80004b94:	01053483          	ld	s1,16(a0)
    80004b98:	ffffe097          	auipc	ra,0xffffe
    80004b9c:	750080e7          	jalr	1872(ra) # 800032e8 <mycpu>
    80004ba0:	01813083          	ld	ra,24(sp)
    80004ba4:	01013403          	ld	s0,16(sp)
    80004ba8:	40a48533          	sub	a0,s1,a0
    80004bac:	00153513          	seqz	a0,a0
    80004bb0:	00813483          	ld	s1,8(sp)
    80004bb4:	02010113          	addi	sp,sp,32
    80004bb8:	00008067          	ret

0000000080004bbc <push_off>:
    80004bbc:	fe010113          	addi	sp,sp,-32
    80004bc0:	00813823          	sd	s0,16(sp)
    80004bc4:	00113c23          	sd	ra,24(sp)
    80004bc8:	00913423          	sd	s1,8(sp)
    80004bcc:	02010413          	addi	s0,sp,32
    80004bd0:	100024f3          	csrr	s1,sstatus
    80004bd4:	100027f3          	csrr	a5,sstatus
    80004bd8:	ffd7f793          	andi	a5,a5,-3
    80004bdc:	10079073          	csrw	sstatus,a5
    80004be0:	ffffe097          	auipc	ra,0xffffe
    80004be4:	708080e7          	jalr	1800(ra) # 800032e8 <mycpu>
    80004be8:	07852783          	lw	a5,120(a0)
    80004bec:	02078663          	beqz	a5,80004c18 <push_off+0x5c>
    80004bf0:	ffffe097          	auipc	ra,0xffffe
    80004bf4:	6f8080e7          	jalr	1784(ra) # 800032e8 <mycpu>
    80004bf8:	07852783          	lw	a5,120(a0)
    80004bfc:	01813083          	ld	ra,24(sp)
    80004c00:	01013403          	ld	s0,16(sp)
    80004c04:	0017879b          	addiw	a5,a5,1
    80004c08:	06f52c23          	sw	a5,120(a0)
    80004c0c:	00813483          	ld	s1,8(sp)
    80004c10:	02010113          	addi	sp,sp,32
    80004c14:	00008067          	ret
    80004c18:	0014d493          	srli	s1,s1,0x1
    80004c1c:	ffffe097          	auipc	ra,0xffffe
    80004c20:	6cc080e7          	jalr	1740(ra) # 800032e8 <mycpu>
    80004c24:	0014f493          	andi	s1,s1,1
    80004c28:	06952e23          	sw	s1,124(a0)
    80004c2c:	fc5ff06f          	j	80004bf0 <push_off+0x34>

0000000080004c30 <pop_off>:
    80004c30:	ff010113          	addi	sp,sp,-16
    80004c34:	00813023          	sd	s0,0(sp)
    80004c38:	00113423          	sd	ra,8(sp)
    80004c3c:	01010413          	addi	s0,sp,16
    80004c40:	ffffe097          	auipc	ra,0xffffe
    80004c44:	6a8080e7          	jalr	1704(ra) # 800032e8 <mycpu>
    80004c48:	100027f3          	csrr	a5,sstatus
    80004c4c:	0027f793          	andi	a5,a5,2
    80004c50:	04079663          	bnez	a5,80004c9c <pop_off+0x6c>
    80004c54:	07852783          	lw	a5,120(a0)
    80004c58:	02f05a63          	blez	a5,80004c8c <pop_off+0x5c>
    80004c5c:	fff7871b          	addiw	a4,a5,-1
    80004c60:	06e52c23          	sw	a4,120(a0)
    80004c64:	00071c63          	bnez	a4,80004c7c <pop_off+0x4c>
    80004c68:	07c52783          	lw	a5,124(a0)
    80004c6c:	00078863          	beqz	a5,80004c7c <pop_off+0x4c>
    80004c70:	100027f3          	csrr	a5,sstatus
    80004c74:	0027e793          	ori	a5,a5,2
    80004c78:	10079073          	csrw	sstatus,a5
    80004c7c:	00813083          	ld	ra,8(sp)
    80004c80:	00013403          	ld	s0,0(sp)
    80004c84:	01010113          	addi	sp,sp,16
    80004c88:	00008067          	ret
    80004c8c:	00002517          	auipc	a0,0x2
    80004c90:	95c50513          	addi	a0,a0,-1700 # 800065e8 <digits+0x48>
    80004c94:	fffff097          	auipc	ra,0xfffff
    80004c98:	018080e7          	jalr	24(ra) # 80003cac <panic>
    80004c9c:	00002517          	auipc	a0,0x2
    80004ca0:	93450513          	addi	a0,a0,-1740 # 800065d0 <digits+0x30>
    80004ca4:	fffff097          	auipc	ra,0xfffff
    80004ca8:	008080e7          	jalr	8(ra) # 80003cac <panic>

0000000080004cac <push_on>:
    80004cac:	fe010113          	addi	sp,sp,-32
    80004cb0:	00813823          	sd	s0,16(sp)
    80004cb4:	00113c23          	sd	ra,24(sp)
    80004cb8:	00913423          	sd	s1,8(sp)
    80004cbc:	02010413          	addi	s0,sp,32
    80004cc0:	100024f3          	csrr	s1,sstatus
    80004cc4:	100027f3          	csrr	a5,sstatus
    80004cc8:	0027e793          	ori	a5,a5,2
    80004ccc:	10079073          	csrw	sstatus,a5
    80004cd0:	ffffe097          	auipc	ra,0xffffe
    80004cd4:	618080e7          	jalr	1560(ra) # 800032e8 <mycpu>
    80004cd8:	07852783          	lw	a5,120(a0)
    80004cdc:	02078663          	beqz	a5,80004d08 <push_on+0x5c>
    80004ce0:	ffffe097          	auipc	ra,0xffffe
    80004ce4:	608080e7          	jalr	1544(ra) # 800032e8 <mycpu>
    80004ce8:	07852783          	lw	a5,120(a0)
    80004cec:	01813083          	ld	ra,24(sp)
    80004cf0:	01013403          	ld	s0,16(sp)
    80004cf4:	0017879b          	addiw	a5,a5,1
    80004cf8:	06f52c23          	sw	a5,120(a0)
    80004cfc:	00813483          	ld	s1,8(sp)
    80004d00:	02010113          	addi	sp,sp,32
    80004d04:	00008067          	ret
    80004d08:	0014d493          	srli	s1,s1,0x1
    80004d0c:	ffffe097          	auipc	ra,0xffffe
    80004d10:	5dc080e7          	jalr	1500(ra) # 800032e8 <mycpu>
    80004d14:	0014f493          	andi	s1,s1,1
    80004d18:	06952e23          	sw	s1,124(a0)
    80004d1c:	fc5ff06f          	j	80004ce0 <push_on+0x34>

0000000080004d20 <pop_on>:
    80004d20:	ff010113          	addi	sp,sp,-16
    80004d24:	00813023          	sd	s0,0(sp)
    80004d28:	00113423          	sd	ra,8(sp)
    80004d2c:	01010413          	addi	s0,sp,16
    80004d30:	ffffe097          	auipc	ra,0xffffe
    80004d34:	5b8080e7          	jalr	1464(ra) # 800032e8 <mycpu>
    80004d38:	100027f3          	csrr	a5,sstatus
    80004d3c:	0027f793          	andi	a5,a5,2
    80004d40:	04078463          	beqz	a5,80004d88 <pop_on+0x68>
    80004d44:	07852783          	lw	a5,120(a0)
    80004d48:	02f05863          	blez	a5,80004d78 <pop_on+0x58>
    80004d4c:	fff7879b          	addiw	a5,a5,-1
    80004d50:	06f52c23          	sw	a5,120(a0)
    80004d54:	07853783          	ld	a5,120(a0)
    80004d58:	00079863          	bnez	a5,80004d68 <pop_on+0x48>
    80004d5c:	100027f3          	csrr	a5,sstatus
    80004d60:	ffd7f793          	andi	a5,a5,-3
    80004d64:	10079073          	csrw	sstatus,a5
    80004d68:	00813083          	ld	ra,8(sp)
    80004d6c:	00013403          	ld	s0,0(sp)
    80004d70:	01010113          	addi	sp,sp,16
    80004d74:	00008067          	ret
    80004d78:	00002517          	auipc	a0,0x2
    80004d7c:	89850513          	addi	a0,a0,-1896 # 80006610 <digits+0x70>
    80004d80:	fffff097          	auipc	ra,0xfffff
    80004d84:	f2c080e7          	jalr	-212(ra) # 80003cac <panic>
    80004d88:	00002517          	auipc	a0,0x2
    80004d8c:	86850513          	addi	a0,a0,-1944 # 800065f0 <digits+0x50>
    80004d90:	fffff097          	auipc	ra,0xfffff
    80004d94:	f1c080e7          	jalr	-228(ra) # 80003cac <panic>

0000000080004d98 <__memset>:
    80004d98:	ff010113          	addi	sp,sp,-16
    80004d9c:	00813423          	sd	s0,8(sp)
    80004da0:	01010413          	addi	s0,sp,16
    80004da4:	1a060e63          	beqz	a2,80004f60 <__memset+0x1c8>
    80004da8:	40a007b3          	neg	a5,a0
    80004dac:	0077f793          	andi	a5,a5,7
    80004db0:	00778693          	addi	a3,a5,7
    80004db4:	00b00813          	li	a6,11
    80004db8:	0ff5f593          	andi	a1,a1,255
    80004dbc:	fff6071b          	addiw	a4,a2,-1
    80004dc0:	1b06e663          	bltu	a3,a6,80004f6c <__memset+0x1d4>
    80004dc4:	1cd76463          	bltu	a4,a3,80004f8c <__memset+0x1f4>
    80004dc8:	1a078e63          	beqz	a5,80004f84 <__memset+0x1ec>
    80004dcc:	00b50023          	sb	a1,0(a0)
    80004dd0:	00100713          	li	a4,1
    80004dd4:	1ae78463          	beq	a5,a4,80004f7c <__memset+0x1e4>
    80004dd8:	00b500a3          	sb	a1,1(a0)
    80004ddc:	00200713          	li	a4,2
    80004de0:	1ae78a63          	beq	a5,a4,80004f94 <__memset+0x1fc>
    80004de4:	00b50123          	sb	a1,2(a0)
    80004de8:	00300713          	li	a4,3
    80004dec:	18e78463          	beq	a5,a4,80004f74 <__memset+0x1dc>
    80004df0:	00b501a3          	sb	a1,3(a0)
    80004df4:	00400713          	li	a4,4
    80004df8:	1ae78263          	beq	a5,a4,80004f9c <__memset+0x204>
    80004dfc:	00b50223          	sb	a1,4(a0)
    80004e00:	00500713          	li	a4,5
    80004e04:	1ae78063          	beq	a5,a4,80004fa4 <__memset+0x20c>
    80004e08:	00b502a3          	sb	a1,5(a0)
    80004e0c:	00700713          	li	a4,7
    80004e10:	18e79e63          	bne	a5,a4,80004fac <__memset+0x214>
    80004e14:	00b50323          	sb	a1,6(a0)
    80004e18:	00700e93          	li	t4,7
    80004e1c:	00859713          	slli	a4,a1,0x8
    80004e20:	00e5e733          	or	a4,a1,a4
    80004e24:	01059e13          	slli	t3,a1,0x10
    80004e28:	01c76e33          	or	t3,a4,t3
    80004e2c:	01859313          	slli	t1,a1,0x18
    80004e30:	006e6333          	or	t1,t3,t1
    80004e34:	02059893          	slli	a7,a1,0x20
    80004e38:	40f60e3b          	subw	t3,a2,a5
    80004e3c:	011368b3          	or	a7,t1,a7
    80004e40:	02859813          	slli	a6,a1,0x28
    80004e44:	0108e833          	or	a6,a7,a6
    80004e48:	03059693          	slli	a3,a1,0x30
    80004e4c:	003e589b          	srliw	a7,t3,0x3
    80004e50:	00d866b3          	or	a3,a6,a3
    80004e54:	03859713          	slli	a4,a1,0x38
    80004e58:	00389813          	slli	a6,a7,0x3
    80004e5c:	00f507b3          	add	a5,a0,a5
    80004e60:	00e6e733          	or	a4,a3,a4
    80004e64:	000e089b          	sext.w	a7,t3
    80004e68:	00f806b3          	add	a3,a6,a5
    80004e6c:	00e7b023          	sd	a4,0(a5)
    80004e70:	00878793          	addi	a5,a5,8
    80004e74:	fed79ce3          	bne	a5,a3,80004e6c <__memset+0xd4>
    80004e78:	ff8e7793          	andi	a5,t3,-8
    80004e7c:	0007871b          	sext.w	a4,a5
    80004e80:	01d787bb          	addw	a5,a5,t4
    80004e84:	0ce88e63          	beq	a7,a4,80004f60 <__memset+0x1c8>
    80004e88:	00f50733          	add	a4,a0,a5
    80004e8c:	00b70023          	sb	a1,0(a4)
    80004e90:	0017871b          	addiw	a4,a5,1
    80004e94:	0cc77663          	bgeu	a4,a2,80004f60 <__memset+0x1c8>
    80004e98:	00e50733          	add	a4,a0,a4
    80004e9c:	00b70023          	sb	a1,0(a4)
    80004ea0:	0027871b          	addiw	a4,a5,2
    80004ea4:	0ac77e63          	bgeu	a4,a2,80004f60 <__memset+0x1c8>
    80004ea8:	00e50733          	add	a4,a0,a4
    80004eac:	00b70023          	sb	a1,0(a4)
    80004eb0:	0037871b          	addiw	a4,a5,3
    80004eb4:	0ac77663          	bgeu	a4,a2,80004f60 <__memset+0x1c8>
    80004eb8:	00e50733          	add	a4,a0,a4
    80004ebc:	00b70023          	sb	a1,0(a4)
    80004ec0:	0047871b          	addiw	a4,a5,4
    80004ec4:	08c77e63          	bgeu	a4,a2,80004f60 <__memset+0x1c8>
    80004ec8:	00e50733          	add	a4,a0,a4
    80004ecc:	00b70023          	sb	a1,0(a4)
    80004ed0:	0057871b          	addiw	a4,a5,5
    80004ed4:	08c77663          	bgeu	a4,a2,80004f60 <__memset+0x1c8>
    80004ed8:	00e50733          	add	a4,a0,a4
    80004edc:	00b70023          	sb	a1,0(a4)
    80004ee0:	0067871b          	addiw	a4,a5,6
    80004ee4:	06c77e63          	bgeu	a4,a2,80004f60 <__memset+0x1c8>
    80004ee8:	00e50733          	add	a4,a0,a4
    80004eec:	00b70023          	sb	a1,0(a4)
    80004ef0:	0077871b          	addiw	a4,a5,7
    80004ef4:	06c77663          	bgeu	a4,a2,80004f60 <__memset+0x1c8>
    80004ef8:	00e50733          	add	a4,a0,a4
    80004efc:	00b70023          	sb	a1,0(a4)
    80004f00:	0087871b          	addiw	a4,a5,8
    80004f04:	04c77e63          	bgeu	a4,a2,80004f60 <__memset+0x1c8>
    80004f08:	00e50733          	add	a4,a0,a4
    80004f0c:	00b70023          	sb	a1,0(a4)
    80004f10:	0097871b          	addiw	a4,a5,9
    80004f14:	04c77663          	bgeu	a4,a2,80004f60 <__memset+0x1c8>
    80004f18:	00e50733          	add	a4,a0,a4
    80004f1c:	00b70023          	sb	a1,0(a4)
    80004f20:	00a7871b          	addiw	a4,a5,10
    80004f24:	02c77e63          	bgeu	a4,a2,80004f60 <__memset+0x1c8>
    80004f28:	00e50733          	add	a4,a0,a4
    80004f2c:	00b70023          	sb	a1,0(a4)
    80004f30:	00b7871b          	addiw	a4,a5,11
    80004f34:	02c77663          	bgeu	a4,a2,80004f60 <__memset+0x1c8>
    80004f38:	00e50733          	add	a4,a0,a4
    80004f3c:	00b70023          	sb	a1,0(a4)
    80004f40:	00c7871b          	addiw	a4,a5,12
    80004f44:	00c77e63          	bgeu	a4,a2,80004f60 <__memset+0x1c8>
    80004f48:	00e50733          	add	a4,a0,a4
    80004f4c:	00b70023          	sb	a1,0(a4)
    80004f50:	00d7879b          	addiw	a5,a5,13
    80004f54:	00c7f663          	bgeu	a5,a2,80004f60 <__memset+0x1c8>
    80004f58:	00f507b3          	add	a5,a0,a5
    80004f5c:	00b78023          	sb	a1,0(a5)
    80004f60:	00813403          	ld	s0,8(sp)
    80004f64:	01010113          	addi	sp,sp,16
    80004f68:	00008067          	ret
    80004f6c:	00b00693          	li	a3,11
    80004f70:	e55ff06f          	j	80004dc4 <__memset+0x2c>
    80004f74:	00300e93          	li	t4,3
    80004f78:	ea5ff06f          	j	80004e1c <__memset+0x84>
    80004f7c:	00100e93          	li	t4,1
    80004f80:	e9dff06f          	j	80004e1c <__memset+0x84>
    80004f84:	00000e93          	li	t4,0
    80004f88:	e95ff06f          	j	80004e1c <__memset+0x84>
    80004f8c:	00000793          	li	a5,0
    80004f90:	ef9ff06f          	j	80004e88 <__memset+0xf0>
    80004f94:	00200e93          	li	t4,2
    80004f98:	e85ff06f          	j	80004e1c <__memset+0x84>
    80004f9c:	00400e93          	li	t4,4
    80004fa0:	e7dff06f          	j	80004e1c <__memset+0x84>
    80004fa4:	00500e93          	li	t4,5
    80004fa8:	e75ff06f          	j	80004e1c <__memset+0x84>
    80004fac:	00600e93          	li	t4,6
    80004fb0:	e6dff06f          	j	80004e1c <__memset+0x84>

0000000080004fb4 <__memmove>:
    80004fb4:	ff010113          	addi	sp,sp,-16
    80004fb8:	00813423          	sd	s0,8(sp)
    80004fbc:	01010413          	addi	s0,sp,16
    80004fc0:	0e060863          	beqz	a2,800050b0 <__memmove+0xfc>
    80004fc4:	fff6069b          	addiw	a3,a2,-1
    80004fc8:	0006881b          	sext.w	a6,a3
    80004fcc:	0ea5e863          	bltu	a1,a0,800050bc <__memmove+0x108>
    80004fd0:	00758713          	addi	a4,a1,7
    80004fd4:	00a5e7b3          	or	a5,a1,a0
    80004fd8:	40a70733          	sub	a4,a4,a0
    80004fdc:	0077f793          	andi	a5,a5,7
    80004fe0:	00f73713          	sltiu	a4,a4,15
    80004fe4:	00174713          	xori	a4,a4,1
    80004fe8:	0017b793          	seqz	a5,a5
    80004fec:	00e7f7b3          	and	a5,a5,a4
    80004ff0:	10078863          	beqz	a5,80005100 <__memmove+0x14c>
    80004ff4:	00900793          	li	a5,9
    80004ff8:	1107f463          	bgeu	a5,a6,80005100 <__memmove+0x14c>
    80004ffc:	0036581b          	srliw	a6,a2,0x3
    80005000:	fff8081b          	addiw	a6,a6,-1
    80005004:	02081813          	slli	a6,a6,0x20
    80005008:	01d85893          	srli	a7,a6,0x1d
    8000500c:	00858813          	addi	a6,a1,8
    80005010:	00058793          	mv	a5,a1
    80005014:	00050713          	mv	a4,a0
    80005018:	01088833          	add	a6,a7,a6
    8000501c:	0007b883          	ld	a7,0(a5)
    80005020:	00878793          	addi	a5,a5,8
    80005024:	00870713          	addi	a4,a4,8
    80005028:	ff173c23          	sd	a7,-8(a4)
    8000502c:	ff0798e3          	bne	a5,a6,8000501c <__memmove+0x68>
    80005030:	ff867713          	andi	a4,a2,-8
    80005034:	02071793          	slli	a5,a4,0x20
    80005038:	0207d793          	srli	a5,a5,0x20
    8000503c:	00f585b3          	add	a1,a1,a5
    80005040:	40e686bb          	subw	a3,a3,a4
    80005044:	00f507b3          	add	a5,a0,a5
    80005048:	06e60463          	beq	a2,a4,800050b0 <__memmove+0xfc>
    8000504c:	0005c703          	lbu	a4,0(a1)
    80005050:	00e78023          	sb	a4,0(a5)
    80005054:	04068e63          	beqz	a3,800050b0 <__memmove+0xfc>
    80005058:	0015c603          	lbu	a2,1(a1)
    8000505c:	00100713          	li	a4,1
    80005060:	00c780a3          	sb	a2,1(a5)
    80005064:	04e68663          	beq	a3,a4,800050b0 <__memmove+0xfc>
    80005068:	0025c603          	lbu	a2,2(a1)
    8000506c:	00200713          	li	a4,2
    80005070:	00c78123          	sb	a2,2(a5)
    80005074:	02e68e63          	beq	a3,a4,800050b0 <__memmove+0xfc>
    80005078:	0035c603          	lbu	a2,3(a1)
    8000507c:	00300713          	li	a4,3
    80005080:	00c781a3          	sb	a2,3(a5)
    80005084:	02e68663          	beq	a3,a4,800050b0 <__memmove+0xfc>
    80005088:	0045c603          	lbu	a2,4(a1)
    8000508c:	00400713          	li	a4,4
    80005090:	00c78223          	sb	a2,4(a5)
    80005094:	00e68e63          	beq	a3,a4,800050b0 <__memmove+0xfc>
    80005098:	0055c603          	lbu	a2,5(a1)
    8000509c:	00500713          	li	a4,5
    800050a0:	00c782a3          	sb	a2,5(a5)
    800050a4:	00e68663          	beq	a3,a4,800050b0 <__memmove+0xfc>
    800050a8:	0065c703          	lbu	a4,6(a1)
    800050ac:	00e78323          	sb	a4,6(a5)
    800050b0:	00813403          	ld	s0,8(sp)
    800050b4:	01010113          	addi	sp,sp,16
    800050b8:	00008067          	ret
    800050bc:	02061713          	slli	a4,a2,0x20
    800050c0:	02075713          	srli	a4,a4,0x20
    800050c4:	00e587b3          	add	a5,a1,a4
    800050c8:	f0f574e3          	bgeu	a0,a5,80004fd0 <__memmove+0x1c>
    800050cc:	02069613          	slli	a2,a3,0x20
    800050d0:	02065613          	srli	a2,a2,0x20
    800050d4:	fff64613          	not	a2,a2
    800050d8:	00e50733          	add	a4,a0,a4
    800050dc:	00c78633          	add	a2,a5,a2
    800050e0:	fff7c683          	lbu	a3,-1(a5)
    800050e4:	fff78793          	addi	a5,a5,-1
    800050e8:	fff70713          	addi	a4,a4,-1
    800050ec:	00d70023          	sb	a3,0(a4)
    800050f0:	fec798e3          	bne	a5,a2,800050e0 <__memmove+0x12c>
    800050f4:	00813403          	ld	s0,8(sp)
    800050f8:	01010113          	addi	sp,sp,16
    800050fc:	00008067          	ret
    80005100:	02069713          	slli	a4,a3,0x20
    80005104:	02075713          	srli	a4,a4,0x20
    80005108:	00170713          	addi	a4,a4,1
    8000510c:	00e50733          	add	a4,a0,a4
    80005110:	00050793          	mv	a5,a0
    80005114:	0005c683          	lbu	a3,0(a1)
    80005118:	00178793          	addi	a5,a5,1
    8000511c:	00158593          	addi	a1,a1,1
    80005120:	fed78fa3          	sb	a3,-1(a5)
    80005124:	fee798e3          	bne	a5,a4,80005114 <__memmove+0x160>
    80005128:	f89ff06f          	j	800050b0 <__memmove+0xfc>

000000008000512c <__putc>:
    8000512c:	fe010113          	addi	sp,sp,-32
    80005130:	00813823          	sd	s0,16(sp)
    80005134:	00113c23          	sd	ra,24(sp)
    80005138:	02010413          	addi	s0,sp,32
    8000513c:	00050793          	mv	a5,a0
    80005140:	fef40593          	addi	a1,s0,-17
    80005144:	00100613          	li	a2,1
    80005148:	00000513          	li	a0,0
    8000514c:	fef407a3          	sb	a5,-17(s0)
    80005150:	fffff097          	auipc	ra,0xfffff
    80005154:	b3c080e7          	jalr	-1220(ra) # 80003c8c <console_write>
    80005158:	01813083          	ld	ra,24(sp)
    8000515c:	01013403          	ld	s0,16(sp)
    80005160:	02010113          	addi	sp,sp,32
    80005164:	00008067          	ret

0000000080005168 <__getc>:
    80005168:	fe010113          	addi	sp,sp,-32
    8000516c:	00813823          	sd	s0,16(sp)
    80005170:	00113c23          	sd	ra,24(sp)
    80005174:	02010413          	addi	s0,sp,32
    80005178:	fe840593          	addi	a1,s0,-24
    8000517c:	00100613          	li	a2,1
    80005180:	00000513          	li	a0,0
    80005184:	fffff097          	auipc	ra,0xfffff
    80005188:	ae8080e7          	jalr	-1304(ra) # 80003c6c <console_read>
    8000518c:	fe844503          	lbu	a0,-24(s0)
    80005190:	01813083          	ld	ra,24(sp)
    80005194:	01013403          	ld	s0,16(sp)
    80005198:	02010113          	addi	sp,sp,32
    8000519c:	00008067          	ret

00000000800051a0 <console_handler>:
    800051a0:	fe010113          	addi	sp,sp,-32
    800051a4:	00813823          	sd	s0,16(sp)
    800051a8:	00113c23          	sd	ra,24(sp)
    800051ac:	00913423          	sd	s1,8(sp)
    800051b0:	02010413          	addi	s0,sp,32
    800051b4:	14202773          	csrr	a4,scause
    800051b8:	100027f3          	csrr	a5,sstatus
    800051bc:	0027f793          	andi	a5,a5,2
    800051c0:	06079e63          	bnez	a5,8000523c <console_handler+0x9c>
    800051c4:	00074c63          	bltz	a4,800051dc <console_handler+0x3c>
    800051c8:	01813083          	ld	ra,24(sp)
    800051cc:	01013403          	ld	s0,16(sp)
    800051d0:	00813483          	ld	s1,8(sp)
    800051d4:	02010113          	addi	sp,sp,32
    800051d8:	00008067          	ret
    800051dc:	0ff77713          	andi	a4,a4,255
    800051e0:	00900793          	li	a5,9
    800051e4:	fef712e3          	bne	a4,a5,800051c8 <console_handler+0x28>
    800051e8:	ffffe097          	auipc	ra,0xffffe
    800051ec:	6dc080e7          	jalr	1756(ra) # 800038c4 <plic_claim>
    800051f0:	00a00793          	li	a5,10
    800051f4:	00050493          	mv	s1,a0
    800051f8:	02f50c63          	beq	a0,a5,80005230 <console_handler+0x90>
    800051fc:	fc0506e3          	beqz	a0,800051c8 <console_handler+0x28>
    80005200:	00050593          	mv	a1,a0
    80005204:	00001517          	auipc	a0,0x1
    80005208:	31450513          	addi	a0,a0,788 # 80006518 <_ZZ12printIntegermE6digits+0x450>
    8000520c:	fffff097          	auipc	ra,0xfffff
    80005210:	afc080e7          	jalr	-1284(ra) # 80003d08 <__printf>
    80005214:	01013403          	ld	s0,16(sp)
    80005218:	01813083          	ld	ra,24(sp)
    8000521c:	00048513          	mv	a0,s1
    80005220:	00813483          	ld	s1,8(sp)
    80005224:	02010113          	addi	sp,sp,32
    80005228:	ffffe317          	auipc	t1,0xffffe
    8000522c:	6d430067          	jr	1748(t1) # 800038fc <plic_complete>
    80005230:	fffff097          	auipc	ra,0xfffff
    80005234:	3e0080e7          	jalr	992(ra) # 80004610 <uartintr>
    80005238:	fddff06f          	j	80005214 <console_handler+0x74>
    8000523c:	00001517          	auipc	a0,0x1
    80005240:	3dc50513          	addi	a0,a0,988 # 80006618 <digits+0x78>
    80005244:	fffff097          	auipc	ra,0xfffff
    80005248:	a68080e7          	jalr	-1432(ra) # 80003cac <panic>
	...
