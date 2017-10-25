
hello:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100b0 <_start>:
   100b0:	00002197          	auipc	gp,0x2
   100b4:	ea818193          	addi	gp,gp,-344 # 11f58 <__global_pointer$>
   100b8:	81818513          	addi	a0,gp,-2024 # 11770 <_edata>
   100bc:	89018613          	addi	a2,gp,-1904 # 117e8 <_end>
   100c0:	8e09                	c.sub	a2,a0
   100c2:	4581                	c.li	a1,0
   100c4:	470000ef          	jal	ra,10534 <memset>
   100c8:	00000517          	auipc	a0,0x0
   100cc:	3b650513          	addi	a0,a0,950 # 1047e <__libc_fini_array>
   100d0:	00000097          	auipc	ra,0x0
   100d4:	37a080e7          	jalr	ra,890(ra) # 1044a <atexit>
   100d8:	00000097          	auipc	ra,0x0
   100dc:	3f4080e7          	jalr	ra,1012(ra) # 104cc <__libc_init_array>
   100e0:	4502                	c.lwsp	a0,0(sp)
   100e2:	002c                	c.addi4spn	a1,sp,8
   100e4:	4601                	c.li	a2,0
   100e6:	2b6000ef          	jal	ra,1039c <main>
   100ea:	00000317          	auipc	t1,0x0
   100ee:	36e30067          	jalr	zero,878(t1) # 10458 <exit>

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
   10162:	b0450513          	addi	a0,a0,-1276 # 10b04 <__EH_FRAME_BEGIN__>
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
   10192:	b0450513          	addi	a0,a0,-1276 # 10b04 <__EH_FRAME_BEGIN__>
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
   1039c:	ff010113          	addi	sp,sp,-16
   103a0:	00113423          	sd	ra,8(sp)
   103a4:	00813023          	sd	s0,0(sp)
   103a8:	01010413          	addi	s0,sp,16
   103ac:	00a00713          	addi	a4,zero,10
   103b0:	86e1a423          	sw	a4,-1944(gp) # 117c0 <x>
   103b4:	86818793          	addi	a5,gp,-1944 # 117c0 <x>
   103b8:	00400713          	addi	a4,zero,4
   103bc:	00e7a223          	sw	a4,4(a5)
   103c0:	86818793          	addi	a5,gp,-1944 # 117c0 <x>
   103c4:	00700713          	addi	a4,zero,7
   103c8:	00e7a423          	sw	a4,8(a5)
   103cc:	86818793          	addi	a5,gp,-1944 # 117c0 <x>
   103d0:	01200713          	addi	a4,zero,18
   103d4:	00e7a623          	sw	a4,12(a5)
   103d8:	86818793          	addi	a5,gp,-1944 # 117c0 <x>
   103dc:	00500713          	addi	a4,zero,5
   103e0:	00e7a823          	sw	a4,16(a5)
   103e4:	86818793          	addi	a5,gp,-1944 # 117c0 <x>
   103e8:	00200713          	addi	a4,zero,2
   103ec:	00e7aa23          	sw	a4,20(a5)
   103f0:	86818793          	addi	a5,gp,-1944 # 117c0 <x>
   103f4:	00200713          	addi	a4,zero,2
   103f8:	00e7ac23          	sw	a4,24(a5)
   103fc:	86818793          	addi	a5,gp,-1944 # 117c0 <x>
   10400:	01400713          	addi	a4,zero,20
   10404:	00e7ae23          	sw	a4,28(a5)
   10408:	86818793          	addi	a5,gp,-1944 # 117c0 <x>
   1040c:	0207a023          	sw	zero,32(a5)
   10410:	86818793          	addi	a5,gp,-1944 # 117c0 <x>
   10414:	00900713          	addi	a4,zero,9
   10418:	02e7a223          	sw	a4,36(a5)
   1041c:	00900613          	addi	a2,zero,9
   10420:	00000593          	addi	a1,zero,0
   10424:	86818513          	addi	a0,gp,-1944 # 117c0 <x>
   10428:	00000097          	auipc	ra,0x0
   1042c:	d80080e7          	jalr	ra,-640(ra) # 101a8 <qsort>
   10430:	00000793          	addi	a5,zero,0
   10434:	00078513          	addi	a0,a5,0
   10438:	00813083          	ld	ra,8(sp)
   1043c:	00013403          	ld	s0,0(sp)
   10440:	01010113          	addi	sp,sp,16
   10444:	00008067          	jalr	zero,0(ra)
	...

000000000001044a <atexit>:
   1044a:	85aa                	c.mv	a1,a0
   1044c:	4681                	c.li	a3,0
   1044e:	4601                	c.li	a2,0
   10450:	4501                	c.li	a0,0
   10452:	18c0006f          	jal	zero,105de <__register_exitproc>
	...

0000000000010458 <exit>:
   10458:	1141                	c.addi	sp,-16
   1045a:	4581                	c.li	a1,0
   1045c:	e022                	c.sdsp	s0,0(sp)
   1045e:	e406                	c.sdsp	ra,8(sp)
   10460:	842a                	c.mv	s0,a0
   10462:	1e4000ef          	jal	ra,10646 <__call_exitprocs>
   10466:	67c5                	c.lui	a5,0x11
   10468:	7607b503          	ld	a0,1888(a5) # 11760 <_global_impure_ptr>
   1046c:	6d3c                	c.ld	a5,88(a0)
   1046e:	c391                	c.beqz	a5,10472 <exit+0x1a>
   10470:	9782                	c.jalr	a5
   10472:	8522                	c.mv	a0,s0
   10474:	00000097          	auipc	ra,0x0
   10478:	66e080e7          	jalr	ra,1646(ra) # 10ae2 <_exit>
	...

