
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00004117          	auipc	sp,0x4
    80000004:	42013103          	ld	sp,1056(sp) # 80004420 <_GLOBAL_OFFSET_TABLE_+0x10>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	744010ef          	jal	ra,80001760 <start>

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
    80001084:	30c000ef          	jal	ra,80001390 <SupervisorTrapHandlerWrapper>
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

0000000080001120 <_Z13AllocatorTestv>:
// }


//extern "C" void SupervisorTrap();

void AllocatorTest() {
    80001120:	fd010113          	addi	sp,sp,-48
    80001124:	02113423          	sd	ra,40(sp)
    80001128:	02813023          	sd	s0,32(sp)
    8000112c:	00913c23          	sd	s1,24(sp)
    80001130:	01213823          	sd	s2,16(sp)
    80001134:	01313423          	sd	s3,8(sp)
    80001138:	03010413          	addi	s0,sp,48
    uint64* a1=(uint64*)MemoryAllocator::Instance()->mem_alloc(sizeof(uint64));
    8000113c:	00000097          	auipc	ra,0x0
    80001140:	2d8080e7          	jalr	728(ra) # 80001414 <_ZN15MemoryAllocator8InstanceEv>
    80001144:	00800593          	li	a1,8
    80001148:	00000097          	auipc	ra,0x0
    8000114c:	328080e7          	jalr	808(ra) # 80001470 <_ZN15MemoryAllocator9mem_allocEm>
    80001150:	00050993          	mv	s3,a0
    *a1=4;
    80001154:	00400793          	li	a5,4
    80001158:	00f53023          	sd	a5,0(a0) # 1000 <_entry-0x7ffff000>
    __putc(*a1+'0');
    8000115c:	03400513          	li	a0,52
    80001160:	00002097          	auipc	ra,0x2
    80001164:	6bc080e7          	jalr	1724(ra) # 8000381c <__putc>
    __putc('\n');
    80001168:	00a00513          	li	a0,10
    8000116c:	00002097          	auipc	ra,0x2
    80001170:	6b0080e7          	jalr	1712(ra) # 8000381c <__putc>
    uint64* a2=(uint64*)MemoryAllocator::Instance()->mem_alloc(sizeof(uint64));
    80001174:	00000097          	auipc	ra,0x0
    80001178:	2a0080e7          	jalr	672(ra) # 80001414 <_ZN15MemoryAllocator8InstanceEv>
    8000117c:	00800593          	li	a1,8
    80001180:	00000097          	auipc	ra,0x0
    80001184:	2f0080e7          	jalr	752(ra) # 80001470 <_ZN15MemoryAllocator9mem_allocEm>
    *a2=5;
    80001188:	00500793          	li	a5,5
    8000118c:	00f53023          	sd	a5,0(a0)
    __putc(*a2+'0');
    80001190:	03500513          	li	a0,53
    80001194:	00002097          	auipc	ra,0x2
    80001198:	688080e7          	jalr	1672(ra) # 8000381c <__putc>
    __putc('\n');
    8000119c:	00a00513          	li	a0,10
    800011a0:	00002097          	auipc	ra,0x2
    800011a4:	67c080e7          	jalr	1660(ra) # 8000381c <__putc>
    uint64* a3=(uint64*)MemoryAllocator::Instance()->mem_alloc(sizeof(uint64));
    800011a8:	00000097          	auipc	ra,0x0
    800011ac:	26c080e7          	jalr	620(ra) # 80001414 <_ZN15MemoryAllocator8InstanceEv>
    800011b0:	00800593          	li	a1,8
    800011b4:	00000097          	auipc	ra,0x0
    800011b8:	2bc080e7          	jalr	700(ra) # 80001470 <_ZN15MemoryAllocator9mem_allocEm>
    800011bc:	00050913          	mv	s2,a0
    *a3=6;
    800011c0:	00600793          	li	a5,6
    800011c4:	00f53023          	sd	a5,0(a0)
    __putc(*a3+'0');
    800011c8:	03600513          	li	a0,54
    800011cc:	00002097          	auipc	ra,0x2
    800011d0:	650080e7          	jalr	1616(ra) # 8000381c <__putc>
    __putc('\n');
    800011d4:	00a00513          	li	a0,10
    800011d8:	00002097          	auipc	ra,0x2
    800011dc:	644080e7          	jalr	1604(ra) # 8000381c <__putc>
    uint64* a4=(uint64*)MemoryAllocator::Instance()->mem_alloc(sizeof(uint64));
    800011e0:	00000097          	auipc	ra,0x0
    800011e4:	234080e7          	jalr	564(ra) # 80001414 <_ZN15MemoryAllocator8InstanceEv>
    800011e8:	00800593          	li	a1,8
    800011ec:	00000097          	auipc	ra,0x0
    800011f0:	284080e7          	jalr	644(ra) # 80001470 <_ZN15MemoryAllocator9mem_allocEm>
    800011f4:	00050493          	mv	s1,a0
    *a4=7;
    800011f8:	00700793          	li	a5,7
    800011fc:	00f53023          	sd	a5,0(a0)
    __putc(*a4+'0');
    80001200:	03700513          	li	a0,55
    80001204:	00002097          	auipc	ra,0x2
    80001208:	618080e7          	jalr	1560(ra) # 8000381c <__putc>
    __putc('\n');
    8000120c:	00a00513          	li	a0,10
    80001210:	00002097          	auipc	ra,0x2
    80001214:	60c080e7          	jalr	1548(ra) # 8000381c <__putc>
    uint64* a5=(uint64*)MemoryAllocator::Instance()->mem_alloc(sizeof(uint64));
    80001218:	00000097          	auipc	ra,0x0
    8000121c:	1fc080e7          	jalr	508(ra) # 80001414 <_ZN15MemoryAllocator8InstanceEv>
    80001220:	00800593          	li	a1,8
    80001224:	00000097          	auipc	ra,0x0
    80001228:	24c080e7          	jalr	588(ra) # 80001470 <_ZN15MemoryAllocator9mem_allocEm>
    *a5=8;
    8000122c:	00800793          	li	a5,8
    80001230:	00f53023          	sd	a5,0(a0)
    __putc(*a5+'0');
    80001234:	03800513          	li	a0,56
    80001238:	00002097          	auipc	ra,0x2
    8000123c:	5e4080e7          	jalr	1508(ra) # 8000381c <__putc>
    __putc('\n');
    80001240:	00a00513          	li	a0,10
    80001244:	00002097          	auipc	ra,0x2
    80001248:	5d8080e7          	jalr	1496(ra) # 8000381c <__putc>
    MemoryAllocator::Instance()->mem_free(a1);
    8000124c:	00000097          	auipc	ra,0x0
    80001250:	1c8080e7          	jalr	456(ra) # 80001414 <_ZN15MemoryAllocator8InstanceEv>
    80001254:	00098593          	mv	a1,s3
    80001258:	00000097          	auipc	ra,0x0
    8000125c:	400080e7          	jalr	1024(ra) # 80001658 <_ZN15MemoryAllocator8mem_freeEPv>
    MemoryAllocator::Instance()->mem_free(a3);
    80001260:	00000097          	auipc	ra,0x0
    80001264:	1b4080e7          	jalr	436(ra) # 80001414 <_ZN15MemoryAllocator8InstanceEv>
    80001268:	00090593          	mv	a1,s2
    8000126c:	00000097          	auipc	ra,0x0
    80001270:	3ec080e7          	jalr	1004(ra) # 80001658 <_ZN15MemoryAllocator8mem_freeEPv>
    MemoryAllocator::Instance()->mem_free(a4);
    80001274:	00000097          	auipc	ra,0x0
    80001278:	1a0080e7          	jalr	416(ra) # 80001414 <_ZN15MemoryAllocator8InstanceEv>
    8000127c:	00048593          	mv	a1,s1
    80001280:	00000097          	auipc	ra,0x0
    80001284:	3d8080e7          	jalr	984(ra) # 80001658 <_ZN15MemoryAllocator8mem_freeEPv>
    uint64* a6=(uint64*)MemoryAllocator::Instance()->mem_alloc(sizeof(uint64)*9);
    80001288:	00000097          	auipc	ra,0x0
    8000128c:	18c080e7          	jalr	396(ra) # 80001414 <_ZN15MemoryAllocator8InstanceEv>
    80001290:	04800593          	li	a1,72
    80001294:	00000097          	auipc	ra,0x0
    80001298:	1dc080e7          	jalr	476(ra) # 80001470 <_ZN15MemoryAllocator9mem_allocEm>
    *a6=9;
    8000129c:	00900793          	li	a5,9
    800012a0:	00f53023          	sd	a5,0(a0)
    __putc(*a6+'0');
    800012a4:	03900513          	li	a0,57
    800012a8:	00002097          	auipc	ra,0x2
    800012ac:	574080e7          	jalr	1396(ra) # 8000381c <__putc>
    __putc('\n');
    800012b0:	00a00513          	li	a0,10
    800012b4:	00002097          	auipc	ra,0x2
    800012b8:	568080e7          	jalr	1384(ra) # 8000381c <__putc>

}
    800012bc:	02813083          	ld	ra,40(sp)
    800012c0:	02013403          	ld	s0,32(sp)
    800012c4:	01813483          	ld	s1,24(sp)
    800012c8:	01013903          	ld	s2,16(sp)
    800012cc:	00813983          	ld	s3,8(sp)
    800012d0:	03010113          	addi	sp,sp,48
    800012d4:	00008067          	ret

00000000800012d8 <main>:

extern "C" void SupervisorTrap();

void main() {
    800012d8:	ff010113          	addi	sp,sp,-16
    800012dc:	00113423          	sd	ra,8(sp)
    800012e0:	00813023          	sd	s0,0(sp)
    800012e4:	01010413          	addi	s0,sp,16
    Riscv::set_stvec((uint64)SupervisorTrap);
    800012e8:	00003797          	auipc	a5,0x3
    800012ec:	1407b783          	ld	a5,320(a5) # 80004428 <_GLOBAL_OFFSET_TABLE_+0x18>
    static void SupervisorTrapHandler();
};


inline void Riscv::set_stvec(uint64 stvec) {
    __asm__ volatile ("csrw stvec, %[x]" :: [x] "r" (stvec));
    800012f0:	10579073          	csrw	stvec,a5
    __asm__ volatile ("ecall");
    800012f4:	00000073          	ecall
    __putc('O');
    800012f8:	04f00513          	li	a0,79
    800012fc:	00002097          	auipc	ra,0x2
    80001300:	520080e7          	jalr	1312(ra) # 8000381c <__putc>
    __putc('K');
    80001304:	04b00513          	li	a0,75
    80001308:	00002097          	auipc	ra,0x2
    8000130c:	514080e7          	jalr	1300(ra) # 8000381c <__putc>
    __putc('\n');
    80001310:	00a00513          	li	a0,10
    80001314:	00002097          	auipc	ra,0x2
    80001318:	508080e7          	jalr	1288(ra) # 8000381c <__putc>
}
    8000131c:	00813083          	ld	ra,8(sp)
    80001320:	00013403          	ld	s0,0(sp)
    80001324:	01010113          	addi	sp,sp,16
    80001328:	00008067          	ret

000000008000132c <_ZN5Riscv21SupervisorTrapHandlerEv>:
extern  "C" void SupervisorTrapHandlerWrapper() {
    Riscv::SupervisorTrapHandler();
}


void Riscv::SupervisorTrapHandler() {
    8000132c:	fe010113          	addi	sp,sp,-32
    80001330:	00113c23          	sd	ra,24(sp)
    80001334:	00813823          	sd	s0,16(sp)
    80001338:	00913423          	sd	s1,8(sp)
    8000133c:	01213023          	sd	s2,0(sp)
    80001340:	02010413          	addi	s0,sp,32
    __asm__ volatile ("csrw sepc, %[x]" :: [x] "r" (sepc));
}

inline uint64 Riscv::get_sepc() {
    uint64 sepc;
    __asm__ volatile ("csrr %[x],sepc" : [x] "=r" (sepc));
    80001344:	14102973          	csrr	s2,sepc
    __asm__ volatile ("csrw sstatus, %[x]" :: [x] "r" (sstatus));
}

