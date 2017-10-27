
matrix:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100b0 <_start>:
   100b0:	00002197          	auipc	gp,0x2
   100b4:	ea818193          	addi	gp,gp,-344 # 11f58 <__global_pointer$>
   100b8:	81818513          	addi	a0,gp,-2024 # 11770 <_edata>
   100bc:	d1818613          	addi	a2,gp,-744 # 11c70 <_end>
   100c0:	8e09                	c.sub	a2,a0
   100c2:	4581                	c.li	a1,0
   100c4:	3d8000ef          	jal	ra,1049c <memset>
   100c8:	00000517          	auipc	a0,0x0
   100cc:	31e50513          	addi	a0,a0,798 # 103e6 <__libc_fini_array>
   100d0:	00000097          	auipc	ra,0x0
   100d4:	2e2080e7          	jalr	ra,738(ra) # 103b2 <atexit>
   100d8:	00000097          	auipc	ra,0x0
   100dc:	35c080e7          	jalr	ra,860(ra) # 10434 <__libc_init_array>
   100e0:	4502                	c.lwsp	a0,0(sp)
   100e2:	002c                	c.addi4spn	a1,sp,8
   100e4:	4601                	c.li	a2,0
   100e6:	1ee000ef          	jal	ra,102d4 <main>
   100ea:	00000317          	auipc	t1,0x0
   100ee:	2d630067          	jalr	zero,726(t1) # 103c0 <exit>

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
   10162:	a7050513          	addi	a0,a0,-1424 # 10a70 <__EH_FRAME_BEGIN__>
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
   10192:	a7050513          	addi	a0,a0,-1424 # 10a70 <__EH_FRAME_BEGIN__>
   10196:	e406                	c.sdsp	ra,8(sp)
   10198:	ffff0097          	auipc	ra,0xffff0
   1019c:	e68080e7          	jalr	ra,-408(ra) # 0 <_start-0x100b0>
   101a0:	60a2                	c.ldsp	ra,8(sp)
   101a2:	0141                	c.addi	sp,16
   101a4:	f75ff06f          	jal	zero,10118 <register_tm_clones>

00000000000101a8 <_Z14matrixMultiplev>:
   101a8:	fe010113          	addi	sp,sp,-32
   101ac:	00813c23          	sd	s0,24(sp)
   101b0:	02010413          	addi	s0,sp,32
   101b4:	fe042623          	sw	zero,-20(s0)
   101b8:	fec42783          	lw	a5,-20(s0)
   101bc:	0007871b          	addiw	a4,a5,0
   101c0:	00900793          	addi	a5,zero,9
   101c4:	10e7c063          	blt	a5,a4,102c4 <_Z14matrixMultiplev+0x11c>
   101c8:	fe042423          	sw	zero,-24(s0)
   101cc:	fe842783          	lw	a5,-24(s0)
   101d0:	0007871b          	addiw	a4,a5,0
   101d4:	00900793          	addi	a5,zero,9
   101d8:	0ce7ce63          	blt	a5,a4,102b4 <_Z14matrixMultiplev+0x10c>
   101dc:	fe042223          	sw	zero,-28(s0)
   101e0:	fe042023          	sw	zero,-32(s0)
   101e4:	fe042783          	lw	a5,-32(s0)
   101e8:	0007871b          	addiw	a4,a5,0
   101ec:	00900793          	addi	a5,zero,9
   101f0:	08e7c263          	blt	a5,a4,10274 <_Z14matrixMultiplev+0xcc>
   101f4:	000116b7          	lui	a3,0x11
   101f8:	fe042603          	lw	a2,-32(s0)
   101fc:	fec42703          	lw	a4,-20(s0)
   10200:	00070793          	addi	a5,a4,0
   10204:	00279793          	slli	a5,a5,0x2
   10208:	00e787b3          	add	a5,a5,a4
   1020c:	00179793          	slli	a5,a5,0x1
   10210:	00c787b3          	add	a5,a5,a2
   10214:	00279713          	slli	a4,a5,0x2
   10218:	7b068793          	addi	a5,a3,1968 # 117b0 <a>
   1021c:	00f707b3          	add	a5,a4,a5
   10220:	0007a683          	lw	a3,0(a5)
   10224:	fe842583          	lw	a1,-24(s0)
   10228:	fe042703          	lw	a4,-32(s0)
   1022c:	00070793          	addi	a5,a4,0
   10230:	00279793          	slli	a5,a5,0x2
   10234:	00e787b3          	add	a5,a5,a4
   10238:	00179793          	slli	a5,a5,0x1
   1023c:	00b787b3          	add	a5,a5,a1
   10240:	00279713          	slli	a4,a5,0x2
   10244:	9e818793          	addi	a5,gp,-1560 # 11940 <b>
   10248:	00f707b3          	add	a5,a4,a5
   1024c:	0007a783          	lw	a5,0(a5)
   10250:	02f687bb          	mulw	a5,a3,a5
   10254:	0007879b          	addiw	a5,a5,0
   10258:	fe442703          	lw	a4,-28(s0)
   1025c:	00f707bb          	addw	a5,a4,a5
   10260:	fef42223          	sw	a5,-28(s0)
   10264:	fe042783          	lw	a5,-32(s0)
   10268:	0017879b          	addiw	a5,a5,1
   1026c:	fef42023          	sw	a5,-32(s0)
   10270:	f75ff06f          	jal	zero,101e4 <_Z14matrixMultiplev+0x3c>
   10274:	fe842603          	lw	a2,-24(s0)
   10278:	fec42703          	lw	a4,-20(s0)
   1027c:	00070793          	addi	a5,a4,0
   10280:	00279793          	slli	a5,a5,0x2
   10284:	00e787b3          	add	a5,a5,a4
   10288:	00179793          	slli	a5,a5,0x1
   1028c:	00c787b3          	add	a5,a5,a2
   10290:	00279713          	slli	a4,a5,0x2
   10294:	b7818793          	addi	a5,gp,-1160 # 11ad0 <c>
   10298:	00f707b3          	add	a5,a4,a5
   1029c:	fe442703          	lw	a4,-28(s0)
   102a0:	00e7a023          	sw	a4,0(a5)
   102a4:	fe842783          	lw	a5,-24(s0)
   102a8:	0017879b          	addiw	a5,a5,1
   102ac:	fef42423          	sw	a5,-24(s0)
   102b0:	f1dff06f          	jal	zero,101cc <_Z14matrixMultiplev+0x24>
   102b4:	fec42783          	lw	a5,-20(s0)
   102b8:	0017879b          	addiw	a5,a5,1
   102bc:	fef42623          	sw	a5,-20(s0)
   102c0:	ef9ff06f          	jal	zero,101b8 <_Z14matrixMultiplev+0x10>
   102c4:	00000013          	addi	zero,zero,0
   102c8:	01813403          	ld	s0,24(sp)
   102cc:	02010113          	addi	sp,sp,32
   102d0:	00008067          	jalr	zero,0(ra)