000000000001047e <__libc_fini_array>:
   1047e:	7179                	c.addi16sp	sp,-48
   10480:	67c5                	c.lui	a5,0x11
   10482:	6745                	c.lui	a4,0x11
   10484:	f022                	c.sdsp	s0,32(sp)
   10486:	00870713          	addi	a4,a4,8 # 11008 <__init_array_end>
   1048a:	01078413          	addi	s0,a5,16 # 11010 <__fini_array_end>
   1048e:	8c19                	c.sub	s0,a4
   10490:	ec26                	c.sdsp	s1,24(sp)
   10492:	e84a                	c.sdsp	s2,16(sp)
   10494:	e44e                	c.sdsp	s3,8(sp)
   10496:	f406                	c.sdsp	ra,40(sp)
   10498:	840d                	c.srai	s0,0x3
   1049a:	4481                	c.li	s1,0
   1049c:	01078913          	addi	s2,a5,16
   104a0:	59e1                	c.li	s3,-8
   104a2:	00941c63          	bne	s0,s1,104ba <__libc_fini_array+0x3c>
   104a6:	7402                	c.ldsp	s0,32(sp)
   104a8:	70a2                	c.ldsp	ra,40(sp)
   104aa:	64e2                	c.ldsp	s1,24(sp)
   104ac:	6942                	c.ldsp	s2,16(sp)
   104ae:	69a2                	c.ldsp	s3,8(sp)
   104b0:	6145                	c.addi16sp	sp,48
   104b2:	00000317          	auipc	t1,0x0
   104b6:	c4030067          	jalr	zero,-960(t1) # 100f2 <_fini>
   104ba:	033487b3          	mul	a5,s1,s3
   104be:	0485                	c.addi	s1,1
   104c0:	97ca                	c.add	a5,s2
   104c2:	ff87b783          	ld	a5,-8(a5)
   104c6:	9782                	c.jalr	a5
   104c8:	bfe9                	c.j	104a2 <__libc_fini_array+0x24>
	...

00000000000104cc <__libc_init_array>:
   104cc:	1101                	c.addi	sp,-32
   104ce:	e822                	c.sdsp	s0,16(sp)
   104d0:	e426                	c.sdsp	s1,8(sp)
   104d2:	6445                	c.lui	s0,0x11
   104d4:	64c5                	c.lui	s1,0x11
   104d6:	00048793          	addi	a5,s1,0 # 11000 <__frame_dummy_init_array_entry>
   104da:	00040413          	addi	s0,s0,0 # 11000 <__frame_dummy_init_array_entry>
   104de:	8c1d                	c.sub	s0,a5
   104e0:	e04a                	c.sdsp	s2,0(sp)
   104e2:	ec06                	c.sdsp	ra,24(sp)
   104e4:	840d                	c.srai	s0,0x3
   104e6:	00048493          	addi	s1,s1,0
   104ea:	4901                	c.li	s2,0
   104ec:	02891963          	bne	s2,s0,1051e <__libc_init_array+0x52>
   104f0:	64c5                	c.lui	s1,0x11
   104f2:	00000097          	auipc	ra,0x0
   104f6:	c00080e7          	jalr	ra,-1024(ra) # 100f2 <_fini>
   104fa:	6445                	c.lui	s0,0x11
   104fc:	00048793          	addi	a5,s1,0 # 11000 <__frame_dummy_init_array_entry>
   10500:	00840413          	addi	s0,s0,8 # 11008 <__init_array_end>
   10504:	8c1d                	c.sub	s0,a5
   10506:	840d                	c.srai	s0,0x3
   10508:	00048493          	addi	s1,s1,0
   1050c:	4901                	c.li	s2,0
   1050e:	00891d63          	bne	s2,s0,10528 <__libc_init_array+0x5c>
   10512:	60e2                	c.ldsp	ra,24(sp)
   10514:	6442                	c.ldsp	s0,16(sp)
   10516:	64a2                	c.ldsp	s1,8(sp)
   10518:	6902                	c.ldsp	s2,0(sp)
   1051a:	6105                	c.addi16sp	sp,32
   1051c:	8082                	c.jr	ra
   1051e:	609c                	c.ld	a5,0(s1)
   10520:	0905                	c.addi	s2,1
   10522:	04a1                	c.addi	s1,8
   10524:	9782                	c.jalr	a5
   10526:	b7d9                	c.j	104ec <__libc_init_array+0x20>
   10528:	609c                	c.ld	a5,0(s1)
   1052a:	0905                	c.addi	s2,1
   1052c:	04a1                	c.addi	s1,8
   1052e:	9782                	c.jalr	a5
   10530:	bff9                	c.j	1050e <__libc_init_array+0x42>
	...

