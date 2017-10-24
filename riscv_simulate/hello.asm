
hello:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100b0 <_start>:
   100b0:	00002197          	auipc	gp,0x2
   100b4:	ea818193          	addi	gp,gp,-344 # 11f58 <__global_pointer$>
   100b8:	81818513          	addi	a0,gp,-2024 # 11770 <_edata>
   100bc:	89018613          	addi	a2,gp,-1904 # 117e8 <_end>
   100c0:	8e09                	c.sub	a2,a0
   100c2:	4581                	c.li	a1,0
   100c4:	42c000ef          	jal	ra,104f0 <memset>
   100c8:	00000517          	auipc	a0,0x0
   100cc:	37250513          	addi	a0,a0,882 # 1043a <__libc_fini_array>
   100d0:	00000097          	auipc	ra,0x0
   100d4:	336080e7          	jalr	ra,822(ra) # 10406 <atexit>
   100d8:	00000097          	auipc	ra,0x0
   100dc:	3b0080e7          	jalr	ra,944(ra) # 10488 <__libc_init_array>
   100e0:	4502                	c.lwsp	a0,0(sp)
   100e2:	002c                	c.addi4spn	a1,sp,8
   100e4:	4601                	c.li	a2,0
   100e6:	2b6000ef          	jal	ra,1039c <main>
   100ea:	00000317          	auipc	t1,0x0
   100ee:	32a30067          	jalr	zero,810(t1) # 10414 <exit>

00000000000100f2 <_fini>:
   100f2:	8082                	c.jr	ra

00000000000100f4 <deregister_tm_clones>:
   100f4:	6545                	c.lui	a0,0x11
   100f6:	67c5                	c.lui	a5,0x11
   100f8:	75850713          	addi	a4,a0,1880 # 11758 <__TMC_END__>
   100fc:	75878793          	addi	a5,a5,1880 # 11758 <__TMC_END__>
   10100:	00e78b63          	beq	a5,a4,10116 <deregister_tm_clones+0x22>
   10104:	00000337          	lui	t1,0x0
   10108:	00030313          	addi	t1,t1,0 # 0 <_start-0x100b0>
   1010c:	00030563          	beq	t1,zero,10116 <deregister_tm_clones+0x22>
   10110:	75850513          	addi	a0,a0,1880
   10114:	8302                	c.jr	t1
   10116:	8082                	c.jr	ra

0000000000010118 <register_tm_clones>:
   10118:	67c5                	c.lui	a5,0x11
   1011a:	6545                	c.lui	a0,0x11
   1011c:	75878593          	addi	a1,a5,1880 # 11758 <__TMC_END__>
   10120:	75850793          	addi	a5,a0,1880 # 11758 <__TMC_END__>
   10124:	8d9d                	c.sub	a1,a5
   10126:	858d                	c.srai	a1,0x3
   10128:	4789                	c.li	a5,2
   1012a:	02f5c5b3          	div	a1,a1,a5
   1012e:	c991                	c.beqz	a1,10142 <register_tm_clones+0x2a>
   10130:	00000337          	lui	t1,0x0
   10134:	00030313          	addi	t1,t1,0 # 0 <_start-0x100b0>
   10138:	00030563          	beq	t1,zero,10142 <register_tm_clones+0x2a>
   1013c:	75850513          	addi	a0,a0,1880
   10140:	8302                	c.jr	t1
   10142:	8082                	c.jr	ra

0000000000010144 <__do_global_dtors_aux>:
   10144:	8201c703          	lbu	a4,-2016(gp) # 11778 <completed.5184>
   10148:	eb15                	c.bnez	a4,1017c <__do_global_dtors_aux+0x38>
   1014a:	1141                	c.addi	sp,-16
   1014c:	e022                	c.sdsp	s0,0(sp)
   1014e:	e406                	c.sdsp	ra,8(sp)
   10150:	843e                	c.mv	s0,a5
   10152:	fa3ff0ef          	jal	ra,100f4 <deregister_tm_clones>
   10156:	000007b7          	lui	a5,0x0
   1015a:	00078793          	addi	a5,a5,0 # 0 <_start-0x100b0>
   1015e:	cb81                	c.beqz	a5,1016e <__do_global_dtors_aux+0x2a>
   10160:	6545                	c.lui	a0,0x11
   10162:	ac050513          	addi	a0,a0,-1344 # 10ac0 <__EH_FRAME_BEGIN__>
   10166:	ffff0097          	auipc	ra,0xffff0
   1016a:	e9a080e7          	jalr	ra,-358(ra) # 0 <_start-0x100b0>
   1016e:	4785                	c.li	a5,1
   10170:	82f18023          	sb	a5,-2016(gp) # 11778 <completed.5184>
   10174:	60a2                	c.ldsp	ra,8(sp)
   10176:	6402                	c.ldsp	s0,0(sp)
   10178:	0141                	c.addi	sp,16
   1017a:	8082                	c.jr	ra
   1017c:	8082                	c.jr	ra

000000000001017e <frame_dummy>:
   1017e:	000007b7          	lui	a5,0x0
   10182:	00078793          	addi	a5,a5,0 # 0 <_start-0x100b0>
   10186:	cf99                	c.beqz	a5,101a4 <frame_dummy+0x26>
   10188:	65c5                	c.lui	a1,0x11
   1018a:	6545                	c.lui	a0,0x11
   1018c:	1141                	c.addi	sp,-16
   1018e:	78058593          	addi	a1,a1,1920 # 11780 <object.5189>
   10192:	ac050513          	addi	a0,a0,-1344 # 10ac0 <__EH_FRAME_BEGIN__>
   10196:	e406                	c.sdsp	ra,8(sp)
   10198:	ffff0097          	auipc	ra,0xffff0
   1019c:	e68080e7          	jalr	ra,-408(ra) # 0 <_start-0x100b0>
   101a0:	60a2                	c.ldsp	ra,8(sp)
   101a2:	0141                	c.addi	sp,16
   101a4:	f75ff06f          	jal	zero,10118 <register_tm_clones>

