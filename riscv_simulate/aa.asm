
aa:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100b0 <_start>:
   100b0:	00002197          	auipc	gp,0x2
   100b4:	ea818193          	addi	gp,gp,-344 # 11f58 <__global_pointer$>
   100b8:	82018513          	addi	a0,gp,-2016 # 11778 <_edata>
   100bc:	87818613          	addi	a2,gp,-1928 # 117d0 <_end>
   100c0:	8e09                	c.sub	a2,a0
   100c2:	4581                	c.li	a1,0
   100c4:	25e000ef          	jal	ra,10322 <memset>
   100c8:	00000517          	auipc	a0,0x0
   100cc:	1a450513          	addi	a0,a0,420 # 1026c <__libc_fini_array>
   100d0:	00000097          	auipc	ra,0x0
   100d4:	16a080e7          	jalr	ra,362(ra) # 1023a <atexit>
   100d8:	00000097          	auipc	ra,0x0
   100dc:	1e2080e7          	jalr	ra,482(ra) # 102ba <__libc_init_array>
   100e0:	4502                	c.lwsp	a0,0(sp)
   100e2:	002c                	c.addi4spn	a1,sp,8
   100e4:	4601                	c.li	a2,0
   100e6:	102000ef          	jal	ra,101e8 <main>
   100ea:	00000317          	auipc	t1,0x0
   100ee:	15e30067          	jalr	zero,350(t1) # 10248 <exit>

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
   10144:	8301c703          	lbu	a4,-2000(gp) # 11788 <completed.5184>
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
   10162:	8f050513          	addi	a0,a0,-1808 # 108f0 <__EH_FRAME_BEGIN__>
   10166:	ffff0097          	auipc	ra,0xffff0
   1016a:	e9a080e7          	jalr	ra,-358(ra) # 0 <_start-0x100b0>
   1016e:	4785                	c.li	a5,1
   10170:	82f18823          	sb	a5,-2000(gp) # 11788 <completed.5184>
   10174:	60a2                	c.ldsp	ra,8(sp)
   10176:	6402                	c.ldsp	s0,0(sp)
   10178:	0141                	c.addi	sp,16
   1017a:	8082                	c.jr	ra
   1017c:	8082                	c.jr	ra

000000000001017e <frame_dummy>:
   1017e:	000007b7          	lui	a5,0x0
   10182:	00078793          	addi	a5,a5,0 # 0 <_start-0x100b0>
   10186:	cf91                	c.beqz	a5,101a2 <frame_dummy+0x24>
   10188:	6545                	c.lui	a0,0x11
   1018a:	1141                	c.addi	sp,-16
   1018c:	83818593          	addi	a1,gp,-1992 # 11790 <object.5189>
   10190:	8f050513          	addi	a0,a0,-1808 # 108f0 <__EH_FRAME_BEGIN__>
   10194:	e406                	c.sdsp	ra,8(sp)
   10196:	ffff0097          	auipc	ra,0xffff0
   1019a:	e6a080e7          	jalr	ra,-406(ra) # 0 <_start-0x100b0>
   1019e:	60a2                	c.ldsp	ra,8(sp)
   101a0:	0141                	c.addi	sp,16
   101a2:	f77ff06f          	jal	zero,10118 <register_tm_clones>
	...

00000000000101a8 <_Z3addii>:
   101a8:	fe010113          	addi	sp,sp,-32
   101ac:	00813c23          	sd	s0,24(sp)
   101b0:	02010413          	addi	s0,sp,32
   101b4:	00050793          	addi	a5,a0,0
   101b8:	00058713          	addi	a4,a1,0
   101bc:	fef42623          	sw	a5,-20(s0)
   101c0:	00070793          	addi	a5,a4,0
   101c4:	fef42423          	sw	a5,-24(s0)
   101c8:	fec42703          	lw	a4,-20(s0)
   101cc:	fe842783          	lw	a5,-24(s0)
   101d0:	00f707bb          	addw	a5,a4,a5
   101d4:	0007879b          	addiw	a5,a5,0
   101d8:	00078513          	addi	a0,a5,0
   101dc:	01813403          	ld	s0,24(sp)
   101e0:	02010113          	addi	sp,sp,32
   101e4:	00008067          	jalr	zero,0(ra)

00000000000101e8 <main>:
   101e8:	ff010113          	addi	sp,sp,-16
   101ec:	00113423          	sd	ra,8(sp)
   101f0:	00813023          	sd	s0,0(sp)
   101f4:	01010413          	addi	s0,sp,16
   101f8:	000117b7          	lui	a5,0x11
   101fc:	7607a703          	lw	a4,1888(a5) # 11760 <a>
   10200:	80c1a783          	lw	a5,-2036(gp) # 11764 <b>
   10204:	00078593          	addi	a1,a5,0
   10208:	00070513          	addi	a0,a4,0
   1020c:	00000097          	auipc	ra,0x0
   10210:	f9c080e7          	jalr	ra,-100(ra) # 101a8 <_Z3addii>
   10214:	00050793          	addi	a5,a0,0
   10218:	00078713          	addi	a4,a5,0
   1021c:	82e1a023          	sw	a4,-2016(gp) # 11778 <_edata>
   10220:	00000793          	addi	a5,zero,0
   10224:	00078513          	addi	a0,a5,0
   10228:	00813083          	ld	ra,8(sp)
   1022c:	00013403          	ld	s0,0(sp)
   10230:	01010113          	addi	sp,sp,16
   10234:	00008067          	jalr	zero,0(ra)
	...

000000000001023a <atexit>:
   1023a:	85aa                	c.mv	a1,a0
   1023c:	4681                	c.li	a3,0
   1023e:	4601                	c.li	a2,0
   10240:	4501                	c.li	a0,0
   10242:	18a0006f          	jal	zero,103cc <__register_exitproc>
	...

0000000000010248 <exit>:
   10248:	1141                	c.addi	sp,-16
   1024a:	4581                	c.li	a1,0
   1024c:	e022                	c.sdsp	s0,0(sp)
   1024e:	e406                	c.sdsp	ra,8(sp)
   10250:	842a                	c.mv	s0,a0
   10252:	1e0000ef          	jal	ra,10432 <__call_exitprocs>
   10256:	8101b503          	ld	a0,-2032(gp) # 11768 <_global_impure_ptr>
   1025a:	6d3c                	c.ld	a5,88(a0)
   1025c:	c391                	c.beqz	a5,10260 <exit+0x18>
   1025e:	9782                	c.jalr	a5
   10260:	8522                	c.mv	a0,s0
   10262:	00000097          	auipc	ra,0x0
   10266:	66a080e7          	jalr	ra,1642(ra) # 108cc <_exit>
	...