00000000000102d4 <main>:
   102d4:	fe010113          	addi	sp,sp,-32
   102d8:	00113c23          	sd	ra,24(sp)
   102dc:	00813823          	sd	s0,16(sp)
   102e0:	02010413          	addi	s0,sp,32
   102e4:	fe042623          	sw	zero,-20(s0)
   102e8:	fec42783          	lw	a5,-20(s0)
   102ec:	0007871b          	addiw	a4,a5,0
   102f0:	00900793          	addi	a5,zero,9
   102f4:	08e7ce63          	blt	a5,a4,10390 <main+0xbc>
   102f8:	fe042423          	sw	zero,-24(s0)
   102fc:	fe842783          	lw	a5,-24(s0)
   10300:	0007871b          	addiw	a4,a5,0
   10304:	00900793          	addi	a5,zero,9
   10308:	06e7cc63          	blt	a5,a4,10380 <main+0xac>
   1030c:	000116b7          	lui	a3,0x11
   10310:	fe842603          	lw	a2,-24(s0)
   10314:	fec42703          	lw	a4,-20(s0)
   10318:	00070793          	addi	a5,a4,0
   1031c:	00279793          	slli	a5,a5,0x2
   10320:	00e787b3          	add	a5,a5,a4
   10324:	00179793          	slli	a5,a5,0x1
   10328:	00c787b3          	add	a5,a5,a2
   1032c:	00279713          	slli	a4,a5,0x2
   10330:	7b068793          	addi	a5,a3,1968 # 117b0 <a>
   10334:	00f707b3          	add	a5,a4,a5
   10338:	fec42703          	lw	a4,-20(s0)
   1033c:	00e7a023          	sw	a4,0(a5)
   10340:	fe842603          	lw	a2,-24(s0)
   10344:	fec42703          	lw	a4,-20(s0)
   10348:	00070793          	addi	a5,a4,0
   1034c:	00279793          	slli	a5,a5,0x2
   10350:	00e787b3          	add	a5,a5,a4
   10354:	00179793          	slli	a5,a5,0x1
   10358:	00c787b3          	add	a5,a5,a2
   1035c:	00279713          	slli	a4,a5,0x2
   10360:	9e818793          	addi	a5,gp,-1560 # 11940 <b>
   10364:	00f707b3          	add	a5,a4,a5
   10368:	fe842703          	lw	a4,-24(s0)
   1036c:	00e7a023          	sw	a4,0(a5)
   10370:	fe842783          	lw	a5,-24(s0)
   10374:	0017879b          	addiw	a5,a5,1
   10378:	fef42423          	sw	a5,-24(s0)
   1037c:	f81ff06f          	jal	zero,102fc <main+0x28>
   10380:	fec42783          	lw	a5,-20(s0)
   10384:	0017879b          	addiw	a5,a5,1
   10388:	fef42623          	sw	a5,-20(s0)
   1038c:	f5dff06f          	jal	zero,102e8 <main+0x14>
   10390:	00000097          	auipc	ra,0x0
   10394:	e18080e7          	jalr	ra,-488(ra) # 101a8 <_Z14matrixMultiplev>
   10398:	00000793          	addi	a5,zero,0
   1039c:	00078513          	addi	a0,a5,0
   103a0:	01813083          	ld	ra,24(sp)
   103a4:	01013403          	ld	s0,16(sp)
   103a8:	02010113          	addi	sp,sp,32
   103ac:	00008067          	jalr	zero,0(ra)
	...

00000000000103b2 <atexit>:
   103b2:	85aa                	c.mv	a1,a0
   103b4:	4681                	c.li	a3,0
   103b6:	4601                	c.li	a2,0
   103b8:	4501                	c.li	a0,0
   103ba:	18c0006f          	jal	zero,10546 <__register_exitproc>
	...

00000000000103c0 <exit>:
   103c0:	1141                	c.addi	sp,-16
   103c2:	4581                	c.li	a1,0
   103c4:	e022                	c.sdsp	s0,0(sp)
   103c6:	e406                	c.sdsp	ra,8(sp)
   103c8:	842a                	c.mv	s0,a0
   103ca:	1e4000ef          	jal	ra,105ae <__call_exitprocs>
   103ce:	67c5                	c.lui	a5,0x11
   103d0:	7607b503          	ld	a0,1888(a5) # 11760 <_global_impure_ptr>
   103d4:	6d3c                	c.ld	a5,88(a0)
   103d6:	c391                	c.beqz	a5,103da <exit+0x1a>
   103d8:	9782                	c.jalr	a5
   103da:	8522                	c.mv	a0,s0
   103dc:	00000097          	auipc	ra,0x0
   103e0:	66e080e7          	jalr	ra,1646(ra) # 10a4a <_exit>
	...

00000000000103e6 <__libc_fini_array>:
   103e6:	7179                	c.addi16sp	sp,-48
   103e8:	67c5                	c.lui	a5,0x11
   103ea:	6745                	c.lui	a4,0x11
   103ec:	f022                	c.sdsp	s0,32(sp)
   103ee:	00870713          	addi	a4,a4,8 # 11008 <__init_array_end>
   103f2:	01078413          	addi	s0,a5,16 # 11010 <__fini_array_end>
   103f6:	8c19                	c.sub	s0,a4
   103f8:	ec26                	c.sdsp	s1,24(sp)
   103fa:	e84a                	c.sdsp	s2,16(sp)
   103fc:	e44e                	c.sdsp	s3,8(sp)
   103fe:	f406                	c.sdsp	ra,40(sp)
   10400:	840d                	c.srai	s0,0x3
   10402:	4481                	c.li	s1,0
   10404:	01078913          	addi	s2,a5,16
   10408:	59e1                	c.li	s3,-8
   1040a:	00941c63          	bne	s0,s1,10422 <__libc_fini_array+0x3c>
   1040e:	7402                	c.ldsp	s0,32(sp)
   10410:	70a2                	c.ldsp	ra,40(sp)
   10412:	64e2                	c.ldsp	s1,24(sp)
   10414:	6942                	c.ldsp	s2,16(sp)
   10416:	69a2                	c.ldsp	s3,8(sp)
   10418:	6145                	c.addi16sp	sp,48
   1041a:	00000317          	auipc	t1,0x0
   1041e:	cd830067          	jalr	zero,-808(t1) # 100f2 <_fini>
   10422:	033487b3          	mul	a5,s1,s3
   10426:	0485                	c.addi	s1,1
   10428:	97ca                	c.add	a5,s2
   1042a:	ff87b783          	ld	a5,-8(a5)
   1042e:	9782                	c.jalr	a5
   10430:	bfe9                	c.j	1040a <__libc_fini_array+0x24>
	...