00000000000101a8 <qsort>:
   101a8:	fd010113          	addi	sp,sp,-48
   101ac:	02113423          	sd	ra,40(sp)
   101b0:	02813023          	sd	s0,32(sp)
   101b4:	03010413          	addi	s0,sp,48
   101b8:	fca43c23          	sd	a0,-40(s0)
   101bc:	00058793          	addi	a5,a1,0
   101c0:	00060713          	addi	a4,a2,0
   101c4:	fcf42a23          	sw	a5,-44(s0)
   101c8:	00070793          	addi	a5,a4,0
   101cc:	fcf42823          	sw	a5,-48(s0)
   101d0:	fd442703          	lw	a4,-44(s0)
   101d4:	fd042783          	lw	a5,-48(s0)
   101d8:	0007071b          	addiw	a4,a4,0
   101dc:	0007879b          	addiw	a5,a5,0
   101e0:	1af75463          	bge	a4,a5,10388 <qsort+0x1e0>
   101e4:	fd442783          	lw	a5,-44(s0)
   101e8:	fef42623          	sw	a5,-20(s0)
   101ec:	fd042783          	lw	a5,-48(s0)
   101f0:	fef42423          	sw	a5,-24(s0)
   101f4:	fd442783          	lw	a5,-44(s0)
   101f8:	00279793          	slli	a5,a5,0x2
   101fc:	fd843703          	ld	a4,-40(s0)
   10200:	00f707b3          	add	a5,a4,a5
   10204:	0007a783          	lw	a5,0(a5)
   10208:	fef42223          	sw	a5,-28(s0)
   1020c:	1100006f          	jal	zero,1031c <qsort+0x174>
   10210:	fe842783          	lw	a5,-24(s0)
   10214:	fff7879b          	addiw	a5,a5,-1
   10218:	fef42423          	sw	a5,-24(s0)
   1021c:	fec42703          	lw	a4,-20(s0)
   10220:	fe842783          	lw	a5,-24(s0)
   10224:	0007071b          	addiw	a4,a4,0
   10228:	0007879b          	addiw	a5,a5,0
   1022c:	02f75263          	bge	a4,a5,10250 <qsort+0xa8>
   10230:	fe842783          	lw	a5,-24(s0)
   10234:	00279793          	slli	a5,a5,0x2
   10238:	fd843703          	ld	a4,-40(s0)
   1023c:	00f707b3          	add	a5,a4,a5
   10240:	0007a703          	lw	a4,0(a5)
   10244:	fe442783          	lw	a5,-28(s0)
   10248:	0007879b          	addiw	a5,a5,0
   1024c:	fcf752e3          	bge	a4,a5,10210 <qsort+0x68>
   10250:	fec42703          	lw	a4,-20(s0)
   10254:	fe842783          	lw	a5,-24(s0)
   10258:	0007071b          	addiw	a4,a4,0
   1025c:	0007879b          	addiw	a5,a5,0
   10260:	04f75263          	bge	a4,a5,102a4 <qsort+0xfc>
   10264:	fe842783          	lw	a5,-24(s0)
   10268:	00279793          	slli	a5,a5,0x2
   1026c:	fd843703          	ld	a4,-40(s0)
   10270:	00f70733          	add	a4,a4,a5
   10274:	fec42783          	lw	a5,-20(s0)
   10278:	0017869b          	addiw	a3,a5,1
   1027c:	fed42623          	sw	a3,-20(s0)
   10280:	00279793          	slli	a5,a5,0x2
   10284:	fd843683          	ld	a3,-40(s0)
   10288:	00f687b3          	add	a5,a3,a5
   1028c:	00072703          	lw	a4,0(a4)
   10290:	00e7a023          	sw	a4,0(a5)
   10294:	0100006f          	jal	zero,102a4 <qsort+0xfc>
   10298:	fec42783          	lw	a5,-20(s0)
   1029c:	0017879b          	addiw	a5,a5,1
   102a0:	fef42623          	sw	a5,-20(s0)
   102a4:	fec42703          	lw	a4,-20(s0)
   102a8:	fe842783          	lw	a5,-24(s0)
   102ac:	0007071b          	addiw	a4,a4,0
   102b0:	0007879b          	addiw	a5,a5,0
   102b4:	02f75263          	bge	a4,a5,102d8 <qsort+0x130>
   102b8:	fec42783          	lw	a5,-20(s0)
   102bc:	00279793          	slli	a5,a5,0x2
   102c0:	fd843703          	ld	a4,-40(s0)
   102c4:	00f707b3          	add	a5,a4,a5
   102c8:	0007a703          	lw	a4,0(a5)
   102cc:	fe442783          	lw	a5,-28(s0)
   102d0:	0007879b          	addiw	a5,a5,0
   102d4:	fcf742e3          	blt	a4,a5,10298 <qsort+0xf0>
   102d8:	fec42703          	lw	a4,-20(s0)
   102dc:	fe842783          	lw	a5,-24(s0)
   102e0:	0007071b          	addiw	a4,a4,0
   102e4:	0007879b          	addiw	a5,a5,0
   102e8:	02f75a63          	bge	a4,a5,1031c <qsort+0x174>
   102ec:	fec42783          	lw	a5,-20(s0)
   102f0:	00279793          	slli	a5,a5,0x2
   102f4:	fd843703          	ld	a4,-40(s0)
   102f8:	00f70733          	add	a4,a4,a5
   102fc:	fe842783          	lw	a5,-24(s0)
   10300:	fff7869b          	addiw	a3,a5,-1
   10304:	fed42423          	sw	a3,-24(s0)
   10308:	00279793          	slli	a5,a5,0x2
   1030c:	fd843683          	ld	a3,-40(s0)
   10310:	00f687b3          	add	a5,a3,a5
   10314:	00072703          	lw	a4,0(a4)
   10318:	00e7a023          	sw	a4,0(a5)
   1031c:	fec42703          	lw	a4,-20(s0)
   10320:	fe842783          	lw	a5,-24(s0)
   10324:	0007071b          	addiw	a4,a4,0
   10328:	0007879b          	addiw	a5,a5,0
   1032c:	eef748e3          	blt	a4,a5,1021c <qsort+0x74>
   10330:	fec42783          	lw	a5,-20(s0)
   10334:	00279793          	slli	a5,a5,0x2
   10338:	fd843703          	ld	a4,-40(s0)
   1033c:	00f707b3          	add	a5,a4,a5
   10340:	fe442703          	lw	a4,-28(s0)
   10344:	00e7a023          	sw	a4,0(a5)
   10348:	fec42783          	lw	a5,-20(s0)
   1034c:	fff7879b          	addiw	a5,a5,-1
   10350:	0007871b          	addiw	a4,a5,0
   10354:	fd442783          	lw	a5,-44(s0)
   10358:	00070613          	addi	a2,a4,0
   1035c:	00078593          	addi	a1,a5,0
   10360:	fd843503          	ld	a0,-40(s0)
   10364:	e45ff0ef          	jal	ra,101a8 <qsort>
   10368:	fec42783          	lw	a5,-20(s0)
   1036c:	0017879b          	addiw	a5,a5,1
   10370:	0007879b          	addiw	a5,a5,0
   10374:	fd042703          	lw	a4,-48(s0)
   10378:	00070613          	addi	a2,a4,0
   1037c:	00078593          	addi	a1,a5,0
   10380:	fd843503          	ld	a0,-40(s0)
   10384:	e25ff0ef          	jal	ra,101a8 <qsort>
   10388:	00000013          	addi	zero,zero,0
   1038c:	02813083          	ld	ra,40(sp)
   10390:	02013403          	ld	s0,32(sp)
   10394:	03010113          	addi	sp,sp,48
   10398:	00008067          	jalr	zero,0(ra)

000000000001039c <main>:
   1039c:	fe010113          	addi	sp,sp,-32
   103a0:	00813c23          	sd	s0,24(sp)
   103a4:	02010413          	addi	s0,sp,32
   103a8:	fe042623          	sw	zero,-20(s0)
   103ac:	0340006f          	jal	zero,103e0 <main+0x44>
   103b0:	00a00713          	addi	a4,zero,10
   103b4:	fec42783          	lw	a5,-20(s0)
   103b8:	40f707bb          	subw	a5,a4,a5
   103bc:	0007871b          	addiw	a4,a5,0
   103c0:	fec42683          	lw	a3,-20(s0)
   103c4:	00269693          	slli	a3,a3,0x2
   103c8:	86818793          	addi	a5,gp,-1944 # 117c0 <x>
   103cc:	00f687b3          	add	a5,a3,a5
   103d0:	00e7a023          	sw	a4,0(a5)
   103d4:	fec42783          	lw	a5,-20(s0)
   103d8:	0017879b          	addiw	a5,a5,1
   103dc:	fef42623          	sw	a5,-20(s0)
   103e0:	fec42783          	lw	a5,-20(s0)
   103e4:	0007871b          	addiw	a4,a5,0
   103e8:	00900793          	addi	a5,zero,9
   103ec:	fce7d2e3          	bge	a5,a4,103b0 <main+0x14>
   103f0:	00000793          	addi	a5,zero,0
   103f4:	00078513          	addi	a0,a5,0
   103f8:	01813403          	ld	s0,24(sp)
   103fc:	02010113          	addi	sp,sp,32
   10400:	00008067          	jalr	zero,0(ra)
	...