000000000001026c <__libc_fini_array>:
   1026c:	7179                	c.addi16sp	sp,-48
   1026e:	67c5                	c.lui	a5,0x11
   10270:	6745                	c.lui	a4,0x11
   10272:	f022                	c.sdsp	s0,32(sp)
   10274:	00870713          	addi	a4,a4,8 # 11008 <__init_array_end>
   10278:	01078413          	addi	s0,a5,16 # 11010 <__fini_array_end>
   1027c:	8c19                	c.sub	s0,a4
   1027e:	ec26                	c.sdsp	s1,24(sp)
   10280:	e84a                	c.sdsp	s2,16(sp)
   10282:	e44e                	c.sdsp	s3,8(sp)
   10284:	f406                	c.sdsp	ra,40(sp)
   10286:	840d                	c.srai	s0,0x3
   10288:	4481                	c.li	s1,0
   1028a:	01078913          	addi	s2,a5,16
   1028e:	59e1                	c.li	s3,-8
   10290:	00941c63          	bne	s0,s1,102a8 <__libc_fini_array+0x3c>
   10294:	7402                	c.ldsp	s0,32(sp)
   10296:	70a2                	c.ldsp	ra,40(sp)
   10298:	64e2                	c.ldsp	s1,24(sp)
   1029a:	6942                	c.ldsp	s2,16(sp)
   1029c:	69a2                	c.ldsp	s3,8(sp)
   1029e:	6145                	c.addi16sp	sp,48
   102a0:	00000317          	auipc	t1,0x0
   102a4:	e5230067          	jalr	zero,-430(t1) # 100f2 <_fini>
   102a8:	033487b3          	mul	a5,s1,s3
   102ac:	0485                	c.addi	s1,1
   102ae:	97ca                	c.add	a5,s2
   102b0:	ff87b783          	ld	a5,-8(a5)
   102b4:	9782                	c.jalr	a5
   102b6:	bfe9                	c.j	10290 <__libc_fini_array+0x24>
	...

00000000000102ba <__libc_init_array>:
   102ba:	1101                	c.addi	sp,-32
   102bc:	e822                	c.sdsp	s0,16(sp)
   102be:	e426                	c.sdsp	s1,8(sp)
   102c0:	6445                	c.lui	s0,0x11
   102c2:	64c5                	c.lui	s1,0x11
   102c4:	00048793          	addi	a5,s1,0 # 11000 <__frame_dummy_init_array_entry>
   102c8:	00040413          	addi	s0,s0,0 # 11000 <__frame_dummy_init_array_entry>
   102cc:	8c1d                	c.sub	s0,a5
   102ce:	e04a                	c.sdsp	s2,0(sp)
   102d0:	ec06                	c.sdsp	ra,24(sp)
   102d2:	840d                	c.srai	s0,0x3
   102d4:	00048493          	addi	s1,s1,0
   102d8:	4901                	c.li	s2,0
   102da:	02891963          	bne	s2,s0,1030c <__libc_init_array+0x52>
   102de:	64c5                	c.lui	s1,0x11
   102e0:	00000097          	auipc	ra,0x0
   102e4:	e12080e7          	jalr	ra,-494(ra) # 100f2 <_fini>
   102e8:	6445                	c.lui	s0,0x11
   102ea:	00048793          	addi	a5,s1,0 # 11000 <__frame_dummy_init_array_entry>
   102ee:	00840413          	addi	s0,s0,8 # 11008 <__init_array_end>
   102f2:	8c1d                	c.sub	s0,a5
   102f4:	840d                	c.srai	s0,0x3
   102f6:	00048493          	addi	s1,s1,0
   102fa:	4901                	c.li	s2,0
   102fc:	00891d63          	bne	s2,s0,10316 <__libc_init_array+0x5c>
   10300:	60e2                	c.ldsp	ra,24(sp)
   10302:	6442                	c.ldsp	s0,16(sp)
   10304:	64a2                	c.ldsp	s1,8(sp)
   10306:	6902                	c.ldsp	s2,0(sp)
   10308:	6105                	c.addi16sp	sp,32
   1030a:	8082                	c.jr	ra
   1030c:	609c                	c.ld	a5,0(s1)
   1030e:	0905                	c.addi	s2,1
   10310:	04a1                	c.addi	s1,8
   10312:	9782                	c.jalr	a5
   10314:	b7d9                	c.j	102da <__libc_init_array+0x20>
   10316:	609c                	c.ld	a5,0(s1)
   10318:	0905                	c.addi	s2,1
   1031a:	04a1                	c.addi	s1,8
   1031c:	9782                	c.jalr	a5
   1031e:	bff9                	c.j	102fc <__libc_init_array+0x42>
	...

