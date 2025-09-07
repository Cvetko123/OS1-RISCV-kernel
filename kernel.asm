
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00004117          	auipc	sp,0x4
    80000004:	35013103          	ld	sp,848(sp) # 80004350 <_GLOBAL_OFFSET_TABLE_+0x10>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	3ec010ef          	jal	ra,80001408 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <SupervisorTrap>:
.extern SuperVisorTrapHandler
.align 4
.global SupervisorTrap

SupervisorTrap:
    addi sp, sp, -64
    80001000:	fc010113          	addi	sp,sp,-64
    sd s0, 0(sp)
    80001004:	00813023          	sd	s0,0(sp)
    sd s1, 8(sp)
    80001008:	00913423          	sd	s1,8(sp)
    sd s2, 10(sp)
    8000100c:	01213523          	sd	s2,10(sp)
    sd s3, 18(sp)
    80001010:	01313923          	sd	s3,18(sp)
    sd s4, 20(sp)
    80001014:	01413a23          	sd	s4,20(sp)
    sd s5, 28(sp)
    80001018:	01513e23          	sd	s5,28(sp)
    sd s6, 30(sp)
    8000101c:	01613f23          	sd	s6,30(sp)
    sd s7, 38(sp)
    80001020:	03713323          	sd	s7,38(sp)
    sd s8, 40(sp)
    80001024:	03813423          	sd	s8,40(sp)
    sd s9, 48(sp)
    80001028:	03913823          	sd	s9,48(sp)
    sd s10, 50(sp)
    8000102c:	03a13923          	sd	s10,50(sp)
    sd s11, 58(sp)
    80001030:	03b13d23          	sd	s11,58(sp)




    addi sp, sp, 64
    80001034:	04010113          	addi	sp,sp,64
    ld s0, 0(sp)
    80001038:	00013403          	ld	s0,0(sp)
    ld s1, 8(sp)
    8000103c:	00813483          	ld	s1,8(sp)
    ld s2, 10(sp)
    80001040:	00a13903          	ld	s2,10(sp)
    ld s3, 18(sp)
    80001044:	01213983          	ld	s3,18(sp)
    ld s4, 20(sp)
    80001048:	01413a03          	ld	s4,20(sp)
    ld s5, 28(sp)
    8000104c:	01c13a83          	ld	s5,28(sp)
    ld s6, 30(sp)
    80001050:	01e13b03          	ld	s6,30(sp)
    ld s7, 38(sp)
    80001054:	02613b83          	ld	s7,38(sp)
    ld s8, 40(sp)
    80001058:	02813c03          	ld	s8,40(sp)
    ld s9, 48(sp)
    8000105c:	03013c83          	ld	s9,48(sp)
    ld s10, 50(sp)
    80001060:	03213d03          	ld	s10,50(sp)
    80001064:	03a13d83          	ld	s11,58(sp)
	...

0000000080001074 <main>:

//extern "C" void SupervisorTrap();