0000000000010534 <memset>:
   10534:	483d                	c.li	a6,15
   10536:	872a                	c.mv	a4,a0
   10538:	02c87163          	bgeu	a6,a2,1055a <memset+0x26>
   1053c:	00f77793          	andi	a5,a4,15
   10540:	e3c1                	c.bnez	a5,105c0 <memset+0x8c>
   10542:	e1bd                	c.bnez	a1,105a8 <memset+0x74>
   10544:	ff067693          	andi	a3,a2,-16
   10548:	8a3d                	c.andi	a2,15
   1054a:	96ba                	c.add	a3,a4
   1054c:	e30c                	c.sd	a1,0(a4)
   1054e:	e70c                	c.sd	a1,8(a4)
   10550:	0741                	c.addi	a4,16
   10552:	fed76de3          	bltu	a4,a3,1054c <memset+0x18>
   10556:	e211                	c.bnez	a2,1055a <memset+0x26>
   10558:	8082                	c.jr	ra
   1055a:	40c806b3          	sub	a3,a6,a2
   1055e:	068a                	c.slli	a3,0x2
   10560:	00000297          	auipc	t0,0x0
   10564:	9696                	c.add	a3,t0
   10566:	00a68067          	jalr	zero,10(a3)
   1056a:	00b70723          	sb	a1,14(a4)
   1056e:	00b706a3          	sb	a1,13(a4)
   10572:	00b70623          	sb	a1,12(a4)
   10576:	00b705a3          	sb	a1,11(a4)
   1057a:	00b70523          	sb	a1,10(a4)
   1057e:	00b704a3          	sb	a1,9(a4)
   10582:	00b70423          	sb	a1,8(a4)
   10586:	00b703a3          	sb	a1,7(a4)
   1058a:	00b70323          	sb	a1,6(a4)
   1058e:	00b702a3          	sb	a1,5(a4)
   10592:	00b70223          	sb	a1,4(a4)
   10596:	00b701a3          	sb	a1,3(a4)
   1059a:	00b70123          	sb	a1,2(a4)
   1059e:	00b700a3          	sb	a1,1(a4)
   105a2:	00b70023          	sb	a1,0(a4)
   105a6:	8082                	c.jr	ra
   105a8:	0ff5f593          	andi	a1,a1,255
   105ac:	00859693          	slli	a3,a1,0x8
   105b0:	8dd5                	c.or	a1,a3
   105b2:	01059693          	slli	a3,a1,0x10
   105b6:	8dd5                	c.or	a1,a3
   105b8:	02059693          	slli	a3,a1,0x20
   105bc:	8dd5                	c.or	a1,a3
   105be:	b759                	c.j	10544 <memset+0x10>
   105c0:	00279693          	slli	a3,a5,0x2
   105c4:	00000297          	auipc	t0,0x0
   105c8:	9696                	c.add	a3,t0
   105ca:	8286                	c.mv	t0,ra
   105cc:	fa2680e7          	jalr	ra,-94(a3)
   105d0:	8096                	c.mv	ra,t0
   105d2:	17c1                	c.addi	a5,-16
   105d4:	8f1d                	c.sub	a4,a5
   105d6:	963e                	c.add	a2,a5
   105d8:	f8c871e3          	bgeu	a6,a2,1055a <memset+0x26>
   105dc:	b79d                	c.j	10542 <memset+0xe>

00000000000105de <__register_exitproc>:
   105de:	67c5                	c.lui	a5,0x11
   105e0:	7607b703          	ld	a4,1888(a5) # 11760 <_global_impure_ptr>
   105e4:	832a                	c.mv	t1,a0
   105e6:	1f873783          	ld	a5,504(a4)
   105ea:	e789                	c.bnez	a5,105f4 <__register_exitproc+0x16>
   105ec:	20070793          	addi	a5,a4,512
   105f0:	1ef73c23          	sd	a5,504(a4)
   105f4:	4798                	c.lw	a4,8(a5)
   105f6:	487d                	c.li	a6,31
   105f8:	557d                	c.li	a0,-1
   105fa:	04e84463          	blt	a6,a4,10642 <__register_exitproc+0x64>
   105fe:	02030a63          	beq	t1,zero,10632 <__register_exitproc+0x54>
   10602:	00371813          	slli	a6,a4,0x3
   10606:	983e                	c.add	a6,a5
   10608:	10c83823          	sd	a2,272(a6)
   1060c:	3107a883          	lw	a7,784(a5)
   10610:	4605                	c.li	a2,1
   10612:	00e6163b          	sllw	a2,a2,a4
   10616:	00c8e8b3          	or	a7,a7,a2
   1061a:	3117a823          	sw	a7,784(a5)
   1061e:	20d83823          	sd	a3,528(a6)
   10622:	4689                	c.li	a3,2
   10624:	00d31763          	bne	t1,a3,10632 <__register_exitproc+0x54>
   10628:	3147a683          	lw	a3,788(a5)
   1062c:	8e55                	c.or	a2,a3
   1062e:	30c7aa23          	sw	a2,788(a5)
   10632:	0017069b          	addiw	a3,a4,1
   10636:	0709                	c.addi	a4,2
   10638:	070e                	c.slli	a4,0x3
   1063a:	c794                	c.sw	a3,8(a5)
   1063c:	97ba                	c.add	a5,a4
   1063e:	e38c                	c.sd	a1,0(a5)
   10640:	4501                	c.li	a0,0
   10642:	8082                	c.jr	ra
	...