0000000000010322 <memset>:
   10322:	483d                	c.li	a6,15
   10324:	872a                	c.mv	a4,a0
   10326:	02c87163          	bgeu	a6,a2,10348 <memset+0x26>
   1032a:	00f77793          	andi	a5,a4,15
   1032e:	e3c1                	c.bnez	a5,103ae <memset+0x8c>
   10330:	e1bd                	c.bnez	a1,10396 <memset+0x74>
   10332:	ff067693          	andi	a3,a2,-16
   10336:	8a3d                	c.andi	a2,15
   10338:	96ba                	c.add	a3,a4
   1033a:	e30c                	c.sd	a1,0(a4)
   1033c:	e70c                	c.sd	a1,8(a4)
   1033e:	0741                	c.addi	a4,16
   10340:	fed76de3          	bltu	a4,a3,1033a <memset+0x18>
   10344:	e211                	c.bnez	a2,10348 <memset+0x26>
   10346:	8082                	c.jr	ra
   10348:	40c806b3          	sub	a3,a6,a2
   1034c:	068a                	c.slli	a3,0x2
   1034e:	00000297          	auipc	t0,0x0
   10352:	9696                	c.add	a3,t0
   10354:	00a68067          	jalr	zero,10(a3)
   10358:	00b70723          	sb	a1,14(a4)
   1035c:	00b706a3          	sb	a1,13(a4)
   10360:	00b70623          	sb	a1,12(a4)
   10364:	00b705a3          	sb	a1,11(a4)
   10368:	00b70523          	sb	a1,10(a4)
   1036c:	00b704a3          	sb	a1,9(a4)
   10370:	00b70423          	sb	a1,8(a4)
   10374:	00b703a3          	sb	a1,7(a4)
   10378:	00b70323          	sb	a1,6(a4)
   1037c:	00b702a3          	sb	a1,5(a4)
   10380:	00b70223          	sb	a1,4(a4)
   10384:	00b701a3          	sb	a1,3(a4)
   10388:	00b70123          	sb	a1,2(a4)
   1038c:	00b700a3          	sb	a1,1(a4)
   10390:	00b70023          	sb	a1,0(a4)
   10394:	8082                	c.jr	ra
   10396:	0ff5f593          	andi	a1,a1,255
   1039a:	00859693          	slli	a3,a1,0x8
   1039e:	8dd5                	c.or	a1,a3
   103a0:	01059693          	slli	a3,a1,0x10
   103a4:	8dd5                	c.or	a1,a3
   103a6:	02059693          	slli	a3,a1,0x20
   103aa:	8dd5                	c.or	a1,a3
   103ac:	b759                	c.j	10332 <memset+0x10>
   103ae:	00279693          	slli	a3,a5,0x2
   103b2:	00000297          	auipc	t0,0x0
   103b6:	9696                	c.add	a3,t0
   103b8:	8286                	c.mv	t0,ra
   103ba:	fa2680e7          	jalr	ra,-94(a3)
   103be:	8096                	c.mv	ra,t0
   103c0:	17c1                	c.addi	a5,-16
   103c2:	8f1d                	c.sub	a4,a5
   103c4:	963e                	c.add	a2,a5
   103c6:	f8c871e3          	bgeu	a6,a2,10348 <memset+0x26>
   103ca:	b79d                	c.j	10330 <memset+0xe>

00000000000103cc <__register_exitproc>:
   103cc:	8101b703          	ld	a4,-2032(gp) # 11768 <_global_impure_ptr>
   103d0:	832a                	c.mv	t1,a0
   103d2:	1f873783          	ld	a5,504(a4)
   103d6:	e789                	c.bnez	a5,103e0 <__register_exitproc+0x14>
   103d8:	20070793          	addi	a5,a4,512
   103dc:	1ef73c23          	sd	a5,504(a4)
   103e0:	4798                	c.lw	a4,8(a5)
   103e2:	487d                	c.li	a6,31
   103e4:	557d                	c.li	a0,-1
   103e6:	04e84463          	blt	a6,a4,1042e <__register_exitproc+0x62>
   103ea:	02030a63          	beq	t1,zero,1041e <__register_exitproc+0x52>
   103ee:	00371813          	slli	a6,a4,0x3
   103f2:	983e                	c.add	a6,a5
   103f4:	10c83823          	sd	a2,272(a6)
   103f8:	3107a883          	lw	a7,784(a5)
   103fc:	4605                	c.li	a2,1
   103fe:	00e6163b          	sllw	a2,a2,a4
   10402:	00c8e8b3          	or	a7,a7,a2
   10406:	3117a823          	sw	a7,784(a5)
   1040a:	20d83823          	sd	a3,528(a6)
   1040e:	4689                	c.li	a3,2
   10410:	00d31763          	bne	t1,a3,1041e <__register_exitproc+0x52>
   10414:	3147a683          	lw	a3,788(a5)
   10418:	8e55                	c.or	a2,a3
   1041a:	30c7aa23          	sw	a2,788(a5)
   1041e:	0017069b          	addiw	a3,a4,1
   10422:	0709                	c.addi	a4,2
   10424:	070e                	c.slli	a4,0x3
   10426:	c794                	c.sw	a3,8(a5)
   10428:	97ba                	c.add	a5,a4
   1042a:	e38c                	c.sd	a1,0(a5)
   1042c:	4501                	c.li	a0,0
   1042e:	8082                	c.jr	ra
	...