0000000000010434 <__libc_init_array>:
   10434:	1101                	c.addi	sp,-32
   10436:	e822                	c.sdsp	s0,16(sp)
   10438:	e426                	c.sdsp	s1,8(sp)
   1043a:	6445                	c.lui	s0,0x11
   1043c:	64c5                	c.lui	s1,0x11
   1043e:	00048793          	addi	a5,s1,0 # 11000 <__frame_dummy_init_array_entry>
   10442:	00040413          	addi	s0,s0,0 # 11000 <__frame_dummy_init_array_entry>
   10446:	8c1d                	c.sub	s0,a5
   10448:	e04a                	c.sdsp	s2,0(sp)
   1044a:	ec06                	c.sdsp	ra,24(sp)
   1044c:	840d                	c.srai	s0,0x3
   1044e:	00048493          	addi	s1,s1,0
   10452:	4901                	c.li	s2,0
   10454:	02891963          	bne	s2,s0,10486 <__libc_init_array+0x52>
   10458:	64c5                	c.lui	s1,0x11
   1045a:	00000097          	auipc	ra,0x0
   1045e:	c98080e7          	jalr	ra,-872(ra) # 100f2 <_fini>
   10462:	6445                	c.lui	s0,0x11
   10464:	00048793          	addi	a5,s1,0 # 11000 <__frame_dummy_init_array_entry>
   10468:	00840413          	addi	s0,s0,8 # 11008 <__init_array_end>
   1046c:	8c1d                	c.sub	s0,a5
   1046e:	840d                	c.srai	s0,0x3
   10470:	00048493          	addi	s1,s1,0
   10474:	4901                	c.li	s2,0
   10476:	00891d63          	bne	s2,s0,10490 <__libc_init_array+0x5c>
   1047a:	60e2                	c.ldsp	ra,24(sp)
   1047c:	6442                	c.ldsp	s0,16(sp)
   1047e:	64a2                	c.ldsp	s1,8(sp)
   10480:	6902                	c.ldsp	s2,0(sp)
   10482:	6105                	c.addi16sp	sp,32
   10484:	8082                	c.jr	ra
   10486:	609c                	c.ld	a5,0(s1)
   10488:	0905                	c.addi	s2,1
   1048a:	04a1                	c.addi	s1,8
   1048c:	9782                	c.jalr	a5
   1048e:	b7d9                	c.j	10454 <__libc_init_array+0x20>
   10490:	609c                	c.ld	a5,0(s1)
   10492:	0905                	c.addi	s2,1
   10494:	04a1                	c.addi	s1,8
   10496:	9782                	c.jalr	a5
   10498:	bff9                	c.j	10476 <__libc_init_array+0x42>
	...

000000000001049c <memset>:
   1049c:	483d                	c.li	a6,15
   1049e:	872a                	c.mv	a4,a0
   104a0:	02c87163          	bgeu	a6,a2,104c2 <memset+0x26>
   104a4:	00f77793          	andi	a5,a4,15
   104a8:	e3c1                	c.bnez	a5,10528 <memset+0x8c>
   104aa:	e1bd                	c.bnez	a1,10510 <memset+0x74>
   104ac:	ff067693          	andi	a3,a2,-16
   104b0:	8a3d                	c.andi	a2,15
   104b2:	96ba                	c.add	a3,a4
   104b4:	e30c                	c.sd	a1,0(a4)
   104b6:	e70c                	c.sd	a1,8(a4)
   104b8:	0741                	c.addi	a4,16
   104ba:	fed76de3          	bltu	a4,a3,104b4 <memset+0x18>
   104be:	e211                	c.bnez	a2,104c2 <memset+0x26>
   104c0:	8082                	c.jr	ra
   104c2:	40c806b3          	sub	a3,a6,a2
   104c6:	068a                	c.slli	a3,0x2
   104c8:	00000297          	auipc	t0,0x0
   104cc:	9696                	c.add	a3,t0
   104ce:	00a68067          	jalr	zero,10(a3)
   104d2:	00b70723          	sb	a1,14(a4)
   104d6:	00b706a3          	sb	a1,13(a4)
   104da:	00b70623          	sb	a1,12(a4)
   104de:	00b705a3          	sb	a1,11(a4)
   104e2:	00b70523          	sb	a1,10(a4)
   104e6:	00b704a3          	sb	a1,9(a4)
   104ea:	00b70423          	sb	a1,8(a4)
   104ee:	00b703a3          	sb	a1,7(a4)
   104f2:	00b70323          	sb	a1,6(a4)
   104f6:	00b702a3          	sb	a1,5(a4)
   104fa:	00b70223          	sb	a1,4(a4)
   104fe:	00b701a3          	sb	a1,3(a4)
   10502:	00b70123          	sb	a1,2(a4)
   10506:	00b700a3          	sb	a1,1(a4)
   1050a:	00b70023          	sb	a1,0(a4)
   1050e:	8082                	c.jr	ra
   10510:	0ff5f593          	andi	a1,a1,255
   10514:	00859693          	slli	a3,a1,0x8
   10518:	8dd5                	c.or	a1,a3
   1051a:	01059693          	slli	a3,a1,0x10
   1051e:	8dd5                	c.or	a1,a3
   10520:	02059693          	slli	a3,a1,0x20
   10524:	8dd5                	c.or	a1,a3
   10526:	b759                	c.j	104ac <memset+0x10>
   10528:	00279693          	slli	a3,a5,0x2
   1052c:	00000297          	auipc	t0,0x0
   10530:	9696                	c.add	a3,t0
   10532:	8286                	c.mv	t0,ra
   10534:	fa2680e7          	jalr	ra,-94(a3)
   10538:	8096                	c.mv	ra,t0
   1053a:	17c1                	c.addi	a5,-16
   1053c:	8f1d                	c.sub	a4,a5
   1053e:	963e                	c.add	a2,a5
   10540:	f8c871e3          	bgeu	a6,a2,104c2 <memset+0x26>
   10544:	b79d                	c.j	104aa <memset+0xe>