0000000000010406 <atexit>:
   10406:	85aa                	c.mv	a1,a0
   10408:	4681                	c.li	a3,0
   1040a:	4601                	c.li	a2,0
   1040c:	4501                	c.li	a0,0
   1040e:	18c0006f          	jal	zero,1059a <__register_exitproc>
	...

0000000000010414 <exit>:
   10414:	1141                	c.addi	sp,-16
   10416:	4581                	c.li	a1,0
   10418:	e022                	c.sdsp	s0,0(sp)
   1041a:	e406                	c.sdsp	ra,8(sp)
   1041c:	842a                	c.mv	s0,a0
   1041e:	1e4000ef          	jal	ra,10602 <__call_exitprocs>
   10422:	67c5                	c.lui	a5,0x11
   10424:	7607b503          	ld	a0,1888(a5) # 11760 <_global_impure_ptr>
   10428:	6d3c                	c.ld	a5,88(a0)
   1042a:	c391                	c.beqz	a5,1042e <exit+0x1a>
   1042c:	9782                	c.jalr	a5
   1042e:	8522                	c.mv	a0,s0
   10430:	00000097          	auipc	ra,0x0
   10434:	66e080e7          	jalr	ra,1646(ra) # 10a9e <_exit>
	...

000000000001043a <__libc_fini_array>:
   1043a:	7179                	c.addi16sp	sp,-48
   1043c:	67c5                	c.lui	a5,0x11
   1043e:	6745                	c.lui	a4,0x11
   10440:	f022                	c.sdsp	s0,32(sp)
   10442:	00870713          	addi	a4,a4,8 # 11008 <__init_array_end>
   10446:	01078413          	addi	s0,a5,16 # 11010 <__fini_array_end>
   1044a:	8c19                	c.sub	s0,a4
   1044c:	ec26                	c.sdsp	s1,24(sp)
   1044e:	e84a                	c.sdsp	s2,16(sp)
   10450:	e44e                	c.sdsp	s3,8(sp)
   10452:	f406                	c.sdsp	ra,40(sp)
   10454:	840d                	c.srai	s0,0x3
   10456:	4481                	c.li	s1,0
   10458:	01078913          	addi	s2,a5,16
   1045c:	59e1                	c.li	s3,-8
   1045e:	00941c63          	bne	s0,s1,10476 <__libc_fini_array+0x3c>
   10462:	7402                	c.ldsp	s0,32(sp)
   10464:	70a2                	c.ldsp	ra,40(sp)
   10466:	64e2                	c.ldsp	s1,24(sp)
   10468:	6942                	c.ldsp	s2,16(sp)
   1046a:	69a2                	c.ldsp	s3,8(sp)
   1046c:	6145                	c.addi16sp	sp,48
   1046e:	00000317          	auipc	t1,0x0
   10472:	c8430067          	jalr	zero,-892(t1) # 100f2 <_fini>
   10476:	033487b3          	mul	a5,s1,s3
   1047a:	0485                	c.addi	s1,1
   1047c:	97ca                	c.add	a5,s2
   1047e:	ff87b783          	ld	a5,-8(a5)
   10482:	9782                	c.jalr	a5
   10484:	bfe9                	c.j	1045e <__libc_fini_array+0x24>
	...

0000000000010488 <__libc_init_array>:
   10488:	1101                	c.addi	sp,-32
   1048a:	e822                	c.sdsp	s0,16(sp)
   1048c:	e426                	c.sdsp	s1,8(sp)
   1048e:	6445                	c.lui	s0,0x11
   10490:	64c5                	c.lui	s1,0x11
   10492:	00048793          	addi	a5,s1,0 # 11000 <__frame_dummy_init_array_entry>
   10496:	00040413          	addi	s0,s0,0 # 11000 <__frame_dummy_init_array_entry>
   1049a:	8c1d                	c.sub	s0,a5
   1049c:	e04a                	c.sdsp	s2,0(sp)
   1049e:	ec06                	c.sdsp	ra,24(sp)
   104a0:	840d                	c.srai	s0,0x3
   104a2:	00048493          	addi	s1,s1,0
   104a6:	4901                	c.li	s2,0
   104a8:	02891963          	bne	s2,s0,104da <__libc_init_array+0x52>
   104ac:	64c5                	c.lui	s1,0x11
   104ae:	00000097          	auipc	ra,0x0
   104b2:	c44080e7          	jalr	ra,-956(ra) # 100f2 <_fini>
   104b6:	6445                	c.lui	s0,0x11
   104b8:	00048793          	addi	a5,s1,0 # 11000 <__frame_dummy_init_array_entry>
   104bc:	00840413          	addi	s0,s0,8 # 11008 <__init_array_end>
   104c0:	8c1d                	c.sub	s0,a5
   104c2:	840d                	c.srai	s0,0x3
   104c4:	00048493          	addi	s1,s1,0
   104c8:	4901                	c.li	s2,0
   104ca:	00891d63          	bne	s2,s0,104e4 <__libc_init_array+0x5c>
   104ce:	60e2                	c.ldsp	ra,24(sp)
   104d0:	6442                	c.ldsp	s0,16(sp)
   104d2:	64a2                	c.ldsp	s1,8(sp)
   104d4:	6902                	c.ldsp	s2,0(sp)
   104d6:	6105                	c.addi16sp	sp,32
   104d8:	8082                	c.jr	ra
   104da:	609c                	c.ld	a5,0(s1)
   104dc:	0905                	c.addi	s2,1
   104de:	04a1                	c.addi	s1,8
   104e0:	9782                	c.jalr	a5
   104e2:	b7d9                	c.j	104a8 <__libc_init_array+0x20>
   104e4:	609c                	c.ld	a5,0(s1)
   104e6:	0905                	c.addi	s2,1
   104e8:	04a1                	c.addi	s1,8
   104ea:	9782                	c.jalr	a5
   104ec:	bff9                	c.j	104ca <__libc_init_array+0x42>
	...