0000000000010646 <__call_exitprocs>:
   10646:	715d                	c.addi16sp	sp,-80
   10648:	67c5                	c.lui	a5,0x11
   1064a:	f44e                	c.sdsp	s3,40(sp)
   1064c:	7607b983          	ld	s3,1888(a5) # 11760 <_global_impure_ptr>
   10650:	f052                	c.sdsp	s4,32(sp)
   10652:	ec56                	c.sdsp	s5,24(sp)
   10654:	e85a                	c.sdsp	s6,16(sp)
   10656:	e486                	c.sdsp	ra,72(sp)
   10658:	e0a2                	c.sdsp	s0,64(sp)
   1065a:	fc26                	c.sdsp	s1,56(sp)
   1065c:	f84a                	c.sdsp	s2,48(sp)
   1065e:	e45e                	c.sdsp	s7,8(sp)
   10660:	8aaa                	c.mv	s5,a0
   10662:	8a2e                	c.mv	s4,a1
   10664:	4b05                	c.li	s6,1
   10666:	1f89b403          	ld	s0,504(s3)
   1066a:	c801                	c.beqz	s0,1067a <__call_exitprocs+0x34>
   1066c:	4404                	c.lw	s1,8(s0)
   1066e:	34fd                	c.addiw	s1,-1
   10670:	00349913          	slli	s2,s1,0x3
   10674:	9922                	c.add	s2,s0
   10676:	0004dd63          	bge	s1,zero,10690 <__call_exitprocs+0x4a>
   1067a:	60a6                	c.ldsp	ra,72(sp)
   1067c:	6406                	c.ldsp	s0,64(sp)
   1067e:	74e2                	c.ldsp	s1,56(sp)
   10680:	7942                	c.ldsp	s2,48(sp)
   10682:	79a2                	c.ldsp	s3,40(sp)
   10684:	7a02                	c.ldsp	s4,32(sp)
   10686:	6ae2                	c.ldsp	s5,24(sp)
   10688:	6b42                	c.ldsp	s6,16(sp)
   1068a:	6ba2                	c.ldsp	s7,8(sp)
   1068c:	6161                	c.addi16sp	sp,80
   1068e:	8082                	c.jr	ra
   10690:	000a0963          	beq	s4,zero,106a2 <__call_exitprocs+0x5c>
   10694:	21093783          	ld	a5,528(s2)
   10698:	01478563          	beq	a5,s4,106a2 <__call_exitprocs+0x5c>
   1069c:	34fd                	c.addiw	s1,-1
   1069e:	1961                	c.addi	s2,-8
   106a0:	bfd9                	c.j	10676 <__call_exitprocs+0x30>
   106a2:	441c                	c.lw	a5,8(s0)
   106a4:	01093683          	ld	a3,16(s2)
   106a8:	37fd                	c.addiw	a5,-1
   106aa:	02979663          	bne	a5,s1,106d6 <__call_exitprocs+0x90>
   106ae:	c404                	c.sw	s1,8(s0)
   106b0:	d6f5                	c.beqz	a3,1069c <__call_exitprocs+0x56>
   106b2:	31042703          	lw	a4,784(s0)
   106b6:	009b163b          	sllw	a2,s6,s1
   106ba:	00842b83          	lw	s7,8(s0)
   106be:	8f71                	c.and	a4,a2
   106c0:	2701                	c.addiw	a4,0
   106c2:	ef09                	c.bnez	a4,106dc <__call_exitprocs+0x96>
   106c4:	9682                	c.jalr	a3
   106c6:	4418                	c.lw	a4,8(s0)
   106c8:	1f89b783          	ld	a5,504(s3)
   106cc:	f9771de3          	bne	a4,s7,10666 <__call_exitprocs+0x20>
   106d0:	fcf406e3          	beq	s0,a5,1069c <__call_exitprocs+0x56>
   106d4:	bf49                	c.j	10666 <__call_exitprocs+0x20>
   106d6:	00093823          	sd	zero,16(s2)
   106da:	bfd9                	c.j	106b0 <__call_exitprocs+0x6a>
   106dc:	31442783          	lw	a5,788(s0)
   106e0:	11093583          	ld	a1,272(s2)
   106e4:	8ff1                	c.and	a5,a2
   106e6:	2781                	c.addiw	a5,0
   106e8:	e781                	c.bnez	a5,106f0 <__call_exitprocs+0xaa>
   106ea:	8556                	c.mv	a0,s5
   106ec:	9682                	c.jalr	a3
   106ee:	bfe1                	c.j	106c6 <__call_exitprocs+0x80>
   106f0:	852e                	c.mv	a0,a1
   106f2:	9682                	c.jalr	a3
   106f4:	bfc9                	c.j	106c6 <__call_exitprocs+0x80>
	...

00000000000106f8 <conv_stat>:
   106f8:	619c                	c.ld	a5,0(a1)
   106fa:	00f51023          	sh	a5,0(a0)
   106fe:	659c                	c.ld	a5,8(a1)
   10700:	00f51123          	sh	a5,2(a0)
   10704:	499c                	c.lw	a5,16(a1)
   10706:	c15c                	c.sw	a5,4(a0)
   10708:	49dc                	c.lw	a5,20(a1)
   1070a:	00f51423          	sh	a5,8(a0)
   1070e:	4d9c                	c.lw	a5,24(a1)
   10710:	00f51523          	sh	a5,10(a0)
   10714:	4ddc                	c.lw	a5,28(a1)
   10716:	00f51623          	sh	a5,12(a0)
   1071a:	719c                	c.ld	a5,32(a1)
   1071c:	00f51723          	sh	a5,14(a0)
   10720:	799c                	c.ld	a5,48(a1)
   10722:	e91c                	c.sd	a5,16(a0)
   10724:	61bc                	c.ld	a5,64(a1)
   10726:	e93c                	c.sd	a5,80(a0)
   10728:	5d9c                	c.lw	a5,56(a1)
   1072a:	e53c                	c.sd	a5,72(a0)
   1072c:	65bc                	c.ld	a5,72(a1)
   1072e:	ed1c                	c.sd	a5,24(a0)
   10730:	6dbc                	c.ld	a5,88(a1)
   10732:	f51c                	c.sd	a5,40(a0)
   10734:	75bc                	c.ld	a5,104(a1)
   10736:	fd1c                	c.sd	a5,56(a0)
   10738:	8082                	c.jr	ra

000000000001073a <__syscall_error>:
   1073a:	1141                	c.addi	sp,-16
   1073c:	e022                	c.sdsp	s0,0(sp)
   1073e:	e406                	c.sdsp	ra,8(sp)
   10740:	842a                	c.mv	s0,a0
   10742:	00000097          	auipc	ra,0x0
   10746:	3ba080e7          	jalr	ra,954(ra) # 10afc <__errno>
   1074a:	408007bb          	subw	a5,zero,s0
   1074e:	60a2                	c.ldsp	ra,8(sp)
   10750:	6402                	c.ldsp	s0,0(sp)
   10752:	c11c                	c.sw	a5,0(a0)
   10754:	557d                	c.li	a0,-1
   10756:	0141                	c.addi	sp,16
   10758:	8082                	c.jr	ra