0000000000010432 <__call_exitprocs>:
   10432:	715d                	c.addi16sp	sp,-80
   10434:	f44e                	c.sdsp	s3,40(sp)
   10436:	8101b983          	ld	s3,-2032(gp) # 11768 <_global_impure_ptr>
   1043a:	f052                	c.sdsp	s4,32(sp)
   1043c:	ec56                	c.sdsp	s5,24(sp)
   1043e:	e85a                	c.sdsp	s6,16(sp)
   10440:	e486                	c.sdsp	ra,72(sp)
   10442:	e0a2                	c.sdsp	s0,64(sp)
   10444:	fc26                	c.sdsp	s1,56(sp)
   10446:	f84a                	c.sdsp	s2,48(sp)
   10448:	e45e                	c.sdsp	s7,8(sp)
   1044a:	8aaa                	c.mv	s5,a0
   1044c:	8a2e                	c.mv	s4,a1
   1044e:	4b05                	c.li	s6,1
   10450:	1f89b403          	ld	s0,504(s3)
   10454:	c801                	c.beqz	s0,10464 <__call_exitprocs+0x32>
   10456:	4404                	c.lw	s1,8(s0)
   10458:	34fd                	c.addiw	s1,-1
   1045a:	00349913          	slli	s2,s1,0x3
   1045e:	9922                	c.add	s2,s0
   10460:	0004dd63          	bge	s1,zero,1047a <__call_exitprocs+0x48>
   10464:	60a6                	c.ldsp	ra,72(sp)
   10466:	6406                	c.ldsp	s0,64(sp)
   10468:	74e2                	c.ldsp	s1,56(sp)
   1046a:	7942                	c.ldsp	s2,48(sp)
   1046c:	79a2                	c.ldsp	s3,40(sp)
   1046e:	7a02                	c.ldsp	s4,32(sp)
   10470:	6ae2                	c.ldsp	s5,24(sp)
   10472:	6b42                	c.ldsp	s6,16(sp)
   10474:	6ba2                	c.ldsp	s7,8(sp)
   10476:	6161                	c.addi16sp	sp,80
   10478:	8082                	c.jr	ra
   1047a:	000a0963          	beq	s4,zero,1048c <__call_exitprocs+0x5a>
   1047e:	21093783          	ld	a5,528(s2)
   10482:	01478563          	beq	a5,s4,1048c <__call_exitprocs+0x5a>
   10486:	34fd                	c.addiw	s1,-1
   10488:	1961                	c.addi	s2,-8
   1048a:	bfd9                	c.j	10460 <__call_exitprocs+0x2e>
   1048c:	441c                	c.lw	a5,8(s0)
   1048e:	01093683          	ld	a3,16(s2)
   10492:	37fd                	c.addiw	a5,-1
   10494:	02979663          	bne	a5,s1,104c0 <__call_exitprocs+0x8e>
   10498:	c404                	c.sw	s1,8(s0)
   1049a:	d6f5                	c.beqz	a3,10486 <__call_exitprocs+0x54>
   1049c:	31042703          	lw	a4,784(s0)
   104a0:	009b163b          	sllw	a2,s6,s1
   104a4:	00842b83          	lw	s7,8(s0)
   104a8:	8f71                	c.and	a4,a2
   104aa:	2701                	c.addiw	a4,0
   104ac:	ef09                	c.bnez	a4,104c6 <__call_exitprocs+0x94>
   104ae:	9682                	c.jalr	a3
   104b0:	4418                	c.lw	a4,8(s0)
   104b2:	1f89b783          	ld	a5,504(s3)
   104b6:	f9771de3          	bne	a4,s7,10450 <__call_exitprocs+0x1e>
   104ba:	fcf406e3          	beq	s0,a5,10486 <__call_exitprocs+0x54>
   104be:	bf49                	c.j	10450 <__call_exitprocs+0x1e>
   104c0:	00093823          	sd	zero,16(s2)
   104c4:	bfd9                	c.j	1049a <__call_exitprocs+0x68>
   104c6:	31442783          	lw	a5,788(s0)
   104ca:	11093583          	ld	a1,272(s2)
   104ce:	8ff1                	c.and	a5,a2
   104d0:	2781                	c.addiw	a5,0
   104d2:	e781                	c.bnez	a5,104da <__call_exitprocs+0xa8>
   104d4:	8556                	c.mv	a0,s5
   104d6:	9682                	c.jalr	a3
   104d8:	bfe1                	c.j	104b0 <__call_exitprocs+0x7e>
   104da:	852e                	c.mv	a0,a1
   104dc:	9682                	c.jalr	a3
   104de:	bfc9                	c.j	104b0 <__call_exitprocs+0x7e>
	...

00000000000104e2 <conv_stat>:
   104e2:	619c                	c.ld	a5,0(a1)
   104e4:	00f51023          	sh	a5,0(a0)
   104e8:	659c                	c.ld	a5,8(a1)
   104ea:	00f51123          	sh	a5,2(a0)
   104ee:	499c                	c.lw	a5,16(a1)
   104f0:	c15c                	c.sw	a5,4(a0)
   104f2:	49dc                	c.lw	a5,20(a1)
   104f4:	00f51423          	sh	a5,8(a0)
   104f8:	4d9c                	c.lw	a5,24(a1)
   104fa:	00f51523          	sh	a5,10(a0)
   104fe:	4ddc                	c.lw	a5,28(a1)
   10500:	00f51623          	sh	a5,12(a0)
   10504:	719c                	c.ld	a5,32(a1)
   10506:	00f51723          	sh	a5,14(a0)
   1050a:	799c                	c.ld	a5,48(a1)
   1050c:	e91c                	c.sd	a5,16(a0)
   1050e:	61bc                	c.ld	a5,64(a1)
   10510:	e93c                	c.sd	a5,80(a0)
   10512:	5d9c                	c.lw	a5,56(a1)
   10514:	e53c                	c.sd	a5,72(a0)
   10516:	65bc                	c.ld	a5,72(a1)
   10518:	ed1c                	c.sd	a5,24(a0)
   1051a:	6dbc                	c.ld	a5,88(a1)
   1051c:	f51c                	c.sd	a5,40(a0)
   1051e:	75bc                	c.ld	a5,104(a1)
   10520:	fd1c                	c.sd	a5,56(a0)
   10522:	8082                	c.jr	ra

0000000000010524 <__syscall_error>:
   10524:	1141                	c.addi	sp,-16
   10526:	e022                	c.sdsp	s0,0(sp)
   10528:	e406                	c.sdsp	ra,8(sp)
   1052a:	842a                	c.mv	s0,a0
   1052c:	00000097          	auipc	ra,0x0
   10530:	3ba080e7          	jalr	ra,954(ra) # 108e6 <__errno>
   10534:	408007bb          	subw	a5,zero,s0
   10538:	60a2                	c.ldsp	ra,8(sp)
   1053a:	6402                	c.ldsp	s0,0(sp)
   1053c:	c11c                	c.sw	a5,0(a0)
   1053e:	557d                	c.li	a0,-1
   10540:	0141                	c.addi	sp,16
   10542:	8082                	c.jr	ra

0000000000010544 <__internal_syscall>:
   10544:	88aa                	c.mv	a7,a0
   10546:	852e                	c.mv	a0,a1
   10548:	85b2                	c.mv	a1,a2
   1054a:	8636                	c.mv	a2,a3
   1054c:	86ba                	c.mv	a3,a4
   1054e:	00000073          	ecall
   10552:	00055663          	bge	a0,zero,1055e <__internal_syscall+0x1a>
   10556:	00000317          	auipc	t1,0x0
   1055a:	fce30067          	jalr	zero,-50(t1) # 10524 <__syscall_error>
   1055e:	8082                	c.jr	ra

0000000000010560 <open>:
   10560:	1141                	c.addi	sp,-16
   10562:	86b2                	c.mv	a3,a2
   10564:	4701                	c.li	a4,0
   10566:	862e                	c.mv	a2,a1
   10568:	85aa                	c.mv	a1,a0
   1056a:	40000513          	addi	a0,zero,1024
   1056e:	e406                	c.sdsp	ra,8(sp)
   10570:	00000097          	auipc	ra,0x0
   10574:	fd4080e7          	jalr	ra,-44(ra) # 10544 <__internal_syscall>
   10578:	60a2                	c.ldsp	ra,8(sp)
   1057a:	2501                	c.addiw	a0,0
   1057c:	0141                	c.addi	sp,16
   1057e:	8082                	c.jr	ra

