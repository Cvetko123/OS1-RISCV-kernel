
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00004117          	auipc	sp,0x4
    80000004:	5d013103          	ld	sp,1488(sp) # 800045d0 <_GLOBAL_OFFSET_TABLE_+0x10>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	231010ef          	jal	ra,80001a4c <start>

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
    80001084:	4e8000ef          	jal	ra,8000156c <SupervisorTrapHandlerWrapper>
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

0000000080001120 <_Z9mem_allocm>:
//
// Created by os on 9/8/25.
//
#include "../h/syscall_c.hpp"

void* mem_alloc(size_t size) {
    80001120:	ff010113          	addi	sp,sp,-16
    80001124:	00813423          	sd	s0,8(sp)
    80001128:	01010413          	addi	s0,sp,16
    size_t offset = size % MEM_BLOCK_SIZE;
    8000112c:	03f57793          	andi	a5,a0,63
    if (offset!=0)
    80001130:	00078463          	beqz	a5,80001138 <_Z9mem_allocm+0x18>
        offset=1;
    80001134:	00100793          	li	a5,1
    size_t blocks=size/MEM_BLOCK_SIZE +offset;
    80001138:	00655513          	srli	a0,a0,0x6
    8000113c:	00f50533          	add	a0,a0,a5
    uint64 opcode=MEM_ALLOC;
    __asm__ volatile ("mv a1, %[x]" :: [x] "r" (blocks));
    80001140:	00050593          	mv	a1,a0
    __asm__ volatile ("mv a0, %[x]" :: [x] "r" (opcode));
    80001144:	00100793          	li	a5,1
    80001148:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    8000114c:	00000073          	ecall

    uint64 ret;
    __asm__ volatile ("mv %[x], a0" : [x] "=r" (ret));
    80001150:	00050513          	mv	a0,a0
    return (void*)ret;
}
    80001154:	00813403          	ld	s0,8(sp)
    80001158:	01010113          	addi	sp,sp,16
    8000115c:	00008067          	ret

0000000080001160 <_Z8mem_freePv>:

int mem_free(void* ptr) {
    80001160:	ff010113          	addi	sp,sp,-16
    80001164:	00813423          	sd	s0,8(sp)
    80001168:	01010413          	addi	s0,sp,16
    if (ptr==nullptr) {
    8000116c:	02050463          	beqz	a0,80001194 <_Z8mem_freePv+0x34>
        return 0;
    }
    uint64 opcode=MEM_FREE;
    __asm__ volatile ("mv a1, %[x]" :: [x] "r" (ptr));
    80001170:	00050593          	mv	a1,a0
    __asm__ volatile ("mv a0, %[x]" :: [x] "r" (opcode));
    80001174:	00200793          	li	a5,2
    80001178:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    8000117c:	00000073          	ecall
    uint64 ret;
    __asm__ volatile ("mv %[x], a0" : [x] "=r" (ret));
    80001180:	00050513          	mv	a0,a0
    return (int)ret;
    80001184:	0005051b          	sext.w	a0,a0
}
    80001188:	00813403          	ld	s0,8(sp)
    8000118c:	01010113          	addi	sp,sp,16
    80001190:	00008067          	ret
        return 0;
    80001194:	00000513          	li	a0,0
    80001198:	ff1ff06f          	j	80001188 <_Z8mem_freePv+0x28>

000000008000119c <_Z18mem_get_free_spacev>:

size_t mem_get_free_space() {
    8000119c:	ff010113          	addi	sp,sp,-16
    800011a0:	00813423          	sd	s0,8(sp)
    800011a4:	01010413          	addi	s0,sp,16
    uint64 opcode=MEM_GET_FREE_SPACE;
    __asm__ volatile ("mv a0, %[x]" :: [x] "r" (opcode));
    800011a8:	00300793          	li	a5,3
    800011ac:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    800011b0:	00000073          	ecall
    uint64 ret;
    __asm__ volatile ("mv %[x], a0" : [x] "=r" (ret));
    800011b4:	00050513          	mv	a0,a0
    return (size_t)ret;
}
    800011b8:	00813403          	ld	s0,8(sp)
    800011bc:	01010113          	addi	sp,sp,16
    800011c0:	00008067          	ret

00000000800011c4 <_Z26mem_get_largest_free_blockv>:

size_t mem_get_largest_free_block() {
    800011c4:	ff010113          	addi	sp,sp,-16
    800011c8:	00813423          	sd	s0,8(sp)
    800011cc:	01010413          	addi	s0,sp,16
    uint64 opcode=MEM_GET_LARGEST_FREE_BLOCK;
    __asm__ volatile ("mv a0, %[x]" :: [x] "r" (opcode));
    800011d0:	00400793          	li	a5,4
    800011d4:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    800011d8:	00000073          	ecall
    uint64 ret;
    __asm__ volatile ("mv %[x], a0" : [x] "=r" (ret));
    800011dc:	00050513          	mv	a0,a0
    return (size_t)ret;
    800011e0:	00813403          	ld	s0,8(sp)
    800011e4:	01010113          	addi	sp,sp,16
    800011e8:	00008067          	ret

00000000800011ec <_Z13AllocatorTestv>:
// }


//extern "C" void SupervisorTrap();

void AllocatorTest() {
    800011ec:	fd010113          	addi	sp,sp,-48
    800011f0:	02113423          	sd	ra,40(sp)
    800011f4:	02813023          	sd	s0,32(sp)
    800011f8:	00913c23          	sd	s1,24(sp)
    800011fc:	01213823          	sd	s2,16(sp)
    80001200:	01313423          	sd	s3,8(sp)
    80001204:	03010413          	addi	s0,sp,48
    uint64* a1=new uint64;
    80001208:	00800513          	li	a0,8
    8000120c:	00000097          	auipc	ra,0x0
    80001210:	218080e7          	jalr	536(ra) # 80001424 <_Znwm>
    80001214:	00050993          	mv	s3,a0
    *a1=4;
    80001218:	00400793          	li	a5,4
    8000121c:	00f53023          	sd	a5,0(a0) # 1000 <_entry-0x7ffff000>
    __putc(*a1+'0');
    80001220:	03400513          	li	a0,52
    80001224:	00003097          	auipc	ra,0x3
    80001228:	8e8080e7          	jalr	-1816(ra) # 80003b0c <__putc>
    __putc('\n');
    8000122c:	00a00513          	li	a0,10
    80001230:	00003097          	auipc	ra,0x3
    80001234:	8dc080e7          	jalr	-1828(ra) # 80003b0c <__putc>
    uint64* a2=new uint64;
    80001238:	00800513          	li	a0,8
    8000123c:	00000097          	auipc	ra,0x0
    80001240:	1e8080e7          	jalr	488(ra) # 80001424 <_Znwm>
    *a2=5;
    80001244:	00500793          	li	a5,5
    80001248:	00f53023          	sd	a5,0(a0)
    __putc(*a2+'0');
    8000124c:	03500513          	li	a0,53
    80001250:	00003097          	auipc	ra,0x3
    80001254:	8bc080e7          	jalr	-1860(ra) # 80003b0c <__putc>
    __putc('\n');
    80001258:	00a00513          	li	a0,10
    8000125c:	00003097          	auipc	ra,0x3
    80001260:	8b0080e7          	jalr	-1872(ra) # 80003b0c <__putc>
    uint64* a3=new uint64;
    80001264:	00800513          	li	a0,8
    80001268:	00000097          	auipc	ra,0x0
    8000126c:	1bc080e7          	jalr	444(ra) # 80001424 <_Znwm>
    80001270:	00050913          	mv	s2,a0
    *a3=6;
    80001274:	00600793          	li	a5,6
    80001278:	00f53023          	sd	a5,0(a0)
    __putc(*a3+'0');
    8000127c:	03600513          	li	a0,54
    80001280:	00003097          	auipc	ra,0x3
    80001284:	88c080e7          	jalr	-1908(ra) # 80003b0c <__putc>
    __putc('\n');
    80001288:	00a00513          	li	a0,10
    8000128c:	00003097          	auipc	ra,0x3
    80001290:	880080e7          	jalr	-1920(ra) # 80003b0c <__putc>
    uint64* a4=new uint64;
    80001294:	00800513          	li	a0,8
    80001298:	00000097          	auipc	ra,0x0
    8000129c:	18c080e7          	jalr	396(ra) # 80001424 <_Znwm>
    800012a0:	00050493          	mv	s1,a0
    *a4=7;
    800012a4:	00700793          	li	a5,7
    800012a8:	00f53023          	sd	a5,0(a0)
    __putc(*a4+'0');
    800012ac:	03700513          	li	a0,55
    800012b0:	00003097          	auipc	ra,0x3
    800012b4:	85c080e7          	jalr	-1956(ra) # 80003b0c <__putc>
    __putc('\n');
    800012b8:	00a00513          	li	a0,10
    800012bc:	00003097          	auipc	ra,0x3
    800012c0:	850080e7          	jalr	-1968(ra) # 80003b0c <__putc>
    uint64* a5=new uint64;
    800012c4:	00800513          	li	a0,8
    800012c8:	00000097          	auipc	ra,0x0
    800012cc:	15c080e7          	jalr	348(ra) # 80001424 <_Znwm>
    *a5=8;
    800012d0:	00800793          	li	a5,8
    800012d4:	00f53023          	sd	a5,0(a0)
    __putc(*a5+'0');
    800012d8:	03800513          	li	a0,56
    800012dc:	00003097          	auipc	ra,0x3
    800012e0:	830080e7          	jalr	-2000(ra) # 80003b0c <__putc>
    __putc('\n');
    800012e4:	00a00513          	li	a0,10
    800012e8:	00003097          	auipc	ra,0x3
    800012ec:	824080e7          	jalr	-2012(ra) # 80003b0c <__putc>
    delete a1;
    800012f0:	00098863          	beqz	s3,80001300 <_Z13AllocatorTestv+0x114>
    800012f4:	00098513          	mv	a0,s3
    800012f8:	00000097          	auipc	ra,0x0
    800012fc:	154080e7          	jalr	340(ra) # 8000144c <_ZdlPv>
    delete a3;
    80001300:	00090863          	beqz	s2,80001310 <_Z13AllocatorTestv+0x124>
    80001304:	00090513          	mv	a0,s2
    80001308:	00000097          	auipc	ra,0x0
    8000130c:	144080e7          	jalr	324(ra) # 8000144c <_ZdlPv>
    delete a4;
    80001310:	00048863          	beqz	s1,80001320 <_Z13AllocatorTestv+0x134>
    80001314:	00048513          	mv	a0,s1
    80001318:	00000097          	auipc	ra,0x0
    8000131c:	134080e7          	jalr	308(ra) # 8000144c <_ZdlPv>
    uint64* a6=new uint64;
    80001320:	00800513          	li	a0,8
    80001324:	00000097          	auipc	ra,0x0
    80001328:	100080e7          	jalr	256(ra) # 80001424 <_Znwm>
    *a6=9;
    8000132c:	00900793          	li	a5,9
    80001330:	00f53023          	sd	a5,0(a0)
    __putc(*a6+'0');
    80001334:	03900513          	li	a0,57
    80001338:	00002097          	auipc	ra,0x2
    8000133c:	7d4080e7          	jalr	2004(ra) # 80003b0c <__putc>
    __putc('\n');
    80001340:	00a00513          	li	a0,10
    80001344:	00002097          	auipc	ra,0x2
    80001348:	7c8080e7          	jalr	1992(ra) # 80003b0c <__putc>



}
    8000134c:	02813083          	ld	ra,40(sp)
    80001350:	02013403          	ld	s0,32(sp)
    80001354:	01813483          	ld	s1,24(sp)
    80001358:	01013903          	ld	s2,16(sp)
    8000135c:	00813983          	ld	s3,8(sp)
    80001360:	03010113          	addi	sp,sp,48
    80001364:	00008067          	ret

0000000080001368 <main>:

extern "C" void SupervisorTrap();

void main() {
    80001368:	fe010113          	addi	sp,sp,-32
    8000136c:	00113c23          	sd	ra,24(sp)
    80001370:	00813823          	sd	s0,16(sp)
    80001374:	00913423          	sd	s1,8(sp)
    80001378:	02010413          	addi	s0,sp,32
    Riscv::set_stvec((uint64)SupervisorTrap);
    8000137c:	00003797          	auipc	a5,0x3
    80001380:	25c7b783          	ld	a5,604(a5) # 800045d8 <_GLOBAL_OFFSET_TABLE_+0x18>
    static void SupervisorTrapHandler();
};


inline void Riscv::set_stvec(uint64 stvec) {
    __asm__ volatile ("csrw stvec, %[x]" :: [x] "r" (stvec));
    80001384:	10579073          	csrw	stvec,a5
    AllocatorTest();
    80001388:	00000097          	auipc	ra,0x0
    8000138c:	e64080e7          	jalr	-412(ra) # 800011ec <_Z13AllocatorTestv>

    printString("OK\n");
    80001390:	00003517          	auipc	a0,0x3
    80001394:	c9050513          	addi	a0,a0,-880 # 80004020 <CONSOLE_STATUS+0x10>
    80001398:	00000097          	auipc	ra,0x0
    8000139c:	5e0080e7          	jalr	1504(ra) # 80001978 <_Z11printStringPKc>

    size_t pom1= mem_get_free_space();
    800013a0:	00000097          	auipc	ra,0x0
    800013a4:	dfc080e7          	jalr	-516(ra) # 8000119c <_Z18mem_get_free_spacev>
    800013a8:	00050493          	mv	s1,a0
    printString("Free mem: ");
    800013ac:	00003517          	auipc	a0,0x3
    800013b0:	c7c50513          	addi	a0,a0,-900 # 80004028 <CONSOLE_STATUS+0x18>
    800013b4:	00000097          	auipc	ra,0x0
    800013b8:	5c4080e7          	jalr	1476(ra) # 80001978 <_Z11printStringPKc>
    printInteger(pom1);
    800013bc:	00048513          	mv	a0,s1
    800013c0:	00000097          	auipc	ra,0x0
    800013c4:	5fc080e7          	jalr	1532(ra) # 800019bc <_Z12printIntegerm>
    printString("\n");
    800013c8:	00003517          	auipc	a0,0x3
    800013cc:	da850513          	addi	a0,a0,-600 # 80004170 <_ZZ12printIntegermE6digits+0x120>
    800013d0:	00000097          	auipc	ra,0x0
    800013d4:	5a8080e7          	jalr	1448(ra) # 80001978 <_Z11printStringPKc>
    size_t pom2= mem_get_largest_free_block();
    800013d8:	00000097          	auipc	ra,0x0
    800013dc:	dec080e7          	jalr	-532(ra) # 800011c4 <_Z26mem_get_largest_free_blockv>
    800013e0:	00050493          	mv	s1,a0
    printString("Largest free block: ");
    800013e4:	00003517          	auipc	a0,0x3
    800013e8:	c5450513          	addi	a0,a0,-940 # 80004038 <CONSOLE_STATUS+0x28>
    800013ec:	00000097          	auipc	ra,0x0
    800013f0:	58c080e7          	jalr	1420(ra) # 80001978 <_Z11printStringPKc>
    printInteger(pom2);
    800013f4:	00048513          	mv	a0,s1
    800013f8:	00000097          	auipc	ra,0x0
    800013fc:	5c4080e7          	jalr	1476(ra) # 800019bc <_Z12printIntegerm>
    printString("\n");
    80001400:	00003517          	auipc	a0,0x3
    80001404:	d7050513          	addi	a0,a0,-656 # 80004170 <_ZZ12printIntegermE6digits+0x120>
    80001408:	00000097          	auipc	ra,0x0
    8000140c:	570080e7          	jalr	1392(ra) # 80001978 <_Z11printStringPKc>
}
    80001410:	01813083          	ld	ra,24(sp)
    80001414:	01013403          	ld	s0,16(sp)
    80001418:	00813483          	ld	s1,8(sp)
    8000141c:	02010113          	addi	sp,sp,32
    80001420:	00008067          	ret

0000000080001424 <_Znwm>:
//
#include "../h/syscall_cpp.hpp"
#include "../h/syscall_c.hpp"

void* operator new(size_t size)
{
    80001424:	ff010113          	addi	sp,sp,-16
    80001428:	00113423          	sd	ra,8(sp)
    8000142c:	00813023          	sd	s0,0(sp)
    80001430:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80001434:	00000097          	auipc	ra,0x0
    80001438:	cec080e7          	jalr	-788(ra) # 80001120 <_Z9mem_allocm>
}
    8000143c:	00813083          	ld	ra,8(sp)
    80001440:	00013403          	ld	s0,0(sp)
    80001444:	01010113          	addi	sp,sp,16
    80001448:	00008067          	ret

000000008000144c <_ZdlPv>:

void operator delete(void* ptr)
{
    8000144c:	ff010113          	addi	sp,sp,-16
    80001450:	00113423          	sd	ra,8(sp)
    80001454:	00813023          	sd	s0,0(sp)
    80001458:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    8000145c:	00000097          	auipc	ra,0x0
    80001460:	d04080e7          	jalr	-764(ra) # 80001160 <_Z8mem_freePv>
    80001464:	00813083          	ld	ra,8(sp)
    80001468:	00013403          	ld	s0,0(sp)
    8000146c:	01010113          	addi	sp,sp,16
    80001470:	00008067          	ret

0000000080001474 <_ZN5Riscv21SupervisorTrapHandlerEv>:
extern  "C" void SupervisorTrapHandlerWrapper() {
    Riscv::SupervisorTrapHandler();
}


void Riscv::SupervisorTrapHandler() {
    80001474:	fd010113          	addi	sp,sp,-48
    80001478:	02113423          	sd	ra,40(sp)
    8000147c:	02813023          	sd	s0,32(sp)
    80001480:	00913c23          	sd	s1,24(sp)
    80001484:	01213823          	sd	s2,16(sp)
    80001488:	01313423          	sd	s3,8(sp)
    8000148c:	03010413          	addi	s0,sp,48
    __asm__ volatile ("csrw sepc, %[x]" :: [x] "r" (sepc));
}

inline uint64 Riscv::get_sepc() {
    uint64 sepc;
    __asm__ volatile ("csrr %[x],sepc" : [x] "=r" (sepc));
    80001490:	141024f3          	csrr	s1,sepc
    __asm__ volatile ("csrw sstatus, %[x]" :: [x] "r" (sstatus));
}

inline uint64 Riscv::get_sstatus() {
    uint64 sstatus;
    __asm__ volatile ("csrr %[x],sstatus" : [x] "=r" (sstatus));
    80001494:	10002973          	csrr	s2,sstatus
    uint64 sstatus;
    sepc=get_sepc();
    sstatus=get_sstatus();

    uint64 syscode;
    __asm__ volatile ("mv %[x], a0" : [x] "=r" (syscode));
    80001498:	00050793          	mv	a5,a0

    if (syscode==MEM_ALLOC) {
    8000149c:	00100713          	li	a4,1
    800014a0:	04e78e63          	beq	a5,a4,800014fc <_ZN5Riscv21SupervisorTrapHandlerEv+0x88>
        size_t size_in_blocks;
        __asm__ volatile ("mv %[x], a1" : [x] "=r" (size_in_blocks));
        void* ptr = MemoryAllocator::Instance()->mem_alloc(size_in_blocks * MEM_BLOCK_SIZE);
        __asm__ volatile ("mv a0,%[x]" :: [x] "r" (ptr));
    }
    else if (syscode==MEM_FREE) {
    800014a4:	00200713          	li	a4,2
    800014a8:	06e78a63          	beq	a5,a4,8000151c <_ZN5Riscv21SupervisorTrapHandlerEv+0xa8>
        void* ptr;
        __asm__ volatile ("mv %[x], a1" : [x] "=r" (ptr));
        MemoryAllocator::Instance()->mem_free(ptr);
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (0));
    }
    else if (syscode==MEM_GET_FREE_SPACE) {
    800014ac:	00300713          	li	a4,3
    800014b0:	08e78863          	beq	a5,a4,80001540 <_ZN5Riscv21SupervisorTrapHandlerEv+0xcc>
        size_t freeMem = MemoryAllocator::Instance()->getFreeMemSize();
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (freeMem));
    }
    else if (syscode==MEM_GET_LARGEST_FREE_BLOCK) {
    800014b4:	00400713          	li	a4,4
    800014b8:	08e78e63          	beq	a5,a4,80001554 <_ZN5Riscv21SupervisorTrapHandlerEv+0xe0>
        size_t largestBlock = MemoryAllocator::Instance()->getLargestFreeBlock();
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (largestBlock));
    }
    else {
        __putc('E');
    800014bc:	04500513          	li	a0,69
    800014c0:	00002097          	auipc	ra,0x2
    800014c4:	64c080e7          	jalr	1612(ra) # 80003b0c <__putc>
        __putc('\n');
    800014c8:	00a00513          	li	a0,10
    800014cc:	00002097          	auipc	ra,0x2
    800014d0:	640080e7          	jalr	1600(ra) # 80003b0c <__putc>
    }



    set_sepc(sepc+4);
    800014d4:	00448493          	addi	s1,s1,4
    __asm__ volatile ("csrw sepc, %[x]" :: [x] "r" (sepc));
    800014d8:	14149073          	csrw	sepc,s1
    __asm__ volatile ("csrw sstatus, %[x]" :: [x] "r" (sstatus));
    800014dc:	10091073          	csrw	sstatus,s2
    set_sstatus(sstatus);
    800014e0:	02813083          	ld	ra,40(sp)
    800014e4:	02013403          	ld	s0,32(sp)
    800014e8:	01813483          	ld	s1,24(sp)
    800014ec:	01013903          	ld	s2,16(sp)
    800014f0:	00813983          	ld	s3,8(sp)
    800014f4:	03010113          	addi	sp,sp,48
    800014f8:	00008067          	ret
        __asm__ volatile ("mv %[x], a1" : [x] "=r" (size_in_blocks));
    800014fc:	00058993          	mv	s3,a1
        void* ptr = MemoryAllocator::Instance()->mem_alloc(size_in_blocks * MEM_BLOCK_SIZE);
    80001500:	00000097          	auipc	ra,0x0
    80001504:	0f0080e7          	jalr	240(ra) # 800015f0 <_ZN15MemoryAllocator8InstanceEv>
    80001508:	00699593          	slli	a1,s3,0x6
    8000150c:	00000097          	auipc	ra,0x0
    80001510:	140080e7          	jalr	320(ra) # 8000164c <_ZN15MemoryAllocator9mem_allocEm>
        __asm__ volatile ("mv a0,%[x]" :: [x] "r" (ptr));
    80001514:	00050513          	mv	a0,a0
    80001518:	fbdff06f          	j	800014d4 <_ZN5Riscv21SupervisorTrapHandlerEv+0x60>
        __asm__ volatile ("mv %[x], a1" : [x] "=r" (ptr));
    8000151c:	00058993          	mv	s3,a1
        MemoryAllocator::Instance()->mem_free(ptr);
    80001520:	00000097          	auipc	ra,0x0
    80001524:	0d0080e7          	jalr	208(ra) # 800015f0 <_ZN15MemoryAllocator8InstanceEv>
    80001528:	00098593          	mv	a1,s3
    8000152c:	00000097          	auipc	ra,0x0
    80001530:	308080e7          	jalr	776(ra) # 80001834 <_ZN15MemoryAllocator8mem_freeEPv>
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (0));
    80001534:	00000793          	li	a5,0
    80001538:	00078513          	mv	a0,a5
    8000153c:	f99ff06f          	j	800014d4 <_ZN5Riscv21SupervisorTrapHandlerEv+0x60>
        size_t freeMem = MemoryAllocator::Instance()->getFreeMemSize();
    80001540:	00000097          	auipc	ra,0x0
    80001544:	0b0080e7          	jalr	176(ra) # 800015f0 <_ZN15MemoryAllocator8InstanceEv>
    void* mem_alloc(size_t size);//size in bytes

    void mem_free(void* ptr);

    size_t getFreeMemSize() {
        return this->freeMemSize;
    80001548:	00853783          	ld	a5,8(a0)
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (freeMem));
    8000154c:	00078513          	mv	a0,a5
    80001550:	f85ff06f          	j	800014d4 <_ZN5Riscv21SupervisorTrapHandlerEv+0x60>
        size_t largestBlock = MemoryAllocator::Instance()->getLargestFreeBlock();
    80001554:	00000097          	auipc	ra,0x0
    80001558:	09c080e7          	jalr	156(ra) # 800015f0 <_ZN15MemoryAllocator8InstanceEv>
    8000155c:	00000097          	auipc	ra,0x0
    80001560:	3e0080e7          	jalr	992(ra) # 8000193c <_ZN15MemoryAllocator19getLargestFreeBlockEv>
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (largestBlock));
    80001564:	00050513          	mv	a0,a0
    80001568:	f6dff06f          	j	800014d4 <_ZN5Riscv21SupervisorTrapHandlerEv+0x60>