000000000001075a <__internal_syscall>:
   1075a:	88aa                	c.mv	a7,a0
   1075c:	852e                	c.mv	a0,a1
   1075e:	85b2                	c.mv	a1,a2
   10760:	8636                	c.mv	a2,a3
   10762:	86ba                	c.mv	a3,a4
   10764:	00000073          	ecall
   10768:	00055663          	bge	a0,zero,10774 <__internal_syscall+0x1a>
   1076c:	00000317          	auipc	t1,0x0
   10770:	fce30067          	jalr	zero,-50(t1) # 1073a <__syscall_error>
   10774:	8082                	c.jr	ra

0000000000010776 <open>:
   10776:	1141                	c.addi	sp,-16
   10778:	86b2                	c.mv	a3,a2
   1077a:	4701                	c.li	a4,0
   1077c:	862e                	c.mv	a2,a1
   1077e:	85aa                	c.mv	a1,a0
   10780:	40000513          	addi	a0,zero,1024
   10784:	e406                	c.sdsp	ra,8(sp)
   10786:	00000097          	auipc	ra,0x0
   1078a:	fd4080e7          	jalr	ra,-44(ra) # 1075a <__internal_syscall>
   1078e:	60a2                	c.ldsp	ra,8(sp)
   10790:	2501                	c.addiw	a0,0
   10792:	0141                	c.addi	sp,16
   10794:	8082                	c.jr	ra

0000000000010796 <openat>:
   10796:	1141                	c.addi	sp,-16
   10798:	8736                	c.mv	a4,a3
   1079a:	86b2                	c.mv	a3,a2
   1079c:	862e                	c.mv	a2,a1
   1079e:	85aa                	c.mv	a1,a0
   107a0:	03800513          	addi	a0,zero,56
   107a4:	e406                	c.sdsp	ra,8(sp)
   107a6:	fb5ff0ef          	jal	ra,1075a <__internal_syscall>
   107aa:	60a2                	c.ldsp	ra,8(sp)
   107ac:	2501                	c.addiw	a0,0
   107ae:	0141                	c.addi	sp,16
   107b0:	8082                	c.jr	ra

00000000000107b2 <lseek>:
   107b2:	86b2                	c.mv	a3,a2
   107b4:	4701                	c.li	a4,0
   107b6:	862e                	c.mv	a2,a1
   107b8:	85aa                	c.mv	a1,a0
   107ba:	03e00513          	addi	a0,zero,62
   107be:	00000317          	auipc	t1,0x0
   107c2:	f9c30067          	jalr	zero,-100(t1) # 1075a <__internal_syscall>

00000000000107c6 <read>:
   107c6:	86b2                	c.mv	a3,a2
   107c8:	4701                	c.li	a4,0
   107ca:	862e                	c.mv	a2,a1
   107cc:	85aa                	c.mv	a1,a0
   107ce:	03f00513          	addi	a0,zero,63
   107d2:	f89ff06f          	jal	zero,1075a <__internal_syscall>

00000000000107d6 <write>:
   107d6:	86b2                	c.mv	a3,a2
   107d8:	4701                	c.li	a4,0
   107da:	862e                	c.mv	a2,a1
   107dc:	85aa                	c.mv	a1,a0
   107de:	04000513          	addi	a0,zero,64
   107e2:	00000317          	auipc	t1,0x0
   107e6:	f7830067          	jalr	zero,-136(t1) # 1075a <__internal_syscall>

00000000000107ea <fstat>:
   107ea:	7135                	c.addi16sp	sp,-160
   107ec:	e526                	c.sdsp	s1,136(sp)
   107ee:	860a                	c.mv	a2,sp
   107f0:	84ae                	c.mv	s1,a1
   107f2:	4701                	c.li	a4,0
   107f4:	85aa                	c.mv	a1,a0
   107f6:	4681                	c.li	a3,0
   107f8:	05000513          	addi	a0,zero,80
   107fc:	ed06                	c.sdsp	ra,152(sp)
   107fe:	e922                	c.sdsp	s0,144(sp)
   10800:	f5bff0ef          	jal	ra,1075a <__internal_syscall>
   10804:	842a                	c.mv	s0,a0
   10806:	858a                	c.mv	a1,sp
   10808:	8526                	c.mv	a0,s1
   1080a:	eefff0ef          	jal	ra,106f8 <conv_stat>
   1080e:	0004051b          	addiw	a0,s0,0
   10812:	60ea                	c.ldsp	ra,152(sp)
   10814:	644a                	c.ldsp	s0,144(sp)
   10816:	64aa                	c.ldsp	s1,136(sp)
   10818:	610d                	c.addi16sp	sp,160
   1081a:	8082                	c.jr	ra

000000000001081c <stat>:
   1081c:	7135                	c.addi16sp	sp,-160
   1081e:	e526                	c.sdsp	s1,136(sp)
   10820:	860a                	c.mv	a2,sp
   10822:	84ae                	c.mv	s1,a1
   10824:	4701                	c.li	a4,0
   10826:	85aa                	c.mv	a1,a0
   10828:	4681                	c.li	a3,0
   1082a:	40e00513          	addi	a0,zero,1038
   1082e:	ed06                	c.sdsp	ra,152(sp)
   10830:	e922                	c.sdsp	s0,144(sp)
   10832:	00000097          	auipc	ra,0x0
   10836:	f28080e7          	jalr	ra,-216(ra) # 1075a <__internal_syscall>
   1083a:	842a                	c.mv	s0,a0
   1083c:	858a                	c.mv	a1,sp
   1083e:	8526                	c.mv	a0,s1
   10840:	00000097          	auipc	ra,0x0
   10844:	eb8080e7          	jalr	ra,-328(ra) # 106f8 <conv_stat>
   10848:	0004051b          	addiw	a0,s0,0
   1084c:	60ea                	c.ldsp	ra,152(sp)
   1084e:	644a                	c.ldsp	s0,144(sp)
   10850:	64aa                	c.ldsp	s1,136(sp)
   10852:	610d                	c.addi16sp	sp,160
   10854:	8082                	c.jr	ra