0000000000010546 <__register_exitproc>:
   10546:	67c5                	c.lui	a5,0x11
   10548:	7607b703          	ld	a4,1888(a5) # 11760 <_global_impure_ptr>
   1054c:	832a                	c.mv	t1,a0
   1054e:	1f873783          	ld	a5,504(a4)
   10552:	e789                	c.bnez	a5,1055c <__register_exitproc+0x16>
   10554:	20070793          	addi	a5,a4,512
   10558:	1ef73c23          	sd	a5,504(a4)
   1055c:	4798                	c.lw	a4,8(a5)
   1055e:	487d                	c.li	a6,31
   10560:	557d                	c.li	a0,-1
   10562:	04e84463          	blt	a6,a4,105aa <__register_exitproc+0x64>
   10566:	02030a63          	beq	t1,zero,1059a <__register_exitproc+0x54>
   1056a:	00371813          	slli	a6,a4,0x3
   1056e:	983e                	c.add	a6,a5
   10570:	10c83823          	sd	a2,272(a6)
   10574:	3107a883          	lw	a7,784(a5)
   10578:	4605                	c.li	a2,1
   1057a:	00e6163b          	sllw	a2,a2,a4
   1057e:	00c8e8b3          	or	a7,a7,a2
   10582:	3117a823          	sw	a7,784(a5)
   10586:	20d83823          	sd	a3,528(a6)
   1058a:	4689                	c.li	a3,2
   1058c:	00d31763          	bne	t1,a3,1059a <__register_exitproc+0x54>
   10590:	3147a683          	lw	a3,788(a5)
   10594:	8e55                	c.or	a2,a3
   10596:	30c7aa23          	sw	a2,788(a5)
   1059a:	0017069b          	addiw	a3,a4,1
   1059e:	0709                	c.addi	a4,2
   105a0:	070e                	c.slli	a4,0x3
   105a2:	c794                	c.sw	a3,8(a5)
   105a4:	97ba                	c.add	a5,a4
   105a6:	e38c                	c.sd	a1,0(a5)
   105a8:	4501                	c.li	a0,0
   105aa:	8082                	c.jr	ra
	...

00000000000105ae <__call_exitprocs>:
   105ae:	715d                	c.addi16sp	sp,-80
   105b0:	67c5                	c.lui	a5,0x11
   105b2:	f44e                	c.sdsp	s3,40(sp)
   105b4:	7607b983          	ld	s3,1888(a5) # 11760 <_global_impure_ptr>
   105b8:	f052                	c.sdsp	s4,32(sp)
   105ba:	ec56                	c.sdsp	s5,24(sp)
   105bc:	e85a                	c.sdsp	s6,16(sp)
   105be:	e486                	c.sdsp	ra,72(sp)
   105c0:	e0a2                	c.sdsp	s0,64(sp)
   105c2:	fc26                	c.sdsp	s1,56(sp)
   105c4:	f84a                	c.sdsp	s2,48(sp)
   105c6:	e45e                	c.sdsp	s7,8(sp)
   105c8:	8aaa                	c.mv	s5,a0
   105ca:	8a2e                	c.mv	s4,a1
   105cc:	4b05                	c.li	s6,1
   105ce:	1f89b403          	ld	s0,504(s3)
   105d2:	c801                	c.beqz	s0,105e2 <__call_exitprocs+0x34>
   105d4:	4404                	c.lw	s1,8(s0)
   105d6:	34fd                	c.addiw	s1,-1
   105d8:	00349913          	slli	s2,s1,0x3
   105dc:	9922                	c.add	s2,s0
   105de:	0004dd63          	bge	s1,zero,105f8 <__call_exitprocs+0x4a>
   105e2:	60a6                	c.ldsp	ra,72(sp)
   105e4:	6406                	c.ldsp	s0,64(sp)
   105e6:	74e2                	c.ldsp	s1,56(sp)
   105e8:	7942                	c.ldsp	s2,48(sp)
   105ea:	79a2                	c.ldsp	s3,40(sp)
   105ec:	7a02                	c.ldsp	s4,32(sp)
   105ee:	6ae2                	c.ldsp	s5,24(sp)
   105f0:	6b42                	c.ldsp	s6,16(sp)
   105f2:	6ba2                	c.ldsp	s7,8(sp)
   105f4:	6161                	c.addi16sp	sp,80
   105f6:	8082                	c.jr	ra
   105f8:	000a0963          	beq	s4,zero,1060a <__call_exitprocs+0x5c>
   105fc:	21093783          	ld	a5,528(s2)
   10600:	01478563          	beq	a5,s4,1060a <__call_exitprocs+0x5c>
   10604:	34fd                	c.addiw	s1,-1
   10606:	1961                	c.addi	s2,-8
   10608:	bfd9                	c.j	105de <__call_exitprocs+0x30>
   1060a:	441c                	c.lw	a5,8(s0)
   1060c:	01093683          	ld	a3,16(s2)
   10610:	37fd                	c.addiw	a5,-1
   10612:	02979663          	bne	a5,s1,1063e <__call_exitprocs+0x90>
   10616:	c404                	c.sw	s1,8(s0)
   10618:	d6f5                	c.beqz	a3,10604 <__call_exitprocs+0x56>
   1061a:	31042703          	lw	a4,784(s0)
   1061e:	009b163b          	sllw	a2,s6,s1
   10622:	00842b83          	lw	s7,8(s0)
   10626:	8f71                	c.and	a4,a2
   10628:	2701                	c.addiw	a4,0
   1062a:	ef09                	c.bnez	a4,10644 <__call_exitprocs+0x96>
   1062c:	9682                	c.jalr	a3
   1062e:	4418                	c.lw	a4,8(s0)
   10630:	1f89b783          	ld	a5,504(s3)
   10634:	f9771de3          	bne	a4,s7,105ce <__call_exitprocs+0x20>
   10638:	fcf406e3          	beq	s0,a5,10604 <__call_exitprocs+0x56>
   1063c:	bf49                	c.j	105ce <__call_exitprocs+0x20>
   1063e:	00093823          	sd	zero,16(s2)
   10642:	bfd9                	c.j	10618 <__call_exitprocs+0x6a>
   10644:	31442783          	lw	a5,788(s0)
   10648:	11093583          	ld	a1,272(s2)
   1064c:	8ff1                	c.and	a5,a2
   1064e:	2781                	c.addiw	a5,0
   10650:	e781                	c.bnez	a5,10658 <__call_exitprocs+0xaa>
   10652:	8556                	c.mv	a0,s5
   10654:	9682                	c.jalr	a3
   10656:	bfe1                	c.j	1062e <__call_exitprocs+0x80>
   10658:	852e                	c.mv	a0,a1
   1065a:	9682                	c.jalr	a3
   1065c:	bfc9                	c.j	1062e <__call_exitprocs+0x80>
	...

0000000000010660 <conv_stat>:
   10660:	619c                	c.ld	a5,0(a1)
   10662:	00f51023          	sh	a5,0(a0)
   10666:	659c                	c.ld	a5,8(a1)
   10668:	00f51123          	sh	a5,2(a0)
   1066c:	499c                	c.lw	a5,16(a1)
   1066e:	c15c                	c.sw	a5,4(a0)
   10670:	49dc                	c.lw	a5,20(a1)
   10672:	00f51423          	sh	a5,8(a0)
   10676:	4d9c                	c.lw	a5,24(a1)
   10678:	00f51523          	sh	a5,10(a0)
   1067c:	4ddc                	c.lw	a5,28(a1)
   1067e:	00f51623          	sh	a5,12(a0)
   10682:	719c                	c.ld	a5,32(a1)
   10684:	00f51723          	sh	a5,14(a0)
   10688:	799c                	c.ld	a5,48(a1)
   1068a:	e91c                	c.sd	a5,16(a0)
   1068c:	61bc                	c.ld	a5,64(a1)
   1068e:	e93c                	c.sd	a5,80(a0)
   10690:	5d9c                	c.lw	a5,56(a1)
   10692:	e53c                	c.sd	a5,72(a0)
   10694:	65bc                	c.ld	a5,72(a1)
   10696:	ed1c                	c.sd	a5,24(a0)
   10698:	6dbc                	c.ld	a5,88(a1)
   1069a:	f51c                	c.sd	a5,40(a0)
   1069c:	75bc                	c.ld	a5,104(a1)
   1069e:	fd1c                	c.sd	a5,56(a0)
   106a0:	8082                	c.jr	ra