0000000000010580 <openat>:
   10580:	1141                	c.addi	sp,-16
   10582:	8736                	c.mv	a4,a3
   10584:	86b2                	c.mv	a3,a2
   10586:	862e                	c.mv	a2,a1
   10588:	85aa                	c.mv	a1,a0
   1058a:	03800513          	addi	a0,zero,56
   1058e:	e406                	c.sdsp	ra,8(sp)
   10590:	fb5ff0ef          	jal	ra,10544 <__internal_syscall>
   10594:	60a2                	c.ldsp	ra,8(sp)
   10596:	2501                	c.addiw	a0,0
   10598:	0141                	c.addi	sp,16
   1059a:	8082                	c.jr	ra

000000000001059c <lseek>:
   1059c:	86b2                	c.mv	a3,a2
   1059e:	4701                	c.li	a4,0
   105a0:	862e                	c.mv	a2,a1
   105a2:	85aa                	c.mv	a1,a0
   105a4:	03e00513          	addi	a0,zero,62
   105a8:	00000317          	auipc	t1,0x0
   105ac:	f9c30067          	jalr	zero,-100(t1) # 10544 <__internal_syscall>

00000000000105b0 <read>:
   105b0:	86b2                	c.mv	a3,a2
   105b2:	4701                	c.li	a4,0
   105b4:	862e                	c.mv	a2,a1
   105b6:	85aa                	c.mv	a1,a0
   105b8:	03f00513          	addi	a0,zero,63
   105bc:	f89ff06f          	jal	zero,10544 <__internal_syscall>

00000000000105c0 <write>:
   105c0:	86b2                	c.mv	a3,a2
   105c2:	4701                	c.li	a4,0
   105c4:	862e                	c.mv	a2,a1
   105c6:	85aa                	c.mv	a1,a0
   105c8:	04000513          	addi	a0,zero,64
   105cc:	00000317          	auipc	t1,0x0
   105d0:	f7830067          	jalr	zero,-136(t1) # 10544 <__internal_syscall>

00000000000105d4 <fstat>:
   105d4:	7135                	c.addi16sp	sp,-160
   105d6:	e526                	c.sdsp	s1,136(sp)
   105d8:	860a                	c.mv	a2,sp
   105da:	84ae                	c.mv	s1,a1
   105dc:	4701                	c.li	a4,0
   105de:	85aa                	c.mv	a1,a0
   105e0:	4681                	c.li	a3,0
   105e2:	05000513          	addi	a0,zero,80
   105e6:	ed06                	c.sdsp	ra,152(sp)
   105e8:	e922                	c.sdsp	s0,144(sp)
   105ea:	f5bff0ef          	jal	ra,10544 <__internal_syscall>
   105ee:	842a                	c.mv	s0,a0
   105f0:	858a                	c.mv	a1,sp
   105f2:	8526                	c.mv	a0,s1
   105f4:	eefff0ef          	jal	ra,104e2 <conv_stat>
   105f8:	0004051b          	addiw	a0,s0,0
   105fc:	60ea                	c.ldsp	ra,152(sp)
   105fe:	644a                	c.ldsp	s0,144(sp)
   10600:	64aa                	c.ldsp	s1,136(sp)
   10602:	610d                	c.addi16sp	sp,160
   10604:	8082                	c.jr	ra

0000000000010606 <stat>:
   10606:	7135                	c.addi16sp	sp,-160
   10608:	e526                	c.sdsp	s1,136(sp)
   1060a:	860a                	c.mv	a2,sp
   1060c:	84ae                	c.mv	s1,a1
   1060e:	4701                	c.li	a4,0
   10610:	85aa                	c.mv	a1,a0
   10612:	4681                	c.li	a3,0
   10614:	40e00513          	addi	a0,zero,1038
   10618:	ed06                	c.sdsp	ra,152(sp)
   1061a:	e922                	c.sdsp	s0,144(sp)
   1061c:	00000097          	auipc	ra,0x0
   10620:	f28080e7          	jalr	ra,-216(ra) # 10544 <__internal_syscall>
   10624:	842a                	c.mv	s0,a0
   10626:	858a                	c.mv	a1,sp
   10628:	8526                	c.mv	a0,s1
   1062a:	00000097          	auipc	ra,0x0
   1062e:	eb8080e7          	jalr	ra,-328(ra) # 104e2 <conv_stat>
   10632:	0004051b          	addiw	a0,s0,0
   10636:	60ea                	c.ldsp	ra,152(sp)
   10638:	644a                	c.ldsp	s0,144(sp)
   1063a:	64aa                	c.ldsp	s1,136(sp)
   1063c:	610d                	c.addi16sp	sp,160
   1063e:	8082                	c.jr	ra

0000000000010640 <lstat>:
   10640:	7135                	c.addi16sp	sp,-160
   10642:	e526                	c.sdsp	s1,136(sp)
   10644:	860a                	c.mv	a2,sp
   10646:	84ae                	c.mv	s1,a1
   10648:	4701                	c.li	a4,0
   1064a:	85aa                	c.mv	a1,a0
   1064c:	4681                	c.li	a3,0
   1064e:	40f00513          	addi	a0,zero,1039
   10652:	ed06                	c.sdsp	ra,152(sp)
   10654:	e922                	c.sdsp	s0,144(sp)
   10656:	eefff0ef          	jal	ra,10544 <__internal_syscall>
   1065a:	842a                	c.mv	s0,a0
   1065c:	858a                	c.mv	a1,sp
   1065e:	8526                	c.mv	a0,s1
   10660:	e83ff0ef          	jal	ra,104e2 <conv_stat>
   10664:	0004051b          	addiw	a0,s0,0
   10668:	60ea                	c.ldsp	ra,152(sp)
   1066a:	644a                	c.ldsp	s0,144(sp)
   1066c:	64aa                	c.ldsp	s1,136(sp)
   1066e:	610d                	c.addi16sp	sp,160
   10670:	8082                	c.jr	ra