00000000000104f0 <memset>:
   104f0:	483d                	c.li	a6,15
   104f2:	872a                	c.mv	a4,a0
   104f4:	02c87163          	bgeu	a6,a2,10516 <memset+0x26>
   104f8:	00f77793          	andi	a5,a4,15
   104fc:	e3c1                	c.bnez	a5,1057c <memset+0x8c>
   104fe:	e1bd                	c.bnez	a1,10564 <memset+0x74>
   10500:	ff067693          	andi	a3,a2,-16
   10504:	8a3d                	c.andi	a2,15
   10506:	96ba                	c.add	a3,a4
   10508:	e30c                	c.sd	a1,0(a4)
   1050a:	e70c                	c.sd	a1,8(a4)
   1050c:	0741                	c.addi	a4,16
   1050e:	fed76de3          	bltu	a4,a3,10508 <memset+0x18>
   10512:	e211                	c.bnez	a2,10516 <memset+0x26>
   10514:	8082                	c.jr	ra
   10516:	40c806b3          	sub	a3,a6,a2
   1051a:	068a                	c.slli	a3,0x2
   1051c:	00000297          	auipc	t0,0x0
   10520:	9696                	c.add	a3,t0
   10522:	00a68067          	jalr	zero,10(a3)
   10526:	00b70723          	sb	a1,14(a4)
   1052a:	00b706a3          	sb	a1,13(a4)
   1052e:	00b70623          	sb	a1,12(a4)
   10532:	00b705a3          	sb	a1,11(a4)
   10536:	00b70523          	sb	a1,10(a4)
   1053a:	00b704a3          	sb	a1,9(a4)
   1053e:	00b70423          	sb	a1,8(a4)
   10542:	00b703a3          	sb	a1,7(a4)
   10546:	00b70323          	sb	a1,6(a4)
   1054a:	00b702a3          	sb	a1,5(a4)
   1054e:	00b70223          	sb	a1,4(a4)
   10552:	00b701a3          	sb	a1,3(a4)
   10556:	00b70123          	sb	a1,2(a4)
   1055a:	00b700a3          	sb	a1,1(a4)
   1055e:	00b70023          	sb	a1,0(a4)
   10562:	8082                	c.jr	ra
   10564:	0ff5f593          	andi	a1,a1,255
   10568:	00859693          	slli	a3,a1,0x8
   1056c:	8dd5                	c.or	a1,a3
   1056e:	01059693          	slli	a3,a1,0x10
   10572:	8dd5                	c.or	a1,a3
   10574:	02059693          	slli	a3,a1,0x20
   10578:	8dd5                	c.or	a1,a3
   1057a:	b759                	c.j	10500 <memset+0x10>
   1057c:	00279693          	slli	a3,a5,0x2
   10580:	00000297          	auipc	t0,0x0
   10584:	9696                	c.add	a3,t0
   10586:	8286                	c.mv	t0,ra
   10588:	fa2680e7          	jalr	ra,-94(a3)
   1058c:	8096                	c.mv	ra,t0
   1058e:	17c1                	c.addi	a5,-16
   10590:	8f1d                	c.sub	a4,a5
   10592:	963e                	c.add	a2,a5
   10594:	f8c871e3          	bgeu	a6,a2,10516 <memset+0x26>
   10598:	b79d                	c.j	104fe <memset+0xe>

000000000001059a <__register_exitproc>:
   1059a:	67c5                	c.lui	a5,0x11
   1059c:	7607b703          	ld	a4,1888(a5) # 11760 <_global_impure_ptr>
   105a0:	832a                	c.mv	t1,a0
   105a2:	1f873783          	ld	a5,504(a4)
   105a6:	e789                	c.bnez	a5,105b0 <__register_exitproc+0x16>
   105a8:	20070793          	addi	a5,a4,512
   105ac:	1ef73c23          	sd	a5,504(a4)
   105b0:	4798                	c.lw	a4,8(a5)
   105b2:	487d                	c.li	a6,31
   105b4:	557d                	c.li	a0,-1
   105b6:	04e84463          	blt	a6,a4,105fe <__register_exitproc+0x64>
   105ba:	02030a63          	beq	t1,zero,105ee <__register_exitproc+0x54>
   105be:	00371813          	slli	a6,a4,0x3
   105c2:	983e                	c.add	a6,a5
   105c4:	10c83823          	sd	a2,272(a6)
   105c8:	3107a883          	lw	a7,784(a5)
   105cc:	4605                	c.li	a2,1
   105ce:	00e6163b          	sllw	a2,a2,a4
   105d2:	00c8e8b3          	or	a7,a7,a2
   105d6:	3117a823          	sw	a7,784(a5)
   105da:	20d83823          	sd	a3,528(a6)
   105de:	4689                	c.li	a3,2
   105e0:	00d31763          	bne	t1,a3,105ee <__register_exitproc+0x54>
   105e4:	3147a683          	lw	a3,788(a5)
   105e8:	8e55                	c.or	a2,a3
   105ea:	30c7aa23          	sw	a2,788(a5)
   105ee:	0017069b          	addiw	a3,a4,1
   105f2:	0709                	c.addi	a4,2
   105f4:	070e                	c.slli	a4,0x3
   105f6:	c794                	c.sw	a3,8(a5)
   105f8:	97ba                	c.add	a5,a4
   105fa:	e38c                	c.sd	a1,0(a5)
   105fc:	4501                	c.li	a0,0
   105fe:	8082                	c.jr	ra
	...

0000000000010602 <__call_exitprocs>:
   10602:	715d                	c.addi16sp	sp,-80
   10604:	67c5                	c.lui	a5,0x11
   10606:	f44e                	c.sdsp	s3,40(sp)
   10608:	7607b983          	ld	s3,1888(a5) # 11760 <_global_impure_ptr>
   1060c:	f052                	c.sdsp	s4,32(sp)
   1060e:	ec56                	c.sdsp	s5,24(sp)
   10610:	e85a                	c.sdsp	s6,16(sp)
   10612:	e486                	c.sdsp	ra,72(sp)
   10614:	e0a2                	c.sdsp	s0,64(sp)
   10616:	fc26                	c.sdsp	s1,56(sp)
   10618:	f84a                	c.sdsp	s2,48(sp)
   1061a:	e45e                	c.sdsp	s7,8(sp)
   1061c:	8aaa                	c.mv	s5,a0
   1061e:	8a2e                	c.mv	s4,a1
   10620:	4b05                	c.li	s6,1
   10622:	1f89b403          	ld	s0,504(s3)
   10626:	c801                	c.beqz	s0,10636 <__call_exitprocs+0x34>
   10628:	4404                	c.lw	s1,8(s0)
   1062a:	34fd                	c.addiw	s1,-1
   1062c:	00349913          	slli	s2,s1,0x3
   10630:	9922                	c.add	s2,s0
   10632:	0004dd63          	bge	s1,zero,1064c <__call_exitprocs+0x4a>
   10636:	60a6                	c.ldsp	ra,72(sp)
   10638:	6406                	c.ldsp	s0,64(sp)
   1063a:	74e2                	c.ldsp	s1,56(sp)
   1063c:	7942                	c.ldsp	s2,48(sp)
   1063e:	79a2                	c.ldsp	s3,40(sp)
   10640:	7a02                	c.ldsp	s4,32(sp)
   10642:	6ae2                	c.ldsp	s5,24(sp)
   10644:	6b42                	c.ldsp	s6,16(sp)
   10646:	6ba2                	c.ldsp	s7,8(sp)
   10648:	6161                	c.addi16sp	sp,80
   1064a:	8082                	c.jr	ra
   1064c:	000a0963          	beq	s4,zero,1065e <__call_exitprocs+0x5c>
   10650:	21093783          	ld	a5,528(s2)
   10654:	01478563          	beq	a5,s4,1065e <__call_exitprocs+0x5c>
   10658:	34fd                	c.addiw	s1,-1
   1065a:	1961                	c.addi	s2,-8
   1065c:	bfd9                	c.j	10632 <__call_exitprocs+0x30>
   1065e:	441c                	c.lw	a5,8(s0)
   10660:	01093683          	ld	a3,16(s2)
   10664:	37fd                	c.addiw	a5,-1
   10666:	02979663          	bne	a5,s1,10692 <__call_exitprocs+0x90>
   1066a:	c404                	c.sw	s1,8(s0)
   1066c:	d6f5                	c.beqz	a3,10658 <__call_exitprocs+0x56>
   1066e:	31042703          	lw	a4,784(s0)
   10672:	009b163b          	sllw	a2,s6,s1
   10676:	00842b83          	lw	s7,8(s0)
   1067a:	8f71                	c.and	a4,a2
   1067c:	2701                	c.addiw	a4,0
   1067e:	ef09                	c.bnez	a4,10698 <__call_exitprocs+0x96>
   10680:	9682                	c.jalr	a3
   10682:	4418                	c.lw	a4,8(s0)
   10684:	1f89b783          	ld	a5,504(s3)
   10688:	f9771de3          	bne	a4,s7,10622 <__call_exitprocs+0x20>
   1068c:	fcf406e3          	beq	s0,a5,10658 <__call_exitprocs+0x56>
   10690:	bf49                	c.j	10622 <__call_exitprocs+0x20>
   10692:	00093823          	sd	zero,16(s2)
   10696:	bfd9                	c.j	1066c <__call_exitprocs+0x6a>
   10698:	31442783          	lw	a5,788(s0)
   1069c:	11093583          	ld	a1,272(s2)
   106a0:	8ff1                	c.and	a5,a2
   106a2:	2781                	c.addiw	a5,0
   106a4:	e781                	c.bnez	a5,106ac <__call_exitprocs+0xaa>
   106a6:	8556                	c.mv	a0,s5
   106a8:	9682                	c.jalr	a3
   106aa:	bfe1                	c.j	10682 <__call_exitprocs+0x80>
   106ac:	852e                	c.mv	a0,a1
   106ae:	9682                	c.jalr	a3
   106b0:	bfc9                	c.j	10682 <__call_exitprocs+0x80>
	...