00000000000106a2 <__syscall_error>:
   106a2:	1141                	c.addi	sp,-16
   106a4:	e022                	c.sdsp	s0,0(sp)
   106a6:	e406                	c.sdsp	ra,8(sp)
   106a8:	842a                	c.mv	s0,a0
   106aa:	00000097          	auipc	ra,0x0
   106ae:	3ba080e7          	jalr	ra,954(ra) # 10a64 <__errno>
   106b2:	408007bb          	subw	a5,zero,s0
   106b6:	60a2                	c.ldsp	ra,8(sp)
   106b8:	6402                	c.ldsp	s0,0(sp)
   106ba:	c11c                	c.sw	a5,0(a0)
   106bc:	557d                	c.li	a0,-1
   106be:	0141                	c.addi	sp,16
   106c0:	8082                	c.jr	ra

00000000000106c2 <__internal_syscall>:
   106c2:	88aa                	c.mv	a7,a0
   106c4:	852e                	c.mv	a0,a1
   106c6:	85b2                	c.mv	a1,a2
   106c8:	8636                	c.mv	a2,a3
   106ca:	86ba                	c.mv	a3,a4
   106cc:	00000073          	ecall
   106d0:	00055663          	bge	a0,zero,106dc <__internal_syscall+0x1a>
   106d4:	00000317          	auipc	t1,0x0
   106d8:	fce30067          	jalr	zero,-50(t1) # 106a2 <__syscall_error>
   106dc:	8082                	c.jr	ra

00000000000106de <open>:
   106de:	1141                	c.addi	sp,-16
   106e0:	86b2                	c.mv	a3,a2
   106e2:	4701                	c.li	a4,0
   106e4:	862e                	c.mv	a2,a1
   106e6:	85aa                	c.mv	a1,a0
   106e8:	40000513          	addi	a0,zero,1024
   106ec:	e406                	c.sdsp	ra,8(sp)
   106ee:	00000097          	auipc	ra,0x0
   106f2:	fd4080e7          	jalr	ra,-44(ra) # 106c2 <__internal_syscall>
   106f6:	60a2                	c.ldsp	ra,8(sp)
   106f8:	2501                	c.addiw	a0,0
   106fa:	0141                	c.addi	sp,16
   106fc:	8082                	c.jr	ra

00000000000106fe <openat>:
   106fe:	1141                	c.addi	sp,-16
   10700:	8736                	c.mv	a4,a3
   10702:	86b2                	c.mv	a3,a2
   10704:	862e                	c.mv	a2,a1
   10706:	85aa                	c.mv	a1,a0
   10708:	03800513          	addi	a0,zero,56
   1070c:	e406                	c.sdsp	ra,8(sp)
   1070e:	fb5ff0ef          	jal	ra,106c2 <__internal_syscall>
   10712:	60a2                	c.ldsp	ra,8(sp)
   10714:	2501                	c.addiw	a0,0
   10716:	0141                	c.addi	sp,16
   10718:	8082                	c.jr	ra

000000000001071a <lseek>:
   1071a:	86b2                	c.mv	a3,a2
   1071c:	4701                	c.li	a4,0
   1071e:	862e                	c.mv	a2,a1
   10720:	85aa                	c.mv	a1,a0
   10722:	03e00513          	addi	a0,zero,62
   10726:	00000317          	auipc	t1,0x0
   1072a:	f9c30067          	jalr	zero,-100(t1) # 106c2 <__internal_syscall>

000000000001072e <read>:
   1072e:	86b2                	c.mv	a3,a2
   10730:	4701                	c.li	a4,0
   10732:	862e                	c.mv	a2,a1
   10734:	85aa                	c.mv	a1,a0
   10736:	03f00513          	addi	a0,zero,63
   1073a:	f89ff06f          	jal	zero,106c2 <__internal_syscall>

000000000001073e <write>:
   1073e:	86b2                	c.mv	a3,a2
   10740:	4701                	c.li	a4,0
   10742:	862e                	c.mv	a2,a1
   10744:	85aa                	c.mv	a1,a0
   10746:	04000513          	addi	a0,zero,64
   1074a:	00000317          	auipc	t1,0x0
   1074e:	f7830067          	jalr	zero,-136(t1) # 106c2 <__internal_syscall>

0000000000010752 <fstat>:
   10752:	7135                	c.addi16sp	sp,-160
   10754:	e526                	c.sdsp	s1,136(sp)
   10756:	860a                	c.mv	a2,sp
   10758:	84ae                	c.mv	s1,a1
   1075a:	4701                	c.li	a4,0
   1075c:	85aa                	c.mv	a1,a0
   1075e:	4681                	c.li	a3,0
   10760:	05000513          	addi	a0,zero,80
   10764:	ed06                	c.sdsp	ra,152(sp)
   10766:	e922                	c.sdsp	s0,144(sp)
   10768:	f5bff0ef          	jal	ra,106c2 <__internal_syscall>
   1076c:	842a                	c.mv	s0,a0
   1076e:	858a                	c.mv	a1,sp
   10770:	8526                	c.mv	a0,s1
   10772:	eefff0ef          	jal	ra,10660 <conv_stat>
   10776:	0004051b          	addiw	a0,s0,0
   1077a:	60ea                	c.ldsp	ra,152(sp)
   1077c:	644a                	c.ldsp	s0,144(sp)
   1077e:	64aa                	c.ldsp	s1,136(sp)
   10780:	610d                	c.addi16sp	sp,160
   10782:	8082                	c.jr	ra

0000000000010784 <stat>:
   10784:	7135                	c.addi16sp	sp,-160
   10786:	e526                	c.sdsp	s1,136(sp)
   10788:	860a                	c.mv	a2,sp
   1078a:	84ae                	c.mv	s1,a1
   1078c:	4701                	c.li	a4,0
   1078e:	85aa                	c.mv	a1,a0
   10790:	4681                	c.li	a3,0
   10792:	40e00513          	addi	a0,zero,1038
   10796:	ed06                	c.sdsp	ra,152(sp)
   10798:	e922                	c.sdsp	s0,144(sp)
   1079a:	00000097          	auipc	ra,0x0
   1079e:	f28080e7          	jalr	ra,-216(ra) # 106c2 <__internal_syscall>
   107a2:	842a                	c.mv	s0,a0
   107a4:	858a                	c.mv	a1,sp
   107a6:	8526                	c.mv	a0,s1
   107a8:	00000097          	auipc	ra,0x0
   107ac:	eb8080e7          	jalr	ra,-328(ra) # 10660 <conv_stat>
   107b0:	0004051b          	addiw	a0,s0,0
   107b4:	60ea                	c.ldsp	ra,152(sp)
   107b6:	644a                	c.ldsp	s0,144(sp)
   107b8:	64aa                	c.ldsp	s1,136(sp)
   107ba:	610d                	c.addi16sp	sp,160
   107bc:	8082                	c.jr	ra

