
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00004117          	auipc	sp,0x4
    80000004:	24813103          	ld	sp,584(sp) # 80004248 <_GLOBAL_OFFSET_TABLE_+0x8>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	01c010ef          	jal	ra,80001038 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <main>:
#include "../lib/console.h"

void main(){
    80001000:	ff010113          	addi	sp,sp,-16
    80001004:	00113423          	sd	ra,8(sp)
    80001008:	00813023          	sd	s0,0(sp)
    8000100c:	01010413          	addi	s0,sp,16
__putc('a');
    80001010:	06100513          	li	a0,97
    80001014:	00002097          	auipc	ra,0x2
    80001018:	0e8080e7          	jalr	232(ra) # 800030fc <__putc>
__putc('\n');
    8000101c:	00a00513          	li	a0,10
    80001020:	00002097          	auipc	ra,0x2
    80001024:	0dc080e7          	jalr	220(ra) # 800030fc <__putc>
    80001028:	00813083          	ld	ra,8(sp)
    8000102c:	00013403          	ld	s0,0(sp)
    80001030:	01010113          	addi	sp,sp,16
    80001034:	00008067          	ret

0000000080001038 <start>:
    80001038:	ff010113          	addi	sp,sp,-16
    8000103c:	00813423          	sd	s0,8(sp)
    80001040:	01010413          	addi	s0,sp,16
    80001044:	300027f3          	csrr	a5,mstatus
    80001048:	ffffe737          	lui	a4,0xffffe
    8000104c:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff931f>
    80001050:	00e7f7b3          	and	a5,a5,a4
    80001054:	00001737          	lui	a4,0x1
    80001058:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    8000105c:	00e7e7b3          	or	a5,a5,a4
    80001060:	30079073          	csrw	mstatus,a5
    80001064:	00000797          	auipc	a5,0x0
    80001068:	16078793          	addi	a5,a5,352 # 800011c4 <system_main>
    8000106c:	34179073          	csrw	mepc,a5
    80001070:	00000793          	li	a5,0
    80001074:	18079073          	csrw	satp,a5
    80001078:	000107b7          	lui	a5,0x10
    8000107c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001080:	30279073          	csrw	medeleg,a5
    80001084:	30379073          	csrw	mideleg,a5
    80001088:	104027f3          	csrr	a5,sie
    8000108c:	2227e793          	ori	a5,a5,546
    80001090:	10479073          	csrw	sie,a5
    80001094:	fff00793          	li	a5,-1
    80001098:	00a7d793          	srli	a5,a5,0xa
    8000109c:	3b079073          	csrw	pmpaddr0,a5
    800010a0:	00f00793          	li	a5,15
    800010a4:	3a079073          	csrw	pmpcfg0,a5
    800010a8:	f14027f3          	csrr	a5,mhartid
    800010ac:	0200c737          	lui	a4,0x200c
    800010b0:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800010b4:	0007869b          	sext.w	a3,a5
    800010b8:	00269713          	slli	a4,a3,0x2
    800010bc:	000f4637          	lui	a2,0xf4
    800010c0:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800010c4:	00d70733          	add	a4,a4,a3
    800010c8:	0037979b          	slliw	a5,a5,0x3
    800010cc:	020046b7          	lui	a3,0x2004
    800010d0:	00d787b3          	add	a5,a5,a3
    800010d4:	00c585b3          	add	a1,a1,a2
    800010d8:	00371693          	slli	a3,a4,0x3
    800010dc:	00003717          	auipc	a4,0x3
    800010e0:	1b470713          	addi	a4,a4,436 # 80004290 <timer_scratch>
    800010e4:	00b7b023          	sd	a1,0(a5)
    800010e8:	00d70733          	add	a4,a4,a3
    800010ec:	00f73c23          	sd	a5,24(a4)
    800010f0:	02c73023          	sd	a2,32(a4)
    800010f4:	34071073          	csrw	mscratch,a4
    800010f8:	00000797          	auipc	a5,0x0
    800010fc:	6e878793          	addi	a5,a5,1768 # 800017e0 <timervec>
    80001100:	30579073          	csrw	mtvec,a5
    80001104:	300027f3          	csrr	a5,mstatus
    80001108:	0087e793          	ori	a5,a5,8
    8000110c:	30079073          	csrw	mstatus,a5
    80001110:	304027f3          	csrr	a5,mie
    80001114:	0807e793          	ori	a5,a5,128
    80001118:	30479073          	csrw	mie,a5
    8000111c:	f14027f3          	csrr	a5,mhartid
    80001120:	0007879b          	sext.w	a5,a5
    80001124:	00078213          	mv	tp,a5
    80001128:	30200073          	mret
    8000112c:	00813403          	ld	s0,8(sp)
    80001130:	01010113          	addi	sp,sp,16
    80001134:	00008067          	ret

0000000080001138 <timerinit>:
    80001138:	ff010113          	addi	sp,sp,-16
    8000113c:	00813423          	sd	s0,8(sp)
    80001140:	01010413          	addi	s0,sp,16
    80001144:	f14027f3          	csrr	a5,mhartid
    80001148:	0200c737          	lui	a4,0x200c
    8000114c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001150:	0007869b          	sext.w	a3,a5
    80001154:	00269713          	slli	a4,a3,0x2
    80001158:	000f4637          	lui	a2,0xf4
    8000115c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001160:	00d70733          	add	a4,a4,a3
    80001164:	0037979b          	slliw	a5,a5,0x3
    80001168:	020046b7          	lui	a3,0x2004
    8000116c:	00d787b3          	add	a5,a5,a3
    80001170:	00c585b3          	add	a1,a1,a2
    80001174:	00371693          	slli	a3,a4,0x3
    80001178:	00003717          	auipc	a4,0x3
    8000117c:	11870713          	addi	a4,a4,280 # 80004290 <timer_scratch>
    80001180:	00b7b023          	sd	a1,0(a5)
    80001184:	00d70733          	add	a4,a4,a3
    80001188:	00f73c23          	sd	a5,24(a4)
    8000118c:	02c73023          	sd	a2,32(a4)
    80001190:	34071073          	csrw	mscratch,a4
    80001194:	00000797          	auipc	a5,0x0
    80001198:	64c78793          	addi	a5,a5,1612 # 800017e0 <timervec>
    8000119c:	30579073          	csrw	mtvec,a5
    800011a0:	300027f3          	csrr	a5,mstatus
    800011a4:	0087e793          	ori	a5,a5,8
    800011a8:	30079073          	csrw	mstatus,a5
    800011ac:	304027f3          	csrr	a5,mie
    800011b0:	0807e793          	ori	a5,a5,128
    800011b4:	30479073          	csrw	mie,a5
    800011b8:	00813403          	ld	s0,8(sp)
    800011bc:	01010113          	addi	sp,sp,16
    800011c0:	00008067          	ret

00000000800011c4 <system_main>:
    800011c4:	fe010113          	addi	sp,sp,-32
    800011c8:	00813823          	sd	s0,16(sp)
    800011cc:	00913423          	sd	s1,8(sp)
    800011d0:	00113c23          	sd	ra,24(sp)
    800011d4:	02010413          	addi	s0,sp,32
    800011d8:	00000097          	auipc	ra,0x0
    800011dc:	0c4080e7          	jalr	196(ra) # 8000129c <cpuid>
    800011e0:	00003497          	auipc	s1,0x3
    800011e4:	08048493          	addi	s1,s1,128 # 80004260 <started>
    800011e8:	02050263          	beqz	a0,8000120c <system_main+0x48>
    800011ec:	0004a783          	lw	a5,0(s1)
    800011f0:	0007879b          	sext.w	a5,a5
    800011f4:	fe078ce3          	beqz	a5,800011ec <system_main+0x28>
    800011f8:	0ff0000f          	fence
    800011fc:	00003517          	auipc	a0,0x3
    80001200:	e3450513          	addi	a0,a0,-460 # 80004030 <console_handler+0xec0>
    80001204:	00001097          	auipc	ra,0x1
    80001208:	a78080e7          	jalr	-1416(ra) # 80001c7c <panic>
    8000120c:	00001097          	auipc	ra,0x1
    80001210:	9cc080e7          	jalr	-1588(ra) # 80001bd8 <consoleinit>
    80001214:	00001097          	auipc	ra,0x1
    80001218:	158080e7          	jalr	344(ra) # 8000236c <printfinit>
    8000121c:	00003517          	auipc	a0,0x3
    80001220:	ef450513          	addi	a0,a0,-268 # 80004110 <console_handler+0xfa0>
    80001224:	00001097          	auipc	ra,0x1
    80001228:	ab4080e7          	jalr	-1356(ra) # 80001cd8 <__printf>
    8000122c:	00003517          	auipc	a0,0x3
    80001230:	dd450513          	addi	a0,a0,-556 # 80004000 <console_handler+0xe90>
    80001234:	00001097          	auipc	ra,0x1
    80001238:	aa4080e7          	jalr	-1372(ra) # 80001cd8 <__printf>
    8000123c:	00003517          	auipc	a0,0x3
    80001240:	ed450513          	addi	a0,a0,-300 # 80004110 <console_handler+0xfa0>
    80001244:	00001097          	auipc	ra,0x1
    80001248:	a94080e7          	jalr	-1388(ra) # 80001cd8 <__printf>
    8000124c:	00001097          	auipc	ra,0x1
    80001250:	4ac080e7          	jalr	1196(ra) # 800026f8 <kinit>
    80001254:	00000097          	auipc	ra,0x0
    80001258:	148080e7          	jalr	328(ra) # 8000139c <trapinit>
    8000125c:	00000097          	auipc	ra,0x0
    80001260:	16c080e7          	jalr	364(ra) # 800013c8 <trapinithart>
    80001264:	00000097          	auipc	ra,0x0
    80001268:	5bc080e7          	jalr	1468(ra) # 80001820 <plicinit>
    8000126c:	00000097          	auipc	ra,0x0
    80001270:	5dc080e7          	jalr	1500(ra) # 80001848 <plicinithart>
    80001274:	00000097          	auipc	ra,0x0
    80001278:	078080e7          	jalr	120(ra) # 800012ec <userinit>
    8000127c:	0ff0000f          	fence
    80001280:	00100793          	li	a5,1
    80001284:	00003517          	auipc	a0,0x3
    80001288:	d9450513          	addi	a0,a0,-620 # 80004018 <console_handler+0xea8>
    8000128c:	00f4a023          	sw	a5,0(s1)
    80001290:	00001097          	auipc	ra,0x1
    80001294:	a48080e7          	jalr	-1464(ra) # 80001cd8 <__printf>
    80001298:	0000006f          	j	80001298 <system_main+0xd4>

000000008000129c <cpuid>:
    8000129c:	ff010113          	addi	sp,sp,-16
    800012a0:	00813423          	sd	s0,8(sp)
    800012a4:	01010413          	addi	s0,sp,16
    800012a8:	00020513          	mv	a0,tp
    800012ac:	00813403          	ld	s0,8(sp)
    800012b0:	0005051b          	sext.w	a0,a0
    800012b4:	01010113          	addi	sp,sp,16
    800012b8:	00008067          	ret

00000000800012bc <mycpu>:
    800012bc:	ff010113          	addi	sp,sp,-16
    800012c0:	00813423          	sd	s0,8(sp)
    800012c4:	01010413          	addi	s0,sp,16
    800012c8:	00020793          	mv	a5,tp
    800012cc:	00813403          	ld	s0,8(sp)
    800012d0:	0007879b          	sext.w	a5,a5
    800012d4:	00779793          	slli	a5,a5,0x7
    800012d8:	00004517          	auipc	a0,0x4
    800012dc:	fe850513          	addi	a0,a0,-24 # 800052c0 <cpus>
    800012e0:	00f50533          	add	a0,a0,a5
    800012e4:	01010113          	addi	sp,sp,16
    800012e8:	00008067          	ret

00000000800012ec <userinit>:
    800012ec:	ff010113          	addi	sp,sp,-16
    800012f0:	00813423          	sd	s0,8(sp)
    800012f4:	01010413          	addi	s0,sp,16
    800012f8:	00813403          	ld	s0,8(sp)
    800012fc:	01010113          	addi	sp,sp,16
    80001300:	00000317          	auipc	t1,0x0
    80001304:	d0030067          	jr	-768(t1) # 80001000 <main>

0000000080001308 <either_copyout>:
    80001308:	ff010113          	addi	sp,sp,-16
    8000130c:	00813023          	sd	s0,0(sp)
    80001310:	00113423          	sd	ra,8(sp)
    80001314:	01010413          	addi	s0,sp,16
    80001318:	02051663          	bnez	a0,80001344 <either_copyout+0x3c>
    8000131c:	00058513          	mv	a0,a1
    80001320:	00060593          	mv	a1,a2
    80001324:	0006861b          	sext.w	a2,a3
    80001328:	00002097          	auipc	ra,0x2
    8000132c:	c5c080e7          	jalr	-932(ra) # 80002f84 <__memmove>
    80001330:	00813083          	ld	ra,8(sp)
    80001334:	00013403          	ld	s0,0(sp)
    80001338:	00000513          	li	a0,0
    8000133c:	01010113          	addi	sp,sp,16
    80001340:	00008067          	ret
    80001344:	00003517          	auipc	a0,0x3
    80001348:	d1450513          	addi	a0,a0,-748 # 80004058 <console_handler+0xee8>
    8000134c:	00001097          	auipc	ra,0x1
    80001350:	930080e7          	jalr	-1744(ra) # 80001c7c <panic>

0000000080001354 <either_copyin>:
    80001354:	ff010113          	addi	sp,sp,-16
    80001358:	00813023          	sd	s0,0(sp)
    8000135c:	00113423          	sd	ra,8(sp)
    80001360:	01010413          	addi	s0,sp,16
    80001364:	02059463          	bnez	a1,8000138c <either_copyin+0x38>
    80001368:	00060593          	mv	a1,a2
    8000136c:	0006861b          	sext.w	a2,a3
    80001370:	00002097          	auipc	ra,0x2
    80001374:	c14080e7          	jalr	-1004(ra) # 80002f84 <__memmove>
    80001378:	00813083          	ld	ra,8(sp)
    8000137c:	00013403          	ld	s0,0(sp)
    80001380:	00000513          	li	a0,0
    80001384:	01010113          	addi	sp,sp,16
    80001388:	00008067          	ret
    8000138c:	00003517          	auipc	a0,0x3
    80001390:	cf450513          	addi	a0,a0,-780 # 80004080 <console_handler+0xf10>
    80001394:	00001097          	auipc	ra,0x1
    80001398:	8e8080e7          	jalr	-1816(ra) # 80001c7c <panic>

000000008000139c <trapinit>:
    8000139c:	ff010113          	addi	sp,sp,-16
    800013a0:	00813423          	sd	s0,8(sp)
    800013a4:	01010413          	addi	s0,sp,16
    800013a8:	00813403          	ld	s0,8(sp)
    800013ac:	00003597          	auipc	a1,0x3
    800013b0:	cfc58593          	addi	a1,a1,-772 # 800040a8 <console_handler+0xf38>
    800013b4:	00004517          	auipc	a0,0x4
    800013b8:	f8c50513          	addi	a0,a0,-116 # 80005340 <tickslock>
    800013bc:	01010113          	addi	sp,sp,16
    800013c0:	00001317          	auipc	t1,0x1
    800013c4:	5c830067          	jr	1480(t1) # 80002988 <initlock>

00000000800013c8 <trapinithart>:
    800013c8:	ff010113          	addi	sp,sp,-16
    800013cc:	00813423          	sd	s0,8(sp)
    800013d0:	01010413          	addi	s0,sp,16
    800013d4:	00000797          	auipc	a5,0x0
    800013d8:	2fc78793          	addi	a5,a5,764 # 800016d0 <kernelvec>
    800013dc:	10579073          	csrw	stvec,a5
    800013e0:	00813403          	ld	s0,8(sp)
    800013e4:	01010113          	addi	sp,sp,16
    800013e8:	00008067          	ret

00000000800013ec <usertrap>:
    800013ec:	ff010113          	addi	sp,sp,-16
    800013f0:	00813423          	sd	s0,8(sp)
    800013f4:	01010413          	addi	s0,sp,16
    800013f8:	00813403          	ld	s0,8(sp)
    800013fc:	01010113          	addi	sp,sp,16
    80001400:	00008067          	ret

0000000080001404 <usertrapret>:
    80001404:	ff010113          	addi	sp,sp,-16
    80001408:	00813423          	sd	s0,8(sp)
    8000140c:	01010413          	addi	s0,sp,16
    80001410:	00813403          	ld	s0,8(sp)
    80001414:	01010113          	addi	sp,sp,16
    80001418:	00008067          	ret

000000008000141c <kerneltrap>:
    8000141c:	fe010113          	addi	sp,sp,-32
    80001420:	00813823          	sd	s0,16(sp)
    80001424:	00113c23          	sd	ra,24(sp)
    80001428:	00913423          	sd	s1,8(sp)
    8000142c:	02010413          	addi	s0,sp,32
    80001430:	142025f3          	csrr	a1,scause
    80001434:	100027f3          	csrr	a5,sstatus
    80001438:	0027f793          	andi	a5,a5,2
    8000143c:	10079c63          	bnez	a5,80001554 <kerneltrap+0x138>
    80001440:	142027f3          	csrr	a5,scause
    80001444:	0207ce63          	bltz	a5,80001480 <kerneltrap+0x64>
    80001448:	00003517          	auipc	a0,0x3
    8000144c:	ca850513          	addi	a0,a0,-856 # 800040f0 <console_handler+0xf80>
    80001450:	00001097          	auipc	ra,0x1
    80001454:	888080e7          	jalr	-1912(ra) # 80001cd8 <__printf>
    80001458:	141025f3          	csrr	a1,sepc
    8000145c:	14302673          	csrr	a2,stval
    80001460:	00003517          	auipc	a0,0x3
    80001464:	ca050513          	addi	a0,a0,-864 # 80004100 <console_handler+0xf90>
    80001468:	00001097          	auipc	ra,0x1
    8000146c:	870080e7          	jalr	-1936(ra) # 80001cd8 <__printf>
    80001470:	00003517          	auipc	a0,0x3
    80001474:	ca850513          	addi	a0,a0,-856 # 80004118 <console_handler+0xfa8>
    80001478:	00001097          	auipc	ra,0x1
    8000147c:	804080e7          	jalr	-2044(ra) # 80001c7c <panic>
    80001480:	0ff7f713          	andi	a4,a5,255
    80001484:	00900693          	li	a3,9
    80001488:	04d70063          	beq	a4,a3,800014c8 <kerneltrap+0xac>
    8000148c:	fff00713          	li	a4,-1
    80001490:	03f71713          	slli	a4,a4,0x3f
    80001494:	00170713          	addi	a4,a4,1
    80001498:	fae798e3          	bne	a5,a4,80001448 <kerneltrap+0x2c>
    8000149c:	00000097          	auipc	ra,0x0
    800014a0:	e00080e7          	jalr	-512(ra) # 8000129c <cpuid>
    800014a4:	06050663          	beqz	a0,80001510 <kerneltrap+0xf4>
    800014a8:	144027f3          	csrr	a5,sip
    800014ac:	ffd7f793          	andi	a5,a5,-3
    800014b0:	14479073          	csrw	sip,a5
    800014b4:	01813083          	ld	ra,24(sp)
    800014b8:	01013403          	ld	s0,16(sp)
    800014bc:	00813483          	ld	s1,8(sp)
    800014c0:	02010113          	addi	sp,sp,32
    800014c4:	00008067          	ret
    800014c8:	00000097          	auipc	ra,0x0
    800014cc:	3cc080e7          	jalr	972(ra) # 80001894 <plic_claim>
    800014d0:	00a00793          	li	a5,10
    800014d4:	00050493          	mv	s1,a0
    800014d8:	06f50863          	beq	a0,a5,80001548 <kerneltrap+0x12c>
    800014dc:	fc050ce3          	beqz	a0,800014b4 <kerneltrap+0x98>
    800014e0:	00050593          	mv	a1,a0
    800014e4:	00003517          	auipc	a0,0x3
    800014e8:	bec50513          	addi	a0,a0,-1044 # 800040d0 <console_handler+0xf60>
    800014ec:	00000097          	auipc	ra,0x0
    800014f0:	7ec080e7          	jalr	2028(ra) # 80001cd8 <__printf>
    800014f4:	01013403          	ld	s0,16(sp)
    800014f8:	01813083          	ld	ra,24(sp)
    800014fc:	00048513          	mv	a0,s1
    80001500:	00813483          	ld	s1,8(sp)
    80001504:	02010113          	addi	sp,sp,32
    80001508:	00000317          	auipc	t1,0x0
    8000150c:	3c430067          	jr	964(t1) # 800018cc <plic_complete>
    80001510:	00004517          	auipc	a0,0x4
    80001514:	e3050513          	addi	a0,a0,-464 # 80005340 <tickslock>
    80001518:	00001097          	auipc	ra,0x1
    8000151c:	494080e7          	jalr	1172(ra) # 800029ac <acquire>
    80001520:	00003717          	auipc	a4,0x3
    80001524:	d4470713          	addi	a4,a4,-700 # 80004264 <ticks>
    80001528:	00072783          	lw	a5,0(a4)
    8000152c:	00004517          	auipc	a0,0x4
    80001530:	e1450513          	addi	a0,a0,-492 # 80005340 <tickslock>
    80001534:	0017879b          	addiw	a5,a5,1
    80001538:	00f72023          	sw	a5,0(a4)
    8000153c:	00001097          	auipc	ra,0x1
    80001540:	53c080e7          	jalr	1340(ra) # 80002a78 <release>
    80001544:	f65ff06f          	j	800014a8 <kerneltrap+0x8c>
    80001548:	00001097          	auipc	ra,0x1
    8000154c:	098080e7          	jalr	152(ra) # 800025e0 <uartintr>
    80001550:	fa5ff06f          	j	800014f4 <kerneltrap+0xd8>
    80001554:	00003517          	auipc	a0,0x3
    80001558:	b5c50513          	addi	a0,a0,-1188 # 800040b0 <console_handler+0xf40>
    8000155c:	00000097          	auipc	ra,0x0
    80001560:	720080e7          	jalr	1824(ra) # 80001c7c <panic>

0000000080001564 <clockintr>:
    80001564:	fe010113          	addi	sp,sp,-32
    80001568:	00813823          	sd	s0,16(sp)
    8000156c:	00913423          	sd	s1,8(sp)
    80001570:	00113c23          	sd	ra,24(sp)
    80001574:	02010413          	addi	s0,sp,32
    80001578:	00004497          	auipc	s1,0x4
    8000157c:	dc848493          	addi	s1,s1,-568 # 80005340 <tickslock>
    80001580:	00048513          	mv	a0,s1
    80001584:	00001097          	auipc	ra,0x1
    80001588:	428080e7          	jalr	1064(ra) # 800029ac <acquire>
    8000158c:	00003717          	auipc	a4,0x3
    80001590:	cd870713          	addi	a4,a4,-808 # 80004264 <ticks>
    80001594:	00072783          	lw	a5,0(a4)
    80001598:	01013403          	ld	s0,16(sp)
    8000159c:	01813083          	ld	ra,24(sp)
    800015a0:	00048513          	mv	a0,s1
    800015a4:	0017879b          	addiw	a5,a5,1
    800015a8:	00813483          	ld	s1,8(sp)
    800015ac:	00f72023          	sw	a5,0(a4)
    800015b0:	02010113          	addi	sp,sp,32
    800015b4:	00001317          	auipc	t1,0x1
    800015b8:	4c430067          	jr	1220(t1) # 80002a78 <release>

00000000800015bc <devintr>:
    800015bc:	142027f3          	csrr	a5,scause
    800015c0:	00000513          	li	a0,0
    800015c4:	0007c463          	bltz	a5,800015cc <devintr+0x10>
    800015c8:	00008067          	ret
    800015cc:	fe010113          	addi	sp,sp,-32
    800015d0:	00813823          	sd	s0,16(sp)
    800015d4:	00113c23          	sd	ra,24(sp)
    800015d8:	00913423          	sd	s1,8(sp)
    800015dc:	02010413          	addi	s0,sp,32
    800015e0:	0ff7f713          	andi	a4,a5,255
    800015e4:	00900693          	li	a3,9
    800015e8:	04d70c63          	beq	a4,a3,80001640 <devintr+0x84>
    800015ec:	fff00713          	li	a4,-1
    800015f0:	03f71713          	slli	a4,a4,0x3f
    800015f4:	00170713          	addi	a4,a4,1
    800015f8:	00e78c63          	beq	a5,a4,80001610 <devintr+0x54>
    800015fc:	01813083          	ld	ra,24(sp)
    80001600:	01013403          	ld	s0,16(sp)
    80001604:	00813483          	ld	s1,8(sp)
    80001608:	02010113          	addi	sp,sp,32
    8000160c:	00008067          	ret
    80001610:	00000097          	auipc	ra,0x0
    80001614:	c8c080e7          	jalr	-884(ra) # 8000129c <cpuid>
    80001618:	06050663          	beqz	a0,80001684 <devintr+0xc8>
    8000161c:	144027f3          	csrr	a5,sip
    80001620:	ffd7f793          	andi	a5,a5,-3
    80001624:	14479073          	csrw	sip,a5
    80001628:	01813083          	ld	ra,24(sp)
    8000162c:	01013403          	ld	s0,16(sp)
    80001630:	00813483          	ld	s1,8(sp)
    80001634:	00200513          	li	a0,2
    80001638:	02010113          	addi	sp,sp,32
    8000163c:	00008067          	ret
    80001640:	00000097          	auipc	ra,0x0
    80001644:	254080e7          	jalr	596(ra) # 80001894 <plic_claim>
    80001648:	00a00793          	li	a5,10
    8000164c:	00050493          	mv	s1,a0
    80001650:	06f50663          	beq	a0,a5,800016bc <devintr+0x100>
    80001654:	00100513          	li	a0,1
    80001658:	fa0482e3          	beqz	s1,800015fc <devintr+0x40>
    8000165c:	00048593          	mv	a1,s1
    80001660:	00003517          	auipc	a0,0x3
    80001664:	a7050513          	addi	a0,a0,-1424 # 800040d0 <console_handler+0xf60>
    80001668:	00000097          	auipc	ra,0x0
    8000166c:	670080e7          	jalr	1648(ra) # 80001cd8 <__printf>
    80001670:	00048513          	mv	a0,s1
    80001674:	00000097          	auipc	ra,0x0
    80001678:	258080e7          	jalr	600(ra) # 800018cc <plic_complete>
    8000167c:	00100513          	li	a0,1
    80001680:	f7dff06f          	j	800015fc <devintr+0x40>
    80001684:	00004517          	auipc	a0,0x4
    80001688:	cbc50513          	addi	a0,a0,-836 # 80005340 <tickslock>
    8000168c:	00001097          	auipc	ra,0x1
    80001690:	320080e7          	jalr	800(ra) # 800029ac <acquire>
    80001694:	00003717          	auipc	a4,0x3
    80001698:	bd070713          	addi	a4,a4,-1072 # 80004264 <ticks>
    8000169c:	00072783          	lw	a5,0(a4)
    800016a0:	00004517          	auipc	a0,0x4
    800016a4:	ca050513          	addi	a0,a0,-864 # 80005340 <tickslock>
    800016a8:	0017879b          	addiw	a5,a5,1
    800016ac:	00f72023          	sw	a5,0(a4)
    800016b0:	00001097          	auipc	ra,0x1
    800016b4:	3c8080e7          	jalr	968(ra) # 80002a78 <release>
    800016b8:	f65ff06f          	j	8000161c <devintr+0x60>
    800016bc:	00001097          	auipc	ra,0x1
    800016c0:	f24080e7          	jalr	-220(ra) # 800025e0 <uartintr>
    800016c4:	fadff06f          	j	80001670 <devintr+0xb4>
	...

00000000800016d0 <kernelvec>:
    800016d0:	f0010113          	addi	sp,sp,-256
    800016d4:	00113023          	sd	ra,0(sp)
    800016d8:	00213423          	sd	sp,8(sp)
    800016dc:	00313823          	sd	gp,16(sp)
    800016e0:	00413c23          	sd	tp,24(sp)
    800016e4:	02513023          	sd	t0,32(sp)
    800016e8:	02613423          	sd	t1,40(sp)
    800016ec:	02713823          	sd	t2,48(sp)
    800016f0:	02813c23          	sd	s0,56(sp)
    800016f4:	04913023          	sd	s1,64(sp)
    800016f8:	04a13423          	sd	a0,72(sp)
    800016fc:	04b13823          	sd	a1,80(sp)
    80001700:	04c13c23          	sd	a2,88(sp)
    80001704:	06d13023          	sd	a3,96(sp)
    80001708:	06e13423          	sd	a4,104(sp)
    8000170c:	06f13823          	sd	a5,112(sp)
    80001710:	07013c23          	sd	a6,120(sp)
    80001714:	09113023          	sd	a7,128(sp)
    80001718:	09213423          	sd	s2,136(sp)
    8000171c:	09313823          	sd	s3,144(sp)
    80001720:	09413c23          	sd	s4,152(sp)
    80001724:	0b513023          	sd	s5,160(sp)
    80001728:	0b613423          	sd	s6,168(sp)
    8000172c:	0b713823          	sd	s7,176(sp)
    80001730:	0b813c23          	sd	s8,184(sp)
    80001734:	0d913023          	sd	s9,192(sp)
    80001738:	0da13423          	sd	s10,200(sp)
    8000173c:	0db13823          	sd	s11,208(sp)
    80001740:	0dc13c23          	sd	t3,216(sp)
    80001744:	0fd13023          	sd	t4,224(sp)
    80001748:	0fe13423          	sd	t5,232(sp)
    8000174c:	0ff13823          	sd	t6,240(sp)
    80001750:	ccdff0ef          	jal	ra,8000141c <kerneltrap>
    80001754:	00013083          	ld	ra,0(sp)
    80001758:	00813103          	ld	sp,8(sp)
    8000175c:	01013183          	ld	gp,16(sp)
    80001760:	02013283          	ld	t0,32(sp)
    80001764:	02813303          	ld	t1,40(sp)
    80001768:	03013383          	ld	t2,48(sp)
    8000176c:	03813403          	ld	s0,56(sp)
    80001770:	04013483          	ld	s1,64(sp)
    80001774:	04813503          	ld	a0,72(sp)
    80001778:	05013583          	ld	a1,80(sp)
    8000177c:	05813603          	ld	a2,88(sp)
    80001780:	06013683          	ld	a3,96(sp)
    80001784:	06813703          	ld	a4,104(sp)
    80001788:	07013783          	ld	a5,112(sp)
    8000178c:	07813803          	ld	a6,120(sp)
    80001790:	08013883          	ld	a7,128(sp)
    80001794:	08813903          	ld	s2,136(sp)
    80001798:	09013983          	ld	s3,144(sp)
    8000179c:	09813a03          	ld	s4,152(sp)
    800017a0:	0a013a83          	ld	s5,160(sp)
    800017a4:	0a813b03          	ld	s6,168(sp)
    800017a8:	0b013b83          	ld	s7,176(sp)
    800017ac:	0b813c03          	ld	s8,184(sp)
    800017b0:	0c013c83          	ld	s9,192(sp)
    800017b4:	0c813d03          	ld	s10,200(sp)
    800017b8:	0d013d83          	ld	s11,208(sp)
    800017bc:	0d813e03          	ld	t3,216(sp)
    800017c0:	0e013e83          	ld	t4,224(sp)
    800017c4:	0e813f03          	ld	t5,232(sp)
    800017c8:	0f013f83          	ld	t6,240(sp)
    800017cc:	10010113          	addi	sp,sp,256
    800017d0:	10200073          	sret
    800017d4:	00000013          	nop
    800017d8:	00000013          	nop
    800017dc:	00000013          	nop

00000000800017e0 <timervec>:
    800017e0:	34051573          	csrrw	a0,mscratch,a0
    800017e4:	00b53023          	sd	a1,0(a0)
    800017e8:	00c53423          	sd	a2,8(a0)
    800017ec:	00d53823          	sd	a3,16(a0)
    800017f0:	01853583          	ld	a1,24(a0)
    800017f4:	02053603          	ld	a2,32(a0)
    800017f8:	0005b683          	ld	a3,0(a1)
    800017fc:	00c686b3          	add	a3,a3,a2
    80001800:	00d5b023          	sd	a3,0(a1)
    80001804:	00200593          	li	a1,2
    80001808:	14459073          	csrw	sip,a1
    8000180c:	01053683          	ld	a3,16(a0)
    80001810:	00853603          	ld	a2,8(a0)
    80001814:	00053583          	ld	a1,0(a0)
    80001818:	34051573          	csrrw	a0,mscratch,a0
    8000181c:	30200073          	mret

0000000080001820 <plicinit>:
    80001820:	ff010113          	addi	sp,sp,-16
    80001824:	00813423          	sd	s0,8(sp)
    80001828:	01010413          	addi	s0,sp,16
    8000182c:	00813403          	ld	s0,8(sp)
    80001830:	0c0007b7          	lui	a5,0xc000
    80001834:	00100713          	li	a4,1
    80001838:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000183c:	00e7a223          	sw	a4,4(a5)
    80001840:	01010113          	addi	sp,sp,16
    80001844:	00008067          	ret

0000000080001848 <plicinithart>:
    80001848:	ff010113          	addi	sp,sp,-16
    8000184c:	00813023          	sd	s0,0(sp)
    80001850:	00113423          	sd	ra,8(sp)
    80001854:	01010413          	addi	s0,sp,16
    80001858:	00000097          	auipc	ra,0x0
    8000185c:	a44080e7          	jalr	-1468(ra) # 8000129c <cpuid>
    80001860:	0085171b          	slliw	a4,a0,0x8
    80001864:	0c0027b7          	lui	a5,0xc002
    80001868:	00e787b3          	add	a5,a5,a4
    8000186c:	40200713          	li	a4,1026
    80001870:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80001874:	00813083          	ld	ra,8(sp)
    80001878:	00013403          	ld	s0,0(sp)
    8000187c:	00d5151b          	slliw	a0,a0,0xd
    80001880:	0c2017b7          	lui	a5,0xc201
    80001884:	00a78533          	add	a0,a5,a0
    80001888:	00052023          	sw	zero,0(a0)
    8000188c:	01010113          	addi	sp,sp,16
    80001890:	00008067          	ret

0000000080001894 <plic_claim>:
    80001894:	ff010113          	addi	sp,sp,-16
    80001898:	00813023          	sd	s0,0(sp)
    8000189c:	00113423          	sd	ra,8(sp)
    800018a0:	01010413          	addi	s0,sp,16
    800018a4:	00000097          	auipc	ra,0x0
    800018a8:	9f8080e7          	jalr	-1544(ra) # 8000129c <cpuid>
    800018ac:	00813083          	ld	ra,8(sp)
    800018b0:	00013403          	ld	s0,0(sp)
    800018b4:	00d5151b          	slliw	a0,a0,0xd
    800018b8:	0c2017b7          	lui	a5,0xc201
    800018bc:	00a78533          	add	a0,a5,a0
    800018c0:	00452503          	lw	a0,4(a0)
    800018c4:	01010113          	addi	sp,sp,16
    800018c8:	00008067          	ret

00000000800018cc <plic_complete>:
    800018cc:	fe010113          	addi	sp,sp,-32
    800018d0:	00813823          	sd	s0,16(sp)
    800018d4:	00913423          	sd	s1,8(sp)
    800018d8:	00113c23          	sd	ra,24(sp)
    800018dc:	02010413          	addi	s0,sp,32
    800018e0:	00050493          	mv	s1,a0
    800018e4:	00000097          	auipc	ra,0x0
    800018e8:	9b8080e7          	jalr	-1608(ra) # 8000129c <cpuid>
    800018ec:	01813083          	ld	ra,24(sp)
    800018f0:	01013403          	ld	s0,16(sp)
    800018f4:	00d5179b          	slliw	a5,a0,0xd
    800018f8:	0c201737          	lui	a4,0xc201
    800018fc:	00f707b3          	add	a5,a4,a5
    80001900:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80001904:	00813483          	ld	s1,8(sp)
    80001908:	02010113          	addi	sp,sp,32
    8000190c:	00008067          	ret

0000000080001910 <consolewrite>:
    80001910:	fb010113          	addi	sp,sp,-80
    80001914:	04813023          	sd	s0,64(sp)
    80001918:	04113423          	sd	ra,72(sp)
    8000191c:	02913c23          	sd	s1,56(sp)
    80001920:	03213823          	sd	s2,48(sp)
    80001924:	03313423          	sd	s3,40(sp)
    80001928:	03413023          	sd	s4,32(sp)
    8000192c:	01513c23          	sd	s5,24(sp)
    80001930:	05010413          	addi	s0,sp,80
    80001934:	06c05c63          	blez	a2,800019ac <consolewrite+0x9c>
    80001938:	00060993          	mv	s3,a2
    8000193c:	00050a13          	mv	s4,a0
    80001940:	00058493          	mv	s1,a1
    80001944:	00000913          	li	s2,0
    80001948:	fff00a93          	li	s5,-1
    8000194c:	01c0006f          	j	80001968 <consolewrite+0x58>
    80001950:	fbf44503          	lbu	a0,-65(s0)
    80001954:	0019091b          	addiw	s2,s2,1
    80001958:	00148493          	addi	s1,s1,1
    8000195c:	00001097          	auipc	ra,0x1
    80001960:	a9c080e7          	jalr	-1380(ra) # 800023f8 <uartputc>
    80001964:	03298063          	beq	s3,s2,80001984 <consolewrite+0x74>
    80001968:	00048613          	mv	a2,s1
    8000196c:	00100693          	li	a3,1
    80001970:	000a0593          	mv	a1,s4
    80001974:	fbf40513          	addi	a0,s0,-65
    80001978:	00000097          	auipc	ra,0x0
    8000197c:	9dc080e7          	jalr	-1572(ra) # 80001354 <either_copyin>
    80001980:	fd5518e3          	bne	a0,s5,80001950 <consolewrite+0x40>
    80001984:	04813083          	ld	ra,72(sp)
    80001988:	04013403          	ld	s0,64(sp)
    8000198c:	03813483          	ld	s1,56(sp)
    80001990:	02813983          	ld	s3,40(sp)
    80001994:	02013a03          	ld	s4,32(sp)
    80001998:	01813a83          	ld	s5,24(sp)
    8000199c:	00090513          	mv	a0,s2
    800019a0:	03013903          	ld	s2,48(sp)
    800019a4:	05010113          	addi	sp,sp,80
    800019a8:	00008067          	ret
    800019ac:	00000913          	li	s2,0
    800019b0:	fd5ff06f          	j	80001984 <consolewrite+0x74>

00000000800019b4 <consoleread>:
    800019b4:	f9010113          	addi	sp,sp,-112
    800019b8:	06813023          	sd	s0,96(sp)
    800019bc:	04913c23          	sd	s1,88(sp)
    800019c0:	05213823          	sd	s2,80(sp)
    800019c4:	05313423          	sd	s3,72(sp)
    800019c8:	05413023          	sd	s4,64(sp)
    800019cc:	03513c23          	sd	s5,56(sp)
    800019d0:	03613823          	sd	s6,48(sp)
    800019d4:	03713423          	sd	s7,40(sp)
    800019d8:	03813023          	sd	s8,32(sp)
    800019dc:	06113423          	sd	ra,104(sp)
    800019e0:	01913c23          	sd	s9,24(sp)
    800019e4:	07010413          	addi	s0,sp,112
    800019e8:	00060b93          	mv	s7,a2
    800019ec:	00050913          	mv	s2,a0
    800019f0:	00058c13          	mv	s8,a1
    800019f4:	00060b1b          	sext.w	s6,a2
    800019f8:	00004497          	auipc	s1,0x4
    800019fc:	96048493          	addi	s1,s1,-1696 # 80005358 <cons>
    80001a00:	00400993          	li	s3,4
    80001a04:	fff00a13          	li	s4,-1
    80001a08:	00a00a93          	li	s5,10
    80001a0c:	05705e63          	blez	s7,80001a68 <consoleread+0xb4>
    80001a10:	09c4a703          	lw	a4,156(s1)
    80001a14:	0984a783          	lw	a5,152(s1)
    80001a18:	0007071b          	sext.w	a4,a4
    80001a1c:	08e78463          	beq	a5,a4,80001aa4 <consoleread+0xf0>
    80001a20:	07f7f713          	andi	a4,a5,127
    80001a24:	00e48733          	add	a4,s1,a4
    80001a28:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80001a2c:	0017869b          	addiw	a3,a5,1
    80001a30:	08d4ac23          	sw	a3,152(s1)
    80001a34:	00070c9b          	sext.w	s9,a4
    80001a38:	0b370663          	beq	a4,s3,80001ae4 <consoleread+0x130>
    80001a3c:	00100693          	li	a3,1
    80001a40:	f9f40613          	addi	a2,s0,-97
    80001a44:	000c0593          	mv	a1,s8
    80001a48:	00090513          	mv	a0,s2
    80001a4c:	f8e40fa3          	sb	a4,-97(s0)
    80001a50:	00000097          	auipc	ra,0x0
    80001a54:	8b8080e7          	jalr	-1864(ra) # 80001308 <either_copyout>
    80001a58:	01450863          	beq	a0,s4,80001a68 <consoleread+0xb4>
    80001a5c:	001c0c13          	addi	s8,s8,1
    80001a60:	fffb8b9b          	addiw	s7,s7,-1
    80001a64:	fb5c94e3          	bne	s9,s5,80001a0c <consoleread+0x58>
    80001a68:	000b851b          	sext.w	a0,s7
    80001a6c:	06813083          	ld	ra,104(sp)
    80001a70:	06013403          	ld	s0,96(sp)
    80001a74:	05813483          	ld	s1,88(sp)
    80001a78:	05013903          	ld	s2,80(sp)
    80001a7c:	04813983          	ld	s3,72(sp)
    80001a80:	04013a03          	ld	s4,64(sp)
    80001a84:	03813a83          	ld	s5,56(sp)
    80001a88:	02813b83          	ld	s7,40(sp)
    80001a8c:	02013c03          	ld	s8,32(sp)
    80001a90:	01813c83          	ld	s9,24(sp)
    80001a94:	40ab053b          	subw	a0,s6,a0
    80001a98:	03013b03          	ld	s6,48(sp)
    80001a9c:	07010113          	addi	sp,sp,112
    80001aa0:	00008067          	ret
    80001aa4:	00001097          	auipc	ra,0x1
    80001aa8:	1d8080e7          	jalr	472(ra) # 80002c7c <push_on>
    80001aac:	0984a703          	lw	a4,152(s1)
    80001ab0:	09c4a783          	lw	a5,156(s1)
    80001ab4:	0007879b          	sext.w	a5,a5
    80001ab8:	fef70ce3          	beq	a4,a5,80001ab0 <consoleread+0xfc>
    80001abc:	00001097          	auipc	ra,0x1
    80001ac0:	234080e7          	jalr	564(ra) # 80002cf0 <pop_on>
    80001ac4:	0984a783          	lw	a5,152(s1)
    80001ac8:	07f7f713          	andi	a4,a5,127
    80001acc:	00e48733          	add	a4,s1,a4
    80001ad0:	01874703          	lbu	a4,24(a4)
    80001ad4:	0017869b          	addiw	a3,a5,1
    80001ad8:	08d4ac23          	sw	a3,152(s1)
    80001adc:	00070c9b          	sext.w	s9,a4
    80001ae0:	f5371ee3          	bne	a4,s3,80001a3c <consoleread+0x88>
    80001ae4:	000b851b          	sext.w	a0,s7
    80001ae8:	f96bf2e3          	bgeu	s7,s6,80001a6c <consoleread+0xb8>
    80001aec:	08f4ac23          	sw	a5,152(s1)
    80001af0:	f7dff06f          	j	80001a6c <consoleread+0xb8>

0000000080001af4 <consputc>:
    80001af4:	10000793          	li	a5,256
    80001af8:	00f50663          	beq	a0,a5,80001b04 <consputc+0x10>
    80001afc:	00001317          	auipc	t1,0x1
    80001b00:	9f430067          	jr	-1548(t1) # 800024f0 <uartputc_sync>
    80001b04:	ff010113          	addi	sp,sp,-16
    80001b08:	00113423          	sd	ra,8(sp)
    80001b0c:	00813023          	sd	s0,0(sp)
    80001b10:	01010413          	addi	s0,sp,16
    80001b14:	00800513          	li	a0,8
    80001b18:	00001097          	auipc	ra,0x1
    80001b1c:	9d8080e7          	jalr	-1576(ra) # 800024f0 <uartputc_sync>
    80001b20:	02000513          	li	a0,32
    80001b24:	00001097          	auipc	ra,0x1
    80001b28:	9cc080e7          	jalr	-1588(ra) # 800024f0 <uartputc_sync>
    80001b2c:	00013403          	ld	s0,0(sp)
    80001b30:	00813083          	ld	ra,8(sp)
    80001b34:	00800513          	li	a0,8
    80001b38:	01010113          	addi	sp,sp,16
    80001b3c:	00001317          	auipc	t1,0x1
    80001b40:	9b430067          	jr	-1612(t1) # 800024f0 <uartputc_sync>

0000000080001b44 <consoleintr>:
    80001b44:	fe010113          	addi	sp,sp,-32
    80001b48:	00813823          	sd	s0,16(sp)
    80001b4c:	00913423          	sd	s1,8(sp)
    80001b50:	01213023          	sd	s2,0(sp)
    80001b54:	00113c23          	sd	ra,24(sp)
    80001b58:	02010413          	addi	s0,sp,32
    80001b5c:	00003917          	auipc	s2,0x3
    80001b60:	7fc90913          	addi	s2,s2,2044 # 80005358 <cons>
    80001b64:	00050493          	mv	s1,a0
    80001b68:	00090513          	mv	a0,s2
    80001b6c:	00001097          	auipc	ra,0x1
    80001b70:	e40080e7          	jalr	-448(ra) # 800029ac <acquire>
    80001b74:	02048c63          	beqz	s1,80001bac <consoleintr+0x68>
    80001b78:	0a092783          	lw	a5,160(s2)
    80001b7c:	09892703          	lw	a4,152(s2)
    80001b80:	07f00693          	li	a3,127
    80001b84:	40e7873b          	subw	a4,a5,a4
    80001b88:	02e6e263          	bltu	a3,a4,80001bac <consoleintr+0x68>
    80001b8c:	00d00713          	li	a4,13
    80001b90:	04e48063          	beq	s1,a4,80001bd0 <consoleintr+0x8c>
    80001b94:	07f7f713          	andi	a4,a5,127
    80001b98:	00e90733          	add	a4,s2,a4
    80001b9c:	0017879b          	addiw	a5,a5,1
    80001ba0:	0af92023          	sw	a5,160(s2)
    80001ba4:	00970c23          	sb	s1,24(a4)
    80001ba8:	08f92e23          	sw	a5,156(s2)
    80001bac:	01013403          	ld	s0,16(sp)
    80001bb0:	01813083          	ld	ra,24(sp)
    80001bb4:	00813483          	ld	s1,8(sp)
    80001bb8:	00013903          	ld	s2,0(sp)
    80001bbc:	00003517          	auipc	a0,0x3
    80001bc0:	79c50513          	addi	a0,a0,1948 # 80005358 <cons>
    80001bc4:	02010113          	addi	sp,sp,32
    80001bc8:	00001317          	auipc	t1,0x1
    80001bcc:	eb030067          	jr	-336(t1) # 80002a78 <release>
    80001bd0:	00a00493          	li	s1,10
    80001bd4:	fc1ff06f          	j	80001b94 <consoleintr+0x50>

0000000080001bd8 <consoleinit>:
    80001bd8:	fe010113          	addi	sp,sp,-32
    80001bdc:	00113c23          	sd	ra,24(sp)
    80001be0:	00813823          	sd	s0,16(sp)
    80001be4:	00913423          	sd	s1,8(sp)
    80001be8:	02010413          	addi	s0,sp,32
    80001bec:	00003497          	auipc	s1,0x3
    80001bf0:	76c48493          	addi	s1,s1,1900 # 80005358 <cons>
    80001bf4:	00048513          	mv	a0,s1
    80001bf8:	00002597          	auipc	a1,0x2
    80001bfc:	53058593          	addi	a1,a1,1328 # 80004128 <console_handler+0xfb8>
    80001c00:	00001097          	auipc	ra,0x1
    80001c04:	d88080e7          	jalr	-632(ra) # 80002988 <initlock>
    80001c08:	00000097          	auipc	ra,0x0
    80001c0c:	7ac080e7          	jalr	1964(ra) # 800023b4 <uartinit>
    80001c10:	01813083          	ld	ra,24(sp)
    80001c14:	01013403          	ld	s0,16(sp)
    80001c18:	00000797          	auipc	a5,0x0
    80001c1c:	d9c78793          	addi	a5,a5,-612 # 800019b4 <consoleread>
    80001c20:	0af4bc23          	sd	a5,184(s1)
    80001c24:	00000797          	auipc	a5,0x0
    80001c28:	cec78793          	addi	a5,a5,-788 # 80001910 <consolewrite>
    80001c2c:	0cf4b023          	sd	a5,192(s1)
    80001c30:	00813483          	ld	s1,8(sp)
    80001c34:	02010113          	addi	sp,sp,32
    80001c38:	00008067          	ret

0000000080001c3c <console_read>:
    80001c3c:	ff010113          	addi	sp,sp,-16
    80001c40:	00813423          	sd	s0,8(sp)
    80001c44:	01010413          	addi	s0,sp,16
    80001c48:	00813403          	ld	s0,8(sp)
    80001c4c:	00003317          	auipc	t1,0x3
    80001c50:	7c433303          	ld	t1,1988(t1) # 80005410 <devsw+0x10>
    80001c54:	01010113          	addi	sp,sp,16
    80001c58:	00030067          	jr	t1

0000000080001c5c <console_write>:
    80001c5c:	ff010113          	addi	sp,sp,-16
    80001c60:	00813423          	sd	s0,8(sp)
    80001c64:	01010413          	addi	s0,sp,16
    80001c68:	00813403          	ld	s0,8(sp)
    80001c6c:	00003317          	auipc	t1,0x3
    80001c70:	7ac33303          	ld	t1,1964(t1) # 80005418 <devsw+0x18>
    80001c74:	01010113          	addi	sp,sp,16
    80001c78:	00030067          	jr	t1

0000000080001c7c <panic>:
    80001c7c:	fe010113          	addi	sp,sp,-32
    80001c80:	00113c23          	sd	ra,24(sp)
    80001c84:	00813823          	sd	s0,16(sp)
    80001c88:	00913423          	sd	s1,8(sp)
    80001c8c:	02010413          	addi	s0,sp,32
    80001c90:	00050493          	mv	s1,a0
    80001c94:	00002517          	auipc	a0,0x2
    80001c98:	49c50513          	addi	a0,a0,1180 # 80004130 <console_handler+0xfc0>
    80001c9c:	00004797          	auipc	a5,0x4
    80001ca0:	8007ae23          	sw	zero,-2020(a5) # 800054b8 <pr+0x18>
    80001ca4:	00000097          	auipc	ra,0x0
    80001ca8:	034080e7          	jalr	52(ra) # 80001cd8 <__printf>
    80001cac:	00048513          	mv	a0,s1
    80001cb0:	00000097          	auipc	ra,0x0
    80001cb4:	028080e7          	jalr	40(ra) # 80001cd8 <__printf>
    80001cb8:	00002517          	auipc	a0,0x2
    80001cbc:	45850513          	addi	a0,a0,1112 # 80004110 <console_handler+0xfa0>
    80001cc0:	00000097          	auipc	ra,0x0
    80001cc4:	018080e7          	jalr	24(ra) # 80001cd8 <__printf>
    80001cc8:	00100793          	li	a5,1
    80001ccc:	00002717          	auipc	a4,0x2
    80001cd0:	58f72e23          	sw	a5,1436(a4) # 80004268 <panicked>
    80001cd4:	0000006f          	j	80001cd4 <panic+0x58>

0000000080001cd8 <__printf>:
    80001cd8:	f3010113          	addi	sp,sp,-208
    80001cdc:	08813023          	sd	s0,128(sp)
    80001ce0:	07313423          	sd	s3,104(sp)
    80001ce4:	09010413          	addi	s0,sp,144
    80001ce8:	05813023          	sd	s8,64(sp)
    80001cec:	08113423          	sd	ra,136(sp)
    80001cf0:	06913c23          	sd	s1,120(sp)
    80001cf4:	07213823          	sd	s2,112(sp)
    80001cf8:	07413023          	sd	s4,96(sp)
    80001cfc:	05513c23          	sd	s5,88(sp)
    80001d00:	05613823          	sd	s6,80(sp)
    80001d04:	05713423          	sd	s7,72(sp)
    80001d08:	03913c23          	sd	s9,56(sp)
    80001d0c:	03a13823          	sd	s10,48(sp)
    80001d10:	03b13423          	sd	s11,40(sp)
    80001d14:	00003317          	auipc	t1,0x3
    80001d18:	78c30313          	addi	t1,t1,1932 # 800054a0 <pr>
    80001d1c:	01832c03          	lw	s8,24(t1)
    80001d20:	00b43423          	sd	a1,8(s0)
    80001d24:	00c43823          	sd	a2,16(s0)
    80001d28:	00d43c23          	sd	a3,24(s0)
    80001d2c:	02e43023          	sd	a4,32(s0)
    80001d30:	02f43423          	sd	a5,40(s0)
    80001d34:	03043823          	sd	a6,48(s0)
    80001d38:	03143c23          	sd	a7,56(s0)
    80001d3c:	00050993          	mv	s3,a0
    80001d40:	4a0c1663          	bnez	s8,800021ec <__printf+0x514>
    80001d44:	60098c63          	beqz	s3,8000235c <__printf+0x684>
    80001d48:	0009c503          	lbu	a0,0(s3)
    80001d4c:	00840793          	addi	a5,s0,8
    80001d50:	f6f43c23          	sd	a5,-136(s0)
    80001d54:	00000493          	li	s1,0
    80001d58:	22050063          	beqz	a0,80001f78 <__printf+0x2a0>
    80001d5c:	00002a37          	lui	s4,0x2
    80001d60:	00018ab7          	lui	s5,0x18
    80001d64:	000f4b37          	lui	s6,0xf4
    80001d68:	00989bb7          	lui	s7,0x989
    80001d6c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80001d70:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80001d74:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80001d78:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80001d7c:	00148c9b          	addiw	s9,s1,1
    80001d80:	02500793          	li	a5,37
    80001d84:	01998933          	add	s2,s3,s9
    80001d88:	38f51263          	bne	a0,a5,8000210c <__printf+0x434>
    80001d8c:	00094783          	lbu	a5,0(s2)
    80001d90:	00078c9b          	sext.w	s9,a5
    80001d94:	1e078263          	beqz	a5,80001f78 <__printf+0x2a0>
    80001d98:	0024849b          	addiw	s1,s1,2
    80001d9c:	07000713          	li	a4,112
    80001da0:	00998933          	add	s2,s3,s1
    80001da4:	38e78a63          	beq	a5,a4,80002138 <__printf+0x460>
    80001da8:	20f76863          	bltu	a4,a5,80001fb8 <__printf+0x2e0>
    80001dac:	42a78863          	beq	a5,a0,800021dc <__printf+0x504>
    80001db0:	06400713          	li	a4,100
    80001db4:	40e79663          	bne	a5,a4,800021c0 <__printf+0x4e8>
    80001db8:	f7843783          	ld	a5,-136(s0)
    80001dbc:	0007a603          	lw	a2,0(a5)
    80001dc0:	00878793          	addi	a5,a5,8
    80001dc4:	f6f43c23          	sd	a5,-136(s0)
    80001dc8:	42064a63          	bltz	a2,800021fc <__printf+0x524>
    80001dcc:	00a00713          	li	a4,10
    80001dd0:	02e677bb          	remuw	a5,a2,a4
    80001dd4:	00002d97          	auipc	s11,0x2
    80001dd8:	384d8d93          	addi	s11,s11,900 # 80004158 <digits>
    80001ddc:	00900593          	li	a1,9
    80001de0:	0006051b          	sext.w	a0,a2
    80001de4:	00000c93          	li	s9,0
    80001de8:	02079793          	slli	a5,a5,0x20
    80001dec:	0207d793          	srli	a5,a5,0x20
    80001df0:	00fd87b3          	add	a5,s11,a5
    80001df4:	0007c783          	lbu	a5,0(a5)
    80001df8:	02e656bb          	divuw	a3,a2,a4
    80001dfc:	f8f40023          	sb	a5,-128(s0)
    80001e00:	14c5d863          	bge	a1,a2,80001f50 <__printf+0x278>
    80001e04:	06300593          	li	a1,99
    80001e08:	00100c93          	li	s9,1
    80001e0c:	02e6f7bb          	remuw	a5,a3,a4
    80001e10:	02079793          	slli	a5,a5,0x20
    80001e14:	0207d793          	srli	a5,a5,0x20
    80001e18:	00fd87b3          	add	a5,s11,a5
    80001e1c:	0007c783          	lbu	a5,0(a5)
    80001e20:	02e6d73b          	divuw	a4,a3,a4
    80001e24:	f8f400a3          	sb	a5,-127(s0)
    80001e28:	12a5f463          	bgeu	a1,a0,80001f50 <__printf+0x278>
    80001e2c:	00a00693          	li	a3,10
    80001e30:	00900593          	li	a1,9
    80001e34:	02d777bb          	remuw	a5,a4,a3
    80001e38:	02079793          	slli	a5,a5,0x20
    80001e3c:	0207d793          	srli	a5,a5,0x20
    80001e40:	00fd87b3          	add	a5,s11,a5
    80001e44:	0007c503          	lbu	a0,0(a5)
    80001e48:	02d757bb          	divuw	a5,a4,a3
    80001e4c:	f8a40123          	sb	a0,-126(s0)
    80001e50:	48e5f263          	bgeu	a1,a4,800022d4 <__printf+0x5fc>
    80001e54:	06300513          	li	a0,99
    80001e58:	02d7f5bb          	remuw	a1,a5,a3
    80001e5c:	02059593          	slli	a1,a1,0x20
    80001e60:	0205d593          	srli	a1,a1,0x20
    80001e64:	00bd85b3          	add	a1,s11,a1
    80001e68:	0005c583          	lbu	a1,0(a1)
    80001e6c:	02d7d7bb          	divuw	a5,a5,a3
    80001e70:	f8b401a3          	sb	a1,-125(s0)
    80001e74:	48e57263          	bgeu	a0,a4,800022f8 <__printf+0x620>
    80001e78:	3e700513          	li	a0,999
    80001e7c:	02d7f5bb          	remuw	a1,a5,a3
    80001e80:	02059593          	slli	a1,a1,0x20
    80001e84:	0205d593          	srli	a1,a1,0x20
    80001e88:	00bd85b3          	add	a1,s11,a1
    80001e8c:	0005c583          	lbu	a1,0(a1)
    80001e90:	02d7d7bb          	divuw	a5,a5,a3
    80001e94:	f8b40223          	sb	a1,-124(s0)
    80001e98:	46e57663          	bgeu	a0,a4,80002304 <__printf+0x62c>
    80001e9c:	02d7f5bb          	remuw	a1,a5,a3
    80001ea0:	02059593          	slli	a1,a1,0x20
    80001ea4:	0205d593          	srli	a1,a1,0x20
    80001ea8:	00bd85b3          	add	a1,s11,a1
    80001eac:	0005c583          	lbu	a1,0(a1)
    80001eb0:	02d7d7bb          	divuw	a5,a5,a3
    80001eb4:	f8b402a3          	sb	a1,-123(s0)
    80001eb8:	46ea7863          	bgeu	s4,a4,80002328 <__printf+0x650>
    80001ebc:	02d7f5bb          	remuw	a1,a5,a3
    80001ec0:	02059593          	slli	a1,a1,0x20
    80001ec4:	0205d593          	srli	a1,a1,0x20
    80001ec8:	00bd85b3          	add	a1,s11,a1
    80001ecc:	0005c583          	lbu	a1,0(a1)
    80001ed0:	02d7d7bb          	divuw	a5,a5,a3
    80001ed4:	f8b40323          	sb	a1,-122(s0)
    80001ed8:	3eeaf863          	bgeu	s5,a4,800022c8 <__printf+0x5f0>
    80001edc:	02d7f5bb          	remuw	a1,a5,a3
    80001ee0:	02059593          	slli	a1,a1,0x20
    80001ee4:	0205d593          	srli	a1,a1,0x20
    80001ee8:	00bd85b3          	add	a1,s11,a1
    80001eec:	0005c583          	lbu	a1,0(a1)
    80001ef0:	02d7d7bb          	divuw	a5,a5,a3
    80001ef4:	f8b403a3          	sb	a1,-121(s0)
    80001ef8:	42eb7e63          	bgeu	s6,a4,80002334 <__printf+0x65c>
    80001efc:	02d7f5bb          	remuw	a1,a5,a3
    80001f00:	02059593          	slli	a1,a1,0x20
    80001f04:	0205d593          	srli	a1,a1,0x20
    80001f08:	00bd85b3          	add	a1,s11,a1
    80001f0c:	0005c583          	lbu	a1,0(a1)
    80001f10:	02d7d7bb          	divuw	a5,a5,a3
    80001f14:	f8b40423          	sb	a1,-120(s0)
    80001f18:	42ebfc63          	bgeu	s7,a4,80002350 <__printf+0x678>
    80001f1c:	02079793          	slli	a5,a5,0x20
    80001f20:	0207d793          	srli	a5,a5,0x20
    80001f24:	00fd8db3          	add	s11,s11,a5
    80001f28:	000dc703          	lbu	a4,0(s11)
    80001f2c:	00a00793          	li	a5,10
    80001f30:	00900c93          	li	s9,9
    80001f34:	f8e404a3          	sb	a4,-119(s0)
    80001f38:	00065c63          	bgez	a2,80001f50 <__printf+0x278>
    80001f3c:	f9040713          	addi	a4,s0,-112
    80001f40:	00f70733          	add	a4,a4,a5
    80001f44:	02d00693          	li	a3,45
    80001f48:	fed70823          	sb	a3,-16(a4)
    80001f4c:	00078c93          	mv	s9,a5
    80001f50:	f8040793          	addi	a5,s0,-128
    80001f54:	01978cb3          	add	s9,a5,s9
    80001f58:	f7f40d13          	addi	s10,s0,-129
    80001f5c:	000cc503          	lbu	a0,0(s9)
    80001f60:	fffc8c93          	addi	s9,s9,-1
    80001f64:	00000097          	auipc	ra,0x0
    80001f68:	b90080e7          	jalr	-1136(ra) # 80001af4 <consputc>
    80001f6c:	ffac98e3          	bne	s9,s10,80001f5c <__printf+0x284>
    80001f70:	00094503          	lbu	a0,0(s2)
    80001f74:	e00514e3          	bnez	a0,80001d7c <__printf+0xa4>
    80001f78:	1a0c1663          	bnez	s8,80002124 <__printf+0x44c>
    80001f7c:	08813083          	ld	ra,136(sp)
    80001f80:	08013403          	ld	s0,128(sp)
    80001f84:	07813483          	ld	s1,120(sp)
    80001f88:	07013903          	ld	s2,112(sp)
    80001f8c:	06813983          	ld	s3,104(sp)
    80001f90:	06013a03          	ld	s4,96(sp)
    80001f94:	05813a83          	ld	s5,88(sp)
    80001f98:	05013b03          	ld	s6,80(sp)
    80001f9c:	04813b83          	ld	s7,72(sp)
    80001fa0:	04013c03          	ld	s8,64(sp)
    80001fa4:	03813c83          	ld	s9,56(sp)
    80001fa8:	03013d03          	ld	s10,48(sp)
    80001fac:	02813d83          	ld	s11,40(sp)
    80001fb0:	0d010113          	addi	sp,sp,208
    80001fb4:	00008067          	ret
    80001fb8:	07300713          	li	a4,115
    80001fbc:	1ce78a63          	beq	a5,a4,80002190 <__printf+0x4b8>
    80001fc0:	07800713          	li	a4,120
    80001fc4:	1ee79e63          	bne	a5,a4,800021c0 <__printf+0x4e8>
    80001fc8:	f7843783          	ld	a5,-136(s0)
    80001fcc:	0007a703          	lw	a4,0(a5)
    80001fd0:	00878793          	addi	a5,a5,8
    80001fd4:	f6f43c23          	sd	a5,-136(s0)
    80001fd8:	28074263          	bltz	a4,8000225c <__printf+0x584>
    80001fdc:	00002d97          	auipc	s11,0x2
    80001fe0:	17cd8d93          	addi	s11,s11,380 # 80004158 <digits>
    80001fe4:	00f77793          	andi	a5,a4,15
    80001fe8:	00fd87b3          	add	a5,s11,a5
    80001fec:	0007c683          	lbu	a3,0(a5)
    80001ff0:	00f00613          	li	a2,15
    80001ff4:	0007079b          	sext.w	a5,a4
    80001ff8:	f8d40023          	sb	a3,-128(s0)
    80001ffc:	0047559b          	srliw	a1,a4,0x4
    80002000:	0047569b          	srliw	a3,a4,0x4
    80002004:	00000c93          	li	s9,0
    80002008:	0ee65063          	bge	a2,a4,800020e8 <__printf+0x410>
    8000200c:	00f6f693          	andi	a3,a3,15
    80002010:	00dd86b3          	add	a3,s11,a3
    80002014:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80002018:	0087d79b          	srliw	a5,a5,0x8
    8000201c:	00100c93          	li	s9,1
    80002020:	f8d400a3          	sb	a3,-127(s0)
    80002024:	0cb67263          	bgeu	a2,a1,800020e8 <__printf+0x410>
    80002028:	00f7f693          	andi	a3,a5,15
    8000202c:	00dd86b3          	add	a3,s11,a3
    80002030:	0006c583          	lbu	a1,0(a3)
    80002034:	00f00613          	li	a2,15
    80002038:	0047d69b          	srliw	a3,a5,0x4
    8000203c:	f8b40123          	sb	a1,-126(s0)
    80002040:	0047d593          	srli	a1,a5,0x4
    80002044:	28f67e63          	bgeu	a2,a5,800022e0 <__printf+0x608>
    80002048:	00f6f693          	andi	a3,a3,15
    8000204c:	00dd86b3          	add	a3,s11,a3
    80002050:	0006c503          	lbu	a0,0(a3)
    80002054:	0087d813          	srli	a6,a5,0x8
    80002058:	0087d69b          	srliw	a3,a5,0x8
    8000205c:	f8a401a3          	sb	a0,-125(s0)
    80002060:	28b67663          	bgeu	a2,a1,800022ec <__printf+0x614>
    80002064:	00f6f693          	andi	a3,a3,15
    80002068:	00dd86b3          	add	a3,s11,a3
    8000206c:	0006c583          	lbu	a1,0(a3)
    80002070:	00c7d513          	srli	a0,a5,0xc
    80002074:	00c7d69b          	srliw	a3,a5,0xc
    80002078:	f8b40223          	sb	a1,-124(s0)
    8000207c:	29067a63          	bgeu	a2,a6,80002310 <__printf+0x638>
    80002080:	00f6f693          	andi	a3,a3,15
    80002084:	00dd86b3          	add	a3,s11,a3
    80002088:	0006c583          	lbu	a1,0(a3)
    8000208c:	0107d813          	srli	a6,a5,0x10
    80002090:	0107d69b          	srliw	a3,a5,0x10
    80002094:	f8b402a3          	sb	a1,-123(s0)
    80002098:	28a67263          	bgeu	a2,a0,8000231c <__printf+0x644>
    8000209c:	00f6f693          	andi	a3,a3,15
    800020a0:	00dd86b3          	add	a3,s11,a3
    800020a4:	0006c683          	lbu	a3,0(a3)
    800020a8:	0147d79b          	srliw	a5,a5,0x14
    800020ac:	f8d40323          	sb	a3,-122(s0)
    800020b0:	21067663          	bgeu	a2,a6,800022bc <__printf+0x5e4>
    800020b4:	02079793          	slli	a5,a5,0x20
    800020b8:	0207d793          	srli	a5,a5,0x20
    800020bc:	00fd8db3          	add	s11,s11,a5
    800020c0:	000dc683          	lbu	a3,0(s11)
    800020c4:	00800793          	li	a5,8
    800020c8:	00700c93          	li	s9,7
    800020cc:	f8d403a3          	sb	a3,-121(s0)
    800020d0:	00075c63          	bgez	a4,800020e8 <__printf+0x410>
    800020d4:	f9040713          	addi	a4,s0,-112
    800020d8:	00f70733          	add	a4,a4,a5
    800020dc:	02d00693          	li	a3,45
    800020e0:	fed70823          	sb	a3,-16(a4)
    800020e4:	00078c93          	mv	s9,a5
    800020e8:	f8040793          	addi	a5,s0,-128
    800020ec:	01978cb3          	add	s9,a5,s9
    800020f0:	f7f40d13          	addi	s10,s0,-129
    800020f4:	000cc503          	lbu	a0,0(s9)
    800020f8:	fffc8c93          	addi	s9,s9,-1
    800020fc:	00000097          	auipc	ra,0x0
    80002100:	9f8080e7          	jalr	-1544(ra) # 80001af4 <consputc>
    80002104:	ff9d18e3          	bne	s10,s9,800020f4 <__printf+0x41c>
    80002108:	0100006f          	j	80002118 <__printf+0x440>
    8000210c:	00000097          	auipc	ra,0x0
    80002110:	9e8080e7          	jalr	-1560(ra) # 80001af4 <consputc>
    80002114:	000c8493          	mv	s1,s9
    80002118:	00094503          	lbu	a0,0(s2)
    8000211c:	c60510e3          	bnez	a0,80001d7c <__printf+0xa4>
    80002120:	e40c0ee3          	beqz	s8,80001f7c <__printf+0x2a4>
    80002124:	00003517          	auipc	a0,0x3
    80002128:	37c50513          	addi	a0,a0,892 # 800054a0 <pr>
    8000212c:	00001097          	auipc	ra,0x1
    80002130:	94c080e7          	jalr	-1716(ra) # 80002a78 <release>
    80002134:	e49ff06f          	j	80001f7c <__printf+0x2a4>
    80002138:	f7843783          	ld	a5,-136(s0)
    8000213c:	03000513          	li	a0,48
    80002140:	01000d13          	li	s10,16
    80002144:	00878713          	addi	a4,a5,8
    80002148:	0007bc83          	ld	s9,0(a5)
    8000214c:	f6e43c23          	sd	a4,-136(s0)
    80002150:	00000097          	auipc	ra,0x0
    80002154:	9a4080e7          	jalr	-1628(ra) # 80001af4 <consputc>
    80002158:	07800513          	li	a0,120
    8000215c:	00000097          	auipc	ra,0x0
    80002160:	998080e7          	jalr	-1640(ra) # 80001af4 <consputc>
    80002164:	00002d97          	auipc	s11,0x2
    80002168:	ff4d8d93          	addi	s11,s11,-12 # 80004158 <digits>
    8000216c:	03ccd793          	srli	a5,s9,0x3c
    80002170:	00fd87b3          	add	a5,s11,a5
    80002174:	0007c503          	lbu	a0,0(a5)
    80002178:	fffd0d1b          	addiw	s10,s10,-1
    8000217c:	004c9c93          	slli	s9,s9,0x4
    80002180:	00000097          	auipc	ra,0x0
    80002184:	974080e7          	jalr	-1676(ra) # 80001af4 <consputc>
    80002188:	fe0d12e3          	bnez	s10,8000216c <__printf+0x494>
    8000218c:	f8dff06f          	j	80002118 <__printf+0x440>
    80002190:	f7843783          	ld	a5,-136(s0)
    80002194:	0007bc83          	ld	s9,0(a5)
    80002198:	00878793          	addi	a5,a5,8
    8000219c:	f6f43c23          	sd	a5,-136(s0)
    800021a0:	000c9a63          	bnez	s9,800021b4 <__printf+0x4dc>
    800021a4:	1080006f          	j	800022ac <__printf+0x5d4>
    800021a8:	001c8c93          	addi	s9,s9,1
    800021ac:	00000097          	auipc	ra,0x0
    800021b0:	948080e7          	jalr	-1720(ra) # 80001af4 <consputc>
    800021b4:	000cc503          	lbu	a0,0(s9)
    800021b8:	fe0518e3          	bnez	a0,800021a8 <__printf+0x4d0>
    800021bc:	f5dff06f          	j	80002118 <__printf+0x440>
    800021c0:	02500513          	li	a0,37
    800021c4:	00000097          	auipc	ra,0x0
    800021c8:	930080e7          	jalr	-1744(ra) # 80001af4 <consputc>
    800021cc:	000c8513          	mv	a0,s9
    800021d0:	00000097          	auipc	ra,0x0
    800021d4:	924080e7          	jalr	-1756(ra) # 80001af4 <consputc>
    800021d8:	f41ff06f          	j	80002118 <__printf+0x440>
    800021dc:	02500513          	li	a0,37
    800021e0:	00000097          	auipc	ra,0x0
    800021e4:	914080e7          	jalr	-1772(ra) # 80001af4 <consputc>
    800021e8:	f31ff06f          	j	80002118 <__printf+0x440>
    800021ec:	00030513          	mv	a0,t1
    800021f0:	00000097          	auipc	ra,0x0
    800021f4:	7bc080e7          	jalr	1980(ra) # 800029ac <acquire>
    800021f8:	b4dff06f          	j	80001d44 <__printf+0x6c>
    800021fc:	40c0053b          	negw	a0,a2
    80002200:	00a00713          	li	a4,10
    80002204:	02e576bb          	remuw	a3,a0,a4
    80002208:	00002d97          	auipc	s11,0x2
    8000220c:	f50d8d93          	addi	s11,s11,-176 # 80004158 <digits>
    80002210:	ff700593          	li	a1,-9
    80002214:	02069693          	slli	a3,a3,0x20
    80002218:	0206d693          	srli	a3,a3,0x20
    8000221c:	00dd86b3          	add	a3,s11,a3
    80002220:	0006c683          	lbu	a3,0(a3)
    80002224:	02e557bb          	divuw	a5,a0,a4
    80002228:	f8d40023          	sb	a3,-128(s0)
    8000222c:	10b65e63          	bge	a2,a1,80002348 <__printf+0x670>
    80002230:	06300593          	li	a1,99
    80002234:	02e7f6bb          	remuw	a3,a5,a4
    80002238:	02069693          	slli	a3,a3,0x20
    8000223c:	0206d693          	srli	a3,a3,0x20
    80002240:	00dd86b3          	add	a3,s11,a3
    80002244:	0006c683          	lbu	a3,0(a3)
    80002248:	02e7d73b          	divuw	a4,a5,a4
    8000224c:	00200793          	li	a5,2
    80002250:	f8d400a3          	sb	a3,-127(s0)
    80002254:	bca5ece3          	bltu	a1,a0,80001e2c <__printf+0x154>
    80002258:	ce5ff06f          	j	80001f3c <__printf+0x264>
    8000225c:	40e007bb          	negw	a5,a4
    80002260:	00002d97          	auipc	s11,0x2
    80002264:	ef8d8d93          	addi	s11,s11,-264 # 80004158 <digits>
    80002268:	00f7f693          	andi	a3,a5,15
    8000226c:	00dd86b3          	add	a3,s11,a3
    80002270:	0006c583          	lbu	a1,0(a3)
    80002274:	ff100613          	li	a2,-15
    80002278:	0047d69b          	srliw	a3,a5,0x4
    8000227c:	f8b40023          	sb	a1,-128(s0)
    80002280:	0047d59b          	srliw	a1,a5,0x4
    80002284:	0ac75e63          	bge	a4,a2,80002340 <__printf+0x668>
    80002288:	00f6f693          	andi	a3,a3,15
    8000228c:	00dd86b3          	add	a3,s11,a3
    80002290:	0006c603          	lbu	a2,0(a3)
    80002294:	00f00693          	li	a3,15
    80002298:	0087d79b          	srliw	a5,a5,0x8
    8000229c:	f8c400a3          	sb	a2,-127(s0)
    800022a0:	d8b6e4e3          	bltu	a3,a1,80002028 <__printf+0x350>
    800022a4:	00200793          	li	a5,2
    800022a8:	e2dff06f          	j	800020d4 <__printf+0x3fc>
    800022ac:	00002c97          	auipc	s9,0x2
    800022b0:	e8cc8c93          	addi	s9,s9,-372 # 80004138 <console_handler+0xfc8>
    800022b4:	02800513          	li	a0,40
    800022b8:	ef1ff06f          	j	800021a8 <__printf+0x4d0>
    800022bc:	00700793          	li	a5,7
    800022c0:	00600c93          	li	s9,6
    800022c4:	e0dff06f          	j	800020d0 <__printf+0x3f8>
    800022c8:	00700793          	li	a5,7
    800022cc:	00600c93          	li	s9,6
    800022d0:	c69ff06f          	j	80001f38 <__printf+0x260>
    800022d4:	00300793          	li	a5,3
    800022d8:	00200c93          	li	s9,2
    800022dc:	c5dff06f          	j	80001f38 <__printf+0x260>
    800022e0:	00300793          	li	a5,3
    800022e4:	00200c93          	li	s9,2
    800022e8:	de9ff06f          	j	800020d0 <__printf+0x3f8>
    800022ec:	00400793          	li	a5,4
    800022f0:	00300c93          	li	s9,3
    800022f4:	dddff06f          	j	800020d0 <__printf+0x3f8>
    800022f8:	00400793          	li	a5,4
    800022fc:	00300c93          	li	s9,3
    80002300:	c39ff06f          	j	80001f38 <__printf+0x260>
    80002304:	00500793          	li	a5,5
    80002308:	00400c93          	li	s9,4
    8000230c:	c2dff06f          	j	80001f38 <__printf+0x260>
    80002310:	00500793          	li	a5,5
    80002314:	00400c93          	li	s9,4
    80002318:	db9ff06f          	j	800020d0 <__printf+0x3f8>
    8000231c:	00600793          	li	a5,6
    80002320:	00500c93          	li	s9,5
    80002324:	dadff06f          	j	800020d0 <__printf+0x3f8>
    80002328:	00600793          	li	a5,6
    8000232c:	00500c93          	li	s9,5
    80002330:	c09ff06f          	j	80001f38 <__printf+0x260>
    80002334:	00800793          	li	a5,8
    80002338:	00700c93          	li	s9,7
    8000233c:	bfdff06f          	j	80001f38 <__printf+0x260>
    80002340:	00100793          	li	a5,1
    80002344:	d91ff06f          	j	800020d4 <__printf+0x3fc>
    80002348:	00100793          	li	a5,1
    8000234c:	bf1ff06f          	j	80001f3c <__printf+0x264>
    80002350:	00900793          	li	a5,9
    80002354:	00800c93          	li	s9,8
    80002358:	be1ff06f          	j	80001f38 <__printf+0x260>
    8000235c:	00002517          	auipc	a0,0x2
    80002360:	de450513          	addi	a0,a0,-540 # 80004140 <console_handler+0xfd0>
    80002364:	00000097          	auipc	ra,0x0
    80002368:	918080e7          	jalr	-1768(ra) # 80001c7c <panic>

000000008000236c <printfinit>:
    8000236c:	fe010113          	addi	sp,sp,-32
    80002370:	00813823          	sd	s0,16(sp)
    80002374:	00913423          	sd	s1,8(sp)
    80002378:	00113c23          	sd	ra,24(sp)
    8000237c:	02010413          	addi	s0,sp,32
    80002380:	00003497          	auipc	s1,0x3
    80002384:	12048493          	addi	s1,s1,288 # 800054a0 <pr>
    80002388:	00048513          	mv	a0,s1
    8000238c:	00002597          	auipc	a1,0x2
    80002390:	dc458593          	addi	a1,a1,-572 # 80004150 <console_handler+0xfe0>
    80002394:	00000097          	auipc	ra,0x0
    80002398:	5f4080e7          	jalr	1524(ra) # 80002988 <initlock>
    8000239c:	01813083          	ld	ra,24(sp)
    800023a0:	01013403          	ld	s0,16(sp)
    800023a4:	0004ac23          	sw	zero,24(s1)
    800023a8:	00813483          	ld	s1,8(sp)
    800023ac:	02010113          	addi	sp,sp,32
    800023b0:	00008067          	ret

00000000800023b4 <uartinit>:
    800023b4:	ff010113          	addi	sp,sp,-16
    800023b8:	00813423          	sd	s0,8(sp)
    800023bc:	01010413          	addi	s0,sp,16
    800023c0:	100007b7          	lui	a5,0x10000
    800023c4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800023c8:	f8000713          	li	a4,-128
    800023cc:	00e781a3          	sb	a4,3(a5)
    800023d0:	00300713          	li	a4,3
    800023d4:	00e78023          	sb	a4,0(a5)
    800023d8:	000780a3          	sb	zero,1(a5)
    800023dc:	00e781a3          	sb	a4,3(a5)
    800023e0:	00700693          	li	a3,7
    800023e4:	00d78123          	sb	a3,2(a5)
    800023e8:	00e780a3          	sb	a4,1(a5)
    800023ec:	00813403          	ld	s0,8(sp)
    800023f0:	01010113          	addi	sp,sp,16
    800023f4:	00008067          	ret

00000000800023f8 <uartputc>:
    800023f8:	00002797          	auipc	a5,0x2
    800023fc:	e707a783          	lw	a5,-400(a5) # 80004268 <panicked>
    80002400:	00078463          	beqz	a5,80002408 <uartputc+0x10>
    80002404:	0000006f          	j	80002404 <uartputc+0xc>
    80002408:	fd010113          	addi	sp,sp,-48
    8000240c:	02813023          	sd	s0,32(sp)
    80002410:	00913c23          	sd	s1,24(sp)
    80002414:	01213823          	sd	s2,16(sp)
    80002418:	01313423          	sd	s3,8(sp)
    8000241c:	02113423          	sd	ra,40(sp)
    80002420:	03010413          	addi	s0,sp,48
    80002424:	00002917          	auipc	s2,0x2
    80002428:	e4c90913          	addi	s2,s2,-436 # 80004270 <uart_tx_r>
    8000242c:	00093783          	ld	a5,0(s2)
    80002430:	00002497          	auipc	s1,0x2
    80002434:	e4848493          	addi	s1,s1,-440 # 80004278 <uart_tx_w>
    80002438:	0004b703          	ld	a4,0(s1)
    8000243c:	02078693          	addi	a3,a5,32
    80002440:	00050993          	mv	s3,a0
    80002444:	02e69c63          	bne	a3,a4,8000247c <uartputc+0x84>
    80002448:	00001097          	auipc	ra,0x1
    8000244c:	834080e7          	jalr	-1996(ra) # 80002c7c <push_on>
    80002450:	00093783          	ld	a5,0(s2)
    80002454:	0004b703          	ld	a4,0(s1)
    80002458:	02078793          	addi	a5,a5,32
    8000245c:	00e79463          	bne	a5,a4,80002464 <uartputc+0x6c>
    80002460:	0000006f          	j	80002460 <uartputc+0x68>
    80002464:	00001097          	auipc	ra,0x1
    80002468:	88c080e7          	jalr	-1908(ra) # 80002cf0 <pop_on>
    8000246c:	00093783          	ld	a5,0(s2)
    80002470:	0004b703          	ld	a4,0(s1)
    80002474:	02078693          	addi	a3,a5,32
    80002478:	fce688e3          	beq	a3,a4,80002448 <uartputc+0x50>
    8000247c:	01f77693          	andi	a3,a4,31
    80002480:	00003597          	auipc	a1,0x3
    80002484:	04058593          	addi	a1,a1,64 # 800054c0 <uart_tx_buf>
    80002488:	00d586b3          	add	a3,a1,a3
    8000248c:	00170713          	addi	a4,a4,1
    80002490:	01368023          	sb	s3,0(a3)
    80002494:	00e4b023          	sd	a4,0(s1)
    80002498:	10000637          	lui	a2,0x10000
    8000249c:	02f71063          	bne	a4,a5,800024bc <uartputc+0xc4>
    800024a0:	0340006f          	j	800024d4 <uartputc+0xdc>
    800024a4:	00074703          	lbu	a4,0(a4)
    800024a8:	00f93023          	sd	a5,0(s2)
    800024ac:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800024b0:	00093783          	ld	a5,0(s2)
    800024b4:	0004b703          	ld	a4,0(s1)
    800024b8:	00f70e63          	beq	a4,a5,800024d4 <uartputc+0xdc>
    800024bc:	00564683          	lbu	a3,5(a2)
    800024c0:	01f7f713          	andi	a4,a5,31
    800024c4:	00e58733          	add	a4,a1,a4
    800024c8:	0206f693          	andi	a3,a3,32
    800024cc:	00178793          	addi	a5,a5,1
    800024d0:	fc069ae3          	bnez	a3,800024a4 <uartputc+0xac>
    800024d4:	02813083          	ld	ra,40(sp)
    800024d8:	02013403          	ld	s0,32(sp)
    800024dc:	01813483          	ld	s1,24(sp)
    800024e0:	01013903          	ld	s2,16(sp)
    800024e4:	00813983          	ld	s3,8(sp)
    800024e8:	03010113          	addi	sp,sp,48
    800024ec:	00008067          	ret

00000000800024f0 <uartputc_sync>:
    800024f0:	ff010113          	addi	sp,sp,-16
    800024f4:	00813423          	sd	s0,8(sp)
    800024f8:	01010413          	addi	s0,sp,16
    800024fc:	00002717          	auipc	a4,0x2
    80002500:	d6c72703          	lw	a4,-660(a4) # 80004268 <panicked>
    80002504:	02071663          	bnez	a4,80002530 <uartputc_sync+0x40>
    80002508:	00050793          	mv	a5,a0
    8000250c:	100006b7          	lui	a3,0x10000
    80002510:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80002514:	02077713          	andi	a4,a4,32
    80002518:	fe070ce3          	beqz	a4,80002510 <uartputc_sync+0x20>
    8000251c:	0ff7f793          	andi	a5,a5,255
    80002520:	00f68023          	sb	a5,0(a3)
    80002524:	00813403          	ld	s0,8(sp)
    80002528:	01010113          	addi	sp,sp,16
    8000252c:	00008067          	ret
    80002530:	0000006f          	j	80002530 <uartputc_sync+0x40>

0000000080002534 <uartstart>:
    80002534:	ff010113          	addi	sp,sp,-16
    80002538:	00813423          	sd	s0,8(sp)
    8000253c:	01010413          	addi	s0,sp,16
    80002540:	00002617          	auipc	a2,0x2
    80002544:	d3060613          	addi	a2,a2,-720 # 80004270 <uart_tx_r>
    80002548:	00002517          	auipc	a0,0x2
    8000254c:	d3050513          	addi	a0,a0,-720 # 80004278 <uart_tx_w>
    80002550:	00063783          	ld	a5,0(a2)
    80002554:	00053703          	ld	a4,0(a0)
    80002558:	04f70263          	beq	a4,a5,8000259c <uartstart+0x68>
    8000255c:	100005b7          	lui	a1,0x10000
    80002560:	00003817          	auipc	a6,0x3
    80002564:	f6080813          	addi	a6,a6,-160 # 800054c0 <uart_tx_buf>
    80002568:	01c0006f          	j	80002584 <uartstart+0x50>
    8000256c:	0006c703          	lbu	a4,0(a3)
    80002570:	00f63023          	sd	a5,0(a2)
    80002574:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80002578:	00063783          	ld	a5,0(a2)
    8000257c:	00053703          	ld	a4,0(a0)
    80002580:	00f70e63          	beq	a4,a5,8000259c <uartstart+0x68>
    80002584:	01f7f713          	andi	a4,a5,31
    80002588:	00e806b3          	add	a3,a6,a4
    8000258c:	0055c703          	lbu	a4,5(a1)
    80002590:	00178793          	addi	a5,a5,1
    80002594:	02077713          	andi	a4,a4,32
    80002598:	fc071ae3          	bnez	a4,8000256c <uartstart+0x38>
    8000259c:	00813403          	ld	s0,8(sp)
    800025a0:	01010113          	addi	sp,sp,16
    800025a4:	00008067          	ret

00000000800025a8 <uartgetc>:
    800025a8:	ff010113          	addi	sp,sp,-16
    800025ac:	00813423          	sd	s0,8(sp)
    800025b0:	01010413          	addi	s0,sp,16
    800025b4:	10000737          	lui	a4,0x10000
    800025b8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800025bc:	0017f793          	andi	a5,a5,1
    800025c0:	00078c63          	beqz	a5,800025d8 <uartgetc+0x30>
    800025c4:	00074503          	lbu	a0,0(a4)
    800025c8:	0ff57513          	andi	a0,a0,255
    800025cc:	00813403          	ld	s0,8(sp)
    800025d0:	01010113          	addi	sp,sp,16
    800025d4:	00008067          	ret
    800025d8:	fff00513          	li	a0,-1
    800025dc:	ff1ff06f          	j	800025cc <uartgetc+0x24>

00000000800025e0 <uartintr>:
    800025e0:	100007b7          	lui	a5,0x10000
    800025e4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800025e8:	0017f793          	andi	a5,a5,1
    800025ec:	0a078463          	beqz	a5,80002694 <uartintr+0xb4>
    800025f0:	fe010113          	addi	sp,sp,-32
    800025f4:	00813823          	sd	s0,16(sp)
    800025f8:	00913423          	sd	s1,8(sp)
    800025fc:	00113c23          	sd	ra,24(sp)
    80002600:	02010413          	addi	s0,sp,32
    80002604:	100004b7          	lui	s1,0x10000
    80002608:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000260c:	0ff57513          	andi	a0,a0,255
    80002610:	fffff097          	auipc	ra,0xfffff
    80002614:	534080e7          	jalr	1332(ra) # 80001b44 <consoleintr>
    80002618:	0054c783          	lbu	a5,5(s1)
    8000261c:	0017f793          	andi	a5,a5,1
    80002620:	fe0794e3          	bnez	a5,80002608 <uartintr+0x28>
    80002624:	00002617          	auipc	a2,0x2
    80002628:	c4c60613          	addi	a2,a2,-948 # 80004270 <uart_tx_r>
    8000262c:	00002517          	auipc	a0,0x2
    80002630:	c4c50513          	addi	a0,a0,-948 # 80004278 <uart_tx_w>
    80002634:	00063783          	ld	a5,0(a2)
    80002638:	00053703          	ld	a4,0(a0)
    8000263c:	04f70263          	beq	a4,a5,80002680 <uartintr+0xa0>
    80002640:	100005b7          	lui	a1,0x10000
    80002644:	00003817          	auipc	a6,0x3
    80002648:	e7c80813          	addi	a6,a6,-388 # 800054c0 <uart_tx_buf>
    8000264c:	01c0006f          	j	80002668 <uartintr+0x88>
    80002650:	0006c703          	lbu	a4,0(a3)
    80002654:	00f63023          	sd	a5,0(a2)
    80002658:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000265c:	00063783          	ld	a5,0(a2)
    80002660:	00053703          	ld	a4,0(a0)
    80002664:	00f70e63          	beq	a4,a5,80002680 <uartintr+0xa0>
    80002668:	01f7f713          	andi	a4,a5,31
    8000266c:	00e806b3          	add	a3,a6,a4
    80002670:	0055c703          	lbu	a4,5(a1)
    80002674:	00178793          	addi	a5,a5,1
    80002678:	02077713          	andi	a4,a4,32
    8000267c:	fc071ae3          	bnez	a4,80002650 <uartintr+0x70>
    80002680:	01813083          	ld	ra,24(sp)
    80002684:	01013403          	ld	s0,16(sp)
    80002688:	00813483          	ld	s1,8(sp)
    8000268c:	02010113          	addi	sp,sp,32
    80002690:	00008067          	ret
    80002694:	00002617          	auipc	a2,0x2
    80002698:	bdc60613          	addi	a2,a2,-1060 # 80004270 <uart_tx_r>
    8000269c:	00002517          	auipc	a0,0x2
    800026a0:	bdc50513          	addi	a0,a0,-1060 # 80004278 <uart_tx_w>
    800026a4:	00063783          	ld	a5,0(a2)
    800026a8:	00053703          	ld	a4,0(a0)
    800026ac:	04f70263          	beq	a4,a5,800026f0 <uartintr+0x110>
    800026b0:	100005b7          	lui	a1,0x10000
    800026b4:	00003817          	auipc	a6,0x3
    800026b8:	e0c80813          	addi	a6,a6,-500 # 800054c0 <uart_tx_buf>
    800026bc:	01c0006f          	j	800026d8 <uartintr+0xf8>
    800026c0:	0006c703          	lbu	a4,0(a3)
    800026c4:	00f63023          	sd	a5,0(a2)
    800026c8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800026cc:	00063783          	ld	a5,0(a2)
    800026d0:	00053703          	ld	a4,0(a0)
    800026d4:	02f70063          	beq	a4,a5,800026f4 <uartintr+0x114>
    800026d8:	01f7f713          	andi	a4,a5,31
    800026dc:	00e806b3          	add	a3,a6,a4
    800026e0:	0055c703          	lbu	a4,5(a1)
    800026e4:	00178793          	addi	a5,a5,1
    800026e8:	02077713          	andi	a4,a4,32
    800026ec:	fc071ae3          	bnez	a4,800026c0 <uartintr+0xe0>
    800026f0:	00008067          	ret
    800026f4:	00008067          	ret

00000000800026f8 <kinit>:
    800026f8:	fc010113          	addi	sp,sp,-64
    800026fc:	02913423          	sd	s1,40(sp)
    80002700:	fffff7b7          	lui	a5,0xfffff
    80002704:	00004497          	auipc	s1,0x4
    80002708:	ddb48493          	addi	s1,s1,-549 # 800064df <end+0xfff>
    8000270c:	02813823          	sd	s0,48(sp)
    80002710:	01313c23          	sd	s3,24(sp)
    80002714:	00f4f4b3          	and	s1,s1,a5
    80002718:	02113c23          	sd	ra,56(sp)
    8000271c:	03213023          	sd	s2,32(sp)
    80002720:	01413823          	sd	s4,16(sp)
    80002724:	01513423          	sd	s5,8(sp)
    80002728:	04010413          	addi	s0,sp,64
    8000272c:	000017b7          	lui	a5,0x1
    80002730:	01100993          	li	s3,17
    80002734:	00f487b3          	add	a5,s1,a5
    80002738:	01b99993          	slli	s3,s3,0x1b
    8000273c:	06f9e063          	bltu	s3,a5,8000279c <kinit+0xa4>
    80002740:	00003a97          	auipc	s5,0x3
    80002744:	da0a8a93          	addi	s5,s5,-608 # 800054e0 <end>
    80002748:	0754ec63          	bltu	s1,s5,800027c0 <kinit+0xc8>
    8000274c:	0734fa63          	bgeu	s1,s3,800027c0 <kinit+0xc8>
    80002750:	00088a37          	lui	s4,0x88
    80002754:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80002758:	00002917          	auipc	s2,0x2
    8000275c:	b2890913          	addi	s2,s2,-1240 # 80004280 <kmem>
    80002760:	00ca1a13          	slli	s4,s4,0xc
    80002764:	0140006f          	j	80002778 <kinit+0x80>
    80002768:	000017b7          	lui	a5,0x1
    8000276c:	00f484b3          	add	s1,s1,a5
    80002770:	0554e863          	bltu	s1,s5,800027c0 <kinit+0xc8>
    80002774:	0534f663          	bgeu	s1,s3,800027c0 <kinit+0xc8>
    80002778:	00001637          	lui	a2,0x1
    8000277c:	00100593          	li	a1,1
    80002780:	00048513          	mv	a0,s1
    80002784:	00000097          	auipc	ra,0x0
    80002788:	5e4080e7          	jalr	1508(ra) # 80002d68 <__memset>
    8000278c:	00093783          	ld	a5,0(s2)
    80002790:	00f4b023          	sd	a5,0(s1)
    80002794:	00993023          	sd	s1,0(s2)
    80002798:	fd4498e3          	bne	s1,s4,80002768 <kinit+0x70>
    8000279c:	03813083          	ld	ra,56(sp)
    800027a0:	03013403          	ld	s0,48(sp)
    800027a4:	02813483          	ld	s1,40(sp)
    800027a8:	02013903          	ld	s2,32(sp)
    800027ac:	01813983          	ld	s3,24(sp)
    800027b0:	01013a03          	ld	s4,16(sp)
    800027b4:	00813a83          	ld	s5,8(sp)
    800027b8:	04010113          	addi	sp,sp,64
    800027bc:	00008067          	ret
    800027c0:	00002517          	auipc	a0,0x2
    800027c4:	9b050513          	addi	a0,a0,-1616 # 80004170 <digits+0x18>
    800027c8:	fffff097          	auipc	ra,0xfffff
    800027cc:	4b4080e7          	jalr	1204(ra) # 80001c7c <panic>

00000000800027d0 <freerange>:
    800027d0:	fc010113          	addi	sp,sp,-64
    800027d4:	000017b7          	lui	a5,0x1
    800027d8:	02913423          	sd	s1,40(sp)
    800027dc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800027e0:	009504b3          	add	s1,a0,s1
    800027e4:	fffff537          	lui	a0,0xfffff
    800027e8:	02813823          	sd	s0,48(sp)
    800027ec:	02113c23          	sd	ra,56(sp)
    800027f0:	03213023          	sd	s2,32(sp)
    800027f4:	01313c23          	sd	s3,24(sp)
    800027f8:	01413823          	sd	s4,16(sp)
    800027fc:	01513423          	sd	s5,8(sp)
    80002800:	01613023          	sd	s6,0(sp)
    80002804:	04010413          	addi	s0,sp,64
    80002808:	00a4f4b3          	and	s1,s1,a0
    8000280c:	00f487b3          	add	a5,s1,a5
    80002810:	06f5e463          	bltu	a1,a5,80002878 <freerange+0xa8>
    80002814:	00003a97          	auipc	s5,0x3
    80002818:	ccca8a93          	addi	s5,s5,-820 # 800054e0 <end>
    8000281c:	0954e263          	bltu	s1,s5,800028a0 <freerange+0xd0>
    80002820:	01100993          	li	s3,17
    80002824:	01b99993          	slli	s3,s3,0x1b
    80002828:	0734fc63          	bgeu	s1,s3,800028a0 <freerange+0xd0>
    8000282c:	00058a13          	mv	s4,a1
    80002830:	00002917          	auipc	s2,0x2
    80002834:	a5090913          	addi	s2,s2,-1456 # 80004280 <kmem>
    80002838:	00002b37          	lui	s6,0x2
    8000283c:	0140006f          	j	80002850 <freerange+0x80>
    80002840:	000017b7          	lui	a5,0x1
    80002844:	00f484b3          	add	s1,s1,a5
    80002848:	0554ec63          	bltu	s1,s5,800028a0 <freerange+0xd0>
    8000284c:	0534fa63          	bgeu	s1,s3,800028a0 <freerange+0xd0>
    80002850:	00001637          	lui	a2,0x1
    80002854:	00100593          	li	a1,1
    80002858:	00048513          	mv	a0,s1
    8000285c:	00000097          	auipc	ra,0x0
    80002860:	50c080e7          	jalr	1292(ra) # 80002d68 <__memset>
    80002864:	00093703          	ld	a4,0(s2)
    80002868:	016487b3          	add	a5,s1,s6
    8000286c:	00e4b023          	sd	a4,0(s1)
    80002870:	00993023          	sd	s1,0(s2)
    80002874:	fcfa76e3          	bgeu	s4,a5,80002840 <freerange+0x70>
    80002878:	03813083          	ld	ra,56(sp)
    8000287c:	03013403          	ld	s0,48(sp)
    80002880:	02813483          	ld	s1,40(sp)
    80002884:	02013903          	ld	s2,32(sp)
    80002888:	01813983          	ld	s3,24(sp)
    8000288c:	01013a03          	ld	s4,16(sp)
    80002890:	00813a83          	ld	s5,8(sp)
    80002894:	00013b03          	ld	s6,0(sp)
    80002898:	04010113          	addi	sp,sp,64
    8000289c:	00008067          	ret
    800028a0:	00002517          	auipc	a0,0x2
    800028a4:	8d050513          	addi	a0,a0,-1840 # 80004170 <digits+0x18>
    800028a8:	fffff097          	auipc	ra,0xfffff
    800028ac:	3d4080e7          	jalr	980(ra) # 80001c7c <panic>

00000000800028b0 <kfree>:
    800028b0:	fe010113          	addi	sp,sp,-32
    800028b4:	00813823          	sd	s0,16(sp)
    800028b8:	00113c23          	sd	ra,24(sp)
    800028bc:	00913423          	sd	s1,8(sp)
    800028c0:	02010413          	addi	s0,sp,32
    800028c4:	03451793          	slli	a5,a0,0x34
    800028c8:	04079c63          	bnez	a5,80002920 <kfree+0x70>
    800028cc:	00003797          	auipc	a5,0x3
    800028d0:	c1478793          	addi	a5,a5,-1004 # 800054e0 <end>
    800028d4:	00050493          	mv	s1,a0
    800028d8:	04f56463          	bltu	a0,a5,80002920 <kfree+0x70>
    800028dc:	01100793          	li	a5,17
    800028e0:	01b79793          	slli	a5,a5,0x1b
    800028e4:	02f57e63          	bgeu	a0,a5,80002920 <kfree+0x70>
    800028e8:	00001637          	lui	a2,0x1
    800028ec:	00100593          	li	a1,1
    800028f0:	00000097          	auipc	ra,0x0
    800028f4:	478080e7          	jalr	1144(ra) # 80002d68 <__memset>
    800028f8:	00002797          	auipc	a5,0x2
    800028fc:	98878793          	addi	a5,a5,-1656 # 80004280 <kmem>
    80002900:	0007b703          	ld	a4,0(a5)
    80002904:	01813083          	ld	ra,24(sp)
    80002908:	01013403          	ld	s0,16(sp)
    8000290c:	00e4b023          	sd	a4,0(s1)
    80002910:	0097b023          	sd	s1,0(a5)
    80002914:	00813483          	ld	s1,8(sp)
    80002918:	02010113          	addi	sp,sp,32
    8000291c:	00008067          	ret
    80002920:	00002517          	auipc	a0,0x2
    80002924:	85050513          	addi	a0,a0,-1968 # 80004170 <digits+0x18>
    80002928:	fffff097          	auipc	ra,0xfffff
    8000292c:	354080e7          	jalr	852(ra) # 80001c7c <panic>

0000000080002930 <kalloc>:
    80002930:	fe010113          	addi	sp,sp,-32
    80002934:	00813823          	sd	s0,16(sp)
    80002938:	00913423          	sd	s1,8(sp)
    8000293c:	00113c23          	sd	ra,24(sp)
    80002940:	02010413          	addi	s0,sp,32
    80002944:	00002797          	auipc	a5,0x2
    80002948:	93c78793          	addi	a5,a5,-1732 # 80004280 <kmem>
    8000294c:	0007b483          	ld	s1,0(a5)
    80002950:	02048063          	beqz	s1,80002970 <kalloc+0x40>
    80002954:	0004b703          	ld	a4,0(s1)
    80002958:	00001637          	lui	a2,0x1
    8000295c:	00500593          	li	a1,5
    80002960:	00048513          	mv	a0,s1
    80002964:	00e7b023          	sd	a4,0(a5)
    80002968:	00000097          	auipc	ra,0x0
    8000296c:	400080e7          	jalr	1024(ra) # 80002d68 <__memset>
    80002970:	01813083          	ld	ra,24(sp)
    80002974:	01013403          	ld	s0,16(sp)
    80002978:	00048513          	mv	a0,s1
    8000297c:	00813483          	ld	s1,8(sp)
    80002980:	02010113          	addi	sp,sp,32
    80002984:	00008067          	ret

0000000080002988 <initlock>:
    80002988:	ff010113          	addi	sp,sp,-16
    8000298c:	00813423          	sd	s0,8(sp)
    80002990:	01010413          	addi	s0,sp,16
    80002994:	00813403          	ld	s0,8(sp)
    80002998:	00b53423          	sd	a1,8(a0)
    8000299c:	00052023          	sw	zero,0(a0)
    800029a0:	00053823          	sd	zero,16(a0)
    800029a4:	01010113          	addi	sp,sp,16
    800029a8:	00008067          	ret

00000000800029ac <acquire>:
    800029ac:	fe010113          	addi	sp,sp,-32
    800029b0:	00813823          	sd	s0,16(sp)
    800029b4:	00913423          	sd	s1,8(sp)
    800029b8:	00113c23          	sd	ra,24(sp)
    800029bc:	01213023          	sd	s2,0(sp)
    800029c0:	02010413          	addi	s0,sp,32
    800029c4:	00050493          	mv	s1,a0
    800029c8:	10002973          	csrr	s2,sstatus
    800029cc:	100027f3          	csrr	a5,sstatus
    800029d0:	ffd7f793          	andi	a5,a5,-3
    800029d4:	10079073          	csrw	sstatus,a5
    800029d8:	fffff097          	auipc	ra,0xfffff
    800029dc:	8e4080e7          	jalr	-1820(ra) # 800012bc <mycpu>
    800029e0:	07852783          	lw	a5,120(a0)
    800029e4:	06078e63          	beqz	a5,80002a60 <acquire+0xb4>
    800029e8:	fffff097          	auipc	ra,0xfffff
    800029ec:	8d4080e7          	jalr	-1836(ra) # 800012bc <mycpu>
    800029f0:	07852783          	lw	a5,120(a0)
    800029f4:	0004a703          	lw	a4,0(s1)
    800029f8:	0017879b          	addiw	a5,a5,1
    800029fc:	06f52c23          	sw	a5,120(a0)
    80002a00:	04071063          	bnez	a4,80002a40 <acquire+0x94>
    80002a04:	00100713          	li	a4,1
    80002a08:	00070793          	mv	a5,a4
    80002a0c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80002a10:	0007879b          	sext.w	a5,a5
    80002a14:	fe079ae3          	bnez	a5,80002a08 <acquire+0x5c>
    80002a18:	0ff0000f          	fence
    80002a1c:	fffff097          	auipc	ra,0xfffff
    80002a20:	8a0080e7          	jalr	-1888(ra) # 800012bc <mycpu>
    80002a24:	01813083          	ld	ra,24(sp)
    80002a28:	01013403          	ld	s0,16(sp)
    80002a2c:	00a4b823          	sd	a0,16(s1)
    80002a30:	00013903          	ld	s2,0(sp)
    80002a34:	00813483          	ld	s1,8(sp)
    80002a38:	02010113          	addi	sp,sp,32
    80002a3c:	00008067          	ret
    80002a40:	0104b903          	ld	s2,16(s1)
    80002a44:	fffff097          	auipc	ra,0xfffff
    80002a48:	878080e7          	jalr	-1928(ra) # 800012bc <mycpu>
    80002a4c:	faa91ce3          	bne	s2,a0,80002a04 <acquire+0x58>
    80002a50:	00001517          	auipc	a0,0x1
    80002a54:	72850513          	addi	a0,a0,1832 # 80004178 <digits+0x20>
    80002a58:	fffff097          	auipc	ra,0xfffff
    80002a5c:	224080e7          	jalr	548(ra) # 80001c7c <panic>
    80002a60:	00195913          	srli	s2,s2,0x1
    80002a64:	fffff097          	auipc	ra,0xfffff
    80002a68:	858080e7          	jalr	-1960(ra) # 800012bc <mycpu>
    80002a6c:	00197913          	andi	s2,s2,1
    80002a70:	07252e23          	sw	s2,124(a0)
    80002a74:	f75ff06f          	j	800029e8 <acquire+0x3c>

0000000080002a78 <release>:
    80002a78:	fe010113          	addi	sp,sp,-32
    80002a7c:	00813823          	sd	s0,16(sp)
    80002a80:	00113c23          	sd	ra,24(sp)
    80002a84:	00913423          	sd	s1,8(sp)
    80002a88:	01213023          	sd	s2,0(sp)
    80002a8c:	02010413          	addi	s0,sp,32
    80002a90:	00052783          	lw	a5,0(a0)
    80002a94:	00079a63          	bnez	a5,80002aa8 <release+0x30>
    80002a98:	00001517          	auipc	a0,0x1
    80002a9c:	6e850513          	addi	a0,a0,1768 # 80004180 <digits+0x28>
    80002aa0:	fffff097          	auipc	ra,0xfffff
    80002aa4:	1dc080e7          	jalr	476(ra) # 80001c7c <panic>
    80002aa8:	01053903          	ld	s2,16(a0)
    80002aac:	00050493          	mv	s1,a0
    80002ab0:	fffff097          	auipc	ra,0xfffff
    80002ab4:	80c080e7          	jalr	-2036(ra) # 800012bc <mycpu>
    80002ab8:	fea910e3          	bne	s2,a0,80002a98 <release+0x20>
    80002abc:	0004b823          	sd	zero,16(s1)
    80002ac0:	0ff0000f          	fence
    80002ac4:	0f50000f          	fence	iorw,ow
    80002ac8:	0804a02f          	amoswap.w	zero,zero,(s1)
    80002acc:	ffffe097          	auipc	ra,0xffffe
    80002ad0:	7f0080e7          	jalr	2032(ra) # 800012bc <mycpu>
    80002ad4:	100027f3          	csrr	a5,sstatus
    80002ad8:	0027f793          	andi	a5,a5,2
    80002adc:	04079a63          	bnez	a5,80002b30 <release+0xb8>
    80002ae0:	07852783          	lw	a5,120(a0)
    80002ae4:	02f05e63          	blez	a5,80002b20 <release+0xa8>
    80002ae8:	fff7871b          	addiw	a4,a5,-1
    80002aec:	06e52c23          	sw	a4,120(a0)
    80002af0:	00071c63          	bnez	a4,80002b08 <release+0x90>
    80002af4:	07c52783          	lw	a5,124(a0)
    80002af8:	00078863          	beqz	a5,80002b08 <release+0x90>
    80002afc:	100027f3          	csrr	a5,sstatus
    80002b00:	0027e793          	ori	a5,a5,2
    80002b04:	10079073          	csrw	sstatus,a5
    80002b08:	01813083          	ld	ra,24(sp)
    80002b0c:	01013403          	ld	s0,16(sp)
    80002b10:	00813483          	ld	s1,8(sp)
    80002b14:	00013903          	ld	s2,0(sp)
    80002b18:	02010113          	addi	sp,sp,32
    80002b1c:	00008067          	ret
    80002b20:	00001517          	auipc	a0,0x1
    80002b24:	68050513          	addi	a0,a0,1664 # 800041a0 <digits+0x48>
    80002b28:	fffff097          	auipc	ra,0xfffff
    80002b2c:	154080e7          	jalr	340(ra) # 80001c7c <panic>
    80002b30:	00001517          	auipc	a0,0x1
    80002b34:	65850513          	addi	a0,a0,1624 # 80004188 <digits+0x30>
    80002b38:	fffff097          	auipc	ra,0xfffff
    80002b3c:	144080e7          	jalr	324(ra) # 80001c7c <panic>

0000000080002b40 <holding>:
    80002b40:	00052783          	lw	a5,0(a0)
    80002b44:	00079663          	bnez	a5,80002b50 <holding+0x10>
    80002b48:	00000513          	li	a0,0
    80002b4c:	00008067          	ret
    80002b50:	fe010113          	addi	sp,sp,-32
    80002b54:	00813823          	sd	s0,16(sp)
    80002b58:	00913423          	sd	s1,8(sp)
    80002b5c:	00113c23          	sd	ra,24(sp)
    80002b60:	02010413          	addi	s0,sp,32
    80002b64:	01053483          	ld	s1,16(a0)
    80002b68:	ffffe097          	auipc	ra,0xffffe
    80002b6c:	754080e7          	jalr	1876(ra) # 800012bc <mycpu>
    80002b70:	01813083          	ld	ra,24(sp)
    80002b74:	01013403          	ld	s0,16(sp)
    80002b78:	40a48533          	sub	a0,s1,a0
    80002b7c:	00153513          	seqz	a0,a0
    80002b80:	00813483          	ld	s1,8(sp)
    80002b84:	02010113          	addi	sp,sp,32
    80002b88:	00008067          	ret

0000000080002b8c <push_off>:
    80002b8c:	fe010113          	addi	sp,sp,-32
    80002b90:	00813823          	sd	s0,16(sp)
    80002b94:	00113c23          	sd	ra,24(sp)
    80002b98:	00913423          	sd	s1,8(sp)
    80002b9c:	02010413          	addi	s0,sp,32
    80002ba0:	100024f3          	csrr	s1,sstatus
    80002ba4:	100027f3          	csrr	a5,sstatus
    80002ba8:	ffd7f793          	andi	a5,a5,-3
    80002bac:	10079073          	csrw	sstatus,a5
    80002bb0:	ffffe097          	auipc	ra,0xffffe
    80002bb4:	70c080e7          	jalr	1804(ra) # 800012bc <mycpu>
    80002bb8:	07852783          	lw	a5,120(a0)
    80002bbc:	02078663          	beqz	a5,80002be8 <push_off+0x5c>
    80002bc0:	ffffe097          	auipc	ra,0xffffe
    80002bc4:	6fc080e7          	jalr	1788(ra) # 800012bc <mycpu>
    80002bc8:	07852783          	lw	a5,120(a0)
    80002bcc:	01813083          	ld	ra,24(sp)
    80002bd0:	01013403          	ld	s0,16(sp)
    80002bd4:	0017879b          	addiw	a5,a5,1
    80002bd8:	06f52c23          	sw	a5,120(a0)
    80002bdc:	00813483          	ld	s1,8(sp)
    80002be0:	02010113          	addi	sp,sp,32
    80002be4:	00008067          	ret
    80002be8:	0014d493          	srli	s1,s1,0x1
    80002bec:	ffffe097          	auipc	ra,0xffffe
    80002bf0:	6d0080e7          	jalr	1744(ra) # 800012bc <mycpu>
    80002bf4:	0014f493          	andi	s1,s1,1
    80002bf8:	06952e23          	sw	s1,124(a0)
    80002bfc:	fc5ff06f          	j	80002bc0 <push_off+0x34>

0000000080002c00 <pop_off>:
    80002c00:	ff010113          	addi	sp,sp,-16
    80002c04:	00813023          	sd	s0,0(sp)
    80002c08:	00113423          	sd	ra,8(sp)
    80002c0c:	01010413          	addi	s0,sp,16
    80002c10:	ffffe097          	auipc	ra,0xffffe
    80002c14:	6ac080e7          	jalr	1708(ra) # 800012bc <mycpu>
    80002c18:	100027f3          	csrr	a5,sstatus
    80002c1c:	0027f793          	andi	a5,a5,2
    80002c20:	04079663          	bnez	a5,80002c6c <pop_off+0x6c>
    80002c24:	07852783          	lw	a5,120(a0)
    80002c28:	02f05a63          	blez	a5,80002c5c <pop_off+0x5c>
    80002c2c:	fff7871b          	addiw	a4,a5,-1
    80002c30:	06e52c23          	sw	a4,120(a0)
    80002c34:	00071c63          	bnez	a4,80002c4c <pop_off+0x4c>
    80002c38:	07c52783          	lw	a5,124(a0)
    80002c3c:	00078863          	beqz	a5,80002c4c <pop_off+0x4c>
    80002c40:	100027f3          	csrr	a5,sstatus
    80002c44:	0027e793          	ori	a5,a5,2
    80002c48:	10079073          	csrw	sstatus,a5
    80002c4c:	00813083          	ld	ra,8(sp)
    80002c50:	00013403          	ld	s0,0(sp)
    80002c54:	01010113          	addi	sp,sp,16
    80002c58:	00008067          	ret
    80002c5c:	00001517          	auipc	a0,0x1
    80002c60:	54450513          	addi	a0,a0,1348 # 800041a0 <digits+0x48>
    80002c64:	fffff097          	auipc	ra,0xfffff
    80002c68:	018080e7          	jalr	24(ra) # 80001c7c <panic>
    80002c6c:	00001517          	auipc	a0,0x1
    80002c70:	51c50513          	addi	a0,a0,1308 # 80004188 <digits+0x30>
    80002c74:	fffff097          	auipc	ra,0xfffff
    80002c78:	008080e7          	jalr	8(ra) # 80001c7c <panic>

0000000080002c7c <push_on>:
    80002c7c:	fe010113          	addi	sp,sp,-32
    80002c80:	00813823          	sd	s0,16(sp)
    80002c84:	00113c23          	sd	ra,24(sp)
    80002c88:	00913423          	sd	s1,8(sp)
    80002c8c:	02010413          	addi	s0,sp,32
    80002c90:	100024f3          	csrr	s1,sstatus
    80002c94:	100027f3          	csrr	a5,sstatus
    80002c98:	0027e793          	ori	a5,a5,2
    80002c9c:	10079073          	csrw	sstatus,a5
    80002ca0:	ffffe097          	auipc	ra,0xffffe
    80002ca4:	61c080e7          	jalr	1564(ra) # 800012bc <mycpu>
    80002ca8:	07852783          	lw	a5,120(a0)
    80002cac:	02078663          	beqz	a5,80002cd8 <push_on+0x5c>
    80002cb0:	ffffe097          	auipc	ra,0xffffe
    80002cb4:	60c080e7          	jalr	1548(ra) # 800012bc <mycpu>
    80002cb8:	07852783          	lw	a5,120(a0)
    80002cbc:	01813083          	ld	ra,24(sp)
    80002cc0:	01013403          	ld	s0,16(sp)
    80002cc4:	0017879b          	addiw	a5,a5,1
    80002cc8:	06f52c23          	sw	a5,120(a0)
    80002ccc:	00813483          	ld	s1,8(sp)
    80002cd0:	02010113          	addi	sp,sp,32
    80002cd4:	00008067          	ret
    80002cd8:	0014d493          	srli	s1,s1,0x1
    80002cdc:	ffffe097          	auipc	ra,0xffffe
    80002ce0:	5e0080e7          	jalr	1504(ra) # 800012bc <mycpu>
    80002ce4:	0014f493          	andi	s1,s1,1
    80002ce8:	06952e23          	sw	s1,124(a0)
    80002cec:	fc5ff06f          	j	80002cb0 <push_on+0x34>

0000000080002cf0 <pop_on>:
    80002cf0:	ff010113          	addi	sp,sp,-16
    80002cf4:	00813023          	sd	s0,0(sp)
    80002cf8:	00113423          	sd	ra,8(sp)
    80002cfc:	01010413          	addi	s0,sp,16
    80002d00:	ffffe097          	auipc	ra,0xffffe
    80002d04:	5bc080e7          	jalr	1468(ra) # 800012bc <mycpu>
    80002d08:	100027f3          	csrr	a5,sstatus
    80002d0c:	0027f793          	andi	a5,a5,2
    80002d10:	04078463          	beqz	a5,80002d58 <pop_on+0x68>
    80002d14:	07852783          	lw	a5,120(a0)
    80002d18:	02f05863          	blez	a5,80002d48 <pop_on+0x58>
    80002d1c:	fff7879b          	addiw	a5,a5,-1
    80002d20:	06f52c23          	sw	a5,120(a0)
    80002d24:	07853783          	ld	a5,120(a0)
    80002d28:	00079863          	bnez	a5,80002d38 <pop_on+0x48>
    80002d2c:	100027f3          	csrr	a5,sstatus
    80002d30:	ffd7f793          	andi	a5,a5,-3
    80002d34:	10079073          	csrw	sstatus,a5
    80002d38:	00813083          	ld	ra,8(sp)
    80002d3c:	00013403          	ld	s0,0(sp)
    80002d40:	01010113          	addi	sp,sp,16
    80002d44:	00008067          	ret
    80002d48:	00001517          	auipc	a0,0x1
    80002d4c:	48050513          	addi	a0,a0,1152 # 800041c8 <digits+0x70>
    80002d50:	fffff097          	auipc	ra,0xfffff
    80002d54:	f2c080e7          	jalr	-212(ra) # 80001c7c <panic>
    80002d58:	00001517          	auipc	a0,0x1
    80002d5c:	45050513          	addi	a0,a0,1104 # 800041a8 <digits+0x50>
    80002d60:	fffff097          	auipc	ra,0xfffff
    80002d64:	f1c080e7          	jalr	-228(ra) # 80001c7c <panic>

0000000080002d68 <__memset>:
    80002d68:	ff010113          	addi	sp,sp,-16
    80002d6c:	00813423          	sd	s0,8(sp)
    80002d70:	01010413          	addi	s0,sp,16
    80002d74:	1a060e63          	beqz	a2,80002f30 <__memset+0x1c8>
    80002d78:	40a007b3          	neg	a5,a0
    80002d7c:	0077f793          	andi	a5,a5,7
    80002d80:	00778693          	addi	a3,a5,7
    80002d84:	00b00813          	li	a6,11
    80002d88:	0ff5f593          	andi	a1,a1,255
    80002d8c:	fff6071b          	addiw	a4,a2,-1
    80002d90:	1b06e663          	bltu	a3,a6,80002f3c <__memset+0x1d4>
    80002d94:	1cd76463          	bltu	a4,a3,80002f5c <__memset+0x1f4>
    80002d98:	1a078e63          	beqz	a5,80002f54 <__memset+0x1ec>
    80002d9c:	00b50023          	sb	a1,0(a0)
    80002da0:	00100713          	li	a4,1
    80002da4:	1ae78463          	beq	a5,a4,80002f4c <__memset+0x1e4>
    80002da8:	00b500a3          	sb	a1,1(a0)
    80002dac:	00200713          	li	a4,2
    80002db0:	1ae78a63          	beq	a5,a4,80002f64 <__memset+0x1fc>
    80002db4:	00b50123          	sb	a1,2(a0)
    80002db8:	00300713          	li	a4,3
    80002dbc:	18e78463          	beq	a5,a4,80002f44 <__memset+0x1dc>
    80002dc0:	00b501a3          	sb	a1,3(a0)
    80002dc4:	00400713          	li	a4,4
    80002dc8:	1ae78263          	beq	a5,a4,80002f6c <__memset+0x204>
    80002dcc:	00b50223          	sb	a1,4(a0)
    80002dd0:	00500713          	li	a4,5
    80002dd4:	1ae78063          	beq	a5,a4,80002f74 <__memset+0x20c>
    80002dd8:	00b502a3          	sb	a1,5(a0)
    80002ddc:	00700713          	li	a4,7
    80002de0:	18e79e63          	bne	a5,a4,80002f7c <__memset+0x214>
    80002de4:	00b50323          	sb	a1,6(a0)
    80002de8:	00700e93          	li	t4,7
    80002dec:	00859713          	slli	a4,a1,0x8
    80002df0:	00e5e733          	or	a4,a1,a4
    80002df4:	01059e13          	slli	t3,a1,0x10
    80002df8:	01c76e33          	or	t3,a4,t3
    80002dfc:	01859313          	slli	t1,a1,0x18
    80002e00:	006e6333          	or	t1,t3,t1
    80002e04:	02059893          	slli	a7,a1,0x20
    80002e08:	40f60e3b          	subw	t3,a2,a5
    80002e0c:	011368b3          	or	a7,t1,a7
    80002e10:	02859813          	slli	a6,a1,0x28
    80002e14:	0108e833          	or	a6,a7,a6
    80002e18:	03059693          	slli	a3,a1,0x30
    80002e1c:	003e589b          	srliw	a7,t3,0x3
    80002e20:	00d866b3          	or	a3,a6,a3
    80002e24:	03859713          	slli	a4,a1,0x38
    80002e28:	00389813          	slli	a6,a7,0x3
    80002e2c:	00f507b3          	add	a5,a0,a5
    80002e30:	00e6e733          	or	a4,a3,a4
    80002e34:	000e089b          	sext.w	a7,t3
    80002e38:	00f806b3          	add	a3,a6,a5
    80002e3c:	00e7b023          	sd	a4,0(a5)
    80002e40:	00878793          	addi	a5,a5,8
    80002e44:	fed79ce3          	bne	a5,a3,80002e3c <__memset+0xd4>
    80002e48:	ff8e7793          	andi	a5,t3,-8
    80002e4c:	0007871b          	sext.w	a4,a5
    80002e50:	01d787bb          	addw	a5,a5,t4
    80002e54:	0ce88e63          	beq	a7,a4,80002f30 <__memset+0x1c8>
    80002e58:	00f50733          	add	a4,a0,a5
    80002e5c:	00b70023          	sb	a1,0(a4)
    80002e60:	0017871b          	addiw	a4,a5,1
    80002e64:	0cc77663          	bgeu	a4,a2,80002f30 <__memset+0x1c8>
    80002e68:	00e50733          	add	a4,a0,a4
    80002e6c:	00b70023          	sb	a1,0(a4)
    80002e70:	0027871b          	addiw	a4,a5,2
    80002e74:	0ac77e63          	bgeu	a4,a2,80002f30 <__memset+0x1c8>
    80002e78:	00e50733          	add	a4,a0,a4
    80002e7c:	00b70023          	sb	a1,0(a4)
    80002e80:	0037871b          	addiw	a4,a5,3
    80002e84:	0ac77663          	bgeu	a4,a2,80002f30 <__memset+0x1c8>
    80002e88:	00e50733          	add	a4,a0,a4
    80002e8c:	00b70023          	sb	a1,0(a4)
    80002e90:	0047871b          	addiw	a4,a5,4
    80002e94:	08c77e63          	bgeu	a4,a2,80002f30 <__memset+0x1c8>
    80002e98:	00e50733          	add	a4,a0,a4
    80002e9c:	00b70023          	sb	a1,0(a4)
    80002ea0:	0057871b          	addiw	a4,a5,5
    80002ea4:	08c77663          	bgeu	a4,a2,80002f30 <__memset+0x1c8>
    80002ea8:	00e50733          	add	a4,a0,a4
    80002eac:	00b70023          	sb	a1,0(a4)
    80002eb0:	0067871b          	addiw	a4,a5,6
    80002eb4:	06c77e63          	bgeu	a4,a2,80002f30 <__memset+0x1c8>
    80002eb8:	00e50733          	add	a4,a0,a4
    80002ebc:	00b70023          	sb	a1,0(a4)
    80002ec0:	0077871b          	addiw	a4,a5,7
    80002ec4:	06c77663          	bgeu	a4,a2,80002f30 <__memset+0x1c8>
    80002ec8:	00e50733          	add	a4,a0,a4
    80002ecc:	00b70023          	sb	a1,0(a4)
    80002ed0:	0087871b          	addiw	a4,a5,8
    80002ed4:	04c77e63          	bgeu	a4,a2,80002f30 <__memset+0x1c8>
    80002ed8:	00e50733          	add	a4,a0,a4
    80002edc:	00b70023          	sb	a1,0(a4)
    80002ee0:	0097871b          	addiw	a4,a5,9
    80002ee4:	04c77663          	bgeu	a4,a2,80002f30 <__memset+0x1c8>
    80002ee8:	00e50733          	add	a4,a0,a4
    80002eec:	00b70023          	sb	a1,0(a4)
    80002ef0:	00a7871b          	addiw	a4,a5,10
    80002ef4:	02c77e63          	bgeu	a4,a2,80002f30 <__memset+0x1c8>
    80002ef8:	00e50733          	add	a4,a0,a4
    80002efc:	00b70023          	sb	a1,0(a4)
    80002f00:	00b7871b          	addiw	a4,a5,11
    80002f04:	02c77663          	bgeu	a4,a2,80002f30 <__memset+0x1c8>
    80002f08:	00e50733          	add	a4,a0,a4
    80002f0c:	00b70023          	sb	a1,0(a4)
    80002f10:	00c7871b          	addiw	a4,a5,12
    80002f14:	00c77e63          	bgeu	a4,a2,80002f30 <__memset+0x1c8>
    80002f18:	00e50733          	add	a4,a0,a4
    80002f1c:	00b70023          	sb	a1,0(a4)
    80002f20:	00d7879b          	addiw	a5,a5,13
    80002f24:	00c7f663          	bgeu	a5,a2,80002f30 <__memset+0x1c8>
    80002f28:	00f507b3          	add	a5,a0,a5
    80002f2c:	00b78023          	sb	a1,0(a5)
    80002f30:	00813403          	ld	s0,8(sp)
    80002f34:	01010113          	addi	sp,sp,16
    80002f38:	00008067          	ret
    80002f3c:	00b00693          	li	a3,11
    80002f40:	e55ff06f          	j	80002d94 <__memset+0x2c>
    80002f44:	00300e93          	li	t4,3
    80002f48:	ea5ff06f          	j	80002dec <__memset+0x84>
    80002f4c:	00100e93          	li	t4,1
    80002f50:	e9dff06f          	j	80002dec <__memset+0x84>
    80002f54:	00000e93          	li	t4,0
    80002f58:	e95ff06f          	j	80002dec <__memset+0x84>
    80002f5c:	00000793          	li	a5,0
    80002f60:	ef9ff06f          	j	80002e58 <__memset+0xf0>
    80002f64:	00200e93          	li	t4,2
    80002f68:	e85ff06f          	j	80002dec <__memset+0x84>
    80002f6c:	00400e93          	li	t4,4
    80002f70:	e7dff06f          	j	80002dec <__memset+0x84>
    80002f74:	00500e93          	li	t4,5
    80002f78:	e75ff06f          	j	80002dec <__memset+0x84>
    80002f7c:	00600e93          	li	t4,6
    80002f80:	e6dff06f          	j	80002dec <__memset+0x84>

0000000080002f84 <__memmove>:
    80002f84:	ff010113          	addi	sp,sp,-16
    80002f88:	00813423          	sd	s0,8(sp)
    80002f8c:	01010413          	addi	s0,sp,16
    80002f90:	0e060863          	beqz	a2,80003080 <__memmove+0xfc>
    80002f94:	fff6069b          	addiw	a3,a2,-1
    80002f98:	0006881b          	sext.w	a6,a3
    80002f9c:	0ea5e863          	bltu	a1,a0,8000308c <__memmove+0x108>
    80002fa0:	00758713          	addi	a4,a1,7
    80002fa4:	00a5e7b3          	or	a5,a1,a0
    80002fa8:	40a70733          	sub	a4,a4,a0
    80002fac:	0077f793          	andi	a5,a5,7
    80002fb0:	00f73713          	sltiu	a4,a4,15
    80002fb4:	00174713          	xori	a4,a4,1
    80002fb8:	0017b793          	seqz	a5,a5
    80002fbc:	00e7f7b3          	and	a5,a5,a4
    80002fc0:	10078863          	beqz	a5,800030d0 <__memmove+0x14c>
    80002fc4:	00900793          	li	a5,9
    80002fc8:	1107f463          	bgeu	a5,a6,800030d0 <__memmove+0x14c>
    80002fcc:	0036581b          	srliw	a6,a2,0x3
    80002fd0:	fff8081b          	addiw	a6,a6,-1
    80002fd4:	02081813          	slli	a6,a6,0x20
    80002fd8:	01d85893          	srli	a7,a6,0x1d
    80002fdc:	00858813          	addi	a6,a1,8
    80002fe0:	00058793          	mv	a5,a1
    80002fe4:	00050713          	mv	a4,a0
    80002fe8:	01088833          	add	a6,a7,a6
    80002fec:	0007b883          	ld	a7,0(a5)
    80002ff0:	00878793          	addi	a5,a5,8
    80002ff4:	00870713          	addi	a4,a4,8
    80002ff8:	ff173c23          	sd	a7,-8(a4)
    80002ffc:	ff0798e3          	bne	a5,a6,80002fec <__memmove+0x68>
    80003000:	ff867713          	andi	a4,a2,-8
    80003004:	02071793          	slli	a5,a4,0x20
    80003008:	0207d793          	srli	a5,a5,0x20
    8000300c:	00f585b3          	add	a1,a1,a5
    80003010:	40e686bb          	subw	a3,a3,a4
    80003014:	00f507b3          	add	a5,a0,a5
    80003018:	06e60463          	beq	a2,a4,80003080 <__memmove+0xfc>
    8000301c:	0005c703          	lbu	a4,0(a1)
    80003020:	00e78023          	sb	a4,0(a5)
    80003024:	04068e63          	beqz	a3,80003080 <__memmove+0xfc>
    80003028:	0015c603          	lbu	a2,1(a1)
    8000302c:	00100713          	li	a4,1
    80003030:	00c780a3          	sb	a2,1(a5)
    80003034:	04e68663          	beq	a3,a4,80003080 <__memmove+0xfc>
    80003038:	0025c603          	lbu	a2,2(a1)
    8000303c:	00200713          	li	a4,2
    80003040:	00c78123          	sb	a2,2(a5)
    80003044:	02e68e63          	beq	a3,a4,80003080 <__memmove+0xfc>
    80003048:	0035c603          	lbu	a2,3(a1)
    8000304c:	00300713          	li	a4,3
    80003050:	00c781a3          	sb	a2,3(a5)
    80003054:	02e68663          	beq	a3,a4,80003080 <__memmove+0xfc>
    80003058:	0045c603          	lbu	a2,4(a1)
    8000305c:	00400713          	li	a4,4
    80003060:	00c78223          	sb	a2,4(a5)
    80003064:	00e68e63          	beq	a3,a4,80003080 <__memmove+0xfc>
    80003068:	0055c603          	lbu	a2,5(a1)
    8000306c:	00500713          	li	a4,5
    80003070:	00c782a3          	sb	a2,5(a5)
    80003074:	00e68663          	beq	a3,a4,80003080 <__memmove+0xfc>
    80003078:	0065c703          	lbu	a4,6(a1)
    8000307c:	00e78323          	sb	a4,6(a5)
    80003080:	00813403          	ld	s0,8(sp)
    80003084:	01010113          	addi	sp,sp,16
    80003088:	00008067          	ret
    8000308c:	02061713          	slli	a4,a2,0x20
    80003090:	02075713          	srli	a4,a4,0x20
    80003094:	00e587b3          	add	a5,a1,a4
    80003098:	f0f574e3          	bgeu	a0,a5,80002fa0 <__memmove+0x1c>
    8000309c:	02069613          	slli	a2,a3,0x20
    800030a0:	02065613          	srli	a2,a2,0x20
    800030a4:	fff64613          	not	a2,a2
    800030a8:	00e50733          	add	a4,a0,a4
    800030ac:	00c78633          	add	a2,a5,a2
    800030b0:	fff7c683          	lbu	a3,-1(a5)
    800030b4:	fff78793          	addi	a5,a5,-1
    800030b8:	fff70713          	addi	a4,a4,-1
    800030bc:	00d70023          	sb	a3,0(a4)
    800030c0:	fec798e3          	bne	a5,a2,800030b0 <__memmove+0x12c>
    800030c4:	00813403          	ld	s0,8(sp)
    800030c8:	01010113          	addi	sp,sp,16
    800030cc:	00008067          	ret
    800030d0:	02069713          	slli	a4,a3,0x20
    800030d4:	02075713          	srli	a4,a4,0x20
    800030d8:	00170713          	addi	a4,a4,1
    800030dc:	00e50733          	add	a4,a0,a4
    800030e0:	00050793          	mv	a5,a0
    800030e4:	0005c683          	lbu	a3,0(a1)
    800030e8:	00178793          	addi	a5,a5,1
    800030ec:	00158593          	addi	a1,a1,1
    800030f0:	fed78fa3          	sb	a3,-1(a5)
    800030f4:	fee798e3          	bne	a5,a4,800030e4 <__memmove+0x160>
    800030f8:	f89ff06f          	j	80003080 <__memmove+0xfc>

00000000800030fc <__putc>:
    800030fc:	fe010113          	addi	sp,sp,-32
    80003100:	00813823          	sd	s0,16(sp)
    80003104:	00113c23          	sd	ra,24(sp)
    80003108:	02010413          	addi	s0,sp,32
    8000310c:	00050793          	mv	a5,a0
    80003110:	fef40593          	addi	a1,s0,-17
    80003114:	00100613          	li	a2,1
    80003118:	00000513          	li	a0,0
    8000311c:	fef407a3          	sb	a5,-17(s0)
    80003120:	fffff097          	auipc	ra,0xfffff
    80003124:	b3c080e7          	jalr	-1220(ra) # 80001c5c <console_write>
    80003128:	01813083          	ld	ra,24(sp)
    8000312c:	01013403          	ld	s0,16(sp)
    80003130:	02010113          	addi	sp,sp,32
    80003134:	00008067          	ret

0000000080003138 <__getc>:
    80003138:	fe010113          	addi	sp,sp,-32
    8000313c:	00813823          	sd	s0,16(sp)
    80003140:	00113c23          	sd	ra,24(sp)
    80003144:	02010413          	addi	s0,sp,32
    80003148:	fe840593          	addi	a1,s0,-24
    8000314c:	00100613          	li	a2,1
    80003150:	00000513          	li	a0,0
    80003154:	fffff097          	auipc	ra,0xfffff
    80003158:	ae8080e7          	jalr	-1304(ra) # 80001c3c <console_read>
    8000315c:	fe844503          	lbu	a0,-24(s0)
    80003160:	01813083          	ld	ra,24(sp)
    80003164:	01013403          	ld	s0,16(sp)
    80003168:	02010113          	addi	sp,sp,32
    8000316c:	00008067          	ret

0000000080003170 <console_handler>:
    80003170:	fe010113          	addi	sp,sp,-32
    80003174:	00813823          	sd	s0,16(sp)
    80003178:	00113c23          	sd	ra,24(sp)
    8000317c:	00913423          	sd	s1,8(sp)
    80003180:	02010413          	addi	s0,sp,32
    80003184:	14202773          	csrr	a4,scause
    80003188:	100027f3          	csrr	a5,sstatus
    8000318c:	0027f793          	andi	a5,a5,2
    80003190:	06079e63          	bnez	a5,8000320c <console_handler+0x9c>
    80003194:	00074c63          	bltz	a4,800031ac <console_handler+0x3c>
    80003198:	01813083          	ld	ra,24(sp)
    8000319c:	01013403          	ld	s0,16(sp)
    800031a0:	00813483          	ld	s1,8(sp)
    800031a4:	02010113          	addi	sp,sp,32
    800031a8:	00008067          	ret
    800031ac:	0ff77713          	andi	a4,a4,255
    800031b0:	00900793          	li	a5,9
    800031b4:	fef712e3          	bne	a4,a5,80003198 <console_handler+0x28>
    800031b8:	ffffe097          	auipc	ra,0xffffe
    800031bc:	6dc080e7          	jalr	1756(ra) # 80001894 <plic_claim>
    800031c0:	00a00793          	li	a5,10
    800031c4:	00050493          	mv	s1,a0
    800031c8:	02f50c63          	beq	a0,a5,80003200 <console_handler+0x90>
    800031cc:	fc0506e3          	beqz	a0,80003198 <console_handler+0x28>
    800031d0:	00050593          	mv	a1,a0
    800031d4:	00001517          	auipc	a0,0x1
    800031d8:	efc50513          	addi	a0,a0,-260 # 800040d0 <console_handler+0xf60>
    800031dc:	fffff097          	auipc	ra,0xfffff
    800031e0:	afc080e7          	jalr	-1284(ra) # 80001cd8 <__printf>
    800031e4:	01013403          	ld	s0,16(sp)
    800031e8:	01813083          	ld	ra,24(sp)
    800031ec:	00048513          	mv	a0,s1
    800031f0:	00813483          	ld	s1,8(sp)
    800031f4:	02010113          	addi	sp,sp,32
    800031f8:	ffffe317          	auipc	t1,0xffffe
    800031fc:	6d430067          	jr	1748(t1) # 800018cc <plic_complete>
    80003200:	fffff097          	auipc	ra,0xfffff
    80003204:	3e0080e7          	jalr	992(ra) # 800025e0 <uartintr>
    80003208:	fddff06f          	j	800031e4 <console_handler+0x74>
    8000320c:	00001517          	auipc	a0,0x1
    80003210:	fc450513          	addi	a0,a0,-60 # 800041d0 <digits+0x78>
    80003214:	fffff097          	auipc	ra,0xfffff
    80003218:	a68080e7          	jalr	-1432(ra) # 80001c7c <panic>
	...