00000000000106b4 <conv_stat>:
   106b4:	619c                	c.ld	a5,0(a1)
   106b6:	00f51023          	sh	a5,0(a0)
   106ba:	659c                	c.ld	a5,8(a1)
   106bc:	00f51123          	sh	a5,2(a0)
   106c0:	499c                	c.lw	a5,16(a1)
   106c2:	c15c                	c.sw	a5,4(a0)
   106c4:	49dc                	c.lw	a5,20(a1)
   106c6:	00f51423          	sh	a5,8(a0)
   106ca:	4d9c                	c.lw	a5,24(a1)
   106cc:	00f51523          	sh	a5,10(a0)
   106d0:	4ddc                	c.lw	a5,28(a1)
   106d2:	00f51623          	sh	a5,12(a0)
   106d6:	719c                	c.ld	a5,32(a1)
   106d8:	00f51723          	sh	a5,14(a0)
   106dc:	799c                	c.ld	a5,48(a1)
   106de:	e91c                	c.sd	a5,16(a0)
   106e0:	61bc                	c.ld	a5,64(a1)
   106e2:	e93c                	c.sd	a5,80(a0)
   106e4:	5d9c                	c.lw	a5,56(a1)
   106e6:	e53c                	c.sd	a5,72(a0)
   106e8:	65bc                	c.ld	a5,72(a1)
   106ea:	ed1c                	c.sd	a5,24(a0)
   106ec:	6dbc                	c.ld	a5,88(a1)
   106ee:	f51c                	c.sd	a5,40(a0)
   106f0:	75bc                	c.ld	a5,104(a1)
   106f2:	fd1c                	c.sd	a5,56(a0)
   106f4:	8082                	c.jr	ra

00000000000106f6 <__syscall_error>:
   106f6:	1141                	c.addi	sp,-16
   106f8:	e022                	c.sdsp	s0,0(sp)
   106fa:	e406                	c.sdsp	ra,8(sp)
   106fc:	842a                	c.mv	s0,a0
   106fe:	00000097          	auipc	ra,0x0
   10702:	3ba080e7          	jalr	ra,954(ra) # 10ab8 <__errno>
   10706:	408007bb          	subw	a5,zero,s0
   1070a:	60a2                	c.ldsp	ra,8(sp)
   1070c:	6402                	c.ldsp	s0,0(sp)
   1070e:	c11c                	c.sw	a5,0(a0)
   10710:	557d                	c.li	a0,-1
   10712:	0141                	c.addi	sp,16
   10714:	8082                	c.jr	ra

0000000000010716 <__internal_syscall>:
   10716:	88aa                	c.mv	a7,a0
   10718:	852e                	c.mv	a0,a1
   1071a:	85b2                	c.mv	a1,a2
   1071c:	8636                	c.mv	a2,a3
   1071e:	86ba                	c.mv	a3,a4
   10720:	00000073          	ecall
   10724:	00055663          	bge	a0,zero,10730 <__internal_syscall+0x1a>
   10728:	00000317          	auipc	t1,0x0
   1072c:	fce30067          	jalr	zero,-50(t1) # 106f6 <__syscall_error>
   10730:	8082                	c.jr	ra

0000000000010732 <open>:
   10732:	1141                	c.addi	sp,-16
   10734:	86b2                	c.mv	a3,a2
   10736:	4701                	c.li	a4,0
   10738:	862e                	c.mv	a2,a1
   1073a:	85aa                	c.mv	a1,a0
   1073c:	40000513          	addi	a0,zero,1024
   10740:	e406                	c.sdsp	ra,8(sp)
   10742:	00000097          	auipc	ra,0x0
   10746:	fd4080e7          	jalr	ra,-44(ra) # 10716 <__internal_syscall>
   1074a:	60a2                	c.ldsp	ra,8(sp)
   1074c:	2501                	c.addiw	a0,0
   1074e:	0141                	c.addi	sp,16
   10750:	8082                	c.jr	ra

0000000000010752 <openat>:
   10752:	1141                	c.addi	sp,-16
   10754:	8736                	c.mv	a4,a3
   10756:	86b2                	c.mv	a3,a2
   10758:	862e                	c.mv	a2,a1
   1075a:	85aa                	c.mv	a1,a0
   1075c:	03800513          	addi	a0,zero,56
   10760:	e406                	c.sdsp	ra,8(sp)
   10762:	fb5ff0ef          	jal	ra,10716 <__internal_syscall>
   10766:	60a2                	c.ldsp	ra,8(sp)
   10768:	2501                	c.addiw	a0,0
   1076a:	0141                	c.addi	sp,16
   1076c:	8082                	c.jr	ra

000000000001076e <lseek>:
   1076e:	86b2                	c.mv	a3,a2
   10770:	4701                	c.li	a4,0
   10772:	862e                	c.mv	a2,a1
   10774:	85aa                	c.mv	a1,a0
   10776:	03e00513          	addi	a0,zero,62
   1077a:	00000317          	auipc	t1,0x0
   1077e:	f9c30067          	jalr	zero,-100(t1) # 10716 <__internal_syscall>

0000000000010782 <read>:
   10782:	86b2                	c.mv	a3,a2
   10784:	4701                	c.li	a4,0
   10786:	862e                	c.mv	a2,a1
   10788:	85aa                	c.mv	a1,a0
   1078a:	03f00513          	addi	a0,zero,63
   1078e:	f89ff06f          	jal	zero,10716 <__internal_syscall>

0000000000010792 <write>:
   10792:	86b2                	c.mv	a3,a2
   10794:	4701                	c.li	a4,0
   10796:	862e                	c.mv	a2,a1
   10798:	85aa                	c.mv	a1,a0
   1079a:	04000513          	addi	a0,zero,64
   1079e:	00000317          	auipc	t1,0x0
   107a2:	f7830067          	jalr	zero,-136(t1) # 10716 <__internal_syscall>