00000000000107be <lstat>:
   107be:	7135                	c.addi16sp	sp,-160
   107c0:	e526                	c.sdsp	s1,136(sp)
   107c2:	860a                	c.mv	a2,sp
   107c4:	84ae                	c.mv	s1,a1
   107c6:	4701                	c.li	a4,0
   107c8:	85aa                	c.mv	a1,a0
   107ca:	4681                	c.li	a3,0
   107cc:	40f00513          	addi	a0,zero,1039
   107d0:	ed06                	c.sdsp	ra,152(sp)
   107d2:	e922                	c.sdsp	s0,144(sp)
   107d4:	eefff0ef          	jal	ra,106c2 <__internal_syscall>
   107d8:	842a                	c.mv	s0,a0
   107da:	858a                	c.mv	a1,sp
   107dc:	8526                	c.mv	a0,s1
   107de:	e83ff0ef          	jal	ra,10660 <conv_stat>
   107e2:	0004051b          	addiw	a0,s0,0
   107e6:	60ea                	c.ldsp	ra,152(sp)
   107e8:	644a                	c.ldsp	s0,144(sp)
   107ea:	64aa                	c.ldsp	s1,136(sp)
   107ec:	610d                	c.addi16sp	sp,160
   107ee:	8082                	c.jr	ra

00000000000107f0 <fstatat>:
   107f0:	7135                	c.addi16sp	sp,-160
   107f2:	e526                	c.sdsp	s1,136(sp)
   107f4:	8736                	c.mv	a4,a3
   107f6:	84b2                	c.mv	s1,a2
   107f8:	868a                	c.mv	a3,sp
   107fa:	862e                	c.mv	a2,a1
   107fc:	85aa                	c.mv	a1,a0
   107fe:	04f00513          	addi	a0,zero,79
   10802:	ed06                	c.sdsp	ra,152(sp)
   10804:	e922                	c.sdsp	s0,144(sp)
   10806:	00000097          	auipc	ra,0x0
   1080a:	ebc080e7          	jalr	ra,-324(ra) # 106c2 <__internal_syscall>
   1080e:	842a                	c.mv	s0,a0
   10810:	858a                	c.mv	a1,sp
   10812:	8526                	c.mv	a0,s1
   10814:	00000097          	auipc	ra,0x0
   10818:	e4c080e7          	jalr	ra,-436(ra) # 10660 <conv_stat>
   1081c:	0004051b          	addiw	a0,s0,0
   10820:	60ea                	c.ldsp	ra,152(sp)
   10822:	644a                	c.ldsp	s0,144(sp)
   10824:	64aa                	c.ldsp	s1,136(sp)
   10826:	610d                	c.addi16sp	sp,160
   10828:	8082                	c.jr	ra

000000000001082a <access>:
   1082a:	1141                	c.addi	sp,-16
   1082c:	862e                	c.mv	a2,a1
   1082e:	4701                	c.li	a4,0
   10830:	85aa                	c.mv	a1,a0
   10832:	4681                	c.li	a3,0
   10834:	40900513          	addi	a0,zero,1033
   10838:	e406                	c.sdsp	ra,8(sp)
   1083a:	e89ff0ef          	jal	ra,106c2 <__internal_syscall>
   1083e:	60a2                	c.ldsp	ra,8(sp)
   10840:	2501                	c.addiw	a0,0
   10842:	0141                	c.addi	sp,16
   10844:	8082                	c.jr	ra

0000000000010846 <faccessat>:
   10846:	1141                	c.addi	sp,-16
   10848:	8736                	c.mv	a4,a3
   1084a:	86b2                	c.mv	a3,a2
   1084c:	862e                	c.mv	a2,a1
   1084e:	85aa                	c.mv	a1,a0
   10850:	03000513          	addi	a0,zero,48
   10854:	e406                	c.sdsp	ra,8(sp)
   10856:	00000097          	auipc	ra,0x0
   1085a:	e6c080e7          	jalr	ra,-404(ra) # 106c2 <__internal_syscall>
   1085e:	60a2                	c.ldsp	ra,8(sp)
   10860:	2501                	c.addiw	a0,0
   10862:	0141                	c.addi	sp,16
   10864:	8082                	c.jr	ra

0000000000010866 <close>:
   10866:	1141                	c.addi	sp,-16
   10868:	85aa                	c.mv	a1,a0
   1086a:	4701                	c.li	a4,0
   1086c:	4681                	c.li	a3,0
   1086e:	4601                	c.li	a2,0
   10870:	03900513          	addi	a0,zero,57
   10874:	e406                	c.sdsp	ra,8(sp)
   10876:	e4dff0ef          	jal	ra,106c2 <__internal_syscall>
   1087a:	60a2                	c.ldsp	ra,8(sp)
   1087c:	2501                	c.addiw	a0,0
   1087e:	0141                	c.addi	sp,16
   10880:	8082                	c.jr	ra

0000000000010882 <link>:
   10882:	1141                	c.addi	sp,-16
   10884:	862e                	c.mv	a2,a1
   10886:	4701                	c.li	a4,0
   10888:	85aa                	c.mv	a1,a0
   1088a:	4681                	c.li	a3,0
   1088c:	40100513          	addi	a0,zero,1025
   10890:	e406                	c.sdsp	ra,8(sp)
   10892:	00000097          	auipc	ra,0x0
   10896:	e30080e7          	jalr	ra,-464(ra) # 106c2 <__internal_syscall>
   1089a:	60a2                	c.ldsp	ra,8(sp)
   1089c:	2501                	c.addiw	a0,0
   1089e:	0141                	c.addi	sp,16
   108a0:	8082                	c.jr	ra

00000000000108a2 <unlink>:
   108a2:	1141                	c.addi	sp,-16
   108a4:	85aa                	c.mv	a1,a0
   108a6:	4701                	c.li	a4,0
   108a8:	4681                	c.li	a3,0
   108aa:	4601                	c.li	a2,0
   108ac:	40200513          	addi	a0,zero,1026
   108b0:	e406                	c.sdsp	ra,8(sp)
   108b2:	e11ff0ef          	jal	ra,106c2 <__internal_syscall>
   108b6:	60a2                	c.ldsp	ra,8(sp)
   108b8:	2501                	c.addiw	a0,0
   108ba:	0141                	c.addi	sp,16
   108bc:	8082                	c.jr	ra