inline uint64 Riscv::get_sstatus() {
    uint64 sstatus;
    __asm__ volatile ("csrr %[x],sstatus" : [x] "=r" (sstatus));
    80001348:	100024f3          	csrr	s1,sstatus
    uint64 sepc;
    uint sstatus;
    sepc=get_sepc();
    sstatus=get_sstatus();
    __putc('E');
    8000134c:	04500513          	li	a0,69
    80001350:	00002097          	auipc	ra,0x2
    80001354:	4cc080e7          	jalr	1228(ra) # 8000381c <__putc>
    __putc('\n');
    80001358:	00a00513          	li	a0,10
    8000135c:	00002097          	auipc	ra,0x2
    80001360:	4c0080e7          	jalr	1216(ra) # 8000381c <__putc>
    set_sepc(sepc+4);
    80001364:	00490913          	addi	s2,s2,4
    __asm__ volatile ("csrw sepc, %[x]" :: [x] "r" (sepc));
    80001368:	14191073          	csrw	sepc,s2
    __asm__ volatile ("csrw sstatus, %[x]" :: [x] "r" (sstatus));
    8000136c:	02049493          	slli	s1,s1,0x20
    80001370:	0204d493          	srli	s1,s1,0x20
    80001374:	10049073          	csrw	sstatus,s1
    set_sstatus(sstatus);
    80001378:	01813083          	ld	ra,24(sp)
    8000137c:	01013403          	ld	s0,16(sp)
    80001380:	00813483          	ld	s1,8(sp)
    80001384:	00013903          	ld	s2,0(sp)
    80001388:	02010113          	addi	sp,sp,32
    8000138c:	00008067          	ret

0000000080001390 <SupervisorTrapHandlerWrapper>:
extern  "C" void SupervisorTrapHandlerWrapper() {
    80001390:	ff010113          	addi	sp,sp,-16
    80001394:	00113423          	sd	ra,8(sp)
    80001398:	00813023          	sd	s0,0(sp)
    8000139c:	01010413          	addi	s0,sp,16
    Riscv::SupervisorTrapHandler();
    800013a0:	00000097          	auipc	ra,0x0
    800013a4:	f8c080e7          	jalr	-116(ra) # 8000132c <_ZN5Riscv21SupervisorTrapHandlerEv>
}
    800013a8:	00813083          	ld	ra,8(sp)
    800013ac:	00013403          	ld	s0,0(sp)
    800013b0:	01010113          	addi	sp,sp,16
    800013b4:	00008067          	ret

00000000800013b8 <_ZN15MemoryAllocatorC1Ev>:

#include "../h/MemoryAllocator.hpp"
#include "../lib/console.h"


MemoryAllocator::MemoryAllocator() {
    800013b8:	ff010113          	addi	sp,sp,-16
    800013bc:	00813423          	sd	s0,8(sp)
    800013c0:	01010413          	addi	s0,sp,16
    this->head = (MemoryHeader*)HEAP_START_ADDR;
    800013c4:	00003797          	auipc	a5,0x3
    800013c8:	0547b783          	ld	a5,84(a5) # 80004418 <_GLOBAL_OFFSET_TABLE_+0x8>
    800013cc:	0007b703          	ld	a4,0(a5)
    800013d0:	00e53023          	sd	a4,0(a0)
    // this->tail = (MemoryHeader*)HEAP_START_ADDR;
    // this->tail->next=nullptr;
    // this->tail->prev=nullptr;
    this->head->next=nullptr;
    800013d4:	00073423          	sd	zero,8(a4)
    this->head->prev=nullptr;
    800013d8:	00053783          	ld	a5,0(a0)
    800013dc:	0007b823          	sd	zero,16(a5)
    this->head->size = (size_t)((char*)HEAP_END_ADDR - (char*)HEAP_START_ADDR - sizeof(MemoryHeader));
    800013e0:	00003797          	auipc	a5,0x3
    800013e4:	0507b783          	ld	a5,80(a5) # 80004430 <_GLOBAL_OFFSET_TABLE_+0x20>
    800013e8:	0007b783          	ld	a5,0(a5)
    800013ec:	40e787b3          	sub	a5,a5,a4
    800013f0:	00053703          	ld	a4,0(a0)
    800013f4:	fe878793          	addi	a5,a5,-24
    800013f8:	00f73023          	sd	a5,0(a4)
    this->freeMemSize=this->head->size;
    800013fc:	00053783          	ld	a5,0(a0)
    80001400:	0007b783          	ld	a5,0(a5)
    80001404:	00f53423          	sd	a5,8(a0)
}
    80001408:	00813403          	ld	s0,8(sp)
    8000140c:	01010113          	addi	sp,sp,16
    80001410:	00008067          	ret

0000000080001414 <_ZN15MemoryAllocator8InstanceEv>:




MemoryAllocator* MemoryAllocator::Instance() {
    static MemoryAllocator instance;
    80001414:	00003797          	auipc	a5,0x3
    80001418:	06c7c783          	lbu	a5,108(a5) # 80004480 <_ZGVZN15MemoryAllocator8InstanceEvE8instance>
    8000141c:	00078863          	beqz	a5,8000142c <_ZN15MemoryAllocator8InstanceEv+0x18>
    return &instance;
}
    80001420:	00003517          	auipc	a0,0x3
    80001424:	06850513          	addi	a0,a0,104 # 80004488 <_ZZN15MemoryAllocator8InstanceEvE8instance>
    80001428:	00008067          	ret
MemoryAllocator* MemoryAllocator::Instance() {
    8000142c:	ff010113          	addi	sp,sp,-16
    80001430:	00113423          	sd	ra,8(sp)
    80001434:	00813023          	sd	s0,0(sp)
    80001438:	01010413          	addi	s0,sp,16
    static MemoryAllocator instance;
    8000143c:	00003517          	auipc	a0,0x3
    80001440:	04c50513          	addi	a0,a0,76 # 80004488 <_ZZN15MemoryAllocator8InstanceEvE8instance>
    80001444:	00000097          	auipc	ra,0x0
    80001448:	f74080e7          	jalr	-140(ra) # 800013b8 <_ZN15MemoryAllocatorC1Ev>
    8000144c:	00100793          	li	a5,1
    80001450:	00003717          	auipc	a4,0x3
    80001454:	02f70823          	sb	a5,48(a4) # 80004480 <_ZGVZN15MemoryAllocator8InstanceEvE8instance>
}
    80001458:	00003517          	auipc	a0,0x3
    8000145c:	03050513          	addi	a0,a0,48 # 80004488 <_ZZN15MemoryAllocator8InstanceEvE8instance>
    80001460:	00813083          	ld	ra,8(sp)
    80001464:	00013403          	ld	s0,0(sp)
    80001468:	01010113          	addi	sp,sp,16
    8000146c:	00008067          	ret

0000000080001470 <_ZN15MemoryAllocator9mem_allocEm>:


void* MemoryAllocator::mem_alloc(size_t size) {
    80001470:	00050613          	mv	a2,a0
    if (this->head==nullptr)
    80001474:	00053503          	ld	a0,0(a0)
    80001478:	12050c63          	beqz	a0,800015b0 <_ZN15MemoryAllocator9mem_allocEm+0x140>
        return nullptr;
    if (size==0) {
    8000147c:	12058263          	beqz	a1,800015a0 <_ZN15MemoryAllocator9mem_allocEm+0x130>
void* MemoryAllocator::mem_alloc(size_t size) {
    80001480:	fe010113          	addi	sp,sp,-32
    80001484:	00113c23          	sd	ra,24(sp)
    80001488:	00813823          	sd	s0,16(sp)
    8000148c:	00913423          	sd	s1,8(sp)
    80001490:	02010413          	addi	s0,sp,32
        return nullptr;
    }
    uint64 offset = size % MEM_BLOCK_SIZE;
    80001494:	03f5f793          	andi	a5,a1,63
    if (offset!=0)
    80001498:	00078463          	beqz	a5,800014a0 <_ZN15MemoryAllocator9mem_allocEm+0x30>
        offset=1;
    8000149c:	00100793          	li	a5,1

    size_t actulalSize = (size  / MEM_BLOCK_SIZE+offset ) * MEM_BLOCK_SIZE;
    800014a0:	0065d713          	srli	a4,a1,0x6
    800014a4:	00f70733          	add	a4,a4,a5
    800014a8:	00671713          	slli	a4,a4,0x6


    MemoryHeader* curr= this->head;
    800014ac:	00050793          	mv	a5,a0
    while (curr->next!=nullptr && curr->size < actulalSize) {
    800014b0:	00078493          	mv	s1,a5
    800014b4:	0087b783          	ld	a5,8(a5)
    800014b8:	00078663          	beqz	a5,800014c4 <_ZN15MemoryAllocator9mem_allocEm+0x54>
    800014bc:	0004b683          	ld	a3,0(s1)
    800014c0:	fee6e8e3          	bltu	a3,a4,800014b0 <_ZN15MemoryAllocator9mem_allocEm+0x40>
        curr=curr->next;
    }
    if (curr->size < actulalSize) {
    800014c4:	0004b683          	ld	a3,0(s1)
    800014c8:	0ee6e063          	bltu	a3,a4,800015a8 <_ZN15MemoryAllocator9mem_allocEm+0x138>
        return nullptr;
    }



    if (curr->size - actulalSize >= MEM_BLOCK_SIZE+sizeof(MemoryHeader)) {
    800014cc:	40e686b3          	sub	a3,a3,a4
    800014d0:	05700593          	li	a1,87
    800014d4:	08d5f863          	bgeu	a1,a3,80001564 <_ZN15MemoryAllocator9mem_allocEm+0xf4>


        MemoryHeader* new_seg=(MemoryHeader*)((char*)curr + sizeof(MemoryHeader) + actulalSize);
    800014d8:	01870793          	addi	a5,a4,24
    800014dc:	00f487b3          	add	a5,s1,a5
        new_seg->size = curr->size - actulalSize - sizeof(MemoryHeader);
    800014e0:	fe868693          	addi	a3,a3,-24
    800014e4:	00d7b023          	sd	a3,0(a5)
        new_seg->next=curr->next;
    800014e8:	0084b683          	ld	a3,8(s1)
    800014ec:	00d7b423          	sd	a3,8(a5)
        new_seg->prev=curr->prev;
    800014f0:	0104b683          	ld	a3,16(s1)
    800014f4:	00d7b823          	sd	a3,16(a5)
        if (curr==this->head) {
    800014f8:	00063683          	ld	a3,0(a2)
    800014fc:	06968063          	beq	a3,s1,8000155c <_ZN15MemoryAllocator9mem_allocEm+0xec>
            this->head=new_seg;
        }
        // if (curr==this->tail) {
        //     this->tail=new_seg;
        // }
        if (curr->prev)
    80001500:	0104b683          	ld	a3,16(s1)
    80001504:	00068463          	beqz	a3,8000150c <_ZN15MemoryAllocator9mem_allocEm+0x9c>
            curr->prev->next=new_seg;
    80001508:	00f6b423          	sd	a5,8(a3)
        if (curr->next)
    8000150c:	0084b683          	ld	a3,8(s1)
    80001510:	00068463          	beqz	a3,80001518 <_ZN15MemoryAllocator9mem_allocEm+0xa8>
            curr->next->prev=new_seg;
    80001514:	00f6b823          	sd	a5,16(a3)
        curr->size=actulalSize;
    80001518:	00e4b023          	sd	a4,0(s1)
        this->freeMemSize-= (actulalSize + sizeof(MemoryHeader));
    8000151c:	00863783          	ld	a5,8(a2)
    80001520:	40e78733          	sub	a4,a5,a4
    80001524:	fe870713          	addi	a4,a4,-24
    80001528:	00e63423          	sd	a4,8(a2)
            curr->next->prev=curr->prev;
        this->freeMemSize-= actulalSize;
    }


    __putc('m');
    8000152c:	06d00513          	li	a0,109
    80001530:	00002097          	auipc	ra,0x2
    80001534:	2ec080e7          	jalr	748(ra) # 8000381c <__putc>
    __putc('\n');
    80001538:	00a00513          	li	a0,10
    8000153c:	00002097          	auipc	ra,0x2
    80001540:	2e0080e7          	jalr	736(ra) # 8000381c <__putc>



    return  (void*)((char*)curr + sizeof(MemoryHeader));
    80001544:	01848513          	addi	a0,s1,24
}
    80001548:	01813083          	ld	ra,24(sp)
    8000154c:	01013403          	ld	s0,16(sp)
    80001550:	00813483          	ld	s1,8(sp)
    80001554:	02010113          	addi	sp,sp,32
    80001558:	00008067          	ret
            this->head=new_seg;
    8000155c:	00f63023          	sd	a5,0(a2)
    80001560:	fa1ff06f          	j	80001500 <_ZN15MemoryAllocator9mem_allocEm+0x90>
        if (curr==this->head) {
    80001564:	02950a63          	beq	a0,s1,80001598 <_ZN15MemoryAllocator9mem_allocEm+0x128>
        if (curr->prev)
    80001568:	0104b783          	ld	a5,16(s1)
    8000156c:	00078663          	beqz	a5,80001578 <_ZN15MemoryAllocator9mem_allocEm+0x108>
            curr->prev->next=curr->next;
    80001570:	0084b683          	ld	a3,8(s1)
    80001574:	00d7b423          	sd	a3,8(a5)
        if (curr->next)
    80001578:	0084b783          	ld	a5,8(s1)
    8000157c:	00078663          	beqz	a5,80001588 <_ZN15MemoryAllocator9mem_allocEm+0x118>
            curr->next->prev=curr->prev;
    80001580:	0104b683          	ld	a3,16(s1)
    80001584:	00d7b823          	sd	a3,16(a5)
        this->freeMemSize-= actulalSize;
    80001588:	00863783          	ld	a5,8(a2)
    8000158c:	40e78733          	sub	a4,a5,a4
    80001590:	00e63423          	sd	a4,8(a2)
    80001594:	f99ff06f          	j	8000152c <_ZN15MemoryAllocator9mem_allocEm+0xbc>
            this->head=curr->next;
    80001598:	00f63023          	sd	a5,0(a2)
    8000159c:	fcdff06f          	j	80001568 <_ZN15MemoryAllocator9mem_allocEm+0xf8>
        return nullptr;
    800015a0:	00000513          	li	a0,0
    800015a4:	00008067          	ret
        return nullptr;
    800015a8:	00000513          	li	a0,0
    800015ac:	f9dff06f          	j	80001548 <_ZN15MemoryAllocator9mem_allocEm+0xd8>
}
    800015b0:	00008067          	ret

00000000800015b4 <_ZN15MemoryAllocator11try_to_joinEPNS_12MemoryHeaderE>:
    try_to_join(block);
}


void MemoryAllocator::try_to_join(MemoryHeader* block) {
    if (block==nullptr)
    800015b4:	0a058063          	beqz	a1,80001654 <_ZN15MemoryAllocator11try_to_joinEPNS_12MemoryHeaderE+0xa0>
void MemoryAllocator::try_to_join(MemoryHeader* block) {
    800015b8:	fe010113          	addi	sp,sp,-32
    800015bc:	00113c23          	sd	ra,24(sp)
    800015c0:	00813823          	sd	s0,16(sp)
    800015c4:	00913423          	sd	s1,8(sp)
    800015c8:	01213023          	sd	s2,0(sp)
    800015cc:	02010413          	addi	s0,sp,32
    800015d0:	00050913          	mv	s2,a0
    800015d4:	00058493          	mv	s1,a1
        return;
    if (block->next!=nullptr && ((char*)block + sizeof(MemoryHeader) + block->size) == (char*)block->next) {
    800015d8:	0085b703          	ld	a4,8(a1)
    800015dc:	00070a63          	beqz	a4,800015f0 <_ZN15MemoryAllocator11try_to_joinEPNS_12MemoryHeaderE+0x3c>
    800015e0:	0005b783          	ld	a5,0(a1)
    800015e4:	01878793          	addi	a5,a5,24
    800015e8:	00f587b3          	add	a5,a1,a5
    800015ec:	00f70e63          	beq	a4,a5,80001608 <_ZN15MemoryAllocator11try_to_joinEPNS_12MemoryHeaderE+0x54>
        block->next=block->next->next;
        if (block->next)
            block->next->prev=block;
        this->freeMemSize+= sizeof(MemoryHeader);
    }
    800015f0:	01813083          	ld	ra,24(sp)
    800015f4:	01013403          	ld	s0,16(sp)
    800015f8:	00813483          	ld	s1,8(sp)
    800015fc:	00013903          	ld	s2,0(sp)
    80001600:	02010113          	addi	sp,sp,32
    80001604:	00008067          	ret
        __putc('t');
    80001608:	07400513          	li	a0,116
    8000160c:	00002097          	auipc	ra,0x2
    80001610:	210080e7          	jalr	528(ra) # 8000381c <__putc>
        __putc('\n');
    80001614:	00a00513          	li	a0,10
    80001618:	00002097          	auipc	ra,0x2
    8000161c:	204080e7          	jalr	516(ra) # 8000381c <__putc>
        block->size += block->next->size;
    80001620:	0084b703          	ld	a4,8(s1)
    80001624:	00073683          	ld	a3,0(a4)
    80001628:	0004b783          	ld	a5,0(s1)
    8000162c:	00d787b3          	add	a5,a5,a3
    80001630:	00f4b023          	sd	a5,0(s1)
        block->next=block->next->next;
    80001634:	00873783          	ld	a5,8(a4)
    80001638:	00f4b423          	sd	a5,8(s1)
        if (block->next)
    8000163c:	00078463          	beqz	a5,80001644 <_ZN15MemoryAllocator11try_to_joinEPNS_12MemoryHeaderE+0x90>
            block->next->prev=block;
    80001640:	0097b823          	sd	s1,16(a5)
        this->freeMemSize+= sizeof(MemoryHeader);
    80001644:	00893783          	ld	a5,8(s2)
    80001648:	01878793          	addi	a5,a5,24
    8000164c:	00f93423          	sd	a5,8(s2)
    80001650:	fa1ff06f          	j	800015f0 <_ZN15MemoryAllocator11try_to_joinEPNS_12MemoryHeaderE+0x3c>
    80001654:	00008067          	ret

0000000080001658 <_ZN15MemoryAllocator8mem_freeEPv>:
    if (ptr==nullptr) {
    80001658:	10058263          	beqz	a1,8000175c <_ZN15MemoryAllocator8mem_freeEPv+0x104>
void MemoryAllocator::mem_free(void* ptr) {
    8000165c:	fd010113          	addi	sp,sp,-48
    80001660:	02113423          	sd	ra,40(sp)
    80001664:	02813023          	sd	s0,32(sp)
    80001668:	00913c23          	sd	s1,24(sp)
    8000166c:	01213823          	sd	s2,16(sp)
    80001670:	01313423          	sd	s3,8(sp)
    80001674:	03010413          	addi	s0,sp,48
    80001678:	00050993          	mv	s3,a0
    8000167c:	00058913          	mv	s2,a1
	MemoryHeader* block = (MemoryHeader*)((char*)ptr - sizeof(MemoryHeader));
    80001680:	fe858493          	addi	s1,a1,-24
    if (this->head==nullptr) {
    80001684:	00053683          	ld	a3,0(a0)
    80001688:	08068c63          	beqz	a3,80001720 <_ZN15MemoryAllocator8mem_freeEPv+0xc8>
    MemoryHeader* curr = this->head;
    8000168c:	00068793          	mv	a5,a3
    while (curr->next!=nullptr && curr->next < block) {
    80001690:	00078713          	mv	a4,a5
    80001694:	0087b783          	ld	a5,8(a5)
    80001698:	00078463          	beqz	a5,800016a0 <_ZN15MemoryAllocator8mem_freeEPv+0x48>
    8000169c:	fe97eae3          	bltu	a5,s1,80001690 <_ZN15MemoryAllocator8mem_freeEPv+0x38>
    if (curr==this->head and curr > block) {
    800016a0:	0ae68063          	beq	a3,a4,80001740 <_ZN15MemoryAllocator8mem_freeEPv+0xe8>
        block->next=curr->next;
    800016a4:	fef93823          	sd	a5,-16(s2)
        block->prev=curr;
    800016a8:	fee93c23          	sd	a4,-8(s2)
        curr->next=block;
    800016ac:	00973423          	sd	s1,8(a4)
        if (block->next) {
    800016b0:	ff093783          	ld	a5,-16(s2)
    800016b4:	00078463          	beqz	a5,800016bc <_ZN15MemoryAllocator8mem_freeEPv+0x64>
            block->next->prev=block;
    800016b8:	0097b823          	sd	s1,16(a5)
    this->freeMemSize+= block->size;
    800016bc:	fe893703          	ld	a4,-24(s2)
    800016c0:	0089b783          	ld	a5,8(s3)
    800016c4:	00e787b3          	add	a5,a5,a4
    800016c8:	00f9b423          	sd	a5,8(s3)
    __putc('n');
    800016cc:	06e00513          	li	a0,110
    800016d0:	00002097          	auipc	ra,0x2
    800016d4:	14c080e7          	jalr	332(ra) # 8000381c <__putc>
    __putc('\n');
    800016d8:	00a00513          	li	a0,10
    800016dc:	00002097          	auipc	ra,0x2
    800016e0:	140080e7          	jalr	320(ra) # 8000381c <__putc>
    try_to_join(block->prev);
    800016e4:	ff893583          	ld	a1,-8(s2)
    800016e8:	00098513          	mv	a0,s3
    800016ec:	00000097          	auipc	ra,0x0
    800016f0:	ec8080e7          	jalr	-312(ra) # 800015b4 <_ZN15MemoryAllocator11try_to_joinEPNS_12MemoryHeaderE>
    try_to_join(block);
    800016f4:	00048593          	mv	a1,s1
    800016f8:	00098513          	mv	a0,s3
    800016fc:	00000097          	auipc	ra,0x0
    80001700:	eb8080e7          	jalr	-328(ra) # 800015b4 <_ZN15MemoryAllocator11try_to_joinEPNS_12MemoryHeaderE>
}
    80001704:	02813083          	ld	ra,40(sp)
    80001708:	02013403          	ld	s0,32(sp)
    8000170c:	01813483          	ld	s1,24(sp)
    80001710:	01013903          	ld	s2,16(sp)
    80001714:	00813983          	ld	s3,8(sp)
    80001718:	03010113          	addi	sp,sp,48
    8000171c:	00008067          	ret
        this->head=block;
    80001720:	00953023          	sd	s1,0(a0)
        block->next=nullptr;
    80001724:	fe05b823          	sd	zero,-16(a1)
        block->prev=nullptr;
    80001728:	fe05bc23          	sd	zero,-8(a1)
        this->freeMemSize+= block->size;
    8000172c:	fe85b703          	ld	a4,-24(a1)
    80001730:	00853783          	ld	a5,8(a0)
    80001734:	00e787b3          	add	a5,a5,a4
    80001738:	00f53423          	sd	a5,8(a0)
        return;
    8000173c:	fc9ff06f          	j	80001704 <_ZN15MemoryAllocator8mem_freeEPv+0xac>
    if (curr==this->head and curr > block) {
    80001740:	f6e4f2e3          	bgeu	s1,a4,800016a4 <_ZN15MemoryAllocator8mem_freeEPv+0x4c>
        block->next=curr;
    80001744:	fee93823          	sd	a4,-16(s2)
        block->prev=curr->prev;
    80001748:	01073783          	ld	a5,16(a4)
    8000174c:	fef93c23          	sd	a5,-8(s2)
        curr->prev=block;
    80001750:	00973823          	sd	s1,16(a4)
        this->head=block;
    80001754:	0099b023          	sd	s1,0(s3)
    80001758:	f65ff06f          	j	800016bc <_ZN15MemoryAllocator8mem_freeEPv+0x64>
    8000175c:	00008067          	ret

0000000080001760 <start>:
    80001760:	ff010113          	addi	sp,sp,-16
    80001764:	00813423          	sd	s0,8(sp)
    80001768:	01010413          	addi	s0,sp,16
    8000176c:	300027f3          	csrr	a5,mstatus
    80001770:	ffffe737          	lui	a4,0xffffe
    80001774:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff910f>
    80001778:	00e7f7b3          	and	a5,a5,a4
    8000177c:	00001737          	lui	a4,0x1
    80001780:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80001784:	00e7e7b3          	or	a5,a5,a4
    80001788:	30079073          	csrw	mstatus,a5
    8000178c:	00000797          	auipc	a5,0x0
    80001790:	16078793          	addi	a5,a5,352 # 800018ec <system_main>
    80001794:	34179073          	csrw	mepc,a5
    80001798:	00000793          	li	a5,0
    8000179c:	18079073          	csrw	satp,a5
    800017a0:	000107b7          	lui	a5,0x10
    800017a4:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800017a8:	30279073          	csrw	medeleg,a5
    800017ac:	30379073          	csrw	mideleg,a5
    800017b0:	104027f3          	csrr	a5,sie
    800017b4:	2227e793          	ori	a5,a5,546
    800017b8:	10479073          	csrw	sie,a5
    800017bc:	fff00793          	li	a5,-1
    800017c0:	00a7d793          	srli	a5,a5,0xa
    800017c4:	3b079073          	csrw	pmpaddr0,a5
    800017c8:	00f00793          	li	a5,15
    800017cc:	3a079073          	csrw	pmpcfg0,a5
    800017d0:	f14027f3          	csrr	a5,mhartid
    800017d4:	0200c737          	lui	a4,0x200c
    800017d8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800017dc:	0007869b          	sext.w	a3,a5
    800017e0:	00269713          	slli	a4,a3,0x2
    800017e4:	000f4637          	lui	a2,0xf4
    800017e8:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800017ec:	00d70733          	add	a4,a4,a3
    800017f0:	0037979b          	slliw	a5,a5,0x3
    800017f4:	020046b7          	lui	a3,0x2004
    800017f8:	00d787b3          	add	a5,a5,a3
    800017fc:	00c585b3          	add	a1,a1,a2
    80001800:	00371693          	slli	a3,a4,0x3
    80001804:	00003717          	auipc	a4,0x3
    80001808:	c9c70713          	addi	a4,a4,-868 # 800044a0 <timer_scratch>
    8000180c:	00b7b023          	sd	a1,0(a5)
    80001810:	00d70733          	add	a4,a4,a3
    80001814:	00f73c23          	sd	a5,24(a4)
    80001818:	02c73023          	sd	a2,32(a4)
    8000181c:	34071073          	csrw	mscratch,a4
    80001820:	00000797          	auipc	a5,0x0
    80001824:	6e078793          	addi	a5,a5,1760 # 80001f00 <timervec>
    80001828:	30579073          	csrw	mtvec,a5
    8000182c:	300027f3          	csrr	a5,mstatus
    80001830:	0087e793          	ori	a5,a5,8
    80001834:	30079073          	csrw	mstatus,a5
    80001838:	304027f3          	csrr	a5,mie
    8000183c:	0807e793          	ori	a5,a5,128
    80001840:	30479073          	csrw	mie,a5
    80001844:	f14027f3          	csrr	a5,mhartid
    80001848:	0007879b          	sext.w	a5,a5
    8000184c:	00078213          	mv	tp,a5
    80001850:	30200073          	mret
    80001854:	00813403          	ld	s0,8(sp)
    80001858:	01010113          	addi	sp,sp,16
    8000185c:	00008067          	ret

0000000080001860 <timerinit>:
    80001860:	ff010113          	addi	sp,sp,-16
    80001864:	00813423          	sd	s0,8(sp)
    80001868:	01010413          	addi	s0,sp,16
    8000186c:	f14027f3          	csrr	a5,mhartid
    80001870:	0200c737          	lui	a4,0x200c
    80001874:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001878:	0007869b          	sext.w	a3,a5
    8000187c:	00269713          	slli	a4,a3,0x2
    80001880:	000f4637          	lui	a2,0xf4
    80001884:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001888:	00d70733          	add	a4,a4,a3
    8000188c:	0037979b          	slliw	a5,a5,0x3
    80001890:	020046b7          	lui	a3,0x2004
    80001894:	00d787b3          	add	a5,a5,a3
    80001898:	00c585b3          	add	a1,a1,a2
    8000189c:	00371693          	slli	a3,a4,0x3
    800018a0:	00003717          	auipc	a4,0x3
    800018a4:	c0070713          	addi	a4,a4,-1024 # 800044a0 <timer_scratch>
    800018a8:	00b7b023          	sd	a1,0(a5)
    800018ac:	00d70733          	add	a4,a4,a3
    800018b0:	00f73c23          	sd	a5,24(a4)
    800018b4:	02c73023          	sd	a2,32(a4)
    800018b8:	34071073          	csrw	mscratch,a4
    800018bc:	00000797          	auipc	a5,0x0
    800018c0:	64478793          	addi	a5,a5,1604 # 80001f00 <timervec>
    800018c4:	30579073          	csrw	mtvec,a5
    800018c8:	300027f3          	csrr	a5,mstatus
    800018cc:	0087e793          	ori	a5,a5,8
    800018d0:	30079073          	csrw	mstatus,a5
    800018d4:	304027f3          	csrr	a5,mie
    800018d8:	0807e793          	ori	a5,a5,128
    800018dc:	30479073          	csrw	mie,a5
    800018e0:	00813403          	ld	s0,8(sp)
    800018e4:	01010113          	addi	sp,sp,16
    800018e8:	00008067          	ret

00000000800018ec <system_main>:
    800018ec:	fe010113          	addi	sp,sp,-32
    800018f0:	00813823          	sd	s0,16(sp)
    800018f4:	00913423          	sd	s1,8(sp)
    800018f8:	00113c23          	sd	ra,24(sp)
    800018fc:	02010413          	addi	s0,sp,32
    80001900:	00000097          	auipc	ra,0x0
    80001904:	0c4080e7          	jalr	196(ra) # 800019c4 <cpuid>
    80001908:	00003497          	auipc	s1,0x3
    8000190c:	b4848493          	addi	s1,s1,-1208 # 80004450 <started>
    80001910:	02050263          	beqz	a0,80001934 <system_main+0x48>
    80001914:	0004a783          	lw	a5,0(s1)
    80001918:	0007879b          	sext.w	a5,a5
    8000191c:	fe078ce3          	beqz	a5,80001914 <system_main+0x28>
    80001920:	0ff0000f          	fence
    80001924:	00002517          	auipc	a0,0x2
    80001928:	72c50513          	addi	a0,a0,1836 # 80004050 <CONSOLE_STATUS+0x40>
    8000192c:	00001097          	auipc	ra,0x1
    80001930:	a70080e7          	jalr	-1424(ra) # 8000239c <panic>
    80001934:	00001097          	auipc	ra,0x1
    80001938:	9c4080e7          	jalr	-1596(ra) # 800022f8 <consoleinit>
    8000193c:	00001097          	auipc	ra,0x1
    80001940:	150080e7          	jalr	336(ra) # 80002a8c <printfinit>
    80001944:	00002517          	auipc	a0,0x2
    80001948:	7ec50513          	addi	a0,a0,2028 # 80004130 <CONSOLE_STATUS+0x120>
    8000194c:	00001097          	auipc	ra,0x1
    80001950:	aac080e7          	jalr	-1364(ra) # 800023f8 <__printf>
    80001954:	00002517          	auipc	a0,0x2
    80001958:	6cc50513          	addi	a0,a0,1740 # 80004020 <CONSOLE_STATUS+0x10>
    8000195c:	00001097          	auipc	ra,0x1
    80001960:	a9c080e7          	jalr	-1380(ra) # 800023f8 <__printf>
    80001964:	00002517          	auipc	a0,0x2
    80001968:	7cc50513          	addi	a0,a0,1996 # 80004130 <CONSOLE_STATUS+0x120>
    8000196c:	00001097          	auipc	ra,0x1
    80001970:	a8c080e7          	jalr	-1396(ra) # 800023f8 <__printf>
    80001974:	00001097          	auipc	ra,0x1
    80001978:	4a4080e7          	jalr	1188(ra) # 80002e18 <kinit>
    8000197c:	00000097          	auipc	ra,0x0
    80001980:	148080e7          	jalr	328(ra) # 80001ac4 <trapinit>
    80001984:	00000097          	auipc	ra,0x0
    80001988:	16c080e7          	jalr	364(ra) # 80001af0 <trapinithart>
    8000198c:	00000097          	auipc	ra,0x0
    80001990:	5b4080e7          	jalr	1460(ra) # 80001f40 <plicinit>
    80001994:	00000097          	auipc	ra,0x0
    80001998:	5d4080e7          	jalr	1492(ra) # 80001f68 <plicinithart>
    8000199c:	00000097          	auipc	ra,0x0
    800019a0:	078080e7          	jalr	120(ra) # 80001a14 <userinit>
    800019a4:	0ff0000f          	fence
    800019a8:	00100793          	li	a5,1
    800019ac:	00002517          	auipc	a0,0x2
    800019b0:	68c50513          	addi	a0,a0,1676 # 80004038 <CONSOLE_STATUS+0x28>
    800019b4:	00f4a023          	sw	a5,0(s1)
    800019b8:	00001097          	auipc	ra,0x1
    800019bc:	a40080e7          	jalr	-1472(ra) # 800023f8 <__printf>
    800019c0:	0000006f          	j	800019c0 <system_main+0xd4>

00000000800019c4 <cpuid>:
    800019c4:	ff010113          	addi	sp,sp,-16
    800019c8:	00813423          	sd	s0,8(sp)
    800019cc:	01010413          	addi	s0,sp,16
    800019d0:	00020513          	mv	a0,tp
    800019d4:	00813403          	ld	s0,8(sp)
    800019d8:	0005051b          	sext.w	a0,a0
    800019dc:	01010113          	addi	sp,sp,16
    800019e0:	00008067          	ret

00000000800019e4 <mycpu>:
    800019e4:	ff010113          	addi	sp,sp,-16
    800019e8:	00813423          	sd	s0,8(sp)
    800019ec:	01010413          	addi	s0,sp,16
    800019f0:	00020793          	mv	a5,tp
    800019f4:	00813403          	ld	s0,8(sp)
    800019f8:	0007879b          	sext.w	a5,a5
    800019fc:	00779793          	slli	a5,a5,0x7
    80001a00:	00004517          	auipc	a0,0x4
    80001a04:	ad050513          	addi	a0,a0,-1328 # 800054d0 <cpus>
    80001a08:	00f50533          	add	a0,a0,a5
    80001a0c:	01010113          	addi	sp,sp,16
    80001a10:	00008067          	ret

0000000080001a14 <userinit>:
    80001a14:	ff010113          	addi	sp,sp,-16
    80001a18:	00813423          	sd	s0,8(sp)
    80001a1c:	01010413          	addi	s0,sp,16
    80001a20:	00813403          	ld	s0,8(sp)
    80001a24:	01010113          	addi	sp,sp,16
    80001a28:	00000317          	auipc	t1,0x0
    80001a2c:	8b030067          	jr	-1872(t1) # 800012d8 <main>

0000000080001a30 <either_copyout>:
    80001a30:	ff010113          	addi	sp,sp,-16
    80001a34:	00813023          	sd	s0,0(sp)
    80001a38:	00113423          	sd	ra,8(sp)
    80001a3c:	01010413          	addi	s0,sp,16
    80001a40:	02051663          	bnez	a0,80001a6c <either_copyout+0x3c>
    80001a44:	00058513          	mv	a0,a1
    80001a48:	00060593          	mv	a1,a2
    80001a4c:	0006861b          	sext.w	a2,a3
    80001a50:	00002097          	auipc	ra,0x2
    80001a54:	c54080e7          	jalr	-940(ra) # 800036a4 <__memmove>
    80001a58:	00813083          	ld	ra,8(sp)
    80001a5c:	00013403          	ld	s0,0(sp)
    80001a60:	00000513          	li	a0,0
    80001a64:	01010113          	addi	sp,sp,16
    80001a68:	00008067          	ret
    80001a6c:	00002517          	auipc	a0,0x2
    80001a70:	60c50513          	addi	a0,a0,1548 # 80004078 <CONSOLE_STATUS+0x68>
    80001a74:	00001097          	auipc	ra,0x1
    80001a78:	928080e7          	jalr	-1752(ra) # 8000239c <panic>

0000000080001a7c <either_copyin>:
    80001a7c:	ff010113          	addi	sp,sp,-16
    80001a80:	00813023          	sd	s0,0(sp)
    80001a84:	00113423          	sd	ra,8(sp)
    80001a88:	01010413          	addi	s0,sp,16
    80001a8c:	02059463          	bnez	a1,80001ab4 <either_copyin+0x38>
    80001a90:	00060593          	mv	a1,a2
    80001a94:	0006861b          	sext.w	a2,a3
    80001a98:	00002097          	auipc	ra,0x2
    80001a9c:	c0c080e7          	jalr	-1012(ra) # 800036a4 <__memmove>
    80001aa0:	00813083          	ld	ra,8(sp)
    80001aa4:	00013403          	ld	s0,0(sp)
    80001aa8:	00000513          	li	a0,0
    80001aac:	01010113          	addi	sp,sp,16
    80001ab0:	00008067          	ret
    80001ab4:	00002517          	auipc	a0,0x2
    80001ab8:	5ec50513          	addi	a0,a0,1516 # 800040a0 <CONSOLE_STATUS+0x90>
    80001abc:	00001097          	auipc	ra,0x1
    80001ac0:	8e0080e7          	jalr	-1824(ra) # 8000239c <panic>

0000000080001ac4 <trapinit>:
    80001ac4:	ff010113          	addi	sp,sp,-16
    80001ac8:	00813423          	sd	s0,8(sp)
    80001acc:	01010413          	addi	s0,sp,16
    80001ad0:	00813403          	ld	s0,8(sp)
    80001ad4:	00002597          	auipc	a1,0x2
    80001ad8:	5f458593          	addi	a1,a1,1524 # 800040c8 <CONSOLE_STATUS+0xb8>
    80001adc:	00004517          	auipc	a0,0x4
    80001ae0:	a7450513          	addi	a0,a0,-1420 # 80005550 <tickslock>
    80001ae4:	01010113          	addi	sp,sp,16
    80001ae8:	00001317          	auipc	t1,0x1
    80001aec:	5c030067          	jr	1472(t1) # 800030a8 <initlock>

0000000080001af0 <trapinithart>:
    80001af0:	ff010113          	addi	sp,sp,-16
    80001af4:	00813423          	sd	s0,8(sp)
    80001af8:	01010413          	addi	s0,sp,16
    80001afc:	00000797          	auipc	a5,0x0
    80001b00:	2f478793          	addi	a5,a5,756 # 80001df0 <kernelvec>
    80001b04:	10579073          	csrw	stvec,a5
    80001b08:	00813403          	ld	s0,8(sp)
    80001b0c:	01010113          	addi	sp,sp,16
    80001b10:	00008067          	ret

0000000080001b14 <usertrap>:
    80001b14:	ff010113          	addi	sp,sp,-16
    80001b18:	00813423          	sd	s0,8(sp)
    80001b1c:	01010413          	addi	s0,sp,16
    80001b20:	00813403          	ld	s0,8(sp)
    80001b24:	01010113          	addi	sp,sp,16
    80001b28:	00008067          	ret

0000000080001b2c <usertrapret>:
    80001b2c:	ff010113          	addi	sp,sp,-16
    80001b30:	00813423          	sd	s0,8(sp)
    80001b34:	01010413          	addi	s0,sp,16
    80001b38:	00813403          	ld	s0,8(sp)
    80001b3c:	01010113          	addi	sp,sp,16
    80001b40:	00008067          	ret

0000000080001b44 <kerneltrap>:
    80001b44:	fe010113          	addi	sp,sp,-32
    80001b48:	00813823          	sd	s0,16(sp)
    80001b4c:	00113c23          	sd	ra,24(sp)
    80001b50:	00913423          	sd	s1,8(sp)
    80001b54:	02010413          	addi	s0,sp,32
    80001b58:	142025f3          	csrr	a1,scause
    80001b5c:	100027f3          	csrr	a5,sstatus
    80001b60:	0027f793          	andi	a5,a5,2
    80001b64:	10079c63          	bnez	a5,80001c7c <kerneltrap+0x138>
    80001b68:	142027f3          	csrr	a5,scause
    80001b6c:	0207ce63          	bltz	a5,80001ba8 <kerneltrap+0x64>
    80001b70:	00002517          	auipc	a0,0x2
    80001b74:	5a050513          	addi	a0,a0,1440 # 80004110 <CONSOLE_STATUS+0x100>
    80001b78:	00001097          	auipc	ra,0x1
    80001b7c:	880080e7          	jalr	-1920(ra) # 800023f8 <__printf>
    80001b80:	141025f3          	csrr	a1,sepc
    80001b84:	14302673          	csrr	a2,stval
    80001b88:	00002517          	auipc	a0,0x2
    80001b8c:	59850513          	addi	a0,a0,1432 # 80004120 <CONSOLE_STATUS+0x110>
    80001b90:	00001097          	auipc	ra,0x1
    80001b94:	868080e7          	jalr	-1944(ra) # 800023f8 <__printf>
    80001b98:	00002517          	auipc	a0,0x2
    80001b9c:	5a050513          	addi	a0,a0,1440 # 80004138 <CONSOLE_STATUS+0x128>
    80001ba0:	00000097          	auipc	ra,0x0
    80001ba4:	7fc080e7          	jalr	2044(ra) # 8000239c <panic>
    80001ba8:	0ff7f713          	andi	a4,a5,255
    80001bac:	00900693          	li	a3,9
    80001bb0:	04d70063          	beq	a4,a3,80001bf0 <kerneltrap+0xac>
    80001bb4:	fff00713          	li	a4,-1
    80001bb8:	03f71713          	slli	a4,a4,0x3f
    80001bbc:	00170713          	addi	a4,a4,1
    80001bc0:	fae798e3          	bne	a5,a4,80001b70 <kerneltrap+0x2c>
    80001bc4:	00000097          	auipc	ra,0x0
    80001bc8:	e00080e7          	jalr	-512(ra) # 800019c4 <cpuid>
    80001bcc:	06050663          	beqz	a0,80001c38 <kerneltrap+0xf4>
    80001bd0:	144027f3          	csrr	a5,sip
    80001bd4:	ffd7f793          	andi	a5,a5,-3
    80001bd8:	14479073          	csrw	sip,a5
    80001bdc:	01813083          	ld	ra,24(sp)
    80001be0:	01013403          	ld	s0,16(sp)
    80001be4:	00813483          	ld	s1,8(sp)
    80001be8:	02010113          	addi	sp,sp,32
    80001bec:	00008067          	ret
    80001bf0:	00000097          	auipc	ra,0x0
    80001bf4:	3c4080e7          	jalr	964(ra) # 80001fb4 <plic_claim>
    80001bf8:	00a00793          	li	a5,10
    80001bfc:	00050493          	mv	s1,a0
    80001c00:	06f50863          	beq	a0,a5,80001c70 <kerneltrap+0x12c>
    80001c04:	fc050ce3          	beqz	a0,80001bdc <kerneltrap+0x98>
    80001c08:	00050593          	mv	a1,a0
    80001c0c:	00002517          	auipc	a0,0x2
    80001c10:	4e450513          	addi	a0,a0,1252 # 800040f0 <CONSOLE_STATUS+0xe0>
    80001c14:	00000097          	auipc	ra,0x0
    80001c18:	7e4080e7          	jalr	2020(ra) # 800023f8 <__printf>
    80001c1c:	01013403          	ld	s0,16(sp)
    80001c20:	01813083          	ld	ra,24(sp)
    80001c24:	00048513          	mv	a0,s1
    80001c28:	00813483          	ld	s1,8(sp)
    80001c2c:	02010113          	addi	sp,sp,32
    80001c30:	00000317          	auipc	t1,0x0
    80001c34:	3bc30067          	jr	956(t1) # 80001fec <plic_complete>
    80001c38:	00004517          	auipc	a0,0x4
    80001c3c:	91850513          	addi	a0,a0,-1768 # 80005550 <tickslock>
    80001c40:	00001097          	auipc	ra,0x1
    80001c44:	48c080e7          	jalr	1164(ra) # 800030cc <acquire>
    80001c48:	00003717          	auipc	a4,0x3
    80001c4c:	80c70713          	addi	a4,a4,-2036 # 80004454 <ticks>
    80001c50:	00072783          	lw	a5,0(a4)
    80001c54:	00004517          	auipc	a0,0x4
    80001c58:	8fc50513          	addi	a0,a0,-1796 # 80005550 <tickslock>
    80001c5c:	0017879b          	addiw	a5,a5,1
    80001c60:	00f72023          	sw	a5,0(a4)
    80001c64:	00001097          	auipc	ra,0x1
    80001c68:	534080e7          	jalr	1332(ra) # 80003198 <release>
    80001c6c:	f65ff06f          	j	80001bd0 <kerneltrap+0x8c>
    80001c70:	00001097          	auipc	ra,0x1
    80001c74:	090080e7          	jalr	144(ra) # 80002d00 <uartintr>
    80001c78:	fa5ff06f          	j	80001c1c <kerneltrap+0xd8>
    80001c7c:	00002517          	auipc	a0,0x2
    80001c80:	45450513          	addi	a0,a0,1108 # 800040d0 <CONSOLE_STATUS+0xc0>
    80001c84:	00000097          	auipc	ra,0x0
    80001c88:	718080e7          	jalr	1816(ra) # 8000239c <panic>

0000000080001c8c <clockintr>:
    80001c8c:	fe010113          	addi	sp,sp,-32
    80001c90:	00813823          	sd	s0,16(sp)
    80001c94:	00913423          	sd	s1,8(sp)
    80001c98:	00113c23          	sd	ra,24(sp)
    80001c9c:	02010413          	addi	s0,sp,32
    80001ca0:	00004497          	auipc	s1,0x4
    80001ca4:	8b048493          	addi	s1,s1,-1872 # 80005550 <tickslock>
    80001ca8:	00048513          	mv	a0,s1
    80001cac:	00001097          	auipc	ra,0x1
    80001cb0:	420080e7          	jalr	1056(ra) # 800030cc <acquire>
    80001cb4:	00002717          	auipc	a4,0x2
    80001cb8:	7a070713          	addi	a4,a4,1952 # 80004454 <ticks>
    80001cbc:	00072783          	lw	a5,0(a4)
    80001cc0:	01013403          	ld	s0,16(sp)
    80001cc4:	01813083          	ld	ra,24(sp)
    80001cc8:	00048513          	mv	a0,s1
    80001ccc:	0017879b          	addiw	a5,a5,1
    80001cd0:	00813483          	ld	s1,8(sp)
    80001cd4:	00f72023          	sw	a5,0(a4)
    80001cd8:	02010113          	addi	sp,sp,32
    80001cdc:	00001317          	auipc	t1,0x1
    80001ce0:	4bc30067          	jr	1212(t1) # 80003198 <release>

0000000080001ce4 <devintr>:
    80001ce4:	142027f3          	csrr	a5,scause
    80001ce8:	00000513          	li	a0,0
    80001cec:	0007c463          	bltz	a5,80001cf4 <devintr+0x10>
    80001cf0:	00008067          	ret
    80001cf4:	fe010113          	addi	sp,sp,-32
    80001cf8:	00813823          	sd	s0,16(sp)
    80001cfc:	00113c23          	sd	ra,24(sp)
    80001d00:	00913423          	sd	s1,8(sp)
    80001d04:	02010413          	addi	s0,sp,32
    80001d08:	0ff7f713          	andi	a4,a5,255
    80001d0c:	00900693          	li	a3,9
    80001d10:	04d70c63          	beq	a4,a3,80001d68 <devintr+0x84>
    80001d14:	fff00713          	li	a4,-1
    80001d18:	03f71713          	slli	a4,a4,0x3f
    80001d1c:	00170713          	addi	a4,a4,1
    80001d20:	00e78c63          	beq	a5,a4,80001d38 <devintr+0x54>
    80001d24:	01813083          	ld	ra,24(sp)
    80001d28:	01013403          	ld	s0,16(sp)
    80001d2c:	00813483          	ld	s1,8(sp)
    80001d30:	02010113          	addi	sp,sp,32
    80001d34:	00008067          	ret
    80001d38:	00000097          	auipc	ra,0x0
    80001d3c:	c8c080e7          	jalr	-884(ra) # 800019c4 <cpuid>
    80001d40:	06050663          	beqz	a0,80001dac <devintr+0xc8>
    80001d44:	144027f3          	csrr	a5,sip
    80001d48:	ffd7f793          	andi	a5,a5,-3
    80001d4c:	14479073          	csrw	sip,a5
    80001d50:	01813083          	ld	ra,24(sp)
    80001d54:	01013403          	ld	s0,16(sp)
    80001d58:	00813483          	ld	s1,8(sp)
    80001d5c:	00200513          	li	a0,2
    80001d60:	02010113          	addi	sp,sp,32
    80001d64:	00008067          	ret
    80001d68:	00000097          	auipc	ra,0x0
    80001d6c:	24c080e7          	jalr	588(ra) # 80001fb4 <plic_claim>
    80001d70:	00a00793          	li	a5,10
    80001d74:	00050493          	mv	s1,a0
    80001d78:	06f50663          	beq	a0,a5,80001de4 <devintr+0x100>
    80001d7c:	00100513          	li	a0,1
    80001d80:	fa0482e3          	beqz	s1,80001d24 <devintr+0x40>
    80001d84:	00048593          	mv	a1,s1
    80001d88:	00002517          	auipc	a0,0x2
    80001d8c:	36850513          	addi	a0,a0,872 # 800040f0 <CONSOLE_STATUS+0xe0>
    80001d90:	00000097          	auipc	ra,0x0
    80001d94:	668080e7          	jalr	1640(ra) # 800023f8 <__printf>
    80001d98:	00048513          	mv	a0,s1
    80001d9c:	00000097          	auipc	ra,0x0
    80001da0:	250080e7          	jalr	592(ra) # 80001fec <plic_complete>
    80001da4:	00100513          	li	a0,1
    80001da8:	f7dff06f          	j	80001d24 <devintr+0x40>
    80001dac:	00003517          	auipc	a0,0x3
    80001db0:	7a450513          	addi	a0,a0,1956 # 80005550 <tickslock>
    80001db4:	00001097          	auipc	ra,0x1
    80001db8:	318080e7          	jalr	792(ra) # 800030cc <acquire>
    80001dbc:	00002717          	auipc	a4,0x2
    80001dc0:	69870713          	addi	a4,a4,1688 # 80004454 <ticks>
    80001dc4:	00072783          	lw	a5,0(a4)
    80001dc8:	00003517          	auipc	a0,0x3
    80001dcc:	78850513          	addi	a0,a0,1928 # 80005550 <tickslock>
    80001dd0:	0017879b          	addiw	a5,a5,1
    80001dd4:	00f72023          	sw	a5,0(a4)
    80001dd8:	00001097          	auipc	ra,0x1
    80001ddc:	3c0080e7          	jalr	960(ra) # 80003198 <release>
    80001de0:	f65ff06f          	j	80001d44 <devintr+0x60>
    80001de4:	00001097          	auipc	ra,0x1
    80001de8:	f1c080e7          	jalr	-228(ra) # 80002d00 <uartintr>
    80001dec:	fadff06f          	j	80001d98 <devintr+0xb4>

0000000080001df0 <kernelvec>:
    80001df0:	f0010113          	addi	sp,sp,-256
    80001df4:	00113023          	sd	ra,0(sp)
    80001df8:	00213423          	sd	sp,8(sp)
    80001dfc:	00313823          	sd	gp,16(sp)
    80001e00:	00413c23          	sd	tp,24(sp)
    80001e04:	02513023          	sd	t0,32(sp)
    80001e08:	02613423          	sd	t1,40(sp)
    80001e0c:	02713823          	sd	t2,48(sp)
    80001e10:	02813c23          	sd	s0,56(sp)
    80001e14:	04913023          	sd	s1,64(sp)
    80001e18:	04a13423          	sd	a0,72(sp)
    80001e1c:	04b13823          	sd	a1,80(sp)
    80001e20:	04c13c23          	sd	a2,88(sp)
    80001e24:	06d13023          	sd	a3,96(sp)
    80001e28:	06e13423          	sd	a4,104(sp)
    80001e2c:	06f13823          	sd	a5,112(sp)
    80001e30:	07013c23          	sd	a6,120(sp)
    80001e34:	09113023          	sd	a7,128(sp)
    80001e38:	09213423          	sd	s2,136(sp)
    80001e3c:	09313823          	sd	s3,144(sp)
    80001e40:	09413c23          	sd	s4,152(sp)
    80001e44:	0b513023          	sd	s5,160(sp)
    80001e48:	0b613423          	sd	s6,168(sp)
    80001e4c:	0b713823          	sd	s7,176(sp)
    80001e50:	0b813c23          	sd	s8,184(sp)
    80001e54:	0d913023          	sd	s9,192(sp)
    80001e58:	0da13423          	sd	s10,200(sp)
    80001e5c:	0db13823          	sd	s11,208(sp)
    80001e60:	0dc13c23          	sd	t3,216(sp)
    80001e64:	0fd13023          	sd	t4,224(sp)
    80001e68:	0fe13423          	sd	t5,232(sp)
    80001e6c:	0ff13823          	sd	t6,240(sp)
    80001e70:	cd5ff0ef          	jal	ra,80001b44 <kerneltrap>
    80001e74:	00013083          	ld	ra,0(sp)
    80001e78:	00813103          	ld	sp,8(sp)
    80001e7c:	01013183          	ld	gp,16(sp)
    80001e80:	02013283          	ld	t0,32(sp)
    80001e84:	02813303          	ld	t1,40(sp)
    80001e88:	03013383          	ld	t2,48(sp)
    80001e8c:	03813403          	ld	s0,56(sp)
    80001e90:	04013483          	ld	s1,64(sp)
    80001e94:	04813503          	ld	a0,72(sp)
    80001e98:	05013583          	ld	a1,80(sp)
    80001e9c:	05813603          	ld	a2,88(sp)
    80001ea0:	06013683          	ld	a3,96(sp)
    80001ea4:	06813703          	ld	a4,104(sp)
    80001ea8:	07013783          	ld	a5,112(sp)
    80001eac:	07813803          	ld	a6,120(sp)
    80001eb0:	08013883          	ld	a7,128(sp)
    80001eb4:	08813903          	ld	s2,136(sp)
    80001eb8:	09013983          	ld	s3,144(sp)
    80001ebc:	09813a03          	ld	s4,152(sp)
    80001ec0:	0a013a83          	ld	s5,160(sp)
    80001ec4:	0a813b03          	ld	s6,168(sp)
    80001ec8:	0b013b83          	ld	s7,176(sp)
    80001ecc:	0b813c03          	ld	s8,184(sp)
    80001ed0:	0c013c83          	ld	s9,192(sp)
    80001ed4:	0c813d03          	ld	s10,200(sp)
    80001ed8:	0d013d83          	ld	s11,208(sp)
    80001edc:	0d813e03          	ld	t3,216(sp)
    80001ee0:	0e013e83          	ld	t4,224(sp)
    80001ee4:	0e813f03          	ld	t5,232(sp)
    80001ee8:	0f013f83          	ld	t6,240(sp)
    80001eec:	10010113          	addi	sp,sp,256
    80001ef0:	10200073          	sret
    80001ef4:	00000013          	nop
    80001ef8:	00000013          	nop
    80001efc:	00000013          	nop

0000000080001f00 <timervec>:
    80001f00:	34051573          	csrrw	a0,mscratch,a0
    80001f04:	00b53023          	sd	a1,0(a0)
    80001f08:	00c53423          	sd	a2,8(a0)
    80001f0c:	00d53823          	sd	a3,16(a0)
    80001f10:	01853583          	ld	a1,24(a0)
    80001f14:	02053603          	ld	a2,32(a0)
    80001f18:	0005b683          	ld	a3,0(a1)
    80001f1c:	00c686b3          	add	a3,a3,a2
    80001f20:	00d5b023          	sd	a3,0(a1)
    80001f24:	00200593          	li	a1,2
    80001f28:	14459073          	csrw	sip,a1
    80001f2c:	01053683          	ld	a3,16(a0)
    80001f30:	00853603          	ld	a2,8(a0)
    80001f34:	00053583          	ld	a1,0(a0)
    80001f38:	34051573          	csrrw	a0,mscratch,a0
    80001f3c:	30200073          	mret

0000000080001f40 <plicinit>:
    80001f40:	ff010113          	addi	sp,sp,-16
    80001f44:	00813423          	sd	s0,8(sp)
    80001f48:	01010413          	addi	s0,sp,16
    80001f4c:	00813403          	ld	s0,8(sp)
    80001f50:	0c0007b7          	lui	a5,0xc000
    80001f54:	00100713          	li	a4,1
    80001f58:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80001f5c:	00e7a223          	sw	a4,4(a5)
    80001f60:	01010113          	addi	sp,sp,16
    80001f64:	00008067          	ret

0000000080001f68 <plicinithart>:
    80001f68:	ff010113          	addi	sp,sp,-16
    80001f6c:	00813023          	sd	s0,0(sp)
    80001f70:	00113423          	sd	ra,8(sp)
    80001f74:	01010413          	addi	s0,sp,16
    80001f78:	00000097          	auipc	ra,0x0
    80001f7c:	a4c080e7          	jalr	-1460(ra) # 800019c4 <cpuid>
    80001f80:	0085171b          	slliw	a4,a0,0x8
    80001f84:	0c0027b7          	lui	a5,0xc002
    80001f88:	00e787b3          	add	a5,a5,a4
    80001f8c:	40200713          	li	a4,1026
    80001f90:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80001f94:	00813083          	ld	ra,8(sp)
    80001f98:	00013403          	ld	s0,0(sp)
    80001f9c:	00d5151b          	slliw	a0,a0,0xd
    80001fa0:	0c2017b7          	lui	a5,0xc201
    80001fa4:	00a78533          	add	a0,a5,a0
    80001fa8:	00052023          	sw	zero,0(a0)
    80001fac:	01010113          	addi	sp,sp,16
    80001fb0:	00008067          	ret

0000000080001fb4 <plic_claim>:
    80001fb4:	ff010113          	addi	sp,sp,-16
    80001fb8:	00813023          	sd	s0,0(sp)
    80001fbc:	00113423          	sd	ra,8(sp)
    80001fc0:	01010413          	addi	s0,sp,16
    80001fc4:	00000097          	auipc	ra,0x0
    80001fc8:	a00080e7          	jalr	-1536(ra) # 800019c4 <cpuid>
    80001fcc:	00813083          	ld	ra,8(sp)
    80001fd0:	00013403          	ld	s0,0(sp)
    80001fd4:	00d5151b          	slliw	a0,a0,0xd
    80001fd8:	0c2017b7          	lui	a5,0xc201
    80001fdc:	00a78533          	add	a0,a5,a0
    80001fe0:	00452503          	lw	a0,4(a0)
    80001fe4:	01010113          	addi	sp,sp,16
    80001fe8:	00008067          	ret

0000000080001fec <plic_complete>:
    80001fec:	fe010113          	addi	sp,sp,-32
    80001ff0:	00813823          	sd	s0,16(sp)
    80001ff4:	00913423          	sd	s1,8(sp)
    80001ff8:	00113c23          	sd	ra,24(sp)
    80001ffc:	02010413          	addi	s0,sp,32
    80002000:	00050493          	mv	s1,a0
    80002004:	00000097          	auipc	ra,0x0
    80002008:	9c0080e7          	jalr	-1600(ra) # 800019c4 <cpuid>
    8000200c:	01813083          	ld	ra,24(sp)
    80002010:	01013403          	ld	s0,16(sp)
    80002014:	00d5179b          	slliw	a5,a0,0xd
    80002018:	0c201737          	lui	a4,0xc201
    8000201c:	00f707b3          	add	a5,a4,a5
    80002020:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80002024:	00813483          	ld	s1,8(sp)
    80002028:	02010113          	addi	sp,sp,32
    8000202c:	00008067          	ret

0000000080002030 <consolewrite>:
    80002030:	fb010113          	addi	sp,sp,-80
    80002034:	04813023          	sd	s0,64(sp)
    80002038:	04113423          	sd	ra,72(sp)
    8000203c:	02913c23          	sd	s1,56(sp)
    80002040:	03213823          	sd	s2,48(sp)
    80002044:	03313423          	sd	s3,40(sp)
    80002048:	03413023          	sd	s4,32(sp)
    8000204c:	01513c23          	sd	s5,24(sp)
    80002050:	05010413          	addi	s0,sp,80
    80002054:	06c05c63          	blez	a2,800020cc <consolewrite+0x9c>
    80002058:	00060993          	mv	s3,a2
    8000205c:	00050a13          	mv	s4,a0
    80002060:	00058493          	mv	s1,a1
    80002064:	00000913          	li	s2,0
    80002068:	fff00a93          	li	s5,-1
    8000206c:	01c0006f          	j	80002088 <consolewrite+0x58>
    80002070:	fbf44503          	lbu	a0,-65(s0)
    80002074:	0019091b          	addiw	s2,s2,1
    80002078:	00148493          	addi	s1,s1,1
    8000207c:	00001097          	auipc	ra,0x1
    80002080:	a9c080e7          	jalr	-1380(ra) # 80002b18 <uartputc>
    80002084:	03298063          	beq	s3,s2,800020a4 <consolewrite+0x74>
    80002088:	00048613          	mv	a2,s1
    8000208c:	00100693          	li	a3,1
    80002090:	000a0593          	mv	a1,s4
    80002094:	fbf40513          	addi	a0,s0,-65
    80002098:	00000097          	auipc	ra,0x0
    8000209c:	9e4080e7          	jalr	-1564(ra) # 80001a7c <either_copyin>
    800020a0:	fd5518e3          	bne	a0,s5,80002070 <consolewrite+0x40>
    800020a4:	04813083          	ld	ra,72(sp)
    800020a8:	04013403          	ld	s0,64(sp)
    800020ac:	03813483          	ld	s1,56(sp)
    800020b0:	02813983          	ld	s3,40(sp)
    800020b4:	02013a03          	ld	s4,32(sp)
    800020b8:	01813a83          	ld	s5,24(sp)
    800020bc:	00090513          	mv	a0,s2
    800020c0:	03013903          	ld	s2,48(sp)
    800020c4:	05010113          	addi	sp,sp,80
    800020c8:	00008067          	ret
    800020cc:	00000913          	li	s2,0
    800020d0:	fd5ff06f          	j	800020a4 <consolewrite+0x74>

00000000800020d4 <consoleread>:
    800020d4:	f9010113          	addi	sp,sp,-112
    800020d8:	06813023          	sd	s0,96(sp)
    800020dc:	04913c23          	sd	s1,88(sp)
    800020e0:	05213823          	sd	s2,80(sp)
    800020e4:	05313423          	sd	s3,72(sp)
    800020e8:	05413023          	sd	s4,64(sp)
    800020ec:	03513c23          	sd	s5,56(sp)
    800020f0:	03613823          	sd	s6,48(sp)
    800020f4:	03713423          	sd	s7,40(sp)
    800020f8:	03813023          	sd	s8,32(sp)
    800020fc:	06113423          	sd	ra,104(sp)
    80002100:	01913c23          	sd	s9,24(sp)
    80002104:	07010413          	addi	s0,sp,112
    80002108:	00060b93          	mv	s7,a2
    8000210c:	00050913          	mv	s2,a0
    80002110:	00058c13          	mv	s8,a1
    80002114:	00060b1b          	sext.w	s6,a2
    80002118:	00003497          	auipc	s1,0x3
    8000211c:	45048493          	addi	s1,s1,1104 # 80005568 <cons>
    80002120:	00400993          	li	s3,4
    80002124:	fff00a13          	li	s4,-1
    80002128:	00a00a93          	li	s5,10
    8000212c:	05705e63          	blez	s7,80002188 <consoleread+0xb4>
    80002130:	09c4a703          	lw	a4,156(s1)
    80002134:	0984a783          	lw	a5,152(s1)
    80002138:	0007071b          	sext.w	a4,a4
    8000213c:	08e78463          	beq	a5,a4,800021c4 <consoleread+0xf0>
    80002140:	07f7f713          	andi	a4,a5,127
    80002144:	00e48733          	add	a4,s1,a4
    80002148:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000214c:	0017869b          	addiw	a3,a5,1
    80002150:	08d4ac23          	sw	a3,152(s1)
    80002154:	00070c9b          	sext.w	s9,a4
    80002158:	0b370663          	beq	a4,s3,80002204 <consoleread+0x130>
    8000215c:	00100693          	li	a3,1
    80002160:	f9f40613          	addi	a2,s0,-97
    80002164:	000c0593          	mv	a1,s8
    80002168:	00090513          	mv	a0,s2
    8000216c:	f8e40fa3          	sb	a4,-97(s0)
    80002170:	00000097          	auipc	ra,0x0
    80002174:	8c0080e7          	jalr	-1856(ra) # 80001a30 <either_copyout>
    80002178:	01450863          	beq	a0,s4,80002188 <consoleread+0xb4>
    8000217c:	001c0c13          	addi	s8,s8,1
    80002180:	fffb8b9b          	addiw	s7,s7,-1
    80002184:	fb5c94e3          	bne	s9,s5,8000212c <consoleread+0x58>
    80002188:	000b851b          	sext.w	a0,s7
    8000218c:	06813083          	ld	ra,104(sp)
    80002190:	06013403          	ld	s0,96(sp)
    80002194:	05813483          	ld	s1,88(sp)
    80002198:	05013903          	ld	s2,80(sp)
    8000219c:	04813983          	ld	s3,72(sp)
    800021a0:	04013a03          	ld	s4,64(sp)
    800021a4:	03813a83          	ld	s5,56(sp)
    800021a8:	02813b83          	ld	s7,40(sp)
    800021ac:	02013c03          	ld	s8,32(sp)
    800021b0:	01813c83          	ld	s9,24(sp)
    800021b4:	40ab053b          	subw	a0,s6,a0
    800021b8:	03013b03          	ld	s6,48(sp)
    800021bc:	07010113          	addi	sp,sp,112
    800021c0:	00008067          	ret
    800021c4:	00001097          	auipc	ra,0x1
    800021c8:	1d8080e7          	jalr	472(ra) # 8000339c <push_on>
    800021cc:	0984a703          	lw	a4,152(s1)
    800021d0:	09c4a783          	lw	a5,156(s1)
    800021d4:	0007879b          	sext.w	a5,a5
    800021d8:	fef70ce3          	beq	a4,a5,800021d0 <consoleread+0xfc>
    800021dc:	00001097          	auipc	ra,0x1
    800021e0:	234080e7          	jalr	564(ra) # 80003410 <pop_on>
    800021e4:	0984a783          	lw	a5,152(s1)
    800021e8:	07f7f713          	andi	a4,a5,127
    800021ec:	00e48733          	add	a4,s1,a4
    800021f0:	01874703          	lbu	a4,24(a4)
    800021f4:	0017869b          	addiw	a3,a5,1
    800021f8:	08d4ac23          	sw	a3,152(s1)
    800021fc:	00070c9b          	sext.w	s9,a4
    80002200:	f5371ee3          	bne	a4,s3,8000215c <consoleread+0x88>
    80002204:	000b851b          	sext.w	a0,s7
    80002208:	f96bf2e3          	bgeu	s7,s6,8000218c <consoleread+0xb8>
    8000220c:	08f4ac23          	sw	a5,152(s1)
    80002210:	f7dff06f          	j	8000218c <consoleread+0xb8>

0000000080002214 <consputc>:
    80002214:	10000793          	li	a5,256
    80002218:	00f50663          	beq	a0,a5,80002224 <consputc+0x10>
    8000221c:	00001317          	auipc	t1,0x1
    80002220:	9f430067          	jr	-1548(t1) # 80002c10 <uartputc_sync>
    80002224:	ff010113          	addi	sp,sp,-16
    80002228:	00113423          	sd	ra,8(sp)
    8000222c:	00813023          	sd	s0,0(sp)
    80002230:	01010413          	addi	s0,sp,16
    80002234:	00800513          	li	a0,8
    80002238:	00001097          	auipc	ra,0x1
    8000223c:	9d8080e7          	jalr	-1576(ra) # 80002c10 <uartputc_sync>
    80002240:	02000513          	li	a0,32
    80002244:	00001097          	auipc	ra,0x1
    80002248:	9cc080e7          	jalr	-1588(ra) # 80002c10 <uartputc_sync>
    8000224c:	00013403          	ld	s0,0(sp)
    80002250:	00813083          	ld	ra,8(sp)
    80002254:	00800513          	li	a0,8
    80002258:	01010113          	addi	sp,sp,16
    8000225c:	00001317          	auipc	t1,0x1
    80002260:	9b430067          	jr	-1612(t1) # 80002c10 <uartputc_sync>

0000000080002264 <consoleintr>:
    80002264:	fe010113          	addi	sp,sp,-32
    80002268:	00813823          	sd	s0,16(sp)
    8000226c:	00913423          	sd	s1,8(sp)
    80002270:	01213023          	sd	s2,0(sp)
    80002274:	00113c23          	sd	ra,24(sp)
    80002278:	02010413          	addi	s0,sp,32
    8000227c:	00003917          	auipc	s2,0x3
    80002280:	2ec90913          	addi	s2,s2,748 # 80005568 <cons>
    80002284:	00050493          	mv	s1,a0
    80002288:	00090513          	mv	a0,s2
    8000228c:	00001097          	auipc	ra,0x1
    80002290:	e40080e7          	jalr	-448(ra) # 800030cc <acquire>
    80002294:	02048c63          	beqz	s1,800022cc <consoleintr+0x68>
    80002298:	0a092783          	lw	a5,160(s2)
    8000229c:	09892703          	lw	a4,152(s2)
    800022a0:	07f00693          	li	a3,127
    800022a4:	40e7873b          	subw	a4,a5,a4
    800022a8:	02e6e263          	bltu	a3,a4,800022cc <consoleintr+0x68>
    800022ac:	00d00713          	li	a4,13
    800022b0:	04e48063          	beq	s1,a4,800022f0 <consoleintr+0x8c>
    800022b4:	07f7f713          	andi	a4,a5,127
    800022b8:	00e90733          	add	a4,s2,a4
    800022bc:	0017879b          	addiw	a5,a5,1
    800022c0:	0af92023          	sw	a5,160(s2)
    800022c4:	00970c23          	sb	s1,24(a4)
    800022c8:	08f92e23          	sw	a5,156(s2)
    800022cc:	01013403          	ld	s0,16(sp)
    800022d0:	01813083          	ld	ra,24(sp)
    800022d4:	00813483          	ld	s1,8(sp)
    800022d8:	00013903          	ld	s2,0(sp)
    800022dc:	00003517          	auipc	a0,0x3
    800022e0:	28c50513          	addi	a0,a0,652 # 80005568 <cons>
    800022e4:	02010113          	addi	sp,sp,32
    800022e8:	00001317          	auipc	t1,0x1
    800022ec:	eb030067          	jr	-336(t1) # 80003198 <release>
    800022f0:	00a00493          	li	s1,10
    800022f4:	fc1ff06f          	j	800022b4 <consoleintr+0x50>

00000000800022f8 <consoleinit>:
    800022f8:	fe010113          	addi	sp,sp,-32
    800022fc:	00113c23          	sd	ra,24(sp)
    80002300:	00813823          	sd	s0,16(sp)
    80002304:	00913423          	sd	s1,8(sp)
    80002308:	02010413          	addi	s0,sp,32
    8000230c:	00003497          	auipc	s1,0x3
    80002310:	25c48493          	addi	s1,s1,604 # 80005568 <cons>
    80002314:	00048513          	mv	a0,s1
    80002318:	00002597          	auipc	a1,0x2
    8000231c:	e3058593          	addi	a1,a1,-464 # 80004148 <CONSOLE_STATUS+0x138>
    80002320:	00001097          	auipc	ra,0x1
    80002324:	d88080e7          	jalr	-632(ra) # 800030a8 <initlock>
    80002328:	00000097          	auipc	ra,0x0
    8000232c:	7ac080e7          	jalr	1964(ra) # 80002ad4 <uartinit>
    80002330:	01813083          	ld	ra,24(sp)
    80002334:	01013403          	ld	s0,16(sp)
    80002338:	00000797          	auipc	a5,0x0
    8000233c:	d9c78793          	addi	a5,a5,-612 # 800020d4 <consoleread>
    80002340:	0af4bc23          	sd	a5,184(s1)
    80002344:	00000797          	auipc	a5,0x0
    80002348:	cec78793          	addi	a5,a5,-788 # 80002030 <consolewrite>
    8000234c:	0cf4b023          	sd	a5,192(s1)
    80002350:	00813483          	ld	s1,8(sp)
    80002354:	02010113          	addi	sp,sp,32
    80002358:	00008067          	ret

000000008000235c <console_read>:
    8000235c:	ff010113          	addi	sp,sp,-16
    80002360:	00813423          	sd	s0,8(sp)
    80002364:	01010413          	addi	s0,sp,16
    80002368:	00813403          	ld	s0,8(sp)
    8000236c:	00003317          	auipc	t1,0x3
    80002370:	2b433303          	ld	t1,692(t1) # 80005620 <devsw+0x10>
    80002374:	01010113          	addi	sp,sp,16
    80002378:	00030067          	jr	t1

000000008000237c <console_write>:
    8000237c:	ff010113          	addi	sp,sp,-16
    80002380:	00813423          	sd	s0,8(sp)
    80002384:	01010413          	addi	s0,sp,16
    80002388:	00813403          	ld	s0,8(sp)
    8000238c:	00003317          	auipc	t1,0x3
    80002390:	29c33303          	ld	t1,668(t1) # 80005628 <devsw+0x18>
    80002394:	01010113          	addi	sp,sp,16
    80002398:	00030067          	jr	t1

000000008000239c <panic>:
    8000239c:	fe010113          	addi	sp,sp,-32
    800023a0:	00113c23          	sd	ra,24(sp)
    800023a4:	00813823          	sd	s0,16(sp)
    800023a8:	00913423          	sd	s1,8(sp)
    800023ac:	02010413          	addi	s0,sp,32
    800023b0:	00050493          	mv	s1,a0
    800023b4:	00002517          	auipc	a0,0x2
    800023b8:	d9c50513          	addi	a0,a0,-612 # 80004150 <CONSOLE_STATUS+0x140>
    800023bc:	00003797          	auipc	a5,0x3
    800023c0:	3007a623          	sw	zero,780(a5) # 800056c8 <pr+0x18>
    800023c4:	00000097          	auipc	ra,0x0
    800023c8:	034080e7          	jalr	52(ra) # 800023f8 <__printf>
    800023cc:	00048513          	mv	a0,s1
    800023d0:	00000097          	auipc	ra,0x0
    800023d4:	028080e7          	jalr	40(ra) # 800023f8 <__printf>
    800023d8:	00002517          	auipc	a0,0x2
    800023dc:	d5850513          	addi	a0,a0,-680 # 80004130 <CONSOLE_STATUS+0x120>
    800023e0:	00000097          	auipc	ra,0x0
    800023e4:	018080e7          	jalr	24(ra) # 800023f8 <__printf>
    800023e8:	00100793          	li	a5,1
    800023ec:	00002717          	auipc	a4,0x2
    800023f0:	06f72623          	sw	a5,108(a4) # 80004458 <panicked>
    800023f4:	0000006f          	j	800023f4 <panic+0x58>

00000000800023f8 <__printf>:
    800023f8:	f3010113          	addi	sp,sp,-208
    800023fc:	08813023          	sd	s0,128(sp)
    80002400:	07313423          	sd	s3,104(sp)
    80002404:	09010413          	addi	s0,sp,144
    80002408:	05813023          	sd	s8,64(sp)
    8000240c:	08113423          	sd	ra,136(sp)
    80002410:	06913c23          	sd	s1,120(sp)
    80002414:	07213823          	sd	s2,112(sp)
    80002418:	07413023          	sd	s4,96(sp)
    8000241c:	05513c23          	sd	s5,88(sp)
    80002420:	05613823          	sd	s6,80(sp)
    80002424:	05713423          	sd	s7,72(sp)
    80002428:	03913c23          	sd	s9,56(sp)
    8000242c:	03a13823          	sd	s10,48(sp)
    80002430:	03b13423          	sd	s11,40(sp)
    80002434:	00003317          	auipc	t1,0x3
    80002438:	27c30313          	addi	t1,t1,636 # 800056b0 <pr>
    8000243c:	01832c03          	lw	s8,24(t1)
    80002440:	00b43423          	sd	a1,8(s0)
    80002444:	00c43823          	sd	a2,16(s0)
    80002448:	00d43c23          	sd	a3,24(s0)
    8000244c:	02e43023          	sd	a4,32(s0)
    80002450:	02f43423          	sd	a5,40(s0)
    80002454:	03043823          	sd	a6,48(s0)
    80002458:	03143c23          	sd	a7,56(s0)
    8000245c:	00050993          	mv	s3,a0
    80002460:	4a0c1663          	bnez	s8,8000290c <__printf+0x514>
    80002464:	60098c63          	beqz	s3,80002a7c <__printf+0x684>
    80002468:	0009c503          	lbu	a0,0(s3)
    8000246c:	00840793          	addi	a5,s0,8
    80002470:	f6f43c23          	sd	a5,-136(s0)
    80002474:	00000493          	li	s1,0
    80002478:	22050063          	beqz	a0,80002698 <__printf+0x2a0>
    8000247c:	00002a37          	lui	s4,0x2
    80002480:	00018ab7          	lui	s5,0x18
    80002484:	000f4b37          	lui	s6,0xf4
    80002488:	00989bb7          	lui	s7,0x989
    8000248c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80002490:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80002494:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80002498:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000249c:	00148c9b          	addiw	s9,s1,1
    800024a0:	02500793          	li	a5,37
    800024a4:	01998933          	add	s2,s3,s9
    800024a8:	38f51263          	bne	a0,a5,8000282c <__printf+0x434>
    800024ac:	00094783          	lbu	a5,0(s2)
    800024b0:	00078c9b          	sext.w	s9,a5
    800024b4:	1e078263          	beqz	a5,80002698 <__printf+0x2a0>
    800024b8:	0024849b          	addiw	s1,s1,2
    800024bc:	07000713          	li	a4,112
    800024c0:	00998933          	add	s2,s3,s1
    800024c4:	38e78a63          	beq	a5,a4,80002858 <__printf+0x460>
    800024c8:	20f76863          	bltu	a4,a5,800026d8 <__printf+0x2e0>
    800024cc:	42a78863          	beq	a5,a0,800028fc <__printf+0x504>
    800024d0:	06400713          	li	a4,100
    800024d4:	40e79663          	bne	a5,a4,800028e0 <__printf+0x4e8>
    800024d8:	f7843783          	ld	a5,-136(s0)
    800024dc:	0007a603          	lw	a2,0(a5)
    800024e0:	00878793          	addi	a5,a5,8
    800024e4:	f6f43c23          	sd	a5,-136(s0)
    800024e8:	42064a63          	bltz	a2,8000291c <__printf+0x524>
    800024ec:	00a00713          	li	a4,10
    800024f0:	02e677bb          	remuw	a5,a2,a4
    800024f4:	00002d97          	auipc	s11,0x2
    800024f8:	c84d8d93          	addi	s11,s11,-892 # 80004178 <digits>
    800024fc:	00900593          	li	a1,9
    80002500:	0006051b          	sext.w	a0,a2
    80002504:	00000c93          	li	s9,0
    80002508:	02079793          	slli	a5,a5,0x20
    8000250c:	0207d793          	srli	a5,a5,0x20
    80002510:	00fd87b3          	add	a5,s11,a5
    80002514:	0007c783          	lbu	a5,0(a5)
    80002518:	02e656bb          	divuw	a3,a2,a4
    8000251c:	f8f40023          	sb	a5,-128(s0)
    80002520:	14c5d863          	bge	a1,a2,80002670 <__printf+0x278>
    80002524:	06300593          	li	a1,99
    80002528:	00100c93          	li	s9,1
    8000252c:	02e6f7bb          	remuw	a5,a3,a4
    80002530:	02079793          	slli	a5,a5,0x20
    80002534:	0207d793          	srli	a5,a5,0x20
    80002538:	00fd87b3          	add	a5,s11,a5
    8000253c:	0007c783          	lbu	a5,0(a5)
    80002540:	02e6d73b          	divuw	a4,a3,a4
    80002544:	f8f400a3          	sb	a5,-127(s0)
    80002548:	12a5f463          	bgeu	a1,a0,80002670 <__printf+0x278>
    8000254c:	00a00693          	li	a3,10
    80002550:	00900593          	li	a1,9
    80002554:	02d777bb          	remuw	a5,a4,a3
    80002558:	02079793          	slli	a5,a5,0x20
    8000255c:	0207d793          	srli	a5,a5,0x20
    80002560:	00fd87b3          	add	a5,s11,a5
    80002564:	0007c503          	lbu	a0,0(a5)
    80002568:	02d757bb          	divuw	a5,a4,a3
    8000256c:	f8a40123          	sb	a0,-126(s0)
    80002570:	48e5f263          	bgeu	a1,a4,800029f4 <__printf+0x5fc>
    80002574:	06300513          	li	a0,99
    80002578:	02d7f5bb          	remuw	a1,a5,a3
    8000257c:	02059593          	slli	a1,a1,0x20
    80002580:	0205d593          	srli	a1,a1,0x20
    80002584:	00bd85b3          	add	a1,s11,a1
    80002588:	0005c583          	lbu	a1,0(a1)
    8000258c:	02d7d7bb          	divuw	a5,a5,a3
    80002590:	f8b401a3          	sb	a1,-125(s0)
    80002594:	48e57263          	bgeu	a0,a4,80002a18 <__printf+0x620>
    80002598:	3e700513          	li	a0,999
    8000259c:	02d7f5bb          	remuw	a1,a5,a3
    800025a0:	02059593          	slli	a1,a1,0x20
    800025a4:	0205d593          	srli	a1,a1,0x20
    800025a8:	00bd85b3          	add	a1,s11,a1
    800025ac:	0005c583          	lbu	a1,0(a1)
    800025b0:	02d7d7bb          	divuw	a5,a5,a3
    800025b4:	f8b40223          	sb	a1,-124(s0)
    800025b8:	46e57663          	bgeu	a0,a4,80002a24 <__printf+0x62c>
    800025bc:	02d7f5bb          	remuw	a1,a5,a3
    800025c0:	02059593          	slli	a1,a1,0x20
    800025c4:	0205d593          	srli	a1,a1,0x20
    800025c8:	00bd85b3          	add	a1,s11,a1
    800025cc:	0005c583          	lbu	a1,0(a1)
    800025d0:	02d7d7bb          	divuw	a5,a5,a3
    800025d4:	f8b402a3          	sb	a1,-123(s0)
    800025d8:	46ea7863          	bgeu	s4,a4,80002a48 <__printf+0x650>
    800025dc:	02d7f5bb          	remuw	a1,a5,a3
    800025e0:	02059593          	slli	a1,a1,0x20
    800025e4:	0205d593          	srli	a1,a1,0x20
    800025e8:	00bd85b3          	add	a1,s11,a1
    800025ec:	0005c583          	lbu	a1,0(a1)
    800025f0:	02d7d7bb          	divuw	a5,a5,a3
    800025f4:	f8b40323          	sb	a1,-122(s0)
    800025f8:	3eeaf863          	bgeu	s5,a4,800029e8 <__printf+0x5f0>
    800025fc:	02d7f5bb          	remuw	a1,a5,a3
    80002600:	02059593          	slli	a1,a1,0x20
    80002604:	0205d593          	srli	a1,a1,0x20
    80002608:	00bd85b3          	add	a1,s11,a1
    8000260c:	0005c583          	lbu	a1,0(a1)
    80002610:	02d7d7bb          	divuw	a5,a5,a3
    80002614:	f8b403a3          	sb	a1,-121(s0)
    80002618:	42eb7e63          	bgeu	s6,a4,80002a54 <__printf+0x65c>
    8000261c:	02d7f5bb          	remuw	a1,a5,a3
    80002620:	02059593          	slli	a1,a1,0x20
    80002624:	0205d593          	srli	a1,a1,0x20
    80002628:	00bd85b3          	add	a1,s11,a1
    8000262c:	0005c583          	lbu	a1,0(a1)
    80002630:	02d7d7bb          	divuw	a5,a5,a3
    80002634:	f8b40423          	sb	a1,-120(s0)
    80002638:	42ebfc63          	bgeu	s7,a4,80002a70 <__printf+0x678>
    8000263c:	02079793          	slli	a5,a5,0x20
    80002640:	0207d793          	srli	a5,a5,0x20
    80002644:	00fd8db3          	add	s11,s11,a5
    80002648:	000dc703          	lbu	a4,0(s11)
    8000264c:	00a00793          	li	a5,10
    80002650:	00900c93          	li	s9,9
    80002654:	f8e404a3          	sb	a4,-119(s0)
    80002658:	00065c63          	bgez	a2,80002670 <__printf+0x278>
    8000265c:	f9040713          	addi	a4,s0,-112
    80002660:	00f70733          	add	a4,a4,a5
    80002664:	02d00693          	li	a3,45
    80002668:	fed70823          	sb	a3,-16(a4)
    8000266c:	00078c93          	mv	s9,a5
    80002670:	f8040793          	addi	a5,s0,-128
    80002674:	01978cb3          	add	s9,a5,s9
    80002678:	f7f40d13          	addi	s10,s0,-129
    8000267c:	000cc503          	lbu	a0,0(s9)
    80002680:	fffc8c93          	addi	s9,s9,-1
    80002684:	00000097          	auipc	ra,0x0
    80002688:	b90080e7          	jalr	-1136(ra) # 80002214 <consputc>
    8000268c:	ffac98e3          	bne	s9,s10,8000267c <__printf+0x284>
    80002690:	00094503          	lbu	a0,0(s2)
    80002694:	e00514e3          	bnez	a0,8000249c <__printf+0xa4>
    80002698:	1a0c1663          	bnez	s8,80002844 <__printf+0x44c>
    8000269c:	08813083          	ld	ra,136(sp)
    800026a0:	08013403          	ld	s0,128(sp)
    800026a4:	07813483          	ld	s1,120(sp)
    800026a8:	07013903          	ld	s2,112(sp)
    800026ac:	06813983          	ld	s3,104(sp)
    800026b0:	06013a03          	ld	s4,96(sp)
    800026b4:	05813a83          	ld	s5,88(sp)
    800026b8:	05013b03          	ld	s6,80(sp)
    800026bc:	04813b83          	ld	s7,72(sp)
    800026c0:	04013c03          	ld	s8,64(sp)
    800026c4:	03813c83          	ld	s9,56(sp)
    800026c8:	03013d03          	ld	s10,48(sp)
    800026cc:	02813d83          	ld	s11,40(sp)
    800026d0:	0d010113          	addi	sp,sp,208
    800026d4:	00008067          	ret
    800026d8:	07300713          	li	a4,115
    800026dc:	1ce78a63          	beq	a5,a4,800028b0 <__printf+0x4b8>
    800026e0:	07800713          	li	a4,120
    800026e4:	1ee79e63          	bne	a5,a4,800028e0 <__printf+0x4e8>
    800026e8:	f7843783          	ld	a5,-136(s0)
    800026ec:	0007a703          	lw	a4,0(a5)
    800026f0:	00878793          	addi	a5,a5,8
    800026f4:	f6f43c23          	sd	a5,-136(s0)
    800026f8:	28074263          	bltz	a4,8000297c <__printf+0x584>
    800026fc:	00002d97          	auipc	s11,0x2
    80002700:	a7cd8d93          	addi	s11,s11,-1412 # 80004178 <digits>
    80002704:	00f77793          	andi	a5,a4,15
    80002708:	00fd87b3          	add	a5,s11,a5
    8000270c:	0007c683          	lbu	a3,0(a5)
    80002710:	00f00613          	li	a2,15
    80002714:	0007079b          	sext.w	a5,a4
    80002718:	f8d40023          	sb	a3,-128(s0)
    8000271c:	0047559b          	srliw	a1,a4,0x4
    80002720:	0047569b          	srliw	a3,a4,0x4
    80002724:	00000c93          	li	s9,0
    80002728:	0ee65063          	bge	a2,a4,80002808 <__printf+0x410>
    8000272c:	00f6f693          	andi	a3,a3,15
    80002730:	00dd86b3          	add	a3,s11,a3
    80002734:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80002738:	0087d79b          	srliw	a5,a5,0x8
    8000273c:	00100c93          	li	s9,1
    80002740:	f8d400a3          	sb	a3,-127(s0)
    80002744:	0cb67263          	bgeu	a2,a1,80002808 <__printf+0x410>
    80002748:	00f7f693          	andi	a3,a5,15
    8000274c:	00dd86b3          	add	a3,s11,a3
    80002750:	0006c583          	lbu	a1,0(a3)
    80002754:	00f00613          	li	a2,15
    80002758:	0047d69b          	srliw	a3,a5,0x4
    8000275c:	f8b40123          	sb	a1,-126(s0)
    80002760:	0047d593          	srli	a1,a5,0x4
    80002764:	28f67e63          	bgeu	a2,a5,80002a00 <__printf+0x608>
    80002768:	00f6f693          	andi	a3,a3,15
    8000276c:	00dd86b3          	add	a3,s11,a3
    80002770:	0006c503          	lbu	a0,0(a3)
    80002774:	0087d813          	srli	a6,a5,0x8
    80002778:	0087d69b          	srliw	a3,a5,0x8
    8000277c:	f8a401a3          	sb	a0,-125(s0)
    80002780:	28b67663          	bgeu	a2,a1,80002a0c <__printf+0x614>
    80002784:	00f6f693          	andi	a3,a3,15
    80002788:	00dd86b3          	add	a3,s11,a3
    8000278c:	0006c583          	lbu	a1,0(a3)
    80002790:	00c7d513          	srli	a0,a5,0xc
    80002794:	00c7d69b          	srliw	a3,a5,0xc
    80002798:	f8b40223          	sb	a1,-124(s0)
    8000279c:	29067a63          	bgeu	a2,a6,80002a30 <__printf+0x638>
    800027a0:	00f6f693          	andi	a3,a3,15
    800027a4:	00dd86b3          	add	a3,s11,a3
    800027a8:	0006c583          	lbu	a1,0(a3)
    800027ac:	0107d813          	srli	a6,a5,0x10
    800027b0:	0107d69b          	srliw	a3,a5,0x10
    800027b4:	f8b402a3          	sb	a1,-123(s0)
    800027b8:	28a67263          	bgeu	a2,a0,80002a3c <__printf+0x644>
    800027bc:	00f6f693          	andi	a3,a3,15
    800027c0:	00dd86b3          	add	a3,s11,a3
    800027c4:	0006c683          	lbu	a3,0(a3)
    800027c8:	0147d79b          	srliw	a5,a5,0x14
    800027cc:	f8d40323          	sb	a3,-122(s0)
    800027d0:	21067663          	bgeu	a2,a6,800029dc <__printf+0x5e4>
    800027d4:	02079793          	slli	a5,a5,0x20
    800027d8:	0207d793          	srli	a5,a5,0x20
    800027dc:	00fd8db3          	add	s11,s11,a5
    800027e0:	000dc683          	lbu	a3,0(s11)
    800027e4:	00800793          	li	a5,8
    800027e8:	00700c93          	li	s9,7
    800027ec:	f8d403a3          	sb	a3,-121(s0)
    800027f0:	00075c63          	bgez	a4,80002808 <__printf+0x410>
    800027f4:	f9040713          	addi	a4,s0,-112
    800027f8:	00f70733          	add	a4,a4,a5
    800027fc:	02d00693          	li	a3,45
    80002800:	fed70823          	sb	a3,-16(a4)
    80002804:	00078c93          	mv	s9,a5
    80002808:	f8040793          	addi	a5,s0,-128
    8000280c:	01978cb3          	add	s9,a5,s9
    80002810:	f7f40d13          	addi	s10,s0,-129
    80002814:	000cc503          	lbu	a0,0(s9)
    80002818:	fffc8c93          	addi	s9,s9,-1
    8000281c:	00000097          	auipc	ra,0x0
    80002820:	9f8080e7          	jalr	-1544(ra) # 80002214 <consputc>
    80002824:	ff9d18e3          	bne	s10,s9,80002814 <__printf+0x41c>
    80002828:	0100006f          	j	80002838 <__printf+0x440>
    8000282c:	00000097          	auipc	ra,0x0
    80002830:	9e8080e7          	jalr	-1560(ra) # 80002214 <consputc>
    80002834:	000c8493          	mv	s1,s9
    80002838:	00094503          	lbu	a0,0(s2)
    8000283c:	c60510e3          	bnez	a0,8000249c <__printf+0xa4>
    80002840:	e40c0ee3          	beqz	s8,8000269c <__printf+0x2a4>
    80002844:	00003517          	auipc	a0,0x3
    80002848:	e6c50513          	addi	a0,a0,-404 # 800056b0 <pr>
    8000284c:	00001097          	auipc	ra,0x1
    80002850:	94c080e7          	jalr	-1716(ra) # 80003198 <release>
    80002854:	e49ff06f          	j	8000269c <__printf+0x2a4>
    80002858:	f7843783          	ld	a5,-136(s0)
    8000285c:	03000513          	li	a0,48
    80002860:	01000d13          	li	s10,16
    80002864:	00878713          	addi	a4,a5,8
    80002868:	0007bc83          	ld	s9,0(a5)
    8000286c:	f6e43c23          	sd	a4,-136(s0)
    80002870:	00000097          	auipc	ra,0x0
    80002874:	9a4080e7          	jalr	-1628(ra) # 80002214 <consputc>
    80002878:	07800513          	li	a0,120
    8000287c:	00000097          	auipc	ra,0x0
    80002880:	998080e7          	jalr	-1640(ra) # 80002214 <consputc>
    80002884:	00002d97          	auipc	s11,0x2
    80002888:	8f4d8d93          	addi	s11,s11,-1804 # 80004178 <digits>
    8000288c:	03ccd793          	srli	a5,s9,0x3c
    80002890:	00fd87b3          	add	a5,s11,a5
    80002894:	0007c503          	lbu	a0,0(a5)
    80002898:	fffd0d1b          	addiw	s10,s10,-1
    8000289c:	004c9c93          	slli	s9,s9,0x4
    800028a0:	00000097          	auipc	ra,0x0
    800028a4:	974080e7          	jalr	-1676(ra) # 80002214 <consputc>
    800028a8:	fe0d12e3          	bnez	s10,8000288c <__printf+0x494>
    800028ac:	f8dff06f          	j	80002838 <__printf+0x440>
    800028b0:	f7843783          	ld	a5,-136(s0)
    800028b4:	0007bc83          	ld	s9,0(a5)
    800028b8:	00878793          	addi	a5,a5,8
    800028bc:	f6f43c23          	sd	a5,-136(s0)
    800028c0:	000c9a63          	bnez	s9,800028d4 <__printf+0x4dc>
    800028c4:	1080006f          	j	800029cc <__printf+0x5d4>
    800028c8:	001c8c93          	addi	s9,s9,1
    800028cc:	00000097          	auipc	ra,0x0
    800028d0:	948080e7          	jalr	-1720(ra) # 80002214 <consputc>
    800028d4:	000cc503          	lbu	a0,0(s9)
    800028d8:	fe0518e3          	bnez	a0,800028c8 <__printf+0x4d0>
    800028dc:	f5dff06f          	j	80002838 <__printf+0x440>
    800028e0:	02500513          	li	a0,37
    800028e4:	00000097          	auipc	ra,0x0
    800028e8:	930080e7          	jalr	-1744(ra) # 80002214 <consputc>
    800028ec:	000c8513          	mv	a0,s9
    800028f0:	00000097          	auipc	ra,0x0
    800028f4:	924080e7          	jalr	-1756(ra) # 80002214 <consputc>
    800028f8:	f41ff06f          	j	80002838 <__printf+0x440>
    800028fc:	02500513          	li	a0,37
    80002900:	00000097          	auipc	ra,0x0
    80002904:	914080e7          	jalr	-1772(ra) # 80002214 <consputc>
    80002908:	f31ff06f          	j	80002838 <__printf+0x440>
    8000290c:	00030513          	mv	a0,t1
    80002910:	00000097          	auipc	ra,0x0
    80002914:	7bc080e7          	jalr	1980(ra) # 800030cc <acquire>
    80002918:	b4dff06f          	j	80002464 <__printf+0x6c>
    8000291c:	40c0053b          	negw	a0,a2
    80002920:	00a00713          	li	a4,10
    80002924:	02e576bb          	remuw	a3,a0,a4
    80002928:	00002d97          	auipc	s11,0x2
    8000292c:	850d8d93          	addi	s11,s11,-1968 # 80004178 <digits>
    80002930:	ff700593          	li	a1,-9
    80002934:	02069693          	slli	a3,a3,0x20
    80002938:	0206d693          	srli	a3,a3,0x20
    8000293c:	00dd86b3          	add	a3,s11,a3
    80002940:	0006c683          	lbu	a3,0(a3)
    80002944:	02e557bb          	divuw	a5,a0,a4
    80002948:	f8d40023          	sb	a3,-128(s0)
    8000294c:	10b65e63          	bge	a2,a1,80002a68 <__printf+0x670>
    80002950:	06300593          	li	a1,99
    80002954:	02e7f6bb          	remuw	a3,a5,a4
    80002958:	02069693          	slli	a3,a3,0x20
    8000295c:	0206d693          	srli	a3,a3,0x20
    80002960:	00dd86b3          	add	a3,s11,a3
    80002964:	0006c683          	lbu	a3,0(a3)
    80002968:	02e7d73b          	divuw	a4,a5,a4
    8000296c:	00200793          	li	a5,2
    80002970:	f8d400a3          	sb	a3,-127(s0)
    80002974:	bca5ece3          	bltu	a1,a0,8000254c <__printf+0x154>
    80002978:	ce5ff06f          	j	8000265c <__printf+0x264>
    8000297c:	40e007bb          	negw	a5,a4
    80002980:	00001d97          	auipc	s11,0x1
    80002984:	7f8d8d93          	addi	s11,s11,2040 # 80004178 <digits>
    80002988:	00f7f693          	andi	a3,a5,15
    8000298c:	00dd86b3          	add	a3,s11,a3
    80002990:	0006c583          	lbu	a1,0(a3)
    80002994:	ff100613          	li	a2,-15
    80002998:	0047d69b          	srliw	a3,a5,0x4
    8000299c:	f8b40023          	sb	a1,-128(s0)
    800029a0:	0047d59b          	srliw	a1,a5,0x4
    800029a4:	0ac75e63          	bge	a4,a2,80002a60 <__printf+0x668>
    800029a8:	00f6f693          	andi	a3,a3,15
    800029ac:	00dd86b3          	add	a3,s11,a3
    800029b0:	0006c603          	lbu	a2,0(a3)
    800029b4:	00f00693          	li	a3,15
    800029b8:	0087d79b          	srliw	a5,a5,0x8
    800029bc:	f8c400a3          	sb	a2,-127(s0)
    800029c0:	d8b6e4e3          	bltu	a3,a1,80002748 <__printf+0x350>
    800029c4:	00200793          	li	a5,2
    800029c8:	e2dff06f          	j	800027f4 <__printf+0x3fc>
    800029cc:	00001c97          	auipc	s9,0x1
    800029d0:	78cc8c93          	addi	s9,s9,1932 # 80004158 <CONSOLE_STATUS+0x148>
    800029d4:	02800513          	li	a0,40
    800029d8:	ef1ff06f          	j	800028c8 <__printf+0x4d0>
    800029dc:	00700793          	li	a5,7
    800029e0:	00600c93          	li	s9,6
    800029e4:	e0dff06f          	j	800027f0 <__printf+0x3f8>
    800029e8:	00700793          	li	a5,7
    800029ec:	00600c93          	li	s9,6
    800029f0:	c69ff06f          	j	80002658 <__printf+0x260>
    800029f4:	00300793          	li	a5,3
    800029f8:	00200c93          	li	s9,2
    800029fc:	c5dff06f          	j	80002658 <__printf+0x260>
    80002a00:	00300793          	li	a5,3
    80002a04:	00200c93          	li	s9,2
    80002a08:	de9ff06f          	j	800027f0 <__printf+0x3f8>
    80002a0c:	00400793          	li	a5,4
    80002a10:	00300c93          	li	s9,3
    80002a14:	dddff06f          	j	800027f0 <__printf+0x3f8>
    80002a18:	00400793          	li	a5,4
    80002a1c:	00300c93          	li	s9,3
    80002a20:	c39ff06f          	j	80002658 <__printf+0x260>
    80002a24:	00500793          	li	a5,5
    80002a28:	00400c93          	li	s9,4
    80002a2c:	c2dff06f          	j	80002658 <__printf+0x260>
    80002a30:	00500793          	li	a5,5
    80002a34:	00400c93          	li	s9,4
    80002a38:	db9ff06f          	j	800027f0 <__printf+0x3f8>
    80002a3c:	00600793          	li	a5,6
    80002a40:	00500c93          	li	s9,5
    80002a44:	dadff06f          	j	800027f0 <__printf+0x3f8>
    80002a48:	00600793          	li	a5,6
    80002a4c:	00500c93          	li	s9,5
    80002a50:	c09ff06f          	j	80002658 <__printf+0x260>
    80002a54:	00800793          	li	a5,8
    80002a58:	00700c93          	li	s9,7
    80002a5c:	bfdff06f          	j	80002658 <__printf+0x260>
    80002a60:	00100793          	li	a5,1
    80002a64:	d91ff06f          	j	800027f4 <__printf+0x3fc>
    80002a68:	00100793          	li	a5,1
    80002a6c:	bf1ff06f          	j	8000265c <__printf+0x264>
    80002a70:	00900793          	li	a5,9
    80002a74:	00800c93          	li	s9,8
    80002a78:	be1ff06f          	j	80002658 <__printf+0x260>
    80002a7c:	00001517          	auipc	a0,0x1
    80002a80:	6e450513          	addi	a0,a0,1764 # 80004160 <CONSOLE_STATUS+0x150>
    80002a84:	00000097          	auipc	ra,0x0
    80002a88:	918080e7          	jalr	-1768(ra) # 8000239c <panic>

0000000080002a8c <printfinit>:
    80002a8c:	fe010113          	addi	sp,sp,-32
    80002a90:	00813823          	sd	s0,16(sp)
    80002a94:	00913423          	sd	s1,8(sp)
    80002a98:	00113c23          	sd	ra,24(sp)
    80002a9c:	02010413          	addi	s0,sp,32
    80002aa0:	00003497          	auipc	s1,0x3
    80002aa4:	c1048493          	addi	s1,s1,-1008 # 800056b0 <pr>
    80002aa8:	00048513          	mv	a0,s1
    80002aac:	00001597          	auipc	a1,0x1
    80002ab0:	6c458593          	addi	a1,a1,1732 # 80004170 <CONSOLE_STATUS+0x160>
    80002ab4:	00000097          	auipc	ra,0x0
    80002ab8:	5f4080e7          	jalr	1524(ra) # 800030a8 <initlock>
    80002abc:	01813083          	ld	ra,24(sp)
    80002ac0:	01013403          	ld	s0,16(sp)
    80002ac4:	0004ac23          	sw	zero,24(s1)
    80002ac8:	00813483          	ld	s1,8(sp)
    80002acc:	02010113          	addi	sp,sp,32
    80002ad0:	00008067          	ret

0000000080002ad4 <uartinit>:
    80002ad4:	ff010113          	addi	sp,sp,-16
    80002ad8:	00813423          	sd	s0,8(sp)
    80002adc:	01010413          	addi	s0,sp,16
    80002ae0:	100007b7          	lui	a5,0x10000
    80002ae4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80002ae8:	f8000713          	li	a4,-128
    80002aec:	00e781a3          	sb	a4,3(a5)
    80002af0:	00300713          	li	a4,3
    80002af4:	00e78023          	sb	a4,0(a5)
    80002af8:	000780a3          	sb	zero,1(a5)
    80002afc:	00e781a3          	sb	a4,3(a5)
    80002b00:	00700693          	li	a3,7
    80002b04:	00d78123          	sb	a3,2(a5)
    80002b08:	00e780a3          	sb	a4,1(a5)
    80002b0c:	00813403          	ld	s0,8(sp)
    80002b10:	01010113          	addi	sp,sp,16
    80002b14:	00008067          	ret

0000000080002b18 <uartputc>:
    80002b18:	00002797          	auipc	a5,0x2
    80002b1c:	9407a783          	lw	a5,-1728(a5) # 80004458 <panicked>
    80002b20:	00078463          	beqz	a5,80002b28 <uartputc+0x10>
    80002b24:	0000006f          	j	80002b24 <uartputc+0xc>
    80002b28:	fd010113          	addi	sp,sp,-48
    80002b2c:	02813023          	sd	s0,32(sp)
    80002b30:	00913c23          	sd	s1,24(sp)
    80002b34:	01213823          	sd	s2,16(sp)
    80002b38:	01313423          	sd	s3,8(sp)
    80002b3c:	02113423          	sd	ra,40(sp)
    80002b40:	03010413          	addi	s0,sp,48
    80002b44:	00002917          	auipc	s2,0x2
    80002b48:	91c90913          	addi	s2,s2,-1764 # 80004460 <uart_tx_r>
    80002b4c:	00093783          	ld	a5,0(s2)
    80002b50:	00002497          	auipc	s1,0x2
    80002b54:	91848493          	addi	s1,s1,-1768 # 80004468 <uart_tx_w>
    80002b58:	0004b703          	ld	a4,0(s1)
    80002b5c:	02078693          	addi	a3,a5,32
    80002b60:	00050993          	mv	s3,a0
    80002b64:	02e69c63          	bne	a3,a4,80002b9c <uartputc+0x84>
    80002b68:	00001097          	auipc	ra,0x1
    80002b6c:	834080e7          	jalr	-1996(ra) # 8000339c <push_on>
    80002b70:	00093783          	ld	a5,0(s2)
    80002b74:	0004b703          	ld	a4,0(s1)
    80002b78:	02078793          	addi	a5,a5,32
    80002b7c:	00e79463          	bne	a5,a4,80002b84 <uartputc+0x6c>
    80002b80:	0000006f          	j	80002b80 <uartputc+0x68>
    80002b84:	00001097          	auipc	ra,0x1
    80002b88:	88c080e7          	jalr	-1908(ra) # 80003410 <pop_on>
    80002b8c:	00093783          	ld	a5,0(s2)
    80002b90:	0004b703          	ld	a4,0(s1)
    80002b94:	02078693          	addi	a3,a5,32
    80002b98:	fce688e3          	beq	a3,a4,80002b68 <uartputc+0x50>
    80002b9c:	01f77693          	andi	a3,a4,31
    80002ba0:	00003597          	auipc	a1,0x3
    80002ba4:	b3058593          	addi	a1,a1,-1232 # 800056d0 <uart_tx_buf>
    80002ba8:	00d586b3          	add	a3,a1,a3
    80002bac:	00170713          	addi	a4,a4,1
    80002bb0:	01368023          	sb	s3,0(a3)
    80002bb4:	00e4b023          	sd	a4,0(s1)
    80002bb8:	10000637          	lui	a2,0x10000
    80002bbc:	02f71063          	bne	a4,a5,80002bdc <uartputc+0xc4>
    80002bc0:	0340006f          	j	80002bf4 <uartputc+0xdc>
    80002bc4:	00074703          	lbu	a4,0(a4)
    80002bc8:	00f93023          	sd	a5,0(s2)
    80002bcc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80002bd0:	00093783          	ld	a5,0(s2)
    80002bd4:	0004b703          	ld	a4,0(s1)
    80002bd8:	00f70e63          	beq	a4,a5,80002bf4 <uartputc+0xdc>
    80002bdc:	00564683          	lbu	a3,5(a2)
    80002be0:	01f7f713          	andi	a4,a5,31
    80002be4:	00e58733          	add	a4,a1,a4
    80002be8:	0206f693          	andi	a3,a3,32
    80002bec:	00178793          	addi	a5,a5,1
    80002bf0:	fc069ae3          	bnez	a3,80002bc4 <uartputc+0xac>
    80002bf4:	02813083          	ld	ra,40(sp)
    80002bf8:	02013403          	ld	s0,32(sp)
    80002bfc:	01813483          	ld	s1,24(sp)
    80002c00:	01013903          	ld	s2,16(sp)
    80002c04:	00813983          	ld	s3,8(sp)
    80002c08:	03010113          	addi	sp,sp,48
    80002c0c:	00008067          	ret

0000000080002c10 <uartputc_sync>:
    80002c10:	ff010113          	addi	sp,sp,-16
    80002c14:	00813423          	sd	s0,8(sp)
    80002c18:	01010413          	addi	s0,sp,16
    80002c1c:	00002717          	auipc	a4,0x2
    80002c20:	83c72703          	lw	a4,-1988(a4) # 80004458 <panicked>
    80002c24:	02071663          	bnez	a4,80002c50 <uartputc_sync+0x40>
    80002c28:	00050793          	mv	a5,a0
    80002c2c:	100006b7          	lui	a3,0x10000
    80002c30:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80002c34:	02077713          	andi	a4,a4,32
    80002c38:	fe070ce3          	beqz	a4,80002c30 <uartputc_sync+0x20>
    80002c3c:	0ff7f793          	andi	a5,a5,255
    80002c40:	00f68023          	sb	a5,0(a3)
    80002c44:	00813403          	ld	s0,8(sp)
    80002c48:	01010113          	addi	sp,sp,16
    80002c4c:	00008067          	ret
    80002c50:	0000006f          	j	80002c50 <uartputc_sync+0x40>

0000000080002c54 <uartstart>:
    80002c54:	ff010113          	addi	sp,sp,-16
    80002c58:	00813423          	sd	s0,8(sp)
    80002c5c:	01010413          	addi	s0,sp,16
    80002c60:	00002617          	auipc	a2,0x2
    80002c64:	80060613          	addi	a2,a2,-2048 # 80004460 <uart_tx_r>
    80002c68:	00002517          	auipc	a0,0x2
    80002c6c:	80050513          	addi	a0,a0,-2048 # 80004468 <uart_tx_w>
    80002c70:	00063783          	ld	a5,0(a2)
    80002c74:	00053703          	ld	a4,0(a0)
    80002c78:	04f70263          	beq	a4,a5,80002cbc <uartstart+0x68>
    80002c7c:	100005b7          	lui	a1,0x10000
    80002c80:	00003817          	auipc	a6,0x3
    80002c84:	a5080813          	addi	a6,a6,-1456 # 800056d0 <uart_tx_buf>
    80002c88:	01c0006f          	j	80002ca4 <uartstart+0x50>
    80002c8c:	0006c703          	lbu	a4,0(a3)
    80002c90:	00f63023          	sd	a5,0(a2)
    80002c94:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80002c98:	00063783          	ld	a5,0(a2)
    80002c9c:	00053703          	ld	a4,0(a0)
    80002ca0:	00f70e63          	beq	a4,a5,80002cbc <uartstart+0x68>
    80002ca4:	01f7f713          	andi	a4,a5,31
    80002ca8:	00e806b3          	add	a3,a6,a4
    80002cac:	0055c703          	lbu	a4,5(a1)
    80002cb0:	00178793          	addi	a5,a5,1
    80002cb4:	02077713          	andi	a4,a4,32
    80002cb8:	fc071ae3          	bnez	a4,80002c8c <uartstart+0x38>
    80002cbc:	00813403          	ld	s0,8(sp)
    80002cc0:	01010113          	addi	sp,sp,16
    80002cc4:	00008067          	ret

0000000080002cc8 <uartgetc>:
    80002cc8:	ff010113          	addi	sp,sp,-16
    80002ccc:	00813423          	sd	s0,8(sp)
    80002cd0:	01010413          	addi	s0,sp,16
    80002cd4:	10000737          	lui	a4,0x10000
    80002cd8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80002cdc:	0017f793          	andi	a5,a5,1
    80002ce0:	00078c63          	beqz	a5,80002cf8 <uartgetc+0x30>
    80002ce4:	00074503          	lbu	a0,0(a4)
    80002ce8:	0ff57513          	andi	a0,a0,255
    80002cec:	00813403          	ld	s0,8(sp)
    80002cf0:	01010113          	addi	sp,sp,16
    80002cf4:	00008067          	ret
    80002cf8:	fff00513          	li	a0,-1
    80002cfc:	ff1ff06f          	j	80002cec <uartgetc+0x24>

0000000080002d00 <uartintr>:
    80002d00:	100007b7          	lui	a5,0x10000
    80002d04:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80002d08:	0017f793          	andi	a5,a5,1
    80002d0c:	0a078463          	beqz	a5,80002db4 <uartintr+0xb4>
    80002d10:	fe010113          	addi	sp,sp,-32
    80002d14:	00813823          	sd	s0,16(sp)
    80002d18:	00913423          	sd	s1,8(sp)
    80002d1c:	00113c23          	sd	ra,24(sp)
    80002d20:	02010413          	addi	s0,sp,32
    80002d24:	100004b7          	lui	s1,0x10000
    80002d28:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80002d2c:	0ff57513          	andi	a0,a0,255
    80002d30:	fffff097          	auipc	ra,0xfffff
    80002d34:	534080e7          	jalr	1332(ra) # 80002264 <consoleintr>
    80002d38:	0054c783          	lbu	a5,5(s1)
    80002d3c:	0017f793          	andi	a5,a5,1
    80002d40:	fe0794e3          	bnez	a5,80002d28 <uartintr+0x28>
    80002d44:	00001617          	auipc	a2,0x1
    80002d48:	71c60613          	addi	a2,a2,1820 # 80004460 <uart_tx_r>
    80002d4c:	00001517          	auipc	a0,0x1
    80002d50:	71c50513          	addi	a0,a0,1820 # 80004468 <uart_tx_w>
    80002d54:	00063783          	ld	a5,0(a2)
    80002d58:	00053703          	ld	a4,0(a0)
    80002d5c:	04f70263          	beq	a4,a5,80002da0 <uartintr+0xa0>
    80002d60:	100005b7          	lui	a1,0x10000
    80002d64:	00003817          	auipc	a6,0x3
    80002d68:	96c80813          	addi	a6,a6,-1684 # 800056d0 <uart_tx_buf>
    80002d6c:	01c0006f          	j	80002d88 <uartintr+0x88>
    80002d70:	0006c703          	lbu	a4,0(a3)
    80002d74:	00f63023          	sd	a5,0(a2)
    80002d78:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80002d7c:	00063783          	ld	a5,0(a2)
    80002d80:	00053703          	ld	a4,0(a0)
    80002d84:	00f70e63          	beq	a4,a5,80002da0 <uartintr+0xa0>
    80002d88:	01f7f713          	andi	a4,a5,31
    80002d8c:	00e806b3          	add	a3,a6,a4
    80002d90:	0055c703          	lbu	a4,5(a1)
    80002d94:	00178793          	addi	a5,a5,1
    80002d98:	02077713          	andi	a4,a4,32
    80002d9c:	fc071ae3          	bnez	a4,80002d70 <uartintr+0x70>
    80002da0:	01813083          	ld	ra,24(sp)
    80002da4:	01013403          	ld	s0,16(sp)
    80002da8:	00813483          	ld	s1,8(sp)
    80002dac:	02010113          	addi	sp,sp,32
    80002db0:	00008067          	ret
    80002db4:	00001617          	auipc	a2,0x1
    80002db8:	6ac60613          	addi	a2,a2,1708 # 80004460 <uart_tx_r>
    80002dbc:	00001517          	auipc	a0,0x1
    80002dc0:	6ac50513          	addi	a0,a0,1708 # 80004468 <uart_tx_w>
    80002dc4:	00063783          	ld	a5,0(a2)
    80002dc8:	00053703          	ld	a4,0(a0)
    80002dcc:	04f70263          	beq	a4,a5,80002e10 <uartintr+0x110>
    80002dd0:	100005b7          	lui	a1,0x10000
    80002dd4:	00003817          	auipc	a6,0x3
    80002dd8:	8fc80813          	addi	a6,a6,-1796 # 800056d0 <uart_tx_buf>
    80002ddc:	01c0006f          	j	80002df8 <uartintr+0xf8>
    80002de0:	0006c703          	lbu	a4,0(a3)
    80002de4:	00f63023          	sd	a5,0(a2)
    80002de8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80002dec:	00063783          	ld	a5,0(a2)
    80002df0:	00053703          	ld	a4,0(a0)
    80002df4:	02f70063          	beq	a4,a5,80002e14 <uartintr+0x114>
    80002df8:	01f7f713          	andi	a4,a5,31
    80002dfc:	00e806b3          	add	a3,a6,a4
    80002e00:	0055c703          	lbu	a4,5(a1)
    80002e04:	00178793          	addi	a5,a5,1
    80002e08:	02077713          	andi	a4,a4,32
    80002e0c:	fc071ae3          	bnez	a4,80002de0 <uartintr+0xe0>
    80002e10:	00008067          	ret
    80002e14:	00008067          	ret

0000000080002e18 <kinit>:
    80002e18:	fc010113          	addi	sp,sp,-64
    80002e1c:	02913423          	sd	s1,40(sp)
    80002e20:	fffff7b7          	lui	a5,0xfffff
    80002e24:	00004497          	auipc	s1,0x4
    80002e28:	8cb48493          	addi	s1,s1,-1845 # 800066ef <end+0xfff>
    80002e2c:	02813823          	sd	s0,48(sp)
    80002e30:	01313c23          	sd	s3,24(sp)
    80002e34:	00f4f4b3          	and	s1,s1,a5
    80002e38:	02113c23          	sd	ra,56(sp)
    80002e3c:	03213023          	sd	s2,32(sp)
    80002e40:	01413823          	sd	s4,16(sp)
    80002e44:	01513423          	sd	s5,8(sp)
    80002e48:	04010413          	addi	s0,sp,64
    80002e4c:	000017b7          	lui	a5,0x1
    80002e50:	01100993          	li	s3,17
    80002e54:	00f487b3          	add	a5,s1,a5
    80002e58:	01b99993          	slli	s3,s3,0x1b
    80002e5c:	06f9e063          	bltu	s3,a5,80002ebc <kinit+0xa4>
    80002e60:	00003a97          	auipc	s5,0x3
    80002e64:	890a8a93          	addi	s5,s5,-1904 # 800056f0 <end>
    80002e68:	0754ec63          	bltu	s1,s5,80002ee0 <kinit+0xc8>
    80002e6c:	0734fa63          	bgeu	s1,s3,80002ee0 <kinit+0xc8>
    80002e70:	00088a37          	lui	s4,0x88
    80002e74:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80002e78:	00001917          	auipc	s2,0x1
    80002e7c:	5f890913          	addi	s2,s2,1528 # 80004470 <kmem>
    80002e80:	00ca1a13          	slli	s4,s4,0xc
    80002e84:	0140006f          	j	80002e98 <kinit+0x80>
    80002e88:	000017b7          	lui	a5,0x1
    80002e8c:	00f484b3          	add	s1,s1,a5
    80002e90:	0554e863          	bltu	s1,s5,80002ee0 <kinit+0xc8>
    80002e94:	0534f663          	bgeu	s1,s3,80002ee0 <kinit+0xc8>
    80002e98:	00001637          	lui	a2,0x1
    80002e9c:	00100593          	li	a1,1
    80002ea0:	00048513          	mv	a0,s1
    80002ea4:	00000097          	auipc	ra,0x0
    80002ea8:	5e4080e7          	jalr	1508(ra) # 80003488 <__memset>
    80002eac:	00093783          	ld	a5,0(s2)
    80002eb0:	00f4b023          	sd	a5,0(s1)
    80002eb4:	00993023          	sd	s1,0(s2)
    80002eb8:	fd4498e3          	bne	s1,s4,80002e88 <kinit+0x70>
    80002ebc:	03813083          	ld	ra,56(sp)
    80002ec0:	03013403          	ld	s0,48(sp)
    80002ec4:	02813483          	ld	s1,40(sp)
    80002ec8:	02013903          	ld	s2,32(sp)
    80002ecc:	01813983          	ld	s3,24(sp)
    80002ed0:	01013a03          	ld	s4,16(sp)
    80002ed4:	00813a83          	ld	s5,8(sp)
    80002ed8:	04010113          	addi	sp,sp,64
    80002edc:	00008067          	ret
    80002ee0:	00001517          	auipc	a0,0x1
    80002ee4:	2b050513          	addi	a0,a0,688 # 80004190 <digits+0x18>
    80002ee8:	fffff097          	auipc	ra,0xfffff
    80002eec:	4b4080e7          	jalr	1204(ra) # 8000239c <panic>

0000000080002ef0 <freerange>:
    80002ef0:	fc010113          	addi	sp,sp,-64
    80002ef4:	000017b7          	lui	a5,0x1
    80002ef8:	02913423          	sd	s1,40(sp)
    80002efc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80002f00:	009504b3          	add	s1,a0,s1
    80002f04:	fffff537          	lui	a0,0xfffff
    80002f08:	02813823          	sd	s0,48(sp)
    80002f0c:	02113c23          	sd	ra,56(sp)
    80002f10:	03213023          	sd	s2,32(sp)
    80002f14:	01313c23          	sd	s3,24(sp)
    80002f18:	01413823          	sd	s4,16(sp)
    80002f1c:	01513423          	sd	s5,8(sp)
    80002f20:	01613023          	sd	s6,0(sp)
    80002f24:	04010413          	addi	s0,sp,64
    80002f28:	00a4f4b3          	and	s1,s1,a0
    80002f2c:	00f487b3          	add	a5,s1,a5
    80002f30:	06f5e463          	bltu	a1,a5,80002f98 <freerange+0xa8>
    80002f34:	00002a97          	auipc	s5,0x2
    80002f38:	7bca8a93          	addi	s5,s5,1980 # 800056f0 <end>
    80002f3c:	0954e263          	bltu	s1,s5,80002fc0 <freerange+0xd0>
    80002f40:	01100993          	li	s3,17
    80002f44:	01b99993          	slli	s3,s3,0x1b
    80002f48:	0734fc63          	bgeu	s1,s3,80002fc0 <freerange+0xd0>
    80002f4c:	00058a13          	mv	s4,a1
    80002f50:	00001917          	auipc	s2,0x1
    80002f54:	52090913          	addi	s2,s2,1312 # 80004470 <kmem>
    80002f58:	00002b37          	lui	s6,0x2
    80002f5c:	0140006f          	j	80002f70 <freerange+0x80>
    80002f60:	000017b7          	lui	a5,0x1
    80002f64:	00f484b3          	add	s1,s1,a5
    80002f68:	0554ec63          	bltu	s1,s5,80002fc0 <freerange+0xd0>
    80002f6c:	0534fa63          	bgeu	s1,s3,80002fc0 <freerange+0xd0>
    80002f70:	00001637          	lui	a2,0x1
    80002f74:	00100593          	li	a1,1
    80002f78:	00048513          	mv	a0,s1
    80002f7c:	00000097          	auipc	ra,0x0
    80002f80:	50c080e7          	jalr	1292(ra) # 80003488 <__memset>
    80002f84:	00093703          	ld	a4,0(s2)
    80002f88:	016487b3          	add	a5,s1,s6
    80002f8c:	00e4b023          	sd	a4,0(s1)
    80002f90:	00993023          	sd	s1,0(s2)
    80002f94:	fcfa76e3          	bgeu	s4,a5,80002f60 <freerange+0x70>
    80002f98:	03813083          	ld	ra,56(sp)
    80002f9c:	03013403          	ld	s0,48(sp)
    80002fa0:	02813483          	ld	s1,40(sp)
    80002fa4:	02013903          	ld	s2,32(sp)
    80002fa8:	01813983          	ld	s3,24(sp)
    80002fac:	01013a03          	ld	s4,16(sp)
    80002fb0:	00813a83          	ld	s5,8(sp)
    80002fb4:	00013b03          	ld	s6,0(sp)
    80002fb8:	04010113          	addi	sp,sp,64
    80002fbc:	00008067          	ret
    80002fc0:	00001517          	auipc	a0,0x1
    80002fc4:	1d050513          	addi	a0,a0,464 # 80004190 <digits+0x18>
    80002fc8:	fffff097          	auipc	ra,0xfffff
    80002fcc:	3d4080e7          	jalr	980(ra) # 8000239c <panic>

0000000080002fd0 <kfree>:
    80002fd0:	fe010113          	addi	sp,sp,-32
    80002fd4:	00813823          	sd	s0,16(sp)
    80002fd8:	00113c23          	sd	ra,24(sp)
    80002fdc:	00913423          	sd	s1,8(sp)
    80002fe0:	02010413          	addi	s0,sp,32
    80002fe4:	03451793          	slli	a5,a0,0x34
    80002fe8:	04079c63          	bnez	a5,80003040 <kfree+0x70>
    80002fec:	00002797          	auipc	a5,0x2
    80002ff0:	70478793          	addi	a5,a5,1796 # 800056f0 <end>
    80002ff4:	00050493          	mv	s1,a0
    80002ff8:	04f56463          	bltu	a0,a5,80003040 <kfree+0x70>
    80002ffc:	01100793          	li	a5,17
    80003000:	01b79793          	slli	a5,a5,0x1b
    80003004:	02f57e63          	bgeu	a0,a5,80003040 <kfree+0x70>
    80003008:	00001637          	lui	a2,0x1
    8000300c:	00100593          	li	a1,1
    80003010:	00000097          	auipc	ra,0x0
    80003014:	478080e7          	jalr	1144(ra) # 80003488 <__memset>
    80003018:	00001797          	auipc	a5,0x1
    8000301c:	45878793          	addi	a5,a5,1112 # 80004470 <kmem>
    80003020:	0007b703          	ld	a4,0(a5)
    80003024:	01813083          	ld	ra,24(sp)
    80003028:	01013403          	ld	s0,16(sp)
    8000302c:	00e4b023          	sd	a4,0(s1)
    80003030:	0097b023          	sd	s1,0(a5)
    80003034:	00813483          	ld	s1,8(sp)
    80003038:	02010113          	addi	sp,sp,32
    8000303c:	00008067          	ret
    80003040:	00001517          	auipc	a0,0x1
    80003044:	15050513          	addi	a0,a0,336 # 80004190 <digits+0x18>
    80003048:	fffff097          	auipc	ra,0xfffff
    8000304c:	354080e7          	jalr	852(ra) # 8000239c <panic>

0000000080003050 <kalloc>:
    80003050:	fe010113          	addi	sp,sp,-32
    80003054:	00813823          	sd	s0,16(sp)
    80003058:	00913423          	sd	s1,8(sp)
    8000305c:	00113c23          	sd	ra,24(sp)
    80003060:	02010413          	addi	s0,sp,32
    80003064:	00001797          	auipc	a5,0x1
    80003068:	40c78793          	addi	a5,a5,1036 # 80004470 <kmem>
    8000306c:	0007b483          	ld	s1,0(a5)
    80003070:	02048063          	beqz	s1,80003090 <kalloc+0x40>
    80003074:	0004b703          	ld	a4,0(s1)
    80003078:	00001637          	lui	a2,0x1
    8000307c:	00500593          	li	a1,5
    80003080:	00048513          	mv	a0,s1
    80003084:	00e7b023          	sd	a4,0(a5)
    80003088:	00000097          	auipc	ra,0x0
    8000308c:	400080e7          	jalr	1024(ra) # 80003488 <__memset>
    80003090:	01813083          	ld	ra,24(sp)
    80003094:	01013403          	ld	s0,16(sp)
    80003098:	00048513          	mv	a0,s1
    8000309c:	00813483          	ld	s1,8(sp)
    800030a0:	02010113          	addi	sp,sp,32
    800030a4:	00008067          	ret

00000000800030a8 <initlock>:
    800030a8:	ff010113          	addi	sp,sp,-16
    800030ac:	00813423          	sd	s0,8(sp)
    800030b0:	01010413          	addi	s0,sp,16
    800030b4:	00813403          	ld	s0,8(sp)
    800030b8:	00b53423          	sd	a1,8(a0)
    800030bc:	00052023          	sw	zero,0(a0)
    800030c0:	00053823          	sd	zero,16(a0)
    800030c4:	01010113          	addi	sp,sp,16
    800030c8:	00008067          	ret

00000000800030cc <acquire>:
    800030cc:	fe010113          	addi	sp,sp,-32
    800030d0:	00813823          	sd	s0,16(sp)
    800030d4:	00913423          	sd	s1,8(sp)
    800030d8:	00113c23          	sd	ra,24(sp)
    800030dc:	01213023          	sd	s2,0(sp)
    800030e0:	02010413          	addi	s0,sp,32
    800030e4:	00050493          	mv	s1,a0
    800030e8:	10002973          	csrr	s2,sstatus
    800030ec:	100027f3          	csrr	a5,sstatus
    800030f0:	ffd7f793          	andi	a5,a5,-3
    800030f4:	10079073          	csrw	sstatus,a5
    800030f8:	fffff097          	auipc	ra,0xfffff
    800030fc:	8ec080e7          	jalr	-1812(ra) # 800019e4 <mycpu>
    80003100:	07852783          	lw	a5,120(a0)
    80003104:	06078e63          	beqz	a5,80003180 <acquire+0xb4>
    80003108:	fffff097          	auipc	ra,0xfffff
    8000310c:	8dc080e7          	jalr	-1828(ra) # 800019e4 <mycpu>
    80003110:	07852783          	lw	a5,120(a0)
    80003114:	0004a703          	lw	a4,0(s1)
    80003118:	0017879b          	addiw	a5,a5,1
    8000311c:	06f52c23          	sw	a5,120(a0)
    80003120:	04071063          	bnez	a4,80003160 <acquire+0x94>
    80003124:	00100713          	li	a4,1
    80003128:	00070793          	mv	a5,a4
    8000312c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80003130:	0007879b          	sext.w	a5,a5
    80003134:	fe079ae3          	bnez	a5,80003128 <acquire+0x5c>
    80003138:	0ff0000f          	fence
    8000313c:	fffff097          	auipc	ra,0xfffff
    80003140:	8a8080e7          	jalr	-1880(ra) # 800019e4 <mycpu>
    80003144:	01813083          	ld	ra,24(sp)
    80003148:	01013403          	ld	s0,16(sp)
    8000314c:	00a4b823          	sd	a0,16(s1)
    80003150:	00013903          	ld	s2,0(sp)
    80003154:	00813483          	ld	s1,8(sp)
    80003158:	02010113          	addi	sp,sp,32
    8000315c:	00008067          	ret
    80003160:	0104b903          	ld	s2,16(s1)
    80003164:	fffff097          	auipc	ra,0xfffff
    80003168:	880080e7          	jalr	-1920(ra) # 800019e4 <mycpu>
    8000316c:	faa91ce3          	bne	s2,a0,80003124 <acquire+0x58>
    80003170:	00001517          	auipc	a0,0x1
    80003174:	02850513          	addi	a0,a0,40 # 80004198 <digits+0x20>
    80003178:	fffff097          	auipc	ra,0xfffff
    8000317c:	224080e7          	jalr	548(ra) # 8000239c <panic>
    80003180:	00195913          	srli	s2,s2,0x1
    80003184:	fffff097          	auipc	ra,0xfffff
    80003188:	860080e7          	jalr	-1952(ra) # 800019e4 <mycpu>
    8000318c:	00197913          	andi	s2,s2,1
    80003190:	07252e23          	sw	s2,124(a0)
    80003194:	f75ff06f          	j	80003108 <acquire+0x3c>

0000000080003198 <release>:
    80003198:	fe010113          	addi	sp,sp,-32
    8000319c:	00813823          	sd	s0,16(sp)
    800031a0:	00113c23          	sd	ra,24(sp)
    800031a4:	00913423          	sd	s1,8(sp)
    800031a8:	01213023          	sd	s2,0(sp)
    800031ac:	02010413          	addi	s0,sp,32
    800031b0:	00052783          	lw	a5,0(a0)
    800031b4:	00079a63          	bnez	a5,800031c8 <release+0x30>
    800031b8:	00001517          	auipc	a0,0x1
    800031bc:	fe850513          	addi	a0,a0,-24 # 800041a0 <digits+0x28>
    800031c0:	fffff097          	auipc	ra,0xfffff
    800031c4:	1dc080e7          	jalr	476(ra) # 8000239c <panic>
    800031c8:	01053903          	ld	s2,16(a0)
    800031cc:	00050493          	mv	s1,a0
    800031d0:	fffff097          	auipc	ra,0xfffff
    800031d4:	814080e7          	jalr	-2028(ra) # 800019e4 <mycpu>
    800031d8:	fea910e3          	bne	s2,a0,800031b8 <release+0x20>
    800031dc:	0004b823          	sd	zero,16(s1)
    800031e0:	0ff0000f          	fence
    800031e4:	0f50000f          	fence	iorw,ow
    800031e8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800031ec:	ffffe097          	auipc	ra,0xffffe
    800031f0:	7f8080e7          	jalr	2040(ra) # 800019e4 <mycpu>
    800031f4:	100027f3          	csrr	a5,sstatus
    800031f8:	0027f793          	andi	a5,a5,2
    800031fc:	04079a63          	bnez	a5,80003250 <release+0xb8>
    80003200:	07852783          	lw	a5,120(a0)
    80003204:	02f05e63          	blez	a5,80003240 <release+0xa8>
    80003208:	fff7871b          	addiw	a4,a5,-1
    8000320c:	06e52c23          	sw	a4,120(a0)
    80003210:	00071c63          	bnez	a4,80003228 <release+0x90>
    80003214:	07c52783          	lw	a5,124(a0)
    80003218:	00078863          	beqz	a5,80003228 <release+0x90>
    8000321c:	100027f3          	csrr	a5,sstatus
    80003220:	0027e793          	ori	a5,a5,2
    80003224:	10079073          	csrw	sstatus,a5
    80003228:	01813083          	ld	ra,24(sp)
    8000322c:	01013403          	ld	s0,16(sp)
    80003230:	00813483          	ld	s1,8(sp)
    80003234:	00013903          	ld	s2,0(sp)
    80003238:	02010113          	addi	sp,sp,32
    8000323c:	00008067          	ret
    80003240:	00001517          	auipc	a0,0x1
    80003244:	f8050513          	addi	a0,a0,-128 # 800041c0 <digits+0x48>
    80003248:	fffff097          	auipc	ra,0xfffff
    8000324c:	154080e7          	jalr	340(ra) # 8000239c <panic>
    80003250:	00001517          	auipc	a0,0x1
    80003254:	f5850513          	addi	a0,a0,-168 # 800041a8 <digits+0x30>
    80003258:	fffff097          	auipc	ra,0xfffff
    8000325c:	144080e7          	jalr	324(ra) # 8000239c <panic>

0000000080003260 <holding>:
    80003260:	00052783          	lw	a5,0(a0)
    80003264:	00079663          	bnez	a5,80003270 <holding+0x10>
    80003268:	00000513          	li	a0,0
    8000326c:	00008067          	ret
    80003270:	fe010113          	addi	sp,sp,-32
    80003274:	00813823          	sd	s0,16(sp)
    80003278:	00913423          	sd	s1,8(sp)
    8000327c:	00113c23          	sd	ra,24(sp)
    80003280:	02010413          	addi	s0,sp,32
    80003284:	01053483          	ld	s1,16(a0)
    80003288:	ffffe097          	auipc	ra,0xffffe
    8000328c:	75c080e7          	jalr	1884(ra) # 800019e4 <mycpu>
    80003290:	01813083          	ld	ra,24(sp)
    80003294:	01013403          	ld	s0,16(sp)
    80003298:	40a48533          	sub	a0,s1,a0
    8000329c:	00153513          	seqz	a0,a0
    800032a0:	00813483          	ld	s1,8(sp)
    800032a4:	02010113          	addi	sp,sp,32
    800032a8:	00008067          	ret

00000000800032ac <push_off>:
    800032ac:	fe010113          	addi	sp,sp,-32
    800032b0:	00813823          	sd	s0,16(sp)
    800032b4:	00113c23          	sd	ra,24(sp)
    800032b8:	00913423          	sd	s1,8(sp)
    800032bc:	02010413          	addi	s0,sp,32
    800032c0:	100024f3          	csrr	s1,sstatus
    800032c4:	100027f3          	csrr	a5,sstatus
    800032c8:	ffd7f793          	andi	a5,a5,-3
    800032cc:	10079073          	csrw	sstatus,a5
    800032d0:	ffffe097          	auipc	ra,0xffffe
    800032d4:	714080e7          	jalr	1812(ra) # 800019e4 <mycpu>
    800032d8:	07852783          	lw	a5,120(a0)
    800032dc:	02078663          	beqz	a5,80003308 <push_off+0x5c>
    800032e0:	ffffe097          	auipc	ra,0xffffe
    800032e4:	704080e7          	jalr	1796(ra) # 800019e4 <mycpu>
    800032e8:	07852783          	lw	a5,120(a0)
    800032ec:	01813083          	ld	ra,24(sp)
    800032f0:	01013403          	ld	s0,16(sp)
    800032f4:	0017879b          	addiw	a5,a5,1
    800032f8:	06f52c23          	sw	a5,120(a0)
    800032fc:	00813483          	ld	s1,8(sp)
    80003300:	02010113          	addi	sp,sp,32
    80003304:	00008067          	ret
    80003308:	0014d493          	srli	s1,s1,0x1
    8000330c:	ffffe097          	auipc	ra,0xffffe
    80003310:	6d8080e7          	jalr	1752(ra) # 800019e4 <mycpu>
    80003314:	0014f493          	andi	s1,s1,1
    80003318:	06952e23          	sw	s1,124(a0)
    8000331c:	fc5ff06f          	j	800032e0 <push_off+0x34>

0000000080003320 <pop_off>:
    80003320:	ff010113          	addi	sp,sp,-16
    80003324:	00813023          	sd	s0,0(sp)
    80003328:	00113423          	sd	ra,8(sp)
    8000332c:	01010413          	addi	s0,sp,16
    80003330:	ffffe097          	auipc	ra,0xffffe
    80003334:	6b4080e7          	jalr	1716(ra) # 800019e4 <mycpu>
    80003338:	100027f3          	csrr	a5,sstatus
    8000333c:	0027f793          	andi	a5,a5,2
    80003340:	04079663          	bnez	a5,8000338c <pop_off+0x6c>
    80003344:	07852783          	lw	a5,120(a0)
    80003348:	02f05a63          	blez	a5,8000337c <pop_off+0x5c>
    8000334c:	fff7871b          	addiw	a4,a5,-1
    80003350:	06e52c23          	sw	a4,120(a0)
    80003354:	00071c63          	bnez	a4,8000336c <pop_off+0x4c>
    80003358:	07c52783          	lw	a5,124(a0)
    8000335c:	00078863          	beqz	a5,8000336c <pop_off+0x4c>
    80003360:	100027f3          	csrr	a5,sstatus
    80003364:	0027e793          	ori	a5,a5,2
    80003368:	10079073          	csrw	sstatus,a5
    8000336c:	00813083          	ld	ra,8(sp)
    80003370:	00013403          	ld	s0,0(sp)
    80003374:	01010113          	addi	sp,sp,16
    80003378:	00008067          	ret
    8000337c:	00001517          	auipc	a0,0x1
    80003380:	e4450513          	addi	a0,a0,-444 # 800041c0 <digits+0x48>
    80003384:	fffff097          	auipc	ra,0xfffff
    80003388:	018080e7          	jalr	24(ra) # 8000239c <panic>
    8000338c:	00001517          	auipc	a0,0x1
    80003390:	e1c50513          	addi	a0,a0,-484 # 800041a8 <digits+0x30>
    80003394:	fffff097          	auipc	ra,0xfffff
    80003398:	008080e7          	jalr	8(ra) # 8000239c <panic>

000000008000339c <push_on>:
    8000339c:	fe010113          	addi	sp,sp,-32
    800033a0:	00813823          	sd	s0,16(sp)
    800033a4:	00113c23          	sd	ra,24(sp)
    800033a8:	00913423          	sd	s1,8(sp)
    800033ac:	02010413          	addi	s0,sp,32
    800033b0:	100024f3          	csrr	s1,sstatus
    800033b4:	100027f3          	csrr	a5,sstatus
    800033b8:	0027e793          	ori	a5,a5,2
    800033bc:	10079073          	csrw	sstatus,a5
    800033c0:	ffffe097          	auipc	ra,0xffffe
    800033c4:	624080e7          	jalr	1572(ra) # 800019e4 <mycpu>
    800033c8:	07852783          	lw	a5,120(a0)
    800033cc:	02078663          	beqz	a5,800033f8 <push_on+0x5c>
    800033d0:	ffffe097          	auipc	ra,0xffffe
    800033d4:	614080e7          	jalr	1556(ra) # 800019e4 <mycpu>
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
    80003400:	5e8080e7          	jalr	1512(ra) # 800019e4 <mycpu>
    80003404:	0014f493          	andi	s1,s1,1
    80003408:	06952e23          	sw	s1,124(a0)
    8000340c:	fc5ff06f          	j	800033d0 <push_on+0x34>

0000000080003410 <pop_on>:
    80003410:	ff010113          	addi	sp,sp,-16
    80003414:	00813023          	sd	s0,0(sp)
    80003418:	00113423          	sd	ra,8(sp)
    8000341c:	01010413          	addi	s0,sp,16
    80003420:	ffffe097          	auipc	ra,0xffffe
    80003424:	5c4080e7          	jalr	1476(ra) # 800019e4 <mycpu>
    80003428:	100027f3          	csrr	a5,sstatus
    8000342c:	0027f793          	andi	a5,a5,2
    80003430:	04078463          	beqz	a5,80003478 <pop_on+0x68>
    80003434:	07852783          	lw	a5,120(a0)
    80003438:	02f05863          	blez	a5,80003468 <pop_on+0x58>
    8000343c:	fff7879b          	addiw	a5,a5,-1
    80003440:	06f52c23          	sw	a5,120(a0)
    80003444:	07853783          	ld	a5,120(a0)
    80003448:	00079863          	bnez	a5,80003458 <pop_on+0x48>
    8000344c:	100027f3          	csrr	a5,sstatus
    80003450:	ffd7f793          	andi	a5,a5,-3
    80003454:	10079073          	csrw	sstatus,a5
    80003458:	00813083          	ld	ra,8(sp)
    8000345c:	00013403          	ld	s0,0(sp)
    80003460:	01010113          	addi	sp,sp,16
    80003464:	00008067          	ret
    80003468:	00001517          	auipc	a0,0x1
    8000346c:	d8050513          	addi	a0,a0,-640 # 800041e8 <digits+0x70>
    80003470:	fffff097          	auipc	ra,0xfffff
    80003474:	f2c080e7          	jalr	-212(ra) # 8000239c <panic>
    80003478:	00001517          	auipc	a0,0x1
    8000347c:	d5050513          	addi	a0,a0,-688 # 800041c8 <digits+0x50>
    80003480:	fffff097          	auipc	ra,0xfffff
    80003484:	f1c080e7          	jalr	-228(ra) # 8000239c <panic>

0000000080003488 <__memset>:
    80003488:	ff010113          	addi	sp,sp,-16
    8000348c:	00813423          	sd	s0,8(sp)
    80003490:	01010413          	addi	s0,sp,16
    80003494:	1a060e63          	beqz	a2,80003650 <__memset+0x1c8>
    80003498:	40a007b3          	neg	a5,a0
    8000349c:	0077f793          	andi	a5,a5,7
    800034a0:	00778693          	addi	a3,a5,7
    800034a4:	00b00813          	li	a6,11
    800034a8:	0ff5f593          	andi	a1,a1,255
    800034ac:	fff6071b          	addiw	a4,a2,-1
    800034b0:	1b06e663          	bltu	a3,a6,8000365c <__memset+0x1d4>
    800034b4:	1cd76463          	bltu	a4,a3,8000367c <__memset+0x1f4>
    800034b8:	1a078e63          	beqz	a5,80003674 <__memset+0x1ec>
    800034bc:	00b50023          	sb	a1,0(a0)
    800034c0:	00100713          	li	a4,1
    800034c4:	1ae78463          	beq	a5,a4,8000366c <__memset+0x1e4>
    800034c8:	00b500a3          	sb	a1,1(a0)
    800034cc:	00200713          	li	a4,2
    800034d0:	1ae78a63          	beq	a5,a4,80003684 <__memset+0x1fc>
    800034d4:	00b50123          	sb	a1,2(a0)
    800034d8:	00300713          	li	a4,3
    800034dc:	18e78463          	beq	a5,a4,80003664 <__memset+0x1dc>
    800034e0:	00b501a3          	sb	a1,3(a0)
    800034e4:	00400713          	li	a4,4
    800034e8:	1ae78263          	beq	a5,a4,8000368c <__memset+0x204>
    800034ec:	00b50223          	sb	a1,4(a0)
    800034f0:	00500713          	li	a4,5
    800034f4:	1ae78063          	beq	a5,a4,80003694 <__memset+0x20c>
    800034f8:	00b502a3          	sb	a1,5(a0)
    800034fc:	00700713          	li	a4,7
    80003500:	18e79e63          	bne	a5,a4,8000369c <__memset+0x214>
    80003504:	00b50323          	sb	a1,6(a0)
    80003508:	00700e93          	li	t4,7
    8000350c:	00859713          	slli	a4,a1,0x8
    80003510:	00e5e733          	or	a4,a1,a4
    80003514:	01059e13          	slli	t3,a1,0x10
    80003518:	01c76e33          	or	t3,a4,t3
    8000351c:	01859313          	slli	t1,a1,0x18
    80003520:	006e6333          	or	t1,t3,t1
    80003524:	02059893          	slli	a7,a1,0x20
    80003528:	40f60e3b          	subw	t3,a2,a5
    8000352c:	011368b3          	or	a7,t1,a7
    80003530:	02859813          	slli	a6,a1,0x28
    80003534:	0108e833          	or	a6,a7,a6
    80003538:	03059693          	slli	a3,a1,0x30
    8000353c:	003e589b          	srliw	a7,t3,0x3
    80003540:	00d866b3          	or	a3,a6,a3
    80003544:	03859713          	slli	a4,a1,0x38
    80003548:	00389813          	slli	a6,a7,0x3
    8000354c:	00f507b3          	add	a5,a0,a5
    80003550:	00e6e733          	or	a4,a3,a4
    80003554:	000e089b          	sext.w	a7,t3
    80003558:	00f806b3          	add	a3,a6,a5
    8000355c:	00e7b023          	sd	a4,0(a5)
    80003560:	00878793          	addi	a5,a5,8
    80003564:	fed79ce3          	bne	a5,a3,8000355c <__memset+0xd4>
    80003568:	ff8e7793          	andi	a5,t3,-8
    8000356c:	0007871b          	sext.w	a4,a5
    80003570:	01d787bb          	addw	a5,a5,t4
    80003574:	0ce88e63          	beq	a7,a4,80003650 <__memset+0x1c8>
    80003578:	00f50733          	add	a4,a0,a5
    8000357c:	00b70023          	sb	a1,0(a4)
    80003580:	0017871b          	addiw	a4,a5,1
    80003584:	0cc77663          	bgeu	a4,a2,80003650 <__memset+0x1c8>
    80003588:	00e50733          	add	a4,a0,a4
    8000358c:	00b70023          	sb	a1,0(a4)
    80003590:	0027871b          	addiw	a4,a5,2
    80003594:	0ac77e63          	bgeu	a4,a2,80003650 <__memset+0x1c8>
    80003598:	00e50733          	add	a4,a0,a4
    8000359c:	00b70023          	sb	a1,0(a4)
    800035a0:	0037871b          	addiw	a4,a5,3
    800035a4:	0ac77663          	bgeu	a4,a2,80003650 <__memset+0x1c8>
    800035a8:	00e50733          	add	a4,a0,a4
    800035ac:	00b70023          	sb	a1,0(a4)
    800035b0:	0047871b          	addiw	a4,a5,4
    800035b4:	08c77e63          	bgeu	a4,a2,80003650 <__memset+0x1c8>
    800035b8:	00e50733          	add	a4,a0,a4
    800035bc:	00b70023          	sb	a1,0(a4)
    800035c0:	0057871b          	addiw	a4,a5,5
    800035c4:	08c77663          	bgeu	a4,a2,80003650 <__memset+0x1c8>
    800035c8:	00e50733          	add	a4,a0,a4
    800035cc:	00b70023          	sb	a1,0(a4)
    800035d0:	0067871b          	addiw	a4,a5,6
    800035d4:	06c77e63          	bgeu	a4,a2,80003650 <__memset+0x1c8>
    800035d8:	00e50733          	add	a4,a0,a4
    800035dc:	00b70023          	sb	a1,0(a4)
    800035e0:	0077871b          	addiw	a4,a5,7
    800035e4:	06c77663          	bgeu	a4,a2,80003650 <__memset+0x1c8>
    800035e8:	00e50733          	add	a4,a0,a4
    800035ec:	00b70023          	sb	a1,0(a4)
    800035f0:	0087871b          	addiw	a4,a5,8
    800035f4:	04c77e63          	bgeu	a4,a2,80003650 <__memset+0x1c8>
    800035f8:	00e50733          	add	a4,a0,a4
    800035fc:	00b70023          	sb	a1,0(a4)
    80003600:	0097871b          	addiw	a4,a5,9
    80003604:	04c77663          	bgeu	a4,a2,80003650 <__memset+0x1c8>
    80003608:	00e50733          	add	a4,a0,a4
    8000360c:	00b70023          	sb	a1,0(a4)
    80003610:	00a7871b          	addiw	a4,a5,10
    80003614:	02c77e63          	bgeu	a4,a2,80003650 <__memset+0x1c8>
    80003618:	00e50733          	add	a4,a0,a4
    8000361c:	00b70023          	sb	a1,0(a4)
    80003620:	00b7871b          	addiw	a4,a5,11
    80003624:	02c77663          	bgeu	a4,a2,80003650 <__memset+0x1c8>
    80003628:	00e50733          	add	a4,a0,a4
    8000362c:	00b70023          	sb	a1,0(a4)
    80003630:	00c7871b          	addiw	a4,a5,12
    80003634:	00c77e63          	bgeu	a4,a2,80003650 <__memset+0x1c8>
    80003638:	00e50733          	add	a4,a0,a4
    8000363c:	00b70023          	sb	a1,0(a4)
    80003640:	00d7879b          	addiw	a5,a5,13
    80003644:	00c7f663          	bgeu	a5,a2,80003650 <__memset+0x1c8>
    80003648:	00f507b3          	add	a5,a0,a5
    8000364c:	00b78023          	sb	a1,0(a5)
    80003650:	00813403          	ld	s0,8(sp)
    80003654:	01010113          	addi	sp,sp,16
    80003658:	00008067          	ret
    8000365c:	00b00693          	li	a3,11
    80003660:	e55ff06f          	j	800034b4 <__memset+0x2c>
    80003664:	00300e93          	li	t4,3
    80003668:	ea5ff06f          	j	8000350c <__memset+0x84>
    8000366c:	00100e93          	li	t4,1
    80003670:	e9dff06f          	j	8000350c <__memset+0x84>
    80003674:	00000e93          	li	t4,0
    80003678:	e95ff06f          	j	8000350c <__memset+0x84>
    8000367c:	00000793          	li	a5,0
    80003680:	ef9ff06f          	j	80003578 <__memset+0xf0>
    80003684:	00200e93          	li	t4,2
    80003688:	e85ff06f          	j	8000350c <__memset+0x84>
    8000368c:	00400e93          	li	t4,4
    80003690:	e7dff06f          	j	8000350c <__memset+0x84>
    80003694:	00500e93          	li	t4,5
    80003698:	e75ff06f          	j	8000350c <__memset+0x84>
    8000369c:	00600e93          	li	t4,6
    800036a0:	e6dff06f          	j	8000350c <__memset+0x84>

00000000800036a4 <__memmove>:
    800036a4:	ff010113          	addi	sp,sp,-16
    800036a8:	00813423          	sd	s0,8(sp)
    800036ac:	01010413          	addi	s0,sp,16
    800036b0:	0e060863          	beqz	a2,800037a0 <__memmove+0xfc>
    800036b4:	fff6069b          	addiw	a3,a2,-1
    800036b8:	0006881b          	sext.w	a6,a3
    800036bc:	0ea5e863          	bltu	a1,a0,800037ac <__memmove+0x108>
    800036c0:	00758713          	addi	a4,a1,7
    800036c4:	00a5e7b3          	or	a5,a1,a0
    800036c8:	40a70733          	sub	a4,a4,a0
    800036cc:	0077f793          	andi	a5,a5,7
    800036d0:	00f73713          	sltiu	a4,a4,15
    800036d4:	00174713          	xori	a4,a4,1
    800036d8:	0017b793          	seqz	a5,a5
    800036dc:	00e7f7b3          	and	a5,a5,a4
    800036e0:	10078863          	beqz	a5,800037f0 <__memmove+0x14c>
    800036e4:	00900793          	li	a5,9
    800036e8:	1107f463          	bgeu	a5,a6,800037f0 <__memmove+0x14c>
    800036ec:	0036581b          	srliw	a6,a2,0x3
    800036f0:	fff8081b          	addiw	a6,a6,-1
    800036f4:	02081813          	slli	a6,a6,0x20
    800036f8:	01d85893          	srli	a7,a6,0x1d
    800036fc:	00858813          	addi	a6,a1,8
    80003700:	00058793          	mv	a5,a1
    80003704:	00050713          	mv	a4,a0
    80003708:	01088833          	add	a6,a7,a6
    8000370c:	0007b883          	ld	a7,0(a5)
    80003710:	00878793          	addi	a5,a5,8
    80003714:	00870713          	addi	a4,a4,8
    80003718:	ff173c23          	sd	a7,-8(a4)
    8000371c:	ff0798e3          	bne	a5,a6,8000370c <__memmove+0x68>
    80003720:	ff867713          	andi	a4,a2,-8
    80003724:	02071793          	slli	a5,a4,0x20
    80003728:	0207d793          	srli	a5,a5,0x20
    8000372c:	00f585b3          	add	a1,a1,a5
    80003730:	40e686bb          	subw	a3,a3,a4
    80003734:	00f507b3          	add	a5,a0,a5
    80003738:	06e60463          	beq	a2,a4,800037a0 <__memmove+0xfc>
    8000373c:	0005c703          	lbu	a4,0(a1)
    80003740:	00e78023          	sb	a4,0(a5)
    80003744:	04068e63          	beqz	a3,800037a0 <__memmove+0xfc>
    80003748:	0015c603          	lbu	a2,1(a1)
    8000374c:	00100713          	li	a4,1
    80003750:	00c780a3          	sb	a2,1(a5)
    80003754:	04e68663          	beq	a3,a4,800037a0 <__memmove+0xfc>
    80003758:	0025c603          	lbu	a2,2(a1)
    8000375c:	00200713          	li	a4,2
    80003760:	00c78123          	sb	a2,2(a5)
    80003764:	02e68e63          	beq	a3,a4,800037a0 <__memmove+0xfc>
    80003768:	0035c603          	lbu	a2,3(a1)
    8000376c:	00300713          	li	a4,3
    80003770:	00c781a3          	sb	a2,3(a5)
    80003774:	02e68663          	beq	a3,a4,800037a0 <__memmove+0xfc>
    80003778:	0045c603          	lbu	a2,4(a1)
    8000377c:	00400713          	li	a4,4
    80003780:	00c78223          	sb	a2,4(a5)
    80003784:	00e68e63          	beq	a3,a4,800037a0 <__memmove+0xfc>
    80003788:	0055c603          	lbu	a2,5(a1)
    8000378c:	00500713          	li	a4,5
    80003790:	00c782a3          	sb	a2,5(a5)
    80003794:	00e68663          	beq	a3,a4,800037a0 <__memmove+0xfc>
    80003798:	0065c703          	lbu	a4,6(a1)
    8000379c:	00e78323          	sb	a4,6(a5)
    800037a0:	00813403          	ld	s0,8(sp)
    800037a4:	01010113          	addi	sp,sp,16
    800037a8:	00008067          	ret
    800037ac:	02061713          	slli	a4,a2,0x20
    800037b0:	02075713          	srli	a4,a4,0x20
    800037b4:	00e587b3          	add	a5,a1,a4
    800037b8:	f0f574e3          	bgeu	a0,a5,800036c0 <__memmove+0x1c>
    800037bc:	02069613          	slli	a2,a3,0x20
    800037c0:	02065613          	srli	a2,a2,0x20
    800037c4:	fff64613          	not	a2,a2
    800037c8:	00e50733          	add	a4,a0,a4
    800037cc:	00c78633          	add	a2,a5,a2
    800037d0:	fff7c683          	lbu	a3,-1(a5)
    800037d4:	fff78793          	addi	a5,a5,-1
    800037d8:	fff70713          	addi	a4,a4,-1
    800037dc:	00d70023          	sb	a3,0(a4)
    800037e0:	fec798e3          	bne	a5,a2,800037d0 <__memmove+0x12c>
    800037e4:	00813403          	ld	s0,8(sp)
    800037e8:	01010113          	addi	sp,sp,16
    800037ec:	00008067          	ret
    800037f0:	02069713          	slli	a4,a3,0x20
    800037f4:	02075713          	srli	a4,a4,0x20
    800037f8:	00170713          	addi	a4,a4,1
    800037fc:	00e50733          	add	a4,a0,a4
    80003800:	00050793          	mv	a5,a0
    80003804:	0005c683          	lbu	a3,0(a1)
    80003808:	00178793          	addi	a5,a5,1
    8000380c:	00158593          	addi	a1,a1,1
    80003810:	fed78fa3          	sb	a3,-1(a5)
    80003814:	fee798e3          	bne	a5,a4,80003804 <__memmove+0x160>
    80003818:	f89ff06f          	j	800037a0 <__memmove+0xfc>

000000008000381c <__putc>:
    8000381c:	fe010113          	addi	sp,sp,-32
    80003820:	00813823          	sd	s0,16(sp)
    80003824:	00113c23          	sd	ra,24(sp)
    80003828:	02010413          	addi	s0,sp,32
    8000382c:	00050793          	mv	a5,a0
    80003830:	fef40593          	addi	a1,s0,-17
    80003834:	00100613          	li	a2,1
    80003838:	00000513          	li	a0,0
    8000383c:	fef407a3          	sb	a5,-17(s0)
    80003840:	fffff097          	auipc	ra,0xfffff
    80003844:	b3c080e7          	jalr	-1220(ra) # 8000237c <console_write>
    80003848:	01813083          	ld	ra,24(sp)
    8000384c:	01013403          	ld	s0,16(sp)
    80003850:	02010113          	addi	sp,sp,32
    80003854:	00008067          	ret

0000000080003858 <__getc>:
    80003858:	fe010113          	addi	sp,sp,-32
    8000385c:	00813823          	sd	s0,16(sp)
    80003860:	00113c23          	sd	ra,24(sp)
    80003864:	02010413          	addi	s0,sp,32
    80003868:	fe840593          	addi	a1,s0,-24
    8000386c:	00100613          	li	a2,1
    80003870:	00000513          	li	a0,0
    80003874:	fffff097          	auipc	ra,0xfffff
    80003878:	ae8080e7          	jalr	-1304(ra) # 8000235c <console_read>
    8000387c:	fe844503          	lbu	a0,-24(s0)
    80003880:	01813083          	ld	ra,24(sp)
    80003884:	01013403          	ld	s0,16(sp)
    80003888:	02010113          	addi	sp,sp,32
    8000388c:	00008067          	ret

0000000080003890 <console_handler>:
    80003890:	fe010113          	addi	sp,sp,-32
    80003894:	00813823          	sd	s0,16(sp)
    80003898:	00113c23          	sd	ra,24(sp)
    8000389c:	00913423          	sd	s1,8(sp)
    800038a0:	02010413          	addi	s0,sp,32
    800038a4:	14202773          	csrr	a4,scause
    800038a8:	100027f3          	csrr	a5,sstatus
    800038ac:	0027f793          	andi	a5,a5,2
    800038b0:	06079e63          	bnez	a5,8000392c <console_handler+0x9c>
    800038b4:	00074c63          	bltz	a4,800038cc <console_handler+0x3c>
    800038b8:	01813083          	ld	ra,24(sp)
    800038bc:	01013403          	ld	s0,16(sp)
    800038c0:	00813483          	ld	s1,8(sp)
    800038c4:	02010113          	addi	sp,sp,32
    800038c8:	00008067          	ret
    800038cc:	0ff77713          	andi	a4,a4,255
    800038d0:	00900793          	li	a5,9
    800038d4:	fef712e3          	bne	a4,a5,800038b8 <console_handler+0x28>
    800038d8:	ffffe097          	auipc	ra,0xffffe
    800038dc:	6dc080e7          	jalr	1756(ra) # 80001fb4 <plic_claim>
    800038e0:	00a00793          	li	a5,10
    800038e4:	00050493          	mv	s1,a0
    800038e8:	02f50c63          	beq	a0,a5,80003920 <console_handler+0x90>
    800038ec:	fc0506e3          	beqz	a0,800038b8 <console_handler+0x28>
    800038f0:	00050593          	mv	a1,a0
    800038f4:	00000517          	auipc	a0,0x0
    800038f8:	7fc50513          	addi	a0,a0,2044 # 800040f0 <CONSOLE_STATUS+0xe0>
    800038fc:	fffff097          	auipc	ra,0xfffff
    80003900:	afc080e7          	jalr	-1284(ra) # 800023f8 <__printf>
    80003904:	01013403          	ld	s0,16(sp)
    80003908:	01813083          	ld	ra,24(sp)
    8000390c:	00048513          	mv	a0,s1
    80003910:	00813483          	ld	s1,8(sp)
    80003914:	02010113          	addi	sp,sp,32
    80003918:	ffffe317          	auipc	t1,0xffffe
    8000391c:	6d430067          	jr	1748(t1) # 80001fec <plic_complete>
    80003920:	fffff097          	auipc	ra,0xfffff
    80003924:	3e0080e7          	jalr	992(ra) # 80002d00 <uartintr>
    80003928:	fddff06f          	j	80003904 <console_handler+0x74>
    8000392c:	00001517          	auipc	a0,0x1
    80003930:	8c450513          	addi	a0,a0,-1852 # 800041f0 <digits+0x78>
    80003934:	fffff097          	auipc	ra,0xfffff
    80003938:	a68080e7          	jalr	-1432(ra) # 8000239c <panic>
	...