00000000000107a6 <fstat>:
   107a6:	7135                	c.addi16sp	sp,-160
   107a8:	e526                	c.sdsp	s1,136(sp)
   107aa:	860a                	c.mv	a2,sp
   107ac:	84ae                	c.mv	s1,a1
   107ae:	4701                	c.li	a4,0
   107b0:	85aa                	c.mv	a1,a0
   107b2:	4681                	c.li	a3,0
   107b4:	05000513          	addi	a0,zero,80
   107b8:	ed06                	c.sdsp	ra,152(sp)
   107ba:	e922                	c.sdsp	s0,144(sp)
   107bc:	f5bff0ef          	jal	ra,10716 <__internal_syscall>
   107c0:	842a                	c.mv	s0,a0
   107c2:	858a                	c.mv	a1,sp
   107c4:	8526                	c.mv	a0,s1
   107c6:	eefff0ef          	jal	ra,106b4 <conv_stat>
   107ca:	0004051b          	addiw	a0,s0,0
   107ce:	60ea                	c.ldsp	ra,152(sp)
   107d0:	644a                	c.ldsp	s0,144(sp)
   107d2:	64aa                	c.ldsp	s1,136(sp)
   107d4:	610d                	c.addi16sp	sp,160
   107d6:	8082                	c.jr	ra

00000000000107d8 <stat>:
   107d8:	7135                	c.addi16sp	sp,-160
   107da:	e526                	c.sdsp	s1,136(sp)
   107dc:	860a                	c.mv	a2,sp
   107de:	84ae                	c.mv	s1,a1
   107e0:	4701                	c.li	a4,0
   107e2:	85aa                	c.mv	a1,a0
   107e4:	4681                	c.li	a3,0
   107e6:	40e00513          	addi	a0,zero,1038
   107ea:	ed06                	c.sdsp	ra,152(sp)
   107ec:	e922                	c.sdsp	s0,144(sp)
   107ee:	00000097          	auipc	ra,0x0
   107f2:	f28080e7          	jalr	ra,-216(ra) # 10716 <__internal_syscall>
   107f6:	842a                	c.mv	s0,a0
   107f8:	858a                	c.mv	a1,sp
   107fa:	8526                	c.mv	a0,s1
   107fc:	00000097          	auipc	ra,0x0
   10800:	eb8080e7          	jalr	ra,-328(ra) # 106b4 <conv_stat>
   10804:	0004051b          	addiw	a0,s0,0
   10808:	60ea                	c.ldsp	ra,152(sp)
   1080a:	644a                	c.ldsp	s0,144(sp)
   1080c:	64aa                	c.ldsp	s1,136(sp)
   1080e:	610d                	c.addi16sp	sp,160
   10810:	8082                	c.jr	ra

0000000000010812 <lstat>:
   10812:	7135                	c.addi16sp	sp,-160
   10814:	e526                	c.sdsp	s1,136(sp)
   10816:	860a                	c.mv	a2,sp
   10818:	84ae                	c.mv	s1,a1
   1081a:	4701                	c.li	a4,0
   1081c:	85aa                	c.mv	a1,a0
   1081e:	4681                	c.li	a3,0
   10820:	40f00513          	addi	a0,zero,1039
   10824:	ed06                	c.sdsp	ra,152(sp)
   10826:	e922                	c.sdsp	s0,144(sp)
   10828:	eefff0ef          	jal	ra,10716 <__internal_syscall>
   1082c:	842a                	c.mv	s0,a0
   1082e:	858a                	c.mv	a1,sp
   10830:	8526                	c.mv	a0,s1
   10832:	e83ff0ef          	jal	ra,106b4 <conv_stat>
   10836:	0004051b          	addiw	a0,s0,0
   1083a:	60ea                	c.ldsp	ra,152(sp)
   1083c:	644a                	c.ldsp	s0,144(sp)
   1083e:	64aa                	c.ldsp	s1,136(sp)
   10840:	610d                	c.addi16sp	sp,160
   10842:	8082                	c.jr	ra

0000000000010844 <fstatat>:
   10844:	7135                	c.addi16sp	sp,-160
   10846:	e526                	c.sdsp	s1,136(sp)
   10848:	8736                	c.mv	a4,a3
   1084a:	84b2                	c.mv	s1,a2
   1084c:	868a                	c.mv	a3,sp
   1084e:	862e                	c.mv	a2,a1
   10850:	85aa                	c.mv	a1,a0
   10852:	04f00513          	addi	a0,zero,79
   10856:	ed06                	c.sdsp	ra,152(sp)
   10858:	e922                	c.sdsp	s0,144(sp)
   1085a:	00000097          	auipc	ra,0x0
   1085e:	ebc080e7          	jalr	ra,-324(ra) # 10716 <__internal_syscall>
   10862:	842a                	c.mv	s0,a0
   10864:	858a                	c.mv	a1,sp
   10866:	8526                	c.mv	a0,s1
   10868:	00000097          	auipc	ra,0x0
   1086c:	e4c080e7          	jalr	ra,-436(ra) # 106b4 <conv_stat>
   10870:	0004051b          	addiw	a0,s0,0
   10874:	60ea                	c.ldsp	ra,152(sp)
   10876:	644a                	c.ldsp	s0,144(sp)
   10878:	64aa                	c.ldsp	s1,136(sp)
   1087a:	610d                	c.addi16sp	sp,160
   1087c:	8082                	c.jr	ra

000000000001087e <access>:
   1087e:	1141                	c.addi	sp,-16
   10880:	862e                	c.mv	a2,a1
   10882:	4701                	c.li	a4,0
   10884:	85aa                	c.mv	a1,a0
   10886:	4681                	c.li	a3,0
   10888:	40900513          	addi	a0,zero,1033
   1088c:	e406                	c.sdsp	ra,8(sp)
   1088e:	e89ff0ef          	jal	ra,10716 <__internal_syscall>
   10892:	60a2                	c.ldsp	ra,8(sp)
   10894:	2501                	c.addiw	a0,0
   10896:	0141                	c.addi	sp,16
   10898:	8082                	c.jr	ra

000000000001089a <faccessat>:
   1089a:	1141                	c.addi	sp,-16
   1089c:	8736                	c.mv	a4,a3
   1089e:	86b2                	c.mv	a3,a2
   108a0:	862e                	c.mv	a2,a1
   108a2:	85aa                	c.mv	a1,a0
   108a4:	03000513          	addi	a0,zero,48
   108a8:	e406                	c.sdsp	ra,8(sp)
   108aa:	00000097          	auipc	ra,0x0
   108ae:	e6c080e7          	jalr	ra,-404(ra) # 10716 <__internal_syscall>
   108b2:	60a2                	c.ldsp	ra,8(sp)
   108b4:	2501                	c.addiw	a0,0
   108b6:	0141                	c.addi	sp,16
   108b8:	8082                	c.jr	ra

00000000000108ba <close>:
   108ba:	1141                	c.addi	sp,-16
   108bc:	85aa                	c.mv	a1,a0
   108be:	4701                	c.li	a4,0
   108c0:	4681                	c.li	a3,0
   108c2:	4601                	c.li	a2,0
   108c4:	03900513          	addi	a0,zero,57
   108c8:	e406                	c.sdsp	ra,8(sp)
   108ca:	e4dff0ef          	jal	ra,10716 <__internal_syscall>
   108ce:	60a2                	c.ldsp	ra,8(sp)
   108d0:	2501                	c.addiw	a0,0
   108d2:	0141                	c.addi	sp,16
   108d4:	8082                	c.jr	ra

00000000000108d6 <link>:
   108d6:	1141                	c.addi	sp,-16
   108d8:	862e                	c.mv	a2,a1
   108da:	4701                	c.li	a4,0
   108dc:	85aa                	c.mv	a1,a0
   108de:	4681                	c.li	a3,0
   108e0:	40100513          	addi	a0,zero,1025
   108e4:	e406                	c.sdsp	ra,8(sp)
   108e6:	00000097          	auipc	ra,0x0
   108ea:	e30080e7          	jalr	ra,-464(ra) # 10716 <__internal_syscall>
   108ee:	60a2                	c.ldsp	ra,8(sp)
   108f0:	2501                	c.addiw	a0,0
   108f2:	0141                	c.addi	sp,16
   108f4:	8082                	c.jr	ra