00000000000108be <execve>:
   108be:	1141                	c.addi	sp,-16
   108c0:	e406                	c.sdsp	ra,8(sp)
   108c2:	00000097          	auipc	ra,0x0
   108c6:	1a2080e7          	jalr	ra,418(ra) # 10a64 <__errno>
   108ca:	60a2                	c.ldsp	ra,8(sp)
   108cc:	47b1                	c.li	a5,12
   108ce:	c11c                	c.sw	a5,0(a0)
   108d0:	557d                	c.li	a0,-1
   108d2:	0141                	c.addi	sp,16
   108d4:	8082                	c.jr	ra

00000000000108d6 <fork>:
   108d6:	1141                	c.addi	sp,-16
   108d8:	e406                	c.sdsp	ra,8(sp)
   108da:	18a000ef          	jal	ra,10a64 <__errno>
   108de:	60a2                	c.ldsp	ra,8(sp)
   108e0:	47ad                	c.li	a5,11
   108e2:	c11c                	c.sw	a5,0(a0)
   108e4:	557d                	c.li	a0,-1
   108e6:	0141                	c.addi	sp,16
   108e8:	8082                	c.jr	ra

00000000000108ea <getpid>:
   108ea:	4505                	c.li	a0,1
   108ec:	8082                	c.jr	ra

00000000000108ee <kill>:
   108ee:	1141                	c.addi	sp,-16
   108f0:	e406                	c.sdsp	ra,8(sp)
   108f2:	172000ef          	jal	ra,10a64 <__errno>
   108f6:	60a2                	c.ldsp	ra,8(sp)
   108f8:	47d9                	c.li	a5,22
   108fa:	c11c                	c.sw	a5,0(a0)
   108fc:	557d                	c.li	a0,-1
   108fe:	0141                	c.addi	sp,16
   10900:	8082                	c.jr	ra

0000000000010902 <wait>:
   10902:	1141                	c.addi	sp,-16
   10904:	e406                	c.sdsp	ra,8(sp)
   10906:	00000097          	auipc	ra,0x0
   1090a:	15e080e7          	jalr	ra,350(ra) # 10a64 <__errno>
   1090e:	60a2                	c.ldsp	ra,8(sp)
   10910:	47a9                	c.li	a5,10
   10912:	c11c                	c.sw	a5,0(a0)
   10914:	557d                	c.li	a0,-1
   10916:	0141                	c.addi	sp,16
   10918:	8082                	c.jr	ra

000000000001091a <isatty>:
   1091a:	7119                	c.addi16sp	sp,-128
   1091c:	002c                	c.addi4spn	a1,sp,8
   1091e:	fc86                	c.sdsp	ra,120(sp)
   10920:	e33ff0ef          	jal	ra,10752 <fstat>
   10924:	57fd                	c.li	a5,-1
   10926:	00f50663          	beq	a0,a5,10932 <isatty+0x18>
   1092a:	4532                	c.lwsp	a0,12(sp)
   1092c:	40d5551b          	sraiw	a0,a0,0xd
   10930:	8905                	c.andi	a0,1
   10932:	70e6                	c.ldsp	ra,120(sp)
   10934:	6109                	c.addi16sp	sp,128
   10936:	8082                	c.jr	ra

0000000000010938 <gettimeofday>:
   10938:	1141                	c.addi	sp,-16
   1093a:	85aa                	c.mv	a1,a0
   1093c:	4701                	c.li	a4,0
   1093e:	4681                	c.li	a3,0
   10940:	4601                	c.li	a2,0
   10942:	0a900513          	addi	a0,zero,169
   10946:	e406                	c.sdsp	ra,8(sp)
   10948:	00000097          	auipc	ra,0x0
   1094c:	d7a080e7          	jalr	ra,-646(ra) # 106c2 <__internal_syscall>
   10950:	60a2                	c.ldsp	ra,8(sp)
   10952:	2501                	c.addiw	a0,0
   10954:	0141                	c.addi	sp,16
   10956:	8082                	c.jr	ra

0000000000010958 <times>:
   10958:	7179                	c.addi16sp	sp,-48
   1095a:	f022                	c.sdsp	s0,32(sp)
   1095c:	842a                	c.mv	s0,a0
   1095e:	d081b783          	ld	a5,-760(gp) # 11c60 <t0.2574>
   10962:	ec26                	c.sdsp	s1,24(sp)
   10964:	f406                	c.sdsp	ra,40(sp)
   10966:	d0818493          	addi	s1,gp,-760 # 11c60 <t0.2574>
   1096a:	eb81                	c.bnez	a5,1097a <times+0x22>
   1096c:	4581                	c.li	a1,0
   1096e:	d0818513          	addi	a0,gp,-760 # 11c60 <t0.2574>
   10972:	00000097          	auipc	ra,0x0
   10976:	fc6080e7          	jalr	ra,-58(ra) # 10938 <gettimeofday>
   1097a:	850a                	c.mv	a0,sp
   1097c:	4581                	c.li	a1,0
   1097e:	00000097          	auipc	ra,0x0
   10982:	fba080e7          	jalr	ra,-70(ra) # 10938 <gettimeofday>
   10986:	6098                	c.ld	a4,0(s1)
   10988:	6782                	c.ldsp	a5,0(sp)
   1098a:	6494                	c.ld	a3,8(s1)
   1098c:	00043823          	sd	zero,16(s0)
   10990:	8f99                	c.sub	a5,a4
   10992:	000f4737          	lui	a4,0xf4
   10996:	24070713          	addi	a4,a4,576 # f4240 <__global_pointer$+0xe22e8>
   1099a:	02e787b3          	mul	a5,a5,a4
   1099e:	6722                	c.ldsp	a4,8(sp)
   109a0:	00043c23          	sd	zero,24(s0)
   109a4:	00043423          	sd	zero,8(s0)
   109a8:	8f15                	c.sub	a4,a3
   109aa:	70a2                	c.ldsp	ra,40(sp)
   109ac:	64e2                	c.ldsp	s1,24(sp)
   109ae:	557d                	c.li	a0,-1
   109b0:	97ba                	c.add	a5,a4
   109b2:	e01c                	c.sd	a5,0(s0)
   109b4:	7402                	c.ldsp	s0,32(sp)
   109b6:	6145                	c.addi16sp	sp,48
   109b8:	8082                	c.jr	ra

00000000000109ba <ftime>:
   109ba:	00051423          	sh	zero,8(a0)
   109be:	00053023          	sd	zero,0(a0)
   109c2:	4501                	c.li	a0,0
   109c4:	8082                	c.jr	ra

00000000000109c6 <utime>:
   109c6:	557d                	c.li	a0,-1
   109c8:	8082                	c.jr	ra

00000000000109ca <chown>:
   109ca:	557d                	c.li	a0,-1
   109cc:	8082                	c.jr	ra