000000008000156c <SupervisorTrapHandlerWrapper>:
extern  "C" void SupervisorTrapHandlerWrapper() {
    8000156c:	ff010113          	addi	sp,sp,-16
    80001570:	00113423          	sd	ra,8(sp)
    80001574:	00813023          	sd	s0,0(sp)
    80001578:	01010413          	addi	s0,sp,16
    Riscv::SupervisorTrapHandler();
    8000157c:	00000097          	auipc	ra,0x0
    80001580:	ef8080e7          	jalr	-264(ra) # 80001474 <_ZN5Riscv21SupervisorTrapHandlerEv>
}
    80001584:	00813083          	ld	ra,8(sp)
    80001588:	00013403          	ld	s0,0(sp)
    8000158c:	01010113          	addi	sp,sp,16
    80001590:	00008067          	ret

0000000080001594 <_ZN15MemoryAllocatorC1Ev>:

#include "../h/MemoryAllocator.hpp"
#include "../lib/console.h"


MemoryAllocator::MemoryAllocator() {
    80001594:	ff010113          	addi	sp,sp,-16
    80001598:	00813423          	sd	s0,8(sp)
    8000159c:	01010413          	addi	s0,sp,16
    this->head = (MemoryHeader*)HEAP_START_ADDR;
    800015a0:	00003797          	auipc	a5,0x3
    800015a4:	0287b783          	ld	a5,40(a5) # 800045c8 <_GLOBAL_OFFSET_TABLE_+0x8>
    800015a8:	0007b703          	ld	a4,0(a5)
    800015ac:	00e53023          	sd	a4,0(a0)
    // this->tail = (MemoryHeader*)HEAP_START_ADDR;
    // this->tail->next=nullptr;
    // this->tail->prev=nullptr;
    this->head->next=nullptr;
    800015b0:	00073423          	sd	zero,8(a4)
    this->head->prev=nullptr;
    800015b4:	00053783          	ld	a5,0(a0)
    800015b8:	0007b823          	sd	zero,16(a5)
    this->head->size = (size_t)((char*)HEAP_END_ADDR - (char*)HEAP_START_ADDR - sizeof(MemoryHeader));
    800015bc:	00003797          	auipc	a5,0x3
    800015c0:	0247b783          	ld	a5,36(a5) # 800045e0 <_GLOBAL_OFFSET_TABLE_+0x20>
    800015c4:	0007b783          	ld	a5,0(a5)
    800015c8:	40e787b3          	sub	a5,a5,a4
    800015cc:	00053703          	ld	a4,0(a0)
    800015d0:	fe878793          	addi	a5,a5,-24
    800015d4:	00f73023          	sd	a5,0(a4)
    this->freeMemSize=this->head->size;
    800015d8:	00053783          	ld	a5,0(a0)
    800015dc:	0007b783          	ld	a5,0(a5)
    800015e0:	00f53423          	sd	a5,8(a0)
}
    800015e4:	00813403          	ld	s0,8(sp)
    800015e8:	01010113          	addi	sp,sp,16
    800015ec:	00008067          	ret

00000000800015f0 <_ZN15MemoryAllocator8InstanceEv>:




MemoryAllocator* MemoryAllocator::Instance() {
    static MemoryAllocator instance;
    800015f0:	00003797          	auipc	a5,0x3
    800015f4:	0407c783          	lbu	a5,64(a5) # 80004630 <_ZGVZN15MemoryAllocator8InstanceEvE8instance>
    800015f8:	00078863          	beqz	a5,80001608 <_ZN15MemoryAllocator8InstanceEv+0x18>
    return &instance;
}
    800015fc:	00003517          	auipc	a0,0x3
    80001600:	03c50513          	addi	a0,a0,60 # 80004638 <_ZZN15MemoryAllocator8InstanceEvE8instance>
    80001604:	00008067          	ret
MemoryAllocator* MemoryAllocator::Instance() {
    80001608:	ff010113          	addi	sp,sp,-16
    8000160c:	00113423          	sd	ra,8(sp)
    80001610:	00813023          	sd	s0,0(sp)
    80001614:	01010413          	addi	s0,sp,16
    static MemoryAllocator instance;
    80001618:	00003517          	auipc	a0,0x3
    8000161c:	02050513          	addi	a0,a0,32 # 80004638 <_ZZN15MemoryAllocator8InstanceEvE8instance>
    80001620:	00000097          	auipc	ra,0x0
    80001624:	f74080e7          	jalr	-140(ra) # 80001594 <_ZN15MemoryAllocatorC1Ev>
    80001628:	00100793          	li	a5,1
    8000162c:	00003717          	auipc	a4,0x3
    80001630:	00f70223          	sb	a5,4(a4) # 80004630 <_ZGVZN15MemoryAllocator8InstanceEvE8instance>
}
    80001634:	00003517          	auipc	a0,0x3
    80001638:	00450513          	addi	a0,a0,4 # 80004638 <_ZZN15MemoryAllocator8InstanceEvE8instance>
    8000163c:	00813083          	ld	ra,8(sp)
    80001640:	00013403          	ld	s0,0(sp)
    80001644:	01010113          	addi	sp,sp,16
    80001648:	00008067          	ret

000000008000164c <_ZN15MemoryAllocator9mem_allocEm>:


void* MemoryAllocator::mem_alloc(size_t size) {
    8000164c:	00050613          	mv	a2,a0
    if (this->head==nullptr)
    80001650:	00053503          	ld	a0,0(a0)
    80001654:	12050c63          	beqz	a0,8000178c <_ZN15MemoryAllocator9mem_allocEm+0x140>
        return nullptr;
    if (size==0) {
    80001658:	12058263          	beqz	a1,8000177c <_ZN15MemoryAllocator9mem_allocEm+0x130>
void* MemoryAllocator::mem_alloc(size_t size) {
    8000165c:	fe010113          	addi	sp,sp,-32
    80001660:	00113c23          	sd	ra,24(sp)
    80001664:	00813823          	sd	s0,16(sp)
    80001668:	00913423          	sd	s1,8(sp)
    8000166c:	02010413          	addi	s0,sp,32
        return nullptr;
    }
    uint64 offset = size % MEM_BLOCK_SIZE;
    80001670:	03f5f793          	andi	a5,a1,63
    if (offset!=0)
    80001674:	00078463          	beqz	a5,8000167c <_ZN15MemoryAllocator9mem_allocEm+0x30>
        offset=1;
    80001678:	00100793          	li	a5,1

    size_t actulalSize = (size  / MEM_BLOCK_SIZE+offset ) * MEM_BLOCK_SIZE;
    8000167c:	0065d713          	srli	a4,a1,0x6
    80001680:	00f70733          	add	a4,a4,a5
    80001684:	00671713          	slli	a4,a4,0x6


    MemoryHeader* curr= this->head;
    80001688:	00050793          	mv	a5,a0
    while (curr->next!=nullptr && curr->size < actulalSize) {
    8000168c:	00078493          	mv	s1,a5
    80001690:	0087b783          	ld	a5,8(a5)
    80001694:	00078663          	beqz	a5,800016a0 <_ZN15MemoryAllocator9mem_allocEm+0x54>
    80001698:	0004b683          	ld	a3,0(s1)
    8000169c:	fee6e8e3          	bltu	a3,a4,8000168c <_ZN15MemoryAllocator9mem_allocEm+0x40>
        curr=curr->next;
    }
    if (curr->size < actulalSize) {
    800016a0:	0004b683          	ld	a3,0(s1)
    800016a4:	0ee6e063          	bltu	a3,a4,80001784 <_ZN15MemoryAllocator9mem_allocEm+0x138>
        return nullptr;
    }



    if (curr->size - actulalSize >= MEM_BLOCK_SIZE+sizeof(MemoryHeader)) {
    800016a8:	40e686b3          	sub	a3,a3,a4
    800016ac:	05700593          	li	a1,87
    800016b0:	08d5f863          	bgeu	a1,a3,80001740 <_ZN15MemoryAllocator9mem_allocEm+0xf4>


        MemoryHeader* new_seg=(MemoryHeader*)((char*)curr + sizeof(MemoryHeader) + actulalSize);
    800016b4:	01870793          	addi	a5,a4,24
    800016b8:	00f487b3          	add	a5,s1,a5
        new_seg->size = curr->size - actulalSize - sizeof(MemoryHeader);
    800016bc:	fe868693          	addi	a3,a3,-24
    800016c0:	00d7b023          	sd	a3,0(a5)
        new_seg->next=curr->next;
    800016c4:	0084b683          	ld	a3,8(s1)
    800016c8:	00d7b423          	sd	a3,8(a5)
        new_seg->prev=curr->prev;
    800016cc:	0104b683          	ld	a3,16(s1)
    800016d0:	00d7b823          	sd	a3,16(a5)
        if (curr==this->head) {
    800016d4:	00063683          	ld	a3,0(a2)
    800016d8:	06968063          	beq	a3,s1,80001738 <_ZN15MemoryAllocator9mem_allocEm+0xec>
            this->head=new_seg;
        }
        // if (curr==this->tail) {
        //     this->tail=new_seg;
        // }
        if (curr->prev)
    800016dc:	0104b683          	ld	a3,16(s1)
    800016e0:	00068463          	beqz	a3,800016e8 <_ZN15MemoryAllocator9mem_allocEm+0x9c>
            curr->prev->next=new_seg;
    800016e4:	00f6b423          	sd	a5,8(a3)
        if (curr->next)
    800016e8:	0084b683          	ld	a3,8(s1)
    800016ec:	00068463          	beqz	a3,800016f4 <_ZN15MemoryAllocator9mem_allocEm+0xa8>
            curr->next->prev=new_seg;
    800016f0:	00f6b823          	sd	a5,16(a3)
        curr->size=actulalSize;
    800016f4:	00e4b023          	sd	a4,0(s1)
        this->freeMemSize-= (actulalSize + sizeof(MemoryHeader));
    800016f8:	00863783          	ld	a5,8(a2)
    800016fc:	40e78733          	sub	a4,a5,a4
    80001700:	fe870713          	addi	a4,a4,-24
    80001704:	00e63423          	sd	a4,8(a2)
            curr->next->prev=curr->prev;
        this->freeMemSize-= actulalSize;
    }


    __putc('m');
    80001708:	06d00513          	li	a0,109
    8000170c:	00002097          	auipc	ra,0x2
    80001710:	400080e7          	jalr	1024(ra) # 80003b0c <__putc>
    __putc('\n');
    80001714:	00a00513          	li	a0,10
    80001718:	00002097          	auipc	ra,0x2
    8000171c:	3f4080e7          	jalr	1012(ra) # 80003b0c <__putc>



    return  (void*)((char*)curr + sizeof(MemoryHeader));
    80001720:	01848513          	addi	a0,s1,24
}
    80001724:	01813083          	ld	ra,24(sp)
    80001728:	01013403          	ld	s0,16(sp)
    8000172c:	00813483          	ld	s1,8(sp)
    80001730:	02010113          	addi	sp,sp,32
    80001734:	00008067          	ret
            this->head=new_seg;
    80001738:	00f63023          	sd	a5,0(a2)
    8000173c:	fa1ff06f          	j	800016dc <_ZN15MemoryAllocator9mem_allocEm+0x90>
        if (curr==this->head) {
    80001740:	02950a63          	beq	a0,s1,80001774 <_ZN15MemoryAllocator9mem_allocEm+0x128>
        if (curr->prev)
    80001744:	0104b783          	ld	a5,16(s1)
    80001748:	00078663          	beqz	a5,80001754 <_ZN15MemoryAllocator9mem_allocEm+0x108>
            curr->prev->next=curr->next;
    8000174c:	0084b683          	ld	a3,8(s1)
    80001750:	00d7b423          	sd	a3,8(a5)
        if (curr->next)
    80001754:	0084b783          	ld	a5,8(s1)
    80001758:	00078663          	beqz	a5,80001764 <_ZN15MemoryAllocator9mem_allocEm+0x118>
            curr->next->prev=curr->prev;
    8000175c:	0104b683          	ld	a3,16(s1)
    80001760:	00d7b823          	sd	a3,16(a5)
        this->freeMemSize-= actulalSize;
    80001764:	00863783          	ld	a5,8(a2)
    80001768:	40e78733          	sub	a4,a5,a4
    8000176c:	00e63423          	sd	a4,8(a2)
    80001770:	f99ff06f          	j	80001708 <_ZN15MemoryAllocator9mem_allocEm+0xbc>
            this->head=curr->next;
    80001774:	00f63023          	sd	a5,0(a2)
    80001778:	fcdff06f          	j	80001744 <_ZN15MemoryAllocator9mem_allocEm+0xf8>
        return nullptr;
    8000177c:	00000513          	li	a0,0
    80001780:	00008067          	ret
        return nullptr;
    80001784:	00000513          	li	a0,0
    80001788:	f9dff06f          	j	80001724 <_ZN15MemoryAllocator9mem_allocEm+0xd8>
}
    8000178c:	00008067          	ret

0000000080001790 <_ZN15MemoryAllocator11try_to_joinEPNS_12MemoryHeaderE>:
    try_to_join(block);
}