00000000000108f6 <unlink>:
   108f6:	1141                	c.addi	sp,-16
   108f8:	85aa                	c.mv	a1,a0
   108fa:	4701                	c.li	a4,0
   108fc:	4681                	c.li	a3,0
   108fe:	4601                	c.li	a2,0
   10900:	40200513          	addi	a0,zero,1026
   10904:	e406                	c.sdsp	ra,8(sp)
   10906:	e11ff0ef          	jal	ra,10716 <__internal_syscall>
   1090a:	60a2                	c.ldsp	ra,8(sp)
   1090c:	2501                	c.addiw	a0,0
   1090e:	0141                	c.addi	sp,16
   10910:	8082                	c.jr	ra

0000000000010912 <execve>:
   10912:	1141                	c.addi	sp,-16
   10914:	e406                	c.sdsp	ra,8(sp)
   10916:	00000097          	auipc	ra,0x0
   1091a:	1a2080e7          	jalr	ra,418(ra) # 10ab8 <__errno>
   1091e:	60a2                	c.ldsp	ra,8(sp)
   10920:	47b1                	c.li	a5,12
   10922:	c11c                	c.sw	a5,0(a0)
   10924:	557d                	c.li	a0,-1
   10926:	0141                	c.addi	sp,16
   10928:	8082                	c.jr	ra

000000000001092a <fork>:
   1092a:	1141                	c.addi	sp,-16
   1092c:	e406                	c.sdsp	ra,8(sp)
   1092e:	18a000ef          	jal	ra,10ab8 <__errno>
   10932:	60a2                	c.ldsp	ra,8(sp)
   10934:	47ad                	c.li	a5,11
   10936:	c11c                	c.sw	a5,0(a0)
   10938:	557d                	c.li	a0,-1
   1093a:	0141                	c.addi	sp,16
   1093c:	8082                	c.jr	ra

000000000001093e <getpid>:
   1093e:	4505                	c.li	a0,1
   10940:	8082                	c.jr	ra

0000000000010942 <kill>:
   10942:	1141                	c.addi	sp,-16
   10944:	e406                	c.sdsp	ra,8(sp)
   10946:	172000ef          	jal	ra,10ab8 <__errno>
   1094a:	60a2                	c.ldsp	ra,8(sp)
   1094c:	47d9                	c.li	a5,22
   1094e:	c11c                	c.sw	a5,0(a0)
   10950:	557d                	c.li	a0,-1
   10952:	0141                	c.addi	sp,16
   10954:	8082                	c.jr	ra

0000000000010956 <wait>:
   10956:	1141                	c.addi	sp,-16
   10958:	e406                	c.sdsp	ra,8(sp)
   1095a:	00000097          	auipc	ra,0x0
   1095e:	15e080e7          	jalr	ra,350(ra) # 10ab8 <__errno>
   10962:	60a2                	c.ldsp	ra,8(sp)
   10964:	47a9                	c.li	a5,10
   10966:	c11c                	c.sw	a5,0(a0)
   10968:	557d                	c.li	a0,-1
   1096a:	0141                	c.addi	sp,16
   1096c:	8082                	c.jr	ra

000000000001096e <isatty>:
   1096e:	7119                	c.addi16sp	sp,-128
   10970:	002c                	c.addi4spn	a1,sp,8
   10972:	fc86                	c.sdsp	ra,120(sp)
   10974:	e33ff0ef          	jal	ra,107a6 <fstat>
   10978:	57fd                	c.li	a5,-1
   1097a:	00f50663          	beq	a0,a5,10986 <isatty+0x18>
   1097e:	4532                	c.lwsp	a0,12(sp)
   10980:	40d5551b          	sraiw	a0,a0,0xd
   10984:	8905                	c.andi	a0,1
   10986:	70e6                	c.ldsp	ra,120(sp)
   10988:	6109                	c.addi16sp	sp,128
   1098a:	8082                	c.jr	ra

000000000001098c <gettimeofday>:
   1098c:	1141                	c.addi	sp,-16
   1098e:	85aa                	c.mv	a1,a0
   10990:	4701                	c.li	a4,0
   10992:	4681                	c.li	a3,0
   10994:	4601                	c.li	a2,0
   10996:	0a900513          	addi	a0,zero,169
   1099a:	e406                	c.sdsp	ra,8(sp)
   1099c:	00000097          	auipc	ra,0x0
   109a0:	d7a080e7          	jalr	ra,-646(ra) # 10716 <__internal_syscall>
   109a4:	60a2                	c.ldsp	ra,8(sp)
   109a6:	2501                	c.addiw	a0,0
   109a8:	0141                	c.addi	sp,16
   109aa:	8082                	c.jr	ra

00000000000109ac <times>:
   109ac:	7179                	c.addi16sp	sp,-48
   109ae:	f022                	c.sdsp	s0,32(sp)
   109b0:	842a                	c.mv	s0,a0
   109b2:	8581b783          	ld	a5,-1960(gp) # 117b0 <t0.2574>
   109b6:	ec26                	c.sdsp	s1,24(sp)
   109b8:	f406                	c.sdsp	ra,40(sp)
   109ba:	85818493          	addi	s1,gp,-1960 # 117b0 <t0.2574>
   109be:	eb81                	c.bnez	a5,109ce <times+0x22>
   109c0:	4581                	c.li	a1,0
   109c2:	85818513          	addi	a0,gp,-1960 # 117b0 <t0.2574>
   109c6:	00000097          	auipc	ra,0x0
   109ca:	fc6080e7          	jalr	ra,-58(ra) # 1098c <gettimeofday>
   109ce:	850a                	c.mv	a0,sp
   109d0:	4581                	c.li	a1,0
   109d2:	00000097          	auipc	ra,0x0
   109d6:	fba080e7          	jalr	ra,-70(ra) # 1098c <gettimeofday>
   109da:	6098                	c.ld	a4,0(s1)
   109dc:	6782                	c.ldsp	a5,0(sp)
   109de:	6494                	c.ld	a3,8(s1)
   109e0:	00043823          	sd	zero,16(s0)
   109e4:	8f99                	c.sub	a5,a4
   109e6:	000f4737          	lui	a4,0xf4
   109ea:	24070713          	addi	a4,a4,576 # f4240 <__global_pointer$+0xe22e8>
   109ee:	02e787b3          	mul	a5,a5,a4
   109f2:	6722                	c.ldsp	a4,8(sp)
   109f4:	00043c23          	sd	zero,24(s0)
   109f8:	00043423          	sd	zero,8(s0)
   109fc:	8f15                	c.sub	a4,a3
   109fe:	70a2                	c.ldsp	ra,40(sp)
   10a00:	64e2                	c.ldsp	s1,24(sp)
   10a02:	557d                	c.li	a0,-1
   10a04:	97ba                	c.add	a5,a4
   10a06:	e01c                	c.sd	a5,0(s0)
   10a08:	7402                	c.ldsp	s0,32(sp)
   10a0a:	6145                	c.addi16sp	sp,48
   10a0c:	8082                	c.jr	ra

0000000000010a0e <ftime>:
   10a0e:	00051423          	sh	zero,8(a0)
   10a12:	00053023          	sd	zero,0(a0)
   10a16:	4501                	c.li	a0,0
   10a18:	8082                	c.jr	ra