0000000000010672 <fstatat>:
   10672:	7135                	c.addi16sp	sp,-160
   10674:	e526                	c.sdsp	s1,136(sp)
   10676:	8736                	c.mv	a4,a3
   10678:	84b2                	c.mv	s1,a2
   1067a:	868a                	c.mv	a3,sp
   1067c:	862e                	c.mv	a2,a1
   1067e:	85aa                	c.mv	a1,a0
   10680:	04f00513          	addi	a0,zero,79
   10684:	ed06                	c.sdsp	ra,152(sp)
   10686:	e922                	c.sdsp	s0,144(sp)
   10688:	00000097          	auipc	ra,0x0
   1068c:	ebc080e7          	jalr	ra,-324(ra) # 10544 <__internal_syscall>
   10690:	842a                	c.mv	s0,a0
   10692:	858a                	c.mv	a1,sp
   10694:	8526                	c.mv	a0,s1
   10696:	00000097          	auipc	ra,0x0
   1069a:	e4c080e7          	jalr	ra,-436(ra) # 104e2 <conv_stat>
   1069e:	0004051b          	addiw	a0,s0,0
   106a2:	60ea                	c.ldsp	ra,152(sp)
   106a4:	644a                	c.ldsp	s0,144(sp)
   106a6:	64aa                	c.ldsp	s1,136(sp)
   106a8:	610d                	c.addi16sp	sp,160
   106aa:	8082                	c.jr	ra

00000000000106ac <access>:
   106ac:	1141                	c.addi	sp,-16
   106ae:	862e                	c.mv	a2,a1
   106b0:	4701                	c.li	a4,0
   106b2:	85aa                	c.mv	a1,a0
   106b4:	4681                	c.li	a3,0
   106b6:	40900513          	addi	a0,zero,1033
   106ba:	e406                	c.sdsp	ra,8(sp)
   106bc:	e89ff0ef          	jal	ra,10544 <__internal_syscall>
   106c0:	60a2                	c.ldsp	ra,8(sp)
   106c2:	2501                	c.addiw	a0,0
   106c4:	0141                	c.addi	sp,16
   106c6:	8082                	c.jr	ra

00000000000106c8 <faccessat>:
   106c8:	1141                	c.addi	sp,-16
   106ca:	8736                	c.mv	a4,a3
   106cc:	86b2                	c.mv	a3,a2
   106ce:	862e                	c.mv	a2,a1
   106d0:	85aa                	c.mv	a1,a0
   106d2:	03000513          	addi	a0,zero,48
   106d6:	e406                	c.sdsp	ra,8(sp)
   106d8:	00000097          	auipc	ra,0x0
   106dc:	e6c080e7          	jalr	ra,-404(ra) # 10544 <__internal_syscall>
   106e0:	60a2                	c.ldsp	ra,8(sp)
   106e2:	2501                	c.addiw	a0,0
   106e4:	0141                	c.addi	sp,16
   106e6:	8082                	c.jr	ra

00000000000106e8 <close>:
   106e8:	1141                	c.addi	sp,-16
   106ea:	85aa                	c.mv	a1,a0
   106ec:	4701                	c.li	a4,0
   106ee:	4681                	c.li	a3,0
   106f0:	4601                	c.li	a2,0
   106f2:	03900513          	addi	a0,zero,57
   106f6:	e406                	c.sdsp	ra,8(sp)
   106f8:	e4dff0ef          	jal	ra,10544 <__internal_syscall>
   106fc:	60a2                	c.ldsp	ra,8(sp)
   106fe:	2501                	c.addiw	a0,0
   10700:	0141                	c.addi	sp,16
   10702:	8082                	c.jr	ra

0000000000010704 <link>:
   10704:	1141                	c.addi	sp,-16
   10706:	862e                	c.mv	a2,a1
   10708:	4701                	c.li	a4,0
   1070a:	85aa                	c.mv	a1,a0
   1070c:	4681                	c.li	a3,0
   1070e:	40100513          	addi	a0,zero,1025
   10712:	e406                	c.sdsp	ra,8(sp)
   10714:	00000097          	auipc	ra,0x0
   10718:	e30080e7          	jalr	ra,-464(ra) # 10544 <__internal_syscall>
   1071c:	60a2                	c.ldsp	ra,8(sp)
   1071e:	2501                	c.addiw	a0,0
   10720:	0141                	c.addi	sp,16
   10722:	8082                	c.jr	ra

0000000000010724 <unlink>:
   10724:	1141                	c.addi	sp,-16
   10726:	85aa                	c.mv	a1,a0
   10728:	4701                	c.li	a4,0
   1072a:	4681                	c.li	a3,0
   1072c:	4601                	c.li	a2,0
   1072e:	40200513          	addi	a0,zero,1026
   10732:	e406                	c.sdsp	ra,8(sp)
   10734:	e11ff0ef          	jal	ra,10544 <__internal_syscall>
   10738:	60a2                	c.ldsp	ra,8(sp)
   1073a:	2501                	c.addiw	a0,0
   1073c:	0141                	c.addi	sp,16
   1073e:	8082                	c.jr	ra

0000000000010740 <execve>:
   10740:	1141                	c.addi	sp,-16
   10742:	e406                	c.sdsp	ra,8(sp)
   10744:	00000097          	auipc	ra,0x0
   10748:	1a2080e7          	jalr	ra,418(ra) # 108e6 <__errno>
   1074c:	60a2                	c.ldsp	ra,8(sp)
   1074e:	47b1                	c.li	a5,12
   10750:	c11c                	c.sw	a5,0(a0)
   10752:	557d                	c.li	a0,-1
   10754:	0141                	c.addi	sp,16
   10756:	8082                	c.jr	ra

0000000000010758 <fork>:
   10758:	1141                	c.addi	sp,-16
   1075a:	e406                	c.sdsp	ra,8(sp)
   1075c:	18a000ef          	jal	ra,108e6 <__errno>
   10760:	60a2                	c.ldsp	ra,8(sp)
   10762:	47ad                	c.li	a5,11
   10764:	c11c                	c.sw	a5,0(a0)
   10766:	557d                	c.li	a0,-1
   10768:	0141                	c.addi	sp,16
   1076a:	8082                	c.jr	ra

000000000001076c <getpid>:
   1076c:	4505                	c.li	a0,1
   1076e:	8082                	c.jr	ra