void MemoryAllocator::try_to_join(MemoryHeader* block) {
    if (block==nullptr)
    80001790:	0a058063          	beqz	a1,80001830 <_ZN15MemoryAllocator11try_to_joinEPNS_12MemoryHeaderE+0xa0>
void MemoryAllocator::try_to_join(MemoryHeader* block) {
    80001794:	fe010113          	addi	sp,sp,-32
    80001798:	00113c23          	sd	ra,24(sp)
    8000179c:	00813823          	sd	s0,16(sp)
    800017a0:	00913423          	sd	s1,8(sp)
    800017a4:	01213023          	sd	s2,0(sp)
    800017a8:	02010413          	addi	s0,sp,32
    800017ac:	00050913          	mv	s2,a0
    800017b0:	00058493          	mv	s1,a1
        return;
    if (block->next!=nullptr && ((char*)block + sizeof(MemoryHeader) + block->size) == (char*)block->next) {
    800017b4:	0085b703          	ld	a4,8(a1)
    800017b8:	00070a63          	beqz	a4,800017cc <_ZN15MemoryAllocator11try_to_joinEPNS_12MemoryHeaderE+0x3c>
    800017bc:	0005b783          	ld	a5,0(a1)
    800017c0:	01878793          	addi	a5,a5,24
    800017c4:	00f587b3          	add	a5,a1,a5
    800017c8:	00f70e63          	beq	a4,a5,800017e4 <_ZN15MemoryAllocator11try_to_joinEPNS_12MemoryHeaderE+0x54>
        block->next=block->next->next;
        if (block->next)
            block->next->prev=block;
        this->freeMemSize+= sizeof(MemoryHeader);
    }
}
    800017cc:	01813083          	ld	ra,24(sp)
    800017d0:	01013403          	ld	s0,16(sp)
    800017d4:	00813483          	ld	s1,8(sp)
    800017d8:	00013903          	ld	s2,0(sp)
    800017dc:	02010113          	addi	sp,sp,32
    800017e0:	00008067          	ret
        __putc('t');
    800017e4:	07400513          	li	a0,116
    800017e8:	00002097          	auipc	ra,0x2
    800017ec:	324080e7          	jalr	804(ra) # 80003b0c <__putc>
        __putc('\n');
    800017f0:	00a00513          	li	a0,10
    800017f4:	00002097          	auipc	ra,0x2
    800017f8:	318080e7          	jalr	792(ra) # 80003b0c <__putc>
        block->size += block->next->size;
    800017fc:	0084b703          	ld	a4,8(s1)
    80001800:	00073683          	ld	a3,0(a4)
    80001804:	0004b783          	ld	a5,0(s1)
    80001808:	00d787b3          	add	a5,a5,a3
    8000180c:	00f4b023          	sd	a5,0(s1)
        block->next=block->next->next;
    80001810:	00873783          	ld	a5,8(a4)
    80001814:	00f4b423          	sd	a5,8(s1)
        if (block->next)
    80001818:	00078463          	beqz	a5,80001820 <_ZN15MemoryAllocator11try_to_joinEPNS_12MemoryHeaderE+0x90>
            block->next->prev=block;
    8000181c:	0097b823          	sd	s1,16(a5)
        this->freeMemSize+= sizeof(MemoryHeader);
    80001820:	00893783          	ld	a5,8(s2)
    80001824:	01878793          	addi	a5,a5,24
    80001828:	00f93423          	sd	a5,8(s2)
    8000182c:	fa1ff06f          	j	800017cc <_ZN15MemoryAllocator11try_to_joinEPNS_12MemoryHeaderE+0x3c>
    80001830:	00008067          	ret

0000000080001834 <_ZN15MemoryAllocator8mem_freeEPv>:
    if (ptr==nullptr) {
    80001834:	10058263          	beqz	a1,80001938 <_ZN15MemoryAllocator8mem_freeEPv+0x104>
void MemoryAllocator::mem_free(void* ptr) {
    80001838:	fd010113          	addi	sp,sp,-48
    8000183c:	02113423          	sd	ra,40(sp)
    80001840:	02813023          	sd	s0,32(sp)
    80001844:	00913c23          	sd	s1,24(sp)
    80001848:	01213823          	sd	s2,16(sp)
    8000184c:	01313423          	sd	s3,8(sp)
    80001850:	03010413          	addi	s0,sp,48
    80001854:	00050993          	mv	s3,a0
    80001858:	00058913          	mv	s2,a1
	MemoryHeader* block = (MemoryHeader*)((char*)ptr - sizeof(MemoryHeader));
    8000185c:	fe858493          	addi	s1,a1,-24
    if (this->head==nullptr) {
    80001860:	00053683          	ld	a3,0(a0)
    80001864:	08068c63          	beqz	a3,800018fc <_ZN15MemoryAllocator8mem_freeEPv+0xc8>
    MemoryHeader* curr = this->head;
    80001868:	00068793          	mv	a5,a3
    while (curr->next!=nullptr && curr->next < block) {
    8000186c:	00078713          	mv	a4,a5
    80001870:	0087b783          	ld	a5,8(a5)
    80001874:	00078463          	beqz	a5,8000187c <_ZN15MemoryAllocator8mem_freeEPv+0x48>
    80001878:	fe97eae3          	bltu	a5,s1,8000186c <_ZN15MemoryAllocator8mem_freeEPv+0x38>
    if (curr==this->head and curr > block) {
    8000187c:	0ae68063          	beq	a3,a4,8000191c <_ZN15MemoryAllocator8mem_freeEPv+0xe8>
        block->next=curr->next;
    80001880:	fef93823          	sd	a5,-16(s2)
        block->prev=curr;
    80001884:	fee93c23          	sd	a4,-8(s2)
        curr->next=block;
    80001888:	00973423          	sd	s1,8(a4)
        if (block->next) {
    8000188c:	ff093783          	ld	a5,-16(s2)
    80001890:	00078463          	beqz	a5,80001898 <_ZN15MemoryAllocator8mem_freeEPv+0x64>
            block->next->prev=block;
    80001894:	0097b823          	sd	s1,16(a5)
    this->freeMemSize+= block->size;
    80001898:	fe893703          	ld	a4,-24(s2)
    8000189c:	0089b783          	ld	a5,8(s3)
    800018a0:	00e787b3          	add	a5,a5,a4
    800018a4:	00f9b423          	sd	a5,8(s3)
    __putc('n');
    800018a8:	06e00513          	li	a0,110
    800018ac:	00002097          	auipc	ra,0x2
    800018b0:	260080e7          	jalr	608(ra) # 80003b0c <__putc>
    __putc('\n');
    800018b4:	00a00513          	li	a0,10
    800018b8:	00002097          	auipc	ra,0x2
    800018bc:	254080e7          	jalr	596(ra) # 80003b0c <__putc>
    try_to_join(block->prev);
    800018c0:	ff893583          	ld	a1,-8(s2)
    800018c4:	00098513          	mv	a0,s3
    800018c8:	00000097          	auipc	ra,0x0
    800018cc:	ec8080e7          	jalr	-312(ra) # 80001790 <_ZN15MemoryAllocator11try_to_joinEPNS_12MemoryHeaderE>
    try_to_join(block);
    800018d0:	00048593          	mv	a1,s1
    800018d4:	00098513          	mv	a0,s3
    800018d8:	00000097          	auipc	ra,0x0
    800018dc:	eb8080e7          	jalr	-328(ra) # 80001790 <_ZN15MemoryAllocator11try_to_joinEPNS_12MemoryHeaderE>
}
    800018e0:	02813083          	ld	ra,40(sp)
    800018e4:	02013403          	ld	s0,32(sp)
    800018e8:	01813483          	ld	s1,24(sp)
    800018ec:	01013903          	ld	s2,16(sp)
    800018f0:	00813983          	ld	s3,8(sp)
    800018f4:	03010113          	addi	sp,sp,48
    800018f8:	00008067          	ret
        this->head=block;
    800018fc:	00953023          	sd	s1,0(a0)
        block->next=nullptr;
    80001900:	fe05b823          	sd	zero,-16(a1)
        block->prev=nullptr;
    80001904:	fe05bc23          	sd	zero,-8(a1)
        this->freeMemSize+= block->size;
    80001908:	fe85b703          	ld	a4,-24(a1)
    8000190c:	00853783          	ld	a5,8(a0)
    80001910:	00e787b3          	add	a5,a5,a4
    80001914:	00f53423          	sd	a5,8(a0)
        return;
    80001918:	fc9ff06f          	j	800018e0 <_ZN15MemoryAllocator8mem_freeEPv+0xac>
    if (curr==this->head and curr > block) {
    8000191c:	f6e4f2e3          	bgeu	s1,a4,80001880 <_ZN15MemoryAllocator8mem_freeEPv+0x4c>
        block->next=curr;
    80001920:	fee93823          	sd	a4,-16(s2)
        block->prev=curr->prev;
    80001924:	01073783          	ld	a5,16(a4)
    80001928:	fef93c23          	sd	a5,-8(s2)
        curr->prev=block;
    8000192c:	00973823          	sd	s1,16(a4)
        this->head=block;
    80001930:	0099b023          	sd	s1,0(s3)
    80001934:	f65ff06f          	j	80001898 <_ZN15MemoryAllocator8mem_freeEPv+0x64>
    80001938:	00008067          	ret

000000008000193c <_ZN15MemoryAllocator19getLargestFreeBlockEv>:

size_t MemoryAllocator::getLargestFreeBlock() {
    8000193c:	ff010113          	addi	sp,sp,-16
    80001940:	00813423          	sd	s0,8(sp)
    80001944:	01010413          	addi	s0,sp,16
    size_t maxSize=0;
    MemoryHeader* curr=this->head;
    80001948:	00053783          	ld	a5,0(a0)
    size_t maxSize=0;
    8000194c:	00000513          	li	a0,0
    80001950:	0080006f          	j	80001958 <_ZN15MemoryAllocator19getLargestFreeBlockEv+0x1c>
    while (curr!=nullptr) {
        if (curr->size > maxSize)
            maxSize=curr->size;
        curr=curr->next;
    80001954:	0087b783          	ld	a5,8(a5)
    while (curr!=nullptr) {
    80001958:	00078a63          	beqz	a5,8000196c <_ZN15MemoryAllocator19getLargestFreeBlockEv+0x30>
        if (curr->size > maxSize)
    8000195c:	0007b703          	ld	a4,0(a5)
    80001960:	fee57ae3          	bgeu	a0,a4,80001954 <_ZN15MemoryAllocator19getLargestFreeBlockEv+0x18>
            maxSize=curr->size;
    80001964:	00070513          	mv	a0,a4
    80001968:	fedff06f          	j	80001954 <_ZN15MemoryAllocator19getLargestFreeBlockEv+0x18>
    }
    return maxSize;
    8000196c:	00813403          	ld	s0,8(sp)
    80001970:	01010113          	addi	sp,sp,16
    80001974:	00008067          	ret

0000000080001978 <_Z11printStringPKc>:
#include  "../h/print.hpp"
#include "../lib/console.h"


void printString(const char *string) {
    80001978:	fe010113          	addi	sp,sp,-32
    8000197c:	00113c23          	sd	ra,24(sp)
    80001980:	00813823          	sd	s0,16(sp)
    80001984:	00913423          	sd	s1,8(sp)
    80001988:	02010413          	addi	s0,sp,32
    8000198c:	00050493          	mv	s1,a0
    while (*string!='\0') {
    80001990:	0004c503          	lbu	a0,0(s1)
    80001994:	00050a63          	beqz	a0,800019a8 <_Z11printStringPKc+0x30>
        __putc(*string);
    80001998:	00002097          	auipc	ra,0x2
    8000199c:	174080e7          	jalr	372(ra) # 80003b0c <__putc>
        string++;
    800019a0:	00148493          	addi	s1,s1,1
    while (*string!='\0') {
    800019a4:	fedff06f          	j	80001990 <_Z11printStringPKc+0x18>
    }
}
    800019a8:	01813083          	ld	ra,24(sp)
    800019ac:	01013403          	ld	s0,16(sp)
    800019b0:	00813483          	ld	s1,8(sp)
    800019b4:	02010113          	addi	sp,sp,32
    800019b8:	00008067          	ret

00000000800019bc <_Z12printIntegerm>:
void printInteger(uint64 integer) {
    800019bc:	fd010113          	addi	sp,sp,-48
    800019c0:	02113423          	sd	ra,40(sp)
    800019c4:	02813023          	sd	s0,32(sp)
    800019c8:	00913c23          	sd	s1,24(sp)
    800019cc:	03010413          	addi	s0,sp,48
    neg=0;
    if (integer<0) {
        neg=1;
        x=-integer;
    } else {
        x=integer;
    800019d0:	0005051b          	sext.w	a0,a0
    }

    i=0;
    800019d4:	00000493          	li	s1,0
    do {
        buf[i++]=digits[x%10];
    800019d8:	00a00613          	li	a2,10
    800019dc:	02c5773b          	remuw	a4,a0,a2
    800019e0:	02071693          	slli	a3,a4,0x20
    800019e4:	0206d693          	srli	a3,a3,0x20
    800019e8:	00002717          	auipc	a4,0x2
    800019ec:	66870713          	addi	a4,a4,1640 # 80004050 <_ZZ12printIntegermE6digits>
    800019f0:	00d70733          	add	a4,a4,a3
    800019f4:	00074703          	lbu	a4,0(a4)
    800019f8:	fe040693          	addi	a3,s0,-32
    800019fc:	009687b3          	add	a5,a3,s1
    80001a00:	0014849b          	addiw	s1,s1,1
    80001a04:	fee78823          	sb	a4,-16(a5)
    }while ((x/=10)!=0);
    80001a08:	0005071b          	sext.w	a4,a0
    80001a0c:	02c5553b          	divuw	a0,a0,a2
    80001a10:	00900793          	li	a5,9
    80001a14:	fce7e2e3          	bltu	a5,a4,800019d8 <_Z12printIntegerm+0x1c>
    if (neg) {
        buf[i++]='-';
    }

    while (--i>=0) {
    80001a18:	fff4849b          	addiw	s1,s1,-1
    80001a1c:	0004ce63          	bltz	s1,80001a38 <_Z12printIntegerm+0x7c>
        __putc(buf[i]);
    80001a20:	fe040793          	addi	a5,s0,-32
    80001a24:	009787b3          	add	a5,a5,s1
    80001a28:	ff07c503          	lbu	a0,-16(a5)
    80001a2c:	00002097          	auipc	ra,0x2
    80001a30:	0e0080e7          	jalr	224(ra) # 80003b0c <__putc>
    80001a34:	fe5ff06f          	j	80001a18 <_Z12printIntegerm+0x5c>
    }
    80001a38:	02813083          	ld	ra,40(sp)
    80001a3c:	02013403          	ld	s0,32(sp)
    80001a40:	01813483          	ld	s1,24(sp)
    80001a44:	03010113          	addi	sp,sp,48
    80001a48:	00008067          	ret

0000000080001a4c <start>:
    80001a4c:	ff010113          	addi	sp,sp,-16
    80001a50:	00813423          	sd	s0,8(sp)
    80001a54:	01010413          	addi	s0,sp,16
    80001a58:	300027f3          	csrr	a5,mstatus
    80001a5c:	ffffe737          	lui	a4,0xffffe
    80001a60:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff8f5f>
    80001a64:	00e7f7b3          	and	a5,a5,a4
    80001a68:	00001737          	lui	a4,0x1
    80001a6c:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80001a70:	00e7e7b3          	or	a5,a5,a4
    80001a74:	30079073          	csrw	mstatus,a5
    80001a78:	00000797          	auipc	a5,0x0
    80001a7c:	16078793          	addi	a5,a5,352 # 80001bd8 <system_main>
    80001a80:	34179073          	csrw	mepc,a5
    80001a84:	00000793          	li	a5,0
    80001a88:	18079073          	csrw	satp,a5
    80001a8c:	000107b7          	lui	a5,0x10
    80001a90:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001a94:	30279073          	csrw	medeleg,a5
    80001a98:	30379073          	csrw	mideleg,a5
    80001a9c:	104027f3          	csrr	a5,sie
    80001aa0:	2227e793          	ori	a5,a5,546
    80001aa4:	10479073          	csrw	sie,a5
    80001aa8:	fff00793          	li	a5,-1
    80001aac:	00a7d793          	srli	a5,a5,0xa
    80001ab0:	3b079073          	csrw	pmpaddr0,a5
    80001ab4:	00f00793          	li	a5,15
    80001ab8:	3a079073          	csrw	pmpcfg0,a5
    80001abc:	f14027f3          	csrr	a5,mhartid
    80001ac0:	0200c737          	lui	a4,0x200c
    80001ac4:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001ac8:	0007869b          	sext.w	a3,a5
    80001acc:	00269713          	slli	a4,a3,0x2
    80001ad0:	000f4637          	lui	a2,0xf4
    80001ad4:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001ad8:	00d70733          	add	a4,a4,a3
    80001adc:	0037979b          	slliw	a5,a5,0x3
    80001ae0:	020046b7          	lui	a3,0x2004
    80001ae4:	00d787b3          	add	a5,a5,a3
    80001ae8:	00c585b3          	add	a1,a1,a2
    80001aec:	00371693          	slli	a3,a4,0x3
    80001af0:	00003717          	auipc	a4,0x3
    80001af4:	b6070713          	addi	a4,a4,-1184 # 80004650 <timer_scratch>
    80001af8:	00b7b023          	sd	a1,0(a5)
    80001afc:	00d70733          	add	a4,a4,a3
    80001b00:	00f73c23          	sd	a5,24(a4)
    80001b04:	02c73023          	sd	a2,32(a4)
    80001b08:	34071073          	csrw	mscratch,a4
    80001b0c:	00000797          	auipc	a5,0x0
    80001b10:	6e478793          	addi	a5,a5,1764 # 800021f0 <timervec>
    80001b14:	30579073          	csrw	mtvec,a5
    80001b18:	300027f3          	csrr	a5,mstatus
    80001b1c:	0087e793          	ori	a5,a5,8
    80001b20:	30079073          	csrw	mstatus,a5
    80001b24:	304027f3          	csrr	a5,mie
    80001b28:	0807e793          	ori	a5,a5,128
    80001b2c:	30479073          	csrw	mie,a5
    80001b30:	f14027f3          	csrr	a5,mhartid
    80001b34:	0007879b          	sext.w	a5,a5
    80001b38:	00078213          	mv	tp,a5
    80001b3c:	30200073          	mret
    80001b40:	00813403          	ld	s0,8(sp)
    80001b44:	01010113          	addi	sp,sp,16
    80001b48:	00008067          	ret

0000000080001b4c <timerinit>:
    80001b4c:	ff010113          	addi	sp,sp,-16
    80001b50:	00813423          	sd	s0,8(sp)
    80001b54:	01010413          	addi	s0,sp,16
    80001b58:	f14027f3          	csrr	a5,mhartid
    80001b5c:	0200c737          	lui	a4,0x200c
    80001b60:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001b64:	0007869b          	sext.w	a3,a5
    80001b68:	00269713          	slli	a4,a3,0x2
    80001b6c:	000f4637          	lui	a2,0xf4
    80001b70:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001b74:	00d70733          	add	a4,a4,a3
    80001b78:	0037979b          	slliw	a5,a5,0x3
    80001b7c:	020046b7          	lui	a3,0x2004
    80001b80:	00d787b3          	add	a5,a5,a3
    80001b84:	00c585b3          	add	a1,a1,a2
    80001b88:	00371693          	slli	a3,a4,0x3
    80001b8c:	00003717          	auipc	a4,0x3
    80001b90:	ac470713          	addi	a4,a4,-1340 # 80004650 <timer_scratch>
    80001b94:	00b7b023          	sd	a1,0(a5)
    80001b98:	00d70733          	add	a4,a4,a3
    80001b9c:	00f73c23          	sd	a5,24(a4)
    80001ba0:	02c73023          	sd	a2,32(a4)
    80001ba4:	34071073          	csrw	mscratch,a4
    80001ba8:	00000797          	auipc	a5,0x0
    80001bac:	64878793          	addi	a5,a5,1608 # 800021f0 <timervec>
    80001bb0:	30579073          	csrw	mtvec,a5
    80001bb4:	300027f3          	csrr	a5,mstatus
    80001bb8:	0087e793          	ori	a5,a5,8
    80001bbc:	30079073          	csrw	mstatus,a5
    80001bc0:	304027f3          	csrr	a5,mie
    80001bc4:	0807e793          	ori	a5,a5,128
    80001bc8:	30479073          	csrw	mie,a5
    80001bcc:	00813403          	ld	s0,8(sp)
    80001bd0:	01010113          	addi	sp,sp,16
    80001bd4:	00008067          	ret

0000000080001bd8 <system_main>:
    80001bd8:	fe010113          	addi	sp,sp,-32
    80001bdc:	00813823          	sd	s0,16(sp)
    80001be0:	00913423          	sd	s1,8(sp)
    80001be4:	00113c23          	sd	ra,24(sp)
    80001be8:	02010413          	addi	s0,sp,32
    80001bec:	00000097          	auipc	ra,0x0
    80001bf0:	0c4080e7          	jalr	196(ra) # 80001cb0 <cpuid>
    80001bf4:	00003497          	auipc	s1,0x3
    80001bf8:	a0c48493          	addi	s1,s1,-1524 # 80004600 <started>
    80001bfc:	02050263          	beqz	a0,80001c20 <system_main+0x48>
    80001c00:	0004a783          	lw	a5,0(s1)
    80001c04:	0007879b          	sext.w	a5,a5
    80001c08:	fe078ce3          	beqz	a5,80001c00 <system_main+0x28>
    80001c0c:	0ff0000f          	fence
    80001c10:	00002517          	auipc	a0,0x2
    80001c14:	48050513          	addi	a0,a0,1152 # 80004090 <_ZZ12printIntegermE6digits+0x40>
    80001c18:	00001097          	auipc	ra,0x1
    80001c1c:	a74080e7          	jalr	-1420(ra) # 8000268c <panic>
    80001c20:	00001097          	auipc	ra,0x1
    80001c24:	9c8080e7          	jalr	-1592(ra) # 800025e8 <consoleinit>
    80001c28:	00001097          	auipc	ra,0x1
    80001c2c:	154080e7          	jalr	340(ra) # 80002d7c <printfinit>
    80001c30:	00002517          	auipc	a0,0x2
    80001c34:	54050513          	addi	a0,a0,1344 # 80004170 <_ZZ12printIntegermE6digits+0x120>
    80001c38:	00001097          	auipc	ra,0x1
    80001c3c:	ab0080e7          	jalr	-1360(ra) # 800026e8 <__printf>
    80001c40:	00002517          	auipc	a0,0x2
    80001c44:	42050513          	addi	a0,a0,1056 # 80004060 <_ZZ12printIntegermE6digits+0x10>
    80001c48:	00001097          	auipc	ra,0x1
    80001c4c:	aa0080e7          	jalr	-1376(ra) # 800026e8 <__printf>
    80001c50:	00002517          	auipc	a0,0x2
    80001c54:	52050513          	addi	a0,a0,1312 # 80004170 <_ZZ12printIntegermE6digits+0x120>
    80001c58:	00001097          	auipc	ra,0x1
    80001c5c:	a90080e7          	jalr	-1392(ra) # 800026e8 <__printf>
    80001c60:	00001097          	auipc	ra,0x1
    80001c64:	4a8080e7          	jalr	1192(ra) # 80003108 <kinit>
    80001c68:	00000097          	auipc	ra,0x0
    80001c6c:	148080e7          	jalr	328(ra) # 80001db0 <trapinit>
    80001c70:	00000097          	auipc	ra,0x0
    80001c74:	16c080e7          	jalr	364(ra) # 80001ddc <trapinithart>
    80001c78:	00000097          	auipc	ra,0x0
    80001c7c:	5b8080e7          	jalr	1464(ra) # 80002230 <plicinit>
    80001c80:	00000097          	auipc	ra,0x0
    80001c84:	5d8080e7          	jalr	1496(ra) # 80002258 <plicinithart>
    80001c88:	00000097          	auipc	ra,0x0
    80001c8c:	078080e7          	jalr	120(ra) # 80001d00 <userinit>
    80001c90:	0ff0000f          	fence
    80001c94:	00100793          	li	a5,1
    80001c98:	00002517          	auipc	a0,0x2
    80001c9c:	3e050513          	addi	a0,a0,992 # 80004078 <_ZZ12printIntegermE6digits+0x28>
    80001ca0:	00f4a023          	sw	a5,0(s1)
    80001ca4:	00001097          	auipc	ra,0x1
    80001ca8:	a44080e7          	jalr	-1468(ra) # 800026e8 <__printf>
    80001cac:	0000006f          	j	80001cac <system_main+0xd4>

0000000080001cb0 <cpuid>:
    80001cb0:	ff010113          	addi	sp,sp,-16
    80001cb4:	00813423          	sd	s0,8(sp)
    80001cb8:	01010413          	addi	s0,sp,16
    80001cbc:	00020513          	mv	a0,tp
    80001cc0:	00813403          	ld	s0,8(sp)
    80001cc4:	0005051b          	sext.w	a0,a0
    80001cc8:	01010113          	addi	sp,sp,16
    80001ccc:	00008067          	ret

0000000080001cd0 <mycpu>:
    80001cd0:	ff010113          	addi	sp,sp,-16
    80001cd4:	00813423          	sd	s0,8(sp)
    80001cd8:	01010413          	addi	s0,sp,16
    80001cdc:	00020793          	mv	a5,tp
    80001ce0:	00813403          	ld	s0,8(sp)
    80001ce4:	0007879b          	sext.w	a5,a5
    80001ce8:	00779793          	slli	a5,a5,0x7
    80001cec:	00004517          	auipc	a0,0x4
    80001cf0:	99450513          	addi	a0,a0,-1644 # 80005680 <cpus>
    80001cf4:	00f50533          	add	a0,a0,a5
    80001cf8:	01010113          	addi	sp,sp,16
    80001cfc:	00008067          	ret

0000000080001d00 <userinit>:
    80001d00:	ff010113          	addi	sp,sp,-16
    80001d04:	00813423          	sd	s0,8(sp)
    80001d08:	01010413          	addi	s0,sp,16
    80001d0c:	00813403          	ld	s0,8(sp)
    80001d10:	01010113          	addi	sp,sp,16
    80001d14:	fffff317          	auipc	t1,0xfffff
    80001d18:	65430067          	jr	1620(t1) # 80001368 <main>

0000000080001d1c <either_copyout>:
    80001d1c:	ff010113          	addi	sp,sp,-16
    80001d20:	00813023          	sd	s0,0(sp)
    80001d24:	00113423          	sd	ra,8(sp)
    80001d28:	01010413          	addi	s0,sp,16
    80001d2c:	02051663          	bnez	a0,80001d58 <either_copyout+0x3c>
    80001d30:	00058513          	mv	a0,a1
    80001d34:	00060593          	mv	a1,a2
    80001d38:	0006861b          	sext.w	a2,a3
    80001d3c:	00002097          	auipc	ra,0x2
    80001d40:	c58080e7          	jalr	-936(ra) # 80003994 <__memmove>
    80001d44:	00813083          	ld	ra,8(sp)
    80001d48:	00013403          	ld	s0,0(sp)
    80001d4c:	00000513          	li	a0,0
    80001d50:	01010113          	addi	sp,sp,16
    80001d54:	00008067          	ret
    80001d58:	00002517          	auipc	a0,0x2
    80001d5c:	36050513          	addi	a0,a0,864 # 800040b8 <_ZZ12printIntegermE6digits+0x68>
    80001d60:	00001097          	auipc	ra,0x1
    80001d64:	92c080e7          	jalr	-1748(ra) # 8000268c <panic>

0000000080001d68 <either_copyin>:
    80001d68:	ff010113          	addi	sp,sp,-16
    80001d6c:	00813023          	sd	s0,0(sp)
    80001d70:	00113423          	sd	ra,8(sp)
    80001d74:	01010413          	addi	s0,sp,16
    80001d78:	02059463          	bnez	a1,80001da0 <either_copyin+0x38>
    80001d7c:	00060593          	mv	a1,a2
    80001d80:	0006861b          	sext.w	a2,a3
    80001d84:	00002097          	auipc	ra,0x2
    80001d88:	c10080e7          	jalr	-1008(ra) # 80003994 <__memmove>
    80001d8c:	00813083          	ld	ra,8(sp)
    80001d90:	00013403          	ld	s0,0(sp)
    80001d94:	00000513          	li	a0,0
    80001d98:	01010113          	addi	sp,sp,16
    80001d9c:	00008067          	ret
    80001da0:	00002517          	auipc	a0,0x2
    80001da4:	34050513          	addi	a0,a0,832 # 800040e0 <_ZZ12printIntegermE6digits+0x90>
    80001da8:	00001097          	auipc	ra,0x1
    80001dac:	8e4080e7          	jalr	-1820(ra) # 8000268c <panic>

0000000080001db0 <trapinit>:
    80001db0:	ff010113          	addi	sp,sp,-16
    80001db4:	00813423          	sd	s0,8(sp)
    80001db8:	01010413          	addi	s0,sp,16
    80001dbc:	00813403          	ld	s0,8(sp)
    80001dc0:	00002597          	auipc	a1,0x2
    80001dc4:	34858593          	addi	a1,a1,840 # 80004108 <_ZZ12printIntegermE6digits+0xb8>
    80001dc8:	00004517          	auipc	a0,0x4
    80001dcc:	93850513          	addi	a0,a0,-1736 # 80005700 <tickslock>
    80001dd0:	01010113          	addi	sp,sp,16
    80001dd4:	00001317          	auipc	t1,0x1
    80001dd8:	5c430067          	jr	1476(t1) # 80003398 <initlock>

0000000080001ddc <trapinithart>:
    80001ddc:	ff010113          	addi	sp,sp,-16
    80001de0:	00813423          	sd	s0,8(sp)
    80001de4:	01010413          	addi	s0,sp,16
    80001de8:	00000797          	auipc	a5,0x0
    80001dec:	2f878793          	addi	a5,a5,760 # 800020e0 <kernelvec>
    80001df0:	10579073          	csrw	stvec,a5
    80001df4:	00813403          	ld	s0,8(sp)
    80001df8:	01010113          	addi	sp,sp,16
    80001dfc:	00008067          	ret

0000000080001e00 <usertrap>:
    80001e00:	ff010113          	addi	sp,sp,-16
    80001e04:	00813423          	sd	s0,8(sp)
    80001e08:	01010413          	addi	s0,sp,16
    80001e0c:	00813403          	ld	s0,8(sp)
    80001e10:	01010113          	addi	sp,sp,16
    80001e14:	00008067          	ret

0000000080001e18 <usertrapret>:
    80001e18:	ff010113          	addi	sp,sp,-16
    80001e1c:	00813423          	sd	s0,8(sp)
    80001e20:	01010413          	addi	s0,sp,16
    80001e24:	00813403          	ld	s0,8(sp)
    80001e28:	01010113          	addi	sp,sp,16
    80001e2c:	00008067          	ret

0000000080001e30 <kerneltrap>:
    80001e30:	fe010113          	addi	sp,sp,-32
    80001e34:	00813823          	sd	s0,16(sp)
    80001e38:	00113c23          	sd	ra,24(sp)
    80001e3c:	00913423          	sd	s1,8(sp)
    80001e40:	02010413          	addi	s0,sp,32
    80001e44:	142025f3          	csrr	a1,scause
    80001e48:	100027f3          	csrr	a5,sstatus
    80001e4c:	0027f793          	andi	a5,a5,2
    80001e50:	10079c63          	bnez	a5,80001f68 <kerneltrap+0x138>
    80001e54:	142027f3          	csrr	a5,scause
    80001e58:	0207ce63          	bltz	a5,80001e94 <kerneltrap+0x64>
    80001e5c:	00002517          	auipc	a0,0x2
    80001e60:	2f450513          	addi	a0,a0,756 # 80004150 <_ZZ12printIntegermE6digits+0x100>
    80001e64:	00001097          	auipc	ra,0x1
    80001e68:	884080e7          	jalr	-1916(ra) # 800026e8 <__printf>
    80001e6c:	141025f3          	csrr	a1,sepc
    80001e70:	14302673          	csrr	a2,stval
    80001e74:	00002517          	auipc	a0,0x2
    80001e78:	2ec50513          	addi	a0,a0,748 # 80004160 <_ZZ12printIntegermE6digits+0x110>
    80001e7c:	00001097          	auipc	ra,0x1
    80001e80:	86c080e7          	jalr	-1940(ra) # 800026e8 <__printf>
    80001e84:	00002517          	auipc	a0,0x2
    80001e88:	2f450513          	addi	a0,a0,756 # 80004178 <_ZZ12printIntegermE6digits+0x128>
    80001e8c:	00001097          	auipc	ra,0x1
    80001e90:	800080e7          	jalr	-2048(ra) # 8000268c <panic>
    80001e94:	0ff7f713          	andi	a4,a5,255
    80001e98:	00900693          	li	a3,9
    80001e9c:	04d70063          	beq	a4,a3,80001edc <kerneltrap+0xac>
    80001ea0:	fff00713          	li	a4,-1
    80001ea4:	03f71713          	slli	a4,a4,0x3f
    80001ea8:	00170713          	addi	a4,a4,1
    80001eac:	fae798e3          	bne	a5,a4,80001e5c <kerneltrap+0x2c>
    80001eb0:	00000097          	auipc	ra,0x0
    80001eb4:	e00080e7          	jalr	-512(ra) # 80001cb0 <cpuid>
    80001eb8:	06050663          	beqz	a0,80001f24 <kerneltrap+0xf4>
    80001ebc:	144027f3          	csrr	a5,sip
    80001ec0:	ffd7f793          	andi	a5,a5,-3
    80001ec4:	14479073          	csrw	sip,a5
    80001ec8:	01813083          	ld	ra,24(sp)
    80001ecc:	01013403          	ld	s0,16(sp)
    80001ed0:	00813483          	ld	s1,8(sp)
    80001ed4:	02010113          	addi	sp,sp,32
    80001ed8:	00008067          	ret
    80001edc:	00000097          	auipc	ra,0x0
    80001ee0:	3c8080e7          	jalr	968(ra) # 800022a4 <plic_claim>
    80001ee4:	00a00793          	li	a5,10
    80001ee8:	00050493          	mv	s1,a0
    80001eec:	06f50863          	beq	a0,a5,80001f5c <kerneltrap+0x12c>
    80001ef0:	fc050ce3          	beqz	a0,80001ec8 <kerneltrap+0x98>
    80001ef4:	00050593          	mv	a1,a0
    80001ef8:	00002517          	auipc	a0,0x2
    80001efc:	23850513          	addi	a0,a0,568 # 80004130 <_ZZ12printIntegermE6digits+0xe0>
    80001f00:	00000097          	auipc	ra,0x0
    80001f04:	7e8080e7          	jalr	2024(ra) # 800026e8 <__printf>
    80001f08:	01013403          	ld	s0,16(sp)
    80001f0c:	01813083          	ld	ra,24(sp)
    80001f10:	00048513          	mv	a0,s1
    80001f14:	00813483          	ld	s1,8(sp)
    80001f18:	02010113          	addi	sp,sp,32
    80001f1c:	00000317          	auipc	t1,0x0
    80001f20:	3c030067          	jr	960(t1) # 800022dc <plic_complete>
    80001f24:	00003517          	auipc	a0,0x3
    80001f28:	7dc50513          	addi	a0,a0,2012 # 80005700 <tickslock>
    80001f2c:	00001097          	auipc	ra,0x1
    80001f30:	490080e7          	jalr	1168(ra) # 800033bc <acquire>
    80001f34:	00002717          	auipc	a4,0x2
    80001f38:	6d070713          	addi	a4,a4,1744 # 80004604 <ticks>
    80001f3c:	00072783          	lw	a5,0(a4)
    80001f40:	00003517          	auipc	a0,0x3
    80001f44:	7c050513          	addi	a0,a0,1984 # 80005700 <tickslock>
    80001f48:	0017879b          	addiw	a5,a5,1
    80001f4c:	00f72023          	sw	a5,0(a4)
    80001f50:	00001097          	auipc	ra,0x1
    80001f54:	538080e7          	jalr	1336(ra) # 80003488 <release>
    80001f58:	f65ff06f          	j	80001ebc <kerneltrap+0x8c>
    80001f5c:	00001097          	auipc	ra,0x1
    80001f60:	094080e7          	jalr	148(ra) # 80002ff0 <uartintr>
    80001f64:	fa5ff06f          	j	80001f08 <kerneltrap+0xd8>
    80001f68:	00002517          	auipc	a0,0x2
    80001f6c:	1a850513          	addi	a0,a0,424 # 80004110 <_ZZ12printIntegermE6digits+0xc0>
    80001f70:	00000097          	auipc	ra,0x0
    80001f74:	71c080e7          	jalr	1820(ra) # 8000268c <panic>

0000000080001f78 <clockintr>:
    80001f78:	fe010113          	addi	sp,sp,-32
    80001f7c:	00813823          	sd	s0,16(sp)
    80001f80:	00913423          	sd	s1,8(sp)
    80001f84:	00113c23          	sd	ra,24(sp)
    80001f88:	02010413          	addi	s0,sp,32
    80001f8c:	00003497          	auipc	s1,0x3
    80001f90:	77448493          	addi	s1,s1,1908 # 80005700 <tickslock>
    80001f94:	00048513          	mv	a0,s1
    80001f98:	00001097          	auipc	ra,0x1
    80001f9c:	424080e7          	jalr	1060(ra) # 800033bc <acquire>
    80001fa0:	00002717          	auipc	a4,0x2
    80001fa4:	66470713          	addi	a4,a4,1636 # 80004604 <ticks>
    80001fa8:	00072783          	lw	a5,0(a4)
    80001fac:	01013403          	ld	s0,16(sp)
    80001fb0:	01813083          	ld	ra,24(sp)
    80001fb4:	00048513          	mv	a0,s1
    80001fb8:	0017879b          	addiw	a5,a5,1
    80001fbc:	00813483          	ld	s1,8(sp)
    80001fc0:	00f72023          	sw	a5,0(a4)
    80001fc4:	02010113          	addi	sp,sp,32
    80001fc8:	00001317          	auipc	t1,0x1
    80001fcc:	4c030067          	jr	1216(t1) # 80003488 <release>

0000000080001fd0 <devintr>:
    80001fd0:	142027f3          	csrr	a5,scause
    80001fd4:	00000513          	li	a0,0
    80001fd8:	0007c463          	bltz	a5,80001fe0 <devintr+0x10>
    80001fdc:	00008067          	ret
    80001fe0:	fe010113          	addi	sp,sp,-32
    80001fe4:	00813823          	sd	s0,16(sp)
    80001fe8:	00113c23          	sd	ra,24(sp)
    80001fec:	00913423          	sd	s1,8(sp)
    80001ff0:	02010413          	addi	s0,sp,32
    80001ff4:	0ff7f713          	andi	a4,a5,255
    80001ff8:	00900693          	li	a3,9
    80001ffc:	04d70c63          	beq	a4,a3,80002054 <devintr+0x84>
    80002000:	fff00713          	li	a4,-1
    80002004:	03f71713          	slli	a4,a4,0x3f
    80002008:	00170713          	addi	a4,a4,1
    8000200c:	00e78c63          	beq	a5,a4,80002024 <devintr+0x54>
    80002010:	01813083          	ld	ra,24(sp)
    80002014:	01013403          	ld	s0,16(sp)
    80002018:	00813483          	ld	s1,8(sp)
    8000201c:	02010113          	addi	sp,sp,32
    80002020:	00008067          	ret
    80002024:	00000097          	auipc	ra,0x0
    80002028:	c8c080e7          	jalr	-884(ra) # 80001cb0 <cpuid>
    8000202c:	06050663          	beqz	a0,80002098 <devintr+0xc8>
    80002030:	144027f3          	csrr	a5,sip
    80002034:	ffd7f793          	andi	a5,a5,-3
    80002038:	14479073          	csrw	sip,a5
    8000203c:	01813083          	ld	ra,24(sp)
    80002040:	01013403          	ld	s0,16(sp)
    80002044:	00813483          	ld	s1,8(sp)
    80002048:	00200513          	li	a0,2
    8000204c:	02010113          	addi	sp,sp,32
    80002050:	00008067          	ret
    80002054:	00000097          	auipc	ra,0x0
    80002058:	250080e7          	jalr	592(ra) # 800022a4 <plic_claim>
    8000205c:	00a00793          	li	a5,10
    80002060:	00050493          	mv	s1,a0
    80002064:	06f50663          	beq	a0,a5,800020d0 <devintr+0x100>
    80002068:	00100513          	li	a0,1
    8000206c:	fa0482e3          	beqz	s1,80002010 <devintr+0x40>
    80002070:	00048593          	mv	a1,s1
    80002074:	00002517          	auipc	a0,0x2
    80002078:	0bc50513          	addi	a0,a0,188 # 80004130 <_ZZ12printIntegermE6digits+0xe0>
    8000207c:	00000097          	auipc	ra,0x0
    80002080:	66c080e7          	jalr	1644(ra) # 800026e8 <__printf>
    80002084:	00048513          	mv	a0,s1
    80002088:	00000097          	auipc	ra,0x0
    8000208c:	254080e7          	jalr	596(ra) # 800022dc <plic_complete>
    80002090:	00100513          	li	a0,1
    80002094:	f7dff06f          	j	80002010 <devintr+0x40>
    80002098:	00003517          	auipc	a0,0x3
    8000209c:	66850513          	addi	a0,a0,1640 # 80005700 <tickslock>
    800020a0:	00001097          	auipc	ra,0x1
    800020a4:	31c080e7          	jalr	796(ra) # 800033bc <acquire>
    800020a8:	00002717          	auipc	a4,0x2
    800020ac:	55c70713          	addi	a4,a4,1372 # 80004604 <ticks>
    800020b0:	00072783          	lw	a5,0(a4)
    800020b4:	00003517          	auipc	a0,0x3
    800020b8:	64c50513          	addi	a0,a0,1612 # 80005700 <tickslock>
    800020bc:	0017879b          	addiw	a5,a5,1
    800020c0:	00f72023          	sw	a5,0(a4)
    800020c4:	00001097          	auipc	ra,0x1
    800020c8:	3c4080e7          	jalr	964(ra) # 80003488 <release>
    800020cc:	f65ff06f          	j	80002030 <devintr+0x60>
    800020d0:	00001097          	auipc	ra,0x1
    800020d4:	f20080e7          	jalr	-224(ra) # 80002ff0 <uartintr>
    800020d8:	fadff06f          	j	80002084 <devintr+0xb4>
    800020dc:	0000                	unimp
	...

00000000800020e0 <kernelvec>:
    800020e0:	f0010113          	addi	sp,sp,-256
    800020e4:	00113023          	sd	ra,0(sp)
    800020e8:	00213423          	sd	sp,8(sp)
    800020ec:	00313823          	sd	gp,16(sp)
    800020f0:	00413c23          	sd	tp,24(sp)
    800020f4:	02513023          	sd	t0,32(sp)
    800020f8:	02613423          	sd	t1,40(sp)
    800020fc:	02713823          	sd	t2,48(sp)
    80002100:	02813c23          	sd	s0,56(sp)
    80002104:	04913023          	sd	s1,64(sp)
    80002108:	04a13423          	sd	a0,72(sp)
    8000210c:	04b13823          	sd	a1,80(sp)
    80002110:	04c13c23          	sd	a2,88(sp)
    80002114:	06d13023          	sd	a3,96(sp)
    80002118:	06e13423          	sd	a4,104(sp)
    8000211c:	06f13823          	sd	a5,112(sp)
    80002120:	07013c23          	sd	a6,120(sp)
    80002124:	09113023          	sd	a7,128(sp)
    80002128:	09213423          	sd	s2,136(sp)
    8000212c:	09313823          	sd	s3,144(sp)
    80002130:	09413c23          	sd	s4,152(sp)
    80002134:	0b513023          	sd	s5,160(sp)
    80002138:	0b613423          	sd	s6,168(sp)
    8000213c:	0b713823          	sd	s7,176(sp)
    80002140:	0b813c23          	sd	s8,184(sp)
    80002144:	0d913023          	sd	s9,192(sp)
    80002148:	0da13423          	sd	s10,200(sp)
    8000214c:	0db13823          	sd	s11,208(sp)
    80002150:	0dc13c23          	sd	t3,216(sp)
    80002154:	0fd13023          	sd	t4,224(sp)
    80002158:	0fe13423          	sd	t5,232(sp)
    8000215c:	0ff13823          	sd	t6,240(sp)
    80002160:	cd1ff0ef          	jal	ra,80001e30 <kerneltrap>
    80002164:	00013083          	ld	ra,0(sp)
    80002168:	00813103          	ld	sp,8(sp)
    8000216c:	01013183          	ld	gp,16(sp)
    80002170:	02013283          	ld	t0,32(sp)
    80002174:	02813303          	ld	t1,40(sp)
    80002178:	03013383          	ld	t2,48(sp)
    8000217c:	03813403          	ld	s0,56(sp)
    80002180:	04013483          	ld	s1,64(sp)
    80002184:	04813503          	ld	a0,72(sp)
    80002188:	05013583          	ld	a1,80(sp)
    8000218c:	05813603          	ld	a2,88(sp)
    80002190:	06013683          	ld	a3,96(sp)
    80002194:	06813703          	ld	a4,104(sp)
    80002198:	07013783          	ld	a5,112(sp)
    8000219c:	07813803          	ld	a6,120(sp)
    800021a0:	08013883          	ld	a7,128(sp)
    800021a4:	08813903          	ld	s2,136(sp)
    800021a8:	09013983          	ld	s3,144(sp)
    800021ac:	09813a03          	ld	s4,152(sp)
    800021b0:	0a013a83          	ld	s5,160(sp)
    800021b4:	0a813b03          	ld	s6,168(sp)
    800021b8:	0b013b83          	ld	s7,176(sp)
    800021bc:	0b813c03          	ld	s8,184(sp)
    800021c0:	0c013c83          	ld	s9,192(sp)
    800021c4:	0c813d03          	ld	s10,200(sp)
    800021c8:	0d013d83          	ld	s11,208(sp)
    800021cc:	0d813e03          	ld	t3,216(sp)
    800021d0:	0e013e83          	ld	t4,224(sp)
    800021d4:	0e813f03          	ld	t5,232(sp)
    800021d8:	0f013f83          	ld	t6,240(sp)
    800021dc:	10010113          	addi	sp,sp,256
    800021e0:	10200073          	sret
    800021e4:	00000013          	nop
    800021e8:	00000013          	nop
    800021ec:	00000013          	nop

00000000800021f0 <timervec>:
    800021f0:	34051573          	csrrw	a0,mscratch,a0
    800021f4:	00b53023          	sd	a1,0(a0)
    800021f8:	00c53423          	sd	a2,8(a0)
    800021fc:	00d53823          	sd	a3,16(a0)
    80002200:	01853583          	ld	a1,24(a0)
    80002204:	02053603          	ld	a2,32(a0)
    80002208:	0005b683          	ld	a3,0(a1)
    8000220c:	00c686b3          	add	a3,a3,a2
    80002210:	00d5b023          	sd	a3,0(a1)
    80002214:	00200593          	li	a1,2
    80002218:	14459073          	csrw	sip,a1
    8000221c:	01053683          	ld	a3,16(a0)
    80002220:	00853603          	ld	a2,8(a0)
    80002224:	00053583          	ld	a1,0(a0)
    80002228:	34051573          	csrrw	a0,mscratch,a0
    8000222c:	30200073          	mret

0000000080002230 <plicinit>:
    80002230:	ff010113          	addi	sp,sp,-16
    80002234:	00813423          	sd	s0,8(sp)
    80002238:	01010413          	addi	s0,sp,16
    8000223c:	00813403          	ld	s0,8(sp)
    80002240:	0c0007b7          	lui	a5,0xc000
    80002244:	00100713          	li	a4,1
    80002248:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000224c:	00e7a223          	sw	a4,4(a5)
    80002250:	01010113          	addi	sp,sp,16
    80002254:	00008067          	ret

0000000080002258 <plicinithart>:
    80002258:	ff010113          	addi	sp,sp,-16
    8000225c:	00813023          	sd	s0,0(sp)
    80002260:	00113423          	sd	ra,8(sp)
    80002264:	01010413          	addi	s0,sp,16
    80002268:	00000097          	auipc	ra,0x0
    8000226c:	a48080e7          	jalr	-1464(ra) # 80001cb0 <cpuid>
    80002270:	0085171b          	slliw	a4,a0,0x8
    80002274:	0c0027b7          	lui	a5,0xc002
    80002278:	00e787b3          	add	a5,a5,a4
    8000227c:	40200713          	li	a4,1026
    80002280:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80002284:	00813083          	ld	ra,8(sp)
    80002288:	00013403          	ld	s0,0(sp)
    8000228c:	00d5151b          	slliw	a0,a0,0xd
    80002290:	0c2017b7          	lui	a5,0xc201
    80002294:	00a78533          	add	a0,a5,a0
    80002298:	00052023          	sw	zero,0(a0)
    8000229c:	01010113          	addi	sp,sp,16
    800022a0:	00008067          	ret

00000000800022a4 <plic_claim>:
    800022a4:	ff010113          	addi	sp,sp,-16
    800022a8:	00813023          	sd	s0,0(sp)
    800022ac:	00113423          	sd	ra,8(sp)
    800022b0:	01010413          	addi	s0,sp,16
    800022b4:	00000097          	auipc	ra,0x0
    800022b8:	9fc080e7          	jalr	-1540(ra) # 80001cb0 <cpuid>
    800022bc:	00813083          	ld	ra,8(sp)
    800022c0:	00013403          	ld	s0,0(sp)
    800022c4:	00d5151b          	slliw	a0,a0,0xd
    800022c8:	0c2017b7          	lui	a5,0xc201
    800022cc:	00a78533          	add	a0,a5,a0
    800022d0:	00452503          	lw	a0,4(a0)
    800022d4:	01010113          	addi	sp,sp,16
    800022d8:	00008067          	ret

00000000800022dc <plic_complete>:
    800022dc:	fe010113          	addi	sp,sp,-32
    800022e0:	00813823          	sd	s0,16(sp)
    800022e4:	00913423          	sd	s1,8(sp)
    800022e8:	00113c23          	sd	ra,24(sp)
    800022ec:	02010413          	addi	s0,sp,32
    800022f0:	00050493          	mv	s1,a0
    800022f4:	00000097          	auipc	ra,0x0
    800022f8:	9bc080e7          	jalr	-1604(ra) # 80001cb0 <cpuid>
    800022fc:	01813083          	ld	ra,24(sp)
    80002300:	01013403          	ld	s0,16(sp)
    80002304:	00d5179b          	slliw	a5,a0,0xd
    80002308:	0c201737          	lui	a4,0xc201
    8000230c:	00f707b3          	add	a5,a4,a5
    80002310:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80002314:	00813483          	ld	s1,8(sp)
    80002318:	02010113          	addi	sp,sp,32
    8000231c:	00008067          	ret

0000000080002320 <consolewrite>:
    80002320:	fb010113          	addi	sp,sp,-80
    80002324:	04813023          	sd	s0,64(sp)
    80002328:	04113423          	sd	ra,72(sp)
    8000232c:	02913c23          	sd	s1,56(sp)
    80002330:	03213823          	sd	s2,48(sp)
    80002334:	03313423          	sd	s3,40(sp)
    80002338:	03413023          	sd	s4,32(sp)
    8000233c:	01513c23          	sd	s5,24(sp)
    80002340:	05010413          	addi	s0,sp,80
    80002344:	06c05c63          	blez	a2,800023bc <consolewrite+0x9c>
    80002348:	00060993          	mv	s3,a2
    8000234c:	00050a13          	mv	s4,a0
    80002350:	00058493          	mv	s1,a1
    80002354:	00000913          	li	s2,0
    80002358:	fff00a93          	li	s5,-1
    8000235c:	01c0006f          	j	80002378 <consolewrite+0x58>
    80002360:	fbf44503          	lbu	a0,-65(s0)
    80002364:	0019091b          	addiw	s2,s2,1
    80002368:	00148493          	addi	s1,s1,1
    8000236c:	00001097          	auipc	ra,0x1
    80002370:	a9c080e7          	jalr	-1380(ra) # 80002e08 <uartputc>
    80002374:	03298063          	beq	s3,s2,80002394 <consolewrite+0x74>
    80002378:	00048613          	mv	a2,s1
    8000237c:	00100693          	li	a3,1
    80002380:	000a0593          	mv	a1,s4
    80002384:	fbf40513          	addi	a0,s0,-65
    80002388:	00000097          	auipc	ra,0x0
    8000238c:	9e0080e7          	jalr	-1568(ra) # 80001d68 <either_copyin>
    80002390:	fd5518e3          	bne	a0,s5,80002360 <consolewrite+0x40>
    80002394:	04813083          	ld	ra,72(sp)
    80002398:	04013403          	ld	s0,64(sp)
    8000239c:	03813483          	ld	s1,56(sp)
    800023a0:	02813983          	ld	s3,40(sp)
    800023a4:	02013a03          	ld	s4,32(sp)
    800023a8:	01813a83          	ld	s5,24(sp)
    800023ac:	00090513          	mv	a0,s2
    800023b0:	03013903          	ld	s2,48(sp)
    800023b4:	05010113          	addi	sp,sp,80
    800023b8:	00008067          	ret
    800023bc:	00000913          	li	s2,0
    800023c0:	fd5ff06f          	j	80002394 <consolewrite+0x74>

00000000800023c4 <consoleread>:
    800023c4:	f9010113          	addi	sp,sp,-112
    800023c8:	06813023          	sd	s0,96(sp)
    800023cc:	04913c23          	sd	s1,88(sp)
    800023d0:	05213823          	sd	s2,80(sp)
    800023d4:	05313423          	sd	s3,72(sp)
    800023d8:	05413023          	sd	s4,64(sp)
    800023dc:	03513c23          	sd	s5,56(sp)
    800023e0:	03613823          	sd	s6,48(sp)
    800023e4:	03713423          	sd	s7,40(sp)
    800023e8:	03813023          	sd	s8,32(sp)
    800023ec:	06113423          	sd	ra,104(sp)
    800023f0:	01913c23          	sd	s9,24(sp)
    800023f4:	07010413          	addi	s0,sp,112
    800023f8:	00060b93          	mv	s7,a2
    800023fc:	00050913          	mv	s2,a0
    80002400:	00058c13          	mv	s8,a1
    80002404:	00060b1b          	sext.w	s6,a2
    80002408:	00003497          	auipc	s1,0x3
    8000240c:	31048493          	addi	s1,s1,784 # 80005718 <cons>
    80002410:	00400993          	li	s3,4
    80002414:	fff00a13          	li	s4,-1
    80002418:	00a00a93          	li	s5,10
    8000241c:	05705e63          	blez	s7,80002478 <consoleread+0xb4>
    80002420:	09c4a703          	lw	a4,156(s1)
    80002424:	0984a783          	lw	a5,152(s1)
    80002428:	0007071b          	sext.w	a4,a4
    8000242c:	08e78463          	beq	a5,a4,800024b4 <consoleread+0xf0>
    80002430:	07f7f713          	andi	a4,a5,127
    80002434:	00e48733          	add	a4,s1,a4
    80002438:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000243c:	0017869b          	addiw	a3,a5,1
    80002440:	08d4ac23          	sw	a3,152(s1)
    80002444:	00070c9b          	sext.w	s9,a4
    80002448:	0b370663          	beq	a4,s3,800024f4 <consoleread+0x130>
    8000244c:	00100693          	li	a3,1
    80002450:	f9f40613          	addi	a2,s0,-97
    80002454:	000c0593          	mv	a1,s8
    80002458:	00090513          	mv	a0,s2
    8000245c:	f8e40fa3          	sb	a4,-97(s0)
    80002460:	00000097          	auipc	ra,0x0
    80002464:	8bc080e7          	jalr	-1860(ra) # 80001d1c <either_copyout>
    80002468:	01450863          	beq	a0,s4,80002478 <consoleread+0xb4>
    8000246c:	001c0c13          	addi	s8,s8,1
    80002470:	fffb8b9b          	addiw	s7,s7,-1
    80002474:	fb5c94e3          	bne	s9,s5,8000241c <consoleread+0x58>
    80002478:	000b851b          	sext.w	a0,s7
    8000247c:	06813083          	ld	ra,104(sp)
    80002480:	06013403          	ld	s0,96(sp)
    80002484:	05813483          	ld	s1,88(sp)
    80002488:	05013903          	ld	s2,80(sp)
    8000248c:	04813983          	ld	s3,72(sp)
    80002490:	04013a03          	ld	s4,64(sp)
    80002494:	03813a83          	ld	s5,56(sp)
    80002498:	02813b83          	ld	s7,40(sp)
    8000249c:	02013c03          	ld	s8,32(sp)
    800024a0:	01813c83          	ld	s9,24(sp)
    800024a4:	40ab053b          	subw	a0,s6,a0
    800024a8:	03013b03          	ld	s6,48(sp)
    800024ac:	07010113          	addi	sp,sp,112
    800024b0:	00008067          	ret
    800024b4:	00001097          	auipc	ra,0x1
    800024b8:	1d8080e7          	jalr	472(ra) # 8000368c <push_on>
    800024bc:	0984a703          	lw	a4,152(s1)
    800024c0:	09c4a783          	lw	a5,156(s1)
    800024c4:	0007879b          	sext.w	a5,a5
    800024c8:	fef70ce3          	beq	a4,a5,800024c0 <consoleread+0xfc>
    800024cc:	00001097          	auipc	ra,0x1
    800024d0:	234080e7          	jalr	564(ra) # 80003700 <pop_on>
    800024d4:	0984a783          	lw	a5,152(s1)
    800024d8:	07f7f713          	andi	a4,a5,127
    800024dc:	00e48733          	add	a4,s1,a4
    800024e0:	01874703          	lbu	a4,24(a4)
    800024e4:	0017869b          	addiw	a3,a5,1
    800024e8:	08d4ac23          	sw	a3,152(s1)
    800024ec:	00070c9b          	sext.w	s9,a4
    800024f0:	f5371ee3          	bne	a4,s3,8000244c <consoleread+0x88>
    800024f4:	000b851b          	sext.w	a0,s7
    800024f8:	f96bf2e3          	bgeu	s7,s6,8000247c <consoleread+0xb8>
    800024fc:	08f4ac23          	sw	a5,152(s1)
    80002500:	f7dff06f          	j	8000247c <consoleread+0xb8>

0000000080002504 <consputc>:
    80002504:	10000793          	li	a5,256
    80002508:	00f50663          	beq	a0,a5,80002514 <consputc+0x10>
    8000250c:	00001317          	auipc	t1,0x1
    80002510:	9f430067          	jr	-1548(t1) # 80002f00 <uartputc_sync>
    80002514:	ff010113          	addi	sp,sp,-16
    80002518:	00113423          	sd	ra,8(sp)
    8000251c:	00813023          	sd	s0,0(sp)
    80002520:	01010413          	addi	s0,sp,16
    80002524:	00800513          	li	a0,8
    80002528:	00001097          	auipc	ra,0x1
    8000252c:	9d8080e7          	jalr	-1576(ra) # 80002f00 <uartputc_sync>
    80002530:	02000513          	li	a0,32
    80002534:	00001097          	auipc	ra,0x1
    80002538:	9cc080e7          	jalr	-1588(ra) # 80002f00 <uartputc_sync>
    8000253c:	00013403          	ld	s0,0(sp)
    80002540:	00813083          	ld	ra,8(sp)
    80002544:	00800513          	li	a0,8
    80002548:	01010113          	addi	sp,sp,16
    8000254c:	00001317          	auipc	t1,0x1
    80002550:	9b430067          	jr	-1612(t1) # 80002f00 <uartputc_sync>

0000000080002554 <consoleintr>:
    80002554:	fe010113          	addi	sp,sp,-32
    80002558:	00813823          	sd	s0,16(sp)
    8000255c:	00913423          	sd	s1,8(sp)
    80002560:	01213023          	sd	s2,0(sp)
    80002564:	00113c23          	sd	ra,24(sp)
    80002568:	02010413          	addi	s0,sp,32
    8000256c:	00003917          	auipc	s2,0x3
    80002570:	1ac90913          	addi	s2,s2,428 # 80005718 <cons>
    80002574:	00050493          	mv	s1,a0
    80002578:	00090513          	mv	a0,s2
    8000257c:	00001097          	auipc	ra,0x1
    80002580:	e40080e7          	jalr	-448(ra) # 800033bc <acquire>
    80002584:	02048c63          	beqz	s1,800025bc <consoleintr+0x68>
    80002588:	0a092783          	lw	a5,160(s2)
    8000258c:	09892703          	lw	a4,152(s2)
    80002590:	07f00693          	li	a3,127
    80002594:	40e7873b          	subw	a4,a5,a4
    80002598:	02e6e263          	bltu	a3,a4,800025bc <consoleintr+0x68>
    8000259c:	00d00713          	li	a4,13
    800025a0:	04e48063          	beq	s1,a4,800025e0 <consoleintr+0x8c>
    800025a4:	07f7f713          	andi	a4,a5,127
    800025a8:	00e90733          	add	a4,s2,a4
    800025ac:	0017879b          	addiw	a5,a5,1
    800025b0:	0af92023          	sw	a5,160(s2)
    800025b4:	00970c23          	sb	s1,24(a4)
    800025b8:	08f92e23          	sw	a5,156(s2)
    800025bc:	01013403          	ld	s0,16(sp)
    800025c0:	01813083          	ld	ra,24(sp)
    800025c4:	00813483          	ld	s1,8(sp)
    800025c8:	00013903          	ld	s2,0(sp)
    800025cc:	00003517          	auipc	a0,0x3
    800025d0:	14c50513          	addi	a0,a0,332 # 80005718 <cons>
    800025d4:	02010113          	addi	sp,sp,32
    800025d8:	00001317          	auipc	t1,0x1
    800025dc:	eb030067          	jr	-336(t1) # 80003488 <release>
    800025e0:	00a00493          	li	s1,10
    800025e4:	fc1ff06f          	j	800025a4 <consoleintr+0x50>

00000000800025e8 <consoleinit>:
    800025e8:	fe010113          	addi	sp,sp,-32
    800025ec:	00113c23          	sd	ra,24(sp)
    800025f0:	00813823          	sd	s0,16(sp)
    800025f4:	00913423          	sd	s1,8(sp)
    800025f8:	02010413          	addi	s0,sp,32
    800025fc:	00003497          	auipc	s1,0x3
    80002600:	11c48493          	addi	s1,s1,284 # 80005718 <cons>
    80002604:	00048513          	mv	a0,s1
    80002608:	00002597          	auipc	a1,0x2
    8000260c:	b8058593          	addi	a1,a1,-1152 # 80004188 <_ZZ12printIntegermE6digits+0x138>
    80002610:	00001097          	auipc	ra,0x1
    80002614:	d88080e7          	jalr	-632(ra) # 80003398 <initlock>
    80002618:	00000097          	auipc	ra,0x0
    8000261c:	7ac080e7          	jalr	1964(ra) # 80002dc4 <uartinit>
    80002620:	01813083          	ld	ra,24(sp)
    80002624:	01013403          	ld	s0,16(sp)
    80002628:	00000797          	auipc	a5,0x0
    8000262c:	d9c78793          	addi	a5,a5,-612 # 800023c4 <consoleread>
    80002630:	0af4bc23          	sd	a5,184(s1)
    80002634:	00000797          	auipc	a5,0x0
    80002638:	cec78793          	addi	a5,a5,-788 # 80002320 <consolewrite>
    8000263c:	0cf4b023          	sd	a5,192(s1)
    80002640:	00813483          	ld	s1,8(sp)
    80002644:	02010113          	addi	sp,sp,32
    80002648:	00008067          	ret

000000008000264c <console_read>:
    8000264c:	ff010113          	addi	sp,sp,-16
    80002650:	00813423          	sd	s0,8(sp)
    80002654:	01010413          	addi	s0,sp,16
    80002658:	00813403          	ld	s0,8(sp)
    8000265c:	00003317          	auipc	t1,0x3
    80002660:	17433303          	ld	t1,372(t1) # 800057d0 <devsw+0x10>
    80002664:	01010113          	addi	sp,sp,16
    80002668:	00030067          	jr	t1

000000008000266c <console_write>:
    8000266c:	ff010113          	addi	sp,sp,-16
    80002670:	00813423          	sd	s0,8(sp)
    80002674:	01010413          	addi	s0,sp,16
    80002678:	00813403          	ld	s0,8(sp)
    8000267c:	00003317          	auipc	t1,0x3
    80002680:	15c33303          	ld	t1,348(t1) # 800057d8 <devsw+0x18>
    80002684:	01010113          	addi	sp,sp,16
    80002688:	00030067          	jr	t1

000000008000268c <panic>:
    8000268c:	fe010113          	addi	sp,sp,-32
    80002690:	00113c23          	sd	ra,24(sp)
    80002694:	00813823          	sd	s0,16(sp)
    80002698:	00913423          	sd	s1,8(sp)
    8000269c:	02010413          	addi	s0,sp,32
    800026a0:	00050493          	mv	s1,a0
    800026a4:	00002517          	auipc	a0,0x2
    800026a8:	aec50513          	addi	a0,a0,-1300 # 80004190 <_ZZ12printIntegermE6digits+0x140>
    800026ac:	00003797          	auipc	a5,0x3
    800026b0:	1c07a623          	sw	zero,460(a5) # 80005878 <pr+0x18>
    800026b4:	00000097          	auipc	ra,0x0
    800026b8:	034080e7          	jalr	52(ra) # 800026e8 <__printf>
    800026bc:	00048513          	mv	a0,s1
    800026c0:	00000097          	auipc	ra,0x0
    800026c4:	028080e7          	jalr	40(ra) # 800026e8 <__printf>
    800026c8:	00002517          	auipc	a0,0x2
    800026cc:	aa850513          	addi	a0,a0,-1368 # 80004170 <_ZZ12printIntegermE6digits+0x120>
    800026d0:	00000097          	auipc	ra,0x0
    800026d4:	018080e7          	jalr	24(ra) # 800026e8 <__printf>
    800026d8:	00100793          	li	a5,1
    800026dc:	00002717          	auipc	a4,0x2
    800026e0:	f2f72623          	sw	a5,-212(a4) # 80004608 <panicked>
    800026e4:	0000006f          	j	800026e4 <panic+0x58>

00000000800026e8 <__printf>:
    800026e8:	f3010113          	addi	sp,sp,-208
    800026ec:	08813023          	sd	s0,128(sp)
    800026f0:	07313423          	sd	s3,104(sp)
    800026f4:	09010413          	addi	s0,sp,144
    800026f8:	05813023          	sd	s8,64(sp)
    800026fc:	08113423          	sd	ra,136(sp)
    80002700:	06913c23          	sd	s1,120(sp)
    80002704:	07213823          	sd	s2,112(sp)
    80002708:	07413023          	sd	s4,96(sp)
    8000270c:	05513c23          	sd	s5,88(sp)
    80002710:	05613823          	sd	s6,80(sp)
    80002714:	05713423          	sd	s7,72(sp)
    80002718:	03913c23          	sd	s9,56(sp)
    8000271c:	03a13823          	sd	s10,48(sp)
    80002720:	03b13423          	sd	s11,40(sp)
    80002724:	00003317          	auipc	t1,0x3
    80002728:	13c30313          	addi	t1,t1,316 # 80005860 <pr>
    8000272c:	01832c03          	lw	s8,24(t1)
    80002730:	00b43423          	sd	a1,8(s0)
    80002734:	00c43823          	sd	a2,16(s0)
    80002738:	00d43c23          	sd	a3,24(s0)
    8000273c:	02e43023          	sd	a4,32(s0)
    80002740:	02f43423          	sd	a5,40(s0)
    80002744:	03043823          	sd	a6,48(s0)
    80002748:	03143c23          	sd	a7,56(s0)
    8000274c:	00050993          	mv	s3,a0
    80002750:	4a0c1663          	bnez	s8,80002bfc <__printf+0x514>
    80002754:	60098c63          	beqz	s3,80002d6c <__printf+0x684>
    80002758:	0009c503          	lbu	a0,0(s3)
    8000275c:	00840793          	addi	a5,s0,8
    80002760:	f6f43c23          	sd	a5,-136(s0)
    80002764:	00000493          	li	s1,0
    80002768:	22050063          	beqz	a0,80002988 <__printf+0x2a0>
    8000276c:	00002a37          	lui	s4,0x2
    80002770:	00018ab7          	lui	s5,0x18
    80002774:	000f4b37          	lui	s6,0xf4
    80002778:	00989bb7          	lui	s7,0x989
    8000277c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80002780:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80002784:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80002788:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000278c:	00148c9b          	addiw	s9,s1,1
    80002790:	02500793          	li	a5,37
    80002794:	01998933          	add	s2,s3,s9
    80002798:	38f51263          	bne	a0,a5,80002b1c <__printf+0x434>
    8000279c:	00094783          	lbu	a5,0(s2)
    800027a0:	00078c9b          	sext.w	s9,a5
    800027a4:	1e078263          	beqz	a5,80002988 <__printf+0x2a0>
    800027a8:	0024849b          	addiw	s1,s1,2
    800027ac:	07000713          	li	a4,112
    800027b0:	00998933          	add	s2,s3,s1
    800027b4:	38e78a63          	beq	a5,a4,80002b48 <__printf+0x460>
    800027b8:	20f76863          	bltu	a4,a5,800029c8 <__printf+0x2e0>
    800027bc:	42a78863          	beq	a5,a0,80002bec <__printf+0x504>
    800027c0:	06400713          	li	a4,100
    800027c4:	40e79663          	bne	a5,a4,80002bd0 <__printf+0x4e8>
    800027c8:	f7843783          	ld	a5,-136(s0)
    800027cc:	0007a603          	lw	a2,0(a5)
    800027d0:	00878793          	addi	a5,a5,8
    800027d4:	f6f43c23          	sd	a5,-136(s0)
    800027d8:	42064a63          	bltz	a2,80002c0c <__printf+0x524>
    800027dc:	00a00713          	li	a4,10
    800027e0:	02e677bb          	remuw	a5,a2,a4
    800027e4:	00002d97          	auipc	s11,0x2
    800027e8:	9d4d8d93          	addi	s11,s11,-1580 # 800041b8 <digits>
    800027ec:	00900593          	li	a1,9
    800027f0:	0006051b          	sext.w	a0,a2
    800027f4:	00000c93          	li	s9,0
    800027f8:	02079793          	slli	a5,a5,0x20
    800027fc:	0207d793          	srli	a5,a5,0x20
    80002800:	00fd87b3          	add	a5,s11,a5
    80002804:	0007c783          	lbu	a5,0(a5)
    80002808:	02e656bb          	divuw	a3,a2,a4
    8000280c:	f8f40023          	sb	a5,-128(s0)
    80002810:	14c5d863          	bge	a1,a2,80002960 <__printf+0x278>
    80002814:	06300593          	li	a1,99
    80002818:	00100c93          	li	s9,1
    8000281c:	02e6f7bb          	remuw	a5,a3,a4
    80002820:	02079793          	slli	a5,a5,0x20
    80002824:	0207d793          	srli	a5,a5,0x20
    80002828:	00fd87b3          	add	a5,s11,a5
    8000282c:	0007c783          	lbu	a5,0(a5)
    80002830:	02e6d73b          	divuw	a4,a3,a4
    80002834:	f8f400a3          	sb	a5,-127(s0)
    80002838:	12a5f463          	bgeu	a1,a0,80002960 <__printf+0x278>
    8000283c:	00a00693          	li	a3,10
    80002840:	00900593          	li	a1,9
    80002844:	02d777bb          	remuw	a5,a4,a3
    80002848:	02079793          	slli	a5,a5,0x20
    8000284c:	0207d793          	srli	a5,a5,0x20
    80002850:	00fd87b3          	add	a5,s11,a5
    80002854:	0007c503          	lbu	a0,0(a5)
    80002858:	02d757bb          	divuw	a5,a4,a3
    8000285c:	f8a40123          	sb	a0,-126(s0)
    80002860:	48e5f263          	bgeu	a1,a4,80002ce4 <__printf+0x5fc>
    80002864:	06300513          	li	a0,99
    80002868:	02d7f5bb          	remuw	a1,a5,a3
    8000286c:	02059593          	slli	a1,a1,0x20
    80002870:	0205d593          	srli	a1,a1,0x20
    80002874:	00bd85b3          	add	a1,s11,a1
    80002878:	0005c583          	lbu	a1,0(a1)
    8000287c:	02d7d7bb          	divuw	a5,a5,a3
    80002880:	f8b401a3          	sb	a1,-125(s0)
    80002884:	48e57263          	bgeu	a0,a4,80002d08 <__printf+0x620>
    80002888:	3e700513          	li	a0,999
    8000288c:	02d7f5bb          	remuw	a1,a5,a3
    80002890:	02059593          	slli	a1,a1,0x20
    80002894:	0205d593          	srli	a1,a1,0x20
    80002898:	00bd85b3          	add	a1,s11,a1
    8000289c:	0005c583          	lbu	a1,0(a1)
    800028a0:	02d7d7bb          	divuw	a5,a5,a3
    800028a4:	f8b40223          	sb	a1,-124(s0)
    800028a8:	46e57663          	bgeu	a0,a4,80002d14 <__printf+0x62c>
    800028ac:	02d7f5bb          	remuw	a1,a5,a3
    800028b0:	02059593          	slli	a1,a1,0x20
    800028b4:	0205d593          	srli	a1,a1,0x20
    800028b8:	00bd85b3          	add	a1,s11,a1
    800028bc:	0005c583          	lbu	a1,0(a1)
    800028c0:	02d7d7bb          	divuw	a5,a5,a3
    800028c4:	f8b402a3          	sb	a1,-123(s0)
    800028c8:	46ea7863          	bgeu	s4,a4,80002d38 <__printf+0x650>
    800028cc:	02d7f5bb          	remuw	a1,a5,a3
    800028d0:	02059593          	slli	a1,a1,0x20
    800028d4:	0205d593          	srli	a1,a1,0x20
    800028d8:	00bd85b3          	add	a1,s11,a1
    800028dc:	0005c583          	lbu	a1,0(a1)
    800028e0:	02d7d7bb          	divuw	a5,a5,a3
    800028e4:	f8b40323          	sb	a1,-122(s0)
    800028e8:	3eeaf863          	bgeu	s5,a4,80002cd8 <__printf+0x5f0>
    800028ec:	02d7f5bb          	remuw	a1,a5,a3
    800028f0:	02059593          	slli	a1,a1,0x20
    800028f4:	0205d593          	srli	a1,a1,0x20
    800028f8:	00bd85b3          	add	a1,s11,a1
    800028fc:	0005c583          	lbu	a1,0(a1)
    80002900:	02d7d7bb          	divuw	a5,a5,a3
    80002904:	f8b403a3          	sb	a1,-121(s0)
    80002908:	42eb7e63          	bgeu	s6,a4,80002d44 <__printf+0x65c>
    8000290c:	02d7f5bb          	remuw	a1,a5,a3
    80002910:	02059593          	slli	a1,a1,0x20
    80002914:	0205d593          	srli	a1,a1,0x20
    80002918:	00bd85b3          	add	a1,s11,a1
    8000291c:	0005c583          	lbu	a1,0(a1)
    80002920:	02d7d7bb          	divuw	a5,a5,a3
    80002924:	f8b40423          	sb	a1,-120(s0)
    80002928:	42ebfc63          	bgeu	s7,a4,80002d60 <__printf+0x678>
    8000292c:	02079793          	slli	a5,a5,0x20
    80002930:	0207d793          	srli	a5,a5,0x20
    80002934:	00fd8db3          	add	s11,s11,a5
    80002938:	000dc703          	lbu	a4,0(s11)
    8000293c:	00a00793          	li	a5,10
    80002940:	00900c93          	li	s9,9
    80002944:	f8e404a3          	sb	a4,-119(s0)
    80002948:	00065c63          	bgez	a2,80002960 <__printf+0x278>
    8000294c:	f9040713          	addi	a4,s0,-112
    80002950:	00f70733          	add	a4,a4,a5
    80002954:	02d00693          	li	a3,45
    80002958:	fed70823          	sb	a3,-16(a4)
    8000295c:	00078c93          	mv	s9,a5
    80002960:	f8040793          	addi	a5,s0,-128
    80002964:	01978cb3          	add	s9,a5,s9
    80002968:	f7f40d13          	addi	s10,s0,-129
    8000296c:	000cc503          	lbu	a0,0(s9)
    80002970:	fffc8c93          	addi	s9,s9,-1
    80002974:	00000097          	auipc	ra,0x0
    80002978:	b90080e7          	jalr	-1136(ra) # 80002504 <consputc>
    8000297c:	ffac98e3          	bne	s9,s10,8000296c <__printf+0x284>
    80002980:	00094503          	lbu	a0,0(s2)
    80002984:	e00514e3          	bnez	a0,8000278c <__printf+0xa4>
    80002988:	1a0c1663          	bnez	s8,80002b34 <__printf+0x44c>
    8000298c:	08813083          	ld	ra,136(sp)
    80002990:	08013403          	ld	s0,128(sp)
    80002994:	07813483          	ld	s1,120(sp)
    80002998:	07013903          	ld	s2,112(sp)
    8000299c:	06813983          	ld	s3,104(sp)
    800029a0:	06013a03          	ld	s4,96(sp)
    800029a4:	05813a83          	ld	s5,88(sp)
    800029a8:	05013b03          	ld	s6,80(sp)
    800029ac:	04813b83          	ld	s7,72(sp)
    800029b0:	04013c03          	ld	s8,64(sp)
    800029b4:	03813c83          	ld	s9,56(sp)
    800029b8:	03013d03          	ld	s10,48(sp)
    800029bc:	02813d83          	ld	s11,40(sp)
    800029c0:	0d010113          	addi	sp,sp,208
    800029c4:	00008067          	ret
    800029c8:	07300713          	li	a4,115
    800029cc:	1ce78a63          	beq	a5,a4,80002ba0 <__printf+0x4b8>
    800029d0:	07800713          	li	a4,120
    800029d4:	1ee79e63          	bne	a5,a4,80002bd0 <__printf+0x4e8>
    800029d8:	f7843783          	ld	a5,-136(s0)
    800029dc:	0007a703          	lw	a4,0(a5)
    800029e0:	00878793          	addi	a5,a5,8
    800029e4:	f6f43c23          	sd	a5,-136(s0)
    800029e8:	28074263          	bltz	a4,80002c6c <__printf+0x584>
    800029ec:	00001d97          	auipc	s11,0x1
    800029f0:	7ccd8d93          	addi	s11,s11,1996 # 800041b8 <digits>
    800029f4:	00f77793          	andi	a5,a4,15
    800029f8:	00fd87b3          	add	a5,s11,a5
    800029fc:	0007c683          	lbu	a3,0(a5)
    80002a00:	00f00613          	li	a2,15
    80002a04:	0007079b          	sext.w	a5,a4
    80002a08:	f8d40023          	sb	a3,-128(s0)
    80002a0c:	0047559b          	srliw	a1,a4,0x4
    80002a10:	0047569b          	srliw	a3,a4,0x4
    80002a14:	00000c93          	li	s9,0
    80002a18:	0ee65063          	bge	a2,a4,80002af8 <__printf+0x410>
    80002a1c:	00f6f693          	andi	a3,a3,15
    80002a20:	00dd86b3          	add	a3,s11,a3
    80002a24:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80002a28:	0087d79b          	srliw	a5,a5,0x8
    80002a2c:	00100c93          	li	s9,1
    80002a30:	f8d400a3          	sb	a3,-127(s0)
    80002a34:	0cb67263          	bgeu	a2,a1,80002af8 <__printf+0x410>
    80002a38:	00f7f693          	andi	a3,a5,15
    80002a3c:	00dd86b3          	add	a3,s11,a3
    80002a40:	0006c583          	lbu	a1,0(a3)
    80002a44:	00f00613          	li	a2,15
    80002a48:	0047d69b          	srliw	a3,a5,0x4
    80002a4c:	f8b40123          	sb	a1,-126(s0)
    80002a50:	0047d593          	srli	a1,a5,0x4
    80002a54:	28f67e63          	bgeu	a2,a5,80002cf0 <__printf+0x608>
    80002a58:	00f6f693          	andi	a3,a3,15
    80002a5c:	00dd86b3          	add	a3,s11,a3
    80002a60:	0006c503          	lbu	a0,0(a3)
    80002a64:	0087d813          	srli	a6,a5,0x8
    80002a68:	0087d69b          	srliw	a3,a5,0x8
    80002a6c:	f8a401a3          	sb	a0,-125(s0)
    80002a70:	28b67663          	bgeu	a2,a1,80002cfc <__printf+0x614>
    80002a74:	00f6f693          	andi	a3,a3,15
    80002a78:	00dd86b3          	add	a3,s11,a3
    80002a7c:	0006c583          	lbu	a1,0(a3)
    80002a80:	00c7d513          	srli	a0,a5,0xc
    80002a84:	00c7d69b          	srliw	a3,a5,0xc
    80002a88:	f8b40223          	sb	a1,-124(s0)
    80002a8c:	29067a63          	bgeu	a2,a6,80002d20 <__printf+0x638>
    80002a90:	00f6f693          	andi	a3,a3,15
    80002a94:	00dd86b3          	add	a3,s11,a3
    80002a98:	0006c583          	lbu	a1,0(a3)
    80002a9c:	0107d813          	srli	a6,a5,0x10
    80002aa0:	0107d69b          	srliw	a3,a5,0x10
    80002aa4:	f8b402a3          	sb	a1,-123(s0)
    80002aa8:	28a67263          	bgeu	a2,a0,80002d2c <__printf+0x644>
    80002aac:	00f6f693          	andi	a3,a3,15
    80002ab0:	00dd86b3          	add	a3,s11,a3
    80002ab4:	0006c683          	lbu	a3,0(a3)
    80002ab8:	0147d79b          	srliw	a5,a5,0x14
    80002abc:	f8d40323          	sb	a3,-122(s0)
    80002ac0:	21067663          	bgeu	a2,a6,80002ccc <__printf+0x5e4>
    80002ac4:	02079793          	slli	a5,a5,0x20
    80002ac8:	0207d793          	srli	a5,a5,0x20
    80002acc:	00fd8db3          	add	s11,s11,a5
    80002ad0:	000dc683          	lbu	a3,0(s11)
    80002ad4:	00800793          	li	a5,8
    80002ad8:	00700c93          	li	s9,7
    80002adc:	f8d403a3          	sb	a3,-121(s0)
    80002ae0:	00075c63          	bgez	a4,80002af8 <__printf+0x410>
    80002ae4:	f9040713          	addi	a4,s0,-112
    80002ae8:	00f70733          	add	a4,a4,a5
    80002aec:	02d00693          	li	a3,45
    80002af0:	fed70823          	sb	a3,-16(a4)
    80002af4:	00078c93          	mv	s9,a5
    80002af8:	f8040793          	addi	a5,s0,-128
    80002afc:	01978cb3          	add	s9,a5,s9
    80002b00:	f7f40d13          	addi	s10,s0,-129
    80002b04:	000cc503          	lbu	a0,0(s9)
    80002b08:	fffc8c93          	addi	s9,s9,-1
    80002b0c:	00000097          	auipc	ra,0x0
    80002b10:	9f8080e7          	jalr	-1544(ra) # 80002504 <consputc>
    80002b14:	ff9d18e3          	bne	s10,s9,80002b04 <__printf+0x41c>
    80002b18:	0100006f          	j	80002b28 <__printf+0x440>
    80002b1c:	00000097          	auipc	ra,0x0
    80002b20:	9e8080e7          	jalr	-1560(ra) # 80002504 <consputc>
    80002b24:	000c8493          	mv	s1,s9
    80002b28:	00094503          	lbu	a0,0(s2)
    80002b2c:	c60510e3          	bnez	a0,8000278c <__printf+0xa4>
    80002b30:	e40c0ee3          	beqz	s8,8000298c <__printf+0x2a4>
    80002b34:	00003517          	auipc	a0,0x3
    80002b38:	d2c50513          	addi	a0,a0,-724 # 80005860 <pr>
    80002b3c:	00001097          	auipc	ra,0x1
    80002b40:	94c080e7          	jalr	-1716(ra) # 80003488 <release>
    80002b44:	e49ff06f          	j	8000298c <__printf+0x2a4>
    80002b48:	f7843783          	ld	a5,-136(s0)
    80002b4c:	03000513          	li	a0,48
    80002b50:	01000d13          	li	s10,16
    80002b54:	00878713          	addi	a4,a5,8
    80002b58:	0007bc83          	ld	s9,0(a5)
    80002b5c:	f6e43c23          	sd	a4,-136(s0)
    80002b60:	00000097          	auipc	ra,0x0
    80002b64:	9a4080e7          	jalr	-1628(ra) # 80002504 <consputc>
    80002b68:	07800513          	li	a0,120
    80002b6c:	00000097          	auipc	ra,0x0
    80002b70:	998080e7          	jalr	-1640(ra) # 80002504 <consputc>
    80002b74:	00001d97          	auipc	s11,0x1
    80002b78:	644d8d93          	addi	s11,s11,1604 # 800041b8 <digits>
    80002b7c:	03ccd793          	srli	a5,s9,0x3c
    80002b80:	00fd87b3          	add	a5,s11,a5
    80002b84:	0007c503          	lbu	a0,0(a5)
    80002b88:	fffd0d1b          	addiw	s10,s10,-1
    80002b8c:	004c9c93          	slli	s9,s9,0x4
    80002b90:	00000097          	auipc	ra,0x0
    80002b94:	974080e7          	jalr	-1676(ra) # 80002504 <consputc>
    80002b98:	fe0d12e3          	bnez	s10,80002b7c <__printf+0x494>
    80002b9c:	f8dff06f          	j	80002b28 <__printf+0x440>
    80002ba0:	f7843783          	ld	a5,-136(s0)
    80002ba4:	0007bc83          	ld	s9,0(a5)
    80002ba8:	00878793          	addi	a5,a5,8
    80002bac:	f6f43c23          	sd	a5,-136(s0)
    80002bb0:	000c9a63          	bnez	s9,80002bc4 <__printf+0x4dc>
    80002bb4:	1080006f          	j	80002cbc <__printf+0x5d4>
    80002bb8:	001c8c93          	addi	s9,s9,1
    80002bbc:	00000097          	auipc	ra,0x0
    80002bc0:	948080e7          	jalr	-1720(ra) # 80002504 <consputc>
    80002bc4:	000cc503          	lbu	a0,0(s9)
    80002bc8:	fe0518e3          	bnez	a0,80002bb8 <__printf+0x4d0>
    80002bcc:	f5dff06f          	j	80002b28 <__printf+0x440>
    80002bd0:	02500513          	li	a0,37
    80002bd4:	00000097          	auipc	ra,0x0
    80002bd8:	930080e7          	jalr	-1744(ra) # 80002504 <consputc>
    80002bdc:	000c8513          	mv	a0,s9
    80002be0:	00000097          	auipc	ra,0x0
    80002be4:	924080e7          	jalr	-1756(ra) # 80002504 <consputc>
    80002be8:	f41ff06f          	j	80002b28 <__printf+0x440>
    80002bec:	02500513          	li	a0,37
    80002bf0:	00000097          	auipc	ra,0x0
    80002bf4:	914080e7          	jalr	-1772(ra) # 80002504 <consputc>
    80002bf8:	f31ff06f          	j	80002b28 <__printf+0x440>
    80002bfc:	00030513          	mv	a0,t1
    80002c00:	00000097          	auipc	ra,0x0
    80002c04:	7bc080e7          	jalr	1980(ra) # 800033bc <acquire>
    80002c08:	b4dff06f          	j	80002754 <__printf+0x6c>
    80002c0c:	40c0053b          	negw	a0,a2
    80002c10:	00a00713          	li	a4,10
    80002c14:	02e576bb          	remuw	a3,a0,a4
    80002c18:	00001d97          	auipc	s11,0x1
    80002c1c:	5a0d8d93          	addi	s11,s11,1440 # 800041b8 <digits>
    80002c20:	ff700593          	li	a1,-9
    80002c24:	02069693          	slli	a3,a3,0x20
    80002c28:	0206d693          	srli	a3,a3,0x20
    80002c2c:	00dd86b3          	add	a3,s11,a3
    80002c30:	0006c683          	lbu	a3,0(a3)
    80002c34:	02e557bb          	divuw	a5,a0,a4
    80002c38:	f8d40023          	sb	a3,-128(s0)
    80002c3c:	10b65e63          	bge	a2,a1,80002d58 <__printf+0x670>
    80002c40:	06300593          	li	a1,99
    80002c44:	02e7f6bb          	remuw	a3,a5,a4
    80002c48:	02069693          	slli	a3,a3,0x20
    80002c4c:	0206d693          	srli	a3,a3,0x20
    80002c50:	00dd86b3          	add	a3,s11,a3
    80002c54:	0006c683          	lbu	a3,0(a3)
    80002c58:	02e7d73b          	divuw	a4,a5,a4
    80002c5c:	00200793          	li	a5,2
    80002c60:	f8d400a3          	sb	a3,-127(s0)
    80002c64:	bca5ece3          	bltu	a1,a0,8000283c <__printf+0x154>
    80002c68:	ce5ff06f          	j	8000294c <__printf+0x264>
    80002c6c:	40e007bb          	negw	a5,a4
    80002c70:	00001d97          	auipc	s11,0x1
    80002c74:	548d8d93          	addi	s11,s11,1352 # 800041b8 <digits>
    80002c78:	00f7f693          	andi	a3,a5,15
    80002c7c:	00dd86b3          	add	a3,s11,a3
    80002c80:	0006c583          	lbu	a1,0(a3)
    80002c84:	ff100613          	li	a2,-15
    80002c88:	0047d69b          	srliw	a3,a5,0x4
    80002c8c:	f8b40023          	sb	a1,-128(s0)
    80002c90:	0047d59b          	srliw	a1,a5,0x4
    80002c94:	0ac75e63          	bge	a4,a2,80002d50 <__printf+0x668>
    80002c98:	00f6f693          	andi	a3,a3,15
    80002c9c:	00dd86b3          	add	a3,s11,a3
    80002ca0:	0006c603          	lbu	a2,0(a3)
    80002ca4:	00f00693          	li	a3,15
    80002ca8:	0087d79b          	srliw	a5,a5,0x8
    80002cac:	f8c400a3          	sb	a2,-127(s0)
    80002cb0:	d8b6e4e3          	bltu	a3,a1,80002a38 <__printf+0x350>
    80002cb4:	00200793          	li	a5,2
    80002cb8:	e2dff06f          	j	80002ae4 <__printf+0x3fc>
    80002cbc:	00001c97          	auipc	s9,0x1
    80002cc0:	4dcc8c93          	addi	s9,s9,1244 # 80004198 <_ZZ12printIntegermE6digits+0x148>
    80002cc4:	02800513          	li	a0,40
    80002cc8:	ef1ff06f          	j	80002bb8 <__printf+0x4d0>
    80002ccc:	00700793          	li	a5,7
    80002cd0:	00600c93          	li	s9,6
    80002cd4:	e0dff06f          	j	80002ae0 <__printf+0x3f8>
    80002cd8:	00700793          	li	a5,7
    80002cdc:	00600c93          	li	s9,6
    80002ce0:	c69ff06f          	j	80002948 <__printf+0x260>
    80002ce4:	00300793          	li	a5,3
    80002ce8:	00200c93          	li	s9,2
    80002cec:	c5dff06f          	j	80002948 <__printf+0x260>
    80002cf0:	00300793          	li	a5,3
    80002cf4:	00200c93          	li	s9,2
    80002cf8:	de9ff06f          	j	80002ae0 <__printf+0x3f8>
    80002cfc:	00400793          	li	a5,4
    80002d00:	00300c93          	li	s9,3
    80002d04:	dddff06f          	j	80002ae0 <__printf+0x3f8>
    80002d08:	00400793          	li	a5,4
    80002d0c:	00300c93          	li	s9,3
    80002d10:	c39ff06f          	j	80002948 <__printf+0x260>
    80002d14:	00500793          	li	a5,5
    80002d18:	00400c93          	li	s9,4
    80002d1c:	c2dff06f          	j	80002948 <__printf+0x260>
    80002d20:	00500793          	li	a5,5
    80002d24:	00400c93          	li	s9,4
    80002d28:	db9ff06f          	j	80002ae0 <__printf+0x3f8>
    80002d2c:	00600793          	li	a5,6
    80002d30:	00500c93          	li	s9,5
    80002d34:	dadff06f          	j	80002ae0 <__printf+0x3f8>
    80002d38:	00600793          	li	a5,6
    80002d3c:	00500c93          	li	s9,5
    80002d40:	c09ff06f          	j	80002948 <__printf+0x260>
    80002d44:	00800793          	li	a5,8
    80002d48:	00700c93          	li	s9,7
    80002d4c:	bfdff06f          	j	80002948 <__printf+0x260>
    80002d50:	00100793          	li	a5,1
    80002d54:	d91ff06f          	j	80002ae4 <__printf+0x3fc>
    80002d58:	00100793          	li	a5,1
    80002d5c:	bf1ff06f          	j	8000294c <__printf+0x264>
    80002d60:	00900793          	li	a5,9
    80002d64:	00800c93          	li	s9,8
    80002d68:	be1ff06f          	j	80002948 <__printf+0x260>
    80002d6c:	00001517          	auipc	a0,0x1
    80002d70:	43450513          	addi	a0,a0,1076 # 800041a0 <_ZZ12printIntegermE6digits+0x150>
    80002d74:	00000097          	auipc	ra,0x0
    80002d78:	918080e7          	jalr	-1768(ra) # 8000268c <panic>

0000000080002d7c <printfinit>:
    80002d7c:	fe010113          	addi	sp,sp,-32
    80002d80:	00813823          	sd	s0,16(sp)
    80002d84:	00913423          	sd	s1,8(sp)
    80002d88:	00113c23          	sd	ra,24(sp)
    80002d8c:	02010413          	addi	s0,sp,32
    80002d90:	00003497          	auipc	s1,0x3
    80002d94:	ad048493          	addi	s1,s1,-1328 # 80005860 <pr>
    80002d98:	00048513          	mv	a0,s1
    80002d9c:	00001597          	auipc	a1,0x1
    80002da0:	41458593          	addi	a1,a1,1044 # 800041b0 <_ZZ12printIntegermE6digits+0x160>
    80002da4:	00000097          	auipc	ra,0x0
    80002da8:	5f4080e7          	jalr	1524(ra) # 80003398 <initlock>
    80002dac:	01813083          	ld	ra,24(sp)
    80002db0:	01013403          	ld	s0,16(sp)
    80002db4:	0004ac23          	sw	zero,24(s1)
    80002db8:	00813483          	ld	s1,8(sp)
    80002dbc:	02010113          	addi	sp,sp,32
    80002dc0:	00008067          	ret

0000000080002dc4 <uartinit>:
    80002dc4:	ff010113          	addi	sp,sp,-16
    80002dc8:	00813423          	sd	s0,8(sp)
    80002dcc:	01010413          	addi	s0,sp,16
    80002dd0:	100007b7          	lui	a5,0x10000
    80002dd4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80002dd8:	f8000713          	li	a4,-128
    80002ddc:	00e781a3          	sb	a4,3(a5)
    80002de0:	00300713          	li	a4,3
    80002de4:	00e78023          	sb	a4,0(a5)
    80002de8:	000780a3          	sb	zero,1(a5)
    80002dec:	00e781a3          	sb	a4,3(a5)
    80002df0:	00700693          	li	a3,7
    80002df4:	00d78123          	sb	a3,2(a5)
    80002df8:	00e780a3          	sb	a4,1(a5)
    80002dfc:	00813403          	ld	s0,8(sp)
    80002e00:	01010113          	addi	sp,sp,16
    80002e04:	00008067          	ret

0000000080002e08 <uartputc>:
    80002e08:	00002797          	auipc	a5,0x2
    80002e0c:	8007a783          	lw	a5,-2048(a5) # 80004608 <panicked>
    80002e10:	00078463          	beqz	a5,80002e18 <uartputc+0x10>
    80002e14:	0000006f          	j	80002e14 <uartputc+0xc>
    80002e18:	fd010113          	addi	sp,sp,-48
    80002e1c:	02813023          	sd	s0,32(sp)
    80002e20:	00913c23          	sd	s1,24(sp)
    80002e24:	01213823          	sd	s2,16(sp)
    80002e28:	01313423          	sd	s3,8(sp)
    80002e2c:	02113423          	sd	ra,40(sp)
    80002e30:	03010413          	addi	s0,sp,48
    80002e34:	00001917          	auipc	s2,0x1
    80002e38:	7dc90913          	addi	s2,s2,2012 # 80004610 <uart_tx_r>
    80002e3c:	00093783          	ld	a5,0(s2)
    80002e40:	00001497          	auipc	s1,0x1
    80002e44:	7d848493          	addi	s1,s1,2008 # 80004618 <uart_tx_w>
    80002e48:	0004b703          	ld	a4,0(s1)
    80002e4c:	02078693          	addi	a3,a5,32
    80002e50:	00050993          	mv	s3,a0
    80002e54:	02e69c63          	bne	a3,a4,80002e8c <uartputc+0x84>
    80002e58:	00001097          	auipc	ra,0x1
    80002e5c:	834080e7          	jalr	-1996(ra) # 8000368c <push_on>
    80002e60:	00093783          	ld	a5,0(s2)
    80002e64:	0004b703          	ld	a4,0(s1)
    80002e68:	02078793          	addi	a5,a5,32
    80002e6c:	00e79463          	bne	a5,a4,80002e74 <uartputc+0x6c>
    80002e70:	0000006f          	j	80002e70 <uartputc+0x68>
    80002e74:	00001097          	auipc	ra,0x1
    80002e78:	88c080e7          	jalr	-1908(ra) # 80003700 <pop_on>
    80002e7c:	00093783          	ld	a5,0(s2)
    80002e80:	0004b703          	ld	a4,0(s1)
    80002e84:	02078693          	addi	a3,a5,32
    80002e88:	fce688e3          	beq	a3,a4,80002e58 <uartputc+0x50>
    80002e8c:	01f77693          	andi	a3,a4,31
    80002e90:	00003597          	auipc	a1,0x3
    80002e94:	9f058593          	addi	a1,a1,-1552 # 80005880 <uart_tx_buf>
    80002e98:	00d586b3          	add	a3,a1,a3
    80002e9c:	00170713          	addi	a4,a4,1
    80002ea0:	01368023          	sb	s3,0(a3)
    80002ea4:	00e4b023          	sd	a4,0(s1)
    80002ea8:	10000637          	lui	a2,0x10000
    80002eac:	02f71063          	bne	a4,a5,80002ecc <uartputc+0xc4>
    80002eb0:	0340006f          	j	80002ee4 <uartputc+0xdc>
    80002eb4:	00074703          	lbu	a4,0(a4)
    80002eb8:	00f93023          	sd	a5,0(s2)
    80002ebc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80002ec0:	00093783          	ld	a5,0(s2)
    80002ec4:	0004b703          	ld	a4,0(s1)
    80002ec8:	00f70e63          	beq	a4,a5,80002ee4 <uartputc+0xdc>
    80002ecc:	00564683          	lbu	a3,5(a2)
    80002ed0:	01f7f713          	andi	a4,a5,31
    80002ed4:	00e58733          	add	a4,a1,a4
    80002ed8:	0206f693          	andi	a3,a3,32
    80002edc:	00178793          	addi	a5,a5,1
    80002ee0:	fc069ae3          	bnez	a3,80002eb4 <uartputc+0xac>
    80002ee4:	02813083          	ld	ra,40(sp)
    80002ee8:	02013403          	ld	s0,32(sp)
    80002eec:	01813483          	ld	s1,24(sp)
    80002ef0:	01013903          	ld	s2,16(sp)
    80002ef4:	00813983          	ld	s3,8(sp)
    80002ef8:	03010113          	addi	sp,sp,48
    80002efc:	00008067          	ret

0000000080002f00 <uartputc_sync>:
    80002f00:	ff010113          	addi	sp,sp,-16
    80002f04:	00813423          	sd	s0,8(sp)
    80002f08:	01010413          	addi	s0,sp,16
    80002f0c:	00001717          	auipc	a4,0x1
    80002f10:	6fc72703          	lw	a4,1788(a4) # 80004608 <panicked>
    80002f14:	02071663          	bnez	a4,80002f40 <uartputc_sync+0x40>
    80002f18:	00050793          	mv	a5,a0
    80002f1c:	100006b7          	lui	a3,0x10000
    80002f20:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80002f24:	02077713          	andi	a4,a4,32
    80002f28:	fe070ce3          	beqz	a4,80002f20 <uartputc_sync+0x20>
    80002f2c:	0ff7f793          	andi	a5,a5,255
    80002f30:	00f68023          	sb	a5,0(a3)
    80002f34:	00813403          	ld	s0,8(sp)
    80002f38:	01010113          	addi	sp,sp,16
    80002f3c:	00008067          	ret
    80002f40:	0000006f          	j	80002f40 <uartputc_sync+0x40>

0000000080002f44 <uartstart>:
    80002f44:	ff010113          	addi	sp,sp,-16
    80002f48:	00813423          	sd	s0,8(sp)
    80002f4c:	01010413          	addi	s0,sp,16
    80002f50:	00001617          	auipc	a2,0x1
    80002f54:	6c060613          	addi	a2,a2,1728 # 80004610 <uart_tx_r>
    80002f58:	00001517          	auipc	a0,0x1
    80002f5c:	6c050513          	addi	a0,a0,1728 # 80004618 <uart_tx_w>
    80002f60:	00063783          	ld	a5,0(a2)
    80002f64:	00053703          	ld	a4,0(a0)
    80002f68:	04f70263          	beq	a4,a5,80002fac <uartstart+0x68>
    80002f6c:	100005b7          	lui	a1,0x10000
    80002f70:	00003817          	auipc	a6,0x3
    80002f74:	91080813          	addi	a6,a6,-1776 # 80005880 <uart_tx_buf>
    80002f78:	01c0006f          	j	80002f94 <uartstart+0x50>
    80002f7c:	0006c703          	lbu	a4,0(a3)
    80002f80:	00f63023          	sd	a5,0(a2)
    80002f84:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80002f88:	00063783          	ld	a5,0(a2)
    80002f8c:	00053703          	ld	a4,0(a0)
    80002f90:	00f70e63          	beq	a4,a5,80002fac <uartstart+0x68>
    80002f94:	01f7f713          	andi	a4,a5,31
    80002f98:	00e806b3          	add	a3,a6,a4
    80002f9c:	0055c703          	lbu	a4,5(a1)
    80002fa0:	00178793          	addi	a5,a5,1
    80002fa4:	02077713          	andi	a4,a4,32
    80002fa8:	fc071ae3          	bnez	a4,80002f7c <uartstart+0x38>
    80002fac:	00813403          	ld	s0,8(sp)
    80002fb0:	01010113          	addi	sp,sp,16
    80002fb4:	00008067          	ret

0000000080002fb8 <uartgetc>:
    80002fb8:	ff010113          	addi	sp,sp,-16
    80002fbc:	00813423          	sd	s0,8(sp)
    80002fc0:	01010413          	addi	s0,sp,16
    80002fc4:	10000737          	lui	a4,0x10000
    80002fc8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80002fcc:	0017f793          	andi	a5,a5,1
    80002fd0:	00078c63          	beqz	a5,80002fe8 <uartgetc+0x30>
    80002fd4:	00074503          	lbu	a0,0(a4)
    80002fd8:	0ff57513          	andi	a0,a0,255
    80002fdc:	00813403          	ld	s0,8(sp)
    80002fe0:	01010113          	addi	sp,sp,16
    80002fe4:	00008067          	ret
    80002fe8:	fff00513          	li	a0,-1
    80002fec:	ff1ff06f          	j	80002fdc <uartgetc+0x24>

0000000080002ff0 <uartintr>:
    80002ff0:	100007b7          	lui	a5,0x10000
    80002ff4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80002ff8:	0017f793          	andi	a5,a5,1
    80002ffc:	0a078463          	beqz	a5,800030a4 <uartintr+0xb4>
    80003000:	fe010113          	addi	sp,sp,-32
    80003004:	00813823          	sd	s0,16(sp)
    80003008:	00913423          	sd	s1,8(sp)
    8000300c:	00113c23          	sd	ra,24(sp)
    80003010:	02010413          	addi	s0,sp,32
    80003014:	100004b7          	lui	s1,0x10000
    80003018:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000301c:	0ff57513          	andi	a0,a0,255
    80003020:	fffff097          	auipc	ra,0xfffff
    80003024:	534080e7          	jalr	1332(ra) # 80002554 <consoleintr>
    80003028:	0054c783          	lbu	a5,5(s1)
    8000302c:	0017f793          	andi	a5,a5,1
    80003030:	fe0794e3          	bnez	a5,80003018 <uartintr+0x28>
    80003034:	00001617          	auipc	a2,0x1
    80003038:	5dc60613          	addi	a2,a2,1500 # 80004610 <uart_tx_r>
    8000303c:	00001517          	auipc	a0,0x1
    80003040:	5dc50513          	addi	a0,a0,1500 # 80004618 <uart_tx_w>
    80003044:	00063783          	ld	a5,0(a2)
    80003048:	00053703          	ld	a4,0(a0)
    8000304c:	04f70263          	beq	a4,a5,80003090 <uartintr+0xa0>
    80003050:	100005b7          	lui	a1,0x10000
    80003054:	00003817          	auipc	a6,0x3
    80003058:	82c80813          	addi	a6,a6,-2004 # 80005880 <uart_tx_buf>
    8000305c:	01c0006f          	j	80003078 <uartintr+0x88>
    80003060:	0006c703          	lbu	a4,0(a3)
    80003064:	00f63023          	sd	a5,0(a2)
    80003068:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000306c:	00063783          	ld	a5,0(a2)
    80003070:	00053703          	ld	a4,0(a0)
    80003074:	00f70e63          	beq	a4,a5,80003090 <uartintr+0xa0>
    80003078:	01f7f713          	andi	a4,a5,31
    8000307c:	00e806b3          	add	a3,a6,a4
    80003080:	0055c703          	lbu	a4,5(a1)
    80003084:	00178793          	addi	a5,a5,1
    80003088:	02077713          	andi	a4,a4,32
    8000308c:	fc071ae3          	bnez	a4,80003060 <uartintr+0x70>
    80003090:	01813083          	ld	ra,24(sp)
    80003094:	01013403          	ld	s0,16(sp)
    80003098:	00813483          	ld	s1,8(sp)
    8000309c:	02010113          	addi	sp,sp,32
    800030a0:	00008067          	ret
    800030a4:	00001617          	auipc	a2,0x1
    800030a8:	56c60613          	addi	a2,a2,1388 # 80004610 <uart_tx_r>
    800030ac:	00001517          	auipc	a0,0x1
    800030b0:	56c50513          	addi	a0,a0,1388 # 80004618 <uart_tx_w>
    800030b4:	00063783          	ld	a5,0(a2)
    800030b8:	00053703          	ld	a4,0(a0)
    800030bc:	04f70263          	beq	a4,a5,80003100 <uartintr+0x110>
    800030c0:	100005b7          	lui	a1,0x10000
    800030c4:	00002817          	auipc	a6,0x2
    800030c8:	7bc80813          	addi	a6,a6,1980 # 80005880 <uart_tx_buf>
    800030cc:	01c0006f          	j	800030e8 <uartintr+0xf8>
    800030d0:	0006c703          	lbu	a4,0(a3)
    800030d4:	00f63023          	sd	a5,0(a2)
    800030d8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800030dc:	00063783          	ld	a5,0(a2)
    800030e0:	00053703          	ld	a4,0(a0)
    800030e4:	02f70063          	beq	a4,a5,80003104 <uartintr+0x114>
    800030e8:	01f7f713          	andi	a4,a5,31
    800030ec:	00e806b3          	add	a3,a6,a4
    800030f0:	0055c703          	lbu	a4,5(a1)
    800030f4:	00178793          	addi	a5,a5,1
    800030f8:	02077713          	andi	a4,a4,32
    800030fc:	fc071ae3          	bnez	a4,800030d0 <uartintr+0xe0>
    80003100:	00008067          	ret
    80003104:	00008067          	ret

0000000080003108 <kinit>:
    80003108:	fc010113          	addi	sp,sp,-64
    8000310c:	02913423          	sd	s1,40(sp)
    80003110:	fffff7b7          	lui	a5,0xfffff
    80003114:	00003497          	auipc	s1,0x3
    80003118:	78b48493          	addi	s1,s1,1931 # 8000689f <end+0xfff>
    8000311c:	02813823          	sd	s0,48(sp)
    80003120:	01313c23          	sd	s3,24(sp)
    80003124:	00f4f4b3          	and	s1,s1,a5
    80003128:	02113c23          	sd	ra,56(sp)
    8000312c:	03213023          	sd	s2,32(sp)
    80003130:	01413823          	sd	s4,16(sp)
    80003134:	01513423          	sd	s5,8(sp)
    80003138:	04010413          	addi	s0,sp,64
    8000313c:	000017b7          	lui	a5,0x1
    80003140:	01100993          	li	s3,17
    80003144:	00f487b3          	add	a5,s1,a5
    80003148:	01b99993          	slli	s3,s3,0x1b
    8000314c:	06f9e063          	bltu	s3,a5,800031ac <kinit+0xa4>
    80003150:	00002a97          	auipc	s5,0x2
    80003154:	750a8a93          	addi	s5,s5,1872 # 800058a0 <end>
    80003158:	0754ec63          	bltu	s1,s5,800031d0 <kinit+0xc8>
    8000315c:	0734fa63          	bgeu	s1,s3,800031d0 <kinit+0xc8>
    80003160:	00088a37          	lui	s4,0x88
    80003164:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80003168:	00001917          	auipc	s2,0x1
    8000316c:	4b890913          	addi	s2,s2,1208 # 80004620 <kmem>
    80003170:	00ca1a13          	slli	s4,s4,0xc
    80003174:	0140006f          	j	80003188 <kinit+0x80>
    80003178:	000017b7          	lui	a5,0x1
    8000317c:	00f484b3          	add	s1,s1,a5
    80003180:	0554e863          	bltu	s1,s5,800031d0 <kinit+0xc8>
    80003184:	0534f663          	bgeu	s1,s3,800031d0 <kinit+0xc8>
    80003188:	00001637          	lui	a2,0x1
    8000318c:	00100593          	li	a1,1
    80003190:	00048513          	mv	a0,s1
    80003194:	00000097          	auipc	ra,0x0
    80003198:	5e4080e7          	jalr	1508(ra) # 80003778 <__memset>
    8000319c:	00093783          	ld	a5,0(s2)
    800031a0:	00f4b023          	sd	a5,0(s1)
    800031a4:	00993023          	sd	s1,0(s2)
    800031a8:	fd4498e3          	bne	s1,s4,80003178 <kinit+0x70>
    800031ac:	03813083          	ld	ra,56(sp)
    800031b0:	03013403          	ld	s0,48(sp)
    800031b4:	02813483          	ld	s1,40(sp)
    800031b8:	02013903          	ld	s2,32(sp)
    800031bc:	01813983          	ld	s3,24(sp)
    800031c0:	01013a03          	ld	s4,16(sp)
    800031c4:	00813a83          	ld	s5,8(sp)
    800031c8:	04010113          	addi	sp,sp,64
    800031cc:	00008067          	ret
    800031d0:	00001517          	auipc	a0,0x1
    800031d4:	00050513          	mv	a0,a0
    800031d8:	fffff097          	auipc	ra,0xfffff
    800031dc:	4b4080e7          	jalr	1204(ra) # 8000268c <panic>

00000000800031e0 <freerange>:
    800031e0:	fc010113          	addi	sp,sp,-64
    800031e4:	000017b7          	lui	a5,0x1
    800031e8:	02913423          	sd	s1,40(sp)
    800031ec:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800031f0:	009504b3          	add	s1,a0,s1
    800031f4:	fffff537          	lui	a0,0xfffff
    800031f8:	02813823          	sd	s0,48(sp)
    800031fc:	02113c23          	sd	ra,56(sp)
    80003200:	03213023          	sd	s2,32(sp)
    80003204:	01313c23          	sd	s3,24(sp)
    80003208:	01413823          	sd	s4,16(sp)
    8000320c:	01513423          	sd	s5,8(sp)
    80003210:	01613023          	sd	s6,0(sp)
    80003214:	04010413          	addi	s0,sp,64
    80003218:	00a4f4b3          	and	s1,s1,a0
    8000321c:	00f487b3          	add	a5,s1,a5
    80003220:	06f5e463          	bltu	a1,a5,80003288 <freerange+0xa8>
    80003224:	00002a97          	auipc	s5,0x2
    80003228:	67ca8a93          	addi	s5,s5,1660 # 800058a0 <end>
    8000322c:	0954e263          	bltu	s1,s5,800032b0 <freerange+0xd0>
    80003230:	01100993          	li	s3,17
    80003234:	01b99993          	slli	s3,s3,0x1b
    80003238:	0734fc63          	bgeu	s1,s3,800032b0 <freerange+0xd0>
    8000323c:	00058a13          	mv	s4,a1
    80003240:	00001917          	auipc	s2,0x1
    80003244:	3e090913          	addi	s2,s2,992 # 80004620 <kmem>
    80003248:	00002b37          	lui	s6,0x2
    8000324c:	0140006f          	j	80003260 <freerange+0x80>
    80003250:	000017b7          	lui	a5,0x1
    80003254:	00f484b3          	add	s1,s1,a5
    80003258:	0554ec63          	bltu	s1,s5,800032b0 <freerange+0xd0>
    8000325c:	0534fa63          	bgeu	s1,s3,800032b0 <freerange+0xd0>
    80003260:	00001637          	lui	a2,0x1
    80003264:	00100593          	li	a1,1
    80003268:	00048513          	mv	a0,s1
    8000326c:	00000097          	auipc	ra,0x0
    80003270:	50c080e7          	jalr	1292(ra) # 80003778 <__memset>
    80003274:	00093703          	ld	a4,0(s2)
    80003278:	016487b3          	add	a5,s1,s6
    8000327c:	00e4b023          	sd	a4,0(s1)
    80003280:	00993023          	sd	s1,0(s2)
    80003284:	fcfa76e3          	bgeu	s4,a5,80003250 <freerange+0x70>
    80003288:	03813083          	ld	ra,56(sp)
    8000328c:	03013403          	ld	s0,48(sp)
    80003290:	02813483          	ld	s1,40(sp)
    80003294:	02013903          	ld	s2,32(sp)
    80003298:	01813983          	ld	s3,24(sp)
    8000329c:	01013a03          	ld	s4,16(sp)
    800032a0:	00813a83          	ld	s5,8(sp)
    800032a4:	00013b03          	ld	s6,0(sp)
    800032a8:	04010113          	addi	sp,sp,64
    800032ac:	00008067          	ret
    800032b0:	00001517          	auipc	a0,0x1
    800032b4:	f2050513          	addi	a0,a0,-224 # 800041d0 <digits+0x18>
    800032b8:	fffff097          	auipc	ra,0xfffff
    800032bc:	3d4080e7          	jalr	980(ra) # 8000268c <panic>

00000000800032c0 <kfree>:
    800032c0:	fe010113          	addi	sp,sp,-32
    800032c4:	00813823          	sd	s0,16(sp)
    800032c8:	00113c23          	sd	ra,24(sp)
    800032cc:	00913423          	sd	s1,8(sp)
    800032d0:	02010413          	addi	s0,sp,32
    800032d4:	03451793          	slli	a5,a0,0x34
    800032d8:	04079c63          	bnez	a5,80003330 <kfree+0x70>
    800032dc:	00002797          	auipc	a5,0x2
    800032e0:	5c478793          	addi	a5,a5,1476 # 800058a0 <end>
    800032e4:	00050493          	mv	s1,a0
    800032e8:	04f56463          	bltu	a0,a5,80003330 <kfree+0x70>
    800032ec:	01100793          	li	a5,17
    800032f0:	01b79793          	slli	a5,a5,0x1b
    800032f4:	02f57e63          	bgeu	a0,a5,80003330 <kfree+0x70>
    800032f8:	00001637          	lui	a2,0x1
    800032fc:	00100593          	li	a1,1
    80003300:	00000097          	auipc	ra,0x0
    80003304:	478080e7          	jalr	1144(ra) # 80003778 <__memset>
    80003308:	00001797          	auipc	a5,0x1
    8000330c:	31878793          	addi	a5,a5,792 # 80004620 <kmem>
    80003310:	0007b703          	ld	a4,0(a5)
    80003314:	01813083          	ld	ra,24(sp)
    80003318:	01013403          	ld	s0,16(sp)
    8000331c:	00e4b023          	sd	a4,0(s1)
    80003320:	0097b023          	sd	s1,0(a5)
    80003324:	00813483          	ld	s1,8(sp)
    80003328:	02010113          	addi	sp,sp,32
    8000332c:	00008067          	ret
    80003330:	00001517          	auipc	a0,0x1
    80003334:	ea050513          	addi	a0,a0,-352 # 800041d0 <digits+0x18>
    80003338:	fffff097          	auipc	ra,0xfffff
    8000333c:	354080e7          	jalr	852(ra) # 8000268c <panic>

0000000080003340 <kalloc>:
    80003340:	fe010113          	addi	sp,sp,-32
    80003344:	00813823          	sd	s0,16(sp)
    80003348:	00913423          	sd	s1,8(sp)
    8000334c:	00113c23          	sd	ra,24(sp)
    80003350:	02010413          	addi	s0,sp,32
    80003354:	00001797          	auipc	a5,0x1
    80003358:	2cc78793          	addi	a5,a5,716 # 80004620 <kmem>
    8000335c:	0007b483          	ld	s1,0(a5)
    80003360:	02048063          	beqz	s1,80003380 <kalloc+0x40>
    80003364:	0004b703          	ld	a4,0(s1)
    80003368:	00001637          	lui	a2,0x1
    8000336c:	00500593          	li	a1,5
    80003370:	00048513          	mv	a0,s1
    80003374:	00e7b023          	sd	a4,0(a5)
    80003378:	00000097          	auipc	ra,0x0
    8000337c:	400080e7          	jalr	1024(ra) # 80003778 <__memset>
    80003380:	01813083          	ld	ra,24(sp)
    80003384:	01013403          	ld	s0,16(sp)
    80003388:	00048513          	mv	a0,s1
    8000338c:	00813483          	ld	s1,8(sp)
    80003390:	02010113          	addi	sp,sp,32
    80003394:	00008067          	ret

0000000080003398 <initlock>:
    80003398:	ff010113          	addi	sp,sp,-16
    8000339c:	00813423          	sd	s0,8(sp)
    800033a0:	01010413          	addi	s0,sp,16
    800033a4:	00813403          	ld	s0,8(sp)
    800033a8:	00b53423          	sd	a1,8(a0)
    800033ac:	00052023          	sw	zero,0(a0)
    800033b0:	00053823          	sd	zero,16(a0)
    800033b4:	01010113          	addi	sp,sp,16
    800033b8:	00008067          	ret

00000000800033bc <acquire>:
    800033bc:	fe010113          	addi	sp,sp,-32
    800033c0:	00813823          	sd	s0,16(sp)
    800033c4:	00913423          	sd	s1,8(sp)
    800033c8:	00113c23          	sd	ra,24(sp)
    800033cc:	01213023          	sd	s2,0(sp)
    800033d0:	02010413          	addi	s0,sp,32
    800033d4:	00050493          	mv	s1,a0
    800033d8:	10002973          	csrr	s2,sstatus
    800033dc:	100027f3          	csrr	a5,sstatus
    800033e0:	ffd7f793          	andi	a5,a5,-3
    800033e4:	10079073          	csrw	sstatus,a5
    800033e8:	fffff097          	auipc	ra,0xfffff
    800033ec:	8e8080e7          	jalr	-1816(ra) # 80001cd0 <mycpu>
    800033f0:	07852783          	lw	a5,120(a0)
    800033f4:	06078e63          	beqz	a5,80003470 <acquire+0xb4>
    800033f8:	fffff097          	auipc	ra,0xfffff
    800033fc:	8d8080e7          	jalr	-1832(ra) # 80001cd0 <mycpu>
    80003400:	07852783          	lw	a5,120(a0)
    80003404:	0004a703          	lw	a4,0(s1)
    80003408:	0017879b          	addiw	a5,a5,1
    8000340c:	06f52c23          	sw	a5,120(a0)
    80003410:	04071063          	bnez	a4,80003450 <acquire+0x94>
    80003414:	00100713          	li	a4,1
    80003418:	00070793          	mv	a5,a4
    8000341c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80003420:	0007879b          	sext.w	a5,a5
    80003424:	fe079ae3          	bnez	a5,80003418 <acquire+0x5c>
    80003428:	0ff0000f          	fence
    8000342c:	fffff097          	auipc	ra,0xfffff
    80003430:	8a4080e7          	jalr	-1884(ra) # 80001cd0 <mycpu>
    80003434:	01813083          	ld	ra,24(sp)
    80003438:	01013403          	ld	s0,16(sp)
    8000343c:	00a4b823          	sd	a0,16(s1)
    80003440:	00013903          	ld	s2,0(sp)
    80003444:	00813483          	ld	s1,8(sp)
    80003448:	02010113          	addi	sp,sp,32
    8000344c:	00008067          	ret
    80003450:	0104b903          	ld	s2,16(s1)
    80003454:	fffff097          	auipc	ra,0xfffff
    80003458:	87c080e7          	jalr	-1924(ra) # 80001cd0 <mycpu>
    8000345c:	faa91ce3          	bne	s2,a0,80003414 <acquire+0x58>
    80003460:	00001517          	auipc	a0,0x1
    80003464:	d7850513          	addi	a0,a0,-648 # 800041d8 <digits+0x20>
    80003468:	fffff097          	auipc	ra,0xfffff
    8000346c:	224080e7          	jalr	548(ra) # 8000268c <panic>
    80003470:	00195913          	srli	s2,s2,0x1
    80003474:	fffff097          	auipc	ra,0xfffff
    80003478:	85c080e7          	jalr	-1956(ra) # 80001cd0 <mycpu>
    8000347c:	00197913          	andi	s2,s2,1
    80003480:	07252e23          	sw	s2,124(a0)
    80003484:	f75ff06f          	j	800033f8 <acquire+0x3c>

0000000080003488 <release>:
    80003488:	fe010113          	addi	sp,sp,-32
    8000348c:	00813823          	sd	s0,16(sp)
    80003490:	00113c23          	sd	ra,24(sp)
    80003494:	00913423          	sd	s1,8(sp)
    80003498:	01213023          	sd	s2,0(sp)
    8000349c:	02010413          	addi	s0,sp,32
    800034a0:	00052783          	lw	a5,0(a0)
    800034a4:	00079a63          	bnez	a5,800034b8 <release+0x30>
    800034a8:	00001517          	auipc	a0,0x1
    800034ac:	d3850513          	addi	a0,a0,-712 # 800041e0 <digits+0x28>
    800034b0:	fffff097          	auipc	ra,0xfffff
    800034b4:	1dc080e7          	jalr	476(ra) # 8000268c <panic>
    800034b8:	01053903          	ld	s2,16(a0)
    800034bc:	00050493          	mv	s1,a0
    800034c0:	fffff097          	auipc	ra,0xfffff
    800034c4:	810080e7          	jalr	-2032(ra) # 80001cd0 <mycpu>
    800034c8:	fea910e3          	bne	s2,a0,800034a8 <release+0x20>
    800034cc:	0004b823          	sd	zero,16(s1)
    800034d0:	0ff0000f          	fence
    800034d4:	0f50000f          	fence	iorw,ow
    800034d8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800034dc:	ffffe097          	auipc	ra,0xffffe
    800034e0:	7f4080e7          	jalr	2036(ra) # 80001cd0 <mycpu>
    800034e4:	100027f3          	csrr	a5,sstatus
    800034e8:	0027f793          	andi	a5,a5,2
    800034ec:	04079a63          	bnez	a5,80003540 <release+0xb8>
    800034f0:	07852783          	lw	a5,120(a0)
    800034f4:	02f05e63          	blez	a5,80003530 <release+0xa8>
    800034f8:	fff7871b          	addiw	a4,a5,-1
    800034fc:	06e52c23          	sw	a4,120(a0)
    80003500:	00071c63          	bnez	a4,80003518 <release+0x90>
    80003504:	07c52783          	lw	a5,124(a0)
    80003508:	00078863          	beqz	a5,80003518 <release+0x90>
    8000350c:	100027f3          	csrr	a5,sstatus
    80003510:	0027e793          	ori	a5,a5,2
    80003514:	10079073          	csrw	sstatus,a5
    80003518:	01813083          	ld	ra,24(sp)
    8000351c:	01013403          	ld	s0,16(sp)
    80003520:	00813483          	ld	s1,8(sp)
    80003524:	00013903          	ld	s2,0(sp)
    80003528:	02010113          	addi	sp,sp,32
    8000352c:	00008067          	ret
    80003530:	00001517          	auipc	a0,0x1
    80003534:	cd050513          	addi	a0,a0,-816 # 80004200 <digits+0x48>
    80003538:	fffff097          	auipc	ra,0xfffff
    8000353c:	154080e7          	jalr	340(ra) # 8000268c <panic>
    80003540:	00001517          	auipc	a0,0x1
    80003544:	ca850513          	addi	a0,a0,-856 # 800041e8 <digits+0x30>
    80003548:	fffff097          	auipc	ra,0xfffff
    8000354c:	144080e7          	jalr	324(ra) # 8000268c <panic>

0000000080003550 <holding>:
    80003550:	00052783          	lw	a5,0(a0)
    80003554:	00079663          	bnez	a5,80003560 <holding+0x10>
    80003558:	00000513          	li	a0,0
    8000355c:	00008067          	ret
    80003560:	fe010113          	addi	sp,sp,-32
    80003564:	00813823          	sd	s0,16(sp)
    80003568:	00913423          	sd	s1,8(sp)
    8000356c:	00113c23          	sd	ra,24(sp)
    80003570:	02010413          	addi	s0,sp,32
    80003574:	01053483          	ld	s1,16(a0)
    80003578:	ffffe097          	auipc	ra,0xffffe
    8000357c:	758080e7          	jalr	1880(ra) # 80001cd0 <mycpu>
    80003580:	01813083          	ld	ra,24(sp)
    80003584:	01013403          	ld	s0,16(sp)
    80003588:	40a48533          	sub	a0,s1,a0
    8000358c:	00153513          	seqz	a0,a0
    80003590:	00813483          	ld	s1,8(sp)
    80003594:	02010113          	addi	sp,sp,32
    80003598:	00008067          	ret

000000008000359c <push_off>:
    8000359c:	fe010113          	addi	sp,sp,-32
    800035a0:	00813823          	sd	s0,16(sp)
    800035a4:	00113c23          	sd	ra,24(sp)
    800035a8:	00913423          	sd	s1,8(sp)
    800035ac:	02010413          	addi	s0,sp,32
    800035b0:	100024f3          	csrr	s1,sstatus
    800035b4:	100027f3          	csrr	a5,sstatus
    800035b8:	ffd7f793          	andi	a5,a5,-3
    800035bc:	10079073          	csrw	sstatus,a5
    800035c0:	ffffe097          	auipc	ra,0xffffe
    800035c4:	710080e7          	jalr	1808(ra) # 80001cd0 <mycpu>
    800035c8:	07852783          	lw	a5,120(a0)
    800035cc:	02078663          	beqz	a5,800035f8 <push_off+0x5c>
    800035d0:	ffffe097          	auipc	ra,0xffffe
    800035d4:	700080e7          	jalr	1792(ra) # 80001cd0 <mycpu>
    800035d8:	07852783          	lw	a5,120(a0)
    800035dc:	01813083          	ld	ra,24(sp)
    800035e0:	01013403          	ld	s0,16(sp)
    800035e4:	0017879b          	addiw	a5,a5,1
    800035e8:	06f52c23          	sw	a5,120(a0)
    800035ec:	00813483          	ld	s1,8(sp)
    800035f0:	02010113          	addi	sp,sp,32
    800035f4:	00008067          	ret
    800035f8:	0014d493          	srli	s1,s1,0x1
    800035fc:	ffffe097          	auipc	ra,0xffffe
    80003600:	6d4080e7          	jalr	1748(ra) # 80001cd0 <mycpu>
    80003604:	0014f493          	andi	s1,s1,1
    80003608:	06952e23          	sw	s1,124(a0)
    8000360c:	fc5ff06f          	j	800035d0 <push_off+0x34>

0000000080003610 <pop_off>:
    80003610:	ff010113          	addi	sp,sp,-16
    80003614:	00813023          	sd	s0,0(sp)
    80003618:	00113423          	sd	ra,8(sp)
    8000361c:	01010413          	addi	s0,sp,16
    80003620:	ffffe097          	auipc	ra,0xffffe
    80003624:	6b0080e7          	jalr	1712(ra) # 80001cd0 <mycpu>
    80003628:	100027f3          	csrr	a5,sstatus
    8000362c:	0027f793          	andi	a5,a5,2
    80003630:	04079663          	bnez	a5,8000367c <pop_off+0x6c>
    80003634:	07852783          	lw	a5,120(a0)
    80003638:	02f05a63          	blez	a5,8000366c <pop_off+0x5c>
    8000363c:	fff7871b          	addiw	a4,a5,-1
    80003640:	06e52c23          	sw	a4,120(a0)
    80003644:	00071c63          	bnez	a4,8000365c <pop_off+0x4c>
    80003648:	07c52783          	lw	a5,124(a0)
    8000364c:	00078863          	beqz	a5,8000365c <pop_off+0x4c>
    80003650:	100027f3          	csrr	a5,sstatus
    80003654:	0027e793          	ori	a5,a5,2
    80003658:	10079073          	csrw	sstatus,a5
    8000365c:	00813083          	ld	ra,8(sp)
    80003660:	00013403          	ld	s0,0(sp)
    80003664:	01010113          	addi	sp,sp,16
    80003668:	00008067          	ret
    8000366c:	00001517          	auipc	a0,0x1
    80003670:	b9450513          	addi	a0,a0,-1132 # 80004200 <digits+0x48>
    80003674:	fffff097          	auipc	ra,0xfffff
    80003678:	018080e7          	jalr	24(ra) # 8000268c <panic>
    8000367c:	00001517          	auipc	a0,0x1
    80003680:	b6c50513          	addi	a0,a0,-1172 # 800041e8 <digits+0x30>
    80003684:	fffff097          	auipc	ra,0xfffff
    80003688:	008080e7          	jalr	8(ra) # 8000268c <panic>

000000008000368c <push_on>:
    8000368c:	fe010113          	addi	sp,sp,-32
    80003690:	00813823          	sd	s0,16(sp)
    80003694:	00113c23          	sd	ra,24(sp)
    80003698:	00913423          	sd	s1,8(sp)
    8000369c:	02010413          	addi	s0,sp,32
    800036a0:	100024f3          	csrr	s1,sstatus
    800036a4:	100027f3          	csrr	a5,sstatus
    800036a8:	0027e793          	ori	a5,a5,2
    800036ac:	10079073          	csrw	sstatus,a5
    800036b0:	ffffe097          	auipc	ra,0xffffe
    800036b4:	620080e7          	jalr	1568(ra) # 80001cd0 <mycpu>
    800036b8:	07852783          	lw	a5,120(a0)
    800036bc:	02078663          	beqz	a5,800036e8 <push_on+0x5c>
    800036c0:	ffffe097          	auipc	ra,0xffffe
    800036c4:	610080e7          	jalr	1552(ra) # 80001cd0 <mycpu>
    800036c8:	07852783          	lw	a5,120(a0)
    800036cc:	01813083          	ld	ra,24(sp)
    800036d0:	01013403          	ld	s0,16(sp)
    800036d4:	0017879b          	addiw	a5,a5,1
    800036d8:	06f52c23          	sw	a5,120(a0)
    800036dc:	00813483          	ld	s1,8(sp)
    800036e0:	02010113          	addi	sp,sp,32
    800036e4:	00008067          	ret
    800036e8:	0014d493          	srli	s1,s1,0x1
    800036ec:	ffffe097          	auipc	ra,0xffffe
    800036f0:	5e4080e7          	jalr	1508(ra) # 80001cd0 <mycpu>
    800036f4:	0014f493          	andi	s1,s1,1
    800036f8:	06952e23          	sw	s1,124(a0)
    800036fc:	fc5ff06f          	j	800036c0 <push_on+0x34>

0000000080003700 <pop_on>:
    80003700:	ff010113          	addi	sp,sp,-16
    80003704:	00813023          	sd	s0,0(sp)
    80003708:	00113423          	sd	ra,8(sp)
    8000370c:	01010413          	addi	s0,sp,16
    80003710:	ffffe097          	auipc	ra,0xffffe
    80003714:	5c0080e7          	jalr	1472(ra) # 80001cd0 <mycpu>
    80003718:	100027f3          	csrr	a5,sstatus
    8000371c:	0027f793          	andi	a5,a5,2
    80003720:	04078463          	beqz	a5,80003768 <pop_on+0x68>
    80003724:	07852783          	lw	a5,120(a0)
    80003728:	02f05863          	blez	a5,80003758 <pop_on+0x58>
    8000372c:	fff7879b          	addiw	a5,a5,-1
    80003730:	06f52c23          	sw	a5,120(a0)
    80003734:	07853783          	ld	a5,120(a0)
    80003738:	00079863          	bnez	a5,80003748 <pop_on+0x48>
    8000373c:	100027f3          	csrr	a5,sstatus
    80003740:	ffd7f793          	andi	a5,a5,-3
    80003744:	10079073          	csrw	sstatus,a5
    80003748:	00813083          	ld	ra,8(sp)
    8000374c:	00013403          	ld	s0,0(sp)
    80003750:	01010113          	addi	sp,sp,16
    80003754:	00008067          	ret
    80003758:	00001517          	auipc	a0,0x1
    8000375c:	ad050513          	addi	a0,a0,-1328 # 80004228 <digits+0x70>
    80003760:	fffff097          	auipc	ra,0xfffff
    80003764:	f2c080e7          	jalr	-212(ra) # 8000268c <panic>
    80003768:	00001517          	auipc	a0,0x1
    8000376c:	aa050513          	addi	a0,a0,-1376 # 80004208 <digits+0x50>
    80003770:	fffff097          	auipc	ra,0xfffff
    80003774:	f1c080e7          	jalr	-228(ra) # 8000268c <panic>

0000000080003778 <__memset>:
    80003778:	ff010113          	addi	sp,sp,-16
    8000377c:	00813423          	sd	s0,8(sp)
    80003780:	01010413          	addi	s0,sp,16
    80003784:	1a060e63          	beqz	a2,80003940 <__memset+0x1c8>
    80003788:	40a007b3          	neg	a5,a0
    8000378c:	0077f793          	andi	a5,a5,7
    80003790:	00778693          	addi	a3,a5,7
    80003794:	00b00813          	li	a6,11
    80003798:	0ff5f593          	andi	a1,a1,255
    8000379c:	fff6071b          	addiw	a4,a2,-1
    800037a0:	1b06e663          	bltu	a3,a6,8000394c <__memset+0x1d4>
    800037a4:	1cd76463          	bltu	a4,a3,8000396c <__memset+0x1f4>
    800037a8:	1a078e63          	beqz	a5,80003964 <__memset+0x1ec>
    800037ac:	00b50023          	sb	a1,0(a0)
    800037b0:	00100713          	li	a4,1
    800037b4:	1ae78463          	beq	a5,a4,8000395c <__memset+0x1e4>
    800037b8:	00b500a3          	sb	a1,1(a0)
    800037bc:	00200713          	li	a4,2
    800037c0:	1ae78a63          	beq	a5,a4,80003974 <__memset+0x1fc>
    800037c4:	00b50123          	sb	a1,2(a0)
    800037c8:	00300713          	li	a4,3
    800037cc:	18e78463          	beq	a5,a4,80003954 <__memset+0x1dc>
    800037d0:	00b501a3          	sb	a1,3(a0)
    800037d4:	00400713          	li	a4,4
    800037d8:	1ae78263          	beq	a5,a4,8000397c <__memset+0x204>
    800037dc:	00b50223          	sb	a1,4(a0)
    800037e0:	00500713          	li	a4,5
    800037e4:	1ae78063          	beq	a5,a4,80003984 <__memset+0x20c>
    800037e8:	00b502a3          	sb	a1,5(a0)
    800037ec:	00700713          	li	a4,7
    800037f0:	18e79e63          	bne	a5,a4,8000398c <__memset+0x214>
    800037f4:	00b50323          	sb	a1,6(a0)
    800037f8:	00700e93          	li	t4,7
    800037fc:	00859713          	slli	a4,a1,0x8
    80003800:	00e5e733          	or	a4,a1,a4
    80003804:	01059e13          	slli	t3,a1,0x10
    80003808:	01c76e33          	or	t3,a4,t3
    8000380c:	01859313          	slli	t1,a1,0x18
    80003810:	006e6333          	or	t1,t3,t1
    80003814:	02059893          	slli	a7,a1,0x20
    80003818:	40f60e3b          	subw	t3,a2,a5
    8000381c:	011368b3          	or	a7,t1,a7
    80003820:	02859813          	slli	a6,a1,0x28
    80003824:	0108e833          	or	a6,a7,a6
    80003828:	03059693          	slli	a3,a1,0x30
    8000382c:	003e589b          	srliw	a7,t3,0x3
    80003830:	00d866b3          	or	a3,a6,a3
    80003834:	03859713          	slli	a4,a1,0x38
    80003838:	00389813          	slli	a6,a7,0x3
    8000383c:	00f507b3          	add	a5,a0,a5
    80003840:	00e6e733          	or	a4,a3,a4
    80003844:	000e089b          	sext.w	a7,t3
    80003848:	00f806b3          	add	a3,a6,a5
    8000384c:	00e7b023          	sd	a4,0(a5)
    80003850:	00878793          	addi	a5,a5,8
    80003854:	fed79ce3          	bne	a5,a3,8000384c <__memset+0xd4>
    80003858:	ff8e7793          	andi	a5,t3,-8
    8000385c:	0007871b          	sext.w	a4,a5
    80003860:	01d787bb          	addw	a5,a5,t4
    80003864:	0ce88e63          	beq	a7,a4,80003940 <__memset+0x1c8>
    80003868:	00f50733          	add	a4,a0,a5
    8000386c:	00b70023          	sb	a1,0(a4)
    80003870:	0017871b          	addiw	a4,a5,1
    80003874:	0cc77663          	bgeu	a4,a2,80003940 <__memset+0x1c8>
    80003878:	00e50733          	add	a4,a0,a4
    8000387c:	00b70023          	sb	a1,0(a4)
    80003880:	0027871b          	addiw	a4,a5,2
    80003884:	0ac77e63          	bgeu	a4,a2,80003940 <__memset+0x1c8>
    80003888:	00e50733          	add	a4,a0,a4
    8000388c:	00b70023          	sb	a1,0(a4)
    80003890:	0037871b          	addiw	a4,a5,3
    80003894:	0ac77663          	bgeu	a4,a2,80003940 <__memset+0x1c8>
    80003898:	00e50733          	add	a4,a0,a4
    8000389c:	00b70023          	sb	a1,0(a4)
    800038a0:	0047871b          	addiw	a4,a5,4
    800038a4:	08c77e63          	bgeu	a4,a2,80003940 <__memset+0x1c8>
    800038a8:	00e50733          	add	a4,a0,a4
    800038ac:	00b70023          	sb	a1,0(a4)
    800038b0:	0057871b          	addiw	a4,a5,5
    800038b4:	08c77663          	bgeu	a4,a2,80003940 <__memset+0x1c8>
    800038b8:	00e50733          	add	a4,a0,a4
    800038bc:	00b70023          	sb	a1,0(a4)
    800038c0:	0067871b          	addiw	a4,a5,6
    800038c4:	06c77e63          	bgeu	a4,a2,80003940 <__memset+0x1c8>
    800038c8:	00e50733          	add	a4,a0,a4
    800038cc:	00b70023          	sb	a1,0(a4)
    800038d0:	0077871b          	addiw	a4,a5,7
    800038d4:	06c77663          	bgeu	a4,a2,80003940 <__memset+0x1c8>
    800038d8:	00e50733          	add	a4,a0,a4
    800038dc:	00b70023          	sb	a1,0(a4)
    800038e0:	0087871b          	addiw	a4,a5,8
    800038e4:	04c77e63          	bgeu	a4,a2,80003940 <__memset+0x1c8>
    800038e8:	00e50733          	add	a4,a0,a4
    800038ec:	00b70023          	sb	a1,0(a4)
    800038f0:	0097871b          	addiw	a4,a5,9
    800038f4:	04c77663          	bgeu	a4,a2,80003940 <__memset+0x1c8>
    800038f8:	00e50733          	add	a4,a0,a4
    800038fc:	00b70023          	sb	a1,0(a4)
    80003900:	00a7871b          	addiw	a4,a5,10
    80003904:	02c77e63          	bgeu	a4,a2,80003940 <__memset+0x1c8>
    80003908:	00e50733          	add	a4,a0,a4
    8000390c:	00b70023          	sb	a1,0(a4)
    80003910:	00b7871b          	addiw	a4,a5,11
    80003914:	02c77663          	bgeu	a4,a2,80003940 <__memset+0x1c8>
    80003918:	00e50733          	add	a4,a0,a4
    8000391c:	00b70023          	sb	a1,0(a4)
    80003920:	00c7871b          	addiw	a4,a5,12
    80003924:	00c77e63          	bgeu	a4,a2,80003940 <__memset+0x1c8>
    80003928:	00e50733          	add	a4,a0,a4
    8000392c:	00b70023          	sb	a1,0(a4)
    80003930:	00d7879b          	addiw	a5,a5,13
    80003934:	00c7f663          	bgeu	a5,a2,80003940 <__memset+0x1c8>
    80003938:	00f507b3          	add	a5,a0,a5
    8000393c:	00b78023          	sb	a1,0(a5)
    80003940:	00813403          	ld	s0,8(sp)
    80003944:	01010113          	addi	sp,sp,16
    80003948:	00008067          	ret
    8000394c:	00b00693          	li	a3,11
    80003950:	e55ff06f          	j	800037a4 <__memset+0x2c>
    80003954:	00300e93          	li	t4,3
    80003958:	ea5ff06f          	j	800037fc <__memset+0x84>
    8000395c:	00100e93          	li	t4,1
    80003960:	e9dff06f          	j	800037fc <__memset+0x84>
    80003964:	00000e93          	li	t4,0
    80003968:	e95ff06f          	j	800037fc <__memset+0x84>
    8000396c:	00000793          	li	a5,0
    80003970:	ef9ff06f          	j	80003868 <__memset+0xf0>
    80003974:	00200e93          	li	t4,2
    80003978:	e85ff06f          	j	800037fc <__memset+0x84>
    8000397c:	00400e93          	li	t4,4
    80003980:	e7dff06f          	j	800037fc <__memset+0x84>
    80003984:	00500e93          	li	t4,5
    80003988:	e75ff06f          	j	800037fc <__memset+0x84>
    8000398c:	00600e93          	li	t4,6
    80003990:	e6dff06f          	j	800037fc <__memset+0x84>

0000000080003994 <__memmove>:
    80003994:	ff010113          	addi	sp,sp,-16
    80003998:	00813423          	sd	s0,8(sp)
    8000399c:	01010413          	addi	s0,sp,16
    800039a0:	0e060863          	beqz	a2,80003a90 <__memmove+0xfc>
    800039a4:	fff6069b          	addiw	a3,a2,-1
    800039a8:	0006881b          	sext.w	a6,a3
    800039ac:	0ea5e863          	bltu	a1,a0,80003a9c <__memmove+0x108>
    800039b0:	00758713          	addi	a4,a1,7
    800039b4:	00a5e7b3          	or	a5,a1,a0
    800039b8:	40a70733          	sub	a4,a4,a0
    800039bc:	0077f793          	andi	a5,a5,7
    800039c0:	00f73713          	sltiu	a4,a4,15
    800039c4:	00174713          	xori	a4,a4,1
    800039c8:	0017b793          	seqz	a5,a5
    800039cc:	00e7f7b3          	and	a5,a5,a4
    800039d0:	10078863          	beqz	a5,80003ae0 <__memmove+0x14c>
    800039d4:	00900793          	li	a5,9
    800039d8:	1107f463          	bgeu	a5,a6,80003ae0 <__memmove+0x14c>
    800039dc:	0036581b          	srliw	a6,a2,0x3
    800039e0:	fff8081b          	addiw	a6,a6,-1
    800039e4:	02081813          	slli	a6,a6,0x20
    800039e8:	01d85893          	srli	a7,a6,0x1d
    800039ec:	00858813          	addi	a6,a1,8
    800039f0:	00058793          	mv	a5,a1
    800039f4:	00050713          	mv	a4,a0
    800039f8:	01088833          	add	a6,a7,a6
    800039fc:	0007b883          	ld	a7,0(a5)
    80003a00:	00878793          	addi	a5,a5,8
    80003a04:	00870713          	addi	a4,a4,8
    80003a08:	ff173c23          	sd	a7,-8(a4)
    80003a0c:	ff0798e3          	bne	a5,a6,800039fc <__memmove+0x68>
    80003a10:	ff867713          	andi	a4,a2,-8
    80003a14:	02071793          	slli	a5,a4,0x20
    80003a18:	0207d793          	srli	a5,a5,0x20
    80003a1c:	00f585b3          	add	a1,a1,a5
    80003a20:	40e686bb          	subw	a3,a3,a4
    80003a24:	00f507b3          	add	a5,a0,a5
    80003a28:	06e60463          	beq	a2,a4,80003a90 <__memmove+0xfc>
    80003a2c:	0005c703          	lbu	a4,0(a1)
    80003a30:	00e78023          	sb	a4,0(a5)
    80003a34:	04068e63          	beqz	a3,80003a90 <__memmove+0xfc>
    80003a38:	0015c603          	lbu	a2,1(a1)
    80003a3c:	00100713          	li	a4,1
    80003a40:	00c780a3          	sb	a2,1(a5)
    80003a44:	04e68663          	beq	a3,a4,80003a90 <__memmove+0xfc>
    80003a48:	0025c603          	lbu	a2,2(a1)
    80003a4c:	00200713          	li	a4,2
    80003a50:	00c78123          	sb	a2,2(a5)
    80003a54:	02e68e63          	beq	a3,a4,80003a90 <__memmove+0xfc>
    80003a58:	0035c603          	lbu	a2,3(a1)
    80003a5c:	00300713          	li	a4,3
    80003a60:	00c781a3          	sb	a2,3(a5)
    80003a64:	02e68663          	beq	a3,a4,80003a90 <__memmove+0xfc>
    80003a68:	0045c603          	lbu	a2,4(a1)
    80003a6c:	00400713          	li	a4,4
    80003a70:	00c78223          	sb	a2,4(a5)
    80003a74:	00e68e63          	beq	a3,a4,80003a90 <__memmove+0xfc>
    80003a78:	0055c603          	lbu	a2,5(a1)
    80003a7c:	00500713          	li	a4,5
    80003a80:	00c782a3          	sb	a2,5(a5)
    80003a84:	00e68663          	beq	a3,a4,80003a90 <__memmove+0xfc>
    80003a88:	0065c703          	lbu	a4,6(a1)
    80003a8c:	00e78323          	sb	a4,6(a5)
    80003a90:	00813403          	ld	s0,8(sp)
    80003a94:	01010113          	addi	sp,sp,16
    80003a98:	00008067          	ret
    80003a9c:	02061713          	slli	a4,a2,0x20
    80003aa0:	02075713          	srli	a4,a4,0x20
    80003aa4:	00e587b3          	add	a5,a1,a4
    80003aa8:	f0f574e3          	bgeu	a0,a5,800039b0 <__memmove+0x1c>
    80003aac:	02069613          	slli	a2,a3,0x20
    80003ab0:	02065613          	srli	a2,a2,0x20
    80003ab4:	fff64613          	not	a2,a2
    80003ab8:	00e50733          	add	a4,a0,a4
    80003abc:	00c78633          	add	a2,a5,a2
    80003ac0:	fff7c683          	lbu	a3,-1(a5)
    80003ac4:	fff78793          	addi	a5,a5,-1
    80003ac8:	fff70713          	addi	a4,a4,-1
    80003acc:	00d70023          	sb	a3,0(a4)
    80003ad0:	fec798e3          	bne	a5,a2,80003ac0 <__memmove+0x12c>
    80003ad4:	00813403          	ld	s0,8(sp)
    80003ad8:	01010113          	addi	sp,sp,16
    80003adc:	00008067          	ret
    80003ae0:	02069713          	slli	a4,a3,0x20
    80003ae4:	02075713          	srli	a4,a4,0x20
    80003ae8:	00170713          	addi	a4,a4,1
    80003aec:	00e50733          	add	a4,a0,a4
    80003af0:	00050793          	mv	a5,a0
    80003af4:	0005c683          	lbu	a3,0(a1)
    80003af8:	00178793          	addi	a5,a5,1
    80003afc:	00158593          	addi	a1,a1,1
    80003b00:	fed78fa3          	sb	a3,-1(a5)
    80003b04:	fee798e3          	bne	a5,a4,80003af4 <__memmove+0x160>
    80003b08:	f89ff06f          	j	80003a90 <__memmove+0xfc>

0000000080003b0c <__putc>:
    80003b0c:	fe010113          	addi	sp,sp,-32
    80003b10:	00813823          	sd	s0,16(sp)
    80003b14:	00113c23          	sd	ra,24(sp)
    80003b18:	02010413          	addi	s0,sp,32
    80003b1c:	00050793          	mv	a5,a0
    80003b20:	fef40593          	addi	a1,s0,-17
    80003b24:	00100613          	li	a2,1
    80003b28:	00000513          	li	a0,0
    80003b2c:	fef407a3          	sb	a5,-17(s0)
    80003b30:	fffff097          	auipc	ra,0xfffff
    80003b34:	b3c080e7          	jalr	-1220(ra) # 8000266c <console_write>
    80003b38:	01813083          	ld	ra,24(sp)
    80003b3c:	01013403          	ld	s0,16(sp)
    80003b40:	02010113          	addi	sp,sp,32
    80003b44:	00008067          	ret

0000000080003b48 <__getc>:
    80003b48:	fe010113          	addi	sp,sp,-32
    80003b4c:	00813823          	sd	s0,16(sp)
    80003b50:	00113c23          	sd	ra,24(sp)
    80003b54:	02010413          	addi	s0,sp,32
    80003b58:	fe840593          	addi	a1,s0,-24
    80003b5c:	00100613          	li	a2,1
    80003b60:	00000513          	li	a0,0
    80003b64:	fffff097          	auipc	ra,0xfffff
    80003b68:	ae8080e7          	jalr	-1304(ra) # 8000264c <console_read>
    80003b6c:	fe844503          	lbu	a0,-24(s0)
    80003b70:	01813083          	ld	ra,24(sp)
    80003b74:	01013403          	ld	s0,16(sp)
    80003b78:	02010113          	addi	sp,sp,32
    80003b7c:	00008067          	ret

0000000080003b80 <console_handler>:
    80003b80:	fe010113          	addi	sp,sp,-32
    80003b84:	00813823          	sd	s0,16(sp)
    80003b88:	00113c23          	sd	ra,24(sp)
    80003b8c:	00913423          	sd	s1,8(sp)
    80003b90:	02010413          	addi	s0,sp,32
    80003b94:	14202773          	csrr	a4,scause
    80003b98:	100027f3          	csrr	a5,sstatus
    80003b9c:	0027f793          	andi	a5,a5,2
    80003ba0:	06079e63          	bnez	a5,80003c1c <console_handler+0x9c>
    80003ba4:	00074c63          	bltz	a4,80003bbc <console_handler+0x3c>
    80003ba8:	01813083          	ld	ra,24(sp)
    80003bac:	01013403          	ld	s0,16(sp)
    80003bb0:	00813483          	ld	s1,8(sp)
    80003bb4:	02010113          	addi	sp,sp,32
    80003bb8:	00008067          	ret
    80003bbc:	0ff77713          	andi	a4,a4,255
    80003bc0:	00900793          	li	a5,9
    80003bc4:	fef712e3          	bne	a4,a5,80003ba8 <console_handler+0x28>
    80003bc8:	ffffe097          	auipc	ra,0xffffe
    80003bcc:	6dc080e7          	jalr	1756(ra) # 800022a4 <plic_claim>
    80003bd0:	00a00793          	li	a5,10
    80003bd4:	00050493          	mv	s1,a0
    80003bd8:	02f50c63          	beq	a0,a5,80003c10 <console_handler+0x90>
    80003bdc:	fc0506e3          	beqz	a0,80003ba8 <console_handler+0x28>
    80003be0:	00050593          	mv	a1,a0
    80003be4:	00000517          	auipc	a0,0x0
    80003be8:	54c50513          	addi	a0,a0,1356 # 80004130 <_ZZ12printIntegermE6digits+0xe0>
    80003bec:	fffff097          	auipc	ra,0xfffff
    80003bf0:	afc080e7          	jalr	-1284(ra) # 800026e8 <__printf>
    80003bf4:	01013403          	ld	s0,16(sp)
    80003bf8:	01813083          	ld	ra,24(sp)
    80003bfc:	00048513          	mv	a0,s1
    80003c00:	00813483          	ld	s1,8(sp)
    80003c04:	02010113          	addi	sp,sp,32
    80003c08:	ffffe317          	auipc	t1,0xffffe
    80003c0c:	6d430067          	jr	1748(t1) # 800022dc <plic_complete>
    80003c10:	fffff097          	auipc	ra,0xfffff
    80003c14:	3e0080e7          	jalr	992(ra) # 80002ff0 <uartintr>
    80003c18:	fddff06f          	j	80003bf4 <console_handler+0x74>
    80003c1c:	00000517          	auipc	a0,0x0
    80003c20:	61450513          	addi	a0,a0,1556 # 80004230 <digits+0x78>
    80003c24:	fffff097          	auipc	ra,0xfffff
    80003c28:	a68080e7          	jalr	-1432(ra) # 8000268c <panic>
	...
