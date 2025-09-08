
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00004117          	auipc	sp,0x4
    80000004:	4c013103          	ld	sp,1216(sp) # 800044c0 <_GLOBAL_OFFSET_TABLE_+0x10>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	031010ef          	jal	ra,8000184c <start>

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
    80001084:	3f8000ef          	jal	ra,8000147c <SupervisorTrapHandlerWrapper>
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
    80001188:	00813403          	ld	s0,8(sp)
    8000118c:	01010113          	addi	sp,sp,16
    80001190:	00008067          	ret
        return 0;
    80001194:	00000513          	li	a0,0
    80001198:	ff1ff06f          	j	80001188 <_Z8mem_freePv+0x28>

000000008000119c <_Z13AllocatorTestv>:
// }


//extern "C" void SupervisorTrap();

void AllocatorTest() {
    8000119c:	fd010113          	addi	sp,sp,-48
    800011a0:	02113423          	sd	ra,40(sp)
    800011a4:	02813023          	sd	s0,32(sp)
    800011a8:	00913c23          	sd	s1,24(sp)
    800011ac:	01213823          	sd	s2,16(sp)
    800011b0:	01313423          	sd	s3,8(sp)
    800011b4:	03010413          	addi	s0,sp,48
    uint64* a1=new uint64;
    800011b8:	00800513          	li	a0,8
    800011bc:	00000097          	auipc	ra,0x0
    800011c0:	1b4080e7          	jalr	436(ra) # 80001370 <_Znwm>
    800011c4:	00050993          	mv	s3,a0
    *a1=4;
    800011c8:	00400793          	li	a5,4
    800011cc:	00f53023          	sd	a5,0(a0) # 1000 <_entry-0x7ffff000>
    __putc(*a1+'0');
    800011d0:	03400513          	li	a0,52
    800011d4:	00002097          	auipc	ra,0x2
    800011d8:	738080e7          	jalr	1848(ra) # 8000390c <__putc>
    __putc('\n');
    800011dc:	00a00513          	li	a0,10
    800011e0:	00002097          	auipc	ra,0x2
    800011e4:	72c080e7          	jalr	1836(ra) # 8000390c <__putc>
    uint64* a2=new uint64;
    800011e8:	00800513          	li	a0,8
    800011ec:	00000097          	auipc	ra,0x0
    800011f0:	184080e7          	jalr	388(ra) # 80001370 <_Znwm>
    *a2=5;
    800011f4:	00500793          	li	a5,5
    800011f8:	00f53023          	sd	a5,0(a0)
    __putc(*a2+'0');
    800011fc:	03500513          	li	a0,53
    80001200:	00002097          	auipc	ra,0x2
    80001204:	70c080e7          	jalr	1804(ra) # 8000390c <__putc>
    __putc('\n');
    80001208:	00a00513          	li	a0,10
    8000120c:	00002097          	auipc	ra,0x2
    80001210:	700080e7          	jalr	1792(ra) # 8000390c <__putc>
    uint64* a3=new uint64;
    80001214:	00800513          	li	a0,8
    80001218:	00000097          	auipc	ra,0x0
    8000121c:	158080e7          	jalr	344(ra) # 80001370 <_Znwm>
    80001220:	00050913          	mv	s2,a0
    *a3=6;
    80001224:	00600793          	li	a5,6
    80001228:	00f53023          	sd	a5,0(a0)
    __putc(*a3+'0');
    8000122c:	03600513          	li	a0,54
    80001230:	00002097          	auipc	ra,0x2
    80001234:	6dc080e7          	jalr	1756(ra) # 8000390c <__putc>
    __putc('\n');
    80001238:	00a00513          	li	a0,10
    8000123c:	00002097          	auipc	ra,0x2
    80001240:	6d0080e7          	jalr	1744(ra) # 8000390c <__putc>
    uint64* a4=new uint64;
    80001244:	00800513          	li	a0,8
    80001248:	00000097          	auipc	ra,0x0
    8000124c:	128080e7          	jalr	296(ra) # 80001370 <_Znwm>
    80001250:	00050493          	mv	s1,a0
    *a4=7;
    80001254:	00700793          	li	a5,7
    80001258:	00f53023          	sd	a5,0(a0)
    __putc(*a4+'0');
    8000125c:	03700513          	li	a0,55
    80001260:	00002097          	auipc	ra,0x2
    80001264:	6ac080e7          	jalr	1708(ra) # 8000390c <__putc>
    __putc('\n');
    80001268:	00a00513          	li	a0,10
    8000126c:	00002097          	auipc	ra,0x2
    80001270:	6a0080e7          	jalr	1696(ra) # 8000390c <__putc>
    uint64* a5=new uint64;
    80001274:	00800513          	li	a0,8
    80001278:	00000097          	auipc	ra,0x0
    8000127c:	0f8080e7          	jalr	248(ra) # 80001370 <_Znwm>
    *a5=8;
    80001280:	00800793          	li	a5,8
    80001284:	00f53023          	sd	a5,0(a0)
    __putc(*a5+'0');
    80001288:	03800513          	li	a0,56
    8000128c:	00002097          	auipc	ra,0x2
    80001290:	680080e7          	jalr	1664(ra) # 8000390c <__putc>
    __putc('\n');
    80001294:	00a00513          	li	a0,10
    80001298:	00002097          	auipc	ra,0x2
    8000129c:	674080e7          	jalr	1652(ra) # 8000390c <__putc>
    delete a1;
    800012a0:	00098863          	beqz	s3,800012b0 <_Z13AllocatorTestv+0x114>
    800012a4:	00098513          	mv	a0,s3
    800012a8:	00000097          	auipc	ra,0x0
    800012ac:	0f0080e7          	jalr	240(ra) # 80001398 <_ZdlPv>
    delete a3;
    800012b0:	00090863          	beqz	s2,800012c0 <_Z13AllocatorTestv+0x124>
    800012b4:	00090513          	mv	a0,s2
    800012b8:	00000097          	auipc	ra,0x0
    800012bc:	0e0080e7          	jalr	224(ra) # 80001398 <_ZdlPv>
    delete a4;
    800012c0:	00048863          	beqz	s1,800012d0 <_Z13AllocatorTestv+0x134>
    800012c4:	00048513          	mv	a0,s1
    800012c8:	00000097          	auipc	ra,0x0
    800012cc:	0d0080e7          	jalr	208(ra) # 80001398 <_ZdlPv>
    uint64* a6=new uint64;
    800012d0:	00800513          	li	a0,8
    800012d4:	00000097          	auipc	ra,0x0
    800012d8:	09c080e7          	jalr	156(ra) # 80001370 <_Znwm>
    *a6=9;
    800012dc:	00900793          	li	a5,9
    800012e0:	00f53023          	sd	a5,0(a0)
    __putc(*a6+'0');
    800012e4:	03900513          	li	a0,57
    800012e8:	00002097          	auipc	ra,0x2
    800012ec:	624080e7          	jalr	1572(ra) # 8000390c <__putc>
    __putc('\n');
    800012f0:	00a00513          	li	a0,10
    800012f4:	00002097          	auipc	ra,0x2
    800012f8:	618080e7          	jalr	1560(ra) # 8000390c <__putc>

}
    800012fc:	02813083          	ld	ra,40(sp)
    80001300:	02013403          	ld	s0,32(sp)
    80001304:	01813483          	ld	s1,24(sp)
    80001308:	01013903          	ld	s2,16(sp)
    8000130c:	00813983          	ld	s3,8(sp)
    80001310:	03010113          	addi	sp,sp,48
    80001314:	00008067          	ret

0000000080001318 <main>:

extern "C" void SupervisorTrap();

void main() {
    80001318:	ff010113          	addi	sp,sp,-16
    8000131c:	00113423          	sd	ra,8(sp)
    80001320:	00813023          	sd	s0,0(sp)
    80001324:	01010413          	addi	s0,sp,16
    Riscv::set_stvec((uint64)SupervisorTrap);
    80001328:	00003797          	auipc	a5,0x3
    8000132c:	1a07b783          	ld	a5,416(a5) # 800044c8 <_GLOBAL_OFFSET_TABLE_+0x18>
    static void SupervisorTrapHandler();
};


inline void Riscv::set_stvec(uint64 stvec) {
    __asm__ volatile ("csrw stvec, %[x]" :: [x] "r" (stvec));
    80001330:	10579073          	csrw	stvec,a5
    AllocatorTest();
    80001334:	00000097          	auipc	ra,0x0
    80001338:	e68080e7          	jalr	-408(ra) # 8000119c <_Z13AllocatorTestv>



    __putc('O');
    8000133c:	04f00513          	li	a0,79
    80001340:	00002097          	auipc	ra,0x2
    80001344:	5cc080e7          	jalr	1484(ra) # 8000390c <__putc>
    __putc('K');
    80001348:	04b00513          	li	a0,75
    8000134c:	00002097          	auipc	ra,0x2
    80001350:	5c0080e7          	jalr	1472(ra) # 8000390c <__putc>
    __putc('\n');
    80001354:	00a00513          	li	a0,10
    80001358:	00002097          	auipc	ra,0x2
    8000135c:	5b4080e7          	jalr	1460(ra) # 8000390c <__putc>
}
    80001360:	00813083          	ld	ra,8(sp)
    80001364:	00013403          	ld	s0,0(sp)
    80001368:	01010113          	addi	sp,sp,16
    8000136c:	00008067          	ret

0000000080001370 <_Znwm>:
//
#include "../h/syscall_cpp.hpp"
#include "../h/syscall_c.hpp"

void* operator new(size_t size)
{
    80001370:	ff010113          	addi	sp,sp,-16
    80001374:	00113423          	sd	ra,8(sp)
    80001378:	00813023          	sd	s0,0(sp)
    8000137c:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80001380:	00000097          	auipc	ra,0x0
    80001384:	da0080e7          	jalr	-608(ra) # 80001120 <_Z9mem_allocm>
}
    80001388:	00813083          	ld	ra,8(sp)
    8000138c:	00013403          	ld	s0,0(sp)
    80001390:	01010113          	addi	sp,sp,16
    80001394:	00008067          	ret

0000000080001398 <_ZdlPv>:

void operator delete(void* ptr)
{
    80001398:	ff010113          	addi	sp,sp,-16
    8000139c:	00113423          	sd	ra,8(sp)
    800013a0:	00813023          	sd	s0,0(sp)
    800013a4:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    800013a8:	00000097          	auipc	ra,0x0
    800013ac:	db8080e7          	jalr	-584(ra) # 80001160 <_Z8mem_freePv>
    800013b0:	00813083          	ld	ra,8(sp)
    800013b4:	00013403          	ld	s0,0(sp)
    800013b8:	01010113          	addi	sp,sp,16
    800013bc:	00008067          	ret

00000000800013c0 <_ZN5Riscv21SupervisorTrapHandlerEv>:
extern  "C" void SupervisorTrapHandlerWrapper() {
    Riscv::SupervisorTrapHandler();
}


void Riscv::SupervisorTrapHandler() {
    800013c0:	fd010113          	addi	sp,sp,-48
    800013c4:	02113423          	sd	ra,40(sp)
    800013c8:	02813023          	sd	s0,32(sp)
    800013cc:	00913c23          	sd	s1,24(sp)
    800013d0:	01213823          	sd	s2,16(sp)
    800013d4:	01313423          	sd	s3,8(sp)
    800013d8:	03010413          	addi	s0,sp,48
    __asm__ volatile ("csrw sepc, %[x]" :: [x] "r" (sepc));
}

inline uint64 Riscv::get_sepc() {
    uint64 sepc;
    __asm__ volatile ("csrr %[x],sepc" : [x] "=r" (sepc));
    800013dc:	141024f3          	csrr	s1,sepc
    __asm__ volatile ("csrw sstatus, %[x]" :: [x] "r" (sstatus));
}

inline uint64 Riscv::get_sstatus() {
    uint64 sstatus;
    __asm__ volatile ("csrr %[x],sstatus" : [x] "=r" (sstatus));
    800013e0:	10002973          	csrr	s2,sstatus
    uint64 sstatus;
    sepc=get_sepc();
    sstatus=get_sstatus();

    uint64 syscode;
    __asm__ volatile ("mv %[x], a0" : [x] "=r" (syscode));
    800013e4:	00050793          	mv	a5,a0

    if (syscode==MEM_ALLOC) {
    800013e8:	00100713          	li	a4,1
    800013ec:	04e78663          	beq	a5,a4,80001438 <_ZN5Riscv21SupervisorTrapHandlerEv+0x78>
        size_t size_in_blocks;
        __asm__ volatile ("mv %[x], a1" : [x] "=r" (size_in_blocks));
        void* ptr = MemoryAllocator::Instance()->mem_alloc(size_in_blocks * MEM_BLOCK_SIZE);
        __asm__ volatile ("mv a0,%[x]" :: [x] "r" (ptr));
    }
    else if (syscode==MEM_FREE) {
    800013f0:	00200713          	li	a4,2
    800013f4:	06e78263          	beq	a5,a4,80001458 <_ZN5Riscv21SupervisorTrapHandlerEv+0x98>
        __asm__ volatile ("mv %[x], a1" : [x] "=r" (ptr));
        MemoryAllocator::Instance()->mem_free(ptr);
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (0));
    }
    else {
        __putc('E');
    800013f8:	04500513          	li	a0,69
    800013fc:	00002097          	auipc	ra,0x2
    80001400:	510080e7          	jalr	1296(ra) # 8000390c <__putc>
        __putc('\n');
    80001404:	00a00513          	li	a0,10
    80001408:	00002097          	auipc	ra,0x2
    8000140c:	504080e7          	jalr	1284(ra) # 8000390c <__putc>
    }



    set_sepc(sepc+4);
    80001410:	00448493          	addi	s1,s1,4
    __asm__ volatile ("csrw sepc, %[x]" :: [x] "r" (sepc));
    80001414:	14149073          	csrw	sepc,s1
    __asm__ volatile ("csrw sstatus, %[x]" :: [x] "r" (sstatus));
    80001418:	10091073          	csrw	sstatus,s2
    set_sstatus(sstatus);
    8000141c:	02813083          	ld	ra,40(sp)
    80001420:	02013403          	ld	s0,32(sp)
    80001424:	01813483          	ld	s1,24(sp)
    80001428:	01013903          	ld	s2,16(sp)
    8000142c:	00813983          	ld	s3,8(sp)
    80001430:	03010113          	addi	sp,sp,48
    80001434:	00008067          	ret
        __asm__ volatile ("mv %[x], a1" : [x] "=r" (size_in_blocks));
    80001438:	00058993          	mv	s3,a1
        void* ptr = MemoryAllocator::Instance()->mem_alloc(size_in_blocks * MEM_BLOCK_SIZE);
    8000143c:	00000097          	auipc	ra,0x0
    80001440:	0c4080e7          	jalr	196(ra) # 80001500 <_ZN15MemoryAllocator8InstanceEv>
    80001444:	00699593          	slli	a1,s3,0x6
    80001448:	00000097          	auipc	ra,0x0
    8000144c:	114080e7          	jalr	276(ra) # 8000155c <_ZN15MemoryAllocator9mem_allocEm>
        __asm__ volatile ("mv a0,%[x]" :: [x] "r" (ptr));
    80001450:	00050513          	mv	a0,a0
    80001454:	fbdff06f          	j	80001410 <_ZN5Riscv21SupervisorTrapHandlerEv+0x50>
        __asm__ volatile ("mv %[x], a1" : [x] "=r" (ptr));
    80001458:	00058993          	mv	s3,a1
        MemoryAllocator::Instance()->mem_free(ptr);
    8000145c:	00000097          	auipc	ra,0x0
    80001460:	0a4080e7          	jalr	164(ra) # 80001500 <_ZN15MemoryAllocator8InstanceEv>
    80001464:	00098593          	mv	a1,s3
    80001468:	00000097          	auipc	ra,0x0
    8000146c:	2dc080e7          	jalr	732(ra) # 80001744 <_ZN15MemoryAllocator8mem_freeEPv>
        __asm__ volatile ("mv a0, %[x]" :: [x] "r" (0));
    80001470:	00000793          	li	a5,0
    80001474:	00078513          	mv	a0,a5
    80001478:	f99ff06f          	j	80001410 <_ZN5Riscv21SupervisorTrapHandlerEv+0x50>

000000008000147c <SupervisorTrapHandlerWrapper>:
extern  "C" void SupervisorTrapHandlerWrapper() {
    8000147c:	ff010113          	addi	sp,sp,-16
    80001480:	00113423          	sd	ra,8(sp)
    80001484:	00813023          	sd	s0,0(sp)
    80001488:	01010413          	addi	s0,sp,16
    Riscv::SupervisorTrapHandler();
    8000148c:	00000097          	auipc	ra,0x0
    80001490:	f34080e7          	jalr	-204(ra) # 800013c0 <_ZN5Riscv21SupervisorTrapHandlerEv>
}
    80001494:	00813083          	ld	ra,8(sp)
    80001498:	00013403          	ld	s0,0(sp)
    8000149c:	01010113          	addi	sp,sp,16
    800014a0:	00008067          	ret

00000000800014a4 <_ZN15MemoryAllocatorC1Ev>:

#include "../h/MemoryAllocator.hpp"
#include "../lib/console.h"


MemoryAllocator::MemoryAllocator() {
    800014a4:	ff010113          	addi	sp,sp,-16
    800014a8:	00813423          	sd	s0,8(sp)
    800014ac:	01010413          	addi	s0,sp,16
    this->head = (MemoryHeader*)HEAP_START_ADDR;
    800014b0:	00003797          	auipc	a5,0x3
    800014b4:	0087b783          	ld	a5,8(a5) # 800044b8 <_GLOBAL_OFFSET_TABLE_+0x8>
    800014b8:	0007b703          	ld	a4,0(a5)
    800014bc:	00e53023          	sd	a4,0(a0)
    // this->tail = (MemoryHeader*)HEAP_START_ADDR;
    // this->tail->next=nullptr;
    // this->tail->prev=nullptr;
    this->head->next=nullptr;
    800014c0:	00073423          	sd	zero,8(a4)
    this->head->prev=nullptr;
    800014c4:	00053783          	ld	a5,0(a0)
    800014c8:	0007b823          	sd	zero,16(a5)
    this->head->size = (size_t)((char*)HEAP_END_ADDR - (char*)HEAP_START_ADDR - sizeof(MemoryHeader));
    800014cc:	00003797          	auipc	a5,0x3
    800014d0:	0047b783          	ld	a5,4(a5) # 800044d0 <_GLOBAL_OFFSET_TABLE_+0x20>
    800014d4:	0007b783          	ld	a5,0(a5)
    800014d8:	40e787b3          	sub	a5,a5,a4
    800014dc:	00053703          	ld	a4,0(a0)
    800014e0:	fe878793          	addi	a5,a5,-24
    800014e4:	00f73023          	sd	a5,0(a4)
    this->freeMemSize=this->head->size;
    800014e8:	00053783          	ld	a5,0(a0)
    800014ec:	0007b783          	ld	a5,0(a5)
    800014f0:	00f53423          	sd	a5,8(a0)
}
    800014f4:	00813403          	ld	s0,8(sp)
    800014f8:	01010113          	addi	sp,sp,16
    800014fc:	00008067          	ret

0000000080001500 <_ZN15MemoryAllocator8InstanceEv>:




MemoryAllocator* MemoryAllocator::Instance() {
    static MemoryAllocator instance;
    80001500:	00003797          	auipc	a5,0x3
    80001504:	0207c783          	lbu	a5,32(a5) # 80004520 <_ZGVZN15MemoryAllocator8InstanceEvE8instance>
    80001508:	00078863          	beqz	a5,80001518 <_ZN15MemoryAllocator8InstanceEv+0x18>
    return &instance;
}
    8000150c:	00003517          	auipc	a0,0x3
    80001510:	01c50513          	addi	a0,a0,28 # 80004528 <_ZZN15MemoryAllocator8InstanceEvE8instance>
    80001514:	00008067          	ret
MemoryAllocator* MemoryAllocator::Instance() {
    80001518:	ff010113          	addi	sp,sp,-16
    8000151c:	00113423          	sd	ra,8(sp)
    80001520:	00813023          	sd	s0,0(sp)
    80001524:	01010413          	addi	s0,sp,16
    static MemoryAllocator instance;
    80001528:	00003517          	auipc	a0,0x3
    8000152c:	00050513          	mv	a0,a0
    80001530:	00000097          	auipc	ra,0x0
    80001534:	f74080e7          	jalr	-140(ra) # 800014a4 <_ZN15MemoryAllocatorC1Ev>
    80001538:	00100793          	li	a5,1
    8000153c:	00003717          	auipc	a4,0x3
    80001540:	fef70223          	sb	a5,-28(a4) # 80004520 <_ZGVZN15MemoryAllocator8InstanceEvE8instance>
}
    80001544:	00003517          	auipc	a0,0x3
    80001548:	fe450513          	addi	a0,a0,-28 # 80004528 <_ZZN15MemoryAllocator8InstanceEvE8instance>
    8000154c:	00813083          	ld	ra,8(sp)
    80001550:	00013403          	ld	s0,0(sp)
    80001554:	01010113          	addi	sp,sp,16
    80001558:	00008067          	ret

000000008000155c <_ZN15MemoryAllocator9mem_allocEm>:


void* MemoryAllocator::mem_alloc(size_t size) {
    8000155c:	00050613          	mv	a2,a0
    if (this->head==nullptr)
    80001560:	00053503          	ld	a0,0(a0)
    80001564:	12050c63          	beqz	a0,8000169c <_ZN15MemoryAllocator9mem_allocEm+0x140>
        return nullptr;
    if (size==0) {
    80001568:	12058263          	beqz	a1,8000168c <_ZN15MemoryAllocator9mem_allocEm+0x130>
void* MemoryAllocator::mem_alloc(size_t size) {
    8000156c:	fe010113          	addi	sp,sp,-32
    80001570:	00113c23          	sd	ra,24(sp)
    80001574:	00813823          	sd	s0,16(sp)
    80001578:	00913423          	sd	s1,8(sp)
    8000157c:	02010413          	addi	s0,sp,32
        return nullptr;
    }
    uint64 offset = size % MEM_BLOCK_SIZE;
    80001580:	03f5f793          	andi	a5,a1,63
    if (offset!=0)
    80001584:	00078463          	beqz	a5,8000158c <_ZN15MemoryAllocator9mem_allocEm+0x30>
        offset=1;
    80001588:	00100793          	li	a5,1

    size_t actulalSize = (size  / MEM_BLOCK_SIZE+offset ) * MEM_BLOCK_SIZE;
    8000158c:	0065d713          	srli	a4,a1,0x6
    80001590:	00f70733          	add	a4,a4,a5
    80001594:	00671713          	slli	a4,a4,0x6


    MemoryHeader* curr= this->head;
    80001598:	00050793          	mv	a5,a0
    while (curr->next!=nullptr && curr->size < actulalSize) {
    8000159c:	00078493          	mv	s1,a5
    800015a0:	0087b783          	ld	a5,8(a5)
    800015a4:	00078663          	beqz	a5,800015b0 <_ZN15MemoryAllocator9mem_allocEm+0x54>
    800015a8:	0004b683          	ld	a3,0(s1)
    800015ac:	fee6e8e3          	bltu	a3,a4,8000159c <_ZN15MemoryAllocator9mem_allocEm+0x40>
        curr=curr->next;
    }
    if (curr->size < actulalSize) {
    800015b0:	0004b683          	ld	a3,0(s1)
    800015b4:	0ee6e063          	bltu	a3,a4,80001694 <_ZN15MemoryAllocator9mem_allocEm+0x138>
        return nullptr;
    }



    if (curr->size - actulalSize >= MEM_BLOCK_SIZE+sizeof(MemoryHeader)) {
    800015b8:	40e686b3          	sub	a3,a3,a4
    800015bc:	05700593          	li	a1,87
    800015c0:	08d5f863          	bgeu	a1,a3,80001650 <_ZN15MemoryAllocator9mem_allocEm+0xf4>


        MemoryHeader* new_seg=(MemoryHeader*)((char*)curr + sizeof(MemoryHeader) + actulalSize);
    800015c4:	01870793          	addi	a5,a4,24
    800015c8:	00f487b3          	add	a5,s1,a5
        new_seg->size = curr->size - actulalSize - sizeof(MemoryHeader);
    800015cc:	fe868693          	addi	a3,a3,-24
    800015d0:	00d7b023          	sd	a3,0(a5)
        new_seg->next=curr->next;
    800015d4:	0084b683          	ld	a3,8(s1)
    800015d8:	00d7b423          	sd	a3,8(a5)
        new_seg->prev=curr->prev;
    800015dc:	0104b683          	ld	a3,16(s1)
    800015e0:	00d7b823          	sd	a3,16(a5)
        if (curr==this->head) {
    800015e4:	00063683          	ld	a3,0(a2)
    800015e8:	06968063          	beq	a3,s1,80001648 <_ZN15MemoryAllocator9mem_allocEm+0xec>
            this->head=new_seg;
        }
        // if (curr==this->tail) {
        //     this->tail=new_seg;
        // }
        if (curr->prev)
    800015ec:	0104b683          	ld	a3,16(s1)
    800015f0:	00068463          	beqz	a3,800015f8 <_ZN15MemoryAllocator9mem_allocEm+0x9c>
            curr->prev->next=new_seg;
    800015f4:	00f6b423          	sd	a5,8(a3)
        if (curr->next)
    800015f8:	0084b683          	ld	a3,8(s1)
    800015fc:	00068463          	beqz	a3,80001604 <_ZN15MemoryAllocator9mem_allocEm+0xa8>
            curr->next->prev=new_seg;
    80001600:	00f6b823          	sd	a5,16(a3)
        curr->size=actulalSize;
    80001604:	00e4b023          	sd	a4,0(s1)
        this->freeMemSize-= (actulalSize + sizeof(MemoryHeader));
    80001608:	00863783          	ld	a5,8(a2)
    8000160c:	40e78733          	sub	a4,a5,a4
    80001610:	fe870713          	addi	a4,a4,-24
    80001614:	00e63423          	sd	a4,8(a2)
            curr->next->prev=curr->prev;
        this->freeMemSize-= actulalSize;
    }


    __putc('m');
    80001618:	06d00513          	li	a0,109
    8000161c:	00002097          	auipc	ra,0x2
    80001620:	2f0080e7          	jalr	752(ra) # 8000390c <__putc>
    __putc('\n');
    80001624:	00a00513          	li	a0,10
    80001628:	00002097          	auipc	ra,0x2
    8000162c:	2e4080e7          	jalr	740(ra) # 8000390c <__putc>



    return  (void*)((char*)curr + sizeof(MemoryHeader));
    80001630:	01848513          	addi	a0,s1,24
}
    80001634:	01813083          	ld	ra,24(sp)
    80001638:	01013403          	ld	s0,16(sp)
    8000163c:	00813483          	ld	s1,8(sp)
    80001640:	02010113          	addi	sp,sp,32
    80001644:	00008067          	ret
            this->head=new_seg;
    80001648:	00f63023          	sd	a5,0(a2)
    8000164c:	fa1ff06f          	j	800015ec <_ZN15MemoryAllocator9mem_allocEm+0x90>
        if (curr==this->head) {
    80001650:	02950a63          	beq	a0,s1,80001684 <_ZN15MemoryAllocator9mem_allocEm+0x128>
        if (curr->prev)
    80001654:	0104b783          	ld	a5,16(s1)
    80001658:	00078663          	beqz	a5,80001664 <_ZN15MemoryAllocator9mem_allocEm+0x108>
            curr->prev->next=curr->next;
    8000165c:	0084b683          	ld	a3,8(s1)
    80001660:	00d7b423          	sd	a3,8(a5)
        if (curr->next)
    80001664:	0084b783          	ld	a5,8(s1)
    80001668:	00078663          	beqz	a5,80001674 <_ZN15MemoryAllocator9mem_allocEm+0x118>
            curr->next->prev=curr->prev;
    8000166c:	0104b683          	ld	a3,16(s1)
    80001670:	00d7b823          	sd	a3,16(a5)
        this->freeMemSize-= actulalSize;
    80001674:	00863783          	ld	a5,8(a2)
    80001678:	40e78733          	sub	a4,a5,a4
    8000167c:	00e63423          	sd	a4,8(a2)
    80001680:	f99ff06f          	j	80001618 <_ZN15MemoryAllocator9mem_allocEm+0xbc>
            this->head=curr->next;
    80001684:	00f63023          	sd	a5,0(a2)
    80001688:	fcdff06f          	j	80001654 <_ZN15MemoryAllocator9mem_allocEm+0xf8>
        return nullptr;
    8000168c:	00000513          	li	a0,0
    80001690:	00008067          	ret
        return nullptr;
    80001694:	00000513          	li	a0,0
    80001698:	f9dff06f          	j	80001634 <_ZN15MemoryAllocator9mem_allocEm+0xd8>
}
    8000169c:	00008067          	ret

00000000800016a0 <_ZN15MemoryAllocator11try_to_joinEPNS_12MemoryHeaderE>:
    try_to_join(block);
}


void MemoryAllocator::try_to_join(MemoryHeader* block) {
    if (block==nullptr)
    800016a0:	0a058063          	beqz	a1,80001740 <_ZN15MemoryAllocator11try_to_joinEPNS_12MemoryHeaderE+0xa0>
void MemoryAllocator::try_to_join(MemoryHeader* block) {
    800016a4:	fe010113          	addi	sp,sp,-32
    800016a8:	00113c23          	sd	ra,24(sp)
    800016ac:	00813823          	sd	s0,16(sp)
    800016b0:	00913423          	sd	s1,8(sp)
    800016b4:	01213023          	sd	s2,0(sp)
    800016b8:	02010413          	addi	s0,sp,32
    800016bc:	00050913          	mv	s2,a0
    800016c0:	00058493          	mv	s1,a1
        return;
    if (block->next!=nullptr && ((char*)block + sizeof(MemoryHeader) + block->size) == (char*)block->next) {
    800016c4:	0085b703          	ld	a4,8(a1)
    800016c8:	00070a63          	beqz	a4,800016dc <_ZN15MemoryAllocator11try_to_joinEPNS_12MemoryHeaderE+0x3c>
    800016cc:	0005b783          	ld	a5,0(a1)
    800016d0:	01878793          	addi	a5,a5,24
    800016d4:	00f587b3          	add	a5,a1,a5
    800016d8:	00f70e63          	beq	a4,a5,800016f4 <_ZN15MemoryAllocator11try_to_joinEPNS_12MemoryHeaderE+0x54>
        block->next=block->next->next;
        if (block->next)
            block->next->prev=block;
        this->freeMemSize+= sizeof(MemoryHeader);
    }
    800016dc:	01813083          	ld	ra,24(sp)
    800016e0:	01013403          	ld	s0,16(sp)
    800016e4:	00813483          	ld	s1,8(sp)
    800016e8:	00013903          	ld	s2,0(sp)
    800016ec:	02010113          	addi	sp,sp,32
    800016f0:	00008067          	ret
        __putc('t');
    800016f4:	07400513          	li	a0,116
    800016f8:	00002097          	auipc	ra,0x2
    800016fc:	214080e7          	jalr	532(ra) # 8000390c <__putc>
        __putc('\n');
    80001700:	00a00513          	li	a0,10
    80001704:	00002097          	auipc	ra,0x2
    80001708:	208080e7          	jalr	520(ra) # 8000390c <__putc>
        block->size += block->next->size;
    8000170c:	0084b703          	ld	a4,8(s1)
    80001710:	00073683          	ld	a3,0(a4)
    80001714:	0004b783          	ld	a5,0(s1)
    80001718:	00d787b3          	add	a5,a5,a3
    8000171c:	00f4b023          	sd	a5,0(s1)
        block->next=block->next->next;
    80001720:	00873783          	ld	a5,8(a4)
    80001724:	00f4b423          	sd	a5,8(s1)
        if (block->next)
    80001728:	00078463          	beqz	a5,80001730 <_ZN15MemoryAllocator11try_to_joinEPNS_12MemoryHeaderE+0x90>
            block->next->prev=block;
    8000172c:	0097b823          	sd	s1,16(a5)
        this->freeMemSize+= sizeof(MemoryHeader);
    80001730:	00893783          	ld	a5,8(s2)
    80001734:	01878793          	addi	a5,a5,24
    80001738:	00f93423          	sd	a5,8(s2)
    8000173c:	fa1ff06f          	j	800016dc <_ZN15MemoryAllocator11try_to_joinEPNS_12MemoryHeaderE+0x3c>
    80001740:	00008067          	ret

0000000080001744 <_ZN15MemoryAllocator8mem_freeEPv>:
    if (ptr==nullptr) {
    80001744:	10058263          	beqz	a1,80001848 <_ZN15MemoryAllocator8mem_freeEPv+0x104>
void MemoryAllocator::mem_free(void* ptr) {
    80001748:	fd010113          	addi	sp,sp,-48
    8000174c:	02113423          	sd	ra,40(sp)
    80001750:	02813023          	sd	s0,32(sp)
    80001754:	00913c23          	sd	s1,24(sp)
    80001758:	01213823          	sd	s2,16(sp)
    8000175c:	01313423          	sd	s3,8(sp)
    80001760:	03010413          	addi	s0,sp,48
    80001764:	00050993          	mv	s3,a0
    80001768:	00058913          	mv	s2,a1
	MemoryHeader* block = (MemoryHeader*)((char*)ptr - sizeof(MemoryHeader));
    8000176c:	fe858493          	addi	s1,a1,-24
    if (this->head==nullptr) {
    80001770:	00053683          	ld	a3,0(a0)
    80001774:	08068c63          	beqz	a3,8000180c <_ZN15MemoryAllocator8mem_freeEPv+0xc8>
    MemoryHeader* curr = this->head;
    80001778:	00068793          	mv	a5,a3
    while (curr->next!=nullptr && curr->next < block) {
    8000177c:	00078713          	mv	a4,a5
    80001780:	0087b783          	ld	a5,8(a5)
    80001784:	00078463          	beqz	a5,8000178c <_ZN15MemoryAllocator8mem_freeEPv+0x48>
    80001788:	fe97eae3          	bltu	a5,s1,8000177c <_ZN15MemoryAllocator8mem_freeEPv+0x38>
    if (curr==this->head and curr > block) {
    8000178c:	0ae68063          	beq	a3,a4,8000182c <_ZN15MemoryAllocator8mem_freeEPv+0xe8>
        block->next=curr->next;
    80001790:	fef93823          	sd	a5,-16(s2)
        block->prev=curr;
    80001794:	fee93c23          	sd	a4,-8(s2)
        curr->next=block;
    80001798:	00973423          	sd	s1,8(a4)
        if (block->next) {
    8000179c:	ff093783          	ld	a5,-16(s2)
    800017a0:	00078463          	beqz	a5,800017a8 <_ZN15MemoryAllocator8mem_freeEPv+0x64>
            block->next->prev=block;
    800017a4:	0097b823          	sd	s1,16(a5)
    this->freeMemSize+= block->size;
    800017a8:	fe893703          	ld	a4,-24(s2)
    800017ac:	0089b783          	ld	a5,8(s3)
    800017b0:	00e787b3          	add	a5,a5,a4
    800017b4:	00f9b423          	sd	a5,8(s3)
    __putc('n');
    800017b8:	06e00513          	li	a0,110
    800017bc:	00002097          	auipc	ra,0x2
    800017c0:	150080e7          	jalr	336(ra) # 8000390c <__putc>
    __putc('\n');
    800017c4:	00a00513          	li	a0,10
    800017c8:	00002097          	auipc	ra,0x2
    800017cc:	144080e7          	jalr	324(ra) # 8000390c <__putc>
    try_to_join(block->prev);
    800017d0:	ff893583          	ld	a1,-8(s2)
    800017d4:	00098513          	mv	a0,s3
    800017d8:	00000097          	auipc	ra,0x0
    800017dc:	ec8080e7          	jalr	-312(ra) # 800016a0 <_ZN15MemoryAllocator11try_to_joinEPNS_12MemoryHeaderE>
    try_to_join(block);
    800017e0:	00048593          	mv	a1,s1
    800017e4:	00098513          	mv	a0,s3
    800017e8:	00000097          	auipc	ra,0x0
    800017ec:	eb8080e7          	jalr	-328(ra) # 800016a0 <_ZN15MemoryAllocator11try_to_joinEPNS_12MemoryHeaderE>
}
    800017f0:	02813083          	ld	ra,40(sp)
    800017f4:	02013403          	ld	s0,32(sp)
    800017f8:	01813483          	ld	s1,24(sp)
    800017fc:	01013903          	ld	s2,16(sp)
    80001800:	00813983          	ld	s3,8(sp)
    80001804:	03010113          	addi	sp,sp,48
    80001808:	00008067          	ret
        this->head=block;
    8000180c:	00953023          	sd	s1,0(a0)
        block->next=nullptr;
    80001810:	fe05b823          	sd	zero,-16(a1)
        block->prev=nullptr;
    80001814:	fe05bc23          	sd	zero,-8(a1)
        this->freeMemSize+= block->size;
    80001818:	fe85b703          	ld	a4,-24(a1)
    8000181c:	00853783          	ld	a5,8(a0)
    80001820:	00e787b3          	add	a5,a5,a4
    80001824:	00f53423          	sd	a5,8(a0)
        return;
    80001828:	fc9ff06f          	j	800017f0 <_ZN15MemoryAllocator8mem_freeEPv+0xac>
    if (curr==this->head and curr > block) {
    8000182c:	f6e4f2e3          	bgeu	s1,a4,80001790 <_ZN15MemoryAllocator8mem_freeEPv+0x4c>
        block->next=curr;
    80001830:	fee93823          	sd	a4,-16(s2)
        block->prev=curr->prev;
    80001834:	01073783          	ld	a5,16(a4)
    80001838:	fef93c23          	sd	a5,-8(s2)
        curr->prev=block;
    8000183c:	00973823          	sd	s1,16(a4)
        this->head=block;
    80001840:	0099b023          	sd	s1,0(s3)
    80001844:	f65ff06f          	j	800017a8 <_ZN15MemoryAllocator8mem_freeEPv+0x64>
    80001848:	00008067          	ret

000000008000184c <start>:
    8000184c:	ff010113          	addi	sp,sp,-16
    80001850:	00813423          	sd	s0,8(sp)
    80001854:	01010413          	addi	s0,sp,16
    80001858:	300027f3          	csrr	a5,mstatus
    8000185c:	ffffe737          	lui	a4,0xffffe
    80001860:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff906f>
    80001864:	00e7f7b3          	and	a5,a5,a4
    80001868:	00001737          	lui	a4,0x1
    8000186c:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80001870:	00e7e7b3          	or	a5,a5,a4
    80001874:	30079073          	csrw	mstatus,a5
    80001878:	00000797          	auipc	a5,0x0
    8000187c:	16078793          	addi	a5,a5,352 # 800019d8 <system_main>
    80001880:	34179073          	csrw	mepc,a5
    80001884:	00000793          	li	a5,0
    80001888:	18079073          	csrw	satp,a5
    8000188c:	000107b7          	lui	a5,0x10
    80001890:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001894:	30279073          	csrw	medeleg,a5
    80001898:	30379073          	csrw	mideleg,a5
    8000189c:	104027f3          	csrr	a5,sie
    800018a0:	2227e793          	ori	a5,a5,546
    800018a4:	10479073          	csrw	sie,a5
    800018a8:	fff00793          	li	a5,-1
    800018ac:	00a7d793          	srli	a5,a5,0xa
    800018b0:	3b079073          	csrw	pmpaddr0,a5
    800018b4:	00f00793          	li	a5,15
    800018b8:	3a079073          	csrw	pmpcfg0,a5
    800018bc:	f14027f3          	csrr	a5,mhartid
    800018c0:	0200c737          	lui	a4,0x200c
    800018c4:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800018c8:	0007869b          	sext.w	a3,a5
    800018cc:	00269713          	slli	a4,a3,0x2
    800018d0:	000f4637          	lui	a2,0xf4
    800018d4:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800018d8:	00d70733          	add	a4,a4,a3
    800018dc:	0037979b          	slliw	a5,a5,0x3
    800018e0:	020046b7          	lui	a3,0x2004
    800018e4:	00d787b3          	add	a5,a5,a3
    800018e8:	00c585b3          	add	a1,a1,a2
    800018ec:	00371693          	slli	a3,a4,0x3
    800018f0:	00003717          	auipc	a4,0x3
    800018f4:	c5070713          	addi	a4,a4,-944 # 80004540 <timer_scratch>
    800018f8:	00b7b023          	sd	a1,0(a5)
    800018fc:	00d70733          	add	a4,a4,a3
    80001900:	00f73c23          	sd	a5,24(a4)
    80001904:	02c73023          	sd	a2,32(a4)
    80001908:	34071073          	csrw	mscratch,a4
    8000190c:	00000797          	auipc	a5,0x0
    80001910:	6e478793          	addi	a5,a5,1764 # 80001ff0 <timervec>
    80001914:	30579073          	csrw	mtvec,a5
    80001918:	300027f3          	csrr	a5,mstatus
    8000191c:	0087e793          	ori	a5,a5,8
    80001920:	30079073          	csrw	mstatus,a5
    80001924:	304027f3          	csrr	a5,mie
    80001928:	0807e793          	ori	a5,a5,128
    8000192c:	30479073          	csrw	mie,a5
    80001930:	f14027f3          	csrr	a5,mhartid
    80001934:	0007879b          	sext.w	a5,a5
    80001938:	00078213          	mv	tp,a5
    8000193c:	30200073          	mret
    80001940:	00813403          	ld	s0,8(sp)
    80001944:	01010113          	addi	sp,sp,16
    80001948:	00008067          	ret

000000008000194c <timerinit>:
    8000194c:	ff010113          	addi	sp,sp,-16
    80001950:	00813423          	sd	s0,8(sp)
    80001954:	01010413          	addi	s0,sp,16
    80001958:	f14027f3          	csrr	a5,mhartid
    8000195c:	0200c737          	lui	a4,0x200c
    80001960:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001964:	0007869b          	sext.w	a3,a5
    80001968:	00269713          	slli	a4,a3,0x2
    8000196c:	000f4637          	lui	a2,0xf4
    80001970:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001974:	00d70733          	add	a4,a4,a3
    80001978:	0037979b          	slliw	a5,a5,0x3
    8000197c:	020046b7          	lui	a3,0x2004
    80001980:	00d787b3          	add	a5,a5,a3
    80001984:	00c585b3          	add	a1,a1,a2
    80001988:	00371693          	slli	a3,a4,0x3
    8000198c:	00003717          	auipc	a4,0x3
    80001990:	bb470713          	addi	a4,a4,-1100 # 80004540 <timer_scratch>
    80001994:	00b7b023          	sd	a1,0(a5)
    80001998:	00d70733          	add	a4,a4,a3
    8000199c:	00f73c23          	sd	a5,24(a4)
    800019a0:	02c73023          	sd	a2,32(a4)
    800019a4:	34071073          	csrw	mscratch,a4
    800019a8:	00000797          	auipc	a5,0x0
    800019ac:	64878793          	addi	a5,a5,1608 # 80001ff0 <timervec>
    800019b0:	30579073          	csrw	mtvec,a5
    800019b4:	300027f3          	csrr	a5,mstatus
    800019b8:	0087e793          	ori	a5,a5,8
    800019bc:	30079073          	csrw	mstatus,a5
    800019c0:	304027f3          	csrr	a5,mie
    800019c4:	0807e793          	ori	a5,a5,128
    800019c8:	30479073          	csrw	mie,a5
    800019cc:	00813403          	ld	s0,8(sp)
    800019d0:	01010113          	addi	sp,sp,16
    800019d4:	00008067          	ret

00000000800019d8 <system_main>:
    800019d8:	fe010113          	addi	sp,sp,-32
    800019dc:	00813823          	sd	s0,16(sp)
    800019e0:	00913423          	sd	s1,8(sp)
    800019e4:	00113c23          	sd	ra,24(sp)
    800019e8:	02010413          	addi	s0,sp,32
    800019ec:	00000097          	auipc	ra,0x0
    800019f0:	0c4080e7          	jalr	196(ra) # 80001ab0 <cpuid>
    800019f4:	00003497          	auipc	s1,0x3
    800019f8:	afc48493          	addi	s1,s1,-1284 # 800044f0 <started>
    800019fc:	02050263          	beqz	a0,80001a20 <system_main+0x48>
    80001a00:	0004a783          	lw	a5,0(s1)
    80001a04:	0007879b          	sext.w	a5,a5
    80001a08:	fe078ce3          	beqz	a5,80001a00 <system_main+0x28>
    80001a0c:	0ff0000f          	fence
    80001a10:	00002517          	auipc	a0,0x2
    80001a14:	64050513          	addi	a0,a0,1600 # 80004050 <CONSOLE_STATUS+0x40>
    80001a18:	00001097          	auipc	ra,0x1
    80001a1c:	a74080e7          	jalr	-1420(ra) # 8000248c <panic>
    80001a20:	00001097          	auipc	ra,0x1
    80001a24:	9c8080e7          	jalr	-1592(ra) # 800023e8 <consoleinit>
    80001a28:	00001097          	auipc	ra,0x1
    80001a2c:	154080e7          	jalr	340(ra) # 80002b7c <printfinit>
    80001a30:	00002517          	auipc	a0,0x2
    80001a34:	70050513          	addi	a0,a0,1792 # 80004130 <CONSOLE_STATUS+0x120>
    80001a38:	00001097          	auipc	ra,0x1
    80001a3c:	ab0080e7          	jalr	-1360(ra) # 800024e8 <__printf>
    80001a40:	00002517          	auipc	a0,0x2
    80001a44:	5e050513          	addi	a0,a0,1504 # 80004020 <CONSOLE_STATUS+0x10>
    80001a48:	00001097          	auipc	ra,0x1
    80001a4c:	aa0080e7          	jalr	-1376(ra) # 800024e8 <__printf>
    80001a50:	00002517          	auipc	a0,0x2
    80001a54:	6e050513          	addi	a0,a0,1760 # 80004130 <CONSOLE_STATUS+0x120>
    80001a58:	00001097          	auipc	ra,0x1
    80001a5c:	a90080e7          	jalr	-1392(ra) # 800024e8 <__printf>
    80001a60:	00001097          	auipc	ra,0x1
    80001a64:	4a8080e7          	jalr	1192(ra) # 80002f08 <kinit>
    80001a68:	00000097          	auipc	ra,0x0
    80001a6c:	148080e7          	jalr	328(ra) # 80001bb0 <trapinit>
    80001a70:	00000097          	auipc	ra,0x0
    80001a74:	16c080e7          	jalr	364(ra) # 80001bdc <trapinithart>
    80001a78:	00000097          	auipc	ra,0x0
    80001a7c:	5b8080e7          	jalr	1464(ra) # 80002030 <plicinit>
    80001a80:	00000097          	auipc	ra,0x0
    80001a84:	5d8080e7          	jalr	1496(ra) # 80002058 <plicinithart>
    80001a88:	00000097          	auipc	ra,0x0
    80001a8c:	078080e7          	jalr	120(ra) # 80001b00 <userinit>
    80001a90:	0ff0000f          	fence
    80001a94:	00100793          	li	a5,1
    80001a98:	00002517          	auipc	a0,0x2
    80001a9c:	5a050513          	addi	a0,a0,1440 # 80004038 <CONSOLE_STATUS+0x28>
    80001aa0:	00f4a023          	sw	a5,0(s1)
    80001aa4:	00001097          	auipc	ra,0x1
    80001aa8:	a44080e7          	jalr	-1468(ra) # 800024e8 <__printf>
    80001aac:	0000006f          	j	80001aac <system_main+0xd4>

0000000080001ab0 <cpuid>:
    80001ab0:	ff010113          	addi	sp,sp,-16
    80001ab4:	00813423          	sd	s0,8(sp)
    80001ab8:	01010413          	addi	s0,sp,16
    80001abc:	00020513          	mv	a0,tp
    80001ac0:	00813403          	ld	s0,8(sp)
    80001ac4:	0005051b          	sext.w	a0,a0
    80001ac8:	01010113          	addi	sp,sp,16
    80001acc:	00008067          	ret

0000000080001ad0 <mycpu>:
    80001ad0:	ff010113          	addi	sp,sp,-16
    80001ad4:	00813423          	sd	s0,8(sp)
    80001ad8:	01010413          	addi	s0,sp,16
    80001adc:	00020793          	mv	a5,tp
    80001ae0:	00813403          	ld	s0,8(sp)
    80001ae4:	0007879b          	sext.w	a5,a5
    80001ae8:	00779793          	slli	a5,a5,0x7
    80001aec:	00004517          	auipc	a0,0x4
    80001af0:	a8450513          	addi	a0,a0,-1404 # 80005570 <cpus>
    80001af4:	00f50533          	add	a0,a0,a5
    80001af8:	01010113          	addi	sp,sp,16
    80001afc:	00008067          	ret

0000000080001b00 <userinit>:
    80001b00:	ff010113          	addi	sp,sp,-16
    80001b04:	00813423          	sd	s0,8(sp)
    80001b08:	01010413          	addi	s0,sp,16
    80001b0c:	00813403          	ld	s0,8(sp)
    80001b10:	01010113          	addi	sp,sp,16
    80001b14:	00000317          	auipc	t1,0x0
    80001b18:	80430067          	jr	-2044(t1) # 80001318 <main>

0000000080001b1c <either_copyout>:
    80001b1c:	ff010113          	addi	sp,sp,-16
    80001b20:	00813023          	sd	s0,0(sp)
    80001b24:	00113423          	sd	ra,8(sp)
    80001b28:	01010413          	addi	s0,sp,16
    80001b2c:	02051663          	bnez	a0,80001b58 <either_copyout+0x3c>
    80001b30:	00058513          	mv	a0,a1
    80001b34:	00060593          	mv	a1,a2
    80001b38:	0006861b          	sext.w	a2,a3
    80001b3c:	00002097          	auipc	ra,0x2
    80001b40:	c58080e7          	jalr	-936(ra) # 80003794 <__memmove>
    80001b44:	00813083          	ld	ra,8(sp)
    80001b48:	00013403          	ld	s0,0(sp)
    80001b4c:	00000513          	li	a0,0
    80001b50:	01010113          	addi	sp,sp,16
    80001b54:	00008067          	ret
    80001b58:	00002517          	auipc	a0,0x2
    80001b5c:	52050513          	addi	a0,a0,1312 # 80004078 <CONSOLE_STATUS+0x68>
    80001b60:	00001097          	auipc	ra,0x1
    80001b64:	92c080e7          	jalr	-1748(ra) # 8000248c <panic>

0000000080001b68 <either_copyin>:
    80001b68:	ff010113          	addi	sp,sp,-16
    80001b6c:	00813023          	sd	s0,0(sp)
    80001b70:	00113423          	sd	ra,8(sp)
    80001b74:	01010413          	addi	s0,sp,16
    80001b78:	02059463          	bnez	a1,80001ba0 <either_copyin+0x38>
    80001b7c:	00060593          	mv	a1,a2
    80001b80:	0006861b          	sext.w	a2,a3
    80001b84:	00002097          	auipc	ra,0x2
    80001b88:	c10080e7          	jalr	-1008(ra) # 80003794 <__memmove>
    80001b8c:	00813083          	ld	ra,8(sp)
    80001b90:	00013403          	ld	s0,0(sp)
    80001b94:	00000513          	li	a0,0
    80001b98:	01010113          	addi	sp,sp,16
    80001b9c:	00008067          	ret
    80001ba0:	00002517          	auipc	a0,0x2
    80001ba4:	50050513          	addi	a0,a0,1280 # 800040a0 <CONSOLE_STATUS+0x90>
    80001ba8:	00001097          	auipc	ra,0x1
    80001bac:	8e4080e7          	jalr	-1820(ra) # 8000248c <panic>

0000000080001bb0 <trapinit>:
    80001bb0:	ff010113          	addi	sp,sp,-16
    80001bb4:	00813423          	sd	s0,8(sp)
    80001bb8:	01010413          	addi	s0,sp,16
    80001bbc:	00813403          	ld	s0,8(sp)
    80001bc0:	00002597          	auipc	a1,0x2
    80001bc4:	50858593          	addi	a1,a1,1288 # 800040c8 <CONSOLE_STATUS+0xb8>
    80001bc8:	00004517          	auipc	a0,0x4
    80001bcc:	a2850513          	addi	a0,a0,-1496 # 800055f0 <tickslock>
    80001bd0:	01010113          	addi	sp,sp,16
    80001bd4:	00001317          	auipc	t1,0x1
    80001bd8:	5c430067          	jr	1476(t1) # 80003198 <initlock>

0000000080001bdc <trapinithart>:
    80001bdc:	ff010113          	addi	sp,sp,-16
    80001be0:	00813423          	sd	s0,8(sp)
    80001be4:	01010413          	addi	s0,sp,16
    80001be8:	00000797          	auipc	a5,0x0
    80001bec:	2f878793          	addi	a5,a5,760 # 80001ee0 <kernelvec>
    80001bf0:	10579073          	csrw	stvec,a5
    80001bf4:	00813403          	ld	s0,8(sp)
    80001bf8:	01010113          	addi	sp,sp,16
    80001bfc:	00008067          	ret

0000000080001c00 <usertrap>:
    80001c00:	ff010113          	addi	sp,sp,-16
    80001c04:	00813423          	sd	s0,8(sp)
    80001c08:	01010413          	addi	s0,sp,16
    80001c0c:	00813403          	ld	s0,8(sp)
    80001c10:	01010113          	addi	sp,sp,16
    80001c14:	00008067          	ret

0000000080001c18 <usertrapret>:
    80001c18:	ff010113          	addi	sp,sp,-16
    80001c1c:	00813423          	sd	s0,8(sp)
    80001c20:	01010413          	addi	s0,sp,16
    80001c24:	00813403          	ld	s0,8(sp)
    80001c28:	01010113          	addi	sp,sp,16
    80001c2c:	00008067          	ret

0000000080001c30 <kerneltrap>:
    80001c30:	fe010113          	addi	sp,sp,-32
    80001c34:	00813823          	sd	s0,16(sp)
    80001c38:	00113c23          	sd	ra,24(sp)
    80001c3c:	00913423          	sd	s1,8(sp)
    80001c40:	02010413          	addi	s0,sp,32
    80001c44:	142025f3          	csrr	a1,scause
    80001c48:	100027f3          	csrr	a5,sstatus
    80001c4c:	0027f793          	andi	a5,a5,2
    80001c50:	10079c63          	bnez	a5,80001d68 <kerneltrap+0x138>
    80001c54:	142027f3          	csrr	a5,scause
    80001c58:	0207ce63          	bltz	a5,80001c94 <kerneltrap+0x64>
    80001c5c:	00002517          	auipc	a0,0x2
    80001c60:	4b450513          	addi	a0,a0,1204 # 80004110 <CONSOLE_STATUS+0x100>
    80001c64:	00001097          	auipc	ra,0x1
    80001c68:	884080e7          	jalr	-1916(ra) # 800024e8 <__printf>
    80001c6c:	141025f3          	csrr	a1,sepc
    80001c70:	14302673          	csrr	a2,stval
    80001c74:	00002517          	auipc	a0,0x2
    80001c78:	4ac50513          	addi	a0,a0,1196 # 80004120 <CONSOLE_STATUS+0x110>
    80001c7c:	00001097          	auipc	ra,0x1
    80001c80:	86c080e7          	jalr	-1940(ra) # 800024e8 <__printf>
    80001c84:	00002517          	auipc	a0,0x2
    80001c88:	4b450513          	addi	a0,a0,1204 # 80004138 <CONSOLE_STATUS+0x128>
    80001c8c:	00001097          	auipc	ra,0x1
    80001c90:	800080e7          	jalr	-2048(ra) # 8000248c <panic>
    80001c94:	0ff7f713          	andi	a4,a5,255
    80001c98:	00900693          	li	a3,9
    80001c9c:	04d70063          	beq	a4,a3,80001cdc <kerneltrap+0xac>
    80001ca0:	fff00713          	li	a4,-1
    80001ca4:	03f71713          	slli	a4,a4,0x3f
    80001ca8:	00170713          	addi	a4,a4,1
    80001cac:	fae798e3          	bne	a5,a4,80001c5c <kerneltrap+0x2c>
    80001cb0:	00000097          	auipc	ra,0x0
    80001cb4:	e00080e7          	jalr	-512(ra) # 80001ab0 <cpuid>
    80001cb8:	06050663          	beqz	a0,80001d24 <kerneltrap+0xf4>
    80001cbc:	144027f3          	csrr	a5,sip
    80001cc0:	ffd7f793          	andi	a5,a5,-3
    80001cc4:	14479073          	csrw	sip,a5
    80001cc8:	01813083          	ld	ra,24(sp)
    80001ccc:	01013403          	ld	s0,16(sp)
    80001cd0:	00813483          	ld	s1,8(sp)
    80001cd4:	02010113          	addi	sp,sp,32
    80001cd8:	00008067          	ret
    80001cdc:	00000097          	auipc	ra,0x0
    80001ce0:	3c8080e7          	jalr	968(ra) # 800020a4 <plic_claim>
    80001ce4:	00a00793          	li	a5,10
    80001ce8:	00050493          	mv	s1,a0
    80001cec:	06f50863          	beq	a0,a5,80001d5c <kerneltrap+0x12c>
    80001cf0:	fc050ce3          	beqz	a0,80001cc8 <kerneltrap+0x98>
    80001cf4:	00050593          	mv	a1,a0
    80001cf8:	00002517          	auipc	a0,0x2
    80001cfc:	3f850513          	addi	a0,a0,1016 # 800040f0 <CONSOLE_STATUS+0xe0>
    80001d00:	00000097          	auipc	ra,0x0
    80001d04:	7e8080e7          	jalr	2024(ra) # 800024e8 <__printf>
    80001d08:	01013403          	ld	s0,16(sp)
    80001d0c:	01813083          	ld	ra,24(sp)
    80001d10:	00048513          	mv	a0,s1
    80001d14:	00813483          	ld	s1,8(sp)
    80001d18:	02010113          	addi	sp,sp,32
    80001d1c:	00000317          	auipc	t1,0x0
    80001d20:	3c030067          	jr	960(t1) # 800020dc <plic_complete>
    80001d24:	00004517          	auipc	a0,0x4
    80001d28:	8cc50513          	addi	a0,a0,-1844 # 800055f0 <tickslock>
    80001d2c:	00001097          	auipc	ra,0x1
    80001d30:	490080e7          	jalr	1168(ra) # 800031bc <acquire>
    80001d34:	00002717          	auipc	a4,0x2
    80001d38:	7c070713          	addi	a4,a4,1984 # 800044f4 <ticks>
    80001d3c:	00072783          	lw	a5,0(a4)
    80001d40:	00004517          	auipc	a0,0x4
    80001d44:	8b050513          	addi	a0,a0,-1872 # 800055f0 <tickslock>
    80001d48:	0017879b          	addiw	a5,a5,1
    80001d4c:	00f72023          	sw	a5,0(a4)
    80001d50:	00001097          	auipc	ra,0x1
    80001d54:	538080e7          	jalr	1336(ra) # 80003288 <release>
    80001d58:	f65ff06f          	j	80001cbc <kerneltrap+0x8c>
    80001d5c:	00001097          	auipc	ra,0x1
    80001d60:	094080e7          	jalr	148(ra) # 80002df0 <uartintr>
    80001d64:	fa5ff06f          	j	80001d08 <kerneltrap+0xd8>
    80001d68:	00002517          	auipc	a0,0x2
    80001d6c:	36850513          	addi	a0,a0,872 # 800040d0 <CONSOLE_STATUS+0xc0>
    80001d70:	00000097          	auipc	ra,0x0
    80001d74:	71c080e7          	jalr	1820(ra) # 8000248c <panic>

0000000080001d78 <clockintr>:
    80001d78:	fe010113          	addi	sp,sp,-32
    80001d7c:	00813823          	sd	s0,16(sp)
    80001d80:	00913423          	sd	s1,8(sp)
    80001d84:	00113c23          	sd	ra,24(sp)
    80001d88:	02010413          	addi	s0,sp,32
    80001d8c:	00004497          	auipc	s1,0x4
    80001d90:	86448493          	addi	s1,s1,-1948 # 800055f0 <tickslock>
    80001d94:	00048513          	mv	a0,s1
    80001d98:	00001097          	auipc	ra,0x1
    80001d9c:	424080e7          	jalr	1060(ra) # 800031bc <acquire>
    80001da0:	00002717          	auipc	a4,0x2
    80001da4:	75470713          	addi	a4,a4,1876 # 800044f4 <ticks>
    80001da8:	00072783          	lw	a5,0(a4)
    80001dac:	01013403          	ld	s0,16(sp)
    80001db0:	01813083          	ld	ra,24(sp)
    80001db4:	00048513          	mv	a0,s1
    80001db8:	0017879b          	addiw	a5,a5,1
    80001dbc:	00813483          	ld	s1,8(sp)
    80001dc0:	00f72023          	sw	a5,0(a4)
    80001dc4:	02010113          	addi	sp,sp,32
    80001dc8:	00001317          	auipc	t1,0x1
    80001dcc:	4c030067          	jr	1216(t1) # 80003288 <release>

0000000080001dd0 <devintr>:
    80001dd0:	142027f3          	csrr	a5,scause
    80001dd4:	00000513          	li	a0,0
    80001dd8:	0007c463          	bltz	a5,80001de0 <devintr+0x10>
    80001ddc:	00008067          	ret
    80001de0:	fe010113          	addi	sp,sp,-32
    80001de4:	00813823          	sd	s0,16(sp)
    80001de8:	00113c23          	sd	ra,24(sp)
    80001dec:	00913423          	sd	s1,8(sp)
    80001df0:	02010413          	addi	s0,sp,32
    80001df4:	0ff7f713          	andi	a4,a5,255
    80001df8:	00900693          	li	a3,9
    80001dfc:	04d70c63          	beq	a4,a3,80001e54 <devintr+0x84>
    80001e00:	fff00713          	li	a4,-1
    80001e04:	03f71713          	slli	a4,a4,0x3f
    80001e08:	00170713          	addi	a4,a4,1
    80001e0c:	00e78c63          	beq	a5,a4,80001e24 <devintr+0x54>
    80001e10:	01813083          	ld	ra,24(sp)
    80001e14:	01013403          	ld	s0,16(sp)
    80001e18:	00813483          	ld	s1,8(sp)
    80001e1c:	02010113          	addi	sp,sp,32
    80001e20:	00008067          	ret
    80001e24:	00000097          	auipc	ra,0x0
    80001e28:	c8c080e7          	jalr	-884(ra) # 80001ab0 <cpuid>
    80001e2c:	06050663          	beqz	a0,80001e98 <devintr+0xc8>
    80001e30:	144027f3          	csrr	a5,sip
    80001e34:	ffd7f793          	andi	a5,a5,-3
    80001e38:	14479073          	csrw	sip,a5
    80001e3c:	01813083          	ld	ra,24(sp)
    80001e40:	01013403          	ld	s0,16(sp)
    80001e44:	00813483          	ld	s1,8(sp)
    80001e48:	00200513          	li	a0,2
    80001e4c:	02010113          	addi	sp,sp,32
    80001e50:	00008067          	ret
    80001e54:	00000097          	auipc	ra,0x0
    80001e58:	250080e7          	jalr	592(ra) # 800020a4 <plic_claim>
    80001e5c:	00a00793          	li	a5,10
    80001e60:	00050493          	mv	s1,a0
    80001e64:	06f50663          	beq	a0,a5,80001ed0 <devintr+0x100>
    80001e68:	00100513          	li	a0,1
    80001e6c:	fa0482e3          	beqz	s1,80001e10 <devintr+0x40>
    80001e70:	00048593          	mv	a1,s1
    80001e74:	00002517          	auipc	a0,0x2
    80001e78:	27c50513          	addi	a0,a0,636 # 800040f0 <CONSOLE_STATUS+0xe0>
    80001e7c:	00000097          	auipc	ra,0x0
    80001e80:	66c080e7          	jalr	1644(ra) # 800024e8 <__printf>
    80001e84:	00048513          	mv	a0,s1
    80001e88:	00000097          	auipc	ra,0x0
    80001e8c:	254080e7          	jalr	596(ra) # 800020dc <plic_complete>
    80001e90:	00100513          	li	a0,1
    80001e94:	f7dff06f          	j	80001e10 <devintr+0x40>
    80001e98:	00003517          	auipc	a0,0x3
    80001e9c:	75850513          	addi	a0,a0,1880 # 800055f0 <tickslock>
    80001ea0:	00001097          	auipc	ra,0x1
    80001ea4:	31c080e7          	jalr	796(ra) # 800031bc <acquire>
    80001ea8:	00002717          	auipc	a4,0x2
    80001eac:	64c70713          	addi	a4,a4,1612 # 800044f4 <ticks>
    80001eb0:	00072783          	lw	a5,0(a4)
    80001eb4:	00003517          	auipc	a0,0x3
    80001eb8:	73c50513          	addi	a0,a0,1852 # 800055f0 <tickslock>
    80001ebc:	0017879b          	addiw	a5,a5,1
    80001ec0:	00f72023          	sw	a5,0(a4)
    80001ec4:	00001097          	auipc	ra,0x1
    80001ec8:	3c4080e7          	jalr	964(ra) # 80003288 <release>
    80001ecc:	f65ff06f          	j	80001e30 <devintr+0x60>
    80001ed0:	00001097          	auipc	ra,0x1
    80001ed4:	f20080e7          	jalr	-224(ra) # 80002df0 <uartintr>
    80001ed8:	fadff06f          	j	80001e84 <devintr+0xb4>
    80001edc:	0000                	unimp
	...

0000000080001ee0 <kernelvec>:
    80001ee0:	f0010113          	addi	sp,sp,-256
    80001ee4:	00113023          	sd	ra,0(sp)
    80001ee8:	00213423          	sd	sp,8(sp)
    80001eec:	00313823          	sd	gp,16(sp)
    80001ef0:	00413c23          	sd	tp,24(sp)
    80001ef4:	02513023          	sd	t0,32(sp)
    80001ef8:	02613423          	sd	t1,40(sp)
    80001efc:	02713823          	sd	t2,48(sp)
    80001f00:	02813c23          	sd	s0,56(sp)
    80001f04:	04913023          	sd	s1,64(sp)
    80001f08:	04a13423          	sd	a0,72(sp)
    80001f0c:	04b13823          	sd	a1,80(sp)
    80001f10:	04c13c23          	sd	a2,88(sp)
    80001f14:	06d13023          	sd	a3,96(sp)
    80001f18:	06e13423          	sd	a4,104(sp)
    80001f1c:	06f13823          	sd	a5,112(sp)
    80001f20:	07013c23          	sd	a6,120(sp)
    80001f24:	09113023          	sd	a7,128(sp)
    80001f28:	09213423          	sd	s2,136(sp)
    80001f2c:	09313823          	sd	s3,144(sp)
    80001f30:	09413c23          	sd	s4,152(sp)
    80001f34:	0b513023          	sd	s5,160(sp)
    80001f38:	0b613423          	sd	s6,168(sp)
    80001f3c:	0b713823          	sd	s7,176(sp)
    80001f40:	0b813c23          	sd	s8,184(sp)
    80001f44:	0d913023          	sd	s9,192(sp)
    80001f48:	0da13423          	sd	s10,200(sp)
    80001f4c:	0db13823          	sd	s11,208(sp)
    80001f50:	0dc13c23          	sd	t3,216(sp)
    80001f54:	0fd13023          	sd	t4,224(sp)
    80001f58:	0fe13423          	sd	t5,232(sp)
    80001f5c:	0ff13823          	sd	t6,240(sp)
    80001f60:	cd1ff0ef          	jal	ra,80001c30 <kerneltrap>
    80001f64:	00013083          	ld	ra,0(sp)
    80001f68:	00813103          	ld	sp,8(sp)
    80001f6c:	01013183          	ld	gp,16(sp)
    80001f70:	02013283          	ld	t0,32(sp)
    80001f74:	02813303          	ld	t1,40(sp)
    80001f78:	03013383          	ld	t2,48(sp)
    80001f7c:	03813403          	ld	s0,56(sp)
    80001f80:	04013483          	ld	s1,64(sp)
    80001f84:	04813503          	ld	a0,72(sp)
    80001f88:	05013583          	ld	a1,80(sp)
    80001f8c:	05813603          	ld	a2,88(sp)
    80001f90:	06013683          	ld	a3,96(sp)
    80001f94:	06813703          	ld	a4,104(sp)
    80001f98:	07013783          	ld	a5,112(sp)
    80001f9c:	07813803          	ld	a6,120(sp)
    80001fa0:	08013883          	ld	a7,128(sp)
    80001fa4:	08813903          	ld	s2,136(sp)
    80001fa8:	09013983          	ld	s3,144(sp)
    80001fac:	09813a03          	ld	s4,152(sp)
    80001fb0:	0a013a83          	ld	s5,160(sp)
    80001fb4:	0a813b03          	ld	s6,168(sp)
    80001fb8:	0b013b83          	ld	s7,176(sp)
    80001fbc:	0b813c03          	ld	s8,184(sp)
    80001fc0:	0c013c83          	ld	s9,192(sp)
    80001fc4:	0c813d03          	ld	s10,200(sp)
    80001fc8:	0d013d83          	ld	s11,208(sp)
    80001fcc:	0d813e03          	ld	t3,216(sp)
    80001fd0:	0e013e83          	ld	t4,224(sp)
    80001fd4:	0e813f03          	ld	t5,232(sp)
    80001fd8:	0f013f83          	ld	t6,240(sp)
    80001fdc:	10010113          	addi	sp,sp,256
    80001fe0:	10200073          	sret
    80001fe4:	00000013          	nop
    80001fe8:	00000013          	nop
    80001fec:	00000013          	nop

0000000080001ff0 <timervec>:
    80001ff0:	34051573          	csrrw	a0,mscratch,a0
    80001ff4:	00b53023          	sd	a1,0(a0)
    80001ff8:	00c53423          	sd	a2,8(a0)
    80001ffc:	00d53823          	sd	a3,16(a0)
    80002000:	01853583          	ld	a1,24(a0)
    80002004:	02053603          	ld	a2,32(a0)
    80002008:	0005b683          	ld	a3,0(a1)
    8000200c:	00c686b3          	add	a3,a3,a2
    80002010:	00d5b023          	sd	a3,0(a1)
    80002014:	00200593          	li	a1,2
    80002018:	14459073          	csrw	sip,a1
    8000201c:	01053683          	ld	a3,16(a0)
    80002020:	00853603          	ld	a2,8(a0)
    80002024:	00053583          	ld	a1,0(a0)
    80002028:	34051573          	csrrw	a0,mscratch,a0
    8000202c:	30200073          	mret

0000000080002030 <plicinit>:
    80002030:	ff010113          	addi	sp,sp,-16
    80002034:	00813423          	sd	s0,8(sp)
    80002038:	01010413          	addi	s0,sp,16
    8000203c:	00813403          	ld	s0,8(sp)
    80002040:	0c0007b7          	lui	a5,0xc000
    80002044:	00100713          	li	a4,1
    80002048:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000204c:	00e7a223          	sw	a4,4(a5)
    80002050:	01010113          	addi	sp,sp,16
    80002054:	00008067          	ret

0000000080002058 <plicinithart>:
    80002058:	ff010113          	addi	sp,sp,-16
    8000205c:	00813023          	sd	s0,0(sp)
    80002060:	00113423          	sd	ra,8(sp)
    80002064:	01010413          	addi	s0,sp,16
    80002068:	00000097          	auipc	ra,0x0
    8000206c:	a48080e7          	jalr	-1464(ra) # 80001ab0 <cpuid>
    80002070:	0085171b          	slliw	a4,a0,0x8
    80002074:	0c0027b7          	lui	a5,0xc002
    80002078:	00e787b3          	add	a5,a5,a4
    8000207c:	40200713          	li	a4,1026
    80002080:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80002084:	00813083          	ld	ra,8(sp)
    80002088:	00013403          	ld	s0,0(sp)
    8000208c:	00d5151b          	slliw	a0,a0,0xd
    80002090:	0c2017b7          	lui	a5,0xc201
    80002094:	00a78533          	add	a0,a5,a0
    80002098:	00052023          	sw	zero,0(a0)
    8000209c:	01010113          	addi	sp,sp,16
    800020a0:	00008067          	ret

00000000800020a4 <plic_claim>:
    800020a4:	ff010113          	addi	sp,sp,-16
    800020a8:	00813023          	sd	s0,0(sp)
    800020ac:	00113423          	sd	ra,8(sp)
    800020b0:	01010413          	addi	s0,sp,16
    800020b4:	00000097          	auipc	ra,0x0
    800020b8:	9fc080e7          	jalr	-1540(ra) # 80001ab0 <cpuid>
    800020bc:	00813083          	ld	ra,8(sp)
    800020c0:	00013403          	ld	s0,0(sp)
    800020c4:	00d5151b          	slliw	a0,a0,0xd
    800020c8:	0c2017b7          	lui	a5,0xc201
    800020cc:	00a78533          	add	a0,a5,a0
    800020d0:	00452503          	lw	a0,4(a0)
    800020d4:	01010113          	addi	sp,sp,16
    800020d8:	00008067          	ret

00000000800020dc <plic_complete>:
    800020dc:	fe010113          	addi	sp,sp,-32
    800020e0:	00813823          	sd	s0,16(sp)
    800020e4:	00913423          	sd	s1,8(sp)
    800020e8:	00113c23          	sd	ra,24(sp)
    800020ec:	02010413          	addi	s0,sp,32
    800020f0:	00050493          	mv	s1,a0
    800020f4:	00000097          	auipc	ra,0x0
    800020f8:	9bc080e7          	jalr	-1604(ra) # 80001ab0 <cpuid>
    800020fc:	01813083          	ld	ra,24(sp)
    80002100:	01013403          	ld	s0,16(sp)
    80002104:	00d5179b          	slliw	a5,a0,0xd
    80002108:	0c201737          	lui	a4,0xc201
    8000210c:	00f707b3          	add	a5,a4,a5
    80002110:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80002114:	00813483          	ld	s1,8(sp)
    80002118:	02010113          	addi	sp,sp,32
    8000211c:	00008067          	ret

0000000080002120 <consolewrite>:
    80002120:	fb010113          	addi	sp,sp,-80
    80002124:	04813023          	sd	s0,64(sp)
    80002128:	04113423          	sd	ra,72(sp)
    8000212c:	02913c23          	sd	s1,56(sp)
    80002130:	03213823          	sd	s2,48(sp)
    80002134:	03313423          	sd	s3,40(sp)
    80002138:	03413023          	sd	s4,32(sp)
    8000213c:	01513c23          	sd	s5,24(sp)
    80002140:	05010413          	addi	s0,sp,80
    80002144:	06c05c63          	blez	a2,800021bc <consolewrite+0x9c>
    80002148:	00060993          	mv	s3,a2
    8000214c:	00050a13          	mv	s4,a0
    80002150:	00058493          	mv	s1,a1
    80002154:	00000913          	li	s2,0
    80002158:	fff00a93          	li	s5,-1
    8000215c:	01c0006f          	j	80002178 <consolewrite+0x58>
    80002160:	fbf44503          	lbu	a0,-65(s0)
    80002164:	0019091b          	addiw	s2,s2,1
    80002168:	00148493          	addi	s1,s1,1
    8000216c:	00001097          	auipc	ra,0x1
    80002170:	a9c080e7          	jalr	-1380(ra) # 80002c08 <uartputc>
    80002174:	03298063          	beq	s3,s2,80002194 <consolewrite+0x74>
    80002178:	00048613          	mv	a2,s1
    8000217c:	00100693          	li	a3,1
    80002180:	000a0593          	mv	a1,s4
    80002184:	fbf40513          	addi	a0,s0,-65
    80002188:	00000097          	auipc	ra,0x0
    8000218c:	9e0080e7          	jalr	-1568(ra) # 80001b68 <either_copyin>
    80002190:	fd5518e3          	bne	a0,s5,80002160 <consolewrite+0x40>
    80002194:	04813083          	ld	ra,72(sp)
    80002198:	04013403          	ld	s0,64(sp)
    8000219c:	03813483          	ld	s1,56(sp)
    800021a0:	02813983          	ld	s3,40(sp)
    800021a4:	02013a03          	ld	s4,32(sp)
    800021a8:	01813a83          	ld	s5,24(sp)
    800021ac:	00090513          	mv	a0,s2
    800021b0:	03013903          	ld	s2,48(sp)
    800021b4:	05010113          	addi	sp,sp,80
    800021b8:	00008067          	ret
    800021bc:	00000913          	li	s2,0
    800021c0:	fd5ff06f          	j	80002194 <consolewrite+0x74>

00000000800021c4 <consoleread>:
    800021c4:	f9010113          	addi	sp,sp,-112
    800021c8:	06813023          	sd	s0,96(sp)
    800021cc:	04913c23          	sd	s1,88(sp)
    800021d0:	05213823          	sd	s2,80(sp)
    800021d4:	05313423          	sd	s3,72(sp)
    800021d8:	05413023          	sd	s4,64(sp)
    800021dc:	03513c23          	sd	s5,56(sp)
    800021e0:	03613823          	sd	s6,48(sp)
    800021e4:	03713423          	sd	s7,40(sp)
    800021e8:	03813023          	sd	s8,32(sp)
    800021ec:	06113423          	sd	ra,104(sp)
    800021f0:	01913c23          	sd	s9,24(sp)
    800021f4:	07010413          	addi	s0,sp,112
    800021f8:	00060b93          	mv	s7,a2
    800021fc:	00050913          	mv	s2,a0
    80002200:	00058c13          	mv	s8,a1
    80002204:	00060b1b          	sext.w	s6,a2
    80002208:	00003497          	auipc	s1,0x3
    8000220c:	40048493          	addi	s1,s1,1024 # 80005608 <cons>
    80002210:	00400993          	li	s3,4
    80002214:	fff00a13          	li	s4,-1
    80002218:	00a00a93          	li	s5,10
    8000221c:	05705e63          	blez	s7,80002278 <consoleread+0xb4>
    80002220:	09c4a703          	lw	a4,156(s1)
    80002224:	0984a783          	lw	a5,152(s1)
    80002228:	0007071b          	sext.w	a4,a4
    8000222c:	08e78463          	beq	a5,a4,800022b4 <consoleread+0xf0>
    80002230:	07f7f713          	andi	a4,a5,127
    80002234:	00e48733          	add	a4,s1,a4
    80002238:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000223c:	0017869b          	addiw	a3,a5,1
    80002240:	08d4ac23          	sw	a3,152(s1)
    80002244:	00070c9b          	sext.w	s9,a4
    80002248:	0b370663          	beq	a4,s3,800022f4 <consoleread+0x130>
    8000224c:	00100693          	li	a3,1
    80002250:	f9f40613          	addi	a2,s0,-97
    80002254:	000c0593          	mv	a1,s8
    80002258:	00090513          	mv	a0,s2
    8000225c:	f8e40fa3          	sb	a4,-97(s0)
    80002260:	00000097          	auipc	ra,0x0
    80002264:	8bc080e7          	jalr	-1860(ra) # 80001b1c <either_copyout>
    80002268:	01450863          	beq	a0,s4,80002278 <consoleread+0xb4>
    8000226c:	001c0c13          	addi	s8,s8,1
    80002270:	fffb8b9b          	addiw	s7,s7,-1
    80002274:	fb5c94e3          	bne	s9,s5,8000221c <consoleread+0x58>
    80002278:	000b851b          	sext.w	a0,s7
    8000227c:	06813083          	ld	ra,104(sp)
    80002280:	06013403          	ld	s0,96(sp)
    80002284:	05813483          	ld	s1,88(sp)
    80002288:	05013903          	ld	s2,80(sp)
    8000228c:	04813983          	ld	s3,72(sp)
    80002290:	04013a03          	ld	s4,64(sp)
    80002294:	03813a83          	ld	s5,56(sp)
    80002298:	02813b83          	ld	s7,40(sp)
    8000229c:	02013c03          	ld	s8,32(sp)
    800022a0:	01813c83          	ld	s9,24(sp)
    800022a4:	40ab053b          	subw	a0,s6,a0
    800022a8:	03013b03          	ld	s6,48(sp)
    800022ac:	07010113          	addi	sp,sp,112
    800022b0:	00008067          	ret
    800022b4:	00001097          	auipc	ra,0x1
    800022b8:	1d8080e7          	jalr	472(ra) # 8000348c <push_on>
    800022bc:	0984a703          	lw	a4,152(s1)
    800022c0:	09c4a783          	lw	a5,156(s1)
    800022c4:	0007879b          	sext.w	a5,a5
    800022c8:	fef70ce3          	beq	a4,a5,800022c0 <consoleread+0xfc>
    800022cc:	00001097          	auipc	ra,0x1
    800022d0:	234080e7          	jalr	564(ra) # 80003500 <pop_on>
    800022d4:	0984a783          	lw	a5,152(s1)
    800022d8:	07f7f713          	andi	a4,a5,127
    800022dc:	00e48733          	add	a4,s1,a4
    800022e0:	01874703          	lbu	a4,24(a4)
    800022e4:	0017869b          	addiw	a3,a5,1
    800022e8:	08d4ac23          	sw	a3,152(s1)
    800022ec:	00070c9b          	sext.w	s9,a4
    800022f0:	f5371ee3          	bne	a4,s3,8000224c <consoleread+0x88>
    800022f4:	000b851b          	sext.w	a0,s7
    800022f8:	f96bf2e3          	bgeu	s7,s6,8000227c <consoleread+0xb8>
    800022fc:	08f4ac23          	sw	a5,152(s1)
    80002300:	f7dff06f          	j	8000227c <consoleread+0xb8>

0000000080002304 <consputc>:
    80002304:	10000793          	li	a5,256
    80002308:	00f50663          	beq	a0,a5,80002314 <consputc+0x10>
    8000230c:	00001317          	auipc	t1,0x1
    80002310:	9f430067          	jr	-1548(t1) # 80002d00 <uartputc_sync>
    80002314:	ff010113          	addi	sp,sp,-16
    80002318:	00113423          	sd	ra,8(sp)
    8000231c:	00813023          	sd	s0,0(sp)
    80002320:	01010413          	addi	s0,sp,16
    80002324:	00800513          	li	a0,8
    80002328:	00001097          	auipc	ra,0x1
    8000232c:	9d8080e7          	jalr	-1576(ra) # 80002d00 <uartputc_sync>
    80002330:	02000513          	li	a0,32
    80002334:	00001097          	auipc	ra,0x1
    80002338:	9cc080e7          	jalr	-1588(ra) # 80002d00 <uartputc_sync>
    8000233c:	00013403          	ld	s0,0(sp)
    80002340:	00813083          	ld	ra,8(sp)
    80002344:	00800513          	li	a0,8
    80002348:	01010113          	addi	sp,sp,16
    8000234c:	00001317          	auipc	t1,0x1
    80002350:	9b430067          	jr	-1612(t1) # 80002d00 <uartputc_sync>

0000000080002354 <consoleintr>:
    80002354:	fe010113          	addi	sp,sp,-32
    80002358:	00813823          	sd	s0,16(sp)
    8000235c:	00913423          	sd	s1,8(sp)
    80002360:	01213023          	sd	s2,0(sp)
    80002364:	00113c23          	sd	ra,24(sp)
    80002368:	02010413          	addi	s0,sp,32
    8000236c:	00003917          	auipc	s2,0x3
    80002370:	29c90913          	addi	s2,s2,668 # 80005608 <cons>
    80002374:	00050493          	mv	s1,a0
    80002378:	00090513          	mv	a0,s2
    8000237c:	00001097          	auipc	ra,0x1
    80002380:	e40080e7          	jalr	-448(ra) # 800031bc <acquire>
    80002384:	02048c63          	beqz	s1,800023bc <consoleintr+0x68>
    80002388:	0a092783          	lw	a5,160(s2)
    8000238c:	09892703          	lw	a4,152(s2)
    80002390:	07f00693          	li	a3,127
    80002394:	40e7873b          	subw	a4,a5,a4
    80002398:	02e6e263          	bltu	a3,a4,800023bc <consoleintr+0x68>
    8000239c:	00d00713          	li	a4,13
    800023a0:	04e48063          	beq	s1,a4,800023e0 <consoleintr+0x8c>
    800023a4:	07f7f713          	andi	a4,a5,127
    800023a8:	00e90733          	add	a4,s2,a4
    800023ac:	0017879b          	addiw	a5,a5,1
    800023b0:	0af92023          	sw	a5,160(s2)
    800023b4:	00970c23          	sb	s1,24(a4)
    800023b8:	08f92e23          	sw	a5,156(s2)
    800023bc:	01013403          	ld	s0,16(sp)
    800023c0:	01813083          	ld	ra,24(sp)
    800023c4:	00813483          	ld	s1,8(sp)
    800023c8:	00013903          	ld	s2,0(sp)
    800023cc:	00003517          	auipc	a0,0x3
    800023d0:	23c50513          	addi	a0,a0,572 # 80005608 <cons>
    800023d4:	02010113          	addi	sp,sp,32
    800023d8:	00001317          	auipc	t1,0x1
    800023dc:	eb030067          	jr	-336(t1) # 80003288 <release>
    800023e0:	00a00493          	li	s1,10
    800023e4:	fc1ff06f          	j	800023a4 <consoleintr+0x50>

00000000800023e8 <consoleinit>:
    800023e8:	fe010113          	addi	sp,sp,-32
    800023ec:	00113c23          	sd	ra,24(sp)
    800023f0:	00813823          	sd	s0,16(sp)
    800023f4:	00913423          	sd	s1,8(sp)
    800023f8:	02010413          	addi	s0,sp,32
    800023fc:	00003497          	auipc	s1,0x3
    80002400:	20c48493          	addi	s1,s1,524 # 80005608 <cons>
    80002404:	00048513          	mv	a0,s1
    80002408:	00002597          	auipc	a1,0x2
    8000240c:	d4058593          	addi	a1,a1,-704 # 80004148 <CONSOLE_STATUS+0x138>
    80002410:	00001097          	auipc	ra,0x1
    80002414:	d88080e7          	jalr	-632(ra) # 80003198 <initlock>
    80002418:	00000097          	auipc	ra,0x0
    8000241c:	7ac080e7          	jalr	1964(ra) # 80002bc4 <uartinit>
    80002420:	01813083          	ld	ra,24(sp)
    80002424:	01013403          	ld	s0,16(sp)
    80002428:	00000797          	auipc	a5,0x0
    8000242c:	d9c78793          	addi	a5,a5,-612 # 800021c4 <consoleread>
    80002430:	0af4bc23          	sd	a5,184(s1)
    80002434:	00000797          	auipc	a5,0x0
    80002438:	cec78793          	addi	a5,a5,-788 # 80002120 <consolewrite>
    8000243c:	0cf4b023          	sd	a5,192(s1)
    80002440:	00813483          	ld	s1,8(sp)
    80002444:	02010113          	addi	sp,sp,32
    80002448:	00008067          	ret

000000008000244c <console_read>:
    8000244c:	ff010113          	addi	sp,sp,-16
    80002450:	00813423          	sd	s0,8(sp)
    80002454:	01010413          	addi	s0,sp,16
    80002458:	00813403          	ld	s0,8(sp)
    8000245c:	00003317          	auipc	t1,0x3
    80002460:	26433303          	ld	t1,612(t1) # 800056c0 <devsw+0x10>
    80002464:	01010113          	addi	sp,sp,16
    80002468:	00030067          	jr	t1

000000008000246c <console_write>:
    8000246c:	ff010113          	addi	sp,sp,-16
    80002470:	00813423          	sd	s0,8(sp)
    80002474:	01010413          	addi	s0,sp,16
    80002478:	00813403          	ld	s0,8(sp)
    8000247c:	00003317          	auipc	t1,0x3
    80002480:	24c33303          	ld	t1,588(t1) # 800056c8 <devsw+0x18>
    80002484:	01010113          	addi	sp,sp,16
    80002488:	00030067          	jr	t1

000000008000248c <panic>:
    8000248c:	fe010113          	addi	sp,sp,-32
    80002490:	00113c23          	sd	ra,24(sp)
    80002494:	00813823          	sd	s0,16(sp)
    80002498:	00913423          	sd	s1,8(sp)
    8000249c:	02010413          	addi	s0,sp,32
    800024a0:	00050493          	mv	s1,a0
    800024a4:	00002517          	auipc	a0,0x2
    800024a8:	cac50513          	addi	a0,a0,-852 # 80004150 <CONSOLE_STATUS+0x140>
    800024ac:	00003797          	auipc	a5,0x3
    800024b0:	2a07ae23          	sw	zero,700(a5) # 80005768 <pr+0x18>
    800024b4:	00000097          	auipc	ra,0x0
    800024b8:	034080e7          	jalr	52(ra) # 800024e8 <__printf>
    800024bc:	00048513          	mv	a0,s1
    800024c0:	00000097          	auipc	ra,0x0
    800024c4:	028080e7          	jalr	40(ra) # 800024e8 <__printf>
    800024c8:	00002517          	auipc	a0,0x2
    800024cc:	c6850513          	addi	a0,a0,-920 # 80004130 <CONSOLE_STATUS+0x120>
    800024d0:	00000097          	auipc	ra,0x0
    800024d4:	018080e7          	jalr	24(ra) # 800024e8 <__printf>
    800024d8:	00100793          	li	a5,1
    800024dc:	00002717          	auipc	a4,0x2
    800024e0:	00f72e23          	sw	a5,28(a4) # 800044f8 <panicked>
    800024e4:	0000006f          	j	800024e4 <panic+0x58>

00000000800024e8 <__printf>:
    800024e8:	f3010113          	addi	sp,sp,-208
    800024ec:	08813023          	sd	s0,128(sp)
    800024f0:	07313423          	sd	s3,104(sp)
    800024f4:	09010413          	addi	s0,sp,144
    800024f8:	05813023          	sd	s8,64(sp)
    800024fc:	08113423          	sd	ra,136(sp)
    80002500:	06913c23          	sd	s1,120(sp)
    80002504:	07213823          	sd	s2,112(sp)
    80002508:	07413023          	sd	s4,96(sp)
    8000250c:	05513c23          	sd	s5,88(sp)
    80002510:	05613823          	sd	s6,80(sp)
    80002514:	05713423          	sd	s7,72(sp)
    80002518:	03913c23          	sd	s9,56(sp)
    8000251c:	03a13823          	sd	s10,48(sp)
    80002520:	03b13423          	sd	s11,40(sp)
    80002524:	00003317          	auipc	t1,0x3
    80002528:	22c30313          	addi	t1,t1,556 # 80005750 <pr>
    8000252c:	01832c03          	lw	s8,24(t1)
    80002530:	00b43423          	sd	a1,8(s0)
    80002534:	00c43823          	sd	a2,16(s0)
    80002538:	00d43c23          	sd	a3,24(s0)
    8000253c:	02e43023          	sd	a4,32(s0)
    80002540:	02f43423          	sd	a5,40(s0)
    80002544:	03043823          	sd	a6,48(s0)
    80002548:	03143c23          	sd	a7,56(s0)
    8000254c:	00050993          	mv	s3,a0
    80002550:	4a0c1663          	bnez	s8,800029fc <__printf+0x514>
    80002554:	60098c63          	beqz	s3,80002b6c <__printf+0x684>
    80002558:	0009c503          	lbu	a0,0(s3)
    8000255c:	00840793          	addi	a5,s0,8
    80002560:	f6f43c23          	sd	a5,-136(s0)
    80002564:	00000493          	li	s1,0
    80002568:	22050063          	beqz	a0,80002788 <__printf+0x2a0>
    8000256c:	00002a37          	lui	s4,0x2
    80002570:	00018ab7          	lui	s5,0x18
    80002574:	000f4b37          	lui	s6,0xf4
    80002578:	00989bb7          	lui	s7,0x989
    8000257c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80002580:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80002584:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80002588:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000258c:	00148c9b          	addiw	s9,s1,1
    80002590:	02500793          	li	a5,37
    80002594:	01998933          	add	s2,s3,s9
    80002598:	38f51263          	bne	a0,a5,8000291c <__printf+0x434>
    8000259c:	00094783          	lbu	a5,0(s2)
    800025a0:	00078c9b          	sext.w	s9,a5
    800025a4:	1e078263          	beqz	a5,80002788 <__printf+0x2a0>
    800025a8:	0024849b          	addiw	s1,s1,2
    800025ac:	07000713          	li	a4,112
    800025b0:	00998933          	add	s2,s3,s1
    800025b4:	38e78a63          	beq	a5,a4,80002948 <__printf+0x460>
    800025b8:	20f76863          	bltu	a4,a5,800027c8 <__printf+0x2e0>
    800025bc:	42a78863          	beq	a5,a0,800029ec <__printf+0x504>
    800025c0:	06400713          	li	a4,100
    800025c4:	40e79663          	bne	a5,a4,800029d0 <__printf+0x4e8>
    800025c8:	f7843783          	ld	a5,-136(s0)
    800025cc:	0007a603          	lw	a2,0(a5)
    800025d0:	00878793          	addi	a5,a5,8
    800025d4:	f6f43c23          	sd	a5,-136(s0)
    800025d8:	42064a63          	bltz	a2,80002a0c <__printf+0x524>
    800025dc:	00a00713          	li	a4,10
    800025e0:	02e677bb          	remuw	a5,a2,a4
    800025e4:	00002d97          	auipc	s11,0x2
    800025e8:	b94d8d93          	addi	s11,s11,-1132 # 80004178 <digits>
    800025ec:	00900593          	li	a1,9
    800025f0:	0006051b          	sext.w	a0,a2
    800025f4:	00000c93          	li	s9,0
    800025f8:	02079793          	slli	a5,a5,0x20
    800025fc:	0207d793          	srli	a5,a5,0x20
    80002600:	00fd87b3          	add	a5,s11,a5
    80002604:	0007c783          	lbu	a5,0(a5)
    80002608:	02e656bb          	divuw	a3,a2,a4
    8000260c:	f8f40023          	sb	a5,-128(s0)
    80002610:	14c5d863          	bge	a1,a2,80002760 <__printf+0x278>
    80002614:	06300593          	li	a1,99
    80002618:	00100c93          	li	s9,1
    8000261c:	02e6f7bb          	remuw	a5,a3,a4
    80002620:	02079793          	slli	a5,a5,0x20
    80002624:	0207d793          	srli	a5,a5,0x20
    80002628:	00fd87b3          	add	a5,s11,a5
    8000262c:	0007c783          	lbu	a5,0(a5)
    80002630:	02e6d73b          	divuw	a4,a3,a4
    80002634:	f8f400a3          	sb	a5,-127(s0)
    80002638:	12a5f463          	bgeu	a1,a0,80002760 <__printf+0x278>
    8000263c:	00a00693          	li	a3,10
    80002640:	00900593          	li	a1,9
    80002644:	02d777bb          	remuw	a5,a4,a3
    80002648:	02079793          	slli	a5,a5,0x20
    8000264c:	0207d793          	srli	a5,a5,0x20
    80002650:	00fd87b3          	add	a5,s11,a5
    80002654:	0007c503          	lbu	a0,0(a5)
    80002658:	02d757bb          	divuw	a5,a4,a3
    8000265c:	f8a40123          	sb	a0,-126(s0)
    80002660:	48e5f263          	bgeu	a1,a4,80002ae4 <__printf+0x5fc>
    80002664:	06300513          	li	a0,99
    80002668:	02d7f5bb          	remuw	a1,a5,a3
    8000266c:	02059593          	slli	a1,a1,0x20
    80002670:	0205d593          	srli	a1,a1,0x20
    80002674:	00bd85b3          	add	a1,s11,a1
    80002678:	0005c583          	lbu	a1,0(a1)
    8000267c:	02d7d7bb          	divuw	a5,a5,a3
    80002680:	f8b401a3          	sb	a1,-125(s0)
    80002684:	48e57263          	bgeu	a0,a4,80002b08 <__printf+0x620>
    80002688:	3e700513          	li	a0,999
    8000268c:	02d7f5bb          	remuw	a1,a5,a3
    80002690:	02059593          	slli	a1,a1,0x20
    80002694:	0205d593          	srli	a1,a1,0x20
    80002698:	00bd85b3          	add	a1,s11,a1
    8000269c:	0005c583          	lbu	a1,0(a1)
    800026a0:	02d7d7bb          	divuw	a5,a5,a3
    800026a4:	f8b40223          	sb	a1,-124(s0)
    800026a8:	46e57663          	bgeu	a0,a4,80002b14 <__printf+0x62c>
    800026ac:	02d7f5bb          	remuw	a1,a5,a3
    800026b0:	02059593          	slli	a1,a1,0x20
    800026b4:	0205d593          	srli	a1,a1,0x20
    800026b8:	00bd85b3          	add	a1,s11,a1
    800026bc:	0005c583          	lbu	a1,0(a1)
    800026c0:	02d7d7bb          	divuw	a5,a5,a3
    800026c4:	f8b402a3          	sb	a1,-123(s0)
    800026c8:	46ea7863          	bgeu	s4,a4,80002b38 <__printf+0x650>
    800026cc:	02d7f5bb          	remuw	a1,a5,a3
    800026d0:	02059593          	slli	a1,a1,0x20
    800026d4:	0205d593          	srli	a1,a1,0x20
    800026d8:	00bd85b3          	add	a1,s11,a1
    800026dc:	0005c583          	lbu	a1,0(a1)
    800026e0:	02d7d7bb          	divuw	a5,a5,a3
    800026e4:	f8b40323          	sb	a1,-122(s0)
    800026e8:	3eeaf863          	bgeu	s5,a4,80002ad8 <__printf+0x5f0>
    800026ec:	02d7f5bb          	remuw	a1,a5,a3
    800026f0:	02059593          	slli	a1,a1,0x20
    800026f4:	0205d593          	srli	a1,a1,0x20
    800026f8:	00bd85b3          	add	a1,s11,a1
    800026fc:	0005c583          	lbu	a1,0(a1)
    80002700:	02d7d7bb          	divuw	a5,a5,a3
    80002704:	f8b403a3          	sb	a1,-121(s0)
    80002708:	42eb7e63          	bgeu	s6,a4,80002b44 <__printf+0x65c>
    8000270c:	02d7f5bb          	remuw	a1,a5,a3
    80002710:	02059593          	slli	a1,a1,0x20
    80002714:	0205d593          	srli	a1,a1,0x20
    80002718:	00bd85b3          	add	a1,s11,a1
    8000271c:	0005c583          	lbu	a1,0(a1)
    80002720:	02d7d7bb          	divuw	a5,a5,a3
    80002724:	f8b40423          	sb	a1,-120(s0)
    80002728:	42ebfc63          	bgeu	s7,a4,80002b60 <__printf+0x678>
    8000272c:	02079793          	slli	a5,a5,0x20
    80002730:	0207d793          	srli	a5,a5,0x20
    80002734:	00fd8db3          	add	s11,s11,a5
    80002738:	000dc703          	lbu	a4,0(s11)
    8000273c:	00a00793          	li	a5,10
    80002740:	00900c93          	li	s9,9
    80002744:	f8e404a3          	sb	a4,-119(s0)
    80002748:	00065c63          	bgez	a2,80002760 <__printf+0x278>
    8000274c:	f9040713          	addi	a4,s0,-112
    80002750:	00f70733          	add	a4,a4,a5
    80002754:	02d00693          	li	a3,45
    80002758:	fed70823          	sb	a3,-16(a4)
    8000275c:	00078c93          	mv	s9,a5
    80002760:	f8040793          	addi	a5,s0,-128
    80002764:	01978cb3          	add	s9,a5,s9
    80002768:	f7f40d13          	addi	s10,s0,-129
    8000276c:	000cc503          	lbu	a0,0(s9)
    80002770:	fffc8c93          	addi	s9,s9,-1
    80002774:	00000097          	auipc	ra,0x0
    80002778:	b90080e7          	jalr	-1136(ra) # 80002304 <consputc>
    8000277c:	ffac98e3          	bne	s9,s10,8000276c <__printf+0x284>
    80002780:	00094503          	lbu	a0,0(s2)
    80002784:	e00514e3          	bnez	a0,8000258c <__printf+0xa4>
    80002788:	1a0c1663          	bnez	s8,80002934 <__printf+0x44c>
    8000278c:	08813083          	ld	ra,136(sp)
    80002790:	08013403          	ld	s0,128(sp)
    80002794:	07813483          	ld	s1,120(sp)
    80002798:	07013903          	ld	s2,112(sp)
    8000279c:	06813983          	ld	s3,104(sp)
    800027a0:	06013a03          	ld	s4,96(sp)
    800027a4:	05813a83          	ld	s5,88(sp)
    800027a8:	05013b03          	ld	s6,80(sp)
    800027ac:	04813b83          	ld	s7,72(sp)
    800027b0:	04013c03          	ld	s8,64(sp)
    800027b4:	03813c83          	ld	s9,56(sp)
    800027b8:	03013d03          	ld	s10,48(sp)
    800027bc:	02813d83          	ld	s11,40(sp)
    800027c0:	0d010113          	addi	sp,sp,208
    800027c4:	00008067          	ret
    800027c8:	07300713          	li	a4,115
    800027cc:	1ce78a63          	beq	a5,a4,800029a0 <__printf+0x4b8>
    800027d0:	07800713          	li	a4,120
    800027d4:	1ee79e63          	bne	a5,a4,800029d0 <__printf+0x4e8>
    800027d8:	f7843783          	ld	a5,-136(s0)
    800027dc:	0007a703          	lw	a4,0(a5)
    800027e0:	00878793          	addi	a5,a5,8
    800027e4:	f6f43c23          	sd	a5,-136(s0)
    800027e8:	28074263          	bltz	a4,80002a6c <__printf+0x584>
    800027ec:	00002d97          	auipc	s11,0x2
    800027f0:	98cd8d93          	addi	s11,s11,-1652 # 80004178 <digits>
    800027f4:	00f77793          	andi	a5,a4,15
    800027f8:	00fd87b3          	add	a5,s11,a5
    800027fc:	0007c683          	lbu	a3,0(a5)
    80002800:	00f00613          	li	a2,15
    80002804:	0007079b          	sext.w	a5,a4
    80002808:	f8d40023          	sb	a3,-128(s0)
    8000280c:	0047559b          	srliw	a1,a4,0x4
    80002810:	0047569b          	srliw	a3,a4,0x4
    80002814:	00000c93          	li	s9,0
    80002818:	0ee65063          	bge	a2,a4,800028f8 <__printf+0x410>
    8000281c:	00f6f693          	andi	a3,a3,15
    80002820:	00dd86b3          	add	a3,s11,a3
    80002824:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80002828:	0087d79b          	srliw	a5,a5,0x8
    8000282c:	00100c93          	li	s9,1
    80002830:	f8d400a3          	sb	a3,-127(s0)
    80002834:	0cb67263          	bgeu	a2,a1,800028f8 <__printf+0x410>
    80002838:	00f7f693          	andi	a3,a5,15
    8000283c:	00dd86b3          	add	a3,s11,a3
    80002840:	0006c583          	lbu	a1,0(a3)
    80002844:	00f00613          	li	a2,15
    80002848:	0047d69b          	srliw	a3,a5,0x4
    8000284c:	f8b40123          	sb	a1,-126(s0)
    80002850:	0047d593          	srli	a1,a5,0x4
    80002854:	28f67e63          	bgeu	a2,a5,80002af0 <__printf+0x608>
    80002858:	00f6f693          	andi	a3,a3,15
    8000285c:	00dd86b3          	add	a3,s11,a3
    80002860:	0006c503          	lbu	a0,0(a3)
    80002864:	0087d813          	srli	a6,a5,0x8
    80002868:	0087d69b          	srliw	a3,a5,0x8
    8000286c:	f8a401a3          	sb	a0,-125(s0)
    80002870:	28b67663          	bgeu	a2,a1,80002afc <__printf+0x614>
    80002874:	00f6f693          	andi	a3,a3,15
    80002878:	00dd86b3          	add	a3,s11,a3
    8000287c:	0006c583          	lbu	a1,0(a3)
    80002880:	00c7d513          	srli	a0,a5,0xc
    80002884:	00c7d69b          	srliw	a3,a5,0xc
    80002888:	f8b40223          	sb	a1,-124(s0)
    8000288c:	29067a63          	bgeu	a2,a6,80002b20 <__printf+0x638>
    80002890:	00f6f693          	andi	a3,a3,15
    80002894:	00dd86b3          	add	a3,s11,a3
    80002898:	0006c583          	lbu	a1,0(a3)
    8000289c:	0107d813          	srli	a6,a5,0x10
    800028a0:	0107d69b          	srliw	a3,a5,0x10
    800028a4:	f8b402a3          	sb	a1,-123(s0)
    800028a8:	28a67263          	bgeu	a2,a0,80002b2c <__printf+0x644>
    800028ac:	00f6f693          	andi	a3,a3,15
    800028b0:	00dd86b3          	add	a3,s11,a3
    800028b4:	0006c683          	lbu	a3,0(a3)
    800028b8:	0147d79b          	srliw	a5,a5,0x14
    800028bc:	f8d40323          	sb	a3,-122(s0)
    800028c0:	21067663          	bgeu	a2,a6,80002acc <__printf+0x5e4>
    800028c4:	02079793          	slli	a5,a5,0x20
    800028c8:	0207d793          	srli	a5,a5,0x20
    800028cc:	00fd8db3          	add	s11,s11,a5
    800028d0:	000dc683          	lbu	a3,0(s11)
    800028d4:	00800793          	li	a5,8
    800028d8:	00700c93          	li	s9,7
    800028dc:	f8d403a3          	sb	a3,-121(s0)
    800028e0:	00075c63          	bgez	a4,800028f8 <__printf+0x410>
    800028e4:	f9040713          	addi	a4,s0,-112
    800028e8:	00f70733          	add	a4,a4,a5
    800028ec:	02d00693          	li	a3,45
    800028f0:	fed70823          	sb	a3,-16(a4)
    800028f4:	00078c93          	mv	s9,a5
    800028f8:	f8040793          	addi	a5,s0,-128
    800028fc:	01978cb3          	add	s9,a5,s9
    80002900:	f7f40d13          	addi	s10,s0,-129
    80002904:	000cc503          	lbu	a0,0(s9)
    80002908:	fffc8c93          	addi	s9,s9,-1
    8000290c:	00000097          	auipc	ra,0x0
    80002910:	9f8080e7          	jalr	-1544(ra) # 80002304 <consputc>
    80002914:	ff9d18e3          	bne	s10,s9,80002904 <__printf+0x41c>
    80002918:	0100006f          	j	80002928 <__printf+0x440>
    8000291c:	00000097          	auipc	ra,0x0
    80002920:	9e8080e7          	jalr	-1560(ra) # 80002304 <consputc>
    80002924:	000c8493          	mv	s1,s9
    80002928:	00094503          	lbu	a0,0(s2)
    8000292c:	c60510e3          	bnez	a0,8000258c <__printf+0xa4>
    80002930:	e40c0ee3          	beqz	s8,8000278c <__printf+0x2a4>
    80002934:	00003517          	auipc	a0,0x3
    80002938:	e1c50513          	addi	a0,a0,-484 # 80005750 <pr>
    8000293c:	00001097          	auipc	ra,0x1
    80002940:	94c080e7          	jalr	-1716(ra) # 80003288 <release>
    80002944:	e49ff06f          	j	8000278c <__printf+0x2a4>
    80002948:	f7843783          	ld	a5,-136(s0)
    8000294c:	03000513          	li	a0,48
    80002950:	01000d13          	li	s10,16
    80002954:	00878713          	addi	a4,a5,8
    80002958:	0007bc83          	ld	s9,0(a5)
    8000295c:	f6e43c23          	sd	a4,-136(s0)
    80002960:	00000097          	auipc	ra,0x0
    80002964:	9a4080e7          	jalr	-1628(ra) # 80002304 <consputc>
    80002968:	07800513          	li	a0,120
    8000296c:	00000097          	auipc	ra,0x0
    80002970:	998080e7          	jalr	-1640(ra) # 80002304 <consputc>
    80002974:	00002d97          	auipc	s11,0x2
    80002978:	804d8d93          	addi	s11,s11,-2044 # 80004178 <digits>
    8000297c:	03ccd793          	srli	a5,s9,0x3c
    80002980:	00fd87b3          	add	a5,s11,a5
    80002984:	0007c503          	lbu	a0,0(a5)
    80002988:	fffd0d1b          	addiw	s10,s10,-1
    8000298c:	004c9c93          	slli	s9,s9,0x4
    80002990:	00000097          	auipc	ra,0x0
    80002994:	974080e7          	jalr	-1676(ra) # 80002304 <consputc>
    80002998:	fe0d12e3          	bnez	s10,8000297c <__printf+0x494>
    8000299c:	f8dff06f          	j	80002928 <__printf+0x440>
    800029a0:	f7843783          	ld	a5,-136(s0)
    800029a4:	0007bc83          	ld	s9,0(a5)
    800029a8:	00878793          	addi	a5,a5,8
    800029ac:	f6f43c23          	sd	a5,-136(s0)
    800029b0:	000c9a63          	bnez	s9,800029c4 <__printf+0x4dc>
    800029b4:	1080006f          	j	80002abc <__printf+0x5d4>
    800029b8:	001c8c93          	addi	s9,s9,1
    800029bc:	00000097          	auipc	ra,0x0
    800029c0:	948080e7          	jalr	-1720(ra) # 80002304 <consputc>
    800029c4:	000cc503          	lbu	a0,0(s9)
    800029c8:	fe0518e3          	bnez	a0,800029b8 <__printf+0x4d0>
    800029cc:	f5dff06f          	j	80002928 <__printf+0x440>
    800029d0:	02500513          	li	a0,37
    800029d4:	00000097          	auipc	ra,0x0
    800029d8:	930080e7          	jalr	-1744(ra) # 80002304 <consputc>
    800029dc:	000c8513          	mv	a0,s9
    800029e0:	00000097          	auipc	ra,0x0
    800029e4:	924080e7          	jalr	-1756(ra) # 80002304 <consputc>
    800029e8:	f41ff06f          	j	80002928 <__printf+0x440>
    800029ec:	02500513          	li	a0,37
    800029f0:	00000097          	auipc	ra,0x0
    800029f4:	914080e7          	jalr	-1772(ra) # 80002304 <consputc>
    800029f8:	f31ff06f          	j	80002928 <__printf+0x440>
    800029fc:	00030513          	mv	a0,t1
    80002a00:	00000097          	auipc	ra,0x0
    80002a04:	7bc080e7          	jalr	1980(ra) # 800031bc <acquire>
    80002a08:	b4dff06f          	j	80002554 <__printf+0x6c>
    80002a0c:	40c0053b          	negw	a0,a2
    80002a10:	00a00713          	li	a4,10
    80002a14:	02e576bb          	remuw	a3,a0,a4
    80002a18:	00001d97          	auipc	s11,0x1
    80002a1c:	760d8d93          	addi	s11,s11,1888 # 80004178 <digits>
    80002a20:	ff700593          	li	a1,-9
    80002a24:	02069693          	slli	a3,a3,0x20
    80002a28:	0206d693          	srli	a3,a3,0x20
    80002a2c:	00dd86b3          	add	a3,s11,a3
    80002a30:	0006c683          	lbu	a3,0(a3)
    80002a34:	02e557bb          	divuw	a5,a0,a4
    80002a38:	f8d40023          	sb	a3,-128(s0)
    80002a3c:	10b65e63          	bge	a2,a1,80002b58 <__printf+0x670>
    80002a40:	06300593          	li	a1,99
    80002a44:	02e7f6bb          	remuw	a3,a5,a4
    80002a48:	02069693          	slli	a3,a3,0x20
    80002a4c:	0206d693          	srli	a3,a3,0x20
    80002a50:	00dd86b3          	add	a3,s11,a3
    80002a54:	0006c683          	lbu	a3,0(a3)
    80002a58:	02e7d73b          	divuw	a4,a5,a4
    80002a5c:	00200793          	li	a5,2
    80002a60:	f8d400a3          	sb	a3,-127(s0)
    80002a64:	bca5ece3          	bltu	a1,a0,8000263c <__printf+0x154>
    80002a68:	ce5ff06f          	j	8000274c <__printf+0x264>
    80002a6c:	40e007bb          	negw	a5,a4
    80002a70:	00001d97          	auipc	s11,0x1
    80002a74:	708d8d93          	addi	s11,s11,1800 # 80004178 <digits>
    80002a78:	00f7f693          	andi	a3,a5,15
    80002a7c:	00dd86b3          	add	a3,s11,a3
    80002a80:	0006c583          	lbu	a1,0(a3)
    80002a84:	ff100613          	li	a2,-15
    80002a88:	0047d69b          	srliw	a3,a5,0x4
    80002a8c:	f8b40023          	sb	a1,-128(s0)
    80002a90:	0047d59b          	srliw	a1,a5,0x4
    80002a94:	0ac75e63          	bge	a4,a2,80002b50 <__printf+0x668>
    80002a98:	00f6f693          	andi	a3,a3,15
    80002a9c:	00dd86b3          	add	a3,s11,a3
    80002aa0:	0006c603          	lbu	a2,0(a3)
    80002aa4:	00f00693          	li	a3,15
    80002aa8:	0087d79b          	srliw	a5,a5,0x8
    80002aac:	f8c400a3          	sb	a2,-127(s0)
    80002ab0:	d8b6e4e3          	bltu	a3,a1,80002838 <__printf+0x350>
    80002ab4:	00200793          	li	a5,2
    80002ab8:	e2dff06f          	j	800028e4 <__printf+0x3fc>
    80002abc:	00001c97          	auipc	s9,0x1
    80002ac0:	69cc8c93          	addi	s9,s9,1692 # 80004158 <CONSOLE_STATUS+0x148>
    80002ac4:	02800513          	li	a0,40
    80002ac8:	ef1ff06f          	j	800029b8 <__printf+0x4d0>
    80002acc:	00700793          	li	a5,7
    80002ad0:	00600c93          	li	s9,6
    80002ad4:	e0dff06f          	j	800028e0 <__printf+0x3f8>
    80002ad8:	00700793          	li	a5,7
    80002adc:	00600c93          	li	s9,6
    80002ae0:	c69ff06f          	j	80002748 <__printf+0x260>
    80002ae4:	00300793          	li	a5,3
    80002ae8:	00200c93          	li	s9,2
    80002aec:	c5dff06f          	j	80002748 <__printf+0x260>
    80002af0:	00300793          	li	a5,3
    80002af4:	00200c93          	li	s9,2
    80002af8:	de9ff06f          	j	800028e0 <__printf+0x3f8>
    80002afc:	00400793          	li	a5,4
    80002b00:	00300c93          	li	s9,3
    80002b04:	dddff06f          	j	800028e0 <__printf+0x3f8>
    80002b08:	00400793          	li	a5,4
    80002b0c:	00300c93          	li	s9,3
    80002b10:	c39ff06f          	j	80002748 <__printf+0x260>
    80002b14:	00500793          	li	a5,5
    80002b18:	00400c93          	li	s9,4
    80002b1c:	c2dff06f          	j	80002748 <__printf+0x260>
    80002b20:	00500793          	li	a5,5
    80002b24:	00400c93          	li	s9,4
    80002b28:	db9ff06f          	j	800028e0 <__printf+0x3f8>
    80002b2c:	00600793          	li	a5,6
    80002b30:	00500c93          	li	s9,5
    80002b34:	dadff06f          	j	800028e0 <__printf+0x3f8>
    80002b38:	00600793          	li	a5,6
    80002b3c:	00500c93          	li	s9,5
    80002b40:	c09ff06f          	j	80002748 <__printf+0x260>
    80002b44:	00800793          	li	a5,8
    80002b48:	00700c93          	li	s9,7
    80002b4c:	bfdff06f          	j	80002748 <__printf+0x260>
    80002b50:	00100793          	li	a5,1
    80002b54:	d91ff06f          	j	800028e4 <__printf+0x3fc>
    80002b58:	00100793          	li	a5,1
    80002b5c:	bf1ff06f          	j	8000274c <__printf+0x264>
    80002b60:	00900793          	li	a5,9
    80002b64:	00800c93          	li	s9,8
    80002b68:	be1ff06f          	j	80002748 <__printf+0x260>
    80002b6c:	00001517          	auipc	a0,0x1
    80002b70:	5f450513          	addi	a0,a0,1524 # 80004160 <CONSOLE_STATUS+0x150>
    80002b74:	00000097          	auipc	ra,0x0
    80002b78:	918080e7          	jalr	-1768(ra) # 8000248c <panic>

0000000080002b7c <printfinit>:
    80002b7c:	fe010113          	addi	sp,sp,-32
    80002b80:	00813823          	sd	s0,16(sp)
    80002b84:	00913423          	sd	s1,8(sp)
    80002b88:	00113c23          	sd	ra,24(sp)
    80002b8c:	02010413          	addi	s0,sp,32
    80002b90:	00003497          	auipc	s1,0x3
    80002b94:	bc048493          	addi	s1,s1,-1088 # 80005750 <pr>
    80002b98:	00048513          	mv	a0,s1
    80002b9c:	00001597          	auipc	a1,0x1
    80002ba0:	5d458593          	addi	a1,a1,1492 # 80004170 <CONSOLE_STATUS+0x160>
    80002ba4:	00000097          	auipc	ra,0x0
    80002ba8:	5f4080e7          	jalr	1524(ra) # 80003198 <initlock>
    80002bac:	01813083          	ld	ra,24(sp)
    80002bb0:	01013403          	ld	s0,16(sp)
    80002bb4:	0004ac23          	sw	zero,24(s1)
    80002bb8:	00813483          	ld	s1,8(sp)
    80002bbc:	02010113          	addi	sp,sp,32
    80002bc0:	00008067          	ret

0000000080002bc4 <uartinit>:
    80002bc4:	ff010113          	addi	sp,sp,-16
    80002bc8:	00813423          	sd	s0,8(sp)
    80002bcc:	01010413          	addi	s0,sp,16
    80002bd0:	100007b7          	lui	a5,0x10000
    80002bd4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80002bd8:	f8000713          	li	a4,-128
    80002bdc:	00e781a3          	sb	a4,3(a5)
    80002be0:	00300713          	li	a4,3
    80002be4:	00e78023          	sb	a4,0(a5)
    80002be8:	000780a3          	sb	zero,1(a5)
    80002bec:	00e781a3          	sb	a4,3(a5)
    80002bf0:	00700693          	li	a3,7
    80002bf4:	00d78123          	sb	a3,2(a5)
    80002bf8:	00e780a3          	sb	a4,1(a5)
    80002bfc:	00813403          	ld	s0,8(sp)
    80002c00:	01010113          	addi	sp,sp,16
    80002c04:	00008067          	ret

0000000080002c08 <uartputc>:
    80002c08:	00002797          	auipc	a5,0x2
    80002c0c:	8f07a783          	lw	a5,-1808(a5) # 800044f8 <panicked>
    80002c10:	00078463          	beqz	a5,80002c18 <uartputc+0x10>
    80002c14:	0000006f          	j	80002c14 <uartputc+0xc>
    80002c18:	fd010113          	addi	sp,sp,-48
    80002c1c:	02813023          	sd	s0,32(sp)
    80002c20:	00913c23          	sd	s1,24(sp)
    80002c24:	01213823          	sd	s2,16(sp)
    80002c28:	01313423          	sd	s3,8(sp)
    80002c2c:	02113423          	sd	ra,40(sp)
    80002c30:	03010413          	addi	s0,sp,48
    80002c34:	00002917          	auipc	s2,0x2
    80002c38:	8cc90913          	addi	s2,s2,-1844 # 80004500 <uart_tx_r>
    80002c3c:	00093783          	ld	a5,0(s2)
    80002c40:	00002497          	auipc	s1,0x2
    80002c44:	8c848493          	addi	s1,s1,-1848 # 80004508 <uart_tx_w>
    80002c48:	0004b703          	ld	a4,0(s1)
    80002c4c:	02078693          	addi	a3,a5,32
    80002c50:	00050993          	mv	s3,a0
    80002c54:	02e69c63          	bne	a3,a4,80002c8c <uartputc+0x84>
    80002c58:	00001097          	auipc	ra,0x1
    80002c5c:	834080e7          	jalr	-1996(ra) # 8000348c <push_on>
    80002c60:	00093783          	ld	a5,0(s2)
    80002c64:	0004b703          	ld	a4,0(s1)
    80002c68:	02078793          	addi	a5,a5,32
    80002c6c:	00e79463          	bne	a5,a4,80002c74 <uartputc+0x6c>
    80002c70:	0000006f          	j	80002c70 <uartputc+0x68>
    80002c74:	00001097          	auipc	ra,0x1
    80002c78:	88c080e7          	jalr	-1908(ra) # 80003500 <pop_on>
    80002c7c:	00093783          	ld	a5,0(s2)
    80002c80:	0004b703          	ld	a4,0(s1)
    80002c84:	02078693          	addi	a3,a5,32
    80002c88:	fce688e3          	beq	a3,a4,80002c58 <uartputc+0x50>
    80002c8c:	01f77693          	andi	a3,a4,31
    80002c90:	00003597          	auipc	a1,0x3
    80002c94:	ae058593          	addi	a1,a1,-1312 # 80005770 <uart_tx_buf>
    80002c98:	00d586b3          	add	a3,a1,a3
    80002c9c:	00170713          	addi	a4,a4,1
    80002ca0:	01368023          	sb	s3,0(a3)
    80002ca4:	00e4b023          	sd	a4,0(s1)
    80002ca8:	10000637          	lui	a2,0x10000
    80002cac:	02f71063          	bne	a4,a5,80002ccc <uartputc+0xc4>
    80002cb0:	0340006f          	j	80002ce4 <uartputc+0xdc>
    80002cb4:	00074703          	lbu	a4,0(a4)
    80002cb8:	00f93023          	sd	a5,0(s2)
    80002cbc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80002cc0:	00093783          	ld	a5,0(s2)
    80002cc4:	0004b703          	ld	a4,0(s1)
    80002cc8:	00f70e63          	beq	a4,a5,80002ce4 <uartputc+0xdc>
    80002ccc:	00564683          	lbu	a3,5(a2)
    80002cd0:	01f7f713          	andi	a4,a5,31
    80002cd4:	00e58733          	add	a4,a1,a4
    80002cd8:	0206f693          	andi	a3,a3,32
    80002cdc:	00178793          	addi	a5,a5,1
    80002ce0:	fc069ae3          	bnez	a3,80002cb4 <uartputc+0xac>
    80002ce4:	02813083          	ld	ra,40(sp)
    80002ce8:	02013403          	ld	s0,32(sp)
    80002cec:	01813483          	ld	s1,24(sp)
    80002cf0:	01013903          	ld	s2,16(sp)
    80002cf4:	00813983          	ld	s3,8(sp)
    80002cf8:	03010113          	addi	sp,sp,48
    80002cfc:	00008067          	ret

0000000080002d00 <uartputc_sync>:
    80002d00:	ff010113          	addi	sp,sp,-16
    80002d04:	00813423          	sd	s0,8(sp)
    80002d08:	01010413          	addi	s0,sp,16
    80002d0c:	00001717          	auipc	a4,0x1
    80002d10:	7ec72703          	lw	a4,2028(a4) # 800044f8 <panicked>
    80002d14:	02071663          	bnez	a4,80002d40 <uartputc_sync+0x40>
    80002d18:	00050793          	mv	a5,a0
    80002d1c:	100006b7          	lui	a3,0x10000
    80002d20:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80002d24:	02077713          	andi	a4,a4,32
    80002d28:	fe070ce3          	beqz	a4,80002d20 <uartputc_sync+0x20>
    80002d2c:	0ff7f793          	andi	a5,a5,255
    80002d30:	00f68023          	sb	a5,0(a3)
    80002d34:	00813403          	ld	s0,8(sp)
    80002d38:	01010113          	addi	sp,sp,16
    80002d3c:	00008067          	ret
    80002d40:	0000006f          	j	80002d40 <uartputc_sync+0x40>

0000000080002d44 <uartstart>:
    80002d44:	ff010113          	addi	sp,sp,-16
    80002d48:	00813423          	sd	s0,8(sp)
    80002d4c:	01010413          	addi	s0,sp,16
    80002d50:	00001617          	auipc	a2,0x1
    80002d54:	7b060613          	addi	a2,a2,1968 # 80004500 <uart_tx_r>
    80002d58:	00001517          	auipc	a0,0x1
    80002d5c:	7b050513          	addi	a0,a0,1968 # 80004508 <uart_tx_w>
    80002d60:	00063783          	ld	a5,0(a2)
    80002d64:	00053703          	ld	a4,0(a0)
    80002d68:	04f70263          	beq	a4,a5,80002dac <uartstart+0x68>
    80002d6c:	100005b7          	lui	a1,0x10000
    80002d70:	00003817          	auipc	a6,0x3
    80002d74:	a0080813          	addi	a6,a6,-1536 # 80005770 <uart_tx_buf>
    80002d78:	01c0006f          	j	80002d94 <uartstart+0x50>
    80002d7c:	0006c703          	lbu	a4,0(a3)
    80002d80:	00f63023          	sd	a5,0(a2)
    80002d84:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80002d88:	00063783          	ld	a5,0(a2)
    80002d8c:	00053703          	ld	a4,0(a0)
    80002d90:	00f70e63          	beq	a4,a5,80002dac <uartstart+0x68>
    80002d94:	01f7f713          	andi	a4,a5,31
    80002d98:	00e806b3          	add	a3,a6,a4
    80002d9c:	0055c703          	lbu	a4,5(a1)
    80002da0:	00178793          	addi	a5,a5,1
    80002da4:	02077713          	andi	a4,a4,32
    80002da8:	fc071ae3          	bnez	a4,80002d7c <uartstart+0x38>
    80002dac:	00813403          	ld	s0,8(sp)
    80002db0:	01010113          	addi	sp,sp,16
    80002db4:	00008067          	ret

0000000080002db8 <uartgetc>:
    80002db8:	ff010113          	addi	sp,sp,-16
    80002dbc:	00813423          	sd	s0,8(sp)
    80002dc0:	01010413          	addi	s0,sp,16
    80002dc4:	10000737          	lui	a4,0x10000
    80002dc8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80002dcc:	0017f793          	andi	a5,a5,1
    80002dd0:	00078c63          	beqz	a5,80002de8 <uartgetc+0x30>
    80002dd4:	00074503          	lbu	a0,0(a4)
    80002dd8:	0ff57513          	andi	a0,a0,255
    80002ddc:	00813403          	ld	s0,8(sp)
    80002de0:	01010113          	addi	sp,sp,16
    80002de4:	00008067          	ret
    80002de8:	fff00513          	li	a0,-1
    80002dec:	ff1ff06f          	j	80002ddc <uartgetc+0x24>

0000000080002df0 <uartintr>:
    80002df0:	100007b7          	lui	a5,0x10000
    80002df4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80002df8:	0017f793          	andi	a5,a5,1
    80002dfc:	0a078463          	beqz	a5,80002ea4 <uartintr+0xb4>
    80002e00:	fe010113          	addi	sp,sp,-32
    80002e04:	00813823          	sd	s0,16(sp)
    80002e08:	00913423          	sd	s1,8(sp)
    80002e0c:	00113c23          	sd	ra,24(sp)
    80002e10:	02010413          	addi	s0,sp,32
    80002e14:	100004b7          	lui	s1,0x10000
    80002e18:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80002e1c:	0ff57513          	andi	a0,a0,255
    80002e20:	fffff097          	auipc	ra,0xfffff
    80002e24:	534080e7          	jalr	1332(ra) # 80002354 <consoleintr>
    80002e28:	0054c783          	lbu	a5,5(s1)
    80002e2c:	0017f793          	andi	a5,a5,1
    80002e30:	fe0794e3          	bnez	a5,80002e18 <uartintr+0x28>
    80002e34:	00001617          	auipc	a2,0x1
    80002e38:	6cc60613          	addi	a2,a2,1740 # 80004500 <uart_tx_r>
    80002e3c:	00001517          	auipc	a0,0x1
    80002e40:	6cc50513          	addi	a0,a0,1740 # 80004508 <uart_tx_w>
    80002e44:	00063783          	ld	a5,0(a2)
    80002e48:	00053703          	ld	a4,0(a0)
    80002e4c:	04f70263          	beq	a4,a5,80002e90 <uartintr+0xa0>
    80002e50:	100005b7          	lui	a1,0x10000
    80002e54:	00003817          	auipc	a6,0x3
    80002e58:	91c80813          	addi	a6,a6,-1764 # 80005770 <uart_tx_buf>
    80002e5c:	01c0006f          	j	80002e78 <uartintr+0x88>
    80002e60:	0006c703          	lbu	a4,0(a3)
    80002e64:	00f63023          	sd	a5,0(a2)
    80002e68:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80002e6c:	00063783          	ld	a5,0(a2)
    80002e70:	00053703          	ld	a4,0(a0)
    80002e74:	00f70e63          	beq	a4,a5,80002e90 <uartintr+0xa0>
    80002e78:	01f7f713          	andi	a4,a5,31
    80002e7c:	00e806b3          	add	a3,a6,a4
    80002e80:	0055c703          	lbu	a4,5(a1)
    80002e84:	00178793          	addi	a5,a5,1
    80002e88:	02077713          	andi	a4,a4,32
    80002e8c:	fc071ae3          	bnez	a4,80002e60 <uartintr+0x70>
    80002e90:	01813083          	ld	ra,24(sp)
    80002e94:	01013403          	ld	s0,16(sp)
    80002e98:	00813483          	ld	s1,8(sp)
    80002e9c:	02010113          	addi	sp,sp,32
    80002ea0:	00008067          	ret
    80002ea4:	00001617          	auipc	a2,0x1
    80002ea8:	65c60613          	addi	a2,a2,1628 # 80004500 <uart_tx_r>
    80002eac:	00001517          	auipc	a0,0x1
    80002eb0:	65c50513          	addi	a0,a0,1628 # 80004508 <uart_tx_w>
    80002eb4:	00063783          	ld	a5,0(a2)
    80002eb8:	00053703          	ld	a4,0(a0)
    80002ebc:	04f70263          	beq	a4,a5,80002f00 <uartintr+0x110>
    80002ec0:	100005b7          	lui	a1,0x10000
    80002ec4:	00003817          	auipc	a6,0x3
    80002ec8:	8ac80813          	addi	a6,a6,-1876 # 80005770 <uart_tx_buf>
    80002ecc:	01c0006f          	j	80002ee8 <uartintr+0xf8>
    80002ed0:	0006c703          	lbu	a4,0(a3)
    80002ed4:	00f63023          	sd	a5,0(a2)
    80002ed8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80002edc:	00063783          	ld	a5,0(a2)
    80002ee0:	00053703          	ld	a4,0(a0)
    80002ee4:	02f70063          	beq	a4,a5,80002f04 <uartintr+0x114>
    80002ee8:	01f7f713          	andi	a4,a5,31
    80002eec:	00e806b3          	add	a3,a6,a4
    80002ef0:	0055c703          	lbu	a4,5(a1)
    80002ef4:	00178793          	addi	a5,a5,1
    80002ef8:	02077713          	andi	a4,a4,32
    80002efc:	fc071ae3          	bnez	a4,80002ed0 <uartintr+0xe0>
    80002f00:	00008067          	ret
    80002f04:	00008067          	ret

0000000080002f08 <kinit>:
    80002f08:	fc010113          	addi	sp,sp,-64
    80002f0c:	02913423          	sd	s1,40(sp)
    80002f10:	fffff7b7          	lui	a5,0xfffff
    80002f14:	00004497          	auipc	s1,0x4
    80002f18:	87b48493          	addi	s1,s1,-1925 # 8000678f <end+0xfff>
    80002f1c:	02813823          	sd	s0,48(sp)
    80002f20:	01313c23          	sd	s3,24(sp)
    80002f24:	00f4f4b3          	and	s1,s1,a5
    80002f28:	02113c23          	sd	ra,56(sp)
    80002f2c:	03213023          	sd	s2,32(sp)
    80002f30:	01413823          	sd	s4,16(sp)
    80002f34:	01513423          	sd	s5,8(sp)
    80002f38:	04010413          	addi	s0,sp,64
    80002f3c:	000017b7          	lui	a5,0x1
    80002f40:	01100993          	li	s3,17
    80002f44:	00f487b3          	add	a5,s1,a5
    80002f48:	01b99993          	slli	s3,s3,0x1b
    80002f4c:	06f9e063          	bltu	s3,a5,80002fac <kinit+0xa4>
    80002f50:	00003a97          	auipc	s5,0x3
    80002f54:	840a8a93          	addi	s5,s5,-1984 # 80005790 <end>
    80002f58:	0754ec63          	bltu	s1,s5,80002fd0 <kinit+0xc8>
    80002f5c:	0734fa63          	bgeu	s1,s3,80002fd0 <kinit+0xc8>
    80002f60:	00088a37          	lui	s4,0x88
    80002f64:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80002f68:	00001917          	auipc	s2,0x1
    80002f6c:	5a890913          	addi	s2,s2,1448 # 80004510 <kmem>
    80002f70:	00ca1a13          	slli	s4,s4,0xc
    80002f74:	0140006f          	j	80002f88 <kinit+0x80>
    80002f78:	000017b7          	lui	a5,0x1
    80002f7c:	00f484b3          	add	s1,s1,a5
    80002f80:	0554e863          	bltu	s1,s5,80002fd0 <kinit+0xc8>
    80002f84:	0534f663          	bgeu	s1,s3,80002fd0 <kinit+0xc8>
    80002f88:	00001637          	lui	a2,0x1
    80002f8c:	00100593          	li	a1,1
    80002f90:	00048513          	mv	a0,s1
    80002f94:	00000097          	auipc	ra,0x0
    80002f98:	5e4080e7          	jalr	1508(ra) # 80003578 <__memset>
    80002f9c:	00093783          	ld	a5,0(s2)
    80002fa0:	00f4b023          	sd	a5,0(s1)
    80002fa4:	00993023          	sd	s1,0(s2)
    80002fa8:	fd4498e3          	bne	s1,s4,80002f78 <kinit+0x70>
    80002fac:	03813083          	ld	ra,56(sp)
    80002fb0:	03013403          	ld	s0,48(sp)
    80002fb4:	02813483          	ld	s1,40(sp)
    80002fb8:	02013903          	ld	s2,32(sp)
    80002fbc:	01813983          	ld	s3,24(sp)
    80002fc0:	01013a03          	ld	s4,16(sp)
    80002fc4:	00813a83          	ld	s5,8(sp)
    80002fc8:	04010113          	addi	sp,sp,64
    80002fcc:	00008067          	ret
    80002fd0:	00001517          	auipc	a0,0x1
    80002fd4:	1c050513          	addi	a0,a0,448 # 80004190 <digits+0x18>
    80002fd8:	fffff097          	auipc	ra,0xfffff
    80002fdc:	4b4080e7          	jalr	1204(ra) # 8000248c <panic>

0000000080002fe0 <freerange>:
    80002fe0:	fc010113          	addi	sp,sp,-64
    80002fe4:	000017b7          	lui	a5,0x1
    80002fe8:	02913423          	sd	s1,40(sp)
    80002fec:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80002ff0:	009504b3          	add	s1,a0,s1
    80002ff4:	fffff537          	lui	a0,0xfffff
    80002ff8:	02813823          	sd	s0,48(sp)
    80002ffc:	02113c23          	sd	ra,56(sp)
    80003000:	03213023          	sd	s2,32(sp)
    80003004:	01313c23          	sd	s3,24(sp)
    80003008:	01413823          	sd	s4,16(sp)
    8000300c:	01513423          	sd	s5,8(sp)
    80003010:	01613023          	sd	s6,0(sp)
    80003014:	04010413          	addi	s0,sp,64
    80003018:	00a4f4b3          	and	s1,s1,a0
    8000301c:	00f487b3          	add	a5,s1,a5
    80003020:	06f5e463          	bltu	a1,a5,80003088 <freerange+0xa8>
    80003024:	00002a97          	auipc	s5,0x2
    80003028:	76ca8a93          	addi	s5,s5,1900 # 80005790 <end>
    8000302c:	0954e263          	bltu	s1,s5,800030b0 <freerange+0xd0>
    80003030:	01100993          	li	s3,17
    80003034:	01b99993          	slli	s3,s3,0x1b
    80003038:	0734fc63          	bgeu	s1,s3,800030b0 <freerange+0xd0>
    8000303c:	00058a13          	mv	s4,a1
    80003040:	00001917          	auipc	s2,0x1
    80003044:	4d090913          	addi	s2,s2,1232 # 80004510 <kmem>
    80003048:	00002b37          	lui	s6,0x2
    8000304c:	0140006f          	j	80003060 <freerange+0x80>
    80003050:	000017b7          	lui	a5,0x1
    80003054:	00f484b3          	add	s1,s1,a5
    80003058:	0554ec63          	bltu	s1,s5,800030b0 <freerange+0xd0>
    8000305c:	0534fa63          	bgeu	s1,s3,800030b0 <freerange+0xd0>
    80003060:	00001637          	lui	a2,0x1
    80003064:	00100593          	li	a1,1
    80003068:	00048513          	mv	a0,s1
    8000306c:	00000097          	auipc	ra,0x0
    80003070:	50c080e7          	jalr	1292(ra) # 80003578 <__memset>
    80003074:	00093703          	ld	a4,0(s2)
    80003078:	016487b3          	add	a5,s1,s6
    8000307c:	00e4b023          	sd	a4,0(s1)
    80003080:	00993023          	sd	s1,0(s2)
    80003084:	fcfa76e3          	bgeu	s4,a5,80003050 <freerange+0x70>
    80003088:	03813083          	ld	ra,56(sp)
    8000308c:	03013403          	ld	s0,48(sp)
    80003090:	02813483          	ld	s1,40(sp)
    80003094:	02013903          	ld	s2,32(sp)
    80003098:	01813983          	ld	s3,24(sp)
    8000309c:	01013a03          	ld	s4,16(sp)
    800030a0:	00813a83          	ld	s5,8(sp)
    800030a4:	00013b03          	ld	s6,0(sp)
    800030a8:	04010113          	addi	sp,sp,64
    800030ac:	00008067          	ret
    800030b0:	00001517          	auipc	a0,0x1
    800030b4:	0e050513          	addi	a0,a0,224 # 80004190 <digits+0x18>
    800030b8:	fffff097          	auipc	ra,0xfffff
    800030bc:	3d4080e7          	jalr	980(ra) # 8000248c <panic>

00000000800030c0 <kfree>:
    800030c0:	fe010113          	addi	sp,sp,-32
    800030c4:	00813823          	sd	s0,16(sp)
    800030c8:	00113c23          	sd	ra,24(sp)
    800030cc:	00913423          	sd	s1,8(sp)
    800030d0:	02010413          	addi	s0,sp,32
    800030d4:	03451793          	slli	a5,a0,0x34
    800030d8:	04079c63          	bnez	a5,80003130 <kfree+0x70>
    800030dc:	00002797          	auipc	a5,0x2
    800030e0:	6b478793          	addi	a5,a5,1716 # 80005790 <end>
    800030e4:	00050493          	mv	s1,a0
    800030e8:	04f56463          	bltu	a0,a5,80003130 <kfree+0x70>
    800030ec:	01100793          	li	a5,17
    800030f0:	01b79793          	slli	a5,a5,0x1b
    800030f4:	02f57e63          	bgeu	a0,a5,80003130 <kfree+0x70>
    800030f8:	00001637          	lui	a2,0x1
    800030fc:	00100593          	li	a1,1
    80003100:	00000097          	auipc	ra,0x0
    80003104:	478080e7          	jalr	1144(ra) # 80003578 <__memset>
    80003108:	00001797          	auipc	a5,0x1
    8000310c:	40878793          	addi	a5,a5,1032 # 80004510 <kmem>
    80003110:	0007b703          	ld	a4,0(a5)
    80003114:	01813083          	ld	ra,24(sp)
    80003118:	01013403          	ld	s0,16(sp)
    8000311c:	00e4b023          	sd	a4,0(s1)
    80003120:	0097b023          	sd	s1,0(a5)
    80003124:	00813483          	ld	s1,8(sp)
    80003128:	02010113          	addi	sp,sp,32
    8000312c:	00008067          	ret
    80003130:	00001517          	auipc	a0,0x1
    80003134:	06050513          	addi	a0,a0,96 # 80004190 <digits+0x18>
    80003138:	fffff097          	auipc	ra,0xfffff
    8000313c:	354080e7          	jalr	852(ra) # 8000248c <panic>

0000000080003140 <kalloc>:
    80003140:	fe010113          	addi	sp,sp,-32
    80003144:	00813823          	sd	s0,16(sp)
    80003148:	00913423          	sd	s1,8(sp)
    8000314c:	00113c23          	sd	ra,24(sp)
    80003150:	02010413          	addi	s0,sp,32
    80003154:	00001797          	auipc	a5,0x1
    80003158:	3bc78793          	addi	a5,a5,956 # 80004510 <kmem>
    8000315c:	0007b483          	ld	s1,0(a5)
    80003160:	02048063          	beqz	s1,80003180 <kalloc+0x40>
    80003164:	0004b703          	ld	a4,0(s1)
    80003168:	00001637          	lui	a2,0x1
    8000316c:	00500593          	li	a1,5
    80003170:	00048513          	mv	a0,s1
    80003174:	00e7b023          	sd	a4,0(a5)
    80003178:	00000097          	auipc	ra,0x0
    8000317c:	400080e7          	jalr	1024(ra) # 80003578 <__memset>
    80003180:	01813083          	ld	ra,24(sp)
    80003184:	01013403          	ld	s0,16(sp)
    80003188:	00048513          	mv	a0,s1
    8000318c:	00813483          	ld	s1,8(sp)
    80003190:	02010113          	addi	sp,sp,32
    80003194:	00008067          	ret

0000000080003198 <initlock>:
    80003198:	ff010113          	addi	sp,sp,-16
    8000319c:	00813423          	sd	s0,8(sp)
    800031a0:	01010413          	addi	s0,sp,16
    800031a4:	00813403          	ld	s0,8(sp)
    800031a8:	00b53423          	sd	a1,8(a0)
    800031ac:	00052023          	sw	zero,0(a0)
    800031b0:	00053823          	sd	zero,16(a0)
    800031b4:	01010113          	addi	sp,sp,16
    800031b8:	00008067          	ret

00000000800031bc <acquire>:
    800031bc:	fe010113          	addi	sp,sp,-32
    800031c0:	00813823          	sd	s0,16(sp)
    800031c4:	00913423          	sd	s1,8(sp)
    800031c8:	00113c23          	sd	ra,24(sp)
    800031cc:	01213023          	sd	s2,0(sp)
    800031d0:	02010413          	addi	s0,sp,32
    800031d4:	00050493          	mv	s1,a0
    800031d8:	10002973          	csrr	s2,sstatus
    800031dc:	100027f3          	csrr	a5,sstatus
    800031e0:	ffd7f793          	andi	a5,a5,-3
    800031e4:	10079073          	csrw	sstatus,a5
    800031e8:	fffff097          	auipc	ra,0xfffff
    800031ec:	8e8080e7          	jalr	-1816(ra) # 80001ad0 <mycpu>
    800031f0:	07852783          	lw	a5,120(a0)
    800031f4:	06078e63          	beqz	a5,80003270 <acquire+0xb4>
    800031f8:	fffff097          	auipc	ra,0xfffff
    800031fc:	8d8080e7          	jalr	-1832(ra) # 80001ad0 <mycpu>
    80003200:	07852783          	lw	a5,120(a0)
    80003204:	0004a703          	lw	a4,0(s1)
    80003208:	0017879b          	addiw	a5,a5,1
    8000320c:	06f52c23          	sw	a5,120(a0)
    80003210:	04071063          	bnez	a4,80003250 <acquire+0x94>
    80003214:	00100713          	li	a4,1
    80003218:	00070793          	mv	a5,a4
    8000321c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80003220:	0007879b          	sext.w	a5,a5
    80003224:	fe079ae3          	bnez	a5,80003218 <acquire+0x5c>
    80003228:	0ff0000f          	fence
    8000322c:	fffff097          	auipc	ra,0xfffff
    80003230:	8a4080e7          	jalr	-1884(ra) # 80001ad0 <mycpu>
    80003234:	01813083          	ld	ra,24(sp)
    80003238:	01013403          	ld	s0,16(sp)
    8000323c:	00a4b823          	sd	a0,16(s1)
    80003240:	00013903          	ld	s2,0(sp)
    80003244:	00813483          	ld	s1,8(sp)
    80003248:	02010113          	addi	sp,sp,32
    8000324c:	00008067          	ret
    80003250:	0104b903          	ld	s2,16(s1)
    80003254:	fffff097          	auipc	ra,0xfffff
    80003258:	87c080e7          	jalr	-1924(ra) # 80001ad0 <mycpu>
    8000325c:	faa91ce3          	bne	s2,a0,80003214 <acquire+0x58>
    80003260:	00001517          	auipc	a0,0x1
    80003264:	f3850513          	addi	a0,a0,-200 # 80004198 <digits+0x20>
    80003268:	fffff097          	auipc	ra,0xfffff
    8000326c:	224080e7          	jalr	548(ra) # 8000248c <panic>
    80003270:	00195913          	srli	s2,s2,0x1
    80003274:	fffff097          	auipc	ra,0xfffff
    80003278:	85c080e7          	jalr	-1956(ra) # 80001ad0 <mycpu>
    8000327c:	00197913          	andi	s2,s2,1
    80003280:	07252e23          	sw	s2,124(a0)
    80003284:	f75ff06f          	j	800031f8 <acquire+0x3c>

0000000080003288 <release>:
    80003288:	fe010113          	addi	sp,sp,-32
    8000328c:	00813823          	sd	s0,16(sp)
    80003290:	00113c23          	sd	ra,24(sp)
    80003294:	00913423          	sd	s1,8(sp)
    80003298:	01213023          	sd	s2,0(sp)
    8000329c:	02010413          	addi	s0,sp,32
    800032a0:	00052783          	lw	a5,0(a0)
    800032a4:	00079a63          	bnez	a5,800032b8 <release+0x30>
    800032a8:	00001517          	auipc	a0,0x1
    800032ac:	ef850513          	addi	a0,a0,-264 # 800041a0 <digits+0x28>
    800032b0:	fffff097          	auipc	ra,0xfffff
    800032b4:	1dc080e7          	jalr	476(ra) # 8000248c <panic>
    800032b8:	01053903          	ld	s2,16(a0)
    800032bc:	00050493          	mv	s1,a0
    800032c0:	fffff097          	auipc	ra,0xfffff
    800032c4:	810080e7          	jalr	-2032(ra) # 80001ad0 <mycpu>
    800032c8:	fea910e3          	bne	s2,a0,800032a8 <release+0x20>
    800032cc:	0004b823          	sd	zero,16(s1)
    800032d0:	0ff0000f          	fence
    800032d4:	0f50000f          	fence	iorw,ow
    800032d8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800032dc:	ffffe097          	auipc	ra,0xffffe
    800032e0:	7f4080e7          	jalr	2036(ra) # 80001ad0 <mycpu>
    800032e4:	100027f3          	csrr	a5,sstatus
    800032e8:	0027f793          	andi	a5,a5,2
    800032ec:	04079a63          	bnez	a5,80003340 <release+0xb8>
    800032f0:	07852783          	lw	a5,120(a0)
    800032f4:	02f05e63          	blez	a5,80003330 <release+0xa8>
    800032f8:	fff7871b          	addiw	a4,a5,-1
    800032fc:	06e52c23          	sw	a4,120(a0)
    80003300:	00071c63          	bnez	a4,80003318 <release+0x90>
    80003304:	07c52783          	lw	a5,124(a0)
    80003308:	00078863          	beqz	a5,80003318 <release+0x90>
    8000330c:	100027f3          	csrr	a5,sstatus
    80003310:	0027e793          	ori	a5,a5,2
    80003314:	10079073          	csrw	sstatus,a5
    80003318:	01813083          	ld	ra,24(sp)
    8000331c:	01013403          	ld	s0,16(sp)
    80003320:	00813483          	ld	s1,8(sp)
    80003324:	00013903          	ld	s2,0(sp)
    80003328:	02010113          	addi	sp,sp,32
    8000332c:	00008067          	ret
    80003330:	00001517          	auipc	a0,0x1
    80003334:	e9050513          	addi	a0,a0,-368 # 800041c0 <digits+0x48>
    80003338:	fffff097          	auipc	ra,0xfffff
    8000333c:	154080e7          	jalr	340(ra) # 8000248c <panic>
    80003340:	00001517          	auipc	a0,0x1
    80003344:	e6850513          	addi	a0,a0,-408 # 800041a8 <digits+0x30>
    80003348:	fffff097          	auipc	ra,0xfffff
    8000334c:	144080e7          	jalr	324(ra) # 8000248c <panic>

0000000080003350 <holding>:
    80003350:	00052783          	lw	a5,0(a0)
    80003354:	00079663          	bnez	a5,80003360 <holding+0x10>
    80003358:	00000513          	li	a0,0
    8000335c:	00008067          	ret
    80003360:	fe010113          	addi	sp,sp,-32
    80003364:	00813823          	sd	s0,16(sp)
    80003368:	00913423          	sd	s1,8(sp)
    8000336c:	00113c23          	sd	ra,24(sp)
    80003370:	02010413          	addi	s0,sp,32
    80003374:	01053483          	ld	s1,16(a0)
    80003378:	ffffe097          	auipc	ra,0xffffe
    8000337c:	758080e7          	jalr	1880(ra) # 80001ad0 <mycpu>
    80003380:	01813083          	ld	ra,24(sp)
    80003384:	01013403          	ld	s0,16(sp)
    80003388:	40a48533          	sub	a0,s1,a0
    8000338c:	00153513          	seqz	a0,a0
    80003390:	00813483          	ld	s1,8(sp)
    80003394:	02010113          	addi	sp,sp,32
    80003398:	00008067          	ret

000000008000339c <push_off>:
    8000339c:	fe010113          	addi	sp,sp,-32
    800033a0:	00813823          	sd	s0,16(sp)
    800033a4:	00113c23          	sd	ra,24(sp)
    800033a8:	00913423          	sd	s1,8(sp)
    800033ac:	02010413          	addi	s0,sp,32
    800033b0:	100024f3          	csrr	s1,sstatus
    800033b4:	100027f3          	csrr	a5,sstatus
    800033b8:	ffd7f793          	andi	a5,a5,-3
    800033bc:	10079073          	csrw	sstatus,a5
    800033c0:	ffffe097          	auipc	ra,0xffffe
    800033c4:	710080e7          	jalr	1808(ra) # 80001ad0 <mycpu>
    800033c8:	07852783          	lw	a5,120(a0)
    800033cc:	02078663          	beqz	a5,800033f8 <push_off+0x5c>
    800033d0:	ffffe097          	auipc	ra,0xffffe
    800033d4:	700080e7          	jalr	1792(ra) # 80001ad0 <mycpu>
    800033d8:	07852783          	lw	a5,120(a0)
    800033dc:	01813083          	ld	ra,24(sp)
    800033e0:	01013403          	ld	s0,16(sp)
    800033e4:	0017879b          	addiw	a5,a5,1
    800033e8:	06f52c23          	sw	a5,120(a0)
    800033ec:	00813483          	ld	s1,8(sp)
    800033f0:	02010113          	addi	sp,sp,32
    800033f4:	00008067          	ret
    800033f8:	0014d493          	srli	s1,s1,0x1
    800033fc:	ffffe097          	auipc	ra,0xffffe
    80003400:	6d4080e7          	jalr	1748(ra) # 80001ad0 <mycpu>
    80003404:	0014f493          	andi	s1,s1,1
    80003408:	06952e23          	sw	s1,124(a0)
    8000340c:	fc5ff06f          	j	800033d0 <push_off+0x34>

0000000080003410 <pop_off>:
    80003410:	ff010113          	addi	sp,sp,-16
    80003414:	00813023          	sd	s0,0(sp)
    80003418:	00113423          	sd	ra,8(sp)
    8000341c:	01010413          	addi	s0,sp,16
    80003420:	ffffe097          	auipc	ra,0xffffe
    80003424:	6b0080e7          	jalr	1712(ra) # 80001ad0 <mycpu>
    80003428:	100027f3          	csrr	a5,sstatus
    8000342c:	0027f793          	andi	a5,a5,2
    80003430:	04079663          	bnez	a5,8000347c <pop_off+0x6c>
    80003434:	07852783          	lw	a5,120(a0)
    80003438:	02f05a63          	blez	a5,8000346c <pop_off+0x5c>
    8000343c:	fff7871b          	addiw	a4,a5,-1
    80003440:	06e52c23          	sw	a4,120(a0)
    80003444:	00071c63          	bnez	a4,8000345c <pop_off+0x4c>
    80003448:	07c52783          	lw	a5,124(a0)
    8000344c:	00078863          	beqz	a5,8000345c <pop_off+0x4c>
    80003450:	100027f3          	csrr	a5,sstatus
    80003454:	0027e793          	ori	a5,a5,2
    80003458:	10079073          	csrw	sstatus,a5
    8000345c:	00813083          	ld	ra,8(sp)
    80003460:	00013403          	ld	s0,0(sp)
    80003464:	01010113          	addi	sp,sp,16
    80003468:	00008067          	ret
    8000346c:	00001517          	auipc	a0,0x1
    80003470:	d5450513          	addi	a0,a0,-684 # 800041c0 <digits+0x48>
    80003474:	fffff097          	auipc	ra,0xfffff
    80003478:	018080e7          	jalr	24(ra) # 8000248c <panic>
    8000347c:	00001517          	auipc	a0,0x1
    80003480:	d2c50513          	addi	a0,a0,-724 # 800041a8 <digits+0x30>
    80003484:	fffff097          	auipc	ra,0xfffff
    80003488:	008080e7          	jalr	8(ra) # 8000248c <panic>

000000008000348c <push_on>:
    8000348c:	fe010113          	addi	sp,sp,-32
    80003490:	00813823          	sd	s0,16(sp)
    80003494:	00113c23          	sd	ra,24(sp)
    80003498:	00913423          	sd	s1,8(sp)
    8000349c:	02010413          	addi	s0,sp,32
    800034a0:	100024f3          	csrr	s1,sstatus
    800034a4:	100027f3          	csrr	a5,sstatus
    800034a8:	0027e793          	ori	a5,a5,2
    800034ac:	10079073          	csrw	sstatus,a5
    800034b0:	ffffe097          	auipc	ra,0xffffe
    800034b4:	620080e7          	jalr	1568(ra) # 80001ad0 <mycpu>
    800034b8:	07852783          	lw	a5,120(a0)
    800034bc:	02078663          	beqz	a5,800034e8 <push_on+0x5c>
    800034c0:	ffffe097          	auipc	ra,0xffffe
    800034c4:	610080e7          	jalr	1552(ra) # 80001ad0 <mycpu>
    800034c8:	07852783          	lw	a5,120(a0)
    800034cc:	01813083          	ld	ra,24(sp)
    800034d0:	01013403          	ld	s0,16(sp)
    800034d4:	0017879b          	addiw	a5,a5,1
    800034d8:	06f52c23          	sw	a5,120(a0)
    800034dc:	00813483          	ld	s1,8(sp)
    800034e0:	02010113          	addi	sp,sp,32
    800034e4:	00008067          	ret
    800034e8:	0014d493          	srli	s1,s1,0x1
    800034ec:	ffffe097          	auipc	ra,0xffffe
    800034f0:	5e4080e7          	jalr	1508(ra) # 80001ad0 <mycpu>
    800034f4:	0014f493          	andi	s1,s1,1
    800034f8:	06952e23          	sw	s1,124(a0)
    800034fc:	fc5ff06f          	j	800034c0 <push_on+0x34>

0000000080003500 <pop_on>:
    80003500:	ff010113          	addi	sp,sp,-16
    80003504:	00813023          	sd	s0,0(sp)
    80003508:	00113423          	sd	ra,8(sp)
    8000350c:	01010413          	addi	s0,sp,16
    80003510:	ffffe097          	auipc	ra,0xffffe
    80003514:	5c0080e7          	jalr	1472(ra) # 80001ad0 <mycpu>
    80003518:	100027f3          	csrr	a5,sstatus
    8000351c:	0027f793          	andi	a5,a5,2
    80003520:	04078463          	beqz	a5,80003568 <pop_on+0x68>
    80003524:	07852783          	lw	a5,120(a0)
    80003528:	02f05863          	blez	a5,80003558 <pop_on+0x58>
    8000352c:	fff7879b          	addiw	a5,a5,-1
    80003530:	06f52c23          	sw	a5,120(a0)
    80003534:	07853783          	ld	a5,120(a0)
    80003538:	00079863          	bnez	a5,80003548 <pop_on+0x48>
    8000353c:	100027f3          	csrr	a5,sstatus
    80003540:	ffd7f793          	andi	a5,a5,-3
    80003544:	10079073          	csrw	sstatus,a5
    80003548:	00813083          	ld	ra,8(sp)
    8000354c:	00013403          	ld	s0,0(sp)
    80003550:	01010113          	addi	sp,sp,16
    80003554:	00008067          	ret
    80003558:	00001517          	auipc	a0,0x1
    8000355c:	c9050513          	addi	a0,a0,-880 # 800041e8 <digits+0x70>
    80003560:	fffff097          	auipc	ra,0xfffff
    80003564:	f2c080e7          	jalr	-212(ra) # 8000248c <panic>
    80003568:	00001517          	auipc	a0,0x1
    8000356c:	c6050513          	addi	a0,a0,-928 # 800041c8 <digits+0x50>
    80003570:	fffff097          	auipc	ra,0xfffff
    80003574:	f1c080e7          	jalr	-228(ra) # 8000248c <panic>

0000000080003578 <__memset>:
    80003578:	ff010113          	addi	sp,sp,-16
    8000357c:	00813423          	sd	s0,8(sp)
    80003580:	01010413          	addi	s0,sp,16
    80003584:	1a060e63          	beqz	a2,80003740 <__memset+0x1c8>
    80003588:	40a007b3          	neg	a5,a0
    8000358c:	0077f793          	andi	a5,a5,7
    80003590:	00778693          	addi	a3,a5,7
    80003594:	00b00813          	li	a6,11
    80003598:	0ff5f593          	andi	a1,a1,255
    8000359c:	fff6071b          	addiw	a4,a2,-1
    800035a0:	1b06e663          	bltu	a3,a6,8000374c <__memset+0x1d4>
    800035a4:	1cd76463          	bltu	a4,a3,8000376c <__memset+0x1f4>
    800035a8:	1a078e63          	beqz	a5,80003764 <__memset+0x1ec>
    800035ac:	00b50023          	sb	a1,0(a0)
    800035b0:	00100713          	li	a4,1
    800035b4:	1ae78463          	beq	a5,a4,8000375c <__memset+0x1e4>
    800035b8:	00b500a3          	sb	a1,1(a0)
    800035bc:	00200713          	li	a4,2
    800035c0:	1ae78a63          	beq	a5,a4,80003774 <__memset+0x1fc>
    800035c4:	00b50123          	sb	a1,2(a0)
    800035c8:	00300713          	li	a4,3
    800035cc:	18e78463          	beq	a5,a4,80003754 <__memset+0x1dc>
    800035d0:	00b501a3          	sb	a1,3(a0)
    800035d4:	00400713          	li	a4,4
    800035d8:	1ae78263          	beq	a5,a4,8000377c <__memset+0x204>
    800035dc:	00b50223          	sb	a1,4(a0)
    800035e0:	00500713          	li	a4,5
    800035e4:	1ae78063          	beq	a5,a4,80003784 <__memset+0x20c>
    800035e8:	00b502a3          	sb	a1,5(a0)
    800035ec:	00700713          	li	a4,7
    800035f0:	18e79e63          	bne	a5,a4,8000378c <__memset+0x214>
    800035f4:	00b50323          	sb	a1,6(a0)
    800035f8:	00700e93          	li	t4,7
    800035fc:	00859713          	slli	a4,a1,0x8
    80003600:	00e5e733          	or	a4,a1,a4
    80003604:	01059e13          	slli	t3,a1,0x10
    80003608:	01c76e33          	or	t3,a4,t3
    8000360c:	01859313          	slli	t1,a1,0x18
    80003610:	006e6333          	or	t1,t3,t1
    80003614:	02059893          	slli	a7,a1,0x20
    80003618:	40f60e3b          	subw	t3,a2,a5
    8000361c:	011368b3          	or	a7,t1,a7
    80003620:	02859813          	slli	a6,a1,0x28
    80003624:	0108e833          	or	a6,a7,a6
    80003628:	03059693          	slli	a3,a1,0x30
    8000362c:	003e589b          	srliw	a7,t3,0x3
    80003630:	00d866b3          	or	a3,a6,a3
    80003634:	03859713          	slli	a4,a1,0x38
    80003638:	00389813          	slli	a6,a7,0x3
    8000363c:	00f507b3          	add	a5,a0,a5
    80003640:	00e6e733          	or	a4,a3,a4
    80003644:	000e089b          	sext.w	a7,t3
    80003648:	00f806b3          	add	a3,a6,a5
    8000364c:	00e7b023          	sd	a4,0(a5)
    80003650:	00878793          	addi	a5,a5,8
    80003654:	fed79ce3          	bne	a5,a3,8000364c <__memset+0xd4>
    80003658:	ff8e7793          	andi	a5,t3,-8
    8000365c:	0007871b          	sext.w	a4,a5
    80003660:	01d787bb          	addw	a5,a5,t4
    80003664:	0ce88e63          	beq	a7,a4,80003740 <__memset+0x1c8>
    80003668:	00f50733          	add	a4,a0,a5
    8000366c:	00b70023          	sb	a1,0(a4)
    80003670:	0017871b          	addiw	a4,a5,1
    80003674:	0cc77663          	bgeu	a4,a2,80003740 <__memset+0x1c8>
    80003678:	00e50733          	add	a4,a0,a4
    8000367c:	00b70023          	sb	a1,0(a4)
    80003680:	0027871b          	addiw	a4,a5,2
    80003684:	0ac77e63          	bgeu	a4,a2,80003740 <__memset+0x1c8>
    80003688:	00e50733          	add	a4,a0,a4
    8000368c:	00b70023          	sb	a1,0(a4)
    80003690:	0037871b          	addiw	a4,a5,3
    80003694:	0ac77663          	bgeu	a4,a2,80003740 <__memset+0x1c8>
    80003698:	00e50733          	add	a4,a0,a4
    8000369c:	00b70023          	sb	a1,0(a4)
    800036a0:	0047871b          	addiw	a4,a5,4
    800036a4:	08c77e63          	bgeu	a4,a2,80003740 <__memset+0x1c8>
    800036a8:	00e50733          	add	a4,a0,a4
    800036ac:	00b70023          	sb	a1,0(a4)
    800036b0:	0057871b          	addiw	a4,a5,5
    800036b4:	08c77663          	bgeu	a4,a2,80003740 <__memset+0x1c8>
    800036b8:	00e50733          	add	a4,a0,a4
    800036bc:	00b70023          	sb	a1,0(a4)
    800036c0:	0067871b          	addiw	a4,a5,6
    800036c4:	06c77e63          	bgeu	a4,a2,80003740 <__memset+0x1c8>
    800036c8:	00e50733          	add	a4,a0,a4
    800036cc:	00b70023          	sb	a1,0(a4)
    800036d0:	0077871b          	addiw	a4,a5,7
    800036d4:	06c77663          	bgeu	a4,a2,80003740 <__memset+0x1c8>
    800036d8:	00e50733          	add	a4,a0,a4
    800036dc:	00b70023          	sb	a1,0(a4)
    800036e0:	0087871b          	addiw	a4,a5,8
    800036e4:	04c77e63          	bgeu	a4,a2,80003740 <__memset+0x1c8>
    800036e8:	00e50733          	add	a4,a0,a4
    800036ec:	00b70023          	sb	a1,0(a4)
    800036f0:	0097871b          	addiw	a4,a5,9
    800036f4:	04c77663          	bgeu	a4,a2,80003740 <__memset+0x1c8>
    800036f8:	00e50733          	add	a4,a0,a4
    800036fc:	00b70023          	sb	a1,0(a4)
    80003700:	00a7871b          	addiw	a4,a5,10
    80003704:	02c77e63          	bgeu	a4,a2,80003740 <__memset+0x1c8>
    80003708:	00e50733          	add	a4,a0,a4
    8000370c:	00b70023          	sb	a1,0(a4)
    80003710:	00b7871b          	addiw	a4,a5,11
    80003714:	02c77663          	bgeu	a4,a2,80003740 <__memset+0x1c8>
    80003718:	00e50733          	add	a4,a0,a4
    8000371c:	00b70023          	sb	a1,0(a4)
    80003720:	00c7871b          	addiw	a4,a5,12
    80003724:	00c77e63          	bgeu	a4,a2,80003740 <__memset+0x1c8>
    80003728:	00e50733          	add	a4,a0,a4
    8000372c:	00b70023          	sb	a1,0(a4)
    80003730:	00d7879b          	addiw	a5,a5,13
    80003734:	00c7f663          	bgeu	a5,a2,80003740 <__memset+0x1c8>
    80003738:	00f507b3          	add	a5,a0,a5
    8000373c:	00b78023          	sb	a1,0(a5)
    80003740:	00813403          	ld	s0,8(sp)
    80003744:	01010113          	addi	sp,sp,16
    80003748:	00008067          	ret
    8000374c:	00b00693          	li	a3,11
    80003750:	e55ff06f          	j	800035a4 <__memset+0x2c>
    80003754:	00300e93          	li	t4,3
    80003758:	ea5ff06f          	j	800035fc <__memset+0x84>
    8000375c:	00100e93          	li	t4,1
    80003760:	e9dff06f          	j	800035fc <__memset+0x84>
    80003764:	00000e93          	li	t4,0
    80003768:	e95ff06f          	j	800035fc <__memset+0x84>
    8000376c:	00000793          	li	a5,0
    80003770:	ef9ff06f          	j	80003668 <__memset+0xf0>
    80003774:	00200e93          	li	t4,2
    80003778:	e85ff06f          	j	800035fc <__memset+0x84>
    8000377c:	00400e93          	li	t4,4
    80003780:	e7dff06f          	j	800035fc <__memset+0x84>
    80003784:	00500e93          	li	t4,5
    80003788:	e75ff06f          	j	800035fc <__memset+0x84>
    8000378c:	00600e93          	li	t4,6
    80003790:	e6dff06f          	j	800035fc <__memset+0x84>

0000000080003794 <__memmove>:
    80003794:	ff010113          	addi	sp,sp,-16
    80003798:	00813423          	sd	s0,8(sp)
    8000379c:	01010413          	addi	s0,sp,16
    800037a0:	0e060863          	beqz	a2,80003890 <__memmove+0xfc>
    800037a4:	fff6069b          	addiw	a3,a2,-1
    800037a8:	0006881b          	sext.w	a6,a3
    800037ac:	0ea5e863          	bltu	a1,a0,8000389c <__memmove+0x108>
    800037b0:	00758713          	addi	a4,a1,7
    800037b4:	00a5e7b3          	or	a5,a1,a0
    800037b8:	40a70733          	sub	a4,a4,a0
    800037bc:	0077f793          	andi	a5,a5,7
    800037c0:	00f73713          	sltiu	a4,a4,15
    800037c4:	00174713          	xori	a4,a4,1
    800037c8:	0017b793          	seqz	a5,a5
    800037cc:	00e7f7b3          	and	a5,a5,a4
    800037d0:	10078863          	beqz	a5,800038e0 <__memmove+0x14c>
    800037d4:	00900793          	li	a5,9
    800037d8:	1107f463          	bgeu	a5,a6,800038e0 <__memmove+0x14c>
    800037dc:	0036581b          	srliw	a6,a2,0x3
    800037e0:	fff8081b          	addiw	a6,a6,-1
    800037e4:	02081813          	slli	a6,a6,0x20
    800037e8:	01d85893          	srli	a7,a6,0x1d
    800037ec:	00858813          	addi	a6,a1,8
    800037f0:	00058793          	mv	a5,a1
    800037f4:	00050713          	mv	a4,a0
    800037f8:	01088833          	add	a6,a7,a6
    800037fc:	0007b883          	ld	a7,0(a5)
    80003800:	00878793          	addi	a5,a5,8
    80003804:	00870713          	addi	a4,a4,8
    80003808:	ff173c23          	sd	a7,-8(a4)
    8000380c:	ff0798e3          	bne	a5,a6,800037fc <__memmove+0x68>
    80003810:	ff867713          	andi	a4,a2,-8
    80003814:	02071793          	slli	a5,a4,0x20
    80003818:	0207d793          	srli	a5,a5,0x20
    8000381c:	00f585b3          	add	a1,a1,a5
    80003820:	40e686bb          	subw	a3,a3,a4
    80003824:	00f507b3          	add	a5,a0,a5
    80003828:	06e60463          	beq	a2,a4,80003890 <__memmove+0xfc>
    8000382c:	0005c703          	lbu	a4,0(a1)
    80003830:	00e78023          	sb	a4,0(a5)
    80003834:	04068e63          	beqz	a3,80003890 <__memmove+0xfc>
    80003838:	0015c603          	lbu	a2,1(a1)
    8000383c:	00100713          	li	a4,1
    80003840:	00c780a3          	sb	a2,1(a5)
    80003844:	04e68663          	beq	a3,a4,80003890 <__memmove+0xfc>
    80003848:	0025c603          	lbu	a2,2(a1)
    8000384c:	00200713          	li	a4,2
    80003850:	00c78123          	sb	a2,2(a5)
    80003854:	02e68e63          	beq	a3,a4,80003890 <__memmove+0xfc>
    80003858:	0035c603          	lbu	a2,3(a1)
    8000385c:	00300713          	li	a4,3
    80003860:	00c781a3          	sb	a2,3(a5)
    80003864:	02e68663          	beq	a3,a4,80003890 <__memmove+0xfc>
    80003868:	0045c603          	lbu	a2,4(a1)
    8000386c:	00400713          	li	a4,4
    80003870:	00c78223          	sb	a2,4(a5)
    80003874:	00e68e63          	beq	a3,a4,80003890 <__memmove+0xfc>
    80003878:	0055c603          	lbu	a2,5(a1)
    8000387c:	00500713          	li	a4,5
    80003880:	00c782a3          	sb	a2,5(a5)
    80003884:	00e68663          	beq	a3,a4,80003890 <__memmove+0xfc>
    80003888:	0065c703          	lbu	a4,6(a1)
    8000388c:	00e78323          	sb	a4,6(a5)
    80003890:	00813403          	ld	s0,8(sp)
    80003894:	01010113          	addi	sp,sp,16
    80003898:	00008067          	ret
    8000389c:	02061713          	slli	a4,a2,0x20
    800038a0:	02075713          	srli	a4,a4,0x20
    800038a4:	00e587b3          	add	a5,a1,a4
    800038a8:	f0f574e3          	bgeu	a0,a5,800037b0 <__memmove+0x1c>
    800038ac:	02069613          	slli	a2,a3,0x20
    800038b0:	02065613          	srli	a2,a2,0x20
    800038b4:	fff64613          	not	a2,a2
    800038b8:	00e50733          	add	a4,a0,a4
    800038bc:	00c78633          	add	a2,a5,a2
    800038c0:	fff7c683          	lbu	a3,-1(a5)
    800038c4:	fff78793          	addi	a5,a5,-1
    800038c8:	fff70713          	addi	a4,a4,-1
    800038cc:	00d70023          	sb	a3,0(a4)
    800038d0:	fec798e3          	bne	a5,a2,800038c0 <__memmove+0x12c>
    800038d4:	00813403          	ld	s0,8(sp)
    800038d8:	01010113          	addi	sp,sp,16
    800038dc:	00008067          	ret
    800038e0:	02069713          	slli	a4,a3,0x20
    800038e4:	02075713          	srli	a4,a4,0x20
    800038e8:	00170713          	addi	a4,a4,1
    800038ec:	00e50733          	add	a4,a0,a4
    800038f0:	00050793          	mv	a5,a0
    800038f4:	0005c683          	lbu	a3,0(a1)
    800038f8:	00178793          	addi	a5,a5,1
    800038fc:	00158593          	addi	a1,a1,1
    80003900:	fed78fa3          	sb	a3,-1(a5)
    80003904:	fee798e3          	bne	a5,a4,800038f4 <__memmove+0x160>
    80003908:	f89ff06f          	j	80003890 <__memmove+0xfc>

000000008000390c <__putc>:
    8000390c:	fe010113          	addi	sp,sp,-32
    80003910:	00813823          	sd	s0,16(sp)
    80003914:	00113c23          	sd	ra,24(sp)
    80003918:	02010413          	addi	s0,sp,32
    8000391c:	00050793          	mv	a5,a0
    80003920:	fef40593          	addi	a1,s0,-17
    80003924:	00100613          	li	a2,1
    80003928:	00000513          	li	a0,0
    8000392c:	fef407a3          	sb	a5,-17(s0)
    80003930:	fffff097          	auipc	ra,0xfffff
    80003934:	b3c080e7          	jalr	-1220(ra) # 8000246c <console_write>
    80003938:	01813083          	ld	ra,24(sp)
    8000393c:	01013403          	ld	s0,16(sp)
    80003940:	02010113          	addi	sp,sp,32
    80003944:	00008067          	ret

0000000080003948 <__getc>:
    80003948:	fe010113          	addi	sp,sp,-32
    8000394c:	00813823          	sd	s0,16(sp)
    80003950:	00113c23          	sd	ra,24(sp)
    80003954:	02010413          	addi	s0,sp,32
    80003958:	fe840593          	addi	a1,s0,-24
    8000395c:	00100613          	li	a2,1
    80003960:	00000513          	li	a0,0
    80003964:	fffff097          	auipc	ra,0xfffff
    80003968:	ae8080e7          	jalr	-1304(ra) # 8000244c <console_read>
    8000396c:	fe844503          	lbu	a0,-24(s0)
    80003970:	01813083          	ld	ra,24(sp)
    80003974:	01013403          	ld	s0,16(sp)
    80003978:	02010113          	addi	sp,sp,32
    8000397c:	00008067          	ret

0000000080003980 <console_handler>:
    80003980:	fe010113          	addi	sp,sp,-32
    80003984:	00813823          	sd	s0,16(sp)
    80003988:	00113c23          	sd	ra,24(sp)
    8000398c:	00913423          	sd	s1,8(sp)
    80003990:	02010413          	addi	s0,sp,32
    80003994:	14202773          	csrr	a4,scause
    80003998:	100027f3          	csrr	a5,sstatus
    8000399c:	0027f793          	andi	a5,a5,2
    800039a0:	06079e63          	bnez	a5,80003a1c <console_handler+0x9c>
    800039a4:	00074c63          	bltz	a4,800039bc <console_handler+0x3c>
    800039a8:	01813083          	ld	ra,24(sp)
    800039ac:	01013403          	ld	s0,16(sp)
    800039b0:	00813483          	ld	s1,8(sp)
    800039b4:	02010113          	addi	sp,sp,32
    800039b8:	00008067          	ret
    800039bc:	0ff77713          	andi	a4,a4,255
    800039c0:	00900793          	li	a5,9
    800039c4:	fef712e3          	bne	a4,a5,800039a8 <console_handler+0x28>
    800039c8:	ffffe097          	auipc	ra,0xffffe
    800039cc:	6dc080e7          	jalr	1756(ra) # 800020a4 <plic_claim>
    800039d0:	00a00793          	li	a5,10
    800039d4:	00050493          	mv	s1,a0
    800039d8:	02f50c63          	beq	a0,a5,80003a10 <console_handler+0x90>
    800039dc:	fc0506e3          	beqz	a0,800039a8 <console_handler+0x28>
    800039e0:	00050593          	mv	a1,a0
    800039e4:	00000517          	auipc	a0,0x0
    800039e8:	70c50513          	addi	a0,a0,1804 # 800040f0 <CONSOLE_STATUS+0xe0>
    800039ec:	fffff097          	auipc	ra,0xfffff
    800039f0:	afc080e7          	jalr	-1284(ra) # 800024e8 <__printf>
    800039f4:	01013403          	ld	s0,16(sp)
    800039f8:	01813083          	ld	ra,24(sp)
    800039fc:	00048513          	mv	a0,s1
    80003a00:	00813483          	ld	s1,8(sp)
    80003a04:	02010113          	addi	sp,sp,32
    80003a08:	ffffe317          	auipc	t1,0xffffe
    80003a0c:	6d430067          	jr	1748(t1) # 800020dc <plic_complete>
    80003a10:	fffff097          	auipc	ra,0xfffff
    80003a14:	3e0080e7          	jalr	992(ra) # 80002df0 <uartintr>
    80003a18:	fddff06f          	j	800039f4 <console_handler+0x74>
    80003a1c:	00000517          	auipc	a0,0x0
    80003a20:	7d450513          	addi	a0,a0,2004 # 800041f0 <digits+0x78>
    80003a24:	fffff097          	auipc	ra,0xfffff
    80003a28:	a68080e7          	jalr	-1432(ra) # 8000248c <panic>
	...