void main(){
    80001074:	fe010113          	addi	sp,sp,-32
    80001078:	00113c23          	sd	ra,24(sp)
    8000107c:	00813823          	sd	s0,16(sp)
    80001080:	00913423          	sd	s1,8(sp)
    80001084:	02010413          	addi	s0,sp,32
    // __asm__ volatile ("csrw stvec, %[handler]" :: [handler] "r" (SupervisorTrap));
    // __asm__ volatile("csrs sstatus, 0x02");
    // while (1){}
    int* i=(int*)MemoryAllocator::Instance()->mem_alloc(sizeof(int));
    80001088:	00000097          	auipc	ra,0x0
    8000108c:	0f0080e7          	jalr	240(ra) # 80001178 <_ZN15MemoryAllocator8InstanceEv>
    80001090:	00400593          	li	a1,4
    80001094:	00000097          	auipc	ra,0x0
    80001098:	140080e7          	jalr	320(ra) # 800011d4 <_ZN15MemoryAllocator9mem_allocEm>
    8000109c:	00050493          	mv	s1,a0
    *i=4;
    800010a0:	00400793          	li	a5,4
    800010a4:	00f52023          	sw	a5,0(a0) # 1000 <_entry-0x7ffff000>
    __putc(*i+'0');
    800010a8:	03400513          	li	a0,52
    800010ac:	00002097          	auipc	ra,0x2
    800010b0:	420080e7          	jalr	1056(ra) # 800034cc <__putc>
    __putc('\n');
    800010b4:	00a00513          	li	a0,10
    800010b8:	00002097          	auipc	ra,0x2
    800010bc:	414080e7          	jalr	1044(ra) # 800034cc <__putc>
    MemoryAllocator::Instance()->mem_free(i);
    800010c0:	00000097          	auipc	ra,0x0
    800010c4:	0b8080e7          	jalr	184(ra) # 80001178 <_ZN15MemoryAllocator8InstanceEv>
    800010c8:	00048593          	mv	a1,s1
    800010cc:	00000097          	auipc	ra,0x0
    800010d0:	27c080e7          	jalr	636(ra) # 80001348 <_ZN15MemoryAllocator8mem_freeEPv>
    char* c=(char*)MemoryAllocator::Instance()->mem_alloc(sizeof(char));
    800010d4:	00000097          	auipc	ra,0x0
    800010d8:	0a4080e7          	jalr	164(ra) # 80001178 <_ZN15MemoryAllocator8InstanceEv>
    800010dc:	00100593          	li	a1,1
    800010e0:	00000097          	auipc	ra,0x0
    800010e4:	0f4080e7          	jalr	244(ra) # 800011d4 <_ZN15MemoryAllocator9mem_allocEm>
    *c='a';
    800010e8:	06100793          	li	a5,97
    800010ec:	00f50023          	sb	a5,0(a0)
    __putc(*c);
    800010f0:	06100513          	li	a0,97
    800010f4:	00002097          	auipc	ra,0x2
    800010f8:	3d8080e7          	jalr	984(ra) # 800034cc <__putc>
    __putc('\n');
    800010fc:	00a00513          	li	a0,10
    80001100:	00002097          	auipc	ra,0x2
    80001104:	3cc080e7          	jalr	972(ra) # 800034cc <__putc>


    80001108:	01813083          	ld	ra,24(sp)
    8000110c:	01013403          	ld	s0,16(sp)
    80001110:	00813483          	ld	s1,8(sp)
    80001114:	02010113          	addi	sp,sp,32
    80001118:	00008067          	ret

000000008000111c <_ZN15MemoryAllocatorC1Ev>:
// Created by os on 9/7/25.
//

#include "../h/MemoryAllocator.hpp"

MemoryAllocator::MemoryAllocator() {
    8000111c:	ff010113          	addi	sp,sp,-16
    80001120:	00813423          	sd	s0,8(sp)
    80001124:	01010413          	addi	s0,sp,16
    this->head = (MemoryHeader*)HEAP_START_ADDR;
    80001128:	00003797          	auipc	a5,0x3
    8000112c:	2207b783          	ld	a5,544(a5) # 80004348 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001130:	0007b703          	ld	a4,0(a5)
    80001134:	00e53023          	sd	a4,0(a0)
    // this->tail = (MemoryHeader*)HEAP_START_ADDR;
    // this->tail->next=nullptr;
    // this->tail->prev=nullptr;
    this->head->next=nullptr;
    80001138:	00073423          	sd	zero,8(a4)
    this->head->prev=nullptr;
    8000113c:	00053783          	ld	a5,0(a0)
    80001140:	0007b823          	sd	zero,16(a5)
    this->head->size = (size_t)((char*)HEAP_END_ADDR - (char*)HEAP_START_ADDR - sizeof(MemoryHeader));
    80001144:	00003797          	auipc	a5,0x3
    80001148:	2147b783          	ld	a5,532(a5) # 80004358 <_GLOBAL_OFFSET_TABLE_+0x18>
    8000114c:	0007b783          	ld	a5,0(a5)
    80001150:	40e787b3          	sub	a5,a5,a4
    80001154:	00053703          	ld	a4,0(a0)
    80001158:	fe878793          	addi	a5,a5,-24
    8000115c:	00f73023          	sd	a5,0(a4)
    this->freeMemSize=this->head->size;
    80001160:	00053783          	ld	a5,0(a0)
    80001164:	0007b783          	ld	a5,0(a5)
    80001168:	00f53423          	sd	a5,8(a0)
}
    8000116c:	00813403          	ld	s0,8(sp)
    80001170:	01010113          	addi	sp,sp,16
    80001174:	00008067          	ret

0000000080001178 <_ZN15MemoryAllocator8InstanceEv>:




MemoryAllocator* MemoryAllocator::Instance() {
    static MemoryAllocator instance;
    80001178:	00003797          	auipc	a5,0x3
    8000117c:	2287c783          	lbu	a5,552(a5) # 800043a0 <_ZGVZN15MemoryAllocator8InstanceEvE8instance>
    80001180:	00078863          	beqz	a5,80001190 <_ZN15MemoryAllocator8InstanceEv+0x18>
    return &instance;
}
    80001184:	00003517          	auipc	a0,0x3
    80001188:	22450513          	addi	a0,a0,548 # 800043a8 <_ZZN15MemoryAllocator8InstanceEvE8instance>
    8000118c:	00008067          	ret
MemoryAllocator* MemoryAllocator::Instance() {
    80001190:	ff010113          	addi	sp,sp,-16
    80001194:	00113423          	sd	ra,8(sp)
    80001198:	00813023          	sd	s0,0(sp)
    8000119c:	01010413          	addi	s0,sp,16
    static MemoryAllocator instance;
    800011a0:	00003517          	auipc	a0,0x3
    800011a4:	20850513          	addi	a0,a0,520 # 800043a8 <_ZZN15MemoryAllocator8InstanceEvE8instance>
    800011a8:	00000097          	auipc	ra,0x0
    800011ac:	f74080e7          	jalr	-140(ra) # 8000111c <_ZN15MemoryAllocatorC1Ev>
    800011b0:	00100793          	li	a5,1
    800011b4:	00003717          	auipc	a4,0x3
    800011b8:	1ef70623          	sb	a5,492(a4) # 800043a0 <_ZGVZN15MemoryAllocator8InstanceEvE8instance>
}
    800011bc:	00003517          	auipc	a0,0x3
    800011c0:	1ec50513          	addi	a0,a0,492 # 800043a8 <_ZZN15MemoryAllocator8InstanceEvE8instance>
    800011c4:	00813083          	ld	ra,8(sp)
    800011c8:	00013403          	ld	s0,0(sp)
    800011cc:	01010113          	addi	sp,sp,16
    800011d0:	00008067          	ret

00000000800011d4 <_ZN15MemoryAllocator9mem_allocEm>:


void* MemoryAllocator::mem_alloc(size_t size) {
    800011d4:	ff010113          	addi	sp,sp,-16
    800011d8:	00813423          	sd	s0,8(sp)
    800011dc:	01010413          	addi	s0,sp,16
    800011e0:	00050813          	mv	a6,a0
    if (this->head==nullptr)
    800011e4:	00053503          	ld	a0,0(a0)
    800011e8:	0a050063          	beqz	a0,80001288 <_ZN15MemoryAllocator9mem_allocEm+0xb4>
        return nullptr;
    if (size==0) {
    800011ec:	0e058663          	beqz	a1,800012d8 <_ZN15MemoryAllocator9mem_allocEm+0x104>
        return nullptr;
    }
    uint64 offset = size % MEM_BLOCK_SIZE;
    800011f0:	03f5f793          	andi	a5,a1,63
    if (offset!=0)
    800011f4:	00078463          	beqz	a5,800011fc <_ZN15MemoryAllocator9mem_allocEm+0x28>
        offset=1;
    800011f8:	00100793          	li	a5,1
    size_t actulalSize = ((size  / MEM_BLOCK_SIZE+offset )) * MEM_BLOCK_SIZE;
    800011fc:	0065d693          	srli	a3,a1,0x6
    80001200:	00f686b3          	add	a3,a3,a5
    80001204:	00669693          	slli	a3,a3,0x6

    MemoryHeader* curr= this->head;
    80001208:	00050793          	mv	a5,a0
    while (curr->next!=nullptr && curr->size < actulalSize) {
    8000120c:	00078713          	mv	a4,a5
    80001210:	0087b783          	ld	a5,8(a5)
    80001214:	00078663          	beqz	a5,80001220 <_ZN15MemoryAllocator9mem_allocEm+0x4c>
    80001218:	00073603          	ld	a2,0(a4)
    8000121c:	fed668e3          	bltu	a2,a3,8000120c <_ZN15MemoryAllocator9mem_allocEm+0x38>
        curr=curr->next;
    }
    if (curr->size < actulalSize) {
    80001220:	00073603          	ld	a2,0(a4)
    80001224:	0ad66e63          	bltu	a2,a3,800012e0 <_ZN15MemoryAllocator9mem_allocEm+0x10c>
        return nullptr;
    }

    if (curr->size - actulalSize >= MEM_BLOCK_SIZE) {
    80001228:	40d60633          	sub	a2,a2,a3
    8000122c:	03f00593          	li	a1,63
    80001230:	06c5f663          	bgeu	a1,a2,8000129c <_ZN15MemoryAllocator9mem_allocEm+0xc8>
        MemoryHeader* new_seg=(MemoryHeader*)((char*)curr + sizeof(MemoryHeader) + actulalSize);
    80001234:	01868793          	addi	a5,a3,24
    80001238:	00f707b3          	add	a5,a4,a5
        new_seg->size = curr->size - actulalSize - sizeof(MemoryHeader);
    8000123c:	fe860613          	addi	a2,a2,-24
    80001240:	00c7b023          	sd	a2,0(a5)
        new_seg->next=curr->next;
    80001244:	00873603          	ld	a2,8(a4)
    80001248:	00c7b423          	sd	a2,8(a5)
        new_seg->prev=curr->prev;
    8000124c:	01073603          	ld	a2,16(a4)
    80001250:	00c7b823          	sd	a2,16(a5)
        if (curr==this->head) {
    80001254:	00083603          	ld	a2,0(a6)
    80001258:	02e60e63          	beq	a2,a4,80001294 <_ZN15MemoryAllocator9mem_allocEm+0xc0>
            this->head=new_seg;
        }
        // if (curr==this->tail) {
        //     this->tail=new_seg;
        // }
        if (curr->prev)
    8000125c:	01073603          	ld	a2,16(a4)
    80001260:	00060463          	beqz	a2,80001268 <_ZN15MemoryAllocator9mem_allocEm+0x94>
            curr->prev->next=new_seg;
    80001264:	00f63423          	sd	a5,8(a2)
        if (curr->next)
    80001268:	00873603          	ld	a2,8(a4)
    8000126c:	00060463          	beqz	a2,80001274 <_ZN15MemoryAllocator9mem_allocEm+0xa0>
            curr->next->prev=new_seg;
    80001270:	00f63823          	sd	a5,16(a2)
        this->freeMemSize-= (actulalSize + sizeof(MemoryHeader));
    80001274:	00883783          	ld	a5,8(a6)
    80001278:	40d786b3          	sub	a3,a5,a3
    8000127c:	fe868693          	addi	a3,a3,-24
    80001280:	00d83423          	sd	a3,8(a6)
            curr->next->prev=curr->prev;
        this->freeMemSize-= actulalSize;
    }


    return  (void*)((char*)curr + sizeof(MemoryHeader));
    80001284:	01870513          	addi	a0,a4,24
}
    80001288:	00813403          	ld	s0,8(sp)
    8000128c:	01010113          	addi	sp,sp,16
    80001290:	00008067          	ret
            this->head=new_seg;
    80001294:	00f83023          	sd	a5,0(a6)
    80001298:	fc5ff06f          	j	8000125c <_ZN15MemoryAllocator9mem_allocEm+0x88>
        if (curr==this->head) {
    8000129c:	02e50a63          	beq	a0,a4,800012d0 <_ZN15MemoryAllocator9mem_allocEm+0xfc>
        if (curr->prev)
    800012a0:	01073783          	ld	a5,16(a4)
    800012a4:	00078663          	beqz	a5,800012b0 <_ZN15MemoryAllocator9mem_allocEm+0xdc>
            curr->prev->next=curr->next;
    800012a8:	00873603          	ld	a2,8(a4)
    800012ac:	00c7b423          	sd	a2,8(a5)
        if (curr->next)
    800012b0:	00873783          	ld	a5,8(a4)
    800012b4:	00078663          	beqz	a5,800012c0 <_ZN15MemoryAllocator9mem_allocEm+0xec>
            curr->next->prev=curr->prev;
    800012b8:	01073603          	ld	a2,16(a4)
    800012bc:	00c7b823          	sd	a2,16(a5)
        this->freeMemSize-= actulalSize;
    800012c0:	00883783          	ld	a5,8(a6)
    800012c4:	40d786b3          	sub	a3,a5,a3
    800012c8:	00d83423          	sd	a3,8(a6)
    800012cc:	fb9ff06f          	j	80001284 <_ZN15MemoryAllocator9mem_allocEm+0xb0>
            this->head=curr->next;
    800012d0:	00f83023          	sd	a5,0(a6)
    800012d4:	fcdff06f          	j	800012a0 <_ZN15MemoryAllocator9mem_allocEm+0xcc>
        return nullptr;
    800012d8:	00000513          	li	a0,0
    800012dc:	fadff06f          	j	80001288 <_ZN15MemoryAllocator9mem_allocEm+0xb4>
        return nullptr;
    800012e0:	00000513          	li	a0,0
    800012e4:	fa5ff06f          	j	80001288 <_ZN15MemoryAllocator9mem_allocEm+0xb4>

00000000800012e8 <_ZN15MemoryAllocator11try_to_joinEPNS_12MemoryHeaderE>:
    try_to_join(block->prev);
    try_to_join(block);
}


void MemoryAllocator::try_to_join(MemoryHeader* block) {
    800012e8:	ff010113          	addi	sp,sp,-16
    800012ec:	00813423          	sd	s0,8(sp)
    800012f0:	01010413          	addi	s0,sp,16
    if (block==nullptr)
    800012f4:	00058e63          	beqz	a1,80001310 <_ZN15MemoryAllocator11try_to_joinEPNS_12MemoryHeaderE+0x28>
        return;
    if (block->next!=nullptr && (char*)block + sizeof(MemoryHeader) + block->size == (char*)block->next) {
    800012f8:	0085b783          	ld	a5,8(a1)
    800012fc:	00078a63          	beqz	a5,80001310 <_ZN15MemoryAllocator11try_to_joinEPNS_12MemoryHeaderE+0x28>
    80001300:	0005b683          	ld	a3,0(a1)
    80001304:	01868713          	addi	a4,a3,24
    80001308:	00e58733          	add	a4,a1,a4
    8000130c:	00e78863          	beq	a5,a4,8000131c <_ZN15MemoryAllocator11try_to_joinEPNS_12MemoryHeaderE+0x34>
        block->next=block->next->next;
        if (block->next)
            block->next->prev=block;
        this->freeMemSize+= sizeof(MemoryHeader);
    }
    80001310:	00813403          	ld	s0,8(sp)
    80001314:	01010113          	addi	sp,sp,16
    80001318:	00008067          	ret
        block->size += block->next->size;
    8000131c:	0007b703          	ld	a4,0(a5)
    80001320:	00e686b3          	add	a3,a3,a4
    80001324:	00d5b023          	sd	a3,0(a1)
        block->next=block->next->next;
    80001328:	0087b783          	ld	a5,8(a5)
    8000132c:	00f5b423          	sd	a5,8(a1)
        if (block->next)
    80001330:	00078463          	beqz	a5,80001338 <_ZN15MemoryAllocator11try_to_joinEPNS_12MemoryHeaderE+0x50>
            block->next->prev=block;
    80001334:	00b7b823          	sd	a1,16(a5)
        this->freeMemSize+= sizeof(MemoryHeader);
    80001338:	00853783          	ld	a5,8(a0)
    8000133c:	01878793          	addi	a5,a5,24
    80001340:	00f53423          	sd	a5,8(a0)
    80001344:	fcdff06f          	j	80001310 <_ZN15MemoryAllocator11try_to_joinEPNS_12MemoryHeaderE+0x28>

0000000080001348 <_ZN15MemoryAllocator8mem_freeEPv>:
    if (ptr==nullptr) {
    80001348:	0a058e63          	beqz	a1,80001404 <_ZN15MemoryAllocator8mem_freeEPv+0xbc>
void MemoryAllocator::mem_free(void* ptr) {
    8000134c:	fe010113          	addi	sp,sp,-32
    80001350:	00113c23          	sd	ra,24(sp)
    80001354:	00813823          	sd	s0,16(sp)
    80001358:	00913423          	sd	s1,8(sp)
    8000135c:	01213023          	sd	s2,0(sp)
    80001360:	02010413          	addi	s0,sp,32
    80001364:	00050913          	mv	s2,a0
	MemoryHeader* block = (MemoryHeader*)((char*)ptr - sizeof(MemoryHeader));
    80001368:	fe858493          	addi	s1,a1,-24
    if (this->head==nullptr) {
    8000136c:	00053783          	ld	a5,0(a0)
    80001370:	06078a63          	beqz	a5,800013e4 <_ZN15MemoryAllocator8mem_freeEPv+0x9c>
    while (curr->next!=nullptr && curr->next < block) {
    80001374:	00078713          	mv	a4,a5
    80001378:	0087b783          	ld	a5,8(a5)
    8000137c:	00078463          	beqz	a5,80001384 <_ZN15MemoryAllocator8mem_freeEPv+0x3c>
    80001380:	fe97eae3          	bltu	a5,s1,80001374 <_ZN15MemoryAllocator8mem_freeEPv+0x2c>
    block->next=curr->next;
    80001384:	fef5b823          	sd	a5,-16(a1)
    block->prev=curr;
    80001388:	fee5bc23          	sd	a4,-8(a1)
    curr->next=block;
    8000138c:	00973423          	sd	s1,8(a4)
    if (block->next)
    80001390:	ff05b783          	ld	a5,-16(a1)
    80001394:	00078463          	beqz	a5,8000139c <_ZN15MemoryAllocator8mem_freeEPv+0x54>
        block->next->prev=block;
    80001398:	0097b823          	sd	s1,16(a5)
    this->freeMemSize+= block->size;
    8000139c:	fe85b703          	ld	a4,-24(a1)
    800013a0:	00893783          	ld	a5,8(s2)
    800013a4:	00e787b3          	add	a5,a5,a4
    800013a8:	00f93423          	sd	a5,8(s2)
    try_to_join(block->prev);
    800013ac:	ff85b583          	ld	a1,-8(a1)
    800013b0:	00090513          	mv	a0,s2
    800013b4:	00000097          	auipc	ra,0x0
    800013b8:	f34080e7          	jalr	-204(ra) # 800012e8 <_ZN15MemoryAllocator11try_to_joinEPNS_12MemoryHeaderE>
    try_to_join(block);
    800013bc:	00048593          	mv	a1,s1
    800013c0:	00090513          	mv	a0,s2
    800013c4:	00000097          	auipc	ra,0x0
    800013c8:	f24080e7          	jalr	-220(ra) # 800012e8 <_ZN15MemoryAllocator11try_to_joinEPNS_12MemoryHeaderE>
}
    800013cc:	01813083          	ld	ra,24(sp)
    800013d0:	01013403          	ld	s0,16(sp)
    800013d4:	00813483          	ld	s1,8(sp)
    800013d8:	00013903          	ld	s2,0(sp)
    800013dc:	02010113          	addi	sp,sp,32
    800013e0:	00008067          	ret
        this->head=block;
    800013e4:	00953023          	sd	s1,0(a0)
        block->next=nullptr;
    800013e8:	fe05b823          	sd	zero,-16(a1)
        block->prev=nullptr;
    800013ec:	fe05bc23          	sd	zero,-8(a1)
        this->freeMemSize+= block->size;
    800013f0:	fe85b703          	ld	a4,-24(a1)
    800013f4:	00853783          	ld	a5,8(a0)
    800013f8:	00e787b3          	add	a5,a5,a4
    800013fc:	00f53423          	sd	a5,8(a0)
        return;
    80001400:	fcdff06f          	j	800013cc <_ZN15MemoryAllocator8mem_freeEPv+0x84>
    80001404:	00008067          	ret

0000000080001408 <start>:
    80001408:	ff010113          	addi	sp,sp,-16
    8000140c:	00813423          	sd	s0,8(sp)
    80001410:	01010413          	addi	s0,sp,16
    80001414:	300027f3          	csrr	a5,mstatus
    80001418:	ffffe737          	lui	a4,0xffffe
    8000141c:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff91ef>
    80001420:	00e7f7b3          	and	a5,a5,a4
    80001424:	00001737          	lui	a4,0x1
    80001428:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    8000142c:	00e7e7b3          	or	a5,a5,a4
    80001430:	30079073          	csrw	mstatus,a5
    80001434:	00000797          	auipc	a5,0x0
    80001438:	16078793          	addi	a5,a5,352 # 80001594 <system_main>
    8000143c:	34179073          	csrw	mepc,a5
    80001440:	00000793          	li	a5,0
    80001444:	18079073          	csrw	satp,a5
    80001448:	000107b7          	lui	a5,0x10
    8000144c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001450:	30279073          	csrw	medeleg,a5
    80001454:	30379073          	csrw	mideleg,a5
    80001458:	104027f3          	csrr	a5,sie
    8000145c:	2227e793          	ori	a5,a5,546
    80001460:	10479073          	csrw	sie,a5
    80001464:	fff00793          	li	a5,-1
    80001468:	00a7d793          	srli	a5,a5,0xa
    8000146c:	3b079073          	csrw	pmpaddr0,a5
    80001470:	00f00793          	li	a5,15
    80001474:	3a079073          	csrw	pmpcfg0,a5
    80001478:	f14027f3          	csrr	a5,mhartid
    8000147c:	0200c737          	lui	a4,0x200c
    80001480:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001484:	0007869b          	sext.w	a3,a5
    80001488:	00269713          	slli	a4,a3,0x2
    8000148c:	000f4637          	lui	a2,0xf4
    80001490:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001494:	00d70733          	add	a4,a4,a3
    80001498:	0037979b          	slliw	a5,a5,0x3
    8000149c:	020046b7          	lui	a3,0x2004
    800014a0:	00d787b3          	add	a5,a5,a3
    800014a4:	00c585b3          	add	a1,a1,a2
    800014a8:	00371693          	slli	a3,a4,0x3
    800014ac:	00003717          	auipc	a4,0x3
    800014b0:	f1470713          	addi	a4,a4,-236 # 800043c0 <timer_scratch>
    800014b4:	00b7b023          	sd	a1,0(a5)
    800014b8:	00d70733          	add	a4,a4,a3
    800014bc:	00f73c23          	sd	a5,24(a4)
    800014c0:	02c73023          	sd	a2,32(a4)
    800014c4:	34071073          	csrw	mscratch,a4
    800014c8:	00000797          	auipc	a5,0x0
    800014cc:	6e878793          	addi	a5,a5,1768 # 80001bb0 <timervec>
    800014d0:	30579073          	csrw	mtvec,a5
    800014d4:	300027f3          	csrr	a5,mstatus
    800014d8:	0087e793          	ori	a5,a5,8
    800014dc:	30079073          	csrw	mstatus,a5
    800014e0:	304027f3          	csrr	a5,mie
    800014e4:	0807e793          	ori	a5,a5,128
    800014e8:	30479073          	csrw	mie,a5
    800014ec:	f14027f3          	csrr	a5,mhartid
    800014f0:	0007879b          	sext.w	a5,a5
    800014f4:	00078213          	mv	tp,a5
    800014f8:	30200073          	mret
    800014fc:	00813403          	ld	s0,8(sp)
    80001500:	01010113          	addi	sp,sp,16
    80001504:	00008067          	ret

0000000080001508 <timerinit>:
    80001508:	ff010113          	addi	sp,sp,-16
    8000150c:	00813423          	sd	s0,8(sp)
    80001510:	01010413          	addi	s0,sp,16
    80001514:	f14027f3          	csrr	a5,mhartid
    80001518:	0200c737          	lui	a4,0x200c
    8000151c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001520:	0007869b          	sext.w	a3,a5
    80001524:	00269713          	slli	a4,a3,0x2
    80001528:	000f4637          	lui	a2,0xf4
    8000152c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001530:	00d70733          	add	a4,a4,a3
    80001534:	0037979b          	slliw	a5,a5,0x3
    80001538:	020046b7          	lui	a3,0x2004
    8000153c:	00d787b3          	add	a5,a5,a3
    80001540:	00c585b3          	add	a1,a1,a2
    80001544:	00371693          	slli	a3,a4,0x3
    80001548:	00003717          	auipc	a4,0x3
    8000154c:	e7870713          	addi	a4,a4,-392 # 800043c0 <timer_scratch>
    80001550:	00b7b023          	sd	a1,0(a5)
    80001554:	00d70733          	add	a4,a4,a3
    80001558:	00f73c23          	sd	a5,24(a4)
    8000155c:	02c73023          	sd	a2,32(a4)
    80001560:	34071073          	csrw	mscratch,a4
    80001564:	00000797          	auipc	a5,0x0
    80001568:	64c78793          	addi	a5,a5,1612 # 80001bb0 <timervec>
    8000156c:	30579073          	csrw	mtvec,a5
    80001570:	300027f3          	csrr	a5,mstatus
    80001574:	0087e793          	ori	a5,a5,8
    80001578:	30079073          	csrw	mstatus,a5
    8000157c:	304027f3          	csrr	a5,mie
    80001580:	0807e793          	ori	a5,a5,128
    80001584:	30479073          	csrw	mie,a5
    80001588:	00813403          	ld	s0,8(sp)
    8000158c:	01010113          	addi	sp,sp,16
    80001590:	00008067          	ret

0000000080001594 <system_main>:
    80001594:	fe010113          	addi	sp,sp,-32
    80001598:	00813823          	sd	s0,16(sp)
    8000159c:	00913423          	sd	s1,8(sp)
    800015a0:	00113c23          	sd	ra,24(sp)
    800015a4:	02010413          	addi	s0,sp,32
    800015a8:	00000097          	auipc	ra,0x0
    800015ac:	0c4080e7          	jalr	196(ra) # 8000166c <cpuid>
    800015b0:	00003497          	auipc	s1,0x3
    800015b4:	dc048493          	addi	s1,s1,-576 # 80004370 <started>
    800015b8:	02050263          	beqz	a0,800015dc <system_main+0x48>
    800015bc:	0004a783          	lw	a5,0(s1)
    800015c0:	0007879b          	sext.w	a5,a5
    800015c4:	fe078ce3          	beqz	a5,800015bc <system_main+0x28>
    800015c8:	0ff0000f          	fence
    800015cc:	00003517          	auipc	a0,0x3
    800015d0:	a8450513          	addi	a0,a0,-1404 # 80004050 <CONSOLE_STATUS+0x40>
    800015d4:	00001097          	auipc	ra,0x1
    800015d8:	a78080e7          	jalr	-1416(ra) # 8000204c <panic>
    800015dc:	00001097          	auipc	ra,0x1
    800015e0:	9cc080e7          	jalr	-1588(ra) # 80001fa8 <consoleinit>
    800015e4:	00001097          	auipc	ra,0x1
    800015e8:	158080e7          	jalr	344(ra) # 8000273c <printfinit>
    800015ec:	00003517          	auipc	a0,0x3
    800015f0:	b4450513          	addi	a0,a0,-1212 # 80004130 <CONSOLE_STATUS+0x120>
    800015f4:	00001097          	auipc	ra,0x1
    800015f8:	ab4080e7          	jalr	-1356(ra) # 800020a8 <__printf>
    800015fc:	00003517          	auipc	a0,0x3
    80001600:	a2450513          	addi	a0,a0,-1500 # 80004020 <CONSOLE_STATUS+0x10>
    80001604:	00001097          	auipc	ra,0x1
    80001608:	aa4080e7          	jalr	-1372(ra) # 800020a8 <__printf>
    8000160c:	00003517          	auipc	a0,0x3
    80001610:	b2450513          	addi	a0,a0,-1244 # 80004130 <CONSOLE_STATUS+0x120>
    80001614:	00001097          	auipc	ra,0x1
    80001618:	a94080e7          	jalr	-1388(ra) # 800020a8 <__printf>
    8000161c:	00001097          	auipc	ra,0x1
    80001620:	4ac080e7          	jalr	1196(ra) # 80002ac8 <kinit>
    80001624:	00000097          	auipc	ra,0x0
    80001628:	148080e7          	jalr	328(ra) # 8000176c <trapinit>
    8000162c:	00000097          	auipc	ra,0x0
    80001630:	16c080e7          	jalr	364(ra) # 80001798 <trapinithart>
    80001634:	00000097          	auipc	ra,0x0
    80001638:	5bc080e7          	jalr	1468(ra) # 80001bf0 <plicinit>
    8000163c:	00000097          	auipc	ra,0x0
    80001640:	5dc080e7          	jalr	1500(ra) # 80001c18 <plicinithart>
    80001644:	00000097          	auipc	ra,0x0
    80001648:	078080e7          	jalr	120(ra) # 800016bc <userinit>
    8000164c:	0ff0000f          	fence
    80001650:	00100793          	li	a5,1
    80001654:	00003517          	auipc	a0,0x3
    80001658:	9e450513          	addi	a0,a0,-1564 # 80004038 <CONSOLE_STATUS+0x28>
    8000165c:	00f4a023          	sw	a5,0(s1)
    80001660:	00001097          	auipc	ra,0x1
    80001664:	a48080e7          	jalr	-1464(ra) # 800020a8 <__printf>
    80001668:	0000006f          	j	80001668 <system_main+0xd4>

000000008000166c <cpuid>:
    8000166c:	ff010113          	addi	sp,sp,-16
    80001670:	00813423          	sd	s0,8(sp)
    80001674:	01010413          	addi	s0,sp,16
    80001678:	00020513          	mv	a0,tp
    8000167c:	00813403          	ld	s0,8(sp)
    80001680:	0005051b          	sext.w	a0,a0
    80001684:	01010113          	addi	sp,sp,16
    80001688:	00008067          	ret

000000008000168c <mycpu>:
    8000168c:	ff010113          	addi	sp,sp,-16
    80001690:	00813423          	sd	s0,8(sp)
    80001694:	01010413          	addi	s0,sp,16
    80001698:	00020793          	mv	a5,tp
    8000169c:	00813403          	ld	s0,8(sp)
    800016a0:	0007879b          	sext.w	a5,a5
    800016a4:	00779793          	slli	a5,a5,0x7
    800016a8:	00004517          	auipc	a0,0x4
    800016ac:	d4850513          	addi	a0,a0,-696 # 800053f0 <cpus>
    800016b0:	00f50533          	add	a0,a0,a5
    800016b4:	01010113          	addi	sp,sp,16
    800016b8:	00008067          	ret

00000000800016bc <userinit>:
    800016bc:	ff010113          	addi	sp,sp,-16
    800016c0:	00813423          	sd	s0,8(sp)
    800016c4:	01010413          	addi	s0,sp,16
    800016c8:	00813403          	ld	s0,8(sp)
    800016cc:	01010113          	addi	sp,sp,16
    800016d0:	00000317          	auipc	t1,0x0
    800016d4:	9a430067          	jr	-1628(t1) # 80001074 <main>

00000000800016d8 <either_copyout>:
    800016d8:	ff010113          	addi	sp,sp,-16
    800016dc:	00813023          	sd	s0,0(sp)
    800016e0:	00113423          	sd	ra,8(sp)
    800016e4:	01010413          	addi	s0,sp,16
    800016e8:	02051663          	bnez	a0,80001714 <either_copyout+0x3c>
    800016ec:	00058513          	mv	a0,a1
    800016f0:	00060593          	mv	a1,a2
    800016f4:	0006861b          	sext.w	a2,a3
    800016f8:	00002097          	auipc	ra,0x2
    800016fc:	c5c080e7          	jalr	-932(ra) # 80003354 <__memmove>
    80001700:	00813083          	ld	ra,8(sp)
    80001704:	00013403          	ld	s0,0(sp)
    80001708:	00000513          	li	a0,0
    8000170c:	01010113          	addi	sp,sp,16
    80001710:	00008067          	ret
    80001714:	00003517          	auipc	a0,0x3
    80001718:	96450513          	addi	a0,a0,-1692 # 80004078 <CONSOLE_STATUS+0x68>
    8000171c:	00001097          	auipc	ra,0x1
    80001720:	930080e7          	jalr	-1744(ra) # 8000204c <panic>

0000000080001724 <either_copyin>:
    80001724:	ff010113          	addi	sp,sp,-16
    80001728:	00813023          	sd	s0,0(sp)
    8000172c:	00113423          	sd	ra,8(sp)
    80001730:	01010413          	addi	s0,sp,16
    80001734:	02059463          	bnez	a1,8000175c <either_copyin+0x38>
    80001738:	00060593          	mv	a1,a2
    8000173c:	0006861b          	sext.w	a2,a3
    80001740:	00002097          	auipc	ra,0x2
    80001744:	c14080e7          	jalr	-1004(ra) # 80003354 <__memmove>
    80001748:	00813083          	ld	ra,8(sp)
    8000174c:	00013403          	ld	s0,0(sp)
    80001750:	00000513          	li	a0,0
    80001754:	01010113          	addi	sp,sp,16
    80001758:	00008067          	ret
    8000175c:	00003517          	auipc	a0,0x3
    80001760:	94450513          	addi	a0,a0,-1724 # 800040a0 <CONSOLE_STATUS+0x90>
    80001764:	00001097          	auipc	ra,0x1
    80001768:	8e8080e7          	jalr	-1816(ra) # 8000204c <panic>

000000008000176c <trapinit>:
    8000176c:	ff010113          	addi	sp,sp,-16
    80001770:	00813423          	sd	s0,8(sp)
    80001774:	01010413          	addi	s0,sp,16
    80001778:	00813403          	ld	s0,8(sp)
    8000177c:	00003597          	auipc	a1,0x3
    80001780:	94c58593          	addi	a1,a1,-1716 # 800040c8 <CONSOLE_STATUS+0xb8>
    80001784:	00004517          	auipc	a0,0x4
    80001788:	cec50513          	addi	a0,a0,-788 # 80005470 <tickslock>
    8000178c:	01010113          	addi	sp,sp,16
    80001790:	00001317          	auipc	t1,0x1
    80001794:	5c830067          	jr	1480(t1) # 80002d58 <initlock>

0000000080001798 <trapinithart>:
    80001798:	ff010113          	addi	sp,sp,-16
    8000179c:	00813423          	sd	s0,8(sp)
    800017a0:	01010413          	addi	s0,sp,16
    800017a4:	00000797          	auipc	a5,0x0
    800017a8:	2fc78793          	addi	a5,a5,764 # 80001aa0 <kernelvec>
    800017ac:	10579073          	csrw	stvec,a5
    800017b0:	00813403          	ld	s0,8(sp)
    800017b4:	01010113          	addi	sp,sp,16
    800017b8:	00008067          	ret

00000000800017bc <usertrap>:
    800017bc:	ff010113          	addi	sp,sp,-16
    800017c0:	00813423          	sd	s0,8(sp)
    800017c4:	01010413          	addi	s0,sp,16
    800017c8:	00813403          	ld	s0,8(sp)
    800017cc:	01010113          	addi	sp,sp,16
    800017d0:	00008067          	ret

00000000800017d4 <usertrapret>:
    800017d4:	ff010113          	addi	sp,sp,-16
    800017d8:	00813423          	sd	s0,8(sp)
    800017dc:	01010413          	addi	s0,sp,16
    800017e0:	00813403          	ld	s0,8(sp)
    800017e4:	01010113          	addi	sp,sp,16
    800017e8:	00008067          	ret

00000000800017ec <kerneltrap>:
    800017ec:	fe010113          	addi	sp,sp,-32
    800017f0:	00813823          	sd	s0,16(sp)
    800017f4:	00113c23          	sd	ra,24(sp)
    800017f8:	00913423          	sd	s1,8(sp)
    800017fc:	02010413          	addi	s0,sp,32
    80001800:	142025f3          	csrr	a1,scause
    80001804:	100027f3          	csrr	a5,sstatus
    80001808:	0027f793          	andi	a5,a5,2
    8000180c:	10079c63          	bnez	a5,80001924 <kerneltrap+0x138>
    80001810:	142027f3          	csrr	a5,scause
    80001814:	0207ce63          	bltz	a5,80001850 <kerneltrap+0x64>
    80001818:	00003517          	auipc	a0,0x3
    8000181c:	8f850513          	addi	a0,a0,-1800 # 80004110 <CONSOLE_STATUS+0x100>
    80001820:	00001097          	auipc	ra,0x1
    80001824:	888080e7          	jalr	-1912(ra) # 800020a8 <__printf>
    80001828:	141025f3          	csrr	a1,sepc
    8000182c:	14302673          	csrr	a2,stval
    80001830:	00003517          	auipc	a0,0x3
    80001834:	8f050513          	addi	a0,a0,-1808 # 80004120 <CONSOLE_STATUS+0x110>
    80001838:	00001097          	auipc	ra,0x1
    8000183c:	870080e7          	jalr	-1936(ra) # 800020a8 <__printf>
    80001840:	00003517          	auipc	a0,0x3
    80001844:	8f850513          	addi	a0,a0,-1800 # 80004138 <CONSOLE_STATUS+0x128>
    80001848:	00001097          	auipc	ra,0x1
    8000184c:	804080e7          	jalr	-2044(ra) # 8000204c <panic>
    80001850:	0ff7f713          	andi	a4,a5,255
    80001854:	00900693          	li	a3,9
    80001858:	04d70063          	beq	a4,a3,80001898 <kerneltrap+0xac>
    8000185c:	fff00713          	li	a4,-1
    80001860:	03f71713          	slli	a4,a4,0x3f
    80001864:	00170713          	addi	a4,a4,1
    80001868:	fae798e3          	bne	a5,a4,80001818 <kerneltrap+0x2c>
    8000186c:	00000097          	auipc	ra,0x0
    80001870:	e00080e7          	jalr	-512(ra) # 8000166c <cpuid>
    80001874:	06050663          	beqz	a0,800018e0 <kerneltrap+0xf4>
    80001878:	144027f3          	csrr	a5,sip
    8000187c:	ffd7f793          	andi	a5,a5,-3
    80001880:	14479073          	csrw	sip,a5
    80001884:	01813083          	ld	ra,24(sp)
    80001888:	01013403          	ld	s0,16(sp)
    8000188c:	00813483          	ld	s1,8(sp)
    80001890:	02010113          	addi	sp,sp,32
    80001894:	00008067          	ret
    80001898:	00000097          	auipc	ra,0x0
    8000189c:	3cc080e7          	jalr	972(ra) # 80001c64 <plic_claim>
    800018a0:	00a00793          	li	a5,10
    800018a4:	00050493          	mv	s1,a0
    800018a8:	06f50863          	beq	a0,a5,80001918 <kerneltrap+0x12c>
    800018ac:	fc050ce3          	beqz	a0,80001884 <kerneltrap+0x98>
    800018b0:	00050593          	mv	a1,a0
    800018b4:	00003517          	auipc	a0,0x3
    800018b8:	83c50513          	addi	a0,a0,-1988 # 800040f0 <CONSOLE_STATUS+0xe0>
    800018bc:	00000097          	auipc	ra,0x0
    800018c0:	7ec080e7          	jalr	2028(ra) # 800020a8 <__printf>
    800018c4:	01013403          	ld	s0,16(sp)
    800018c8:	01813083          	ld	ra,24(sp)
    800018cc:	00048513          	mv	a0,s1
    800018d0:	00813483          	ld	s1,8(sp)
    800018d4:	02010113          	addi	sp,sp,32
    800018d8:	00000317          	auipc	t1,0x0
    800018dc:	3c430067          	jr	964(t1) # 80001c9c <plic_complete>
    800018e0:	00004517          	auipc	a0,0x4
    800018e4:	b9050513          	addi	a0,a0,-1136 # 80005470 <tickslock>
    800018e8:	00001097          	auipc	ra,0x1
    800018ec:	494080e7          	jalr	1172(ra) # 80002d7c <acquire>
    800018f0:	00003717          	auipc	a4,0x3
    800018f4:	a8470713          	addi	a4,a4,-1404 # 80004374 <ticks>
    800018f8:	00072783          	lw	a5,0(a4)
    800018fc:	00004517          	auipc	a0,0x4
    80001900:	b7450513          	addi	a0,a0,-1164 # 80005470 <tickslock>
    80001904:	0017879b          	addiw	a5,a5,1
    80001908:	00f72023          	sw	a5,0(a4)
    8000190c:	00001097          	auipc	ra,0x1
    80001910:	53c080e7          	jalr	1340(ra) # 80002e48 <release>
    80001914:	f65ff06f          	j	80001878 <kerneltrap+0x8c>
    80001918:	00001097          	auipc	ra,0x1
    8000191c:	098080e7          	jalr	152(ra) # 800029b0 <uartintr>
    80001920:	fa5ff06f          	j	800018c4 <kerneltrap+0xd8>
    80001924:	00002517          	auipc	a0,0x2
    80001928:	7ac50513          	addi	a0,a0,1964 # 800040d0 <CONSOLE_STATUS+0xc0>
    8000192c:	00000097          	auipc	ra,0x0
    80001930:	720080e7          	jalr	1824(ra) # 8000204c <panic>

0000000080001934 <clockintr>:
    80001934:	fe010113          	addi	sp,sp,-32
    80001938:	00813823          	sd	s0,16(sp)
    8000193c:	00913423          	sd	s1,8(sp)
    80001940:	00113c23          	sd	ra,24(sp)
    80001944:	02010413          	addi	s0,sp,32
    80001948:	00004497          	auipc	s1,0x4
    8000194c:	b2848493          	addi	s1,s1,-1240 # 80005470 <tickslock>
    80001950:	00048513          	mv	a0,s1
    80001954:	00001097          	auipc	ra,0x1
    80001958:	428080e7          	jalr	1064(ra) # 80002d7c <acquire>
    8000195c:	00003717          	auipc	a4,0x3
    80001960:	a1870713          	addi	a4,a4,-1512 # 80004374 <ticks>
    80001964:	00072783          	lw	a5,0(a4)
    80001968:	01013403          	ld	s0,16(sp)
    8000196c:	01813083          	ld	ra,24(sp)
    80001970:	00048513          	mv	a0,s1
    80001974:	0017879b          	addiw	a5,a5,1
    80001978:	00813483          	ld	s1,8(sp)
    8000197c:	00f72023          	sw	a5,0(a4)
    80001980:	02010113          	addi	sp,sp,32
    80001984:	00001317          	auipc	t1,0x1
    80001988:	4c430067          	jr	1220(t1) # 80002e48 <release>

000000008000198c <devintr>:
    8000198c:	142027f3          	csrr	a5,scause
    80001990:	00000513          	li	a0,0
    80001994:	0007c463          	bltz	a5,8000199c <devintr+0x10>
    80001998:	00008067          	ret
    8000199c:	fe010113          	addi	sp,sp,-32
    800019a0:	00813823          	sd	s0,16(sp)
    800019a4:	00113c23          	sd	ra,24(sp)
    800019a8:	00913423          	sd	s1,8(sp)
    800019ac:	02010413          	addi	s0,sp,32
    800019b0:	0ff7f713          	andi	a4,a5,255
    800019b4:	00900693          	li	a3,9
    800019b8:	04d70c63          	beq	a4,a3,80001a10 <devintr+0x84>
    800019bc:	fff00713          	li	a4,-1
    800019c0:	03f71713          	slli	a4,a4,0x3f
    800019c4:	00170713          	addi	a4,a4,1
    800019c8:	00e78c63          	beq	a5,a4,800019e0 <devintr+0x54>
    800019cc:	01813083          	ld	ra,24(sp)
    800019d0:	01013403          	ld	s0,16(sp)
    800019d4:	00813483          	ld	s1,8(sp)
    800019d8:	02010113          	addi	sp,sp,32
    800019dc:	00008067          	ret
    800019e0:	00000097          	auipc	ra,0x0
    800019e4:	c8c080e7          	jalr	-884(ra) # 8000166c <cpuid>
    800019e8:	06050663          	beqz	a0,80001a54 <devintr+0xc8>
    800019ec:	144027f3          	csrr	a5,sip
    800019f0:	ffd7f793          	andi	a5,a5,-3
    800019f4:	14479073          	csrw	sip,a5
    800019f8:	01813083          	ld	ra,24(sp)
    800019fc:	01013403          	ld	s0,16(sp)
    80001a00:	00813483          	ld	s1,8(sp)
    80001a04:	00200513          	li	a0,2
    80001a08:	02010113          	addi	sp,sp,32
    80001a0c:	00008067          	ret
    80001a10:	00000097          	auipc	ra,0x0
    80001a14:	254080e7          	jalr	596(ra) # 80001c64 <plic_claim>
    80001a18:	00a00793          	li	a5,10
    80001a1c:	00050493          	mv	s1,a0
    80001a20:	06f50663          	beq	a0,a5,80001a8c <devintr+0x100>
    80001a24:	00100513          	li	a0,1
    80001a28:	fa0482e3          	beqz	s1,800019cc <devintr+0x40>
    80001a2c:	00048593          	mv	a1,s1
    80001a30:	00002517          	auipc	a0,0x2
    80001a34:	6c050513          	addi	a0,a0,1728 # 800040f0 <CONSOLE_STATUS+0xe0>
    80001a38:	00000097          	auipc	ra,0x0
    80001a3c:	670080e7          	jalr	1648(ra) # 800020a8 <__printf>
    80001a40:	00048513          	mv	a0,s1
    80001a44:	00000097          	auipc	ra,0x0
    80001a48:	258080e7          	jalr	600(ra) # 80001c9c <plic_complete>
    80001a4c:	00100513          	li	a0,1
    80001a50:	f7dff06f          	j	800019cc <devintr+0x40>
    80001a54:	00004517          	auipc	a0,0x4
    80001a58:	a1c50513          	addi	a0,a0,-1508 # 80005470 <tickslock>
    80001a5c:	00001097          	auipc	ra,0x1
    80001a60:	320080e7          	jalr	800(ra) # 80002d7c <acquire>
    80001a64:	00003717          	auipc	a4,0x3
    80001a68:	91070713          	addi	a4,a4,-1776 # 80004374 <ticks>
    80001a6c:	00072783          	lw	a5,0(a4)
    80001a70:	00004517          	auipc	a0,0x4
    80001a74:	a0050513          	addi	a0,a0,-1536 # 80005470 <tickslock>
    80001a78:	0017879b          	addiw	a5,a5,1
    80001a7c:	00f72023          	sw	a5,0(a4)
    80001a80:	00001097          	auipc	ra,0x1
    80001a84:	3c8080e7          	jalr	968(ra) # 80002e48 <release>
    80001a88:	f65ff06f          	j	800019ec <devintr+0x60>
    80001a8c:	00001097          	auipc	ra,0x1
    80001a90:	f24080e7          	jalr	-220(ra) # 800029b0 <uartintr>
    80001a94:	fadff06f          	j	80001a40 <devintr+0xb4>
	...

0000000080001aa0 <kernelvec>:
    80001aa0:	f0010113          	addi	sp,sp,-256
    80001aa4:	00113023          	sd	ra,0(sp)
    80001aa8:	00213423          	sd	sp,8(sp)
    80001aac:	00313823          	sd	gp,16(sp)
    80001ab0:	00413c23          	sd	tp,24(sp)
    80001ab4:	02513023          	sd	t0,32(sp)
    80001ab8:	02613423          	sd	t1,40(sp)
    80001abc:	02713823          	sd	t2,48(sp)
    80001ac0:	02813c23          	sd	s0,56(sp)
    80001ac4:	04913023          	sd	s1,64(sp)
    80001ac8:	04a13423          	sd	a0,72(sp)
    80001acc:	04b13823          	sd	a1,80(sp)
    80001ad0:	04c13c23          	sd	a2,88(sp)
    80001ad4:	06d13023          	sd	a3,96(sp)
    80001ad8:	06e13423          	sd	a4,104(sp)
    80001adc:	06f13823          	sd	a5,112(sp)
    80001ae0:	07013c23          	sd	a6,120(sp)
    80001ae4:	09113023          	sd	a7,128(sp)
    80001ae8:	09213423          	sd	s2,136(sp)
    80001aec:	09313823          	sd	s3,144(sp)
    80001af0:	09413c23          	sd	s4,152(sp)
    80001af4:	0b513023          	sd	s5,160(sp)
    80001af8:	0b613423          	sd	s6,168(sp)
    80001afc:	0b713823          	sd	s7,176(sp)
    80001b00:	0b813c23          	sd	s8,184(sp)
    80001b04:	0d913023          	sd	s9,192(sp)
    80001b08:	0da13423          	sd	s10,200(sp)
    80001b0c:	0db13823          	sd	s11,208(sp)
    80001b10:	0dc13c23          	sd	t3,216(sp)
    80001b14:	0fd13023          	sd	t4,224(sp)
    80001b18:	0fe13423          	sd	t5,232(sp)
    80001b1c:	0ff13823          	sd	t6,240(sp)
    80001b20:	ccdff0ef          	jal	ra,800017ec <kerneltrap>
    80001b24:	00013083          	ld	ra,0(sp)
    80001b28:	00813103          	ld	sp,8(sp)
    80001b2c:	01013183          	ld	gp,16(sp)
    80001b30:	02013283          	ld	t0,32(sp)
    80001b34:	02813303          	ld	t1,40(sp)
    80001b38:	03013383          	ld	t2,48(sp)
    80001b3c:	03813403          	ld	s0,56(sp)
    80001b40:	04013483          	ld	s1,64(sp)
    80001b44:	04813503          	ld	a0,72(sp)
    80001b48:	05013583          	ld	a1,80(sp)
    80001b4c:	05813603          	ld	a2,88(sp)
    80001b50:	06013683          	ld	a3,96(sp)
    80001b54:	06813703          	ld	a4,104(sp)
    80001b58:	07013783          	ld	a5,112(sp)
    80001b5c:	07813803          	ld	a6,120(sp)
    80001b60:	08013883          	ld	a7,128(sp)
    80001b64:	08813903          	ld	s2,136(sp)
    80001b68:	09013983          	ld	s3,144(sp)
    80001b6c:	09813a03          	ld	s4,152(sp)
    80001b70:	0a013a83          	ld	s5,160(sp)
    80001b74:	0a813b03          	ld	s6,168(sp)
    80001b78:	0b013b83          	ld	s7,176(sp)
    80001b7c:	0b813c03          	ld	s8,184(sp)
    80001b80:	0c013c83          	ld	s9,192(sp)
    80001b84:	0c813d03          	ld	s10,200(sp)
    80001b88:	0d013d83          	ld	s11,208(sp)
    80001b8c:	0d813e03          	ld	t3,216(sp)
    80001b90:	0e013e83          	ld	t4,224(sp)
    80001b94:	0e813f03          	ld	t5,232(sp)
    80001b98:	0f013f83          	ld	t6,240(sp)
    80001b9c:	10010113          	addi	sp,sp,256
    80001ba0:	10200073          	sret
    80001ba4:	00000013          	nop
    80001ba8:	00000013          	nop
    80001bac:	00000013          	nop

0000000080001bb0 <timervec>:
    80001bb0:	34051573          	csrrw	a0,mscratch,a0
    80001bb4:	00b53023          	sd	a1,0(a0)
    80001bb8:	00c53423          	sd	a2,8(a0)
    80001bbc:	00d53823          	sd	a3,16(a0)
    80001bc0:	01853583          	ld	a1,24(a0)
    80001bc4:	02053603          	ld	a2,32(a0)
    80001bc8:	0005b683          	ld	a3,0(a1)
    80001bcc:	00c686b3          	add	a3,a3,a2
    80001bd0:	00d5b023          	sd	a3,0(a1)
    80001bd4:	00200593          	li	a1,2
    80001bd8:	14459073          	csrw	sip,a1
    80001bdc:	01053683          	ld	a3,16(a0)
    80001be0:	00853603          	ld	a2,8(a0)
    80001be4:	00053583          	ld	a1,0(a0)
    80001be8:	34051573          	csrrw	a0,mscratch,a0
    80001bec:	30200073          	mret

0000000080001bf0 <plicinit>:
    80001bf0:	ff010113          	addi	sp,sp,-16
    80001bf4:	00813423          	sd	s0,8(sp)
    80001bf8:	01010413          	addi	s0,sp,16
    80001bfc:	00813403          	ld	s0,8(sp)
    80001c00:	0c0007b7          	lui	a5,0xc000
    80001c04:	00100713          	li	a4,1
    80001c08:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80001c0c:	00e7a223          	sw	a4,4(a5)
    80001c10:	01010113          	addi	sp,sp,16
    80001c14:	00008067          	ret

0000000080001c18 <plicinithart>:
    80001c18:	ff010113          	addi	sp,sp,-16
    80001c1c:	00813023          	sd	s0,0(sp)
    80001c20:	00113423          	sd	ra,8(sp)
    80001c24:	01010413          	addi	s0,sp,16
    80001c28:	00000097          	auipc	ra,0x0
    80001c2c:	a44080e7          	jalr	-1468(ra) # 8000166c <cpuid>
    80001c30:	0085171b          	slliw	a4,a0,0x8
    80001c34:	0c0027b7          	lui	a5,0xc002
    80001c38:	00e787b3          	add	a5,a5,a4
    80001c3c:	40200713          	li	a4,1026
    80001c40:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80001c44:	00813083          	ld	ra,8(sp)
    80001c48:	00013403          	ld	s0,0(sp)
    80001c4c:	00d5151b          	slliw	a0,a0,0xd
    80001c50:	0c2017b7          	lui	a5,0xc201
    80001c54:	00a78533          	add	a0,a5,a0
    80001c58:	00052023          	sw	zero,0(a0)
    80001c5c:	01010113          	addi	sp,sp,16
    80001c60:	00008067          	ret

0000000080001c64 <plic_claim>:
    80001c64:	ff010113          	addi	sp,sp,-16
    80001c68:	00813023          	sd	s0,0(sp)
    80001c6c:	00113423          	sd	ra,8(sp)
    80001c70:	01010413          	addi	s0,sp,16
    80001c74:	00000097          	auipc	ra,0x0
    80001c78:	9f8080e7          	jalr	-1544(ra) # 8000166c <cpuid>
    80001c7c:	00813083          	ld	ra,8(sp)
    80001c80:	00013403          	ld	s0,0(sp)
    80001c84:	00d5151b          	slliw	a0,a0,0xd
    80001c88:	0c2017b7          	lui	a5,0xc201
    80001c8c:	00a78533          	add	a0,a5,a0
    80001c90:	00452503          	lw	a0,4(a0)
    80001c94:	01010113          	addi	sp,sp,16
    80001c98:	00008067          	ret

0000000080001c9c <plic_complete>:
    80001c9c:	fe010113          	addi	sp,sp,-32
    80001ca0:	00813823          	sd	s0,16(sp)
    80001ca4:	00913423          	sd	s1,8(sp)
    80001ca8:	00113c23          	sd	ra,24(sp)
    80001cac:	02010413          	addi	s0,sp,32
    80001cb0:	00050493          	mv	s1,a0
    80001cb4:	00000097          	auipc	ra,0x0
    80001cb8:	9b8080e7          	jalr	-1608(ra) # 8000166c <cpuid>
    80001cbc:	01813083          	ld	ra,24(sp)
    80001cc0:	01013403          	ld	s0,16(sp)
    80001cc4:	00d5179b          	slliw	a5,a0,0xd
    80001cc8:	0c201737          	lui	a4,0xc201
    80001ccc:	00f707b3          	add	a5,a4,a5
    80001cd0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80001cd4:	00813483          	ld	s1,8(sp)
    80001cd8:	02010113          	addi	sp,sp,32
    80001cdc:	00008067          	ret

0000000080001ce0 <consolewrite>:
    80001ce0:	fb010113          	addi	sp,sp,-80
    80001ce4:	04813023          	sd	s0,64(sp)
    80001ce8:	04113423          	sd	ra,72(sp)
    80001cec:	02913c23          	sd	s1,56(sp)
    80001cf0:	03213823          	sd	s2,48(sp)
    80001cf4:	03313423          	sd	s3,40(sp)
    80001cf8:	03413023          	sd	s4,32(sp)
    80001cfc:	01513c23          	sd	s5,24(sp)
    80001d00:	05010413          	addi	s0,sp,80
    80001d04:	06c05c63          	blez	a2,80001d7c <consolewrite+0x9c>
    80001d08:	00060993          	mv	s3,a2
    80001d0c:	00050a13          	mv	s4,a0
    80001d10:	00058493          	mv	s1,a1
    80001d14:	00000913          	li	s2,0
    80001d18:	fff00a93          	li	s5,-1
    80001d1c:	01c0006f          	j	80001d38 <consolewrite+0x58>
    80001d20:	fbf44503          	lbu	a0,-65(s0)
    80001d24:	0019091b          	addiw	s2,s2,1
    80001d28:	00148493          	addi	s1,s1,1
    80001d2c:	00001097          	auipc	ra,0x1
    80001d30:	a9c080e7          	jalr	-1380(ra) # 800027c8 <uartputc>
    80001d34:	03298063          	beq	s3,s2,80001d54 <consolewrite+0x74>
    80001d38:	00048613          	mv	a2,s1
    80001d3c:	00100693          	li	a3,1
    80001d40:	000a0593          	mv	a1,s4
    80001d44:	fbf40513          	addi	a0,s0,-65
    80001d48:	00000097          	auipc	ra,0x0
    80001d4c:	9dc080e7          	jalr	-1572(ra) # 80001724 <either_copyin>
    80001d50:	fd5518e3          	bne	a0,s5,80001d20 <consolewrite+0x40>
    80001d54:	04813083          	ld	ra,72(sp)
    80001d58:	04013403          	ld	s0,64(sp)
    80001d5c:	03813483          	ld	s1,56(sp)
    80001d60:	02813983          	ld	s3,40(sp)
    80001d64:	02013a03          	ld	s4,32(sp)
    80001d68:	01813a83          	ld	s5,24(sp)
    80001d6c:	00090513          	mv	a0,s2
    80001d70:	03013903          	ld	s2,48(sp)
    80001d74:	05010113          	addi	sp,sp,80
    80001d78:	00008067          	ret
    80001d7c:	00000913          	li	s2,0
    80001d80:	fd5ff06f          	j	80001d54 <consolewrite+0x74>

0000000080001d84 <consoleread>:
    80001d84:	f9010113          	addi	sp,sp,-112
    80001d88:	06813023          	sd	s0,96(sp)
    80001d8c:	04913c23          	sd	s1,88(sp)
    80001d90:	05213823          	sd	s2,80(sp)
    80001d94:	05313423          	sd	s3,72(sp)
    80001d98:	05413023          	sd	s4,64(sp)
    80001d9c:	03513c23          	sd	s5,56(sp)
    80001da0:	03613823          	sd	s6,48(sp)
    80001da4:	03713423          	sd	s7,40(sp)
    80001da8:	03813023          	sd	s8,32(sp)
    80001dac:	06113423          	sd	ra,104(sp)
    80001db0:	01913c23          	sd	s9,24(sp)
    80001db4:	07010413          	addi	s0,sp,112
    80001db8:	00060b93          	mv	s7,a2
    80001dbc:	00050913          	mv	s2,a0
    80001dc0:	00058c13          	mv	s8,a1
    80001dc4:	00060b1b          	sext.w	s6,a2
    80001dc8:	00003497          	auipc	s1,0x3
    80001dcc:	6c048493          	addi	s1,s1,1728 # 80005488 <cons>
    80001dd0:	00400993          	li	s3,4
    80001dd4:	fff00a13          	li	s4,-1
    80001dd8:	00a00a93          	li	s5,10
    80001ddc:	05705e63          	blez	s7,80001e38 <consoleread+0xb4>
    80001de0:	09c4a703          	lw	a4,156(s1)
    80001de4:	0984a783          	lw	a5,152(s1)
    80001de8:	0007071b          	sext.w	a4,a4
    80001dec:	08e78463          	beq	a5,a4,80001e74 <consoleread+0xf0>
    80001df0:	07f7f713          	andi	a4,a5,127
    80001df4:	00e48733          	add	a4,s1,a4
    80001df8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80001dfc:	0017869b          	addiw	a3,a5,1
    80001e00:	08d4ac23          	sw	a3,152(s1)
    80001e04:	00070c9b          	sext.w	s9,a4
    80001e08:	0b370663          	beq	a4,s3,80001eb4 <consoleread+0x130>
    80001e0c:	00100693          	li	a3,1
    80001e10:	f9f40613          	addi	a2,s0,-97
    80001e14:	000c0593          	mv	a1,s8
    80001e18:	00090513          	mv	a0,s2
    80001e1c:	f8e40fa3          	sb	a4,-97(s0)
    80001e20:	00000097          	auipc	ra,0x0
    80001e24:	8b8080e7          	jalr	-1864(ra) # 800016d8 <either_copyout>
    80001e28:	01450863          	beq	a0,s4,80001e38 <consoleread+0xb4>
    80001e2c:	001c0c13          	addi	s8,s8,1
    80001e30:	fffb8b9b          	addiw	s7,s7,-1
    80001e34:	fb5c94e3          	bne	s9,s5,80001ddc <consoleread+0x58>
    80001e38:	000b851b          	sext.w	a0,s7
    80001e3c:	06813083          	ld	ra,104(sp)
    80001e40:	06013403          	ld	s0,96(sp)
    80001e44:	05813483          	ld	s1,88(sp)
    80001e48:	05013903          	ld	s2,80(sp)
    80001e4c:	04813983          	ld	s3,72(sp)
    80001e50:	04013a03          	ld	s4,64(sp)
    80001e54:	03813a83          	ld	s5,56(sp)
    80001e58:	02813b83          	ld	s7,40(sp)
    80001e5c:	02013c03          	ld	s8,32(sp)
    80001e60:	01813c83          	ld	s9,24(sp)
    80001e64:	40ab053b          	subw	a0,s6,a0
    80001e68:	03013b03          	ld	s6,48(sp)
    80001e6c:	07010113          	addi	sp,sp,112
    80001e70:	00008067          	ret
    80001e74:	00001097          	auipc	ra,0x1
    80001e78:	1d8080e7          	jalr	472(ra) # 8000304c <push_on>
    80001e7c:	0984a703          	lw	a4,152(s1)
    80001e80:	09c4a783          	lw	a5,156(s1)
    80001e84:	0007879b          	sext.w	a5,a5
    80001e88:	fef70ce3          	beq	a4,a5,80001e80 <consoleread+0xfc>
    80001e8c:	00001097          	auipc	ra,0x1
    80001e90:	234080e7          	jalr	564(ra) # 800030c0 <pop_on>
    80001e94:	0984a783          	lw	a5,152(s1)
    80001e98:	07f7f713          	andi	a4,a5,127
    80001e9c:	00e48733          	add	a4,s1,a4
    80001ea0:	01874703          	lbu	a4,24(a4)
    80001ea4:	0017869b          	addiw	a3,a5,1
    80001ea8:	08d4ac23          	sw	a3,152(s1)
    80001eac:	00070c9b          	sext.w	s9,a4
    80001eb0:	f5371ee3          	bne	a4,s3,80001e0c <consoleread+0x88>
    80001eb4:	000b851b          	sext.w	a0,s7
    80001eb8:	f96bf2e3          	bgeu	s7,s6,80001e3c <consoleread+0xb8>
    80001ebc:	08f4ac23          	sw	a5,152(s1)
    80001ec0:	f7dff06f          	j	80001e3c <consoleread+0xb8>

0000000080001ec4 <consputc>:
    80001ec4:	10000793          	li	a5,256
    80001ec8:	00f50663          	beq	a0,a5,80001ed4 <consputc+0x10>
    80001ecc:	00001317          	auipc	t1,0x1
    80001ed0:	9f430067          	jr	-1548(t1) # 800028c0 <uartputc_sync>
    80001ed4:	ff010113          	addi	sp,sp,-16
    80001ed8:	00113423          	sd	ra,8(sp)
    80001edc:	00813023          	sd	s0,0(sp)
    80001ee0:	01010413          	addi	s0,sp,16
    80001ee4:	00800513          	li	a0,8
    80001ee8:	00001097          	auipc	ra,0x1
    80001eec:	9d8080e7          	jalr	-1576(ra) # 800028c0 <uartputc_sync>
    80001ef0:	02000513          	li	a0,32
    80001ef4:	00001097          	auipc	ra,0x1
    80001ef8:	9cc080e7          	jalr	-1588(ra) # 800028c0 <uartputc_sync>
    80001efc:	00013403          	ld	s0,0(sp)
    80001f00:	00813083          	ld	ra,8(sp)
    80001f04:	00800513          	li	a0,8
    80001f08:	01010113          	addi	sp,sp,16
    80001f0c:	00001317          	auipc	t1,0x1
    80001f10:	9b430067          	jr	-1612(t1) # 800028c0 <uartputc_sync>

0000000080001f14 <consoleintr>:
    80001f14:	fe010113          	addi	sp,sp,-32
    80001f18:	00813823          	sd	s0,16(sp)
    80001f1c:	00913423          	sd	s1,8(sp)
    80001f20:	01213023          	sd	s2,0(sp)
    80001f24:	00113c23          	sd	ra,24(sp)
    80001f28:	02010413          	addi	s0,sp,32
    80001f2c:	00003917          	auipc	s2,0x3
    80001f30:	55c90913          	addi	s2,s2,1372 # 80005488 <cons>
    80001f34:	00050493          	mv	s1,a0
    80001f38:	00090513          	mv	a0,s2
    80001f3c:	00001097          	auipc	ra,0x1
    80001f40:	e40080e7          	jalr	-448(ra) # 80002d7c <acquire>
    80001f44:	02048c63          	beqz	s1,80001f7c <consoleintr+0x68>
    80001f48:	0a092783          	lw	a5,160(s2)
    80001f4c:	09892703          	lw	a4,152(s2)
    80001f50:	07f00693          	li	a3,127
    80001f54:	40e7873b          	subw	a4,a5,a4
    80001f58:	02e6e263          	bltu	a3,a4,80001f7c <consoleintr+0x68>
    80001f5c:	00d00713          	li	a4,13
    80001f60:	04e48063          	beq	s1,a4,80001fa0 <consoleintr+0x8c>
    80001f64:	07f7f713          	andi	a4,a5,127
    80001f68:	00e90733          	add	a4,s2,a4
    80001f6c:	0017879b          	addiw	a5,a5,1
    80001f70:	0af92023          	sw	a5,160(s2)
    80001f74:	00970c23          	sb	s1,24(a4)
    80001f78:	08f92e23          	sw	a5,156(s2)
    80001f7c:	01013403          	ld	s0,16(sp)
    80001f80:	01813083          	ld	ra,24(sp)
    80001f84:	00813483          	ld	s1,8(sp)
    80001f88:	00013903          	ld	s2,0(sp)
    80001f8c:	00003517          	auipc	a0,0x3
    80001f90:	4fc50513          	addi	a0,a0,1276 # 80005488 <cons>
    80001f94:	02010113          	addi	sp,sp,32
    80001f98:	00001317          	auipc	t1,0x1
    80001f9c:	eb030067          	jr	-336(t1) # 80002e48 <release>
    80001fa0:	00a00493          	li	s1,10
    80001fa4:	fc1ff06f          	j	80001f64 <consoleintr+0x50>

0000000080001fa8 <consoleinit>:
    80001fa8:	fe010113          	addi	sp,sp,-32
    80001fac:	00113c23          	sd	ra,24(sp)
    80001fb0:	00813823          	sd	s0,16(sp)
    80001fb4:	00913423          	sd	s1,8(sp)
    80001fb8:	02010413          	addi	s0,sp,32
    80001fbc:	00003497          	auipc	s1,0x3
    80001fc0:	4cc48493          	addi	s1,s1,1228 # 80005488 <cons>
    80001fc4:	00048513          	mv	a0,s1
    80001fc8:	00002597          	auipc	a1,0x2
    80001fcc:	18058593          	addi	a1,a1,384 # 80004148 <CONSOLE_STATUS+0x138>
    80001fd0:	00001097          	auipc	ra,0x1
    80001fd4:	d88080e7          	jalr	-632(ra) # 80002d58 <initlock>
    80001fd8:	00000097          	auipc	ra,0x0
    80001fdc:	7ac080e7          	jalr	1964(ra) # 80002784 <uartinit>
    80001fe0:	01813083          	ld	ra,24(sp)
    80001fe4:	01013403          	ld	s0,16(sp)
    80001fe8:	00000797          	auipc	a5,0x0
    80001fec:	d9c78793          	addi	a5,a5,-612 # 80001d84 <consoleread>
    80001ff0:	0af4bc23          	sd	a5,184(s1)
    80001ff4:	00000797          	auipc	a5,0x0
    80001ff8:	cec78793          	addi	a5,a5,-788 # 80001ce0 <consolewrite>
    80001ffc:	0cf4b023          	sd	a5,192(s1)
    80002000:	00813483          	ld	s1,8(sp)
    80002004:	02010113          	addi	sp,sp,32
    80002008:	00008067          	ret

000000008000200c <console_read>:
    8000200c:	ff010113          	addi	sp,sp,-16
    80002010:	00813423          	sd	s0,8(sp)
    80002014:	01010413          	addi	s0,sp,16
    80002018:	00813403          	ld	s0,8(sp)
    8000201c:	00003317          	auipc	t1,0x3
    80002020:	52433303          	ld	t1,1316(t1) # 80005540 <devsw+0x10>
    80002024:	01010113          	addi	sp,sp,16
    80002028:	00030067          	jr	t1

000000008000202c <console_write>:
    8000202c:	ff010113          	addi	sp,sp,-16
    80002030:	00813423          	sd	s0,8(sp)
    80002034:	01010413          	addi	s0,sp,16
    80002038:	00813403          	ld	s0,8(sp)
    8000203c:	00003317          	auipc	t1,0x3
    80002040:	50c33303          	ld	t1,1292(t1) # 80005548 <devsw+0x18>
    80002044:	01010113          	addi	sp,sp,16
    80002048:	00030067          	jr	t1

000000008000204c <panic>:
    8000204c:	fe010113          	addi	sp,sp,-32
    80002050:	00113c23          	sd	ra,24(sp)
    80002054:	00813823          	sd	s0,16(sp)
    80002058:	00913423          	sd	s1,8(sp)
    8000205c:	02010413          	addi	s0,sp,32
    80002060:	00050493          	mv	s1,a0
    80002064:	00002517          	auipc	a0,0x2
    80002068:	0ec50513          	addi	a0,a0,236 # 80004150 <CONSOLE_STATUS+0x140>
    8000206c:	00003797          	auipc	a5,0x3
    80002070:	5607ae23          	sw	zero,1404(a5) # 800055e8 <pr+0x18>
    80002074:	00000097          	auipc	ra,0x0
    80002078:	034080e7          	jalr	52(ra) # 800020a8 <__printf>
    8000207c:	00048513          	mv	a0,s1
    80002080:	00000097          	auipc	ra,0x0
    80002084:	028080e7          	jalr	40(ra) # 800020a8 <__printf>
    80002088:	00002517          	auipc	a0,0x2
    8000208c:	0a850513          	addi	a0,a0,168 # 80004130 <CONSOLE_STATUS+0x120>
    80002090:	00000097          	auipc	ra,0x0
    80002094:	018080e7          	jalr	24(ra) # 800020a8 <__printf>
    80002098:	00100793          	li	a5,1
    8000209c:	00002717          	auipc	a4,0x2
    800020a0:	2cf72e23          	sw	a5,732(a4) # 80004378 <panicked>
    800020a4:	0000006f          	j	800020a4 <panic+0x58>

00000000800020a8 <__printf>:
    800020a8:	f3010113          	addi	sp,sp,-208
    800020ac:	08813023          	sd	s0,128(sp)
    800020b0:	07313423          	sd	s3,104(sp)
    800020b4:	09010413          	addi	s0,sp,144
    800020b8:	05813023          	sd	s8,64(sp)
    800020bc:	08113423          	sd	ra,136(sp)
    800020c0:	06913c23          	sd	s1,120(sp)
    800020c4:	07213823          	sd	s2,112(sp)
    800020c8:	07413023          	sd	s4,96(sp)
    800020cc:	05513c23          	sd	s5,88(sp)
    800020d0:	05613823          	sd	s6,80(sp)
    800020d4:	05713423          	sd	s7,72(sp)
    800020d8:	03913c23          	sd	s9,56(sp)
    800020dc:	03a13823          	sd	s10,48(sp)
    800020e0:	03b13423          	sd	s11,40(sp)
    800020e4:	00003317          	auipc	t1,0x3
    800020e8:	4ec30313          	addi	t1,t1,1260 # 800055d0 <pr>
    800020ec:	01832c03          	lw	s8,24(t1)
    800020f0:	00b43423          	sd	a1,8(s0)
    800020f4:	00c43823          	sd	a2,16(s0)
    800020f8:	00d43c23          	sd	a3,24(s0)
    800020fc:	02e43023          	sd	a4,32(s0)
    80002100:	02f43423          	sd	a5,40(s0)
    80002104:	03043823          	sd	a6,48(s0)
    80002108:	03143c23          	sd	a7,56(s0)
    8000210c:	00050993          	mv	s3,a0
    80002110:	4a0c1663          	bnez	s8,800025bc <__printf+0x514>
    80002114:	60098c63          	beqz	s3,8000272c <__printf+0x684>
    80002118:	0009c503          	lbu	a0,0(s3)
    8000211c:	00840793          	addi	a5,s0,8
    80002120:	f6f43c23          	sd	a5,-136(s0)
    80002124:	00000493          	li	s1,0
    80002128:	22050063          	beqz	a0,80002348 <__printf+0x2a0>
    8000212c:	00002a37          	lui	s4,0x2
    80002130:	00018ab7          	lui	s5,0x18
    80002134:	000f4b37          	lui	s6,0xf4
    80002138:	00989bb7          	lui	s7,0x989
    8000213c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80002140:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80002144:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80002148:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000214c:	00148c9b          	addiw	s9,s1,1
    80002150:	02500793          	li	a5,37
    80002154:	01998933          	add	s2,s3,s9
    80002158:	38f51263          	bne	a0,a5,800024dc <__printf+0x434>
    8000215c:	00094783          	lbu	a5,0(s2)
    80002160:	00078c9b          	sext.w	s9,a5
    80002164:	1e078263          	beqz	a5,80002348 <__printf+0x2a0>
    80002168:	0024849b          	addiw	s1,s1,2
    8000216c:	07000713          	li	a4,112
    80002170:	00998933          	add	s2,s3,s1
    80002174:	38e78a63          	beq	a5,a4,80002508 <__printf+0x460>
    80002178:	20f76863          	bltu	a4,a5,80002388 <__printf+0x2e0>
    8000217c:	42a78863          	beq	a5,a0,800025ac <__printf+0x504>
    80002180:	06400713          	li	a4,100
    80002184:	40e79663          	bne	a5,a4,80002590 <__printf+0x4e8>
    80002188:	f7843783          	ld	a5,-136(s0)
    8000218c:	0007a603          	lw	a2,0(a5)
    80002190:	00878793          	addi	a5,a5,8
    80002194:	f6f43c23          	sd	a5,-136(s0)
    80002198:	42064a63          	bltz	a2,800025cc <__printf+0x524>
    8000219c:	00a00713          	li	a4,10
    800021a0:	02e677bb          	remuw	a5,a2,a4
    800021a4:	00002d97          	auipc	s11,0x2
    800021a8:	fd4d8d93          	addi	s11,s11,-44 # 80004178 <digits>
    800021ac:	00900593          	li	a1,9
    800021b0:	0006051b          	sext.w	a0,a2
    800021b4:	00000c93          	li	s9,0
    800021b8:	02079793          	slli	a5,a5,0x20
    800021bc:	0207d793          	srli	a5,a5,0x20
    800021c0:	00fd87b3          	add	a5,s11,a5
    800021c4:	0007c783          	lbu	a5,0(a5)
    800021c8:	02e656bb          	divuw	a3,a2,a4
    800021cc:	f8f40023          	sb	a5,-128(s0)
    800021d0:	14c5d863          	bge	a1,a2,80002320 <__printf+0x278>
    800021d4:	06300593          	li	a1,99
    800021d8:	00100c93          	li	s9,1
    800021dc:	02e6f7bb          	remuw	a5,a3,a4
    800021e0:	02079793          	slli	a5,a5,0x20
    800021e4:	0207d793          	srli	a5,a5,0x20
    800021e8:	00fd87b3          	add	a5,s11,a5
    800021ec:	0007c783          	lbu	a5,0(a5)
    800021f0:	02e6d73b          	divuw	a4,a3,a4
    800021f4:	f8f400a3          	sb	a5,-127(s0)
    800021f8:	12a5f463          	bgeu	a1,a0,80002320 <__printf+0x278>
    800021fc:	00a00693          	li	a3,10
    80002200:	00900593          	li	a1,9
    80002204:	02d777bb          	remuw	a5,a4,a3
    80002208:	02079793          	slli	a5,a5,0x20
    8000220c:	0207d793          	srli	a5,a5,0x20
    80002210:	00fd87b3          	add	a5,s11,a5
    80002214:	0007c503          	lbu	a0,0(a5)
    80002218:	02d757bb          	divuw	a5,a4,a3
    8000221c:	f8a40123          	sb	a0,-126(s0)
    80002220:	48e5f263          	bgeu	a1,a4,800026a4 <__printf+0x5fc>
    80002224:	06300513          	li	a0,99
    80002228:	02d7f5bb          	remuw	a1,a5,a3
    8000222c:	02059593          	slli	a1,a1,0x20
    80002230:	0205d593          	srli	a1,a1,0x20
    80002234:	00bd85b3          	add	a1,s11,a1
    80002238:	0005c583          	lbu	a1,0(a1)
    8000223c:	02d7d7bb          	divuw	a5,a5,a3
    80002240:	f8b401a3          	sb	a1,-125(s0)
    80002244:	48e57263          	bgeu	a0,a4,800026c8 <__printf+0x620>
    80002248:	3e700513          	li	a0,999
    8000224c:	02d7f5bb          	remuw	a1,a5,a3
    80002250:	02059593          	slli	a1,a1,0x20
    80002254:	0205d593          	srli	a1,a1,0x20
    80002258:	00bd85b3          	add	a1,s11,a1
    8000225c:	0005c583          	lbu	a1,0(a1)
    80002260:	02d7d7bb          	divuw	a5,a5,a3
    80002264:	f8b40223          	sb	a1,-124(s0)
    80002268:	46e57663          	bgeu	a0,a4,800026d4 <__printf+0x62c>
    8000226c:	02d7f5bb          	remuw	a1,a5,a3
    80002270:	02059593          	slli	a1,a1,0x20
    80002274:	0205d593          	srli	a1,a1,0x20
    80002278:	00bd85b3          	add	a1,s11,a1
    8000227c:	0005c583          	lbu	a1,0(a1)
    80002280:	02d7d7bb          	divuw	a5,a5,a3
    80002284:	f8b402a3          	sb	a1,-123(s0)
    80002288:	46ea7863          	bgeu	s4,a4,800026f8 <__printf+0x650>
    8000228c:	02d7f5bb          	remuw	a1,a5,a3
    80002290:	02059593          	slli	a1,a1,0x20
    80002294:	0205d593          	srli	a1,a1,0x20
    80002298:	00bd85b3          	add	a1,s11,a1
    8000229c:	0005c583          	lbu	a1,0(a1)
    800022a0:	02d7d7bb          	divuw	a5,a5,a3
    800022a4:	f8b40323          	sb	a1,-122(s0)
    800022a8:	3eeaf863          	bgeu	s5,a4,80002698 <__printf+0x5f0>
    800022ac:	02d7f5bb          	remuw	a1,a5,a3
    800022b0:	02059593          	slli	a1,a1,0x20
    800022b4:	0205d593          	srli	a1,a1,0x20
    800022b8:	00bd85b3          	add	a1,s11,a1
    800022bc:	0005c583          	lbu	a1,0(a1)
    800022c0:	02d7d7bb          	divuw	a5,a5,a3
    800022c4:	f8b403a3          	sb	a1,-121(s0)
    800022c8:	42eb7e63          	bgeu	s6,a4,80002704 <__printf+0x65c>
    800022cc:	02d7f5bb          	remuw	a1,a5,a3
    800022d0:	02059593          	slli	a1,a1,0x20
    800022d4:	0205d593          	srli	a1,a1,0x20
    800022d8:	00bd85b3          	add	a1,s11,a1
    800022dc:	0005c583          	lbu	a1,0(a1)
    800022e0:	02d7d7bb          	divuw	a5,a5,a3
    800022e4:	f8b40423          	sb	a1,-120(s0)
    800022e8:	42ebfc63          	bgeu	s7,a4,80002720 <__printf+0x678>
    800022ec:	02079793          	slli	a5,a5,0x20
    800022f0:	0207d793          	srli	a5,a5,0x20
    800022f4:	00fd8db3          	add	s11,s11,a5
    800022f8:	000dc703          	lbu	a4,0(s11)
    800022fc:	00a00793          	li	a5,10
    80002300:	00900c93          	li	s9,9
    80002304:	f8e404a3          	sb	a4,-119(s0)
    80002308:	00065c63          	bgez	a2,80002320 <__printf+0x278>
    8000230c:	f9040713          	addi	a4,s0,-112
    80002310:	00f70733          	add	a4,a4,a5
    80002314:	02d00693          	li	a3,45
    80002318:	fed70823          	sb	a3,-16(a4)
    8000231c:	00078c93          	mv	s9,a5
    80002320:	f8040793          	addi	a5,s0,-128
    80002324:	01978cb3          	add	s9,a5,s9
    80002328:	f7f40d13          	addi	s10,s0,-129
    8000232c:	000cc503          	lbu	a0,0(s9)
    80002330:	fffc8c93          	addi	s9,s9,-1
    80002334:	00000097          	auipc	ra,0x0
    80002338:	b90080e7          	jalr	-1136(ra) # 80001ec4 <consputc>
    8000233c:	ffac98e3          	bne	s9,s10,8000232c <__printf+0x284>
    80002340:	00094503          	lbu	a0,0(s2)
    80002344:	e00514e3          	bnez	a0,8000214c <__printf+0xa4>
    80002348:	1a0c1663          	bnez	s8,800024f4 <__printf+0x44c>
    8000234c:	08813083          	ld	ra,136(sp)
    80002350:	08013403          	ld	s0,128(sp)
    80002354:	07813483          	ld	s1,120(sp)
    80002358:	07013903          	ld	s2,112(sp)
    8000235c:	06813983          	ld	s3,104(sp)
    80002360:	06013a03          	ld	s4,96(sp)
    80002364:	05813a83          	ld	s5,88(sp)
    80002368:	05013b03          	ld	s6,80(sp)
    8000236c:	04813b83          	ld	s7,72(sp)
    80002370:	04013c03          	ld	s8,64(sp)
    80002374:	03813c83          	ld	s9,56(sp)
    80002378:	03013d03          	ld	s10,48(sp)
    8000237c:	02813d83          	ld	s11,40(sp)
    80002380:	0d010113          	addi	sp,sp,208
    80002384:	00008067          	ret
    80002388:	07300713          	li	a4,115
    8000238c:	1ce78a63          	beq	a5,a4,80002560 <__printf+0x4b8>
    80002390:	07800713          	li	a4,120
    80002394:	1ee79e63          	bne	a5,a4,80002590 <__printf+0x4e8>
    80002398:	f7843783          	ld	a5,-136(s0)
    8000239c:	0007a703          	lw	a4,0(a5)
    800023a0:	00878793          	addi	a5,a5,8
    800023a4:	f6f43c23          	sd	a5,-136(s0)
    800023a8:	28074263          	bltz	a4,8000262c <__printf+0x584>
    800023ac:	00002d97          	auipc	s11,0x2
    800023b0:	dccd8d93          	addi	s11,s11,-564 # 80004178 <digits>
    800023b4:	00f77793          	andi	a5,a4,15
    800023b8:	00fd87b3          	add	a5,s11,a5
    800023bc:	0007c683          	lbu	a3,0(a5)
    800023c0:	00f00613          	li	a2,15
    800023c4:	0007079b          	sext.w	a5,a4
    800023c8:	f8d40023          	sb	a3,-128(s0)
    800023cc:	0047559b          	srliw	a1,a4,0x4
    800023d0:	0047569b          	srliw	a3,a4,0x4
    800023d4:	00000c93          	li	s9,0
    800023d8:	0ee65063          	bge	a2,a4,800024b8 <__printf+0x410>
    800023dc:	00f6f693          	andi	a3,a3,15
    800023e0:	00dd86b3          	add	a3,s11,a3
    800023e4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800023e8:	0087d79b          	srliw	a5,a5,0x8
    800023ec:	00100c93          	li	s9,1
    800023f0:	f8d400a3          	sb	a3,-127(s0)
    800023f4:	0cb67263          	bgeu	a2,a1,800024b8 <__printf+0x410>
    800023f8:	00f7f693          	andi	a3,a5,15
    800023fc:	00dd86b3          	add	a3,s11,a3
    80002400:	0006c583          	lbu	a1,0(a3)
    80002404:	00f00613          	li	a2,15
    80002408:	0047d69b          	srliw	a3,a5,0x4
    8000240c:	f8b40123          	sb	a1,-126(s0)
    80002410:	0047d593          	srli	a1,a5,0x4
    80002414:	28f67e63          	bgeu	a2,a5,800026b0 <__printf+0x608>
    80002418:	00f6f693          	andi	a3,a3,15
    8000241c:	00dd86b3          	add	a3,s11,a3
    80002420:	0006c503          	lbu	a0,0(a3)
    80002424:	0087d813          	srli	a6,a5,0x8
    80002428:	0087d69b          	srliw	a3,a5,0x8
    8000242c:	f8a401a3          	sb	a0,-125(s0)
    80002430:	28b67663          	bgeu	a2,a1,800026bc <__printf+0x614>
    80002434:	00f6f693          	andi	a3,a3,15
    80002438:	00dd86b3          	add	a3,s11,a3
    8000243c:	0006c583          	lbu	a1,0(a3)
    80002440:	00c7d513          	srli	a0,a5,0xc
    80002444:	00c7d69b          	srliw	a3,a5,0xc
    80002448:	f8b40223          	sb	a1,-124(s0)
    8000244c:	29067a63          	bgeu	a2,a6,800026e0 <__printf+0x638>
    80002450:	00f6f693          	andi	a3,a3,15
    80002454:	00dd86b3          	add	a3,s11,a3
    80002458:	0006c583          	lbu	a1,0(a3)
    8000245c:	0107d813          	srli	a6,a5,0x10
    80002460:	0107d69b          	srliw	a3,a5,0x10
    80002464:	f8b402a3          	sb	a1,-123(s0)
    80002468:	28a67263          	bgeu	a2,a0,800026ec <__printf+0x644>
    8000246c:	00f6f693          	andi	a3,a3,15
    80002470:	00dd86b3          	add	a3,s11,a3
    80002474:	0006c683          	lbu	a3,0(a3)
    80002478:	0147d79b          	srliw	a5,a5,0x14
    8000247c:	f8d40323          	sb	a3,-122(s0)
    80002480:	21067663          	bgeu	a2,a6,8000268c <__printf+0x5e4>
    80002484:	02079793          	slli	a5,a5,0x20
    80002488:	0207d793          	srli	a5,a5,0x20
    8000248c:	00fd8db3          	add	s11,s11,a5
    80002490:	000dc683          	lbu	a3,0(s11)
    80002494:	00800793          	li	a5,8
    80002498:	00700c93          	li	s9,7
    8000249c:	f8d403a3          	sb	a3,-121(s0)
    800024a0:	00075c63          	bgez	a4,800024b8 <__printf+0x410>
    800024a4:	f9040713          	addi	a4,s0,-112
    800024a8:	00f70733          	add	a4,a4,a5
    800024ac:	02d00693          	li	a3,45
    800024b0:	fed70823          	sb	a3,-16(a4)
    800024b4:	00078c93          	mv	s9,a5
    800024b8:	f8040793          	addi	a5,s0,-128
    800024bc:	01978cb3          	add	s9,a5,s9
    800024c0:	f7f40d13          	addi	s10,s0,-129
    800024c4:	000cc503          	lbu	a0,0(s9)
    800024c8:	fffc8c93          	addi	s9,s9,-1
    800024cc:	00000097          	auipc	ra,0x0
    800024d0:	9f8080e7          	jalr	-1544(ra) # 80001ec4 <consputc>
    800024d4:	ff9d18e3          	bne	s10,s9,800024c4 <__printf+0x41c>
    800024d8:	0100006f          	j	800024e8 <__printf+0x440>
    800024dc:	00000097          	auipc	ra,0x0
    800024e0:	9e8080e7          	jalr	-1560(ra) # 80001ec4 <consputc>
    800024e4:	000c8493          	mv	s1,s9
    800024e8:	00094503          	lbu	a0,0(s2)
    800024ec:	c60510e3          	bnez	a0,8000214c <__printf+0xa4>
    800024f0:	e40c0ee3          	beqz	s8,8000234c <__printf+0x2a4>
    800024f4:	00003517          	auipc	a0,0x3
    800024f8:	0dc50513          	addi	a0,a0,220 # 800055d0 <pr>
    800024fc:	00001097          	auipc	ra,0x1
    80002500:	94c080e7          	jalr	-1716(ra) # 80002e48 <release>
    80002504:	e49ff06f          	j	8000234c <__printf+0x2a4>
    80002508:	f7843783          	ld	a5,-136(s0)
    8000250c:	03000513          	li	a0,48
    80002510:	01000d13          	li	s10,16
    80002514:	00878713          	addi	a4,a5,8
    80002518:	0007bc83          	ld	s9,0(a5)
    8000251c:	f6e43c23          	sd	a4,-136(s0)
    80002520:	00000097          	auipc	ra,0x0
    80002524:	9a4080e7          	jalr	-1628(ra) # 80001ec4 <consputc>
    80002528:	07800513          	li	a0,120
    8000252c:	00000097          	auipc	ra,0x0
    80002530:	998080e7          	jalr	-1640(ra) # 80001ec4 <consputc>
    80002534:	00002d97          	auipc	s11,0x2
    80002538:	c44d8d93          	addi	s11,s11,-956 # 80004178 <digits>
    8000253c:	03ccd793          	srli	a5,s9,0x3c
    80002540:	00fd87b3          	add	a5,s11,a5
    80002544:	0007c503          	lbu	a0,0(a5)
    80002548:	fffd0d1b          	addiw	s10,s10,-1
    8000254c:	004c9c93          	slli	s9,s9,0x4
    80002550:	00000097          	auipc	ra,0x0
    80002554:	974080e7          	jalr	-1676(ra) # 80001ec4 <consputc>
    80002558:	fe0d12e3          	bnez	s10,8000253c <__printf+0x494>
    8000255c:	f8dff06f          	j	800024e8 <__printf+0x440>
    80002560:	f7843783          	ld	a5,-136(s0)
    80002564:	0007bc83          	ld	s9,0(a5)
    80002568:	00878793          	addi	a5,a5,8
    8000256c:	f6f43c23          	sd	a5,-136(s0)
    80002570:	000c9a63          	bnez	s9,80002584 <__printf+0x4dc>
    80002574:	1080006f          	j	8000267c <__printf+0x5d4>
    80002578:	001c8c93          	addi	s9,s9,1
    8000257c:	00000097          	auipc	ra,0x0
    80002580:	948080e7          	jalr	-1720(ra) # 80001ec4 <consputc>
    80002584:	000cc503          	lbu	a0,0(s9)
    80002588:	fe0518e3          	bnez	a0,80002578 <__printf+0x4d0>
    8000258c:	f5dff06f          	j	800024e8 <__printf+0x440>
    80002590:	02500513          	li	a0,37
    80002594:	00000097          	auipc	ra,0x0
    80002598:	930080e7          	jalr	-1744(ra) # 80001ec4 <consputc>
    8000259c:	000c8513          	mv	a0,s9
    800025a0:	00000097          	auipc	ra,0x0
    800025a4:	924080e7          	jalr	-1756(ra) # 80001ec4 <consputc>
    800025a8:	f41ff06f          	j	800024e8 <__printf+0x440>
    800025ac:	02500513          	li	a0,37
    800025b0:	00000097          	auipc	ra,0x0
    800025b4:	914080e7          	jalr	-1772(ra) # 80001ec4 <consputc>
    800025b8:	f31ff06f          	j	800024e8 <__printf+0x440>
    800025bc:	00030513          	mv	a0,t1
    800025c0:	00000097          	auipc	ra,0x0
    800025c4:	7bc080e7          	jalr	1980(ra) # 80002d7c <acquire>
    800025c8:	b4dff06f          	j	80002114 <__printf+0x6c>
    800025cc:	40c0053b          	negw	a0,a2
    800025d0:	00a00713          	li	a4,10
    800025d4:	02e576bb          	remuw	a3,a0,a4
    800025d8:	00002d97          	auipc	s11,0x2
    800025dc:	ba0d8d93          	addi	s11,s11,-1120 # 80004178 <digits>
    800025e0:	ff700593          	li	a1,-9
    800025e4:	02069693          	slli	a3,a3,0x20
    800025e8:	0206d693          	srli	a3,a3,0x20
    800025ec:	00dd86b3          	add	a3,s11,a3
    800025f0:	0006c683          	lbu	a3,0(a3)
    800025f4:	02e557bb          	divuw	a5,a0,a4
    800025f8:	f8d40023          	sb	a3,-128(s0)
    800025fc:	10b65e63          	bge	a2,a1,80002718 <__printf+0x670>
    80002600:	06300593          	li	a1,99
    80002604:	02e7f6bb          	remuw	a3,a5,a4
    80002608:	02069693          	slli	a3,a3,0x20
    8000260c:	0206d693          	srli	a3,a3,0x20
    80002610:	00dd86b3          	add	a3,s11,a3
    80002614:	0006c683          	lbu	a3,0(a3)
    80002618:	02e7d73b          	divuw	a4,a5,a4
    8000261c:	00200793          	li	a5,2
    80002620:	f8d400a3          	sb	a3,-127(s0)
    80002624:	bca5ece3          	bltu	a1,a0,800021fc <__printf+0x154>
    80002628:	ce5ff06f          	j	8000230c <__printf+0x264>
    8000262c:	40e007bb          	negw	a5,a4
    80002630:	00002d97          	auipc	s11,0x2
    80002634:	b48d8d93          	addi	s11,s11,-1208 # 80004178 <digits>
    80002638:	00f7f693          	andi	a3,a5,15
    8000263c:	00dd86b3          	add	a3,s11,a3
    80002640:	0006c583          	lbu	a1,0(a3)
    80002644:	ff100613          	li	a2,-15
    80002648:	0047d69b          	srliw	a3,a5,0x4
    8000264c:	f8b40023          	sb	a1,-128(s0)
    80002650:	0047d59b          	srliw	a1,a5,0x4
    80002654:	0ac75e63          	bge	a4,a2,80002710 <__printf+0x668>
    80002658:	00f6f693          	andi	a3,a3,15
    8000265c:	00dd86b3          	add	a3,s11,a3
    80002660:	0006c603          	lbu	a2,0(a3)
    80002664:	00f00693          	li	a3,15
    80002668:	0087d79b          	srliw	a5,a5,0x8
    8000266c:	f8c400a3          	sb	a2,-127(s0)
    80002670:	d8b6e4e3          	bltu	a3,a1,800023f8 <__printf+0x350>
    80002674:	00200793          	li	a5,2
    80002678:	e2dff06f          	j	800024a4 <__printf+0x3fc>
    8000267c:	00002c97          	auipc	s9,0x2
    80002680:	adcc8c93          	addi	s9,s9,-1316 # 80004158 <CONSOLE_STATUS+0x148>
    80002684:	02800513          	li	a0,40
    80002688:	ef1ff06f          	j	80002578 <__printf+0x4d0>
    8000268c:	00700793          	li	a5,7
    80002690:	00600c93          	li	s9,6
    80002694:	e0dff06f          	j	800024a0 <__printf+0x3f8>
    80002698:	00700793          	li	a5,7
    8000269c:	00600c93          	li	s9,6
    800026a0:	c69ff06f          	j	80002308 <__printf+0x260>
    800026a4:	00300793          	li	a5,3
    800026a8:	00200c93          	li	s9,2
    800026ac:	c5dff06f          	j	80002308 <__printf+0x260>
    800026b0:	00300793          	li	a5,3
    800026b4:	00200c93          	li	s9,2
    800026b8:	de9ff06f          	j	800024a0 <__printf+0x3f8>
    800026bc:	00400793          	li	a5,4
    800026c0:	00300c93          	li	s9,3
    800026c4:	dddff06f          	j	800024a0 <__printf+0x3f8>
    800026c8:	00400793          	li	a5,4
    800026cc:	00300c93          	li	s9,3
    800026d0:	c39ff06f          	j	80002308 <__printf+0x260>
    800026d4:	00500793          	li	a5,5
    800026d8:	00400c93          	li	s9,4
    800026dc:	c2dff06f          	j	80002308 <__printf+0x260>
    800026e0:	00500793          	li	a5,5
    800026e4:	00400c93          	li	s9,4
    800026e8:	db9ff06f          	j	800024a0 <__printf+0x3f8>
    800026ec:	00600793          	li	a5,6
    800026f0:	00500c93          	li	s9,5
    800026f4:	dadff06f          	j	800024a0 <__printf+0x3f8>
    800026f8:	00600793          	li	a5,6
    800026fc:	00500c93          	li	s9,5
    80002700:	c09ff06f          	j	80002308 <__printf+0x260>
    80002704:	00800793          	li	a5,8
    80002708:	00700c93          	li	s9,7
    8000270c:	bfdff06f          	j	80002308 <__printf+0x260>
    80002710:	00100793          	li	a5,1
    80002714:	d91ff06f          	j	800024a4 <__printf+0x3fc>
    80002718:	00100793          	li	a5,1
    8000271c:	bf1ff06f          	j	8000230c <__printf+0x264>
    80002720:	00900793          	li	a5,9
    80002724:	00800c93          	li	s9,8
    80002728:	be1ff06f          	j	80002308 <__printf+0x260>
    8000272c:	00002517          	auipc	a0,0x2
    80002730:	a3450513          	addi	a0,a0,-1484 # 80004160 <CONSOLE_STATUS+0x150>
    80002734:	00000097          	auipc	ra,0x0
    80002738:	918080e7          	jalr	-1768(ra) # 8000204c <panic>

000000008000273c <printfinit>:
    8000273c:	fe010113          	addi	sp,sp,-32
    80002740:	00813823          	sd	s0,16(sp)
    80002744:	00913423          	sd	s1,8(sp)
    80002748:	00113c23          	sd	ra,24(sp)
    8000274c:	02010413          	addi	s0,sp,32
    80002750:	00003497          	auipc	s1,0x3
    80002754:	e8048493          	addi	s1,s1,-384 # 800055d0 <pr>
    80002758:	00048513          	mv	a0,s1
    8000275c:	00002597          	auipc	a1,0x2
    80002760:	a1458593          	addi	a1,a1,-1516 # 80004170 <CONSOLE_STATUS+0x160>
    80002764:	00000097          	auipc	ra,0x0
    80002768:	5f4080e7          	jalr	1524(ra) # 80002d58 <initlock>
    8000276c:	01813083          	ld	ra,24(sp)
    80002770:	01013403          	ld	s0,16(sp)
    80002774:	0004ac23          	sw	zero,24(s1)
    80002778:	00813483          	ld	s1,8(sp)
    8000277c:	02010113          	addi	sp,sp,32
    80002780:	00008067          	ret

0000000080002784 <uartinit>:
    80002784:	ff010113          	addi	sp,sp,-16
    80002788:	00813423          	sd	s0,8(sp)
    8000278c:	01010413          	addi	s0,sp,16
    80002790:	100007b7          	lui	a5,0x10000
    80002794:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80002798:	f8000713          	li	a4,-128
    8000279c:	00e781a3          	sb	a4,3(a5)
    800027a0:	00300713          	li	a4,3
    800027a4:	00e78023          	sb	a4,0(a5)
    800027a8:	000780a3          	sb	zero,1(a5)
    800027ac:	00e781a3          	sb	a4,3(a5)
    800027b0:	00700693          	li	a3,7
    800027b4:	00d78123          	sb	a3,2(a5)
    800027b8:	00e780a3          	sb	a4,1(a5)
    800027bc:	00813403          	ld	s0,8(sp)
    800027c0:	01010113          	addi	sp,sp,16
    800027c4:	00008067          	ret

00000000800027c8 <uartputc>:
    800027c8:	00002797          	auipc	a5,0x2
    800027cc:	bb07a783          	lw	a5,-1104(a5) # 80004378 <panicked>
    800027d0:	00078463          	beqz	a5,800027d8 <uartputc+0x10>
    800027d4:	0000006f          	j	800027d4 <uartputc+0xc>
    800027d8:	fd010113          	addi	sp,sp,-48
    800027dc:	02813023          	sd	s0,32(sp)
    800027e0:	00913c23          	sd	s1,24(sp)
    800027e4:	01213823          	sd	s2,16(sp)
    800027e8:	01313423          	sd	s3,8(sp)
    800027ec:	02113423          	sd	ra,40(sp)
    800027f0:	03010413          	addi	s0,sp,48
    800027f4:	00002917          	auipc	s2,0x2
    800027f8:	b8c90913          	addi	s2,s2,-1140 # 80004380 <uart_tx_r>
    800027fc:	00093783          	ld	a5,0(s2)
    80002800:	00002497          	auipc	s1,0x2
    80002804:	b8848493          	addi	s1,s1,-1144 # 80004388 <uart_tx_w>
    80002808:	0004b703          	ld	a4,0(s1)
    8000280c:	02078693          	addi	a3,a5,32
    80002810:	00050993          	mv	s3,a0
    80002814:	02e69c63          	bne	a3,a4,8000284c <uartputc+0x84>
    80002818:	00001097          	auipc	ra,0x1
    8000281c:	834080e7          	jalr	-1996(ra) # 8000304c <push_on>
    80002820:	00093783          	ld	a5,0(s2)
    80002824:	0004b703          	ld	a4,0(s1)
    80002828:	02078793          	addi	a5,a5,32
    8000282c:	00e79463          	bne	a5,a4,80002834 <uartputc+0x6c>
    80002830:	0000006f          	j	80002830 <uartputc+0x68>
    80002834:	00001097          	auipc	ra,0x1
    80002838:	88c080e7          	jalr	-1908(ra) # 800030c0 <pop_on>
    8000283c:	00093783          	ld	a5,0(s2)
    80002840:	0004b703          	ld	a4,0(s1)
    80002844:	02078693          	addi	a3,a5,32
    80002848:	fce688e3          	beq	a3,a4,80002818 <uartputc+0x50>
    8000284c:	01f77693          	andi	a3,a4,31
    80002850:	00003597          	auipc	a1,0x3
    80002854:	da058593          	addi	a1,a1,-608 # 800055f0 <uart_tx_buf>
    80002858:	00d586b3          	add	a3,a1,a3
    8000285c:	00170713          	addi	a4,a4,1
    80002860:	01368023          	sb	s3,0(a3)
    80002864:	00e4b023          	sd	a4,0(s1)
    80002868:	10000637          	lui	a2,0x10000
    8000286c:	02f71063          	bne	a4,a5,8000288c <uartputc+0xc4>
    80002870:	0340006f          	j	800028a4 <uartputc+0xdc>
    80002874:	00074703          	lbu	a4,0(a4)
    80002878:	00f93023          	sd	a5,0(s2)
    8000287c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80002880:	00093783          	ld	a5,0(s2)
    80002884:	0004b703          	ld	a4,0(s1)
    80002888:	00f70e63          	beq	a4,a5,800028a4 <uartputc+0xdc>
    8000288c:	00564683          	lbu	a3,5(a2)
    80002890:	01f7f713          	andi	a4,a5,31
    80002894:	00e58733          	add	a4,a1,a4
    80002898:	0206f693          	andi	a3,a3,32
    8000289c:	00178793          	addi	a5,a5,1
    800028a0:	fc069ae3          	bnez	a3,80002874 <uartputc+0xac>
    800028a4:	02813083          	ld	ra,40(sp)
    800028a8:	02013403          	ld	s0,32(sp)
    800028ac:	01813483          	ld	s1,24(sp)
    800028b0:	01013903          	ld	s2,16(sp)
    800028b4:	00813983          	ld	s3,8(sp)
    800028b8:	03010113          	addi	sp,sp,48
    800028bc:	00008067          	ret

00000000800028c0 <uartputc_sync>:
    800028c0:	ff010113          	addi	sp,sp,-16
    800028c4:	00813423          	sd	s0,8(sp)
    800028c8:	01010413          	addi	s0,sp,16
    800028cc:	00002717          	auipc	a4,0x2
    800028d0:	aac72703          	lw	a4,-1364(a4) # 80004378 <panicked>
    800028d4:	02071663          	bnez	a4,80002900 <uartputc_sync+0x40>
    800028d8:	00050793          	mv	a5,a0
    800028dc:	100006b7          	lui	a3,0x10000
    800028e0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    800028e4:	02077713          	andi	a4,a4,32
    800028e8:	fe070ce3          	beqz	a4,800028e0 <uartputc_sync+0x20>
    800028ec:	0ff7f793          	andi	a5,a5,255
    800028f0:	00f68023          	sb	a5,0(a3)
    800028f4:	00813403          	ld	s0,8(sp)
    800028f8:	01010113          	addi	sp,sp,16
    800028fc:	00008067          	ret
    80002900:	0000006f          	j	80002900 <uartputc_sync+0x40>

0000000080002904 <uartstart>:
    80002904:	ff010113          	addi	sp,sp,-16
    80002908:	00813423          	sd	s0,8(sp)
    8000290c:	01010413          	addi	s0,sp,16
    80002910:	00002617          	auipc	a2,0x2
    80002914:	a7060613          	addi	a2,a2,-1424 # 80004380 <uart_tx_r>
    80002918:	00002517          	auipc	a0,0x2
    8000291c:	a7050513          	addi	a0,a0,-1424 # 80004388 <uart_tx_w>
    80002920:	00063783          	ld	a5,0(a2)
    80002924:	00053703          	ld	a4,0(a0)
    80002928:	04f70263          	beq	a4,a5,8000296c <uartstart+0x68>
    8000292c:	100005b7          	lui	a1,0x10000
    80002930:	00003817          	auipc	a6,0x3
    80002934:	cc080813          	addi	a6,a6,-832 # 800055f0 <uart_tx_buf>
    80002938:	01c0006f          	j	80002954 <uartstart+0x50>
    8000293c:	0006c703          	lbu	a4,0(a3)
    80002940:	00f63023          	sd	a5,0(a2)
    80002944:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80002948:	00063783          	ld	a5,0(a2)
    8000294c:	00053703          	ld	a4,0(a0)
    80002950:	00f70e63          	beq	a4,a5,8000296c <uartstart+0x68>
    80002954:	01f7f713          	andi	a4,a5,31
    80002958:	00e806b3          	add	a3,a6,a4
    8000295c:	0055c703          	lbu	a4,5(a1)
    80002960:	00178793          	addi	a5,a5,1
    80002964:	02077713          	andi	a4,a4,32
    80002968:	fc071ae3          	bnez	a4,8000293c <uartstart+0x38>
    8000296c:	00813403          	ld	s0,8(sp)
    80002970:	01010113          	addi	sp,sp,16
    80002974:	00008067          	ret

0000000080002978 <uartgetc>:
    80002978:	ff010113          	addi	sp,sp,-16
    8000297c:	00813423          	sd	s0,8(sp)
    80002980:	01010413          	addi	s0,sp,16
    80002984:	10000737          	lui	a4,0x10000
    80002988:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000298c:	0017f793          	andi	a5,a5,1
    80002990:	00078c63          	beqz	a5,800029a8 <uartgetc+0x30>
    80002994:	00074503          	lbu	a0,0(a4)
    80002998:	0ff57513          	andi	a0,a0,255
    8000299c:	00813403          	ld	s0,8(sp)
    800029a0:	01010113          	addi	sp,sp,16
    800029a4:	00008067          	ret
    800029a8:	fff00513          	li	a0,-1
    800029ac:	ff1ff06f          	j	8000299c <uartgetc+0x24>

00000000800029b0 <uartintr>:
    800029b0:	100007b7          	lui	a5,0x10000
    800029b4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800029b8:	0017f793          	andi	a5,a5,1
    800029bc:	0a078463          	beqz	a5,80002a64 <uartintr+0xb4>
    800029c0:	fe010113          	addi	sp,sp,-32
    800029c4:	00813823          	sd	s0,16(sp)
    800029c8:	00913423          	sd	s1,8(sp)
    800029cc:	00113c23          	sd	ra,24(sp)
    800029d0:	02010413          	addi	s0,sp,32
    800029d4:	100004b7          	lui	s1,0x10000
    800029d8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800029dc:	0ff57513          	andi	a0,a0,255
    800029e0:	fffff097          	auipc	ra,0xfffff
    800029e4:	534080e7          	jalr	1332(ra) # 80001f14 <consoleintr>
    800029e8:	0054c783          	lbu	a5,5(s1)
    800029ec:	0017f793          	andi	a5,a5,1
    800029f0:	fe0794e3          	bnez	a5,800029d8 <uartintr+0x28>
    800029f4:	00002617          	auipc	a2,0x2
    800029f8:	98c60613          	addi	a2,a2,-1652 # 80004380 <uart_tx_r>
    800029fc:	00002517          	auipc	a0,0x2
    80002a00:	98c50513          	addi	a0,a0,-1652 # 80004388 <uart_tx_w>
    80002a04:	00063783          	ld	a5,0(a2)
    80002a08:	00053703          	ld	a4,0(a0)
    80002a0c:	04f70263          	beq	a4,a5,80002a50 <uartintr+0xa0>
    80002a10:	100005b7          	lui	a1,0x10000
    80002a14:	00003817          	auipc	a6,0x3
    80002a18:	bdc80813          	addi	a6,a6,-1060 # 800055f0 <uart_tx_buf>
    80002a1c:	01c0006f          	j	80002a38 <uartintr+0x88>
    80002a20:	0006c703          	lbu	a4,0(a3)
    80002a24:	00f63023          	sd	a5,0(a2)
    80002a28:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80002a2c:	00063783          	ld	a5,0(a2)
    80002a30:	00053703          	ld	a4,0(a0)
    80002a34:	00f70e63          	beq	a4,a5,80002a50 <uartintr+0xa0>
    80002a38:	01f7f713          	andi	a4,a5,31
    80002a3c:	00e806b3          	add	a3,a6,a4
    80002a40:	0055c703          	lbu	a4,5(a1)
    80002a44:	00178793          	addi	a5,a5,1
    80002a48:	02077713          	andi	a4,a4,32
    80002a4c:	fc071ae3          	bnez	a4,80002a20 <uartintr+0x70>
    80002a50:	01813083          	ld	ra,24(sp)
    80002a54:	01013403          	ld	s0,16(sp)
    80002a58:	00813483          	ld	s1,8(sp)
    80002a5c:	02010113          	addi	sp,sp,32
    80002a60:	00008067          	ret
    80002a64:	00002617          	auipc	a2,0x2
    80002a68:	91c60613          	addi	a2,a2,-1764 # 80004380 <uart_tx_r>
    80002a6c:	00002517          	auipc	a0,0x2
    80002a70:	91c50513          	addi	a0,a0,-1764 # 80004388 <uart_tx_w>
    80002a74:	00063783          	ld	a5,0(a2)
    80002a78:	00053703          	ld	a4,0(a0)
    80002a7c:	04f70263          	beq	a4,a5,80002ac0 <uartintr+0x110>
    80002a80:	100005b7          	lui	a1,0x10000
    80002a84:	00003817          	auipc	a6,0x3
    80002a88:	b6c80813          	addi	a6,a6,-1172 # 800055f0 <uart_tx_buf>
    80002a8c:	01c0006f          	j	80002aa8 <uartintr+0xf8>
    80002a90:	0006c703          	lbu	a4,0(a3)
    80002a94:	00f63023          	sd	a5,0(a2)
    80002a98:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80002a9c:	00063783          	ld	a5,0(a2)
    80002aa0:	00053703          	ld	a4,0(a0)
    80002aa4:	02f70063          	beq	a4,a5,80002ac4 <uartintr+0x114>
    80002aa8:	01f7f713          	andi	a4,a5,31
    80002aac:	00e806b3          	add	a3,a6,a4
    80002ab0:	0055c703          	lbu	a4,5(a1)
    80002ab4:	00178793          	addi	a5,a5,1
    80002ab8:	02077713          	andi	a4,a4,32
    80002abc:	fc071ae3          	bnez	a4,80002a90 <uartintr+0xe0>
    80002ac0:	00008067          	ret
    80002ac4:	00008067          	ret

0000000080002ac8 <kinit>:
    80002ac8:	fc010113          	addi	sp,sp,-64
    80002acc:	02913423          	sd	s1,40(sp)
    80002ad0:	fffff7b7          	lui	a5,0xfffff
    80002ad4:	00004497          	auipc	s1,0x4
    80002ad8:	b3b48493          	addi	s1,s1,-1221 # 8000660f <end+0xfff>
    80002adc:	02813823          	sd	s0,48(sp)
    80002ae0:	01313c23          	sd	s3,24(sp)
    80002ae4:	00f4f4b3          	and	s1,s1,a5
    80002ae8:	02113c23          	sd	ra,56(sp)
    80002aec:	03213023          	sd	s2,32(sp)
    80002af0:	01413823          	sd	s4,16(sp)
    80002af4:	01513423          	sd	s5,8(sp)
    80002af8:	04010413          	addi	s0,sp,64
    80002afc:	000017b7          	lui	a5,0x1
    80002b00:	01100993          	li	s3,17
    80002b04:	00f487b3          	add	a5,s1,a5
    80002b08:	01b99993          	slli	s3,s3,0x1b
    80002b0c:	06f9e063          	bltu	s3,a5,80002b6c <kinit+0xa4>
    80002b10:	00003a97          	auipc	s5,0x3
    80002b14:	b00a8a93          	addi	s5,s5,-1280 # 80005610 <end>
    80002b18:	0754ec63          	bltu	s1,s5,80002b90 <kinit+0xc8>
    80002b1c:	0734fa63          	bgeu	s1,s3,80002b90 <kinit+0xc8>
    80002b20:	00088a37          	lui	s4,0x88
    80002b24:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80002b28:	00002917          	auipc	s2,0x2
    80002b2c:	86890913          	addi	s2,s2,-1944 # 80004390 <kmem>
    80002b30:	00ca1a13          	slli	s4,s4,0xc
    80002b34:	0140006f          	j	80002b48 <kinit+0x80>
    80002b38:	000017b7          	lui	a5,0x1
    80002b3c:	00f484b3          	add	s1,s1,a5
    80002b40:	0554e863          	bltu	s1,s5,80002b90 <kinit+0xc8>
    80002b44:	0534f663          	bgeu	s1,s3,80002b90 <kinit+0xc8>
    80002b48:	00001637          	lui	a2,0x1
    80002b4c:	00100593          	li	a1,1
    80002b50:	00048513          	mv	a0,s1
    80002b54:	00000097          	auipc	ra,0x0
    80002b58:	5e4080e7          	jalr	1508(ra) # 80003138 <__memset>
    80002b5c:	00093783          	ld	a5,0(s2)
    80002b60:	00f4b023          	sd	a5,0(s1)
    80002b64:	00993023          	sd	s1,0(s2)
    80002b68:	fd4498e3          	bne	s1,s4,80002b38 <kinit+0x70>
    80002b6c:	03813083          	ld	ra,56(sp)
    80002b70:	03013403          	ld	s0,48(sp)
    80002b74:	02813483          	ld	s1,40(sp)
    80002b78:	02013903          	ld	s2,32(sp)
    80002b7c:	01813983          	ld	s3,24(sp)
    80002b80:	01013a03          	ld	s4,16(sp)
    80002b84:	00813a83          	ld	s5,8(sp)
    80002b88:	04010113          	addi	sp,sp,64
    80002b8c:	00008067          	ret
    80002b90:	00001517          	auipc	a0,0x1
    80002b94:	60050513          	addi	a0,a0,1536 # 80004190 <digits+0x18>
    80002b98:	fffff097          	auipc	ra,0xfffff
    80002b9c:	4b4080e7          	jalr	1204(ra) # 8000204c <panic>

0000000080002ba0 <freerange>:
    80002ba0:	fc010113          	addi	sp,sp,-64
    80002ba4:	000017b7          	lui	a5,0x1
    80002ba8:	02913423          	sd	s1,40(sp)
    80002bac:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80002bb0:	009504b3          	add	s1,a0,s1
    80002bb4:	fffff537          	lui	a0,0xfffff
    80002bb8:	02813823          	sd	s0,48(sp)
    80002bbc:	02113c23          	sd	ra,56(sp)
    80002bc0:	03213023          	sd	s2,32(sp)
    80002bc4:	01313c23          	sd	s3,24(sp)
    80002bc8:	01413823          	sd	s4,16(sp)
    80002bcc:	01513423          	sd	s5,8(sp)
    80002bd0:	01613023          	sd	s6,0(sp)
    80002bd4:	04010413          	addi	s0,sp,64
    80002bd8:	00a4f4b3          	and	s1,s1,a0
    80002bdc:	00f487b3          	add	a5,s1,a5
    80002be0:	06f5e463          	bltu	a1,a5,80002c48 <freerange+0xa8>
    80002be4:	00003a97          	auipc	s5,0x3
    80002be8:	a2ca8a93          	addi	s5,s5,-1492 # 80005610 <end>
    80002bec:	0954e263          	bltu	s1,s5,80002c70 <freerange+0xd0>
    80002bf0:	01100993          	li	s3,17
    80002bf4:	01b99993          	slli	s3,s3,0x1b
    80002bf8:	0734fc63          	bgeu	s1,s3,80002c70 <freerange+0xd0>
    80002bfc:	00058a13          	mv	s4,a1
    80002c00:	00001917          	auipc	s2,0x1
    80002c04:	79090913          	addi	s2,s2,1936 # 80004390 <kmem>
    80002c08:	00002b37          	lui	s6,0x2
    80002c0c:	0140006f          	j	80002c20 <freerange+0x80>
    80002c10:	000017b7          	lui	a5,0x1
    80002c14:	00f484b3          	add	s1,s1,a5
    80002c18:	0554ec63          	bltu	s1,s5,80002c70 <freerange+0xd0>
    80002c1c:	0534fa63          	bgeu	s1,s3,80002c70 <freerange+0xd0>
    80002c20:	00001637          	lui	a2,0x1
    80002c24:	00100593          	li	a1,1
    80002c28:	00048513          	mv	a0,s1
    80002c2c:	00000097          	auipc	ra,0x0
    80002c30:	50c080e7          	jalr	1292(ra) # 80003138 <__memset>
    80002c34:	00093703          	ld	a4,0(s2)
    80002c38:	016487b3          	add	a5,s1,s6
    80002c3c:	00e4b023          	sd	a4,0(s1)
    80002c40:	00993023          	sd	s1,0(s2)
    80002c44:	fcfa76e3          	bgeu	s4,a5,80002c10 <freerange+0x70>
    80002c48:	03813083          	ld	ra,56(sp)
    80002c4c:	03013403          	ld	s0,48(sp)
    80002c50:	02813483          	ld	s1,40(sp)
    80002c54:	02013903          	ld	s2,32(sp)
    80002c58:	01813983          	ld	s3,24(sp)
    80002c5c:	01013a03          	ld	s4,16(sp)
    80002c60:	00813a83          	ld	s5,8(sp)
    80002c64:	00013b03          	ld	s6,0(sp)
    80002c68:	04010113          	addi	sp,sp,64
    80002c6c:	00008067          	ret
    80002c70:	00001517          	auipc	a0,0x1
    80002c74:	52050513          	addi	a0,a0,1312 # 80004190 <digits+0x18>
    80002c78:	fffff097          	auipc	ra,0xfffff
    80002c7c:	3d4080e7          	jalr	980(ra) # 8000204c <panic>

0000000080002c80 <kfree>:
    80002c80:	fe010113          	addi	sp,sp,-32
    80002c84:	00813823          	sd	s0,16(sp)
    80002c88:	00113c23          	sd	ra,24(sp)
    80002c8c:	00913423          	sd	s1,8(sp)
    80002c90:	02010413          	addi	s0,sp,32
    80002c94:	03451793          	slli	a5,a0,0x34
    80002c98:	04079c63          	bnez	a5,80002cf0 <kfree+0x70>
    80002c9c:	00003797          	auipc	a5,0x3
    80002ca0:	97478793          	addi	a5,a5,-1676 # 80005610 <end>
    80002ca4:	00050493          	mv	s1,a0
    80002ca8:	04f56463          	bltu	a0,a5,80002cf0 <kfree+0x70>
    80002cac:	01100793          	li	a5,17
    80002cb0:	01b79793          	slli	a5,a5,0x1b
    80002cb4:	02f57e63          	bgeu	a0,a5,80002cf0 <kfree+0x70>
    80002cb8:	00001637          	lui	a2,0x1
    80002cbc:	00100593          	li	a1,1
    80002cc0:	00000097          	auipc	ra,0x0
    80002cc4:	478080e7          	jalr	1144(ra) # 80003138 <__memset>
    80002cc8:	00001797          	auipc	a5,0x1
    80002ccc:	6c878793          	addi	a5,a5,1736 # 80004390 <kmem>
    80002cd0:	0007b703          	ld	a4,0(a5)
    80002cd4:	01813083          	ld	ra,24(sp)
    80002cd8:	01013403          	ld	s0,16(sp)
    80002cdc:	00e4b023          	sd	a4,0(s1)
    80002ce0:	0097b023          	sd	s1,0(a5)
    80002ce4:	00813483          	ld	s1,8(sp)
    80002ce8:	02010113          	addi	sp,sp,32
    80002cec:	00008067          	ret
    80002cf0:	00001517          	auipc	a0,0x1
    80002cf4:	4a050513          	addi	a0,a0,1184 # 80004190 <digits+0x18>
    80002cf8:	fffff097          	auipc	ra,0xfffff
    80002cfc:	354080e7          	jalr	852(ra) # 8000204c <panic>

0000000080002d00 <kalloc>:
    80002d00:	fe010113          	addi	sp,sp,-32
    80002d04:	00813823          	sd	s0,16(sp)
    80002d08:	00913423          	sd	s1,8(sp)
    80002d0c:	00113c23          	sd	ra,24(sp)
    80002d10:	02010413          	addi	s0,sp,32
    80002d14:	00001797          	auipc	a5,0x1
    80002d18:	67c78793          	addi	a5,a5,1660 # 80004390 <kmem>
    80002d1c:	0007b483          	ld	s1,0(a5)
    80002d20:	02048063          	beqz	s1,80002d40 <kalloc+0x40>
    80002d24:	0004b703          	ld	a4,0(s1)
    80002d28:	00001637          	lui	a2,0x1
    80002d2c:	00500593          	li	a1,5
    80002d30:	00048513          	mv	a0,s1
    80002d34:	00e7b023          	sd	a4,0(a5)
    80002d38:	00000097          	auipc	ra,0x0
    80002d3c:	400080e7          	jalr	1024(ra) # 80003138 <__memset>
    80002d40:	01813083          	ld	ra,24(sp)
    80002d44:	01013403          	ld	s0,16(sp)
    80002d48:	00048513          	mv	a0,s1
    80002d4c:	00813483          	ld	s1,8(sp)
    80002d50:	02010113          	addi	sp,sp,32
    80002d54:	00008067          	ret

0000000080002d58 <initlock>:
    80002d58:	ff010113          	addi	sp,sp,-16
    80002d5c:	00813423          	sd	s0,8(sp)
    80002d60:	01010413          	addi	s0,sp,16
    80002d64:	00813403          	ld	s0,8(sp)
    80002d68:	00b53423          	sd	a1,8(a0)
    80002d6c:	00052023          	sw	zero,0(a0)
    80002d70:	00053823          	sd	zero,16(a0)
    80002d74:	01010113          	addi	sp,sp,16
    80002d78:	00008067          	ret

0000000080002d7c <acquire>:
    80002d7c:	fe010113          	addi	sp,sp,-32
    80002d80:	00813823          	sd	s0,16(sp)
    80002d84:	00913423          	sd	s1,8(sp)
    80002d88:	00113c23          	sd	ra,24(sp)
    80002d8c:	01213023          	sd	s2,0(sp)
    80002d90:	02010413          	addi	s0,sp,32
    80002d94:	00050493          	mv	s1,a0
    80002d98:	10002973          	csrr	s2,sstatus
    80002d9c:	100027f3          	csrr	a5,sstatus
    80002da0:	ffd7f793          	andi	a5,a5,-3
    80002da4:	10079073          	csrw	sstatus,a5
    80002da8:	fffff097          	auipc	ra,0xfffff
    80002dac:	8e4080e7          	jalr	-1820(ra) # 8000168c <mycpu>
    80002db0:	07852783          	lw	a5,120(a0)
    80002db4:	06078e63          	beqz	a5,80002e30 <acquire+0xb4>
    80002db8:	fffff097          	auipc	ra,0xfffff
    80002dbc:	8d4080e7          	jalr	-1836(ra) # 8000168c <mycpu>
    80002dc0:	07852783          	lw	a5,120(a0)
    80002dc4:	0004a703          	lw	a4,0(s1)
    80002dc8:	0017879b          	addiw	a5,a5,1
    80002dcc:	06f52c23          	sw	a5,120(a0)
    80002dd0:	04071063          	bnez	a4,80002e10 <acquire+0x94>
    80002dd4:	00100713          	li	a4,1
    80002dd8:	00070793          	mv	a5,a4
    80002ddc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80002de0:	0007879b          	sext.w	a5,a5
    80002de4:	fe079ae3          	bnez	a5,80002dd8 <acquire+0x5c>
    80002de8:	0ff0000f          	fence
    80002dec:	fffff097          	auipc	ra,0xfffff
    80002df0:	8a0080e7          	jalr	-1888(ra) # 8000168c <mycpu>
    80002df4:	01813083          	ld	ra,24(sp)
    80002df8:	01013403          	ld	s0,16(sp)
    80002dfc:	00a4b823          	sd	a0,16(s1)
    80002e00:	00013903          	ld	s2,0(sp)
    80002e04:	00813483          	ld	s1,8(sp)
    80002e08:	02010113          	addi	sp,sp,32
    80002e0c:	00008067          	ret
    80002e10:	0104b903          	ld	s2,16(s1)
    80002e14:	fffff097          	auipc	ra,0xfffff
    80002e18:	878080e7          	jalr	-1928(ra) # 8000168c <mycpu>
    80002e1c:	faa91ce3          	bne	s2,a0,80002dd4 <acquire+0x58>
    80002e20:	00001517          	auipc	a0,0x1
    80002e24:	37850513          	addi	a0,a0,888 # 80004198 <digits+0x20>
    80002e28:	fffff097          	auipc	ra,0xfffff
    80002e2c:	224080e7          	jalr	548(ra) # 8000204c <panic>
    80002e30:	00195913          	srli	s2,s2,0x1
    80002e34:	fffff097          	auipc	ra,0xfffff
    80002e38:	858080e7          	jalr	-1960(ra) # 8000168c <mycpu>
    80002e3c:	00197913          	andi	s2,s2,1
    80002e40:	07252e23          	sw	s2,124(a0)
    80002e44:	f75ff06f          	j	80002db8 <acquire+0x3c>

0000000080002e48 <release>:
    80002e48:	fe010113          	addi	sp,sp,-32
    80002e4c:	00813823          	sd	s0,16(sp)
    80002e50:	00113c23          	sd	ra,24(sp)
    80002e54:	00913423          	sd	s1,8(sp)
    80002e58:	01213023          	sd	s2,0(sp)
    80002e5c:	02010413          	addi	s0,sp,32
    80002e60:	00052783          	lw	a5,0(a0)
    80002e64:	00079a63          	bnez	a5,80002e78 <release+0x30>
    80002e68:	00001517          	auipc	a0,0x1
    80002e6c:	33850513          	addi	a0,a0,824 # 800041a0 <digits+0x28>
    80002e70:	fffff097          	auipc	ra,0xfffff
    80002e74:	1dc080e7          	jalr	476(ra) # 8000204c <panic>
    80002e78:	01053903          	ld	s2,16(a0)
    80002e7c:	00050493          	mv	s1,a0
    80002e80:	fffff097          	auipc	ra,0xfffff
    80002e84:	80c080e7          	jalr	-2036(ra) # 8000168c <mycpu>
    80002e88:	fea910e3          	bne	s2,a0,80002e68 <release+0x20>
    80002e8c:	0004b823          	sd	zero,16(s1)
    80002e90:	0ff0000f          	fence
    80002e94:	0f50000f          	fence	iorw,ow
    80002e98:	0804a02f          	amoswap.w	zero,zero,(s1)
    80002e9c:	ffffe097          	auipc	ra,0xffffe
    80002ea0:	7f0080e7          	jalr	2032(ra) # 8000168c <mycpu>
    80002ea4:	100027f3          	csrr	a5,sstatus
    80002ea8:	0027f793          	andi	a5,a5,2
    80002eac:	04079a63          	bnez	a5,80002f00 <release+0xb8>
    80002eb0:	07852783          	lw	a5,120(a0)
    80002eb4:	02f05e63          	blez	a5,80002ef0 <release+0xa8>
    80002eb8:	fff7871b          	addiw	a4,a5,-1
    80002ebc:	06e52c23          	sw	a4,120(a0)
    80002ec0:	00071c63          	bnez	a4,80002ed8 <release+0x90>
    80002ec4:	07c52783          	lw	a5,124(a0)
    80002ec8:	00078863          	beqz	a5,80002ed8 <release+0x90>
    80002ecc:	100027f3          	csrr	a5,sstatus
    80002ed0:	0027e793          	ori	a5,a5,2
    80002ed4:	10079073          	csrw	sstatus,a5
    80002ed8:	01813083          	ld	ra,24(sp)
    80002edc:	01013403          	ld	s0,16(sp)
    80002ee0:	00813483          	ld	s1,8(sp)
    80002ee4:	00013903          	ld	s2,0(sp)
    80002ee8:	02010113          	addi	sp,sp,32
    80002eec:	00008067          	ret
    80002ef0:	00001517          	auipc	a0,0x1
    80002ef4:	2d050513          	addi	a0,a0,720 # 800041c0 <digits+0x48>
    80002ef8:	fffff097          	auipc	ra,0xfffff
    80002efc:	154080e7          	jalr	340(ra) # 8000204c <panic>
    80002f00:	00001517          	auipc	a0,0x1
    80002f04:	2a850513          	addi	a0,a0,680 # 800041a8 <digits+0x30>
    80002f08:	fffff097          	auipc	ra,0xfffff
    80002f0c:	144080e7          	jalr	324(ra) # 8000204c <panic>

0000000080002f10 <holding>:
    80002f10:	00052783          	lw	a5,0(a0)
    80002f14:	00079663          	bnez	a5,80002f20 <holding+0x10>
    80002f18:	00000513          	li	a0,0
    80002f1c:	00008067          	ret
    80002f20:	fe010113          	addi	sp,sp,-32
    80002f24:	00813823          	sd	s0,16(sp)
    80002f28:	00913423          	sd	s1,8(sp)
    80002f2c:	00113c23          	sd	ra,24(sp)
    80002f30:	02010413          	addi	s0,sp,32
    80002f34:	01053483          	ld	s1,16(a0)
    80002f38:	ffffe097          	auipc	ra,0xffffe
    80002f3c:	754080e7          	jalr	1876(ra) # 8000168c <mycpu>
    80002f40:	01813083          	ld	ra,24(sp)
    80002f44:	01013403          	ld	s0,16(sp)
    80002f48:	40a48533          	sub	a0,s1,a0
    80002f4c:	00153513          	seqz	a0,a0
    80002f50:	00813483          	ld	s1,8(sp)
    80002f54:	02010113          	addi	sp,sp,32
    80002f58:	00008067          	ret

0000000080002f5c <push_off>:
    80002f5c:	fe010113          	addi	sp,sp,-32
    80002f60:	00813823          	sd	s0,16(sp)
    80002f64:	00113c23          	sd	ra,24(sp)
    80002f68:	00913423          	sd	s1,8(sp)
    80002f6c:	02010413          	addi	s0,sp,32
    80002f70:	100024f3          	csrr	s1,sstatus
    80002f74:	100027f3          	csrr	a5,sstatus
    80002f78:	ffd7f793          	andi	a5,a5,-3
    80002f7c:	10079073          	csrw	sstatus,a5
    80002f80:	ffffe097          	auipc	ra,0xffffe
    80002f84:	70c080e7          	jalr	1804(ra) # 8000168c <mycpu>
    80002f88:	07852783          	lw	a5,120(a0)
    80002f8c:	02078663          	beqz	a5,80002fb8 <push_off+0x5c>
    80002f90:	ffffe097          	auipc	ra,0xffffe
    80002f94:	6fc080e7          	jalr	1788(ra) # 8000168c <mycpu>
    80002f98:	07852783          	lw	a5,120(a0)
    80002f9c:	01813083          	ld	ra,24(sp)
    80002fa0:	01013403          	ld	s0,16(sp)
    80002fa4:	0017879b          	addiw	a5,a5,1
    80002fa8:	06f52c23          	sw	a5,120(a0)
    80002fac:	00813483          	ld	s1,8(sp)
    80002fb0:	02010113          	addi	sp,sp,32
    80002fb4:	00008067          	ret
    80002fb8:	0014d493          	srli	s1,s1,0x1
    80002fbc:	ffffe097          	auipc	ra,0xffffe
    80002fc0:	6d0080e7          	jalr	1744(ra) # 8000168c <mycpu>
    80002fc4:	0014f493          	andi	s1,s1,1
    80002fc8:	06952e23          	sw	s1,124(a0)
    80002fcc:	fc5ff06f          	j	80002f90 <push_off+0x34>

0000000080002fd0 <pop_off>:
    80002fd0:	ff010113          	addi	sp,sp,-16
    80002fd4:	00813023          	sd	s0,0(sp)
    80002fd8:	00113423          	sd	ra,8(sp)
    80002fdc:	01010413          	addi	s0,sp,16
    80002fe0:	ffffe097          	auipc	ra,0xffffe
    80002fe4:	6ac080e7          	jalr	1708(ra) # 8000168c <mycpu>
    80002fe8:	100027f3          	csrr	a5,sstatus
    80002fec:	0027f793          	andi	a5,a5,2
    80002ff0:	04079663          	bnez	a5,8000303c <pop_off+0x6c>
    80002ff4:	07852783          	lw	a5,120(a0)
    80002ff8:	02f05a63          	blez	a5,8000302c <pop_off+0x5c>
    80002ffc:	fff7871b          	addiw	a4,a5,-1
    80003000:	06e52c23          	sw	a4,120(a0)
    80003004:	00071c63          	bnez	a4,8000301c <pop_off+0x4c>
    80003008:	07c52783          	lw	a5,124(a0)
    8000300c:	00078863          	beqz	a5,8000301c <pop_off+0x4c>
    80003010:	100027f3          	csrr	a5,sstatus
    80003014:	0027e793          	ori	a5,a5,2
    80003018:	10079073          	csrw	sstatus,a5
    8000301c:	00813083          	ld	ra,8(sp)
    80003020:	00013403          	ld	s0,0(sp)
    80003024:	01010113          	addi	sp,sp,16
    80003028:	00008067          	ret
    8000302c:	00001517          	auipc	a0,0x1
    80003030:	19450513          	addi	a0,a0,404 # 800041c0 <digits+0x48>
    80003034:	fffff097          	auipc	ra,0xfffff
    80003038:	018080e7          	jalr	24(ra) # 8000204c <panic>
    8000303c:	00001517          	auipc	a0,0x1
    80003040:	16c50513          	addi	a0,a0,364 # 800041a8 <digits+0x30>
    80003044:	fffff097          	auipc	ra,0xfffff
    80003048:	008080e7          	jalr	8(ra) # 8000204c <panic>

000000008000304c <push_on>:
    8000304c:	fe010113          	addi	sp,sp,-32
    80003050:	00813823          	sd	s0,16(sp)
    80003054:	00113c23          	sd	ra,24(sp)
    80003058:	00913423          	sd	s1,8(sp)
    8000305c:	02010413          	addi	s0,sp,32
    80003060:	100024f3          	csrr	s1,sstatus
    80003064:	100027f3          	csrr	a5,sstatus
    80003068:	0027e793          	ori	a5,a5,2
    8000306c:	10079073          	csrw	sstatus,a5
    80003070:	ffffe097          	auipc	ra,0xffffe
    80003074:	61c080e7          	jalr	1564(ra) # 8000168c <mycpu>
    80003078:	07852783          	lw	a5,120(a0)
    8000307c:	02078663          	beqz	a5,800030a8 <push_on+0x5c>
    80003080:	ffffe097          	auipc	ra,0xffffe
    80003084:	60c080e7          	jalr	1548(ra) # 8000168c <mycpu>
    80003088:	07852783          	lw	a5,120(a0)
    8000308c:	01813083          	ld	ra,24(sp)
    80003090:	01013403          	ld	s0,16(sp)
    80003094:	0017879b          	addiw	a5,a5,1
    80003098:	06f52c23          	sw	a5,120(a0)
    8000309c:	00813483          	ld	s1,8(sp)
    800030a0:	02010113          	addi	sp,sp,32
    800030a4:	00008067          	ret
    800030a8:	0014d493          	srli	s1,s1,0x1
    800030ac:	ffffe097          	auipc	ra,0xffffe
    800030b0:	5e0080e7          	jalr	1504(ra) # 8000168c <mycpu>
    800030b4:	0014f493          	andi	s1,s1,1
    800030b8:	06952e23          	sw	s1,124(a0)
    800030bc:	fc5ff06f          	j	80003080 <push_on+0x34>

00000000800030c0 <pop_on>:
    800030c0:	ff010113          	addi	sp,sp,-16
    800030c4:	00813023          	sd	s0,0(sp)
    800030c8:	00113423          	sd	ra,8(sp)
    800030cc:	01010413          	addi	s0,sp,16
    800030d0:	ffffe097          	auipc	ra,0xffffe
    800030d4:	5bc080e7          	jalr	1468(ra) # 8000168c <mycpu>
    800030d8:	100027f3          	csrr	a5,sstatus
    800030dc:	0027f793          	andi	a5,a5,2
    800030e0:	04078463          	beqz	a5,80003128 <pop_on+0x68>
    800030e4:	07852783          	lw	a5,120(a0)
    800030e8:	02f05863          	blez	a5,80003118 <pop_on+0x58>
    800030ec:	fff7879b          	addiw	a5,a5,-1
    800030f0:	06f52c23          	sw	a5,120(a0)
    800030f4:	07853783          	ld	a5,120(a0)
    800030f8:	00079863          	bnez	a5,80003108 <pop_on+0x48>
    800030fc:	100027f3          	csrr	a5,sstatus
    80003100:	ffd7f793          	andi	a5,a5,-3
    80003104:	10079073          	csrw	sstatus,a5
    80003108:	00813083          	ld	ra,8(sp)
    8000310c:	00013403          	ld	s0,0(sp)
    80003110:	01010113          	addi	sp,sp,16
    80003114:	00008067          	ret
    80003118:	00001517          	auipc	a0,0x1
    8000311c:	0d050513          	addi	a0,a0,208 # 800041e8 <digits+0x70>
    80003120:	fffff097          	auipc	ra,0xfffff
    80003124:	f2c080e7          	jalr	-212(ra) # 8000204c <panic>
    80003128:	00001517          	auipc	a0,0x1
    8000312c:	0a050513          	addi	a0,a0,160 # 800041c8 <digits+0x50>
    80003130:	fffff097          	auipc	ra,0xfffff
    80003134:	f1c080e7          	jalr	-228(ra) # 8000204c <panic>

0000000080003138 <__memset>:
    80003138:	ff010113          	addi	sp,sp,-16
    8000313c:	00813423          	sd	s0,8(sp)
    80003140:	01010413          	addi	s0,sp,16
    80003144:	1a060e63          	beqz	a2,80003300 <__memset+0x1c8>
    80003148:	40a007b3          	neg	a5,a0
    8000314c:	0077f793          	andi	a5,a5,7
    80003150:	00778693          	addi	a3,a5,7
    80003154:	00b00813          	li	a6,11
    80003158:	0ff5f593          	andi	a1,a1,255
    8000315c:	fff6071b          	addiw	a4,a2,-1
    80003160:	1b06e663          	bltu	a3,a6,8000330c <__memset+0x1d4>
    80003164:	1cd76463          	bltu	a4,a3,8000332c <__memset+0x1f4>
    80003168:	1a078e63          	beqz	a5,80003324 <__memset+0x1ec>
    8000316c:	00b50023          	sb	a1,0(a0)
    80003170:	00100713          	li	a4,1
    80003174:	1ae78463          	beq	a5,a4,8000331c <__memset+0x1e4>
    80003178:	00b500a3          	sb	a1,1(a0)
    8000317c:	00200713          	li	a4,2
    80003180:	1ae78a63          	beq	a5,a4,80003334 <__memset+0x1fc>
    80003184:	00b50123          	sb	a1,2(a0)
    80003188:	00300713          	li	a4,3
    8000318c:	18e78463          	beq	a5,a4,80003314 <__memset+0x1dc>
    80003190:	00b501a3          	sb	a1,3(a0)
    80003194:	00400713          	li	a4,4
    80003198:	1ae78263          	beq	a5,a4,8000333c <__memset+0x204>
    8000319c:	00b50223          	sb	a1,4(a0)
    800031a0:	00500713          	li	a4,5
    800031a4:	1ae78063          	beq	a5,a4,80003344 <__memset+0x20c>
    800031a8:	00b502a3          	sb	a1,5(a0)
    800031ac:	00700713          	li	a4,7
    800031b0:	18e79e63          	bne	a5,a4,8000334c <__memset+0x214>
    800031b4:	00b50323          	sb	a1,6(a0)
    800031b8:	00700e93          	li	t4,7
    800031bc:	00859713          	slli	a4,a1,0x8
    800031c0:	00e5e733          	or	a4,a1,a4
    800031c4:	01059e13          	slli	t3,a1,0x10
    800031c8:	01c76e33          	or	t3,a4,t3
    800031cc:	01859313          	slli	t1,a1,0x18
    800031d0:	006e6333          	or	t1,t3,t1
    800031d4:	02059893          	slli	a7,a1,0x20
    800031d8:	40f60e3b          	subw	t3,a2,a5
    800031dc:	011368b3          	or	a7,t1,a7
    800031e0:	02859813          	slli	a6,a1,0x28
    800031e4:	0108e833          	or	a6,a7,a6
    800031e8:	03059693          	slli	a3,a1,0x30
    800031ec:	003e589b          	srliw	a7,t3,0x3
    800031f0:	00d866b3          	or	a3,a6,a3
    800031f4:	03859713          	slli	a4,a1,0x38
    800031f8:	00389813          	slli	a6,a7,0x3
    800031fc:	00f507b3          	add	a5,a0,a5
    80003200:	00e6e733          	or	a4,a3,a4
    80003204:	000e089b          	sext.w	a7,t3
    80003208:	00f806b3          	add	a3,a6,a5
    8000320c:	00e7b023          	sd	a4,0(a5)
    80003210:	00878793          	addi	a5,a5,8
    80003214:	fed79ce3          	bne	a5,a3,8000320c <__memset+0xd4>
    80003218:	ff8e7793          	andi	a5,t3,-8
    8000321c:	0007871b          	sext.w	a4,a5
    80003220:	01d787bb          	addw	a5,a5,t4
    80003224:	0ce88e63          	beq	a7,a4,80003300 <__memset+0x1c8>
    80003228:	00f50733          	add	a4,a0,a5
    8000322c:	00b70023          	sb	a1,0(a4)
    80003230:	0017871b          	addiw	a4,a5,1
    80003234:	0cc77663          	bgeu	a4,a2,80003300 <__memset+0x1c8>
    80003238:	00e50733          	add	a4,a0,a4
    8000323c:	00b70023          	sb	a1,0(a4)
    80003240:	0027871b          	addiw	a4,a5,2
    80003244:	0ac77e63          	bgeu	a4,a2,80003300 <__memset+0x1c8>
    80003248:	00e50733          	add	a4,a0,a4
    8000324c:	00b70023          	sb	a1,0(a4)
    80003250:	0037871b          	addiw	a4,a5,3
    80003254:	0ac77663          	bgeu	a4,a2,80003300 <__memset+0x1c8>
    80003258:	00e50733          	add	a4,a0,a4
    8000325c:	00b70023          	sb	a1,0(a4)
    80003260:	0047871b          	addiw	a4,a5,4
    80003264:	08c77e63          	bgeu	a4,a2,80003300 <__memset+0x1c8>
    80003268:	00e50733          	add	a4,a0,a4
    8000326c:	00b70023          	sb	a1,0(a4)
    80003270:	0057871b          	addiw	a4,a5,5
    80003274:	08c77663          	bgeu	a4,a2,80003300 <__memset+0x1c8>
    80003278:	00e50733          	add	a4,a0,a4
    8000327c:	00b70023          	sb	a1,0(a4)
    80003280:	0067871b          	addiw	a4,a5,6
    80003284:	06c77e63          	bgeu	a4,a2,80003300 <__memset+0x1c8>
    80003288:	00e50733          	add	a4,a0,a4
    8000328c:	00b70023          	sb	a1,0(a4)
    80003290:	0077871b          	addiw	a4,a5,7
    80003294:	06c77663          	bgeu	a4,a2,80003300 <__memset+0x1c8>
    80003298:	00e50733          	add	a4,a0,a4
    8000329c:	00b70023          	sb	a1,0(a4)
    800032a0:	0087871b          	addiw	a4,a5,8
    800032a4:	04c77e63          	bgeu	a4,a2,80003300 <__memset+0x1c8>
    800032a8:	00e50733          	add	a4,a0,a4
    800032ac:	00b70023          	sb	a1,0(a4)
    800032b0:	0097871b          	addiw	a4,a5,9
    800032b4:	04c77663          	bgeu	a4,a2,80003300 <__memset+0x1c8>
    800032b8:	00e50733          	add	a4,a0,a4
    800032bc:	00b70023          	sb	a1,0(a4)
    800032c0:	00a7871b          	addiw	a4,a5,10
    800032c4:	02c77e63          	bgeu	a4,a2,80003300 <__memset+0x1c8>
    800032c8:	00e50733          	add	a4,a0,a4
    800032cc:	00b70023          	sb	a1,0(a4)
    800032d0:	00b7871b          	addiw	a4,a5,11
    800032d4:	02c77663          	bgeu	a4,a2,80003300 <__memset+0x1c8>
    800032d8:	00e50733          	add	a4,a0,a4
    800032dc:	00b70023          	sb	a1,0(a4)
    800032e0:	00c7871b          	addiw	a4,a5,12
    800032e4:	00c77e63          	bgeu	a4,a2,80003300 <__memset+0x1c8>
    800032e8:	00e50733          	add	a4,a0,a4
    800032ec:	00b70023          	sb	a1,0(a4)
    800032f0:	00d7879b          	addiw	a5,a5,13
    800032f4:	00c7f663          	bgeu	a5,a2,80003300 <__memset+0x1c8>
    800032f8:	00f507b3          	add	a5,a0,a5
    800032fc:	00b78023          	sb	a1,0(a5)
    80003300:	00813403          	ld	s0,8(sp)
    80003304:	01010113          	addi	sp,sp,16
    80003308:	00008067          	ret
    8000330c:	00b00693          	li	a3,11
    80003310:	e55ff06f          	j	80003164 <__memset+0x2c>
    80003314:	00300e93          	li	t4,3
    80003318:	ea5ff06f          	j	800031bc <__memset+0x84>
    8000331c:	00100e93          	li	t4,1
    80003320:	e9dff06f          	j	800031bc <__memset+0x84>
    80003324:	00000e93          	li	t4,0
    80003328:	e95ff06f          	j	800031bc <__memset+0x84>
    8000332c:	00000793          	li	a5,0
    80003330:	ef9ff06f          	j	80003228 <__memset+0xf0>
    80003334:	00200e93          	li	t4,2
    80003338:	e85ff06f          	j	800031bc <__memset+0x84>
    8000333c:	00400e93          	li	t4,4
    80003340:	e7dff06f          	j	800031bc <__memset+0x84>
    80003344:	00500e93          	li	t4,5
    80003348:	e75ff06f          	j	800031bc <__memset+0x84>
    8000334c:	00600e93          	li	t4,6
    80003350:	e6dff06f          	j	800031bc <__memset+0x84>

0000000080003354 <__memmove>:
    80003354:	ff010113          	addi	sp,sp,-16
    80003358:	00813423          	sd	s0,8(sp)
    8000335c:	01010413          	addi	s0,sp,16
    80003360:	0e060863          	beqz	a2,80003450 <__memmove+0xfc>
    80003364:	fff6069b          	addiw	a3,a2,-1
    80003368:	0006881b          	sext.w	a6,a3
    8000336c:	0ea5e863          	bltu	a1,a0,8000345c <__memmove+0x108>
    80003370:	00758713          	addi	a4,a1,7
    80003374:	00a5e7b3          	or	a5,a1,a0
    80003378:	40a70733          	sub	a4,a4,a0
    8000337c:	0077f793          	andi	a5,a5,7
    80003380:	00f73713          	sltiu	a4,a4,15
    80003384:	00174713          	xori	a4,a4,1
    80003388:	0017b793          	seqz	a5,a5
    8000338c:	00e7f7b3          	and	a5,a5,a4
    80003390:	10078863          	beqz	a5,800034a0 <__memmove+0x14c>
    80003394:	00900793          	li	a5,9
    80003398:	1107f463          	bgeu	a5,a6,800034a0 <__memmove+0x14c>
    8000339c:	0036581b          	srliw	a6,a2,0x3
    800033a0:	fff8081b          	addiw	a6,a6,-1
    800033a4:	02081813          	slli	a6,a6,0x20
    800033a8:	01d85893          	srli	a7,a6,0x1d
    800033ac:	00858813          	addi	a6,a1,8
    800033b0:	00058793          	mv	a5,a1
    800033b4:	00050713          	mv	a4,a0
    800033b8:	01088833          	add	a6,a7,a6
    800033bc:	0007b883          	ld	a7,0(a5)
    800033c0:	00878793          	addi	a5,a5,8
    800033c4:	00870713          	addi	a4,a4,8
    800033c8:	ff173c23          	sd	a7,-8(a4)
    800033cc:	ff0798e3          	bne	a5,a6,800033bc <__memmove+0x68>
    800033d0:	ff867713          	andi	a4,a2,-8
    800033d4:	02071793          	slli	a5,a4,0x20
    800033d8:	0207d793          	srli	a5,a5,0x20
    800033dc:	00f585b3          	add	a1,a1,a5
    800033e0:	40e686bb          	subw	a3,a3,a4
    800033e4:	00f507b3          	add	a5,a0,a5
    800033e8:	06e60463          	beq	a2,a4,80003450 <__memmove+0xfc>
    800033ec:	0005c703          	lbu	a4,0(a1)
    800033f0:	00e78023          	sb	a4,0(a5)
    800033f4:	04068e63          	beqz	a3,80003450 <__memmove+0xfc>
    800033f8:	0015c603          	lbu	a2,1(a1)
    800033fc:	00100713          	li	a4,1
    80003400:	00c780a3          	sb	a2,1(a5)
    80003404:	04e68663          	beq	a3,a4,80003450 <__memmove+0xfc>
    80003408:	0025c603          	lbu	a2,2(a1)
    8000340c:	00200713          	li	a4,2
    80003410:	00c78123          	sb	a2,2(a5)
    80003414:	02e68e63          	beq	a3,a4,80003450 <__memmove+0xfc>
    80003418:	0035c603          	lbu	a2,3(a1)
    8000341c:	00300713          	li	a4,3
    80003420:	00c781a3          	sb	a2,3(a5)
    80003424:	02e68663          	beq	a3,a4,80003450 <__memmove+0xfc>
    80003428:	0045c603          	lbu	a2,4(a1)
    8000342c:	00400713          	li	a4,4
    80003430:	00c78223          	sb	a2,4(a5)
    80003434:	00e68e63          	beq	a3,a4,80003450 <__memmove+0xfc>
    80003438:	0055c603          	lbu	a2,5(a1)
    8000343c:	00500713          	li	a4,5
    80003440:	00c782a3          	sb	a2,5(a5)
    80003444:	00e68663          	beq	a3,a4,80003450 <__memmove+0xfc>
    80003448:	0065c703          	lbu	a4,6(a1)
    8000344c:	00e78323          	sb	a4,6(a5)
    80003450:	00813403          	ld	s0,8(sp)
    80003454:	01010113          	addi	sp,sp,16
    80003458:	00008067          	ret
    8000345c:	02061713          	slli	a4,a2,0x20
    80003460:	02075713          	srli	a4,a4,0x20
    80003464:	00e587b3          	add	a5,a1,a4
    80003468:	f0f574e3          	bgeu	a0,a5,80003370 <__memmove+0x1c>
    8000346c:	02069613          	slli	a2,a3,0x20
    80003470:	02065613          	srli	a2,a2,0x20
    80003474:	fff64613          	not	a2,a2
    80003478:	00e50733          	add	a4,a0,a4
    8000347c:	00c78633          	add	a2,a5,a2
    80003480:	fff7c683          	lbu	a3,-1(a5)
    80003484:	fff78793          	addi	a5,a5,-1
    80003488:	fff70713          	addi	a4,a4,-1
    8000348c:	00d70023          	sb	a3,0(a4)
    80003490:	fec798e3          	bne	a5,a2,80003480 <__memmove+0x12c>
    80003494:	00813403          	ld	s0,8(sp)
    80003498:	01010113          	addi	sp,sp,16
    8000349c:	00008067          	ret
    800034a0:	02069713          	slli	a4,a3,0x20
    800034a4:	02075713          	srli	a4,a4,0x20
    800034a8:	00170713          	addi	a4,a4,1
    800034ac:	00e50733          	add	a4,a0,a4
    800034b0:	00050793          	mv	a5,a0
    800034b4:	0005c683          	lbu	a3,0(a1)
    800034b8:	00178793          	addi	a5,a5,1
    800034bc:	00158593          	addi	a1,a1,1
    800034c0:	fed78fa3          	sb	a3,-1(a5)
    800034c4:	fee798e3          	bne	a5,a4,800034b4 <__memmove+0x160>
    800034c8:	f89ff06f          	j	80003450 <__memmove+0xfc>

00000000800034cc <__putc>:
    800034cc:	fe010113          	addi	sp,sp,-32
    800034d0:	00813823          	sd	s0,16(sp)
    800034d4:	00113c23          	sd	ra,24(sp)
    800034d8:	02010413          	addi	s0,sp,32
    800034dc:	00050793          	mv	a5,a0
    800034e0:	fef40593          	addi	a1,s0,-17
    800034e4:	00100613          	li	a2,1
    800034e8:	00000513          	li	a0,0
    800034ec:	fef407a3          	sb	a5,-17(s0)
    800034f0:	fffff097          	auipc	ra,0xfffff
    800034f4:	b3c080e7          	jalr	-1220(ra) # 8000202c <console_write>
    800034f8:	01813083          	ld	ra,24(sp)
    800034fc:	01013403          	ld	s0,16(sp)
    80003500:	02010113          	addi	sp,sp,32
    80003504:	00008067          	ret

0000000080003508 <__getc>:
    80003508:	fe010113          	addi	sp,sp,-32
    8000350c:	00813823          	sd	s0,16(sp)
    80003510:	00113c23          	sd	ra,24(sp)
    80003514:	02010413          	addi	s0,sp,32
    80003518:	fe840593          	addi	a1,s0,-24
    8000351c:	00100613          	li	a2,1
    80003520:	00000513          	li	a0,0
    80003524:	fffff097          	auipc	ra,0xfffff
    80003528:	ae8080e7          	jalr	-1304(ra) # 8000200c <console_read>
    8000352c:	fe844503          	lbu	a0,-24(s0)
    80003530:	01813083          	ld	ra,24(sp)
    80003534:	01013403          	ld	s0,16(sp)
    80003538:	02010113          	addi	sp,sp,32
    8000353c:	00008067          	ret

0000000080003540 <console_handler>:
    80003540:	fe010113          	addi	sp,sp,-32
    80003544:	00813823          	sd	s0,16(sp)
    80003548:	00113c23          	sd	ra,24(sp)
    8000354c:	00913423          	sd	s1,8(sp)
    80003550:	02010413          	addi	s0,sp,32
    80003554:	14202773          	csrr	a4,scause
    80003558:	100027f3          	csrr	a5,sstatus
    8000355c:	0027f793          	andi	a5,a5,2
    80003560:	06079e63          	bnez	a5,800035dc <console_handler+0x9c>
    80003564:	00074c63          	bltz	a4,8000357c <console_handler+0x3c>
    80003568:	01813083          	ld	ra,24(sp)
    8000356c:	01013403          	ld	s0,16(sp)
    80003570:	00813483          	ld	s1,8(sp)
    80003574:	02010113          	addi	sp,sp,32
    80003578:	00008067          	ret
    8000357c:	0ff77713          	andi	a4,a4,255
    80003580:	00900793          	li	a5,9
    80003584:	fef712e3          	bne	a4,a5,80003568 <console_handler+0x28>
    80003588:	ffffe097          	auipc	ra,0xffffe
    8000358c:	6dc080e7          	jalr	1756(ra) # 80001c64 <plic_claim>
    80003590:	00a00793          	li	a5,10
    80003594:	00050493          	mv	s1,a0
    80003598:	02f50c63          	beq	a0,a5,800035d0 <console_handler+0x90>
    8000359c:	fc0506e3          	beqz	a0,80003568 <console_handler+0x28>
    800035a0:	00050593          	mv	a1,a0
    800035a4:	00001517          	auipc	a0,0x1
    800035a8:	b4c50513          	addi	a0,a0,-1204 # 800040f0 <CONSOLE_STATUS+0xe0>
    800035ac:	fffff097          	auipc	ra,0xfffff
    800035b0:	afc080e7          	jalr	-1284(ra) # 800020a8 <__printf>
    800035b4:	01013403          	ld	s0,16(sp)
    800035b8:	01813083          	ld	ra,24(sp)
    800035bc:	00048513          	mv	a0,s1
    800035c0:	00813483          	ld	s1,8(sp)
    800035c4:	02010113          	addi	sp,sp,32
    800035c8:	ffffe317          	auipc	t1,0xffffe
    800035cc:	6d430067          	jr	1748(t1) # 80001c9c <plic_complete>
    800035d0:	fffff097          	auipc	ra,0xfffff
    800035d4:	3e0080e7          	jalr	992(ra) # 800029b0 <uartintr>
    800035d8:	fddff06f          	j	800035b4 <console_handler+0x74>
    800035dc:	00001517          	auipc	a0,0x1
    800035e0:	c1450513          	addi	a0,a0,-1004 # 800041f0 <digits+0x78>
    800035e4:	fffff097          	auipc	ra,0xfffff
    800035e8:	a68080e7          	jalr	-1432(ra) # 8000204c <panic>
	...