0000000000010a1a <utime>:
   10a1a:	557d                	c.li	a0,-1
   10a1c:	8082                	c.jr	ra

0000000000010a1e <chown>:
   10a1e:	557d                	c.li	a0,-1
   10a20:	8082                	c.jr	ra

0000000000010a22 <chmod>:
   10a22:	557d                	c.li	a0,-1
   10a24:	8082                	c.jr	ra

0000000000010a26 <chdir>:
   10a26:	557d                	c.li	a0,-1
   10a28:	8082                	c.jr	ra

0000000000010a2a <getcwd>:
   10a2a:	4501                	c.li	a0,0
   10a2c:	8082                	c.jr	ra

0000000000010a2e <sysconf>:
   10a2e:	4789                	c.li	a5,2
   10a30:	00f50463          	beq	a0,a5,10a38 <sysconf+0xa>
   10a34:	557d                	c.li	a0,-1
   10a36:	8082                	c.jr	ra
   10a38:	000f4537          	lui	a0,0xf4
   10a3c:	24050513          	addi	a0,a0,576 # f4240 <__global_pointer$+0xe22e8>
   10a40:	8082                	c.jr	ra

0000000000010a42 <sbrk>:
   10a42:	1101                	c.addi	sp,-32
   10a44:	e822                	c.sdsp	s0,16(sp)
   10a46:	8181b783          	ld	a5,-2024(gp) # 11770 <_edata>
   10a4a:	e426                	c.sdsp	s1,8(sp)
   10a4c:	ec06                	c.sdsp	ra,24(sp)
   10a4e:	84aa                	c.mv	s1,a0
   10a50:	e785                	c.bnez	a5,10a78 <sbrk+0x36>
   10a52:	4701                	c.li	a4,0
   10a54:	4681                	c.li	a3,0
   10a56:	4601                	c.li	a2,0
   10a58:	4581                	c.li	a1,0
   10a5a:	0d600513          	addi	a0,zero,214
   10a5e:	cb9ff0ef          	jal	ra,10716 <__internal_syscall>
   10a62:	57fd                	c.li	a5,-1
   10a64:	00f51863          	bne	a0,a5,10a74 <sbrk+0x32>
   10a68:	557d                	c.li	a0,-1
   10a6a:	60e2                	c.ldsp	ra,24(sp)
   10a6c:	6442                	c.ldsp	s0,16(sp)
   10a6e:	64a2                	c.ldsp	s1,8(sp)
   10a70:	6105                	c.addi16sp	sp,32
   10a72:	8082                	c.jr	ra
   10a74:	80a1bc23          	sd	a0,-2024(gp) # 11770 <_edata>
   10a78:	8181b583          	ld	a1,-2024(gp) # 11770 <_edata>
   10a7c:	4701                	c.li	a4,0
   10a7e:	4681                	c.li	a3,0
   10a80:	95a6                	c.add	a1,s1
   10a82:	4601                	c.li	a2,0
   10a84:	0d600513          	addi	a0,zero,214
   10a88:	c8fff0ef          	jal	ra,10716 <__internal_syscall>
   10a8c:	8181b783          	ld	a5,-2024(gp) # 11770 <_edata>
   10a90:	94be                	c.add	s1,a5
   10a92:	fc951be3          	bne	a0,s1,10a68 <sbrk+0x26>
   10a96:	80a1bc23          	sd	a0,-2024(gp) # 11770 <_edata>
   10a9a:	853e                	c.mv	a0,a5
   10a9c:	b7f9                	c.j	10a6a <sbrk+0x28>

0000000000010a9e <_exit>:
   10a9e:	1141                	c.addi	sp,-16
   10aa0:	85aa                	c.mv	a1,a0
   10aa2:	4701                	c.li	a4,0
   10aa4:	4681                	c.li	a3,0
   10aa6:	4601                	c.li	a2,0
   10aa8:	05d00513          	addi	a0,zero,93
   10aac:	e406                	c.sdsp	ra,8(sp)
   10aae:	00000097          	auipc	ra,0x0
   10ab2:	c68080e7          	jalr	ra,-920(ra) # 10716 <__internal_syscall>
   10ab6:	a001                	c.j	10ab6 <_exit+0x18>

0000000000010ab8 <__errno>:
   10ab8:	8101b503          	ld	a0,-2032(gp) # 11768 <_impure_ptr>
   10abc:	8082                	c.jr	ra
	...

Disassembly of section .eh_frame:

0000000000010ac0 <__EH_FRAME_BEGIN__>:
   10ac0:	0000                	unimp
	...

Disassembly of section .init_array:

0000000000011000 <__frame_dummy_init_array_entry>:
   11000:	017e                	c.slli	sp,0x1f
   11002:	0001                	c.addi	zero,0
   11004:	0000                	unimp
	...

Disassembly of section .fini_array:

0000000000011008 <__do_global_dtors_aux_fini_array_entry>:
   11008:	0144                	c.addi4spn	s1,sp,132
   1100a:	0001                	c.addi	zero,0
   1100c:	0000                	unimp
	...

Disassembly of section .data:

0000000000011010 <impure_data>:
	...
   11018:	1548                	c.addi4spn	a0,sp,676
   1101a:	0001                	c.addi	zero,0
   1101c:	0000                	unimp
   1101e:	0000                	unimp
   11020:	15f8                	c.addi4spn	a4,sp,748
   11022:	0001                	c.addi	zero,0
   11024:	0000                	unimp
   11026:	0000                	unimp
   11028:	16a8                	c.addi4spn	a0,sp,872
   1102a:	0001                	c.addi	zero,0
	...
   110f8:	0001                	c.addi	zero,0
   110fa:	0000                	unimp
   110fc:	0000                	unimp
   110fe:	0000                	unimp
   11100:	330e                	c.fldsp	ft6,224(sp)
   11102:	abcd                	c.j	116f4 <impure_data+0x6e4>
   11104:	1234                	c.addi4spn	a3,sp,296
   11106:	e66d                	c.bnez	a2,111f0 <impure_data+0x1e0>
   11108:	deec                	c.sw	a1,124(a3)
   1110a:	0005                	c.addi	zero,1
   1110c:	0000000b          	0xb
	...

Disassembly of section .sdata:

0000000000011758 <__TMC_END__>:
	...

0000000000011760 <_global_impure_ptr>:
   11760:	1010                	c.addi4spn	a2,sp,32
   11762:	0001                	c.addi	zero,0
   11764:	0000                	unimp
	...

0000000000011768 <_impure_ptr>:
   11768:	1010                	c.addi4spn	a2,sp,32
   1176a:	0001                	c.addi	zero,0
   1176c:	0000                	unimp
	...

Disassembly of section .sbss:

0000000000011770 <__bss_start>:
	...

Disassembly of section .bss:

0000000000011778 <completed.5184>:
	...

0000000000011780 <object.5189>:
	...

00000000000117b0 <t0.2574>:
	...

00000000000117c0 <x>:
	...

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	3a434347          	fmsub.d	ft6,ft6,ft4,ft7,rmm
   4:	2820                	c.fld	fs0,80(s0)
   6:	29554e47          	fmsub.s	ft8,fa0,fs5,ft5,rmm
   a:	3720                	c.fld	fs0,104(a4)
   c:	312e                	c.fldsp	ft2,232(sp)
   e:	312e                	c.fldsp	ft2,232(sp)
  10:	3220                	c.fld	fs0,96(a2)
  12:	3130                	c.fld	fa2,96(a0)
  14:	30353037          	lui	zero,0x30353
  18:	0039                	c.addi	zero,14