0000000000010856 <lstat>:
   10856:	7135                	c.addi16sp	sp,-160
   10858:	e526                	c.sdsp	s1,136(sp)
   1085a:	860a                	c.mv	a2,sp
   1085c:	84ae                	c.mv	s1,a1
   1085e:	4701                	c.li	a4,0
   10860:	85aa                	c.mv	a1,a0
   10862:	4681                	c.li	a3,0
   10864:	40f00513          	addi	a0,zero,1039
   10868:	ed06                	c.sdsp	ra,152(sp)
   1086a:	e922                	c.sdsp	s0,144(sp)
   1086c:	eefff0ef          	jal	ra,1075a <__internal_syscall>
   10870:	842a                	c.mv	s0,a0
   10872:	858a                	c.mv	a1,sp
   10874:	8526                	c.mv	a0,s1
   10876:	e83ff0ef          	jal	ra,106f8 <conv_stat>
   1087a:	0004051b          	addiw	a0,s0,0
   1087e:	60ea                	c.ldsp	ra,152(sp)
   10880:	644a                	c.ldsp	s0,144(sp)
   10882:	64aa                	c.ldsp	s1,136(sp)
   10884:	610d                	c.addi16sp	sp,160
   10886:	8082                	c.jr	ra

0000000000010888 <fstatat>:
   10888:	7135                	c.addi16sp	sp,-160
   1088a:	e526                	c.sdsp	s1,136(sp)
   1088c:	8736                	c.mv	a4,a3
   1088e:	84b2                	c.mv	s1,a2
   10890:	868a                	c.mv	a3,sp
   10892:	862e                	c.mv	a2,a1
   10894:	85aa                	c.mv	a1,a0
   10896:	04f00513          	addi	a0,zero,79
   1089a:	ed06                	c.sdsp	ra,152(sp)
   1089c:	e922                	c.sdsp	s0,144(sp)
   1089e:	00000097          	auipc	ra,0x0
   108a2:	ebc080e7          	jalr	ra,-324(ra) # 1075a <__internal_syscall>
   108a6:	842a                	c.mv	s0,a0
   108a8:	858a                	c.mv	a1,sp
   108aa:	8526                	c.mv	a0,s1
   108ac:	00000097          	auipc	ra,0x0
   108b0:	e4c080e7          	jalr	ra,-436(ra) # 106f8 <conv_stat>
   108b4:	0004051b          	addiw	a0,s0,0
   108b8:	60ea                	c.ldsp	ra,152(sp)
   108ba:	644a                	c.ldsp	s0,144(sp)
   108bc:	64aa                	c.ldsp	s1,136(sp)
   108be:	610d                	c.addi16sp	sp,160
   108c0:	8082                	c.jr	ra

00000000000108c2 <access>:
   108c2:	1141                	c.addi	sp,-16
   108c4:	862e                	c.mv	a2,a1
   108c6:	4701                	c.li	a4,0
   108c8:	85aa                	c.mv	a1,a0
   108ca:	4681                	c.li	a3,0
   108cc:	40900513          	addi	a0,zero,1033
   108d0:	e406                	c.sdsp	ra,8(sp)
   108d2:	e89ff0ef          	jal	ra,1075a <__internal_syscall>
   108d6:	60a2                	c.ldsp	ra,8(sp)
   108d8:	2501                	c.addiw	a0,0
   108da:	0141                	c.addi	sp,16
   108dc:	8082                	c.jr	ra

00000000000108de <faccessat>:
   108de:	1141                	c.addi	sp,-16
   108e0:	8736                	c.mv	a4,a3
   108e2:	86b2                	c.mv	a3,a2
   108e4:	862e                	c.mv	a2,a1
   108e6:	85aa                	c.mv	a1,a0
   108e8:	03000513          	addi	a0,zero,48
   108ec:	e406                	c.sdsp	ra,8(sp)
   108ee:	00000097          	auipc	ra,0x0
   108f2:	e6c080e7          	jalr	ra,-404(ra) # 1075a <__internal_syscall>
   108f6:	60a2                	c.ldsp	ra,8(sp)
   108f8:	2501                	c.addiw	a0,0
   108fa:	0141                	c.addi	sp,16
   108fc:	8082                	c.jr	ra

00000000000108fe <close>:
   108fe:	1141                	c.addi	sp,-16
   10900:	85aa                	c.mv	a1,a0
   10902:	4701                	c.li	a4,0
   10904:	4681                	c.li	a3,0
   10906:	4601                	c.li	a2,0
   10908:	03900513          	addi	a0,zero,57
   1090c:	e406                	c.sdsp	ra,8(sp)
   1090e:	e4dff0ef          	jal	ra,1075a <__internal_syscall>
   10912:	60a2                	c.ldsp	ra,8(sp)
   10914:	2501                	c.addiw	a0,0
   10916:	0141                	c.addi	sp,16
   10918:	8082                	c.jr	ra

000000000001091a <link>:
   1091a:	1141                	c.addi	sp,-16
   1091c:	862e                	c.mv	a2,a1
   1091e:	4701                	c.li	a4,0
   10920:	85aa                	c.mv	a1,a0
   10922:	4681                	c.li	a3,0
   10924:	40100513          	addi	a0,zero,1025
   10928:	e406                	c.sdsp	ra,8(sp)
   1092a:	00000097          	auipc	ra,0x0
   1092e:	e30080e7          	jalr	ra,-464(ra) # 1075a <__internal_syscall>
   10932:	60a2                	c.ldsp	ra,8(sp)
   10934:	2501                	c.addiw	a0,0
   10936:	0141                	c.addi	sp,16
   10938:	8082                	c.jr	ra