0000000000010770 <kill>:
   10770:	1141                	c.addi	sp,-16
   10772:	e406                	c.sdsp	ra,8(sp)
   10774:	172000ef          	jal	ra,108e6 <__errno>
   10778:	60a2                	c.ldsp	ra,8(sp)
   1077a:	47d9                	c.li	a5,22
   1077c:	c11c                	c.sw	a5,0(a0)
   1077e:	557d                	c.li	a0,-1
   10780:	0141                	c.addi	sp,16
   10782:	8082                	c.jr	ra

0000000000010784 <wait>:
   10784:	1141                	c.addi	sp,-16
   10786:	e406                	c.sdsp	ra,8(sp)
   10788:	00000097          	auipc	ra,0x0
   1078c:	15e080e7          	jalr	ra,350(ra) # 108e6 <__errno>
   10790:	60a2                	c.ldsp	ra,8(sp)
   10792:	47a9                	c.li	a5,10
   10794:	c11c                	c.sw	a5,0(a0)
   10796:	557d                	c.li	a0,-1
   10798:	0141                	c.addi	sp,16
   1079a:	8082                	c.jr	ra

000000000001079c <isatty>:
   1079c:	7119                	c.addi16sp	sp,-128
   1079e:	002c                	c.addi4spn	a1,sp,8
   107a0:	fc86                	c.sdsp	ra,120(sp)
   107a2:	e33ff0ef          	jal	ra,105d4 <fstat>
   107a6:	57fd                	c.li	a5,-1
   107a8:	00f50663          	beq	a0,a5,107b4 <isatty+0x18>
   107ac:	4532                	c.lwsp	a0,12(sp)
   107ae:	40d5551b          	sraiw	a0,a0,0xd
   107b2:	8905                	c.andi	a0,1
   107b4:	70e6                	c.ldsp	ra,120(sp)
   107b6:	6109                	c.addi16sp	sp,128
   107b8:	8082                	c.jr	ra

00000000000107ba <gettimeofday>:
   107ba:	1141                	c.addi	sp,-16
   107bc:	85aa                	c.mv	a1,a0
   107be:	4701                	c.li	a4,0
   107c0:	4681                	c.li	a3,0
   107c2:	4601                	c.li	a2,0
   107c4:	0a900513          	addi	a0,zero,169
   107c8:	e406                	c.sdsp	ra,8(sp)
   107ca:	00000097          	auipc	ra,0x0
   107ce:	d7a080e7          	jalr	ra,-646(ra) # 10544 <__internal_syscall>
   107d2:	60a2                	c.ldsp	ra,8(sp)
   107d4:	2501                	c.addiw	a0,0
   107d6:	0141                	c.addi	sp,16
   107d8:	8082                	c.jr	ra

00000000000107da <times>:
   107da:	7179                	c.addi16sp	sp,-48
   107dc:	f022                	c.sdsp	s0,32(sp)
   107de:	842a                	c.mv	s0,a0
   107e0:	8681b783          	ld	a5,-1944(gp) # 117c0 <t0.2574>
   107e4:	ec26                	c.sdsp	s1,24(sp)
   107e6:	f406                	c.sdsp	ra,40(sp)
   107e8:	86818493          	addi	s1,gp,-1944 # 117c0 <t0.2574>
   107ec:	eb81                	c.bnez	a5,107fc <times+0x22>
   107ee:	4581                	c.li	a1,0
   107f0:	86818513          	addi	a0,gp,-1944 # 117c0 <t0.2574>
   107f4:	00000097          	auipc	ra,0x0
   107f8:	fc6080e7          	jalr	ra,-58(ra) # 107ba <gettimeofday>
   107fc:	850a                	c.mv	a0,sp
   107fe:	4581                	c.li	a1,0
   10800:	00000097          	auipc	ra,0x0
   10804:	fba080e7          	jalr	ra,-70(ra) # 107ba <gettimeofday>
   10808:	6098                	c.ld	a4,0(s1)
   1080a:	6782                	c.ldsp	a5,0(sp)
   1080c:	6494                	c.ld	a3,8(s1)
   1080e:	00043823          	sd	zero,16(s0)
   10812:	8f99                	c.sub	a5,a4
   10814:	000f4737          	lui	a4,0xf4
   10818:	24070713          	addi	a4,a4,576 # f4240 <__global_pointer$+0xe22e8>
   1081c:	02e787b3          	mul	a5,a5,a4
   10820:	6722                	c.ldsp	a4,8(sp)
   10822:	00043c23          	sd	zero,24(s0)
   10826:	00043423          	sd	zero,8(s0)
   1082a:	8f15                	c.sub	a4,a3
   1082c:	70a2                	c.ldsp	ra,40(sp)
   1082e:	64e2                	c.ldsp	s1,24(sp)
   10830:	557d                	c.li	a0,-1
   10832:	97ba                	c.add	a5,a4
   10834:	e01c                	c.sd	a5,0(s0)
   10836:	7402                	c.ldsp	s0,32(sp)
   10838:	6145                	c.addi16sp	sp,48
   1083a:	8082                	c.jr	ra

000000000001083c <ftime>:
   1083c:	00051423          	sh	zero,8(a0)
   10840:	00053023          	sd	zero,0(a0)
   10844:	4501                	c.li	a0,0
   10846:	8082                	c.jr	ra

0000000000010848 <utime>:
   10848:	557d                	c.li	a0,-1
   1084a:	8082                	c.jr	ra

000000000001084c <chown>:
   1084c:	557d                	c.li	a0,-1
   1084e:	8082                	c.jr	ra

0000000000010850 <chmod>:
   10850:	557d                	c.li	a0,-1
   10852:	8082                	c.jr	ra

0000000000010854 <chdir>:
   10854:	557d                	c.li	a0,-1
   10856:	8082                	c.jr	ra

0000000000010858 <getcwd>:
   10858:	4501                	c.li	a0,0
   1085a:	8082                	c.jr	ra

000000000001085c <sysconf>:
   1085c:	4789                	c.li	a5,2
   1085e:	00f50463          	beq	a0,a5,10866 <sysconf+0xa>
   10862:	557d                	c.li	a0,-1
   10864:	8082                	c.jr	ra
   10866:	000f4537          	lui	a0,0xf4
   1086a:	24050513          	addi	a0,a0,576 # f4240 <__global_pointer$+0xe22e8>
   1086e:	8082                	c.jr	ra

