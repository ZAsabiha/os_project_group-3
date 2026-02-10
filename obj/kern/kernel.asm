
obj/kern/kernel:     file format elf32-i386


Disassembly of section .text:

00100000 <video_init>:
  100000:	55                   	push   %ebp
  100001:	89 e5                	mov    %esp,%ebp
  100003:	53                   	push   %ebx
  100004:	83 ec 14             	sub    $0x14,%esp
  100007:	e8 b4 03 00 00       	call   1003c0 <__x86.get_pc_thunk.bx>
  10000c:	81 c3 e8 cf 00 00    	add    $0xcfe8,%ebx
  100012:	c7 45 f4 00 80 0b 00 	movl   $0xb8000,-0xc(%ebp)
  100019:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10001c:	0f b7 00             	movzwl (%eax),%eax
  10001f:	66 89 45 f2          	mov    %ax,-0xe(%ebp)
  100023:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100026:	66 c7 00 5a a5       	movw   $0xa55a,(%eax)
  10002b:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10002e:	0f b7 00             	movzwl (%eax),%eax
  100031:	66 3d 5a a5          	cmp    $0xa55a,%ax
  100035:	74 2c                	je     100063 <video_init+0x63>
  100037:	c7 45 f4 00 00 0b 00 	movl   $0xb0000,-0xc(%ebp)
  10003e:	c7 83 0c 60 00 00 b4 	movl   $0x3b4,0x600c(%ebx)
  100045:	03 00 00 
  100048:	8b 83 0c 60 00 00    	mov    0x600c(%ebx),%eax
  10004e:	83 ec 08             	sub    $0x8,%esp
  100051:	50                   	push   %eax
  100052:	8d 83 0c b0 ff ff    	lea    -0x4ff4(%ebx),%eax
  100058:	50                   	push   %eax
  100059:	e8 0e 2d 00 00       	call   102d6c <dprintf>
  10005e:	83 c4 10             	add    $0x10,%esp
  100061:	eb 2d                	jmp    100090 <video_init+0x90>
  100063:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100066:	0f b7 55 f2          	movzwl -0xe(%ebp),%edx
  10006a:	66 89 10             	mov    %dx,(%eax)
  10006d:	c7 83 0c 60 00 00 d4 	movl   $0x3d4,0x600c(%ebx)
  100074:	03 00 00 
  100077:	8b 83 0c 60 00 00    	mov    0x600c(%ebx),%eax
  10007d:	83 ec 08             	sub    $0x8,%esp
  100080:	50                   	push   %eax
  100081:	8d 83 0c b0 ff ff    	lea    -0x4ff4(%ebx),%eax
  100087:	50                   	push   %eax
  100088:	e8 df 2c 00 00       	call   102d6c <dprintf>
  10008d:	83 c4 10             	add    $0x10,%esp
  100090:	8b 83 0c 60 00 00    	mov    0x600c(%ebx),%eax
  100096:	83 ec 08             	sub    $0x8,%esp
  100099:	6a 0e                	push   $0xe
  10009b:	50                   	push   %eax
  10009c:	e8 78 3a 00 00       	call   103b19 <outb>
  1000a1:	83 c4 10             	add    $0x10,%esp
  1000a4:	8b 83 0c 60 00 00    	mov    0x600c(%ebx),%eax
  1000aa:	83 c0 01             	add    $0x1,%eax
  1000ad:	83 ec 0c             	sub    $0xc,%esp
  1000b0:	50                   	push   %eax
  1000b1:	e8 14 3a 00 00       	call   103aca <inb>
  1000b6:	83 c4 10             	add    $0x10,%esp
  1000b9:	0f b6 c0             	movzbl %al,%eax
  1000bc:	c1 e0 08             	shl    $0x8,%eax
  1000bf:	89 45 ec             	mov    %eax,-0x14(%ebp)
  1000c2:	8b 83 0c 60 00 00    	mov    0x600c(%ebx),%eax
  1000c8:	83 ec 08             	sub    $0x8,%esp
  1000cb:	6a 0f                	push   $0xf
  1000cd:	50                   	push   %eax
  1000ce:	e8 46 3a 00 00       	call   103b19 <outb>
  1000d3:	83 c4 10             	add    $0x10,%esp
  1000d6:	8b 83 0c 60 00 00    	mov    0x600c(%ebx),%eax
  1000dc:	83 c0 01             	add    $0x1,%eax
  1000df:	83 ec 0c             	sub    $0xc,%esp
  1000e2:	50                   	push   %eax
  1000e3:	e8 e2 39 00 00       	call   103aca <inb>
  1000e8:	83 c4 10             	add    $0x10,%esp
  1000eb:	0f b6 c0             	movzbl %al,%eax
  1000ee:	09 45 ec             	or     %eax,-0x14(%ebp)
  1000f1:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1000f4:	89 83 10 60 00 00    	mov    %eax,0x6010(%ebx)
  1000fa:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1000fd:	66 89 83 14 60 00 00 	mov    %ax,0x6014(%ebx)
  100104:	c7 83 18 60 00 00 00 	movl   $0x0,0x6018(%ebx)
  10010b:	00 00 00 
  10010e:	90                   	nop
  10010f:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100112:	c9                   	leave
  100113:	c3                   	ret

00100114 <video_putc>:
  100114:	55                   	push   %ebp
  100115:	89 e5                	mov    %esp,%ebp
  100117:	56                   	push   %esi
  100118:	53                   	push   %ebx
  100119:	83 ec 10             	sub    $0x10,%esp
  10011c:	e8 9f 02 00 00       	call   1003c0 <__x86.get_pc_thunk.bx>
  100121:	81 c3 d3 ce 00 00    	add    $0xced3,%ebx
  100127:	8b 45 08             	mov    0x8(%ebp),%eax
  10012a:	3d ff 00 00 00       	cmp    $0xff,%eax
  10012f:	77 07                	ja     100138 <video_putc+0x24>
  100131:	81 4d 08 00 07 00 00 	orl    $0x700,0x8(%ebp)
  100138:	8b 45 08             	mov    0x8(%ebp),%eax
  10013b:	0f b6 c0             	movzbl %al,%eax
  10013e:	83 f8 0d             	cmp    $0xd,%eax
  100141:	0f 84 84 00 00 00    	je     1001cb <video_putc+0xb7>
  100147:	83 f8 0d             	cmp    $0xd,%eax
  10014a:	0f 8f f9 00 00 00    	jg     100249 <video_putc+0x135>
  100150:	83 f8 0a             	cmp    $0xa,%eax
  100153:	74 65                	je     1001ba <video_putc+0xa6>
  100155:	83 f8 0a             	cmp    $0xa,%eax
  100158:	0f 8f eb 00 00 00    	jg     100249 <video_putc+0x135>
  10015e:	83 f8 08             	cmp    $0x8,%eax
  100161:	74 0e                	je     100171 <video_putc+0x5d>
  100163:	83 f8 09             	cmp    $0x9,%eax
  100166:	0f 84 9a 00 00 00    	je     100206 <video_putc+0xf2>
  10016c:	e9 d8 00 00 00       	jmp    100249 <video_putc+0x135>
  100171:	0f b7 83 14 60 00 00 	movzwl 0x6014(%ebx),%eax
  100178:	66 85 c0             	test   %ax,%ax
  10017b:	0f 84 ee 00 00 00    	je     10026f <video_putc+0x15b>
  100181:	0f b7 83 14 60 00 00 	movzwl 0x6014(%ebx),%eax
  100188:	83 e8 01             	sub    $0x1,%eax
  10018b:	66 89 83 14 60 00 00 	mov    %ax,0x6014(%ebx)
  100192:	8b 45 08             	mov    0x8(%ebp),%eax
  100195:	b0 00                	mov    $0x0,%al
  100197:	83 c8 20             	or     $0x20,%eax
  10019a:	89 c1                	mov    %eax,%ecx
  10019c:	8b 83 10 60 00 00    	mov    0x6010(%ebx),%eax
  1001a2:	0f b7 93 14 60 00 00 	movzwl 0x6014(%ebx),%edx
  1001a9:	0f b7 d2             	movzwl %dx,%edx
  1001ac:	01 d2                	add    %edx,%edx
  1001ae:	01 d0                	add    %edx,%eax
  1001b0:	89 ca                	mov    %ecx,%edx
  1001b2:	66 89 10             	mov    %dx,(%eax)
  1001b5:	e9 b5 00 00 00       	jmp    10026f <video_putc+0x15b>
  1001ba:	0f b7 83 14 60 00 00 	movzwl 0x6014(%ebx),%eax
  1001c1:	83 c0 50             	add    $0x50,%eax
  1001c4:	66 89 83 14 60 00 00 	mov    %ax,0x6014(%ebx)
  1001cb:	0f b7 b3 14 60 00 00 	movzwl 0x6014(%ebx),%esi
  1001d2:	0f b7 8b 14 60 00 00 	movzwl 0x6014(%ebx),%ecx
  1001d9:	0f b7 c1             	movzwl %cx,%eax
  1001dc:	69 c0 cd cc 00 00    	imul   $0xcccd,%eax,%eax
  1001e2:	c1 e8 10             	shr    $0x10,%eax
  1001e5:	89 c2                	mov    %eax,%edx
  1001e7:	66 c1 ea 06          	shr    $0x6,%dx
  1001eb:	89 d0                	mov    %edx,%eax
  1001ed:	c1 e0 02             	shl    $0x2,%eax
  1001f0:	01 d0                	add    %edx,%eax
  1001f2:	c1 e0 04             	shl    $0x4,%eax
  1001f5:	29 c1                	sub    %eax,%ecx
  1001f7:	89 ca                	mov    %ecx,%edx
  1001f9:	89 f0                	mov    %esi,%eax
  1001fb:	29 d0                	sub    %edx,%eax
  1001fd:	66 89 83 14 60 00 00 	mov    %ax,0x6014(%ebx)
  100204:	eb 6a                	jmp    100270 <video_putc+0x15c>
  100206:	83 ec 0c             	sub    $0xc,%esp
  100209:	6a 20                	push   $0x20
  10020b:	e8 04 ff ff ff       	call   100114 <video_putc>
  100210:	83 c4 10             	add    $0x10,%esp
  100213:	83 ec 0c             	sub    $0xc,%esp
  100216:	6a 20                	push   $0x20
  100218:	e8 f7 fe ff ff       	call   100114 <video_putc>
  10021d:	83 c4 10             	add    $0x10,%esp
  100220:	83 ec 0c             	sub    $0xc,%esp
  100223:	6a 20                	push   $0x20
  100225:	e8 ea fe ff ff       	call   100114 <video_putc>
  10022a:	83 c4 10             	add    $0x10,%esp
  10022d:	83 ec 0c             	sub    $0xc,%esp
  100230:	6a 20                	push   $0x20
  100232:	e8 dd fe ff ff       	call   100114 <video_putc>
  100237:	83 c4 10             	add    $0x10,%esp
  10023a:	83 ec 0c             	sub    $0xc,%esp
  10023d:	6a 20                	push   $0x20
  10023f:	e8 d0 fe ff ff       	call   100114 <video_putc>
  100244:	83 c4 10             	add    $0x10,%esp
  100247:	eb 27                	jmp    100270 <video_putc+0x15c>
  100249:	8b 8b 10 60 00 00    	mov    0x6010(%ebx),%ecx
  10024f:	0f b7 83 14 60 00 00 	movzwl 0x6014(%ebx),%eax
  100256:	8d 50 01             	lea    0x1(%eax),%edx
  100259:	66 89 93 14 60 00 00 	mov    %dx,0x6014(%ebx)
  100260:	0f b7 c0             	movzwl %ax,%eax
  100263:	01 c0                	add    %eax,%eax
  100265:	01 c8                	add    %ecx,%eax
  100267:	8b 55 08             	mov    0x8(%ebp),%edx
  10026a:	66 89 10             	mov    %dx,(%eax)
  10026d:	eb 01                	jmp    100270 <video_putc+0x15c>
  10026f:	90                   	nop
  100270:	0f b7 83 14 60 00 00 	movzwl 0x6014(%ebx),%eax
  100277:	66 3d cf 07          	cmp    $0x7cf,%ax
  10027b:	76 5d                	jbe    1002da <video_putc+0x1c6>
  10027d:	8b 83 10 60 00 00    	mov    0x6010(%ebx),%eax
  100283:	8d 90 a0 00 00 00    	lea    0xa0(%eax),%edx
  100289:	8b 83 10 60 00 00    	mov    0x6010(%ebx),%eax
  10028f:	83 ec 04             	sub    $0x4,%esp
  100292:	68 00 0f 00 00       	push   $0xf00
  100297:	52                   	push   %edx
  100298:	50                   	push   %eax
  100299:	e8 87 25 00 00       	call   102825 <memmove>
  10029e:	83 c4 10             	add    $0x10,%esp
  1002a1:	c7 45 f4 80 07 00 00 	movl   $0x780,-0xc(%ebp)
  1002a8:	eb 16                	jmp    1002c0 <video_putc+0x1ac>
  1002aa:	8b 83 10 60 00 00    	mov    0x6010(%ebx),%eax
  1002b0:	8b 55 f4             	mov    -0xc(%ebp),%edx
  1002b3:	01 d2                	add    %edx,%edx
  1002b5:	01 d0                	add    %edx,%eax
  1002b7:	66 c7 00 20 07       	movw   $0x720,(%eax)
  1002bc:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1002c0:	81 7d f4 cf 07 00 00 	cmpl   $0x7cf,-0xc(%ebp)
  1002c7:	7e e1                	jle    1002aa <video_putc+0x196>
  1002c9:	0f b7 83 14 60 00 00 	movzwl 0x6014(%ebx),%eax
  1002d0:	83 e8 50             	sub    $0x50,%eax
  1002d3:	66 89 83 14 60 00 00 	mov    %ax,0x6014(%ebx)
  1002da:	8b 83 0c 60 00 00    	mov    0x600c(%ebx),%eax
  1002e0:	83 ec 08             	sub    $0x8,%esp
  1002e3:	6a 0e                	push   $0xe
  1002e5:	50                   	push   %eax
  1002e6:	e8 2e 38 00 00       	call   103b19 <outb>
  1002eb:	83 c4 10             	add    $0x10,%esp
  1002ee:	0f b7 83 14 60 00 00 	movzwl 0x6014(%ebx),%eax
  1002f5:	66 c1 e8 08          	shr    $0x8,%ax
  1002f9:	0f b6 c0             	movzbl %al,%eax
  1002fc:	8b 93 0c 60 00 00    	mov    0x600c(%ebx),%edx
  100302:	83 c2 01             	add    $0x1,%edx
  100305:	83 ec 08             	sub    $0x8,%esp
  100308:	50                   	push   %eax
  100309:	52                   	push   %edx
  10030a:	e8 0a 38 00 00       	call   103b19 <outb>
  10030f:	83 c4 10             	add    $0x10,%esp
  100312:	8b 83 0c 60 00 00    	mov    0x600c(%ebx),%eax
  100318:	83 ec 08             	sub    $0x8,%esp
  10031b:	6a 0f                	push   $0xf
  10031d:	50                   	push   %eax
  10031e:	e8 f6 37 00 00       	call   103b19 <outb>
  100323:	83 c4 10             	add    $0x10,%esp
  100326:	0f b7 83 14 60 00 00 	movzwl 0x6014(%ebx),%eax
  10032d:	0f b6 c0             	movzbl %al,%eax
  100330:	8b 93 0c 60 00 00    	mov    0x600c(%ebx),%edx
  100336:	83 c2 01             	add    $0x1,%edx
  100339:	83 ec 08             	sub    $0x8,%esp
  10033c:	50                   	push   %eax
  10033d:	52                   	push   %edx
  10033e:	e8 d6 37 00 00       	call   103b19 <outb>
  100343:	83 c4 10             	add    $0x10,%esp
  100346:	90                   	nop
  100347:	8d 65 f8             	lea    -0x8(%ebp),%esp
  10034a:	5b                   	pop    %ebx
  10034b:	5e                   	pop    %esi
  10034c:	5d                   	pop    %ebp
  10034d:	c3                   	ret

0010034e <video_set_cursor>:
  10034e:	55                   	push   %ebp
  10034f:	89 e5                	mov    %esp,%ebp
  100351:	e8 66 00 00 00       	call   1003bc <__x86.get_pc_thunk.dx>
  100356:	81 c2 9e cc 00 00    	add    $0xcc9e,%edx
  10035c:	8b 45 08             	mov    0x8(%ebp),%eax
  10035f:	89 c1                	mov    %eax,%ecx
  100361:	89 c8                	mov    %ecx,%eax
  100363:	c1 e0 02             	shl    $0x2,%eax
  100366:	01 c8                	add    %ecx,%eax
  100368:	c1 e0 04             	shl    $0x4,%eax
  10036b:	89 c1                	mov    %eax,%ecx
  10036d:	8b 45 0c             	mov    0xc(%ebp),%eax
  100370:	01 c8                	add    %ecx,%eax
  100372:	66 89 82 14 60 00 00 	mov    %ax,0x6014(%edx)
  100379:	90                   	nop
  10037a:	5d                   	pop    %ebp
  10037b:	c3                   	ret

0010037c <video_clear_screen>:
  10037c:	55                   	push   %ebp
  10037d:	89 e5                	mov    %esp,%ebp
  10037f:	83 ec 10             	sub    $0x10,%esp
  100382:	e8 31 00 00 00       	call   1003b8 <__x86.get_pc_thunk.ax>
  100387:	05 6d cc 00 00       	add    $0xcc6d,%eax
  10038c:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  100393:	eb 16                	jmp    1003ab <video_clear_screen+0x2f>
  100395:	8b 90 10 60 00 00    	mov    0x6010(%eax),%edx
  10039b:	8b 4d fc             	mov    -0x4(%ebp),%ecx
  10039e:	01 c9                	add    %ecx,%ecx
  1003a0:	01 ca                	add    %ecx,%edx
  1003a2:	66 c7 02 20 00       	movw   $0x20,(%edx)
  1003a7:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  1003ab:	81 7d fc cf 07 00 00 	cmpl   $0x7cf,-0x4(%ebp)
  1003b2:	7e e1                	jle    100395 <video_clear_screen+0x19>
  1003b4:	90                   	nop
  1003b5:	90                   	nop
  1003b6:	c9                   	leave
  1003b7:	c3                   	ret

001003b8 <__x86.get_pc_thunk.ax>:
  1003b8:	8b 04 24             	mov    (%esp),%eax
  1003bb:	c3                   	ret

001003bc <__x86.get_pc_thunk.dx>:
  1003bc:	8b 14 24             	mov    (%esp),%edx
  1003bf:	c3                   	ret

001003c0 <__x86.get_pc_thunk.bx>:
  1003c0:	8b 1c 24             	mov    (%esp),%ebx
  1003c3:	c3                   	ret

001003c4 <cons_init>:
  1003c4:	55                   	push   %ebp
  1003c5:	89 e5                	mov    %esp,%ebp
  1003c7:	53                   	push   %ebx
  1003c8:	83 ec 04             	sub    $0x4,%esp
  1003cb:	e8 f0 ff ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  1003d0:	81 c3 24 cc 00 00    	add    $0xcc24,%ebx
  1003d6:	83 ec 04             	sub    $0x4,%esp
  1003d9:	68 08 02 00 00       	push   $0x208
  1003de:	6a 00                	push   $0x0
  1003e0:	8d 83 2c 60 00 00    	lea    0x602c(%ebx),%eax
  1003e6:	50                   	push   %eax
  1003e7:	e8 bf 23 00 00       	call   1027ab <memset>
  1003ec:	83 c4 10             	add    $0x10,%esp
  1003ef:	e8 2f 04 00 00       	call   100823 <serial_init>
  1003f4:	e8 07 fc ff ff       	call   100000 <video_init>
  1003f9:	90                   	nop
  1003fa:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1003fd:	c9                   	leave
  1003fe:	c3                   	ret

001003ff <cons_intr>:
  1003ff:	55                   	push   %ebp
  100400:	89 e5                	mov    %esp,%ebp
  100402:	53                   	push   %ebx
  100403:	83 ec 14             	sub    $0x14,%esp
  100406:	e8 b5 ff ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  10040b:	81 c3 e9 cb 00 00    	add    $0xcbe9,%ebx
  100411:	eb 39                	jmp    10044c <cons_intr+0x4d>
  100413:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  100417:	74 32                	je     10044b <cons_intr+0x4c>
  100419:	8b 83 30 62 00 00    	mov    0x6230(%ebx),%eax
  10041f:	8d 50 01             	lea    0x1(%eax),%edx
  100422:	89 93 30 62 00 00    	mov    %edx,0x6230(%ebx)
  100428:	8b 55 f4             	mov    -0xc(%ebp),%edx
  10042b:	88 94 03 2c 60 00 00 	mov    %dl,0x602c(%ebx,%eax,1)
  100432:	8b 83 30 62 00 00    	mov    0x6230(%ebx),%eax
  100438:	3d 00 02 00 00       	cmp    $0x200,%eax
  10043d:	75 0d                	jne    10044c <cons_intr+0x4d>
  10043f:	c7 83 30 62 00 00 00 	movl   $0x0,0x6230(%ebx)
  100446:	00 00 00 
  100449:	eb 01                	jmp    10044c <cons_intr+0x4d>
  10044b:	90                   	nop
  10044c:	8b 45 08             	mov    0x8(%ebp),%eax
  10044f:	ff d0                	call   *%eax
  100451:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100454:	83 7d f4 ff          	cmpl   $0xffffffff,-0xc(%ebp)
  100458:	75 b9                	jne    100413 <cons_intr+0x14>
  10045a:	90                   	nop
  10045b:	90                   	nop
  10045c:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  10045f:	c9                   	leave
  100460:	c3                   	ret

00100461 <cons_getc>:
  100461:	55                   	push   %ebp
  100462:	89 e5                	mov    %esp,%ebp
  100464:	53                   	push   %ebx
  100465:	83 ec 14             	sub    $0x14,%esp
  100468:	e8 53 ff ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  10046d:	81 c3 87 cb 00 00    	add    $0xcb87,%ebx
  100473:	e8 81 02 00 00       	call   1006f9 <serial_intr>
  100478:	e8 59 06 00 00       	call   100ad6 <keyboard_intr>
  10047d:	8b 93 2c 62 00 00    	mov    0x622c(%ebx),%edx
  100483:	8b 83 30 62 00 00    	mov    0x6230(%ebx),%eax
  100489:	39 c2                	cmp    %eax,%edx
  10048b:	74 39                	je     1004c6 <cons_getc+0x65>
  10048d:	8b 83 2c 62 00 00    	mov    0x622c(%ebx),%eax
  100493:	8d 50 01             	lea    0x1(%eax),%edx
  100496:	89 93 2c 62 00 00    	mov    %edx,0x622c(%ebx)
  10049c:	0f b6 84 03 2c 60 00 	movzbl 0x602c(%ebx,%eax,1),%eax
  1004a3:	00 
  1004a4:	0f be c0             	movsbl %al,%eax
  1004a7:	89 45 f4             	mov    %eax,-0xc(%ebp)
  1004aa:	8b 83 2c 62 00 00    	mov    0x622c(%ebx),%eax
  1004b0:	3d 00 02 00 00       	cmp    $0x200,%eax
  1004b5:	75 0a                	jne    1004c1 <cons_getc+0x60>
  1004b7:	c7 83 2c 62 00 00 00 	movl   $0x0,0x622c(%ebx)
  1004be:	00 00 00 
  1004c1:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1004c4:	eb 05                	jmp    1004cb <cons_getc+0x6a>
  1004c6:	b8 00 00 00 00       	mov    $0x0,%eax
  1004cb:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1004ce:	c9                   	leave
  1004cf:	c3                   	ret

001004d0 <cons_putc>:
  1004d0:	55                   	push   %ebp
  1004d1:	89 e5                	mov    %esp,%ebp
  1004d3:	53                   	push   %ebx
  1004d4:	83 ec 14             	sub    $0x14,%esp
  1004d7:	e8 e4 fe ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  1004dc:	81 c3 18 cb 00 00    	add    $0xcb18,%ebx
  1004e2:	8b 45 08             	mov    0x8(%ebp),%eax
  1004e5:	88 45 f4             	mov    %al,-0xc(%ebp)
  1004e8:	0f be 45 f4          	movsbl -0xc(%ebp),%eax
  1004ec:	83 ec 0c             	sub    $0xc,%esp
  1004ef:	50                   	push   %eax
  1004f0:	e8 9d 02 00 00       	call   100792 <serial_putc>
  1004f5:	83 c4 10             	add    $0x10,%esp
  1004f8:	0f be 45 f4          	movsbl -0xc(%ebp),%eax
  1004fc:	83 ec 0c             	sub    $0xc,%esp
  1004ff:	50                   	push   %eax
  100500:	e8 0f fc ff ff       	call   100114 <video_putc>
  100505:	83 c4 10             	add    $0x10,%esp
  100508:	90                   	nop
  100509:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  10050c:	c9                   	leave
  10050d:	c3                   	ret

0010050e <getchar>:
  10050e:	55                   	push   %ebp
  10050f:	89 e5                	mov    %esp,%ebp
  100511:	83 ec 18             	sub    $0x18,%esp
  100514:	e8 9f fe ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  100519:	05 db ca 00 00       	add    $0xcadb,%eax
  10051e:	90                   	nop
  10051f:	e8 3d ff ff ff       	call   100461 <cons_getc>
  100524:	88 45 f7             	mov    %al,-0x9(%ebp)
  100527:	80 7d f7 00          	cmpb   $0x0,-0x9(%ebp)
  10052b:	74 f2                	je     10051f <getchar+0x11>
  10052d:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
  100531:	c9                   	leave
  100532:	c3                   	ret

00100533 <putchar>:
  100533:	55                   	push   %ebp
  100534:	89 e5                	mov    %esp,%ebp
  100536:	83 ec 18             	sub    $0x18,%esp
  100539:	e8 7a fe ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  10053e:	05 b6 ca 00 00       	add    $0xcab6,%eax
  100543:	8b 45 08             	mov    0x8(%ebp),%eax
  100546:	88 45 f4             	mov    %al,-0xc(%ebp)
  100549:	0f be 45 f4          	movsbl -0xc(%ebp),%eax
  10054d:	83 ec 0c             	sub    $0xc,%esp
  100550:	50                   	push   %eax
  100551:	e8 7a ff ff ff       	call   1004d0 <cons_putc>
  100556:	83 c4 10             	add    $0x10,%esp
  100559:	90                   	nop
  10055a:	c9                   	leave
  10055b:	c3                   	ret

0010055c <readline>:
  10055c:	55                   	push   %ebp
  10055d:	89 e5                	mov    %esp,%ebp
  10055f:	53                   	push   %ebx
  100560:	83 ec 14             	sub    $0x14,%esp
  100563:	e8 58 fe ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  100568:	81 c3 8c ca 00 00    	add    $0xca8c,%ebx
  10056e:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  100572:	74 15                	je     100589 <readline+0x2d>
  100574:	83 ec 08             	sub    $0x8,%esp
  100577:	ff 75 08             	push   0x8(%ebp)
  10057a:	8d 83 1a b0 ff ff    	lea    -0x4fe6(%ebx),%eax
  100580:	50                   	push   %eax
  100581:	e8 e6 27 00 00       	call   102d6c <dprintf>
  100586:	83 c4 10             	add    $0x10,%esp
  100589:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  100590:	e8 79 ff ff ff       	call   10050e <getchar>
  100595:	88 45 f3             	mov    %al,-0xd(%ebp)
  100598:	80 7d f3 00          	cmpb   $0x0,-0xd(%ebp)
  10059c:	79 21                	jns    1005bf <readline+0x63>
  10059e:	0f be 45 f3          	movsbl -0xd(%ebp),%eax
  1005a2:	83 ec 08             	sub    $0x8,%esp
  1005a5:	50                   	push   %eax
  1005a6:	8d 83 1d b0 ff ff    	lea    -0x4fe3(%ebx),%eax
  1005ac:	50                   	push   %eax
  1005ad:	e8 ba 27 00 00       	call   102d6c <dprintf>
  1005b2:	83 c4 10             	add    $0x10,%esp
  1005b5:	b8 00 00 00 00       	mov    $0x0,%eax
  1005ba:	e9 92 00 00 00       	jmp    100651 <readline+0xf5>
  1005bf:	80 7d f3 08          	cmpb   $0x8,-0xd(%ebp)
  1005c3:	74 06                	je     1005cb <readline+0x6f>
  1005c5:	80 7d f3 7f          	cmpb   $0x7f,-0xd(%ebp)
  1005c9:	75 19                	jne    1005e4 <readline+0x88>
  1005cb:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  1005cf:	7e 13                	jle    1005e4 <readline+0x88>
  1005d1:	83 ec 0c             	sub    $0xc,%esp
  1005d4:	6a 08                	push   $0x8
  1005d6:	e8 58 ff ff ff       	call   100533 <putchar>
  1005db:	83 c4 10             	add    $0x10,%esp
  1005de:	83 6d f4 01          	subl   $0x1,-0xc(%ebp)
  1005e2:	eb 68                	jmp    10064c <readline+0xf0>
  1005e4:	80 7d f3 1f          	cmpb   $0x1f,-0xd(%ebp)
  1005e8:	7e 2f                	jle    100619 <readline+0xbd>
  1005ea:	81 7d f4 fe 03 00 00 	cmpl   $0x3fe,-0xc(%ebp)
  1005f1:	7f 26                	jg     100619 <readline+0xbd>
  1005f3:	0f be 45 f3          	movsbl -0xd(%ebp),%eax
  1005f7:	83 ec 0c             	sub    $0xc,%esp
  1005fa:	50                   	push   %eax
  1005fb:	e8 33 ff ff ff       	call   100533 <putchar>
  100600:	83 c4 10             	add    $0x10,%esp
  100603:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100606:	8d 50 01             	lea    0x1(%eax),%edx
  100609:	89 55 f4             	mov    %edx,-0xc(%ebp)
  10060c:	0f b6 55 f3          	movzbl -0xd(%ebp),%edx
  100610:	88 94 03 4c 62 00 00 	mov    %dl,0x624c(%ebx,%eax,1)
  100617:	eb 33                	jmp    10064c <readline+0xf0>
  100619:	80 7d f3 0a          	cmpb   $0xa,-0xd(%ebp)
  10061d:	74 0a                	je     100629 <readline+0xcd>
  10061f:	80 7d f3 0d          	cmpb   $0xd,-0xd(%ebp)
  100623:	0f 85 67 ff ff ff    	jne    100590 <readline+0x34>
  100629:	83 ec 0c             	sub    $0xc,%esp
  10062c:	6a 0a                	push   $0xa
  10062e:	e8 00 ff ff ff       	call   100533 <putchar>
  100633:	83 c4 10             	add    $0x10,%esp
  100636:	8d 93 4c 62 00 00    	lea    0x624c(%ebx),%edx
  10063c:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10063f:	01 d0                	add    %edx,%eax
  100641:	c6 00 00             	movb   $0x0,(%eax)
  100644:	8d 83 4c 62 00 00    	lea    0x624c(%ebx),%eax
  10064a:	eb 05                	jmp    100651 <readline+0xf5>
  10064c:	e9 3f ff ff ff       	jmp    100590 <readline+0x34>
  100651:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100654:	c9                   	leave
  100655:	c3                   	ret

00100656 <delay>:
  100656:	55                   	push   %ebp
  100657:	89 e5                	mov    %esp,%ebp
  100659:	53                   	push   %ebx
  10065a:	83 ec 04             	sub    $0x4,%esp
  10065d:	e8 5e fd ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  100662:	81 c3 92 c9 00 00    	add    $0xc992,%ebx
  100668:	83 ec 0c             	sub    $0xc,%esp
  10066b:	68 84 00 00 00       	push   $0x84
  100670:	e8 55 34 00 00       	call   103aca <inb>
  100675:	83 c4 10             	add    $0x10,%esp
  100678:	83 ec 0c             	sub    $0xc,%esp
  10067b:	68 84 00 00 00       	push   $0x84
  100680:	e8 45 34 00 00       	call   103aca <inb>
  100685:	83 c4 10             	add    $0x10,%esp
  100688:	83 ec 0c             	sub    $0xc,%esp
  10068b:	68 84 00 00 00       	push   $0x84
  100690:	e8 35 34 00 00       	call   103aca <inb>
  100695:	83 c4 10             	add    $0x10,%esp
  100698:	83 ec 0c             	sub    $0xc,%esp
  10069b:	68 84 00 00 00       	push   $0x84
  1006a0:	e8 25 34 00 00       	call   103aca <inb>
  1006a5:	83 c4 10             	add    $0x10,%esp
  1006a8:	90                   	nop
  1006a9:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1006ac:	c9                   	leave
  1006ad:	c3                   	ret

001006ae <serial_proc_data>:
  1006ae:	55                   	push   %ebp
  1006af:	89 e5                	mov    %esp,%ebp
  1006b1:	53                   	push   %ebx
  1006b2:	83 ec 04             	sub    $0x4,%esp
  1006b5:	e8 06 fd ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  1006ba:	81 c3 3a c9 00 00    	add    $0xc93a,%ebx
  1006c0:	83 ec 0c             	sub    $0xc,%esp
  1006c3:	68 fd 03 00 00       	push   $0x3fd
  1006c8:	e8 fd 33 00 00       	call   103aca <inb>
  1006cd:	83 c4 10             	add    $0x10,%esp
  1006d0:	0f b6 c0             	movzbl %al,%eax
  1006d3:	83 e0 01             	and    $0x1,%eax
  1006d6:	85 c0                	test   %eax,%eax
  1006d8:	75 07                	jne    1006e1 <serial_proc_data+0x33>
  1006da:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  1006df:	eb 13                	jmp    1006f4 <serial_proc_data+0x46>
  1006e1:	83 ec 0c             	sub    $0xc,%esp
  1006e4:	68 f8 03 00 00       	push   $0x3f8
  1006e9:	e8 dc 33 00 00       	call   103aca <inb>
  1006ee:	83 c4 10             	add    $0x10,%esp
  1006f1:	0f b6 c0             	movzbl %al,%eax
  1006f4:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1006f7:	c9                   	leave
  1006f8:	c3                   	ret

001006f9 <serial_intr>:
  1006f9:	55                   	push   %ebp
  1006fa:	89 e5                	mov    %esp,%ebp
  1006fc:	53                   	push   %ebx
  1006fd:	83 ec 04             	sub    $0x4,%esp
  100700:	e8 b3 fc ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  100705:	05 ef c8 00 00       	add    $0xc8ef,%eax
  10070a:	0f b6 90 4c 66 00 00 	movzbl 0x664c(%eax),%edx
  100711:	84 d2                	test   %dl,%dl
  100713:	74 14                	je     100729 <serial_intr+0x30>
  100715:	83 ec 0c             	sub    $0xc,%esp
  100718:	8d 90 ba 36 ff ff    	lea    -0xc946(%eax),%edx
  10071e:	52                   	push   %edx
  10071f:	89 c3                	mov    %eax,%ebx
  100721:	e8 d9 fc ff ff       	call   1003ff <cons_intr>
  100726:	83 c4 10             	add    $0x10,%esp
  100729:	90                   	nop
  10072a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  10072d:	c9                   	leave
  10072e:	c3                   	ret

0010072f <serial_reformatnewline>:
  10072f:	55                   	push   %ebp
  100730:	89 e5                	mov    %esp,%ebp
  100732:	53                   	push   %ebx
  100733:	83 ec 14             	sub    $0x14,%esp
  100736:	e8 85 fc ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  10073b:	81 c3 b9 c8 00 00    	add    $0xc8b9,%ebx
  100741:	c7 45 f4 0d 00 00 00 	movl   $0xd,-0xc(%ebp)
  100748:	c7 45 f0 0a 00 00 00 	movl   $0xa,-0x10(%ebp)
  10074f:	8b 45 08             	mov    0x8(%ebp),%eax
  100752:	3b 45 f0             	cmp    -0x10(%ebp),%eax
  100755:	75 31                	jne    100788 <serial_reformatnewline+0x59>
  100757:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10075a:	0f b6 c0             	movzbl %al,%eax
  10075d:	83 ec 08             	sub    $0x8,%esp
  100760:	50                   	push   %eax
  100761:	ff 75 0c             	push   0xc(%ebp)
  100764:	e8 b0 33 00 00       	call   103b19 <outb>
  100769:	83 c4 10             	add    $0x10,%esp
  10076c:	8b 45 f0             	mov    -0x10(%ebp),%eax
  10076f:	0f b6 c0             	movzbl %al,%eax
  100772:	83 ec 08             	sub    $0x8,%esp
  100775:	50                   	push   %eax
  100776:	ff 75 0c             	push   0xc(%ebp)
  100779:	e8 9b 33 00 00       	call   103b19 <outb>
  10077e:	83 c4 10             	add    $0x10,%esp
  100781:	b8 01 00 00 00       	mov    $0x1,%eax
  100786:	eb 05                	jmp    10078d <serial_reformatnewline+0x5e>
  100788:	b8 00 00 00 00       	mov    $0x0,%eax
  10078d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100790:	c9                   	leave
  100791:	c3                   	ret

00100792 <serial_putc>:
  100792:	55                   	push   %ebp
  100793:	89 e5                	mov    %esp,%ebp
  100795:	53                   	push   %ebx
  100796:	83 ec 24             	sub    $0x24,%esp
  100799:	e8 22 fc ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  10079e:	81 c3 56 c8 00 00    	add    $0xc856,%ebx
  1007a4:	8b 45 08             	mov    0x8(%ebp),%eax
  1007a7:	88 45 e4             	mov    %al,-0x1c(%ebp)
  1007aa:	0f b6 83 4c 66 00 00 	movzbl 0x664c(%ebx),%eax
  1007b1:	84 c0                	test   %al,%al
  1007b3:	74 68                	je     10081d <serial_putc+0x8b>
  1007b5:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  1007bc:	eb 09                	jmp    1007c7 <serial_putc+0x35>
  1007be:	e8 93 fe ff ff       	call   100656 <delay>
  1007c3:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1007c7:	83 ec 0c             	sub    $0xc,%esp
  1007ca:	68 fd 03 00 00       	push   $0x3fd
  1007cf:	e8 f6 32 00 00       	call   103aca <inb>
  1007d4:	83 c4 10             	add    $0x10,%esp
  1007d7:	0f b6 c0             	movzbl %al,%eax
  1007da:	83 e0 20             	and    $0x20,%eax
  1007dd:	85 c0                	test   %eax,%eax
  1007df:	75 09                	jne    1007ea <serial_putc+0x58>
  1007e1:	81 7d f4 ff 31 00 00 	cmpl   $0x31ff,-0xc(%ebp)
  1007e8:	7e d4                	jle    1007be <serial_putc+0x2c>
  1007ea:	0f be 45 e4          	movsbl -0x1c(%ebp),%eax
  1007ee:	83 ec 08             	sub    $0x8,%esp
  1007f1:	68 f8 03 00 00       	push   $0x3f8
  1007f6:	50                   	push   %eax
  1007f7:	e8 33 ff ff ff       	call   10072f <serial_reformatnewline>
  1007fc:	83 c4 10             	add    $0x10,%esp
  1007ff:	85 c0                	test   %eax,%eax
  100801:	75 1b                	jne    10081e <serial_putc+0x8c>
  100803:	0f b6 45 e4          	movzbl -0x1c(%ebp),%eax
  100807:	0f b6 c0             	movzbl %al,%eax
  10080a:	83 ec 08             	sub    $0x8,%esp
  10080d:	50                   	push   %eax
  10080e:	68 f8 03 00 00       	push   $0x3f8
  100813:	e8 01 33 00 00       	call   103b19 <outb>
  100818:	83 c4 10             	add    $0x10,%esp
  10081b:	eb 01                	jmp    10081e <serial_putc+0x8c>
  10081d:	90                   	nop
  10081e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100821:	c9                   	leave
  100822:	c3                   	ret

00100823 <serial_init>:
  100823:	55                   	push   %ebp
  100824:	89 e5                	mov    %esp,%ebp
  100826:	53                   	push   %ebx
  100827:	83 ec 04             	sub    $0x4,%esp
  10082a:	e8 91 fb ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  10082f:	81 c3 c5 c7 00 00    	add    $0xc7c5,%ebx
  100835:	83 ec 08             	sub    $0x8,%esp
  100838:	6a 00                	push   $0x0
  10083a:	68 f9 03 00 00       	push   $0x3f9
  10083f:	e8 d5 32 00 00       	call   103b19 <outb>
  100844:	83 c4 10             	add    $0x10,%esp
  100847:	83 ec 08             	sub    $0x8,%esp
  10084a:	68 80 00 00 00       	push   $0x80
  10084f:	68 fb 03 00 00       	push   $0x3fb
  100854:	e8 c0 32 00 00       	call   103b19 <outb>
  100859:	83 c4 10             	add    $0x10,%esp
  10085c:	83 ec 08             	sub    $0x8,%esp
  10085f:	6a 01                	push   $0x1
  100861:	68 f8 03 00 00       	push   $0x3f8
  100866:	e8 ae 32 00 00       	call   103b19 <outb>
  10086b:	83 c4 10             	add    $0x10,%esp
  10086e:	83 ec 08             	sub    $0x8,%esp
  100871:	6a 00                	push   $0x0
  100873:	68 f9 03 00 00       	push   $0x3f9
  100878:	e8 9c 32 00 00       	call   103b19 <outb>
  10087d:	83 c4 10             	add    $0x10,%esp
  100880:	83 ec 08             	sub    $0x8,%esp
  100883:	6a 03                	push   $0x3
  100885:	68 fb 03 00 00       	push   $0x3fb
  10088a:	e8 8a 32 00 00       	call   103b19 <outb>
  10088f:	83 c4 10             	add    $0x10,%esp
  100892:	83 ec 08             	sub    $0x8,%esp
  100895:	68 c7 00 00 00       	push   $0xc7
  10089a:	68 fa 03 00 00       	push   $0x3fa
  10089f:	e8 75 32 00 00       	call   103b19 <outb>
  1008a4:	83 c4 10             	add    $0x10,%esp
  1008a7:	83 ec 08             	sub    $0x8,%esp
  1008aa:	6a 0b                	push   $0xb
  1008ac:	68 fc 03 00 00       	push   $0x3fc
  1008b1:	e8 63 32 00 00       	call   103b19 <outb>
  1008b6:	83 c4 10             	add    $0x10,%esp
  1008b9:	83 ec 0c             	sub    $0xc,%esp
  1008bc:	68 fd 03 00 00       	push   $0x3fd
  1008c1:	e8 04 32 00 00       	call   103aca <inb>
  1008c6:	83 c4 10             	add    $0x10,%esp
  1008c9:	3c ff                	cmp    $0xff,%al
  1008cb:	0f 95 c0             	setne  %al
  1008ce:	88 83 4c 66 00 00    	mov    %al,0x664c(%ebx)
  1008d4:	83 ec 0c             	sub    $0xc,%esp
  1008d7:	68 fa 03 00 00       	push   $0x3fa
  1008dc:	e8 e9 31 00 00       	call   103aca <inb>
  1008e1:	83 c4 10             	add    $0x10,%esp
  1008e4:	83 ec 0c             	sub    $0xc,%esp
  1008e7:	68 f8 03 00 00       	push   $0x3f8
  1008ec:	e8 d9 31 00 00       	call   103aca <inb>
  1008f1:	83 c4 10             	add    $0x10,%esp
  1008f4:	90                   	nop
  1008f5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1008f8:	c9                   	leave
  1008f9:	c3                   	ret

001008fa <serial_intenable>:
  1008fa:	55                   	push   %ebp
  1008fb:	89 e5                	mov    %esp,%ebp
  1008fd:	53                   	push   %ebx
  1008fe:	83 ec 04             	sub    $0x4,%esp
  100901:	e8 b2 fa ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  100906:	05 ee c6 00 00       	add    $0xc6ee,%eax
  10090b:	0f b6 90 4c 66 00 00 	movzbl 0x664c(%eax),%edx
  100912:	84 d2                	test   %dl,%dl
  100914:	74 19                	je     10092f <serial_intenable+0x35>
  100916:	83 ec 08             	sub    $0x8,%esp
  100919:	6a 01                	push   $0x1
  10091b:	68 f9 03 00 00       	push   $0x3f9
  100920:	89 c3                	mov    %eax,%ebx
  100922:	e8 f2 31 00 00       	call   103b19 <outb>
  100927:	83 c4 10             	add    $0x10,%esp
  10092a:	e8 ca fd ff ff       	call   1006f9 <serial_intr>
  10092f:	90                   	nop
  100930:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100933:	c9                   	leave
  100934:	c3                   	ret

00100935 <kbd_proc_data>:
  100935:	55                   	push   %ebp
  100936:	89 e5                	mov    %esp,%ebp
  100938:	53                   	push   %ebx
  100939:	83 ec 14             	sub    $0x14,%esp
  10093c:	e8 7f fa ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  100941:	81 c3 b3 c6 00 00    	add    $0xc6b3,%ebx
  100947:	83 ec 0c             	sub    $0xc,%esp
  10094a:	6a 64                	push   $0x64
  10094c:	e8 79 31 00 00       	call   103aca <inb>
  100951:	83 c4 10             	add    $0x10,%esp
  100954:	0f b6 c0             	movzbl %al,%eax
  100957:	83 e0 01             	and    $0x1,%eax
  10095a:	85 c0                	test   %eax,%eax
  10095c:	75 0a                	jne    100968 <kbd_proc_data+0x33>
  10095e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  100963:	e9 69 01 00 00       	jmp    100ad1 <kbd_proc_data+0x19c>
  100968:	83 ec 0c             	sub    $0xc,%esp
  10096b:	6a 60                	push   $0x60
  10096d:	e8 58 31 00 00       	call   103aca <inb>
  100972:	83 c4 10             	add    $0x10,%esp
  100975:	88 45 f3             	mov    %al,-0xd(%ebp)
  100978:	80 7d f3 e0          	cmpb   $0xe0,-0xd(%ebp)
  10097c:	75 19                	jne    100997 <kbd_proc_data+0x62>
  10097e:	8b 83 50 66 00 00    	mov    0x6650(%ebx),%eax
  100984:	83 c8 40             	or     $0x40,%eax
  100987:	89 83 50 66 00 00    	mov    %eax,0x6650(%ebx)
  10098d:	b8 00 00 00 00       	mov    $0x0,%eax
  100992:	e9 3a 01 00 00       	jmp    100ad1 <kbd_proc_data+0x19c>
  100997:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
  10099b:	84 c0                	test   %al,%al
  10099d:	79 4b                	jns    1009ea <kbd_proc_data+0xb5>
  10099f:	8b 83 50 66 00 00    	mov    0x6650(%ebx),%eax
  1009a5:	83 e0 40             	and    $0x40,%eax
  1009a8:	85 c0                	test   %eax,%eax
  1009aa:	75 09                	jne    1009b5 <kbd_proc_data+0x80>
  1009ac:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
  1009b0:	83 e0 7f             	and    $0x7f,%eax
  1009b3:	eb 04                	jmp    1009b9 <kbd_proc_data+0x84>
  1009b5:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
  1009b9:	88 45 f3             	mov    %al,-0xd(%ebp)
  1009bc:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
  1009c0:	0f b6 84 03 0c 00 00 	movzbl 0xc(%ebx,%eax,1),%eax
  1009c7:	00 
  1009c8:	83 c8 40             	or     $0x40,%eax
  1009cb:	0f b6 c0             	movzbl %al,%eax
  1009ce:	f7 d0                	not    %eax
  1009d0:	89 c2                	mov    %eax,%edx
  1009d2:	8b 83 50 66 00 00    	mov    0x6650(%ebx),%eax
  1009d8:	21 d0                	and    %edx,%eax
  1009da:	89 83 50 66 00 00    	mov    %eax,0x6650(%ebx)
  1009e0:	b8 00 00 00 00       	mov    $0x0,%eax
  1009e5:	e9 e7 00 00 00       	jmp    100ad1 <kbd_proc_data+0x19c>
  1009ea:	8b 83 50 66 00 00    	mov    0x6650(%ebx),%eax
  1009f0:	83 e0 40             	and    $0x40,%eax
  1009f3:	85 c0                	test   %eax,%eax
  1009f5:	74 13                	je     100a0a <kbd_proc_data+0xd5>
  1009f7:	80 4d f3 80          	orb    $0x80,-0xd(%ebp)
  1009fb:	8b 83 50 66 00 00    	mov    0x6650(%ebx),%eax
  100a01:	83 e0 bf             	and    $0xffffffbf,%eax
  100a04:	89 83 50 66 00 00    	mov    %eax,0x6650(%ebx)
  100a0a:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
  100a0e:	0f b6 84 03 0c 00 00 	movzbl 0xc(%ebx,%eax,1),%eax
  100a15:	00 
  100a16:	0f b6 d0             	movzbl %al,%edx
  100a19:	8b 83 50 66 00 00    	mov    0x6650(%ebx),%eax
  100a1f:	09 d0                	or     %edx,%eax
  100a21:	89 83 50 66 00 00    	mov    %eax,0x6650(%ebx)
  100a27:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
  100a2b:	0f b6 84 03 0c 01 00 	movzbl 0x10c(%ebx,%eax,1),%eax
  100a32:	00 
  100a33:	0f b6 d0             	movzbl %al,%edx
  100a36:	8b 83 50 66 00 00    	mov    0x6650(%ebx),%eax
  100a3c:	31 d0                	xor    %edx,%eax
  100a3e:	89 83 50 66 00 00    	mov    %eax,0x6650(%ebx)
  100a44:	8b 83 50 66 00 00    	mov    0x6650(%ebx),%eax
  100a4a:	83 e0 03             	and    $0x3,%eax
  100a4d:	8b 94 83 0c 05 00 00 	mov    0x50c(%ebx,%eax,4),%edx
  100a54:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
  100a58:	01 d0                	add    %edx,%eax
  100a5a:	0f b6 00             	movzbl (%eax),%eax
  100a5d:	0f b6 c0             	movzbl %al,%eax
  100a60:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100a63:	8b 83 50 66 00 00    	mov    0x6650(%ebx),%eax
  100a69:	83 e0 08             	and    $0x8,%eax
  100a6c:	85 c0                	test   %eax,%eax
  100a6e:	74 22                	je     100a92 <kbd_proc_data+0x15d>
  100a70:	83 7d f4 60          	cmpl   $0x60,-0xc(%ebp)
  100a74:	7e 0c                	jle    100a82 <kbd_proc_data+0x14d>
  100a76:	83 7d f4 7a          	cmpl   $0x7a,-0xc(%ebp)
  100a7a:	7f 06                	jg     100a82 <kbd_proc_data+0x14d>
  100a7c:	83 6d f4 20          	subl   $0x20,-0xc(%ebp)
  100a80:	eb 10                	jmp    100a92 <kbd_proc_data+0x15d>
  100a82:	83 7d f4 40          	cmpl   $0x40,-0xc(%ebp)
  100a86:	7e 0a                	jle    100a92 <kbd_proc_data+0x15d>
  100a88:	83 7d f4 5a          	cmpl   $0x5a,-0xc(%ebp)
  100a8c:	7f 04                	jg     100a92 <kbd_proc_data+0x15d>
  100a8e:	83 45 f4 20          	addl   $0x20,-0xc(%ebp)
  100a92:	8b 83 50 66 00 00    	mov    0x6650(%ebx),%eax
  100a98:	f7 d0                	not    %eax
  100a9a:	83 e0 06             	and    $0x6,%eax
  100a9d:	85 c0                	test   %eax,%eax
  100a9f:	75 2d                	jne    100ace <kbd_proc_data+0x199>
  100aa1:	81 7d f4 e9 00 00 00 	cmpl   $0xe9,-0xc(%ebp)
  100aa8:	75 24                	jne    100ace <kbd_proc_data+0x199>
  100aaa:	83 ec 0c             	sub    $0xc,%esp
  100aad:	8d 83 2d b0 ff ff    	lea    -0x4fd3(%ebx),%eax
  100ab3:	50                   	push   %eax
  100ab4:	e8 b3 22 00 00       	call   102d6c <dprintf>
  100ab9:	83 c4 10             	add    $0x10,%esp
  100abc:	83 ec 08             	sub    $0x8,%esp
  100abf:	6a 03                	push   $0x3
  100ac1:	68 92 00 00 00       	push   $0x92
  100ac6:	e8 4e 30 00 00       	call   103b19 <outb>
  100acb:	83 c4 10             	add    $0x10,%esp
  100ace:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100ad1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100ad4:	c9                   	leave
  100ad5:	c3                   	ret

00100ad6 <keyboard_intr>:
  100ad6:	55                   	push   %ebp
  100ad7:	89 e5                	mov    %esp,%ebp
  100ad9:	53                   	push   %ebx
  100ada:	83 ec 04             	sub    $0x4,%esp
  100add:	e8 d6 f8 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  100ae2:	05 12 c5 00 00       	add    $0xc512,%eax
  100ae7:	83 ec 0c             	sub    $0xc,%esp
  100aea:	8d 90 41 39 ff ff    	lea    -0xc6bf(%eax),%edx
  100af0:	52                   	push   %edx
  100af1:	89 c3                	mov    %eax,%ebx
  100af3:	e8 07 f9 ff ff       	call   1003ff <cons_intr>
  100af8:	83 c4 10             	add    $0x10,%esp
  100afb:	90                   	nop
  100afc:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100aff:	c9                   	leave
  100b00:	c3                   	ret

00100b01 <devinit>:
  100b01:	55                   	push   %ebp
  100b02:	89 e5                	mov    %esp,%ebp
  100b04:	53                   	push   %ebx
  100b05:	83 ec 04             	sub    $0x4,%esp
  100b08:	e8 b3 f8 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  100b0d:	81 c3 e7 c4 00 00    	add    $0xc4e7,%ebx
  100b13:	e8 4c 27 00 00       	call   103264 <seg_init>
  100b18:	e8 f1 2d 00 00       	call   10390e <enable_sse>
  100b1d:	e8 a2 f8 ff ff       	call   1003c4 <cons_init>
  100b22:	83 ec 04             	sub    $0x4,%esp
  100b25:	8d 83 39 b0 ff ff    	lea    -0x4fc7(%ebx),%eax
  100b2b:	50                   	push   %eax
  100b2c:	6a 12                	push   $0x12
  100b2e:	8d 83 4c b0 ff ff    	lea    -0x4fb4(%ebx),%eax
  100b34:	50                   	push   %eax
  100b35:	e8 5f 1f 00 00       	call   102a99 <debug_normal>
  100b3a:	83 c4 10             	add    $0x10,%esp
  100b3d:	ff 75 08             	push   0x8(%ebp)
  100b40:	8d 83 5f b0 ff ff    	lea    -0x4fa1(%ebx),%eax
  100b46:	50                   	push   %eax
  100b47:	6a 13                	push   $0x13
  100b49:	8d 83 4c b0 ff ff    	lea    -0x4fb4(%ebx),%eax
  100b4f:	50                   	push   %eax
  100b50:	e8 44 1f 00 00       	call   102a99 <debug_normal>
  100b55:	83 c4 10             	add    $0x10,%esp
  100b58:	e8 76 1a 00 00       	call   1025d3 <intr_init>
  100b5d:	83 ec 0c             	sub    $0xc,%esp
  100b60:	ff 75 08             	push   0x8(%ebp)
  100b63:	e8 a2 03 00 00       	call   100f0a <pmmap_init>
  100b68:	83 c4 10             	add    $0x10,%esp
  100b6b:	90                   	nop
  100b6c:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100b6f:	c9                   	leave
  100b70:	c3                   	ret

00100b71 <pmmap_alloc_slot>:
  100b71:	55                   	push   %ebp
  100b72:	89 e5                	mov    %esp,%ebp
  100b74:	e8 43 f8 ff ff       	call   1003bc <__x86.get_pc_thunk.dx>
  100b79:	81 c2 7b c4 00 00    	add    $0xc47b,%edx
  100b7f:	8b 82 6c 70 00 00    	mov    0x706c(%edx),%eax
  100b85:	3d 80 00 00 00       	cmp    $0x80,%eax
  100b8a:	0f 94 c0             	sete   %al
  100b8d:	0f b6 c0             	movzbl %al,%eax
  100b90:	85 c0                	test   %eax,%eax
  100b92:	74 07                	je     100b9b <pmmap_alloc_slot+0x2a>
  100b94:	b8 00 00 00 00       	mov    $0x0,%eax
  100b99:	eb 21                	jmp    100bbc <pmmap_alloc_slot+0x4b>
  100b9b:	8b 8a 6c 70 00 00    	mov    0x706c(%edx),%ecx
  100ba1:	8d 41 01             	lea    0x1(%ecx),%eax
  100ba4:	89 82 6c 70 00 00    	mov    %eax,0x706c(%edx)
  100baa:	89 c8                	mov    %ecx,%eax
  100bac:	c1 e0 02             	shl    $0x2,%eax
  100baf:	01 c8                	add    %ecx,%eax
  100bb1:	c1 e0 02             	shl    $0x2,%eax
  100bb4:	8d 92 6c 66 00 00    	lea    0x666c(%edx),%edx
  100bba:	01 d0                	add    %edx,%eax
  100bbc:	5d                   	pop    %ebp
  100bbd:	c3                   	ret

00100bbe <pmmap_insert>:
  100bbe:	55                   	push   %ebp
  100bbf:	89 e5                	mov    %esp,%ebp
  100bc1:	53                   	push   %ebx
  100bc2:	83 ec 14             	sub    $0x14,%esp
  100bc5:	e8 f6 f7 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  100bca:	81 c3 2a c4 00 00    	add    $0xc42a,%ebx
  100bd0:	e8 9c ff ff ff       	call   100b71 <pmmap_alloc_slot>
  100bd5:	89 45 ec             	mov    %eax,-0x14(%ebp)
  100bd8:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
  100bdc:	75 1b                	jne    100bf9 <pmmap_insert+0x3b>
  100bde:	83 ec 04             	sub    $0x4,%esp
  100be1:	8d 83 78 b0 ff ff    	lea    -0x4f88(%ebx),%eax
  100be7:	50                   	push   %eax
  100be8:	6a 3c                	push   $0x3c
  100bea:	8d 83 95 b0 ff ff    	lea    -0x4f6b(%ebx),%eax
  100bf0:	50                   	push   %eax
  100bf1:	e8 5e 1f 00 00       	call   102b54 <debug_panic>
  100bf6:	83 c4 10             	add    $0x10,%esp
  100bf9:	8b 45 ec             	mov    -0x14(%ebp),%eax
  100bfc:	8b 55 08             	mov    0x8(%ebp),%edx
  100bff:	89 10                	mov    %edx,(%eax)
  100c01:	8b 45 ec             	mov    -0x14(%ebp),%eax
  100c04:	8b 55 0c             	mov    0xc(%ebp),%edx
  100c07:	89 50 04             	mov    %edx,0x4(%eax)
  100c0a:	8b 45 ec             	mov    -0x14(%ebp),%eax
  100c0d:	8b 55 10             	mov    0x10(%ebp),%edx
  100c10:	89 50 08             	mov    %edx,0x8(%eax)
  100c13:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  100c1a:	8b 83 70 70 00 00    	mov    0x7070(%ebx),%eax
  100c20:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100c23:	eb 19                	jmp    100c3e <pmmap_insert+0x80>
  100c25:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100c28:	8b 00                	mov    (%eax),%eax
  100c2a:	39 45 08             	cmp    %eax,0x8(%ebp)
  100c2d:	72 17                	jb     100c46 <pmmap_insert+0x88>
  100c2f:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100c32:	89 45 f0             	mov    %eax,-0x10(%ebp)
  100c35:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100c38:	8b 40 0c             	mov    0xc(%eax),%eax
  100c3b:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100c3e:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  100c42:	75 e1                	jne    100c25 <pmmap_insert+0x67>
  100c44:	eb 01                	jmp    100c47 <pmmap_insert+0x89>
  100c46:	90                   	nop
  100c47:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
  100c4b:	75 17                	jne    100c64 <pmmap_insert+0xa6>
  100c4d:	8b 93 70 70 00 00    	mov    0x7070(%ebx),%edx
  100c53:	8b 45 ec             	mov    -0x14(%ebp),%eax
  100c56:	89 50 0c             	mov    %edx,0xc(%eax)
  100c59:	8b 45 ec             	mov    -0x14(%ebp),%eax
  100c5c:	89 83 70 70 00 00    	mov    %eax,0x7070(%ebx)
  100c62:	eb 15                	jmp    100c79 <pmmap_insert+0xbb>
  100c64:	8b 45 f0             	mov    -0x10(%ebp),%eax
  100c67:	8b 50 0c             	mov    0xc(%eax),%edx
  100c6a:	8b 45 ec             	mov    -0x14(%ebp),%eax
  100c6d:	89 50 0c             	mov    %edx,0xc(%eax)
  100c70:	8b 45 f0             	mov    -0x10(%ebp),%eax
  100c73:	8b 55 ec             	mov    -0x14(%ebp),%edx
  100c76:	89 50 0c             	mov    %edx,0xc(%eax)
  100c79:	90                   	nop
  100c7a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100c7d:	c9                   	leave
  100c7e:	c3                   	ret

00100c7f <pmmap_merge>:
  100c7f:	55                   	push   %ebp
  100c80:	89 e5                	mov    %esp,%ebp
  100c82:	53                   	push   %ebx
  100c83:	83 ec 24             	sub    $0x24,%esp
  100c86:	e8 35 f7 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  100c8b:	81 c3 69 c3 00 00    	add    $0xc369,%ebx
  100c91:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
  100c98:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
  100c9f:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
  100ca6:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
  100cad:	8b 83 70 70 00 00    	mov    0x7070(%ebx),%eax
  100cb3:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100cb6:	eb 73                	jmp    100d2b <pmmap_merge+0xac>
  100cb8:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100cbb:	8b 40 0c             	mov    0xc(%eax),%eax
  100cbe:	89 45 f0             	mov    %eax,-0x10(%ebp)
  100cc1:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
  100cc5:	74 6c                	je     100d33 <pmmap_merge+0xb4>
  100cc7:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100cca:	8b 00                	mov    (%eax),%eax
  100ccc:	8b 55 f0             	mov    -0x10(%ebp),%edx
  100ccf:	8b 12                	mov    (%edx),%edx
  100cd1:	39 c2                	cmp    %eax,%edx
  100cd3:	72 4d                	jb     100d22 <pmmap_merge+0xa3>
  100cd5:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100cd8:	8b 50 04             	mov    0x4(%eax),%edx
  100cdb:	8b 45 f0             	mov    -0x10(%ebp),%eax
  100cde:	8b 00                	mov    (%eax),%eax
  100ce0:	39 c2                	cmp    %eax,%edx
  100ce2:	72 3e                	jb     100d22 <pmmap_merge+0xa3>
  100ce4:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100ce7:	8b 50 08             	mov    0x8(%eax),%edx
  100cea:	8b 45 f0             	mov    -0x10(%ebp),%eax
  100ced:	8b 40 08             	mov    0x8(%eax),%eax
  100cf0:	39 c2                	cmp    %eax,%edx
  100cf2:	75 2e                	jne    100d22 <pmmap_merge+0xa3>
  100cf4:	8b 45 f0             	mov    -0x10(%ebp),%eax
  100cf7:	8b 50 04             	mov    0x4(%eax),%edx
  100cfa:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100cfd:	8b 40 04             	mov    0x4(%eax),%eax
  100d00:	83 ec 08             	sub    $0x8,%esp
  100d03:	52                   	push   %edx
  100d04:	50                   	push   %eax
  100d05:	e8 c7 2a 00 00       	call   1037d1 <max>
  100d0a:	83 c4 10             	add    $0x10,%esp
  100d0d:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100d10:	89 42 04             	mov    %eax,0x4(%edx)
  100d13:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100d16:	8b 40 0c             	mov    0xc(%eax),%eax
  100d19:	8b 50 0c             	mov    0xc(%eax),%edx
  100d1c:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100d1f:	89 50 0c             	mov    %edx,0xc(%eax)
  100d22:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100d25:	8b 40 0c             	mov    0xc(%eax),%eax
  100d28:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100d2b:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  100d2f:	75 87                	jne    100cb8 <pmmap_merge+0x39>
  100d31:	eb 01                	jmp    100d34 <pmmap_merge+0xb5>
  100d33:	90                   	nop
  100d34:	8b 83 70 70 00 00    	mov    0x7070(%ebx),%eax
  100d3a:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100d3d:	e9 cf 00 00 00       	jmp    100e11 <pmmap_merge+0x192>
  100d42:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100d45:	8b 40 08             	mov    0x8(%eax),%eax
  100d48:	83 f8 01             	cmp    $0x1,%eax
  100d4b:	74 3d                	je     100d8a <pmmap_merge+0x10b>
  100d4d:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100d50:	8b 40 08             	mov    0x8(%eax),%eax
  100d53:	83 f8 02             	cmp    $0x2,%eax
  100d56:	74 2b                	je     100d83 <pmmap_merge+0x104>
  100d58:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100d5b:	8b 40 08             	mov    0x8(%eax),%eax
  100d5e:	83 f8 03             	cmp    $0x3,%eax
  100d61:	74 19                	je     100d7c <pmmap_merge+0xfd>
  100d63:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100d66:	8b 40 08             	mov    0x8(%eax),%eax
  100d69:	83 f8 04             	cmp    $0x4,%eax
  100d6c:	75 07                	jne    100d75 <pmmap_merge+0xf6>
  100d6e:	b8 03 00 00 00       	mov    $0x3,%eax
  100d73:	eb 1a                	jmp    100d8f <pmmap_merge+0x110>
  100d75:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  100d7a:	eb 13                	jmp    100d8f <pmmap_merge+0x110>
  100d7c:	b8 02 00 00 00       	mov    $0x2,%eax
  100d81:	eb 0c                	jmp    100d8f <pmmap_merge+0x110>
  100d83:	b8 01 00 00 00       	mov    $0x1,%eax
  100d88:	eb 05                	jmp    100d8f <pmmap_merge+0x110>
  100d8a:	b8 00 00 00 00       	mov    $0x0,%eax
  100d8f:	89 45 ec             	mov    %eax,-0x14(%ebp)
  100d92:	83 7d ec ff          	cmpl   $0xffffffff,-0x14(%ebp)
  100d96:	75 1f                	jne    100db7 <pmmap_merge+0x138>
  100d98:	8d 83 a6 b0 ff ff    	lea    -0x4f5a(%ebx),%eax
  100d9e:	50                   	push   %eax
  100d9f:	8d 83 b7 b0 ff ff    	lea    -0x4f49(%ebx),%eax
  100da5:	50                   	push   %eax
  100da6:	6a 6b                	push   $0x6b
  100da8:	8d 83 95 b0 ff ff    	lea    -0x4f6b(%ebx),%eax
  100dae:	50                   	push   %eax
  100daf:	e8 a0 1d 00 00       	call   102b54 <debug_panic>
  100db4:	83 c4 10             	add    $0x10,%esp
  100db7:	8b 45 ec             	mov    -0x14(%ebp),%eax
  100dba:	8b 44 85 dc          	mov    -0x24(%ebp,%eax,4),%eax
  100dbe:	85 c0                	test   %eax,%eax
  100dc0:	74 1f                	je     100de1 <pmmap_merge+0x162>
  100dc2:	8b 45 ec             	mov    -0x14(%ebp),%eax
  100dc5:	8b 44 85 dc          	mov    -0x24(%ebp,%eax,4),%eax
  100dc9:	8b 50 10             	mov    0x10(%eax),%edx
  100dcc:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100dcf:	89 50 10             	mov    %edx,0x10(%eax)
  100dd2:	8b 45 ec             	mov    -0x14(%ebp),%eax
  100dd5:	8b 44 85 dc          	mov    -0x24(%ebp,%eax,4),%eax
  100dd9:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100ddc:	89 50 10             	mov    %edx,0x10(%eax)
  100ddf:	eb 1d                	jmp    100dfe <pmmap_merge+0x17f>
  100de1:	8b 45 ec             	mov    -0x14(%ebp),%eax
  100de4:	8b 94 83 74 70 00 00 	mov    0x7074(%ebx,%eax,4),%edx
  100deb:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100dee:	89 50 10             	mov    %edx,0x10(%eax)
  100df1:	8b 45 ec             	mov    -0x14(%ebp),%eax
  100df4:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100df7:	89 94 83 74 70 00 00 	mov    %edx,0x7074(%ebx,%eax,4)
  100dfe:	8b 45 ec             	mov    -0x14(%ebp),%eax
  100e01:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100e04:	89 54 85 dc          	mov    %edx,-0x24(%ebp,%eax,4)
  100e08:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100e0b:	8b 40 0c             	mov    0xc(%eax),%eax
  100e0e:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100e11:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  100e15:	0f 85 27 ff ff ff    	jne    100d42 <pmmap_merge+0xc3>
  100e1b:	8b 45 dc             	mov    -0x24(%ebp),%eax
  100e1e:	85 c0                	test   %eax,%eax
  100e20:	74 0c                	je     100e2e <pmmap_merge+0x1af>
  100e22:	8b 45 dc             	mov    -0x24(%ebp),%eax
  100e25:	8b 40 04             	mov    0x4(%eax),%eax
  100e28:	89 83 84 70 00 00    	mov    %eax,0x7084(%ebx)
  100e2e:	90                   	nop
  100e2f:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100e32:	c9                   	leave
  100e33:	c3                   	ret

00100e34 <pmmap_dump>:
  100e34:	55                   	push   %ebp
  100e35:	89 e5                	mov    %esp,%ebp
  100e37:	53                   	push   %ebx
  100e38:	83 ec 14             	sub    $0x14,%esp
  100e3b:	e8 80 f5 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  100e40:	81 c3 b4 c1 00 00    	add    $0xc1b4,%ebx
  100e46:	8b 83 70 70 00 00    	mov    0x7070(%ebx),%eax
  100e4c:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100e4f:	e9 a5 00 00 00       	jmp    100ef9 <pmmap_dump+0xc5>
  100e54:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100e57:	8b 40 08             	mov    0x8(%eax),%eax
  100e5a:	83 f8 01             	cmp    $0x1,%eax
  100e5d:	74 41                	je     100ea0 <pmmap_dump+0x6c>
  100e5f:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100e62:	8b 40 08             	mov    0x8(%eax),%eax
  100e65:	83 f8 02             	cmp    $0x2,%eax
  100e68:	74 2e                	je     100e98 <pmmap_dump+0x64>
  100e6a:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100e6d:	8b 40 08             	mov    0x8(%eax),%eax
  100e70:	83 f8 03             	cmp    $0x3,%eax
  100e73:	74 1b                	je     100e90 <pmmap_dump+0x5c>
  100e75:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100e78:	8b 40 08             	mov    0x8(%eax),%eax
  100e7b:	83 f8 04             	cmp    $0x4,%eax
  100e7e:	75 08                	jne    100e88 <pmmap_dump+0x54>
  100e80:	8d 83 d4 b0 ff ff    	lea    -0x4f2c(%ebx),%eax
  100e86:	eb 1e                	jmp    100ea6 <pmmap_dump+0x72>
  100e88:	8d 83 dd b0 ff ff    	lea    -0x4f23(%ebx),%eax
  100e8e:	eb 16                	jmp    100ea6 <pmmap_dump+0x72>
  100e90:	8d 83 e5 b0 ff ff    	lea    -0x4f1b(%ebx),%eax
  100e96:	eb 0e                	jmp    100ea6 <pmmap_dump+0x72>
  100e98:	8d 83 ef b0 ff ff    	lea    -0x4f11(%ebx),%eax
  100e9e:	eb 06                	jmp    100ea6 <pmmap_dump+0x72>
  100ea0:	8d 83 f8 b0 ff ff    	lea    -0x4f08(%ebx),%eax
  100ea6:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100ea9:	8b 0a                	mov    (%edx),%ecx
  100eab:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100eae:	8b 52 04             	mov    0x4(%edx),%edx
  100eb1:	39 d1                	cmp    %edx,%ecx
  100eb3:	75 08                	jne    100ebd <pmmap_dump+0x89>
  100eb5:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100eb8:	8b 52 04             	mov    0x4(%edx),%edx
  100ebb:	eb 1c                	jmp    100ed9 <pmmap_dump+0xa5>
  100ebd:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100ec0:	8b 52 04             	mov    0x4(%edx),%edx
  100ec3:	83 fa ff             	cmp    $0xffffffff,%edx
  100ec6:	75 08                	jne    100ed0 <pmmap_dump+0x9c>
  100ec8:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100ecb:	8b 52 04             	mov    0x4(%edx),%edx
  100ece:	eb 09                	jmp    100ed9 <pmmap_dump+0xa5>
  100ed0:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100ed3:	8b 52 04             	mov    0x4(%edx),%edx
  100ed6:	83 ea 01             	sub    $0x1,%edx
  100ed9:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  100edc:	8b 09                	mov    (%ecx),%ecx
  100ede:	50                   	push   %eax
  100edf:	52                   	push   %edx
  100ee0:	51                   	push   %ecx
  100ee1:	8d 83 00 b1 ff ff    	lea    -0x4f00(%ebx),%eax
  100ee7:	50                   	push   %eax
  100ee8:	e8 7b 1b 00 00       	call   102a68 <debug_info>
  100eed:	83 c4 10             	add    $0x10,%esp
  100ef0:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100ef3:	8b 40 0c             	mov    0xc(%eax),%eax
  100ef6:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100ef9:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  100efd:	0f 85 51 ff ff ff    	jne    100e54 <pmmap_dump+0x20>
  100f03:	90                   	nop
  100f04:	90                   	nop
  100f05:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100f08:	c9                   	leave
  100f09:	c3                   	ret

00100f0a <pmmap_init>:
  100f0a:	55                   	push   %ebp
  100f0b:	89 e5                	mov    %esp,%ebp
  100f0d:	53                   	push   %ebx
  100f0e:	83 ec 24             	sub    $0x24,%esp
  100f11:	e8 aa f4 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  100f16:	81 c3 de c0 00 00    	add    $0xc0de,%ebx
  100f1c:	83 ec 0c             	sub    $0xc,%esp
  100f1f:	8d 83 21 b1 ff ff    	lea    -0x4edf(%ebx),%eax
  100f25:	50                   	push   %eax
  100f26:	e8 3d 1b 00 00       	call   102a68 <debug_info>
  100f2b:	83 c4 10             	add    $0x10,%esp
  100f2e:	8b 45 08             	mov    0x8(%ebp),%eax
  100f31:	89 45 e8             	mov    %eax,-0x18(%ebp)
  100f34:	8b 45 e8             	mov    -0x18(%ebp),%eax
  100f37:	8b 40 30             	mov    0x30(%eax),%eax
  100f3a:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100f3d:	c7 83 70 70 00 00 00 	movl   $0x0,0x7070(%ebx)
  100f44:	00 00 00 
  100f47:	c7 83 74 70 00 00 00 	movl   $0x0,0x7074(%ebx)
  100f4e:	00 00 00 
  100f51:	c7 83 78 70 00 00 00 	movl   $0x0,0x7078(%ebx)
  100f58:	00 00 00 
  100f5b:	c7 83 7c 70 00 00 00 	movl   $0x0,0x707c(%ebx)
  100f62:	00 00 00 
  100f65:	c7 83 80 70 00 00 00 	movl   $0x0,0x7080(%ebx)
  100f6c:	00 00 00 
  100f6f:	eb 6c                	jmp    100fdd <pmmap_init+0xd3>
  100f71:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100f74:	8b 40 08             	mov    0x8(%eax),%eax
  100f77:	85 c0                	test   %eax,%eax
  100f79:	75 58                	jne    100fd3 <pmmap_init+0xc9>
  100f7b:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100f7e:	8b 40 04             	mov    0x4(%eax),%eax
  100f81:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  100f84:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100f87:	8b 40 10             	mov    0x10(%eax),%eax
  100f8a:	85 c0                	test   %eax,%eax
  100f8c:	75 0f                	jne    100f9d <pmmap_init+0x93>
  100f8e:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100f91:	8b 50 0c             	mov    0xc(%eax),%edx
  100f94:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  100f97:	f7 d0                	not    %eax
  100f99:	39 c2                	cmp    %eax,%edx
  100f9b:	72 09                	jb     100fa6 <pmmap_init+0x9c>
  100f9d:	c7 45 f0 ff ff ff ff 	movl   $0xffffffff,-0x10(%ebp)
  100fa4:	eb 0e                	jmp    100fb4 <pmmap_init+0xaa>
  100fa6:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100fa9:	8b 50 0c             	mov    0xc(%eax),%edx
  100fac:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  100faf:	01 d0                	add    %edx,%eax
  100fb1:	89 45 f0             	mov    %eax,-0x10(%ebp)
  100fb4:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100fb7:	8b 40 14             	mov    0x14(%eax),%eax
  100fba:	89 45 e0             	mov    %eax,-0x20(%ebp)
  100fbd:	83 ec 04             	sub    $0x4,%esp
  100fc0:	ff 75 e0             	push   -0x20(%ebp)
  100fc3:	ff 75 f0             	push   -0x10(%ebp)
  100fc6:	ff 75 e4             	push   -0x1c(%ebp)
  100fc9:	e8 f0 fb ff ff       	call   100bbe <pmmap_insert>
  100fce:	83 c4 10             	add    $0x10,%esp
  100fd1:	eb 01                	jmp    100fd4 <pmmap_init+0xca>
  100fd3:	90                   	nop
  100fd4:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100fd7:	83 c0 18             	add    $0x18,%eax
  100fda:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100fdd:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100fe0:	8b 45 e8             	mov    -0x18(%ebp),%eax
  100fe3:	8b 40 30             	mov    0x30(%eax),%eax
  100fe6:	29 c2                	sub    %eax,%edx
  100fe8:	8b 45 e8             	mov    -0x18(%ebp),%eax
  100feb:	8b 40 2c             	mov    0x2c(%eax),%eax
  100fee:	39 c2                	cmp    %eax,%edx
  100ff0:	0f 82 7b ff ff ff    	jb     100f71 <pmmap_init+0x67>
  100ff6:	e8 84 fc ff ff       	call   100c7f <pmmap_merge>
  100ffb:	e8 34 fe ff ff       	call   100e34 <pmmap_dump>
  101000:	8b 83 70 70 00 00    	mov    0x7070(%ebx),%eax
  101006:	89 45 ec             	mov    %eax,-0x14(%ebp)
  101009:	eb 18                	jmp    101023 <pmmap_init+0x119>
  10100b:	8b 83 8c 70 00 00    	mov    0x708c(%ebx),%eax
  101011:	83 c0 01             	add    $0x1,%eax
  101014:	89 83 8c 70 00 00    	mov    %eax,0x708c(%ebx)
  10101a:	8b 45 ec             	mov    -0x14(%ebp),%eax
  10101d:	8b 40 0c             	mov    0xc(%eax),%eax
  101020:	89 45 ec             	mov    %eax,-0x14(%ebp)
  101023:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
  101027:	75 e2                	jne    10100b <pmmap_init+0x101>
  101029:	8b 83 84 70 00 00    	mov    0x7084(%ebx),%eax
  10102f:	83 ec 08             	sub    $0x8,%esp
  101032:	68 00 10 00 00       	push   $0x1000
  101037:	50                   	push   %eax
  101038:	e8 c8 27 00 00       	call   103805 <rounddown>
  10103d:	83 c4 10             	add    $0x10,%esp
  101040:	c1 e8 0c             	shr    $0xc,%eax
  101043:	89 83 88 70 00 00    	mov    %eax,0x7088(%ebx)
  101049:	90                   	nop
  10104a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  10104d:	c9                   	leave
  10104e:	c3                   	ret

0010104f <get_size>:
  10104f:	55                   	push   %ebp
  101050:	89 e5                	mov    %esp,%ebp
  101052:	e8 61 f3 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  101057:	05 9d bf 00 00       	add    $0xbf9d,%eax
  10105c:	8b 80 8c 70 00 00    	mov    0x708c(%eax),%eax
  101062:	5d                   	pop    %ebp
  101063:	c3                   	ret

00101064 <get_mms>:
  101064:	55                   	push   %ebp
  101065:	89 e5                	mov    %esp,%ebp
  101067:	83 ec 10             	sub    $0x10,%esp
  10106a:	e8 49 f3 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  10106f:	05 85 bf 00 00       	add    $0xbf85,%eax
  101074:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  10107b:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  101082:	8b 90 70 70 00 00    	mov    0x7070(%eax),%edx
  101088:	89 55 f8             	mov    %edx,-0x8(%ebp)
  10108b:	eb 15                	jmp    1010a2 <get_mms+0x3e>
  10108d:	8b 55 fc             	mov    -0x4(%ebp),%edx
  101090:	3b 55 08             	cmp    0x8(%ebp),%edx
  101093:	74 15                	je     1010aa <get_mms+0x46>
  101095:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  101099:	8b 55 f8             	mov    -0x8(%ebp),%edx
  10109c:	8b 52 0c             	mov    0xc(%edx),%edx
  10109f:	89 55 f8             	mov    %edx,-0x8(%ebp)
  1010a2:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
  1010a6:	75 e5                	jne    10108d <get_mms+0x29>
  1010a8:	eb 01                	jmp    1010ab <get_mms+0x47>
  1010aa:	90                   	nop
  1010ab:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
  1010af:	74 0b                	je     1010bc <get_mms+0x58>
  1010b1:	8b 80 8c 70 00 00    	mov    0x708c(%eax),%eax
  1010b7:	39 45 fc             	cmp    %eax,-0x4(%ebp)
  1010ba:	75 07                	jne    1010c3 <get_mms+0x5f>
  1010bc:	b8 00 00 00 00       	mov    $0x0,%eax
  1010c1:	eb 05                	jmp    1010c8 <get_mms+0x64>
  1010c3:	8b 45 f8             	mov    -0x8(%ebp),%eax
  1010c6:	8b 00                	mov    (%eax),%eax
  1010c8:	c9                   	leave
  1010c9:	c3                   	ret

001010ca <get_mml>:
  1010ca:	55                   	push   %ebp
  1010cb:	89 e5                	mov    %esp,%ebp
  1010cd:	83 ec 10             	sub    $0x10,%esp
  1010d0:	e8 e3 f2 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  1010d5:	05 1f bf 00 00       	add    $0xbf1f,%eax
  1010da:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  1010e1:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  1010e8:	8b 90 70 70 00 00    	mov    0x7070(%eax),%edx
  1010ee:	89 55 f8             	mov    %edx,-0x8(%ebp)
  1010f1:	eb 15                	jmp    101108 <get_mml+0x3e>
  1010f3:	8b 55 fc             	mov    -0x4(%ebp),%edx
  1010f6:	3b 55 08             	cmp    0x8(%ebp),%edx
  1010f9:	74 15                	je     101110 <get_mml+0x46>
  1010fb:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  1010ff:	8b 55 f8             	mov    -0x8(%ebp),%edx
  101102:	8b 52 0c             	mov    0xc(%edx),%edx
  101105:	89 55 f8             	mov    %edx,-0x8(%ebp)
  101108:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
  10110c:	75 e5                	jne    1010f3 <get_mml+0x29>
  10110e:	eb 01                	jmp    101111 <get_mml+0x47>
  101110:	90                   	nop
  101111:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
  101115:	74 0b                	je     101122 <get_mml+0x58>
  101117:	8b 80 8c 70 00 00    	mov    0x708c(%eax),%eax
  10111d:	39 45 fc             	cmp    %eax,-0x4(%ebp)
  101120:	75 07                	jne    101129 <get_mml+0x5f>
  101122:	ba 00 00 00 00       	mov    $0x0,%edx
  101127:	eb 0d                	jmp    101136 <get_mml+0x6c>
  101129:	8b 45 f8             	mov    -0x8(%ebp),%eax
  10112c:	8b 50 04             	mov    0x4(%eax),%edx
  10112f:	8b 45 f8             	mov    -0x8(%ebp),%eax
  101132:	8b 00                	mov    (%eax),%eax
  101134:	29 c2                	sub    %eax,%edx
  101136:	89 d0                	mov    %edx,%eax
  101138:	c9                   	leave
  101139:	c3                   	ret

0010113a <is_usable>:
  10113a:	55                   	push   %ebp
  10113b:	89 e5                	mov    %esp,%ebp
  10113d:	83 ec 10             	sub    $0x10,%esp
  101140:	e8 73 f2 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  101145:	05 af be 00 00       	add    $0xbeaf,%eax
  10114a:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  101151:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  101158:	8b 90 70 70 00 00    	mov    0x7070(%eax),%edx
  10115e:	89 55 f8             	mov    %edx,-0x8(%ebp)
  101161:	eb 15                	jmp    101178 <is_usable+0x3e>
  101163:	8b 55 fc             	mov    -0x4(%ebp),%edx
  101166:	3b 55 08             	cmp    0x8(%ebp),%edx
  101169:	74 15                	je     101180 <is_usable+0x46>
  10116b:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  10116f:	8b 55 f8             	mov    -0x8(%ebp),%edx
  101172:	8b 52 0c             	mov    0xc(%edx),%edx
  101175:	89 55 f8             	mov    %edx,-0x8(%ebp)
  101178:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
  10117c:	75 e5                	jne    101163 <is_usable+0x29>
  10117e:	eb 01                	jmp    101181 <is_usable+0x47>
  101180:	90                   	nop
  101181:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
  101185:	74 0b                	je     101192 <is_usable+0x58>
  101187:	8b 80 8c 70 00 00    	mov    0x708c(%eax),%eax
  10118d:	39 45 fc             	cmp    %eax,-0x4(%ebp)
  101190:	75 07                	jne    101199 <is_usable+0x5f>
  101192:	b8 00 00 00 00       	mov    $0x0,%eax
  101197:	eb 0f                	jmp    1011a8 <is_usable+0x6e>
  101199:	8b 45 f8             	mov    -0x8(%ebp),%eax
  10119c:	8b 40 08             	mov    0x8(%eax),%eax
  10119f:	83 f8 01             	cmp    $0x1,%eax
  1011a2:	0f 94 c0             	sete   %al
  1011a5:	0f b6 c0             	movzbl %al,%eax
  1011a8:	c9                   	leave
  1011a9:	c3                   	ret

001011aa <set_cr3>:
  1011aa:	55                   	push   %ebp
  1011ab:	89 e5                	mov    %esp,%ebp
  1011ad:	53                   	push   %ebx
  1011ae:	83 ec 04             	sub    $0x4,%esp
  1011b1:	e8 02 f2 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  1011b6:	05 3e be 00 00       	add    $0xbe3e,%eax
  1011bb:	8b 55 08             	mov    0x8(%ebp),%edx
  1011be:	83 ec 0c             	sub    $0xc,%esp
  1011c1:	52                   	push   %edx
  1011c2:	89 c3                	mov    %eax,%ebx
  1011c4:	e8 ba 28 00 00       	call   103a83 <lcr3>
  1011c9:	83 c4 10             	add    $0x10,%esp
  1011cc:	90                   	nop
  1011cd:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1011d0:	c9                   	leave
  1011d1:	c3                   	ret

001011d2 <enable_paging>:
  1011d2:	55                   	push   %ebp
  1011d3:	89 e5                	mov    %esp,%ebp
  1011d5:	53                   	push   %ebx
  1011d6:	83 ec 14             	sub    $0x14,%esp
  1011d9:	e8 e2 f1 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  1011de:	81 c3 16 be 00 00    	add    $0xbe16,%ebx
  1011e4:	e8 c6 28 00 00       	call   103aaf <rcr4>
  1011e9:	89 45 f4             	mov    %eax,-0xc(%ebp)
  1011ec:	81 4d f4 80 00 00 00 	orl    $0x80,-0xc(%ebp)
  1011f3:	83 ec 0c             	sub    $0xc,%esp
  1011f6:	ff 75 f4             	push   -0xc(%ebp)
  1011f9:	e8 9b 28 00 00       	call   103a99 <lcr4>
  1011fe:	83 c4 10             	add    $0x10,%esp
  101201:	e8 47 28 00 00       	call   103a4d <rcr0>
  101206:	89 45 f0             	mov    %eax,-0x10(%ebp)
  101209:	81 4d f0 23 00 05 80 	orl    $0x80050023,-0x10(%ebp)
  101210:	83 65 f0 f3          	andl   $0xfffffff3,-0x10(%ebp)
  101214:	83 ec 0c             	sub    $0xc,%esp
  101217:	ff 75 f0             	push   -0x10(%ebp)
  10121a:	e8 18 28 00 00       	call   103a37 <lcr0>
  10121f:	83 c4 10             	add    $0x10,%esp
  101222:	90                   	nop
  101223:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  101226:	c9                   	leave
  101227:	c3                   	ret

00101228 <intr_init_idt>:
  101228:	55                   	push   %ebp
  101229:	89 e5                	mov    %esp,%ebp
  10122b:	83 ec 10             	sub    $0x10,%esp
  10122e:	e8 85 f1 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  101233:	05 c1 bd 00 00       	add    $0xbdc1,%eax
  101238:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  10123f:	e9 bb 00 00 00       	jmp    1012ff <intr_init_idt+0xd7>
  101244:	c7 c2 6e 27 10 00    	mov    $0x10276e,%edx
  10124a:	89 d1                	mov    %edx,%ecx
  10124c:	8b 55 fc             	mov    -0x4(%ebp),%edx
  10124f:	66 89 8c d0 ac 70 00 	mov    %cx,0x70ac(%eax,%edx,8)
  101256:	00 
  101257:	8b 55 fc             	mov    -0x4(%ebp),%edx
  10125a:	66 c7 84 d0 ae 70 00 	movw   $0x8,0x70ae(%eax,%edx,8)
  101261:	00 08 00 
  101264:	8b 55 fc             	mov    -0x4(%ebp),%edx
  101267:	0f b6 8c d0 b0 70 00 	movzbl 0x70b0(%eax,%edx,8),%ecx
  10126e:	00 
  10126f:	83 e1 e0             	and    $0xffffffe0,%ecx
  101272:	88 8c d0 b0 70 00 00 	mov    %cl,0x70b0(%eax,%edx,8)
  101279:	8b 55 fc             	mov    -0x4(%ebp),%edx
  10127c:	0f b6 8c d0 b0 70 00 	movzbl 0x70b0(%eax,%edx,8),%ecx
  101283:	00 
  101284:	83 e1 1f             	and    $0x1f,%ecx
  101287:	88 8c d0 b0 70 00 00 	mov    %cl,0x70b0(%eax,%edx,8)
  10128e:	8b 55 fc             	mov    -0x4(%ebp),%edx
  101291:	0f b6 8c d0 b1 70 00 	movzbl 0x70b1(%eax,%edx,8),%ecx
  101298:	00 
  101299:	83 e1 f0             	and    $0xfffffff0,%ecx
  10129c:	83 c9 0e             	or     $0xe,%ecx
  10129f:	88 8c d0 b1 70 00 00 	mov    %cl,0x70b1(%eax,%edx,8)
  1012a6:	8b 55 fc             	mov    -0x4(%ebp),%edx
  1012a9:	0f b6 8c d0 b1 70 00 	movzbl 0x70b1(%eax,%edx,8),%ecx
  1012b0:	00 
  1012b1:	83 e1 ef             	and    $0xffffffef,%ecx
  1012b4:	88 8c d0 b1 70 00 00 	mov    %cl,0x70b1(%eax,%edx,8)
  1012bb:	8b 55 fc             	mov    -0x4(%ebp),%edx
  1012be:	0f b6 8c d0 b1 70 00 	movzbl 0x70b1(%eax,%edx,8),%ecx
  1012c5:	00 
  1012c6:	83 e1 9f             	and    $0xffffff9f,%ecx
  1012c9:	88 8c d0 b1 70 00 00 	mov    %cl,0x70b1(%eax,%edx,8)
  1012d0:	8b 55 fc             	mov    -0x4(%ebp),%edx
  1012d3:	0f b6 8c d0 b1 70 00 	movzbl 0x70b1(%eax,%edx,8),%ecx
  1012da:	00 
  1012db:	83 c9 80             	or     $0xffffff80,%ecx
  1012de:	88 8c d0 b1 70 00 00 	mov    %cl,0x70b1(%eax,%edx,8)
  1012e5:	c7 c2 6e 27 10 00    	mov    $0x10276e,%edx
  1012eb:	c1 ea 10             	shr    $0x10,%edx
  1012ee:	89 d1                	mov    %edx,%ecx
  1012f0:	8b 55 fc             	mov    -0x4(%ebp),%edx
  1012f3:	66 89 8c d0 b2 70 00 	mov    %cx,0x70b2(%eax,%edx,8)
  1012fa:	00 
  1012fb:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  1012ff:	8b 55 fc             	mov    -0x4(%ebp),%edx
  101302:	81 fa ff 00 00 00    	cmp    $0xff,%edx
  101308:	0f 86 36 ff ff ff    	jbe    101244 <intr_init_idt+0x1c>
  10130e:	c7 c2 10 26 10 00    	mov    $0x102610,%edx
  101314:	66 89 90 ac 70 00 00 	mov    %dx,0x70ac(%eax)
  10131b:	66 c7 80 ae 70 00 00 	movw   $0x8,0x70ae(%eax)
  101322:	08 00 
  101324:	0f b6 90 b0 70 00 00 	movzbl 0x70b0(%eax),%edx
  10132b:	83 e2 e0             	and    $0xffffffe0,%edx
  10132e:	88 90 b0 70 00 00    	mov    %dl,0x70b0(%eax)
  101334:	0f b6 90 b0 70 00 00 	movzbl 0x70b0(%eax),%edx
  10133b:	83 e2 1f             	and    $0x1f,%edx
  10133e:	88 90 b0 70 00 00    	mov    %dl,0x70b0(%eax)
  101344:	0f b6 90 b1 70 00 00 	movzbl 0x70b1(%eax),%edx
  10134b:	83 e2 f0             	and    $0xfffffff0,%edx
  10134e:	83 ca 0e             	or     $0xe,%edx
  101351:	88 90 b1 70 00 00    	mov    %dl,0x70b1(%eax)
  101357:	0f b6 90 b1 70 00 00 	movzbl 0x70b1(%eax),%edx
  10135e:	83 e2 ef             	and    $0xffffffef,%edx
  101361:	88 90 b1 70 00 00    	mov    %dl,0x70b1(%eax)
  101367:	0f b6 90 b1 70 00 00 	movzbl 0x70b1(%eax),%edx
  10136e:	83 e2 9f             	and    $0xffffff9f,%edx
  101371:	88 90 b1 70 00 00    	mov    %dl,0x70b1(%eax)
  101377:	0f b6 90 b1 70 00 00 	movzbl 0x70b1(%eax),%edx
  10137e:	83 ca 80             	or     $0xffffff80,%edx
  101381:	88 90 b1 70 00 00    	mov    %dl,0x70b1(%eax)
  101387:	c7 c2 10 26 10 00    	mov    $0x102610,%edx
  10138d:	c1 ea 10             	shr    $0x10,%edx
  101390:	66 89 90 b2 70 00 00 	mov    %dx,0x70b2(%eax)
  101397:	c7 c2 1a 26 10 00    	mov    $0x10261a,%edx
  10139d:	66 89 90 b4 70 00 00 	mov    %dx,0x70b4(%eax)
  1013a4:	66 c7 80 b6 70 00 00 	movw   $0x8,0x70b6(%eax)
  1013ab:	08 00 
  1013ad:	0f b6 90 b8 70 00 00 	movzbl 0x70b8(%eax),%edx
  1013b4:	83 e2 e0             	and    $0xffffffe0,%edx
  1013b7:	88 90 b8 70 00 00    	mov    %dl,0x70b8(%eax)
  1013bd:	0f b6 90 b8 70 00 00 	movzbl 0x70b8(%eax),%edx
  1013c4:	83 e2 1f             	and    $0x1f,%edx
  1013c7:	88 90 b8 70 00 00    	mov    %dl,0x70b8(%eax)
  1013cd:	0f b6 90 b9 70 00 00 	movzbl 0x70b9(%eax),%edx
  1013d4:	83 e2 f0             	and    $0xfffffff0,%edx
  1013d7:	83 ca 0e             	or     $0xe,%edx
  1013da:	88 90 b9 70 00 00    	mov    %dl,0x70b9(%eax)
  1013e0:	0f b6 90 b9 70 00 00 	movzbl 0x70b9(%eax),%edx
  1013e7:	83 e2 ef             	and    $0xffffffef,%edx
  1013ea:	88 90 b9 70 00 00    	mov    %dl,0x70b9(%eax)
  1013f0:	0f b6 90 b9 70 00 00 	movzbl 0x70b9(%eax),%edx
  1013f7:	83 e2 9f             	and    $0xffffff9f,%edx
  1013fa:	88 90 b9 70 00 00    	mov    %dl,0x70b9(%eax)
  101400:	0f b6 90 b9 70 00 00 	movzbl 0x70b9(%eax),%edx
  101407:	83 ca 80             	or     $0xffffff80,%edx
  10140a:	88 90 b9 70 00 00    	mov    %dl,0x70b9(%eax)
  101410:	c7 c2 1a 26 10 00    	mov    $0x10261a,%edx
  101416:	c1 ea 10             	shr    $0x10,%edx
  101419:	66 89 90 ba 70 00 00 	mov    %dx,0x70ba(%eax)
  101420:	c7 c2 24 26 10 00    	mov    $0x102624,%edx
  101426:	66 89 90 bc 70 00 00 	mov    %dx,0x70bc(%eax)
  10142d:	66 c7 80 be 70 00 00 	movw   $0x8,0x70be(%eax)
  101434:	08 00 
  101436:	0f b6 90 c0 70 00 00 	movzbl 0x70c0(%eax),%edx
  10143d:	83 e2 e0             	and    $0xffffffe0,%edx
  101440:	88 90 c0 70 00 00    	mov    %dl,0x70c0(%eax)
  101446:	0f b6 90 c0 70 00 00 	movzbl 0x70c0(%eax),%edx
  10144d:	83 e2 1f             	and    $0x1f,%edx
  101450:	88 90 c0 70 00 00    	mov    %dl,0x70c0(%eax)
  101456:	0f b6 90 c1 70 00 00 	movzbl 0x70c1(%eax),%edx
  10145d:	83 e2 f0             	and    $0xfffffff0,%edx
  101460:	83 ca 0e             	or     $0xe,%edx
  101463:	88 90 c1 70 00 00    	mov    %dl,0x70c1(%eax)
  101469:	0f b6 90 c1 70 00 00 	movzbl 0x70c1(%eax),%edx
  101470:	83 e2 ef             	and    $0xffffffef,%edx
  101473:	88 90 c1 70 00 00    	mov    %dl,0x70c1(%eax)
  101479:	0f b6 90 c1 70 00 00 	movzbl 0x70c1(%eax),%edx
  101480:	83 e2 9f             	and    $0xffffff9f,%edx
  101483:	88 90 c1 70 00 00    	mov    %dl,0x70c1(%eax)
  101489:	0f b6 90 c1 70 00 00 	movzbl 0x70c1(%eax),%edx
  101490:	83 ca 80             	or     $0xffffff80,%edx
  101493:	88 90 c1 70 00 00    	mov    %dl,0x70c1(%eax)
  101499:	c7 c2 24 26 10 00    	mov    $0x102624,%edx
  10149f:	c1 ea 10             	shr    $0x10,%edx
  1014a2:	66 89 90 c2 70 00 00 	mov    %dx,0x70c2(%eax)
  1014a9:	c7 c2 2e 26 10 00    	mov    $0x10262e,%edx
  1014af:	66 89 90 c4 70 00 00 	mov    %dx,0x70c4(%eax)
  1014b6:	66 c7 80 c6 70 00 00 	movw   $0x8,0x70c6(%eax)
  1014bd:	08 00 
  1014bf:	0f b6 90 c8 70 00 00 	movzbl 0x70c8(%eax),%edx
  1014c6:	83 e2 e0             	and    $0xffffffe0,%edx
  1014c9:	88 90 c8 70 00 00    	mov    %dl,0x70c8(%eax)
  1014cf:	0f b6 90 c8 70 00 00 	movzbl 0x70c8(%eax),%edx
  1014d6:	83 e2 1f             	and    $0x1f,%edx
  1014d9:	88 90 c8 70 00 00    	mov    %dl,0x70c8(%eax)
  1014df:	0f b6 90 c9 70 00 00 	movzbl 0x70c9(%eax),%edx
  1014e6:	83 e2 f0             	and    $0xfffffff0,%edx
  1014e9:	83 ca 0e             	or     $0xe,%edx
  1014ec:	88 90 c9 70 00 00    	mov    %dl,0x70c9(%eax)
  1014f2:	0f b6 90 c9 70 00 00 	movzbl 0x70c9(%eax),%edx
  1014f9:	83 e2 ef             	and    $0xffffffef,%edx
  1014fc:	88 90 c9 70 00 00    	mov    %dl,0x70c9(%eax)
  101502:	0f b6 90 c9 70 00 00 	movzbl 0x70c9(%eax),%edx
  101509:	83 ca 60             	or     $0x60,%edx
  10150c:	88 90 c9 70 00 00    	mov    %dl,0x70c9(%eax)
  101512:	0f b6 90 c9 70 00 00 	movzbl 0x70c9(%eax),%edx
  101519:	83 ca 80             	or     $0xffffff80,%edx
  10151c:	88 90 c9 70 00 00    	mov    %dl,0x70c9(%eax)
  101522:	c7 c2 2e 26 10 00    	mov    $0x10262e,%edx
  101528:	c1 ea 10             	shr    $0x10,%edx
  10152b:	66 89 90 ca 70 00 00 	mov    %dx,0x70ca(%eax)
  101532:	c7 c2 38 26 10 00    	mov    $0x102638,%edx
  101538:	66 89 90 cc 70 00 00 	mov    %dx,0x70cc(%eax)
  10153f:	66 c7 80 ce 70 00 00 	movw   $0x8,0x70ce(%eax)
  101546:	08 00 
  101548:	0f b6 90 d0 70 00 00 	movzbl 0x70d0(%eax),%edx
  10154f:	83 e2 e0             	and    $0xffffffe0,%edx
  101552:	88 90 d0 70 00 00    	mov    %dl,0x70d0(%eax)
  101558:	0f b6 90 d0 70 00 00 	movzbl 0x70d0(%eax),%edx
  10155f:	83 e2 1f             	and    $0x1f,%edx
  101562:	88 90 d0 70 00 00    	mov    %dl,0x70d0(%eax)
  101568:	0f b6 90 d1 70 00 00 	movzbl 0x70d1(%eax),%edx
  10156f:	83 e2 f0             	and    $0xfffffff0,%edx
  101572:	83 ca 0e             	or     $0xe,%edx
  101575:	88 90 d1 70 00 00    	mov    %dl,0x70d1(%eax)
  10157b:	0f b6 90 d1 70 00 00 	movzbl 0x70d1(%eax),%edx
  101582:	83 e2 ef             	and    $0xffffffef,%edx
  101585:	88 90 d1 70 00 00    	mov    %dl,0x70d1(%eax)
  10158b:	0f b6 90 d1 70 00 00 	movzbl 0x70d1(%eax),%edx
  101592:	83 ca 60             	or     $0x60,%edx
  101595:	88 90 d1 70 00 00    	mov    %dl,0x70d1(%eax)
  10159b:	0f b6 90 d1 70 00 00 	movzbl 0x70d1(%eax),%edx
  1015a2:	83 ca 80             	or     $0xffffff80,%edx
  1015a5:	88 90 d1 70 00 00    	mov    %dl,0x70d1(%eax)
  1015ab:	c7 c2 38 26 10 00    	mov    $0x102638,%edx
  1015b1:	c1 ea 10             	shr    $0x10,%edx
  1015b4:	66 89 90 d2 70 00 00 	mov    %dx,0x70d2(%eax)
  1015bb:	c7 c2 42 26 10 00    	mov    $0x102642,%edx
  1015c1:	66 89 90 d4 70 00 00 	mov    %dx,0x70d4(%eax)
  1015c8:	66 c7 80 d6 70 00 00 	movw   $0x8,0x70d6(%eax)
  1015cf:	08 00 
  1015d1:	0f b6 90 d8 70 00 00 	movzbl 0x70d8(%eax),%edx
  1015d8:	83 e2 e0             	and    $0xffffffe0,%edx
  1015db:	88 90 d8 70 00 00    	mov    %dl,0x70d8(%eax)
  1015e1:	0f b6 90 d8 70 00 00 	movzbl 0x70d8(%eax),%edx
  1015e8:	83 e2 1f             	and    $0x1f,%edx
  1015eb:	88 90 d8 70 00 00    	mov    %dl,0x70d8(%eax)
  1015f1:	0f b6 90 d9 70 00 00 	movzbl 0x70d9(%eax),%edx
  1015f8:	83 e2 f0             	and    $0xfffffff0,%edx
  1015fb:	83 ca 0e             	or     $0xe,%edx
  1015fe:	88 90 d9 70 00 00    	mov    %dl,0x70d9(%eax)
  101604:	0f b6 90 d9 70 00 00 	movzbl 0x70d9(%eax),%edx
  10160b:	83 e2 ef             	and    $0xffffffef,%edx
  10160e:	88 90 d9 70 00 00    	mov    %dl,0x70d9(%eax)
  101614:	0f b6 90 d9 70 00 00 	movzbl 0x70d9(%eax),%edx
  10161b:	83 e2 9f             	and    $0xffffff9f,%edx
  10161e:	88 90 d9 70 00 00    	mov    %dl,0x70d9(%eax)
  101624:	0f b6 90 d9 70 00 00 	movzbl 0x70d9(%eax),%edx
  10162b:	83 ca 80             	or     $0xffffff80,%edx
  10162e:	88 90 d9 70 00 00    	mov    %dl,0x70d9(%eax)
  101634:	c7 c2 42 26 10 00    	mov    $0x102642,%edx
  10163a:	c1 ea 10             	shr    $0x10,%edx
  10163d:	66 89 90 da 70 00 00 	mov    %dx,0x70da(%eax)
  101644:	c7 c2 4c 26 10 00    	mov    $0x10264c,%edx
  10164a:	66 89 90 dc 70 00 00 	mov    %dx,0x70dc(%eax)
  101651:	66 c7 80 de 70 00 00 	movw   $0x8,0x70de(%eax)
  101658:	08 00 
  10165a:	0f b6 90 e0 70 00 00 	movzbl 0x70e0(%eax),%edx
  101661:	83 e2 e0             	and    $0xffffffe0,%edx
  101664:	88 90 e0 70 00 00    	mov    %dl,0x70e0(%eax)
  10166a:	0f b6 90 e0 70 00 00 	movzbl 0x70e0(%eax),%edx
  101671:	83 e2 1f             	and    $0x1f,%edx
  101674:	88 90 e0 70 00 00    	mov    %dl,0x70e0(%eax)
  10167a:	0f b6 90 e1 70 00 00 	movzbl 0x70e1(%eax),%edx
  101681:	83 e2 f0             	and    $0xfffffff0,%edx
  101684:	83 ca 0e             	or     $0xe,%edx
  101687:	88 90 e1 70 00 00    	mov    %dl,0x70e1(%eax)
  10168d:	0f b6 90 e1 70 00 00 	movzbl 0x70e1(%eax),%edx
  101694:	83 e2 ef             	and    $0xffffffef,%edx
  101697:	88 90 e1 70 00 00    	mov    %dl,0x70e1(%eax)
  10169d:	0f b6 90 e1 70 00 00 	movzbl 0x70e1(%eax),%edx
  1016a4:	83 e2 9f             	and    $0xffffff9f,%edx
  1016a7:	88 90 e1 70 00 00    	mov    %dl,0x70e1(%eax)
  1016ad:	0f b6 90 e1 70 00 00 	movzbl 0x70e1(%eax),%edx
  1016b4:	83 ca 80             	or     $0xffffff80,%edx
  1016b7:	88 90 e1 70 00 00    	mov    %dl,0x70e1(%eax)
  1016bd:	c7 c2 4c 26 10 00    	mov    $0x10264c,%edx
  1016c3:	c1 ea 10             	shr    $0x10,%edx
  1016c6:	66 89 90 e2 70 00 00 	mov    %dx,0x70e2(%eax)
  1016cd:	c7 c2 56 26 10 00    	mov    $0x102656,%edx
  1016d3:	66 89 90 e4 70 00 00 	mov    %dx,0x70e4(%eax)
  1016da:	66 c7 80 e6 70 00 00 	movw   $0x8,0x70e6(%eax)
  1016e1:	08 00 
  1016e3:	0f b6 90 e8 70 00 00 	movzbl 0x70e8(%eax),%edx
  1016ea:	83 e2 e0             	and    $0xffffffe0,%edx
  1016ed:	88 90 e8 70 00 00    	mov    %dl,0x70e8(%eax)
  1016f3:	0f b6 90 e8 70 00 00 	movzbl 0x70e8(%eax),%edx
  1016fa:	83 e2 1f             	and    $0x1f,%edx
  1016fd:	88 90 e8 70 00 00    	mov    %dl,0x70e8(%eax)
  101703:	0f b6 90 e9 70 00 00 	movzbl 0x70e9(%eax),%edx
  10170a:	83 e2 f0             	and    $0xfffffff0,%edx
  10170d:	83 ca 0e             	or     $0xe,%edx
  101710:	88 90 e9 70 00 00    	mov    %dl,0x70e9(%eax)
  101716:	0f b6 90 e9 70 00 00 	movzbl 0x70e9(%eax),%edx
  10171d:	83 e2 ef             	and    $0xffffffef,%edx
  101720:	88 90 e9 70 00 00    	mov    %dl,0x70e9(%eax)
  101726:	0f b6 90 e9 70 00 00 	movzbl 0x70e9(%eax),%edx
  10172d:	83 e2 9f             	and    $0xffffff9f,%edx
  101730:	88 90 e9 70 00 00    	mov    %dl,0x70e9(%eax)
  101736:	0f b6 90 e9 70 00 00 	movzbl 0x70e9(%eax),%edx
  10173d:	83 ca 80             	or     $0xffffff80,%edx
  101740:	88 90 e9 70 00 00    	mov    %dl,0x70e9(%eax)
  101746:	c7 c2 56 26 10 00    	mov    $0x102656,%edx
  10174c:	c1 ea 10             	shr    $0x10,%edx
  10174f:	66 89 90 ea 70 00 00 	mov    %dx,0x70ea(%eax)
  101756:	c7 c2 60 26 10 00    	mov    $0x102660,%edx
  10175c:	66 89 90 ec 70 00 00 	mov    %dx,0x70ec(%eax)
  101763:	66 c7 80 ee 70 00 00 	movw   $0x8,0x70ee(%eax)
  10176a:	08 00 
  10176c:	0f b6 90 f0 70 00 00 	movzbl 0x70f0(%eax),%edx
  101773:	83 e2 e0             	and    $0xffffffe0,%edx
  101776:	88 90 f0 70 00 00    	mov    %dl,0x70f0(%eax)
  10177c:	0f b6 90 f0 70 00 00 	movzbl 0x70f0(%eax),%edx
  101783:	83 e2 1f             	and    $0x1f,%edx
  101786:	88 90 f0 70 00 00    	mov    %dl,0x70f0(%eax)
  10178c:	0f b6 90 f1 70 00 00 	movzbl 0x70f1(%eax),%edx
  101793:	83 e2 f0             	and    $0xfffffff0,%edx
  101796:	83 ca 0e             	or     $0xe,%edx
  101799:	88 90 f1 70 00 00    	mov    %dl,0x70f1(%eax)
  10179f:	0f b6 90 f1 70 00 00 	movzbl 0x70f1(%eax),%edx
  1017a6:	83 e2 ef             	and    $0xffffffef,%edx
  1017a9:	88 90 f1 70 00 00    	mov    %dl,0x70f1(%eax)
  1017af:	0f b6 90 f1 70 00 00 	movzbl 0x70f1(%eax),%edx
  1017b6:	83 e2 9f             	and    $0xffffff9f,%edx
  1017b9:	88 90 f1 70 00 00    	mov    %dl,0x70f1(%eax)
  1017bf:	0f b6 90 f1 70 00 00 	movzbl 0x70f1(%eax),%edx
  1017c6:	83 ca 80             	or     $0xffffff80,%edx
  1017c9:	88 90 f1 70 00 00    	mov    %dl,0x70f1(%eax)
  1017cf:	c7 c2 60 26 10 00    	mov    $0x102660,%edx
  1017d5:	c1 ea 10             	shr    $0x10,%edx
  1017d8:	66 89 90 f2 70 00 00 	mov    %dx,0x70f2(%eax)
  1017df:	c7 c2 72 26 10 00    	mov    $0x102672,%edx
  1017e5:	66 89 90 fc 70 00 00 	mov    %dx,0x70fc(%eax)
  1017ec:	66 c7 80 fe 70 00 00 	movw   $0x8,0x70fe(%eax)
  1017f3:	08 00 
  1017f5:	0f b6 90 00 71 00 00 	movzbl 0x7100(%eax),%edx
  1017fc:	83 e2 e0             	and    $0xffffffe0,%edx
  1017ff:	88 90 00 71 00 00    	mov    %dl,0x7100(%eax)
  101805:	0f b6 90 00 71 00 00 	movzbl 0x7100(%eax),%edx
  10180c:	83 e2 1f             	and    $0x1f,%edx
  10180f:	88 90 00 71 00 00    	mov    %dl,0x7100(%eax)
  101815:	0f b6 90 01 71 00 00 	movzbl 0x7101(%eax),%edx
  10181c:	83 e2 f0             	and    $0xfffffff0,%edx
  10181f:	83 ca 0e             	or     $0xe,%edx
  101822:	88 90 01 71 00 00    	mov    %dl,0x7101(%eax)
  101828:	0f b6 90 01 71 00 00 	movzbl 0x7101(%eax),%edx
  10182f:	83 e2 ef             	and    $0xffffffef,%edx
  101832:	88 90 01 71 00 00    	mov    %dl,0x7101(%eax)
  101838:	0f b6 90 01 71 00 00 	movzbl 0x7101(%eax),%edx
  10183f:	83 e2 9f             	and    $0xffffff9f,%edx
  101842:	88 90 01 71 00 00    	mov    %dl,0x7101(%eax)
  101848:	0f b6 90 01 71 00 00 	movzbl 0x7101(%eax),%edx
  10184f:	83 ca 80             	or     $0xffffff80,%edx
  101852:	88 90 01 71 00 00    	mov    %dl,0x7101(%eax)
  101858:	c7 c2 72 26 10 00    	mov    $0x102672,%edx
  10185e:	c1 ea 10             	shr    $0x10,%edx
  101861:	66 89 90 02 71 00 00 	mov    %dx,0x7102(%eax)
  101868:	c7 c2 7a 26 10 00    	mov    $0x10267a,%edx
  10186e:	66 89 90 04 71 00 00 	mov    %dx,0x7104(%eax)
  101875:	66 c7 80 06 71 00 00 	movw   $0x8,0x7106(%eax)
  10187c:	08 00 
  10187e:	0f b6 90 08 71 00 00 	movzbl 0x7108(%eax),%edx
  101885:	83 e2 e0             	and    $0xffffffe0,%edx
  101888:	88 90 08 71 00 00    	mov    %dl,0x7108(%eax)
  10188e:	0f b6 90 08 71 00 00 	movzbl 0x7108(%eax),%edx
  101895:	83 e2 1f             	and    $0x1f,%edx
  101898:	88 90 08 71 00 00    	mov    %dl,0x7108(%eax)
  10189e:	0f b6 90 09 71 00 00 	movzbl 0x7109(%eax),%edx
  1018a5:	83 e2 f0             	and    $0xfffffff0,%edx
  1018a8:	83 ca 0e             	or     $0xe,%edx
  1018ab:	88 90 09 71 00 00    	mov    %dl,0x7109(%eax)
  1018b1:	0f b6 90 09 71 00 00 	movzbl 0x7109(%eax),%edx
  1018b8:	83 e2 ef             	and    $0xffffffef,%edx
  1018bb:	88 90 09 71 00 00    	mov    %dl,0x7109(%eax)
  1018c1:	0f b6 90 09 71 00 00 	movzbl 0x7109(%eax),%edx
  1018c8:	83 e2 9f             	and    $0xffffff9f,%edx
  1018cb:	88 90 09 71 00 00    	mov    %dl,0x7109(%eax)
  1018d1:	0f b6 90 09 71 00 00 	movzbl 0x7109(%eax),%edx
  1018d8:	83 ca 80             	or     $0xffffff80,%edx
  1018db:	88 90 09 71 00 00    	mov    %dl,0x7109(%eax)
  1018e1:	c7 c2 7a 26 10 00    	mov    $0x10267a,%edx
  1018e7:	c1 ea 10             	shr    $0x10,%edx
  1018ea:	66 89 90 0a 71 00 00 	mov    %dx,0x710a(%eax)
  1018f1:	c7 c2 82 26 10 00    	mov    $0x102682,%edx
  1018f7:	66 89 90 0c 71 00 00 	mov    %dx,0x710c(%eax)
  1018fe:	66 c7 80 0e 71 00 00 	movw   $0x8,0x710e(%eax)
  101905:	08 00 
  101907:	0f b6 90 10 71 00 00 	movzbl 0x7110(%eax),%edx
  10190e:	83 e2 e0             	and    $0xffffffe0,%edx
  101911:	88 90 10 71 00 00    	mov    %dl,0x7110(%eax)
  101917:	0f b6 90 10 71 00 00 	movzbl 0x7110(%eax),%edx
  10191e:	83 e2 1f             	and    $0x1f,%edx
  101921:	88 90 10 71 00 00    	mov    %dl,0x7110(%eax)
  101927:	0f b6 90 11 71 00 00 	movzbl 0x7111(%eax),%edx
  10192e:	83 e2 f0             	and    $0xfffffff0,%edx
  101931:	83 ca 0e             	or     $0xe,%edx
  101934:	88 90 11 71 00 00    	mov    %dl,0x7111(%eax)
  10193a:	0f b6 90 11 71 00 00 	movzbl 0x7111(%eax),%edx
  101941:	83 e2 ef             	and    $0xffffffef,%edx
  101944:	88 90 11 71 00 00    	mov    %dl,0x7111(%eax)
  10194a:	0f b6 90 11 71 00 00 	movzbl 0x7111(%eax),%edx
  101951:	83 e2 9f             	and    $0xffffff9f,%edx
  101954:	88 90 11 71 00 00    	mov    %dl,0x7111(%eax)
  10195a:	0f b6 90 11 71 00 00 	movzbl 0x7111(%eax),%edx
  101961:	83 ca 80             	or     $0xffffff80,%edx
  101964:	88 90 11 71 00 00    	mov    %dl,0x7111(%eax)
  10196a:	c7 c2 82 26 10 00    	mov    $0x102682,%edx
  101970:	c1 ea 10             	shr    $0x10,%edx
  101973:	66 89 90 12 71 00 00 	mov    %dx,0x7112(%eax)
  10197a:	c7 c2 8a 26 10 00    	mov    $0x10268a,%edx
  101980:	66 89 90 14 71 00 00 	mov    %dx,0x7114(%eax)
  101987:	66 c7 80 16 71 00 00 	movw   $0x8,0x7116(%eax)
  10198e:	08 00 
  101990:	0f b6 90 18 71 00 00 	movzbl 0x7118(%eax),%edx
  101997:	83 e2 e0             	and    $0xffffffe0,%edx
  10199a:	88 90 18 71 00 00    	mov    %dl,0x7118(%eax)
  1019a0:	0f b6 90 18 71 00 00 	movzbl 0x7118(%eax),%edx
  1019a7:	83 e2 1f             	and    $0x1f,%edx
  1019aa:	88 90 18 71 00 00    	mov    %dl,0x7118(%eax)
  1019b0:	0f b6 90 19 71 00 00 	movzbl 0x7119(%eax),%edx
  1019b7:	83 e2 f0             	and    $0xfffffff0,%edx
  1019ba:	83 ca 0e             	or     $0xe,%edx
  1019bd:	88 90 19 71 00 00    	mov    %dl,0x7119(%eax)
  1019c3:	0f b6 90 19 71 00 00 	movzbl 0x7119(%eax),%edx
  1019ca:	83 e2 ef             	and    $0xffffffef,%edx
  1019cd:	88 90 19 71 00 00    	mov    %dl,0x7119(%eax)
  1019d3:	0f b6 90 19 71 00 00 	movzbl 0x7119(%eax),%edx
  1019da:	83 e2 9f             	and    $0xffffff9f,%edx
  1019dd:	88 90 19 71 00 00    	mov    %dl,0x7119(%eax)
  1019e3:	0f b6 90 19 71 00 00 	movzbl 0x7119(%eax),%edx
  1019ea:	83 ca 80             	or     $0xffffff80,%edx
  1019ed:	88 90 19 71 00 00    	mov    %dl,0x7119(%eax)
  1019f3:	c7 c2 8a 26 10 00    	mov    $0x10268a,%edx
  1019f9:	c1 ea 10             	shr    $0x10,%edx
  1019fc:	66 89 90 1a 71 00 00 	mov    %dx,0x711a(%eax)
  101a03:	c7 c2 92 26 10 00    	mov    $0x102692,%edx
  101a09:	66 89 90 1c 71 00 00 	mov    %dx,0x711c(%eax)
  101a10:	66 c7 80 1e 71 00 00 	movw   $0x8,0x711e(%eax)
  101a17:	08 00 
  101a19:	0f b6 90 20 71 00 00 	movzbl 0x7120(%eax),%edx
  101a20:	83 e2 e0             	and    $0xffffffe0,%edx
  101a23:	88 90 20 71 00 00    	mov    %dl,0x7120(%eax)
  101a29:	0f b6 90 20 71 00 00 	movzbl 0x7120(%eax),%edx
  101a30:	83 e2 1f             	and    $0x1f,%edx
  101a33:	88 90 20 71 00 00    	mov    %dl,0x7120(%eax)
  101a39:	0f b6 90 21 71 00 00 	movzbl 0x7121(%eax),%edx
  101a40:	83 e2 f0             	and    $0xfffffff0,%edx
  101a43:	83 ca 0e             	or     $0xe,%edx
  101a46:	88 90 21 71 00 00    	mov    %dl,0x7121(%eax)
  101a4c:	0f b6 90 21 71 00 00 	movzbl 0x7121(%eax),%edx
  101a53:	83 e2 ef             	and    $0xffffffef,%edx
  101a56:	88 90 21 71 00 00    	mov    %dl,0x7121(%eax)
  101a5c:	0f b6 90 21 71 00 00 	movzbl 0x7121(%eax),%edx
  101a63:	83 e2 9f             	and    $0xffffff9f,%edx
  101a66:	88 90 21 71 00 00    	mov    %dl,0x7121(%eax)
  101a6c:	0f b6 90 21 71 00 00 	movzbl 0x7121(%eax),%edx
  101a73:	83 ca 80             	or     $0xffffff80,%edx
  101a76:	88 90 21 71 00 00    	mov    %dl,0x7121(%eax)
  101a7c:	c7 c2 92 26 10 00    	mov    $0x102692,%edx
  101a82:	c1 ea 10             	shr    $0x10,%edx
  101a85:	66 89 90 22 71 00 00 	mov    %dx,0x7122(%eax)
  101a8c:	c7 c2 a4 26 10 00    	mov    $0x1026a4,%edx
  101a92:	66 89 90 2c 71 00 00 	mov    %dx,0x712c(%eax)
  101a99:	66 c7 80 2e 71 00 00 	movw   $0x8,0x712e(%eax)
  101aa0:	08 00 
  101aa2:	0f b6 90 30 71 00 00 	movzbl 0x7130(%eax),%edx
  101aa9:	83 e2 e0             	and    $0xffffffe0,%edx
  101aac:	88 90 30 71 00 00    	mov    %dl,0x7130(%eax)
  101ab2:	0f b6 90 30 71 00 00 	movzbl 0x7130(%eax),%edx
  101ab9:	83 e2 1f             	and    $0x1f,%edx
  101abc:	88 90 30 71 00 00    	mov    %dl,0x7130(%eax)
  101ac2:	0f b6 90 31 71 00 00 	movzbl 0x7131(%eax),%edx
  101ac9:	83 e2 f0             	and    $0xfffffff0,%edx
  101acc:	83 ca 0e             	or     $0xe,%edx
  101acf:	88 90 31 71 00 00    	mov    %dl,0x7131(%eax)
  101ad5:	0f b6 90 31 71 00 00 	movzbl 0x7131(%eax),%edx
  101adc:	83 e2 ef             	and    $0xffffffef,%edx
  101adf:	88 90 31 71 00 00    	mov    %dl,0x7131(%eax)
  101ae5:	0f b6 90 31 71 00 00 	movzbl 0x7131(%eax),%edx
  101aec:	83 e2 9f             	and    $0xffffff9f,%edx
  101aef:	88 90 31 71 00 00    	mov    %dl,0x7131(%eax)
  101af5:	0f b6 90 31 71 00 00 	movzbl 0x7131(%eax),%edx
  101afc:	83 ca 80             	or     $0xffffff80,%edx
  101aff:	88 90 31 71 00 00    	mov    %dl,0x7131(%eax)
  101b05:	c7 c2 a4 26 10 00    	mov    $0x1026a4,%edx
  101b0b:	c1 ea 10             	shr    $0x10,%edx
  101b0e:	66 89 90 32 71 00 00 	mov    %dx,0x7132(%eax)
  101b15:	c7 c2 ae 26 10 00    	mov    $0x1026ae,%edx
  101b1b:	66 89 90 34 71 00 00 	mov    %dx,0x7134(%eax)
  101b22:	66 c7 80 36 71 00 00 	movw   $0x8,0x7136(%eax)
  101b29:	08 00 
  101b2b:	0f b6 90 38 71 00 00 	movzbl 0x7138(%eax),%edx
  101b32:	83 e2 e0             	and    $0xffffffe0,%edx
  101b35:	88 90 38 71 00 00    	mov    %dl,0x7138(%eax)
  101b3b:	0f b6 90 38 71 00 00 	movzbl 0x7138(%eax),%edx
  101b42:	83 e2 1f             	and    $0x1f,%edx
  101b45:	88 90 38 71 00 00    	mov    %dl,0x7138(%eax)
  101b4b:	0f b6 90 39 71 00 00 	movzbl 0x7139(%eax),%edx
  101b52:	83 e2 f0             	and    $0xfffffff0,%edx
  101b55:	83 ca 0e             	or     $0xe,%edx
  101b58:	88 90 39 71 00 00    	mov    %dl,0x7139(%eax)
  101b5e:	0f b6 90 39 71 00 00 	movzbl 0x7139(%eax),%edx
  101b65:	83 e2 ef             	and    $0xffffffef,%edx
  101b68:	88 90 39 71 00 00    	mov    %dl,0x7139(%eax)
  101b6e:	0f b6 90 39 71 00 00 	movzbl 0x7139(%eax),%edx
  101b75:	83 e2 9f             	and    $0xffffff9f,%edx
  101b78:	88 90 39 71 00 00    	mov    %dl,0x7139(%eax)
  101b7e:	0f b6 90 39 71 00 00 	movzbl 0x7139(%eax),%edx
  101b85:	83 ca 80             	or     $0xffffff80,%edx
  101b88:	88 90 39 71 00 00    	mov    %dl,0x7139(%eax)
  101b8e:	c7 c2 ae 26 10 00    	mov    $0x1026ae,%edx
  101b94:	c1 ea 10             	shr    $0x10,%edx
  101b97:	66 89 90 3a 71 00 00 	mov    %dx,0x713a(%eax)
  101b9e:	c7 c2 b6 26 10 00    	mov    $0x1026b6,%edx
  101ba4:	66 89 90 3c 71 00 00 	mov    %dx,0x713c(%eax)
  101bab:	66 c7 80 3e 71 00 00 	movw   $0x8,0x713e(%eax)
  101bb2:	08 00 
  101bb4:	0f b6 90 40 71 00 00 	movzbl 0x7140(%eax),%edx
  101bbb:	83 e2 e0             	and    $0xffffffe0,%edx
  101bbe:	88 90 40 71 00 00    	mov    %dl,0x7140(%eax)
  101bc4:	0f b6 90 40 71 00 00 	movzbl 0x7140(%eax),%edx
  101bcb:	83 e2 1f             	and    $0x1f,%edx
  101bce:	88 90 40 71 00 00    	mov    %dl,0x7140(%eax)
  101bd4:	0f b6 90 41 71 00 00 	movzbl 0x7141(%eax),%edx
  101bdb:	83 e2 f0             	and    $0xfffffff0,%edx
  101bde:	83 ca 0e             	or     $0xe,%edx
  101be1:	88 90 41 71 00 00    	mov    %dl,0x7141(%eax)
  101be7:	0f b6 90 41 71 00 00 	movzbl 0x7141(%eax),%edx
  101bee:	83 e2 ef             	and    $0xffffffef,%edx
  101bf1:	88 90 41 71 00 00    	mov    %dl,0x7141(%eax)
  101bf7:	0f b6 90 41 71 00 00 	movzbl 0x7141(%eax),%edx
  101bfe:	83 e2 9f             	and    $0xffffff9f,%edx
  101c01:	88 90 41 71 00 00    	mov    %dl,0x7141(%eax)
  101c07:	0f b6 90 41 71 00 00 	movzbl 0x7141(%eax),%edx
  101c0e:	83 ca 80             	or     $0xffffff80,%edx
  101c11:	88 90 41 71 00 00    	mov    %dl,0x7141(%eax)
  101c17:	c7 c2 b6 26 10 00    	mov    $0x1026b6,%edx
  101c1d:	c1 ea 10             	shr    $0x10,%edx
  101c20:	66 89 90 42 71 00 00 	mov    %dx,0x7142(%eax)
  101c27:	c7 c2 c0 26 10 00    	mov    $0x1026c0,%edx
  101c2d:	66 89 90 ac 71 00 00 	mov    %dx,0x71ac(%eax)
  101c34:	66 c7 80 ae 71 00 00 	movw   $0x8,0x71ae(%eax)
  101c3b:	08 00 
  101c3d:	0f b6 90 b0 71 00 00 	movzbl 0x71b0(%eax),%edx
  101c44:	83 e2 e0             	and    $0xffffffe0,%edx
  101c47:	88 90 b0 71 00 00    	mov    %dl,0x71b0(%eax)
  101c4d:	0f b6 90 b0 71 00 00 	movzbl 0x71b0(%eax),%edx
  101c54:	83 e2 1f             	and    $0x1f,%edx
  101c57:	88 90 b0 71 00 00    	mov    %dl,0x71b0(%eax)
  101c5d:	0f b6 90 b1 71 00 00 	movzbl 0x71b1(%eax),%edx
  101c64:	83 e2 f0             	and    $0xfffffff0,%edx
  101c67:	83 ca 0e             	or     $0xe,%edx
  101c6a:	88 90 b1 71 00 00    	mov    %dl,0x71b1(%eax)
  101c70:	0f b6 90 b1 71 00 00 	movzbl 0x71b1(%eax),%edx
  101c77:	83 e2 ef             	and    $0xffffffef,%edx
  101c7a:	88 90 b1 71 00 00    	mov    %dl,0x71b1(%eax)
  101c80:	0f b6 90 b1 71 00 00 	movzbl 0x71b1(%eax),%edx
  101c87:	83 e2 9f             	and    $0xffffff9f,%edx
  101c8a:	88 90 b1 71 00 00    	mov    %dl,0x71b1(%eax)
  101c90:	0f b6 90 b1 71 00 00 	movzbl 0x71b1(%eax),%edx
  101c97:	83 ca 80             	or     $0xffffff80,%edx
  101c9a:	88 90 b1 71 00 00    	mov    %dl,0x71b1(%eax)
  101ca0:	c7 c2 c0 26 10 00    	mov    $0x1026c0,%edx
  101ca6:	c1 ea 10             	shr    $0x10,%edx
  101ca9:	66 89 90 b2 71 00 00 	mov    %dx,0x71b2(%eax)
  101cb0:	c7 c2 ca 26 10 00    	mov    $0x1026ca,%edx
  101cb6:	66 89 90 b4 71 00 00 	mov    %dx,0x71b4(%eax)
  101cbd:	66 c7 80 b6 71 00 00 	movw   $0x8,0x71b6(%eax)
  101cc4:	08 00 
  101cc6:	0f b6 90 b8 71 00 00 	movzbl 0x71b8(%eax),%edx
  101ccd:	83 e2 e0             	and    $0xffffffe0,%edx
  101cd0:	88 90 b8 71 00 00    	mov    %dl,0x71b8(%eax)
  101cd6:	0f b6 90 b8 71 00 00 	movzbl 0x71b8(%eax),%edx
  101cdd:	83 e2 1f             	and    $0x1f,%edx
  101ce0:	88 90 b8 71 00 00    	mov    %dl,0x71b8(%eax)
  101ce6:	0f b6 90 b9 71 00 00 	movzbl 0x71b9(%eax),%edx
  101ced:	83 e2 f0             	and    $0xfffffff0,%edx
  101cf0:	83 ca 0e             	or     $0xe,%edx
  101cf3:	88 90 b9 71 00 00    	mov    %dl,0x71b9(%eax)
  101cf9:	0f b6 90 b9 71 00 00 	movzbl 0x71b9(%eax),%edx
  101d00:	83 e2 ef             	and    $0xffffffef,%edx
  101d03:	88 90 b9 71 00 00    	mov    %dl,0x71b9(%eax)
  101d09:	0f b6 90 b9 71 00 00 	movzbl 0x71b9(%eax),%edx
  101d10:	83 e2 9f             	and    $0xffffff9f,%edx
  101d13:	88 90 b9 71 00 00    	mov    %dl,0x71b9(%eax)
  101d19:	0f b6 90 b9 71 00 00 	movzbl 0x71b9(%eax),%edx
  101d20:	83 ca 80             	or     $0xffffff80,%edx
  101d23:	88 90 b9 71 00 00    	mov    %dl,0x71b9(%eax)
  101d29:	c7 c2 ca 26 10 00    	mov    $0x1026ca,%edx
  101d2f:	c1 ea 10             	shr    $0x10,%edx
  101d32:	66 89 90 ba 71 00 00 	mov    %dx,0x71ba(%eax)
  101d39:	c7 c2 d4 26 10 00    	mov    $0x1026d4,%edx
  101d3f:	66 89 90 bc 71 00 00 	mov    %dx,0x71bc(%eax)
  101d46:	66 c7 80 be 71 00 00 	movw   $0x8,0x71be(%eax)
  101d4d:	08 00 
  101d4f:	0f b6 90 c0 71 00 00 	movzbl 0x71c0(%eax),%edx
  101d56:	83 e2 e0             	and    $0xffffffe0,%edx
  101d59:	88 90 c0 71 00 00    	mov    %dl,0x71c0(%eax)
  101d5f:	0f b6 90 c0 71 00 00 	movzbl 0x71c0(%eax),%edx
  101d66:	83 e2 1f             	and    $0x1f,%edx
  101d69:	88 90 c0 71 00 00    	mov    %dl,0x71c0(%eax)
  101d6f:	0f b6 90 c1 71 00 00 	movzbl 0x71c1(%eax),%edx
  101d76:	83 e2 f0             	and    $0xfffffff0,%edx
  101d79:	83 ca 0e             	or     $0xe,%edx
  101d7c:	88 90 c1 71 00 00    	mov    %dl,0x71c1(%eax)
  101d82:	0f b6 90 c1 71 00 00 	movzbl 0x71c1(%eax),%edx
  101d89:	83 e2 ef             	and    $0xffffffef,%edx
  101d8c:	88 90 c1 71 00 00    	mov    %dl,0x71c1(%eax)
  101d92:	0f b6 90 c1 71 00 00 	movzbl 0x71c1(%eax),%edx
  101d99:	83 e2 9f             	and    $0xffffff9f,%edx
  101d9c:	88 90 c1 71 00 00    	mov    %dl,0x71c1(%eax)
  101da2:	0f b6 90 c1 71 00 00 	movzbl 0x71c1(%eax),%edx
  101da9:	83 ca 80             	or     $0xffffff80,%edx
  101dac:	88 90 c1 71 00 00    	mov    %dl,0x71c1(%eax)
  101db2:	c7 c2 d4 26 10 00    	mov    $0x1026d4,%edx
  101db8:	c1 ea 10             	shr    $0x10,%edx
  101dbb:	66 89 90 c2 71 00 00 	mov    %dx,0x71c2(%eax)
  101dc2:	c7 c2 de 26 10 00    	mov    $0x1026de,%edx
  101dc8:	66 89 90 c4 71 00 00 	mov    %dx,0x71c4(%eax)
  101dcf:	66 c7 80 c6 71 00 00 	movw   $0x8,0x71c6(%eax)
  101dd6:	08 00 
  101dd8:	0f b6 90 c8 71 00 00 	movzbl 0x71c8(%eax),%edx
  101ddf:	83 e2 e0             	and    $0xffffffe0,%edx
  101de2:	88 90 c8 71 00 00    	mov    %dl,0x71c8(%eax)
  101de8:	0f b6 90 c8 71 00 00 	movzbl 0x71c8(%eax),%edx
  101def:	83 e2 1f             	and    $0x1f,%edx
  101df2:	88 90 c8 71 00 00    	mov    %dl,0x71c8(%eax)
  101df8:	0f b6 90 c9 71 00 00 	movzbl 0x71c9(%eax),%edx
  101dff:	83 e2 f0             	and    $0xfffffff0,%edx
  101e02:	83 ca 0e             	or     $0xe,%edx
  101e05:	88 90 c9 71 00 00    	mov    %dl,0x71c9(%eax)
  101e0b:	0f b6 90 c9 71 00 00 	movzbl 0x71c9(%eax),%edx
  101e12:	83 e2 ef             	and    $0xffffffef,%edx
  101e15:	88 90 c9 71 00 00    	mov    %dl,0x71c9(%eax)
  101e1b:	0f b6 90 c9 71 00 00 	movzbl 0x71c9(%eax),%edx
  101e22:	83 e2 9f             	and    $0xffffff9f,%edx
  101e25:	88 90 c9 71 00 00    	mov    %dl,0x71c9(%eax)
  101e2b:	0f b6 90 c9 71 00 00 	movzbl 0x71c9(%eax),%edx
  101e32:	83 ca 80             	or     $0xffffff80,%edx
  101e35:	88 90 c9 71 00 00    	mov    %dl,0x71c9(%eax)
  101e3b:	c7 c2 de 26 10 00    	mov    $0x1026de,%edx
  101e41:	c1 ea 10             	shr    $0x10,%edx
  101e44:	66 89 90 ca 71 00 00 	mov    %dx,0x71ca(%eax)
  101e4b:	c7 c2 e8 26 10 00    	mov    $0x1026e8,%edx
  101e51:	66 89 90 cc 71 00 00 	mov    %dx,0x71cc(%eax)
  101e58:	66 c7 80 ce 71 00 00 	movw   $0x8,0x71ce(%eax)
  101e5f:	08 00 
  101e61:	0f b6 90 d0 71 00 00 	movzbl 0x71d0(%eax),%edx
  101e68:	83 e2 e0             	and    $0xffffffe0,%edx
  101e6b:	88 90 d0 71 00 00    	mov    %dl,0x71d0(%eax)
  101e71:	0f b6 90 d0 71 00 00 	movzbl 0x71d0(%eax),%edx
  101e78:	83 e2 1f             	and    $0x1f,%edx
  101e7b:	88 90 d0 71 00 00    	mov    %dl,0x71d0(%eax)
  101e81:	0f b6 90 d1 71 00 00 	movzbl 0x71d1(%eax),%edx
  101e88:	83 e2 f0             	and    $0xfffffff0,%edx
  101e8b:	83 ca 0e             	or     $0xe,%edx
  101e8e:	88 90 d1 71 00 00    	mov    %dl,0x71d1(%eax)
  101e94:	0f b6 90 d1 71 00 00 	movzbl 0x71d1(%eax),%edx
  101e9b:	83 e2 ef             	and    $0xffffffef,%edx
  101e9e:	88 90 d1 71 00 00    	mov    %dl,0x71d1(%eax)
  101ea4:	0f b6 90 d1 71 00 00 	movzbl 0x71d1(%eax),%edx
  101eab:	83 e2 9f             	and    $0xffffff9f,%edx
  101eae:	88 90 d1 71 00 00    	mov    %dl,0x71d1(%eax)
  101eb4:	0f b6 90 d1 71 00 00 	movzbl 0x71d1(%eax),%edx
  101ebb:	83 ca 80             	or     $0xffffff80,%edx
  101ebe:	88 90 d1 71 00 00    	mov    %dl,0x71d1(%eax)
  101ec4:	c7 c2 e8 26 10 00    	mov    $0x1026e8,%edx
  101eca:	c1 ea 10             	shr    $0x10,%edx
  101ecd:	66 89 90 d2 71 00 00 	mov    %dx,0x71d2(%eax)
  101ed4:	c7 c2 f2 26 10 00    	mov    $0x1026f2,%edx
  101eda:	66 89 90 d4 71 00 00 	mov    %dx,0x71d4(%eax)
  101ee1:	66 c7 80 d6 71 00 00 	movw   $0x8,0x71d6(%eax)
  101ee8:	08 00 
  101eea:	0f b6 90 d8 71 00 00 	movzbl 0x71d8(%eax),%edx
  101ef1:	83 e2 e0             	and    $0xffffffe0,%edx
  101ef4:	88 90 d8 71 00 00    	mov    %dl,0x71d8(%eax)
  101efa:	0f b6 90 d8 71 00 00 	movzbl 0x71d8(%eax),%edx
  101f01:	83 e2 1f             	and    $0x1f,%edx
  101f04:	88 90 d8 71 00 00    	mov    %dl,0x71d8(%eax)
  101f0a:	0f b6 90 d9 71 00 00 	movzbl 0x71d9(%eax),%edx
  101f11:	83 e2 f0             	and    $0xfffffff0,%edx
  101f14:	83 ca 0e             	or     $0xe,%edx
  101f17:	88 90 d9 71 00 00    	mov    %dl,0x71d9(%eax)
  101f1d:	0f b6 90 d9 71 00 00 	movzbl 0x71d9(%eax),%edx
  101f24:	83 e2 ef             	and    $0xffffffef,%edx
  101f27:	88 90 d9 71 00 00    	mov    %dl,0x71d9(%eax)
  101f2d:	0f b6 90 d9 71 00 00 	movzbl 0x71d9(%eax),%edx
  101f34:	83 e2 9f             	and    $0xffffff9f,%edx
  101f37:	88 90 d9 71 00 00    	mov    %dl,0x71d9(%eax)
  101f3d:	0f b6 90 d9 71 00 00 	movzbl 0x71d9(%eax),%edx
  101f44:	83 ca 80             	or     $0xffffff80,%edx
  101f47:	88 90 d9 71 00 00    	mov    %dl,0x71d9(%eax)
  101f4d:	c7 c2 f2 26 10 00    	mov    $0x1026f2,%edx
  101f53:	c1 ea 10             	shr    $0x10,%edx
  101f56:	66 89 90 da 71 00 00 	mov    %dx,0x71da(%eax)
  101f5d:	c7 c2 fc 26 10 00    	mov    $0x1026fc,%edx
  101f63:	66 89 90 dc 71 00 00 	mov    %dx,0x71dc(%eax)
  101f6a:	66 c7 80 de 71 00 00 	movw   $0x8,0x71de(%eax)
  101f71:	08 00 
  101f73:	0f b6 90 e0 71 00 00 	movzbl 0x71e0(%eax),%edx
  101f7a:	83 e2 e0             	and    $0xffffffe0,%edx
  101f7d:	88 90 e0 71 00 00    	mov    %dl,0x71e0(%eax)
  101f83:	0f b6 90 e0 71 00 00 	movzbl 0x71e0(%eax),%edx
  101f8a:	83 e2 1f             	and    $0x1f,%edx
  101f8d:	88 90 e0 71 00 00    	mov    %dl,0x71e0(%eax)
  101f93:	0f b6 90 e1 71 00 00 	movzbl 0x71e1(%eax),%edx
  101f9a:	83 e2 f0             	and    $0xfffffff0,%edx
  101f9d:	83 ca 0e             	or     $0xe,%edx
  101fa0:	88 90 e1 71 00 00    	mov    %dl,0x71e1(%eax)
  101fa6:	0f b6 90 e1 71 00 00 	movzbl 0x71e1(%eax),%edx
  101fad:	83 e2 ef             	and    $0xffffffef,%edx
  101fb0:	88 90 e1 71 00 00    	mov    %dl,0x71e1(%eax)
  101fb6:	0f b6 90 e1 71 00 00 	movzbl 0x71e1(%eax),%edx
  101fbd:	83 e2 9f             	and    $0xffffff9f,%edx
  101fc0:	88 90 e1 71 00 00    	mov    %dl,0x71e1(%eax)
  101fc6:	0f b6 90 e1 71 00 00 	movzbl 0x71e1(%eax),%edx
  101fcd:	83 ca 80             	or     $0xffffff80,%edx
  101fd0:	88 90 e1 71 00 00    	mov    %dl,0x71e1(%eax)
  101fd6:	c7 c2 fc 26 10 00    	mov    $0x1026fc,%edx
  101fdc:	c1 ea 10             	shr    $0x10,%edx
  101fdf:	66 89 90 e2 71 00 00 	mov    %dx,0x71e2(%eax)
  101fe6:	c7 c2 02 27 10 00    	mov    $0x102702,%edx
  101fec:	66 89 90 e4 71 00 00 	mov    %dx,0x71e4(%eax)
  101ff3:	66 c7 80 e6 71 00 00 	movw   $0x8,0x71e6(%eax)
  101ffa:	08 00 
  101ffc:	0f b6 90 e8 71 00 00 	movzbl 0x71e8(%eax),%edx
  102003:	83 e2 e0             	and    $0xffffffe0,%edx
  102006:	88 90 e8 71 00 00    	mov    %dl,0x71e8(%eax)
  10200c:	0f b6 90 e8 71 00 00 	movzbl 0x71e8(%eax),%edx
  102013:	83 e2 1f             	and    $0x1f,%edx
  102016:	88 90 e8 71 00 00    	mov    %dl,0x71e8(%eax)
  10201c:	0f b6 90 e9 71 00 00 	movzbl 0x71e9(%eax),%edx
  102023:	83 e2 f0             	and    $0xfffffff0,%edx
  102026:	83 ca 0e             	or     $0xe,%edx
  102029:	88 90 e9 71 00 00    	mov    %dl,0x71e9(%eax)
  10202f:	0f b6 90 e9 71 00 00 	movzbl 0x71e9(%eax),%edx
  102036:	83 e2 ef             	and    $0xffffffef,%edx
  102039:	88 90 e9 71 00 00    	mov    %dl,0x71e9(%eax)
  10203f:	0f b6 90 e9 71 00 00 	movzbl 0x71e9(%eax),%edx
  102046:	83 e2 9f             	and    $0xffffff9f,%edx
  102049:	88 90 e9 71 00 00    	mov    %dl,0x71e9(%eax)
  10204f:	0f b6 90 e9 71 00 00 	movzbl 0x71e9(%eax),%edx
  102056:	83 ca 80             	or     $0xffffff80,%edx
  102059:	88 90 e9 71 00 00    	mov    %dl,0x71e9(%eax)
  10205f:	c7 c2 02 27 10 00    	mov    $0x102702,%edx
  102065:	c1 ea 10             	shr    $0x10,%edx
  102068:	66 89 90 ea 71 00 00 	mov    %dx,0x71ea(%eax)
  10206f:	c7 c2 08 27 10 00    	mov    $0x102708,%edx
  102075:	66 89 90 ec 71 00 00 	mov    %dx,0x71ec(%eax)
  10207c:	66 c7 80 ee 71 00 00 	movw   $0x8,0x71ee(%eax)
  102083:	08 00 
  102085:	0f b6 90 f0 71 00 00 	movzbl 0x71f0(%eax),%edx
  10208c:	83 e2 e0             	and    $0xffffffe0,%edx
  10208f:	88 90 f0 71 00 00    	mov    %dl,0x71f0(%eax)
  102095:	0f b6 90 f0 71 00 00 	movzbl 0x71f0(%eax),%edx
  10209c:	83 e2 1f             	and    $0x1f,%edx
  10209f:	88 90 f0 71 00 00    	mov    %dl,0x71f0(%eax)
  1020a5:	0f b6 90 f1 71 00 00 	movzbl 0x71f1(%eax),%edx
  1020ac:	83 e2 f0             	and    $0xfffffff0,%edx
  1020af:	83 ca 0e             	or     $0xe,%edx
  1020b2:	88 90 f1 71 00 00    	mov    %dl,0x71f1(%eax)
  1020b8:	0f b6 90 f1 71 00 00 	movzbl 0x71f1(%eax),%edx
  1020bf:	83 e2 ef             	and    $0xffffffef,%edx
  1020c2:	88 90 f1 71 00 00    	mov    %dl,0x71f1(%eax)
  1020c8:	0f b6 90 f1 71 00 00 	movzbl 0x71f1(%eax),%edx
  1020cf:	83 e2 9f             	and    $0xffffff9f,%edx
  1020d2:	88 90 f1 71 00 00    	mov    %dl,0x71f1(%eax)
  1020d8:	0f b6 90 f1 71 00 00 	movzbl 0x71f1(%eax),%edx
  1020df:	83 ca 80             	or     $0xffffff80,%edx
  1020e2:	88 90 f1 71 00 00    	mov    %dl,0x71f1(%eax)
  1020e8:	c7 c2 08 27 10 00    	mov    $0x102708,%edx
  1020ee:	c1 ea 10             	shr    $0x10,%edx
  1020f1:	66 89 90 f2 71 00 00 	mov    %dx,0x71f2(%eax)
  1020f8:	c7 c2 0e 27 10 00    	mov    $0x10270e,%edx
  1020fe:	66 89 90 f4 71 00 00 	mov    %dx,0x71f4(%eax)
  102105:	66 c7 80 f6 71 00 00 	movw   $0x8,0x71f6(%eax)
  10210c:	08 00 
  10210e:	0f b6 90 f8 71 00 00 	movzbl 0x71f8(%eax),%edx
  102115:	83 e2 e0             	and    $0xffffffe0,%edx
  102118:	88 90 f8 71 00 00    	mov    %dl,0x71f8(%eax)
  10211e:	0f b6 90 f8 71 00 00 	movzbl 0x71f8(%eax),%edx
  102125:	83 e2 1f             	and    $0x1f,%edx
  102128:	88 90 f8 71 00 00    	mov    %dl,0x71f8(%eax)
  10212e:	0f b6 90 f9 71 00 00 	movzbl 0x71f9(%eax),%edx
  102135:	83 e2 f0             	and    $0xfffffff0,%edx
  102138:	83 ca 0e             	or     $0xe,%edx
  10213b:	88 90 f9 71 00 00    	mov    %dl,0x71f9(%eax)
  102141:	0f b6 90 f9 71 00 00 	movzbl 0x71f9(%eax),%edx
  102148:	83 e2 ef             	and    $0xffffffef,%edx
  10214b:	88 90 f9 71 00 00    	mov    %dl,0x71f9(%eax)
  102151:	0f b6 90 f9 71 00 00 	movzbl 0x71f9(%eax),%edx
  102158:	83 e2 9f             	and    $0xffffff9f,%edx
  10215b:	88 90 f9 71 00 00    	mov    %dl,0x71f9(%eax)
  102161:	0f b6 90 f9 71 00 00 	movzbl 0x71f9(%eax),%edx
  102168:	83 ca 80             	or     $0xffffff80,%edx
  10216b:	88 90 f9 71 00 00    	mov    %dl,0x71f9(%eax)
  102171:	c7 c2 0e 27 10 00    	mov    $0x10270e,%edx
  102177:	c1 ea 10             	shr    $0x10,%edx
  10217a:	66 89 90 fa 71 00 00 	mov    %dx,0x71fa(%eax)
  102181:	c7 c2 14 27 10 00    	mov    $0x102714,%edx
  102187:	66 89 90 fc 71 00 00 	mov    %dx,0x71fc(%eax)
  10218e:	66 c7 80 fe 71 00 00 	movw   $0x8,0x71fe(%eax)
  102195:	08 00 
  102197:	0f b6 90 00 72 00 00 	movzbl 0x7200(%eax),%edx
  10219e:	83 e2 e0             	and    $0xffffffe0,%edx
  1021a1:	88 90 00 72 00 00    	mov    %dl,0x7200(%eax)
  1021a7:	0f b6 90 00 72 00 00 	movzbl 0x7200(%eax),%edx
  1021ae:	83 e2 1f             	and    $0x1f,%edx
  1021b1:	88 90 00 72 00 00    	mov    %dl,0x7200(%eax)
  1021b7:	0f b6 90 01 72 00 00 	movzbl 0x7201(%eax),%edx
  1021be:	83 e2 f0             	and    $0xfffffff0,%edx
  1021c1:	83 ca 0e             	or     $0xe,%edx
  1021c4:	88 90 01 72 00 00    	mov    %dl,0x7201(%eax)
  1021ca:	0f b6 90 01 72 00 00 	movzbl 0x7201(%eax),%edx
  1021d1:	83 e2 ef             	and    $0xffffffef,%edx
  1021d4:	88 90 01 72 00 00    	mov    %dl,0x7201(%eax)
  1021da:	0f b6 90 01 72 00 00 	movzbl 0x7201(%eax),%edx
  1021e1:	83 e2 9f             	and    $0xffffff9f,%edx
  1021e4:	88 90 01 72 00 00    	mov    %dl,0x7201(%eax)
  1021ea:	0f b6 90 01 72 00 00 	movzbl 0x7201(%eax),%edx
  1021f1:	83 ca 80             	or     $0xffffff80,%edx
  1021f4:	88 90 01 72 00 00    	mov    %dl,0x7201(%eax)
  1021fa:	c7 c2 14 27 10 00    	mov    $0x102714,%edx
  102200:	c1 ea 10             	shr    $0x10,%edx
  102203:	66 89 90 02 72 00 00 	mov    %dx,0x7202(%eax)
  10220a:	c7 c2 1a 27 10 00    	mov    $0x10271a,%edx
  102210:	66 89 90 04 72 00 00 	mov    %dx,0x7204(%eax)
  102217:	66 c7 80 06 72 00 00 	movw   $0x8,0x7206(%eax)
  10221e:	08 00 
  102220:	0f b6 90 08 72 00 00 	movzbl 0x7208(%eax),%edx
  102227:	83 e2 e0             	and    $0xffffffe0,%edx
  10222a:	88 90 08 72 00 00    	mov    %dl,0x7208(%eax)
  102230:	0f b6 90 08 72 00 00 	movzbl 0x7208(%eax),%edx
  102237:	83 e2 1f             	and    $0x1f,%edx
  10223a:	88 90 08 72 00 00    	mov    %dl,0x7208(%eax)
  102240:	0f b6 90 09 72 00 00 	movzbl 0x7209(%eax),%edx
  102247:	83 e2 f0             	and    $0xfffffff0,%edx
  10224a:	83 ca 0e             	or     $0xe,%edx
  10224d:	88 90 09 72 00 00    	mov    %dl,0x7209(%eax)
  102253:	0f b6 90 09 72 00 00 	movzbl 0x7209(%eax),%edx
  10225a:	83 e2 ef             	and    $0xffffffef,%edx
  10225d:	88 90 09 72 00 00    	mov    %dl,0x7209(%eax)
  102263:	0f b6 90 09 72 00 00 	movzbl 0x7209(%eax),%edx
  10226a:	83 e2 9f             	and    $0xffffff9f,%edx
  10226d:	88 90 09 72 00 00    	mov    %dl,0x7209(%eax)
  102273:	0f b6 90 09 72 00 00 	movzbl 0x7209(%eax),%edx
  10227a:	83 ca 80             	or     $0xffffff80,%edx
  10227d:	88 90 09 72 00 00    	mov    %dl,0x7209(%eax)
  102283:	c7 c2 1a 27 10 00    	mov    $0x10271a,%edx
  102289:	c1 ea 10             	shr    $0x10,%edx
  10228c:	66 89 90 0a 72 00 00 	mov    %dx,0x720a(%eax)
  102293:	c7 c2 20 27 10 00    	mov    $0x102720,%edx
  102299:	66 89 90 0c 72 00 00 	mov    %dx,0x720c(%eax)
  1022a0:	66 c7 80 0e 72 00 00 	movw   $0x8,0x720e(%eax)
  1022a7:	08 00 
  1022a9:	0f b6 90 10 72 00 00 	movzbl 0x7210(%eax),%edx
  1022b0:	83 e2 e0             	and    $0xffffffe0,%edx
  1022b3:	88 90 10 72 00 00    	mov    %dl,0x7210(%eax)
  1022b9:	0f b6 90 10 72 00 00 	movzbl 0x7210(%eax),%edx
  1022c0:	83 e2 1f             	and    $0x1f,%edx
  1022c3:	88 90 10 72 00 00    	mov    %dl,0x7210(%eax)
  1022c9:	0f b6 90 11 72 00 00 	movzbl 0x7211(%eax),%edx
  1022d0:	83 e2 f0             	and    $0xfffffff0,%edx
  1022d3:	83 ca 0e             	or     $0xe,%edx
  1022d6:	88 90 11 72 00 00    	mov    %dl,0x7211(%eax)
  1022dc:	0f b6 90 11 72 00 00 	movzbl 0x7211(%eax),%edx
  1022e3:	83 e2 ef             	and    $0xffffffef,%edx
  1022e6:	88 90 11 72 00 00    	mov    %dl,0x7211(%eax)
  1022ec:	0f b6 90 11 72 00 00 	movzbl 0x7211(%eax),%edx
  1022f3:	83 e2 9f             	and    $0xffffff9f,%edx
  1022f6:	88 90 11 72 00 00    	mov    %dl,0x7211(%eax)
  1022fc:	0f b6 90 11 72 00 00 	movzbl 0x7211(%eax),%edx
  102303:	83 ca 80             	or     $0xffffff80,%edx
  102306:	88 90 11 72 00 00    	mov    %dl,0x7211(%eax)
  10230c:	c7 c2 20 27 10 00    	mov    $0x102720,%edx
  102312:	c1 ea 10             	shr    $0x10,%edx
  102315:	66 89 90 12 72 00 00 	mov    %dx,0x7212(%eax)
  10231c:	c7 c2 26 27 10 00    	mov    $0x102726,%edx
  102322:	66 89 90 14 72 00 00 	mov    %dx,0x7214(%eax)
  102329:	66 c7 80 16 72 00 00 	movw   $0x8,0x7216(%eax)
  102330:	08 00 
  102332:	0f b6 90 18 72 00 00 	movzbl 0x7218(%eax),%edx
  102339:	83 e2 e0             	and    $0xffffffe0,%edx
  10233c:	88 90 18 72 00 00    	mov    %dl,0x7218(%eax)
  102342:	0f b6 90 18 72 00 00 	movzbl 0x7218(%eax),%edx
  102349:	83 e2 1f             	and    $0x1f,%edx
  10234c:	88 90 18 72 00 00    	mov    %dl,0x7218(%eax)
  102352:	0f b6 90 19 72 00 00 	movzbl 0x7219(%eax),%edx
  102359:	83 e2 f0             	and    $0xfffffff0,%edx
  10235c:	83 ca 0e             	or     $0xe,%edx
  10235f:	88 90 19 72 00 00    	mov    %dl,0x7219(%eax)
  102365:	0f b6 90 19 72 00 00 	movzbl 0x7219(%eax),%edx
  10236c:	83 e2 ef             	and    $0xffffffef,%edx
  10236f:	88 90 19 72 00 00    	mov    %dl,0x7219(%eax)
  102375:	0f b6 90 19 72 00 00 	movzbl 0x7219(%eax),%edx
  10237c:	83 e2 9f             	and    $0xffffff9f,%edx
  10237f:	88 90 19 72 00 00    	mov    %dl,0x7219(%eax)
  102385:	0f b6 90 19 72 00 00 	movzbl 0x7219(%eax),%edx
  10238c:	83 ca 80             	or     $0xffffff80,%edx
  10238f:	88 90 19 72 00 00    	mov    %dl,0x7219(%eax)
  102395:	c7 c2 26 27 10 00    	mov    $0x102726,%edx
  10239b:	c1 ea 10             	shr    $0x10,%edx
  10239e:	66 89 90 1a 72 00 00 	mov    %dx,0x721a(%eax)
  1023a5:	c7 c2 2c 27 10 00    	mov    $0x10272c,%edx
  1023ab:	66 89 90 1c 72 00 00 	mov    %dx,0x721c(%eax)
  1023b2:	66 c7 80 1e 72 00 00 	movw   $0x8,0x721e(%eax)
  1023b9:	08 00 
  1023bb:	0f b6 90 20 72 00 00 	movzbl 0x7220(%eax),%edx
  1023c2:	83 e2 e0             	and    $0xffffffe0,%edx
  1023c5:	88 90 20 72 00 00    	mov    %dl,0x7220(%eax)
  1023cb:	0f b6 90 20 72 00 00 	movzbl 0x7220(%eax),%edx
  1023d2:	83 e2 1f             	and    $0x1f,%edx
  1023d5:	88 90 20 72 00 00    	mov    %dl,0x7220(%eax)
  1023db:	0f b6 90 21 72 00 00 	movzbl 0x7221(%eax),%edx
  1023e2:	83 e2 f0             	and    $0xfffffff0,%edx
  1023e5:	83 ca 0e             	or     $0xe,%edx
  1023e8:	88 90 21 72 00 00    	mov    %dl,0x7221(%eax)
  1023ee:	0f b6 90 21 72 00 00 	movzbl 0x7221(%eax),%edx
  1023f5:	83 e2 ef             	and    $0xffffffef,%edx
  1023f8:	88 90 21 72 00 00    	mov    %dl,0x7221(%eax)
  1023fe:	0f b6 90 21 72 00 00 	movzbl 0x7221(%eax),%edx
  102405:	83 e2 9f             	and    $0xffffff9f,%edx
  102408:	88 90 21 72 00 00    	mov    %dl,0x7221(%eax)
  10240e:	0f b6 90 21 72 00 00 	movzbl 0x7221(%eax),%edx
  102415:	83 ca 80             	or     $0xffffff80,%edx
  102418:	88 90 21 72 00 00    	mov    %dl,0x7221(%eax)
  10241e:	c7 c2 2c 27 10 00    	mov    $0x10272c,%edx
  102424:	c1 ea 10             	shr    $0x10,%edx
  102427:	66 89 90 22 72 00 00 	mov    %dx,0x7222(%eax)
  10242e:	c7 c2 32 27 10 00    	mov    $0x102732,%edx
  102434:	66 89 90 24 72 00 00 	mov    %dx,0x7224(%eax)
  10243b:	66 c7 80 26 72 00 00 	movw   $0x8,0x7226(%eax)
  102442:	08 00 
  102444:	0f b6 90 28 72 00 00 	movzbl 0x7228(%eax),%edx
  10244b:	83 e2 e0             	and    $0xffffffe0,%edx
  10244e:	88 90 28 72 00 00    	mov    %dl,0x7228(%eax)
  102454:	0f b6 90 28 72 00 00 	movzbl 0x7228(%eax),%edx
  10245b:	83 e2 1f             	and    $0x1f,%edx
  10245e:	88 90 28 72 00 00    	mov    %dl,0x7228(%eax)
  102464:	0f b6 90 29 72 00 00 	movzbl 0x7229(%eax),%edx
  10246b:	83 e2 f0             	and    $0xfffffff0,%edx
  10246e:	83 ca 0e             	or     $0xe,%edx
  102471:	88 90 29 72 00 00    	mov    %dl,0x7229(%eax)
  102477:	0f b6 90 29 72 00 00 	movzbl 0x7229(%eax),%edx
  10247e:	83 e2 ef             	and    $0xffffffef,%edx
  102481:	88 90 29 72 00 00    	mov    %dl,0x7229(%eax)
  102487:	0f b6 90 29 72 00 00 	movzbl 0x7229(%eax),%edx
  10248e:	83 e2 9f             	and    $0xffffff9f,%edx
  102491:	88 90 29 72 00 00    	mov    %dl,0x7229(%eax)
  102497:	0f b6 90 29 72 00 00 	movzbl 0x7229(%eax),%edx
  10249e:	83 ca 80             	or     $0xffffff80,%edx
  1024a1:	88 90 29 72 00 00    	mov    %dl,0x7229(%eax)
  1024a7:	c7 c2 32 27 10 00    	mov    $0x102732,%edx
  1024ad:	c1 ea 10             	shr    $0x10,%edx
  1024b0:	66 89 90 2a 72 00 00 	mov    %dx,0x722a(%eax)
  1024b7:	c7 c2 68 27 10 00    	mov    $0x102768,%edx
  1024bd:	66 89 90 2c 72 00 00 	mov    %dx,0x722c(%eax)
  1024c4:	66 c7 80 2e 72 00 00 	movw   $0x8,0x722e(%eax)
  1024cb:	08 00 
  1024cd:	0f b6 90 30 72 00 00 	movzbl 0x7230(%eax),%edx
  1024d4:	83 e2 e0             	and    $0xffffffe0,%edx
  1024d7:	88 90 30 72 00 00    	mov    %dl,0x7230(%eax)
  1024dd:	0f b6 90 30 72 00 00 	movzbl 0x7230(%eax),%edx
  1024e4:	83 e2 1f             	and    $0x1f,%edx
  1024e7:	88 90 30 72 00 00    	mov    %dl,0x7230(%eax)
  1024ed:	0f b6 90 31 72 00 00 	movzbl 0x7231(%eax),%edx
  1024f4:	83 e2 f0             	and    $0xfffffff0,%edx
  1024f7:	83 ca 0e             	or     $0xe,%edx
  1024fa:	88 90 31 72 00 00    	mov    %dl,0x7231(%eax)
  102500:	0f b6 90 31 72 00 00 	movzbl 0x7231(%eax),%edx
  102507:	83 e2 ef             	and    $0xffffffef,%edx
  10250a:	88 90 31 72 00 00    	mov    %dl,0x7231(%eax)
  102510:	0f b6 90 31 72 00 00 	movzbl 0x7231(%eax),%edx
  102517:	83 ca 60             	or     $0x60,%edx
  10251a:	88 90 31 72 00 00    	mov    %dl,0x7231(%eax)
  102520:	0f b6 90 31 72 00 00 	movzbl 0x7231(%eax),%edx
  102527:	83 ca 80             	or     $0xffffff80,%edx
  10252a:	88 90 31 72 00 00    	mov    %dl,0x7231(%eax)
  102530:	c7 c2 68 27 10 00    	mov    $0x102768,%edx
  102536:	c1 ea 10             	shr    $0x10,%edx
  102539:	66 89 90 32 72 00 00 	mov    %dx,0x7232(%eax)
  102540:	c7 c2 6e 27 10 00    	mov    $0x10276e,%edx
  102546:	66 89 90 9c 78 00 00 	mov    %dx,0x789c(%eax)
  10254d:	66 c7 80 9e 78 00 00 	movw   $0x8,0x789e(%eax)
  102554:	08 00 
  102556:	0f b6 90 a0 78 00 00 	movzbl 0x78a0(%eax),%edx
  10255d:	83 e2 e0             	and    $0xffffffe0,%edx
  102560:	88 90 a0 78 00 00    	mov    %dl,0x78a0(%eax)
  102566:	0f b6 90 a0 78 00 00 	movzbl 0x78a0(%eax),%edx
  10256d:	83 e2 1f             	and    $0x1f,%edx
  102570:	88 90 a0 78 00 00    	mov    %dl,0x78a0(%eax)
  102576:	0f b6 90 a1 78 00 00 	movzbl 0x78a1(%eax),%edx
  10257d:	83 e2 f0             	and    $0xfffffff0,%edx
  102580:	83 ca 0e             	or     $0xe,%edx
  102583:	88 90 a1 78 00 00    	mov    %dl,0x78a1(%eax)
  102589:	0f b6 90 a1 78 00 00 	movzbl 0x78a1(%eax),%edx
  102590:	83 e2 ef             	and    $0xffffffef,%edx
  102593:	88 90 a1 78 00 00    	mov    %dl,0x78a1(%eax)
  102599:	0f b6 90 a1 78 00 00 	movzbl 0x78a1(%eax),%edx
  1025a0:	83 e2 9f             	and    $0xffffff9f,%edx
  1025a3:	88 90 a1 78 00 00    	mov    %dl,0x78a1(%eax)
  1025a9:	0f b6 90 a1 78 00 00 	movzbl 0x78a1(%eax),%edx
  1025b0:	83 ca 80             	or     $0xffffff80,%edx
  1025b3:	88 90 a1 78 00 00    	mov    %dl,0x78a1(%eax)
  1025b9:	c7 c2 6e 27 10 00    	mov    $0x10276e,%edx
  1025bf:	c1 ea 10             	shr    $0x10,%edx
  1025c2:	66 89 90 a2 78 00 00 	mov    %dx,0x78a2(%eax)
  1025c9:	0f 01 98 1c 05 00 00 	lidtl  0x51c(%eax)
  1025d0:	90                   	nop
  1025d1:	c9                   	leave
  1025d2:	c3                   	ret

001025d3 <intr_init>:
  1025d3:	55                   	push   %ebp
  1025d4:	89 e5                	mov    %esp,%ebp
  1025d6:	53                   	push   %ebx
  1025d7:	e8 e4 dd ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  1025dc:	81 c3 18 aa 00 00    	add    $0xaa18,%ebx
  1025e2:	0f b6 83 ac 78 00 00 	movzbl 0x78ac(%ebx),%eax
  1025e9:	3c 01                	cmp    $0x1,%al
  1025eb:	74 0e                	je     1025fb <intr_init+0x28>
  1025ed:	e8 36 ec ff ff       	call   101228 <intr_init_idt>
  1025f2:	c6 83 ac 78 00 00 01 	movb   $0x1,0x78ac(%ebx)
  1025f9:	eb 01                	jmp    1025fc <intr_init+0x29>
  1025fb:	90                   	nop
  1025fc:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1025ff:	c9                   	leave
  102600:	c3                   	ret
  102601:	66 90                	xchg   %ax,%ax
  102603:	66 90                	xchg   %ax,%ax
  102605:	66 90                	xchg   %ax,%ax
  102607:	66 90                	xchg   %ax,%ax
  102609:	66 90                	xchg   %ax,%ax
  10260b:	66 90                	xchg   %ax,%ax
  10260d:	66 90                	xchg   %ax,%ax
  10260f:	90                   	nop

00102610 <Xdivide>:
  102610:	6a 00                	push   $0x0
  102612:	6a 00                	push   $0x0
  102614:	e9 67 01 00 00       	jmp    102780 <_alltraps>
  102619:	90                   	nop

0010261a <Xdebug>:
  10261a:	6a 00                	push   $0x0
  10261c:	6a 01                	push   $0x1
  10261e:	e9 5d 01 00 00       	jmp    102780 <_alltraps>
  102623:	90                   	nop

00102624 <Xnmi>:
  102624:	6a 00                	push   $0x0
  102626:	6a 02                	push   $0x2
  102628:	e9 53 01 00 00       	jmp    102780 <_alltraps>
  10262d:	90                   	nop

0010262e <Xbrkpt>:
  10262e:	6a 00                	push   $0x0
  102630:	6a 03                	push   $0x3
  102632:	e9 49 01 00 00       	jmp    102780 <_alltraps>
  102637:	90                   	nop

00102638 <Xoflow>:
  102638:	6a 00                	push   $0x0
  10263a:	6a 04                	push   $0x4
  10263c:	e9 3f 01 00 00       	jmp    102780 <_alltraps>
  102641:	90                   	nop

00102642 <Xbound>:
  102642:	6a 00                	push   $0x0
  102644:	6a 05                	push   $0x5
  102646:	e9 35 01 00 00       	jmp    102780 <_alltraps>
  10264b:	90                   	nop

0010264c <Xillop>:
  10264c:	6a 00                	push   $0x0
  10264e:	6a 06                	push   $0x6
  102650:	e9 2b 01 00 00       	jmp    102780 <_alltraps>
  102655:	90                   	nop

00102656 <Xdevice>:
  102656:	6a 00                	push   $0x0
  102658:	6a 07                	push   $0x7
  10265a:	e9 21 01 00 00       	jmp    102780 <_alltraps>
  10265f:	90                   	nop

00102660 <Xdblflt>:
  102660:	6a 08                	push   $0x8
  102662:	e9 19 01 00 00       	jmp    102780 <_alltraps>
  102667:	90                   	nop

00102668 <Xcoproc>:
  102668:	6a 00                	push   $0x0
  10266a:	6a 09                	push   $0x9
  10266c:	e9 0f 01 00 00       	jmp    102780 <_alltraps>
  102671:	90                   	nop

00102672 <Xtss>:
  102672:	6a 0a                	push   $0xa
  102674:	e9 07 01 00 00       	jmp    102780 <_alltraps>
  102679:	90                   	nop

0010267a <Xsegnp>:
  10267a:	6a 0b                	push   $0xb
  10267c:	e9 ff 00 00 00       	jmp    102780 <_alltraps>
  102681:	90                   	nop

00102682 <Xstack>:
  102682:	6a 0c                	push   $0xc
  102684:	e9 f7 00 00 00       	jmp    102780 <_alltraps>
  102689:	90                   	nop

0010268a <Xgpflt>:
  10268a:	6a 0d                	push   $0xd
  10268c:	e9 ef 00 00 00       	jmp    102780 <_alltraps>
  102691:	90                   	nop

00102692 <Xpgflt>:
  102692:	6a 0e                	push   $0xe
  102694:	e9 e7 00 00 00       	jmp    102780 <_alltraps>
  102699:	90                   	nop

0010269a <Xres>:
  10269a:	6a 00                	push   $0x0
  10269c:	6a 0f                	push   $0xf
  10269e:	e9 dd 00 00 00       	jmp    102780 <_alltraps>
  1026a3:	90                   	nop

001026a4 <Xfperr>:
  1026a4:	6a 00                	push   $0x0
  1026a6:	6a 10                	push   $0x10
  1026a8:	e9 d3 00 00 00       	jmp    102780 <_alltraps>
  1026ad:	90                   	nop

001026ae <Xalign>:
  1026ae:	6a 11                	push   $0x11
  1026b0:	e9 cb 00 00 00       	jmp    102780 <_alltraps>
  1026b5:	90                   	nop

001026b6 <Xmchk>:
  1026b6:	6a 00                	push   $0x0
  1026b8:	6a 12                	push   $0x12
  1026ba:	e9 c1 00 00 00       	jmp    102780 <_alltraps>
  1026bf:	90                   	nop

001026c0 <Xirq_timer>:
  1026c0:	6a 00                	push   $0x0
  1026c2:	6a 20                	push   $0x20
  1026c4:	e9 b7 00 00 00       	jmp    102780 <_alltraps>
  1026c9:	90                   	nop

001026ca <Xirq_kbd>:
  1026ca:	6a 00                	push   $0x0
  1026cc:	6a 21                	push   $0x21
  1026ce:	e9 ad 00 00 00       	jmp    102780 <_alltraps>
  1026d3:	90                   	nop

001026d4 <Xirq_slave>:
  1026d4:	6a 00                	push   $0x0
  1026d6:	6a 22                	push   $0x22
  1026d8:	e9 a3 00 00 00       	jmp    102780 <_alltraps>
  1026dd:	90                   	nop

001026de <Xirq_serial2>:
  1026de:	6a 00                	push   $0x0
  1026e0:	6a 23                	push   $0x23
  1026e2:	e9 99 00 00 00       	jmp    102780 <_alltraps>
  1026e7:	90                   	nop

001026e8 <Xirq_serial1>:
  1026e8:	6a 00                	push   $0x0
  1026ea:	6a 24                	push   $0x24
  1026ec:	e9 8f 00 00 00       	jmp    102780 <_alltraps>
  1026f1:	90                   	nop

001026f2 <Xirq_lpt>:
  1026f2:	6a 00                	push   $0x0
  1026f4:	6a 25                	push   $0x25
  1026f6:	e9 85 00 00 00       	jmp    102780 <_alltraps>
  1026fb:	90                   	nop

001026fc <Xirq_floppy>:
  1026fc:	6a 00                	push   $0x0
  1026fe:	6a 26                	push   $0x26
  102700:	eb 7e                	jmp    102780 <_alltraps>

00102702 <Xirq_spurious>:
  102702:	6a 00                	push   $0x0
  102704:	6a 27                	push   $0x27
  102706:	eb 78                	jmp    102780 <_alltraps>

00102708 <Xirq_rtc>:
  102708:	6a 00                	push   $0x0
  10270a:	6a 28                	push   $0x28
  10270c:	eb 72                	jmp    102780 <_alltraps>

0010270e <Xirq9>:
  10270e:	6a 00                	push   $0x0
  102710:	6a 29                	push   $0x29
  102712:	eb 6c                	jmp    102780 <_alltraps>

00102714 <Xirq10>:
  102714:	6a 00                	push   $0x0
  102716:	6a 2a                	push   $0x2a
  102718:	eb 66                	jmp    102780 <_alltraps>

0010271a <Xirq11>:
  10271a:	6a 00                	push   $0x0
  10271c:	6a 2b                	push   $0x2b
  10271e:	eb 60                	jmp    102780 <_alltraps>

00102720 <Xirq_mouse>:
  102720:	6a 00                	push   $0x0
  102722:	6a 2c                	push   $0x2c
  102724:	eb 5a                	jmp    102780 <_alltraps>

00102726 <Xirq_coproc>:
  102726:	6a 00                	push   $0x0
  102728:	6a 2d                	push   $0x2d
  10272a:	eb 54                	jmp    102780 <_alltraps>

0010272c <Xirq_ide1>:
  10272c:	6a 00                	push   $0x0
  10272e:	6a 2e                	push   $0x2e
  102730:	eb 4e                	jmp    102780 <_alltraps>

00102732 <Xirq_ide2>:
  102732:	6a 00                	push   $0x0
  102734:	6a 2f                	push   $0x2f
  102736:	eb 48                	jmp    102780 <_alltraps>

00102738 <Xirq_ehci1>:
  102738:	6a 00                	push   $0x0
  10273a:	6a 30                	push   $0x30
  10273c:	eb 42                	jmp    102780 <_alltraps>

0010273e <Xirq17>:
  10273e:	6a 00                	push   $0x0
  102740:	6a 31                	push   $0x31
  102742:	eb 3c                	jmp    102780 <_alltraps>

00102744 <Xirq18>:
  102744:	6a 00                	push   $0x0
  102746:	6a 32                	push   $0x32
  102748:	eb 36                	jmp    102780 <_alltraps>

0010274a <Xirq19>:
  10274a:	6a 00                	push   $0x0
  10274c:	6a 33                	push   $0x33
  10274e:	eb 30                	jmp    102780 <_alltraps>

00102750 <Xirq20>:
  102750:	6a 00                	push   $0x0
  102752:	6a 34                	push   $0x34
  102754:	eb 2a                	jmp    102780 <_alltraps>

00102756 <Xirq21>:
  102756:	6a 00                	push   $0x0
  102758:	6a 35                	push   $0x35
  10275a:	eb 24                	jmp    102780 <_alltraps>

0010275c <Xirq22>:
  10275c:	6a 00                	push   $0x0
  10275e:	6a 36                	push   $0x36
  102760:	eb 1e                	jmp    102780 <_alltraps>

00102762 <Xirq_ehci2>:
  102762:	6a 00                	push   $0x0
  102764:	6a 37                	push   $0x37
  102766:	eb 18                	jmp    102780 <_alltraps>

00102768 <Xsyscall>:
  102768:	6a 00                	push   $0x0
  10276a:	6a 30                	push   $0x30
  10276c:	eb 12                	jmp    102780 <_alltraps>

0010276e <Xdefault>:
  10276e:	68 fe 00 00 00       	push   $0xfe
  102773:	eb 0b                	jmp    102780 <_alltraps>
  102775:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10277c:	00 
  10277d:	8d 76 00             	lea    0x0(%esi),%esi

00102780 <_alltraps>:
  102780:	fa                   	cli
  102781:	1e                   	push   %ds
  102782:	06                   	push   %es
  102783:	60                   	pusha
  102784:	b8 10 00 00 00       	mov    $0x10,%eax
  102789:	8e d8                	mov    %eax,%ds
  10278b:	8e c0                	mov    %eax,%es
  10278d:	54                   	push   %esp
  10278e:	e8 69 21 00 00       	call   1048fc <trap>
  102793:	f4                   	hlt
  102794:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10279b:	00 
  10279c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

001027a0 <trap_return>:
  1027a0:	8b 64 24 04          	mov    0x4(%esp),%esp
  1027a4:	61                   	popa
  1027a5:	07                   	pop    %es
  1027a6:	1f                   	pop    %ds
  1027a7:	83 c4 08             	add    $0x8,%esp
  1027aa:	c3                   	ret

001027ab <memset>:
  1027ab:	55                   	push   %ebp
  1027ac:	89 e5                	mov    %esp,%ebp
  1027ae:	57                   	push   %edi
  1027af:	e8 04 dc ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  1027b4:	05 40 a8 00 00       	add    $0xa840,%eax
  1027b9:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
  1027bd:	75 05                	jne    1027c4 <memset+0x19>
  1027bf:	8b 45 08             	mov    0x8(%ebp),%eax
  1027c2:	eb 5c                	jmp    102820 <memset+0x75>
  1027c4:	8b 45 08             	mov    0x8(%ebp),%eax
  1027c7:	83 e0 03             	and    $0x3,%eax
  1027ca:	85 c0                	test   %eax,%eax
  1027cc:	75 41                	jne    10280f <memset+0x64>
  1027ce:	8b 45 10             	mov    0x10(%ebp),%eax
  1027d1:	83 e0 03             	and    $0x3,%eax
  1027d4:	85 c0                	test   %eax,%eax
  1027d6:	75 37                	jne    10280f <memset+0x64>
  1027d8:	81 65 0c ff 00 00 00 	andl   $0xff,0xc(%ebp)
  1027df:	8b 45 0c             	mov    0xc(%ebp),%eax
  1027e2:	c1 e0 18             	shl    $0x18,%eax
  1027e5:	89 c2                	mov    %eax,%edx
  1027e7:	8b 45 0c             	mov    0xc(%ebp),%eax
  1027ea:	c1 e0 10             	shl    $0x10,%eax
  1027ed:	09 c2                	or     %eax,%edx
  1027ef:	8b 45 0c             	mov    0xc(%ebp),%eax
  1027f2:	c1 e0 08             	shl    $0x8,%eax
  1027f5:	09 d0                	or     %edx,%eax
  1027f7:	09 45 0c             	or     %eax,0xc(%ebp)
  1027fa:	8b 45 10             	mov    0x10(%ebp),%eax
  1027fd:	c1 e8 02             	shr    $0x2,%eax
  102800:	89 c1                	mov    %eax,%ecx
  102802:	8b 55 08             	mov    0x8(%ebp),%edx
  102805:	8b 45 0c             	mov    0xc(%ebp),%eax
  102808:	89 d7                	mov    %edx,%edi
  10280a:	fc                   	cld
  10280b:	f3 ab                	rep stos %eax,%es:(%edi)
  10280d:	eb 0e                	jmp    10281d <memset+0x72>
  10280f:	8b 55 08             	mov    0x8(%ebp),%edx
  102812:	8b 45 0c             	mov    0xc(%ebp),%eax
  102815:	8b 4d 10             	mov    0x10(%ebp),%ecx
  102818:	89 d7                	mov    %edx,%edi
  10281a:	fc                   	cld
  10281b:	f3 aa                	rep stos %al,%es:(%edi)
  10281d:	8b 45 08             	mov    0x8(%ebp),%eax
  102820:	8b 7d fc             	mov    -0x4(%ebp),%edi
  102823:	c9                   	leave
  102824:	c3                   	ret

00102825 <memmove>:
  102825:	55                   	push   %ebp
  102826:	89 e5                	mov    %esp,%ebp
  102828:	57                   	push   %edi
  102829:	56                   	push   %esi
  10282a:	53                   	push   %ebx
  10282b:	83 ec 10             	sub    $0x10,%esp
  10282e:	e8 85 db ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  102833:	05 c1 a7 00 00       	add    $0xa7c1,%eax
  102838:	8b 45 0c             	mov    0xc(%ebp),%eax
  10283b:	89 45 f0             	mov    %eax,-0x10(%ebp)
  10283e:	8b 45 08             	mov    0x8(%ebp),%eax
  102841:	89 45 ec             	mov    %eax,-0x14(%ebp)
  102844:	8b 45 f0             	mov    -0x10(%ebp),%eax
  102847:	3b 45 ec             	cmp    -0x14(%ebp),%eax
  10284a:	73 6d                	jae    1028b9 <memmove+0x94>
  10284c:	8b 55 f0             	mov    -0x10(%ebp),%edx
  10284f:	8b 45 10             	mov    0x10(%ebp),%eax
  102852:	01 d0                	add    %edx,%eax
  102854:	39 45 ec             	cmp    %eax,-0x14(%ebp)
  102857:	73 60                	jae    1028b9 <memmove+0x94>
  102859:	8b 45 10             	mov    0x10(%ebp),%eax
  10285c:	01 45 f0             	add    %eax,-0x10(%ebp)
  10285f:	8b 45 10             	mov    0x10(%ebp),%eax
  102862:	01 45 ec             	add    %eax,-0x14(%ebp)
  102865:	8b 45 f0             	mov    -0x10(%ebp),%eax
  102868:	83 e0 03             	and    $0x3,%eax
  10286b:	85 c0                	test   %eax,%eax
  10286d:	75 2f                	jne    10289e <memmove+0x79>
  10286f:	8b 45 ec             	mov    -0x14(%ebp),%eax
  102872:	83 e0 03             	and    $0x3,%eax
  102875:	85 c0                	test   %eax,%eax
  102877:	75 25                	jne    10289e <memmove+0x79>
  102879:	8b 45 10             	mov    0x10(%ebp),%eax
  10287c:	83 e0 03             	and    $0x3,%eax
  10287f:	85 c0                	test   %eax,%eax
  102881:	75 1b                	jne    10289e <memmove+0x79>
  102883:	8b 45 ec             	mov    -0x14(%ebp),%eax
  102886:	83 e8 04             	sub    $0x4,%eax
  102889:	8b 55 f0             	mov    -0x10(%ebp),%edx
  10288c:	83 ea 04             	sub    $0x4,%edx
  10288f:	8b 4d 10             	mov    0x10(%ebp),%ecx
  102892:	c1 e9 02             	shr    $0x2,%ecx
  102895:	89 c7                	mov    %eax,%edi
  102897:	89 d6                	mov    %edx,%esi
  102899:	fd                   	std
  10289a:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
  10289c:	eb 18                	jmp    1028b6 <memmove+0x91>
  10289e:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1028a1:	8d 50 ff             	lea    -0x1(%eax),%edx
  1028a4:	8b 45 f0             	mov    -0x10(%ebp),%eax
  1028a7:	8d 58 ff             	lea    -0x1(%eax),%ebx
  1028aa:	8b 45 10             	mov    0x10(%ebp),%eax
  1028ad:	89 d7                	mov    %edx,%edi
  1028af:	89 de                	mov    %ebx,%esi
  1028b1:	89 c1                	mov    %eax,%ecx
  1028b3:	fd                   	std
  1028b4:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
  1028b6:	fc                   	cld
  1028b7:	eb 45                	jmp    1028fe <memmove+0xd9>
  1028b9:	8b 45 f0             	mov    -0x10(%ebp),%eax
  1028bc:	83 e0 03             	and    $0x3,%eax
  1028bf:	85 c0                	test   %eax,%eax
  1028c1:	75 2b                	jne    1028ee <memmove+0xc9>
  1028c3:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1028c6:	83 e0 03             	and    $0x3,%eax
  1028c9:	85 c0                	test   %eax,%eax
  1028cb:	75 21                	jne    1028ee <memmove+0xc9>
  1028cd:	8b 45 10             	mov    0x10(%ebp),%eax
  1028d0:	83 e0 03             	and    $0x3,%eax
  1028d3:	85 c0                	test   %eax,%eax
  1028d5:	75 17                	jne    1028ee <memmove+0xc9>
  1028d7:	8b 45 10             	mov    0x10(%ebp),%eax
  1028da:	c1 e8 02             	shr    $0x2,%eax
  1028dd:	89 c1                	mov    %eax,%ecx
  1028df:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1028e2:	8b 55 f0             	mov    -0x10(%ebp),%edx
  1028e5:	89 c7                	mov    %eax,%edi
  1028e7:	89 d6                	mov    %edx,%esi
  1028e9:	fc                   	cld
  1028ea:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
  1028ec:	eb 10                	jmp    1028fe <memmove+0xd9>
  1028ee:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1028f1:	8b 55 f0             	mov    -0x10(%ebp),%edx
  1028f4:	8b 4d 10             	mov    0x10(%ebp),%ecx
  1028f7:	89 c7                	mov    %eax,%edi
  1028f9:	89 d6                	mov    %edx,%esi
  1028fb:	fc                   	cld
  1028fc:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
  1028fe:	8b 45 08             	mov    0x8(%ebp),%eax
  102901:	83 c4 10             	add    $0x10,%esp
  102904:	5b                   	pop    %ebx
  102905:	5e                   	pop    %esi
  102906:	5f                   	pop    %edi
  102907:	5d                   	pop    %ebp
  102908:	c3                   	ret

00102909 <memcpy>:
  102909:	55                   	push   %ebp
  10290a:	89 e5                	mov    %esp,%ebp
  10290c:	e8 a7 da ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  102911:	05 e3 a6 00 00       	add    $0xa6e3,%eax
  102916:	ff 75 10             	push   0x10(%ebp)
  102919:	ff 75 0c             	push   0xc(%ebp)
  10291c:	ff 75 08             	push   0x8(%ebp)
  10291f:	e8 01 ff ff ff       	call   102825 <memmove>
  102924:	83 c4 0c             	add    $0xc,%esp
  102927:	c9                   	leave
  102928:	c3                   	ret

00102929 <strncmp>:
  102929:	55                   	push   %ebp
  10292a:	89 e5                	mov    %esp,%ebp
  10292c:	e8 87 da ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  102931:	05 c3 a6 00 00       	add    $0xa6c3,%eax
  102936:	eb 0c                	jmp    102944 <strncmp+0x1b>
  102938:	83 6d 10 01          	subl   $0x1,0x10(%ebp)
  10293c:	83 45 08 01          	addl   $0x1,0x8(%ebp)
  102940:	83 45 0c 01          	addl   $0x1,0xc(%ebp)
  102944:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
  102948:	74 1a                	je     102964 <strncmp+0x3b>
  10294a:	8b 45 08             	mov    0x8(%ebp),%eax
  10294d:	0f b6 00             	movzbl (%eax),%eax
  102950:	84 c0                	test   %al,%al
  102952:	74 10                	je     102964 <strncmp+0x3b>
  102954:	8b 45 08             	mov    0x8(%ebp),%eax
  102957:	0f b6 10             	movzbl (%eax),%edx
  10295a:	8b 45 0c             	mov    0xc(%ebp),%eax
  10295d:	0f b6 00             	movzbl (%eax),%eax
  102960:	38 c2                	cmp    %al,%dl
  102962:	74 d4                	je     102938 <strncmp+0xf>
  102964:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
  102968:	75 07                	jne    102971 <strncmp+0x48>
  10296a:	ba 00 00 00 00       	mov    $0x0,%edx
  10296f:	eb 14                	jmp    102985 <strncmp+0x5c>
  102971:	8b 45 08             	mov    0x8(%ebp),%eax
  102974:	0f b6 00             	movzbl (%eax),%eax
  102977:	0f b6 d0             	movzbl %al,%edx
  10297a:	8b 45 0c             	mov    0xc(%ebp),%eax
  10297d:	0f b6 00             	movzbl (%eax),%eax
  102980:	0f b6 c0             	movzbl %al,%eax
  102983:	29 c2                	sub    %eax,%edx
  102985:	89 d0                	mov    %edx,%eax
  102987:	5d                   	pop    %ebp
  102988:	c3                   	ret

00102989 <strnlen>:
  102989:	55                   	push   %ebp
  10298a:	89 e5                	mov    %esp,%ebp
  10298c:	83 ec 10             	sub    $0x10,%esp
  10298f:	e8 24 da ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  102994:	05 60 a6 00 00       	add    $0xa660,%eax
  102999:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  1029a0:	eb 0c                	jmp    1029ae <strnlen+0x25>
  1029a2:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  1029a6:	83 45 08 01          	addl   $0x1,0x8(%ebp)
  1029aa:	83 6d 0c 01          	subl   $0x1,0xc(%ebp)
  1029ae:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
  1029b2:	74 0a                	je     1029be <strnlen+0x35>
  1029b4:	8b 45 08             	mov    0x8(%ebp),%eax
  1029b7:	0f b6 00             	movzbl (%eax),%eax
  1029ba:	84 c0                	test   %al,%al
  1029bc:	75 e4                	jne    1029a2 <strnlen+0x19>
  1029be:	8b 45 fc             	mov    -0x4(%ebp),%eax
  1029c1:	c9                   	leave
  1029c2:	c3                   	ret

001029c3 <strcmp>:
  1029c3:	55                   	push   %ebp
  1029c4:	89 e5                	mov    %esp,%ebp
  1029c6:	e8 ed d9 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  1029cb:	05 29 a6 00 00       	add    $0xa629,%eax
  1029d0:	eb 08                	jmp    1029da <strcmp+0x17>
  1029d2:	83 45 08 01          	addl   $0x1,0x8(%ebp)
  1029d6:	83 45 0c 01          	addl   $0x1,0xc(%ebp)
  1029da:	8b 45 08             	mov    0x8(%ebp),%eax
  1029dd:	0f b6 00             	movzbl (%eax),%eax
  1029e0:	84 c0                	test   %al,%al
  1029e2:	74 10                	je     1029f4 <strcmp+0x31>
  1029e4:	8b 45 08             	mov    0x8(%ebp),%eax
  1029e7:	0f b6 10             	movzbl (%eax),%edx
  1029ea:	8b 45 0c             	mov    0xc(%ebp),%eax
  1029ed:	0f b6 00             	movzbl (%eax),%eax
  1029f0:	38 c2                	cmp    %al,%dl
  1029f2:	74 de                	je     1029d2 <strcmp+0xf>
  1029f4:	8b 45 08             	mov    0x8(%ebp),%eax
  1029f7:	0f b6 00             	movzbl (%eax),%eax
  1029fa:	0f b6 d0             	movzbl %al,%edx
  1029fd:	8b 45 0c             	mov    0xc(%ebp),%eax
  102a00:	0f b6 00             	movzbl (%eax),%eax
  102a03:	0f b6 c0             	movzbl %al,%eax
  102a06:	29 c2                	sub    %eax,%edx
  102a08:	89 d0                	mov    %edx,%eax
  102a0a:	5d                   	pop    %ebp
  102a0b:	c3                   	ret

00102a0c <strchr>:
  102a0c:	55                   	push   %ebp
  102a0d:	89 e5                	mov    %esp,%ebp
  102a0f:	83 ec 04             	sub    $0x4,%esp
  102a12:	e8 a1 d9 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  102a17:	05 dd a5 00 00       	add    $0xa5dd,%eax
  102a1c:	8b 45 0c             	mov    0xc(%ebp),%eax
  102a1f:	88 45 fc             	mov    %al,-0x4(%ebp)
  102a22:	eb 14                	jmp    102a38 <strchr+0x2c>
  102a24:	8b 45 08             	mov    0x8(%ebp),%eax
  102a27:	0f b6 00             	movzbl (%eax),%eax
  102a2a:	38 45 fc             	cmp    %al,-0x4(%ebp)
  102a2d:	75 05                	jne    102a34 <strchr+0x28>
  102a2f:	8b 45 08             	mov    0x8(%ebp),%eax
  102a32:	eb 13                	jmp    102a47 <strchr+0x3b>
  102a34:	83 45 08 01          	addl   $0x1,0x8(%ebp)
  102a38:	8b 45 08             	mov    0x8(%ebp),%eax
  102a3b:	0f b6 00             	movzbl (%eax),%eax
  102a3e:	84 c0                	test   %al,%al
  102a40:	75 e2                	jne    102a24 <strchr+0x18>
  102a42:	b8 00 00 00 00       	mov    $0x0,%eax
  102a47:	c9                   	leave
  102a48:	c3                   	ret

00102a49 <memzero>:
  102a49:	55                   	push   %ebp
  102a4a:	89 e5                	mov    %esp,%ebp
  102a4c:	e8 67 d9 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  102a51:	05 a3 a5 00 00       	add    $0xa5a3,%eax
  102a56:	ff 75 0c             	push   0xc(%ebp)
  102a59:	6a 00                	push   $0x0
  102a5b:	ff 75 08             	push   0x8(%ebp)
  102a5e:	e8 48 fd ff ff       	call   1027ab <memset>
  102a63:	83 c4 0c             	add    $0xc,%esp
  102a66:	c9                   	leave
  102a67:	c3                   	ret

00102a68 <debug_info>:
  102a68:	55                   	push   %ebp
  102a69:	89 e5                	mov    %esp,%ebp
  102a6b:	53                   	push   %ebx
  102a6c:	83 ec 14             	sub    $0x14,%esp
  102a6f:	e8 44 d9 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  102a74:	05 80 a5 00 00       	add    $0xa580,%eax
  102a79:	8d 55 0c             	lea    0xc(%ebp),%edx
  102a7c:	89 55 f4             	mov    %edx,-0xc(%ebp)
  102a7f:	8b 55 f4             	mov    -0xc(%ebp),%edx
  102a82:	83 ec 08             	sub    $0x8,%esp
  102a85:	52                   	push   %edx
  102a86:	ff 75 08             	push   0x8(%ebp)
  102a89:	89 c3                	mov    %eax,%ebx
  102a8b:	e8 68 02 00 00       	call   102cf8 <vdprintf>
  102a90:	83 c4 10             	add    $0x10,%esp
  102a93:	90                   	nop
  102a94:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  102a97:	c9                   	leave
  102a98:	c3                   	ret

00102a99 <debug_normal>:
  102a99:	55                   	push   %ebp
  102a9a:	89 e5                	mov    %esp,%ebp
  102a9c:	53                   	push   %ebx
  102a9d:	83 ec 14             	sub    $0x14,%esp
  102aa0:	e8 1b d9 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  102aa5:	81 c3 4f a5 00 00    	add    $0xa54f,%ebx
  102aab:	83 ec 04             	sub    $0x4,%esp
  102aae:	ff 75 0c             	push   0xc(%ebp)
  102ab1:	ff 75 08             	push   0x8(%ebp)
  102ab4:	8d 83 23 b1 ff ff    	lea    -0x4edd(%ebx),%eax
  102aba:	50                   	push   %eax
  102abb:	e8 ac 02 00 00       	call   102d6c <dprintf>
  102ac0:	83 c4 10             	add    $0x10,%esp
  102ac3:	8d 45 14             	lea    0x14(%ebp),%eax
  102ac6:	89 45 f4             	mov    %eax,-0xc(%ebp)
  102ac9:	8b 45 f4             	mov    -0xc(%ebp),%eax
  102acc:	83 ec 08             	sub    $0x8,%esp
  102acf:	50                   	push   %eax
  102ad0:	ff 75 10             	push   0x10(%ebp)
  102ad3:	e8 20 02 00 00       	call   102cf8 <vdprintf>
  102ad8:	83 c4 10             	add    $0x10,%esp
  102adb:	90                   	nop
  102adc:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  102adf:	c9                   	leave
  102ae0:	c3                   	ret

00102ae1 <debug_trace>:
  102ae1:	55                   	push   %ebp
  102ae2:	89 e5                	mov    %esp,%ebp
  102ae4:	83 ec 10             	sub    $0x10,%esp
  102ae7:	e8 cc d8 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  102aec:	05 08 a5 00 00       	add    $0xa508,%eax
  102af1:	8b 45 08             	mov    0x8(%ebp),%eax
  102af4:	89 45 f8             	mov    %eax,-0x8(%ebp)
  102af7:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  102afe:	eb 23                	jmp    102b23 <debug_trace+0x42>
  102b00:	8b 45 fc             	mov    -0x4(%ebp),%eax
  102b03:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
  102b0a:	8b 45 0c             	mov    0xc(%ebp),%eax
  102b0d:	01 c2                	add    %eax,%edx
  102b0f:	8b 45 f8             	mov    -0x8(%ebp),%eax
  102b12:	8b 40 04             	mov    0x4(%eax),%eax
  102b15:	89 02                	mov    %eax,(%edx)
  102b17:	8b 45 f8             	mov    -0x8(%ebp),%eax
  102b1a:	8b 00                	mov    (%eax),%eax
  102b1c:	89 45 f8             	mov    %eax,-0x8(%ebp)
  102b1f:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  102b23:	83 7d fc 09          	cmpl   $0x9,-0x4(%ebp)
  102b27:	7f 21                	jg     102b4a <debug_trace+0x69>
  102b29:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
  102b2d:	75 d1                	jne    102b00 <debug_trace+0x1f>
  102b2f:	eb 19                	jmp    102b4a <debug_trace+0x69>
  102b31:	8b 45 fc             	mov    -0x4(%ebp),%eax
  102b34:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
  102b3b:	8b 45 0c             	mov    0xc(%ebp),%eax
  102b3e:	01 d0                	add    %edx,%eax
  102b40:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  102b46:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  102b4a:	83 7d fc 09          	cmpl   $0x9,-0x4(%ebp)
  102b4e:	7e e1                	jle    102b31 <debug_trace+0x50>
  102b50:	90                   	nop
  102b51:	90                   	nop
  102b52:	c9                   	leave
  102b53:	c3                   	ret

00102b54 <debug_panic>:
  102b54:	55                   	push   %ebp
  102b55:	89 e5                	mov    %esp,%ebp
  102b57:	53                   	push   %ebx
  102b58:	83 ec 44             	sub    $0x44,%esp
  102b5b:	e8 60 d8 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  102b60:	81 c3 94 a4 00 00    	add    $0xa494,%ebx
  102b66:	83 ec 04             	sub    $0x4,%esp
  102b69:	ff 75 0c             	push   0xc(%ebp)
  102b6c:	ff 75 08             	push   0x8(%ebp)
  102b6f:	8d 83 2f b1 ff ff    	lea    -0x4ed1(%ebx),%eax
  102b75:	50                   	push   %eax
  102b76:	e8 f1 01 00 00       	call   102d6c <dprintf>
  102b7b:	83 c4 10             	add    $0x10,%esp
  102b7e:	8d 45 14             	lea    0x14(%ebp),%eax
  102b81:	89 45 c4             	mov    %eax,-0x3c(%ebp)
  102b84:	8b 45 c4             	mov    -0x3c(%ebp),%eax
  102b87:	83 ec 08             	sub    $0x8,%esp
  102b8a:	50                   	push   %eax
  102b8b:	ff 75 10             	push   0x10(%ebp)
  102b8e:	e8 65 01 00 00       	call   102cf8 <vdprintf>
  102b93:	83 c4 10             	add    $0x10,%esp
  102b96:	89 e8                	mov    %ebp,%eax
  102b98:	89 45 f0             	mov    %eax,-0x10(%ebp)
  102b9b:	8b 45 f0             	mov    -0x10(%ebp),%eax
  102b9e:	83 ec 08             	sub    $0x8,%esp
  102ba1:	8d 55 c8             	lea    -0x38(%ebp),%edx
  102ba4:	52                   	push   %edx
  102ba5:	50                   	push   %eax
  102ba6:	e8 36 ff ff ff       	call   102ae1 <debug_trace>
  102bab:	83 c4 10             	add    $0x10,%esp
  102bae:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  102bb5:	eb 1e                	jmp    102bd5 <debug_panic+0x81>
  102bb7:	8b 45 f4             	mov    -0xc(%ebp),%eax
  102bba:	8b 44 85 c8          	mov    -0x38(%ebp,%eax,4),%eax
  102bbe:	83 ec 08             	sub    $0x8,%esp
  102bc1:	50                   	push   %eax
  102bc2:	8d 83 3b b1 ff ff    	lea    -0x4ec5(%ebx),%eax
  102bc8:	50                   	push   %eax
  102bc9:	e8 9e 01 00 00       	call   102d6c <dprintf>
  102bce:	83 c4 10             	add    $0x10,%esp
  102bd1:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  102bd5:	83 7d f4 09          	cmpl   $0x9,-0xc(%ebp)
  102bd9:	7f 0b                	jg     102be6 <debug_panic+0x92>
  102bdb:	8b 45 f4             	mov    -0xc(%ebp),%eax
  102bde:	8b 44 85 c8          	mov    -0x38(%ebp,%eax,4),%eax
  102be2:	85 c0                	test   %eax,%eax
  102be4:	75 d1                	jne    102bb7 <debug_panic+0x63>
  102be6:	83 ec 0c             	sub    $0xc,%esp
  102be9:	8d 83 49 b1 ff ff    	lea    -0x4eb7(%ebx),%eax
  102bef:	50                   	push   %eax
  102bf0:	e8 77 01 00 00       	call   102d6c <dprintf>
  102bf5:	83 c4 10             	add    $0x10,%esp
  102bf8:	e8 e0 0c 00 00       	call   1038dd <halt>
  102bfd:	90                   	nop
  102bfe:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  102c01:	c9                   	leave
  102c02:	c3                   	ret

00102c03 <debug_warn>:
  102c03:	55                   	push   %ebp
  102c04:	89 e5                	mov    %esp,%ebp
  102c06:	53                   	push   %ebx
  102c07:	83 ec 14             	sub    $0x14,%esp
  102c0a:	e8 b1 d7 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  102c0f:	81 c3 e5 a3 00 00    	add    $0xa3e5,%ebx
  102c15:	83 ec 04             	sub    $0x4,%esp
  102c18:	ff 75 0c             	push   0xc(%ebp)
  102c1b:	ff 75 08             	push   0x8(%ebp)
  102c1e:	8d 83 5b b1 ff ff    	lea    -0x4ea5(%ebx),%eax
  102c24:	50                   	push   %eax
  102c25:	e8 42 01 00 00       	call   102d6c <dprintf>
  102c2a:	83 c4 10             	add    $0x10,%esp
  102c2d:	8d 45 14             	lea    0x14(%ebp),%eax
  102c30:	89 45 f4             	mov    %eax,-0xc(%ebp)
  102c33:	8b 45 f4             	mov    -0xc(%ebp),%eax
  102c36:	83 ec 08             	sub    $0x8,%esp
  102c39:	50                   	push   %eax
  102c3a:	ff 75 10             	push   0x10(%ebp)
  102c3d:	e8 b6 00 00 00       	call   102cf8 <vdprintf>
  102c42:	83 c4 10             	add    $0x10,%esp
  102c45:	90                   	nop
  102c46:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  102c49:	c9                   	leave
  102c4a:	c3                   	ret

00102c4b <cputs>:
  102c4b:	55                   	push   %ebp
  102c4c:	89 e5                	mov    %esp,%ebp
  102c4e:	53                   	push   %ebx
  102c4f:	83 ec 04             	sub    $0x4,%esp
  102c52:	e8 69 d7 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  102c57:	81 c3 9d a3 00 00    	add    $0xa39d,%ebx
  102c5d:	eb 19                	jmp    102c78 <cputs+0x2d>
  102c5f:	8b 45 08             	mov    0x8(%ebp),%eax
  102c62:	0f b6 00             	movzbl (%eax),%eax
  102c65:	0f be c0             	movsbl %al,%eax
  102c68:	83 ec 0c             	sub    $0xc,%esp
  102c6b:	50                   	push   %eax
  102c6c:	e8 5f d8 ff ff       	call   1004d0 <cons_putc>
  102c71:	83 c4 10             	add    $0x10,%esp
  102c74:	83 45 08 01          	addl   $0x1,0x8(%ebp)
  102c78:	8b 45 08             	mov    0x8(%ebp),%eax
  102c7b:	0f b6 00             	movzbl (%eax),%eax
  102c7e:	84 c0                	test   %al,%al
  102c80:	75 dd                	jne    102c5f <cputs+0x14>
  102c82:	90                   	nop
  102c83:	90                   	nop
  102c84:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  102c87:	c9                   	leave
  102c88:	c3                   	ret

00102c89 <putch>:
  102c89:	55                   	push   %ebp
  102c8a:	89 e5                	mov    %esp,%ebp
  102c8c:	83 ec 08             	sub    $0x8,%esp
  102c8f:	e8 24 d7 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  102c94:	05 60 a3 00 00       	add    $0xa360,%eax
  102c99:	8b 45 0c             	mov    0xc(%ebp),%eax
  102c9c:	8b 00                	mov    (%eax),%eax
  102c9e:	8d 48 01             	lea    0x1(%eax),%ecx
  102ca1:	8b 55 0c             	mov    0xc(%ebp),%edx
  102ca4:	89 0a                	mov    %ecx,(%edx)
  102ca6:	8b 55 08             	mov    0x8(%ebp),%edx
  102ca9:	89 d1                	mov    %edx,%ecx
  102cab:	8b 55 0c             	mov    0xc(%ebp),%edx
  102cae:	88 4c 02 08          	mov    %cl,0x8(%edx,%eax,1)
  102cb2:	8b 45 0c             	mov    0xc(%ebp),%eax
  102cb5:	8b 00                	mov    (%eax),%eax
  102cb7:	3d ff 01 00 00       	cmp    $0x1ff,%eax
  102cbc:	75 28                	jne    102ce6 <putch+0x5d>
  102cbe:	8b 45 0c             	mov    0xc(%ebp),%eax
  102cc1:	8b 00                	mov    (%eax),%eax
  102cc3:	8b 55 0c             	mov    0xc(%ebp),%edx
  102cc6:	c6 44 02 08 00       	movb   $0x0,0x8(%edx,%eax,1)
  102ccb:	8b 45 0c             	mov    0xc(%ebp),%eax
  102cce:	83 c0 08             	add    $0x8,%eax
  102cd1:	83 ec 0c             	sub    $0xc,%esp
  102cd4:	50                   	push   %eax
  102cd5:	e8 71 ff ff ff       	call   102c4b <cputs>
  102cda:	83 c4 10             	add    $0x10,%esp
  102cdd:	8b 45 0c             	mov    0xc(%ebp),%eax
  102ce0:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  102ce6:	8b 45 0c             	mov    0xc(%ebp),%eax
  102ce9:	8b 40 04             	mov    0x4(%eax),%eax
  102cec:	8d 50 01             	lea    0x1(%eax),%edx
  102cef:	8b 45 0c             	mov    0xc(%ebp),%eax
  102cf2:	89 50 04             	mov    %edx,0x4(%eax)
  102cf5:	90                   	nop
  102cf6:	c9                   	leave
  102cf7:	c3                   	ret

00102cf8 <vdprintf>:
  102cf8:	55                   	push   %ebp
  102cf9:	89 e5                	mov    %esp,%ebp
  102cfb:	53                   	push   %ebx
  102cfc:	81 ec 14 02 00 00    	sub    $0x214,%esp
  102d02:	e8 b1 d6 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  102d07:	05 ed a2 00 00       	add    $0xa2ed,%eax
  102d0c:	c7 85 f0 fd ff ff 00 	movl   $0x0,-0x210(%ebp)
  102d13:	00 00 00 
  102d16:	c7 85 f4 fd ff ff 00 	movl   $0x0,-0x20c(%ebp)
  102d1d:	00 00 00 
  102d20:	ff 75 0c             	push   0xc(%ebp)
  102d23:	ff 75 08             	push   0x8(%ebp)
  102d26:	8d 95 f0 fd ff ff    	lea    -0x210(%ebp),%edx
  102d2c:	52                   	push   %edx
  102d2d:	8d 90 95 5c ff ff    	lea    -0xa36b(%eax),%edx
  102d33:	52                   	push   %edx
  102d34:	89 c3                	mov    %eax,%ebx
  102d36:	e8 d6 01 00 00       	call   102f11 <vprintfmt>
  102d3b:	83 c4 10             	add    $0x10,%esp
  102d3e:	8b 85 f0 fd ff ff    	mov    -0x210(%ebp),%eax
  102d44:	c6 84 05 f8 fd ff ff 	movb   $0x0,-0x208(%ebp,%eax,1)
  102d4b:	00 
  102d4c:	83 ec 0c             	sub    $0xc,%esp
  102d4f:	8d 85 f0 fd ff ff    	lea    -0x210(%ebp),%eax
  102d55:	83 c0 08             	add    $0x8,%eax
  102d58:	50                   	push   %eax
  102d59:	e8 ed fe ff ff       	call   102c4b <cputs>
  102d5e:	83 c4 10             	add    $0x10,%esp
  102d61:	8b 85 f4 fd ff ff    	mov    -0x20c(%ebp),%eax
  102d67:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  102d6a:	c9                   	leave
  102d6b:	c3                   	ret

00102d6c <dprintf>:
  102d6c:	55                   	push   %ebp
  102d6d:	89 e5                	mov    %esp,%ebp
  102d6f:	83 ec 18             	sub    $0x18,%esp
  102d72:	e8 41 d6 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  102d77:	05 7d a2 00 00       	add    $0xa27d,%eax
  102d7c:	8d 45 0c             	lea    0xc(%ebp),%eax
  102d7f:	89 45 f0             	mov    %eax,-0x10(%ebp)
  102d82:	8b 45 f0             	mov    -0x10(%ebp),%eax
  102d85:	83 ec 08             	sub    $0x8,%esp
  102d88:	50                   	push   %eax
  102d89:	ff 75 08             	push   0x8(%ebp)
  102d8c:	e8 67 ff ff ff       	call   102cf8 <vdprintf>
  102d91:	83 c4 10             	add    $0x10,%esp
  102d94:	89 45 f4             	mov    %eax,-0xc(%ebp)
  102d97:	8b 45 f4             	mov    -0xc(%ebp),%eax
  102d9a:	c9                   	leave
  102d9b:	c3                   	ret

00102d9c <printnum>:
  102d9c:	55                   	push   %ebp
  102d9d:	89 e5                	mov    %esp,%ebp
  102d9f:	57                   	push   %edi
  102da0:	56                   	push   %esi
  102da1:	53                   	push   %ebx
  102da2:	83 ec 1c             	sub    $0x1c,%esp
  102da5:	e8 b2 04 00 00       	call   10325c <__x86.get_pc_thunk.si>
  102daa:	81 c6 4a a2 00 00    	add    $0xa24a,%esi
  102db0:	8b 45 10             	mov    0x10(%ebp),%eax
  102db3:	89 45 e0             	mov    %eax,-0x20(%ebp)
  102db6:	8b 45 14             	mov    0x14(%ebp),%eax
  102db9:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  102dbc:	8b 45 18             	mov    0x18(%ebp),%eax
  102dbf:	ba 00 00 00 00       	mov    $0x0,%edx
  102dc4:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
  102dc7:	39 45 e0             	cmp    %eax,-0x20(%ebp)
  102dca:	19 d1                	sbb    %edx,%ecx
  102dcc:	72 4d                	jb     102e1b <printnum+0x7f>
  102dce:	8b 45 1c             	mov    0x1c(%ebp),%eax
  102dd1:	8d 78 ff             	lea    -0x1(%eax),%edi
  102dd4:	8b 45 18             	mov    0x18(%ebp),%eax
  102dd7:	ba 00 00 00 00       	mov    $0x0,%edx
  102ddc:	52                   	push   %edx
  102ddd:	50                   	push   %eax
  102dde:	ff 75 e4             	push   -0x1c(%ebp)
  102de1:	ff 75 e0             	push   -0x20(%ebp)
  102de4:	89 f3                	mov    %esi,%ebx
  102de6:	e8 f5 44 00 00       	call   1072e0 <__udivdi3>
  102deb:	83 c4 10             	add    $0x10,%esp
  102dee:	83 ec 04             	sub    $0x4,%esp
  102df1:	ff 75 20             	push   0x20(%ebp)
  102df4:	57                   	push   %edi
  102df5:	ff 75 18             	push   0x18(%ebp)
  102df8:	52                   	push   %edx
  102df9:	50                   	push   %eax
  102dfa:	ff 75 0c             	push   0xc(%ebp)
  102dfd:	ff 75 08             	push   0x8(%ebp)
  102e00:	e8 97 ff ff ff       	call   102d9c <printnum>
  102e05:	83 c4 20             	add    $0x20,%esp
  102e08:	eb 1b                	jmp    102e25 <printnum+0x89>
  102e0a:	83 ec 08             	sub    $0x8,%esp
  102e0d:	ff 75 0c             	push   0xc(%ebp)
  102e10:	ff 75 20             	push   0x20(%ebp)
  102e13:	8b 45 08             	mov    0x8(%ebp),%eax
  102e16:	ff d0                	call   *%eax
  102e18:	83 c4 10             	add    $0x10,%esp
  102e1b:	83 6d 1c 01          	subl   $0x1,0x1c(%ebp)
  102e1f:	83 7d 1c 00          	cmpl   $0x0,0x1c(%ebp)
  102e23:	7f e5                	jg     102e0a <printnum+0x6e>
  102e25:	8b 4d 18             	mov    0x18(%ebp),%ecx
  102e28:	bb 00 00 00 00       	mov    $0x0,%ebx
  102e2d:	8b 45 e0             	mov    -0x20(%ebp),%eax
  102e30:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  102e33:	53                   	push   %ebx
  102e34:	51                   	push   %ecx
  102e35:	52                   	push   %edx
  102e36:	50                   	push   %eax
  102e37:	89 f3                	mov    %esi,%ebx
  102e39:	e8 d2 45 00 00       	call   107410 <__umoddi3>
  102e3e:	83 c4 10             	add    $0x10,%esp
  102e41:	8d 8e 68 b1 ff ff    	lea    -0x4e98(%esi),%ecx
  102e47:	01 c8                	add    %ecx,%eax
  102e49:	0f b6 00             	movzbl (%eax),%eax
  102e4c:	0f be c0             	movsbl %al,%eax
  102e4f:	83 ec 08             	sub    $0x8,%esp
  102e52:	ff 75 0c             	push   0xc(%ebp)
  102e55:	50                   	push   %eax
  102e56:	8b 45 08             	mov    0x8(%ebp),%eax
  102e59:	ff d0                	call   *%eax
  102e5b:	83 c4 10             	add    $0x10,%esp
  102e5e:	90                   	nop
  102e5f:	8d 65 f4             	lea    -0xc(%ebp),%esp
  102e62:	5b                   	pop    %ebx
  102e63:	5e                   	pop    %esi
  102e64:	5f                   	pop    %edi
  102e65:	5d                   	pop    %ebp
  102e66:	c3                   	ret

00102e67 <getuint>:
  102e67:	55                   	push   %ebp
  102e68:	89 e5                	mov    %esp,%ebp
  102e6a:	e8 49 d5 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  102e6f:	05 85 a1 00 00       	add    $0xa185,%eax
  102e74:	83 7d 0c 01          	cmpl   $0x1,0xc(%ebp)
  102e78:	7e 14                	jle    102e8e <getuint+0x27>
  102e7a:	8b 45 08             	mov    0x8(%ebp),%eax
  102e7d:	8b 00                	mov    (%eax),%eax
  102e7f:	8d 48 08             	lea    0x8(%eax),%ecx
  102e82:	8b 55 08             	mov    0x8(%ebp),%edx
  102e85:	89 0a                	mov    %ecx,(%edx)
  102e87:	8b 50 04             	mov    0x4(%eax),%edx
  102e8a:	8b 00                	mov    (%eax),%eax
  102e8c:	eb 30                	jmp    102ebe <getuint+0x57>
  102e8e:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
  102e92:	74 16                	je     102eaa <getuint+0x43>
  102e94:	8b 45 08             	mov    0x8(%ebp),%eax
  102e97:	8b 00                	mov    (%eax),%eax
  102e99:	8d 48 04             	lea    0x4(%eax),%ecx
  102e9c:	8b 55 08             	mov    0x8(%ebp),%edx
  102e9f:	89 0a                	mov    %ecx,(%edx)
  102ea1:	8b 00                	mov    (%eax),%eax
  102ea3:	ba 00 00 00 00       	mov    $0x0,%edx
  102ea8:	eb 14                	jmp    102ebe <getuint+0x57>
  102eaa:	8b 45 08             	mov    0x8(%ebp),%eax
  102ead:	8b 00                	mov    (%eax),%eax
  102eaf:	8d 48 04             	lea    0x4(%eax),%ecx
  102eb2:	8b 55 08             	mov    0x8(%ebp),%edx
  102eb5:	89 0a                	mov    %ecx,(%edx)
  102eb7:	8b 00                	mov    (%eax),%eax
  102eb9:	ba 00 00 00 00       	mov    $0x0,%edx
  102ebe:	5d                   	pop    %ebp
  102ebf:	c3                   	ret

00102ec0 <getint>:
  102ec0:	55                   	push   %ebp
  102ec1:	89 e5                	mov    %esp,%ebp
  102ec3:	e8 f0 d4 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  102ec8:	05 2c a1 00 00       	add    $0xa12c,%eax
  102ecd:	83 7d 0c 01          	cmpl   $0x1,0xc(%ebp)
  102ed1:	7e 14                	jle    102ee7 <getint+0x27>
  102ed3:	8b 45 08             	mov    0x8(%ebp),%eax
  102ed6:	8b 00                	mov    (%eax),%eax
  102ed8:	8d 48 08             	lea    0x8(%eax),%ecx
  102edb:	8b 55 08             	mov    0x8(%ebp),%edx
  102ede:	89 0a                	mov    %ecx,(%edx)
  102ee0:	8b 50 04             	mov    0x4(%eax),%edx
  102ee3:	8b 00                	mov    (%eax),%eax
  102ee5:	eb 28                	jmp    102f0f <getint+0x4f>
  102ee7:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
  102eeb:	74 12                	je     102eff <getint+0x3f>
  102eed:	8b 45 08             	mov    0x8(%ebp),%eax
  102ef0:	8b 00                	mov    (%eax),%eax
  102ef2:	8d 48 04             	lea    0x4(%eax),%ecx
  102ef5:	8b 55 08             	mov    0x8(%ebp),%edx
  102ef8:	89 0a                	mov    %ecx,(%edx)
  102efa:	8b 00                	mov    (%eax),%eax
  102efc:	99                   	cltd
  102efd:	eb 10                	jmp    102f0f <getint+0x4f>
  102eff:	8b 45 08             	mov    0x8(%ebp),%eax
  102f02:	8b 00                	mov    (%eax),%eax
  102f04:	8d 48 04             	lea    0x4(%eax),%ecx
  102f07:	8b 55 08             	mov    0x8(%ebp),%edx
  102f0a:	89 0a                	mov    %ecx,(%edx)
  102f0c:	8b 00                	mov    (%eax),%eax
  102f0e:	99                   	cltd
  102f0f:	5d                   	pop    %ebp
  102f10:	c3                   	ret

00102f11 <vprintfmt>:
  102f11:	55                   	push   %ebp
  102f12:	89 e5                	mov    %esp,%ebp
  102f14:	57                   	push   %edi
  102f15:	56                   	push   %esi
  102f16:	53                   	push   %ebx
  102f17:	83 ec 2c             	sub    $0x2c,%esp
  102f1a:	e8 41 03 00 00       	call   103260 <__x86.get_pc_thunk.di>
  102f1f:	81 c7 d5 a0 00 00    	add    $0xa0d5,%edi
  102f25:	eb 17                	jmp    102f3e <vprintfmt+0x2d>
  102f27:	85 db                	test   %ebx,%ebx
  102f29:	0f 84 24 03 00 00    	je     103253 <.L21+0x2d>
  102f2f:	83 ec 08             	sub    $0x8,%esp
  102f32:	ff 75 0c             	push   0xc(%ebp)
  102f35:	53                   	push   %ebx
  102f36:	8b 45 08             	mov    0x8(%ebp),%eax
  102f39:	ff d0                	call   *%eax
  102f3b:	83 c4 10             	add    $0x10,%esp
  102f3e:	8b 45 10             	mov    0x10(%ebp),%eax
  102f41:	8d 50 01             	lea    0x1(%eax),%edx
  102f44:	89 55 10             	mov    %edx,0x10(%ebp)
  102f47:	0f b6 00             	movzbl (%eax),%eax
  102f4a:	0f b6 d8             	movzbl %al,%ebx
  102f4d:	83 fb 25             	cmp    $0x25,%ebx
  102f50:	75 d5                	jne    102f27 <vprintfmt+0x16>
  102f52:	c6 45 cb 20          	movb   $0x20,-0x35(%ebp)
  102f56:	c7 45 d4 ff ff ff ff 	movl   $0xffffffff,-0x2c(%ebp)
  102f5d:	c7 45 d0 ff ff ff ff 	movl   $0xffffffff,-0x30(%ebp)
  102f64:	c7 45 d8 00 00 00 00 	movl   $0x0,-0x28(%ebp)
  102f6b:	c7 45 cc 00 00 00 00 	movl   $0x0,-0x34(%ebp)
  102f72:	eb 04                	jmp    102f78 <vprintfmt+0x67>
  102f74:	90                   	nop
  102f75:	eb 01                	jmp    102f78 <vprintfmt+0x67>
  102f77:	90                   	nop
  102f78:	8b 45 10             	mov    0x10(%ebp),%eax
  102f7b:	8d 50 01             	lea    0x1(%eax),%edx
  102f7e:	89 55 10             	mov    %edx,0x10(%ebp)
  102f81:	0f b6 00             	movzbl (%eax),%eax
  102f84:	0f b6 d8             	movzbl %al,%ebx
  102f87:	8d 43 dd             	lea    -0x23(%ebx),%eax
  102f8a:	83 f8 55             	cmp    $0x55,%eax
  102f8d:	0f 87 93 02 00 00    	ja     103226 <.L21>
  102f93:	c1 e0 02             	shl    $0x2,%eax
  102f96:	8b 84 38 80 b1 ff ff 	mov    -0x4e80(%eax,%edi,1),%eax
  102f9d:	01 f8                	add    %edi,%eax
  102f9f:	ff e0                	jmp    *%eax

00102fa1 <.L33>:
  102fa1:	c6 45 cb 2d          	movb   $0x2d,-0x35(%ebp)
  102fa5:	eb d1                	jmp    102f78 <vprintfmt+0x67>

00102fa7 <.L31>:
  102fa7:	c6 45 cb 30          	movb   $0x30,-0x35(%ebp)
  102fab:	eb cb                	jmp    102f78 <vprintfmt+0x67>

00102fad <.L30>:
  102fad:	c7 45 d0 00 00 00 00 	movl   $0x0,-0x30(%ebp)
  102fb4:	8b 55 d0             	mov    -0x30(%ebp),%edx
  102fb7:	89 d0                	mov    %edx,%eax
  102fb9:	c1 e0 02             	shl    $0x2,%eax
  102fbc:	01 d0                	add    %edx,%eax
  102fbe:	01 c0                	add    %eax,%eax
  102fc0:	01 d8                	add    %ebx,%eax
  102fc2:	83 e8 30             	sub    $0x30,%eax
  102fc5:	89 45 d0             	mov    %eax,-0x30(%ebp)
  102fc8:	8b 45 10             	mov    0x10(%ebp),%eax
  102fcb:	0f b6 00             	movzbl (%eax),%eax
  102fce:	0f be d8             	movsbl %al,%ebx
  102fd1:	83 fb 2f             	cmp    $0x2f,%ebx
  102fd4:	7e 3d                	jle    103013 <.L36+0xc>
  102fd6:	83 fb 39             	cmp    $0x39,%ebx
  102fd9:	7f 38                	jg     103013 <.L36+0xc>
  102fdb:	83 45 10 01          	addl   $0x1,0x10(%ebp)
  102fdf:	eb d3                	jmp    102fb4 <.L30+0x7>

00102fe1 <.L34>:
  102fe1:	8b 45 14             	mov    0x14(%ebp),%eax
  102fe4:	8d 50 04             	lea    0x4(%eax),%edx
  102fe7:	89 55 14             	mov    %edx,0x14(%ebp)
  102fea:	8b 00                	mov    (%eax),%eax
  102fec:	89 45 d0             	mov    %eax,-0x30(%ebp)
  102fef:	eb 23                	jmp    103014 <.L36+0xd>

00102ff1 <.L32>:
  102ff1:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
  102ff5:	0f 89 79 ff ff ff    	jns    102f74 <vprintfmt+0x63>
  102ffb:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
  103002:	e9 6d ff ff ff       	jmp    102f74 <vprintfmt+0x63>

00103007 <.L36>:
  103007:	c7 45 cc 01 00 00 00 	movl   $0x1,-0x34(%ebp)
  10300e:	e9 65 ff ff ff       	jmp    102f78 <vprintfmt+0x67>
  103013:	90                   	nop
  103014:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
  103018:	0f 89 59 ff ff ff    	jns    102f77 <vprintfmt+0x66>
  10301e:	8b 45 d0             	mov    -0x30(%ebp),%eax
  103021:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  103024:	c7 45 d0 ff ff ff ff 	movl   $0xffffffff,-0x30(%ebp)
  10302b:	e9 47 ff ff ff       	jmp    102f77 <vprintfmt+0x66>

00103030 <.L27>:
  103030:	83 45 d8 01          	addl   $0x1,-0x28(%ebp)
  103034:	e9 3f ff ff ff       	jmp    102f78 <vprintfmt+0x67>

00103039 <.L29>:
  103039:	8b 45 14             	mov    0x14(%ebp),%eax
  10303c:	8d 50 04             	lea    0x4(%eax),%edx
  10303f:	89 55 14             	mov    %edx,0x14(%ebp)
  103042:	8b 00                	mov    (%eax),%eax
  103044:	83 ec 08             	sub    $0x8,%esp
  103047:	ff 75 0c             	push   0xc(%ebp)
  10304a:	50                   	push   %eax
  10304b:	8b 45 08             	mov    0x8(%ebp),%eax
  10304e:	ff d0                	call   *%eax
  103050:	83 c4 10             	add    $0x10,%esp
  103053:	e9 f6 01 00 00       	jmp    10324e <.L21+0x28>

00103058 <.L25>:
  103058:	8b 45 14             	mov    0x14(%ebp),%eax
  10305b:	8d 50 04             	lea    0x4(%eax),%edx
  10305e:	89 55 14             	mov    %edx,0x14(%ebp)
  103061:	8b 30                	mov    (%eax),%esi
  103063:	85 f6                	test   %esi,%esi
  103065:	75 06                	jne    10306d <.L25+0x15>
  103067:	8d b7 79 b1 ff ff    	lea    -0x4e87(%edi),%esi
  10306d:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
  103071:	7e 71                	jle    1030e4 <.L25+0x8c>
  103073:	80 7d cb 2d          	cmpb   $0x2d,-0x35(%ebp)
  103077:	74 6b                	je     1030e4 <.L25+0x8c>
  103079:	8b 45 d0             	mov    -0x30(%ebp),%eax
  10307c:	83 ec 08             	sub    $0x8,%esp
  10307f:	50                   	push   %eax
  103080:	56                   	push   %esi
  103081:	89 fb                	mov    %edi,%ebx
  103083:	e8 01 f9 ff ff       	call   102989 <strnlen>
  103088:	83 c4 10             	add    $0x10,%esp
  10308b:	29 45 d4             	sub    %eax,-0x2c(%ebp)
  10308e:	eb 17                	jmp    1030a7 <.L25+0x4f>
  103090:	0f be 45 cb          	movsbl -0x35(%ebp),%eax
  103094:	83 ec 08             	sub    $0x8,%esp
  103097:	ff 75 0c             	push   0xc(%ebp)
  10309a:	50                   	push   %eax
  10309b:	8b 45 08             	mov    0x8(%ebp),%eax
  10309e:	ff d0                	call   *%eax
  1030a0:	83 c4 10             	add    $0x10,%esp
  1030a3:	83 6d d4 01          	subl   $0x1,-0x2c(%ebp)
  1030a7:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
  1030ab:	7f e3                	jg     103090 <.L25+0x38>
  1030ad:	eb 35                	jmp    1030e4 <.L25+0x8c>
  1030af:	83 7d cc 00          	cmpl   $0x0,-0x34(%ebp)
  1030b3:	74 1c                	je     1030d1 <.L25+0x79>
  1030b5:	83 fb 1f             	cmp    $0x1f,%ebx
  1030b8:	7e 05                	jle    1030bf <.L25+0x67>
  1030ba:	83 fb 7e             	cmp    $0x7e,%ebx
  1030bd:	7e 12                	jle    1030d1 <.L25+0x79>
  1030bf:	83 ec 08             	sub    $0x8,%esp
  1030c2:	ff 75 0c             	push   0xc(%ebp)
  1030c5:	6a 3f                	push   $0x3f
  1030c7:	8b 45 08             	mov    0x8(%ebp),%eax
  1030ca:	ff d0                	call   *%eax
  1030cc:	83 c4 10             	add    $0x10,%esp
  1030cf:	eb 0f                	jmp    1030e0 <.L25+0x88>
  1030d1:	83 ec 08             	sub    $0x8,%esp
  1030d4:	ff 75 0c             	push   0xc(%ebp)
  1030d7:	53                   	push   %ebx
  1030d8:	8b 45 08             	mov    0x8(%ebp),%eax
  1030db:	ff d0                	call   *%eax
  1030dd:	83 c4 10             	add    $0x10,%esp
  1030e0:	83 6d d4 01          	subl   $0x1,-0x2c(%ebp)
  1030e4:	89 f0                	mov    %esi,%eax
  1030e6:	8d 70 01             	lea    0x1(%eax),%esi
  1030e9:	0f b6 00             	movzbl (%eax),%eax
  1030ec:	0f be d8             	movsbl %al,%ebx
  1030ef:	85 db                	test   %ebx,%ebx
  1030f1:	74 26                	je     103119 <.L25+0xc1>
  1030f3:	83 7d d0 00          	cmpl   $0x0,-0x30(%ebp)
  1030f7:	78 b6                	js     1030af <.L25+0x57>
  1030f9:	83 6d d0 01          	subl   $0x1,-0x30(%ebp)
  1030fd:	83 7d d0 00          	cmpl   $0x0,-0x30(%ebp)
  103101:	79 ac                	jns    1030af <.L25+0x57>
  103103:	eb 14                	jmp    103119 <.L25+0xc1>
  103105:	83 ec 08             	sub    $0x8,%esp
  103108:	ff 75 0c             	push   0xc(%ebp)
  10310b:	6a 20                	push   $0x20
  10310d:	8b 45 08             	mov    0x8(%ebp),%eax
  103110:	ff d0                	call   *%eax
  103112:	83 c4 10             	add    $0x10,%esp
  103115:	83 6d d4 01          	subl   $0x1,-0x2c(%ebp)
  103119:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
  10311d:	7f e6                	jg     103105 <.L25+0xad>
  10311f:	e9 2a 01 00 00       	jmp    10324e <.L21+0x28>

00103124 <.L28>:
  103124:	83 ec 08             	sub    $0x8,%esp
  103127:	ff 75 d8             	push   -0x28(%ebp)
  10312a:	8d 45 14             	lea    0x14(%ebp),%eax
  10312d:	50                   	push   %eax
  10312e:	e8 8d fd ff ff       	call   102ec0 <getint>
  103133:	83 c4 10             	add    $0x10,%esp
  103136:	89 45 e0             	mov    %eax,-0x20(%ebp)
  103139:	89 55 e4             	mov    %edx,-0x1c(%ebp)
  10313c:	8b 45 e0             	mov    -0x20(%ebp),%eax
  10313f:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  103142:	85 d2                	test   %edx,%edx
  103144:	79 23                	jns    103169 <.L28+0x45>
  103146:	83 ec 08             	sub    $0x8,%esp
  103149:	ff 75 0c             	push   0xc(%ebp)
  10314c:	6a 2d                	push   $0x2d
  10314e:	8b 45 08             	mov    0x8(%ebp),%eax
  103151:	ff d0                	call   *%eax
  103153:	83 c4 10             	add    $0x10,%esp
  103156:	8b 45 e0             	mov    -0x20(%ebp),%eax
  103159:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  10315c:	f7 d8                	neg    %eax
  10315e:	83 d2 00             	adc    $0x0,%edx
  103161:	f7 da                	neg    %edx
  103163:	89 45 e0             	mov    %eax,-0x20(%ebp)
  103166:	89 55 e4             	mov    %edx,-0x1c(%ebp)
  103169:	c7 45 dc 0a 00 00 00 	movl   $0xa,-0x24(%ebp)
  103170:	eb 7e                	jmp    1031f0 <.L22+0x1f>

00103172 <.L24>:
  103172:	83 ec 08             	sub    $0x8,%esp
  103175:	ff 75 d8             	push   -0x28(%ebp)
  103178:	8d 45 14             	lea    0x14(%ebp),%eax
  10317b:	50                   	push   %eax
  10317c:	e8 e6 fc ff ff       	call   102e67 <getuint>
  103181:	83 c4 10             	add    $0x10,%esp
  103184:	89 45 e0             	mov    %eax,-0x20(%ebp)
  103187:	89 55 e4             	mov    %edx,-0x1c(%ebp)
  10318a:	c7 45 dc 0a 00 00 00 	movl   $0xa,-0x24(%ebp)
  103191:	eb 5d                	jmp    1031f0 <.L22+0x1f>

00103193 <.L26>:
  103193:	83 ec 08             	sub    $0x8,%esp
  103196:	ff 75 0c             	push   0xc(%ebp)
  103199:	6a 30                	push   $0x30
  10319b:	8b 45 08             	mov    0x8(%ebp),%eax
  10319e:	ff d0                	call   *%eax
  1031a0:	83 c4 10             	add    $0x10,%esp
  1031a3:	83 ec 08             	sub    $0x8,%esp
  1031a6:	ff 75 0c             	push   0xc(%ebp)
  1031a9:	6a 78                	push   $0x78
  1031ab:	8b 45 08             	mov    0x8(%ebp),%eax
  1031ae:	ff d0                	call   *%eax
  1031b0:	83 c4 10             	add    $0x10,%esp
  1031b3:	8b 45 14             	mov    0x14(%ebp),%eax
  1031b6:	8d 50 04             	lea    0x4(%eax),%edx
  1031b9:	89 55 14             	mov    %edx,0x14(%ebp)
  1031bc:	8b 00                	mov    (%eax),%eax
  1031be:	89 45 e0             	mov    %eax,-0x20(%ebp)
  1031c1:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
  1031c8:	c7 45 dc 10 00 00 00 	movl   $0x10,-0x24(%ebp)
  1031cf:	eb 1f                	jmp    1031f0 <.L22+0x1f>

001031d1 <.L22>:
  1031d1:	83 ec 08             	sub    $0x8,%esp
  1031d4:	ff 75 d8             	push   -0x28(%ebp)
  1031d7:	8d 45 14             	lea    0x14(%ebp),%eax
  1031da:	50                   	push   %eax
  1031db:	e8 87 fc ff ff       	call   102e67 <getuint>
  1031e0:	83 c4 10             	add    $0x10,%esp
  1031e3:	89 45 e0             	mov    %eax,-0x20(%ebp)
  1031e6:	89 55 e4             	mov    %edx,-0x1c(%ebp)
  1031e9:	c7 45 dc 10 00 00 00 	movl   $0x10,-0x24(%ebp)
  1031f0:	0f be 55 cb          	movsbl -0x35(%ebp),%edx
  1031f4:	8b 45 dc             	mov    -0x24(%ebp),%eax
  1031f7:	83 ec 04             	sub    $0x4,%esp
  1031fa:	52                   	push   %edx
  1031fb:	ff 75 d4             	push   -0x2c(%ebp)
  1031fe:	50                   	push   %eax
  1031ff:	ff 75 e4             	push   -0x1c(%ebp)
  103202:	ff 75 e0             	push   -0x20(%ebp)
  103205:	ff 75 0c             	push   0xc(%ebp)
  103208:	ff 75 08             	push   0x8(%ebp)
  10320b:	e8 8c fb ff ff       	call   102d9c <printnum>
  103210:	83 c4 20             	add    $0x20,%esp
  103213:	eb 39                	jmp    10324e <.L21+0x28>

00103215 <.L35>:
  103215:	83 ec 08             	sub    $0x8,%esp
  103218:	ff 75 0c             	push   0xc(%ebp)
  10321b:	53                   	push   %ebx
  10321c:	8b 45 08             	mov    0x8(%ebp),%eax
  10321f:	ff d0                	call   *%eax
  103221:	83 c4 10             	add    $0x10,%esp
  103224:	eb 28                	jmp    10324e <.L21+0x28>

00103226 <.L21>:
  103226:	83 ec 08             	sub    $0x8,%esp
  103229:	ff 75 0c             	push   0xc(%ebp)
  10322c:	6a 25                	push   $0x25
  10322e:	8b 45 08             	mov    0x8(%ebp),%eax
  103231:	ff d0                	call   *%eax
  103233:	83 c4 10             	add    $0x10,%esp
  103236:	83 6d 10 01          	subl   $0x1,0x10(%ebp)
  10323a:	eb 04                	jmp    103240 <.L21+0x1a>
  10323c:	83 6d 10 01          	subl   $0x1,0x10(%ebp)
  103240:	8b 45 10             	mov    0x10(%ebp),%eax
  103243:	83 e8 01             	sub    $0x1,%eax
  103246:	0f b6 00             	movzbl (%eax),%eax
  103249:	3c 25                	cmp    $0x25,%al
  10324b:	75 ef                	jne    10323c <.L21+0x16>
  10324d:	90                   	nop
  10324e:	e9 eb fc ff ff       	jmp    102f3e <vprintfmt+0x2d>
  103253:	90                   	nop
  103254:	8d 65 f4             	lea    -0xc(%ebp),%esp
  103257:	5b                   	pop    %ebx
  103258:	5e                   	pop    %esi
  103259:	5f                   	pop    %edi
  10325a:	5d                   	pop    %ebp
  10325b:	c3                   	ret

0010325c <__x86.get_pc_thunk.si>:
  10325c:	8b 34 24             	mov    (%esp),%esi
  10325f:	c3                   	ret

00103260 <__x86.get_pc_thunk.di>:
  103260:	8b 3c 24             	mov    (%esp),%edi
  103263:	c3                   	ret

00103264 <seg_init>:
  103264:	55                   	push   %ebp
  103265:	89 e5                	mov    %esp,%ebp
  103267:	53                   	push   %ebx
  103268:	83 ec 14             	sub    $0x14,%esp
  10326b:	e8 50 d1 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  103270:	81 c3 84 9d 00 00    	add    $0x9d84,%ebx
  103276:	8d 83 0c 80 00 00    	lea    0x800c(%ebx),%eax
  10327c:	c7 c2 e0 28 11 00    	mov    $0x1128e0,%edx
  103282:	29 d0                	sub    %edx,%eax
  103284:	83 ec 08             	sub    $0x8,%esp
  103287:	50                   	push   %eax
  103288:	c7 c0 e0 28 11 00    	mov    $0x1128e0,%eax
  10328e:	50                   	push   %eax
  10328f:	e8 b5 f7 ff ff       	call   102a49 <memzero>
  103294:	83 c4 10             	add    $0x10,%esp
  103297:	c7 c0 00 f0 99 01    	mov    $0x199f000,%eax
  10329d:	89 c2                	mov    %eax,%edx
  10329f:	8d 83 0c 80 00 00    	lea    0x800c(%ebx),%eax
  1032a5:	29 c2                	sub    %eax,%edx
  1032a7:	8d 82 00 f0 ff ff    	lea    -0x1000(%edx),%eax
  1032ad:	89 c2                	mov    %eax,%edx
  1032af:	8d 83 0c 90 00 00    	lea    0x900c(%ebx),%eax
  1032b5:	83 ec 08             	sub    $0x8,%esp
  1032b8:	52                   	push   %edx
  1032b9:	50                   	push   %eax
  1032ba:	e8 8a f7 ff ff       	call   102a49 <memzero>
  1032bf:	83 c4 10             	add    $0x10,%esp
  1032c2:	c7 83 0c 90 04 00 00 	movl   $0x0,0x4900c(%ebx)
  1032c9:	00 00 00 
  1032cc:	c7 83 10 90 04 00 00 	movl   $0x0,0x49010(%ebx)
  1032d3:	00 00 00 
  1032d6:	66 c7 83 14 90 04 00 	movw   $0xffff,0x49014(%ebx)
  1032dd:	ff ff 
  1032df:	66 c7 83 16 90 04 00 	movw   $0x0,0x49016(%ebx)
  1032e6:	00 00 
  1032e8:	c6 83 18 90 04 00 00 	movb   $0x0,0x49018(%ebx)
  1032ef:	0f b6 83 19 90 04 00 	movzbl 0x49019(%ebx),%eax
  1032f6:	83 e0 f0             	and    $0xfffffff0,%eax
  1032f9:	83 c8 0a             	or     $0xa,%eax
  1032fc:	88 83 19 90 04 00    	mov    %al,0x49019(%ebx)
  103302:	0f b6 83 19 90 04 00 	movzbl 0x49019(%ebx),%eax
  103309:	83 c8 10             	or     $0x10,%eax
  10330c:	88 83 19 90 04 00    	mov    %al,0x49019(%ebx)
  103312:	0f b6 83 19 90 04 00 	movzbl 0x49019(%ebx),%eax
  103319:	83 e0 9f             	and    $0xffffff9f,%eax
  10331c:	88 83 19 90 04 00    	mov    %al,0x49019(%ebx)
  103322:	0f b6 83 19 90 04 00 	movzbl 0x49019(%ebx),%eax
  103329:	83 c8 80             	or     $0xffffff80,%eax
  10332c:	88 83 19 90 04 00    	mov    %al,0x49019(%ebx)
  103332:	0f b6 83 1a 90 04 00 	movzbl 0x4901a(%ebx),%eax
  103339:	83 c8 0f             	or     $0xf,%eax
  10333c:	88 83 1a 90 04 00    	mov    %al,0x4901a(%ebx)
  103342:	0f b6 83 1a 90 04 00 	movzbl 0x4901a(%ebx),%eax
  103349:	83 e0 ef             	and    $0xffffffef,%eax
  10334c:	88 83 1a 90 04 00    	mov    %al,0x4901a(%ebx)
  103352:	0f b6 83 1a 90 04 00 	movzbl 0x4901a(%ebx),%eax
  103359:	83 e0 df             	and    $0xffffffdf,%eax
  10335c:	88 83 1a 90 04 00    	mov    %al,0x4901a(%ebx)
  103362:	0f b6 83 1a 90 04 00 	movzbl 0x4901a(%ebx),%eax
  103369:	83 c8 40             	or     $0x40,%eax
  10336c:	88 83 1a 90 04 00    	mov    %al,0x4901a(%ebx)
  103372:	0f b6 83 1a 90 04 00 	movzbl 0x4901a(%ebx),%eax
  103379:	83 c8 80             	or     $0xffffff80,%eax
  10337c:	88 83 1a 90 04 00    	mov    %al,0x4901a(%ebx)
  103382:	c6 83 1b 90 04 00 00 	movb   $0x0,0x4901b(%ebx)
  103389:	66 c7 83 1c 90 04 00 	movw   $0xffff,0x4901c(%ebx)
  103390:	ff ff 
  103392:	66 c7 83 1e 90 04 00 	movw   $0x0,0x4901e(%ebx)
  103399:	00 00 
  10339b:	c6 83 20 90 04 00 00 	movb   $0x0,0x49020(%ebx)
  1033a2:	0f b6 83 21 90 04 00 	movzbl 0x49021(%ebx),%eax
  1033a9:	83 e0 f0             	and    $0xfffffff0,%eax
  1033ac:	83 c8 02             	or     $0x2,%eax
  1033af:	88 83 21 90 04 00    	mov    %al,0x49021(%ebx)
  1033b5:	0f b6 83 21 90 04 00 	movzbl 0x49021(%ebx),%eax
  1033bc:	83 c8 10             	or     $0x10,%eax
  1033bf:	88 83 21 90 04 00    	mov    %al,0x49021(%ebx)
  1033c5:	0f b6 83 21 90 04 00 	movzbl 0x49021(%ebx),%eax
  1033cc:	83 e0 9f             	and    $0xffffff9f,%eax
  1033cf:	88 83 21 90 04 00    	mov    %al,0x49021(%ebx)
  1033d5:	0f b6 83 21 90 04 00 	movzbl 0x49021(%ebx),%eax
  1033dc:	83 c8 80             	or     $0xffffff80,%eax
  1033df:	88 83 21 90 04 00    	mov    %al,0x49021(%ebx)
  1033e5:	0f b6 83 22 90 04 00 	movzbl 0x49022(%ebx),%eax
  1033ec:	83 c8 0f             	or     $0xf,%eax
  1033ef:	88 83 22 90 04 00    	mov    %al,0x49022(%ebx)
  1033f5:	0f b6 83 22 90 04 00 	movzbl 0x49022(%ebx),%eax
  1033fc:	83 e0 ef             	and    $0xffffffef,%eax
  1033ff:	88 83 22 90 04 00    	mov    %al,0x49022(%ebx)
  103405:	0f b6 83 22 90 04 00 	movzbl 0x49022(%ebx),%eax
  10340c:	83 e0 df             	and    $0xffffffdf,%eax
  10340f:	88 83 22 90 04 00    	mov    %al,0x49022(%ebx)
  103415:	0f b6 83 22 90 04 00 	movzbl 0x49022(%ebx),%eax
  10341c:	83 c8 40             	or     $0x40,%eax
  10341f:	88 83 22 90 04 00    	mov    %al,0x49022(%ebx)
  103425:	0f b6 83 22 90 04 00 	movzbl 0x49022(%ebx),%eax
  10342c:	83 c8 80             	or     $0xffffff80,%eax
  10342f:	88 83 22 90 04 00    	mov    %al,0x49022(%ebx)
  103435:	c6 83 23 90 04 00 00 	movb   $0x0,0x49023(%ebx)
  10343c:	66 c7 83 24 90 04 00 	movw   $0xffff,0x49024(%ebx)
  103443:	ff ff 
  103445:	66 c7 83 26 90 04 00 	movw   $0x0,0x49026(%ebx)
  10344c:	00 00 
  10344e:	c6 83 28 90 04 00 00 	movb   $0x0,0x49028(%ebx)
  103455:	0f b6 83 29 90 04 00 	movzbl 0x49029(%ebx),%eax
  10345c:	83 e0 f0             	and    $0xfffffff0,%eax
  10345f:	83 c8 0a             	or     $0xa,%eax
  103462:	88 83 29 90 04 00    	mov    %al,0x49029(%ebx)
  103468:	0f b6 83 29 90 04 00 	movzbl 0x49029(%ebx),%eax
  10346f:	83 c8 10             	or     $0x10,%eax
  103472:	88 83 29 90 04 00    	mov    %al,0x49029(%ebx)
  103478:	0f b6 83 29 90 04 00 	movzbl 0x49029(%ebx),%eax
  10347f:	83 c8 60             	or     $0x60,%eax
  103482:	88 83 29 90 04 00    	mov    %al,0x49029(%ebx)
  103488:	0f b6 83 29 90 04 00 	movzbl 0x49029(%ebx),%eax
  10348f:	83 c8 80             	or     $0xffffff80,%eax
  103492:	88 83 29 90 04 00    	mov    %al,0x49029(%ebx)
  103498:	0f b6 83 2a 90 04 00 	movzbl 0x4902a(%ebx),%eax
  10349f:	83 c8 0f             	or     $0xf,%eax
  1034a2:	88 83 2a 90 04 00    	mov    %al,0x4902a(%ebx)
  1034a8:	0f b6 83 2a 90 04 00 	movzbl 0x4902a(%ebx),%eax
  1034af:	83 e0 ef             	and    $0xffffffef,%eax
  1034b2:	88 83 2a 90 04 00    	mov    %al,0x4902a(%ebx)
  1034b8:	0f b6 83 2a 90 04 00 	movzbl 0x4902a(%ebx),%eax
  1034bf:	83 e0 df             	and    $0xffffffdf,%eax
  1034c2:	88 83 2a 90 04 00    	mov    %al,0x4902a(%ebx)
  1034c8:	0f b6 83 2a 90 04 00 	movzbl 0x4902a(%ebx),%eax
  1034cf:	83 c8 40             	or     $0x40,%eax
  1034d2:	88 83 2a 90 04 00    	mov    %al,0x4902a(%ebx)
  1034d8:	0f b6 83 2a 90 04 00 	movzbl 0x4902a(%ebx),%eax
  1034df:	83 c8 80             	or     $0xffffff80,%eax
  1034e2:	88 83 2a 90 04 00    	mov    %al,0x4902a(%ebx)
  1034e8:	c6 83 2b 90 04 00 00 	movb   $0x0,0x4902b(%ebx)
  1034ef:	66 c7 83 2c 90 04 00 	movw   $0xffff,0x4902c(%ebx)
  1034f6:	ff ff 
  1034f8:	66 c7 83 2e 90 04 00 	movw   $0x0,0x4902e(%ebx)
  1034ff:	00 00 
  103501:	c6 83 30 90 04 00 00 	movb   $0x0,0x49030(%ebx)
  103508:	0f b6 83 31 90 04 00 	movzbl 0x49031(%ebx),%eax
  10350f:	83 e0 f0             	and    $0xfffffff0,%eax
  103512:	83 c8 02             	or     $0x2,%eax
  103515:	88 83 31 90 04 00    	mov    %al,0x49031(%ebx)
  10351b:	0f b6 83 31 90 04 00 	movzbl 0x49031(%ebx),%eax
  103522:	83 c8 10             	or     $0x10,%eax
  103525:	88 83 31 90 04 00    	mov    %al,0x49031(%ebx)
  10352b:	0f b6 83 31 90 04 00 	movzbl 0x49031(%ebx),%eax
  103532:	83 c8 60             	or     $0x60,%eax
  103535:	88 83 31 90 04 00    	mov    %al,0x49031(%ebx)
  10353b:	0f b6 83 31 90 04 00 	movzbl 0x49031(%ebx),%eax
  103542:	83 c8 80             	or     $0xffffff80,%eax
  103545:	88 83 31 90 04 00    	mov    %al,0x49031(%ebx)
  10354b:	0f b6 83 32 90 04 00 	movzbl 0x49032(%ebx),%eax
  103552:	83 c8 0f             	or     $0xf,%eax
  103555:	88 83 32 90 04 00    	mov    %al,0x49032(%ebx)
  10355b:	0f b6 83 32 90 04 00 	movzbl 0x49032(%ebx),%eax
  103562:	83 e0 ef             	and    $0xffffffef,%eax
  103565:	88 83 32 90 04 00    	mov    %al,0x49032(%ebx)
  10356b:	0f b6 83 32 90 04 00 	movzbl 0x49032(%ebx),%eax
  103572:	83 e0 df             	and    $0xffffffdf,%eax
  103575:	88 83 32 90 04 00    	mov    %al,0x49032(%ebx)
  10357b:	0f b6 83 32 90 04 00 	movzbl 0x49032(%ebx),%eax
  103582:	83 c8 40             	or     $0x40,%eax
  103585:	88 83 32 90 04 00    	mov    %al,0x49032(%ebx)
  10358b:	0f b6 83 32 90 04 00 	movzbl 0x49032(%ebx),%eax
  103592:	83 c8 80             	or     $0xffffff80,%eax
  103595:	88 83 32 90 04 00    	mov    %al,0x49032(%ebx)
  10359b:	c6 83 33 90 04 00 00 	movb   $0x0,0x49033(%ebx)
  1035a2:	8d 83 0c 80 00 00    	lea    0x800c(%ebx),%eax
  1035a8:	05 00 10 00 00       	add    $0x1000,%eax
  1035ad:	89 83 50 cb 04 00    	mov    %eax,0x4cb50(%ebx)
  1035b3:	66 c7 83 54 cb 04 00 	movw   $0x10,0x4cb54(%ebx)
  1035ba:	10 00 
  1035bc:	66 c7 83 34 90 04 00 	movw   $0xeb,0x49034(%ebx)
  1035c3:	eb 00 
  1035c5:	8d 83 4c cb 04 00    	lea    0x4cb4c(%ebx),%eax
  1035cb:	66 89 83 36 90 04 00 	mov    %ax,0x49036(%ebx)
  1035d2:	8d 83 4c cb 04 00    	lea    0x4cb4c(%ebx),%eax
  1035d8:	c1 e8 10             	shr    $0x10,%eax
  1035db:	88 83 38 90 04 00    	mov    %al,0x49038(%ebx)
  1035e1:	0f b6 83 39 90 04 00 	movzbl 0x49039(%ebx),%eax
  1035e8:	83 e0 f0             	and    $0xfffffff0,%eax
  1035eb:	83 c8 09             	or     $0x9,%eax
  1035ee:	88 83 39 90 04 00    	mov    %al,0x49039(%ebx)
  1035f4:	0f b6 83 39 90 04 00 	movzbl 0x49039(%ebx),%eax
  1035fb:	83 c8 10             	or     $0x10,%eax
  1035fe:	88 83 39 90 04 00    	mov    %al,0x49039(%ebx)
  103604:	0f b6 83 39 90 04 00 	movzbl 0x49039(%ebx),%eax
  10360b:	83 e0 9f             	and    $0xffffff9f,%eax
  10360e:	88 83 39 90 04 00    	mov    %al,0x49039(%ebx)
  103614:	0f b6 83 39 90 04 00 	movzbl 0x49039(%ebx),%eax
  10361b:	83 c8 80             	or     $0xffffff80,%eax
  10361e:	88 83 39 90 04 00    	mov    %al,0x49039(%ebx)
  103624:	0f b6 83 3a 90 04 00 	movzbl 0x4903a(%ebx),%eax
  10362b:	83 e0 f0             	and    $0xfffffff0,%eax
  10362e:	88 83 3a 90 04 00    	mov    %al,0x4903a(%ebx)
  103634:	0f b6 83 3a 90 04 00 	movzbl 0x4903a(%ebx),%eax
  10363b:	83 e0 ef             	and    $0xffffffef,%eax
  10363e:	88 83 3a 90 04 00    	mov    %al,0x4903a(%ebx)
  103644:	0f b6 83 3a 90 04 00 	movzbl 0x4903a(%ebx),%eax
  10364b:	83 e0 df             	and    $0xffffffdf,%eax
  10364e:	88 83 3a 90 04 00    	mov    %al,0x4903a(%ebx)
  103654:	0f b6 83 3a 90 04 00 	movzbl 0x4903a(%ebx),%eax
  10365b:	83 c8 40             	or     $0x40,%eax
  10365e:	88 83 3a 90 04 00    	mov    %al,0x4903a(%ebx)
  103664:	0f b6 83 3a 90 04 00 	movzbl 0x4903a(%ebx),%eax
  10366b:	83 e0 7f             	and    $0x7f,%eax
  10366e:	88 83 3a 90 04 00    	mov    %al,0x4903a(%ebx)
  103674:	8d 83 4c cb 04 00    	lea    0x4cb4c(%ebx),%eax
  10367a:	c1 e8 18             	shr    $0x18,%eax
  10367d:	88 83 3b 90 04 00    	mov    %al,0x4903b(%ebx)
  103683:	0f b6 83 39 90 04 00 	movzbl 0x49039(%ebx),%eax
  10368a:	83 e0 ef             	and    $0xffffffef,%eax
  10368d:	88 83 39 90 04 00    	mov    %al,0x49039(%ebx)
  103693:	66 c7 45 ee 2f 00    	movw   $0x2f,-0x12(%ebp)
  103699:	8d 83 0c 90 04 00    	lea    0x4900c(%ebx),%eax
  10369f:	89 45 f0             	mov    %eax,-0x10(%ebp)
  1036a2:	0f 01 55 ee          	lgdtl  -0x12(%ebp)
  1036a6:	b8 10 00 00 00       	mov    $0x10,%eax
  1036ab:	8e e8                	mov    %eax,%gs
  1036ad:	b8 10 00 00 00       	mov    $0x10,%eax
  1036b2:	8e e0                	mov    %eax,%fs
  1036b4:	b8 10 00 00 00       	mov    $0x10,%eax
  1036b9:	8e c0                	mov    %eax,%es
  1036bb:	b8 10 00 00 00       	mov    $0x10,%eax
  1036c0:	8e d8                	mov    %eax,%ds
  1036c2:	b8 10 00 00 00       	mov    $0x10,%eax
  1036c7:	8e d0                	mov    %eax,%ss
  1036c9:	ea d0 36 10 00 08 00 	ljmp   $0x8,$0x1036d0
  1036d0:	83 ec 0c             	sub    $0xc,%esp
  1036d3:	6a 00                	push   $0x0
  1036d5:	e8 70 01 00 00       	call   10384a <lldt>
  1036da:	83 c4 10             	add    $0x10,%esp
  1036dd:	83 ec 0c             	sub    $0xc,%esp
  1036e0:	6a 28                	push   $0x28
  1036e2:	e8 2f 03 00 00       	call   103a16 <ltr>
  1036e7:	83 c4 10             	add    $0x10,%esp
  1036ea:	83 ec 08             	sub    $0x8,%esp
  1036ed:	68 00 3b 00 00       	push   $0x3b00
  1036f2:	8d 83 4c 90 04 00    	lea    0x4904c(%ebx),%eax
  1036f8:	50                   	push   %eax
  1036f9:	e8 4b f3 ff ff       	call   102a49 <memzero>
  1036fe:	83 c4 10             	add    $0x10,%esp
  103701:	83 ec 08             	sub    $0x8,%esp
  103704:	68 00 00 04 00       	push   $0x40000
  103709:	8d 83 0c 90 00 00    	lea    0x900c(%ebx),%eax
  10370f:	50                   	push   %eax
  103710:	e8 34 f3 ff ff       	call   102a49 <memzero>
  103715:	83 c4 10             	add    $0x10,%esp
  103718:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  10371f:	e9 9d 00 00 00       	jmp    1037c1 <seg_init+0x55d>
  103724:	8b 45 f4             	mov    -0xc(%ebp),%eax
  103727:	c1 e0 0c             	shl    $0xc,%eax
  10372a:	89 c2                	mov    %eax,%edx
  10372c:	8d 83 0c 90 00 00    	lea    0x900c(%ebx),%eax
  103732:	01 d0                	add    %edx,%eax
  103734:	8d 90 00 10 00 00    	lea    0x1000(%eax),%edx
  10373a:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  10373d:	8d 83 50 90 04 00    	lea    0x49050(%ebx),%eax
  103743:	69 c9 ec 00 00 00    	imul   $0xec,%ecx,%ecx
  103749:	01 c8                	add    %ecx,%eax
  10374b:	89 10                	mov    %edx,(%eax)
  10374d:	8b 55 f4             	mov    -0xc(%ebp),%edx
  103750:	8d 83 54 90 04 00    	lea    0x49054(%ebx),%eax
  103756:	69 d2 ec 00 00 00    	imul   $0xec,%edx,%edx
  10375c:	01 d0                	add    %edx,%eax
  10375e:	66 c7 00 10 00       	movw   $0x10,(%eax)
  103763:	8b 55 f4             	mov    -0xc(%ebp),%edx
  103766:	8d 83 52 90 04 00    	lea    0x49052(%ebx),%eax
  10376c:	69 d2 ec 00 00 00    	imul   $0xec,%edx,%edx
  103772:	01 d0                	add    %edx,%eax
  103774:	83 c0 60             	add    $0x60,%eax
  103777:	66 c7 00 68 00       	movw   $0x68,(%eax)
  10377c:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10377f:	69 c0 ec 00 00 00    	imul   $0xec,%eax,%eax
  103785:	8d 50 60             	lea    0x60(%eax),%edx
  103788:	8d 83 4c 90 04 00    	lea    0x4904c(%ebx),%eax
  10378e:	01 d0                	add    %edx,%eax
  103790:	83 c0 08             	add    $0x8,%eax
  103793:	83 ec 08             	sub    $0x8,%esp
  103796:	68 80 00 00 00       	push   $0x80
  10379b:	50                   	push   %eax
  10379c:	e8 a8 f2 ff ff       	call   102a49 <memzero>
  1037a1:	83 c4 10             	add    $0x10,%esp
  1037a4:	8b 55 f4             	mov    -0xc(%ebp),%edx
  1037a7:	8d 83 54 90 04 00    	lea    0x49054(%ebx),%eax
  1037ad:	69 d2 ec 00 00 00    	imul   $0xec,%edx,%edx
  1037b3:	01 d0                	add    %edx,%eax
  1037b5:	05 e0 00 00 00       	add    $0xe0,%eax
  1037ba:	c6 00 ff             	movb   $0xff,(%eax)
  1037bd:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1037c1:	83 7d f4 3f          	cmpl   $0x3f,-0xc(%ebp)
  1037c5:	0f 86 59 ff ff ff    	jbe    103724 <seg_init+0x4c0>
  1037cb:	90                   	nop
  1037cc:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1037cf:	c9                   	leave
  1037d0:	c3                   	ret

001037d1 <max>:
  1037d1:	55                   	push   %ebp
  1037d2:	89 e5                	mov    %esp,%ebp
  1037d4:	e8 df cb ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  1037d9:	05 1b 98 00 00       	add    $0x981b,%eax
  1037de:	8b 55 0c             	mov    0xc(%ebp),%edx
  1037e1:	8b 45 08             	mov    0x8(%ebp),%eax
  1037e4:	39 c2                	cmp    %eax,%edx
  1037e6:	0f 43 c2             	cmovae %edx,%eax
  1037e9:	5d                   	pop    %ebp
  1037ea:	c3                   	ret

001037eb <min>:
  1037eb:	55                   	push   %ebp
  1037ec:	89 e5                	mov    %esp,%ebp
  1037ee:	e8 c5 cb ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  1037f3:	05 01 98 00 00       	add    $0x9801,%eax
  1037f8:	8b 55 0c             	mov    0xc(%ebp),%edx
  1037fb:	8b 45 08             	mov    0x8(%ebp),%eax
  1037fe:	39 c2                	cmp    %eax,%edx
  103800:	0f 46 c2             	cmovbe %edx,%eax
  103803:	5d                   	pop    %ebp
  103804:	c3                   	ret

00103805 <rounddown>:
  103805:	55                   	push   %ebp
  103806:	89 e5                	mov    %esp,%ebp
  103808:	e8 ab cb ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  10380d:	05 e7 97 00 00       	add    $0x97e7,%eax
  103812:	8b 45 08             	mov    0x8(%ebp),%eax
  103815:	ba 00 00 00 00       	mov    $0x0,%edx
  10381a:	f7 75 0c             	divl   0xc(%ebp)
  10381d:	8b 45 08             	mov    0x8(%ebp),%eax
  103820:	29 d0                	sub    %edx,%eax
  103822:	5d                   	pop    %ebp
  103823:	c3                   	ret

00103824 <roundup>:
  103824:	55                   	push   %ebp
  103825:	89 e5                	mov    %esp,%ebp
  103827:	e8 8c cb ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  10382c:	05 c8 97 00 00       	add    $0x97c8,%eax
  103831:	8b 55 08             	mov    0x8(%ebp),%edx
  103834:	8b 45 0c             	mov    0xc(%ebp),%eax
  103837:	01 d0                	add    %edx,%eax
  103839:	83 e8 01             	sub    $0x1,%eax
  10383c:	ff 75 0c             	push   0xc(%ebp)
  10383f:	50                   	push   %eax
  103840:	e8 c0 ff ff ff       	call   103805 <rounddown>
  103845:	83 c4 08             	add    $0x8,%esp
  103848:	c9                   	leave
  103849:	c3                   	ret

0010384a <lldt>:
  10384a:	55                   	push   %ebp
  10384b:	89 e5                	mov    %esp,%ebp
  10384d:	83 ec 04             	sub    $0x4,%esp
  103850:	e8 63 cb ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  103855:	05 9f 97 00 00       	add    $0x979f,%eax
  10385a:	8b 45 08             	mov    0x8(%ebp),%eax
  10385d:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
  103861:	0f b7 45 fc          	movzwl -0x4(%ebp),%eax
  103865:	0f 00 d0             	lldt   %eax
  103868:	90                   	nop
  103869:	c9                   	leave
  10386a:	c3                   	ret

0010386b <cli>:
  10386b:	55                   	push   %ebp
  10386c:	89 e5                	mov    %esp,%ebp
  10386e:	e8 45 cb ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  103873:	05 81 97 00 00       	add    $0x9781,%eax
  103878:	fa                   	cli
  103879:	90                   	nop
  10387a:	5d                   	pop    %ebp
  10387b:	c3                   	ret

0010387c <sti>:
  10387c:	55                   	push   %ebp
  10387d:	89 e5                	mov    %esp,%ebp
  10387f:	e8 34 cb ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  103884:	05 70 97 00 00       	add    $0x9770,%eax
  103889:	fb                   	sti
  10388a:	90                   	nop
  10388b:	90                   	nop
  10388c:	5d                   	pop    %ebp
  10388d:	c3                   	ret

0010388e <rdmsr>:
  10388e:	55                   	push   %ebp
  10388f:	89 e5                	mov    %esp,%ebp
  103891:	83 ec 10             	sub    $0x10,%esp
  103894:	e8 1f cb ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  103899:	05 5b 97 00 00       	add    $0x975b,%eax
  10389e:	8b 45 08             	mov    0x8(%ebp),%eax
  1038a1:	89 c1                	mov    %eax,%ecx
  1038a3:	0f 32                	rdmsr
  1038a5:	89 45 f8             	mov    %eax,-0x8(%ebp)
  1038a8:	89 55 fc             	mov    %edx,-0x4(%ebp)
  1038ab:	8b 45 f8             	mov    -0x8(%ebp),%eax
  1038ae:	8b 55 fc             	mov    -0x4(%ebp),%edx
  1038b1:	c9                   	leave
  1038b2:	c3                   	ret

001038b3 <wrmsr>:
  1038b3:	55                   	push   %ebp
  1038b4:	89 e5                	mov    %esp,%ebp
  1038b6:	83 ec 08             	sub    $0x8,%esp
  1038b9:	e8 fa ca ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  1038be:	05 36 97 00 00       	add    $0x9736,%eax
  1038c3:	8b 45 0c             	mov    0xc(%ebp),%eax
  1038c6:	89 45 f8             	mov    %eax,-0x8(%ebp)
  1038c9:	8b 45 10             	mov    0x10(%ebp),%eax
  1038cc:	89 45 fc             	mov    %eax,-0x4(%ebp)
  1038cf:	8b 45 f8             	mov    -0x8(%ebp),%eax
  1038d2:	8b 55 fc             	mov    -0x4(%ebp),%edx
  1038d5:	8b 4d 08             	mov    0x8(%ebp),%ecx
  1038d8:	0f 30                	wrmsr
  1038da:	90                   	nop
  1038db:	c9                   	leave
  1038dc:	c3                   	ret

001038dd <halt>:
  1038dd:	55                   	push   %ebp
  1038de:	89 e5                	mov    %esp,%ebp
  1038e0:	e8 d3 ca ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  1038e5:	05 0f 97 00 00       	add    $0x970f,%eax
  1038ea:	f4                   	hlt
  1038eb:	90                   	nop
  1038ec:	5d                   	pop    %ebp
  1038ed:	c3                   	ret

001038ee <rdtsc>:
  1038ee:	55                   	push   %ebp
  1038ef:	89 e5                	mov    %esp,%ebp
  1038f1:	83 ec 10             	sub    $0x10,%esp
  1038f4:	e8 bf ca ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  1038f9:	05 fb 96 00 00       	add    $0x96fb,%eax
  1038fe:	0f 31                	rdtsc
  103900:	89 45 f8             	mov    %eax,-0x8(%ebp)
  103903:	89 55 fc             	mov    %edx,-0x4(%ebp)
  103906:	8b 45 f8             	mov    -0x8(%ebp),%eax
  103909:	8b 55 fc             	mov    -0x4(%ebp),%edx
  10390c:	c9                   	leave
  10390d:	c3                   	ret

0010390e <enable_sse>:
  10390e:	55                   	push   %ebp
  10390f:	89 e5                	mov    %esp,%ebp
  103911:	83 ec 20             	sub    $0x20,%esp
  103914:	e8 9f ca ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  103919:	05 db 96 00 00       	add    $0x96db,%eax
  10391e:	0f 20 e0             	mov    %cr4,%eax
  103921:	89 45 ec             	mov    %eax,-0x14(%ebp)
  103924:	8b 45 ec             	mov    -0x14(%ebp),%eax
  103927:	80 cc 06             	or     $0x6,%ah
  10392a:	89 45 fc             	mov    %eax,-0x4(%ebp)
  10392d:	0f ae f0             	mfence
  103930:	8b 45 fc             	mov    -0x4(%ebp),%eax
  103933:	89 45 f0             	mov    %eax,-0x10(%ebp)
  103936:	8b 45 f0             	mov    -0x10(%ebp),%eax
  103939:	0f 22 e0             	mov    %eax,%cr4
  10393c:	90                   	nop
  10393d:	0f 20 c0             	mov    %cr0,%eax
  103940:	89 45 f4             	mov    %eax,-0xc(%ebp)
  103943:	8b 45 f4             	mov    -0xc(%ebp),%eax
  103946:	83 c8 02             	or     $0x2,%eax
  103949:	89 45 f8             	mov    %eax,-0x8(%ebp)
  10394c:	0f ae f0             	mfence
  10394f:	83 65 f8 f3          	andl   $0xfffffff3,-0x8(%ebp)
  103953:	90                   	nop
  103954:	c9                   	leave
  103955:	c3                   	ret

00103956 <cpuid>:
  103956:	55                   	push   %ebp
  103957:	89 e5                	mov    %esp,%ebp
  103959:	53                   	push   %ebx
  10395a:	83 ec 10             	sub    $0x10,%esp
  10395d:	e8 56 ca ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  103962:	05 92 96 00 00       	add    $0x9692,%eax
  103967:	8b 45 08             	mov    0x8(%ebp),%eax
  10396a:	0f a2                	cpuid
  10396c:	89 45 f8             	mov    %eax,-0x8(%ebp)
  10396f:	89 5d f4             	mov    %ebx,-0xc(%ebp)
  103972:	89 4d f0             	mov    %ecx,-0x10(%ebp)
  103975:	89 55 ec             	mov    %edx,-0x14(%ebp)
  103978:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
  10397c:	74 08                	je     103986 <cpuid+0x30>
  10397e:	8b 45 0c             	mov    0xc(%ebp),%eax
  103981:	8b 55 f8             	mov    -0x8(%ebp),%edx
  103984:	89 10                	mov    %edx,(%eax)
  103986:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
  10398a:	74 08                	je     103994 <cpuid+0x3e>
  10398c:	8b 45 10             	mov    0x10(%ebp),%eax
  10398f:	8b 55 f4             	mov    -0xc(%ebp),%edx
  103992:	89 10                	mov    %edx,(%eax)
  103994:	83 7d 14 00          	cmpl   $0x0,0x14(%ebp)
  103998:	74 08                	je     1039a2 <cpuid+0x4c>
  10399a:	8b 45 14             	mov    0x14(%ebp),%eax
  10399d:	8b 55 f0             	mov    -0x10(%ebp),%edx
  1039a0:	89 10                	mov    %edx,(%eax)
  1039a2:	83 7d 18 00          	cmpl   $0x0,0x18(%ebp)
  1039a6:	74 08                	je     1039b0 <cpuid+0x5a>
  1039a8:	8b 45 18             	mov    0x18(%ebp),%eax
  1039ab:	8b 55 ec             	mov    -0x14(%ebp),%edx
  1039ae:	89 10                	mov    %edx,(%eax)
  1039b0:	90                   	nop
  1039b1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1039b4:	c9                   	leave
  1039b5:	c3                   	ret

001039b6 <rcr3>:
  1039b6:	55                   	push   %ebp
  1039b7:	89 e5                	mov    %esp,%ebp
  1039b9:	83 ec 10             	sub    $0x10,%esp
  1039bc:	e8 f7 c9 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  1039c1:	05 33 96 00 00       	add    $0x9633,%eax
  1039c6:	0f 20 d8             	mov    %cr3,%eax
  1039c9:	89 45 fc             	mov    %eax,-0x4(%ebp)
  1039cc:	8b 45 fc             	mov    -0x4(%ebp),%eax
  1039cf:	c9                   	leave
  1039d0:	c3                   	ret

001039d1 <outl>:
  1039d1:	55                   	push   %ebp
  1039d2:	89 e5                	mov    %esp,%ebp
  1039d4:	e8 df c9 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  1039d9:	05 1b 96 00 00       	add    $0x961b,%eax
  1039de:	8b 45 0c             	mov    0xc(%ebp),%eax
  1039e1:	8b 55 08             	mov    0x8(%ebp),%edx
  1039e4:	ef                   	out    %eax,(%dx)
  1039e5:	90                   	nop
  1039e6:	5d                   	pop    %ebp
  1039e7:	c3                   	ret

001039e8 <inl>:
  1039e8:	55                   	push   %ebp
  1039e9:	89 e5                	mov    %esp,%ebp
  1039eb:	83 ec 10             	sub    $0x10,%esp
  1039ee:	e8 c5 c9 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  1039f3:	05 01 96 00 00       	add    $0x9601,%eax
  1039f8:	8b 45 08             	mov    0x8(%ebp),%eax
  1039fb:	89 c2                	mov    %eax,%edx
  1039fd:	ed                   	in     (%dx),%eax
  1039fe:	89 45 fc             	mov    %eax,-0x4(%ebp)
  103a01:	8b 45 fc             	mov    -0x4(%ebp),%eax
  103a04:	c9                   	leave
  103a05:	c3                   	ret

00103a06 <smp_wmb>:
  103a06:	55                   	push   %ebp
  103a07:	89 e5                	mov    %esp,%ebp
  103a09:	e8 aa c9 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  103a0e:	05 e6 95 00 00       	add    $0x95e6,%eax
  103a13:	90                   	nop
  103a14:	5d                   	pop    %ebp
  103a15:	c3                   	ret

00103a16 <ltr>:
  103a16:	55                   	push   %ebp
  103a17:	89 e5                	mov    %esp,%ebp
  103a19:	83 ec 04             	sub    $0x4,%esp
  103a1c:	e8 97 c9 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  103a21:	05 d3 95 00 00       	add    $0x95d3,%eax
  103a26:	8b 45 08             	mov    0x8(%ebp),%eax
  103a29:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
  103a2d:	0f b7 45 fc          	movzwl -0x4(%ebp),%eax
  103a31:	0f 00 d8             	ltr    %eax
  103a34:	90                   	nop
  103a35:	c9                   	leave
  103a36:	c3                   	ret

00103a37 <lcr0>:
  103a37:	55                   	push   %ebp
  103a38:	89 e5                	mov    %esp,%ebp
  103a3a:	e8 79 c9 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  103a3f:	05 b5 95 00 00       	add    $0x95b5,%eax
  103a44:	8b 45 08             	mov    0x8(%ebp),%eax
  103a47:	0f 22 c0             	mov    %eax,%cr0
  103a4a:	90                   	nop
  103a4b:	5d                   	pop    %ebp
  103a4c:	c3                   	ret

00103a4d <rcr0>:
  103a4d:	55                   	push   %ebp
  103a4e:	89 e5                	mov    %esp,%ebp
  103a50:	83 ec 10             	sub    $0x10,%esp
  103a53:	e8 60 c9 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  103a58:	05 9c 95 00 00       	add    $0x959c,%eax
  103a5d:	0f 20 c0             	mov    %cr0,%eax
  103a60:	89 45 fc             	mov    %eax,-0x4(%ebp)
  103a63:	8b 45 fc             	mov    -0x4(%ebp),%eax
  103a66:	c9                   	leave
  103a67:	c3                   	ret

00103a68 <rcr2>:
  103a68:	55                   	push   %ebp
  103a69:	89 e5                	mov    %esp,%ebp
  103a6b:	83 ec 10             	sub    $0x10,%esp
  103a6e:	e8 45 c9 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  103a73:	05 81 95 00 00       	add    $0x9581,%eax
  103a78:	0f 20 d0             	mov    %cr2,%eax
  103a7b:	89 45 fc             	mov    %eax,-0x4(%ebp)
  103a7e:	8b 45 fc             	mov    -0x4(%ebp),%eax
  103a81:	c9                   	leave
  103a82:	c3                   	ret

00103a83 <lcr3>:
  103a83:	55                   	push   %ebp
  103a84:	89 e5                	mov    %esp,%ebp
  103a86:	e8 2d c9 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  103a8b:	05 69 95 00 00       	add    $0x9569,%eax
  103a90:	8b 45 08             	mov    0x8(%ebp),%eax
  103a93:	0f 22 d8             	mov    %eax,%cr3
  103a96:	90                   	nop
  103a97:	5d                   	pop    %ebp
  103a98:	c3                   	ret

00103a99 <lcr4>:
  103a99:	55                   	push   %ebp
  103a9a:	89 e5                	mov    %esp,%ebp
  103a9c:	e8 17 c9 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  103aa1:	05 53 95 00 00       	add    $0x9553,%eax
  103aa6:	8b 45 08             	mov    0x8(%ebp),%eax
  103aa9:	0f 22 e0             	mov    %eax,%cr4
  103aac:	90                   	nop
  103aad:	5d                   	pop    %ebp
  103aae:	c3                   	ret

00103aaf <rcr4>:
  103aaf:	55                   	push   %ebp
  103ab0:	89 e5                	mov    %esp,%ebp
  103ab2:	83 ec 10             	sub    $0x10,%esp
  103ab5:	e8 fe c8 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  103aba:	05 3a 95 00 00       	add    $0x953a,%eax
  103abf:	0f 20 e0             	mov    %cr4,%eax
  103ac2:	89 45 fc             	mov    %eax,-0x4(%ebp)
  103ac5:	8b 45 fc             	mov    -0x4(%ebp),%eax
  103ac8:	c9                   	leave
  103ac9:	c3                   	ret

00103aca <inb>:
  103aca:	55                   	push   %ebp
  103acb:	89 e5                	mov    %esp,%ebp
  103acd:	83 ec 10             	sub    $0x10,%esp
  103ad0:	e8 e3 c8 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  103ad5:	05 1f 95 00 00       	add    $0x951f,%eax
  103ada:	8b 45 08             	mov    0x8(%ebp),%eax
  103add:	89 c2                	mov    %eax,%edx
  103adf:	ec                   	in     (%dx),%al
  103ae0:	88 45 ff             	mov    %al,-0x1(%ebp)
  103ae3:	0f b6 45 ff          	movzbl -0x1(%ebp),%eax
  103ae7:	c9                   	leave
  103ae8:	c3                   	ret

00103ae9 <insl>:
  103ae9:	55                   	push   %ebp
  103aea:	89 e5                	mov    %esp,%ebp
  103aec:	57                   	push   %edi
  103aed:	53                   	push   %ebx
  103aee:	e8 c5 c8 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  103af3:	05 01 95 00 00       	add    $0x9501,%eax
  103af8:	8b 55 08             	mov    0x8(%ebp),%edx
  103afb:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  103afe:	8b 45 10             	mov    0x10(%ebp),%eax
  103b01:	89 cb                	mov    %ecx,%ebx
  103b03:	89 df                	mov    %ebx,%edi
  103b05:	89 c1                	mov    %eax,%ecx
  103b07:	fc                   	cld
  103b08:	f2 6d                	repnz insl (%dx),%es:(%edi)
  103b0a:	89 c8                	mov    %ecx,%eax
  103b0c:	89 fb                	mov    %edi,%ebx
  103b0e:	89 5d 0c             	mov    %ebx,0xc(%ebp)
  103b11:	89 45 10             	mov    %eax,0x10(%ebp)
  103b14:	90                   	nop
  103b15:	5b                   	pop    %ebx
  103b16:	5f                   	pop    %edi
  103b17:	5d                   	pop    %ebp
  103b18:	c3                   	ret

00103b19 <outb>:
  103b19:	55                   	push   %ebp
  103b1a:	89 e5                	mov    %esp,%ebp
  103b1c:	83 ec 04             	sub    $0x4,%esp
  103b1f:	e8 94 c8 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  103b24:	05 d0 94 00 00       	add    $0x94d0,%eax
  103b29:	8b 45 0c             	mov    0xc(%ebp),%eax
  103b2c:	88 45 fc             	mov    %al,-0x4(%ebp)
  103b2f:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
  103b33:	8b 55 08             	mov    0x8(%ebp),%edx
  103b36:	ee                   	out    %al,(%dx)
  103b37:	90                   	nop
  103b38:	c9                   	leave
  103b39:	c3                   	ret

00103b3a <outsw>:
  103b3a:	55                   	push   %ebp
  103b3b:	89 e5                	mov    %esp,%ebp
  103b3d:	56                   	push   %esi
  103b3e:	53                   	push   %ebx
  103b3f:	e8 74 c8 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  103b44:	05 b0 94 00 00       	add    $0x94b0,%eax
  103b49:	8b 55 08             	mov    0x8(%ebp),%edx
  103b4c:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  103b4f:	8b 45 10             	mov    0x10(%ebp),%eax
  103b52:	89 cb                	mov    %ecx,%ebx
  103b54:	89 de                	mov    %ebx,%esi
  103b56:	89 c1                	mov    %eax,%ecx
  103b58:	fc                   	cld
  103b59:	f2 66 6f             	repnz outsw %ds:(%esi),(%dx)
  103b5c:	89 c8                	mov    %ecx,%eax
  103b5e:	89 f3                	mov    %esi,%ebx
  103b60:	89 5d 0c             	mov    %ebx,0xc(%ebp)
  103b63:	89 45 10             	mov    %eax,0x10(%ebp)
  103b66:	90                   	nop
  103b67:	5b                   	pop    %ebx
  103b68:	5e                   	pop    %esi
  103b69:	5d                   	pop    %ebp
  103b6a:	c3                   	ret

00103b6b <mon_help>:
  103b6b:	55                   	push   %ebp
  103b6c:	89 e5                	mov    %esp,%ebp
  103b6e:	56                   	push   %esi
  103b6f:	53                   	push   %ebx
  103b70:	83 ec 10             	sub    $0x10,%esp
  103b73:	e8 48 c8 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  103b78:	81 c3 7c 94 00 00    	add    $0x947c,%ebx
  103b7e:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  103b85:	eb 44                	jmp    103bcb <mon_help+0x60>
  103b87:	8b 55 f4             	mov    -0xc(%ebp),%edx
  103b8a:	8d 8b 30 05 00 00    	lea    0x530(%ebx),%ecx
  103b90:	89 d0                	mov    %edx,%eax
  103b92:	01 c0                	add    %eax,%eax
  103b94:	01 d0                	add    %edx,%eax
  103b96:	c1 e0 02             	shl    $0x2,%eax
  103b99:	01 c8                	add    %ecx,%eax
  103b9b:	8b 08                	mov    (%eax),%ecx
  103b9d:	8b 55 f4             	mov    -0xc(%ebp),%edx
  103ba0:	8d b3 2c 05 00 00    	lea    0x52c(%ebx),%esi
  103ba6:	89 d0                	mov    %edx,%eax
  103ba8:	01 c0                	add    %eax,%eax
  103baa:	01 d0                	add    %edx,%eax
  103bac:	c1 e0 02             	shl    $0x2,%eax
  103baf:	01 f0                	add    %esi,%eax
  103bb1:	8b 00                	mov    (%eax),%eax
  103bb3:	83 ec 04             	sub    $0x4,%esp
  103bb6:	51                   	push   %ecx
  103bb7:	50                   	push   %eax
  103bb8:	8d 83 4c b3 ff ff    	lea    -0x4cb4(%ebx),%eax
  103bbe:	50                   	push   %eax
  103bbf:	e8 a8 f1 ff ff       	call   102d6c <dprintf>
  103bc4:	83 c4 10             	add    $0x10,%esp
  103bc7:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  103bcb:	8b 45 f4             	mov    -0xc(%ebp),%eax
  103bce:	83 f8 02             	cmp    $0x2,%eax
  103bd1:	76 b4                	jbe    103b87 <mon_help+0x1c>
  103bd3:	b8 00 00 00 00       	mov    $0x0,%eax
  103bd8:	8d 65 f8             	lea    -0x8(%ebp),%esp
  103bdb:	5b                   	pop    %ebx
  103bdc:	5e                   	pop    %esi
  103bdd:	5d                   	pop    %ebp
  103bde:	c3                   	ret

00103bdf <mon_kerninfo>:
  103bdf:	55                   	push   %ebp
  103be0:	89 e5                	mov    %esp,%ebp
  103be2:	53                   	push   %ebx
  103be3:	83 ec 14             	sub    $0x14,%esp
  103be6:	e8 d5 c7 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  103beb:	81 c3 09 94 00 00    	add    $0x9409,%ebx
  103bf1:	83 ec 0c             	sub    $0xc,%esp
  103bf4:	8d 83 55 b3 ff ff    	lea    -0x4cab(%ebx),%eax
  103bfa:	50                   	push   %eax
  103bfb:	e8 6c f1 ff ff       	call   102d6c <dprintf>
  103c00:	83 c4 10             	add    $0x10,%esp
  103c03:	83 ec 08             	sub    $0x8,%esp
  103c06:	c7 c0 74 4b 10 00    	mov    $0x104b74,%eax
  103c0c:	50                   	push   %eax
  103c0d:	8d 83 6e b3 ff ff    	lea    -0x4c92(%ebx),%eax
  103c13:	50                   	push   %eax
  103c14:	e8 53 f1 ff ff       	call   102d6c <dprintf>
  103c19:	83 c4 10             	add    $0x10,%esp
  103c1c:	83 ec 08             	sub    $0x8,%esp
  103c1f:	c7 c0 56 75 10 00    	mov    $0x107556,%eax
  103c25:	50                   	push   %eax
  103c26:	8d 83 7d b3 ff ff    	lea    -0x4c83(%ebx),%eax
  103c2c:	50                   	push   %eax
  103c2d:	e8 3a f1 ff ff       	call   102d6c <dprintf>
  103c32:	83 c4 10             	add    $0x10,%esp
  103c35:	83 ec 08             	sub    $0x8,%esp
  103c38:	c7 c0 e0 28 11 00    	mov    $0x1128e0,%eax
  103c3e:	50                   	push   %eax
  103c3f:	8d 83 8c b3 ff ff    	lea    -0x4c74(%ebx),%eax
  103c45:	50                   	push   %eax
  103c46:	e8 21 f1 ff ff       	call   102d6c <dprintf>
  103c4b:	83 c4 10             	add    $0x10,%esp
  103c4e:	83 ec 08             	sub    $0x8,%esp
  103c51:	c7 c0 00 f0 99 01    	mov    $0x199f000,%eax
  103c57:	50                   	push   %eax
  103c58:	8d 83 9b b3 ff ff    	lea    -0x4c65(%ebx),%eax
  103c5e:	50                   	push   %eax
  103c5f:	e8 08 f1 ff ff       	call   102d6c <dprintf>
  103c64:	83 c4 10             	add    $0x10,%esp
  103c67:	c7 c0 00 f0 99 01    	mov    $0x199f000,%eax
  103c6d:	89 c1                	mov    %eax,%ecx
  103c6f:	c7 c0 74 4b 10 00    	mov    $0x104b74,%eax
  103c75:	89 c2                	mov    %eax,%edx
  103c77:	89 c8                	mov    %ecx,%eax
  103c79:	29 d0                	sub    %edx,%eax
  103c7b:	89 45 f4             	mov    %eax,-0xc(%ebp)
  103c7e:	c7 45 f0 00 04 00 00 	movl   $0x400,-0x10(%ebp)
  103c85:	8b 55 f4             	mov    -0xc(%ebp),%edx
  103c88:	8b 45 f0             	mov    -0x10(%ebp),%eax
  103c8b:	01 d0                	add    %edx,%eax
  103c8d:	83 e8 01             	sub    $0x1,%eax
  103c90:	89 45 ec             	mov    %eax,-0x14(%ebp)
  103c93:	8b 45 f0             	mov    -0x10(%ebp),%eax
  103c96:	89 45 e8             	mov    %eax,-0x18(%ebp)
  103c99:	8b 45 ec             	mov    -0x14(%ebp),%eax
  103c9c:	99                   	cltd
  103c9d:	f7 7d e8             	idivl  -0x18(%ebp)
  103ca0:	8b 45 ec             	mov    -0x14(%ebp),%eax
  103ca3:	29 d0                	sub    %edx,%eax
  103ca5:	8d 90 ff 03 00 00    	lea    0x3ff(%eax),%edx
  103cab:	85 c0                	test   %eax,%eax
  103cad:	0f 48 c2             	cmovs  %edx,%eax
  103cb0:	c1 f8 0a             	sar    $0xa,%eax
  103cb3:	83 ec 08             	sub    $0x8,%esp
  103cb6:	50                   	push   %eax
  103cb7:	8d 83 ac b3 ff ff    	lea    -0x4c54(%ebx),%eax
  103cbd:	50                   	push   %eax
  103cbe:	e8 a9 f0 ff ff       	call   102d6c <dprintf>
  103cc3:	83 c4 10             	add    $0x10,%esp
  103cc6:	b8 00 00 00 00       	mov    $0x0,%eax
  103ccb:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  103cce:	c9                   	leave
  103ccf:	c3                   	ret

00103cd0 <mon_backtrace>:
  103cd0:	55                   	push   %ebp
  103cd1:	89 e5                	mov    %esp,%ebp
  103cd3:	e8 e0 c6 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  103cd8:	05 1c 93 00 00       	add    $0x931c,%eax
  103cdd:	b8 00 00 00 00       	mov    $0x0,%eax
  103ce2:	5d                   	pop    %ebp
  103ce3:	c3                   	ret

00103ce4 <mon_start_user>:
  103ce4:	55                   	push   %ebp
  103ce5:	89 e5                	mov    %esp,%ebp
  103ce7:	53                   	push   %ebx
  103ce8:	83 ec 14             	sub    $0x14,%esp
  103ceb:	e8 d0 c6 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  103cf0:	81 c3 04 93 00 00    	add    $0x9304,%ebx
  103cf6:	8b 83 38 cc 04 00    	mov    0x4cc38(%ebx),%eax
  103cfc:	85 c0                	test   %eax,%eax
  103cfe:	74 1c                	je     103d1c <mon_start_user+0x38>
  103d00:	83 ec 0c             	sub    $0xc,%esp
  103d03:	8d 83 d8 b3 ff ff    	lea    -0x4c28(%ebx),%eax
  103d09:	50                   	push   %eax
  103d0a:	e8 5d f0 ff ff       	call   102d6c <dprintf>
  103d0f:	83 c4 10             	add    $0x10,%esp
  103d12:	b8 00 00 00 00       	mov    $0x0,%eax
  103d17:	e9 81 00 00 00       	jmp    103d9d <mon_start_user+0xb9>
  103d1c:	c7 c0 00 f0 10 00    	mov    $0x10f000,%eax
  103d22:	89 45 f4             	mov    %eax,-0xc(%ebp)
  103d25:	83 ec 0c             	sub    $0xc,%esp
  103d28:	6a 00                	push   $0x0
  103d2a:	e8 01 20 00 00       	call   105d30 <container_get_quota>
  103d2f:	83 c4 10             	add    $0x10,%esp
  103d32:	83 ec 08             	sub    $0x8,%esp
  103d35:	50                   	push   %eax
  103d36:	6a 00                	push   $0x0
  103d38:	e8 03 34 00 00       	call   107140 <alloc_mem_quota>
  103d3d:	83 c4 10             	add    $0x10,%esp
  103d40:	89 83 38 cc 04 00    	mov    %eax,0x4cc38(%ebx)
  103d46:	8b 83 38 cc 04 00    	mov    0x4cc38(%ebx),%eax
  103d4c:	83 ec 08             	sub    $0x8,%esp
  103d4f:	50                   	push   %eax
  103d50:	ff 75 f4             	push   -0xc(%ebp)
  103d53:	e8 48 05 00 00       	call   1042a0 <elf_load>
  103d58:	83 c4 10             	add    $0x10,%esp
  103d5b:	83 ec 08             	sub    $0x8,%esp
  103d5e:	ff 75 f4             	push   -0xc(%ebp)
  103d61:	8d 83 34 b4 ff ff    	lea    -0x4bcc(%ebx),%eax
  103d67:	50                   	push   %eax
  103d68:	e8 ff ef ff ff       	call   102d6c <dprintf>
  103d6d:	83 c4 10             	add    $0x10,%esp
  103d70:	8b 83 38 cc 04 00    	mov    0x4cc38(%ebx),%eax
  103d76:	83 ec 0c             	sub    $0xc,%esp
  103d79:	50                   	push   %eax
  103d7a:	e8 e1 23 00 00       	call   106160 <set_pdir_base>
  103d7f:	83 c4 10             	add    $0x10,%esp
  103d82:	83 ec 0c             	sub    $0xc,%esp
  103d85:	ff 75 f4             	push   -0xc(%ebp)
  103d88:	e8 d3 07 00 00       	call   104560 <elf_entry>
  103d8d:	83 c4 10             	add    $0x10,%esp
  103d90:	89 45 f0             	mov    %eax,-0x10(%ebp)
  103d93:	8b 45 f0             	mov    -0x10(%ebp),%eax
  103d96:	ff d0                	call   *%eax
  103d98:	b8 00 00 00 00       	mov    $0x0,%eax
  103d9d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  103da0:	c9                   	leave
  103da1:	c3                   	ret

00103da2 <runcmd>:
  103da2:	55                   	push   %ebp
  103da3:	89 e5                	mov    %esp,%ebp
  103da5:	53                   	push   %ebx
  103da6:	83 ec 54             	sub    $0x54,%esp
  103da9:	e8 12 c6 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  103dae:	81 c3 46 92 00 00    	add    $0x9246,%ebx
  103db4:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  103dbb:	8b 45 f4             	mov    -0xc(%ebp),%eax
  103dbe:	c7 44 85 b0 00 00 00 	movl   $0x0,-0x50(%ebp,%eax,4)
  103dc5:	00 
  103dc6:	eb 0c                	jmp    103dd4 <runcmd+0x32>
  103dc8:	8b 45 08             	mov    0x8(%ebp),%eax
  103dcb:	8d 50 01             	lea    0x1(%eax),%edx
  103dce:	89 55 08             	mov    %edx,0x8(%ebp)
  103dd1:	c6 00 00             	movb   $0x0,(%eax)
  103dd4:	8b 45 08             	mov    0x8(%ebp),%eax
  103dd7:	0f b6 00             	movzbl (%eax),%eax
  103dda:	84 c0                	test   %al,%al
  103ddc:	74 20                	je     103dfe <runcmd+0x5c>
  103dde:	8b 45 08             	mov    0x8(%ebp),%eax
  103de1:	0f b6 00             	movzbl (%eax),%eax
  103de4:	0f be c0             	movsbl %al,%eax
  103de7:	83 ec 08             	sub    $0x8,%esp
  103dea:	50                   	push   %eax
  103deb:	8d 83 4f b4 ff ff    	lea    -0x4bb1(%ebx),%eax
  103df1:	50                   	push   %eax
  103df2:	e8 15 ec ff ff       	call   102a0c <strchr>
  103df7:	83 c4 10             	add    $0x10,%esp
  103dfa:	85 c0                	test   %eax,%eax
  103dfc:	75 ca                	jne    103dc8 <runcmd+0x26>
  103dfe:	8b 45 08             	mov    0x8(%ebp),%eax
  103e01:	0f b6 00             	movzbl (%eax),%eax
  103e04:	84 c0                	test   %al,%al
  103e06:	74 69                	je     103e71 <runcmd+0xcf>
  103e08:	83 7d f4 0f          	cmpl   $0xf,-0xc(%ebp)
  103e0c:	75 1e                	jne    103e2c <runcmd+0x8a>
  103e0e:	83 ec 08             	sub    $0x8,%esp
  103e11:	6a 10                	push   $0x10
  103e13:	8d 83 54 b4 ff ff    	lea    -0x4bac(%ebx),%eax
  103e19:	50                   	push   %eax
  103e1a:	e8 4d ef ff ff       	call   102d6c <dprintf>
  103e1f:	83 c4 10             	add    $0x10,%esp
  103e22:	b8 00 00 00 00       	mov    $0x0,%eax
  103e27:	e9 e5 00 00 00       	jmp    103f11 <runcmd+0x16f>
  103e2c:	8b 45 f4             	mov    -0xc(%ebp),%eax
  103e2f:	8d 50 01             	lea    0x1(%eax),%edx
  103e32:	89 55 f4             	mov    %edx,-0xc(%ebp)
  103e35:	8b 55 08             	mov    0x8(%ebp),%edx
  103e38:	89 54 85 b0          	mov    %edx,-0x50(%ebp,%eax,4)
  103e3c:	eb 04                	jmp    103e42 <runcmd+0xa0>
  103e3e:	83 45 08 01          	addl   $0x1,0x8(%ebp)
  103e42:	8b 45 08             	mov    0x8(%ebp),%eax
  103e45:	0f b6 00             	movzbl (%eax),%eax
  103e48:	84 c0                	test   %al,%al
  103e4a:	74 88                	je     103dd4 <runcmd+0x32>
  103e4c:	8b 45 08             	mov    0x8(%ebp),%eax
  103e4f:	0f b6 00             	movzbl (%eax),%eax
  103e52:	0f be c0             	movsbl %al,%eax
  103e55:	83 ec 08             	sub    $0x8,%esp
  103e58:	50                   	push   %eax
  103e59:	8d 83 4f b4 ff ff    	lea    -0x4bb1(%ebx),%eax
  103e5f:	50                   	push   %eax
  103e60:	e8 a7 eb ff ff       	call   102a0c <strchr>
  103e65:	83 c4 10             	add    $0x10,%esp
  103e68:	85 c0                	test   %eax,%eax
  103e6a:	74 d2                	je     103e3e <runcmd+0x9c>
  103e6c:	e9 63 ff ff ff       	jmp    103dd4 <runcmd+0x32>
  103e71:	90                   	nop
  103e72:	8b 45 f4             	mov    -0xc(%ebp),%eax
  103e75:	c7 44 85 b0 00 00 00 	movl   $0x0,-0x50(%ebp,%eax,4)
  103e7c:	00 
  103e7d:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  103e81:	75 0a                	jne    103e8d <runcmd+0xeb>
  103e83:	b8 00 00 00 00       	mov    $0x0,%eax
  103e88:	e9 84 00 00 00       	jmp    103f11 <runcmd+0x16f>
  103e8d:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  103e94:	eb 58                	jmp    103eee <runcmd+0x14c>
  103e96:	8b 55 f0             	mov    -0x10(%ebp),%edx
  103e99:	8d 8b 2c 05 00 00    	lea    0x52c(%ebx),%ecx
  103e9f:	89 d0                	mov    %edx,%eax
  103ea1:	01 c0                	add    %eax,%eax
  103ea3:	01 d0                	add    %edx,%eax
  103ea5:	c1 e0 02             	shl    $0x2,%eax
  103ea8:	01 c8                	add    %ecx,%eax
  103eaa:	8b 10                	mov    (%eax),%edx
  103eac:	8b 45 b0             	mov    -0x50(%ebp),%eax
  103eaf:	83 ec 08             	sub    $0x8,%esp
  103eb2:	52                   	push   %edx
  103eb3:	50                   	push   %eax
  103eb4:	e8 0a eb ff ff       	call   1029c3 <strcmp>
  103eb9:	83 c4 10             	add    $0x10,%esp
  103ebc:	85 c0                	test   %eax,%eax
  103ebe:	75 2a                	jne    103eea <runcmd+0x148>
  103ec0:	8b 55 f0             	mov    -0x10(%ebp),%edx
  103ec3:	8d 8b 34 05 00 00    	lea    0x534(%ebx),%ecx
  103ec9:	89 d0                	mov    %edx,%eax
  103ecb:	01 c0                	add    %eax,%eax
  103ecd:	01 d0                	add    %edx,%eax
  103ecf:	c1 e0 02             	shl    $0x2,%eax
  103ed2:	01 c8                	add    %ecx,%eax
  103ed4:	8b 00                	mov    (%eax),%eax
  103ed6:	83 ec 04             	sub    $0x4,%esp
  103ed9:	ff 75 0c             	push   0xc(%ebp)
  103edc:	8d 55 b0             	lea    -0x50(%ebp),%edx
  103edf:	52                   	push   %edx
  103ee0:	ff 75 f4             	push   -0xc(%ebp)
  103ee3:	ff d0                	call   *%eax
  103ee5:	83 c4 10             	add    $0x10,%esp
  103ee8:	eb 27                	jmp    103f11 <runcmd+0x16f>
  103eea:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  103eee:	8b 45 f0             	mov    -0x10(%ebp),%eax
  103ef1:	83 f8 02             	cmp    $0x2,%eax
  103ef4:	76 a0                	jbe    103e96 <runcmd+0xf4>
  103ef6:	8b 45 b0             	mov    -0x50(%ebp),%eax
  103ef9:	83 ec 08             	sub    $0x8,%esp
  103efc:	50                   	push   %eax
  103efd:	8d 83 71 b4 ff ff    	lea    -0x4b8f(%ebx),%eax
  103f03:	50                   	push   %eax
  103f04:	e8 63 ee ff ff       	call   102d6c <dprintf>
  103f09:	83 c4 10             	add    $0x10,%esp
  103f0c:	b8 00 00 00 00       	mov    $0x0,%eax
  103f11:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  103f14:	c9                   	leave
  103f15:	c3                   	ret

00103f16 <monitor>:
  103f16:	55                   	push   %ebp
  103f17:	89 e5                	mov    %esp,%ebp
  103f19:	53                   	push   %ebx
  103f1a:	83 ec 14             	sub    $0x14,%esp
  103f1d:	e8 9e c4 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  103f22:	81 c3 d2 90 00 00    	add    $0x90d2,%ebx
  103f28:	83 ec 0c             	sub    $0xc,%esp
  103f2b:	8d 83 88 b4 ff ff    	lea    -0x4b78(%ebx),%eax
  103f31:	50                   	push   %eax
  103f32:	e8 35 ee ff ff       	call   102d6c <dprintf>
  103f37:	83 c4 10             	add    $0x10,%esp
  103f3a:	83 ec 0c             	sub    $0xc,%esp
  103f3d:	8d 83 b4 b4 ff ff    	lea    -0x4b4c(%ebx),%eax
  103f43:	50                   	push   %eax
  103f44:	e8 23 ee ff ff       	call   102d6c <dprintf>
  103f49:	83 c4 10             	add    $0x10,%esp
  103f4c:	83 ec 0c             	sub    $0xc,%esp
  103f4f:	8d 83 88 b4 ff ff    	lea    -0x4b78(%ebx),%eax
  103f55:	50                   	push   %eax
  103f56:	e8 11 ee ff ff       	call   102d6c <dprintf>
  103f5b:	83 c4 10             	add    $0x10,%esp
  103f5e:	83 ec 0c             	sub    $0xc,%esp
  103f61:	8d 83 e0 b4 ff ff    	lea    -0x4b20(%ebx),%eax
  103f67:	50                   	push   %eax
  103f68:	e8 ff ed ff ff       	call   102d6c <dprintf>
  103f6d:	83 c4 10             	add    $0x10,%esp
  103f70:	83 ec 0c             	sub    $0xc,%esp
  103f73:	8d 83 05 b5 ff ff    	lea    -0x4afb(%ebx),%eax
  103f79:	50                   	push   %eax
  103f7a:	e8 dd c5 ff ff       	call   10055c <readline>
  103f7f:	83 c4 10             	add    $0x10,%esp
  103f82:	89 45 f4             	mov    %eax,-0xc(%ebp)
  103f85:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  103f89:	74 e5                	je     103f70 <monitor+0x5a>
  103f8b:	83 ec 08             	sub    $0x8,%esp
  103f8e:	ff 75 08             	push   0x8(%ebp)
  103f91:	ff 75 f4             	push   -0xc(%ebp)
  103f94:	e8 09 fe ff ff       	call   103da2 <runcmd>
  103f99:	83 c4 10             	add    $0x10,%esp
  103f9c:	85 c0                	test   %eax,%eax
  103f9e:	78 02                	js     103fa2 <monitor+0x8c>
  103fa0:	eb ce                	jmp    103f70 <monitor+0x5a>
  103fa2:	90                   	nop
  103fa3:	90                   	nop
  103fa4:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  103fa7:	c9                   	leave
  103fa8:	c3                   	ret

00103fa9 <pt_copyin>:
  103fa9:	55                   	push   %ebp
  103faa:	89 e5                	mov    %esp,%ebp
  103fac:	53                   	push   %ebx
  103fad:	83 ec 14             	sub    $0x14,%esp
  103fb0:	e8 0b c4 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  103fb5:	81 c3 3f 90 00 00    	add    $0x903f,%ebx
  103fbb:	81 7d 0c ff ff ff 3f 	cmpl   $0x3fffffff,0xc(%ebp)
  103fc2:	76 0f                	jbe    103fd3 <pt_copyin+0x2a>
  103fc4:	8b 55 0c             	mov    0xc(%ebp),%edx
  103fc7:	8b 45 14             	mov    0x14(%ebp),%eax
  103fca:	01 d0                	add    %edx,%eax
  103fcc:	3d 00 00 00 f0       	cmp    $0xf0000000,%eax
  103fd1:	76 0a                	jbe    103fdd <pt_copyin+0x34>
  103fd3:	b8 00 00 00 00       	mov    $0x0,%eax
  103fd8:	e9 d7 00 00 00       	jmp    1040b4 <pt_copyin+0x10b>
  103fdd:	8b 55 10             	mov    0x10(%ebp),%edx
  103fe0:	8b 45 14             	mov    0x14(%ebp),%eax
  103fe3:	01 d0                	add    %edx,%eax
  103fe5:	3d 00 00 00 f0       	cmp    $0xf0000000,%eax
  103fea:	76 0a                	jbe    103ff6 <pt_copyin+0x4d>
  103fec:	b8 00 00 00 00       	mov    $0x0,%eax
  103ff1:	e9 be 00 00 00       	jmp    1040b4 <pt_copyin+0x10b>
  103ff6:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  103ffd:	e9 a5 00 00 00       	jmp    1040a7 <pt_copyin+0xfe>
  104002:	83 ec 08             	sub    $0x8,%esp
  104005:	ff 75 0c             	push   0xc(%ebp)
  104008:	ff 75 08             	push   0x8(%ebp)
  10400b:	e8 c0 25 00 00       	call   1065d0 <get_ptbl_entry_by_va>
  104010:	83 c4 10             	add    $0x10,%esp
  104013:	89 45 f0             	mov    %eax,-0x10(%ebp)
  104016:	8b 45 f0             	mov    -0x10(%ebp),%eax
  104019:	83 e0 01             	and    $0x1,%eax
  10401c:	85 c0                	test   %eax,%eax
  10401e:	75 27                	jne    104047 <pt_copyin+0x9e>
  104020:	83 ec 04             	sub    $0x4,%esp
  104023:	6a 07                	push   $0x7
  104025:	ff 75 0c             	push   0xc(%ebp)
  104028:	ff 75 08             	push   0x8(%ebp)
  10402b:	e8 c0 30 00 00       	call   1070f0 <alloc_page>
  104030:	83 c4 10             	add    $0x10,%esp
  104033:	83 ec 08             	sub    $0x8,%esp
  104036:	ff 75 0c             	push   0xc(%ebp)
  104039:	ff 75 08             	push   0x8(%ebp)
  10403c:	e8 8f 25 00 00       	call   1065d0 <get_ptbl_entry_by_va>
  104041:	83 c4 10             	add    $0x10,%esp
  104044:	89 45 f0             	mov    %eax,-0x10(%ebp)
  104047:	8b 45 f0             	mov    -0x10(%ebp),%eax
  10404a:	25 00 f0 ff ff       	and    $0xfffff000,%eax
  10404f:	89 c2                	mov    %eax,%edx
  104051:	8b 45 0c             	mov    0xc(%ebp),%eax
  104054:	25 ff 0f 00 00       	and    $0xfff,%eax
  104059:	09 d0                	or     %edx,%eax
  10405b:	89 45 f0             	mov    %eax,-0x10(%ebp)
  10405e:	8b 45 f0             	mov    -0x10(%ebp),%eax
  104061:	25 ff 0f 00 00       	and    $0xfff,%eax
  104066:	89 c2                	mov    %eax,%edx
  104068:	b8 00 10 00 00       	mov    $0x1000,%eax
  10406d:	29 d0                	sub    %edx,%eax
  10406f:	8b 55 14             	mov    0x14(%ebp),%edx
  104072:	39 c2                	cmp    %eax,%edx
  104074:	0f 46 c2             	cmovbe %edx,%eax
  104077:	89 45 ec             	mov    %eax,-0x14(%ebp)
  10407a:	8b 45 f0             	mov    -0x10(%ebp),%eax
  10407d:	83 ec 04             	sub    $0x4,%esp
  104080:	ff 75 ec             	push   -0x14(%ebp)
  104083:	50                   	push   %eax
  104084:	ff 75 10             	push   0x10(%ebp)
  104087:	e8 7d e8 ff ff       	call   102909 <memcpy>
  10408c:	83 c4 10             	add    $0x10,%esp
  10408f:	8b 45 ec             	mov    -0x14(%ebp),%eax
  104092:	29 45 14             	sub    %eax,0x14(%ebp)
  104095:	8b 45 ec             	mov    -0x14(%ebp),%eax
  104098:	01 45 0c             	add    %eax,0xc(%ebp)
  10409b:	8b 45 ec             	mov    -0x14(%ebp),%eax
  10409e:	01 45 10             	add    %eax,0x10(%ebp)
  1040a1:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1040a4:	01 45 f4             	add    %eax,-0xc(%ebp)
  1040a7:	83 7d 14 00          	cmpl   $0x0,0x14(%ebp)
  1040ab:	0f 85 51 ff ff ff    	jne    104002 <pt_copyin+0x59>
  1040b1:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1040b4:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1040b7:	c9                   	leave
  1040b8:	c3                   	ret

001040b9 <pt_copyout>:
  1040b9:	55                   	push   %ebp
  1040ba:	89 e5                	mov    %esp,%ebp
  1040bc:	53                   	push   %ebx
  1040bd:	83 ec 14             	sub    $0x14,%esp
  1040c0:	e8 fb c2 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  1040c5:	81 c3 2f 8f 00 00    	add    $0x8f2f,%ebx
  1040cb:	81 7d 10 ff ff ff 3f 	cmpl   $0x3fffffff,0x10(%ebp)
  1040d2:	76 0f                	jbe    1040e3 <pt_copyout+0x2a>
  1040d4:	8b 55 10             	mov    0x10(%ebp),%edx
  1040d7:	8b 45 14             	mov    0x14(%ebp),%eax
  1040da:	01 d0                	add    %edx,%eax
  1040dc:	3d 00 00 00 f0       	cmp    $0xf0000000,%eax
  1040e1:	76 0a                	jbe    1040ed <pt_copyout+0x34>
  1040e3:	b8 00 00 00 00       	mov    $0x0,%eax
  1040e8:	e9 d7 00 00 00       	jmp    1041c4 <pt_copyout+0x10b>
  1040ed:	8b 55 08             	mov    0x8(%ebp),%edx
  1040f0:	8b 45 14             	mov    0x14(%ebp),%eax
  1040f3:	01 d0                	add    %edx,%eax
  1040f5:	3d 00 00 00 f0       	cmp    $0xf0000000,%eax
  1040fa:	76 0a                	jbe    104106 <pt_copyout+0x4d>
  1040fc:	b8 00 00 00 00       	mov    $0x0,%eax
  104101:	e9 be 00 00 00       	jmp    1041c4 <pt_copyout+0x10b>
  104106:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  10410d:	e9 a5 00 00 00       	jmp    1041b7 <pt_copyout+0xfe>
  104112:	83 ec 08             	sub    $0x8,%esp
  104115:	ff 75 10             	push   0x10(%ebp)
  104118:	ff 75 0c             	push   0xc(%ebp)
  10411b:	e8 b0 24 00 00       	call   1065d0 <get_ptbl_entry_by_va>
  104120:	83 c4 10             	add    $0x10,%esp
  104123:	89 45 f0             	mov    %eax,-0x10(%ebp)
  104126:	8b 45 f0             	mov    -0x10(%ebp),%eax
  104129:	83 e0 01             	and    $0x1,%eax
  10412c:	85 c0                	test   %eax,%eax
  10412e:	75 27                	jne    104157 <pt_copyout+0x9e>
  104130:	83 ec 04             	sub    $0x4,%esp
  104133:	6a 07                	push   $0x7
  104135:	ff 75 10             	push   0x10(%ebp)
  104138:	ff 75 0c             	push   0xc(%ebp)
  10413b:	e8 b0 2f 00 00       	call   1070f0 <alloc_page>
  104140:	83 c4 10             	add    $0x10,%esp
  104143:	83 ec 08             	sub    $0x8,%esp
  104146:	ff 75 10             	push   0x10(%ebp)
  104149:	ff 75 0c             	push   0xc(%ebp)
  10414c:	e8 7f 24 00 00       	call   1065d0 <get_ptbl_entry_by_va>
  104151:	83 c4 10             	add    $0x10,%esp
  104154:	89 45 f0             	mov    %eax,-0x10(%ebp)
  104157:	8b 45 f0             	mov    -0x10(%ebp),%eax
  10415a:	25 00 f0 ff ff       	and    $0xfffff000,%eax
  10415f:	89 c2                	mov    %eax,%edx
  104161:	8b 45 10             	mov    0x10(%ebp),%eax
  104164:	25 ff 0f 00 00       	and    $0xfff,%eax
  104169:	09 d0                	or     %edx,%eax
  10416b:	89 45 f0             	mov    %eax,-0x10(%ebp)
  10416e:	8b 45 f0             	mov    -0x10(%ebp),%eax
  104171:	25 ff 0f 00 00       	and    $0xfff,%eax
  104176:	89 c2                	mov    %eax,%edx
  104178:	b8 00 10 00 00       	mov    $0x1000,%eax
  10417d:	29 d0                	sub    %edx,%eax
  10417f:	8b 55 14             	mov    0x14(%ebp),%edx
  104182:	39 c2                	cmp    %eax,%edx
  104184:	0f 46 c2             	cmovbe %edx,%eax
  104187:	89 45 ec             	mov    %eax,-0x14(%ebp)
  10418a:	8b 45 f0             	mov    -0x10(%ebp),%eax
  10418d:	83 ec 04             	sub    $0x4,%esp
  104190:	ff 75 ec             	push   -0x14(%ebp)
  104193:	ff 75 08             	push   0x8(%ebp)
  104196:	50                   	push   %eax
  104197:	e8 6d e7 ff ff       	call   102909 <memcpy>
  10419c:	83 c4 10             	add    $0x10,%esp
  10419f:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1041a2:	29 45 14             	sub    %eax,0x14(%ebp)
  1041a5:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1041a8:	01 45 10             	add    %eax,0x10(%ebp)
  1041ab:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1041ae:	01 45 08             	add    %eax,0x8(%ebp)
  1041b1:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1041b4:	01 45 f4             	add    %eax,-0xc(%ebp)
  1041b7:	83 7d 14 00          	cmpl   $0x0,0x14(%ebp)
  1041bb:	0f 85 51 ff ff ff    	jne    104112 <pt_copyout+0x59>
  1041c1:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1041c4:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1041c7:	c9                   	leave
  1041c8:	c3                   	ret

001041c9 <pt_memset>:
  1041c9:	55                   	push   %ebp
  1041ca:	89 e5                	mov    %esp,%ebp
  1041cc:	53                   	push   %ebx
  1041cd:	83 ec 24             	sub    $0x24,%esp
  1041d0:	e8 eb c1 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  1041d5:	81 c3 1f 8e 00 00    	add    $0x8e1f,%ebx
  1041db:	8b 45 10             	mov    0x10(%ebp),%eax
  1041de:	88 45 e4             	mov    %al,-0x1c(%ebp)
  1041e1:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  1041e8:	e9 a1 00 00 00       	jmp    10428e <pt_memset+0xc5>
  1041ed:	83 ec 08             	sub    $0x8,%esp
  1041f0:	ff 75 0c             	push   0xc(%ebp)
  1041f3:	ff 75 08             	push   0x8(%ebp)
  1041f6:	e8 d5 23 00 00       	call   1065d0 <get_ptbl_entry_by_va>
  1041fb:	83 c4 10             	add    $0x10,%esp
  1041fe:	89 45 f0             	mov    %eax,-0x10(%ebp)
  104201:	8b 45 f0             	mov    -0x10(%ebp),%eax
  104204:	83 e0 01             	and    $0x1,%eax
  104207:	85 c0                	test   %eax,%eax
  104209:	75 27                	jne    104232 <pt_memset+0x69>
  10420b:	83 ec 04             	sub    $0x4,%esp
  10420e:	6a 07                	push   $0x7
  104210:	ff 75 0c             	push   0xc(%ebp)
  104213:	ff 75 08             	push   0x8(%ebp)
  104216:	e8 d5 2e 00 00       	call   1070f0 <alloc_page>
  10421b:	83 c4 10             	add    $0x10,%esp
  10421e:	83 ec 08             	sub    $0x8,%esp
  104221:	ff 75 0c             	push   0xc(%ebp)
  104224:	ff 75 08             	push   0x8(%ebp)
  104227:	e8 a4 23 00 00       	call   1065d0 <get_ptbl_entry_by_va>
  10422c:	83 c4 10             	add    $0x10,%esp
  10422f:	89 45 f0             	mov    %eax,-0x10(%ebp)
  104232:	8b 45 f0             	mov    -0x10(%ebp),%eax
  104235:	25 00 f0 ff ff       	and    $0xfffff000,%eax
  10423a:	89 c2                	mov    %eax,%edx
  10423c:	8b 45 0c             	mov    0xc(%ebp),%eax
  10423f:	25 ff 0f 00 00       	and    $0xfff,%eax
  104244:	09 d0                	or     %edx,%eax
  104246:	89 45 f0             	mov    %eax,-0x10(%ebp)
  104249:	8b 45 f0             	mov    -0x10(%ebp),%eax
  10424c:	25 ff 0f 00 00       	and    $0xfff,%eax
  104251:	89 c2                	mov    %eax,%edx
  104253:	b8 00 10 00 00       	mov    $0x1000,%eax
  104258:	29 d0                	sub    %edx,%eax
  10425a:	8b 55 14             	mov    0x14(%ebp),%edx
  10425d:	39 c2                	cmp    %eax,%edx
  10425f:	0f 46 c2             	cmovbe %edx,%eax
  104262:	89 45 ec             	mov    %eax,-0x14(%ebp)
  104265:	0f be 55 e4          	movsbl -0x1c(%ebp),%edx
  104269:	8b 45 f0             	mov    -0x10(%ebp),%eax
  10426c:	83 ec 04             	sub    $0x4,%esp
  10426f:	ff 75 ec             	push   -0x14(%ebp)
  104272:	52                   	push   %edx
  104273:	50                   	push   %eax
  104274:	e8 32 e5 ff ff       	call   1027ab <memset>
  104279:	83 c4 10             	add    $0x10,%esp
  10427c:	8b 45 ec             	mov    -0x14(%ebp),%eax
  10427f:	29 45 14             	sub    %eax,0x14(%ebp)
  104282:	8b 45 ec             	mov    -0x14(%ebp),%eax
  104285:	01 45 0c             	add    %eax,0xc(%ebp)
  104288:	8b 45 ec             	mov    -0x14(%ebp),%eax
  10428b:	01 45 f4             	add    %eax,-0xc(%ebp)
  10428e:	83 7d 14 00          	cmpl   $0x0,0x14(%ebp)
  104292:	0f 85 55 ff ff ff    	jne    1041ed <pt_memset+0x24>
  104298:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10429b:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  10429e:	c9                   	leave
  10429f:	c3                   	ret

001042a0 <elf_load>:
  1042a0:	55                   	push   %ebp
  1042a1:	89 e5                	mov    %esp,%ebp
  1042a3:	53                   	push   %ebx
  1042a4:	83 ec 34             	sub    $0x34,%esp
  1042a7:	e8 14 c1 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  1042ac:	81 c3 48 8d 00 00    	add    $0x8d48,%ebx
  1042b2:	8b 45 08             	mov    0x8(%ebp),%eax
  1042b5:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  1042b8:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  1042bb:	89 45 e0             	mov    %eax,-0x20(%ebp)
  1042be:	8b 45 e0             	mov    -0x20(%ebp),%eax
  1042c1:	8b 00                	mov    (%eax),%eax
  1042c3:	3d 7f 45 4c 46       	cmp    $0x464c457f,%eax
  1042c8:	74 1f                	je     1042e9 <elf_load+0x49>
  1042ca:	8d 83 0c b5 ff ff    	lea    -0x4af4(%ebx),%eax
  1042d0:	50                   	push   %eax
  1042d1:	8d 83 25 b5 ff ff    	lea    -0x4adb(%ebx),%eax
  1042d7:	50                   	push   %eax
  1042d8:	6a 26                	push   $0x26
  1042da:	8d 83 42 b5 ff ff    	lea    -0x4abe(%ebx),%eax
  1042e0:	50                   	push   %eax
  1042e1:	e8 6e e8 ff ff       	call   102b54 <debug_panic>
  1042e6:	83 c4 10             	add    $0x10,%esp
  1042e9:	8b 45 e0             	mov    -0x20(%ebp),%eax
  1042ec:	0f b7 40 32          	movzwl 0x32(%eax),%eax
  1042f0:	66 85 c0             	test   %ax,%ax
  1042f3:	75 1f                	jne    104314 <elf_load+0x74>
  1042f5:	8d 83 54 b5 ff ff    	lea    -0x4aac(%ebx),%eax
  1042fb:	50                   	push   %eax
  1042fc:	8d 83 25 b5 ff ff    	lea    -0x4adb(%ebx),%eax
  104302:	50                   	push   %eax
  104303:	6a 27                	push   $0x27
  104305:	8d 83 42 b5 ff ff    	lea    -0x4abe(%ebx),%eax
  10430b:	50                   	push   %eax
  10430c:	e8 43 e8 ff ff       	call   102b54 <debug_panic>
  104311:	83 c4 10             	add    $0x10,%esp
  104314:	8b 45 e0             	mov    -0x20(%ebp),%eax
  104317:	8b 50 20             	mov    0x20(%eax),%edx
  10431a:	8b 45 e0             	mov    -0x20(%ebp),%eax
  10431d:	01 d0                	add    %edx,%eax
  10431f:	89 45 dc             	mov    %eax,-0x24(%ebp)
  104322:	8b 45 e0             	mov    -0x20(%ebp),%eax
  104325:	0f b7 40 30          	movzwl 0x30(%eax),%eax
  104329:	0f b7 d0             	movzwl %ax,%edx
  10432c:	89 d0                	mov    %edx,%eax
  10432e:	c1 e0 02             	shl    $0x2,%eax
  104331:	01 d0                	add    %edx,%eax
  104333:	c1 e0 03             	shl    $0x3,%eax
  104336:	89 c2                	mov    %eax,%edx
  104338:	8b 45 dc             	mov    -0x24(%ebp),%eax
  10433b:	01 d0                	add    %edx,%eax
  10433d:	89 45 d8             	mov    %eax,-0x28(%ebp)
  104340:	8b 45 e0             	mov    -0x20(%ebp),%eax
  104343:	0f b7 40 32          	movzwl 0x32(%eax),%eax
  104347:	0f b7 d0             	movzwl %ax,%edx
  10434a:	89 d0                	mov    %edx,%eax
  10434c:	c1 e0 02             	shl    $0x2,%eax
  10434f:	01 d0                	add    %edx,%eax
  104351:	c1 e0 03             	shl    $0x3,%eax
  104354:	89 c2                	mov    %eax,%edx
  104356:	8b 45 dc             	mov    -0x24(%ebp),%eax
  104359:	01 d0                	add    %edx,%eax
  10435b:	8b 50 10             	mov    0x10(%eax),%edx
  10435e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  104361:	01 d0                	add    %edx,%eax
  104363:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  104366:	8b 45 e0             	mov    -0x20(%ebp),%eax
  104369:	0f b7 40 32          	movzwl 0x32(%eax),%eax
  10436d:	0f b7 d0             	movzwl %ax,%edx
  104370:	89 d0                	mov    %edx,%eax
  104372:	c1 e0 02             	shl    $0x2,%eax
  104375:	01 d0                	add    %edx,%eax
  104377:	c1 e0 03             	shl    $0x3,%eax
  10437a:	89 c2                	mov    %eax,%edx
  10437c:	8b 45 dc             	mov    -0x24(%ebp),%eax
  10437f:	01 d0                	add    %edx,%eax
  104381:	8b 40 04             	mov    0x4(%eax),%eax
  104384:	83 f8 03             	cmp    $0x3,%eax
  104387:	74 1f                	je     1043a8 <elf_load+0x108>
  104389:	8d 83 74 b5 ff ff    	lea    -0x4a8c(%ebx),%eax
  10438f:	50                   	push   %eax
  104390:	8d 83 25 b5 ff ff    	lea    -0x4adb(%ebx),%eax
  104396:	50                   	push   %eax
  104397:	6a 2d                	push   $0x2d
  104399:	8d 83 42 b5 ff ff    	lea    -0x4abe(%ebx),%eax
  10439f:	50                   	push   %eax
  1043a0:	e8 af e7 ff ff       	call   102b54 <debug_panic>
  1043a5:	83 c4 10             	add    $0x10,%esp
  1043a8:	8b 45 e0             	mov    -0x20(%ebp),%eax
  1043ab:	8b 50 1c             	mov    0x1c(%eax),%edx
  1043ae:	8b 45 e0             	mov    -0x20(%ebp),%eax
  1043b1:	01 d0                	add    %edx,%eax
  1043b3:	89 45 f4             	mov    %eax,-0xc(%ebp)
  1043b6:	8b 45 e0             	mov    -0x20(%ebp),%eax
  1043b9:	0f b7 40 2c          	movzwl 0x2c(%eax),%eax
  1043bd:	0f b7 c0             	movzwl %ax,%eax
  1043c0:	c1 e0 05             	shl    $0x5,%eax
  1043c3:	89 c2                	mov    %eax,%edx
  1043c5:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1043c8:	01 d0                	add    %edx,%eax
  1043ca:	89 45 d0             	mov    %eax,-0x30(%ebp)
  1043cd:	e9 5f 01 00 00       	jmp    104531 <elf_load+0x291>
  1043d2:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1043d5:	8b 00                	mov    (%eax),%eax
  1043d7:	83 f8 01             	cmp    $0x1,%eax
  1043da:	0f 85 4c 01 00 00    	jne    10452c <elf_load+0x28c>
  1043e0:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1043e3:	8b 40 04             	mov    0x4(%eax),%eax
  1043e6:	83 ec 08             	sub    $0x8,%esp
  1043e9:	68 00 10 00 00       	push   $0x1000
  1043ee:	50                   	push   %eax
  1043ef:	e8 11 f4 ff ff       	call   103805 <rounddown>
  1043f4:	83 c4 10             	add    $0x10,%esp
  1043f7:	8b 55 e0             	mov    -0x20(%ebp),%edx
  1043fa:	01 d0                	add    %edx,%eax
  1043fc:	89 45 f0             	mov    %eax,-0x10(%ebp)
  1043ff:	8b 45 f4             	mov    -0xc(%ebp),%eax
  104402:	8b 40 08             	mov    0x8(%eax),%eax
  104405:	83 ec 08             	sub    $0x8,%esp
  104408:	68 00 10 00 00       	push   $0x1000
  10440d:	50                   	push   %eax
  10440e:	e8 f2 f3 ff ff       	call   103805 <rounddown>
  104413:	83 c4 10             	add    $0x10,%esp
  104416:	89 45 ec             	mov    %eax,-0x14(%ebp)
  104419:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10441c:	8b 50 08             	mov    0x8(%eax),%edx
  10441f:	8b 45 f4             	mov    -0xc(%ebp),%eax
  104422:	8b 40 10             	mov    0x10(%eax),%eax
  104425:	01 d0                	add    %edx,%eax
  104427:	89 45 cc             	mov    %eax,-0x34(%ebp)
  10442a:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10442d:	8b 50 08             	mov    0x8(%eax),%edx
  104430:	8b 45 f4             	mov    -0xc(%ebp),%eax
  104433:	8b 40 14             	mov    0x14(%eax),%eax
  104436:	01 d0                	add    %edx,%eax
  104438:	83 ec 08             	sub    $0x8,%esp
  10443b:	68 00 10 00 00       	push   $0x1000
  104440:	50                   	push   %eax
  104441:	e8 de f3 ff ff       	call   103824 <roundup>
  104446:	83 c4 10             	add    $0x10,%esp
  104449:	89 45 c8             	mov    %eax,-0x38(%ebp)
  10444c:	c7 45 e8 05 00 00 00 	movl   $0x5,-0x18(%ebp)
  104453:	8b 45 f4             	mov    -0xc(%ebp),%eax
  104456:	8b 40 18             	mov    0x18(%eax),%eax
  104459:	83 e0 02             	and    $0x2,%eax
  10445c:	85 c0                	test   %eax,%eax
  10445e:	0f 84 ba 00 00 00    	je     10451e <elf_load+0x27e>
  104464:	83 4d e8 02          	orl    $0x2,-0x18(%ebp)
  104468:	e9 b1 00 00 00       	jmp    10451e <elf_load+0x27e>
  10446d:	8b 45 0c             	mov    0xc(%ebp),%eax
  104470:	83 ec 04             	sub    $0x4,%esp
  104473:	ff 75 e8             	push   -0x18(%ebp)
  104476:	ff 75 ec             	push   -0x14(%ebp)
  104479:	50                   	push   %eax
  10447a:	e8 71 2c 00 00       	call   1070f0 <alloc_page>
  10447f:	83 c4 10             	add    $0x10,%esp
  104482:	83 ec 08             	sub    $0x8,%esp
  104485:	68 00 10 00 00       	push   $0x1000
  10448a:	ff 75 cc             	push   -0x34(%ebp)
  10448d:	e8 73 f3 ff ff       	call   103805 <rounddown>
  104492:	83 c4 10             	add    $0x10,%esp
  104495:	39 45 ec             	cmp    %eax,-0x14(%ebp)
  104498:	73 1a                	jae    1044b4 <elf_load+0x214>
  10449a:	8b 55 0c             	mov    0xc(%ebp),%edx
  10449d:	8b 45 f0             	mov    -0x10(%ebp),%eax
  1044a0:	68 00 10 00 00       	push   $0x1000
  1044a5:	ff 75 ec             	push   -0x14(%ebp)
  1044a8:	52                   	push   %edx
  1044a9:	50                   	push   %eax
  1044aa:	e8 0a fc ff ff       	call   1040b9 <pt_copyout>
  1044af:	83 c4 10             	add    $0x10,%esp
  1044b2:	eb 5c                	jmp    104510 <elf_load+0x270>
  1044b4:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1044b7:	3b 45 cc             	cmp    -0x34(%ebp),%eax
  1044ba:	73 3e                	jae    1044fa <elf_load+0x25a>
  1044bc:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1044bf:	8b 40 10             	mov    0x10(%eax),%eax
  1044c2:	85 c0                	test   %eax,%eax
  1044c4:	74 34                	je     1044fa <elf_load+0x25a>
  1044c6:	8b 45 0c             	mov    0xc(%ebp),%eax
  1044c9:	68 00 10 00 00       	push   $0x1000
  1044ce:	6a 00                	push   $0x0
  1044d0:	ff 75 ec             	push   -0x14(%ebp)
  1044d3:	50                   	push   %eax
  1044d4:	e8 f0 fc ff ff       	call   1041c9 <pt_memset>
  1044d9:	83 c4 10             	add    $0x10,%esp
  1044dc:	8b 45 cc             	mov    -0x34(%ebp),%eax
  1044df:	2b 45 ec             	sub    -0x14(%ebp),%eax
  1044e2:	89 c1                	mov    %eax,%ecx
  1044e4:	8b 55 0c             	mov    0xc(%ebp),%edx
  1044e7:	8b 45 f0             	mov    -0x10(%ebp),%eax
  1044ea:	51                   	push   %ecx
  1044eb:	ff 75 ec             	push   -0x14(%ebp)
  1044ee:	52                   	push   %edx
  1044ef:	50                   	push   %eax
  1044f0:	e8 c4 fb ff ff       	call   1040b9 <pt_copyout>
  1044f5:	83 c4 10             	add    $0x10,%esp
  1044f8:	eb 16                	jmp    104510 <elf_load+0x270>
  1044fa:	8b 45 0c             	mov    0xc(%ebp),%eax
  1044fd:	68 00 10 00 00       	push   $0x1000
  104502:	6a 00                	push   $0x0
  104504:	ff 75 ec             	push   -0x14(%ebp)
  104507:	50                   	push   %eax
  104508:	e8 bc fc ff ff       	call   1041c9 <pt_memset>
  10450d:	83 c4 10             	add    $0x10,%esp
  104510:	81 45 ec 00 10 00 00 	addl   $0x1000,-0x14(%ebp)
  104517:	81 45 f0 00 10 00 00 	addl   $0x1000,-0x10(%ebp)
  10451e:	8b 45 ec             	mov    -0x14(%ebp),%eax
  104521:	3b 45 c8             	cmp    -0x38(%ebp),%eax
  104524:	0f 82 43 ff ff ff    	jb     10446d <elf_load+0x1cd>
  10452a:	eb 01                	jmp    10452d <elf_load+0x28d>
  10452c:	90                   	nop
  10452d:	83 45 f4 20          	addl   $0x20,-0xc(%ebp)
  104531:	8b 45 f4             	mov    -0xc(%ebp),%eax
  104534:	3b 45 d0             	cmp    -0x30(%ebp),%eax
  104537:	0f 82 95 fe ff ff    	jb     1043d2 <elf_load+0x132>
  10453d:	8b 45 0c             	mov    0xc(%ebp),%eax
  104540:	68 00 10 00 00       	push   $0x1000
  104545:	68 00 00 00 e0       	push   $0xe0000000
  10454a:	50                   	push   %eax
  10454b:	8d 83 0c 10 00 00    	lea    0x100c(%ebx),%eax
  104551:	50                   	push   %eax
  104552:	e8 62 fb ff ff       	call   1040b9 <pt_copyout>
  104557:	83 c4 10             	add    $0x10,%esp
  10455a:	90                   	nop
  10455b:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  10455e:	c9                   	leave
  10455f:	c3                   	ret

00104560 <elf_entry>:
  104560:	55                   	push   %ebp
  104561:	89 e5                	mov    %esp,%ebp
  104563:	53                   	push   %ebx
  104564:	83 ec 14             	sub    $0x14,%esp
  104567:	e8 4c be ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  10456c:	05 88 8a 00 00       	add    $0x8a88,%eax
  104571:	8b 55 08             	mov    0x8(%ebp),%edx
  104574:	89 55 f4             	mov    %edx,-0xc(%ebp)
  104577:	8b 55 f4             	mov    -0xc(%ebp),%edx
  10457a:	89 55 f0             	mov    %edx,-0x10(%ebp)
  10457d:	8b 55 f0             	mov    -0x10(%ebp),%edx
  104580:	8b 12                	mov    (%edx),%edx
  104582:	81 fa 7f 45 4c 46    	cmp    $0x464c457f,%edx
  104588:	74 21                	je     1045ab <elf_entry+0x4b>
  10458a:	8d 90 0c b5 ff ff    	lea    -0x4af4(%eax),%edx
  104590:	52                   	push   %edx
  104591:	8d 90 25 b5 ff ff    	lea    -0x4adb(%eax),%edx
  104597:	52                   	push   %edx
  104598:	6a 5b                	push   $0x5b
  10459a:	8d 90 42 b5 ff ff    	lea    -0x4abe(%eax),%edx
  1045a0:	52                   	push   %edx
  1045a1:	89 c3                	mov    %eax,%ebx
  1045a3:	e8 ac e5 ff ff       	call   102b54 <debug_panic>
  1045a8:	83 c4 10             	add    $0x10,%esp
  1045ab:	8b 45 f0             	mov    -0x10(%ebp),%eax
  1045ae:	8b 40 18             	mov    0x18(%eax),%eax
  1045b1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1045b4:	c9                   	leave
  1045b5:	c3                   	ret

001045b6 <trap_dump>:
  1045b6:	55                   	push   %ebp
  1045b7:	89 e5                	mov    %esp,%ebp
  1045b9:	53                   	push   %ebx
  1045ba:	83 ec 14             	sub    $0x14,%esp
  1045bd:	e8 fe bd ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  1045c2:	81 c3 32 8a 00 00    	add    $0x8a32,%ebx
  1045c8:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  1045cc:	0f 84 4f 02 00 00    	je     104821 <trap_dump+0x26b>
  1045d2:	8b 45 08             	mov    0x8(%ebp),%eax
  1045d5:	89 45 f4             	mov    %eax,-0xc(%ebp)
  1045d8:	ff 75 f4             	push   -0xc(%ebp)
  1045db:	8d 83 a4 b5 ff ff    	lea    -0x4a5c(%ebx),%eax
  1045e1:	50                   	push   %eax
  1045e2:	6a 12                	push   $0x12
  1045e4:	8d 83 b5 b5 ff ff    	lea    -0x4a4b(%ebx),%eax
  1045ea:	50                   	push   %eax
  1045eb:	e8 a9 e4 ff ff       	call   102a99 <debug_normal>
  1045f0:	83 c4 10             	add    $0x10,%esp
  1045f3:	8b 45 08             	mov    0x8(%ebp),%eax
  1045f6:	8b 10                	mov    (%eax),%edx
  1045f8:	8b 45 08             	mov    0x8(%ebp),%eax
  1045fb:	83 ec 04             	sub    $0x4,%esp
  1045fe:	52                   	push   %edx
  1045ff:	50                   	push   %eax
  104600:	8d 83 c5 b5 ff ff    	lea    -0x4a3b(%ebx),%eax
  104606:	50                   	push   %eax
  104607:	e8 5c e4 ff ff       	call   102a68 <debug_info>
  10460c:	83 c4 10             	add    $0x10,%esp
  10460f:	8b 45 08             	mov    0x8(%ebp),%eax
  104612:	8b 40 04             	mov    0x4(%eax),%eax
  104615:	8b 55 08             	mov    0x8(%ebp),%edx
  104618:	83 c2 04             	add    $0x4,%edx
  10461b:	83 ec 04             	sub    $0x4,%esp
  10461e:	50                   	push   %eax
  10461f:	52                   	push   %edx
  104620:	8d 83 db b5 ff ff    	lea    -0x4a25(%ebx),%eax
  104626:	50                   	push   %eax
  104627:	e8 3c e4 ff ff       	call   102a68 <debug_info>
  10462c:	83 c4 10             	add    $0x10,%esp
  10462f:	8b 45 08             	mov    0x8(%ebp),%eax
  104632:	8b 40 08             	mov    0x8(%eax),%eax
  104635:	8b 55 08             	mov    0x8(%ebp),%edx
  104638:	83 c2 08             	add    $0x8,%edx
  10463b:	83 ec 04             	sub    $0x4,%esp
  10463e:	50                   	push   %eax
  10463f:	52                   	push   %edx
  104640:	8d 83 f1 b5 ff ff    	lea    -0x4a0f(%ebx),%eax
  104646:	50                   	push   %eax
  104647:	e8 1c e4 ff ff       	call   102a68 <debug_info>
  10464c:	83 c4 10             	add    $0x10,%esp
  10464f:	8b 45 08             	mov    0x8(%ebp),%eax
  104652:	8b 40 0c             	mov    0xc(%eax),%eax
  104655:	8b 55 08             	mov    0x8(%ebp),%edx
  104658:	83 c2 0c             	add    $0xc,%edx
  10465b:	83 ec 04             	sub    $0x4,%esp
  10465e:	50                   	push   %eax
  10465f:	52                   	push   %edx
  104660:	8d 83 07 b6 ff ff    	lea    -0x49f9(%ebx),%eax
  104666:	50                   	push   %eax
  104667:	e8 fc e3 ff ff       	call   102a68 <debug_info>
  10466c:	83 c4 10             	add    $0x10,%esp
  10466f:	8b 45 08             	mov    0x8(%ebp),%eax
  104672:	8b 40 10             	mov    0x10(%eax),%eax
  104675:	8b 55 08             	mov    0x8(%ebp),%edx
  104678:	83 c2 10             	add    $0x10,%edx
  10467b:	83 ec 04             	sub    $0x4,%esp
  10467e:	50                   	push   %eax
  10467f:	52                   	push   %edx
  104680:	8d 83 1d b6 ff ff    	lea    -0x49e3(%ebx),%eax
  104686:	50                   	push   %eax
  104687:	e8 dc e3 ff ff       	call   102a68 <debug_info>
  10468c:	83 c4 10             	add    $0x10,%esp
  10468f:	8b 45 08             	mov    0x8(%ebp),%eax
  104692:	8b 40 14             	mov    0x14(%eax),%eax
  104695:	8b 55 08             	mov    0x8(%ebp),%edx
  104698:	83 c2 14             	add    $0x14,%edx
  10469b:	83 ec 04             	sub    $0x4,%esp
  10469e:	50                   	push   %eax
  10469f:	52                   	push   %edx
  1046a0:	8d 83 33 b6 ff ff    	lea    -0x49cd(%ebx),%eax
  1046a6:	50                   	push   %eax
  1046a7:	e8 bc e3 ff ff       	call   102a68 <debug_info>
  1046ac:	83 c4 10             	add    $0x10,%esp
  1046af:	8b 45 08             	mov    0x8(%ebp),%eax
  1046b2:	8b 40 18             	mov    0x18(%eax),%eax
  1046b5:	8b 55 08             	mov    0x8(%ebp),%edx
  1046b8:	83 c2 18             	add    $0x18,%edx
  1046bb:	83 ec 04             	sub    $0x4,%esp
  1046be:	50                   	push   %eax
  1046bf:	52                   	push   %edx
  1046c0:	8d 83 49 b6 ff ff    	lea    -0x49b7(%ebx),%eax
  1046c6:	50                   	push   %eax
  1046c7:	e8 9c e3 ff ff       	call   102a68 <debug_info>
  1046cc:	83 c4 10             	add    $0x10,%esp
  1046cf:	8b 45 08             	mov    0x8(%ebp),%eax
  1046d2:	8b 40 1c             	mov    0x1c(%eax),%eax
  1046d5:	8b 55 08             	mov    0x8(%ebp),%edx
  1046d8:	83 c2 1c             	add    $0x1c,%edx
  1046db:	83 ec 04             	sub    $0x4,%esp
  1046de:	50                   	push   %eax
  1046df:	52                   	push   %edx
  1046e0:	8d 83 5f b6 ff ff    	lea    -0x49a1(%ebx),%eax
  1046e6:	50                   	push   %eax
  1046e7:	e8 7c e3 ff ff       	call   102a68 <debug_info>
  1046ec:	83 c4 10             	add    $0x10,%esp
  1046ef:	8b 45 08             	mov    0x8(%ebp),%eax
  1046f2:	0f b7 40 20          	movzwl 0x20(%eax),%eax
  1046f6:	0f b7 c0             	movzwl %ax,%eax
  1046f9:	8b 55 08             	mov    0x8(%ebp),%edx
  1046fc:	83 c2 20             	add    $0x20,%edx
  1046ff:	83 ec 04             	sub    $0x4,%esp
  104702:	50                   	push   %eax
  104703:	52                   	push   %edx
  104704:	8d 83 75 b6 ff ff    	lea    -0x498b(%ebx),%eax
  10470a:	50                   	push   %eax
  10470b:	e8 58 e3 ff ff       	call   102a68 <debug_info>
  104710:	83 c4 10             	add    $0x10,%esp
  104713:	8b 45 08             	mov    0x8(%ebp),%eax
  104716:	0f b7 40 24          	movzwl 0x24(%eax),%eax
  10471a:	0f b7 c0             	movzwl %ax,%eax
  10471d:	8b 55 08             	mov    0x8(%ebp),%edx
  104720:	83 c2 24             	add    $0x24,%edx
  104723:	83 ec 04             	sub    $0x4,%esp
  104726:	50                   	push   %eax
  104727:	52                   	push   %edx
  104728:	8d 83 8b b6 ff ff    	lea    -0x4975(%ebx),%eax
  10472e:	50                   	push   %eax
  10472f:	e8 34 e3 ff ff       	call   102a68 <debug_info>
  104734:	83 c4 10             	add    $0x10,%esp
  104737:	8b 45 08             	mov    0x8(%ebp),%eax
  10473a:	8b 40 28             	mov    0x28(%eax),%eax
  10473d:	8b 55 08             	mov    0x8(%ebp),%edx
  104740:	83 c2 28             	add    $0x28,%edx
  104743:	83 ec 04             	sub    $0x4,%esp
  104746:	50                   	push   %eax
  104747:	52                   	push   %edx
  104748:	8d 83 a1 b6 ff ff    	lea    -0x495f(%ebx),%eax
  10474e:	50                   	push   %eax
  10474f:	e8 14 e3 ff ff       	call   102a68 <debug_info>
  104754:	83 c4 10             	add    $0x10,%esp
  104757:	8b 45 08             	mov    0x8(%ebp),%eax
  10475a:	8b 40 2c             	mov    0x2c(%eax),%eax
  10475d:	8b 55 08             	mov    0x8(%ebp),%edx
  104760:	83 c2 2c             	add    $0x2c,%edx
  104763:	83 ec 04             	sub    $0x4,%esp
  104766:	50                   	push   %eax
  104767:	52                   	push   %edx
  104768:	8d 83 b7 b6 ff ff    	lea    -0x4949(%ebx),%eax
  10476e:	50                   	push   %eax
  10476f:	e8 f4 e2 ff ff       	call   102a68 <debug_info>
  104774:	83 c4 10             	add    $0x10,%esp
  104777:	8b 45 08             	mov    0x8(%ebp),%eax
  10477a:	8b 40 30             	mov    0x30(%eax),%eax
  10477d:	8b 55 08             	mov    0x8(%ebp),%edx
  104780:	83 c2 30             	add    $0x30,%edx
  104783:	83 ec 04             	sub    $0x4,%esp
  104786:	50                   	push   %eax
  104787:	52                   	push   %edx
  104788:	8d 83 cd b6 ff ff    	lea    -0x4933(%ebx),%eax
  10478e:	50                   	push   %eax
  10478f:	e8 d4 e2 ff ff       	call   102a68 <debug_info>
  104794:	83 c4 10             	add    $0x10,%esp
  104797:	8b 45 08             	mov    0x8(%ebp),%eax
  10479a:	0f b7 40 34          	movzwl 0x34(%eax),%eax
  10479e:	0f b7 c0             	movzwl %ax,%eax
  1047a1:	8b 55 08             	mov    0x8(%ebp),%edx
  1047a4:	83 c2 34             	add    $0x34,%edx
  1047a7:	83 ec 04             	sub    $0x4,%esp
  1047aa:	50                   	push   %eax
  1047ab:	52                   	push   %edx
  1047ac:	8d 83 e3 b6 ff ff    	lea    -0x491d(%ebx),%eax
  1047b2:	50                   	push   %eax
  1047b3:	e8 b0 e2 ff ff       	call   102a68 <debug_info>
  1047b8:	83 c4 10             	add    $0x10,%esp
  1047bb:	8b 45 08             	mov    0x8(%ebp),%eax
  1047be:	8b 40 38             	mov    0x38(%eax),%eax
  1047c1:	8b 55 08             	mov    0x8(%ebp),%edx
  1047c4:	83 c2 38             	add    $0x38,%edx
  1047c7:	83 ec 04             	sub    $0x4,%esp
  1047ca:	50                   	push   %eax
  1047cb:	52                   	push   %edx
  1047cc:	8d 83 f9 b6 ff ff    	lea    -0x4907(%ebx),%eax
  1047d2:	50                   	push   %eax
  1047d3:	e8 90 e2 ff ff       	call   102a68 <debug_info>
  1047d8:	83 c4 10             	add    $0x10,%esp
  1047db:	8b 45 08             	mov    0x8(%ebp),%eax
  1047de:	8b 40 3c             	mov    0x3c(%eax),%eax
  1047e1:	8b 55 08             	mov    0x8(%ebp),%edx
  1047e4:	83 c2 3c             	add    $0x3c,%edx
  1047e7:	83 ec 04             	sub    $0x4,%esp
  1047ea:	50                   	push   %eax
  1047eb:	52                   	push   %edx
  1047ec:	8d 83 07 b6 ff ff    	lea    -0x49f9(%ebx),%eax
  1047f2:	50                   	push   %eax
  1047f3:	e8 70 e2 ff ff       	call   102a68 <debug_info>
  1047f8:	83 c4 10             	add    $0x10,%esp
  1047fb:	8b 45 08             	mov    0x8(%ebp),%eax
  1047fe:	0f b7 40 40          	movzwl 0x40(%eax),%eax
  104802:	0f b7 c0             	movzwl %ax,%eax
  104805:	8b 55 08             	mov    0x8(%ebp),%edx
  104808:	83 c2 40             	add    $0x40,%edx
  10480b:	83 ec 04             	sub    $0x4,%esp
  10480e:	50                   	push   %eax
  10480f:	52                   	push   %edx
  104810:	8d 83 0f b7 ff ff    	lea    -0x48f1(%ebx),%eax
  104816:	50                   	push   %eax
  104817:	e8 4c e2 ff ff       	call   102a68 <debug_info>
  10481c:	83 c4 10             	add    $0x10,%esp
  10481f:	eb 01                	jmp    104822 <trap_dump+0x26c>
  104821:	90                   	nop
  104822:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  104825:	c9                   	leave
  104826:	c3                   	ret

00104827 <pgflt_handler>:
  104827:	55                   	push   %ebp
  104828:	89 e5                	mov    %esp,%ebp
  10482a:	53                   	push   %ebx
  10482b:	83 ec 14             	sub    $0x14,%esp
  10482e:	e8 8d bb ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  104833:	81 c3 c1 87 00 00    	add    $0x87c1,%ebx
  104839:	8b 45 08             	mov    0x8(%ebp),%eax
  10483c:	8b 40 2c             	mov    0x2c(%eax),%eax
  10483f:	89 45 f4             	mov    %eax,-0xc(%ebp)
  104842:	e8 21 f2 ff ff       	call   103a68 <rcr2>
  104847:	89 45 f0             	mov    %eax,-0x10(%ebp)
  10484a:	8b 45 08             	mov    0x8(%ebp),%eax
  10484d:	8b 50 30             	mov    0x30(%eax),%edx
  104850:	c7 c0 2c 9c 15 00    	mov    $0x159c2c,%eax
  104856:	8b 00                	mov    (%eax),%eax
  104858:	83 ec 0c             	sub    $0xc,%esp
  10485b:	52                   	push   %edx
  10485c:	50                   	push   %eax
  10485d:	ff 75 f4             	push   -0xc(%ebp)
  104860:	ff 75 f0             	push   -0x10(%ebp)
  104863:	8d 83 28 b7 ff ff    	lea    -0x48d8(%ebx),%eax
  104869:	50                   	push   %eax
  10486a:	e8 fd e4 ff ff       	call   102d6c <dprintf>
  10486f:	83 c4 20             	add    $0x20,%esp
  104872:	8b 45 08             	mov    0x8(%ebp),%eax
  104875:	8b 40 2c             	mov    0x2c(%eax),%eax
  104878:	83 e0 01             	and    $0x1,%eax
  10487b:	85 c0                	test   %eax,%eax
  10487d:	74 23                	je     1048a2 <pgflt_handler+0x7b>
  10487f:	83 ec 0c             	sub    $0xc,%esp
  104882:	ff 75 f4             	push   -0xc(%ebp)
  104885:	ff 75 f0             	push   -0x10(%ebp)
  104888:	8d 83 6c b7 ff ff    	lea    -0x4894(%ebx),%eax
  10488e:	50                   	push   %eax
  10488f:	6a 32                	push   $0x32
  104891:	8d 83 b5 b5 ff ff    	lea    -0x4a4b(%ebx),%eax
  104897:	50                   	push   %eax
  104898:	e8 b7 e2 ff ff       	call   102b54 <debug_panic>
  10489d:	83 c4 20             	add    $0x20,%esp
  1048a0:	eb 2a                	jmp    1048cc <pgflt_handler+0xa5>
  1048a2:	83 ec 08             	sub    $0x8,%esp
  1048a5:	68 00 10 00 00       	push   $0x1000
  1048aa:	ff 75 f0             	push   -0x10(%ebp)
  1048ad:	e8 53 ef ff ff       	call   103805 <rounddown>
  1048b2:	83 c4 10             	add    $0x10,%esp
  1048b5:	c7 c2 2c 9c 15 00    	mov    $0x159c2c,%edx
  1048bb:	8b 12                	mov    (%edx),%edx
  1048bd:	83 ec 04             	sub    $0x4,%esp
  1048c0:	6a 07                	push   $0x7
  1048c2:	50                   	push   %eax
  1048c3:	52                   	push   %edx
  1048c4:	e8 27 28 00 00       	call   1070f0 <alloc_page>
  1048c9:	83 c4 10             	add    $0x10,%esp
  1048cc:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1048cf:	c9                   	leave
  1048d0:	c3                   	ret

001048d1 <checkpoint>:
  1048d1:	55                   	push   %ebp
  1048d2:	89 e5                	mov    %esp,%ebp
  1048d4:	53                   	push   %ebx
  1048d5:	83 ec 04             	sub    $0x4,%esp
  1048d8:	e8 db ba ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  1048dd:	05 17 87 00 00       	add    $0x8717,%eax
  1048e2:	83 ec 0c             	sub    $0xc,%esp
  1048e5:	8d 90 9d b7 ff ff    	lea    -0x4863(%eax),%edx
  1048eb:	52                   	push   %edx
  1048ec:	89 c3                	mov    %eax,%ebx
  1048ee:	e8 75 e1 ff ff       	call   102a68 <debug_info>
  1048f3:	83 c4 10             	add    $0x10,%esp
  1048f6:	90                   	nop
  1048f7:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1048fa:	c9                   	leave
  1048fb:	c3                   	ret

001048fc <trap>:
  1048fc:	55                   	push   %ebp
  1048fd:	89 e5                	mov    %esp,%ebp
  1048ff:	53                   	push   %ebx
  104900:	83 ec 04             	sub    $0x4,%esp
  104903:	e8 b8 ba ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  104908:	81 c3 ec 86 00 00    	add    $0x86ec,%ebx
  10490e:	8b 45 08             	mov    0x8(%ebp),%eax
  104911:	8b 40 28             	mov    0x28(%eax),%eax
  104914:	83 f8 0e             	cmp    $0xe,%eax
  104917:	75 1d                	jne    104936 <trap+0x3a>
  104919:	83 ec 0c             	sub    $0xc,%esp
  10491c:	6a 00                	push   $0x0
  10491e:	e8 3d 18 00 00       	call   106160 <set_pdir_base>
  104923:	83 c4 10             	add    $0x10,%esp
  104926:	83 ec 0c             	sub    $0xc,%esp
  104929:	ff 75 08             	push   0x8(%ebp)
  10492c:	e8 f6 fe ff ff       	call   104827 <pgflt_handler>
  104931:	83 c4 10             	add    $0x10,%esp
  104934:	eb 48                	jmp    10497e <trap+0x82>
  104936:	8b 45 08             	mov    0x8(%ebp),%eax
  104939:	8b 40 28             	mov    0x28(%eax),%eax
  10493c:	50                   	push   %eax
  10493d:	8d 83 aa b7 ff ff    	lea    -0x4856(%ebx),%eax
  104943:	50                   	push   %eax
  104944:	6a 45                	push   $0x45
  104946:	8d 83 b5 b5 ff ff    	lea    -0x4a4b(%ebx),%eax
  10494c:	50                   	push   %eax
  10494d:	e8 47 e1 ff ff       	call   102a99 <debug_normal>
  104952:	83 c4 10             	add    $0x10,%esp
  104955:	83 ec 0c             	sub    $0xc,%esp
  104958:	ff 75 08             	push   0x8(%ebp)
  10495b:	e8 56 fc ff ff       	call   1045b6 <trap_dump>
  104960:	83 c4 10             	add    $0x10,%esp
  104963:	83 ec 04             	sub    $0x4,%esp
  104966:	8d 83 be b7 ff ff    	lea    -0x4842(%ebx),%eax
  10496c:	50                   	push   %eax
  10496d:	6a 47                	push   $0x47
  10496f:	8d 83 b5 b5 ff ff    	lea    -0x4a4b(%ebx),%eax
  104975:	50                   	push   %eax
  104976:	e8 d9 e1 ff ff       	call   102b54 <debug_panic>
  10497b:	83 c4 10             	add    $0x10,%esp
  10497e:	c7 c0 2c 9c 15 00    	mov    $0x159c2c,%eax
  104984:	8b 00                	mov    (%eax),%eax
  104986:	83 ec 0c             	sub    $0xc,%esp
  104989:	50                   	push   %eax
  10498a:	e8 d1 17 00 00       	call   106160 <set_pdir_base>
  10498f:	83 c4 10             	add    $0x10,%esp
  104992:	83 ec 0c             	sub    $0xc,%esp
  104995:	ff 75 08             	push   0x8(%ebp)
  104998:	e8 03 de ff ff       	call   1027a0 <trap_return>
  10499d:	83 c4 10             	add    $0x10,%esp
  1049a0:	90                   	nop
  1049a1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1049a4:	c9                   	leave
  1049a5:	c3                   	ret
  1049a6:	66 90                	xchg   %ax,%ax
  1049a8:	66 90                	xchg   %ax,%ax
  1049aa:	66 90                	xchg   %ax,%ax
  1049ac:	66 90                	xchg   %ax,%ax
  1049ae:	66 90                	xchg   %ax,%ax

001049b0 <kern_init>:
    monitor(NULL);
#endif
}

void kern_init(uintptr_t mbi_addr)
{
  1049b0:	57                   	push   %edi
  1049b1:	56                   	push   %esi
  1049b2:	53                   	push   %ebx
  1049b3:	8b 7c 24 10          	mov    0x10(%esp),%edi
  1049b7:	e8 04 ba ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  1049bc:	81 c3 38 86 00 00    	add    $0x8638,%ebx
    pmem_init((unsigned int)mbi_addr);
  1049c2:	83 ec 0c             	sub    $0xc,%esp
  1049c5:	57                   	push   %edi
  1049c6:	e8 75 09 00 00       	call   105340 <pmem_init>
    KERN_DEBUG("Kernel initialized.\n");
  1049cb:	8d b3 da b7 ff ff    	lea    -0x4826(%ebx),%esi
  1049d1:	83 c4 0c             	add    $0xc,%esp
  1049d4:	8d 83 c5 b7 ff ff    	lea    -0x483b(%ebx),%eax
  1049da:	50                   	push   %eax
  1049db:	68 aa 00 00 00       	push   $0xaa
  1049e0:	56                   	push   %esi
  1049e1:	e8 b3 e0 ff ff       	call   102a99 <debug_normal>
    KERN_DEBUG("In kernel main.\n\n");
  1049e6:	83 c4 0c             	add    $0xc,%esp
  1049e9:	8d 83 eb b7 ff ff    	lea    -0x4815(%ebx),%eax
  1049ef:	50                   	push   %eax
  1049f0:	6a 78                	push   $0x78
  1049f2:	56                   	push   %esi
  1049f3:	e8 a1 e0 ff ff       	call   102a99 <debug_normal>
    dprintf("Testing the MATIntro layer...\n");
  1049f8:	8d 83 d0 ba ff ff    	lea    -0x4530(%ebx),%eax
  1049fe:	89 04 24             	mov    %eax,(%esp)
  104a01:	e8 66 e3 ff ff       	call   102d6c <dprintf>
    if (test_MATIntro() == 0)
  104a06:	e8 c5 08 00 00       	call   1052d0 <test_MATIntro>
  104a0b:	83 c4 10             	add    $0x10,%esp
  104a0e:	85 c0                	test   %eax,%eax
  104a10:	0f 85 f2 00 00 00    	jne    104b08 <kern_init+0x158>
        dprintf("All tests passed.\n");
  104a16:	83 ec 0c             	sub    $0xc,%esp
  104a19:	8d 83 fd b7 ff ff    	lea    -0x4803(%ebx),%eax
  104a1f:	50                   	push   %eax
  104a20:	e8 47 e3 ff ff       	call   102d6c <dprintf>
  104a25:	83 c4 10             	add    $0x10,%esp
    dprintf("\n");
  104a28:	83 ec 0c             	sub    $0xc,%esp
  104a2b:	8d b3 fb b7 ff ff    	lea    -0x4805(%ebx),%esi
  104a31:	56                   	push   %esi
  104a32:	e8 35 e3 ff ff       	call   102d6c <dprintf>
    pmem_init((unsigned int)mbi_addr);
  104a37:	89 3c 24             	mov    %edi,(%esp)
  104a3a:	e8 01 09 00 00       	call   105340 <pmem_init>
    dprintf("Testing the MATInit layer...\n");
  104a3f:	8d 83 1e b8 ff ff    	lea    -0x47e2(%ebx),%eax
  104a45:	89 04 24             	mov    %eax,(%esp)
  104a48:	e8 1f e3 ff ff       	call   102d6c <dprintf>
    if (test_MATInit() == 0)
  104a4d:	e8 9e 0d 00 00       	call   1057f0 <test_MATInit>
  104a52:	83 c4 10             	add    $0x10,%esp
  104a55:	85 c0                	test   %eax,%eax
  104a57:	0f 85 f3 00 00 00    	jne    104b50 <kern_init+0x1a0>
        dprintf("All tests passed.\n");
  104a5d:	83 ec 0c             	sub    $0xc,%esp
  104a60:	8d 83 fd b7 ff ff    	lea    -0x4803(%ebx),%eax
  104a66:	50                   	push   %eax
  104a67:	e8 00 e3 ff ff       	call   102d6c <dprintf>
  104a6c:	83 c4 10             	add    $0x10,%esp
    dprintf("\n");
  104a6f:	83 ec 0c             	sub    $0xc,%esp
  104a72:	56                   	push   %esi
  104a73:	e8 f4 e2 ff ff       	call   102d6c <dprintf>
    dprintf("Testing the MATOp layer...\n");
  104a78:	8d 83 3c b8 ff ff    	lea    -0x47c4(%ebx),%eax
  104a7e:	89 04 24             	mov    %eax,(%esp)
  104a81:	e8 e6 e2 ff ff       	call   102d6c <dprintf>
    if (test_MATOp() == 0)
  104a86:	e8 55 11 00 00       	call   105be0 <test_MATOp>
  104a8b:	83 c4 10             	add    $0x10,%esp
  104a8e:	85 c0                	test   %eax,%eax
  104a90:	0f 85 a2 00 00 00    	jne    104b38 <kern_init+0x188>
        dprintf("All tests passed.\n");
  104a96:	83 ec 0c             	sub    $0xc,%esp
  104a99:	8d 83 fd b7 ff ff    	lea    -0x4803(%ebx),%eax
  104a9f:	50                   	push   %eax
  104aa0:	e8 c7 e2 ff ff       	call   102d6c <dprintf>
  104aa5:	83 c4 10             	add    $0x10,%esp
    dprintf("\n");
  104aa8:	83 ec 0c             	sub    $0xc,%esp
  104aab:	56                   	push   %esi
  104aac:	e8 bb e2 ff ff       	call   102d6c <dprintf>
    container_init((unsigned int)mbi_addr);
  104ab1:	89 3c 24             	mov    %edi,(%esp)
  104ab4:	e8 47 11 00 00       	call   105c00 <container_init>
    dprintf("Testing the MContainer layer...\n");
  104ab9:	8d 83 f0 ba ff ff    	lea    -0x4510(%ebx),%eax
  104abf:	89 04 24             	mov    %eax,(%esp)
  104ac2:	e8 a5 e2 ff ff       	call   102d6c <dprintf>
    if (test_MContainer() == 0)
  104ac7:	e8 74 16 00 00       	call   106140 <test_MContainer>
  104acc:	83 c4 10             	add    $0x10,%esp
  104acf:	84 c0                	test   %al,%al
  104ad1:	75 4d                	jne    104b20 <kern_init+0x170>
        dprintf("All tests passed.\n");
  104ad3:	83 ec 0c             	sub    $0xc,%esp
  104ad6:	8d 83 fd b7 ff ff    	lea    -0x4803(%ebx),%eax
  104adc:	50                   	push   %eax
  104add:	e8 8a e2 ff ff       	call   102d6c <dprintf>
  104ae2:	83 c4 10             	add    $0x10,%esp
    dprintf("\n");
  104ae5:	83 ec 0c             	sub    $0xc,%esp
  104ae8:	56                   	push   %esi
  104ae9:	e8 7e e2 ff ff       	call   102d6c <dprintf>
    dprintf("\nTest complete. Please Use Ctrl-a x to exit qemu.");
  104aee:	8d 83 14 bb ff ff    	lea    -0x44ec(%ebx),%eax
  104af4:	89 04 24             	mov    %eax,(%esp)
  104af7:	e8 70 e2 ff ff       	call   102d6c <dprintf>
    kern_main(mbi_addr);
}
  104afc:	83 c4 10             	add    $0x10,%esp
  104aff:	5b                   	pop    %ebx
  104b00:	5e                   	pop    %esi
  104b01:	5f                   	pop    %edi
  104b02:	c3                   	ret
  104b03:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        dprintf("Test failed.\n");
  104b08:	83 ec 0c             	sub    $0xc,%esp
  104b0b:	8d 83 10 b8 ff ff    	lea    -0x47f0(%ebx),%eax
  104b11:	50                   	push   %eax
  104b12:	e8 55 e2 ff ff       	call   102d6c <dprintf>
  104b17:	83 c4 10             	add    $0x10,%esp
  104b1a:	e9 09 ff ff ff       	jmp    104a28 <kern_init+0x78>
  104b1f:	90                   	nop
        dprintf("Test failed.\n");
  104b20:	83 ec 0c             	sub    $0xc,%esp
  104b23:	8d 83 10 b8 ff ff    	lea    -0x47f0(%ebx),%eax
  104b29:	50                   	push   %eax
  104b2a:	e8 3d e2 ff ff       	call   102d6c <dprintf>
  104b2f:	83 c4 10             	add    $0x10,%esp
  104b32:	eb b1                	jmp    104ae5 <kern_init+0x135>
  104b34:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        dprintf("Test failed.\n");
  104b38:	83 ec 0c             	sub    $0xc,%esp
  104b3b:	8d 83 10 b8 ff ff    	lea    -0x47f0(%ebx),%eax
  104b41:	50                   	push   %eax
  104b42:	e8 25 e2 ff ff       	call   102d6c <dprintf>
  104b47:	83 c4 10             	add    $0x10,%esp
  104b4a:	e9 59 ff ff ff       	jmp    104aa8 <kern_init+0xf8>
  104b4f:	90                   	nop
        dprintf("Test failed.\n");
  104b50:	83 ec 0c             	sub    $0xc,%esp
  104b53:	8d 83 10 b8 ff ff    	lea    -0x47f0(%ebx),%eax
  104b59:	50                   	push   %eax
  104b5a:	e8 0d e2 ff ff       	call   102d6c <dprintf>
  104b5f:	83 c4 10             	add    $0x10,%esp
  104b62:	e9 08 ff ff ff       	jmp    104a6f <kern_init+0xbf>
  104b67:	90                   	nop
  104b68:	02 b0 ad 1b 03 00    	add    0x31bad(%eax),%dh
  104b6e:	00 00                	add    %al,(%eax)
  104b70:	fb                   	sti
  104b71:	4f                   	dec    %edi
  104b72:	52                   	push   %edx
  104b73:	e4                   	.byte 0xe4

00104b74 <start>:
  104b74:	fa                   	cli
  104b75:	3d 02 b0 ad 2b       	cmp    $0x2badb002,%eax
  104b7a:	75 27                	jne    104ba3 <spin>
  104b7c:	89 1d a4 4b 10 00    	mov    %ebx,0x104ba4
  104b82:	66 c7 05 72 04 00 00 	movw   $0x1234,0x472
  104b89:	34 12 
  104b8b:	6a 02                	push   $0x2
  104b8d:	9d                   	popf
  104b8e:	bd 00 00 00 00       	mov    $0x0,%ebp
  104b93:	bc 00 60 11 00       	mov    $0x116000,%esp
  104b98:	ff 35 a4 4b 10 00    	push   0x104ba4
  104b9e:	e8 0d fe ff ff       	call   1049b0 <kern_init>

00104ba3 <spin>:
  104ba3:	f4                   	hlt

00104ba4 <multiboot_ptr>:
  104ba4:	00 00                	add    %al,(%eax)
  104ba6:	00 00                	add    %al,(%eax)
  104ba8:	66 90                	xchg   %ax,%ax
  104baa:	66 90                	xchg   %ax,%ax
  104bac:	66 90                	xchg   %ax,%ax
  104bae:	66 90                	xchg   %ax,%ax

00104bb0 <pmm_init_freelists>:
static int free_list[MAX_ORDER];


// Initialize the freelists to empty
void pmm_init_freelists(void) {
    for (int i = 0; i < MAX_ORDER; i++) {
  104bb0:	e8 03 b8 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  104bb5:	05 3f 84 00 00       	add    $0x843f,%eax
  104bba:	8d 80 4c cc 44 01    	lea    0x144cc4c(%eax),%eax
  104bc0:	8d 50 28             	lea    0x28(%eax),%edx
  104bc3:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        free_list[i] = -1;
  104bc8:	c7 00 ff ff ff ff    	movl   $0xffffffff,(%eax)
    for (int i = 0; i < MAX_ORDER; i++) {
  104bce:	83 c0 08             	add    $0x8,%eax
        free_list[i] = -1;
  104bd1:	c7 40 fc ff ff ff ff 	movl   $0xffffffff,-0x4(%eax)
    for (int i = 0; i < MAX_ORDER; i++) {
  104bd8:	39 d0                	cmp    %edx,%eax
  104bda:	75 ec                	jne    104bc8 <pmm_init_freelists+0x18>
    }
}
  104bdc:	c3                   	ret
  104bdd:	8d 76 00             	lea    0x0(%esi),%esi

00104be0 <get_nps>:

// Getter function for NUM_PAGES.
unsigned int get_nps(void) {
    return NUM_PAGES;
  104be0:	e8 d3 b7 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  104be5:	05 0f 84 00 00       	add    $0x840f,%eax
  104bea:	8b 80 74 cc 44 01    	mov    0x144cc74(%eax),%eax
}
  104bf0:	c3                   	ret
  104bf1:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  104bf8:	00 
  104bf9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00104c00 <set_nps>:

// Setter function for NUM_PAGES.
void set_nps(unsigned int nps) {
    NUM_PAGES = nps;
  104c00:	e8 b3 b7 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  104c05:	05 ef 83 00 00       	add    $0x83ef,%eax
  104c0a:	8b 54 24 04          	mov    0x4(%esp),%edx
  104c0e:	89 90 74 cc 44 01    	mov    %edx,0x144cc74(%eax)
}
  104c14:	c3                   	ret
  104c15:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  104c1c:	00 
  104c1d:	8d 76 00             	lea    0x0(%esi),%esi

00104c20 <at_is_norm>:
    return NUM_PAGES;
  104c20:	e8 08 02 00 00       	call   104e2d <__x86.get_pc_thunk.cx>
  104c25:	81 c1 cf 83 00 00    	add    $0x83cf,%ecx

// Getter function for page permission.
unsigned int at_is_norm(unsigned int page_index) {
  104c2b:	8b 44 24 04          	mov    0x4(%esp),%eax
    if (page_index < get_nps() && AT[page_index].perm == 2) {
        return 1;
    }
    return 0;
  104c2f:	31 d2                	xor    %edx,%edx
    if (page_index < get_nps() && AT[page_index].perm == 2) {
  104c31:	3b 81 74 cc 44 01    	cmp    0x144cc74(%ecx),%eax
  104c37:	73 10                	jae    104c49 <at_is_norm+0x29>
  104c39:	8d 04 80             	lea    (%eax,%eax,4),%eax
  104c3c:	31 d2                	xor    %edx,%edx
  104c3e:	83 bc 81 4c cc 04 00 	cmpl   $0x2,0x4cc4c(%ecx,%eax,4)
  104c45:	02 
  104c46:	0f 94 c2             	sete   %dl
}
  104c49:	89 d0                	mov    %edx,%eax
  104c4b:	c3                   	ret
  104c4c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00104c50 <at_set_perm>:

// Setter function for page permission.
void at_set_perm(unsigned int page_index, unsigned int perm) {
    if (page_index < NUM_PAGES) {
  104c50:	e8 67 b7 ff ff       	call   1003bc <__x86.get_pc_thunk.dx>
  104c55:	81 c2 9f 83 00 00    	add    $0x839f,%edx
void at_set_perm(unsigned int page_index, unsigned int perm) {
  104c5b:	8b 44 24 04          	mov    0x4(%esp),%eax
    if (page_index < NUM_PAGES) {
  104c5f:	3b 82 74 cc 44 01    	cmp    0x144cc74(%edx),%eax
  104c65:	73 0e                	jae    104c75 <at_set_perm+0x25>
        AT[page_index].perm = perm;
  104c67:	8b 4c 24 08          	mov    0x8(%esp),%ecx
  104c6b:	8d 04 80             	lea    (%eax,%eax,4),%eax
  104c6e:	89 8c 82 4c cc 04 00 	mov    %ecx,0x4cc4c(%edx,%eax,4)
    }
}
  104c75:	c3                   	ret
  104c76:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  104c7d:	00 
  104c7e:	66 90                	xchg   %ax,%ax

00104c80 <at_is_allocated>:

// Getter function for page allocation status.
unsigned int at_is_allocated(unsigned int page_index) {
    if (page_index < NUM_PAGES && AT[page_index].allocated > 0) {
  104c80:	e8 a8 01 00 00       	call   104e2d <__x86.get_pc_thunk.cx>
  104c85:	81 c1 6f 83 00 00    	add    $0x836f,%ecx
unsigned int at_is_allocated(unsigned int page_index) {
  104c8b:	8b 44 24 04          	mov    0x4(%esp),%eax
        return 1;
    }
    return 0;
  104c8f:	31 d2                	xor    %edx,%edx
    if (page_index < NUM_PAGES && AT[page_index].allocated > 0) {
  104c91:	3b 81 74 cc 44 01    	cmp    0x144cc74(%ecx),%eax
  104c97:	73 11                	jae    104caa <at_is_allocated+0x2a>
  104c99:	8d 04 80             	lea    (%eax,%eax,4),%eax
  104c9c:	31 d2                	xor    %edx,%edx
  104c9e:	8b 84 81 50 cc 04 00 	mov    0x4cc50(%ecx,%eax,4),%eax
  104ca5:	85 c0                	test   %eax,%eax
  104ca7:	0f 95 c2             	setne  %dl
}
  104caa:	89 d0                	mov    %edx,%eax
  104cac:	c3                   	ret
  104cad:	8d 76 00             	lea    0x0(%esi),%esi

00104cb0 <at_set_allocated>:

// Setter function for page allocation status.
void at_set_allocated(unsigned int page_index, unsigned int allocated) {
    if (page_index < NUM_PAGES) {
  104cb0:	e8 07 b7 ff ff       	call   1003bc <__x86.get_pc_thunk.dx>
  104cb5:	81 c2 3f 83 00 00    	add    $0x833f,%edx
void at_set_allocated(unsigned int page_index, unsigned int allocated) {
  104cbb:	8b 44 24 04          	mov    0x4(%esp),%eax
    if (page_index < NUM_PAGES) {
  104cbf:	3b 82 74 cc 44 01    	cmp    0x144cc74(%edx),%eax
  104cc5:	73 0e                	jae    104cd5 <at_set_allocated+0x25>
        AT[page_index].allocated = allocated;
  104cc7:	8b 4c 24 08          	mov    0x8(%esp),%ecx
  104ccb:	8d 04 80             	lea    (%eax,%eax,4),%eax
  104cce:	89 8c 82 50 cc 04 00 	mov    %ecx,0x4cc50(%edx,%eax,4)
    }
}
  104cd5:	c3                   	ret
  104cd6:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  104cdd:	00 
  104cde:	66 90                	xchg   %ax,%ax

00104ce0 <get_free_list_head>:

int get_free_list_head(unsigned int order) {
    if (order >= MAX_ORDER) return -1;
  104ce0:	e8 d7 b6 ff ff       	call   1003bc <__x86.get_pc_thunk.dx>
  104ce5:	81 c2 0f 83 00 00    	add    $0x830f,%edx
int get_free_list_head(unsigned int order) {
  104ceb:	8b 44 24 04          	mov    0x4(%esp),%eax
    if (order >= MAX_ORDER) return -1;
  104cef:	83 f8 09             	cmp    $0x9,%eax
  104cf2:	77 0c                	ja     104d00 <get_free_list_head+0x20>
    return free_list[order];
  104cf4:	8b 84 82 4c cc 44 01 	mov    0x144cc4c(%edx,%eax,4),%eax
  104cfb:	c3                   	ret
  104cfc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if (order >= MAX_ORDER) return -1;
  104d00:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
  104d05:	c3                   	ret
  104d06:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  104d0d:	00 
  104d0e:	66 90                	xchg   %ax,%ax

00104d10 <at_list_add>:

// Add a page to the free list at the specified order.
void at_list_add(unsigned int order, unsigned int page_index) {
    if (order >= MAX_ORDER || page_index >= NUM_PAGES) return;
  104d10:	e8 18 01 00 00       	call   104e2d <__x86.get_pc_thunk.cx>
  104d15:	81 c1 df 82 00 00    	add    $0x82df,%ecx
void at_list_add(unsigned int order, unsigned int page_index) {
  104d1b:	55                   	push   %ebp
  104d1c:	57                   	push   %edi
  104d1d:	56                   	push   %esi
  104d1e:	53                   	push   %ebx
  104d1f:	83 ec 08             	sub    $0x8,%esp
    if (order >= MAX_ORDER || page_index >= NUM_PAGES) return;
  104d22:	83 7c 24 1c 09       	cmpl   $0x9,0x1c(%esp)
void at_list_add(unsigned int order, unsigned int page_index) {
  104d27:	8b 54 24 20          	mov    0x20(%esp),%edx
    if (order >= MAX_ORDER || page_index >= NUM_PAGES) return;
  104d2b:	77 5f                	ja     104d8c <at_list_add+0x7c>
  104d2d:	3b 91 74 cc 44 01    	cmp    0x144cc74(%ecx),%edx
  104d33:	73 57                	jae    104d8c <at_list_add+0x7c>

    // Gatekeeper: buddy freelists must contain ONLY normal RAM pages
    if (AT[page_index].perm != 2) return;
  104d35:	8d 35 4c cc 04 00    	lea    0x4cc4c,%esi
  104d3b:	8d 04 92             	lea    (%edx,%edx,4),%eax
  104d3e:	8d 1c 31             	lea    (%ecx,%esi,1),%ebx
  104d41:	c1 e0 02             	shl    $0x2,%eax
  104d44:	89 1c 24             	mov    %ebx,(%esp)
  104d47:	01 c3                	add    %eax,%ebx
  104d49:	83 3b 02             	cmpl   $0x2,(%ebx)
  104d4c:	75 3e                	jne    104d8c <at_list_add+0x7c>

    int current_head = free_list[order];
  104d4e:	8b 7c 24 1c          	mov    0x1c(%esp),%edi
  104d52:	8d a9 4c cc 44 01    	lea    0x144cc4c(%ecx),%ebp

    AT[page_index].order = order;
  104d58:	01 c8                	add    %ecx,%eax
    AT[page_index].next  = current_head;
    AT[page_index].prev  = -1;
  104d5a:	c7 43 10 ff ff ff ff 	movl   $0xffffffff,0x10(%ebx)
    int current_head = free_list[order];
  104d61:	89 6c 24 04          	mov    %ebp,0x4(%esp)
    AT[page_index].order = order;
  104d65:	01 f0                	add    %esi,%eax
    int current_head = free_list[order];
  104d67:	8b 6c bd 00          	mov    0x0(%ebp,%edi,4),%ebp
    AT[page_index].order = order;
  104d6b:	89 78 08             	mov    %edi,0x8(%eax)
    AT[page_index].next  = current_head;
  104d6e:	89 68 0c             	mov    %ebp,0xc(%eax)

    if (current_head != -1) {
  104d71:	83 fd ff             	cmp    $0xffffffff,%ebp
  104d74:	74 0b                	je     104d81 <at_list_add+0x71>
        AT[current_head].prev = (int)page_index;
  104d76:	8b 1c 24             	mov    (%esp),%ebx
  104d79:	8d 44 ad 00          	lea    0x0(%ebp,%ebp,4),%eax
  104d7d:	89 54 83 10          	mov    %edx,0x10(%ebx,%eax,4)
    }
    free_list[order] = (int)page_index;
  104d81:	8b 44 24 04          	mov    0x4(%esp),%eax
  104d85:	8b 7c 24 1c          	mov    0x1c(%esp),%edi
  104d89:	89 14 b8             	mov    %edx,(%eax,%edi,4)
}
  104d8c:	83 c4 08             	add    $0x8,%esp
  104d8f:	5b                   	pop    %ebx
  104d90:	5e                   	pop    %esi
  104d91:	5f                   	pop    %edi
  104d92:	5d                   	pop    %ebp
  104d93:	c3                   	ret
  104d94:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  104d9b:	00 
  104d9c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00104da0 <at_list_remove>:


// Removes a page from the free list at the specified order.
void at_list_remove(unsigned int order, unsigned int page_index) {
    if (order >= MAX_ORDER || page_index >= NUM_PAGES) return;
  104da0:	e8 13 b6 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  104da5:	05 4f 82 00 00       	add    $0x824f,%eax
void at_list_remove(unsigned int order, unsigned int page_index) {
  104daa:	55                   	push   %ebp
  104dab:	57                   	push   %edi
  104dac:	56                   	push   %esi
  104dad:	53                   	push   %ebx
    if (order >= MAX_ORDER || page_index >= NUM_PAGES) return;
  104dae:	83 7c 24 14 09       	cmpl   $0x9,0x14(%esp)
  104db3:	77 66                	ja     104e1b <at_list_remove+0x7b>
  104db5:	8b b0 74 cc 44 01    	mov    0x144cc74(%eax),%esi
  104dbb:	39 74 24 18          	cmp    %esi,0x18(%esp)
  104dbf:	73 5a                	jae    104e1b <at_list_remove+0x7b>

    int n = AT[page_index].next;
  104dc1:	8b 7c 24 18          	mov    0x18(%esp),%edi
  104dc5:	8d 14 bd 00 00 00 00 	lea    0x0(,%edi,4),%edx
  104dcc:	89 d3                	mov    %edx,%ebx
  104dce:	01 fb                	add    %edi,%ebx
  104dd0:	8d 3d 4c cc 04 00    	lea    0x4cc4c,%edi
  104dd6:	c1 e3 02             	shl    $0x2,%ebx
    int p = AT[page_index].prev;
  104dd9:	8d 34 07             	lea    (%edi,%eax,1),%esi
    int n = AT[page_index].next;
  104ddc:	8b 8c 18 58 cc 04 00 	mov    0x4cc58(%eax,%ebx,1),%ecx
    int p = AT[page_index].prev;
  104de3:	8b 5c 33 10          	mov    0x10(%ebx,%esi,1),%ebx

    if (p != -1) {
  104de7:	83 fb ff             	cmp    $0xffffffff,%ebx
  104dea:	74 34                	je     104e20 <at_list_remove+0x80>
        AT[p].next = n;
  104dec:	8d 2c 9b             	lea    (%ebx,%ebx,4),%ebp
  104def:	8d 2c a8             	lea    (%eax,%ebp,4),%ebp
  104df2:	89 4c 2f 0c          	mov    %ecx,0xc(%edi,%ebp,1)
    } else {
        free_list[order] = n;
    }

    if (n != -1) {
  104df6:	83 f9 ff             	cmp    $0xffffffff,%ecx
  104df9:	74 07                	je     104e02 <at_list_remove+0x62>
        AT[n].prev = p;
  104dfb:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
  104dfe:	89 5c 8e 10          	mov    %ebx,0x10(%esi,%ecx,4)
    }

    AT[page_index].next = -1;
  104e02:	03 54 24 18          	add    0x18(%esp),%edx
  104e06:	c1 e2 02             	shl    $0x2,%edx
  104e09:	01 d0                	add    %edx,%eax
    AT[page_index].prev = -1;
  104e0b:	c7 44 32 10 ff ff ff 	movl   $0xffffffff,0x10(%edx,%esi,1)
  104e12:	ff 
    AT[page_index].next = -1;
  104e13:	c7 44 07 0c ff ff ff 	movl   $0xffffffff,0xc(%edi,%eax,1)
  104e1a:	ff 
}
  104e1b:	5b                   	pop    %ebx
  104e1c:	5e                   	pop    %esi
  104e1d:	5f                   	pop    %edi
  104e1e:	5d                   	pop    %ebp
  104e1f:	c3                   	ret
        free_list[order] = n;
  104e20:	8b 6c 24 14          	mov    0x14(%esp),%ebp
  104e24:	89 8c a8 4c cc 44 01 	mov    %ecx,0x144cc4c(%eax,%ebp,4)
  104e2b:	eb c9                	jmp    104df6 <at_list_remove+0x56>

00104e2d <__x86.get_pc_thunk.cx>:
  104e2d:	8b 0c 24             	mov    (%esp),%ecx
  104e30:	c3                   	ret
  104e31:	66 90                	xchg   %ax,%ax
  104e33:	66 90                	xchg   %ax,%ax
  104e35:	66 90                	xchg   %ax,%ax
  104e37:	66 90                	xchg   %ax,%ax
  104e39:	66 90                	xchg   %ax,%ax
  104e3b:	66 90                	xchg   %ax,%ax
  104e3d:	66 90                	xchg   %ax,%ax
  104e3f:	90                   	nop

00104e40 <MATIntro_test1>:
#include "export.h"



// Test case 1: Test get_nps and set_nps functions.
int MATIntro_test1() {
  104e40:	55                   	push   %ebp
  104e41:	57                   	push   %edi
  104e42:	56                   	push   %esi
    int rn10[] = { 1, 3, 5, 6, 78, 3576, 32, 8, 0, 100 };
    int i;
    int nps = get_nps();
    for (i = 0; i < 10; i++) {
  104e43:	31 f6                	xor    %esi,%esi
int MATIntro_test1() {
  104e45:	53                   	push   %ebx
  104e46:	e8 75 b5 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  104e4b:	81 c3 a9 81 00 00    	add    $0x81a9,%ebx
  104e51:	83 ec 4c             	sub    $0x4c,%esp
    int rn10[] = { 1, 3, 5, 6, 78, 3576, 32, 8, 0, 100 };
  104e54:	c7 44 24 18 01 00 00 	movl   $0x1,0x18(%esp)
  104e5b:	00 
  104e5c:	8d 7c 24 18          	lea    0x18(%esp),%edi
  104e60:	c7 44 24 1c 03 00 00 	movl   $0x3,0x1c(%esp)
  104e67:	00 
  104e68:	c7 44 24 20 05 00 00 	movl   $0x5,0x20(%esp)
  104e6f:	00 
  104e70:	c7 44 24 24 06 00 00 	movl   $0x6,0x24(%esp)
  104e77:	00 
  104e78:	c7 44 24 28 4e 00 00 	movl   $0x4e,0x28(%esp)
  104e7f:	00 
  104e80:	c7 44 24 2c f8 0d 00 	movl   $0xdf8,0x2c(%esp)
  104e87:	00 
  104e88:	c7 44 24 30 20 00 00 	movl   $0x20,0x30(%esp)
  104e8f:	00 
  104e90:	c7 44 24 34 08 00 00 	movl   $0x8,0x34(%esp)
  104e97:	00 
  104e98:	c7 44 24 38 00 00 00 	movl   $0x0,0x38(%esp)
  104e9f:	00 
  104ea0:	c7 44 24 3c 64 00 00 	movl   $0x64,0x3c(%esp)
  104ea7:	00 
    int nps = get_nps();
  104ea8:	e8 33 fd ff ff       	call   104be0 <get_nps>
  104ead:	89 44 24 0c          	mov    %eax,0xc(%esp)
    for (i = 0; i < 10; i++) {
  104eb1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        set_nps(rn10[i]);
  104eb8:	8b 2c b7             	mov    (%edi,%esi,4),%ebp
  104ebb:	83 ec 0c             	sub    $0xc,%esp
  104ebe:	55                   	push   %ebp
  104ebf:	e8 3c fd ff ff       	call   104c00 <set_nps>
        if (get_nps() != rn10[i]) {
  104ec4:	e8 17 fd ff ff       	call   104be0 <get_nps>
  104ec9:	83 c4 10             	add    $0x10,%esp
  104ecc:	39 c5                	cmp    %eax,%ebp
  104ece:	75 30                	jne    104f00 <MATIntro_test1+0xc0>
    for (i = 0; i < 10; i++) {
  104ed0:	83 c6 01             	add    $0x1,%esi
  104ed3:	83 fe 0a             	cmp    $0xa,%esi
  104ed6:	75 e0                	jne    104eb8 <MATIntro_test1+0x78>
            dprintf("test 1.1 failed (i = %d): (%d != %d)\n", i, get_nps(), rn10[i]);
            set_nps(nps);
            return 1;
        }
    }
    set_nps(nps);
  104ed8:	83 ec 0c             	sub    $0xc,%esp
  104edb:	ff 74 24 18          	push   0x18(%esp)
  104edf:	e8 1c fd ff ff       	call   104c00 <set_nps>
    dprintf("test 1 passed.\n");
  104ee4:	8d 83 58 b8 ff ff    	lea    -0x47a8(%ebx),%eax
  104eea:	89 04 24             	mov    %eax,(%esp)
  104eed:	e8 7a de ff ff       	call   102d6c <dprintf>
    return 0;
  104ef2:	83 c4 10             	add    $0x10,%esp
  104ef5:	31 c0                	xor    %eax,%eax
}
  104ef7:	83 c4 4c             	add    $0x4c,%esp
  104efa:	5b                   	pop    %ebx
  104efb:	5e                   	pop    %esi
  104efc:	5f                   	pop    %edi
  104efd:	5d                   	pop    %ebp
  104efe:	c3                   	ret
  104eff:	90                   	nop
            dprintf("test 1.1 failed (i = %d): (%d != %d)\n", i, get_nps(), rn10[i]);
  104f00:	e8 db fc ff ff       	call   104be0 <get_nps>
  104f05:	55                   	push   %ebp
  104f06:	50                   	push   %eax
  104f07:	8d 83 48 bb ff ff    	lea    -0x44b8(%ebx),%eax
  104f0d:	56                   	push   %esi
  104f0e:	50                   	push   %eax
  104f0f:	e8 58 de ff ff       	call   102d6c <dprintf>
            set_nps(nps);
  104f14:	58                   	pop    %eax
  104f15:	ff 74 24 18          	push   0x18(%esp)
  104f19:	e8 e2 fc ff ff       	call   104c00 <set_nps>
            return 1;
  104f1e:	83 c4 10             	add    $0x10,%esp
  104f21:	b8 01 00 00 00       	mov    $0x1,%eax
}
  104f26:	83 c4 4c             	add    $0x4c,%esp
  104f29:	5b                   	pop    %ebx
  104f2a:	5e                   	pop    %esi
  104f2b:	5f                   	pop    %edi
  104f2c:	5d                   	pop    %ebp
  104f2d:	c3                   	ret
  104f2e:	66 90                	xchg   %ax,%ax

00104f30 <MATIntro_test2>:

// Test case 2: Test permissions and allocation.
int MATIntro_test2() {
  104f30:	56                   	push   %esi
  104f31:	53                   	push   %ebx
  104f32:	e8 89 b4 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  104f37:	81 c3 bd 80 00 00    	add    $0x80bd,%ebx
  104f3d:	83 ec 0c             	sub    $0xc,%esp
    at_set_perm(0, 2); // Set to normal
  104f40:	6a 02                	push   $0x2
  104f42:	6a 00                	push   $0x0
  104f44:	e8 07 fd ff ff       	call   104c50 <at_set_perm>
    if (at_is_norm(0) != 1 || at_is_allocated(0) != 0) {
  104f49:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  104f50:	e8 cb fc ff ff       	call   104c20 <at_is_norm>
  104f55:	83 c4 10             	add    $0x10,%esp
  104f58:	83 f8 01             	cmp    $0x1,%eax
  104f5b:	75 11                	jne    104f6e <MATIntro_test2+0x3e>
  104f5d:	83 ec 0c             	sub    $0xc,%esp
  104f60:	6a 00                	push   $0x0
  104f62:	e8 19 fd ff ff       	call   104c80 <at_is_allocated>
  104f67:	83 c4 10             	add    $0x10,%esp
  104f6a:	85 c0                	test   %eax,%eax
  104f6c:	74 3a                	je     104fa8 <MATIntro_test2+0x78>
        dprintf("test 2.1 failed: (%d != 1 || %d != 0)\n", at_is_norm(0), at_is_allocated(0));
  104f6e:	83 ec 0c             	sub    $0xc,%esp
  104f71:	6a 00                	push   $0x0
  104f73:	e8 08 fd ff ff       	call   104c80 <at_is_allocated>
  104f78:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  104f7f:	89 c6                	mov    %eax,%esi
  104f81:	e8 9a fc ff ff       	call   104c20 <at_is_norm>
  104f86:	83 c4 0c             	add    $0xc,%esp
  104f89:	56                   	push   %esi
  104f8a:	50                   	push   %eax
  104f8b:	8d 83 70 bb ff ff    	lea    -0x4490(%ebx),%eax
  104f91:	50                   	push   %eax
  104f92:	e8 d5 dd ff ff       	call   102d6c <dprintf>
        return 1;
  104f97:	83 c4 10             	add    $0x10,%esp
        dprintf("test 2.2 failed: permission not reset\n");
        return 1;
    }
    dprintf("test 2 passed.\n");
    return 0;
}
  104f9a:	83 c4 04             	add    $0x4,%esp
        return 1;
  104f9d:	b8 01 00 00 00       	mov    $0x1,%eax
}
  104fa2:	5b                   	pop    %ebx
  104fa3:	5e                   	pop    %esi
  104fa4:	c3                   	ret
  104fa5:	8d 76 00             	lea    0x0(%esi),%esi
    at_set_perm(0, 0); // Set to reserved
  104fa8:	83 ec 08             	sub    $0x8,%esp
  104fab:	6a 00                	push   $0x0
  104fad:	6a 00                	push   $0x0
  104faf:	e8 9c fc ff ff       	call   104c50 <at_set_perm>
    if (at_is_norm(0) != 0) {
  104fb4:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  104fbb:	e8 60 fc ff ff       	call   104c20 <at_is_norm>
  104fc0:	83 c4 10             	add    $0x10,%esp
  104fc3:	85 c0                	test   %eax,%eax
  104fc5:	75 21                	jne    104fe8 <MATIntro_test2+0xb8>
    dprintf("test 2 passed.\n");
  104fc7:	83 ec 0c             	sub    $0xc,%esp
  104fca:	8d 83 68 b8 ff ff    	lea    -0x4798(%ebx),%eax
  104fd0:	50                   	push   %eax
  104fd1:	e8 96 dd ff ff       	call   102d6c <dprintf>
    return 0;
  104fd6:	83 c4 10             	add    $0x10,%esp
  104fd9:	31 c0                	xor    %eax,%eax
}
  104fdb:	83 c4 04             	add    $0x4,%esp
  104fde:	5b                   	pop    %ebx
  104fdf:	5e                   	pop    %esi
  104fe0:	c3                   	ret
  104fe1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        dprintf("test 2.2 failed: permission not reset\n");
  104fe8:	83 ec 0c             	sub    $0xc,%esp
  104feb:	8d 83 98 bb ff ff    	lea    -0x4468(%ebx),%eax
  104ff1:	50                   	push   %eax
  104ff2:	e8 75 dd ff ff       	call   102d6c <dprintf>
        return 1;
  104ff7:	83 c4 10             	add    $0x10,%esp
  104ffa:	eb 9e                	jmp    104f9a <MATIntro_test2+0x6a>
  104ffc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00105000 <MATIntro_test3>:

// Test case 3: Test allocation status.
int MATIntro_test3() {
  105000:	53                   	push   %ebx
  105001:	e8 ba b3 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  105006:	81 c3 ee 7f 00 00    	add    $0x7fee,%ebx
  10500c:	83 ec 10             	sub    $0x10,%esp
    at_set_allocated(1, 0);
  10500f:	6a 00                	push   $0x0
  105011:	6a 01                	push   $0x1
  105013:	e8 98 fc ff ff       	call   104cb0 <at_set_allocated>
    if (at_is_allocated(1) != 0) {
  105018:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  10501f:	e8 5c fc ff ff       	call   104c80 <at_is_allocated>
  105024:	83 c4 10             	add    $0x10,%esp
  105027:	85 c0                	test   %eax,%eax
  105029:	75 75                	jne    1050a0 <MATIntro_test3+0xa0>
        dprintf("test 3.1 failed: (%d != 0)\n", at_is_allocated(1));
        return 1;
    }
    at_set_allocated(1, 1);
  10502b:	83 ec 08             	sub    $0x8,%esp
  10502e:	6a 01                	push   $0x1
  105030:	6a 01                	push   $0x1
  105032:	e8 79 fc ff ff       	call   104cb0 <at_set_allocated>
    if (at_is_allocated(1) != 1) {
  105037:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  10503e:	e8 3d fc ff ff       	call   104c80 <at_is_allocated>
  105043:	83 c4 10             	add    $0x10,%esp
  105046:	83 f8 01             	cmp    $0x1,%eax
  105049:	74 2d                	je     105078 <MATIntro_test3+0x78>
        dprintf("test 3.2 failed: (%d != 1)\n", at_is_allocated(1));
  10504b:	83 ec 0c             	sub    $0xc,%esp
  10504e:	6a 01                	push   $0x1
  105050:	e8 2b fc ff ff       	call   104c80 <at_is_allocated>
  105055:	5a                   	pop    %edx
  105056:	59                   	pop    %ecx
  105057:	50                   	push   %eax
  105058:	8d 83 94 b8 ff ff    	lea    -0x476c(%ebx),%eax
  10505e:	50                   	push   %eax
  10505f:	e8 08 dd ff ff       	call   102d6c <dprintf>
        return 1;
  105064:	83 c4 10             	add    $0x10,%esp
    }
    at_set_allocated(1, 0);
    dprintf("test 3 passed.\n");
    return 0;
}
  105067:	83 c4 08             	add    $0x8,%esp
        return 1;
  10506a:	b8 01 00 00 00       	mov    $0x1,%eax
}
  10506f:	5b                   	pop    %ebx
  105070:	c3                   	ret
  105071:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    at_set_allocated(1, 0);
  105078:	83 ec 08             	sub    $0x8,%esp
  10507b:	6a 00                	push   $0x0
  10507d:	6a 01                	push   $0x1
  10507f:	e8 2c fc ff ff       	call   104cb0 <at_set_allocated>
    dprintf("test 3 passed.\n");
  105084:	8d 83 b0 b8 ff ff    	lea    -0x4750(%ebx),%eax
  10508a:	89 04 24             	mov    %eax,(%esp)
  10508d:	e8 da dc ff ff       	call   102d6c <dprintf>
    return 0;
  105092:	83 c4 10             	add    $0x10,%esp
  105095:	31 c0                	xor    %eax,%eax
}
  105097:	83 c4 08             	add    $0x8,%esp
  10509a:	5b                   	pop    %ebx
  10509b:	c3                   	ret
  10509c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        dprintf("test 3.1 failed: (%d != 0)\n", at_is_allocated(1));
  1050a0:	83 ec 0c             	sub    $0xc,%esp
  1050a3:	6a 01                	push   $0x1
  1050a5:	e8 d6 fb ff ff       	call   104c80 <at_is_allocated>
  1050aa:	5a                   	pop    %edx
  1050ab:	59                   	pop    %ecx
  1050ac:	50                   	push   %eax
  1050ad:	8d 83 78 b8 ff ff    	lea    -0x4788(%ebx),%eax
  1050b3:	50                   	push   %eax
  1050b4:	e8 b3 dc ff ff       	call   102d6c <dprintf>
        return 1;
  1050b9:	83 c4 10             	add    $0x10,%esp
  1050bc:	eb a9                	jmp    105067 <MATIntro_test3+0x67>
  1050be:	66 90                	xchg   %ax,%ax

001050c0 <MATIntro_test_buddy>:

// Buddy allocator test case: Verifies the link-list pointers in AT.
int MATIntro_test_buddy() {
  1050c0:	57                   	push   %edi
  1050c1:	56                   	push   %esi
  1050c2:	53                   	push   %ebx
  1050c3:	e8 f8 b2 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  1050c8:	81 c3 2c 7f 00 00    	add    $0x7f2c,%ebx
    // Save previous state so we don't contaminate later layers
    unsigned int old_nps = get_nps();
  1050ce:	e8 0d fb ff ff       	call   104be0 <get_nps>

    set_nps(2048);
  1050d3:	83 ec 0c             	sub    $0xc,%esp
  1050d6:	68 00 08 00 00       	push   $0x800
    unsigned int old_nps = get_nps();
  1050db:	89 c6                	mov    %eax,%esi
    set_nps(2048);
  1050dd:	e8 1e fb ff ff       	call   104c00 <set_nps>
    pmm_init_freelists();
  1050e2:	e8 c9 fa ff ff       	call   104bb0 <pmm_init_freelists>

    // Make sure pages we add are Normal RAM (perm==2)
    at_set_allocated(10, 0);
  1050e7:	5f                   	pop    %edi
  1050e8:	58                   	pop    %eax
  1050e9:	6a 00                	push   $0x0
  1050eb:	6a 0a                	push   $0xa
  1050ed:	e8 be fb ff ff       	call   104cb0 <at_set_allocated>
    at_set_allocated(20, 0);
  1050f2:	58                   	pop    %eax
  1050f3:	5a                   	pop    %edx
  1050f4:	6a 00                	push   $0x0
  1050f6:	6a 14                	push   $0x14
  1050f8:	e8 b3 fb ff ff       	call   104cb0 <at_set_allocated>
    at_set_perm(10, 2);
  1050fd:	59                   	pop    %ecx
  1050fe:	5f                   	pop    %edi
  1050ff:	6a 02                	push   $0x2
  105101:	6a 0a                	push   $0xa
  105103:	e8 48 fb ff ff       	call   104c50 <at_set_perm>
    at_set_perm(20, 2);
  105108:	58                   	pop    %eax
  105109:	5a                   	pop    %edx
  10510a:	6a 02                	push   $0x2
  10510c:	6a 14                	push   $0x14
  10510e:	e8 3d fb ff ff       	call   104c50 <at_set_perm>

    at_set_allocated(512, 0);
  105113:	59                   	pop    %ecx
  105114:	5f                   	pop    %edi
  105115:	6a 00                	push   $0x0
  105117:	68 00 02 00 00       	push   $0x200
  10511c:	e8 8f fb ff ff       	call   104cb0 <at_set_allocated>
    at_set_perm(512, 2);
  105121:	58                   	pop    %eax
  105122:	5a                   	pop    %edx
  105123:	6a 02                	push   $0x2
  105125:	68 00 02 00 00       	push   $0x200
  10512a:	e8 21 fb ff ff       	call   104c50 <at_set_perm>

    // Test A: Add pages to Order 0 (4KB)
    at_list_add(0, 10);
  10512f:	59                   	pop    %ecx
  105130:	5f                   	pop    %edi
  105131:	6a 0a                	push   $0xa
  105133:	6a 00                	push   $0x0
  105135:	e8 d6 fb ff ff       	call   104d10 <at_list_add>
    at_list_add(0, 20);
  10513a:	58                   	pop    %eax
  10513b:	5a                   	pop    %edx
  10513c:	6a 14                	push   $0x14
  10513e:	6a 00                	push   $0x0
  105140:	e8 cb fb ff ff       	call   104d10 <at_list_add>

    if (get_free_list_head(0) != 20) {
  105145:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  10514c:	e8 8f fb ff ff       	call   104ce0 <get_free_list_head>
  105151:	83 c4 10             	add    $0x10,%esp
  105154:	83 f8 14             	cmp    $0x14,%eax
  105157:	74 57                	je     1051b0 <MATIntro_test_buddy+0xf0>
        dprintf("Buddy Test failed: Head of order 0 should be 20, got %d\n", get_free_list_head(0));
  105159:	83 ec 0c             	sub    $0xc,%esp
  10515c:	6a 00                	push   $0x0
  10515e:	e8 7d fb ff ff       	call   104ce0 <get_free_list_head>
  105163:	5a                   	pop    %edx
  105164:	59                   	pop    %ecx
  105165:	50                   	push   %eax
  105166:	8d 83 c0 bb ff ff    	lea    -0x4440(%ebx),%eax
        return 1;
    }

    int head = get_free_list_head(0);
    if (AT[head].next != 10) {
        dprintf("Buddy Test failed: AT[20].next should be 10, got %d\n", AT[head].next);
  10516c:	50                   	push   %eax
  10516d:	e8 fa db ff ff       	call   102d6c <dprintf>
        at_set_perm(10, 0);
  105172:	59                   	pop    %ecx
  105173:	5f                   	pop    %edi
  105174:	6a 00                	push   $0x0
  105176:	6a 0a                	push   $0xa
  105178:	e8 d3 fa ff ff       	call   104c50 <at_set_perm>
        at_set_perm(20, 0);
  10517d:	58                   	pop    %eax
  10517e:	5a                   	pop    %edx
  10517f:	6a 00                	push   $0x0
  105181:	6a 14                	push   $0x14
  105183:	e8 c8 fa ff ff       	call   104c50 <at_set_perm>
        at_set_perm(512, 0);
  105188:	59                   	pop    %ecx
  105189:	5f                   	pop    %edi
  10518a:	6a 00                	push   $0x0
  10518c:	68 00 02 00 00       	push   $0x200
  105191:	e8 ba fa ff ff       	call   104c50 <at_set_perm>
        pmm_init_freelists();
  105196:	e8 15 fa ff ff       	call   104bb0 <pmm_init_freelists>
        set_nps(old_nps);
  10519b:	89 34 24             	mov    %esi,(%esp)
  10519e:	e8 5d fa ff ff       	call   104c00 <set_nps>
        return 1;
  1051a3:	83 c4 10             	add    $0x10,%esp
        return 1;
  1051a6:	b8 01 00 00 00       	mov    $0x1,%eax
    at_set_perm(512, 0);
    pmm_init_freelists();
    set_nps(old_nps);

    return 0;
}
  1051ab:	5b                   	pop    %ebx
  1051ac:	5e                   	pop    %esi
  1051ad:	5f                   	pop    %edi
  1051ae:	c3                   	ret
  1051af:	90                   	nop
    int head = get_free_list_head(0);
  1051b0:	83 ec 0c             	sub    $0xc,%esp
  1051b3:	6a 00                	push   $0x0
  1051b5:	e8 26 fb ff ff       	call   104ce0 <get_free_list_head>
    if (AT[head].next != 10) {
  1051ba:	c7 c7 40 9c 15 00    	mov    $0x159c40,%edi
  1051c0:	83 c4 10             	add    $0x10,%esp
  1051c3:	8d 04 80             	lea    (%eax,%eax,4),%eax
  1051c6:	8b 44 87 0c          	mov    0xc(%edi,%eax,4),%eax
  1051ca:	83 f8 0a             	cmp    $0xa,%eax
  1051cd:	75 61                	jne    105230 <MATIntro_test_buddy+0x170>
    if (AT[10].prev != 20) {
  1051cf:	8b 87 d8 00 00 00    	mov    0xd8(%edi),%eax
  1051d5:	83 f8 14             	cmp    $0x14,%eax
  1051d8:	75 46                	jne    105220 <MATIntro_test_buddy+0x160>
    at_list_add(9, 512);
  1051da:	83 ec 08             	sub    $0x8,%esp
  1051dd:	68 00 02 00 00       	push   $0x200
  1051e2:	6a 09                	push   $0x9
  1051e4:	e8 27 fb ff ff       	call   104d10 <at_list_add>
    if (get_free_list_head(9) != 512 || AT[512].order != 9) {
  1051e9:	c7 04 24 09 00 00 00 	movl   $0x9,(%esp)
  1051f0:	e8 eb fa ff ff       	call   104ce0 <get_free_list_head>
  1051f5:	83 c4 10             	add    $0x10,%esp
  1051f8:	3d 00 02 00 00       	cmp    $0x200,%eax
  1051fd:	75 09                	jne    105208 <MATIntro_test_buddy+0x148>
  1051ff:	83 bf 08 28 00 00 09 	cmpl   $0x9,0x2808(%edi)
  105206:	74 38                	je     105240 <MATIntro_test_buddy+0x180>
        dprintf("Buddy Test failed: Order 9 initialization failed\n");
  105208:	83 ec 0c             	sub    $0xc,%esp
  10520b:	8d 83 6c bc ff ff    	lea    -0x4394(%ebx),%eax
  105211:	e9 56 ff ff ff       	jmp    10516c <MATIntro_test_buddy+0xac>
  105216:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10521d:	00 
  10521e:	66 90                	xchg   %ax,%ax
        dprintf("Buddy Test failed: AT[10].prev should be 20, got %d\n", AT[10].prev);
  105220:	83 ec 08             	sub    $0x8,%esp
  105223:	50                   	push   %eax
  105224:	8d 83 34 bc ff ff    	lea    -0x43cc(%ebx),%eax
  10522a:	e9 3d ff ff ff       	jmp    10516c <MATIntro_test_buddy+0xac>
  10522f:	90                   	nop
        dprintf("Buddy Test failed: AT[20].next should be 10, got %d\n", AT[head].next);
  105230:	83 ec 08             	sub    $0x8,%esp
  105233:	50                   	push   %eax
  105234:	8d 83 fc bb ff ff    	lea    -0x4404(%ebx),%eax
  10523a:	e9 2d ff ff ff       	jmp    10516c <MATIntro_test_buddy+0xac>
  10523f:	90                   	nop
    at_list_remove(0, 20);
  105240:	83 ec 08             	sub    $0x8,%esp
  105243:	6a 14                	push   $0x14
  105245:	6a 00                	push   $0x0
  105247:	e8 54 fb ff ff       	call   104da0 <at_list_remove>
    if (get_free_list_head(0) != 10 || AT[10].prev != -1) {
  10524c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  105253:	e8 88 fa ff ff       	call   104ce0 <get_free_list_head>
  105258:	83 c4 10             	add    $0x10,%esp
  10525b:	83 f8 0a             	cmp    $0xa,%eax
  10525e:	75 09                	jne    105269 <MATIntro_test_buddy+0x1a9>
  105260:	83 bf d8 00 00 00 ff 	cmpl   $0xffffffff,0xd8(%edi)
  105267:	74 0e                	je     105277 <MATIntro_test_buddy+0x1b7>
        dprintf("Buddy Test failed: Removal logic failed to update head/prev\n");
  105269:	83 ec 0c             	sub    $0xc,%esp
  10526c:	8d 83 a0 bc ff ff    	lea    -0x4360(%ebx),%eax
  105272:	e9 f5 fe ff ff       	jmp    10516c <MATIntro_test_buddy+0xac>
    dprintf("Buddy list logic tests passed.\n");
  105277:	83 ec 0c             	sub    $0xc,%esp
  10527a:	8d 83 e0 bc ff ff    	lea    -0x4320(%ebx),%eax
  105280:	50                   	push   %eax
  105281:	e8 e6 da ff ff       	call   102d6c <dprintf>
    at_set_perm(10, 0);
  105286:	58                   	pop    %eax
  105287:	5a                   	pop    %edx
  105288:	6a 00                	push   $0x0
  10528a:	6a 0a                	push   $0xa
  10528c:	e8 bf f9 ff ff       	call   104c50 <at_set_perm>
    at_set_perm(20, 0);
  105291:	59                   	pop    %ecx
  105292:	5f                   	pop    %edi
  105293:	6a 00                	push   $0x0
  105295:	6a 14                	push   $0x14
  105297:	e8 b4 f9 ff ff       	call   104c50 <at_set_perm>
    at_set_perm(512, 0);
  10529c:	58                   	pop    %eax
  10529d:	5a                   	pop    %edx
  10529e:	6a 00                	push   $0x0
  1052a0:	68 00 02 00 00       	push   $0x200
  1052a5:	e8 a6 f9 ff ff       	call   104c50 <at_set_perm>
    pmm_init_freelists();
  1052aa:	e8 01 f9 ff ff       	call   104bb0 <pmm_init_freelists>
    set_nps(old_nps);
  1052af:	89 34 24             	mov    %esi,(%esp)
  1052b2:	e8 49 f9 ff ff       	call   104c00 <set_nps>
    return 0;
  1052b7:	83 c4 10             	add    $0x10,%esp
  1052ba:	31 c0                	xor    %eax,%eax
  1052bc:	e9 ea fe ff ff       	jmp    1051ab <MATIntro_test_buddy+0xeb>
  1052c1:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  1052c8:	00 
  1052c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

001052d0 <test_MATIntro>:



// The main entry point for the MATIntro layer test.
int test_MATIntro() {
  1052d0:	57                   	push   %edi
  1052d1:	e8 8a df ff ff       	call   103260 <__x86.get_pc_thunk.di>
  1052d6:	81 c7 1e 7d 00 00    	add    $0x7d1e,%edi
  1052dc:	56                   	push   %esi
  1052dd:	53                   	push   %ebx
    int error = 0;
    error += MATIntro_test1();
  1052de:	e8 5d fb ff ff       	call   104e40 <MATIntro_test1>
  1052e3:	89 c3                	mov    %eax,%ebx
    error += MATIntro_test2();
  1052e5:	e8 46 fc ff ff       	call   104f30 <MATIntro_test2>
  1052ea:	01 c3                	add    %eax,%ebx
    error += MATIntro_test3();
  1052ec:	e8 0f fd ff ff       	call   105000 <MATIntro_test3>
  1052f1:	01 c3                	add    %eax,%ebx
    error += MATIntro_test_buddy();
  1052f3:	e8 c8 fd ff ff       	call   1050c0 <MATIntro_test_buddy>

    if (error == 0) {
  1052f8:	89 de                	mov    %ebx,%esi
  1052fa:	01 c6                	add    %eax,%esi
  1052fc:	75 22                	jne    105320 <test_MATIntro+0x50>
        dprintf("ALL MATIntro TESTS PASSED\n");
  1052fe:	83 ec 0c             	sub    $0xc,%esp
  105301:	8d 87 c0 b8 ff ff    	lea    -0x4740(%edi),%eax
  105307:	89 fb                	mov    %edi,%ebx
  105309:	50                   	push   %eax
  10530a:	e8 5d da ff ff       	call   102d6c <dprintf>
  10530f:	83 c4 10             	add    $0x10,%esp
    } else {
        dprintf("MATIntro TESTS FAILED WITH %d ERRORS\n", error);
    }
    return error;
  105312:	89 f0                	mov    %esi,%eax
  105314:	5b                   	pop    %ebx
  105315:	5e                   	pop    %esi
  105316:	5f                   	pop    %edi
  105317:	c3                   	ret
  105318:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10531f:	00 
        dprintf("MATIntro TESTS FAILED WITH %d ERRORS\n", error);
  105320:	83 ec 08             	sub    $0x8,%esp
  105323:	8d 87 00 bd ff ff    	lea    -0x4300(%edi),%eax
  105329:	89 fb                	mov    %edi,%ebx
  10532b:	56                   	push   %esi
  10532c:	50                   	push   %eax
  10532d:	e8 3a da ff ff       	call   102d6c <dprintf>
  105332:	83 c4 10             	add    $0x10,%esp
  105335:	89 f0                	mov    %esi,%eax
  105337:	5b                   	pop    %ebx
  105338:	5e                   	pop    %esi
  105339:	5f                   	pop    %edi
  10533a:	c3                   	ret
  10533b:	66 90                	xchg   %ax,%ax
  10533d:	66 90                	xchg   %ax,%ax
  10533f:	90                   	nop

00105340 <pmem_init>:
    }
    return 1;
}

void pmem_init(unsigned int mbi_addr)
{
  105340:	55                   	push   %ebp
  105341:	57                   	push   %edi
  105342:	56                   	push   %esi
  105343:	53                   	push   %ebx
  105344:	e8 77 b0 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  105349:	81 c3 ab 7c 00 00    	add    $0x7cab,%ebx
  10534f:	83 ec 38             	sub    $0x38,%esp
    unsigned int i, j;
    unsigned int highest_addr = 0;

    devinit(mbi_addr);
  105352:	ff 74 24 4c          	push   0x4c(%esp)
  105356:	e8 a6 b7 ff ff       	call   100b01 <devinit>
    unsigned int n_entries = get_size();
  10535b:	e8 ef bc ff ff       	call   10104f <get_size>

    // Find end of physical RAM
    for (i = 0; i < n_entries; i++) {
  105360:	83 c4 10             	add    $0x10,%esp
    unsigned int n_entries = get_size();
  105363:	89 c7                	mov    %eax,%edi
    for (i = 0; i < n_entries; i++) {
  105365:	85 c0                	test   %eax,%eax
  105367:	0f 84 e7 02 00 00    	je     105654 <pmem_init+0x314>
  10536d:	89 44 24 08          	mov    %eax,0x8(%esp)
    unsigned int highest_addr = 0;
  105371:	31 d2                	xor    %edx,%edx
    for (i = 0; i < n_entries; i++) {
  105373:	31 ed                	xor    %ebp,%ebp
  105375:	89 d7                	mov    %edx,%edi
  105377:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10537e:	00 
  10537f:	90                   	nop
        unsigned int end = get_mms(i) + get_mml(i);
  105380:	83 ec 0c             	sub    $0xc,%esp
  105383:	55                   	push   %ebp
  105384:	e8 db bc ff ff       	call   101064 <get_mms>
  105389:	89 2c 24             	mov    %ebp,(%esp)
  10538c:	89 c6                	mov    %eax,%esi
  10538e:	e8 37 bd ff ff       	call   1010ca <get_mml>
  105393:	01 f0                	add    %esi,%eax
        if (end > highest_addr) highest_addr = end;
  105395:	39 c7                	cmp    %eax,%edi
  105397:	0f 42 f8             	cmovb  %eax,%edi
    for (i = 0; i < n_entries; i++) {
  10539a:	83 c4 10             	add    $0x10,%esp
  10539d:	83 c5 01             	add    $0x1,%ebp
  1053a0:	39 6c 24 08          	cmp    %ebp,0x8(%esp)
  1053a4:	75 da                	jne    105380 <pmem_init+0x40>
    }
    unsigned int phys_nps = highest_addr / PAGESIZE;
  1053a6:	89 fa                	mov    %edi,%edx
  1053a8:	8b 7c 24 08          	mov    0x8(%esp),%edi
  1053ac:	c1 ea 0c             	shr    $0xc,%edx
  1053af:	89 54 24 14          	mov    %edx,0x14(%esp)

    // AT must cover the PI window used by tests
    set_nps(VM_USERHI_PI);
  1053b3:	83 ec 0c             	sub    $0xc,%esp

    pmm_init_freelists();

    // PHASE 1: reset whole AT
    for (i = 0; i < get_nps(); i++) {
  1053b6:	31 f6                	xor    %esi,%esi
    set_nps(VM_USERHI_PI);
  1053b8:	68 00 00 0f 00       	push   $0xf0000
  1053bd:	e8 3e f8 ff ff       	call   104c00 <set_nps>
    pmm_init_freelists();
  1053c2:	e8 e9 f7 ff ff       	call   104bb0 <pmm_init_freelists>
    for (i = 0; i < get_nps(); i++) {
  1053c7:	c7 c0 40 9c 15 00    	mov    $0x159c40,%eax
  1053cd:	89 44 24 28          	mov    %eax,0x28(%esp)
  1053d1:	8d 68 08             	lea    0x8(%eax),%ebp
  1053d4:	83 c4 10             	add    $0x10,%esp
  1053d7:	eb 3a                	jmp    105413 <pmem_init+0xd3>
  1053d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        at_set_allocated(i, 0);
  1053e0:	83 ec 08             	sub    $0x8,%esp
  1053e3:	83 c5 14             	add    $0x14,%ebp
  1053e6:	6a 00                	push   $0x0
  1053e8:	56                   	push   %esi
  1053e9:	e8 c2 f8 ff ff       	call   104cb0 <at_set_allocated>
        at_set_perm(i, 0);
  1053ee:	58                   	pop    %eax
  1053ef:	5a                   	pop    %edx
  1053f0:	6a 00                	push   $0x0
  1053f2:	56                   	push   %esi
    for (i = 0; i < get_nps(); i++) {
  1053f3:	83 c6 01             	add    $0x1,%esi
        at_set_perm(i, 0);
  1053f6:	e8 55 f8 ff ff       	call   104c50 <at_set_perm>
        AT[i].next = -1;
  1053fb:	c7 45 f0 ff ff ff ff 	movl   $0xffffffff,-0x10(%ebp)
        AT[i].prev = -1;
  105402:	83 c4 10             	add    $0x10,%esp
  105405:	c7 45 f4 ff ff ff ff 	movl   $0xffffffff,-0xc(%ebp)
        AT[i].order = 0;
  10540c:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
    for (i = 0; i < get_nps(); i++) {
  105413:	e8 c8 f7 ff ff       	call   104be0 <get_nps>
  105418:	39 c6                	cmp    %eax,%esi
  10541a:	72 c4                	jb     1053e0 <pmem_init+0xa0>
    }

    // Mark below-user window as kernel/reserved (not allocatable)
    for (i = 0; i < VM_USERLO_PI; i++) {
  10541c:	31 ed                	xor    %ebp,%ebp
  10541e:	66 90                	xchg   %ax,%ax
        at_set_perm(i, 1);
  105420:	83 ec 08             	sub    $0x8,%esp
  105423:	6a 01                	push   $0x1
  105425:	55                   	push   %ebp
    for (i = 0; i < VM_USERLO_PI; i++) {
  105426:	83 c5 01             	add    $0x1,%ebp
        at_set_perm(i, 1);
  105429:	e8 22 f8 ff ff       	call   104c50 <at_set_perm>
    for (i = 0; i < VM_USERLO_PI; i++) {
  10542e:	83 c4 10             	add    $0x10,%esp
  105431:	81 fd 00 00 04 00    	cmp    $0x40000,%ebp
  105437:	75 e7                	jne    105420 <pmem_init+0xe0>
  105439:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
  105440:	00 
    }

    // PHASE 2a: mark user-window pages as Normal/Reserved via BIOS (shifted mapping)
    for (i = VM_USERLO_PI; i < VM_USERHI_PI; i++) {
  105441:	b8 00 00 04 00       	mov    $0x40000,%eax
  105446:	89 6c 24 1c          	mov    %ebp,0x1c(%esp)
  10544a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        unsigned int phys_pi = i - VM_USERLO_PI;

        if (phys_pi >= phys_nps) {
  105450:	8b 4c 24 14          	mov    0x14(%esp),%ecx
  105454:	8d 90 00 00 fc ff    	lea    -0x40000(%eax),%edx
  10545a:	39 ca                	cmp    %ecx,%edx
  10545c:	0f 83 3e 01 00 00    	jae    1055a0 <pmem_init+0x260>

        unsigned int paddr_start = phys_pi * PAGESIZE;
        unsigned int paddr_end   = paddr_start + PAGESIZE;

        int is_ram = 0;
        for (j = 0; j < n_entries; j++) {
  105462:	85 ff                	test   %edi,%edi
  105464:	0f 84 97 01 00 00    	je     105601 <pmem_init+0x2c1>
  10546a:	8b 54 24 0c          	mov    0xc(%esp),%edx
  10546e:	89 44 24 10          	mov    %eax,0x10(%esp)
  105472:	31 f6                	xor    %esi,%esi
  105474:	81 c2 00 10 00 00    	add    $0x1000,%edx
  10547a:	89 54 24 08          	mov    %edx,0x8(%esp)
  10547e:	66 90                	xchg   %ax,%ax
            if (!is_usable(j)) continue;
  105480:	83 ec 0c             	sub    $0xc,%esp
  105483:	56                   	push   %esi
  105484:	e8 b1 bc ff ff       	call   10113a <is_usable>
  105489:	83 c4 10             	add    $0x10,%esp
  10548c:	85 c0                	test   %eax,%eax
  10548e:	74 2a                	je     1054ba <pmem_init+0x17a>

            unsigned int start = get_mms(j);
  105490:	83 ec 0c             	sub    $0xc,%esp
  105493:	56                   	push   %esi
  105494:	e8 cb bb ff ff       	call   101064 <get_mms>
            unsigned int end   = start + get_mml(j);
  105499:	89 34 24             	mov    %esi,(%esp)
            unsigned int start = get_mms(j);
  10549c:	89 c5                	mov    %eax,%ebp
            unsigned int end   = start + get_mml(j);
  10549e:	e8 27 bc ff ff       	call   1010ca <get_mml>

            if (start <= paddr_start && paddr_end <= end) {
  1054a3:	8b 4c 24 18          	mov    0x18(%esp),%ecx
  1054a7:	83 c4 10             	add    $0x10,%esp
            unsigned int end   = start + get_mml(j);
  1054aa:	01 e8                	add    %ebp,%eax
            if (start <= paddr_start && paddr_end <= end) {
  1054ac:	39 c8                	cmp    %ecx,%eax
  1054ae:	72 0a                	jb     1054ba <pmem_init+0x17a>
  1054b0:	39 6c 24 0c          	cmp    %ebp,0xc(%esp)
  1054b4:	0f 83 16 01 00 00    	jae    1055d0 <pmem_init+0x290>
        for (j = 0; j < n_entries; j++) {
  1054ba:	83 c6 01             	add    $0x1,%esi
  1054bd:	39 f7                	cmp    %esi,%edi
  1054bf:	75 bf                	jne    105480 <pmem_init+0x140>
  1054c1:	8b 44 24 10          	mov    0x10(%esp),%eax

        if (is_ram) {
            at_set_perm(i, 2);   // Normal RAM
            at_set_allocated(i, 0);
        } else {
            at_set_perm(i, 0);   // Reserved hole
  1054c5:	83 ec 08             	sub    $0x8,%esp
  1054c8:	6a 00                	push   $0x0
  1054ca:	50                   	push   %eax
  1054cb:	89 44 24 1c          	mov    %eax,0x1c(%esp)
  1054cf:	e8 7c f7 ff ff       	call   104c50 <at_set_perm>
  1054d4:	8b 44 24 1c          	mov    0x1c(%esp),%eax
  1054d8:	83 c4 10             	add    $0x10,%esp
    for (i = VM_USERLO_PI; i < VM_USERHI_PI; i++) {
  1054db:	8b 54 24 08          	mov    0x8(%esp),%edx
  1054df:	83 c0 01             	add    $0x1,%eax
  1054e2:	89 54 24 0c          	mov    %edx,0xc(%esp)
  1054e6:	3d 00 00 0f 00       	cmp    $0xf0000,%eax
  1054eb:	0f 85 5f ff ff ff    	jne    105450 <pmem_init+0x110>
    unsigned int n = 1U << order;
  1054f1:	8b 6c 24 1c          	mov    0x1c(%esp),%ebp
  1054f5:	eb 18                	jmp    10550f <pmem_init+0x1cf>
  1054f7:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  1054fe:	00 
  1054ff:	90                   	nop
            }
        }

        if (order < 0) {
            // should not happen, but safe fallback
            i++;
  105500:	83 c5 01             	add    $0x1,%ebp
    while (i < VM_USERHI_PI) {
  105503:	81 fd ff ff 0e 00    	cmp    $0xeffff,%ebp
  105509:	0f 87 3d 01 00 00    	ja     10564c <pmem_init+0x30c>
        if (AT[i].perm != 2 || AT[i].allocated != 0) {
  10550f:	8b 4c 24 18          	mov    0x18(%esp),%ecx
  105513:	8d 14 ad 00 00 00 00 	lea    0x0(,%ebp,4),%edx
  10551a:	8d 04 2a             	lea    (%edx,%ebp,1),%eax
  10551d:	8d 34 81             	lea    (%ecx,%eax,4),%esi
  105520:	83 3e 02             	cmpl   $0x2,(%esi)
  105523:	75 db                	jne    105500 <pmem_init+0x1c0>
  105525:	8b 46 04             	mov    0x4(%esi),%eax
  105528:	85 c0                	test   %eax,%eax
  10552a:	75 d4                	jne    105500 <pmem_init+0x1c0>
            if ((i & (size - 1)) != 0) continue;
  10552c:	89 54 24 08          	mov    %edx,0x8(%esp)
        for (order = MAX_ORDER - 1; order >= 0; order--) {
  105530:	b9 09 00 00 00       	mov    $0x9,%ecx
            if ((i & (size - 1)) != 0) continue;
  105535:	bf ff ff ff ff       	mov    $0xffffffff,%edi
  10553a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  105540:	89 f8                	mov    %edi,%eax
  105542:	d3 e0                	shl    %cl,%eax
  105544:	f7 d0                	not    %eax
  105546:	85 e8                	test   %ebp,%eax
  105548:	75 46                	jne    105590 <pmem_init+0x250>
    if (base < VM_USERLO_PI) return 0;
  10554a:	81 fd ff ff 03 00    	cmp    $0x3ffff,%ebp
  105550:	76 3e                	jbe    105590 <pmem_init+0x250>
    unsigned int n = 1U << order;
  105552:	b8 01 00 00 00       	mov    $0x1,%eax
  105557:	d3 e0                	shl    %cl,%eax
    if (base + n > VM_USERHI_PI) return 0;
  105559:	01 e8                	add    %ebp,%eax
  10555b:	3d 00 00 0f 00       	cmp    $0xf0000,%eax
  105560:	77 2e                	ja     105590 <pmem_init+0x250>
  105562:	8b 54 24 18          	mov    0x18(%esp),%edx
  105566:	8d 04 80             	lea    (%eax,%eax,4),%eax
  105569:	8d 14 82             	lea    (%edx,%eax,4),%edx
  10556c:	89 f0                	mov    %esi,%eax
  10556e:	eb 11                	jmp    105581 <pmem_init+0x241>
        if (AT[pi].allocated != 0) return 0;
  105570:	83 78 04 00          	cmpl   $0x0,0x4(%eax)
  105574:	75 1a                	jne    105590 <pmem_init+0x250>
    for (i = 0; i < n; i++) {
  105576:	83 c0 14             	add    $0x14,%eax
  105579:	39 d0                	cmp    %edx,%eax
  10557b:	0f 84 93 00 00 00    	je     105614 <pmem_init+0x2d4>
        if (AT[pi].perm != 2) return 0;
  105581:	83 38 02             	cmpl   $0x2,(%eax)
  105584:	74 ea                	je     105570 <pmem_init+0x230>
  105586:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10558d:	00 
  10558e:	66 90                	xchg   %ax,%ax
        for (order = MAX_ORDER - 1; order >= 0; order--) {
  105590:	83 e9 01             	sub    $0x1,%ecx
  105593:	73 ab                	jae    105540 <pmem_init+0x200>
  105595:	e9 66 ff ff ff       	jmp    105500 <pmem_init+0x1c0>
  10559a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
            at_set_perm(i, 0);
  1055a0:	83 ec 08             	sub    $0x8,%esp
  1055a3:	6a 00                	push   $0x0
  1055a5:	50                   	push   %eax
  1055a6:	89 44 24 20          	mov    %eax,0x20(%esp)
  1055aa:	e8 a1 f6 ff ff       	call   104c50 <at_set_perm>
            continue;
  1055af:	8b 44 24 1c          	mov    0x1c(%esp),%eax
  1055b3:	83 c4 10             	add    $0x10,%esp
  1055b6:	05 00 10 00 00       	add    $0x1000,%eax
  1055bb:	89 44 24 08          	mov    %eax,0x8(%esp)
  1055bf:	8b 44 24 10          	mov    0x10(%esp),%eax
  1055c3:	e9 13 ff ff ff       	jmp    1054db <pmem_init+0x19b>
  1055c8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  1055cf:	00 
  1055d0:	8b 44 24 10          	mov    0x10(%esp),%eax
            at_set_perm(i, 2);   // Normal RAM
  1055d4:	83 ec 08             	sub    $0x8,%esp
  1055d7:	6a 02                	push   $0x2
  1055d9:	50                   	push   %eax
  1055da:	89 44 24 1c          	mov    %eax,0x1c(%esp)
  1055de:	e8 6d f6 ff ff       	call   104c50 <at_set_perm>
            at_set_allocated(i, 0);
  1055e3:	5a                   	pop    %edx
  1055e4:	59                   	pop    %ecx
  1055e5:	6a 00                	push   $0x0
  1055e7:	8b 44 24 18          	mov    0x18(%esp),%eax
  1055eb:	50                   	push   %eax
  1055ec:	89 44 24 1c          	mov    %eax,0x1c(%esp)
  1055f0:	e8 bb f6 ff ff       	call   104cb0 <at_set_allocated>
  1055f5:	83 c4 10             	add    $0x10,%esp
  1055f8:	8b 44 24 0c          	mov    0xc(%esp),%eax
  1055fc:	e9 da fe ff ff       	jmp    1054db <pmem_init+0x19b>
  105601:	8b 54 24 0c          	mov    0xc(%esp),%edx
  105605:	81 c2 00 10 00 00    	add    $0x1000,%edx
  10560b:	89 54 24 08          	mov    %edx,0x8(%esp)
  10560f:	e9 b1 fe ff ff       	jmp    1054c5 <pmem_init+0x185>
  105614:	8b 54 24 08          	mov    0x8(%esp),%edx
            continue;
        }

        // add this block head to its order list
        AT[i].order = (unsigned int)order;
  105618:	8b 44 24 18          	mov    0x18(%esp),%eax
        at_list_add((unsigned int)order, i);
  10561c:	83 ec 08             	sub    $0x8,%esp
        AT[i].order = (unsigned int)order;
  10561f:	01 ea                	add    %ebp,%edx
  105621:	89 4c 90 08          	mov    %ecx,0x8(%eax,%edx,4)
        at_list_add((unsigned int)order, i);
  105625:	55                   	push   %ebp
  105626:	51                   	push   %ecx
  105627:	89 4c 24 18          	mov    %ecx,0x18(%esp)
  10562b:	e8 e0 f6 ff ff       	call   104d10 <at_list_add>

        // skip past the block
        i += (1U << order);
  105630:	8b 4c 24 18          	mov    0x18(%esp),%ecx
  105634:	b8 01 00 00 00       	mov    $0x1,%eax
  105639:	83 c4 10             	add    $0x10,%esp
  10563c:	d3 e0                	shl    %cl,%eax
  10563e:	01 c5                	add    %eax,%ebp
    while (i < VM_USERHI_PI) {
  105640:	81 fd ff ff 0e 00    	cmp    $0xeffff,%ebp
  105646:	0f 86 c3 fe ff ff    	jbe    10550f <pmem_init+0x1cf>
    }
}
  10564c:	83 c4 2c             	add    $0x2c,%esp
  10564f:	5b                   	pop    %ebx
  105650:	5e                   	pop    %esi
  105651:	5f                   	pop    %edi
  105652:	5d                   	pop    %ebp
  105653:	c3                   	ret
    for (i = 0; i < n_entries; i++) {
  105654:	c7 44 24 14 00 00 00 	movl   $0x0,0x14(%esp)
  10565b:	00 
  10565c:	e9 52 fd ff ff       	jmp    1053b3 <pmem_init+0x73>
  105661:	66 90                	xchg   %ax,%ax
  105663:	66 90                	xchg   %ax,%ax
  105665:	66 90                	xchg   %ax,%ax
  105667:	66 90                	xchg   %ax,%ax
  105669:	66 90                	xchg   %ax,%ax
  10566b:	66 90                	xchg   %ax,%ax
  10566d:	66 90                	xchg   %ax,%ax
  10566f:	90                   	nop

00105670 <MATInit_test1>:
#define VM_USERHI    0xF0000000
#define VM_USERLO_PI (VM_USERLO / PAGESIZE)
#define VM_USERHI_PI (VM_USERHI / PAGESIZE)

int MATInit_test1()
{
  105670:	57                   	push   %edi
  105671:	56                   	push   %esi
  105672:	31 f6                	xor    %esi,%esi
  105674:	53                   	push   %ebx
  105675:	e8 46 ad ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  10567a:	81 c3 7a 79 00 00    	add    $0x797a,%ebx
    int i;
    int nps = get_nps();
  105680:	e8 5b f5 ff ff       	call   104be0 <get_nps>
  105685:	89 c7                	mov    %eax,%edi
    if (nps <= 1000) {
  105687:	3d e8 03 00 00       	cmp    $0x3e8,%eax
  10568c:	7f 11                	jg     10569f <MATInit_test1+0x2f>
  10568e:	e9 ad 00 00 00       	jmp    105740 <MATInit_test1+0xd0>
  105693:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        dprintf("test 1.1 failed: (%d <= 1000)\n", nps);
        return 1;
    }
    for (i = 0; i < nps; i++) {
  105698:	83 c6 01             	add    $0x1,%esi
  10569b:	39 f7                	cmp    %esi,%edi
  10569d:	74 51                	je     1056f0 <MATInit_test1+0x80>
        if (at_is_allocated(i) != 0) {
  10569f:	83 ec 0c             	sub    $0xc,%esp
  1056a2:	56                   	push   %esi
  1056a3:	e8 d8 f5 ff ff       	call   104c80 <at_is_allocated>
  1056a8:	83 c4 10             	add    $0x10,%esp
  1056ab:	85 c0                	test   %eax,%eax
  1056ad:	75 61                	jne    105710 <MATInit_test1+0xa0>
            dprintf("test 1.2 failed (i = %d): (%d != 0)\n", i, at_is_allocated(i));
            return 1;
        }
        if ((i < VM_USERLO_PI || VM_USERHI_PI <= i) && at_is_norm(i) != 0) {
  1056af:	8d 86 00 00 fc ff    	lea    -0x40000(%esi),%eax
  1056b5:	3d ff ff 0a 00       	cmp    $0xaffff,%eax
  1056ba:	76 dc                	jbe    105698 <MATInit_test1+0x28>
  1056bc:	83 ec 0c             	sub    $0xc,%esp
  1056bf:	56                   	push   %esi
  1056c0:	e8 5b f5 ff ff       	call   104c20 <at_is_norm>
  1056c5:	83 c4 10             	add    $0x10,%esp
  1056c8:	85 c0                	test   %eax,%eax
  1056ca:	74 cc                	je     105698 <MATInit_test1+0x28>
            dprintf("test 1.3 failed (i = %d): (%d != 0)\n", i, at_is_norm(i));
  1056cc:	83 ec 0c             	sub    $0xc,%esp
  1056cf:	56                   	push   %esi
  1056d0:	e8 4b f5 ff ff       	call   104c20 <at_is_norm>
  1056d5:	83 c4 0c             	add    $0xc,%esp
  1056d8:	50                   	push   %eax
  1056d9:	8d 83 70 bd ff ff    	lea    -0x4290(%ebx),%eax
  1056df:	56                   	push   %esi
  1056e0:	50                   	push   %eax
  1056e1:	e8 86 d6 ff ff       	call   102d6c <dprintf>
            return 1;
  1056e6:	83 c4 10             	add    $0x10,%esp
  1056e9:	eb 42                	jmp    10572d <MATInit_test1+0xbd>
  1056eb:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        }
    }
    dprintf("test 1 passed.\n");
  1056f0:	83 ec 0c             	sub    $0xc,%esp
  1056f3:	8d 83 58 b8 ff ff    	lea    -0x47a8(%ebx),%eax
  1056f9:	50                   	push   %eax
  1056fa:	e8 6d d6 ff ff       	call   102d6c <dprintf>
    return 0;
  1056ff:	83 c4 10             	add    $0x10,%esp
  105702:	31 c0                	xor    %eax,%eax
}
  105704:	5b                   	pop    %ebx
  105705:	5e                   	pop    %esi
  105706:	5f                   	pop    %edi
  105707:	c3                   	ret
  105708:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10570f:	00 
            dprintf("test 1.2 failed (i = %d): (%d != 0)\n", i, at_is_allocated(i));
  105710:	83 ec 0c             	sub    $0xc,%esp
  105713:	56                   	push   %esi
  105714:	e8 67 f5 ff ff       	call   104c80 <at_is_allocated>
  105719:	83 c4 0c             	add    $0xc,%esp
  10571c:	50                   	push   %eax
  10571d:	8d 83 48 bd ff ff    	lea    -0x42b8(%ebx),%eax
  105723:	56                   	push   %esi
  105724:	50                   	push   %eax
  105725:	e8 42 d6 ff ff       	call   102d6c <dprintf>
            return 1;
  10572a:	83 c4 10             	add    $0x10,%esp
}
  10572d:	5b                   	pop    %ebx
        return 1;
  10572e:	b8 01 00 00 00       	mov    $0x1,%eax
}
  105733:	5e                   	pop    %esi
  105734:	5f                   	pop    %edi
  105735:	c3                   	ret
  105736:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10573d:	00 
  10573e:	66 90                	xchg   %ax,%ax
        dprintf("test 1.1 failed: (%d <= 1000)\n", nps);
  105740:	83 ec 08             	sub    $0x8,%esp
  105743:	50                   	push   %eax
  105744:	8d 83 28 bd ff ff    	lea    -0x42d8(%ebx),%eax
  10574a:	50                   	push   %eax
  10574b:	e8 1c d6 ff ff       	call   102d6c <dprintf>
        return 1;
  105750:	83 c4 10             	add    $0x10,%esp
  105753:	eb d8                	jmp    10572d <MATInit_test1+0xbd>
  105755:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10575c:	00 
  10575d:	8d 76 00             	lea    0x0(%esi),%esi

00105760 <MATInit_test_buddy>:

// Check if the Buddy System was populated during pmem_init
int MATInit_test_buddy()
{
  105760:	56                   	push   %esi
  105761:	53                   	push   %ebx
  105762:	e8 59 ac ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  105767:	81 c3 8d 78 00 00    	add    $0x788d,%ebx
  10576d:	83 ec 10             	sub    $0x10,%esp
    int head = get_free_list_head(0);
  105770:	6a 00                	push   $0x0
  105772:	e8 69 f5 ff ff       	call   104ce0 <get_free_list_head>
    if (head == -1) {
  105777:	83 c4 10             	add    $0x10,%esp
  10577a:	83 f8 ff             	cmp    $0xffffffff,%eax
  10577d:	74 51                	je     1057d0 <MATInit_test_buddy+0x70>
        dprintf("Buddy Init Test failed: Order 0 free list is empty!\n");
        return 1;
    }
    
    // Verify the head is actually a normal page
    if (at_is_norm(head) != 1) {
  10577f:	83 ec 0c             	sub    $0xc,%esp
  105782:	89 c6                	mov    %eax,%esi
  105784:	50                   	push   %eax
  105785:	e8 96 f4 ff ff       	call   104c20 <at_is_norm>
  10578a:	83 c4 10             	add    $0x10,%esp
  10578d:	83 f8 01             	cmp    $0x1,%eax
  105790:	74 1e                	je     1057b0 <MATInit_test_buddy+0x50>
        dprintf("Buddy Init Test failed: Head page %d is not Normal RAM\n", head);
  105792:	83 ec 08             	sub    $0x8,%esp
  105795:	8d 83 d0 bd ff ff    	lea    -0x4230(%ebx),%eax
  10579b:	56                   	push   %esi
  10579c:	50                   	push   %eax
  10579d:	e8 ca d5 ff ff       	call   102d6c <dprintf>
        return 1;
  1057a2:	83 c4 10             	add    $0x10,%esp
    }

    dprintf("Buddy Init test passed.\n");
    return 0;
}
  1057a5:	83 c4 04             	add    $0x4,%esp
        return 1;
  1057a8:	b8 01 00 00 00       	mov    $0x1,%eax
}
  1057ad:	5b                   	pop    %ebx
  1057ae:	5e                   	pop    %esi
  1057af:	c3                   	ret
    dprintf("Buddy Init test passed.\n");
  1057b0:	83 ec 0c             	sub    $0xc,%esp
  1057b3:	8d 83 db b8 ff ff    	lea    -0x4725(%ebx),%eax
  1057b9:	50                   	push   %eax
  1057ba:	e8 ad d5 ff ff       	call   102d6c <dprintf>
    return 0;
  1057bf:	83 c4 10             	add    $0x10,%esp
  1057c2:	31 c0                	xor    %eax,%eax
}
  1057c4:	83 c4 04             	add    $0x4,%esp
  1057c7:	5b                   	pop    %ebx
  1057c8:	5e                   	pop    %esi
  1057c9:	c3                   	ret
  1057ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        dprintf("Buddy Init Test failed: Order 0 free list is empty!\n");
  1057d0:	83 ec 0c             	sub    $0xc,%esp
  1057d3:	8d 83 98 bd ff ff    	lea    -0x4268(%ebx),%eax
  1057d9:	50                   	push   %eax
  1057da:	e8 8d d5 ff ff       	call   102d6c <dprintf>
        return 1;
  1057df:	83 c4 10             	add    $0x10,%esp
  1057e2:	eb c1                	jmp    1057a5 <MATInit_test_buddy+0x45>
  1057e4:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  1057eb:	00 
  1057ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

001057f0 <test_MATInit>:

int test_MATInit()
{
  1057f0:	53                   	push   %ebx
  1057f1:	83 ec 08             	sub    $0x8,%esp
    return MATInit_test1() + MATInit_test_buddy();
  1057f4:	e8 77 fe ff ff       	call   105670 <MATInit_test1>
  1057f9:	89 c3                	mov    %eax,%ebx
  1057fb:	e8 60 ff ff ff       	call   105760 <MATInit_test_buddy>
}
  105800:	83 c4 08             	add    $0x8,%esp
    return MATInit_test1() + MATInit_test_buddy();
  105803:	01 d8                	add    %ebx,%eax
}
  105805:	5b                   	pop    %ebx
  105806:	c3                   	ret
  105807:	66 90                	xchg   %ax,%ax
  105809:	66 90                	xchg   %ax,%ax
  10580b:	66 90                	xchg   %ax,%ax
  10580d:	66 90                	xchg   %ax,%ax
  10580f:	90                   	nop

00105810 <palloc_order>:
/*
 * Standard buddy-style allocation:
 * - find smallest k >= order with non-empty free_list[k]
 * - pop block, split down to 'order'
 */
int palloc_order(unsigned int order) {
  105810:	55                   	push   %ebp
  105811:	57                   	push   %edi
  105812:	56                   	push   %esi
  105813:	53                   	push   %ebx
  105814:	e8 a7 ab ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  105819:	81 c3 db 77 00 00    	add    $0x77db,%ebx
  10581f:	83 ec 1c             	sub    $0x1c,%esp
    if (order >= MAX_ORDER) return -1;
  105822:	83 7c 24 30 09       	cmpl   $0x9,0x30(%esp)
  105827:	0f 87 b3 00 00 00    	ja     1058e0 <palloc_order+0xd0>

    unsigned int k = order;
  10582d:	8b 74 24 30          	mov    0x30(%esp),%esi
  105831:	eb 11                	jmp    105844 <palloc_order+0x34>
  105833:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
    while (k < MAX_ORDER && get_free_list_head(k) == -1) {
        k++;
  105838:	83 c6 01             	add    $0x1,%esi
    while (k < MAX_ORDER && get_free_list_head(k) == -1) {
  10583b:	83 fe 0a             	cmp    $0xa,%esi
  10583e:	0f 84 9c 00 00 00    	je     1058e0 <palloc_order+0xd0>
  105844:	83 ec 0c             	sub    $0xc,%esp
  105847:	56                   	push   %esi
  105848:	e8 93 f4 ff ff       	call   104ce0 <get_free_list_head>
  10584d:	83 c4 10             	add    $0x10,%esp
  105850:	83 f8 ff             	cmp    $0xffffffff,%eax
  105853:	74 e3                	je     105838 <palloc_order+0x28>
    }
    if (k >= MAX_ORDER) return -1;

    int pindex = get_free_list_head(k);
  105855:	83 ec 0c             	sub    $0xc,%esp
  105858:	56                   	push   %esi
  105859:	e8 82 f4 ff ff       	call   104ce0 <get_free_list_head>
  10585e:	89 c7                	mov    %eax,%edi
    at_list_remove(k, pindex);
  105860:	58                   	pop    %eax
  105861:	5a                   	pop    %edx
  105862:	57                   	push   %edi
  105863:	56                   	push   %esi
  105864:	e8 37 f5 ff ff       	call   104da0 <at_list_remove>

    // Split until reaching requested order
    while (k > order) {
  105869:	c7 c0 40 9c 15 00    	mov    $0x159c40,%eax
  10586f:	83 c4 10             	add    $0x10,%esp
  105872:	89 44 24 0c          	mov    %eax,0xc(%esp)
  105876:	39 74 24 30          	cmp    %esi,0x30(%esp)
  10587a:	73 3b                	jae    1058b7 <palloc_order+0xa7>
  10587c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        k--;
  105880:	83 ee 01             	sub    $0x1,%esi

        int buddy = pindex + (1 << k);
  105883:	bd 01 00 00 00       	mov    $0x1,%ebp

        // Buddy half becomes a free block at order k
        AT[buddy].order = k;
  105888:	8b 54 24 0c          	mov    0xc(%esp),%edx
        at_set_allocated(buddy, 0);
  10588c:	83 ec 08             	sub    $0x8,%esp
        int buddy = pindex + (1 << k);
  10588f:	89 f1                	mov    %esi,%ecx
  105891:	d3 e5                	shl    %cl,%ebp
  105893:	01 fd                	add    %edi,%ebp
        AT[buddy].order = k;
  105895:	8d 44 ad 00          	lea    0x0(%ebp,%ebp,4),%eax
  105899:	89 74 82 08          	mov    %esi,0x8(%edx,%eax,4)
        at_set_allocated(buddy, 0);
  10589d:	6a 00                	push   $0x0
  10589f:	55                   	push   %ebp
  1058a0:	e8 0b f4 ff ff       	call   104cb0 <at_set_allocated>
        at_list_add(k, buddy);
  1058a5:	59                   	pop    %ecx
  1058a6:	58                   	pop    %eax
  1058a7:	55                   	push   %ebp
  1058a8:	56                   	push   %esi
  1058a9:	e8 62 f4 ff ff       	call   104d10 <at_list_add>
    while (k > order) {
  1058ae:	83 c4 10             	add    $0x10,%esp
  1058b1:	39 74 24 30          	cmp    %esi,0x30(%esp)
  1058b5:	75 c9                	jne    105880 <palloc_order+0x70>
    }

    // Allocate the block head
    AT[pindex].order = order;
  1058b7:	8b 44 24 0c          	mov    0xc(%esp),%eax
  1058bb:	8b 4c 24 30          	mov    0x30(%esp),%ecx
  1058bf:	8d 14 bf             	lea    (%edi,%edi,4),%edx
    at_set_allocated(pindex, 1);
  1058c2:	83 ec 08             	sub    $0x8,%esp
    AT[pindex].order = order;
  1058c5:	89 4c 90 08          	mov    %ecx,0x8(%eax,%edx,4)
    at_set_allocated(pindex, 1);
  1058c9:	6a 01                	push   $0x1
  1058cb:	57                   	push   %edi
  1058cc:	e8 df f3 ff ff       	call   104cb0 <at_set_allocated>

    return pindex;
  1058d1:	83 c4 10             	add    $0x10,%esp
}
  1058d4:	83 c4 1c             	add    $0x1c,%esp
  1058d7:	89 f8                	mov    %edi,%eax
  1058d9:	5b                   	pop    %ebx
  1058da:	5e                   	pop    %esi
  1058db:	5f                   	pop    %edi
  1058dc:	5d                   	pop    %ebp
  1058dd:	c3                   	ret
  1058de:	66 90                	xchg   %ax,%ax
    if (order >= MAX_ORDER) return -1;
  1058e0:	bf ff ff ff ff       	mov    $0xffffffff,%edi
  1058e5:	eb ed                	jmp    1058d4 <palloc_order+0xc4>
  1058e7:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  1058ee:	00 
  1058ef:	90                   	nop

001058f0 <palloc>:

unsigned int palloc(void) {
  1058f0:	83 ec 18             	sub    $0x18,%esp
    int res = palloc_order(0);
  1058f3:	6a 00                	push   $0x0
  1058f5:	e8 16 ff ff ff       	call   105810 <palloc_order>
    if (res == -1) return 0;
  1058fa:	31 d2                	xor    %edx,%edx
  1058fc:	83 f8 ff             	cmp    $0xffffffff,%eax
  1058ff:	0f 44 c2             	cmove  %edx,%eax
    return (unsigned int)res;
}
  105902:	83 c4 1c             	add    $0x1c,%esp
  105905:	c3                   	ret
  105906:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10590d:	00 
  10590e:	66 90                	xchg   %ax,%ax

00105910 <pfree_order>:

/*
 * Free + merge (buddy coalescing)
 * FIX: must clear allocated even when we merge, otherwise MATOp test 1.4 fails.
 */
void pfree_order(unsigned int pindex) {
  105910:	55                   	push   %ebp
  105911:	57                   	push   %edi
  105912:	56                   	push   %esi
  105913:	53                   	push   %ebx
  105914:	e8 a7 aa ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  105919:	81 c3 db 76 00 00    	add    $0x76db,%ebx
  10591f:	83 ec 1c             	sub    $0x1c,%esp
  105922:	8b 7c 24 30          	mov    0x30(%esp),%edi
  105926:	8d 34 bd 00 00 00 00 	lea    0x0(,%edi,4),%esi
  10592d:	c7 c0 40 9c 15 00    	mov    $0x159c40,%eax
  105933:	89 44 24 0c          	mov    %eax,0xc(%esp)
  105937:	eb 67                	jmp    1059a0 <pfree_order+0x90>
  105939:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    at_set_allocated(pindex, 0);

    unsigned int order = AT[pindex].order;
    if (order >= MAX_ORDER) return;

    unsigned int buddy_idx = pindex ^ (1 << order);
  105940:	89 fe                	mov    %edi,%esi
  105942:	0f bb ee             	btc    %ebp,%esi

    // Buddy must be in user range to merge
    if (buddy_idx >= VM_USERLO_PI && buddy_idx < VM_USERHI_PI &&
  105945:	8d 86 00 00 fc ff    	lea    -0x40000(%esi),%eax
  10594b:	3d ff ff 0a 00       	cmp    $0xaffff,%eax
  105950:	77 76                	ja     1059c8 <pfree_order+0xb8>
        at_is_allocated(buddy_idx) == 0 &&
  105952:	83 ec 0c             	sub    $0xc,%esp
  105955:	56                   	push   %esi
  105956:	e8 25 f3 ff ff       	call   104c80 <at_is_allocated>
    if (buddy_idx >= VM_USERLO_PI && buddy_idx < VM_USERHI_PI &&
  10595b:	83 c4 10             	add    $0x10,%esp
  10595e:	85 c0                	test   %eax,%eax
  105960:	75 66                	jne    1059c8 <pfree_order+0xb8>
        at_is_allocated(buddy_idx) == 0 &&
  105962:	8b 4c 24 0c          	mov    0xc(%esp),%ecx
        AT[buddy_idx].order == order) {
  105966:	8d 04 b6             	lea    (%esi,%esi,4),%eax
        at_is_allocated(buddy_idx) == 0 &&
  105969:	39 6c 81 08          	cmp    %ebp,0x8(%ecx,%eax,4)
  10596d:	75 59                	jne    1059c8 <pfree_order+0xb8>

        // Remove buddy from free list and merge upward
        at_list_remove(order, buddy_idx);
  10596f:	83 ec 08             	sub    $0x8,%esp
  105972:	56                   	push   %esi
  105973:	55                   	push   %ebp
  105974:	e8 27 f4 ff ff       	call   104da0 <at_list_remove>
        at_set_allocated(buddy_idx, 0);
  105979:	58                   	pop    %eax
  10597a:	5a                   	pop    %edx
  10597b:	6a 00                	push   $0x0
  10597d:	56                   	push   %esi
  10597e:	e8 2d f3 ff ff       	call   104cb0 <at_set_allocated>

        unsigned int combined = (pindex < buddy_idx) ? pindex : buddy_idx;
  105983:	39 f7                	cmp    %esi,%edi
        AT[combined].order = order + 1;
  105985:	8b 4c 24 1c          	mov    0x1c(%esp),%ecx
  105989:	8d 55 01             	lea    0x1(%ebp),%edx
        unsigned int combined = (pindex < buddy_idx) ? pindex : buddy_idx;
  10598c:	0f 47 fe             	cmova  %esi,%edi
        AT[buddy_idx].order == order) {
  10598f:	83 c4 10             	add    $0x10,%esp
        AT[combined].order = order + 1;
  105992:	8d 34 bd 00 00 00 00 	lea    0x0(,%edi,4),%esi
  105999:	8d 04 3e             	lea    (%esi,%edi,1),%eax
  10599c:	89 54 81 08          	mov    %edx,0x8(%ecx,%eax,4)
    at_set_allocated(pindex, 0);
  1059a0:	83 ec 08             	sub    $0x8,%esp
    unsigned int order = AT[pindex].order;
  1059a3:	01 fe                	add    %edi,%esi
    at_set_allocated(pindex, 0);
  1059a5:	6a 00                	push   $0x0
  1059a7:	57                   	push   %edi
  1059a8:	e8 03 f3 ff ff       	call   104cb0 <at_set_allocated>
    unsigned int order = AT[pindex].order;
  1059ad:	8b 44 24 1c          	mov    0x1c(%esp),%eax
    if (order >= MAX_ORDER) return;
  1059b1:	83 c4 10             	add    $0x10,%esp
    unsigned int order = AT[pindex].order;
  1059b4:	8b 6c b0 08          	mov    0x8(%eax,%esi,4),%ebp
    if (order >= MAX_ORDER) return;
  1059b8:	83 fd 09             	cmp    $0x9,%ebp
  1059bb:	76 83                	jbe    105940 <pfree_order+0x30>
        pfree_order(combined); // recursive merge
    } else {
        // Can't merge: just put this block back
        at_list_add(order, pindex);
    }
}
  1059bd:	83 c4 1c             	add    $0x1c,%esp
  1059c0:	5b                   	pop    %ebx
  1059c1:	5e                   	pop    %esi
  1059c2:	5f                   	pop    %edi
  1059c3:	5d                   	pop    %ebp
  1059c4:	c3                   	ret
  1059c5:	8d 76 00             	lea    0x0(%esi),%esi
        at_list_add(order, pindex);
  1059c8:	83 ec 08             	sub    $0x8,%esp
  1059cb:	57                   	push   %edi
  1059cc:	55                   	push   %ebp
  1059cd:	e8 3e f3 ff ff       	call   104d10 <at_list_add>
  1059d2:	83 c4 10             	add    $0x10,%esp
}
  1059d5:	83 c4 1c             	add    $0x1c,%esp
  1059d8:	5b                   	pop    %ebx
  1059d9:	5e                   	pop    %esi
  1059da:	5f                   	pop    %edi
  1059db:	5d                   	pop    %ebp
  1059dc:	c3                   	ret
  1059dd:	8d 76 00             	lea    0x0(%esi),%esi

001059e0 <pfree>:

void pfree(unsigned int pindex) {
  1059e0:	56                   	push   %esi
  1059e1:	53                   	push   %ebx
  1059e2:	e8 d9 a9 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  1059e7:	81 c3 0d 76 00 00    	add    $0x760d,%ebx
  1059ed:	83 ec 04             	sub    $0x4,%esp
  1059f0:	8b 74 24 10          	mov    0x10(%esp),%esi
    if (pindex < VM_USERLO_PI || pindex >= VM_USERHI_PI) return;
  1059f4:	8d 86 00 00 fc ff    	lea    -0x40000(%esi),%eax
  1059fa:	3d ff ff 0a 00       	cmp    $0xaffff,%eax
  1059ff:	76 0f                	jbe    105a10 <pfree+0x30>
    if (at_is_allocated(pindex) == 0) return;

    pfree_order(pindex);
}
  105a01:	83 c4 04             	add    $0x4,%esp
  105a04:	5b                   	pop    %ebx
  105a05:	5e                   	pop    %esi
  105a06:	c3                   	ret
  105a07:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  105a0e:	00 
  105a0f:	90                   	nop
    if (at_is_allocated(pindex) == 0) return;
  105a10:	83 ec 0c             	sub    $0xc,%esp
  105a13:	56                   	push   %esi
  105a14:	e8 67 f2 ff ff       	call   104c80 <at_is_allocated>
  105a19:	83 c4 10             	add    $0x10,%esp
  105a1c:	85 c0                	test   %eax,%eax
  105a1e:	74 e1                	je     105a01 <pfree+0x21>
    pfree_order(pindex);
  105a20:	89 74 24 10          	mov    %esi,0x10(%esp)
}
  105a24:	83 c4 04             	add    $0x4,%esp
  105a27:	5b                   	pop    %ebx
  105a28:	5e                   	pop    %esi
    pfree_order(pindex);
  105a29:	e9 e2 fe ff ff       	jmp    105910 <pfree_order>
  105a2e:	66 90                	xchg   %ax,%ax

00105a30 <MATOp_test1>:
#define VM_USERHI    0xF0000000
#define VM_USERLO_PI (VM_USERLO / PAGESIZE)
#define VM_USERHI_PI (VM_USERHI / PAGESIZE)

int MATOp_test1()
{
  105a30:	56                   	push   %esi
  105a31:	53                   	push   %ebx
  105a32:	e8 89 a9 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  105a37:	81 c3 bd 75 00 00    	add    $0x75bd,%ebx
  105a3d:	83 ec 04             	sub    $0x4,%esp
    int page_index = palloc();
  105a40:	e8 ab fe ff ff       	call   1058f0 <palloc>
  105a45:	89 c6                	mov    %eax,%esi
    if (page_index < VM_USERLO_PI || VM_USERHI_PI <= page_index) {
  105a47:	2d 00 00 04 00       	sub    $0x40000,%eax
  105a4c:	3d ff ff 0a 00       	cmp    $0xaffff,%eax
  105a51:	0f 87 91 00 00 00    	ja     105ae8 <MATOp_test1+0xb8>
        dprintf("test 1.1 failed: (%d < VM_USERLO_PI || VM_USERHI_PI <= %d)\n", page_index, page_index);
        pfree(page_index);
        return 1;
    }
    if (at_is_norm(page_index) != 1) {
  105a57:	83 ec 0c             	sub    $0xc,%esp
  105a5a:	56                   	push   %esi
  105a5b:	e8 c0 f1 ff ff       	call   104c20 <at_is_norm>
  105a60:	83 c4 10             	add    $0x10,%esp
  105a63:	83 f8 01             	cmp    $0x1,%eax
  105a66:	74 38                	je     105aa0 <MATOp_test1+0x70>
        dprintf("test 1.2 failed: (%d != 1)\n", at_is_norm(page_index));
  105a68:	83 ec 0c             	sub    $0xc,%esp
  105a6b:	56                   	push   %esi
  105a6c:	e8 af f1 ff ff       	call   104c20 <at_is_norm>
  105a71:	5a                   	pop    %edx
  105a72:	59                   	pop    %ecx
  105a73:	50                   	push   %eax
  105a74:	8d 83 f4 b8 ff ff    	lea    -0x470c(%ebx),%eax
  105a7a:	50                   	push   %eax
  105a7b:	e8 ec d2 ff ff       	call   102d6c <dprintf>
        pfree(page_index);
  105a80:	89 34 24             	mov    %esi,(%esp)
  105a83:	e8 58 ff ff ff       	call   1059e0 <pfree>
        return 1;
  105a88:	83 c4 10             	add    $0x10,%esp
        dprintf("test 1.4 failed: (%d != 0)\n", at_is_allocated(page_index));
        return 1;
    }
    dprintf("test 1 passed.\n");
    return 0;
}
  105a8b:	83 c4 04             	add    $0x4,%esp
        return 1;
  105a8e:	b8 01 00 00 00       	mov    $0x1,%eax
}
  105a93:	5b                   	pop    %ebx
  105a94:	5e                   	pop    %esi
  105a95:	c3                   	ret
  105a96:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  105a9d:	00 
  105a9e:	66 90                	xchg   %ax,%ax
    if (at_is_allocated(page_index) != 1) {
  105aa0:	83 ec 0c             	sub    $0xc,%esp
  105aa3:	56                   	push   %esi
  105aa4:	e8 d7 f1 ff ff       	call   104c80 <at_is_allocated>
  105aa9:	83 c4 10             	add    $0x10,%esp
  105aac:	83 f8 01             	cmp    $0x1,%eax
  105aaf:	75 47                	jne    105af8 <MATOp_test1+0xc8>
    pfree(page_index);
  105ab1:	83 ec 0c             	sub    $0xc,%esp
  105ab4:	56                   	push   %esi
  105ab5:	e8 26 ff ff ff       	call   1059e0 <pfree>
    if (at_is_allocated(page_index) != 0) {
  105aba:	89 34 24             	mov    %esi,(%esp)
  105abd:	e8 be f1 ff ff       	call   104c80 <at_is_allocated>
  105ac2:	83 c4 10             	add    $0x10,%esp
  105ac5:	85 c0                	test   %eax,%eax
  105ac7:	75 47                	jne    105b10 <MATOp_test1+0xe0>
    dprintf("test 1 passed.\n");
  105ac9:	83 ec 0c             	sub    $0xc,%esp
  105acc:	8d 83 58 b8 ff ff    	lea    -0x47a8(%ebx),%eax
  105ad2:	50                   	push   %eax
  105ad3:	e8 94 d2 ff ff       	call   102d6c <dprintf>
    return 0;
  105ad8:	83 c4 10             	add    $0x10,%esp
  105adb:	31 c0                	xor    %eax,%eax
}
  105add:	83 c4 04             	add    $0x4,%esp
  105ae0:	5b                   	pop    %ebx
  105ae1:	5e                   	pop    %esi
  105ae2:	c3                   	ret
  105ae3:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        dprintf("test 1.1 failed: (%d < VM_USERLO_PI || VM_USERHI_PI <= %d)\n", page_index, page_index);
  105ae8:	83 ec 04             	sub    $0x4,%esp
  105aeb:	8d 83 08 be ff ff    	lea    -0x41f8(%ebx),%eax
  105af1:	56                   	push   %esi
  105af2:	56                   	push   %esi
  105af3:	eb 85                	jmp    105a7a <MATOp_test1+0x4a>
  105af5:	8d 76 00             	lea    0x0(%esi),%esi
        dprintf("test 1.3 failed: (%d != 1)\n", at_is_allocated(page_index));
  105af8:	83 ec 0c             	sub    $0xc,%esp
  105afb:	56                   	push   %esi
  105afc:	e8 7f f1 ff ff       	call   104c80 <at_is_allocated>
  105b01:	5a                   	pop    %edx
  105b02:	59                   	pop    %ecx
  105b03:	50                   	push   %eax
  105b04:	8d 83 10 b9 ff ff    	lea    -0x46f0(%ebx),%eax
  105b0a:	e9 6b ff ff ff       	jmp    105a7a <MATOp_test1+0x4a>
  105b0f:	90                   	nop
        dprintf("test 1.4 failed: (%d != 0)\n", at_is_allocated(page_index));
  105b10:	83 ec 0c             	sub    $0xc,%esp
  105b13:	56                   	push   %esi
  105b14:	e8 67 f1 ff ff       	call   104c80 <at_is_allocated>
  105b19:	5a                   	pop    %edx
  105b1a:	59                   	pop    %ecx
  105b1b:	50                   	push   %eax
  105b1c:	8d 83 2c b9 ff ff    	lea    -0x46d4(%ebx),%eax
  105b22:	50                   	push   %eax
  105b23:	e8 44 d2 ff ff       	call   102d6c <dprintf>
        return 1;
  105b28:	83 c4 10             	add    $0x10,%esp
  105b2b:	e9 5b ff ff ff       	jmp    105a8b <MATOp_test1+0x5b>

00105b30 <MATOp_test_own>:

// Ownership test to verify buddy system contiguous properties
int MATOp_test_own()
{
  105b30:	53                   	push   %ebx
  105b31:	e8 8a a8 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  105b36:	81 c3 be 74 00 00    	add    $0x74be,%ebx
  105b3c:	83 ec 14             	sub    $0x14,%esp
    dprintf("Testing buddy contiguous allocation (Order 2)...\n");
  105b3f:	8d 83 44 be ff ff    	lea    -0x41bc(%ebx),%eax
  105b45:	50                   	push   %eax
  105b46:	e8 21 d2 ff ff       	call   102d6c <dprintf>
    int order = 2;
    int pindex = palloc_order(order); // You'll need to add this to your export.h or export it
  105b4b:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
  105b52:	e8 b9 fc ff ff       	call   105810 <palloc_order>
    
    if (pindex <= 0) {
  105b57:	83 c4 10             	add    $0x10,%esp
  105b5a:	85 c0                	test   %eax,%eax
  105b5c:	7e 62                	jle    105bc0 <MATOp_test_own+0x90>
        dprintf("Buddy allocation failed.\n");
        return 1;
    }

    // Accessing AT[pindex].order now works because of the extern struct ATStruct AT[]
    if (AT[pindex].order != order) {
  105b5e:	c7 c1 40 9c 15 00    	mov    $0x159c40,%ecx
  105b64:	8d 14 80             	lea    (%eax,%eax,4),%edx
  105b67:	8d 14 91             	lea    (%ecx,%edx,4),%edx
  105b6a:	8b 52 08             	mov    0x8(%edx),%edx
  105b6d:	83 fa 02             	cmp    $0x2,%edx
  105b70:	74 26                	je     105b98 <MATOp_test_own+0x68>
        dprintf("test own failed: Order mismatch. Expected %d, got %d\n", order, AT[pindex].order);
  105b72:	83 ec 04             	sub    $0x4,%esp
  105b75:	8d 83 78 be ff ff    	lea    -0x4188(%ebx),%eax
  105b7b:	52                   	push   %edx
  105b7c:	6a 02                	push   $0x2
  105b7e:	50                   	push   %eax
  105b7f:	e8 e8 d1 ff ff       	call   102d6c <dprintf>
        return 1;
  105b84:	83 c4 10             	add    $0x10,%esp
    }

    pfree(pindex);
    dprintf("Buddy contiguous test passed.\n");
    return 0;
}
  105b87:	83 c4 08             	add    $0x8,%esp
        return 1;
  105b8a:	b8 01 00 00 00       	mov    $0x1,%eax
}
  105b8f:	5b                   	pop    %ebx
  105b90:	c3                   	ret
  105b91:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    pfree(pindex);
  105b98:	83 ec 0c             	sub    $0xc,%esp
  105b9b:	50                   	push   %eax
  105b9c:	e8 3f fe ff ff       	call   1059e0 <pfree>
    dprintf("Buddy contiguous test passed.\n");
  105ba1:	8d 83 b0 be ff ff    	lea    -0x4150(%ebx),%eax
  105ba7:	89 04 24             	mov    %eax,(%esp)
  105baa:	e8 bd d1 ff ff       	call   102d6c <dprintf>
    return 0;
  105baf:	83 c4 10             	add    $0x10,%esp
  105bb2:	31 c0                	xor    %eax,%eax
}
  105bb4:	83 c4 08             	add    $0x8,%esp
  105bb7:	5b                   	pop    %ebx
  105bb8:	c3                   	ret
  105bb9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        dprintf("Buddy allocation failed.\n");
  105bc0:	83 ec 0c             	sub    $0xc,%esp
  105bc3:	8d 83 48 b9 ff ff    	lea    -0x46b8(%ebx),%eax
  105bc9:	50                   	push   %eax
  105bca:	e8 9d d1 ff ff       	call   102d6c <dprintf>
        return 1;
  105bcf:	83 c4 10             	add    $0x10,%esp
  105bd2:	eb b3                	jmp    105b87 <MATOp_test_own+0x57>
  105bd4:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  105bdb:	00 
  105bdc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00105be0 <test_MATOp>:

int test_MATOp()
{
  105be0:	53                   	push   %ebx
  105be1:	83 ec 08             	sub    $0x8,%esp
    return MATOp_test1() + MATOp_test_own();
  105be4:	e8 47 fe ff ff       	call   105a30 <MATOp_test1>
  105be9:	89 c3                	mov    %eax,%ebx
  105beb:	e8 40 ff ff ff       	call   105b30 <MATOp_test_own>
  105bf0:	83 c4 08             	add    $0x8,%esp
    return MATOp_test1() + MATOp_test_own();
  105bf3:	01 d8                	add    %ebx,%eax
  105bf5:	5b                   	pop    %ebx
  105bf6:	c3                   	ret
  105bf7:	66 90                	xchg   %ax,%ax
  105bf9:	66 90                	xchg   %ax,%ax
  105bfb:	66 90                	xchg   %ax,%ax
  105bfd:	66 90                	xchg   %ax,%ax
  105bff:	90                   	nop

00105c00 <container_init>:
};

static struct SContainer CONTAINER[NUM_IDS];

void container_init(unsigned int mbi_addr)
{
  105c00:	55                   	push   %ebp
  105c01:	57                   	push   %edi
  105c02:	56                   	push   %esi
  105c03:	53                   	push   %ebx
  105c04:	e8 b7 a7 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  105c09:	81 c3 eb 73 00 00    	add    $0x73eb,%ebx
  105c0f:	83 ec 0c             	sub    $0xc,%esp
    (void)mbi_addr; // not needed if pmem_init is done elsewhere

    unsigned int real_quota = 0;
    unsigned int nps = get_nps();
  105c12:	e8 c9 ef ff ff       	call   104be0 <get_nps>
    unsigned int i;

    // Count free normal RAM pages
    for (i = 0; i < nps; i++) {
  105c17:	85 c0                	test   %eax,%eax
  105c19:	0f 84 c0 00 00 00    	je     105cdf <container_init+0xdf>
  105c1f:	89 c6                	mov    %eax,%esi
  105c21:	31 ed                	xor    %ebp,%ebp
    unsigned int real_quota = 0;
  105c23:	31 ff                	xor    %edi,%edi
  105c25:	eb 10                	jmp    105c37 <container_init+0x37>
  105c27:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  105c2e:	00 
  105c2f:	90                   	nop
    for (i = 0; i < nps; i++) {
  105c30:	83 c5 01             	add    $0x1,%ebp
  105c33:	39 ee                	cmp    %ebp,%esi
  105c35:	74 29                	je     105c60 <container_init+0x60>
        if (at_is_norm(i) && !at_is_allocated(i)) {
  105c37:	83 ec 0c             	sub    $0xc,%esp
  105c3a:	55                   	push   %ebp
  105c3b:	e8 e0 ef ff ff       	call   104c20 <at_is_norm>
  105c40:	83 c4 10             	add    $0x10,%esp
  105c43:	85 c0                	test   %eax,%eax
  105c45:	74 e9                	je     105c30 <container_init+0x30>
  105c47:	83 ec 0c             	sub    $0xc,%esp
  105c4a:	55                   	push   %ebp
  105c4b:	e8 30 f0 ff ff       	call   104c80 <at_is_allocated>
  105c50:	83 c4 10             	add    $0x10,%esp
            real_quota++;
  105c53:	83 f8 01             	cmp    $0x1,%eax
  105c56:	83 d7 00             	adc    $0x0,%edi
    for (i = 0; i < nps; i++) {
  105c59:	83 c5 01             	add    $0x1,%ebp
  105c5c:	39 ee                	cmp    %ebp,%esi
  105c5e:	75 d7                	jne    105c37 <container_init+0x37>
        }
    }

    for (i = 0; i < NUM_IDS; i++) {
  105c60:	8d 83 8c cc 44 01    	lea    0x144cc8c(%ebx),%eax
  105c66:	8d 90 00 50 00 00    	lea    0x5000(%eax),%edx
  105c6c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        CONTAINER[i].quota = 0;
  105c70:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
    for (i = 0; i < NUM_IDS; i++) {
  105c76:	83 c0 14             	add    $0x14,%eax
        CONTAINER[i].usage = 0;
  105c79:	c7 40 f0 00 00 00 00 	movl   $0x0,-0x10(%eax)
        CONTAINER[i].parent = 0;
  105c80:	c7 40 f4 00 00 00 00 	movl   $0x0,-0xc(%eax)
        CONTAINER[i].nchildren = 0;
  105c87:	c7 40 f8 00 00 00 00 	movl   $0x0,-0x8(%eax)
        CONTAINER[i].used = 0;
  105c8e:	c7 40 fc 00 00 00 00 	movl   $0x0,-0x4(%eax)
    for (i = 0; i < NUM_IDS; i++) {
  105c95:	39 d0                	cmp    %edx,%eax
  105c97:	75 d7                	jne    105c70 <container_init+0x70>
    CONTAINER[0].usage = 0;
    CONTAINER[0].parent = 0;
    CONTAINER[0].nchildren = 0;
    CONTAINER[0].used = 1;

    dprintf("MContainer initialized. Quota: %d\n", (int)real_quota);
  105c99:	83 ec 08             	sub    $0x8,%esp
  105c9c:	8d 83 d0 be ff ff    	lea    -0x4130(%ebx),%eax
    CONTAINER[0].quota = (int)real_quota;
  105ca2:	89 bb 8c cc 44 01    	mov    %edi,0x144cc8c(%ebx)
    dprintf("MContainer initialized. Quota: %d\n", (int)real_quota);
  105ca8:	57                   	push   %edi
  105ca9:	50                   	push   %eax
    CONTAINER[0].usage = 0;
  105caa:	c7 83 90 cc 44 01 00 	movl   $0x0,0x144cc90(%ebx)
  105cb1:	00 00 00 
    CONTAINER[0].parent = 0;
  105cb4:	c7 83 94 cc 44 01 00 	movl   $0x0,0x144cc94(%ebx)
  105cbb:	00 00 00 
    CONTAINER[0].nchildren = 0;
  105cbe:	c7 83 98 cc 44 01 00 	movl   $0x0,0x144cc98(%ebx)
  105cc5:	00 00 00 
    CONTAINER[0].used = 1;
  105cc8:	c7 83 9c cc 44 01 01 	movl   $0x1,0x144cc9c(%ebx)
  105ccf:	00 00 00 
    dprintf("MContainer initialized. Quota: %d\n", (int)real_quota);
  105cd2:	e8 95 d0 ff ff       	call   102d6c <dprintf>
}
  105cd7:	83 c4 1c             	add    $0x1c,%esp
  105cda:	5b                   	pop    %ebx
  105cdb:	5e                   	pop    %esi
  105cdc:	5f                   	pop    %edi
  105cdd:	5d                   	pop    %ebp
  105cde:	c3                   	ret
    for (i = 0; i < nps; i++) {
  105cdf:	31 ff                	xor    %edi,%edi
  105ce1:	e9 7a ff ff ff       	jmp    105c60 <container_init+0x60>
  105ce6:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  105ced:	00 
  105cee:	66 90                	xchg   %ax,%ax

00105cf0 <container_get_parent>:

unsigned int container_get_parent(unsigned int id) { return CONTAINER[id].parent; }
  105cf0:	e8 c7 a6 ff ff       	call   1003bc <__x86.get_pc_thunk.dx>
  105cf5:	81 c2 ff 72 00 00    	add    $0x72ff,%edx
  105cfb:	8b 44 24 04          	mov    0x4(%esp),%eax
  105cff:	8d 04 80             	lea    (%eax,%eax,4),%eax
  105d02:	8b 84 82 94 cc 44 01 	mov    0x144cc94(%edx,%eax,4),%eax
  105d09:	c3                   	ret
  105d0a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00105d10 <container_get_nchildren>:
unsigned int container_get_nchildren(unsigned int id) { return CONTAINER[id].nchildren; }
  105d10:	e8 a7 a6 ff ff       	call   1003bc <__x86.get_pc_thunk.dx>
  105d15:	81 c2 df 72 00 00    	add    $0x72df,%edx
  105d1b:	8b 44 24 04          	mov    0x4(%esp),%eax
  105d1f:	8d 04 80             	lea    (%eax,%eax,4),%eax
  105d22:	8b 84 82 98 cc 44 01 	mov    0x144cc98(%edx,%eax,4),%eax
  105d29:	c3                   	ret
  105d2a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00105d30 <container_get_quota>:
unsigned int container_get_quota(unsigned int id) { return CONTAINER[id].quota; }
  105d30:	e8 87 a6 ff ff       	call   1003bc <__x86.get_pc_thunk.dx>
  105d35:	81 c2 bf 72 00 00    	add    $0x72bf,%edx
  105d3b:	8b 44 24 04          	mov    0x4(%esp),%eax
  105d3f:	8d 04 80             	lea    (%eax,%eax,4),%eax
  105d42:	8b 84 82 8c cc 44 01 	mov    0x144cc8c(%edx,%eax,4),%eax
  105d49:	c3                   	ret
  105d4a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00105d50 <container_get_usage>:
unsigned int container_get_usage(unsigned int id) { return CONTAINER[id].usage; }
  105d50:	e8 67 a6 ff ff       	call   1003bc <__x86.get_pc_thunk.dx>
  105d55:	81 c2 9f 72 00 00    	add    $0x729f,%edx
  105d5b:	8b 44 24 04          	mov    0x4(%esp),%eax
  105d5f:	8d 04 80             	lea    (%eax,%eax,4),%eax
  105d62:	8b 84 82 90 cc 44 01 	mov    0x144cc90(%edx,%eax,4),%eax
  105d69:	c3                   	ret
  105d6a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00105d70 <container_can_consume>:

unsigned int container_can_consume(unsigned int id, unsigned int n)
{
    if (CONTAINER[id].usage + (int)n <= CONTAINER[id].quota) return 1;
  105d70:	e8 b8 f0 ff ff       	call   104e2d <__x86.get_pc_thunk.cx>
  105d75:	81 c1 7f 72 00 00    	add    $0x727f,%ecx
{
  105d7b:	8b 44 24 04          	mov    0x4(%esp),%eax
    if (CONTAINER[id].usage + (int)n <= CONTAINER[id].quota) return 1;
  105d7f:	8d 04 80             	lea    (%eax,%eax,4),%eax
  105d82:	c1 e0 02             	shl    $0x2,%eax
  105d85:	8b 94 01 90 cc 44 01 	mov    0x144cc90(%ecx,%eax,1),%edx
  105d8c:	03 54 24 08          	add    0x8(%esp),%edx
  105d90:	3b 94 01 8c cc 44 01 	cmp    0x144cc8c(%ecx,%eax,1),%edx
  105d97:	0f 9e c0             	setle  %al
  105d9a:	0f b6 c0             	movzbl %al,%eax
    return 0;
}
  105d9d:	c3                   	ret
  105d9e:	66 90                	xchg   %ax,%ax

00105da0 <container_split>:

unsigned int container_split(unsigned int id, unsigned int quota)
{
  105da0:	57                   	push   %edi
  105da1:	56                   	push   %esi
  105da2:	53                   	push   %ebx
  105da3:	8b 44 24 10          	mov    0x10(%esp),%eax
  105da7:	e8 14 a6 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  105dac:	81 c3 48 72 00 00    	add    $0x7248,%ebx
  105db2:	8b 74 24 14          	mov    0x14(%esp),%esi
    unsigned int nc = CONTAINER[id].nchildren;
  105db6:	8d 14 80             	lea    (%eax,%eax,4),%edx
  105db9:	8d 94 93 8c cc 44 01 	lea    0x144cc8c(%ebx,%edx,4),%edx
  105dc0:	8b 7a 0c             	mov    0xc(%edx),%edi
    unsigned int child = id * MAX_CHILDREN + 1 + nc;

    CONTAINER[id].usage += (int)quota;
  105dc3:	01 72 04             	add    %esi,0x4(%edx)
    unsigned int child = id * MAX_CHILDREN + 1 + nc;
  105dc6:	8d 4c c7 01          	lea    0x1(%edi,%eax,8),%ecx
    CONTAINER[id].nchildren++;
  105dca:	83 c7 01             	add    $0x1,%edi
  105dcd:	89 7a 0c             	mov    %edi,0xc(%edx)

    CONTAINER[child].quota = (int)quota;
  105dd0:	8d 14 89             	lea    (%ecx,%ecx,4),%edx
  105dd3:	c1 e2 02             	shl    $0x2,%edx
  105dd6:	8d bc 13 8c cc 44 01 	lea    0x144cc8c(%ebx,%edx,1),%edi
    CONTAINER[child].usage = 0;
    CONTAINER[child].parent = (int)id;
  105ddd:	89 47 08             	mov    %eax,0x8(%edi)
    CONTAINER[child].nchildren = 0;
    CONTAINER[child].used = 1;

    return child;
}
  105de0:	89 c8                	mov    %ecx,%eax
    CONTAINER[child].quota = (int)quota;
  105de2:	89 37                	mov    %esi,(%edi)
    CONTAINER[child].usage = 0;
  105de4:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%edi)
    CONTAINER[child].nchildren = 0;
  105deb:	c7 47 0c 00 00 00 00 	movl   $0x0,0xc(%edi)
    CONTAINER[child].used = 1;
  105df2:	c7 47 10 01 00 00 00 	movl   $0x1,0x10(%edi)
}
  105df9:	5b                   	pop    %ebx
  105dfa:	5e                   	pop    %esi
  105dfb:	5f                   	pop    %edi
  105dfc:	c3                   	ret
  105dfd:	8d 76 00             	lea    0x0(%esi),%esi

00105e00 <container_alloc>:

unsigned int container_alloc(unsigned int id)
{
  105e00:	56                   	push   %esi
  105e01:	53                   	push   %ebx
  105e02:	e8 b9 a5 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  105e07:	81 c3 ed 71 00 00    	add    $0x71ed,%ebx
  105e0d:	83 ec 04             	sub    $0x4,%esp
  105e10:	8b 44 24 10          	mov    0x10(%esp),%eax
    if (CONTAINER[id].usage + (int)n <= CONTAINER[id].quota) return 1;
  105e14:	8d 14 80             	lea    (%eax,%eax,4),%edx
        if (pindex != 0) {
            CONTAINER[id].usage++;
            return pindex;
        }
    }
    return 0;
  105e17:	31 c0                	xor    %eax,%eax
    if (CONTAINER[id].usage + (int)n <= CONTAINER[id].quota) return 1;
  105e19:	c1 e2 02             	shl    $0x2,%edx
  105e1c:	8d b4 13 8c cc 44 01 	lea    0x144cc8c(%ebx,%edx,1),%esi
  105e23:	8b 8c 13 8c cc 44 01 	mov    0x144cc8c(%ebx,%edx,1),%ecx
  105e2a:	39 4e 04             	cmp    %ecx,0x4(%esi)
  105e2d:	7c 09                	jl     105e38 <container_alloc+0x38>
}
  105e2f:	83 c4 04             	add    $0x4,%esp
  105e32:	5b                   	pop    %ebx
  105e33:	5e                   	pop    %esi
  105e34:	c3                   	ret
  105e35:	8d 76 00             	lea    0x0(%esi),%esi
        unsigned int pindex = palloc();
  105e38:	e8 b3 fa ff ff       	call   1058f0 <palloc>
        if (pindex != 0) {
  105e3d:	85 c0                	test   %eax,%eax
  105e3f:	74 ee                	je     105e2f <container_alloc+0x2f>
            CONTAINER[id].usage++;
  105e41:	83 46 04 01          	addl   $0x1,0x4(%esi)
}
  105e45:	83 c4 04             	add    $0x4,%esp
  105e48:	5b                   	pop    %ebx
  105e49:	5e                   	pop    %esi
  105e4a:	c3                   	ret
  105e4b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

00105e50 <container_free>:

void container_free(unsigned int id, unsigned int page_index)
{
  105e50:	56                   	push   %esi
  105e51:	53                   	push   %ebx
  105e52:	e8 69 a5 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  105e57:	81 c3 9d 71 00 00    	add    $0x719d,%ebx
  105e5d:	83 ec 10             	sub    $0x10,%esp
  105e60:	8b 74 24 1c          	mov    0x1c(%esp),%esi
    pfree(page_index);
  105e64:	ff 74 24 20          	push   0x20(%esp)
  105e68:	e8 73 fb ff ff       	call   1059e0 <pfree>
    if (CONTAINER[id].usage > 0) {
  105e6d:	8d 04 b6             	lea    (%esi,%esi,4),%eax
  105e70:	83 c4 10             	add    $0x10,%esp
  105e73:	8d 94 83 8c cc 44 01 	lea    0x144cc8c(%ebx,%eax,4),%edx
  105e7a:	8b 42 04             	mov    0x4(%edx),%eax
  105e7d:	85 c0                	test   %eax,%eax
  105e7f:	7e 06                	jle    105e87 <container_free+0x37>
        CONTAINER[id].usage--;
  105e81:	83 e8 01             	sub    $0x1,%eax
  105e84:	89 42 04             	mov    %eax,0x4(%edx)
    }
}
  105e87:	83 c4 04             	add    $0x4,%esp
  105e8a:	5b                   	pop    %ebx
  105e8b:	5e                   	pop    %esi
  105e8c:	c3                   	ret
  105e8d:	66 90                	xchg   %ax,%ax
  105e8f:	90                   	nop

00105e90 <MContainer_test1>:
#include <lib/debug.h>
#include "export.h"

int MContainer_test1()
{
  105e90:	53                   	push   %ebx
  105e91:	e8 2a a5 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  105e96:	81 c3 5e 71 00 00    	add    $0x715e,%ebx
  105e9c:	83 ec 14             	sub    $0x14,%esp
    if (container_get_quota(0) <= 10000) {
  105e9f:	6a 00                	push   $0x0
  105ea1:	e8 8a fe ff ff       	call   105d30 <container_get_quota>
  105ea6:	83 c4 10             	add    $0x10,%esp
  105ea9:	3d 10 27 00 00       	cmp    $0x2710,%eax
  105eae:	0f 86 7c 00 00 00    	jbe    105f30 <MContainer_test1+0xa0>
        dprintf("test 1.1 failed: (%d <= 10000)\n", container_get_quota(0));
        return 1;
    }
    if (container_can_consume(0, 10000) != 1) {
  105eb4:	83 ec 08             	sub    $0x8,%esp
  105eb7:	68 10 27 00 00       	push   $0x2710
  105ebc:	6a 00                	push   $0x0
  105ebe:	e8 ad fe ff ff       	call   105d70 <container_can_consume>
  105ec3:	83 c4 10             	add    $0x10,%esp
  105ec6:	83 f8 01             	cmp    $0x1,%eax
  105ec9:	75 35                	jne    105f00 <MContainer_test1+0x70>
        dprintf("test 1.2 failed: (%d != 1)\n", container_can_consume(0, 10000));
        return 1;
    }
    if (container_can_consume(0, 10000000) != 0) {
  105ecb:	83 ec 08             	sub    $0x8,%esp
  105ece:	68 80 96 98 00       	push   $0x989680
  105ed3:	6a 00                	push   $0x0
  105ed5:	e8 96 fe ff ff       	call   105d70 <container_can_consume>
  105eda:	83 c4 10             	add    $0x10,%esp
  105edd:	85 c0                	test   %eax,%eax
  105edf:	75 6f                	jne    105f50 <MContainer_test1+0xc0>
        dprintf("test 1.3 failed: (%d != 0)\n", container_can_consume(0, 10000000));
        return 1;
    }
    dprintf("test 1 passed.\n");
  105ee1:	83 ec 0c             	sub    $0xc,%esp
  105ee4:	8d 83 58 b8 ff ff    	lea    -0x47a8(%ebx),%eax
  105eea:	50                   	push   %eax
  105eeb:	e8 7c ce ff ff       	call   102d6c <dprintf>
    return 0;
  105ef0:	83 c4 10             	add    $0x10,%esp
  105ef3:	31 c0                	xor    %eax,%eax
}
  105ef5:	83 c4 08             	add    $0x8,%esp
  105ef8:	5b                   	pop    %ebx
  105ef9:	c3                   	ret
  105efa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        dprintf("test 1.2 failed: (%d != 1)\n", container_can_consume(0, 10000));
  105f00:	83 ec 08             	sub    $0x8,%esp
  105f03:	68 10 27 00 00       	push   $0x2710
  105f08:	6a 00                	push   $0x0
  105f0a:	e8 61 fe ff ff       	call   105d70 <container_can_consume>
  105f0f:	5a                   	pop    %edx
  105f10:	59                   	pop    %ecx
  105f11:	50                   	push   %eax
  105f12:	8d 83 f4 b8 ff ff    	lea    -0x470c(%ebx),%eax
  105f18:	50                   	push   %eax
  105f19:	e8 4e ce ff ff       	call   102d6c <dprintf>
        return 1;
  105f1e:	83 c4 10             	add    $0x10,%esp
}
  105f21:	83 c4 08             	add    $0x8,%esp
        return 1;
  105f24:	b8 01 00 00 00       	mov    $0x1,%eax
}
  105f29:	5b                   	pop    %ebx
  105f2a:	c3                   	ret
  105f2b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        dprintf("test 1.1 failed: (%d <= 10000)\n", container_get_quota(0));
  105f30:	83 ec 0c             	sub    $0xc,%esp
  105f33:	6a 00                	push   $0x0
  105f35:	e8 f6 fd ff ff       	call   105d30 <container_get_quota>
  105f3a:	5a                   	pop    %edx
  105f3b:	59                   	pop    %ecx
  105f3c:	50                   	push   %eax
  105f3d:	8d 83 f4 be ff ff    	lea    -0x410c(%ebx),%eax
  105f43:	50                   	push   %eax
  105f44:	e8 23 ce ff ff       	call   102d6c <dprintf>
        return 1;
  105f49:	83 c4 10             	add    $0x10,%esp
  105f4c:	eb d3                	jmp    105f21 <MContainer_test1+0x91>
  105f4e:	66 90                	xchg   %ax,%ax
        dprintf("test 1.3 failed: (%d != 0)\n", container_can_consume(0, 10000000));
  105f50:	83 ec 08             	sub    $0x8,%esp
  105f53:	68 80 96 98 00       	push   $0x989680
  105f58:	6a 00                	push   $0x0
  105f5a:	e8 11 fe ff ff       	call   105d70 <container_can_consume>
  105f5f:	5a                   	pop    %edx
  105f60:	59                   	pop    %ecx
  105f61:	50                   	push   %eax
  105f62:	8d 83 62 b9 ff ff    	lea    -0x469e(%ebx),%eax
  105f68:	50                   	push   %eax
  105f69:	e8 fe cd ff ff       	call   102d6c <dprintf>
        return 1;
  105f6e:	83 c4 10             	add    $0x10,%esp
  105f71:	eb ae                	jmp    105f21 <MContainer_test1+0x91>
  105f73:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  105f7a:	00 
  105f7b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

00105f80 <MContainer_test2>:

int MContainer_test2()
{
  105f80:	55                   	push   %ebp
  105f81:	57                   	push   %edi
  105f82:	56                   	push   %esi
  105f83:	53                   	push   %ebx
  105f84:	e8 37 a4 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  105f89:	81 c3 6b 70 00 00    	add    $0x706b,%ebx
  105f8f:	83 ec 38             	sub    $0x38,%esp
    unsigned int old_usage = container_get_usage(0);
  105f92:	6a 00                	push   $0x0
  105f94:	e8 b7 fd ff ff       	call   105d50 <container_get_usage>
    unsigned int old_nchildren = container_get_nchildren(0);
  105f99:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    unsigned int old_usage = container_get_usage(0);
  105fa0:	89 c5                	mov    %eax,%ebp
    unsigned int old_nchildren = container_get_nchildren(0);
  105fa2:	e8 69 fd ff ff       	call   105d10 <container_get_nchildren>
  105fa7:	89 c7                	mov    %eax,%edi
    unsigned int chid = container_split(0, 100);
  105fa9:	58                   	pop    %eax
  105faa:	5a                   	pop    %edx
  105fab:	6a 64                	push   $0x64
  105fad:	6a 00                	push   $0x0
  105faf:	e8 ec fd ff ff       	call   105da0 <container_split>
    if (container_get_quota(chid) != 100
  105fb4:	89 04 24             	mov    %eax,(%esp)
    unsigned int chid = container_split(0, 100);
  105fb7:	89 c6                	mov    %eax,%esi
    if (container_get_quota(chid) != 100
  105fb9:	e8 72 fd ff ff       	call   105d30 <container_get_quota>
  105fbe:	83 c4 10             	add    $0x10,%esp
  105fc1:	83 f8 64             	cmp    $0x64,%eax
  105fc4:	0f 84 8e 00 00 00    	je     106058 <MContainer_test2+0xd8>
        || container_get_parent(chid) != 0
        || container_get_usage(chid) != 0
        || container_get_nchildren(chid) != 0
        || container_get_usage(0) != old_usage + 100
  105fca:	8d 45 64             	lea    0x64(%ebp),%eax
  105fcd:	89 44 24 10          	mov    %eax,0x10(%esp)
        || container_get_nchildren(0) != old_nchildren + 1) {
  105fd1:	8d 47 01             	lea    0x1(%edi),%eax
  105fd4:	89 44 24 0c          	mov    %eax,0xc(%esp)
        dprintf("test 2.1 failed:\n"
  105fd8:	83 ec 0c             	sub    $0xc,%esp
  105fdb:	6a 00                	push   $0x0
  105fdd:	e8 2e fd ff ff       	call   105d10 <container_get_nchildren>
  105fe2:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  105fe9:	89 44 24 2c          	mov    %eax,0x2c(%esp)
  105fed:	e8 5e fd ff ff       	call   105d50 <container_get_usage>
  105ff2:	89 34 24             	mov    %esi,(%esp)
  105ff5:	89 44 24 28          	mov    %eax,0x28(%esp)
  105ff9:	e8 12 fd ff ff       	call   105d10 <container_get_nchildren>
  105ffe:	89 34 24             	mov    %esi,(%esp)
  106001:	89 44 24 24          	mov    %eax,0x24(%esp)
  106005:	e8 46 fd ff ff       	call   105d50 <container_get_usage>
  10600a:	89 34 24             	mov    %esi,(%esp)
  10600d:	89 c5                	mov    %eax,%ebp
  10600f:	e8 dc fc ff ff       	call   105cf0 <container_get_parent>
  106014:	89 34 24             	mov    %esi,(%esp)
  106017:	89 c7                	mov    %eax,%edi
  106019:	e8 12 fd ff ff       	call   105d30 <container_get_quota>
  10601e:	5e                   	pop    %esi
  10601f:	ff 74 24 18          	push   0x18(%esp)
  106023:	8b 54 24 2c          	mov    0x2c(%esp),%edx
  106027:	52                   	push   %edx
  106028:	ff 74 24 24          	push   0x24(%esp)
  10602c:	8b 4c 24 30          	mov    0x30(%esp),%ecx
  106030:	51                   	push   %ecx
  106031:	ff 74 24 30          	push   0x30(%esp)
  106035:	55                   	push   %ebp
  106036:	57                   	push   %edi
  106037:	50                   	push   %eax
  106038:	8d 83 14 bf ff ff    	lea    -0x40ec(%ebx),%eax
  10603e:	50                   	push   %eax
  10603f:	e8 28 cd ff ff       	call   102d6c <dprintf>
                container_get_parent(chid),
                container_get_usage(chid),
                container_get_nchildren(chid),
                container_get_usage(0), old_usage + 100,
                container_get_nchildren(0), old_nchildren + 1);
        return 1;
  106044:	83 c4 30             	add    $0x30,%esp
  106047:	b8 01 00 00 00       	mov    $0x1,%eax
        dprintf("test 2.2 failed: (%d != 1)\n", container_get_usage(chid));
        return 1;
    }
    dprintf("test 2 passed.\n");
    return 0;
}
  10604c:	83 c4 2c             	add    $0x2c,%esp
  10604f:	5b                   	pop    %ebx
  106050:	5e                   	pop    %esi
  106051:	5f                   	pop    %edi
  106052:	5d                   	pop    %ebp
  106053:	c3                   	ret
  106054:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        || container_get_parent(chid) != 0
  106058:	83 ec 0c             	sub    $0xc,%esp
        || container_get_usage(0) != old_usage + 100
  10605b:	83 c5 64             	add    $0x64,%ebp
        || container_get_parent(chid) != 0
  10605e:	56                   	push   %esi
  10605f:	e8 8c fc ff ff       	call   105cf0 <container_get_parent>
        || container_get_nchildren(0) != old_nchildren + 1) {
  106064:	8d 57 01             	lea    0x1(%edi),%edx
        || container_get_usage(0) != old_usage + 100
  106067:	89 6c 24 20          	mov    %ebp,0x20(%esp)
        || container_get_nchildren(0) != old_nchildren + 1) {
  10606b:	89 54 24 1c          	mov    %edx,0x1c(%esp)
        || container_get_parent(chid) != 0
  10606f:	83 c4 10             	add    $0x10,%esp
  106072:	85 c0                	test   %eax,%eax
  106074:	0f 85 5e ff ff ff    	jne    105fd8 <MContainer_test2+0x58>
        || container_get_usage(chid) != 0
  10607a:	83 ec 0c             	sub    $0xc,%esp
  10607d:	56                   	push   %esi
  10607e:	e8 cd fc ff ff       	call   105d50 <container_get_usage>
  106083:	83 c4 10             	add    $0x10,%esp
  106086:	85 c0                	test   %eax,%eax
  106088:	0f 85 4a ff ff ff    	jne    105fd8 <MContainer_test2+0x58>
        || container_get_nchildren(chid) != 0
  10608e:	83 ec 0c             	sub    $0xc,%esp
  106091:	56                   	push   %esi
  106092:	e8 79 fc ff ff       	call   105d10 <container_get_nchildren>
  106097:	83 c4 10             	add    $0x10,%esp
  10609a:	85 c0                	test   %eax,%eax
  10609c:	0f 85 36 ff ff ff    	jne    105fd8 <MContainer_test2+0x58>
        || container_get_usage(0) != old_usage + 100
  1060a2:	83 ec 0c             	sub    $0xc,%esp
  1060a5:	6a 00                	push   $0x0
  1060a7:	e8 a4 fc ff ff       	call   105d50 <container_get_usage>
  1060ac:	83 c4 10             	add    $0x10,%esp
  1060af:	39 e8                	cmp    %ebp,%eax
  1060b1:	0f 85 21 ff ff ff    	jne    105fd8 <MContainer_test2+0x58>
        || container_get_nchildren(0) != old_nchildren + 1) {
  1060b7:	83 ec 0c             	sub    $0xc,%esp
  1060ba:	6a 00                	push   $0x0
  1060bc:	e8 4f fc ff ff       	call   105d10 <container_get_nchildren>
  1060c1:	8b 4c 24 1c          	mov    0x1c(%esp),%ecx
  1060c5:	83 c4 10             	add    $0x10,%esp
  1060c8:	39 c8                	cmp    %ecx,%eax
  1060ca:	0f 85 08 ff ff ff    	jne    105fd8 <MContainer_test2+0x58>
    container_alloc(chid);
  1060d0:	83 ec 0c             	sub    $0xc,%esp
  1060d3:	56                   	push   %esi
  1060d4:	e8 27 fd ff ff       	call   105e00 <container_alloc>
    if (container_get_usage(chid) != 1) {
  1060d9:	89 34 24             	mov    %esi,(%esp)
  1060dc:	e8 6f fc ff ff       	call   105d50 <container_get_usage>
  1060e1:	83 c4 10             	add    $0x10,%esp
  1060e4:	83 f8 01             	cmp    $0x1,%eax
  1060e7:	74 20                	je     106109 <MContainer_test2+0x189>
        dprintf("test 2.2 failed: (%d != 1)\n", container_get_usage(chid));
  1060e9:	83 ec 0c             	sub    $0xc,%esp
  1060ec:	56                   	push   %esi
  1060ed:	e8 5e fc ff ff       	call   105d50 <container_get_usage>
  1060f2:	5a                   	pop    %edx
  1060f3:	59                   	pop    %ecx
  1060f4:	50                   	push   %eax
  1060f5:	8d 83 7e b9 ff ff    	lea    -0x4682(%ebx),%eax
  1060fb:	50                   	push   %eax
  1060fc:	e8 6b cc ff ff       	call   102d6c <dprintf>
        return 1;
  106101:	83 c4 10             	add    $0x10,%esp
  106104:	e9 3e ff ff ff       	jmp    106047 <MContainer_test2+0xc7>
    dprintf("test 2 passed.\n");
  106109:	83 ec 0c             	sub    $0xc,%esp
  10610c:	8d 83 68 b8 ff ff    	lea    -0x4798(%ebx),%eax
  106112:	50                   	push   %eax
  106113:	e8 54 cc ff ff       	call   102d6c <dprintf>
    return 0;
  106118:	83 c4 10             	add    $0x10,%esp
  10611b:	31 c0                	xor    %eax,%eax
  10611d:	e9 2a ff ff ff       	jmp    10604c <MContainer_test2+0xcc>
  106122:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  106129:	00 
  10612a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00106130 <MContainer_test_own>:
int MContainer_test_own()
{
    // TODO (optional)
    // dprintf("own test passed.\n");
    return 0;
}
  106130:	31 c0                	xor    %eax,%eax
  106132:	c3                   	ret
  106133:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10613a:	00 
  10613b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

00106140 <test_MContainer>:

int test_MContainer()
{
  106140:	53                   	push   %ebx
  106141:	83 ec 08             	sub    $0x8,%esp
    return MContainer_test1() + MContainer_test2() + MContainer_test_own();
  106144:	e8 47 fd ff ff       	call   105e90 <MContainer_test1>
  106149:	89 c3                	mov    %eax,%ebx
  10614b:	e8 30 fe ff ff       	call   105f80 <MContainer_test2>
}
  106150:	83 c4 08             	add    $0x8,%esp
    return MContainer_test1() + MContainer_test2() + MContainer_test_own();
  106153:	01 d8                	add    %ebx,%eax
}
  106155:	5b                   	pop    %ebx
  106156:	c3                   	ret
  106157:	66 90                	xchg   %ax,%ax
  106159:	66 90                	xchg   %ax,%ax
  10615b:	66 90                	xchg   %ax,%ax
  10615d:	66 90                	xchg   %ax,%ax
  10615f:	90                   	nop

00106160 <set_pdir_base>:
unsigned int IDPTbl[1024][1024] gcc_aligned(PAGESIZE);


// sets the CR3 register with the start address of the page structure for process # [index]
void set_pdir_base(unsigned int index)
{
  106160:	53                   	push   %ebx
  106161:	e8 5a a2 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  106166:	81 c3 8e 6e 00 00    	add    $0x6e8e,%ebx
  10616c:	83 ec 14             	sub    $0x14,%esp
    // TODO
    set_cr3(PDirPool[index]);
  10616f:	8b 44 24 1c          	mov    0x1c(%esp),%eax
  106173:	c1 e0 0c             	shl    $0xc,%eax
  106176:	8d 84 03 0c 20 85 01 	lea    0x185200c(%ebx,%eax,1),%eax
  10617d:	50                   	push   %eax
  10617e:	e8 27 b0 ff ff       	call   1011aa <set_cr3>
}
  106183:	83 c4 18             	add    $0x18,%esp
  106186:	5b                   	pop    %ebx
  106187:	c3                   	ret
  106188:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10618f:	00 

00106190 <get_pdir_entry>:
// this can be used to test whether the page directory entry is mapped
unsigned int get_pdir_entry(unsigned int proc_index, unsigned int pde_index)
{
    // TODO??? return pagetable base address of entire 
    // TODO TODO TODO
    return (unsigned int)PDirPool[proc_index][pde_index];
  106190:	e8 27 a2 ff ff       	call   1003bc <__x86.get_pc_thunk.dx>
  106195:	81 c2 5f 6e 00 00    	add    $0x6e5f,%edx
  10619b:	8b 44 24 04          	mov    0x4(%esp),%eax
  10619f:	c1 e0 0a             	shl    $0xa,%eax
  1061a2:	03 44 24 08          	add    0x8(%esp),%eax
  1061a6:	8b 84 82 0c 20 85 01 	mov    0x185200c(%edx,%eax,4),%eax
}   
  1061ad:	c3                   	ret
  1061ae:	66 90                	xchg   %ax,%ax

001061b0 <set_pdir_entry>:
void set_pdir_entry(unsigned int proc_index, unsigned int pde_index, unsigned int page_index)
{
    // TODO
    // bit 31-12 is the base address of page table
    unsigned int value = (page_index << 12) | PT_PERM_PTU; 
    PDirPool[proc_index][pde_index] = (char *)value;
  1061b0:	e8 78 ec ff ff       	call   104e2d <__x86.get_pc_thunk.cx>
  1061b5:	81 c1 3f 6e 00 00    	add    $0x6e3f,%ecx
    unsigned int value = (page_index << 12) | PT_PERM_PTU; 
  1061bb:	8b 54 24 0c          	mov    0xc(%esp),%edx
    PDirPool[proc_index][pde_index] = (char *)value;
  1061bf:	8b 44 24 04          	mov    0x4(%esp),%eax
    unsigned int value = (page_index << 12) | PT_PERM_PTU; 
  1061c3:	c1 e2 0c             	shl    $0xc,%edx
    PDirPool[proc_index][pde_index] = (char *)value;
  1061c6:	c1 e0 0a             	shl    $0xa,%eax
  1061c9:	03 44 24 08          	add    0x8(%esp),%eax
    unsigned int value = (page_index << 12) | PT_PERM_PTU; 
  1061cd:	83 ca 07             	or     $0x7,%edx
  1061d0:	89 94 81 0c 20 85 01 	mov    %edx,0x185200c(%ecx,%eax,4)
    
}   
  1061d7:	c3                   	ret
  1061d8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  1061df:	00 

001061e0 <set_pdir_entry_identity>:
void set_pdir_entry_identity(unsigned int proc_index, unsigned int pde_index)
{   
    // TODO
    // the address of IDPTbl[pde_index] is aligned to 4096
    // so the low 12bits are all 0
    unsigned int value = (unsigned int)IDPTbl[pde_index];
  1061e0:	e8 48 ec ff ff       	call   104e2d <__x86.get_pc_thunk.cx>
  1061e5:	81 c1 0f 6e 00 00    	add    $0x6e0f,%ecx
{   
  1061eb:	53                   	push   %ebx
  1061ec:	8b 5c 24 0c          	mov    0xc(%esp),%ebx
    unsigned int value = (unsigned int)IDPTbl[pde_index];
  1061f0:	89 d8                	mov    %ebx,%eax
  1061f2:	c1 e0 0c             	shl    $0xc,%eax
  1061f5:	8d 94 01 0c 20 45 01 	lea    0x145200c(%ecx,%eax,1),%edx
    value |= PT_PERM_PTU;
    PDirPool[proc_index][pde_index] = (char *)value;
  1061fc:	8b 44 24 08          	mov    0x8(%esp),%eax
    value |= PT_PERM_PTU;
  106200:	83 ca 07             	or     $0x7,%edx
    PDirPool[proc_index][pde_index] = (char *)value;
  106203:	c1 e0 0a             	shl    $0xa,%eax
  106206:	01 d8                	add    %ebx,%eax
}   
  106208:	5b                   	pop    %ebx
    value |= PT_PERM_PTU;
  106209:	89 94 81 0c 20 85 01 	mov    %edx,0x185200c(%ecx,%eax,4)
}   
  106210:	c3                   	ret
  106211:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  106218:	00 
  106219:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00106220 <rmv_pdir_entry>:
// removes specified page directory entry (set the page directory entry to 0).
// don't forget to cast the value to (char *).
void rmv_pdir_entry(unsigned int proc_index, unsigned int pde_index)
{
    // TODO
    PDirPool[proc_index][pde_index] = (char *)0x00000000;
  106220:	e8 97 a1 ff ff       	call   1003bc <__x86.get_pc_thunk.dx>
  106225:	81 c2 cf 6d 00 00    	add    $0x6dcf,%edx
  10622b:	8b 44 24 04          	mov    0x4(%esp),%eax
  10622f:	c1 e0 0a             	shl    $0xa,%eax
  106232:	03 44 24 08          	add    0x8(%esp),%eax
  106236:	c7 84 82 0c 20 85 01 	movl   $0x0,0x185200c(%edx,%eax,4)
  10623d:	00 00 00 00 
}   
  106241:	c3                   	ret
  106242:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  106249:	00 
  10624a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00106250 <get_ptbl_entry>:
// returns the specified page table entry.
// do not forget that the permission info is also stored in the page directory entries.
unsigned int get_ptbl_entry(unsigned int proc_index, unsigned int pde_index, unsigned int pte_index)
{   // PdirPool[proc_index][pde_index] stores the bass address of a page table
    // pte_index * 4 means each page table entry is 4 byte.
    unsigned int pte_addr = (unsigned int )PDirPool[proc_index][pde_index];
  106250:	e8 67 a1 ff ff       	call   1003bc <__x86.get_pc_thunk.dx>
  106255:	81 c2 9f 6d 00 00    	add    $0x6d9f,%edx
  10625b:	8b 44 24 04          	mov    0x4(%esp),%eax
  10625f:	c1 e0 0a             	shl    $0xa,%eax
  106262:	03 44 24 08          	add    0x8(%esp),%eax
  106266:	8b 84 82 0c 20 85 01 	mov    0x185200c(%edx,%eax,4),%eax
    pte_addr &= 0xfffff000; //remove perm bits
    pte_addr += pte_index << 2;//
    return *(unsigned int *)pte_addr; 
  10626d:	8b 54 24 0c          	mov    0xc(%esp),%edx
    pte_addr &= 0xfffff000; //remove perm bits
  106271:	25 00 f0 ff ff       	and    $0xfffff000,%eax
    return *(unsigned int *)pte_addr; 
  106276:	8b 04 90             	mov    (%eax,%edx,4),%eax
}
  106279:	c3                   	ret
  10627a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00106280 <set_ptbl_entry>:
void set_ptbl_entry(unsigned int proc_index, unsigned int pde_index, unsigned int pte_index, unsigned int page_index, unsigned int perm)
{   
    // TODO
    // each page table entry is 4 byte, char * is also 4 byte
    unsigned int* pte;
    unsigned int pte_addr =  (unsigned int )PDirPool[proc_index][pde_index];
  106280:	e8 37 a1 ff ff       	call   1003bc <__x86.get_pc_thunk.dx>
  106285:	81 c2 6f 6d 00 00    	add    $0x6d6f,%edx
  10628b:	8b 44 24 04          	mov    0x4(%esp),%eax
    pte_addr += pte_index << 2;

    pte = (unsigned int *)pte_addr;
    *pte &= 0x00000000;
    *pte = page_index << 12;
    *pte |= (perm & 0x00000fff);
  10628f:	8b 4c 24 14          	mov    0x14(%esp),%ecx
    unsigned int pte_addr =  (unsigned int )PDirPool[proc_index][pde_index];
  106293:	c1 e0 0a             	shl    $0xa,%eax
  106296:	03 44 24 08          	add    0x8(%esp),%eax
    *pte |= (perm & 0x00000fff);
  10629a:	81 e1 ff 0f 00 00    	and    $0xfff,%ecx
    unsigned int pte_addr =  (unsigned int )PDirPool[proc_index][pde_index];
  1062a0:	8b 94 82 0c 20 85 01 	mov    0x185200c(%edx,%eax,4),%edx
    *pte = page_index << 12;
  1062a7:	8b 44 24 10          	mov    0x10(%esp),%eax
  1062ab:	c1 e0 0c             	shl    $0xc,%eax
    pte_addr &= 0xfffff000;//rmove perm bits
  1062ae:	81 e2 00 f0 ff ff    	and    $0xfffff000,%edx
    *pte |= (perm & 0x00000fff);
  1062b4:	09 c8                	or     %ecx,%eax
  1062b6:	8b 4c 24 0c          	mov    0xc(%esp),%ecx
  1062ba:	89 04 8a             	mov    %eax,(%edx,%ecx,4)
}   
  1062bd:	c3                   	ret
  1062be:	66 90                	xchg   %ax,%ax

001062c0 <set_ptbl_entry_identity>:
// you should also set the given permission
void set_ptbl_entry_identity(unsigned int pde_index, unsigned int pte_index, unsigned int perm)
{
    // TODO
    IDPTbl[pde_index][pte_index] = ((pde_index << 10) + pte_index) << 12;
    IDPTbl[pde_index][pte_index] |= perm;
  1062c0:	e8 68 eb ff ff       	call   104e2d <__x86.get_pc_thunk.cx>
  1062c5:	81 c1 2f 6d 00 00    	add    $0x6d2f,%ecx
  1062cb:	8b 44 24 04          	mov    0x4(%esp),%eax
  1062cf:	c1 e0 0a             	shl    $0xa,%eax
  1062d2:	03 44 24 08          	add    0x8(%esp),%eax
    IDPTbl[pde_index][pte_index] = ((pde_index << 10) + pte_index) << 12;
  1062d6:	89 c2                	mov    %eax,%edx
  1062d8:	c1 e2 0c             	shl    $0xc,%edx
    IDPTbl[pde_index][pte_index] |= perm;
  1062db:	0b 54 24 0c          	or     0xc(%esp),%edx
  1062df:	89 94 81 0c 20 45 01 	mov    %edx,0x145200c(%ecx,%eax,4)
}
  1062e6:	c3                   	ret
  1062e7:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  1062ee:	00 
  1062ef:	90                   	nop

001062f0 <rmv_ptbl_entry>:
// sets the specified page table entry to 0
void rmv_ptbl_entry(unsigned int proc_index, unsigned int pde_index, unsigned int pte_index)
{
    // TODO   
    unsigned int * pte;
    unsigned int pte_addr = (unsigned int)PDirPool[proc_index][pde_index];
  1062f0:	e8 c7 a0 ff ff       	call   1003bc <__x86.get_pc_thunk.dx>
  1062f5:	81 c2 ff 6c 00 00    	add    $0x6cff,%edx
  1062fb:	8b 44 24 04          	mov    0x4(%esp),%eax
  1062ff:	c1 e0 0a             	shl    $0xa,%eax
  106302:	03 44 24 08          	add    0x8(%esp),%eax
  106306:	8b 84 82 0c 20 85 01 	mov    0x185200c(%edx,%eax,4),%eax
    pte_addr &= 0xfffff000;//remove perm bits
    pte_addr += pte_index << 2;
    pte = (unsigned int *)pte_addr;
    *pte &= 0x00000000;
  10630d:	8b 54 24 0c          	mov    0xc(%esp),%edx
    pte_addr &= 0xfffff000;//remove perm bits
  106311:	25 00 f0 ff ff       	and    $0xfffff000,%eax
    *pte &= 0x00000000;
  106316:	c7 04 90 00 00 00 00 	movl   $0x0,(%eax,%edx,4)
  10631d:	c3                   	ret
  10631e:	66 90                	xchg   %ax,%ax

00106320 <MPTIntro_test1>:

extern char *PDirPool[NUM_IDS][1024];
extern unsigned int IDPTbl[1024][1024];

int MPTIntro_test1()
{
  106320:	56                   	push   %esi
  106321:	53                   	push   %ebx
  106322:	e8 99 a0 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  106327:	81 c3 cd 6c 00 00    	add    $0x6ccd,%ebx
  10632d:	83 ec 10             	sub    $0x10,%esp
    set_pdir_base(0);
  106330:	6a 00                	push   $0x0
  106332:	e8 29 fe ff ff       	call   106160 <set_pdir_base>
    if ((unsigned int) PDirPool[0] != rcr3()) {
  106337:	e8 7a d6 ff ff       	call   1039b6 <rcr3>
  10633c:	c7 c6 00 f0 95 01    	mov    $0x195f000,%esi
  106342:	83 c4 10             	add    $0x10,%esp
  106345:	39 f0                	cmp    %esi,%eax
  106347:	74 27                	je     106370 <MPTIntro_test1+0x50>
        dprintf("test 1.1 failed: (%d != %d)\n",
  106349:	e8 68 d6 ff ff       	call   1039b6 <rcr3>
  10634e:	83 ec 04             	sub    $0x4,%esp
  106351:	50                   	push   %eax
  106352:	8d 83 9a b9 ff ff    	lea    -0x4666(%ebx),%eax
  106358:	56                   	push   %esi
  106359:	50                   	push   %eax
  10635a:	e8 0d ca ff ff       	call   102d6c <dprintf>
                (unsigned int) PDirPool[0], rcr3());
        return 1;
  10635f:	83 c4 10             	add    $0x10,%esp
  106362:	b8 01 00 00 00       	mov    $0x1,%eax
                get_pdir_entry(1, 1), get_pdir_entry(1, 2));
        return 1;
    }
    dprintf("test 1 passed.\n");
    return 0;
}
  106367:	83 c4 04             	add    $0x4,%esp
  10636a:	5b                   	pop    %ebx
  10636b:	5e                   	pop    %esi
  10636c:	c3                   	ret
  10636d:	8d 76 00             	lea    0x0(%esi),%esi
    set_pdir_entry_identity(1, 1);
  106370:	83 ec 08             	sub    $0x8,%esp
  106373:	6a 01                	push   $0x1
  106375:	6a 01                	push   $0x1
  106377:	e8 64 fe ff ff       	call   1061e0 <set_pdir_entry_identity>
    set_pdir_entry(1, 2, 100);
  10637c:	83 c4 0c             	add    $0xc,%esp
  10637f:	6a 64                	push   $0x64
  106381:	6a 02                	push   $0x2
  106383:	6a 01                	push   $0x1
  106385:	e8 26 fe ff ff       	call   1061b0 <set_pdir_entry>
    if (get_pdir_entry(1, 1) != (unsigned int) IDPTbl[1] + 7) {
  10638a:	58                   	pop    %eax
  10638b:	5a                   	pop    %edx
  10638c:	6a 01                	push   $0x1
  10638e:	6a 01                	push   $0x1
  106390:	e8 fb fd ff ff       	call   106190 <get_pdir_entry>
  106395:	c7 c6 00 f0 55 01    	mov    $0x155f000,%esi
  10639b:	83 c4 10             	add    $0x10,%esp
  10639e:	81 c6 07 10 00 00    	add    $0x1007,%esi
  1063a4:	39 c6                	cmp    %eax,%esi
  1063a6:	74 28                	je     1063d0 <MPTIntro_test1+0xb0>
        dprintf("test 1.2 failed: (%d != %d)\n",
  1063a8:	83 ec 08             	sub    $0x8,%esp
  1063ab:	6a 01                	push   $0x1
  1063ad:	6a 01                	push   $0x1
  1063af:	e8 dc fd ff ff       	call   106190 <get_pdir_entry>
  1063b4:	83 c4 0c             	add    $0xc,%esp
  1063b7:	56                   	push   %esi
  1063b8:	50                   	push   %eax
  1063b9:	8d 83 b7 b9 ff ff    	lea    -0x4649(%ebx),%eax
  1063bf:	50                   	push   %eax
  1063c0:	e8 a7 c9 ff ff       	call   102d6c <dprintf>
        return 1;
  1063c5:	83 c4 10             	add    $0x10,%esp
  1063c8:	eb 98                	jmp    106362 <MPTIntro_test1+0x42>
  1063ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    if (get_pdir_entry(1, 2) != 409607) {
  1063d0:	83 ec 08             	sub    $0x8,%esp
  1063d3:	6a 02                	push   $0x2
  1063d5:	6a 01                	push   $0x1
  1063d7:	e8 b4 fd ff ff       	call   106190 <get_pdir_entry>
  1063dc:	83 c4 10             	add    $0x10,%esp
  1063df:	3d 07 40 06 00       	cmp    $0x64007,%eax
  1063e4:	75 72                	jne    106458 <MPTIntro_test1+0x138>
    rmv_pdir_entry(1, 1);
  1063e6:	83 ec 08             	sub    $0x8,%esp
  1063e9:	6a 01                	push   $0x1
  1063eb:	6a 01                	push   $0x1
  1063ed:	e8 2e fe ff ff       	call   106220 <rmv_pdir_entry>
    rmv_pdir_entry(1, 2);
  1063f2:	59                   	pop    %ecx
  1063f3:	5e                   	pop    %esi
  1063f4:	6a 02                	push   $0x2
  1063f6:	6a 01                	push   $0x1
  1063f8:	e8 23 fe ff ff       	call   106220 <rmv_pdir_entry>
    if (get_pdir_entry(1, 1) != 0 || get_pdir_entry(1, 2) != 0) {
  1063fd:	58                   	pop    %eax
  1063fe:	5a                   	pop    %edx
  1063ff:	6a 01                	push   $0x1
  106401:	6a 01                	push   $0x1
  106403:	e8 88 fd ff ff       	call   106190 <get_pdir_entry>
  106408:	83 c4 10             	add    $0x10,%esp
  10640b:	85 c0                	test   %eax,%eax
  10640d:	75 13                	jne    106422 <MPTIntro_test1+0x102>
  10640f:	83 ec 08             	sub    $0x8,%esp
  106412:	6a 02                	push   $0x2
  106414:	6a 01                	push   $0x1
  106416:	e8 75 fd ff ff       	call   106190 <get_pdir_entry>
  10641b:	83 c4 10             	add    $0x10,%esp
  10641e:	85 c0                	test   %eax,%eax
  106420:	74 5e                	je     106480 <MPTIntro_test1+0x160>
        dprintf("test 1.4 failed: (%d != 0 || %d != 0)\n",
  106422:	83 ec 08             	sub    $0x8,%esp
  106425:	6a 02                	push   $0x2
  106427:	6a 01                	push   $0x1
  106429:	e8 62 fd ff ff       	call   106190 <get_pdir_entry>
  10642e:	89 c6                	mov    %eax,%esi
  106430:	58                   	pop    %eax
  106431:	5a                   	pop    %edx
  106432:	6a 01                	push   $0x1
  106434:	6a 01                	push   $0x1
  106436:	e8 55 fd ff ff       	call   106190 <get_pdir_entry>
  10643b:	83 c4 0c             	add    $0xc,%esp
  10643e:	56                   	push   %esi
  10643f:	50                   	push   %eax
  106440:	8d 83 90 bf ff ff    	lea    -0x4070(%ebx),%eax
  106446:	50                   	push   %eax
  106447:	e8 20 c9 ff ff       	call   102d6c <dprintf>
        return 1;
  10644c:	83 c4 10             	add    $0x10,%esp
  10644f:	e9 0e ff ff ff       	jmp    106362 <MPTIntro_test1+0x42>
  106454:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        dprintf("test 1.3 failed: (%d != 409607)\n", get_pdir_entry(1, 2));
  106458:	83 ec 08             	sub    $0x8,%esp
  10645b:	6a 02                	push   $0x2
  10645d:	6a 01                	push   $0x1
  10645f:	e8 2c fd ff ff       	call   106190 <get_pdir_entry>
  106464:	59                   	pop    %ecx
  106465:	5e                   	pop    %esi
  106466:	50                   	push   %eax
  106467:	8d 83 6c bf ff ff    	lea    -0x4094(%ebx),%eax
  10646d:	50                   	push   %eax
  10646e:	e8 f9 c8 ff ff       	call   102d6c <dprintf>
        return 1;
  106473:	83 c4 10             	add    $0x10,%esp
  106476:	e9 e7 fe ff ff       	jmp    106362 <MPTIntro_test1+0x42>
  10647b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
    dprintf("test 1 passed.\n");
  106480:	83 ec 0c             	sub    $0xc,%esp
  106483:	8d 83 58 b8 ff ff    	lea    -0x47a8(%ebx),%eax
  106489:	50                   	push   %eax
  10648a:	e8 dd c8 ff ff       	call   102d6c <dprintf>
    return 0;
  10648f:	83 c4 10             	add    $0x10,%esp
  106492:	31 c0                	xor    %eax,%eax
  106494:	e9 ce fe ff ff       	jmp    106367 <MPTIntro_test1+0x47>
  106499:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

001064a0 <MPTIntro_test2>:

int MPTIntro_test2()
{
  1064a0:	53                   	push   %ebx
  1064a1:	e8 1a 9f ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  1064a6:	81 c3 4e 6b 00 00    	add    $0x6b4e,%ebx
  1064ac:	83 ec 0c             	sub    $0xc,%esp
    set_pdir_entry(1, 1, 10000);
  1064af:	68 10 27 00 00       	push   $0x2710
  1064b4:	6a 01                	push   $0x1
  1064b6:	6a 01                	push   $0x1
  1064b8:	e8 f3 fc ff ff       	call   1061b0 <set_pdir_entry>
    set_ptbl_entry(1, 1, 1, 10000, 259);
  1064bd:	c7 04 24 03 01 00 00 	movl   $0x103,(%esp)
  1064c4:	68 10 27 00 00       	push   $0x2710
  1064c9:	6a 01                	push   $0x1
  1064cb:	6a 01                	push   $0x1
  1064cd:	6a 01                	push   $0x1
  1064cf:	e8 ac fd ff ff       	call   106280 <set_ptbl_entry>
    if (get_ptbl_entry(1, 1, 1) != 40960259) {
  1064d4:	83 c4 1c             	add    $0x1c,%esp
  1064d7:	6a 01                	push   $0x1
  1064d9:	6a 01                	push   $0x1
  1064db:	6a 01                	push   $0x1
  1064dd:	e8 6e fd ff ff       	call   106250 <get_ptbl_entry>
  1064e2:	83 c4 10             	add    $0x10,%esp
  1064e5:	3d 03 01 71 02       	cmp    $0x2710103,%eax
  1064ea:	74 34                	je     106520 <MPTIntro_test2+0x80>
        dprintf("test 2.1 failed: (%d != 40960259)\n", get_ptbl_entry(1, 1, 1));
  1064ec:	83 ec 04             	sub    $0x4,%esp
  1064ef:	6a 01                	push   $0x1
  1064f1:	6a 01                	push   $0x1
  1064f3:	6a 01                	push   $0x1
  1064f5:	e8 56 fd ff ff       	call   106250 <get_ptbl_entry>
  1064fa:	5a                   	pop    %edx
  1064fb:	59                   	pop    %ecx
  1064fc:	50                   	push   %eax
  1064fd:	8d 83 b8 bf ff ff    	lea    -0x4048(%ebx),%eax
  106503:	50                   	push   %eax
  106504:	e8 63 c8 ff ff       	call   102d6c <dprintf>
        return 1;
  106509:	83 c4 10             	add    $0x10,%esp
        return 1;
    }
    rmv_pdir_entry(1, 1);
    dprintf("test 2 passed.\n");
    return 0;
}
  10650c:	83 c4 08             	add    $0x8,%esp
        return 1;
  10650f:	b8 01 00 00 00       	mov    $0x1,%eax
}
  106514:	5b                   	pop    %ebx
  106515:	c3                   	ret
  106516:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10651d:	00 
  10651e:	66 90                	xchg   %ax,%ax
    rmv_ptbl_entry(1, 1, 1);
  106520:	83 ec 04             	sub    $0x4,%esp
  106523:	6a 01                	push   $0x1
  106525:	6a 01                	push   $0x1
  106527:	6a 01                	push   $0x1
  106529:	e8 c2 fd ff ff       	call   1062f0 <rmv_ptbl_entry>
    if (get_ptbl_entry(1, 1, 1) != 0) {
  10652e:	83 c4 0c             	add    $0xc,%esp
  106531:	6a 01                	push   $0x1
  106533:	6a 01                	push   $0x1
  106535:	6a 01                	push   $0x1
  106537:	e8 14 fd ff ff       	call   106250 <get_ptbl_entry>
  10653c:	83 c4 10             	add    $0x10,%esp
  10653f:	85 c0                	test   %eax,%eax
  106541:	75 2d                	jne    106570 <MPTIntro_test2+0xd0>
    rmv_pdir_entry(1, 1);
  106543:	83 ec 08             	sub    $0x8,%esp
  106546:	6a 01                	push   $0x1
  106548:	6a 01                	push   $0x1
  10654a:	e8 d1 fc ff ff       	call   106220 <rmv_pdir_entry>
    dprintf("test 2 passed.\n");
  10654f:	8d 83 68 b8 ff ff    	lea    -0x4798(%ebx),%eax
  106555:	89 04 24             	mov    %eax,(%esp)
  106558:	e8 0f c8 ff ff       	call   102d6c <dprintf>
    return 0;
  10655d:	83 c4 10             	add    $0x10,%esp
  106560:	31 c0                	xor    %eax,%eax
}
  106562:	83 c4 08             	add    $0x8,%esp
  106565:	5b                   	pop    %ebx
  106566:	c3                   	ret
  106567:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10656e:	00 
  10656f:	90                   	nop
        dprintf("test 2.2 failed: (%d != 0)\n", get_ptbl_entry(1, 1, 1));
  106570:	83 ec 04             	sub    $0x4,%esp
  106573:	6a 01                	push   $0x1
  106575:	6a 01                	push   $0x1
  106577:	6a 01                	push   $0x1
  106579:	e8 d2 fc ff ff       	call   106250 <get_ptbl_entry>
  10657e:	5a                   	pop    %edx
  10657f:	59                   	pop    %ecx
  106580:	50                   	push   %eax
  106581:	8d 83 d4 b9 ff ff    	lea    -0x462c(%ebx),%eax
  106587:	50                   	push   %eax
  106588:	e8 df c7 ff ff       	call   102d6c <dprintf>
        return 1;
  10658d:	83 c4 10             	add    $0x10,%esp
  106590:	e9 77 ff ff ff       	jmp    10650c <MPTIntro_test2+0x6c>
  106595:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10659c:	00 
  10659d:	8d 76 00             	lea    0x0(%esi),%esi

001065a0 <MPTIntro_test_own>:
int MPTIntro_test_own()
{
    // TODO (optional)
    // dprintf("own test passed.\n");
    return 0;
}
  1065a0:	31 c0                	xor    %eax,%eax
  1065a2:	c3                   	ret
  1065a3:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  1065aa:	00 
  1065ab:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

001065b0 <test_MPTIntro>:

int test_MPTIntro()
{
  1065b0:	53                   	push   %ebx
  1065b1:	83 ec 08             	sub    $0x8,%esp
    return MPTIntro_test1() + MPTIntro_test2() + MPTIntro_test_own();
  1065b4:	e8 67 fd ff ff       	call   106320 <MPTIntro_test1>
  1065b9:	89 c3                	mov    %eax,%ebx
  1065bb:	e8 e0 fe ff ff       	call   1064a0 <MPTIntro_test2>
}
  1065c0:	83 c4 08             	add    $0x8,%esp
    return MPTIntro_test1() + MPTIntro_test2() + MPTIntro_test_own();
  1065c3:	01 d8                	add    %ebx,%eax
}
  1065c5:	5b                   	pop    %ebx
  1065c6:	c3                   	ret
  1065c7:	66 90                	xchg   %ax,%ax
  1065c9:	66 90                	xchg   %ax,%ax
  1065cb:	66 90                	xchg   %ax,%ax
  1065cd:	66 90                	xchg   %ax,%ax
  1065cf:	90                   	nop

001065d0 <get_ptbl_entry_by_va>:
 * Returns the page table entry corresponding to the virtual address,
 * according to the page structure of process # [proc_index].
 * Returns 0 if the mapping does not exist.
 */
unsigned int get_ptbl_entry_by_va(unsigned int proc_index, unsigned int vaddr)
{
  1065d0:	55                   	push   %ebp
  1065d1:	57                   	push   %edi
  1065d2:	56                   	push   %esi
  1065d3:	53                   	push   %ebx
  1065d4:	e8 e7 9d ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  1065d9:	81 c3 1b 6a 00 00    	add    $0x6a1b,%ebx
  1065df:	83 ec 14             	sub    $0x14,%esp
  1065e2:	8b 74 24 2c          	mov    0x2c(%esp),%esi
  1065e6:	8b 7c 24 28          	mov    0x28(%esp),%edi
    // TODO
    unsigned int pde_index = (vaddr & VA_PDIR_MASK) >> 22;
  1065ea:	89 f5                	mov    %esi,%ebp
  1065ec:	c1 ed 16             	shr    $0x16,%ebp
    unsigned int pte_index = (vaddr & VA_PTBL_MASK) >> 12;

    unsigned int pde = get_pdir_entry(proc_index, pde_index);
  1065ef:	55                   	push   %ebp
  1065f0:	57                   	push   %edi
  1065f1:	e8 9a fb ff ff       	call   106190 <get_pdir_entry>
    // check the present bit of page directory entry
    if ((pde & PTE_P) == 0) {
  1065f6:	83 c4 10             	add    $0x10,%esp
  1065f9:	a8 01                	test   $0x1,%al
  1065fb:	75 13                	jne    106610 <get_ptbl_entry_by_va+0x40>
    //check the present bit of page table entry
    if ((pte & PTE_P) == 0) {
        return 0;
    }
    return pte;
}         
  1065fd:	83 c4 0c             	add    $0xc,%esp
        return 0;
  106600:	31 c0                	xor    %eax,%eax
}         
  106602:	5b                   	pop    %ebx
  106603:	5e                   	pop    %esi
  106604:	5f                   	pop    %edi
  106605:	5d                   	pop    %ebp
  106606:	c3                   	ret
  106607:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10660e:	00 
  10660f:	90                   	nop
    unsigned int pte_index = (vaddr & VA_PTBL_MASK) >> 12;
  106610:	c1 ee 0c             	shr    $0xc,%esi
    unsigned int pte = get_ptbl_entry(proc_index, pde_index, pte_index);
  106613:	83 ec 04             	sub    $0x4,%esp
    unsigned int pte_index = (vaddr & VA_PTBL_MASK) >> 12;
  106616:	81 e6 ff 03 00 00    	and    $0x3ff,%esi
    unsigned int pte = get_ptbl_entry(proc_index, pde_index, pte_index);
  10661c:	56                   	push   %esi
  10661d:	55                   	push   %ebp
  10661e:	57                   	push   %edi
  10661f:	e8 2c fc ff ff       	call   106250 <get_ptbl_entry>
    if ((pte & PTE_P) == 0) {
  106624:	83 c4 10             	add    $0x10,%esp
  106627:	a8 01                	test   $0x1,%al
  106629:	74 d2                	je     1065fd <get_ptbl_entry_by_va+0x2d>
}         
  10662b:	83 c4 0c             	add    $0xc,%esp
  10662e:	5b                   	pop    %ebx
  10662f:	5e                   	pop    %esi
  106630:	5f                   	pop    %edi
  106631:	5d                   	pop    %ebp
  106632:	c3                   	ret
  106633:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10663a:	00 
  10663b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

00106640 <get_pdir_entry_by_va>:

// returns the page directory entry corresponding to the given virtual address
unsigned int get_pdir_entry_by_va(unsigned int proc_index, unsigned int vaddr)
{
  106640:	53                   	push   %ebx
  106641:	e8 7a 9d ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  106646:	81 c3 ae 69 00 00    	add    $0x69ae,%ebx
  10664c:	83 ec 10             	sub    $0x10,%esp
    // TODO
    unsigned int pde_index = (vaddr & VA_PDIR_MASK) >> 22;
  10664f:	8b 44 24 1c          	mov    0x1c(%esp),%eax
  106653:	c1 e8 16             	shr    $0x16,%eax
    unsigned int pde = get_pdir_entry(proc_index, pde_index);
  106656:	50                   	push   %eax
  106657:	ff 74 24 1c          	push   0x1c(%esp)
  10665b:	e8 30 fb ff ff       	call   106190 <get_pdir_entry>
    return pde;
}
  106660:	83 c4 18             	add    $0x18,%esp
  106663:	5b                   	pop    %ebx
  106664:	c3                   	ret
  106665:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10666c:	00 
  10666d:	8d 76 00             	lea    0x0(%esi),%esi

00106670 <rmv_ptbl_entry_by_va>:

// removes the page table entry for the given virtual address
void rmv_ptbl_entry_by_va(unsigned int proc_index, unsigned int vaddr)
{
  106670:	55                   	push   %ebp
  106671:	57                   	push   %edi
  106672:	56                   	push   %esi
  106673:	53                   	push   %ebx
  106674:	e8 47 9d ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  106679:	81 c3 7b 69 00 00    	add    $0x697b,%ebx
  10667f:	83 ec 14             	sub    $0x14,%esp
  106682:	8b 74 24 2c          	mov    0x2c(%esp),%esi
  106686:	8b 7c 24 28          	mov    0x28(%esp),%edi
    // TODO
    unsigned int pde_index = (vaddr & VA_PDIR_MASK) >> 22;
  10668a:	89 f5                	mov    %esi,%ebp
  10668c:	c1 ed 16             	shr    $0x16,%ebp
    unsigned int pte_index = (vaddr & VA_PTBL_MASK) >> 12;

    unsigned int pde = get_pdir_entry(proc_index, pde_index);
  10668f:	55                   	push   %ebp
  106690:	57                   	push   %edi
  106691:	e8 fa fa ff ff       	call   106190 <get_pdir_entry>
    // check the present bit of page directory entry
    if ((pde & PTE_P) == 0) {
  106696:	83 c4 10             	add    $0x10,%esp
  106699:	a8 01                	test   $0x1,%al
  10669b:	74 17                	je     1066b4 <rmv_ptbl_entry_by_va+0x44>
    unsigned int pte_index = (vaddr & VA_PTBL_MASK) >> 12;
  10669d:	c1 ee 0c             	shr    $0xc,%esi
    // the page directory entry is not valid for address translation
        return;
    }
    rmv_ptbl_entry(proc_index, pde_index, pte_index);
  1066a0:	83 ec 04             	sub    $0x4,%esp
    unsigned int pte_index = (vaddr & VA_PTBL_MASK) >> 12;
  1066a3:	81 e6 ff 03 00 00    	and    $0x3ff,%esi
    rmv_ptbl_entry(proc_index, pde_index, pte_index);
  1066a9:	56                   	push   %esi
  1066aa:	55                   	push   %ebp
  1066ab:	57                   	push   %edi
  1066ac:	e8 3f fc ff ff       	call   1062f0 <rmv_ptbl_entry>
  1066b1:	83 c4 10             	add    $0x10,%esp
}
  1066b4:	83 c4 0c             	add    $0xc,%esp
  1066b7:	5b                   	pop    %ebx
  1066b8:	5e                   	pop    %esi
  1066b9:	5f                   	pop    %edi
  1066ba:	5d                   	pop    %ebp
  1066bb:	c3                   	ret
  1066bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

001066c0 <rmv_pdir_entry_by_va>:

// removes the page directory entry for the given virtual address
void rmv_pdir_entry_by_va(unsigned int proc_index, unsigned int vaddr)
{
  1066c0:	53                   	push   %ebx
  1066c1:	e8 fa 9c ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  1066c6:	81 c3 2e 69 00 00    	add    $0x692e,%ebx
  1066cc:	83 ec 10             	sub    $0x10,%esp
    // TODO
    unsigned int pde_index = (vaddr & VA_PDIR_MASK) >> 22;
  1066cf:	8b 44 24 1c          	mov    0x1c(%esp),%eax
  1066d3:	c1 e8 16             	shr    $0x16,%eax
    rmv_pdir_entry(proc_index, pde_index);
  1066d6:	50                   	push   %eax
  1066d7:	ff 74 24 1c          	push   0x1c(%esp)
  1066db:	e8 40 fb ff ff       	call   106220 <rmv_pdir_entry>
}
  1066e0:	83 c4 18             	add    $0x18,%esp
  1066e3:	5b                   	pop    %ebx
  1066e4:	c3                   	ret
  1066e5:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  1066ec:	00 
  1066ed:	8d 76 00             	lea    0x0(%esi),%esi

001066f0 <set_ptbl_entry_by_va>:

// maps the virtual address [vaddr] to the physical page # [page_index] with permission [perm]
// you do not need to worry about the page directory entry. just map the page table entry.
void set_ptbl_entry_by_va(unsigned int proc_index, unsigned int vaddr, unsigned int page_index, unsigned int perm)
{
  1066f0:	53                   	push   %ebx
  1066f1:	e8 ca 9c ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  1066f6:	81 c3 fe 68 00 00    	add    $0x68fe,%ebx
  1066fc:	83 ec 14             	sub    $0x14,%esp
  1066ff:	8b 44 24 20          	mov    0x20(%esp),%eax
    // TODO
    unsigned int pde_index = (vaddr & VA_PDIR_MASK) >> 22;
    unsigned int pte_index = (vaddr & VA_PTBL_MASK) >> 12;
    set_ptbl_entry(proc_index, pde_index, pte_index, page_index, perm);
  106703:	ff 74 24 28          	push   0x28(%esp)
  106707:	ff 74 24 28          	push   0x28(%esp)
    unsigned int pte_index = (vaddr & VA_PTBL_MASK) >> 12;
  10670b:	89 c2                	mov    %eax,%edx
    unsigned int pde_index = (vaddr & VA_PDIR_MASK) >> 22;
  10670d:	c1 e8 16             	shr    $0x16,%eax
    unsigned int pte_index = (vaddr & VA_PTBL_MASK) >> 12;
  106710:	c1 ea 0c             	shr    $0xc,%edx
  106713:	81 e2 ff 03 00 00    	and    $0x3ff,%edx
    set_ptbl_entry(proc_index, pde_index, pte_index, page_index, perm);
  106719:	52                   	push   %edx
  10671a:	50                   	push   %eax
  10671b:	ff 74 24 2c          	push   0x2c(%esp)
  10671f:	e8 5c fb ff ff       	call   106280 <set_ptbl_entry>
}
  106724:	83 c4 28             	add    $0x28,%esp
  106727:	5b                   	pop    %ebx
  106728:	c3                   	ret
  106729:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00106730 <set_pdir_entry_by_va>:

// registers the mapping from [vaddr] to physical page # [page_index] in the page directory
void set_pdir_entry_by_va(unsigned int proc_index, unsigned int vaddr, unsigned int page_index)
{
  106730:	53                   	push   %ebx
  106731:	e8 8a 9c ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  106736:	81 c3 be 68 00 00    	add    $0x68be,%ebx
  10673c:	83 ec 0c             	sub    $0xc,%esp
    // TODO
    unsigned int pde_index = (vaddr & VA_PDIR_MASK) >> 22;
    set_pdir_entry(proc_index, pde_index, page_index);
  10673f:	ff 74 24 1c          	push   0x1c(%esp)
    unsigned int pde_index = (vaddr & VA_PDIR_MASK) >> 22;
  106743:	8b 44 24 1c          	mov    0x1c(%esp),%eax
  106747:	c1 e8 16             	shr    $0x16,%eax
    set_pdir_entry(proc_index, pde_index, page_index);
  10674a:	50                   	push   %eax
  10674b:	ff 74 24 1c          	push   0x1c(%esp)
  10674f:	e8 5c fa ff ff       	call   1061b0 <set_pdir_entry>
}   
  106754:	83 c4 18             	add    $0x18,%esp
  106757:	5b                   	pop    %ebx
  106758:	c3                   	ret
  106759:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00106760 <idptbl_init>:

// initializes the identity page table
// the permission for the kernel memory should be PTE_P, PTE_W, and PTE_G,
// while the permission for the rest should be PTE_P and PTE_W.
void idptbl_init(unsigned int mbi_adr)
{
  106760:	56                   	push   %esi
    //
    container_init(mbi_adr);

    // TODO
    unsigned int addr;
    for (addr = 0; addr < 0xFFFFF000; addr += PAGESIZE) {
  106761:	31 f6                	xor    %esi,%esi
{
  106763:	53                   	push   %ebx
  106764:	e8 57 9c ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  106769:	81 c3 8b 68 00 00    	add    $0x688b,%ebx
  10676f:	83 ec 10             	sub    $0x10,%esp
    container_init(mbi_adr);
  106772:	ff 74 24 1c          	push   0x1c(%esp)
  106776:	e8 85 f4 ff ff       	call   105c00 <container_init>
  10677b:	83 c4 10             	add    $0x10,%esp
  10677e:	66 90                	xchg   %ax,%ax
        unsigned int pde_index = (addr & VA_PDIR_MASK) >> 22;
        unsigned int pte_index = (addr & VA_PTBL_MASK) >> 12;
  106780:	89 f0                	mov    %esi,%eax
        unsigned int pde_index = (addr & VA_PDIR_MASK) >> 22;
  106782:	89 f2                	mov    %esi,%edx
        if (addr < VM_USERLO || addr >= VM_USERHI) {
  106784:	8d 8e 00 00 00 c0    	lea    -0x40000000(%esi),%ecx
        unsigned int pte_index = (addr & VA_PTBL_MASK) >> 12;
  10678a:	c1 e8 0c             	shr    $0xc,%eax
        unsigned int pde_index = (addr & VA_PDIR_MASK) >> 22;
  10678d:	c1 ea 16             	shr    $0x16,%edx
        unsigned int pte_index = (addr & VA_PTBL_MASK) >> 12;
  106790:	25 ff 03 00 00       	and    $0x3ff,%eax
        if (addr < VM_USERLO || addr >= VM_USERHI) {
  106795:	81 f9 ff ff ff af    	cmp    $0xafffffff,%ecx
  10679b:	76 26                	jbe    1067c3 <idptbl_init+0x63>
            //kernel pages
            set_ptbl_entry_identity(pde_index, pte_index, PT_PERM_PWG);
  10679d:	83 ec 04             	sub    $0x4,%esp
    for (addr = 0; addr < 0xFFFFF000; addr += PAGESIZE) {
  1067a0:	81 c6 00 10 00 00    	add    $0x1000,%esi
            set_ptbl_entry_identity(pde_index, pte_index, PT_PERM_PWG);
  1067a6:	68 03 01 00 00       	push   $0x103
  1067ab:	50                   	push   %eax
  1067ac:	52                   	push   %edx
  1067ad:	e8 0e fb ff ff       	call   1062c0 <set_ptbl_entry_identity>
    for (addr = 0; addr < 0xFFFFF000; addr += PAGESIZE) {
  1067b2:	83 c4 10             	add    $0x10,%esp
  1067b5:	81 fe 00 f0 ff ff    	cmp    $0xfffff000,%esi
  1067bb:	75 c3                	jne    106780 <idptbl_init+0x20>
        }else {
            //not kernel pages
            set_ptbl_entry_identity(pde_index, pte_index, PT_PERM_PW);
        }
    }
  1067bd:	83 c4 04             	add    $0x4,%esp
  1067c0:	5b                   	pop    %ebx
  1067c1:	5e                   	pop    %esi
  1067c2:	c3                   	ret
            set_ptbl_entry_identity(pde_index, pte_index, PT_PERM_PW);
  1067c3:	51                   	push   %ecx
    for (addr = 0; addr < 0xFFFFF000; addr += PAGESIZE) {
  1067c4:	81 c6 00 10 00 00    	add    $0x1000,%esi
            set_ptbl_entry_identity(pde_index, pte_index, PT_PERM_PW);
  1067ca:	6a 03                	push   $0x3
  1067cc:	50                   	push   %eax
  1067cd:	52                   	push   %edx
  1067ce:	e8 ed fa ff ff       	call   1062c0 <set_ptbl_entry_identity>
    for (addr = 0; addr < 0xFFFFF000; addr += PAGESIZE) {
  1067d3:	83 c4 10             	add    $0x10,%esp
  1067d6:	eb a8                	jmp    106780 <idptbl_init+0x20>
  1067d8:	66 90                	xchg   %ax,%ax
  1067da:	66 90                	xchg   %ax,%ax
  1067dc:	66 90                	xchg   %ax,%ax
  1067de:	66 90                	xchg   %ax,%ax

001067e0 <MPTOp_test1>:
#include <lib/debug.h>
#include "export.h"

int MPTOp_test1()
{
  1067e0:	53                   	push   %ebx
  1067e1:	e8 da 9b ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  1067e6:	81 c3 0e 68 00 00    	add    $0x680e,%ebx
  1067ec:	83 ec 10             	sub    $0x10,%esp
    unsigned int vaddr = 4096 * 1024 * 300;
    if (get_ptbl_entry_by_va(10, vaddr) != 0) {
  1067ef:	68 00 00 00 4b       	push   $0x4b000000
  1067f4:	6a 0a                	push   $0xa
  1067f6:	e8 d5 fd ff ff       	call   1065d0 <get_ptbl_entry_by_va>
  1067fb:	83 c4 10             	add    $0x10,%esp
  1067fe:	85 c0                	test   %eax,%eax
  106800:	0f 85 0a 01 00 00    	jne    106910 <MPTOp_test1+0x130>
        dprintf("test 1.1 failed: (%d != 0)\n", get_ptbl_entry_by_va(10, vaddr));
        return 1;
    }
    if (get_pdir_entry_by_va(10, vaddr) != 0) {
  106806:	83 ec 08             	sub    $0x8,%esp
  106809:	68 00 00 00 4b       	push   $0x4b000000
  10680e:	6a 0a                	push   $0xa
  106810:	e8 2b fe ff ff       	call   106640 <get_pdir_entry_by_va>
  106815:	83 c4 10             	add    $0x10,%esp
  106818:	85 c0                	test   %eax,%eax
  10681a:	0f 85 c0 00 00 00    	jne    1068e0 <MPTOp_test1+0x100>
        dprintf("test 1.2 failed: (%d != 0)\n", get_pdir_entry_by_va(10, vaddr));
        return 1;
    }
    set_pdir_entry_by_va(10, vaddr, 100);
  106820:	83 ec 04             	sub    $0x4,%esp
  106823:	6a 64                	push   $0x64
  106825:	68 00 00 00 4b       	push   $0x4b000000
  10682a:	6a 0a                	push   $0xa
  10682c:	e8 ff fe ff ff       	call   106730 <set_pdir_entry_by_va>
    set_ptbl_entry_by_va(10, vaddr, 100, 259);
  106831:	68 03 01 00 00       	push   $0x103
  106836:	6a 64                	push   $0x64
  106838:	68 00 00 00 4b       	push   $0x4b000000
  10683d:	6a 0a                	push   $0xa
  10683f:	e8 ac fe ff ff       	call   1066f0 <set_ptbl_entry_by_va>
    if (get_ptbl_entry_by_va(10, vaddr) == 0) {
  106844:	83 c4 18             	add    $0x18,%esp
  106847:	68 00 00 00 4b       	push   $0x4b000000
  10684c:	6a 0a                	push   $0xa
  10684e:	e8 7d fd ff ff       	call   1065d0 <get_ptbl_entry_by_va>
  106853:	83 c4 10             	add    $0x10,%esp
  106856:	85 c0                	test   %eax,%eax
  106858:	0f 84 02 01 00 00    	je     106960 <MPTOp_test1+0x180>
        dprintf("test 1.3 failed: (%d == 0)\n", get_ptbl_entry_by_va(10, vaddr));
        return 1;
    }
    if (get_pdir_entry_by_va(10, vaddr) == 0) {
  10685e:	83 ec 08             	sub    $0x8,%esp
  106861:	68 00 00 00 4b       	push   $0x4b000000
  106866:	6a 0a                	push   $0xa
  106868:	e8 d3 fd ff ff       	call   106640 <get_pdir_entry_by_va>
  10686d:	83 c4 10             	add    $0x10,%esp
  106870:	85 c0                	test   %eax,%eax
  106872:	0f 84 c0 00 00 00    	je     106938 <MPTOp_test1+0x158>
        dprintf("test 1.4 failed: (%d == 0)\n", get_pdir_entry_by_va(10, vaddr));
        return 1;
    }
    rmv_ptbl_entry_by_va(10, vaddr);
  106878:	83 ec 08             	sub    $0x8,%esp
  10687b:	68 00 00 00 4b       	push   $0x4b000000
  106880:	6a 0a                	push   $0xa
  106882:	e8 e9 fd ff ff       	call   106670 <rmv_ptbl_entry_by_va>
    rmv_pdir_entry_by_va(10, vaddr);
  106887:	58                   	pop    %eax
  106888:	5a                   	pop    %edx
  106889:	68 00 00 00 4b       	push   $0x4b000000
  10688e:	6a 0a                	push   $0xa
  106890:	e8 2b fe ff ff       	call   1066c0 <rmv_pdir_entry_by_va>
    if (get_ptbl_entry_by_va(10, vaddr) != 0) {
  106895:	59                   	pop    %ecx
  106896:	58                   	pop    %eax
  106897:	68 00 00 00 4b       	push   $0x4b000000
  10689c:	6a 0a                	push   $0xa
  10689e:	e8 2d fd ff ff       	call   1065d0 <get_ptbl_entry_by_va>
  1068a3:	83 c4 10             	add    $0x10,%esp
  1068a6:	85 c0                	test   %eax,%eax
  1068a8:	0f 85 e2 00 00 00    	jne    106990 <MPTOp_test1+0x1b0>
        dprintf("test 1.5 failed: (%d != 0)\n", get_ptbl_entry_by_va(10, vaddr));
        return 1;
    }
    if (get_pdir_entry_by_va(10, vaddr) != 0) {
  1068ae:	83 ec 08             	sub    $0x8,%esp
  1068b1:	68 00 00 00 4b       	push   $0x4b000000
  1068b6:	6a 0a                	push   $0xa
  1068b8:	e8 83 fd ff ff       	call   106640 <get_pdir_entry_by_va>
  1068bd:	83 c4 10             	add    $0x10,%esp
  1068c0:	85 c0                	test   %eax,%eax
  1068c2:	0f 85 f8 00 00 00    	jne    1069c0 <MPTOp_test1+0x1e0>
        dprintf("test 1.6 failed: (%d != 0)\n", get_pdir_entry_by_va(10, vaddr));
        return 1;
    }
    dprintf("test 1 passed.\n");
  1068c8:	83 ec 0c             	sub    $0xc,%esp
  1068cb:	8d 83 58 b8 ff ff    	lea    -0x47a8(%ebx),%eax
  1068d1:	50                   	push   %eax
  1068d2:	e8 95 c4 ff ff       	call   102d6c <dprintf>
    return 0;
  1068d7:	83 c4 10             	add    $0x10,%esp
  1068da:	31 c0                	xor    %eax,%eax
  1068dc:	eb 28                	jmp    106906 <MPTOp_test1+0x126>
  1068de:	66 90                	xchg   %ax,%ax
        dprintf("test 1.2 failed: (%d != 0)\n", get_pdir_entry_by_va(10, vaddr));
  1068e0:	83 ec 08             	sub    $0x8,%esp
  1068e3:	68 00 00 00 4b       	push   $0x4b000000
  1068e8:	6a 0a                	push   $0xa
  1068ea:	e8 51 fd ff ff       	call   106640 <get_pdir_entry_by_va>
  1068ef:	5a                   	pop    %edx
  1068f0:	59                   	pop    %ecx
  1068f1:	50                   	push   %eax
  1068f2:	8d 83 0c ba ff ff    	lea    -0x45f4(%ebx),%eax
  1068f8:	50                   	push   %eax
  1068f9:	e8 6e c4 ff ff       	call   102d6c <dprintf>
        return 1;
  1068fe:	83 c4 10             	add    $0x10,%esp
        return 1;
  106901:	b8 01 00 00 00       	mov    $0x1,%eax
}
  106906:	83 c4 08             	add    $0x8,%esp
  106909:	5b                   	pop    %ebx
  10690a:	c3                   	ret
  10690b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        dprintf("test 1.1 failed: (%d != 0)\n", get_ptbl_entry_by_va(10, vaddr));
  106910:	83 ec 08             	sub    $0x8,%esp
  106913:	68 00 00 00 4b       	push   $0x4b000000
  106918:	6a 0a                	push   $0xa
  10691a:	e8 b1 fc ff ff       	call   1065d0 <get_ptbl_entry_by_va>
  10691f:	5a                   	pop    %edx
  106920:	59                   	pop    %ecx
  106921:	50                   	push   %eax
  106922:	8d 83 f0 b9 ff ff    	lea    -0x4610(%ebx),%eax
  106928:	50                   	push   %eax
  106929:	e8 3e c4 ff ff       	call   102d6c <dprintf>
        return 1;
  10692e:	83 c4 10             	add    $0x10,%esp
  106931:	eb ce                	jmp    106901 <MPTOp_test1+0x121>
  106933:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        dprintf("test 1.4 failed: (%d == 0)\n", get_pdir_entry_by_va(10, vaddr));
  106938:	83 ec 08             	sub    $0x8,%esp
  10693b:	68 00 00 00 4b       	push   $0x4b000000
  106940:	6a 0a                	push   $0xa
  106942:	e8 f9 fc ff ff       	call   106640 <get_pdir_entry_by_va>
  106947:	5a                   	pop    %edx
  106948:	59                   	pop    %ecx
  106949:	50                   	push   %eax
  10694a:	8d 83 44 ba ff ff    	lea    -0x45bc(%ebx),%eax
  106950:	50                   	push   %eax
  106951:	e8 16 c4 ff ff       	call   102d6c <dprintf>
        return 1;
  106956:	83 c4 10             	add    $0x10,%esp
  106959:	eb a6                	jmp    106901 <MPTOp_test1+0x121>
  10695b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        dprintf("test 1.3 failed: (%d == 0)\n", get_ptbl_entry_by_va(10, vaddr));
  106960:	83 ec 08             	sub    $0x8,%esp
  106963:	68 00 00 00 4b       	push   $0x4b000000
  106968:	6a 0a                	push   $0xa
  10696a:	e8 61 fc ff ff       	call   1065d0 <get_ptbl_entry_by_va>
  10696f:	5a                   	pop    %edx
  106970:	59                   	pop    %ecx
  106971:	50                   	push   %eax
  106972:	8d 83 28 ba ff ff    	lea    -0x45d8(%ebx),%eax
  106978:	50                   	push   %eax
  106979:	e8 ee c3 ff ff       	call   102d6c <dprintf>
        return 1;
  10697e:	83 c4 10             	add    $0x10,%esp
  106981:	e9 7b ff ff ff       	jmp    106901 <MPTOp_test1+0x121>
  106986:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10698d:	00 
  10698e:	66 90                	xchg   %ax,%ax
        dprintf("test 1.5 failed: (%d != 0)\n", get_ptbl_entry_by_va(10, vaddr));
  106990:	83 ec 08             	sub    $0x8,%esp
  106993:	68 00 00 00 4b       	push   $0x4b000000
  106998:	6a 0a                	push   $0xa
  10699a:	e8 31 fc ff ff       	call   1065d0 <get_ptbl_entry_by_va>
  10699f:	5a                   	pop    %edx
  1069a0:	59                   	pop    %ecx
  1069a1:	50                   	push   %eax
  1069a2:	8d 83 60 ba ff ff    	lea    -0x45a0(%ebx),%eax
  1069a8:	50                   	push   %eax
  1069a9:	e8 be c3 ff ff       	call   102d6c <dprintf>
        return 1;
  1069ae:	83 c4 10             	add    $0x10,%esp
  1069b1:	e9 4b ff ff ff       	jmp    106901 <MPTOp_test1+0x121>
  1069b6:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  1069bd:	00 
  1069be:	66 90                	xchg   %ax,%ax
        dprintf("test 1.6 failed: (%d != 0)\n", get_pdir_entry_by_va(10, vaddr));
  1069c0:	83 ec 08             	sub    $0x8,%esp
  1069c3:	68 00 00 00 4b       	push   $0x4b000000
  1069c8:	6a 0a                	push   $0xa
  1069ca:	e8 71 fc ff ff       	call   106640 <get_pdir_entry_by_va>
  1069cf:	5a                   	pop    %edx
  1069d0:	59                   	pop    %ecx
  1069d1:	50                   	push   %eax
  1069d2:	8d 83 7c ba ff ff    	lea    -0x4584(%ebx),%eax
  1069d8:	50                   	push   %eax
  1069d9:	e8 8e c3 ff ff       	call   102d6c <dprintf>
        return 1;
  1069de:	83 c4 10             	add    $0x10,%esp
  1069e1:	e9 1b ff ff ff       	jmp    106901 <MPTOp_test1+0x121>
  1069e6:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  1069ed:	00 
  1069ee:	66 90                	xchg   %ax,%ax

001069f0 <MPTOp_test_own>:
int MPTOp_test_own()
{
    // TODO (optional)
    // dprintf("own test passed.\n");
    return 0;
}
  1069f0:	31 c0                	xor    %eax,%eax
  1069f2:	c3                   	ret
  1069f3:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  1069fa:	00 
  1069fb:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

00106a00 <test_MPTOp>:

int test_MPTOp()
{
    return MPTOp_test1() + MPTOp_test_own();
  106a00:	e9 db fd ff ff       	jmp    1067e0 <MPTOp_test1>
  106a05:	66 90                	xchg   %ax,%ax
  106a07:	66 90                	xchg   %ax,%ax
  106a09:	66 90                	xchg   %ax,%ax
  106a0b:	66 90                	xchg   %ax,%ax
  106a0d:	66 90                	xchg   %ax,%ax
  106a0f:	90                   	nop

00106a10 <pdir_init>:
 * For each process from id 0 to NUM_IDS -1,
 * set the page directory entries sothat the kernel portion of the map as identity map,
 * and the rest of page directories are unmmaped.
 */
void pdir_init(unsigned int mbi_adr)
{
  106a10:	57                   	push   %edi
    int i, j;
    
    idptbl_init(mbi_adr);

    //set other processes
    for(i = 0; i < NUM_IDS; i++){
  106a11:	31 ff                	xor    %edi,%edi
{
  106a13:	56                   	push   %esi
  106a14:	53                   	push   %ebx
  106a15:	e8 a6 99 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  106a1a:	81 c3 da 65 00 00    	add    $0x65da,%ebx
    idptbl_init(mbi_adr);
  106a20:	83 ec 0c             	sub    $0xc,%esp
  106a23:	ff 74 24 1c          	push   0x1c(%esp)
  106a27:	e8 34 fd ff ff       	call   106760 <idptbl_init>
  106a2c:	83 c4 10             	add    $0x10,%esp
  106a2f:	90                   	nop
      //kernel address, set to identity
      for(j = 0; j < (VM_USERLO_PI >> 10); j++){
  106a30:	31 f6                	xor    %esi,%esi
  106a32:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        set_pdir_entry_identity(i, j);
  106a38:	83 ec 08             	sub    $0x8,%esp
  106a3b:	56                   	push   %esi
      for(j = 0; j < (VM_USERLO_PI >> 10); j++){
  106a3c:	83 c6 01             	add    $0x1,%esi
        set_pdir_entry_identity(i, j);
  106a3f:	57                   	push   %edi
  106a40:	e8 9b f7 ff ff       	call   1061e0 <set_pdir_entry_identity>
      for(j = 0; j < (VM_USERLO_PI >> 10); j++){
  106a45:	83 c4 10             	add    $0x10,%esp
  106a48:	81 fe 00 01 00 00    	cmp    $0x100,%esi
  106a4e:	75 e8                	jne    106a38 <pdir_init+0x28>
      }
      //normal address, set to unmap
      for(j = VM_USERLO_PI >> 10; j < VM_USERHI_PI >> 10; j++){
        rmv_pdir_entry(i, j);
  106a50:	83 ec 08             	sub    $0x8,%esp
  106a53:	56                   	push   %esi
      for(j = VM_USERLO_PI >> 10; j < VM_USERHI_PI >> 10; j++){
  106a54:	83 c6 01             	add    $0x1,%esi
        rmv_pdir_entry(i, j);
  106a57:	57                   	push   %edi
  106a58:	e8 c3 f7 ff ff       	call   106220 <rmv_pdir_entry>
      for(j = VM_USERLO_PI >> 10; j < VM_USERHI_PI >> 10; j++){
  106a5d:	83 c4 10             	add    $0x10,%esp
  106a60:	81 fe c0 03 00 00    	cmp    $0x3c0,%esi
  106a66:	75 e8                	jne    106a50 <pdir_init+0x40>
  106a68:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  106a6f:	00 
      }
      //kernel address, set to identity
      for(j = VM_USERHI_PI >> 10; j < 1024; j++){
        set_pdir_entry_identity(i, j);
  106a70:	83 ec 08             	sub    $0x8,%esp
  106a73:	56                   	push   %esi
      for(j = VM_USERHI_PI >> 10; j < 1024; j++){
  106a74:	83 c6 01             	add    $0x1,%esi
        set_pdir_entry_identity(i, j);
  106a77:	57                   	push   %edi
  106a78:	e8 63 f7 ff ff       	call   1061e0 <set_pdir_entry_identity>
      for(j = VM_USERHI_PI >> 10; j < 1024; j++){
  106a7d:	83 c4 10             	add    $0x10,%esp
  106a80:	81 fe 00 04 00 00    	cmp    $0x400,%esi
  106a86:	75 e8                	jne    106a70 <pdir_init+0x60>
    for(i = 0; i < NUM_IDS; i++){
  106a88:	83 c7 01             	add    $0x1,%edi
  106a8b:	83 ff 40             	cmp    $0x40,%edi
  106a8e:	75 a0                	jne    106a30 <pdir_init+0x20>
      }
    }
    
}
  106a90:	5b                   	pop    %ebx
  106a91:	5e                   	pop    %esi
  106a92:	5f                   	pop    %edi
  106a93:	c3                   	ret
  106a94:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  106a9b:	00 
  106a9c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00106aa0 <alloc_ptbl>:
 * and clears (set to 0) the whole page table entries for this newly mapped page table.
 * It returns the page index of the newly allocated physical page.
 * In the case when there's no physical page available, it returns 0.
 */
unsigned int alloc_ptbl(unsigned int proc_index, unsigned int vadr)
{
  106aa0:	57                   	push   %edi
  106aa1:	56                   	push   %esi
  106aa2:	53                   	push   %ebx
  106aa3:	8b 7c 24 10          	mov    0x10(%esp),%edi
  106aa7:	e8 14 99 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  106aac:	81 c3 48 65 00 00    	add    $0x6548,%ebx
  // TODO
  unsigned int addr;
  unsigned int page_index;
  page_index = container_alloc(proc_index);
  106ab2:	83 ec 0c             	sub    $0xc,%esp
  106ab5:	57                   	push   %edi
  106ab6:	e8 45 f3 ff ff       	call   105e00 <container_alloc>
  if(page_index == 0) return 0;//no physical page vailable
  106abb:	83 c4 10             	add    $0x10,%esp
  page_index = container_alloc(proc_index);
  106abe:	89 c6                	mov    %eax,%esi
  if(page_index == 0) return 0;//no physical page vailable
  106ac0:	85 c0                	test   %eax,%eax
  106ac2:	75 0c                	jne    106ad0 <alloc_ptbl+0x30>
  // addr increases 4 per step, since entry is 4 bytes
  for(addr = page_index << 12; addr < (page_index + 1) << 12; addr += 4){
    *(unsigned int *)addr &= 0x00000000; 
  }
  return page_index;
}
  106ac4:	89 f0                	mov    %esi,%eax
  106ac6:	5b                   	pop    %ebx
  106ac7:	5e                   	pop    %esi
  106ac8:	5f                   	pop    %edi
  106ac9:	c3                   	ret
  106aca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  set_pdir_entry_by_va(proc_index, vadr, page_index);
  106ad0:	83 ec 04             	sub    $0x4,%esp
  106ad3:	50                   	push   %eax
  106ad4:	ff 74 24 1c          	push   0x1c(%esp)
  106ad8:	57                   	push   %edi
  106ad9:	e8 52 fc ff ff       	call   106730 <set_pdir_entry_by_va>
  for(addr = page_index << 12; addr < (page_index + 1) << 12; addr += 4){
  106ade:	89 f0                	mov    %esi,%eax
  106ae0:	8d 56 01             	lea    0x1(%esi),%edx
  106ae3:	83 c4 10             	add    $0x10,%esp
  106ae6:	c1 e0 0c             	shl    $0xc,%eax
  106ae9:	c1 e2 0c             	shl    $0xc,%edx
  106aec:	39 d0                	cmp    %edx,%eax
  106aee:	73 d4                	jae    106ac4 <alloc_ptbl+0x24>
    *(unsigned int *)addr &= 0x00000000; 
  106af0:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  for(addr = page_index << 12; addr < (page_index + 1) << 12; addr += 4){
  106af6:	83 c0 04             	add    $0x4,%eax
  106af9:	39 d0                	cmp    %edx,%eax
  106afb:	73 c7                	jae    106ac4 <alloc_ptbl+0x24>
  106afd:	b9 01 00 00 00       	mov    $0x1,%ecx
  106b02:	85 c9                	test   %ecx,%ecx
  106b04:	74 12                	je     106b18 <alloc_ptbl+0x78>
    *(unsigned int *)addr &= 0x00000000; 
  106b06:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  for(addr = page_index << 12; addr < (page_index + 1) << 12; addr += 4){
  106b0c:	83 c0 04             	add    $0x4,%eax
  106b0f:	39 d0                	cmp    %edx,%eax
  106b11:	73 b1                	jae    106ac4 <alloc_ptbl+0x24>
  106b13:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
    *(unsigned int *)addr &= 0x00000000; 
  106b18:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  for(addr = page_index << 12; addr < (page_index + 1) << 12; addr += 4){
  106b1e:	83 c0 08             	add    $0x8,%eax
    *(unsigned int *)addr &= 0x00000000; 
  106b21:	c7 40 fc 00 00 00 00 	movl   $0x0,-0x4(%eax)
  for(addr = page_index << 12; addr < (page_index + 1) << 12; addr += 4){
  106b28:	39 d0                	cmp    %edx,%eax
  106b2a:	72 ec                	jb     106b18 <alloc_ptbl+0x78>
  106b2c:	eb 96                	jmp    106ac4 <alloc_ptbl+0x24>
  106b2e:	66 90                	xchg   %ax,%ax

00106b30 <free_ptbl>:

// Reverse operation of alloc_ptbl.
// Removes corresponding page directory entry,
// and frees the page for the page table entries (with container_free).
void free_ptbl(unsigned int proc_index, unsigned int vadr)
{
  106b30:	55                   	push   %ebp
  106b31:	57                   	push   %edi
  106b32:	56                   	push   %esi
  106b33:	53                   	push   %ebx
  106b34:	e8 87 98 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  106b39:	81 c3 bb 64 00 00    	add    $0x64bb,%ebx
  106b3f:	83 ec 14             	sub    $0x14,%esp
  106b42:	8b 7c 24 28          	mov    0x28(%esp),%edi
  106b46:	8b 6c 24 2c          	mov    0x2c(%esp),%ebp
  // TODO
  unsigned int pdir_entry;
  unsigned int page_index;
  pdir_entry = get_pdir_entry_by_va(proc_index, vadr);
  106b4a:	55                   	push   %ebp
  106b4b:	57                   	push   %edi
  106b4c:	e8 ef fa ff ff       	call   106640 <get_pdir_entry_by_va>
  106b51:	89 c6                	mov    %eax,%esi
  page_index = pdir_entry >> 12;
  // remove page directory entry
  rmv_pdir_entry_by_va(proc_index, vadr);
  106b53:	58                   	pop    %eax
  106b54:	5a                   	pop    %edx
  106b55:	55                   	push   %ebp
  106b56:	57                   	push   %edi
  page_index = pdir_entry >> 12;
  106b57:	c1 ee 0c             	shr    $0xc,%esi
  rmv_pdir_entry_by_va(proc_index, vadr);
  106b5a:	e8 61 fb ff ff       	call   1066c0 <rmv_pdir_entry_by_va>

  //free the page for the page table entities
  container_free(proc_index, page_index);
  106b5f:	59                   	pop    %ecx
  106b60:	5d                   	pop    %ebp
  106b61:	56                   	push   %esi
  106b62:	57                   	push   %edi
  106b63:	e8 e8 f2 ff ff       	call   105e50 <container_free>
  106b68:	83 c4 1c             	add    $0x1c,%esp
  106b6b:	5b                   	pop    %ebx
  106b6c:	5e                   	pop    %esi
  106b6d:	5f                   	pop    %edi
  106b6e:	5d                   	pop    %ebp
  106b6f:	c3                   	ret

00106b70 <MPTComm_test1>:
#include <pmm/MContainer/export.h>
#include <vmm/MPTOp/export.h>
#include "export.h"

int MPTComm_test1()
{
  106b70:	55                   	push   %ebp
  106b71:	57                   	push   %edi
  106b72:	bf 03 01 00 00       	mov    $0x103,%edi
  106b77:	56                   	push   %esi
    unsigned int i;
    for (i = 0; i < 1024; i++) {
  106b78:	31 f6                	xor    %esi,%esi
{
  106b7a:	53                   	push   %ebx
  106b7b:	e8 40 98 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  106b80:	81 c3 74 64 00 00    	add    $0x6474,%ebx
  106b86:	83 ec 0c             	sub    $0xc,%esp
  106b89:	eb 0e                	jmp    106b99 <MPTComm_test1+0x29>
  106b8b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
    for (i = 0; i < 1024; i++) {
  106b90:	83 c6 01             	add    $0x1,%esi
  106b93:	81 c7 00 00 40 00    	add    $0x400000,%edi
        if (i < 256 || i >= 960) {
  106b99:	8d 86 00 ff ff ff    	lea    -0x100(%esi),%eax
  106b9f:	3d bf 02 00 00       	cmp    $0x2bf,%eax
  106ba4:	76 ea                	jbe    106b90 <MPTComm_test1+0x20>
            if (get_ptbl_entry_by_va(10, i * 4096 * 1024) !=
  106ba6:	89 f5                	mov    %esi,%ebp
  106ba8:	52                   	push   %edx
  106ba9:	c1 e5 16             	shl    $0x16,%ebp
  106bac:	52                   	push   %edx
  106bad:	55                   	push   %ebp
  106bae:	6a 0a                	push   $0xa
  106bb0:	e8 1b fa ff ff       	call   1065d0 <get_ptbl_entry_by_va>
  106bb5:	83 c4 10             	add    $0x10,%esp
  106bb8:	39 f8                	cmp    %edi,%eax
  106bba:	75 2d                	jne    106be9 <MPTComm_test1+0x79>
    for (i = 0; i < 1024; i++) {
  106bbc:	83 c6 01             	add    $0x1,%esi
  106bbf:	81 c7 00 00 40 00    	add    $0x400000,%edi
  106bc5:	81 fe 00 04 00 00    	cmp    $0x400,%esi
  106bcb:	75 cc                	jne    106b99 <MPTComm_test1+0x29>
                        i * 4096 * 1024 + 259);
                return 1;
            }
        }
    }
    dprintf("test 1 passed.\n");
  106bcd:	83 ec 0c             	sub    $0xc,%esp
  106bd0:	8d 83 58 b8 ff ff    	lea    -0x47a8(%ebx),%eax
  106bd6:	50                   	push   %eax
  106bd7:	e8 90 c1 ff ff       	call   102d6c <dprintf>
    return 0;
  106bdc:	83 c4 10             	add    $0x10,%esp
  106bdf:	31 c0                	xor    %eax,%eax
}
  106be1:	83 c4 0c             	add    $0xc,%esp
  106be4:	5b                   	pop    %ebx
  106be5:	5e                   	pop    %esi
  106be6:	5f                   	pop    %edi
  106be7:	5d                   	pop    %ebp
  106be8:	c3                   	ret
                dprintf("test 1.1 failed (i = %d): (%d != %d)\n",
  106be9:	50                   	push   %eax
  106bea:	50                   	push   %eax
  106beb:	55                   	push   %ebp
  106bec:	6a 0a                	push   $0xa
  106bee:	e8 dd f9 ff ff       	call   1065d0 <get_ptbl_entry_by_va>
  106bf3:	57                   	push   %edi
  106bf4:	50                   	push   %eax
  106bf5:	8d 83 48 bb ff ff    	lea    -0x44b8(%ebx),%eax
  106bfb:	56                   	push   %esi
  106bfc:	50                   	push   %eax
  106bfd:	e8 6a c1 ff ff       	call   102d6c <dprintf>
                return 1;
  106c02:	83 c4 20             	add    $0x20,%esp
  106c05:	b8 01 00 00 00       	mov    $0x1,%eax
  106c0a:	eb d5                	jmp    106be1 <MPTComm_test1+0x71>
  106c0c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00106c10 <MPTComm_test2>:

int MPTComm_test2()
{
  106c10:	53                   	push   %ebx
  106c11:	e8 aa 97 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  106c16:	81 c3 de 63 00 00    	add    $0x63de,%ebx
  106c1c:	83 ec 10             	sub    $0x10,%esp
    unsigned int vaddr = 300 * 4096 * 1024;
    container_split(0, 100);
  106c1f:	6a 64                	push   $0x64
  106c21:	6a 00                	push   $0x0
  106c23:	e8 78 f1 ff ff       	call   105da0 <container_split>
    alloc_ptbl(1, vaddr);
  106c28:	59                   	pop    %ecx
  106c29:	58                   	pop    %eax
  106c2a:	68 00 00 00 4b       	push   $0x4b000000
  106c2f:	6a 01                	push   $0x1
  106c31:	e8 6a fe ff ff       	call   106aa0 <alloc_ptbl>
    if (get_pdir_entry_by_va(1, vaddr) == 0) {
  106c36:	58                   	pop    %eax
  106c37:	5a                   	pop    %edx
  106c38:	68 00 00 00 4b       	push   $0x4b000000
  106c3d:	6a 01                	push   $0x1
  106c3f:	e8 fc f9 ff ff       	call   106640 <get_pdir_entry_by_va>
  106c44:	83 c4 10             	add    $0x10,%esp
  106c47:	85 c0                	test   %eax,%eax
  106c49:	0f 84 89 00 00 00    	je     106cd8 <MPTComm_test2+0xc8>
        dprintf("test 2.1 failed: (%d == 0)\n", get_pdir_entry_by_va(1, vaddr));
        return 1;
    }
    if (get_ptbl_entry_by_va(1, vaddr) != 0) {
  106c4f:	83 ec 08             	sub    $0x8,%esp
  106c52:	68 00 00 00 4b       	push   $0x4b000000
  106c57:	6a 01                	push   $0x1
  106c59:	e8 72 f9 ff ff       	call   1065d0 <get_ptbl_entry_by_va>
  106c5e:	83 c4 10             	add    $0x10,%esp
  106c61:	85 c0                	test   %eax,%eax
  106c63:	75 43                	jne    106ca8 <MPTComm_test2+0x98>
        dprintf("test 2.2 failed: (%d != 0)\n", get_ptbl_entry_by_va(1, vaddr));
        return 1;
    }
    free_ptbl(1, vaddr);
  106c65:	83 ec 08             	sub    $0x8,%esp
  106c68:	68 00 00 00 4b       	push   $0x4b000000
  106c6d:	6a 01                	push   $0x1
  106c6f:	e8 bc fe ff ff       	call   106b30 <free_ptbl>
    if (get_pdir_entry_by_va(1, vaddr) != 0) {
  106c74:	58                   	pop    %eax
  106c75:	5a                   	pop    %edx
  106c76:	68 00 00 00 4b       	push   $0x4b000000
  106c7b:	6a 01                	push   $0x1
  106c7d:	e8 be f9 ff ff       	call   106640 <get_pdir_entry_by_va>
  106c82:	83 c4 10             	add    $0x10,%esp
  106c85:	85 c0                	test   %eax,%eax
  106c87:	75 77                	jne    106d00 <MPTComm_test2+0xf0>
        dprintf("test 2.3 failed: (%d != 0)\n", get_pdir_entry_by_va(1, vaddr));
        return 1;
    }
    dprintf("test 2 passed.\n");
  106c89:	83 ec 0c             	sub    $0xc,%esp
  106c8c:	8d 83 68 b8 ff ff    	lea    -0x4798(%ebx),%eax
  106c92:	50                   	push   %eax
  106c93:	e8 d4 c0 ff ff       	call   102d6c <dprintf>
    return 0;
  106c98:	83 c4 10             	add    $0x10,%esp
  106c9b:	31 c0                	xor    %eax,%eax
}
  106c9d:	83 c4 08             	add    $0x8,%esp
  106ca0:	5b                   	pop    %ebx
  106ca1:	c3                   	ret
  106ca2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        dprintf("test 2.2 failed: (%d != 0)\n", get_ptbl_entry_by_va(1, vaddr));
  106ca8:	83 ec 08             	sub    $0x8,%esp
  106cab:	68 00 00 00 4b       	push   $0x4b000000
  106cb0:	6a 01                	push   $0x1
  106cb2:	e8 19 f9 ff ff       	call   1065d0 <get_ptbl_entry_by_va>
  106cb7:	59                   	pop    %ecx
  106cb8:	5a                   	pop    %edx
  106cb9:	50                   	push   %eax
  106cba:	8d 83 d4 b9 ff ff    	lea    -0x462c(%ebx),%eax
  106cc0:	50                   	push   %eax
  106cc1:	e8 a6 c0 ff ff       	call   102d6c <dprintf>
        return 1;
  106cc6:	83 c4 10             	add    $0x10,%esp
}
  106cc9:	83 c4 08             	add    $0x8,%esp
        return 1;
  106ccc:	b8 01 00 00 00       	mov    $0x1,%eax
}
  106cd1:	5b                   	pop    %ebx
  106cd2:	c3                   	ret
  106cd3:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        dprintf("test 2.1 failed: (%d == 0)\n", get_pdir_entry_by_va(1, vaddr));
  106cd8:	83 ec 08             	sub    $0x8,%esp
  106cdb:	68 00 00 00 4b       	push   $0x4b000000
  106ce0:	6a 01                	push   $0x1
  106ce2:	e8 59 f9 ff ff       	call   106640 <get_pdir_entry_by_va>
  106ce7:	59                   	pop    %ecx
  106ce8:	5a                   	pop    %edx
  106ce9:	50                   	push   %eax
  106cea:	8d 83 98 ba ff ff    	lea    -0x4568(%ebx),%eax
  106cf0:	50                   	push   %eax
  106cf1:	e8 76 c0 ff ff       	call   102d6c <dprintf>
        return 1;
  106cf6:	83 c4 10             	add    $0x10,%esp
  106cf9:	eb ce                	jmp    106cc9 <MPTComm_test2+0xb9>
  106cfb:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        dprintf("test 2.3 failed: (%d != 0)\n", get_pdir_entry_by_va(1, vaddr));
  106d00:	83 ec 08             	sub    $0x8,%esp
  106d03:	68 00 00 00 4b       	push   $0x4b000000
  106d08:	6a 01                	push   $0x1
  106d0a:	e8 31 f9 ff ff       	call   106640 <get_pdir_entry_by_va>
  106d0f:	5a                   	pop    %edx
  106d10:	59                   	pop    %ecx
  106d11:	50                   	push   %eax
  106d12:	8d 83 b4 ba ff ff    	lea    -0x454c(%ebx),%eax
  106d18:	50                   	push   %eax
  106d19:	e8 4e c0 ff ff       	call   102d6c <dprintf>
        return 1;
  106d1e:	83 c4 10             	add    $0x10,%esp
  106d21:	eb a6                	jmp    106cc9 <MPTComm_test2+0xb9>
  106d23:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  106d2a:	00 
  106d2b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

00106d30 <MPTComm_test_own>:
int MPTComm_test_own()
{
    // TODO (optional)
    // dprintf("own test passed.\n");
    return 0;
}
  106d30:	31 c0                	xor    %eax,%eax
  106d32:	c3                   	ret
  106d33:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  106d3a:	00 
  106d3b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

00106d40 <test_MPTComm>:

int test_MPTComm()
{
  106d40:	53                   	push   %ebx
  106d41:	83 ec 08             	sub    $0x8,%esp
    return MPTComm_test1() + MPTComm_test2() + MPTComm_test_own();
  106d44:	e8 27 fe ff ff       	call   106b70 <MPTComm_test1>
  106d49:	89 c3                	mov    %eax,%ebx
  106d4b:	e8 c0 fe ff ff       	call   106c10 <MPTComm_test2>
}
  106d50:	83 c4 08             	add    $0x8,%esp
    return MPTComm_test1() + MPTComm_test2() + MPTComm_test_own();
  106d53:	01 d8                	add    %ebx,%eax
}
  106d55:	5b                   	pop    %ebx
  106d56:	c3                   	ret
  106d57:	66 90                	xchg   %ax,%ax
  106d59:	66 90                	xchg   %ax,%ax
  106d5b:	66 90                	xchg   %ax,%ax
  106d5d:	66 90                	xchg   %ax,%ax
  106d5f:	90                   	nop

00106d60 <pdir_init_kern>:
/**
 * Sets the entire page map for process 0 as identity map.
 * Note that part of the task is already completed by pdir_init.
 */
void pdir_init_kern(unsigned int mbi_adr)
{
  106d60:	56                   	push   %esi
    // TODO: define your local variables here.

    pdir_init(mbi_adr);
    
    //TODO
    unsigned int pde_index = 0;
  106d61:	31 f6                	xor    %esi,%esi
{
  106d63:	53                   	push   %ebx
  106d64:	e8 57 96 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  106d69:	81 c3 8b 62 00 00    	add    $0x628b,%ebx
  106d6f:	83 ec 10             	sub    $0x10,%esp
    pdir_init(mbi_adr);
  106d72:	ff 74 24 1c          	push   0x1c(%esp)
  106d76:	e8 95 fc ff ff       	call   106a10 <pdir_init>
  106d7b:	83 c4 10             	add    $0x10,%esp
  106d7e:	66 90                	xchg   %ax,%ax
    for (; pde_index < 1024; pde_index++) {
        set_pdir_entry_identity(0, pde_index);
  106d80:	83 ec 08             	sub    $0x8,%esp
  106d83:	56                   	push   %esi
    for (; pde_index < 1024; pde_index++) {
  106d84:	83 c6 01             	add    $0x1,%esi
        set_pdir_entry_identity(0, pde_index);
  106d87:	6a 00                	push   $0x0
  106d89:	e8 52 f4 ff ff       	call   1061e0 <set_pdir_entry_identity>
    for (; pde_index < 1024; pde_index++) {
  106d8e:	83 c4 10             	add    $0x10,%esp
  106d91:	81 fe 00 04 00 00    	cmp    $0x400,%esi
  106d97:	75 e7                	jne    106d80 <pdir_init_kern+0x20>
    }
}
  106d99:	83 c4 04             	add    $0x4,%esp
  106d9c:	5b                   	pop    %ebx
  106d9d:	5e                   	pop    %esi
  106d9e:	c3                   	ret
  106d9f:	90                   	nop

00106da0 <map_page>:
 * In the case of error, it returns the constant MagicNumber defined in lib/x86.h,
 * otherwise, it returns the physical page index registered in the page directory,
 * e.g., the return value of get_pdir_entry_by_va or alloc_ptbl.
 */
unsigned int map_page(unsigned int proc_index, unsigned int vadr, unsigned int page_index, unsigned int perm)
{   
  106da0:	57                   	push   %edi
  106da1:	56                   	push   %esi
  106da2:	53                   	push   %ebx
  106da3:	8b 74 24 10          	mov    0x10(%esp),%esi
  106da7:	e8 14 96 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  106dac:	81 c3 48 62 00 00    	add    $0x6248,%ebx
  106db2:	8b 7c 24 14          	mov    0x14(%esp),%edi
  // TODO
  unsigned int pde = get_pdir_entry_by_va(proc_index, vadr);
  106db6:	83 ec 08             	sub    $0x8,%esp
  106db9:	57                   	push   %edi
  106dba:	56                   	push   %esi
  106dbb:	e8 80 f8 ff ff       	call   106640 <get_pdir_entry_by_va>
  unsigned int ptbl;
  if ((pde & PTE_P) == 0) {
  106dc0:	83 c4 10             	add    $0x10,%esp
  106dc3:	a8 01                	test   $0x1,%al
  106dc5:	75 11                	jne    106dd8 <map_page+0x38>
    ptbl = alloc_ptbl(proc_index, vadr);
  106dc7:	83 ec 08             	sub    $0x8,%esp
  106dca:	57                   	push   %edi
  106dcb:	56                   	push   %esi
  106dcc:	e8 cf fc ff ff       	call   106aa0 <alloc_ptbl>
    if (ptbl == 0) {
  106dd1:	83 c4 10             	add    $0x10,%esp
  106dd4:	85 c0                	test   %eax,%eax
  106dd6:	74 28                	je     106e00 <map_page+0x60>
      //no physical page available
      return MagicNumber;
    }
  }
  set_ptbl_entry_by_va(proc_index, vadr, page_index, perm);
  106dd8:	ff 74 24 1c          	push   0x1c(%esp)
  106ddc:	ff 74 24 1c          	push   0x1c(%esp)
  106de0:	57                   	push   %edi
  106de1:	56                   	push   %esi
  106de2:	e8 09 f9 ff ff       	call   1066f0 <set_ptbl_entry_by_va>
  pde = get_pdir_entry_by_va(proc_index, vadr);
  106de7:	58                   	pop    %eax
  106de8:	5a                   	pop    %edx
  106de9:	57                   	push   %edi
  106dea:	56                   	push   %esi
  106deb:	e8 50 f8 ff ff       	call   106640 <get_pdir_entry_by_va>
  return pde >> 12;
  106df0:	83 c4 10             	add    $0x10,%esp
}
  106df3:	5b                   	pop    %ebx
  return pde >> 12;
  106df4:	c1 e8 0c             	shr    $0xc,%eax
}
  106df7:	5e                   	pop    %esi
  106df8:	5f                   	pop    %edi
  106df9:	c3                   	ret
  106dfa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  106e00:	5b                   	pop    %ebx
      return MagicNumber;
  106e01:	b8 01 00 10 00       	mov    $0x100001,%eax
}
  106e06:	5e                   	pop    %esi
  106e07:	5f                   	pop    %edi
  106e08:	c3                   	ret
  106e09:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00106e10 <unmap_page>:
 * Nothing should be done if the mapping no longer exists.
 * You do not need to unmap the page table from the page directory.
 * It should return the corresponding page table entry.
 */
unsigned int unmap_page(unsigned int proc_index, unsigned int vadr)
{
  106e10:	57                   	push   %edi
  106e11:	56                   	push   %esi
  106e12:	53                   	push   %ebx
  106e13:	8b 74 24 10          	mov    0x10(%esp),%esi
  106e17:	e8 a4 95 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  106e1c:	81 c3 d8 61 00 00    	add    $0x61d8,%ebx
  106e22:	8b 7c 24 14          	mov    0x14(%esp),%edi
  // TODO
  unsigned int pte = get_ptbl_entry_by_va(proc_index, vadr);
  106e26:	83 ec 08             	sub    $0x8,%esp
  106e29:	57                   	push   %edi
  106e2a:	56                   	push   %esi
  106e2b:	e8 a0 f7 ff ff       	call   1065d0 <get_ptbl_entry_by_va>
  if ((pte & PTE_P) == 0) {
  106e30:	83 c4 10             	add    $0x10,%esp
  106e33:	a8 01                	test   $0x1,%al
  106e35:	74 16                	je     106e4d <unmap_page+0x3d>
    return pte;
  }
  rmv_ptbl_entry_by_va(proc_index, vadr);
  106e37:	83 ec 08             	sub    $0x8,%esp
  106e3a:	57                   	push   %edi
  106e3b:	56                   	push   %esi
  106e3c:	e8 2f f8 ff ff       	call   106670 <rmv_ptbl_entry_by_va>
  pte = get_ptbl_entry_by_va(proc_index, vadr);
  106e41:	58                   	pop    %eax
  106e42:	5a                   	pop    %edx
  106e43:	57                   	push   %edi
  106e44:	56                   	push   %esi
  106e45:	e8 86 f7 ff ff       	call   1065d0 <get_ptbl_entry_by_va>
  return pte;
  106e4a:	83 c4 10             	add    $0x10,%esp
  106e4d:	5b                   	pop    %ebx
  106e4e:	5e                   	pop    %esi
  106e4f:	5f                   	pop    %edi
  106e50:	c3                   	ret
  106e51:	66 90                	xchg   %ax,%ax
  106e53:	66 90                	xchg   %ax,%ax
  106e55:	66 90                	xchg   %ax,%ax
  106e57:	66 90                	xchg   %ax,%ax
  106e59:	66 90                	xchg   %ax,%ax
  106e5b:	66 90                	xchg   %ax,%ax
  106e5d:	66 90                	xchg   %ax,%ax
  106e5f:	90                   	nop

00106e60 <MPTKern_test1>:
#include <pmm/MContainer/export.h>
#include <vmm/MPTOp/export.h>
#include "export.h"

int MPTKern_test1()
{
  106e60:	53                   	push   %ebx
  106e61:	e8 5a 95 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  106e66:	81 c3 8e 61 00 00    	add    $0x618e,%ebx
  106e6c:	83 ec 10             	sub    $0x10,%esp
    unsigned int vaddr = 4096 * 1024 * 300;
    container_split(0, 100);
  106e6f:	6a 64                	push   $0x64
  106e71:	6a 00                	push   $0x0
  106e73:	e8 28 ef ff ff       	call   105da0 <container_split>
    if (get_ptbl_entry_by_va(1, vaddr) != 0) {
  106e78:	58                   	pop    %eax
  106e79:	5a                   	pop    %edx
  106e7a:	68 00 00 00 4b       	push   $0x4b000000
  106e7f:	6a 01                	push   $0x1
  106e81:	e8 4a f7 ff ff       	call   1065d0 <get_ptbl_entry_by_va>
  106e86:	83 c4 10             	add    $0x10,%esp
  106e89:	85 c0                	test   %eax,%eax
  106e8b:	0f 85 cf 00 00 00    	jne    106f60 <MPTKern_test1+0x100>
        dprintf("test 1.1 failed: (%d != 0)\n", get_ptbl_entry_by_va(1, vaddr));
        return 1;
    }
    if (get_pdir_entry_by_va(1, vaddr) != 0) {
  106e91:	83 ec 08             	sub    $0x8,%esp
  106e94:	68 00 00 00 4b       	push   $0x4b000000
  106e99:	6a 01                	push   $0x1
  106e9b:	e8 a0 f7 ff ff       	call   106640 <get_pdir_entry_by_va>
  106ea0:	83 c4 10             	add    $0x10,%esp
  106ea3:	85 c0                	test   %eax,%eax
  106ea5:	0f 85 85 00 00 00    	jne    106f30 <MPTKern_test1+0xd0>
        dprintf("test 1.2 failed: (%d != 0)\n", get_pdir_entry_by_va(1, vaddr));
        return 1;
    }
    map_page(1, vaddr, 100, 7);
  106eab:	6a 07                	push   $0x7
  106ead:	6a 64                	push   $0x64
  106eaf:	68 00 00 00 4b       	push   $0x4b000000
  106eb4:	6a 01                	push   $0x1
  106eb6:	e8 e5 fe ff ff       	call   106da0 <map_page>
    if (get_ptbl_entry_by_va(1, vaddr) == 0) {
  106ebb:	59                   	pop    %ecx
  106ebc:	58                   	pop    %eax
  106ebd:	68 00 00 00 4b       	push   $0x4b000000
  106ec2:	6a 01                	push   $0x1
  106ec4:	e8 07 f7 ff ff       	call   1065d0 <get_ptbl_entry_by_va>
  106ec9:	83 c4 10             	add    $0x10,%esp
  106ecc:	85 c0                	test   %eax,%eax
  106ece:	0f 84 dc 00 00 00    	je     106fb0 <MPTKern_test1+0x150>
        dprintf("test 1.3 failed: (%d == 0)\n", get_ptbl_entry_by_va(1, vaddr));
        return 1;
    }
    if (get_pdir_entry_by_va(1, vaddr) == 0) {
  106ed4:	83 ec 08             	sub    $0x8,%esp
  106ed7:	68 00 00 00 4b       	push   $0x4b000000
  106edc:	6a 01                	push   $0x1
  106ede:	e8 5d f7 ff ff       	call   106640 <get_pdir_entry_by_va>
  106ee3:	83 c4 10             	add    $0x10,%esp
  106ee6:	85 c0                	test   %eax,%eax
  106ee8:	0f 84 9a 00 00 00    	je     106f88 <MPTKern_test1+0x128>
        dprintf("test 1.4 failed: (%d == 0)\n", get_pdir_entry_by_va(1, vaddr));
        return 1;
    }
    unmap_page(1, vaddr);
  106eee:	83 ec 08             	sub    $0x8,%esp
  106ef1:	68 00 00 00 4b       	push   $0x4b000000
  106ef6:	6a 01                	push   $0x1
  106ef8:	e8 13 ff ff ff       	call   106e10 <unmap_page>
    if (get_ptbl_entry_by_va(1, vaddr) != 0) {
  106efd:	58                   	pop    %eax
  106efe:	5a                   	pop    %edx
  106eff:	68 00 00 00 4b       	push   $0x4b000000
  106f04:	6a 01                	push   $0x1
  106f06:	e8 c5 f6 ff ff       	call   1065d0 <get_ptbl_entry_by_va>
  106f0b:	83 c4 10             	add    $0x10,%esp
  106f0e:	85 c0                	test   %eax,%eax
  106f10:	0f 85 ca 00 00 00    	jne    106fe0 <MPTKern_test1+0x180>
        dprintf("test 1.5 failed: (%d != 0)\n", get_ptbl_entry_by_va(1, vaddr));
        return 1;
    }
    dprintf("test 1 passed.\n");
  106f16:	83 ec 0c             	sub    $0xc,%esp
  106f19:	8d 83 58 b8 ff ff    	lea    -0x47a8(%ebx),%eax
  106f1f:	50                   	push   %eax
  106f20:	e8 47 be ff ff       	call   102d6c <dprintf>
    return 0;
  106f25:	83 c4 10             	add    $0x10,%esp
  106f28:	31 c0                	xor    %eax,%eax
}
  106f2a:	83 c4 08             	add    $0x8,%esp
  106f2d:	5b                   	pop    %ebx
  106f2e:	c3                   	ret
  106f2f:	90                   	nop
        dprintf("test 1.2 failed: (%d != 0)\n", get_pdir_entry_by_va(1, vaddr));
  106f30:	83 ec 08             	sub    $0x8,%esp
  106f33:	68 00 00 00 4b       	push   $0x4b000000
  106f38:	6a 01                	push   $0x1
  106f3a:	e8 01 f7 ff ff       	call   106640 <get_pdir_entry_by_va>
  106f3f:	5a                   	pop    %edx
  106f40:	59                   	pop    %ecx
  106f41:	50                   	push   %eax
  106f42:	8d 83 0c ba ff ff    	lea    -0x45f4(%ebx),%eax
  106f48:	50                   	push   %eax
  106f49:	e8 1e be ff ff       	call   102d6c <dprintf>
        return 1;
  106f4e:	83 c4 10             	add    $0x10,%esp
}
  106f51:	83 c4 08             	add    $0x8,%esp
        return 1;
  106f54:	b8 01 00 00 00       	mov    $0x1,%eax
}
  106f59:	5b                   	pop    %ebx
  106f5a:	c3                   	ret
  106f5b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        dprintf("test 1.1 failed: (%d != 0)\n", get_ptbl_entry_by_va(1, vaddr));
  106f60:	83 ec 08             	sub    $0x8,%esp
  106f63:	68 00 00 00 4b       	push   $0x4b000000
  106f68:	6a 01                	push   $0x1
  106f6a:	e8 61 f6 ff ff       	call   1065d0 <get_ptbl_entry_by_va>
  106f6f:	5a                   	pop    %edx
  106f70:	59                   	pop    %ecx
  106f71:	50                   	push   %eax
  106f72:	8d 83 f0 b9 ff ff    	lea    -0x4610(%ebx),%eax
  106f78:	50                   	push   %eax
  106f79:	e8 ee bd ff ff       	call   102d6c <dprintf>
        return 1;
  106f7e:	83 c4 10             	add    $0x10,%esp
  106f81:	eb ce                	jmp    106f51 <MPTKern_test1+0xf1>
  106f83:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        dprintf("test 1.4 failed: (%d == 0)\n", get_pdir_entry_by_va(1, vaddr));
  106f88:	83 ec 08             	sub    $0x8,%esp
  106f8b:	68 00 00 00 4b       	push   $0x4b000000
  106f90:	6a 01                	push   $0x1
  106f92:	e8 a9 f6 ff ff       	call   106640 <get_pdir_entry_by_va>
  106f97:	59                   	pop    %ecx
  106f98:	5a                   	pop    %edx
  106f99:	50                   	push   %eax
  106f9a:	8d 83 44 ba ff ff    	lea    -0x45bc(%ebx),%eax
  106fa0:	50                   	push   %eax
  106fa1:	e8 c6 bd ff ff       	call   102d6c <dprintf>
        return 1;
  106fa6:	83 c4 10             	add    $0x10,%esp
  106fa9:	eb a6                	jmp    106f51 <MPTKern_test1+0xf1>
  106fab:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        dprintf("test 1.3 failed: (%d == 0)\n", get_ptbl_entry_by_va(1, vaddr));
  106fb0:	83 ec 08             	sub    $0x8,%esp
  106fb3:	68 00 00 00 4b       	push   $0x4b000000
  106fb8:	6a 01                	push   $0x1
  106fba:	e8 11 f6 ff ff       	call   1065d0 <get_ptbl_entry_by_va>
  106fbf:	59                   	pop    %ecx
  106fc0:	5a                   	pop    %edx
  106fc1:	50                   	push   %eax
  106fc2:	8d 83 28 ba ff ff    	lea    -0x45d8(%ebx),%eax
  106fc8:	50                   	push   %eax
  106fc9:	e8 9e bd ff ff       	call   102d6c <dprintf>
        return 1;
  106fce:	83 c4 10             	add    $0x10,%esp
  106fd1:	e9 7b ff ff ff       	jmp    106f51 <MPTKern_test1+0xf1>
  106fd6:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  106fdd:	00 
  106fde:	66 90                	xchg   %ax,%ax
        dprintf("test 1.5 failed: (%d != 0)\n", get_ptbl_entry_by_va(1, vaddr));
  106fe0:	83 ec 08             	sub    $0x8,%esp
  106fe3:	68 00 00 00 4b       	push   $0x4b000000
  106fe8:	6a 01                	push   $0x1
  106fea:	e8 e1 f5 ff ff       	call   1065d0 <get_ptbl_entry_by_va>
  106fef:	5a                   	pop    %edx
  106ff0:	59                   	pop    %ecx
  106ff1:	50                   	push   %eax
  106ff2:	8d 83 60 ba ff ff    	lea    -0x45a0(%ebx),%eax
  106ff8:	50                   	push   %eax
  106ff9:	e8 6e bd ff ff       	call   102d6c <dprintf>
        return 1;
  106ffe:	83 c4 10             	add    $0x10,%esp
  107001:	e9 4b ff ff ff       	jmp    106f51 <MPTKern_test1+0xf1>
  107006:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10700d:	00 
  10700e:	66 90                	xchg   %ax,%ax

00107010 <MPTKern_test2>:

int MPTKern_test2()
{
  107010:	57                   	push   %edi
  107011:	56                   	push   %esi
  107012:	be 03 00 00 40       	mov    $0x40000003,%esi
  107017:	53                   	push   %ebx
  107018:	e8 a3 93 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  10701d:	81 c3 d7 5f 00 00    	add    $0x5fd7,%ebx
  107023:	eb 11                	jmp    107036 <MPTKern_test2+0x26>
  107025:	8d 76 00             	lea    0x0(%esi),%esi
    unsigned int i;
    for (i = 256; i < 960; i++) {
  107028:	81 c6 00 00 40 00    	add    $0x400000,%esi
  10702e:	81 fe 03 00 00 f0    	cmp    $0xf0000003,%esi
  107034:	74 3d                	je     107073 <MPTKern_test2+0x63>
        if (get_ptbl_entry_by_va(0, i * 4096 * 1024L) !=
  107036:	83 ec 08             	sub    $0x8,%esp
  107039:	8d 7e fd             	lea    -0x3(%esi),%edi
  10703c:	57                   	push   %edi
  10703d:	6a 00                	push   $0x0
  10703f:	e8 8c f5 ff ff       	call   1065d0 <get_ptbl_entry_by_va>
  107044:	83 c4 10             	add    $0x10,%esp
  107047:	39 f0                	cmp    %esi,%eax
  107049:	74 dd                	je     107028 <MPTKern_test2+0x18>
            i * 4096 * 1024L + 3) {
            dprintf("test 2.1 failed (i = %d): (%d != %d)\n",
  10704b:	83 ec 08             	sub    $0x8,%esp
  10704e:	57                   	push   %edi
  10704f:	6a 00                	push   $0x0
  107051:	e8 7a f5 ff ff       	call   1065d0 <get_ptbl_entry_by_va>
  107056:	83 c4 0c             	add    $0xc,%esp
  107059:	56                   	push   %esi
  10705a:	50                   	push   %eax
  10705b:	8d 83 dc bf ff ff    	lea    -0x4024(%ebx),%eax
  107061:	50                   	push   %eax
  107062:	e8 05 bd ff ff       	call   102d6c <dprintf>
                    get_ptbl_entry_by_va(0, i * 4096 * 1024L),
                    i * 4096 * 1024L + 3);
            return 1;
  107067:	83 c4 10             	add    $0x10,%esp
  10706a:	b8 01 00 00 00       	mov    $0x1,%eax
        }
    }
    dprintf("test 2 passed.\n");
    return 0;
}
  10706f:	5b                   	pop    %ebx
  107070:	5e                   	pop    %esi
  107071:	5f                   	pop    %edi
  107072:	c3                   	ret
    dprintf("test 2 passed.\n");
  107073:	83 ec 0c             	sub    $0xc,%esp
  107076:	8d 83 68 b8 ff ff    	lea    -0x4798(%ebx),%eax
  10707c:	50                   	push   %eax
  10707d:	e8 ea bc ff ff       	call   102d6c <dprintf>
    return 0;
  107082:	83 c4 10             	add    $0x10,%esp
  107085:	31 c0                	xor    %eax,%eax
}
  107087:	5b                   	pop    %ebx
  107088:	5e                   	pop    %esi
  107089:	5f                   	pop    %edi
  10708a:	c3                   	ret
  10708b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

00107090 <MPTKern_test_own>:
int MPTKern_test_own()
{
    // TODO (optional)
    // dprintf("own test passed.\n");
    return 0;
}
  107090:	31 c0                	xor    %eax,%eax
  107092:	c3                   	ret
  107093:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10709a:	00 
  10709b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

001070a0 <test_MPTKern>:

int test_MPTKern()
{
  1070a0:	53                   	push   %ebx
  1070a1:	83 ec 08             	sub    $0x8,%esp
    return MPTKern_test1() + MPTKern_test2() + MPTKern_test_own();
  1070a4:	e8 b7 fd ff ff       	call   106e60 <MPTKern_test1>
  1070a9:	89 c3                	mov    %eax,%ebx
  1070ab:	e8 60 ff ff ff       	call   107010 <MPTKern_test2>
}
  1070b0:	83 c4 08             	add    $0x8,%esp
    return MPTKern_test1() + MPTKern_test2() + MPTKern_test_own();
  1070b3:	01 d8                	add    %ebx,%eax
}
  1070b5:	5b                   	pop    %ebx
  1070b6:	c3                   	ret
  1070b7:	66 90                	xchg   %ax,%ax
  1070b9:	66 90                	xchg   %ax,%ax
  1070bb:	66 90                	xchg   %ax,%ax
  1070bd:	66 90                	xchg   %ax,%ax
  1070bf:	90                   	nop

001070c0 <paging_init>:
/**
 * Initializes the page structures, moves to the kernel page structure (0),
 * and turns on the paging.
 */
void paging_init(unsigned int mbi_addr)
{
  1070c0:	53                   	push   %ebx
  1070c1:	e8 fa 92 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  1070c6:	81 c3 2e 5f 00 00    	add    $0x5f2e,%ebx
  1070cc:	83 ec 14             	sub    $0x14,%esp
    pdir_init_kern(mbi_addr);
  1070cf:	ff 74 24 1c          	push   0x1c(%esp)
  1070d3:	e8 88 fc ff ff       	call   106d60 <pdir_init_kern>
    set_pdir_base(0);
  1070d8:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  1070df:	e8 7c f0 ff ff       	call   106160 <set_pdir_base>
    enable_paging();
  1070e4:	e8 e9 a0 ff ff       	call   1011d2 <enable_paging>
}
  1070e9:	83 c4 18             	add    $0x18,%esp
  1070ec:	5b                   	pop    %ebx
  1070ed:	c3                   	ret
  1070ee:	66 90                	xchg   %ax,%ax

001070f0 <alloc_page>:
 * It should return the physical page index registered in the page directory, i.e., the
 * return value from map_page.
 * In the case of error, it should return the MagicNumber.
 */
unsigned int alloc_page (unsigned int proc_index, unsigned int vaddr, unsigned int perm)
{
  1070f0:	56                   	push   %esi
  1070f1:	53                   	push   %ebx
  1070f2:	e8 c9 92 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  1070f7:	81 c3 fd 5e 00 00    	add    $0x5efd,%ebx
  1070fd:	83 ec 10             	sub    $0x10,%esp
  107100:	8b 74 24 1c          	mov    0x1c(%esp),%esi
	// TODO
	unsigned int page_index;
	unsigned int ptbl;
        page_index = container_alloc(proc_index);
  107104:	56                   	push   %esi
  107105:	e8 f6 ec ff ff       	call   105e00 <container_alloc>
	if(page_index == 0) return MagicNumber;
  10710a:	83 c4 10             	add    $0x10,%esp
  10710d:	ba 01 00 10 00       	mov    $0x100001,%edx
  107112:	85 c0                	test   %eax,%eax
  107114:	74 14                	je     10712a <alloc_page+0x3a>
        ptbl = map_page(proc_index, vaddr, page_index, perm);
  107116:	ff 74 24 18          	push   0x18(%esp)
  10711a:	50                   	push   %eax
  10711b:	ff 74 24 1c          	push   0x1c(%esp)
  10711f:	56                   	push   %esi
  107120:	e8 7b fc ff ff       	call   106da0 <map_page>
        return ptbl;
  107125:	83 c4 10             	add    $0x10,%esp
        ptbl = map_page(proc_index, vaddr, page_index, perm);
  107128:	89 c2                	mov    %eax,%edx
}
  10712a:	83 c4 04             	add    $0x4,%esp
  10712d:	89 d0                	mov    %edx,%eax
  10712f:	5b                   	pop    %ebx
  107130:	5e                   	pop    %esi
  107131:	c3                   	ret
  107132:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  107139:	00 
  10713a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00107140 <alloc_mem_quota>:

/**
 * Designate some memory quota for the next child process.
 */
unsigned int alloc_mem_quota (unsigned int id, unsigned int quota)
{
  107140:	53                   	push   %ebx
  107141:	e8 7a 92 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  107146:	81 c3 ae 5e 00 00    	add    $0x5eae,%ebx
  10714c:	83 ec 10             	sub    $0x10,%esp
	unsigned int child;
	child = container_split (id, quota);
  10714f:	ff 74 24 1c          	push   0x1c(%esp)
  107153:	ff 74 24 1c          	push   0x1c(%esp)
  107157:	e8 44 ec ff ff       	call   105da0 <container_split>
	return child;
}
  10715c:	83 c4 18             	add    $0x18,%esp
  10715f:	5b                   	pop    %ebx
  107160:	c3                   	ret
  107161:	66 90                	xchg   %ax,%ax
  107163:	66 90                	xchg   %ax,%ax
  107165:	66 90                	xchg   %ax,%ax
  107167:	66 90                	xchg   %ax,%ax
  107169:	66 90                	xchg   %ax,%ax
  10716b:	66 90                	xchg   %ax,%ax
  10716d:	66 90                	xchg   %ax,%ax
  10716f:	90                   	nop

00107170 <MPTNew_test1>:
#include <vmm/MPTOp/export.h>
#include <vmm/MPTNew/export.h>
#include "export.h"

int MPTNew_test1()
{
  107170:	53                   	push   %ebx
  107171:	e8 4a 92 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  107176:	81 c3 7e 5e 00 00    	add    $0x5e7e,%ebx
  10717c:	83 ec 10             	sub    $0x10,%esp
    unsigned int vaddr = 4096 * 1024 * 400;
    container_split(0, 100);
  10717f:	6a 64                	push   $0x64
  107181:	6a 00                	push   $0x0
  107183:	e8 18 ec ff ff       	call   105da0 <container_split>
    if (get_ptbl_entry_by_va(1, vaddr) != 0) {
  107188:	59                   	pop    %ecx
  107189:	58                   	pop    %eax
  10718a:	68 00 00 00 64       	push   $0x64000000
  10718f:	6a 01                	push   $0x1
  107191:	e8 3a f4 ff ff       	call   1065d0 <get_ptbl_entry_by_va>
  107196:	83 c4 10             	add    $0x10,%esp
  107199:	85 c0                	test   %eax,%eax
  10719b:	0f 85 9f 00 00 00    	jne    107240 <MPTNew_test1+0xd0>
        dprintf("test 1.1 failed: (%d != 0)\n", get_ptbl_entry_by_va(1, vaddr));
        return 1;
    }
    if (get_pdir_entry_by_va(1, vaddr) != 0) {
  1071a1:	83 ec 08             	sub    $0x8,%esp
  1071a4:	68 00 00 00 64       	push   $0x64000000
  1071a9:	6a 01                	push   $0x1
  1071ab:	e8 90 f4 ff ff       	call   106640 <get_pdir_entry_by_va>
  1071b0:	83 c4 10             	add    $0x10,%esp
  1071b3:	85 c0                	test   %eax,%eax
  1071b5:	75 59                	jne    107210 <MPTNew_test1+0xa0>
        dprintf("test 1.2 failed: (%d != 0)\n", get_pdir_entry_by_va(1, vaddr));
        return 1;
    }
    alloc_page(1, vaddr, 7);
  1071b7:	83 ec 04             	sub    $0x4,%esp
  1071ba:	6a 07                	push   $0x7
  1071bc:	68 00 00 00 64       	push   $0x64000000
  1071c1:	6a 01                	push   $0x1
  1071c3:	e8 28 ff ff ff       	call   1070f0 <alloc_page>
    if (get_ptbl_entry_by_va(1, vaddr) == 0) {
  1071c8:	58                   	pop    %eax
  1071c9:	5a                   	pop    %edx
  1071ca:	68 00 00 00 64       	push   $0x64000000
  1071cf:	6a 01                	push   $0x1
  1071d1:	e8 fa f3 ff ff       	call   1065d0 <get_ptbl_entry_by_va>
  1071d6:	83 c4 10             	add    $0x10,%esp
  1071d9:	85 c0                	test   %eax,%eax
  1071db:	0f 84 af 00 00 00    	je     107290 <MPTNew_test1+0x120>
        dprintf("test 1.3 failed: (%d == 0)\n", get_ptbl_entry_by_va(1, vaddr));
        return 1;
    }
    if (get_pdir_entry_by_va(1, vaddr) == 0) {
  1071e1:	83 ec 08             	sub    $0x8,%esp
  1071e4:	68 00 00 00 64       	push   $0x64000000
  1071e9:	6a 01                	push   $0x1
  1071eb:	e8 50 f4 ff ff       	call   106640 <get_pdir_entry_by_va>
  1071f0:	83 c4 10             	add    $0x10,%esp
  1071f3:	85 c0                	test   %eax,%eax
  1071f5:	74 71                	je     107268 <MPTNew_test1+0xf8>
        dprintf("test 1.4 failed: (%d == 0)\n", get_pdir_entry_by_va(1, vaddr));
        return 1;
    }
    dprintf("test 1 passed.\n");
  1071f7:	83 ec 0c             	sub    $0xc,%esp
  1071fa:	8d 83 58 b8 ff ff    	lea    -0x47a8(%ebx),%eax
  107200:	50                   	push   %eax
  107201:	e8 66 bb ff ff       	call   102d6c <dprintf>
    return 0;
  107206:	83 c4 10             	add    $0x10,%esp
  107209:	31 c0                	xor    %eax,%eax
}
  10720b:	83 c4 08             	add    $0x8,%esp
  10720e:	5b                   	pop    %ebx
  10720f:	c3                   	ret
        dprintf("test 1.2 failed: (%d != 0)\n", get_pdir_entry_by_va(1, vaddr));
  107210:	83 ec 08             	sub    $0x8,%esp
  107213:	68 00 00 00 64       	push   $0x64000000
  107218:	6a 01                	push   $0x1
  10721a:	e8 21 f4 ff ff       	call   106640 <get_pdir_entry_by_va>
  10721f:	59                   	pop    %ecx
  107220:	5a                   	pop    %edx
  107221:	50                   	push   %eax
  107222:	8d 83 0c ba ff ff    	lea    -0x45f4(%ebx),%eax
  107228:	50                   	push   %eax
  107229:	e8 3e bb ff ff       	call   102d6c <dprintf>
        return 1;
  10722e:	83 c4 10             	add    $0x10,%esp
}
  107231:	83 c4 08             	add    $0x8,%esp
        return 1;
  107234:	b8 01 00 00 00       	mov    $0x1,%eax
}
  107239:	5b                   	pop    %ebx
  10723a:	c3                   	ret
  10723b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        dprintf("test 1.1 failed: (%d != 0)\n", get_ptbl_entry_by_va(1, vaddr));
  107240:	83 ec 08             	sub    $0x8,%esp
  107243:	68 00 00 00 64       	push   $0x64000000
  107248:	6a 01                	push   $0x1
  10724a:	e8 81 f3 ff ff       	call   1065d0 <get_ptbl_entry_by_va>
  10724f:	59                   	pop    %ecx
  107250:	5a                   	pop    %edx
  107251:	50                   	push   %eax
  107252:	8d 83 f0 b9 ff ff    	lea    -0x4610(%ebx),%eax
  107258:	50                   	push   %eax
  107259:	e8 0e bb ff ff       	call   102d6c <dprintf>
        return 1;
  10725e:	83 c4 10             	add    $0x10,%esp
  107261:	eb ce                	jmp    107231 <MPTNew_test1+0xc1>
  107263:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        dprintf("test 1.4 failed: (%d == 0)\n", get_pdir_entry_by_va(1, vaddr));
  107268:	83 ec 08             	sub    $0x8,%esp
  10726b:	68 00 00 00 64       	push   $0x64000000
  107270:	6a 01                	push   $0x1
  107272:	e8 c9 f3 ff ff       	call   106640 <get_pdir_entry_by_va>
  107277:	5a                   	pop    %edx
  107278:	59                   	pop    %ecx
  107279:	50                   	push   %eax
  10727a:	8d 83 44 ba ff ff    	lea    -0x45bc(%ebx),%eax
  107280:	50                   	push   %eax
  107281:	e8 e6 ba ff ff       	call   102d6c <dprintf>
        return 1;
  107286:	83 c4 10             	add    $0x10,%esp
  107289:	eb a6                	jmp    107231 <MPTNew_test1+0xc1>
  10728b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        dprintf("test 1.3 failed: (%d == 0)\n", get_ptbl_entry_by_va(1, vaddr));
  107290:	83 ec 08             	sub    $0x8,%esp
  107293:	68 00 00 00 64       	push   $0x64000000
  107298:	6a 01                	push   $0x1
  10729a:	e8 31 f3 ff ff       	call   1065d0 <get_ptbl_entry_by_va>
  10729f:	5a                   	pop    %edx
  1072a0:	59                   	pop    %ecx
  1072a1:	50                   	push   %eax
  1072a2:	8d 83 28 ba ff ff    	lea    -0x45d8(%ebx),%eax
  1072a8:	50                   	push   %eax
  1072a9:	e8 be ba ff ff       	call   102d6c <dprintf>
        return 1;
  1072ae:	83 c4 10             	add    $0x10,%esp
  1072b1:	e9 7b ff ff ff       	jmp    107231 <MPTNew_test1+0xc1>
  1072b6:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  1072bd:	00 
  1072be:	66 90                	xchg   %ax,%ax

001072c0 <MPTNew_test_own>:
int MPTNew_test_own()
{
    // TODO (optional)
    // dprintf("own test passed.\n");
    return 0;
}
  1072c0:	31 c0                	xor    %eax,%eax
  1072c2:	c3                   	ret
  1072c3:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  1072ca:	00 
  1072cb:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

001072d0 <test_MPTNew>:

int test_MPTNew()
{
    return MPTNew_test1() + MPTNew_test_own();
  1072d0:	e9 9b fe ff ff       	jmp    107170 <MPTNew_test1>
  1072d5:	66 90                	xchg   %ax,%ax
  1072d7:	66 90                	xchg   %ax,%ax
  1072d9:	66 90                	xchg   %ax,%ax
  1072db:	66 90                	xchg   %ax,%ax
  1072dd:	66 90                	xchg   %ax,%ax
  1072df:	90                   	nop

001072e0 <__udivdi3>:
  1072e0:	f3 0f 1e fb          	endbr32
  1072e4:	55                   	push   %ebp
  1072e5:	89 e5                	mov    %esp,%ebp
  1072e7:	57                   	push   %edi
  1072e8:	56                   	push   %esi
  1072e9:	53                   	push   %ebx
  1072ea:	83 ec 1c             	sub    $0x1c,%esp
  1072ed:	8b 7d 08             	mov    0x8(%ebp),%edi
  1072f0:	8b 45 14             	mov    0x14(%ebp),%eax
  1072f3:	8b 75 0c             	mov    0xc(%ebp),%esi
  1072f6:	8b 5d 10             	mov    0x10(%ebp),%ebx
  1072f9:	89 7d e4             	mov    %edi,-0x1c(%ebp)
  1072fc:	85 c0                	test   %eax,%eax
  1072fe:	75 20                	jne    107320 <__udivdi3+0x40>
  107300:	39 de                	cmp    %ebx,%esi
  107302:	73 54                	jae    107358 <__udivdi3+0x78>
  107304:	89 f8                	mov    %edi,%eax
  107306:	31 ff                	xor    %edi,%edi
  107308:	89 f2                	mov    %esi,%edx
  10730a:	f7 f3                	div    %ebx
  10730c:	89 fa                	mov    %edi,%edx
  10730e:	83 c4 1c             	add    $0x1c,%esp
  107311:	5b                   	pop    %ebx
  107312:	5e                   	pop    %esi
  107313:	5f                   	pop    %edi
  107314:	5d                   	pop    %ebp
  107315:	c3                   	ret
  107316:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10731d:	00 
  10731e:	66 90                	xchg   %ax,%ax
  107320:	39 c6                	cmp    %eax,%esi
  107322:	73 14                	jae    107338 <__udivdi3+0x58>
  107324:	31 ff                	xor    %edi,%edi
  107326:	31 c0                	xor    %eax,%eax
  107328:	89 fa                	mov    %edi,%edx
  10732a:	83 c4 1c             	add    $0x1c,%esp
  10732d:	5b                   	pop    %ebx
  10732e:	5e                   	pop    %esi
  10732f:	5f                   	pop    %edi
  107330:	5d                   	pop    %ebp
  107331:	c3                   	ret
  107332:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  107338:	0f bd f8             	bsr    %eax,%edi
  10733b:	83 f7 1f             	xor    $0x1f,%edi
  10733e:	75 48                	jne    107388 <__udivdi3+0xa8>
  107340:	39 f0                	cmp    %esi,%eax
  107342:	72 07                	jb     10734b <__udivdi3+0x6b>
  107344:	31 c0                	xor    %eax,%eax
  107346:	39 5d e4             	cmp    %ebx,-0x1c(%ebp)
  107349:	72 dd                	jb     107328 <__udivdi3+0x48>
  10734b:	b8 01 00 00 00       	mov    $0x1,%eax
  107350:	eb d6                	jmp    107328 <__udivdi3+0x48>
  107352:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  107358:	89 d9                	mov    %ebx,%ecx
  10735a:	85 db                	test   %ebx,%ebx
  10735c:	75 0b                	jne    107369 <__udivdi3+0x89>
  10735e:	b8 01 00 00 00       	mov    $0x1,%eax
  107363:	31 d2                	xor    %edx,%edx
  107365:	f7 f3                	div    %ebx
  107367:	89 c1                	mov    %eax,%ecx
  107369:	31 d2                	xor    %edx,%edx
  10736b:	89 f0                	mov    %esi,%eax
  10736d:	f7 f1                	div    %ecx
  10736f:	89 c6                	mov    %eax,%esi
  107371:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  107374:	89 f7                	mov    %esi,%edi
  107376:	f7 f1                	div    %ecx
  107378:	89 fa                	mov    %edi,%edx
  10737a:	83 c4 1c             	add    $0x1c,%esp
  10737d:	5b                   	pop    %ebx
  10737e:	5e                   	pop    %esi
  10737f:	5f                   	pop    %edi
  107380:	5d                   	pop    %ebp
  107381:	c3                   	ret
  107382:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  107388:	89 f9                	mov    %edi,%ecx
  10738a:	ba 20 00 00 00       	mov    $0x20,%edx
  10738f:	29 fa                	sub    %edi,%edx
  107391:	d3 e0                	shl    %cl,%eax
  107393:	89 45 e0             	mov    %eax,-0x20(%ebp)
  107396:	89 d1                	mov    %edx,%ecx
  107398:	89 d8                	mov    %ebx,%eax
  10739a:	d3 e8                	shr    %cl,%eax
  10739c:	89 c1                	mov    %eax,%ecx
  10739e:	8b 45 e0             	mov    -0x20(%ebp),%eax
  1073a1:	09 c1                	or     %eax,%ecx
  1073a3:	89 f0                	mov    %esi,%eax
  1073a5:	89 4d e0             	mov    %ecx,-0x20(%ebp)
  1073a8:	89 f9                	mov    %edi,%ecx
  1073aa:	d3 e3                	shl    %cl,%ebx
  1073ac:	89 d1                	mov    %edx,%ecx
  1073ae:	d3 e8                	shr    %cl,%eax
  1073b0:	89 5d dc             	mov    %ebx,-0x24(%ebp)
  1073b3:	89 f9                	mov    %edi,%ecx
  1073b5:	8b 5d e4             	mov    -0x1c(%ebp),%ebx
  1073b8:	d3 e6                	shl    %cl,%esi
  1073ba:	89 d1                	mov    %edx,%ecx
  1073bc:	d3 eb                	shr    %cl,%ebx
  1073be:	09 f3                	or     %esi,%ebx
  1073c0:	89 c6                	mov    %eax,%esi
  1073c2:	89 f2                	mov    %esi,%edx
  1073c4:	89 d8                	mov    %ebx,%eax
  1073c6:	f7 75 e0             	divl   -0x20(%ebp)
  1073c9:	89 d6                	mov    %edx,%esi
  1073cb:	89 c3                	mov    %eax,%ebx
  1073cd:	f7 65 dc             	mull   -0x24(%ebp)
  1073d0:	89 55 e0             	mov    %edx,-0x20(%ebp)
  1073d3:	39 d6                	cmp    %edx,%esi
  1073d5:	72 21                	jb     1073f8 <__udivdi3+0x118>
  1073d7:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  1073da:	89 f9                	mov    %edi,%ecx
  1073dc:	d3 e2                	shl    %cl,%edx
  1073de:	39 c2                	cmp    %eax,%edx
  1073e0:	73 07                	jae    1073e9 <__udivdi3+0x109>
  1073e2:	8b 55 e0             	mov    -0x20(%ebp),%edx
  1073e5:	39 d6                	cmp    %edx,%esi
  1073e7:	74 0f                	je     1073f8 <__udivdi3+0x118>
  1073e9:	89 d8                	mov    %ebx,%eax
  1073eb:	31 ff                	xor    %edi,%edi
  1073ed:	e9 36 ff ff ff       	jmp    107328 <__udivdi3+0x48>
  1073f2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  1073f8:	8d 43 ff             	lea    -0x1(%ebx),%eax
  1073fb:	31 ff                	xor    %edi,%edi
  1073fd:	e9 26 ff ff ff       	jmp    107328 <__udivdi3+0x48>
  107402:	66 90                	xchg   %ax,%ax
  107404:	66 90                	xchg   %ax,%ax
  107406:	66 90                	xchg   %ax,%ax
  107408:	66 90                	xchg   %ax,%ax
  10740a:	66 90                	xchg   %ax,%ax
  10740c:	66 90                	xchg   %ax,%ax
  10740e:	66 90                	xchg   %ax,%ax

00107410 <__umoddi3>:
  107410:	f3 0f 1e fb          	endbr32
  107414:	55                   	push   %ebp
  107415:	89 e5                	mov    %esp,%ebp
  107417:	57                   	push   %edi
  107418:	56                   	push   %esi
  107419:	53                   	push   %ebx
  10741a:	83 ec 2c             	sub    $0x2c,%esp
  10741d:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  107420:	8b 45 14             	mov    0x14(%ebp),%eax
  107423:	8b 75 08             	mov    0x8(%ebp),%esi
  107426:	8b 7d 10             	mov    0x10(%ebp),%edi
  107429:	89 da                	mov    %ebx,%edx
  10742b:	85 c0                	test   %eax,%eax
  10742d:	75 19                	jne    107448 <__umoddi3+0x38>
  10742f:	39 fb                	cmp    %edi,%ebx
  107431:	73 5d                	jae    107490 <__umoddi3+0x80>
  107433:	89 f0                	mov    %esi,%eax
  107435:	f7 f7                	div    %edi
  107437:	89 d0                	mov    %edx,%eax
  107439:	31 d2                	xor    %edx,%edx
  10743b:	83 c4 2c             	add    $0x2c,%esp
  10743e:	5b                   	pop    %ebx
  10743f:	5e                   	pop    %esi
  107440:	5f                   	pop    %edi
  107441:	5d                   	pop    %ebp
  107442:	c3                   	ret
  107443:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
  107448:	89 75 e0             	mov    %esi,-0x20(%ebp)
  10744b:	39 c3                	cmp    %eax,%ebx
  10744d:	73 11                	jae    107460 <__umoddi3+0x50>
  10744f:	89 f0                	mov    %esi,%eax
  107451:	83 c4 2c             	add    $0x2c,%esp
  107454:	5b                   	pop    %ebx
  107455:	5e                   	pop    %esi
  107456:	5f                   	pop    %edi
  107457:	5d                   	pop    %ebp
  107458:	c3                   	ret
  107459:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  107460:	0f bd c8             	bsr    %eax,%ecx
  107463:	83 f1 1f             	xor    $0x1f,%ecx
  107466:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
  107469:	75 45                	jne    1074b0 <__umoddi3+0xa0>
  10746b:	39 d8                	cmp    %ebx,%eax
  10746d:	0f 82 d5 00 00 00    	jb     107548 <__umoddi3+0x138>
  107473:	39 fe                	cmp    %edi,%esi
  107475:	0f 83 cd 00 00 00    	jae    107548 <__umoddi3+0x138>
  10747b:	8b 45 e0             	mov    -0x20(%ebp),%eax
  10747e:	83 c4 2c             	add    $0x2c,%esp
  107481:	5b                   	pop    %ebx
  107482:	5e                   	pop    %esi
  107483:	5f                   	pop    %edi
  107484:	5d                   	pop    %ebp
  107485:	c3                   	ret
  107486:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10748d:	00 
  10748e:	66 90                	xchg   %ax,%ax
  107490:	89 f9                	mov    %edi,%ecx
  107492:	85 ff                	test   %edi,%edi
  107494:	75 0b                	jne    1074a1 <__umoddi3+0x91>
  107496:	b8 01 00 00 00       	mov    $0x1,%eax
  10749b:	31 d2                	xor    %edx,%edx
  10749d:	f7 f7                	div    %edi
  10749f:	89 c1                	mov    %eax,%ecx
  1074a1:	89 d8                	mov    %ebx,%eax
  1074a3:	31 d2                	xor    %edx,%edx
  1074a5:	f7 f1                	div    %ecx
  1074a7:	89 f0                	mov    %esi,%eax
  1074a9:	f7 f1                	div    %ecx
  1074ab:	eb 8a                	jmp    107437 <__umoddi3+0x27>
  1074ad:	8d 76 00             	lea    0x0(%esi),%esi
  1074b0:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
  1074b3:	ba 20 00 00 00       	mov    $0x20,%edx
  1074b8:	29 ca                	sub    %ecx,%edx
  1074ba:	d3 e0                	shl    %cl,%eax
  1074bc:	89 45 dc             	mov    %eax,-0x24(%ebp)
  1074bf:	89 d1                	mov    %edx,%ecx
  1074c1:	89 f8                	mov    %edi,%eax
  1074c3:	d3 e8                	shr    %cl,%eax
  1074c5:	89 55 e0             	mov    %edx,-0x20(%ebp)
  1074c8:	0f b6 4d e4          	movzbl -0x1c(%ebp),%ecx
  1074cc:	89 c2                	mov    %eax,%edx
  1074ce:	8b 45 dc             	mov    -0x24(%ebp),%eax
  1074d1:	d3 e7                	shl    %cl,%edi
  1074d3:	09 c2                	or     %eax,%edx
  1074d5:	8b 45 e0             	mov    -0x20(%ebp),%eax
  1074d8:	89 7d d8             	mov    %edi,-0x28(%ebp)
  1074db:	89 f7                	mov    %esi,%edi
  1074dd:	89 55 dc             	mov    %edx,-0x24(%ebp)
  1074e0:	89 da                	mov    %ebx,%edx
  1074e2:	89 c1                	mov    %eax,%ecx
  1074e4:	d3 ea                	shr    %cl,%edx
  1074e6:	0f b6 4d e4          	movzbl -0x1c(%ebp),%ecx
  1074ea:	d3 e3                	shl    %cl,%ebx
  1074ec:	89 c1                	mov    %eax,%ecx
  1074ee:	d3 ef                	shr    %cl,%edi
  1074f0:	0f b6 4d e4          	movzbl -0x1c(%ebp),%ecx
  1074f4:	89 f8                	mov    %edi,%eax
  1074f6:	d3 e6                	shl    %cl,%esi
  1074f8:	09 d8                	or     %ebx,%eax
  1074fa:	f7 75 dc             	divl   -0x24(%ebp)
  1074fd:	89 d3                	mov    %edx,%ebx
  1074ff:	89 75 d4             	mov    %esi,-0x2c(%ebp)
  107502:	89 f7                	mov    %esi,%edi
  107504:	f7 65 d8             	mull   -0x28(%ebp)
  107507:	89 c6                	mov    %eax,%esi
  107509:	89 d1                	mov    %edx,%ecx
  10750b:	39 d3                	cmp    %edx,%ebx
  10750d:	72 06                	jb     107515 <__umoddi3+0x105>
  10750f:	75 0e                	jne    10751f <__umoddi3+0x10f>
  107511:	39 c7                	cmp    %eax,%edi
  107513:	73 0a                	jae    10751f <__umoddi3+0x10f>
  107515:	2b 45 d8             	sub    -0x28(%ebp),%eax
  107518:	1b 55 dc             	sbb    -0x24(%ebp),%edx
  10751b:	89 d1                	mov    %edx,%ecx
  10751d:	89 c6                	mov    %eax,%esi
  10751f:	8b 45 d4             	mov    -0x2c(%ebp),%eax
  107522:	8b 7d e4             	mov    -0x1c(%ebp),%edi
  107525:	29 f0                	sub    %esi,%eax
  107527:	19 cb                	sbb    %ecx,%ebx
  107529:	0f b6 4d e0          	movzbl -0x20(%ebp),%ecx
  10752d:	89 da                	mov    %ebx,%edx
  10752f:	d3 e2                	shl    %cl,%edx
  107531:	89 f9                	mov    %edi,%ecx
  107533:	d3 e8                	shr    %cl,%eax
  107535:	d3 eb                	shr    %cl,%ebx
  107537:	09 d0                	or     %edx,%eax
  107539:	89 da                	mov    %ebx,%edx
  10753b:	83 c4 2c             	add    $0x2c,%esp
  10753e:	5b                   	pop    %ebx
  10753f:	5e                   	pop    %esi
  107540:	5f                   	pop    %edi
  107541:	5d                   	pop    %ebp
  107542:	c3                   	ret
  107543:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
  107548:	89 da                	mov    %ebx,%edx
  10754a:	29 fe                	sub    %edi,%esi
  10754c:	19 c2                	sbb    %eax,%edx
  10754e:	89 75 e0             	mov    %esi,-0x20(%ebp)
  107551:	e9 25 ff ff ff       	jmp    10747b <__umoddi3+0x6b>