000000000001093a <unlink>:
   1093a:	1141                	c.addi	sp,-16
   1093c:	85aa                	c.mv	a1,a0
   1093e:	4701                	c.li	a4,0
   10940:	4681                	c.li	a3,0
   10942:	4601                	c.li	a2,0
   10944:	40200513          	addi	a0,zero,1026
   10948:	e406                	c.sdsp	ra,8(sp)
   1094a:	e11ff0ef          	jal	ra,1075a <__internal_syscall>
   1094e:	60a2                	c.ldsp	ra,8(sp)
   10950:	2501                	c.addiw	a0,0
   10952:	0141                	c.addi	sp,16
   10954:	8082                	c.jr	ra

0000000000010956 <execve>:
   10956:	1141                	c.addi	sp,-16
   10958:	e406                	c.sdsp	ra,8(sp)
   1095a:	00000097          	auipc	ra,0x0
   1095e:	1a2080e7          	jalr	ra,418(ra) # 10afc <__errno>
   10962:	60a2                	c.ldsp	ra,8(sp)
   10964:	47b1                	c.li	a5,12
   10966:	c11c                	c.sw	a5,0(a0)
   10968:	557d                	c.li	a0,-1
   1096a:	0141                	c.addi	sp,16
   1096c:	8082                	c.jr	ra

000000000001096e <fork>:
   1096e:	1141                	c.addi	sp,-16
   10970:	e406                	c.sdsp	ra,8(sp)
   10972:	18a000ef          	jal	ra,10afc <__errno>
   10976:	60a2                	c.ldsp	ra,8(sp)
   10978:	47ad                	c.li	a5,11
   1097a:	c11c                	c.sw	a5,0(a0)
   1097c:	557d                	c.li	a0,-1
   1097e:	0141                	c.addi	sp,16
   10980:	8082                	c.jr	ra

0000000000010982 <getpid>:
   10982:	4505                	c.li	a0,1
   10984:	8082                	c.jr	ra

0000000000010986 <kill>:
   10986:	1141                	c.addi	sp,-16
   10988:	e406                	c.sdsp	ra,8(sp)
   1098a:	172000ef          	jal	ra,10afc <__errno>
   1098e:	60a2                	c.ldsp	ra,8(sp)
   10990:	47d9                	c.li	a5,22
   10992:	c11c                	c.sw	a5,0(a0)
   10994:	557d                	c.li	a0,-1
   10996:	0141                	c.addi	sp,16
   10998:	8082                	c.jr	ra

000000000001099a <wait>:
   1099a:	1141                	c.addi	sp,-16
   1099c:	e406                	c.sdsp	ra,8(sp)
   1099e:	00000097          	auipc	ra,0x0
   109a2:	15e080e7          	jalr	ra,350(ra) # 10afc <__errno>
   109a6:	60a2                	c.ldsp	ra,8(sp)
   109a8:	47a9                	c.li	a5,10
   109aa:	c11c                	c.sw	a5,0(a0)
   109ac:	557d                	c.li	a0,-1
   109ae:	0141                	c.addi	sp,16
   109b0:	8082                	c.jr	ra

00000000000109b2 <isatty>:
   109b2:	7119                	c.addi16sp	sp,-128
   109b4:	002c                	c.addi4spn	a1,sp,8
   109b6:	fc86                	c.sdsp	ra,120(sp)
   109b8:	e33ff0ef          	jal	ra,107ea <fstat>
   109bc:	57fd                	c.li	a5,-1
   109be:	00f50663          	beq	a0,a5,109ca <isatty+0x18>
   109c2:	4532                	c.lwsp	a0,12(sp)
   109c4:	40d5551b          	sraiw	a0,a0,0xd
   109c8:	8905                	c.andi	a0,1
   109ca:	70e6                	c.ldsp	ra,120(sp)
   109cc:	6109                	c.addi16sp	sp,128
   109ce:	8082                	c.jr	ra

00000000000109d0 <gettimeofday>:
   109d0:	1141                	c.addi	sp,-16
   109d2:	85aa                	c.mv	a1,a0
   109d4:	4701                	c.li	a4,0
   109d6:	4681                	c.li	a3,0
   109d8:	4601                	c.li	a2,0
   109da:	0a900513          	addi	a0,zero,169
   109de:	e406                	c.sdsp	ra,8(sp)
   109e0:	00000097          	auipc	ra,0x0
   109e4:	d7a080e7          	jalr	ra,-646(ra) # 1075a <__internal_syscall>
   109e8:	60a2                	c.ldsp	ra,8(sp)
   109ea:	2501                	c.addiw	a0,0
   109ec:	0141                	c.addi	sp,16
   109ee:	8082                	c.jr	ra

00000000000109f0 <times>:
   109f0:	7179                	c.addi16sp	sp,-48
   109f2:	f022                	c.sdsp	s0,32(sp)
   109f4:	842a                	c.mv	s0,a0
   109f6:	8581b783          	ld	a5,-1960(gp) # 117b0 <t0.2574>
   109fa:	ec26                	c.sdsp	s1,24(sp)
   109fc:	f406                	c.sdsp	ra,40(sp)
   109fe:	85818493          	addi	s1,gp,-1960 # 117b0 <t0.2574>
   10a02:	eb81                	c.bnez	a5,10a12 <times+0x22>
   10a04:	4581                	c.li	a1,0
   10a06:	85818513          	addi	a0,gp,-1960 # 117b0 <t0.2574>
   10a0a:	00000097          	auipc	ra,0x0
   10a0e:	fc6080e7          	jalr	ra,-58(ra) # 109d0 <gettimeofday>
   10a12:	850a                	c.mv	a0,sp
   10a14:	4581                	c.li	a1,0
   10a16:	00000097          	auipc	ra,0x0
   10a1a:	fba080e7          	jalr	ra,-70(ra) # 109d0 <gettimeofday>
   10a1e:	6098                	c.ld	a4,0(s1)
   10a20:	6782                	c.ldsp	a5,0(sp)
   10a22:	6494                	c.ld	a3,8(s1)
   10a24:	00043823          	sd	zero,16(s0)
   10a28:	8f99                	c.sub	a5,a4
   10a2a:	000f4737          	lui	a4,0xf4
   10a2e:	24070713          	addi	a4,a4,576 # f4240 <__global_pointer$+0xe22e8>
   10a32:	02e787b3          	mul	a5,a5,a4
   10a36:	6722                	c.ldsp	a4,8(sp)
   10a38:	00043c23          	sd	zero,24(s0)
   10a3c:	00043423          	sd	zero,8(s0)
   10a40:	8f15                	c.sub	a4,a3
   10a42:	70a2                	c.ldsp	ra,40(sp)
   10a44:	64e2                	c.ldsp	s1,24(sp)
   10a46:	557d                	c.li	a0,-1
   10a48:	97ba                	c.add	a5,a4
   10a4a:	e01c                	c.sd	a5,0(s0)
   10a4c:	7402                	c.ldsp	s0,32(sp)
   10a4e:	6145                	c.addi16sp	sp,48
   10a50:	8082                	c.jr	ra