0000000000010870 <sbrk>:
   10870:	1101                	c.addi	sp,-32
   10872:	e822                	c.sdsp	s0,16(sp)
   10874:	8281b783          	ld	a5,-2008(gp) # 11780 <heap_end.2611>
   10878:	e426                	c.sdsp	s1,8(sp)
   1087a:	ec06                	c.sdsp	ra,24(sp)
   1087c:	84aa                	c.mv	s1,a0
   1087e:	e785                	c.bnez	a5,108a6 <sbrk+0x36>
   10880:	4701                	c.li	a4,0
   10882:	4681                	c.li	a3,0
   10884:	4601                	c.li	a2,0
   10886:	4581                	c.li	a1,0
   10888:	0d600513          	addi	a0,zero,214
   1088c:	cb9ff0ef          	jal	ra,10544 <__internal_syscall>
   10890:	57fd                	c.li	a5,-1
   10892:	00f51863          	bne	a0,a5,108a2 <sbrk+0x32>
   10896:	557d                	c.li	a0,-1
   10898:	60e2                	c.ldsp	ra,24(sp)
   1089a:	6442                	c.ldsp	s0,16(sp)
   1089c:	64a2                	c.ldsp	s1,8(sp)
   1089e:	6105                	c.addi16sp	sp,32
   108a0:	8082                	c.jr	ra
   108a2:	82a1b423          	sd	a0,-2008(gp) # 11780 <heap_end.2611>
   108a6:	8281b583          	ld	a1,-2008(gp) # 11780 <heap_end.2611>
   108aa:	4701                	c.li	a4,0
   108ac:	4681                	c.li	a3,0
   108ae:	95a6                	c.add	a1,s1
   108b0:	4601                	c.li	a2,0
   108b2:	0d600513          	addi	a0,zero,214
   108b6:	c8fff0ef          	jal	ra,10544 <__internal_syscall>
   108ba:	8281b783          	ld	a5,-2008(gp) # 11780 <heap_end.2611>
   108be:	94be                	c.add	s1,a5
   108c0:	fc951be3          	bne	a0,s1,10896 <sbrk+0x26>
   108c4:	82a1b423          	sd	a0,-2008(gp) # 11780 <heap_end.2611>
   108c8:	853e                	c.mv	a0,a5
   108ca:	b7f9                	c.j	10898 <sbrk+0x28>

00000000000108cc <_exit>:
   108cc:	1141                	c.addi	sp,-16
   108ce:	85aa                	c.mv	a1,a0
   108d0:	4701                	c.li	a4,0
   108d2:	4681                	c.li	a3,0
   108d4:	4601                	c.li	a2,0
   108d6:	05d00513          	addi	a0,zero,93
   108da:	e406                	c.sdsp	ra,8(sp)
   108dc:	00000097          	auipc	ra,0x0
   108e0:	c68080e7          	jalr	ra,-920(ra) # 10544 <__internal_syscall>
   108e4:	a001                	c.j	108e4 <_exit+0x18>

00000000000108e6 <__errno>:
   108e6:	8181b503          	ld	a0,-2024(gp) # 11770 <_impure_ptr>
   108ea:	8082                	c.jr	ra
	...

Disassembly of section .eh_frame:

00000000000108f0 <__EH_FRAME_BEGIN__>:
   108f0:	0010                	c.addi4spn	a2,sp,0
   108f2:	0000                	unimp
   108f4:	0000                	unimp
   108f6:	0000                	unimp
   108f8:	7a01                	c.lui	s4,0xfffe0
   108fa:	0052                	0x52
   108fc:	7c01                	c.lui	s8,0xfffe0
   108fe:	0101                	c.addi	sp,0
   10900:	00020d1b          	addiw	s10,tp,0
   10904:	001c                	c.addi4spn	a5,sp,0
   10906:	0000                	unimp
   10908:	0018                	c.addi4spn	a4,sp,0
   1090a:	0000                	unimp
   1090c:	f89c                	c.sd	a5,48(s1)
   1090e:	ffff                	0xffff
   10910:	0040                	c.addi4spn	s0,sp,4
   10912:	0000                	unimp
   10914:	4400                	c.lw	s0,8(s0)
   10916:	200e                	c.fldsp	ft0,192(sp)
   10918:	8844                	0x8844
   1091a:	4402                	c.lwsp	s0,0(sp)
   1091c:	080c                	c.addi4spn	a1,sp,16
   1091e:	6c00                	c.ld	s0,24(s0)
   10920:	44c8                	c.lw	a0,12(s1)
   10922:	020d                	c.addi	tp,3
   10924:	0020                	c.addi4spn	s0,sp,8
   10926:	0000                	unimp
   10928:	0038                	c.addi4spn	a4,sp,8
   1092a:	0000                	unimp
   1092c:	f8bc                	c.sd	a5,112(s1)
   1092e:	ffff                	0xffff
   10930:	0050                	c.addi4spn	a2,sp,4
   10932:	0000                	unimp
   10934:	4400                	c.lw	s0,8(s0)
   10936:	100e                	0x100e
   10938:	8148                	0x8148
   1093a:	8802                	c.jr	a6
   1093c:	4404                	c.lw	s1,8(s0)
   1093e:	080c                	c.addi4spn	a1,sp,16
   10940:	7c00                	c.ld	s0,56(s0)
   10942:	44c1                	c.li	s1,16
   10944:	44c8                	c.lw	a0,12(s1)
   10946:	020d                	c.addi	tp,3

0000000000010948 <__FRAME_END__>:
   10948:	0000                	unimp
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

0000000000011760 <a>:
   11760:	0001                	c.addi	zero,0
	...

0000000000011764 <b>:
   11764:	0002                	0x2
	...

0000000000011768 <_global_impure_ptr>:
   11768:	1010                	c.addi4spn	a2,sp,32
   1176a:	0001                	c.addi	zero,0
   1176c:	0000                	unimp
	...

0000000000011770 <_impure_ptr>:
   11770:	1010                	c.addi4spn	a2,sp,32
   11772:	0001                	c.addi	zero,0
   11774:	0000                	unimp
	...

Disassembly of section .sbss:

0000000000011778 <c>:
	...

0000000000011780 <heap_end.2611>:
	...

Disassembly of section .bss:

0000000000011788 <completed.5184>:
	...

0000000000011790 <object.5189>:
	...

00000000000117c0 <t0.2574>:
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