00000000000109ce <chmod>:
   109ce:	557d                	c.li	a0,-1
   109d0:	8082                	c.jr	ra

00000000000109d2 <chdir>:
   109d2:	557d                	c.li	a0,-1
   109d4:	8082                	c.jr	ra

00000000000109d6 <getcwd>:
   109d6:	4501                	c.li	a0,0
   109d8:	8082                	c.jr	ra

00000000000109da <sysconf>:
   109da:	4789                	c.li	a5,2
   109dc:	00f50463          	beq	a0,a5,109e4 <sysconf+0xa>
   109e0:	557d                	c.li	a0,-1
   109e2:	8082                	c.jr	ra
   109e4:	000f4537          	lui	a0,0xf4
   109e8:	24050513          	addi	a0,a0,576 # f4240 <__global_pointer$+0xe22e8>
   109ec:	8082                	c.jr	ra

00000000000109ee <sbrk>:
   109ee:	1101                	c.addi	sp,-32
   109f0:	e822                	c.sdsp	s0,16(sp)
   109f2:	8181b783          	ld	a5,-2024(gp) # 11770 <_edata>
   109f6:	e426                	c.sdsp	s1,8(sp)
   109f8:	ec06                	c.sdsp	ra,24(sp)
   109fa:	84aa                	c.mv	s1,a0
   109fc:	e785                	c.bnez	a5,10a24 <sbrk+0x36>
   109fe:	4701                	c.li	a4,0
   10a00:	4681                	c.li	a3,0
   10a02:	4601                	c.li	a2,0
   10a04:	4581                	c.li	a1,0
   10a06:	0d600513          	addi	a0,zero,214
   10a0a:	cb9ff0ef          	jal	ra,106c2 <__internal_syscall>
   10a0e:	57fd                	c.li	a5,-1
   10a10:	00f51863          	bne	a0,a5,10a20 <sbrk+0x32>
   10a14:	557d                	c.li	a0,-1
   10a16:	60e2                	c.ldsp	ra,24(sp)
   10a18:	6442                	c.ldsp	s0,16(sp)
   10a1a:	64a2                	c.ldsp	s1,8(sp)
   10a1c:	6105                	c.addi16sp	sp,32
   10a1e:	8082                	c.jr	ra
   10a20:	80a1bc23          	sd	a0,-2024(gp) # 11770 <_edata>
   10a24:	8181b583          	ld	a1,-2024(gp) # 11770 <_edata>
   10a28:	4701                	c.li	a4,0
   10a2a:	4681                	c.li	a3,0
   10a2c:	95a6                	c.add	a1,s1
   10a2e:	4601                	c.li	a2,0
   10a30:	0d600513          	addi	a0,zero,214
   10a34:	c8fff0ef          	jal	ra,106c2 <__internal_syscall>
   10a38:	8181b783          	ld	a5,-2024(gp) # 11770 <_edata>
   10a3c:	94be                	c.add	s1,a5
   10a3e:	fc951be3          	bne	a0,s1,10a14 <sbrk+0x26>
   10a42:	80a1bc23          	sd	a0,-2024(gp) # 11770 <_edata>
   10a46:	853e                	c.mv	a0,a5
   10a48:	b7f9                	c.j	10a16 <sbrk+0x28>

0000000000010a4a <_exit>:
   10a4a:	1141                	c.addi	sp,-16
   10a4c:	85aa                	c.mv	a1,a0
   10a4e:	4701                	c.li	a4,0
   10a50:	4681                	c.li	a3,0
   10a52:	4601                	c.li	a2,0
   10a54:	05d00513          	addi	a0,zero,93
   10a58:	e406                	c.sdsp	ra,8(sp)
   10a5a:	00000097          	auipc	ra,0x0
   10a5e:	c68080e7          	jalr	ra,-920(ra) # 106c2 <__internal_syscall>
   10a62:	a001                	c.j	10a62 <_exit+0x18>

0000000000010a64 <__errno>:
   10a64:	8101b503          	ld	a0,-2032(gp) # 11768 <_impure_ptr>
   10a68:	8082                	c.jr	ra
	...

Disassembly of section .eh_frame:

0000000000010a70 <__EH_FRAME_BEGIN__>:
   10a70:	0010                	c.addi4spn	a2,sp,0
   10a72:	0000                	unimp
   10a74:	0000                	unimp
   10a76:	0000                	unimp
   10a78:	7a01                	c.lui	s4,0xfffe0
   10a7a:	0052                	0x52
   10a7c:	7c01                	c.lui	s8,0xfffe0
   10a7e:	0101                	c.addi	sp,0
   10a80:	00020d1b          	addiw	s10,tp,0
   10a84:	0020                	c.addi4spn	s0,sp,8
   10a86:	0000                	unimp
   10a88:	0018                	c.addi4spn	a4,sp,0
   10a8a:	0000                	unimp
   10a8c:	f71c                	c.sd	a5,40(a4)
   10a8e:	ffff                	0xffff
   10a90:	012c                	c.addi4spn	a1,sp,136
   10a92:	0000                	unimp
   10a94:	4400                	c.lw	s0,8(s0)
   10a96:	200e                	c.fldsp	ft0,192(sp)
   10a98:	8844                	0x8844
   10a9a:	4402                	c.lwsp	s0,0(sp)
   10a9c:	080c                	c.addi4spn	a1,sp,16
   10a9e:	0300                	c.addi4spn	s0,sp,384
   10aa0:	0118                	c.addi4spn	a4,sp,128
   10aa2:	44c8                	c.lw	a0,12(s1)
   10aa4:	020d                	c.addi	tp,3
   10aa6:	0000                	unimp
   10aa8:	0024                	c.addi4spn	s1,sp,8
   10aaa:	0000                	unimp
   10aac:	003c                	c.addi4spn	a5,sp,8
   10aae:	0000                	unimp
   10ab0:	f824                	c.sd	s1,112(s0)
   10ab2:	ffff                	0xffff
   10ab4:	00dc                	c.addi4spn	a5,sp,68
   10ab6:	0000                	unimp
   10ab8:	4400                	c.lw	s0,8(s0)
   10aba:	200e                	c.fldsp	ft0,192(sp)
   10abc:	8148                	0x8148
   10abe:	8802                	c.jr	a6
   10ac0:	4404                	c.lw	s1,8(s0)
   10ac2:	080c                	c.addi4spn	a1,sp,16
   10ac4:	0200                	c.addi4spn	s0,sp,256
   10ac6:	c1c0                	c.sw	s0,4(a1)
   10ac8:	c844                	c.sw	s1,20(s0)
   10aca:	0d44                	c.addi4spn	s1,sp,660
   10acc:	0002                	0x2
	...

0000000000010ad0 <__FRAME_END__>:
   10ad0:	0000                	unimp
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

00000000000117b0 <a>:
	...

0000000000011940 <b>:
	...

0000000000011ad0 <c>:
	...

0000000000011c60 <t0.2574>:
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