0000000000010a52 <ftime>:
   10a52:	00051423          	sh	zero,8(a0)
   10a56:	00053023          	sd	zero,0(a0)
   10a5a:	4501                	c.li	a0,0
   10a5c:	8082                	c.jr	ra

0000000000010a5e <utime>:
   10a5e:	557d                	c.li	a0,-1
   10a60:	8082                	c.jr	ra

0000000000010a62 <chown>:
   10a62:	557d                	c.li	a0,-1
   10a64:	8082                	c.jr	ra

0000000000010a66 <chmod>:
   10a66:	557d                	c.li	a0,-1
   10a68:	8082                	c.jr	ra

0000000000010a6a <chdir>:
   10a6a:	557d                	c.li	a0,-1
   10a6c:	8082                	c.jr	ra

0000000000010a6e <getcwd>:
   10a6e:	4501                	c.li	a0,0
   10a70:	8082                	c.jr	ra

0000000000010a72 <sysconf>:
   10a72:	4789                	c.li	a5,2
   10a74:	00f50463          	beq	a0,a5,10a7c <sysconf+0xa>
   10a78:	557d                	c.li	a0,-1
   10a7a:	8082                	c.jr	ra
   10a7c:	000f4537          	lui	a0,0xf4
   10a80:	24050513          	addi	a0,a0,576 # f4240 <__global_pointer$+0xe22e8>
   10a84:	8082                	c.jr	ra

0000000000010a86 <sbrk>:
   10a86:	1101                	c.addi	sp,-32
   10a88:	e822                	c.sdsp	s0,16(sp)
   10a8a:	8181b783          	ld	a5,-2024(gp) # 11770 <_edata>
   10a8e:	e426                	c.sdsp	s1,8(sp)
   10a90:	ec06                	c.sdsp	ra,24(sp)
   10a92:	84aa                	c.mv	s1,a0
   10a94:	e785                	c.bnez	a5,10abc <sbrk+0x36>
   10a96:	4701                	c.li	a4,0
   10a98:	4681                	c.li	a3,0
   10a9a:	4601                	c.li	a2,0
   10a9c:	4581                	c.li	a1,0
   10a9e:	0d600513          	addi	a0,zero,214
   10aa2:	cb9ff0ef          	jal	ra,1075a <__internal_syscall>
   10aa6:	57fd                	c.li	a5,-1
   10aa8:	00f51863          	bne	a0,a5,10ab8 <sbrk+0x32>
   10aac:	557d                	c.li	a0,-1
   10aae:	60e2                	c.ldsp	ra,24(sp)
   10ab0:	6442                	c.ldsp	s0,16(sp)
   10ab2:	64a2                	c.ldsp	s1,8(sp)
   10ab4:	6105                	c.addi16sp	sp,32
   10ab6:	8082                	c.jr	ra
   10ab8:	80a1bc23          	sd	a0,-2024(gp) # 11770 <_edata>
   10abc:	8181b583          	ld	a1,-2024(gp) # 11770 <_edata>
   10ac0:	4701                	c.li	a4,0
   10ac2:	4681                	c.li	a3,0
   10ac4:	95a6                	c.add	a1,s1
   10ac6:	4601                	c.li	a2,0
   10ac8:	0d600513          	addi	a0,zero,214
   10acc:	c8fff0ef          	jal	ra,1075a <__internal_syscall>
   10ad0:	8181b783          	ld	a5,-2024(gp) # 11770 <_edata>
   10ad4:	94be                	c.add	s1,a5
   10ad6:	fc951be3          	bne	a0,s1,10aac <sbrk+0x26>
   10ada:	80a1bc23          	sd	a0,-2024(gp) # 11770 <_edata>
   10ade:	853e                	c.mv	a0,a5
   10ae0:	b7f9                	c.j	10aae <sbrk+0x28>

0000000000010ae2 <_exit>:
   10ae2:	1141                	c.addi	sp,-16
   10ae4:	85aa                	c.mv	a1,a0
   10ae6:	4701                	c.li	a4,0
   10ae8:	4681                	c.li	a3,0
   10aea:	4601                	c.li	a2,0
   10aec:	05d00513          	addi	a0,zero,93
   10af0:	e406                	c.sdsp	ra,8(sp)
   10af2:	00000097          	auipc	ra,0x0
   10af6:	c68080e7          	jalr	ra,-920(ra) # 1075a <__internal_syscall>
   10afa:	a001                	c.j	10afa <_exit+0x18>

0000000000010afc <__errno>:
   10afc:	8101b503          	ld	a0,-2032(gp) # 11768 <_impure_ptr>
   10b00:	8082                	c.jr	ra
	...

Disassembly of section .eh_frame:

0000000000010b04 <__EH_FRAME_BEGIN__>:
   10b04:	0000                	unimp
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
