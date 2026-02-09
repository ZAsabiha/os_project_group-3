
obj/kern/kernel:     file format elf32-i386


Disassembly of section .text:

00100000 <main>:
int test_MATIntro() {
    return MATIntro_test1() + MATIntro_test2() + MATIntro_test3() + MATIntro_test_buddy();
}

// Main function to run tests.
int main() {
  100000:	8d 4c 24 04          	lea    0x4(%esp),%ecx
  100004:	83 e4 f0             	and    $0xfffffff0,%esp
  100007:	ff 71 fc             	push   -0x4(%ecx)
  10000a:	55                   	push   %ebp
  10000b:	89 e5                	mov    %esp,%ebp
  10000d:	53                   	push   %ebx
  10000e:	e8 02 04 00 00       	call   100415 <__x86.get_pc_thunk.bx>
  100013:	81 c3 e1 cf 00 00    	add    $0xcfe1,%ebx
  100019:	51                   	push   %ecx
    int result = test_MATIntro();
  10001a:	e8 41 54 00 00       	call   105460 <test_MATIntro>
    if (result == 0) {
  10001f:	85 c0                	test   %eax,%eax
  100021:	75 1e                	jne    100041 <main+0x41>
        dprintf("All tests passed.\n");
  100023:	83 ec 0c             	sub    $0xc,%esp
  100026:	8d 83 fd b7 ff ff    	lea    -0x4803(%ebx),%eax
  10002c:	50                   	push   %eax
  10002d:	e8 8a 2d 00 00       	call   102dbc <dprintf>
  100032:	83 c4 10             	add    $0x10,%esp
    } else {
        dprintf("Some tests failed.\n");
    }
    return 0;
}
  100035:	8d 65 f8             	lea    -0x8(%ebp),%esp
  100038:	31 c0                	xor    %eax,%eax
  10003a:	59                   	pop    %ecx
  10003b:	5b                   	pop    %ebx
  10003c:	5d                   	pop    %ebp
  10003d:	8d 61 fc             	lea    -0x4(%ecx),%esp
  100040:	c3                   	ret
        dprintf("Some tests failed.\n");
  100041:	83 ec 0c             	sub    $0xc,%esp
  100044:	8d 83 31 b9 ff ff    	lea    -0x46cf(%ebx),%eax
  10004a:	50                   	push   %eax
  10004b:	e8 6c 2d 00 00       	call   102dbc <dprintf>
  100050:	83 c4 10             	add    $0x10,%esp
  100053:	eb e0                	jmp    100035 <main+0x35>

00100055 <video_init>:
  100055:	55                   	push   %ebp
  100056:	89 e5                	mov    %esp,%ebp
  100058:	53                   	push   %ebx
  100059:	83 ec 14             	sub    $0x14,%esp
  10005c:	e8 b4 03 00 00       	call   100415 <__x86.get_pc_thunk.bx>
  100061:	81 c3 93 cf 00 00    	add    $0xcf93,%ebx
  100067:	c7 45 f4 00 80 0b 00 	movl   $0xb8000,-0xc(%ebp)
  10006e:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100071:	0f b7 00             	movzwl (%eax),%eax
  100074:	66 89 45 f2          	mov    %ax,-0xe(%ebp)
  100078:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10007b:	66 c7 00 5a a5       	movw   $0xa55a,(%eax)
  100080:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100083:	0f b7 00             	movzwl (%eax),%eax
  100086:	66 3d 5a a5          	cmp    $0xa55a,%ax
  10008a:	74 2c                	je     1000b8 <video_init+0x63>
  10008c:	c7 45 f4 00 00 0b 00 	movl   $0xb0000,-0xc(%ebp)
  100093:	c7 83 0c 60 00 00 b4 	movl   $0x3b4,0x600c(%ebx)
  10009a:	03 00 00 
  10009d:	8b 83 0c 60 00 00    	mov    0x600c(%ebx),%eax
  1000a3:	83 ec 08             	sub    $0x8,%esp
  1000a6:	50                   	push   %eax
  1000a7:	8d 83 0c b0 ff ff    	lea    -0x4ff4(%ebx),%eax
  1000ad:	50                   	push   %eax
  1000ae:	e8 09 2d 00 00       	call   102dbc <dprintf>
  1000b3:	83 c4 10             	add    $0x10,%esp
  1000b6:	eb 2d                	jmp    1000e5 <video_init+0x90>
  1000b8:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1000bb:	0f b7 55 f2          	movzwl -0xe(%ebp),%edx
  1000bf:	66 89 10             	mov    %dx,(%eax)
  1000c2:	c7 83 0c 60 00 00 d4 	movl   $0x3d4,0x600c(%ebx)
  1000c9:	03 00 00 
  1000cc:	8b 83 0c 60 00 00    	mov    0x600c(%ebx),%eax
  1000d2:	83 ec 08             	sub    $0x8,%esp
  1000d5:	50                   	push   %eax
  1000d6:	8d 83 0c b0 ff ff    	lea    -0x4ff4(%ebx),%eax
  1000dc:	50                   	push   %eax
  1000dd:	e8 da 2c 00 00       	call   102dbc <dprintf>
  1000e2:	83 c4 10             	add    $0x10,%esp
  1000e5:	8b 83 0c 60 00 00    	mov    0x600c(%ebx),%eax
  1000eb:	83 ec 08             	sub    $0x8,%esp
  1000ee:	6a 0e                	push   $0xe
  1000f0:	50                   	push   %eax
  1000f1:	e8 73 3a 00 00       	call   103b69 <outb>
  1000f6:	83 c4 10             	add    $0x10,%esp
  1000f9:	8b 83 0c 60 00 00    	mov    0x600c(%ebx),%eax
  1000ff:	83 c0 01             	add    $0x1,%eax
  100102:	83 ec 0c             	sub    $0xc,%esp
  100105:	50                   	push   %eax
  100106:	e8 0f 3a 00 00       	call   103b1a <inb>
  10010b:	83 c4 10             	add    $0x10,%esp
  10010e:	0f b6 c0             	movzbl %al,%eax
  100111:	c1 e0 08             	shl    $0x8,%eax
  100114:	89 45 ec             	mov    %eax,-0x14(%ebp)
  100117:	8b 83 0c 60 00 00    	mov    0x600c(%ebx),%eax
  10011d:	83 ec 08             	sub    $0x8,%esp
  100120:	6a 0f                	push   $0xf
  100122:	50                   	push   %eax
  100123:	e8 41 3a 00 00       	call   103b69 <outb>
  100128:	83 c4 10             	add    $0x10,%esp
  10012b:	8b 83 0c 60 00 00    	mov    0x600c(%ebx),%eax
  100131:	83 c0 01             	add    $0x1,%eax
  100134:	83 ec 0c             	sub    $0xc,%esp
  100137:	50                   	push   %eax
  100138:	e8 dd 39 00 00       	call   103b1a <inb>
  10013d:	83 c4 10             	add    $0x10,%esp
  100140:	0f b6 c0             	movzbl %al,%eax
  100143:	09 45 ec             	or     %eax,-0x14(%ebp)
  100146:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100149:	89 83 10 60 00 00    	mov    %eax,0x6010(%ebx)
  10014f:	8b 45 ec             	mov    -0x14(%ebp),%eax
  100152:	66 89 83 14 60 00 00 	mov    %ax,0x6014(%ebx)
  100159:	c7 83 18 60 00 00 00 	movl   $0x0,0x6018(%ebx)
  100160:	00 00 00 
  100163:	90                   	nop
  100164:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100167:	c9                   	leave
  100168:	c3                   	ret

00100169 <video_putc>:
  100169:	55                   	push   %ebp
  10016a:	89 e5                	mov    %esp,%ebp
  10016c:	56                   	push   %esi
  10016d:	53                   	push   %ebx
  10016e:	83 ec 10             	sub    $0x10,%esp
  100171:	e8 9f 02 00 00       	call   100415 <__x86.get_pc_thunk.bx>
  100176:	81 c3 7e ce 00 00    	add    $0xce7e,%ebx
  10017c:	8b 45 08             	mov    0x8(%ebp),%eax
  10017f:	3d ff 00 00 00       	cmp    $0xff,%eax
  100184:	77 07                	ja     10018d <video_putc+0x24>
  100186:	81 4d 08 00 07 00 00 	orl    $0x700,0x8(%ebp)
  10018d:	8b 45 08             	mov    0x8(%ebp),%eax
  100190:	0f b6 c0             	movzbl %al,%eax
  100193:	83 f8 0d             	cmp    $0xd,%eax
  100196:	0f 84 84 00 00 00    	je     100220 <video_putc+0xb7>
  10019c:	83 f8 0d             	cmp    $0xd,%eax
  10019f:	0f 8f f9 00 00 00    	jg     10029e <video_putc+0x135>
  1001a5:	83 f8 0a             	cmp    $0xa,%eax
  1001a8:	74 65                	je     10020f <video_putc+0xa6>
  1001aa:	83 f8 0a             	cmp    $0xa,%eax
  1001ad:	0f 8f eb 00 00 00    	jg     10029e <video_putc+0x135>
  1001b3:	83 f8 08             	cmp    $0x8,%eax
  1001b6:	74 0e                	je     1001c6 <video_putc+0x5d>
  1001b8:	83 f8 09             	cmp    $0x9,%eax
  1001bb:	0f 84 9a 00 00 00    	je     10025b <video_putc+0xf2>
  1001c1:	e9 d8 00 00 00       	jmp    10029e <video_putc+0x135>
  1001c6:	0f b7 83 14 60 00 00 	movzwl 0x6014(%ebx),%eax
  1001cd:	66 85 c0             	test   %ax,%ax
  1001d0:	0f 84 ee 00 00 00    	je     1002c4 <video_putc+0x15b>
  1001d6:	0f b7 83 14 60 00 00 	movzwl 0x6014(%ebx),%eax
  1001dd:	83 e8 01             	sub    $0x1,%eax
  1001e0:	66 89 83 14 60 00 00 	mov    %ax,0x6014(%ebx)
  1001e7:	8b 45 08             	mov    0x8(%ebp),%eax
  1001ea:	b0 00                	mov    $0x0,%al
  1001ec:	83 c8 20             	or     $0x20,%eax
  1001ef:	89 c1                	mov    %eax,%ecx
  1001f1:	8b 83 10 60 00 00    	mov    0x6010(%ebx),%eax
  1001f7:	0f b7 93 14 60 00 00 	movzwl 0x6014(%ebx),%edx
  1001fe:	0f b7 d2             	movzwl %dx,%edx
  100201:	01 d2                	add    %edx,%edx
  100203:	01 d0                	add    %edx,%eax
  100205:	89 ca                	mov    %ecx,%edx
  100207:	66 89 10             	mov    %dx,(%eax)
  10020a:	e9 b5 00 00 00       	jmp    1002c4 <video_putc+0x15b>
  10020f:	0f b7 83 14 60 00 00 	movzwl 0x6014(%ebx),%eax
  100216:	83 c0 50             	add    $0x50,%eax
  100219:	66 89 83 14 60 00 00 	mov    %ax,0x6014(%ebx)
  100220:	0f b7 b3 14 60 00 00 	movzwl 0x6014(%ebx),%esi
  100227:	0f b7 8b 14 60 00 00 	movzwl 0x6014(%ebx),%ecx
  10022e:	0f b7 c1             	movzwl %cx,%eax
  100231:	69 c0 cd cc 00 00    	imul   $0xcccd,%eax,%eax
  100237:	c1 e8 10             	shr    $0x10,%eax
  10023a:	89 c2                	mov    %eax,%edx
  10023c:	66 c1 ea 06          	shr    $0x6,%dx
  100240:	89 d0                	mov    %edx,%eax
  100242:	c1 e0 02             	shl    $0x2,%eax
  100245:	01 d0                	add    %edx,%eax
  100247:	c1 e0 04             	shl    $0x4,%eax
  10024a:	29 c1                	sub    %eax,%ecx
  10024c:	89 ca                	mov    %ecx,%edx
  10024e:	89 f0                	mov    %esi,%eax
  100250:	29 d0                	sub    %edx,%eax
  100252:	66 89 83 14 60 00 00 	mov    %ax,0x6014(%ebx)
  100259:	eb 6a                	jmp    1002c5 <video_putc+0x15c>
  10025b:	83 ec 0c             	sub    $0xc,%esp
  10025e:	6a 20                	push   $0x20
  100260:	e8 04 ff ff ff       	call   100169 <video_putc>
  100265:	83 c4 10             	add    $0x10,%esp
  100268:	83 ec 0c             	sub    $0xc,%esp
  10026b:	6a 20                	push   $0x20
  10026d:	e8 f7 fe ff ff       	call   100169 <video_putc>
  100272:	83 c4 10             	add    $0x10,%esp
  100275:	83 ec 0c             	sub    $0xc,%esp
  100278:	6a 20                	push   $0x20
  10027a:	e8 ea fe ff ff       	call   100169 <video_putc>
  10027f:	83 c4 10             	add    $0x10,%esp
  100282:	83 ec 0c             	sub    $0xc,%esp
  100285:	6a 20                	push   $0x20
  100287:	e8 dd fe ff ff       	call   100169 <video_putc>
  10028c:	83 c4 10             	add    $0x10,%esp
  10028f:	83 ec 0c             	sub    $0xc,%esp
  100292:	6a 20                	push   $0x20
  100294:	e8 d0 fe ff ff       	call   100169 <video_putc>
  100299:	83 c4 10             	add    $0x10,%esp
  10029c:	eb 27                	jmp    1002c5 <video_putc+0x15c>
  10029e:	8b 8b 10 60 00 00    	mov    0x6010(%ebx),%ecx
  1002a4:	0f b7 83 14 60 00 00 	movzwl 0x6014(%ebx),%eax
  1002ab:	8d 50 01             	lea    0x1(%eax),%edx
  1002ae:	66 89 93 14 60 00 00 	mov    %dx,0x6014(%ebx)
  1002b5:	0f b7 c0             	movzwl %ax,%eax
  1002b8:	01 c0                	add    %eax,%eax
  1002ba:	01 c8                	add    %ecx,%eax
  1002bc:	8b 55 08             	mov    0x8(%ebp),%edx
  1002bf:	66 89 10             	mov    %dx,(%eax)
  1002c2:	eb 01                	jmp    1002c5 <video_putc+0x15c>
  1002c4:	90                   	nop
  1002c5:	0f b7 83 14 60 00 00 	movzwl 0x6014(%ebx),%eax
  1002cc:	66 3d cf 07          	cmp    $0x7cf,%ax
  1002d0:	76 5d                	jbe    10032f <video_putc+0x1c6>
  1002d2:	8b 83 10 60 00 00    	mov    0x6010(%ebx),%eax
  1002d8:	8d 90 a0 00 00 00    	lea    0xa0(%eax),%edx
  1002de:	8b 83 10 60 00 00    	mov    0x6010(%ebx),%eax
  1002e4:	83 ec 04             	sub    $0x4,%esp
  1002e7:	68 00 0f 00 00       	push   $0xf00
  1002ec:	52                   	push   %edx
  1002ed:	50                   	push   %eax
  1002ee:	e8 82 25 00 00       	call   102875 <memmove>
  1002f3:	83 c4 10             	add    $0x10,%esp
  1002f6:	c7 45 f4 80 07 00 00 	movl   $0x780,-0xc(%ebp)
  1002fd:	eb 16                	jmp    100315 <video_putc+0x1ac>
  1002ff:	8b 83 10 60 00 00    	mov    0x6010(%ebx),%eax
  100305:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100308:	01 d2                	add    %edx,%edx
  10030a:	01 d0                	add    %edx,%eax
  10030c:	66 c7 00 20 07       	movw   $0x720,(%eax)
  100311:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100315:	81 7d f4 cf 07 00 00 	cmpl   $0x7cf,-0xc(%ebp)
  10031c:	7e e1                	jle    1002ff <video_putc+0x196>
  10031e:	0f b7 83 14 60 00 00 	movzwl 0x6014(%ebx),%eax
  100325:	83 e8 50             	sub    $0x50,%eax
  100328:	66 89 83 14 60 00 00 	mov    %ax,0x6014(%ebx)
  10032f:	8b 83 0c 60 00 00    	mov    0x600c(%ebx),%eax
  100335:	83 ec 08             	sub    $0x8,%esp
  100338:	6a 0e                	push   $0xe
  10033a:	50                   	push   %eax
  10033b:	e8 29 38 00 00       	call   103b69 <outb>
  100340:	83 c4 10             	add    $0x10,%esp
  100343:	0f b7 83 14 60 00 00 	movzwl 0x6014(%ebx),%eax
  10034a:	66 c1 e8 08          	shr    $0x8,%ax
  10034e:	0f b6 c0             	movzbl %al,%eax
  100351:	8b 93 0c 60 00 00    	mov    0x600c(%ebx),%edx
  100357:	83 c2 01             	add    $0x1,%edx
  10035a:	83 ec 08             	sub    $0x8,%esp
  10035d:	50                   	push   %eax
  10035e:	52                   	push   %edx
  10035f:	e8 05 38 00 00       	call   103b69 <outb>
  100364:	83 c4 10             	add    $0x10,%esp
  100367:	8b 83 0c 60 00 00    	mov    0x600c(%ebx),%eax
  10036d:	83 ec 08             	sub    $0x8,%esp
  100370:	6a 0f                	push   $0xf
  100372:	50                   	push   %eax
  100373:	e8 f1 37 00 00       	call   103b69 <outb>
  100378:	83 c4 10             	add    $0x10,%esp
  10037b:	0f b7 83 14 60 00 00 	movzwl 0x6014(%ebx),%eax
  100382:	0f b6 c0             	movzbl %al,%eax
  100385:	8b 93 0c 60 00 00    	mov    0x600c(%ebx),%edx
  10038b:	83 c2 01             	add    $0x1,%edx
  10038e:	83 ec 08             	sub    $0x8,%esp
  100391:	50                   	push   %eax
  100392:	52                   	push   %edx
  100393:	e8 d1 37 00 00       	call   103b69 <outb>
  100398:	83 c4 10             	add    $0x10,%esp
  10039b:	90                   	nop
  10039c:	8d 65 f8             	lea    -0x8(%ebp),%esp
  10039f:	5b                   	pop    %ebx
  1003a0:	5e                   	pop    %esi
  1003a1:	5d                   	pop    %ebp
  1003a2:	c3                   	ret

001003a3 <video_set_cursor>:
  1003a3:	55                   	push   %ebp
  1003a4:	89 e5                	mov    %esp,%ebp
  1003a6:	e8 66 00 00 00       	call   100411 <__x86.get_pc_thunk.dx>
  1003ab:	81 c2 49 cc 00 00    	add    $0xcc49,%edx
  1003b1:	8b 45 08             	mov    0x8(%ebp),%eax
  1003b4:	89 c1                	mov    %eax,%ecx
  1003b6:	89 c8                	mov    %ecx,%eax
  1003b8:	c1 e0 02             	shl    $0x2,%eax
  1003bb:	01 c8                	add    %ecx,%eax
  1003bd:	c1 e0 04             	shl    $0x4,%eax
  1003c0:	89 c1                	mov    %eax,%ecx
  1003c2:	8b 45 0c             	mov    0xc(%ebp),%eax
  1003c5:	01 c8                	add    %ecx,%eax
  1003c7:	66 89 82 14 60 00 00 	mov    %ax,0x6014(%edx)
  1003ce:	90                   	nop
  1003cf:	5d                   	pop    %ebp
  1003d0:	c3                   	ret

001003d1 <video_clear_screen>:
  1003d1:	55                   	push   %ebp
  1003d2:	89 e5                	mov    %esp,%ebp
  1003d4:	83 ec 10             	sub    $0x10,%esp
  1003d7:	e8 31 00 00 00       	call   10040d <__x86.get_pc_thunk.ax>
  1003dc:	05 18 cc 00 00       	add    $0xcc18,%eax
  1003e1:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  1003e8:	eb 16                	jmp    100400 <video_clear_screen+0x2f>
  1003ea:	8b 90 10 60 00 00    	mov    0x6010(%eax),%edx
  1003f0:	8b 4d fc             	mov    -0x4(%ebp),%ecx
  1003f3:	01 c9                	add    %ecx,%ecx
  1003f5:	01 ca                	add    %ecx,%edx
  1003f7:	66 c7 02 20 00       	movw   $0x20,(%edx)
  1003fc:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  100400:	81 7d fc cf 07 00 00 	cmpl   $0x7cf,-0x4(%ebp)
  100407:	7e e1                	jle    1003ea <video_clear_screen+0x19>
  100409:	90                   	nop
  10040a:	90                   	nop
  10040b:	c9                   	leave
  10040c:	c3                   	ret

0010040d <__x86.get_pc_thunk.ax>:
  10040d:	8b 04 24             	mov    (%esp),%eax
  100410:	c3                   	ret

00100411 <__x86.get_pc_thunk.dx>:
  100411:	8b 14 24             	mov    (%esp),%edx
  100414:	c3                   	ret

00100415 <__x86.get_pc_thunk.bx>:
  100415:	8b 1c 24             	mov    (%esp),%ebx
  100418:	c3                   	ret

00100419 <cons_init>:
  100419:	55                   	push   %ebp
  10041a:	89 e5                	mov    %esp,%ebp
  10041c:	53                   	push   %ebx
  10041d:	83 ec 04             	sub    $0x4,%esp
  100420:	e8 f0 ff ff ff       	call   100415 <__x86.get_pc_thunk.bx>
  100425:	81 c3 cf cb 00 00    	add    $0xcbcf,%ebx
  10042b:	83 ec 04             	sub    $0x4,%esp
  10042e:	68 08 02 00 00       	push   $0x208
  100433:	6a 00                	push   $0x0
  100435:	8d 83 2c 60 00 00    	lea    0x602c(%ebx),%eax
  10043b:	50                   	push   %eax
  10043c:	e8 ba 23 00 00       	call   1027fb <memset>
  100441:	83 c4 10             	add    $0x10,%esp
  100444:	e8 2f 04 00 00       	call   100878 <serial_init>
  100449:	e8 07 fc ff ff       	call   100055 <video_init>
  10044e:	90                   	nop
  10044f:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100452:	c9                   	leave
  100453:	c3                   	ret

00100454 <cons_intr>:
  100454:	55                   	push   %ebp
  100455:	89 e5                	mov    %esp,%ebp
  100457:	53                   	push   %ebx
  100458:	83 ec 14             	sub    $0x14,%esp
  10045b:	e8 b5 ff ff ff       	call   100415 <__x86.get_pc_thunk.bx>
  100460:	81 c3 94 cb 00 00    	add    $0xcb94,%ebx
  100466:	eb 39                	jmp    1004a1 <cons_intr+0x4d>
  100468:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  10046c:	74 32                	je     1004a0 <cons_intr+0x4c>
  10046e:	8b 83 30 62 00 00    	mov    0x6230(%ebx),%eax
  100474:	8d 50 01             	lea    0x1(%eax),%edx
  100477:	89 93 30 62 00 00    	mov    %edx,0x6230(%ebx)
  10047d:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100480:	88 94 03 2c 60 00 00 	mov    %dl,0x602c(%ebx,%eax,1)
  100487:	8b 83 30 62 00 00    	mov    0x6230(%ebx),%eax
  10048d:	3d 00 02 00 00       	cmp    $0x200,%eax
  100492:	75 0d                	jne    1004a1 <cons_intr+0x4d>
  100494:	c7 83 30 62 00 00 00 	movl   $0x0,0x6230(%ebx)
  10049b:	00 00 00 
  10049e:	eb 01                	jmp    1004a1 <cons_intr+0x4d>
  1004a0:	90                   	nop
  1004a1:	8b 45 08             	mov    0x8(%ebp),%eax
  1004a4:	ff d0                	call   *%eax
  1004a6:	89 45 f4             	mov    %eax,-0xc(%ebp)
  1004a9:	83 7d f4 ff          	cmpl   $0xffffffff,-0xc(%ebp)
  1004ad:	75 b9                	jne    100468 <cons_intr+0x14>
  1004af:	90                   	nop
  1004b0:	90                   	nop
  1004b1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1004b4:	c9                   	leave
  1004b5:	c3                   	ret

001004b6 <cons_getc>:
  1004b6:	55                   	push   %ebp
  1004b7:	89 e5                	mov    %esp,%ebp
  1004b9:	53                   	push   %ebx
  1004ba:	83 ec 14             	sub    $0x14,%esp
  1004bd:	e8 53 ff ff ff       	call   100415 <__x86.get_pc_thunk.bx>
  1004c2:	81 c3 32 cb 00 00    	add    $0xcb32,%ebx
  1004c8:	e8 81 02 00 00       	call   10074e <serial_intr>
  1004cd:	e8 59 06 00 00       	call   100b2b <keyboard_intr>
  1004d2:	8b 93 2c 62 00 00    	mov    0x622c(%ebx),%edx
  1004d8:	8b 83 30 62 00 00    	mov    0x6230(%ebx),%eax
  1004de:	39 c2                	cmp    %eax,%edx
  1004e0:	74 39                	je     10051b <cons_getc+0x65>
  1004e2:	8b 83 2c 62 00 00    	mov    0x622c(%ebx),%eax
  1004e8:	8d 50 01             	lea    0x1(%eax),%edx
  1004eb:	89 93 2c 62 00 00    	mov    %edx,0x622c(%ebx)
  1004f1:	0f b6 84 03 2c 60 00 	movzbl 0x602c(%ebx,%eax,1),%eax
  1004f8:	00 
  1004f9:	0f be c0             	movsbl %al,%eax
  1004fc:	89 45 f4             	mov    %eax,-0xc(%ebp)
  1004ff:	8b 83 2c 62 00 00    	mov    0x622c(%ebx),%eax
  100505:	3d 00 02 00 00       	cmp    $0x200,%eax
  10050a:	75 0a                	jne    100516 <cons_getc+0x60>
  10050c:	c7 83 2c 62 00 00 00 	movl   $0x0,0x622c(%ebx)
  100513:	00 00 00 
  100516:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100519:	eb 05                	jmp    100520 <cons_getc+0x6a>
  10051b:	b8 00 00 00 00       	mov    $0x0,%eax
  100520:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100523:	c9                   	leave
  100524:	c3                   	ret

00100525 <cons_putc>:
  100525:	55                   	push   %ebp
  100526:	89 e5                	mov    %esp,%ebp
  100528:	53                   	push   %ebx
  100529:	83 ec 14             	sub    $0x14,%esp
  10052c:	e8 e4 fe ff ff       	call   100415 <__x86.get_pc_thunk.bx>
  100531:	81 c3 c3 ca 00 00    	add    $0xcac3,%ebx
  100537:	8b 45 08             	mov    0x8(%ebp),%eax
  10053a:	88 45 f4             	mov    %al,-0xc(%ebp)
  10053d:	0f be 45 f4          	movsbl -0xc(%ebp),%eax
  100541:	83 ec 0c             	sub    $0xc,%esp
  100544:	50                   	push   %eax
  100545:	e8 9d 02 00 00       	call   1007e7 <serial_putc>
  10054a:	83 c4 10             	add    $0x10,%esp
  10054d:	0f be 45 f4          	movsbl -0xc(%ebp),%eax
  100551:	83 ec 0c             	sub    $0xc,%esp
  100554:	50                   	push   %eax
  100555:	e8 0f fc ff ff       	call   100169 <video_putc>
  10055a:	83 c4 10             	add    $0x10,%esp
  10055d:	90                   	nop
  10055e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100561:	c9                   	leave
  100562:	c3                   	ret

00100563 <getchar>:
  100563:	55                   	push   %ebp
  100564:	89 e5                	mov    %esp,%ebp
  100566:	83 ec 18             	sub    $0x18,%esp
  100569:	e8 9f fe ff ff       	call   10040d <__x86.get_pc_thunk.ax>
  10056e:	05 86 ca 00 00       	add    $0xca86,%eax
  100573:	90                   	nop
  100574:	e8 3d ff ff ff       	call   1004b6 <cons_getc>
  100579:	88 45 f7             	mov    %al,-0x9(%ebp)
  10057c:	80 7d f7 00          	cmpb   $0x0,-0x9(%ebp)
  100580:	74 f2                	je     100574 <getchar+0x11>
  100582:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
  100586:	c9                   	leave
  100587:	c3                   	ret

00100588 <putchar>:
  100588:	55                   	push   %ebp
  100589:	89 e5                	mov    %esp,%ebp
  10058b:	83 ec 18             	sub    $0x18,%esp
  10058e:	e8 7a fe ff ff       	call   10040d <__x86.get_pc_thunk.ax>
  100593:	05 61 ca 00 00       	add    $0xca61,%eax
  100598:	8b 45 08             	mov    0x8(%ebp),%eax
  10059b:	88 45 f4             	mov    %al,-0xc(%ebp)
  10059e:	0f be 45 f4          	movsbl -0xc(%ebp),%eax
  1005a2:	83 ec 0c             	sub    $0xc,%esp
  1005a5:	50                   	push   %eax
  1005a6:	e8 7a ff ff ff       	call   100525 <cons_putc>
  1005ab:	83 c4 10             	add    $0x10,%esp
  1005ae:	90                   	nop
  1005af:	c9                   	leave
  1005b0:	c3                   	ret

001005b1 <readline>:
  1005b1:	55                   	push   %ebp
  1005b2:	89 e5                	mov    %esp,%ebp
  1005b4:	53                   	push   %ebx
  1005b5:	83 ec 14             	sub    $0x14,%esp
  1005b8:	e8 58 fe ff ff       	call   100415 <__x86.get_pc_thunk.bx>
  1005bd:	81 c3 37 ca 00 00    	add    $0xca37,%ebx
  1005c3:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  1005c7:	74 15                	je     1005de <readline+0x2d>
  1005c9:	83 ec 08             	sub    $0x8,%esp
  1005cc:	ff 75 08             	push   0x8(%ebp)
  1005cf:	8d 83 1a b0 ff ff    	lea    -0x4fe6(%ebx),%eax
  1005d5:	50                   	push   %eax
  1005d6:	e8 e1 27 00 00       	call   102dbc <dprintf>
  1005db:	83 c4 10             	add    $0x10,%esp
  1005de:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  1005e5:	e8 79 ff ff ff       	call   100563 <getchar>
  1005ea:	88 45 f3             	mov    %al,-0xd(%ebp)
  1005ed:	80 7d f3 00          	cmpb   $0x0,-0xd(%ebp)
  1005f1:	79 21                	jns    100614 <readline+0x63>
  1005f3:	0f be 45 f3          	movsbl -0xd(%ebp),%eax
  1005f7:	83 ec 08             	sub    $0x8,%esp
  1005fa:	50                   	push   %eax
  1005fb:	8d 83 1d b0 ff ff    	lea    -0x4fe3(%ebx),%eax
  100601:	50                   	push   %eax
  100602:	e8 b5 27 00 00       	call   102dbc <dprintf>
  100607:	83 c4 10             	add    $0x10,%esp
  10060a:	b8 00 00 00 00       	mov    $0x0,%eax
  10060f:	e9 92 00 00 00       	jmp    1006a6 <readline+0xf5>
  100614:	80 7d f3 08          	cmpb   $0x8,-0xd(%ebp)
  100618:	74 06                	je     100620 <readline+0x6f>
  10061a:	80 7d f3 7f          	cmpb   $0x7f,-0xd(%ebp)
  10061e:	75 19                	jne    100639 <readline+0x88>
  100620:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  100624:	7e 13                	jle    100639 <readline+0x88>
  100626:	83 ec 0c             	sub    $0xc,%esp
  100629:	6a 08                	push   $0x8
  10062b:	e8 58 ff ff ff       	call   100588 <putchar>
  100630:	83 c4 10             	add    $0x10,%esp
  100633:	83 6d f4 01          	subl   $0x1,-0xc(%ebp)
  100637:	eb 68                	jmp    1006a1 <readline+0xf0>
  100639:	80 7d f3 1f          	cmpb   $0x1f,-0xd(%ebp)
  10063d:	7e 2f                	jle    10066e <readline+0xbd>
  10063f:	81 7d f4 fe 03 00 00 	cmpl   $0x3fe,-0xc(%ebp)
  100646:	7f 26                	jg     10066e <readline+0xbd>
  100648:	0f be 45 f3          	movsbl -0xd(%ebp),%eax
  10064c:	83 ec 0c             	sub    $0xc,%esp
  10064f:	50                   	push   %eax
  100650:	e8 33 ff ff ff       	call   100588 <putchar>
  100655:	83 c4 10             	add    $0x10,%esp
  100658:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10065b:	8d 50 01             	lea    0x1(%eax),%edx
  10065e:	89 55 f4             	mov    %edx,-0xc(%ebp)
  100661:	0f b6 55 f3          	movzbl -0xd(%ebp),%edx
  100665:	88 94 03 4c 62 00 00 	mov    %dl,0x624c(%ebx,%eax,1)
  10066c:	eb 33                	jmp    1006a1 <readline+0xf0>
  10066e:	80 7d f3 0a          	cmpb   $0xa,-0xd(%ebp)
  100672:	74 0a                	je     10067e <readline+0xcd>
  100674:	80 7d f3 0d          	cmpb   $0xd,-0xd(%ebp)
  100678:	0f 85 67 ff ff ff    	jne    1005e5 <readline+0x34>
  10067e:	83 ec 0c             	sub    $0xc,%esp
  100681:	6a 0a                	push   $0xa
  100683:	e8 00 ff ff ff       	call   100588 <putchar>
  100688:	83 c4 10             	add    $0x10,%esp
  10068b:	8d 93 4c 62 00 00    	lea    0x624c(%ebx),%edx
  100691:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100694:	01 d0                	add    %edx,%eax
  100696:	c6 00 00             	movb   $0x0,(%eax)
  100699:	8d 83 4c 62 00 00    	lea    0x624c(%ebx),%eax
  10069f:	eb 05                	jmp    1006a6 <readline+0xf5>
  1006a1:	e9 3f ff ff ff       	jmp    1005e5 <readline+0x34>
  1006a6:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1006a9:	c9                   	leave
  1006aa:	c3                   	ret

001006ab <delay>:
  1006ab:	55                   	push   %ebp
  1006ac:	89 e5                	mov    %esp,%ebp
  1006ae:	53                   	push   %ebx
  1006af:	83 ec 04             	sub    $0x4,%esp
  1006b2:	e8 5e fd ff ff       	call   100415 <__x86.get_pc_thunk.bx>
  1006b7:	81 c3 3d c9 00 00    	add    $0xc93d,%ebx
  1006bd:	83 ec 0c             	sub    $0xc,%esp
  1006c0:	68 84 00 00 00       	push   $0x84
  1006c5:	e8 50 34 00 00       	call   103b1a <inb>
  1006ca:	83 c4 10             	add    $0x10,%esp
  1006cd:	83 ec 0c             	sub    $0xc,%esp
  1006d0:	68 84 00 00 00       	push   $0x84
  1006d5:	e8 40 34 00 00       	call   103b1a <inb>
  1006da:	83 c4 10             	add    $0x10,%esp
  1006dd:	83 ec 0c             	sub    $0xc,%esp
  1006e0:	68 84 00 00 00       	push   $0x84
  1006e5:	e8 30 34 00 00       	call   103b1a <inb>
  1006ea:	83 c4 10             	add    $0x10,%esp
  1006ed:	83 ec 0c             	sub    $0xc,%esp
  1006f0:	68 84 00 00 00       	push   $0x84
  1006f5:	e8 20 34 00 00       	call   103b1a <inb>
  1006fa:	83 c4 10             	add    $0x10,%esp
  1006fd:	90                   	nop
  1006fe:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100701:	c9                   	leave
  100702:	c3                   	ret

00100703 <serial_proc_data>:
  100703:	55                   	push   %ebp
  100704:	89 e5                	mov    %esp,%ebp
  100706:	53                   	push   %ebx
  100707:	83 ec 04             	sub    $0x4,%esp
  10070a:	e8 06 fd ff ff       	call   100415 <__x86.get_pc_thunk.bx>
  10070f:	81 c3 e5 c8 00 00    	add    $0xc8e5,%ebx
  100715:	83 ec 0c             	sub    $0xc,%esp
  100718:	68 fd 03 00 00       	push   $0x3fd
  10071d:	e8 f8 33 00 00       	call   103b1a <inb>
  100722:	83 c4 10             	add    $0x10,%esp
  100725:	0f b6 c0             	movzbl %al,%eax
  100728:	83 e0 01             	and    $0x1,%eax
  10072b:	85 c0                	test   %eax,%eax
  10072d:	75 07                	jne    100736 <serial_proc_data+0x33>
  10072f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  100734:	eb 13                	jmp    100749 <serial_proc_data+0x46>
  100736:	83 ec 0c             	sub    $0xc,%esp
  100739:	68 f8 03 00 00       	push   $0x3f8
  10073e:	e8 d7 33 00 00       	call   103b1a <inb>
  100743:	83 c4 10             	add    $0x10,%esp
  100746:	0f b6 c0             	movzbl %al,%eax
  100749:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  10074c:	c9                   	leave
  10074d:	c3                   	ret

0010074e <serial_intr>:
  10074e:	55                   	push   %ebp
  10074f:	89 e5                	mov    %esp,%ebp
  100751:	53                   	push   %ebx
  100752:	83 ec 04             	sub    $0x4,%esp
  100755:	e8 b3 fc ff ff       	call   10040d <__x86.get_pc_thunk.ax>
  10075a:	05 9a c8 00 00       	add    $0xc89a,%eax
  10075f:	0f b6 90 4c 66 00 00 	movzbl 0x664c(%eax),%edx
  100766:	84 d2                	test   %dl,%dl
  100768:	74 14                	je     10077e <serial_intr+0x30>
  10076a:	83 ec 0c             	sub    $0xc,%esp
  10076d:	8d 90 0f 37 ff ff    	lea    -0xc8f1(%eax),%edx
  100773:	52                   	push   %edx
  100774:	89 c3                	mov    %eax,%ebx
  100776:	e8 d9 fc ff ff       	call   100454 <cons_intr>
  10077b:	83 c4 10             	add    $0x10,%esp
  10077e:	90                   	nop
  10077f:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100782:	c9                   	leave
  100783:	c3                   	ret

00100784 <serial_reformatnewline>:
  100784:	55                   	push   %ebp
  100785:	89 e5                	mov    %esp,%ebp
  100787:	53                   	push   %ebx
  100788:	83 ec 14             	sub    $0x14,%esp
  10078b:	e8 85 fc ff ff       	call   100415 <__x86.get_pc_thunk.bx>
  100790:	81 c3 64 c8 00 00    	add    $0xc864,%ebx
  100796:	c7 45 f4 0d 00 00 00 	movl   $0xd,-0xc(%ebp)
  10079d:	c7 45 f0 0a 00 00 00 	movl   $0xa,-0x10(%ebp)
  1007a4:	8b 45 08             	mov    0x8(%ebp),%eax
  1007a7:	3b 45 f0             	cmp    -0x10(%ebp),%eax
  1007aa:	75 31                	jne    1007dd <serial_reformatnewline+0x59>
  1007ac:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1007af:	0f b6 c0             	movzbl %al,%eax
  1007b2:	83 ec 08             	sub    $0x8,%esp
  1007b5:	50                   	push   %eax
  1007b6:	ff 75 0c             	push   0xc(%ebp)
  1007b9:	e8 ab 33 00 00       	call   103b69 <outb>
  1007be:	83 c4 10             	add    $0x10,%esp
  1007c1:	8b 45 f0             	mov    -0x10(%ebp),%eax
  1007c4:	0f b6 c0             	movzbl %al,%eax
  1007c7:	83 ec 08             	sub    $0x8,%esp
  1007ca:	50                   	push   %eax
  1007cb:	ff 75 0c             	push   0xc(%ebp)
  1007ce:	e8 96 33 00 00       	call   103b69 <outb>
  1007d3:	83 c4 10             	add    $0x10,%esp
  1007d6:	b8 01 00 00 00       	mov    $0x1,%eax
  1007db:	eb 05                	jmp    1007e2 <serial_reformatnewline+0x5e>
  1007dd:	b8 00 00 00 00       	mov    $0x0,%eax
  1007e2:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1007e5:	c9                   	leave
  1007e6:	c3                   	ret

001007e7 <serial_putc>:
  1007e7:	55                   	push   %ebp
  1007e8:	89 e5                	mov    %esp,%ebp
  1007ea:	53                   	push   %ebx
  1007eb:	83 ec 24             	sub    $0x24,%esp
  1007ee:	e8 22 fc ff ff       	call   100415 <__x86.get_pc_thunk.bx>
  1007f3:	81 c3 01 c8 00 00    	add    $0xc801,%ebx
  1007f9:	8b 45 08             	mov    0x8(%ebp),%eax
  1007fc:	88 45 e4             	mov    %al,-0x1c(%ebp)
  1007ff:	0f b6 83 4c 66 00 00 	movzbl 0x664c(%ebx),%eax
  100806:	84 c0                	test   %al,%al
  100808:	74 68                	je     100872 <serial_putc+0x8b>
  10080a:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  100811:	eb 09                	jmp    10081c <serial_putc+0x35>
  100813:	e8 93 fe ff ff       	call   1006ab <delay>
  100818:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  10081c:	83 ec 0c             	sub    $0xc,%esp
  10081f:	68 fd 03 00 00       	push   $0x3fd
  100824:	e8 f1 32 00 00       	call   103b1a <inb>
  100829:	83 c4 10             	add    $0x10,%esp
  10082c:	0f b6 c0             	movzbl %al,%eax
  10082f:	83 e0 20             	and    $0x20,%eax
  100832:	85 c0                	test   %eax,%eax
  100834:	75 09                	jne    10083f <serial_putc+0x58>
  100836:	81 7d f4 ff 31 00 00 	cmpl   $0x31ff,-0xc(%ebp)
  10083d:	7e d4                	jle    100813 <serial_putc+0x2c>
  10083f:	0f be 45 e4          	movsbl -0x1c(%ebp),%eax
  100843:	83 ec 08             	sub    $0x8,%esp
  100846:	68 f8 03 00 00       	push   $0x3f8
  10084b:	50                   	push   %eax
  10084c:	e8 33 ff ff ff       	call   100784 <serial_reformatnewline>
  100851:	83 c4 10             	add    $0x10,%esp
  100854:	85 c0                	test   %eax,%eax
  100856:	75 1b                	jne    100873 <serial_putc+0x8c>
  100858:	0f b6 45 e4          	movzbl -0x1c(%ebp),%eax
  10085c:	0f b6 c0             	movzbl %al,%eax
  10085f:	83 ec 08             	sub    $0x8,%esp
  100862:	50                   	push   %eax
  100863:	68 f8 03 00 00       	push   $0x3f8
  100868:	e8 fc 32 00 00       	call   103b69 <outb>
  10086d:	83 c4 10             	add    $0x10,%esp
  100870:	eb 01                	jmp    100873 <serial_putc+0x8c>
  100872:	90                   	nop
  100873:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100876:	c9                   	leave
  100877:	c3                   	ret

00100878 <serial_init>:
  100878:	55                   	push   %ebp
  100879:	89 e5                	mov    %esp,%ebp
  10087b:	53                   	push   %ebx
  10087c:	83 ec 04             	sub    $0x4,%esp
  10087f:	e8 91 fb ff ff       	call   100415 <__x86.get_pc_thunk.bx>
  100884:	81 c3 70 c7 00 00    	add    $0xc770,%ebx
  10088a:	83 ec 08             	sub    $0x8,%esp
  10088d:	6a 00                	push   $0x0
  10088f:	68 f9 03 00 00       	push   $0x3f9
  100894:	e8 d0 32 00 00       	call   103b69 <outb>
  100899:	83 c4 10             	add    $0x10,%esp
  10089c:	83 ec 08             	sub    $0x8,%esp
  10089f:	68 80 00 00 00       	push   $0x80
  1008a4:	68 fb 03 00 00       	push   $0x3fb
  1008a9:	e8 bb 32 00 00       	call   103b69 <outb>
  1008ae:	83 c4 10             	add    $0x10,%esp
  1008b1:	83 ec 08             	sub    $0x8,%esp
  1008b4:	6a 01                	push   $0x1
  1008b6:	68 f8 03 00 00       	push   $0x3f8
  1008bb:	e8 a9 32 00 00       	call   103b69 <outb>
  1008c0:	83 c4 10             	add    $0x10,%esp
  1008c3:	83 ec 08             	sub    $0x8,%esp
  1008c6:	6a 00                	push   $0x0
  1008c8:	68 f9 03 00 00       	push   $0x3f9
  1008cd:	e8 97 32 00 00       	call   103b69 <outb>
  1008d2:	83 c4 10             	add    $0x10,%esp
  1008d5:	83 ec 08             	sub    $0x8,%esp
  1008d8:	6a 03                	push   $0x3
  1008da:	68 fb 03 00 00       	push   $0x3fb
  1008df:	e8 85 32 00 00       	call   103b69 <outb>
  1008e4:	83 c4 10             	add    $0x10,%esp
  1008e7:	83 ec 08             	sub    $0x8,%esp
  1008ea:	68 c7 00 00 00       	push   $0xc7
  1008ef:	68 fa 03 00 00       	push   $0x3fa
  1008f4:	e8 70 32 00 00       	call   103b69 <outb>
  1008f9:	83 c4 10             	add    $0x10,%esp
  1008fc:	83 ec 08             	sub    $0x8,%esp
  1008ff:	6a 0b                	push   $0xb
  100901:	68 fc 03 00 00       	push   $0x3fc
  100906:	e8 5e 32 00 00       	call   103b69 <outb>
  10090b:	83 c4 10             	add    $0x10,%esp
  10090e:	83 ec 0c             	sub    $0xc,%esp
  100911:	68 fd 03 00 00       	push   $0x3fd
  100916:	e8 ff 31 00 00       	call   103b1a <inb>
  10091b:	83 c4 10             	add    $0x10,%esp
  10091e:	3c ff                	cmp    $0xff,%al
  100920:	0f 95 c0             	setne  %al
  100923:	88 83 4c 66 00 00    	mov    %al,0x664c(%ebx)
  100929:	83 ec 0c             	sub    $0xc,%esp
  10092c:	68 fa 03 00 00       	push   $0x3fa
  100931:	e8 e4 31 00 00       	call   103b1a <inb>
  100936:	83 c4 10             	add    $0x10,%esp
  100939:	83 ec 0c             	sub    $0xc,%esp
  10093c:	68 f8 03 00 00       	push   $0x3f8
  100941:	e8 d4 31 00 00       	call   103b1a <inb>
  100946:	83 c4 10             	add    $0x10,%esp
  100949:	90                   	nop
  10094a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  10094d:	c9                   	leave
  10094e:	c3                   	ret

0010094f <serial_intenable>:
  10094f:	55                   	push   %ebp
  100950:	89 e5                	mov    %esp,%ebp
  100952:	53                   	push   %ebx
  100953:	83 ec 04             	sub    $0x4,%esp
  100956:	e8 b2 fa ff ff       	call   10040d <__x86.get_pc_thunk.ax>
  10095b:	05 99 c6 00 00       	add    $0xc699,%eax
  100960:	0f b6 90 4c 66 00 00 	movzbl 0x664c(%eax),%edx
  100967:	84 d2                	test   %dl,%dl
  100969:	74 19                	je     100984 <serial_intenable+0x35>
  10096b:	83 ec 08             	sub    $0x8,%esp
  10096e:	6a 01                	push   $0x1
  100970:	68 f9 03 00 00       	push   $0x3f9
  100975:	89 c3                	mov    %eax,%ebx
  100977:	e8 ed 31 00 00       	call   103b69 <outb>
  10097c:	83 c4 10             	add    $0x10,%esp
  10097f:	e8 ca fd ff ff       	call   10074e <serial_intr>
  100984:	90                   	nop
  100985:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100988:	c9                   	leave
  100989:	c3                   	ret

0010098a <kbd_proc_data>:
  10098a:	55                   	push   %ebp
  10098b:	89 e5                	mov    %esp,%ebp
  10098d:	53                   	push   %ebx
  10098e:	83 ec 14             	sub    $0x14,%esp
  100991:	e8 7f fa ff ff       	call   100415 <__x86.get_pc_thunk.bx>
  100996:	81 c3 5e c6 00 00    	add    $0xc65e,%ebx
  10099c:	83 ec 0c             	sub    $0xc,%esp
  10099f:	6a 64                	push   $0x64
  1009a1:	e8 74 31 00 00       	call   103b1a <inb>
  1009a6:	83 c4 10             	add    $0x10,%esp
  1009a9:	0f b6 c0             	movzbl %al,%eax
  1009ac:	83 e0 01             	and    $0x1,%eax
  1009af:	85 c0                	test   %eax,%eax
  1009b1:	75 0a                	jne    1009bd <kbd_proc_data+0x33>
  1009b3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  1009b8:	e9 69 01 00 00       	jmp    100b26 <kbd_proc_data+0x19c>
  1009bd:	83 ec 0c             	sub    $0xc,%esp
  1009c0:	6a 60                	push   $0x60
  1009c2:	e8 53 31 00 00       	call   103b1a <inb>
  1009c7:	83 c4 10             	add    $0x10,%esp
  1009ca:	88 45 f3             	mov    %al,-0xd(%ebp)
  1009cd:	80 7d f3 e0          	cmpb   $0xe0,-0xd(%ebp)
  1009d1:	75 19                	jne    1009ec <kbd_proc_data+0x62>
  1009d3:	8b 83 50 66 00 00    	mov    0x6650(%ebx),%eax
  1009d9:	83 c8 40             	or     $0x40,%eax
  1009dc:	89 83 50 66 00 00    	mov    %eax,0x6650(%ebx)
  1009e2:	b8 00 00 00 00       	mov    $0x0,%eax
  1009e7:	e9 3a 01 00 00       	jmp    100b26 <kbd_proc_data+0x19c>
  1009ec:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
  1009f0:	84 c0                	test   %al,%al
  1009f2:	79 4b                	jns    100a3f <kbd_proc_data+0xb5>
  1009f4:	8b 83 50 66 00 00    	mov    0x6650(%ebx),%eax
  1009fa:	83 e0 40             	and    $0x40,%eax
  1009fd:	85 c0                	test   %eax,%eax
  1009ff:	75 09                	jne    100a0a <kbd_proc_data+0x80>
  100a01:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
  100a05:	83 e0 7f             	and    $0x7f,%eax
  100a08:	eb 04                	jmp    100a0e <kbd_proc_data+0x84>
  100a0a:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
  100a0e:	88 45 f3             	mov    %al,-0xd(%ebp)
  100a11:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
  100a15:	0f b6 84 03 0c 00 00 	movzbl 0xc(%ebx,%eax,1),%eax
  100a1c:	00 
  100a1d:	83 c8 40             	or     $0x40,%eax
  100a20:	0f b6 c0             	movzbl %al,%eax
  100a23:	f7 d0                	not    %eax
  100a25:	89 c2                	mov    %eax,%edx
  100a27:	8b 83 50 66 00 00    	mov    0x6650(%ebx),%eax
  100a2d:	21 d0                	and    %edx,%eax
  100a2f:	89 83 50 66 00 00    	mov    %eax,0x6650(%ebx)
  100a35:	b8 00 00 00 00       	mov    $0x0,%eax
  100a3a:	e9 e7 00 00 00       	jmp    100b26 <kbd_proc_data+0x19c>
  100a3f:	8b 83 50 66 00 00    	mov    0x6650(%ebx),%eax
  100a45:	83 e0 40             	and    $0x40,%eax
  100a48:	85 c0                	test   %eax,%eax
  100a4a:	74 13                	je     100a5f <kbd_proc_data+0xd5>
  100a4c:	80 4d f3 80          	orb    $0x80,-0xd(%ebp)
  100a50:	8b 83 50 66 00 00    	mov    0x6650(%ebx),%eax
  100a56:	83 e0 bf             	and    $0xffffffbf,%eax
  100a59:	89 83 50 66 00 00    	mov    %eax,0x6650(%ebx)
  100a5f:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
  100a63:	0f b6 84 03 0c 00 00 	movzbl 0xc(%ebx,%eax,1),%eax
  100a6a:	00 
  100a6b:	0f b6 d0             	movzbl %al,%edx
  100a6e:	8b 83 50 66 00 00    	mov    0x6650(%ebx),%eax
  100a74:	09 d0                	or     %edx,%eax
  100a76:	89 83 50 66 00 00    	mov    %eax,0x6650(%ebx)
  100a7c:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
  100a80:	0f b6 84 03 0c 01 00 	movzbl 0x10c(%ebx,%eax,1),%eax
  100a87:	00 
  100a88:	0f b6 d0             	movzbl %al,%edx
  100a8b:	8b 83 50 66 00 00    	mov    0x6650(%ebx),%eax
  100a91:	31 d0                	xor    %edx,%eax
  100a93:	89 83 50 66 00 00    	mov    %eax,0x6650(%ebx)
  100a99:	8b 83 50 66 00 00    	mov    0x6650(%ebx),%eax
  100a9f:	83 e0 03             	and    $0x3,%eax
  100aa2:	8b 94 83 0c 05 00 00 	mov    0x50c(%ebx,%eax,4),%edx
  100aa9:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
  100aad:	01 d0                	add    %edx,%eax
  100aaf:	0f b6 00             	movzbl (%eax),%eax
  100ab2:	0f b6 c0             	movzbl %al,%eax
  100ab5:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100ab8:	8b 83 50 66 00 00    	mov    0x6650(%ebx),%eax
  100abe:	83 e0 08             	and    $0x8,%eax
  100ac1:	85 c0                	test   %eax,%eax
  100ac3:	74 22                	je     100ae7 <kbd_proc_data+0x15d>
  100ac5:	83 7d f4 60          	cmpl   $0x60,-0xc(%ebp)
  100ac9:	7e 0c                	jle    100ad7 <kbd_proc_data+0x14d>
  100acb:	83 7d f4 7a          	cmpl   $0x7a,-0xc(%ebp)
  100acf:	7f 06                	jg     100ad7 <kbd_proc_data+0x14d>
  100ad1:	83 6d f4 20          	subl   $0x20,-0xc(%ebp)
  100ad5:	eb 10                	jmp    100ae7 <kbd_proc_data+0x15d>
  100ad7:	83 7d f4 40          	cmpl   $0x40,-0xc(%ebp)
  100adb:	7e 0a                	jle    100ae7 <kbd_proc_data+0x15d>
  100add:	83 7d f4 5a          	cmpl   $0x5a,-0xc(%ebp)
  100ae1:	7f 04                	jg     100ae7 <kbd_proc_data+0x15d>
  100ae3:	83 45 f4 20          	addl   $0x20,-0xc(%ebp)
  100ae7:	8b 83 50 66 00 00    	mov    0x6650(%ebx),%eax
  100aed:	f7 d0                	not    %eax
  100aef:	83 e0 06             	and    $0x6,%eax
  100af2:	85 c0                	test   %eax,%eax
  100af4:	75 2d                	jne    100b23 <kbd_proc_data+0x199>
  100af6:	81 7d f4 e9 00 00 00 	cmpl   $0xe9,-0xc(%ebp)
  100afd:	75 24                	jne    100b23 <kbd_proc_data+0x199>
  100aff:	83 ec 0c             	sub    $0xc,%esp
  100b02:	8d 83 2d b0 ff ff    	lea    -0x4fd3(%ebx),%eax
  100b08:	50                   	push   %eax
  100b09:	e8 ae 22 00 00       	call   102dbc <dprintf>
  100b0e:	83 c4 10             	add    $0x10,%esp
  100b11:	83 ec 08             	sub    $0x8,%esp
  100b14:	6a 03                	push   $0x3
  100b16:	68 92 00 00 00       	push   $0x92
  100b1b:	e8 49 30 00 00       	call   103b69 <outb>
  100b20:	83 c4 10             	add    $0x10,%esp
  100b23:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100b26:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100b29:	c9                   	leave
  100b2a:	c3                   	ret

00100b2b <keyboard_intr>:
  100b2b:	55                   	push   %ebp
  100b2c:	89 e5                	mov    %esp,%ebp
  100b2e:	53                   	push   %ebx
  100b2f:	83 ec 04             	sub    $0x4,%esp
  100b32:	e8 d6 f8 ff ff       	call   10040d <__x86.get_pc_thunk.ax>
  100b37:	05 bd c4 00 00       	add    $0xc4bd,%eax
  100b3c:	83 ec 0c             	sub    $0xc,%esp
  100b3f:	8d 90 96 39 ff ff    	lea    -0xc66a(%eax),%edx
  100b45:	52                   	push   %edx
  100b46:	89 c3                	mov    %eax,%ebx
  100b48:	e8 07 f9 ff ff       	call   100454 <cons_intr>
  100b4d:	83 c4 10             	add    $0x10,%esp
  100b50:	90                   	nop
  100b51:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100b54:	c9                   	leave
  100b55:	c3                   	ret

00100b56 <devinit>:
  100b56:	55                   	push   %ebp
  100b57:	89 e5                	mov    %esp,%ebp
  100b59:	53                   	push   %ebx
  100b5a:	83 ec 04             	sub    $0x4,%esp
  100b5d:	e8 b3 f8 ff ff       	call   100415 <__x86.get_pc_thunk.bx>
  100b62:	81 c3 92 c4 00 00    	add    $0xc492,%ebx
  100b68:	e8 47 27 00 00       	call   1032b4 <seg_init>
  100b6d:	e8 ec 2d 00 00       	call   10395e <enable_sse>
  100b72:	e8 a2 f8 ff ff       	call   100419 <cons_init>
  100b77:	83 ec 04             	sub    $0x4,%esp
  100b7a:	8d 83 39 b0 ff ff    	lea    -0x4fc7(%ebx),%eax
  100b80:	50                   	push   %eax
  100b81:	6a 12                	push   $0x12
  100b83:	8d 83 4c b0 ff ff    	lea    -0x4fb4(%ebx),%eax
  100b89:	50                   	push   %eax
  100b8a:	e8 5a 1f 00 00       	call   102ae9 <debug_normal>
  100b8f:	83 c4 10             	add    $0x10,%esp
  100b92:	ff 75 08             	push   0x8(%ebp)
  100b95:	8d 83 5f b0 ff ff    	lea    -0x4fa1(%ebx),%eax
  100b9b:	50                   	push   %eax
  100b9c:	6a 13                	push   $0x13
  100b9e:	8d 83 4c b0 ff ff    	lea    -0x4fb4(%ebx),%eax
  100ba4:	50                   	push   %eax
  100ba5:	e8 3f 1f 00 00       	call   102ae9 <debug_normal>
  100baa:	83 c4 10             	add    $0x10,%esp
  100bad:	e8 76 1a 00 00       	call   102628 <intr_init>
  100bb2:	83 ec 0c             	sub    $0xc,%esp
  100bb5:	ff 75 08             	push   0x8(%ebp)
  100bb8:	e8 a2 03 00 00       	call   100f5f <pmmap_init>
  100bbd:	83 c4 10             	add    $0x10,%esp
  100bc0:	90                   	nop
  100bc1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100bc4:	c9                   	leave
  100bc5:	c3                   	ret

00100bc6 <pmmap_alloc_slot>:
  100bc6:	55                   	push   %ebp
  100bc7:	89 e5                	mov    %esp,%ebp
  100bc9:	e8 43 f8 ff ff       	call   100411 <__x86.get_pc_thunk.dx>
  100bce:	81 c2 26 c4 00 00    	add    $0xc426,%edx
  100bd4:	8b 82 6c 70 00 00    	mov    0x706c(%edx),%eax
  100bda:	3d 80 00 00 00       	cmp    $0x80,%eax
  100bdf:	0f 94 c0             	sete   %al
  100be2:	0f b6 c0             	movzbl %al,%eax
  100be5:	85 c0                	test   %eax,%eax
  100be7:	74 07                	je     100bf0 <pmmap_alloc_slot+0x2a>
  100be9:	b8 00 00 00 00       	mov    $0x0,%eax
  100bee:	eb 21                	jmp    100c11 <pmmap_alloc_slot+0x4b>
  100bf0:	8b 8a 6c 70 00 00    	mov    0x706c(%edx),%ecx
  100bf6:	8d 41 01             	lea    0x1(%ecx),%eax
  100bf9:	89 82 6c 70 00 00    	mov    %eax,0x706c(%edx)
  100bff:	89 c8                	mov    %ecx,%eax
  100c01:	c1 e0 02             	shl    $0x2,%eax
  100c04:	01 c8                	add    %ecx,%eax
  100c06:	c1 e0 02             	shl    $0x2,%eax
  100c09:	8d 92 6c 66 00 00    	lea    0x666c(%edx),%edx
  100c0f:	01 d0                	add    %edx,%eax
  100c11:	5d                   	pop    %ebp
  100c12:	c3                   	ret

00100c13 <pmmap_insert>:
  100c13:	55                   	push   %ebp
  100c14:	89 e5                	mov    %esp,%ebp
  100c16:	53                   	push   %ebx
  100c17:	83 ec 14             	sub    $0x14,%esp
  100c1a:	e8 f6 f7 ff ff       	call   100415 <__x86.get_pc_thunk.bx>
  100c1f:	81 c3 d5 c3 00 00    	add    $0xc3d5,%ebx
  100c25:	e8 9c ff ff ff       	call   100bc6 <pmmap_alloc_slot>
  100c2a:	89 45 ec             	mov    %eax,-0x14(%ebp)
  100c2d:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
  100c31:	75 1b                	jne    100c4e <pmmap_insert+0x3b>
  100c33:	83 ec 04             	sub    $0x4,%esp
  100c36:	8d 83 78 b0 ff ff    	lea    -0x4f88(%ebx),%eax
  100c3c:	50                   	push   %eax
  100c3d:	6a 3c                	push   $0x3c
  100c3f:	8d 83 95 b0 ff ff    	lea    -0x4f6b(%ebx),%eax
  100c45:	50                   	push   %eax
  100c46:	e8 59 1f 00 00       	call   102ba4 <debug_panic>
  100c4b:	83 c4 10             	add    $0x10,%esp
  100c4e:	8b 45 ec             	mov    -0x14(%ebp),%eax
  100c51:	8b 55 08             	mov    0x8(%ebp),%edx
  100c54:	89 10                	mov    %edx,(%eax)
  100c56:	8b 45 ec             	mov    -0x14(%ebp),%eax
  100c59:	8b 55 0c             	mov    0xc(%ebp),%edx
  100c5c:	89 50 04             	mov    %edx,0x4(%eax)
  100c5f:	8b 45 ec             	mov    -0x14(%ebp),%eax
  100c62:	8b 55 10             	mov    0x10(%ebp),%edx
  100c65:	89 50 08             	mov    %edx,0x8(%eax)
  100c68:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  100c6f:	8b 83 70 70 00 00    	mov    0x7070(%ebx),%eax
  100c75:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100c78:	eb 19                	jmp    100c93 <pmmap_insert+0x80>
  100c7a:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100c7d:	8b 00                	mov    (%eax),%eax
  100c7f:	39 45 08             	cmp    %eax,0x8(%ebp)
  100c82:	72 17                	jb     100c9b <pmmap_insert+0x88>
  100c84:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100c87:	89 45 f0             	mov    %eax,-0x10(%ebp)
  100c8a:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100c8d:	8b 40 0c             	mov    0xc(%eax),%eax
  100c90:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100c93:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  100c97:	75 e1                	jne    100c7a <pmmap_insert+0x67>
  100c99:	eb 01                	jmp    100c9c <pmmap_insert+0x89>
  100c9b:	90                   	nop
  100c9c:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
  100ca0:	75 17                	jne    100cb9 <pmmap_insert+0xa6>
  100ca2:	8b 93 70 70 00 00    	mov    0x7070(%ebx),%edx
  100ca8:	8b 45 ec             	mov    -0x14(%ebp),%eax
  100cab:	89 50 0c             	mov    %edx,0xc(%eax)
  100cae:	8b 45 ec             	mov    -0x14(%ebp),%eax
  100cb1:	89 83 70 70 00 00    	mov    %eax,0x7070(%ebx)
  100cb7:	eb 15                	jmp    100cce <pmmap_insert+0xbb>
  100cb9:	8b 45 f0             	mov    -0x10(%ebp),%eax
  100cbc:	8b 50 0c             	mov    0xc(%eax),%edx
  100cbf:	8b 45 ec             	mov    -0x14(%ebp),%eax
  100cc2:	89 50 0c             	mov    %edx,0xc(%eax)
  100cc5:	8b 45 f0             	mov    -0x10(%ebp),%eax
  100cc8:	8b 55 ec             	mov    -0x14(%ebp),%edx
  100ccb:	89 50 0c             	mov    %edx,0xc(%eax)
  100cce:	90                   	nop
  100ccf:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100cd2:	c9                   	leave
  100cd3:	c3                   	ret

00100cd4 <pmmap_merge>:
  100cd4:	55                   	push   %ebp
  100cd5:	89 e5                	mov    %esp,%ebp
  100cd7:	53                   	push   %ebx
  100cd8:	83 ec 24             	sub    $0x24,%esp
  100cdb:	e8 35 f7 ff ff       	call   100415 <__x86.get_pc_thunk.bx>
  100ce0:	81 c3 14 c3 00 00    	add    $0xc314,%ebx
  100ce6:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
  100ced:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
  100cf4:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
  100cfb:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
  100d02:	8b 83 70 70 00 00    	mov    0x7070(%ebx),%eax
  100d08:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100d0b:	eb 73                	jmp    100d80 <pmmap_merge+0xac>
  100d0d:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100d10:	8b 40 0c             	mov    0xc(%eax),%eax
  100d13:	89 45 f0             	mov    %eax,-0x10(%ebp)
  100d16:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
  100d1a:	74 6c                	je     100d88 <pmmap_merge+0xb4>
  100d1c:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100d1f:	8b 00                	mov    (%eax),%eax
  100d21:	8b 55 f0             	mov    -0x10(%ebp),%edx
  100d24:	8b 12                	mov    (%edx),%edx
  100d26:	39 c2                	cmp    %eax,%edx
  100d28:	72 4d                	jb     100d77 <pmmap_merge+0xa3>
  100d2a:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100d2d:	8b 50 04             	mov    0x4(%eax),%edx
  100d30:	8b 45 f0             	mov    -0x10(%ebp),%eax
  100d33:	8b 00                	mov    (%eax),%eax
  100d35:	39 c2                	cmp    %eax,%edx
  100d37:	72 3e                	jb     100d77 <pmmap_merge+0xa3>
  100d39:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100d3c:	8b 50 08             	mov    0x8(%eax),%edx
  100d3f:	8b 45 f0             	mov    -0x10(%ebp),%eax
  100d42:	8b 40 08             	mov    0x8(%eax),%eax
  100d45:	39 c2                	cmp    %eax,%edx
  100d47:	75 2e                	jne    100d77 <pmmap_merge+0xa3>
  100d49:	8b 45 f0             	mov    -0x10(%ebp),%eax
  100d4c:	8b 50 04             	mov    0x4(%eax),%edx
  100d4f:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100d52:	8b 40 04             	mov    0x4(%eax),%eax
  100d55:	83 ec 08             	sub    $0x8,%esp
  100d58:	52                   	push   %edx
  100d59:	50                   	push   %eax
  100d5a:	e8 c2 2a 00 00       	call   103821 <max>
  100d5f:	83 c4 10             	add    $0x10,%esp
  100d62:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100d65:	89 42 04             	mov    %eax,0x4(%edx)
  100d68:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100d6b:	8b 40 0c             	mov    0xc(%eax),%eax
  100d6e:	8b 50 0c             	mov    0xc(%eax),%edx
  100d71:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100d74:	89 50 0c             	mov    %edx,0xc(%eax)
  100d77:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100d7a:	8b 40 0c             	mov    0xc(%eax),%eax
  100d7d:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100d80:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  100d84:	75 87                	jne    100d0d <pmmap_merge+0x39>
  100d86:	eb 01                	jmp    100d89 <pmmap_merge+0xb5>
  100d88:	90                   	nop
  100d89:	8b 83 70 70 00 00    	mov    0x7070(%ebx),%eax
  100d8f:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100d92:	e9 cf 00 00 00       	jmp    100e66 <pmmap_merge+0x192>
  100d97:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100d9a:	8b 40 08             	mov    0x8(%eax),%eax
  100d9d:	83 f8 01             	cmp    $0x1,%eax
  100da0:	74 3d                	je     100ddf <pmmap_merge+0x10b>
  100da2:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100da5:	8b 40 08             	mov    0x8(%eax),%eax
  100da8:	83 f8 02             	cmp    $0x2,%eax
  100dab:	74 2b                	je     100dd8 <pmmap_merge+0x104>
  100dad:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100db0:	8b 40 08             	mov    0x8(%eax),%eax
  100db3:	83 f8 03             	cmp    $0x3,%eax
  100db6:	74 19                	je     100dd1 <pmmap_merge+0xfd>
  100db8:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100dbb:	8b 40 08             	mov    0x8(%eax),%eax
  100dbe:	83 f8 04             	cmp    $0x4,%eax
  100dc1:	75 07                	jne    100dca <pmmap_merge+0xf6>
  100dc3:	b8 03 00 00 00       	mov    $0x3,%eax
  100dc8:	eb 1a                	jmp    100de4 <pmmap_merge+0x110>
  100dca:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  100dcf:	eb 13                	jmp    100de4 <pmmap_merge+0x110>
  100dd1:	b8 02 00 00 00       	mov    $0x2,%eax
  100dd6:	eb 0c                	jmp    100de4 <pmmap_merge+0x110>
  100dd8:	b8 01 00 00 00       	mov    $0x1,%eax
  100ddd:	eb 05                	jmp    100de4 <pmmap_merge+0x110>
  100ddf:	b8 00 00 00 00       	mov    $0x0,%eax
  100de4:	89 45 ec             	mov    %eax,-0x14(%ebp)
  100de7:	83 7d ec ff          	cmpl   $0xffffffff,-0x14(%ebp)
  100deb:	75 1f                	jne    100e0c <pmmap_merge+0x138>
  100ded:	8d 83 a6 b0 ff ff    	lea    -0x4f5a(%ebx),%eax
  100df3:	50                   	push   %eax
  100df4:	8d 83 b7 b0 ff ff    	lea    -0x4f49(%ebx),%eax
  100dfa:	50                   	push   %eax
  100dfb:	6a 6b                	push   $0x6b
  100dfd:	8d 83 95 b0 ff ff    	lea    -0x4f6b(%ebx),%eax
  100e03:	50                   	push   %eax
  100e04:	e8 9b 1d 00 00       	call   102ba4 <debug_panic>
  100e09:	83 c4 10             	add    $0x10,%esp
  100e0c:	8b 45 ec             	mov    -0x14(%ebp),%eax
  100e0f:	8b 44 85 dc          	mov    -0x24(%ebp,%eax,4),%eax
  100e13:	85 c0                	test   %eax,%eax
  100e15:	74 1f                	je     100e36 <pmmap_merge+0x162>
  100e17:	8b 45 ec             	mov    -0x14(%ebp),%eax
  100e1a:	8b 44 85 dc          	mov    -0x24(%ebp,%eax,4),%eax
  100e1e:	8b 50 10             	mov    0x10(%eax),%edx
  100e21:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100e24:	89 50 10             	mov    %edx,0x10(%eax)
  100e27:	8b 45 ec             	mov    -0x14(%ebp),%eax
  100e2a:	8b 44 85 dc          	mov    -0x24(%ebp,%eax,4),%eax
  100e2e:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100e31:	89 50 10             	mov    %edx,0x10(%eax)
  100e34:	eb 1d                	jmp    100e53 <pmmap_merge+0x17f>
  100e36:	8b 45 ec             	mov    -0x14(%ebp),%eax
  100e39:	8b 94 83 74 70 00 00 	mov    0x7074(%ebx,%eax,4),%edx
  100e40:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100e43:	89 50 10             	mov    %edx,0x10(%eax)
  100e46:	8b 45 ec             	mov    -0x14(%ebp),%eax
  100e49:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100e4c:	89 94 83 74 70 00 00 	mov    %edx,0x7074(%ebx,%eax,4)
  100e53:	8b 45 ec             	mov    -0x14(%ebp),%eax
  100e56:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100e59:	89 54 85 dc          	mov    %edx,-0x24(%ebp,%eax,4)
  100e5d:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100e60:	8b 40 0c             	mov    0xc(%eax),%eax
  100e63:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100e66:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  100e6a:	0f 85 27 ff ff ff    	jne    100d97 <pmmap_merge+0xc3>
  100e70:	8b 45 dc             	mov    -0x24(%ebp),%eax
  100e73:	85 c0                	test   %eax,%eax
  100e75:	74 0c                	je     100e83 <pmmap_merge+0x1af>
  100e77:	8b 45 dc             	mov    -0x24(%ebp),%eax
  100e7a:	8b 40 04             	mov    0x4(%eax),%eax
  100e7d:	89 83 84 70 00 00    	mov    %eax,0x7084(%ebx)
  100e83:	90                   	nop
  100e84:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100e87:	c9                   	leave
  100e88:	c3                   	ret

00100e89 <pmmap_dump>:
  100e89:	55                   	push   %ebp
  100e8a:	89 e5                	mov    %esp,%ebp
  100e8c:	53                   	push   %ebx
  100e8d:	83 ec 14             	sub    $0x14,%esp
  100e90:	e8 80 f5 ff ff       	call   100415 <__x86.get_pc_thunk.bx>
  100e95:	81 c3 5f c1 00 00    	add    $0xc15f,%ebx
  100e9b:	8b 83 70 70 00 00    	mov    0x7070(%ebx),%eax
  100ea1:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100ea4:	e9 a5 00 00 00       	jmp    100f4e <pmmap_dump+0xc5>
  100ea9:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100eac:	8b 40 08             	mov    0x8(%eax),%eax
  100eaf:	83 f8 01             	cmp    $0x1,%eax
  100eb2:	74 41                	je     100ef5 <pmmap_dump+0x6c>
  100eb4:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100eb7:	8b 40 08             	mov    0x8(%eax),%eax
  100eba:	83 f8 02             	cmp    $0x2,%eax
  100ebd:	74 2e                	je     100eed <pmmap_dump+0x64>
  100ebf:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100ec2:	8b 40 08             	mov    0x8(%eax),%eax
  100ec5:	83 f8 03             	cmp    $0x3,%eax
  100ec8:	74 1b                	je     100ee5 <pmmap_dump+0x5c>
  100eca:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100ecd:	8b 40 08             	mov    0x8(%eax),%eax
  100ed0:	83 f8 04             	cmp    $0x4,%eax
  100ed3:	75 08                	jne    100edd <pmmap_dump+0x54>
  100ed5:	8d 83 d4 b0 ff ff    	lea    -0x4f2c(%ebx),%eax
  100edb:	eb 1e                	jmp    100efb <pmmap_dump+0x72>
  100edd:	8d 83 dd b0 ff ff    	lea    -0x4f23(%ebx),%eax
  100ee3:	eb 16                	jmp    100efb <pmmap_dump+0x72>
  100ee5:	8d 83 e5 b0 ff ff    	lea    -0x4f1b(%ebx),%eax
  100eeb:	eb 0e                	jmp    100efb <pmmap_dump+0x72>
  100eed:	8d 83 ef b0 ff ff    	lea    -0x4f11(%ebx),%eax
  100ef3:	eb 06                	jmp    100efb <pmmap_dump+0x72>
  100ef5:	8d 83 f8 b0 ff ff    	lea    -0x4f08(%ebx),%eax
  100efb:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100efe:	8b 0a                	mov    (%edx),%ecx
  100f00:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100f03:	8b 52 04             	mov    0x4(%edx),%edx
  100f06:	39 d1                	cmp    %edx,%ecx
  100f08:	75 08                	jne    100f12 <pmmap_dump+0x89>
  100f0a:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100f0d:	8b 52 04             	mov    0x4(%edx),%edx
  100f10:	eb 1c                	jmp    100f2e <pmmap_dump+0xa5>
  100f12:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100f15:	8b 52 04             	mov    0x4(%edx),%edx
  100f18:	83 fa ff             	cmp    $0xffffffff,%edx
  100f1b:	75 08                	jne    100f25 <pmmap_dump+0x9c>
  100f1d:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100f20:	8b 52 04             	mov    0x4(%edx),%edx
  100f23:	eb 09                	jmp    100f2e <pmmap_dump+0xa5>
  100f25:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100f28:	8b 52 04             	mov    0x4(%edx),%edx
  100f2b:	83 ea 01             	sub    $0x1,%edx
  100f2e:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  100f31:	8b 09                	mov    (%ecx),%ecx
  100f33:	50                   	push   %eax
  100f34:	52                   	push   %edx
  100f35:	51                   	push   %ecx
  100f36:	8d 83 00 b1 ff ff    	lea    -0x4f00(%ebx),%eax
  100f3c:	50                   	push   %eax
  100f3d:	e8 76 1b 00 00       	call   102ab8 <debug_info>
  100f42:	83 c4 10             	add    $0x10,%esp
  100f45:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100f48:	8b 40 0c             	mov    0xc(%eax),%eax
  100f4b:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100f4e:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  100f52:	0f 85 51 ff ff ff    	jne    100ea9 <pmmap_dump+0x20>
  100f58:	90                   	nop
  100f59:	90                   	nop
  100f5a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100f5d:	c9                   	leave
  100f5e:	c3                   	ret

00100f5f <pmmap_init>:
  100f5f:	55                   	push   %ebp
  100f60:	89 e5                	mov    %esp,%ebp
  100f62:	53                   	push   %ebx
  100f63:	83 ec 24             	sub    $0x24,%esp
  100f66:	e8 aa f4 ff ff       	call   100415 <__x86.get_pc_thunk.bx>
  100f6b:	81 c3 89 c0 00 00    	add    $0xc089,%ebx
  100f71:	83 ec 0c             	sub    $0xc,%esp
  100f74:	8d 83 21 b1 ff ff    	lea    -0x4edf(%ebx),%eax
  100f7a:	50                   	push   %eax
  100f7b:	e8 38 1b 00 00       	call   102ab8 <debug_info>
  100f80:	83 c4 10             	add    $0x10,%esp
  100f83:	8b 45 08             	mov    0x8(%ebp),%eax
  100f86:	89 45 e8             	mov    %eax,-0x18(%ebp)
  100f89:	8b 45 e8             	mov    -0x18(%ebp),%eax
  100f8c:	8b 40 30             	mov    0x30(%eax),%eax
  100f8f:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100f92:	c7 83 70 70 00 00 00 	movl   $0x0,0x7070(%ebx)
  100f99:	00 00 00 
  100f9c:	c7 83 74 70 00 00 00 	movl   $0x0,0x7074(%ebx)
  100fa3:	00 00 00 
  100fa6:	c7 83 78 70 00 00 00 	movl   $0x0,0x7078(%ebx)
  100fad:	00 00 00 
  100fb0:	c7 83 7c 70 00 00 00 	movl   $0x0,0x707c(%ebx)
  100fb7:	00 00 00 
  100fba:	c7 83 80 70 00 00 00 	movl   $0x0,0x7080(%ebx)
  100fc1:	00 00 00 
  100fc4:	eb 6c                	jmp    101032 <pmmap_init+0xd3>
  100fc6:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100fc9:	8b 40 08             	mov    0x8(%eax),%eax
  100fcc:	85 c0                	test   %eax,%eax
  100fce:	75 58                	jne    101028 <pmmap_init+0xc9>
  100fd0:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100fd3:	8b 40 04             	mov    0x4(%eax),%eax
  100fd6:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  100fd9:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100fdc:	8b 40 10             	mov    0x10(%eax),%eax
  100fdf:	85 c0                	test   %eax,%eax
  100fe1:	75 0f                	jne    100ff2 <pmmap_init+0x93>
  100fe3:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100fe6:	8b 50 0c             	mov    0xc(%eax),%edx
  100fe9:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  100fec:	f7 d0                	not    %eax
  100fee:	39 c2                	cmp    %eax,%edx
  100ff0:	72 09                	jb     100ffb <pmmap_init+0x9c>
  100ff2:	c7 45 f0 ff ff ff ff 	movl   $0xffffffff,-0x10(%ebp)
  100ff9:	eb 0e                	jmp    101009 <pmmap_init+0xaa>
  100ffb:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100ffe:	8b 50 0c             	mov    0xc(%eax),%edx
  101001:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  101004:	01 d0                	add    %edx,%eax
  101006:	89 45 f0             	mov    %eax,-0x10(%ebp)
  101009:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10100c:	8b 40 14             	mov    0x14(%eax),%eax
  10100f:	89 45 e0             	mov    %eax,-0x20(%ebp)
  101012:	83 ec 04             	sub    $0x4,%esp
  101015:	ff 75 e0             	push   -0x20(%ebp)
  101018:	ff 75 f0             	push   -0x10(%ebp)
  10101b:	ff 75 e4             	push   -0x1c(%ebp)
  10101e:	e8 f0 fb ff ff       	call   100c13 <pmmap_insert>
  101023:	83 c4 10             	add    $0x10,%esp
  101026:	eb 01                	jmp    101029 <pmmap_init+0xca>
  101028:	90                   	nop
  101029:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10102c:	83 c0 18             	add    $0x18,%eax
  10102f:	89 45 f4             	mov    %eax,-0xc(%ebp)
  101032:	8b 55 f4             	mov    -0xc(%ebp),%edx
  101035:	8b 45 e8             	mov    -0x18(%ebp),%eax
  101038:	8b 40 30             	mov    0x30(%eax),%eax
  10103b:	29 c2                	sub    %eax,%edx
  10103d:	8b 45 e8             	mov    -0x18(%ebp),%eax
  101040:	8b 40 2c             	mov    0x2c(%eax),%eax
  101043:	39 c2                	cmp    %eax,%edx
  101045:	0f 82 7b ff ff ff    	jb     100fc6 <pmmap_init+0x67>
  10104b:	e8 84 fc ff ff       	call   100cd4 <pmmap_merge>
  101050:	e8 34 fe ff ff       	call   100e89 <pmmap_dump>
  101055:	8b 83 70 70 00 00    	mov    0x7070(%ebx),%eax
  10105b:	89 45 ec             	mov    %eax,-0x14(%ebp)
  10105e:	eb 18                	jmp    101078 <pmmap_init+0x119>
  101060:	8b 83 8c 70 00 00    	mov    0x708c(%ebx),%eax
  101066:	83 c0 01             	add    $0x1,%eax
  101069:	89 83 8c 70 00 00    	mov    %eax,0x708c(%ebx)
  10106f:	8b 45 ec             	mov    -0x14(%ebp),%eax
  101072:	8b 40 0c             	mov    0xc(%eax),%eax
  101075:	89 45 ec             	mov    %eax,-0x14(%ebp)
  101078:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
  10107c:	75 e2                	jne    101060 <pmmap_init+0x101>
  10107e:	8b 83 84 70 00 00    	mov    0x7084(%ebx),%eax
  101084:	83 ec 08             	sub    $0x8,%esp
  101087:	68 00 10 00 00       	push   $0x1000
  10108c:	50                   	push   %eax
  10108d:	e8 c3 27 00 00       	call   103855 <rounddown>
  101092:	83 c4 10             	add    $0x10,%esp
  101095:	c1 e8 0c             	shr    $0xc,%eax
  101098:	89 83 88 70 00 00    	mov    %eax,0x7088(%ebx)
  10109e:	90                   	nop
  10109f:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1010a2:	c9                   	leave
  1010a3:	c3                   	ret

001010a4 <get_size>:
  1010a4:	55                   	push   %ebp
  1010a5:	89 e5                	mov    %esp,%ebp
  1010a7:	e8 61 f3 ff ff       	call   10040d <__x86.get_pc_thunk.ax>
  1010ac:	05 48 bf 00 00       	add    $0xbf48,%eax
  1010b1:	8b 80 8c 70 00 00    	mov    0x708c(%eax),%eax
  1010b7:	5d                   	pop    %ebp
  1010b8:	c3                   	ret

001010b9 <get_mms>:
  1010b9:	55                   	push   %ebp
  1010ba:	89 e5                	mov    %esp,%ebp
  1010bc:	83 ec 10             	sub    $0x10,%esp
  1010bf:	e8 49 f3 ff ff       	call   10040d <__x86.get_pc_thunk.ax>
  1010c4:	05 30 bf 00 00       	add    $0xbf30,%eax
  1010c9:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  1010d0:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  1010d7:	8b 90 70 70 00 00    	mov    0x7070(%eax),%edx
  1010dd:	89 55 f8             	mov    %edx,-0x8(%ebp)
  1010e0:	eb 15                	jmp    1010f7 <get_mms+0x3e>
  1010e2:	8b 55 fc             	mov    -0x4(%ebp),%edx
  1010e5:	3b 55 08             	cmp    0x8(%ebp),%edx
  1010e8:	74 15                	je     1010ff <get_mms+0x46>
  1010ea:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  1010ee:	8b 55 f8             	mov    -0x8(%ebp),%edx
  1010f1:	8b 52 0c             	mov    0xc(%edx),%edx
  1010f4:	89 55 f8             	mov    %edx,-0x8(%ebp)
  1010f7:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
  1010fb:	75 e5                	jne    1010e2 <get_mms+0x29>
  1010fd:	eb 01                	jmp    101100 <get_mms+0x47>
  1010ff:	90                   	nop
  101100:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
  101104:	74 0b                	je     101111 <get_mms+0x58>
  101106:	8b 80 8c 70 00 00    	mov    0x708c(%eax),%eax
  10110c:	39 45 fc             	cmp    %eax,-0x4(%ebp)
  10110f:	75 07                	jne    101118 <get_mms+0x5f>
  101111:	b8 00 00 00 00       	mov    $0x0,%eax
  101116:	eb 05                	jmp    10111d <get_mms+0x64>
  101118:	8b 45 f8             	mov    -0x8(%ebp),%eax
  10111b:	8b 00                	mov    (%eax),%eax
  10111d:	c9                   	leave
  10111e:	c3                   	ret

0010111f <get_mml>:
  10111f:	55                   	push   %ebp
  101120:	89 e5                	mov    %esp,%ebp
  101122:	83 ec 10             	sub    $0x10,%esp
  101125:	e8 e3 f2 ff ff       	call   10040d <__x86.get_pc_thunk.ax>
  10112a:	05 ca be 00 00       	add    $0xbeca,%eax
  10112f:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  101136:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  10113d:	8b 90 70 70 00 00    	mov    0x7070(%eax),%edx
  101143:	89 55 f8             	mov    %edx,-0x8(%ebp)
  101146:	eb 15                	jmp    10115d <get_mml+0x3e>
  101148:	8b 55 fc             	mov    -0x4(%ebp),%edx
  10114b:	3b 55 08             	cmp    0x8(%ebp),%edx
  10114e:	74 15                	je     101165 <get_mml+0x46>
  101150:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  101154:	8b 55 f8             	mov    -0x8(%ebp),%edx
  101157:	8b 52 0c             	mov    0xc(%edx),%edx
  10115a:	89 55 f8             	mov    %edx,-0x8(%ebp)
  10115d:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
  101161:	75 e5                	jne    101148 <get_mml+0x29>
  101163:	eb 01                	jmp    101166 <get_mml+0x47>
  101165:	90                   	nop
  101166:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
  10116a:	74 0b                	je     101177 <get_mml+0x58>
  10116c:	8b 80 8c 70 00 00    	mov    0x708c(%eax),%eax
  101172:	39 45 fc             	cmp    %eax,-0x4(%ebp)
  101175:	75 07                	jne    10117e <get_mml+0x5f>
  101177:	ba 00 00 00 00       	mov    $0x0,%edx
  10117c:	eb 0d                	jmp    10118b <get_mml+0x6c>
  10117e:	8b 45 f8             	mov    -0x8(%ebp),%eax
  101181:	8b 50 04             	mov    0x4(%eax),%edx
  101184:	8b 45 f8             	mov    -0x8(%ebp),%eax
  101187:	8b 00                	mov    (%eax),%eax
  101189:	29 c2                	sub    %eax,%edx
  10118b:	89 d0                	mov    %edx,%eax
  10118d:	c9                   	leave
  10118e:	c3                   	ret

0010118f <is_usable>:
  10118f:	55                   	push   %ebp
  101190:	89 e5                	mov    %esp,%ebp
  101192:	83 ec 10             	sub    $0x10,%esp
  101195:	e8 73 f2 ff ff       	call   10040d <__x86.get_pc_thunk.ax>
  10119a:	05 5a be 00 00       	add    $0xbe5a,%eax
  10119f:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  1011a6:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  1011ad:	8b 90 70 70 00 00    	mov    0x7070(%eax),%edx
  1011b3:	89 55 f8             	mov    %edx,-0x8(%ebp)
  1011b6:	eb 15                	jmp    1011cd <is_usable+0x3e>
  1011b8:	8b 55 fc             	mov    -0x4(%ebp),%edx
  1011bb:	3b 55 08             	cmp    0x8(%ebp),%edx
  1011be:	74 15                	je     1011d5 <is_usable+0x46>
  1011c0:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  1011c4:	8b 55 f8             	mov    -0x8(%ebp),%edx
  1011c7:	8b 52 0c             	mov    0xc(%edx),%edx
  1011ca:	89 55 f8             	mov    %edx,-0x8(%ebp)
  1011cd:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
  1011d1:	75 e5                	jne    1011b8 <is_usable+0x29>
  1011d3:	eb 01                	jmp    1011d6 <is_usable+0x47>
  1011d5:	90                   	nop
  1011d6:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
  1011da:	74 0b                	je     1011e7 <is_usable+0x58>
  1011dc:	8b 80 8c 70 00 00    	mov    0x708c(%eax),%eax
  1011e2:	39 45 fc             	cmp    %eax,-0x4(%ebp)
  1011e5:	75 07                	jne    1011ee <is_usable+0x5f>
  1011e7:	b8 00 00 00 00       	mov    $0x0,%eax
  1011ec:	eb 0f                	jmp    1011fd <is_usable+0x6e>
  1011ee:	8b 45 f8             	mov    -0x8(%ebp),%eax
  1011f1:	8b 40 08             	mov    0x8(%eax),%eax
  1011f4:	83 f8 01             	cmp    $0x1,%eax
  1011f7:	0f 94 c0             	sete   %al
  1011fa:	0f b6 c0             	movzbl %al,%eax
  1011fd:	c9                   	leave
  1011fe:	c3                   	ret

001011ff <set_cr3>:
  1011ff:	55                   	push   %ebp
  101200:	89 e5                	mov    %esp,%ebp
  101202:	53                   	push   %ebx
  101203:	83 ec 04             	sub    $0x4,%esp
  101206:	e8 02 f2 ff ff       	call   10040d <__x86.get_pc_thunk.ax>
  10120b:	05 e9 bd 00 00       	add    $0xbde9,%eax
  101210:	8b 55 08             	mov    0x8(%ebp),%edx
  101213:	83 ec 0c             	sub    $0xc,%esp
  101216:	52                   	push   %edx
  101217:	89 c3                	mov    %eax,%ebx
  101219:	e8 b5 28 00 00       	call   103ad3 <lcr3>
  10121e:	83 c4 10             	add    $0x10,%esp
  101221:	90                   	nop
  101222:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  101225:	c9                   	leave
  101226:	c3                   	ret

00101227 <enable_paging>:
  101227:	55                   	push   %ebp
  101228:	89 e5                	mov    %esp,%ebp
  10122a:	53                   	push   %ebx
  10122b:	83 ec 14             	sub    $0x14,%esp
  10122e:	e8 e2 f1 ff ff       	call   100415 <__x86.get_pc_thunk.bx>
  101233:	81 c3 c1 bd 00 00    	add    $0xbdc1,%ebx
  101239:	e8 c1 28 00 00       	call   103aff <rcr4>
  10123e:	89 45 f4             	mov    %eax,-0xc(%ebp)
  101241:	81 4d f4 80 00 00 00 	orl    $0x80,-0xc(%ebp)
  101248:	83 ec 0c             	sub    $0xc,%esp
  10124b:	ff 75 f4             	push   -0xc(%ebp)
  10124e:	e8 96 28 00 00       	call   103ae9 <lcr4>
  101253:	83 c4 10             	add    $0x10,%esp
  101256:	e8 42 28 00 00       	call   103a9d <rcr0>
  10125b:	89 45 f0             	mov    %eax,-0x10(%ebp)
  10125e:	81 4d f0 23 00 05 80 	orl    $0x80050023,-0x10(%ebp)
  101265:	83 65 f0 f3          	andl   $0xfffffff3,-0x10(%ebp)
  101269:	83 ec 0c             	sub    $0xc,%esp
  10126c:	ff 75 f0             	push   -0x10(%ebp)
  10126f:	e8 13 28 00 00       	call   103a87 <lcr0>
  101274:	83 c4 10             	add    $0x10,%esp
  101277:	90                   	nop
  101278:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  10127b:	c9                   	leave
  10127c:	c3                   	ret

0010127d <intr_init_idt>:
  10127d:	55                   	push   %ebp
  10127e:	89 e5                	mov    %esp,%ebp
  101280:	83 ec 10             	sub    $0x10,%esp
  101283:	e8 85 f1 ff ff       	call   10040d <__x86.get_pc_thunk.ax>
  101288:	05 6c bd 00 00       	add    $0xbd6c,%eax
  10128d:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  101294:	e9 bb 00 00 00       	jmp    101354 <intr_init_idt+0xd7>
  101299:	c7 c2 be 27 10 00    	mov    $0x1027be,%edx
  10129f:	89 d1                	mov    %edx,%ecx
  1012a1:	8b 55 fc             	mov    -0x4(%ebp),%edx
  1012a4:	66 89 8c d0 ac 70 00 	mov    %cx,0x70ac(%eax,%edx,8)
  1012ab:	00 
  1012ac:	8b 55 fc             	mov    -0x4(%ebp),%edx
  1012af:	66 c7 84 d0 ae 70 00 	movw   $0x8,0x70ae(%eax,%edx,8)
  1012b6:	00 08 00 
  1012b9:	8b 55 fc             	mov    -0x4(%ebp),%edx
  1012bc:	0f b6 8c d0 b0 70 00 	movzbl 0x70b0(%eax,%edx,8),%ecx
  1012c3:	00 
  1012c4:	83 e1 e0             	and    $0xffffffe0,%ecx
  1012c7:	88 8c d0 b0 70 00 00 	mov    %cl,0x70b0(%eax,%edx,8)
  1012ce:	8b 55 fc             	mov    -0x4(%ebp),%edx
  1012d1:	0f b6 8c d0 b0 70 00 	movzbl 0x70b0(%eax,%edx,8),%ecx
  1012d8:	00 
  1012d9:	83 e1 1f             	and    $0x1f,%ecx
  1012dc:	88 8c d0 b0 70 00 00 	mov    %cl,0x70b0(%eax,%edx,8)
  1012e3:	8b 55 fc             	mov    -0x4(%ebp),%edx
  1012e6:	0f b6 8c d0 b1 70 00 	movzbl 0x70b1(%eax,%edx,8),%ecx
  1012ed:	00 
  1012ee:	83 e1 f0             	and    $0xfffffff0,%ecx
  1012f1:	83 c9 0e             	or     $0xe,%ecx
  1012f4:	88 8c d0 b1 70 00 00 	mov    %cl,0x70b1(%eax,%edx,8)
  1012fb:	8b 55 fc             	mov    -0x4(%ebp),%edx
  1012fe:	0f b6 8c d0 b1 70 00 	movzbl 0x70b1(%eax,%edx,8),%ecx
  101305:	00 
  101306:	83 e1 ef             	and    $0xffffffef,%ecx
  101309:	88 8c d0 b1 70 00 00 	mov    %cl,0x70b1(%eax,%edx,8)
  101310:	8b 55 fc             	mov    -0x4(%ebp),%edx
  101313:	0f b6 8c d0 b1 70 00 	movzbl 0x70b1(%eax,%edx,8),%ecx
  10131a:	00 
  10131b:	83 e1 9f             	and    $0xffffff9f,%ecx
  10131e:	88 8c d0 b1 70 00 00 	mov    %cl,0x70b1(%eax,%edx,8)
  101325:	8b 55 fc             	mov    -0x4(%ebp),%edx
  101328:	0f b6 8c d0 b1 70 00 	movzbl 0x70b1(%eax,%edx,8),%ecx
  10132f:	00 
  101330:	83 c9 80             	or     $0xffffff80,%ecx
  101333:	88 8c d0 b1 70 00 00 	mov    %cl,0x70b1(%eax,%edx,8)
  10133a:	c7 c2 be 27 10 00    	mov    $0x1027be,%edx
  101340:	c1 ea 10             	shr    $0x10,%edx
  101343:	89 d1                	mov    %edx,%ecx
  101345:	8b 55 fc             	mov    -0x4(%ebp),%edx
  101348:	66 89 8c d0 b2 70 00 	mov    %cx,0x70b2(%eax,%edx,8)
  10134f:	00 
  101350:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  101354:	8b 55 fc             	mov    -0x4(%ebp),%edx
  101357:	81 fa ff 00 00 00    	cmp    $0xff,%edx
  10135d:	0f 86 36 ff ff ff    	jbe    101299 <intr_init_idt+0x1c>
  101363:	c7 c2 60 26 10 00    	mov    $0x102660,%edx
  101369:	66 89 90 ac 70 00 00 	mov    %dx,0x70ac(%eax)
  101370:	66 c7 80 ae 70 00 00 	movw   $0x8,0x70ae(%eax)
  101377:	08 00 
  101379:	0f b6 90 b0 70 00 00 	movzbl 0x70b0(%eax),%edx
  101380:	83 e2 e0             	and    $0xffffffe0,%edx
  101383:	88 90 b0 70 00 00    	mov    %dl,0x70b0(%eax)
  101389:	0f b6 90 b0 70 00 00 	movzbl 0x70b0(%eax),%edx
  101390:	83 e2 1f             	and    $0x1f,%edx
  101393:	88 90 b0 70 00 00    	mov    %dl,0x70b0(%eax)
  101399:	0f b6 90 b1 70 00 00 	movzbl 0x70b1(%eax),%edx
  1013a0:	83 e2 f0             	and    $0xfffffff0,%edx
  1013a3:	83 ca 0e             	or     $0xe,%edx
  1013a6:	88 90 b1 70 00 00    	mov    %dl,0x70b1(%eax)
  1013ac:	0f b6 90 b1 70 00 00 	movzbl 0x70b1(%eax),%edx
  1013b3:	83 e2 ef             	and    $0xffffffef,%edx
  1013b6:	88 90 b1 70 00 00    	mov    %dl,0x70b1(%eax)
  1013bc:	0f b6 90 b1 70 00 00 	movzbl 0x70b1(%eax),%edx
  1013c3:	83 e2 9f             	and    $0xffffff9f,%edx
  1013c6:	88 90 b1 70 00 00    	mov    %dl,0x70b1(%eax)
  1013cc:	0f b6 90 b1 70 00 00 	movzbl 0x70b1(%eax),%edx
  1013d3:	83 ca 80             	or     $0xffffff80,%edx
  1013d6:	88 90 b1 70 00 00    	mov    %dl,0x70b1(%eax)
  1013dc:	c7 c2 60 26 10 00    	mov    $0x102660,%edx
  1013e2:	c1 ea 10             	shr    $0x10,%edx
  1013e5:	66 89 90 b2 70 00 00 	mov    %dx,0x70b2(%eax)
  1013ec:	c7 c2 6a 26 10 00    	mov    $0x10266a,%edx
  1013f2:	66 89 90 b4 70 00 00 	mov    %dx,0x70b4(%eax)
  1013f9:	66 c7 80 b6 70 00 00 	movw   $0x8,0x70b6(%eax)
  101400:	08 00 
  101402:	0f b6 90 b8 70 00 00 	movzbl 0x70b8(%eax),%edx
  101409:	83 e2 e0             	and    $0xffffffe0,%edx
  10140c:	88 90 b8 70 00 00    	mov    %dl,0x70b8(%eax)
  101412:	0f b6 90 b8 70 00 00 	movzbl 0x70b8(%eax),%edx
  101419:	83 e2 1f             	and    $0x1f,%edx
  10141c:	88 90 b8 70 00 00    	mov    %dl,0x70b8(%eax)
  101422:	0f b6 90 b9 70 00 00 	movzbl 0x70b9(%eax),%edx
  101429:	83 e2 f0             	and    $0xfffffff0,%edx
  10142c:	83 ca 0e             	or     $0xe,%edx
  10142f:	88 90 b9 70 00 00    	mov    %dl,0x70b9(%eax)
  101435:	0f b6 90 b9 70 00 00 	movzbl 0x70b9(%eax),%edx
  10143c:	83 e2 ef             	and    $0xffffffef,%edx
  10143f:	88 90 b9 70 00 00    	mov    %dl,0x70b9(%eax)
  101445:	0f b6 90 b9 70 00 00 	movzbl 0x70b9(%eax),%edx
  10144c:	83 e2 9f             	and    $0xffffff9f,%edx
  10144f:	88 90 b9 70 00 00    	mov    %dl,0x70b9(%eax)
  101455:	0f b6 90 b9 70 00 00 	movzbl 0x70b9(%eax),%edx
  10145c:	83 ca 80             	or     $0xffffff80,%edx
  10145f:	88 90 b9 70 00 00    	mov    %dl,0x70b9(%eax)
  101465:	c7 c2 6a 26 10 00    	mov    $0x10266a,%edx
  10146b:	c1 ea 10             	shr    $0x10,%edx
  10146e:	66 89 90 ba 70 00 00 	mov    %dx,0x70ba(%eax)
  101475:	c7 c2 74 26 10 00    	mov    $0x102674,%edx
  10147b:	66 89 90 bc 70 00 00 	mov    %dx,0x70bc(%eax)
  101482:	66 c7 80 be 70 00 00 	movw   $0x8,0x70be(%eax)
  101489:	08 00 
  10148b:	0f b6 90 c0 70 00 00 	movzbl 0x70c0(%eax),%edx
  101492:	83 e2 e0             	and    $0xffffffe0,%edx
  101495:	88 90 c0 70 00 00    	mov    %dl,0x70c0(%eax)
  10149b:	0f b6 90 c0 70 00 00 	movzbl 0x70c0(%eax),%edx
  1014a2:	83 e2 1f             	and    $0x1f,%edx
  1014a5:	88 90 c0 70 00 00    	mov    %dl,0x70c0(%eax)
  1014ab:	0f b6 90 c1 70 00 00 	movzbl 0x70c1(%eax),%edx
  1014b2:	83 e2 f0             	and    $0xfffffff0,%edx
  1014b5:	83 ca 0e             	or     $0xe,%edx
  1014b8:	88 90 c1 70 00 00    	mov    %dl,0x70c1(%eax)
  1014be:	0f b6 90 c1 70 00 00 	movzbl 0x70c1(%eax),%edx
  1014c5:	83 e2 ef             	and    $0xffffffef,%edx
  1014c8:	88 90 c1 70 00 00    	mov    %dl,0x70c1(%eax)
  1014ce:	0f b6 90 c1 70 00 00 	movzbl 0x70c1(%eax),%edx
  1014d5:	83 e2 9f             	and    $0xffffff9f,%edx
  1014d8:	88 90 c1 70 00 00    	mov    %dl,0x70c1(%eax)
  1014de:	0f b6 90 c1 70 00 00 	movzbl 0x70c1(%eax),%edx
  1014e5:	83 ca 80             	or     $0xffffff80,%edx
  1014e8:	88 90 c1 70 00 00    	mov    %dl,0x70c1(%eax)
  1014ee:	c7 c2 74 26 10 00    	mov    $0x102674,%edx
  1014f4:	c1 ea 10             	shr    $0x10,%edx
  1014f7:	66 89 90 c2 70 00 00 	mov    %dx,0x70c2(%eax)
  1014fe:	c7 c2 7e 26 10 00    	mov    $0x10267e,%edx
  101504:	66 89 90 c4 70 00 00 	mov    %dx,0x70c4(%eax)
  10150b:	66 c7 80 c6 70 00 00 	movw   $0x8,0x70c6(%eax)
  101512:	08 00 
  101514:	0f b6 90 c8 70 00 00 	movzbl 0x70c8(%eax),%edx
  10151b:	83 e2 e0             	and    $0xffffffe0,%edx
  10151e:	88 90 c8 70 00 00    	mov    %dl,0x70c8(%eax)
  101524:	0f b6 90 c8 70 00 00 	movzbl 0x70c8(%eax),%edx
  10152b:	83 e2 1f             	and    $0x1f,%edx
  10152e:	88 90 c8 70 00 00    	mov    %dl,0x70c8(%eax)
  101534:	0f b6 90 c9 70 00 00 	movzbl 0x70c9(%eax),%edx
  10153b:	83 e2 f0             	and    $0xfffffff0,%edx
  10153e:	83 ca 0e             	or     $0xe,%edx
  101541:	88 90 c9 70 00 00    	mov    %dl,0x70c9(%eax)
  101547:	0f b6 90 c9 70 00 00 	movzbl 0x70c9(%eax),%edx
  10154e:	83 e2 ef             	and    $0xffffffef,%edx
  101551:	88 90 c9 70 00 00    	mov    %dl,0x70c9(%eax)
  101557:	0f b6 90 c9 70 00 00 	movzbl 0x70c9(%eax),%edx
  10155e:	83 ca 60             	or     $0x60,%edx
  101561:	88 90 c9 70 00 00    	mov    %dl,0x70c9(%eax)
  101567:	0f b6 90 c9 70 00 00 	movzbl 0x70c9(%eax),%edx
  10156e:	83 ca 80             	or     $0xffffff80,%edx
  101571:	88 90 c9 70 00 00    	mov    %dl,0x70c9(%eax)
  101577:	c7 c2 7e 26 10 00    	mov    $0x10267e,%edx
  10157d:	c1 ea 10             	shr    $0x10,%edx
  101580:	66 89 90 ca 70 00 00 	mov    %dx,0x70ca(%eax)
  101587:	c7 c2 88 26 10 00    	mov    $0x102688,%edx
  10158d:	66 89 90 cc 70 00 00 	mov    %dx,0x70cc(%eax)
  101594:	66 c7 80 ce 70 00 00 	movw   $0x8,0x70ce(%eax)
  10159b:	08 00 
  10159d:	0f b6 90 d0 70 00 00 	movzbl 0x70d0(%eax),%edx
  1015a4:	83 e2 e0             	and    $0xffffffe0,%edx
  1015a7:	88 90 d0 70 00 00    	mov    %dl,0x70d0(%eax)
  1015ad:	0f b6 90 d0 70 00 00 	movzbl 0x70d0(%eax),%edx
  1015b4:	83 e2 1f             	and    $0x1f,%edx
  1015b7:	88 90 d0 70 00 00    	mov    %dl,0x70d0(%eax)
  1015bd:	0f b6 90 d1 70 00 00 	movzbl 0x70d1(%eax),%edx
  1015c4:	83 e2 f0             	and    $0xfffffff0,%edx
  1015c7:	83 ca 0e             	or     $0xe,%edx
  1015ca:	88 90 d1 70 00 00    	mov    %dl,0x70d1(%eax)
  1015d0:	0f b6 90 d1 70 00 00 	movzbl 0x70d1(%eax),%edx
  1015d7:	83 e2 ef             	and    $0xffffffef,%edx
  1015da:	88 90 d1 70 00 00    	mov    %dl,0x70d1(%eax)
  1015e0:	0f b6 90 d1 70 00 00 	movzbl 0x70d1(%eax),%edx
  1015e7:	83 ca 60             	or     $0x60,%edx
  1015ea:	88 90 d1 70 00 00    	mov    %dl,0x70d1(%eax)
  1015f0:	0f b6 90 d1 70 00 00 	movzbl 0x70d1(%eax),%edx
  1015f7:	83 ca 80             	or     $0xffffff80,%edx
  1015fa:	88 90 d1 70 00 00    	mov    %dl,0x70d1(%eax)
  101600:	c7 c2 88 26 10 00    	mov    $0x102688,%edx
  101606:	c1 ea 10             	shr    $0x10,%edx
  101609:	66 89 90 d2 70 00 00 	mov    %dx,0x70d2(%eax)
  101610:	c7 c2 92 26 10 00    	mov    $0x102692,%edx
  101616:	66 89 90 d4 70 00 00 	mov    %dx,0x70d4(%eax)
  10161d:	66 c7 80 d6 70 00 00 	movw   $0x8,0x70d6(%eax)
  101624:	08 00 
  101626:	0f b6 90 d8 70 00 00 	movzbl 0x70d8(%eax),%edx
  10162d:	83 e2 e0             	and    $0xffffffe0,%edx
  101630:	88 90 d8 70 00 00    	mov    %dl,0x70d8(%eax)
  101636:	0f b6 90 d8 70 00 00 	movzbl 0x70d8(%eax),%edx
  10163d:	83 e2 1f             	and    $0x1f,%edx
  101640:	88 90 d8 70 00 00    	mov    %dl,0x70d8(%eax)
  101646:	0f b6 90 d9 70 00 00 	movzbl 0x70d9(%eax),%edx
  10164d:	83 e2 f0             	and    $0xfffffff0,%edx
  101650:	83 ca 0e             	or     $0xe,%edx
  101653:	88 90 d9 70 00 00    	mov    %dl,0x70d9(%eax)
  101659:	0f b6 90 d9 70 00 00 	movzbl 0x70d9(%eax),%edx
  101660:	83 e2 ef             	and    $0xffffffef,%edx
  101663:	88 90 d9 70 00 00    	mov    %dl,0x70d9(%eax)
  101669:	0f b6 90 d9 70 00 00 	movzbl 0x70d9(%eax),%edx
  101670:	83 e2 9f             	and    $0xffffff9f,%edx
  101673:	88 90 d9 70 00 00    	mov    %dl,0x70d9(%eax)
  101679:	0f b6 90 d9 70 00 00 	movzbl 0x70d9(%eax),%edx
  101680:	83 ca 80             	or     $0xffffff80,%edx
  101683:	88 90 d9 70 00 00    	mov    %dl,0x70d9(%eax)
  101689:	c7 c2 92 26 10 00    	mov    $0x102692,%edx
  10168f:	c1 ea 10             	shr    $0x10,%edx
  101692:	66 89 90 da 70 00 00 	mov    %dx,0x70da(%eax)
  101699:	c7 c2 9c 26 10 00    	mov    $0x10269c,%edx
  10169f:	66 89 90 dc 70 00 00 	mov    %dx,0x70dc(%eax)
  1016a6:	66 c7 80 de 70 00 00 	movw   $0x8,0x70de(%eax)
  1016ad:	08 00 
  1016af:	0f b6 90 e0 70 00 00 	movzbl 0x70e0(%eax),%edx
  1016b6:	83 e2 e0             	and    $0xffffffe0,%edx
  1016b9:	88 90 e0 70 00 00    	mov    %dl,0x70e0(%eax)
  1016bf:	0f b6 90 e0 70 00 00 	movzbl 0x70e0(%eax),%edx
  1016c6:	83 e2 1f             	and    $0x1f,%edx
  1016c9:	88 90 e0 70 00 00    	mov    %dl,0x70e0(%eax)
  1016cf:	0f b6 90 e1 70 00 00 	movzbl 0x70e1(%eax),%edx
  1016d6:	83 e2 f0             	and    $0xfffffff0,%edx
  1016d9:	83 ca 0e             	or     $0xe,%edx
  1016dc:	88 90 e1 70 00 00    	mov    %dl,0x70e1(%eax)
  1016e2:	0f b6 90 e1 70 00 00 	movzbl 0x70e1(%eax),%edx
  1016e9:	83 e2 ef             	and    $0xffffffef,%edx
  1016ec:	88 90 e1 70 00 00    	mov    %dl,0x70e1(%eax)
  1016f2:	0f b6 90 e1 70 00 00 	movzbl 0x70e1(%eax),%edx
  1016f9:	83 e2 9f             	and    $0xffffff9f,%edx
  1016fc:	88 90 e1 70 00 00    	mov    %dl,0x70e1(%eax)
  101702:	0f b6 90 e1 70 00 00 	movzbl 0x70e1(%eax),%edx
  101709:	83 ca 80             	or     $0xffffff80,%edx
  10170c:	88 90 e1 70 00 00    	mov    %dl,0x70e1(%eax)
  101712:	c7 c2 9c 26 10 00    	mov    $0x10269c,%edx
  101718:	c1 ea 10             	shr    $0x10,%edx
  10171b:	66 89 90 e2 70 00 00 	mov    %dx,0x70e2(%eax)
  101722:	c7 c2 a6 26 10 00    	mov    $0x1026a6,%edx
  101728:	66 89 90 e4 70 00 00 	mov    %dx,0x70e4(%eax)
  10172f:	66 c7 80 e6 70 00 00 	movw   $0x8,0x70e6(%eax)
  101736:	08 00 
  101738:	0f b6 90 e8 70 00 00 	movzbl 0x70e8(%eax),%edx
  10173f:	83 e2 e0             	and    $0xffffffe0,%edx
  101742:	88 90 e8 70 00 00    	mov    %dl,0x70e8(%eax)
  101748:	0f b6 90 e8 70 00 00 	movzbl 0x70e8(%eax),%edx
  10174f:	83 e2 1f             	and    $0x1f,%edx
  101752:	88 90 e8 70 00 00    	mov    %dl,0x70e8(%eax)
  101758:	0f b6 90 e9 70 00 00 	movzbl 0x70e9(%eax),%edx
  10175f:	83 e2 f0             	and    $0xfffffff0,%edx
  101762:	83 ca 0e             	or     $0xe,%edx
  101765:	88 90 e9 70 00 00    	mov    %dl,0x70e9(%eax)
  10176b:	0f b6 90 e9 70 00 00 	movzbl 0x70e9(%eax),%edx
  101772:	83 e2 ef             	and    $0xffffffef,%edx
  101775:	88 90 e9 70 00 00    	mov    %dl,0x70e9(%eax)
  10177b:	0f b6 90 e9 70 00 00 	movzbl 0x70e9(%eax),%edx
  101782:	83 e2 9f             	and    $0xffffff9f,%edx
  101785:	88 90 e9 70 00 00    	mov    %dl,0x70e9(%eax)
  10178b:	0f b6 90 e9 70 00 00 	movzbl 0x70e9(%eax),%edx
  101792:	83 ca 80             	or     $0xffffff80,%edx
  101795:	88 90 e9 70 00 00    	mov    %dl,0x70e9(%eax)
  10179b:	c7 c2 a6 26 10 00    	mov    $0x1026a6,%edx
  1017a1:	c1 ea 10             	shr    $0x10,%edx
  1017a4:	66 89 90 ea 70 00 00 	mov    %dx,0x70ea(%eax)
  1017ab:	c7 c2 b0 26 10 00    	mov    $0x1026b0,%edx
  1017b1:	66 89 90 ec 70 00 00 	mov    %dx,0x70ec(%eax)
  1017b8:	66 c7 80 ee 70 00 00 	movw   $0x8,0x70ee(%eax)
  1017bf:	08 00 
  1017c1:	0f b6 90 f0 70 00 00 	movzbl 0x70f0(%eax),%edx
  1017c8:	83 e2 e0             	and    $0xffffffe0,%edx
  1017cb:	88 90 f0 70 00 00    	mov    %dl,0x70f0(%eax)
  1017d1:	0f b6 90 f0 70 00 00 	movzbl 0x70f0(%eax),%edx
  1017d8:	83 e2 1f             	and    $0x1f,%edx
  1017db:	88 90 f0 70 00 00    	mov    %dl,0x70f0(%eax)
  1017e1:	0f b6 90 f1 70 00 00 	movzbl 0x70f1(%eax),%edx
  1017e8:	83 e2 f0             	and    $0xfffffff0,%edx
  1017eb:	83 ca 0e             	or     $0xe,%edx
  1017ee:	88 90 f1 70 00 00    	mov    %dl,0x70f1(%eax)
  1017f4:	0f b6 90 f1 70 00 00 	movzbl 0x70f1(%eax),%edx
  1017fb:	83 e2 ef             	and    $0xffffffef,%edx
  1017fe:	88 90 f1 70 00 00    	mov    %dl,0x70f1(%eax)
  101804:	0f b6 90 f1 70 00 00 	movzbl 0x70f1(%eax),%edx
  10180b:	83 e2 9f             	and    $0xffffff9f,%edx
  10180e:	88 90 f1 70 00 00    	mov    %dl,0x70f1(%eax)
  101814:	0f b6 90 f1 70 00 00 	movzbl 0x70f1(%eax),%edx
  10181b:	83 ca 80             	or     $0xffffff80,%edx
  10181e:	88 90 f1 70 00 00    	mov    %dl,0x70f1(%eax)
  101824:	c7 c2 b0 26 10 00    	mov    $0x1026b0,%edx
  10182a:	c1 ea 10             	shr    $0x10,%edx
  10182d:	66 89 90 f2 70 00 00 	mov    %dx,0x70f2(%eax)
  101834:	c7 c2 c2 26 10 00    	mov    $0x1026c2,%edx
  10183a:	66 89 90 fc 70 00 00 	mov    %dx,0x70fc(%eax)
  101841:	66 c7 80 fe 70 00 00 	movw   $0x8,0x70fe(%eax)
  101848:	08 00 
  10184a:	0f b6 90 00 71 00 00 	movzbl 0x7100(%eax),%edx
  101851:	83 e2 e0             	and    $0xffffffe0,%edx
  101854:	88 90 00 71 00 00    	mov    %dl,0x7100(%eax)
  10185a:	0f b6 90 00 71 00 00 	movzbl 0x7100(%eax),%edx
  101861:	83 e2 1f             	and    $0x1f,%edx
  101864:	88 90 00 71 00 00    	mov    %dl,0x7100(%eax)
  10186a:	0f b6 90 01 71 00 00 	movzbl 0x7101(%eax),%edx
  101871:	83 e2 f0             	and    $0xfffffff0,%edx
  101874:	83 ca 0e             	or     $0xe,%edx
  101877:	88 90 01 71 00 00    	mov    %dl,0x7101(%eax)
  10187d:	0f b6 90 01 71 00 00 	movzbl 0x7101(%eax),%edx
  101884:	83 e2 ef             	and    $0xffffffef,%edx
  101887:	88 90 01 71 00 00    	mov    %dl,0x7101(%eax)
  10188d:	0f b6 90 01 71 00 00 	movzbl 0x7101(%eax),%edx
  101894:	83 e2 9f             	and    $0xffffff9f,%edx
  101897:	88 90 01 71 00 00    	mov    %dl,0x7101(%eax)
  10189d:	0f b6 90 01 71 00 00 	movzbl 0x7101(%eax),%edx
  1018a4:	83 ca 80             	or     $0xffffff80,%edx
  1018a7:	88 90 01 71 00 00    	mov    %dl,0x7101(%eax)
  1018ad:	c7 c2 c2 26 10 00    	mov    $0x1026c2,%edx
  1018b3:	c1 ea 10             	shr    $0x10,%edx
  1018b6:	66 89 90 02 71 00 00 	mov    %dx,0x7102(%eax)
  1018bd:	c7 c2 ca 26 10 00    	mov    $0x1026ca,%edx
  1018c3:	66 89 90 04 71 00 00 	mov    %dx,0x7104(%eax)
  1018ca:	66 c7 80 06 71 00 00 	movw   $0x8,0x7106(%eax)
  1018d1:	08 00 
  1018d3:	0f b6 90 08 71 00 00 	movzbl 0x7108(%eax),%edx
  1018da:	83 e2 e0             	and    $0xffffffe0,%edx
  1018dd:	88 90 08 71 00 00    	mov    %dl,0x7108(%eax)
  1018e3:	0f b6 90 08 71 00 00 	movzbl 0x7108(%eax),%edx
  1018ea:	83 e2 1f             	and    $0x1f,%edx
  1018ed:	88 90 08 71 00 00    	mov    %dl,0x7108(%eax)
  1018f3:	0f b6 90 09 71 00 00 	movzbl 0x7109(%eax),%edx
  1018fa:	83 e2 f0             	and    $0xfffffff0,%edx
  1018fd:	83 ca 0e             	or     $0xe,%edx
  101900:	88 90 09 71 00 00    	mov    %dl,0x7109(%eax)
  101906:	0f b6 90 09 71 00 00 	movzbl 0x7109(%eax),%edx
  10190d:	83 e2 ef             	and    $0xffffffef,%edx
  101910:	88 90 09 71 00 00    	mov    %dl,0x7109(%eax)
  101916:	0f b6 90 09 71 00 00 	movzbl 0x7109(%eax),%edx
  10191d:	83 e2 9f             	and    $0xffffff9f,%edx
  101920:	88 90 09 71 00 00    	mov    %dl,0x7109(%eax)
  101926:	0f b6 90 09 71 00 00 	movzbl 0x7109(%eax),%edx
  10192d:	83 ca 80             	or     $0xffffff80,%edx
  101930:	88 90 09 71 00 00    	mov    %dl,0x7109(%eax)
  101936:	c7 c2 ca 26 10 00    	mov    $0x1026ca,%edx
  10193c:	c1 ea 10             	shr    $0x10,%edx
  10193f:	66 89 90 0a 71 00 00 	mov    %dx,0x710a(%eax)
  101946:	c7 c2 d2 26 10 00    	mov    $0x1026d2,%edx
  10194c:	66 89 90 0c 71 00 00 	mov    %dx,0x710c(%eax)
  101953:	66 c7 80 0e 71 00 00 	movw   $0x8,0x710e(%eax)
  10195a:	08 00 
  10195c:	0f b6 90 10 71 00 00 	movzbl 0x7110(%eax),%edx
  101963:	83 e2 e0             	and    $0xffffffe0,%edx
  101966:	88 90 10 71 00 00    	mov    %dl,0x7110(%eax)
  10196c:	0f b6 90 10 71 00 00 	movzbl 0x7110(%eax),%edx
  101973:	83 e2 1f             	and    $0x1f,%edx
  101976:	88 90 10 71 00 00    	mov    %dl,0x7110(%eax)
  10197c:	0f b6 90 11 71 00 00 	movzbl 0x7111(%eax),%edx
  101983:	83 e2 f0             	and    $0xfffffff0,%edx
  101986:	83 ca 0e             	or     $0xe,%edx
  101989:	88 90 11 71 00 00    	mov    %dl,0x7111(%eax)
  10198f:	0f b6 90 11 71 00 00 	movzbl 0x7111(%eax),%edx
  101996:	83 e2 ef             	and    $0xffffffef,%edx
  101999:	88 90 11 71 00 00    	mov    %dl,0x7111(%eax)
  10199f:	0f b6 90 11 71 00 00 	movzbl 0x7111(%eax),%edx
  1019a6:	83 e2 9f             	and    $0xffffff9f,%edx
  1019a9:	88 90 11 71 00 00    	mov    %dl,0x7111(%eax)
  1019af:	0f b6 90 11 71 00 00 	movzbl 0x7111(%eax),%edx
  1019b6:	83 ca 80             	or     $0xffffff80,%edx
  1019b9:	88 90 11 71 00 00    	mov    %dl,0x7111(%eax)
  1019bf:	c7 c2 d2 26 10 00    	mov    $0x1026d2,%edx
  1019c5:	c1 ea 10             	shr    $0x10,%edx
  1019c8:	66 89 90 12 71 00 00 	mov    %dx,0x7112(%eax)
  1019cf:	c7 c2 da 26 10 00    	mov    $0x1026da,%edx
  1019d5:	66 89 90 14 71 00 00 	mov    %dx,0x7114(%eax)
  1019dc:	66 c7 80 16 71 00 00 	movw   $0x8,0x7116(%eax)
  1019e3:	08 00 
  1019e5:	0f b6 90 18 71 00 00 	movzbl 0x7118(%eax),%edx
  1019ec:	83 e2 e0             	and    $0xffffffe0,%edx
  1019ef:	88 90 18 71 00 00    	mov    %dl,0x7118(%eax)
  1019f5:	0f b6 90 18 71 00 00 	movzbl 0x7118(%eax),%edx
  1019fc:	83 e2 1f             	and    $0x1f,%edx
  1019ff:	88 90 18 71 00 00    	mov    %dl,0x7118(%eax)
  101a05:	0f b6 90 19 71 00 00 	movzbl 0x7119(%eax),%edx
  101a0c:	83 e2 f0             	and    $0xfffffff0,%edx
  101a0f:	83 ca 0e             	or     $0xe,%edx
  101a12:	88 90 19 71 00 00    	mov    %dl,0x7119(%eax)
  101a18:	0f b6 90 19 71 00 00 	movzbl 0x7119(%eax),%edx
  101a1f:	83 e2 ef             	and    $0xffffffef,%edx
  101a22:	88 90 19 71 00 00    	mov    %dl,0x7119(%eax)
  101a28:	0f b6 90 19 71 00 00 	movzbl 0x7119(%eax),%edx
  101a2f:	83 e2 9f             	and    $0xffffff9f,%edx
  101a32:	88 90 19 71 00 00    	mov    %dl,0x7119(%eax)
  101a38:	0f b6 90 19 71 00 00 	movzbl 0x7119(%eax),%edx
  101a3f:	83 ca 80             	or     $0xffffff80,%edx
  101a42:	88 90 19 71 00 00    	mov    %dl,0x7119(%eax)
  101a48:	c7 c2 da 26 10 00    	mov    $0x1026da,%edx
  101a4e:	c1 ea 10             	shr    $0x10,%edx
  101a51:	66 89 90 1a 71 00 00 	mov    %dx,0x711a(%eax)
  101a58:	c7 c2 e2 26 10 00    	mov    $0x1026e2,%edx
  101a5e:	66 89 90 1c 71 00 00 	mov    %dx,0x711c(%eax)
  101a65:	66 c7 80 1e 71 00 00 	movw   $0x8,0x711e(%eax)
  101a6c:	08 00 
  101a6e:	0f b6 90 20 71 00 00 	movzbl 0x7120(%eax),%edx
  101a75:	83 e2 e0             	and    $0xffffffe0,%edx
  101a78:	88 90 20 71 00 00    	mov    %dl,0x7120(%eax)
  101a7e:	0f b6 90 20 71 00 00 	movzbl 0x7120(%eax),%edx
  101a85:	83 e2 1f             	and    $0x1f,%edx
  101a88:	88 90 20 71 00 00    	mov    %dl,0x7120(%eax)
  101a8e:	0f b6 90 21 71 00 00 	movzbl 0x7121(%eax),%edx
  101a95:	83 e2 f0             	and    $0xfffffff0,%edx
  101a98:	83 ca 0e             	or     $0xe,%edx
  101a9b:	88 90 21 71 00 00    	mov    %dl,0x7121(%eax)
  101aa1:	0f b6 90 21 71 00 00 	movzbl 0x7121(%eax),%edx
  101aa8:	83 e2 ef             	and    $0xffffffef,%edx
  101aab:	88 90 21 71 00 00    	mov    %dl,0x7121(%eax)
  101ab1:	0f b6 90 21 71 00 00 	movzbl 0x7121(%eax),%edx
  101ab8:	83 e2 9f             	and    $0xffffff9f,%edx
  101abb:	88 90 21 71 00 00    	mov    %dl,0x7121(%eax)
  101ac1:	0f b6 90 21 71 00 00 	movzbl 0x7121(%eax),%edx
  101ac8:	83 ca 80             	or     $0xffffff80,%edx
  101acb:	88 90 21 71 00 00    	mov    %dl,0x7121(%eax)
  101ad1:	c7 c2 e2 26 10 00    	mov    $0x1026e2,%edx
  101ad7:	c1 ea 10             	shr    $0x10,%edx
  101ada:	66 89 90 22 71 00 00 	mov    %dx,0x7122(%eax)
  101ae1:	c7 c2 f4 26 10 00    	mov    $0x1026f4,%edx
  101ae7:	66 89 90 2c 71 00 00 	mov    %dx,0x712c(%eax)
  101aee:	66 c7 80 2e 71 00 00 	movw   $0x8,0x712e(%eax)
  101af5:	08 00 
  101af7:	0f b6 90 30 71 00 00 	movzbl 0x7130(%eax),%edx
  101afe:	83 e2 e0             	and    $0xffffffe0,%edx
  101b01:	88 90 30 71 00 00    	mov    %dl,0x7130(%eax)
  101b07:	0f b6 90 30 71 00 00 	movzbl 0x7130(%eax),%edx
  101b0e:	83 e2 1f             	and    $0x1f,%edx
  101b11:	88 90 30 71 00 00    	mov    %dl,0x7130(%eax)
  101b17:	0f b6 90 31 71 00 00 	movzbl 0x7131(%eax),%edx
  101b1e:	83 e2 f0             	and    $0xfffffff0,%edx
  101b21:	83 ca 0e             	or     $0xe,%edx
  101b24:	88 90 31 71 00 00    	mov    %dl,0x7131(%eax)
  101b2a:	0f b6 90 31 71 00 00 	movzbl 0x7131(%eax),%edx
  101b31:	83 e2 ef             	and    $0xffffffef,%edx
  101b34:	88 90 31 71 00 00    	mov    %dl,0x7131(%eax)
  101b3a:	0f b6 90 31 71 00 00 	movzbl 0x7131(%eax),%edx
  101b41:	83 e2 9f             	and    $0xffffff9f,%edx
  101b44:	88 90 31 71 00 00    	mov    %dl,0x7131(%eax)
  101b4a:	0f b6 90 31 71 00 00 	movzbl 0x7131(%eax),%edx
  101b51:	83 ca 80             	or     $0xffffff80,%edx
  101b54:	88 90 31 71 00 00    	mov    %dl,0x7131(%eax)
  101b5a:	c7 c2 f4 26 10 00    	mov    $0x1026f4,%edx
  101b60:	c1 ea 10             	shr    $0x10,%edx
  101b63:	66 89 90 32 71 00 00 	mov    %dx,0x7132(%eax)
  101b6a:	c7 c2 fe 26 10 00    	mov    $0x1026fe,%edx
  101b70:	66 89 90 34 71 00 00 	mov    %dx,0x7134(%eax)
  101b77:	66 c7 80 36 71 00 00 	movw   $0x8,0x7136(%eax)
  101b7e:	08 00 
  101b80:	0f b6 90 38 71 00 00 	movzbl 0x7138(%eax),%edx
  101b87:	83 e2 e0             	and    $0xffffffe0,%edx
  101b8a:	88 90 38 71 00 00    	mov    %dl,0x7138(%eax)
  101b90:	0f b6 90 38 71 00 00 	movzbl 0x7138(%eax),%edx
  101b97:	83 e2 1f             	and    $0x1f,%edx
  101b9a:	88 90 38 71 00 00    	mov    %dl,0x7138(%eax)
  101ba0:	0f b6 90 39 71 00 00 	movzbl 0x7139(%eax),%edx
  101ba7:	83 e2 f0             	and    $0xfffffff0,%edx
  101baa:	83 ca 0e             	or     $0xe,%edx
  101bad:	88 90 39 71 00 00    	mov    %dl,0x7139(%eax)
  101bb3:	0f b6 90 39 71 00 00 	movzbl 0x7139(%eax),%edx
  101bba:	83 e2 ef             	and    $0xffffffef,%edx
  101bbd:	88 90 39 71 00 00    	mov    %dl,0x7139(%eax)
  101bc3:	0f b6 90 39 71 00 00 	movzbl 0x7139(%eax),%edx
  101bca:	83 e2 9f             	and    $0xffffff9f,%edx
  101bcd:	88 90 39 71 00 00    	mov    %dl,0x7139(%eax)
  101bd3:	0f b6 90 39 71 00 00 	movzbl 0x7139(%eax),%edx
  101bda:	83 ca 80             	or     $0xffffff80,%edx
  101bdd:	88 90 39 71 00 00    	mov    %dl,0x7139(%eax)
  101be3:	c7 c2 fe 26 10 00    	mov    $0x1026fe,%edx
  101be9:	c1 ea 10             	shr    $0x10,%edx
  101bec:	66 89 90 3a 71 00 00 	mov    %dx,0x713a(%eax)
  101bf3:	c7 c2 06 27 10 00    	mov    $0x102706,%edx
  101bf9:	66 89 90 3c 71 00 00 	mov    %dx,0x713c(%eax)
  101c00:	66 c7 80 3e 71 00 00 	movw   $0x8,0x713e(%eax)
  101c07:	08 00 
  101c09:	0f b6 90 40 71 00 00 	movzbl 0x7140(%eax),%edx
  101c10:	83 e2 e0             	and    $0xffffffe0,%edx
  101c13:	88 90 40 71 00 00    	mov    %dl,0x7140(%eax)
  101c19:	0f b6 90 40 71 00 00 	movzbl 0x7140(%eax),%edx
  101c20:	83 e2 1f             	and    $0x1f,%edx
  101c23:	88 90 40 71 00 00    	mov    %dl,0x7140(%eax)
  101c29:	0f b6 90 41 71 00 00 	movzbl 0x7141(%eax),%edx
  101c30:	83 e2 f0             	and    $0xfffffff0,%edx
  101c33:	83 ca 0e             	or     $0xe,%edx
  101c36:	88 90 41 71 00 00    	mov    %dl,0x7141(%eax)
  101c3c:	0f b6 90 41 71 00 00 	movzbl 0x7141(%eax),%edx
  101c43:	83 e2 ef             	and    $0xffffffef,%edx
  101c46:	88 90 41 71 00 00    	mov    %dl,0x7141(%eax)
  101c4c:	0f b6 90 41 71 00 00 	movzbl 0x7141(%eax),%edx
  101c53:	83 e2 9f             	and    $0xffffff9f,%edx
  101c56:	88 90 41 71 00 00    	mov    %dl,0x7141(%eax)
  101c5c:	0f b6 90 41 71 00 00 	movzbl 0x7141(%eax),%edx
  101c63:	83 ca 80             	or     $0xffffff80,%edx
  101c66:	88 90 41 71 00 00    	mov    %dl,0x7141(%eax)
  101c6c:	c7 c2 06 27 10 00    	mov    $0x102706,%edx
  101c72:	c1 ea 10             	shr    $0x10,%edx
  101c75:	66 89 90 42 71 00 00 	mov    %dx,0x7142(%eax)
  101c7c:	c7 c2 10 27 10 00    	mov    $0x102710,%edx
  101c82:	66 89 90 ac 71 00 00 	mov    %dx,0x71ac(%eax)
  101c89:	66 c7 80 ae 71 00 00 	movw   $0x8,0x71ae(%eax)
  101c90:	08 00 
  101c92:	0f b6 90 b0 71 00 00 	movzbl 0x71b0(%eax),%edx
  101c99:	83 e2 e0             	and    $0xffffffe0,%edx
  101c9c:	88 90 b0 71 00 00    	mov    %dl,0x71b0(%eax)
  101ca2:	0f b6 90 b0 71 00 00 	movzbl 0x71b0(%eax),%edx
  101ca9:	83 e2 1f             	and    $0x1f,%edx
  101cac:	88 90 b0 71 00 00    	mov    %dl,0x71b0(%eax)
  101cb2:	0f b6 90 b1 71 00 00 	movzbl 0x71b1(%eax),%edx
  101cb9:	83 e2 f0             	and    $0xfffffff0,%edx
  101cbc:	83 ca 0e             	or     $0xe,%edx
  101cbf:	88 90 b1 71 00 00    	mov    %dl,0x71b1(%eax)
  101cc5:	0f b6 90 b1 71 00 00 	movzbl 0x71b1(%eax),%edx
  101ccc:	83 e2 ef             	and    $0xffffffef,%edx
  101ccf:	88 90 b1 71 00 00    	mov    %dl,0x71b1(%eax)
  101cd5:	0f b6 90 b1 71 00 00 	movzbl 0x71b1(%eax),%edx
  101cdc:	83 e2 9f             	and    $0xffffff9f,%edx
  101cdf:	88 90 b1 71 00 00    	mov    %dl,0x71b1(%eax)
  101ce5:	0f b6 90 b1 71 00 00 	movzbl 0x71b1(%eax),%edx
  101cec:	83 ca 80             	or     $0xffffff80,%edx
  101cef:	88 90 b1 71 00 00    	mov    %dl,0x71b1(%eax)
  101cf5:	c7 c2 10 27 10 00    	mov    $0x102710,%edx
  101cfb:	c1 ea 10             	shr    $0x10,%edx
  101cfe:	66 89 90 b2 71 00 00 	mov    %dx,0x71b2(%eax)
  101d05:	c7 c2 1a 27 10 00    	mov    $0x10271a,%edx
  101d0b:	66 89 90 b4 71 00 00 	mov    %dx,0x71b4(%eax)
  101d12:	66 c7 80 b6 71 00 00 	movw   $0x8,0x71b6(%eax)
  101d19:	08 00 
  101d1b:	0f b6 90 b8 71 00 00 	movzbl 0x71b8(%eax),%edx
  101d22:	83 e2 e0             	and    $0xffffffe0,%edx
  101d25:	88 90 b8 71 00 00    	mov    %dl,0x71b8(%eax)
  101d2b:	0f b6 90 b8 71 00 00 	movzbl 0x71b8(%eax),%edx
  101d32:	83 e2 1f             	and    $0x1f,%edx
  101d35:	88 90 b8 71 00 00    	mov    %dl,0x71b8(%eax)
  101d3b:	0f b6 90 b9 71 00 00 	movzbl 0x71b9(%eax),%edx
  101d42:	83 e2 f0             	and    $0xfffffff0,%edx
  101d45:	83 ca 0e             	or     $0xe,%edx
  101d48:	88 90 b9 71 00 00    	mov    %dl,0x71b9(%eax)
  101d4e:	0f b6 90 b9 71 00 00 	movzbl 0x71b9(%eax),%edx
  101d55:	83 e2 ef             	and    $0xffffffef,%edx
  101d58:	88 90 b9 71 00 00    	mov    %dl,0x71b9(%eax)
  101d5e:	0f b6 90 b9 71 00 00 	movzbl 0x71b9(%eax),%edx
  101d65:	83 e2 9f             	and    $0xffffff9f,%edx
  101d68:	88 90 b9 71 00 00    	mov    %dl,0x71b9(%eax)
  101d6e:	0f b6 90 b9 71 00 00 	movzbl 0x71b9(%eax),%edx
  101d75:	83 ca 80             	or     $0xffffff80,%edx
  101d78:	88 90 b9 71 00 00    	mov    %dl,0x71b9(%eax)
  101d7e:	c7 c2 1a 27 10 00    	mov    $0x10271a,%edx
  101d84:	c1 ea 10             	shr    $0x10,%edx
  101d87:	66 89 90 ba 71 00 00 	mov    %dx,0x71ba(%eax)
  101d8e:	c7 c2 24 27 10 00    	mov    $0x102724,%edx
  101d94:	66 89 90 bc 71 00 00 	mov    %dx,0x71bc(%eax)
  101d9b:	66 c7 80 be 71 00 00 	movw   $0x8,0x71be(%eax)
  101da2:	08 00 
  101da4:	0f b6 90 c0 71 00 00 	movzbl 0x71c0(%eax),%edx
  101dab:	83 e2 e0             	and    $0xffffffe0,%edx
  101dae:	88 90 c0 71 00 00    	mov    %dl,0x71c0(%eax)
  101db4:	0f b6 90 c0 71 00 00 	movzbl 0x71c0(%eax),%edx
  101dbb:	83 e2 1f             	and    $0x1f,%edx
  101dbe:	88 90 c0 71 00 00    	mov    %dl,0x71c0(%eax)
  101dc4:	0f b6 90 c1 71 00 00 	movzbl 0x71c1(%eax),%edx
  101dcb:	83 e2 f0             	and    $0xfffffff0,%edx
  101dce:	83 ca 0e             	or     $0xe,%edx
  101dd1:	88 90 c1 71 00 00    	mov    %dl,0x71c1(%eax)
  101dd7:	0f b6 90 c1 71 00 00 	movzbl 0x71c1(%eax),%edx
  101dde:	83 e2 ef             	and    $0xffffffef,%edx
  101de1:	88 90 c1 71 00 00    	mov    %dl,0x71c1(%eax)
  101de7:	0f b6 90 c1 71 00 00 	movzbl 0x71c1(%eax),%edx
  101dee:	83 e2 9f             	and    $0xffffff9f,%edx
  101df1:	88 90 c1 71 00 00    	mov    %dl,0x71c1(%eax)
  101df7:	0f b6 90 c1 71 00 00 	movzbl 0x71c1(%eax),%edx
  101dfe:	83 ca 80             	or     $0xffffff80,%edx
  101e01:	88 90 c1 71 00 00    	mov    %dl,0x71c1(%eax)
  101e07:	c7 c2 24 27 10 00    	mov    $0x102724,%edx
  101e0d:	c1 ea 10             	shr    $0x10,%edx
  101e10:	66 89 90 c2 71 00 00 	mov    %dx,0x71c2(%eax)
  101e17:	c7 c2 2e 27 10 00    	mov    $0x10272e,%edx
  101e1d:	66 89 90 c4 71 00 00 	mov    %dx,0x71c4(%eax)
  101e24:	66 c7 80 c6 71 00 00 	movw   $0x8,0x71c6(%eax)
  101e2b:	08 00 
  101e2d:	0f b6 90 c8 71 00 00 	movzbl 0x71c8(%eax),%edx
  101e34:	83 e2 e0             	and    $0xffffffe0,%edx
  101e37:	88 90 c8 71 00 00    	mov    %dl,0x71c8(%eax)
  101e3d:	0f b6 90 c8 71 00 00 	movzbl 0x71c8(%eax),%edx
  101e44:	83 e2 1f             	and    $0x1f,%edx
  101e47:	88 90 c8 71 00 00    	mov    %dl,0x71c8(%eax)
  101e4d:	0f b6 90 c9 71 00 00 	movzbl 0x71c9(%eax),%edx
  101e54:	83 e2 f0             	and    $0xfffffff0,%edx
  101e57:	83 ca 0e             	or     $0xe,%edx
  101e5a:	88 90 c9 71 00 00    	mov    %dl,0x71c9(%eax)
  101e60:	0f b6 90 c9 71 00 00 	movzbl 0x71c9(%eax),%edx
  101e67:	83 e2 ef             	and    $0xffffffef,%edx
  101e6a:	88 90 c9 71 00 00    	mov    %dl,0x71c9(%eax)
  101e70:	0f b6 90 c9 71 00 00 	movzbl 0x71c9(%eax),%edx
  101e77:	83 e2 9f             	and    $0xffffff9f,%edx
  101e7a:	88 90 c9 71 00 00    	mov    %dl,0x71c9(%eax)
  101e80:	0f b6 90 c9 71 00 00 	movzbl 0x71c9(%eax),%edx
  101e87:	83 ca 80             	or     $0xffffff80,%edx
  101e8a:	88 90 c9 71 00 00    	mov    %dl,0x71c9(%eax)
  101e90:	c7 c2 2e 27 10 00    	mov    $0x10272e,%edx
  101e96:	c1 ea 10             	shr    $0x10,%edx
  101e99:	66 89 90 ca 71 00 00 	mov    %dx,0x71ca(%eax)
  101ea0:	c7 c2 38 27 10 00    	mov    $0x102738,%edx
  101ea6:	66 89 90 cc 71 00 00 	mov    %dx,0x71cc(%eax)
  101ead:	66 c7 80 ce 71 00 00 	movw   $0x8,0x71ce(%eax)
  101eb4:	08 00 
  101eb6:	0f b6 90 d0 71 00 00 	movzbl 0x71d0(%eax),%edx
  101ebd:	83 e2 e0             	and    $0xffffffe0,%edx
  101ec0:	88 90 d0 71 00 00    	mov    %dl,0x71d0(%eax)
  101ec6:	0f b6 90 d0 71 00 00 	movzbl 0x71d0(%eax),%edx
  101ecd:	83 e2 1f             	and    $0x1f,%edx
  101ed0:	88 90 d0 71 00 00    	mov    %dl,0x71d0(%eax)
  101ed6:	0f b6 90 d1 71 00 00 	movzbl 0x71d1(%eax),%edx
  101edd:	83 e2 f0             	and    $0xfffffff0,%edx
  101ee0:	83 ca 0e             	or     $0xe,%edx
  101ee3:	88 90 d1 71 00 00    	mov    %dl,0x71d1(%eax)
  101ee9:	0f b6 90 d1 71 00 00 	movzbl 0x71d1(%eax),%edx
  101ef0:	83 e2 ef             	and    $0xffffffef,%edx
  101ef3:	88 90 d1 71 00 00    	mov    %dl,0x71d1(%eax)
  101ef9:	0f b6 90 d1 71 00 00 	movzbl 0x71d1(%eax),%edx
  101f00:	83 e2 9f             	and    $0xffffff9f,%edx
  101f03:	88 90 d1 71 00 00    	mov    %dl,0x71d1(%eax)
  101f09:	0f b6 90 d1 71 00 00 	movzbl 0x71d1(%eax),%edx
  101f10:	83 ca 80             	or     $0xffffff80,%edx
  101f13:	88 90 d1 71 00 00    	mov    %dl,0x71d1(%eax)
  101f19:	c7 c2 38 27 10 00    	mov    $0x102738,%edx
  101f1f:	c1 ea 10             	shr    $0x10,%edx
  101f22:	66 89 90 d2 71 00 00 	mov    %dx,0x71d2(%eax)
  101f29:	c7 c2 42 27 10 00    	mov    $0x102742,%edx
  101f2f:	66 89 90 d4 71 00 00 	mov    %dx,0x71d4(%eax)
  101f36:	66 c7 80 d6 71 00 00 	movw   $0x8,0x71d6(%eax)
  101f3d:	08 00 
  101f3f:	0f b6 90 d8 71 00 00 	movzbl 0x71d8(%eax),%edx
  101f46:	83 e2 e0             	and    $0xffffffe0,%edx
  101f49:	88 90 d8 71 00 00    	mov    %dl,0x71d8(%eax)
  101f4f:	0f b6 90 d8 71 00 00 	movzbl 0x71d8(%eax),%edx
  101f56:	83 e2 1f             	and    $0x1f,%edx
  101f59:	88 90 d8 71 00 00    	mov    %dl,0x71d8(%eax)
  101f5f:	0f b6 90 d9 71 00 00 	movzbl 0x71d9(%eax),%edx
  101f66:	83 e2 f0             	and    $0xfffffff0,%edx
  101f69:	83 ca 0e             	or     $0xe,%edx
  101f6c:	88 90 d9 71 00 00    	mov    %dl,0x71d9(%eax)
  101f72:	0f b6 90 d9 71 00 00 	movzbl 0x71d9(%eax),%edx
  101f79:	83 e2 ef             	and    $0xffffffef,%edx
  101f7c:	88 90 d9 71 00 00    	mov    %dl,0x71d9(%eax)
  101f82:	0f b6 90 d9 71 00 00 	movzbl 0x71d9(%eax),%edx
  101f89:	83 e2 9f             	and    $0xffffff9f,%edx
  101f8c:	88 90 d9 71 00 00    	mov    %dl,0x71d9(%eax)
  101f92:	0f b6 90 d9 71 00 00 	movzbl 0x71d9(%eax),%edx
  101f99:	83 ca 80             	or     $0xffffff80,%edx
  101f9c:	88 90 d9 71 00 00    	mov    %dl,0x71d9(%eax)
  101fa2:	c7 c2 42 27 10 00    	mov    $0x102742,%edx
  101fa8:	c1 ea 10             	shr    $0x10,%edx
  101fab:	66 89 90 da 71 00 00 	mov    %dx,0x71da(%eax)
  101fb2:	c7 c2 4c 27 10 00    	mov    $0x10274c,%edx
  101fb8:	66 89 90 dc 71 00 00 	mov    %dx,0x71dc(%eax)
  101fbf:	66 c7 80 de 71 00 00 	movw   $0x8,0x71de(%eax)
  101fc6:	08 00 
  101fc8:	0f b6 90 e0 71 00 00 	movzbl 0x71e0(%eax),%edx
  101fcf:	83 e2 e0             	and    $0xffffffe0,%edx
  101fd2:	88 90 e0 71 00 00    	mov    %dl,0x71e0(%eax)
  101fd8:	0f b6 90 e0 71 00 00 	movzbl 0x71e0(%eax),%edx
  101fdf:	83 e2 1f             	and    $0x1f,%edx
  101fe2:	88 90 e0 71 00 00    	mov    %dl,0x71e0(%eax)
  101fe8:	0f b6 90 e1 71 00 00 	movzbl 0x71e1(%eax),%edx
  101fef:	83 e2 f0             	and    $0xfffffff0,%edx
  101ff2:	83 ca 0e             	or     $0xe,%edx
  101ff5:	88 90 e1 71 00 00    	mov    %dl,0x71e1(%eax)
  101ffb:	0f b6 90 e1 71 00 00 	movzbl 0x71e1(%eax),%edx
  102002:	83 e2 ef             	and    $0xffffffef,%edx
  102005:	88 90 e1 71 00 00    	mov    %dl,0x71e1(%eax)
  10200b:	0f b6 90 e1 71 00 00 	movzbl 0x71e1(%eax),%edx
  102012:	83 e2 9f             	and    $0xffffff9f,%edx
  102015:	88 90 e1 71 00 00    	mov    %dl,0x71e1(%eax)
  10201b:	0f b6 90 e1 71 00 00 	movzbl 0x71e1(%eax),%edx
  102022:	83 ca 80             	or     $0xffffff80,%edx
  102025:	88 90 e1 71 00 00    	mov    %dl,0x71e1(%eax)
  10202b:	c7 c2 4c 27 10 00    	mov    $0x10274c,%edx
  102031:	c1 ea 10             	shr    $0x10,%edx
  102034:	66 89 90 e2 71 00 00 	mov    %dx,0x71e2(%eax)
  10203b:	c7 c2 52 27 10 00    	mov    $0x102752,%edx
  102041:	66 89 90 e4 71 00 00 	mov    %dx,0x71e4(%eax)
  102048:	66 c7 80 e6 71 00 00 	movw   $0x8,0x71e6(%eax)
  10204f:	08 00 
  102051:	0f b6 90 e8 71 00 00 	movzbl 0x71e8(%eax),%edx
  102058:	83 e2 e0             	and    $0xffffffe0,%edx
  10205b:	88 90 e8 71 00 00    	mov    %dl,0x71e8(%eax)
  102061:	0f b6 90 e8 71 00 00 	movzbl 0x71e8(%eax),%edx
  102068:	83 e2 1f             	and    $0x1f,%edx
  10206b:	88 90 e8 71 00 00    	mov    %dl,0x71e8(%eax)
  102071:	0f b6 90 e9 71 00 00 	movzbl 0x71e9(%eax),%edx
  102078:	83 e2 f0             	and    $0xfffffff0,%edx
  10207b:	83 ca 0e             	or     $0xe,%edx
  10207e:	88 90 e9 71 00 00    	mov    %dl,0x71e9(%eax)
  102084:	0f b6 90 e9 71 00 00 	movzbl 0x71e9(%eax),%edx
  10208b:	83 e2 ef             	and    $0xffffffef,%edx
  10208e:	88 90 e9 71 00 00    	mov    %dl,0x71e9(%eax)
  102094:	0f b6 90 e9 71 00 00 	movzbl 0x71e9(%eax),%edx
  10209b:	83 e2 9f             	and    $0xffffff9f,%edx
  10209e:	88 90 e9 71 00 00    	mov    %dl,0x71e9(%eax)
  1020a4:	0f b6 90 e9 71 00 00 	movzbl 0x71e9(%eax),%edx
  1020ab:	83 ca 80             	or     $0xffffff80,%edx
  1020ae:	88 90 e9 71 00 00    	mov    %dl,0x71e9(%eax)
  1020b4:	c7 c2 52 27 10 00    	mov    $0x102752,%edx
  1020ba:	c1 ea 10             	shr    $0x10,%edx
  1020bd:	66 89 90 ea 71 00 00 	mov    %dx,0x71ea(%eax)
  1020c4:	c7 c2 58 27 10 00    	mov    $0x102758,%edx
  1020ca:	66 89 90 ec 71 00 00 	mov    %dx,0x71ec(%eax)
  1020d1:	66 c7 80 ee 71 00 00 	movw   $0x8,0x71ee(%eax)
  1020d8:	08 00 
  1020da:	0f b6 90 f0 71 00 00 	movzbl 0x71f0(%eax),%edx
  1020e1:	83 e2 e0             	and    $0xffffffe0,%edx
  1020e4:	88 90 f0 71 00 00    	mov    %dl,0x71f0(%eax)
  1020ea:	0f b6 90 f0 71 00 00 	movzbl 0x71f0(%eax),%edx
  1020f1:	83 e2 1f             	and    $0x1f,%edx
  1020f4:	88 90 f0 71 00 00    	mov    %dl,0x71f0(%eax)
  1020fa:	0f b6 90 f1 71 00 00 	movzbl 0x71f1(%eax),%edx
  102101:	83 e2 f0             	and    $0xfffffff0,%edx
  102104:	83 ca 0e             	or     $0xe,%edx
  102107:	88 90 f1 71 00 00    	mov    %dl,0x71f1(%eax)
  10210d:	0f b6 90 f1 71 00 00 	movzbl 0x71f1(%eax),%edx
  102114:	83 e2 ef             	and    $0xffffffef,%edx
  102117:	88 90 f1 71 00 00    	mov    %dl,0x71f1(%eax)
  10211d:	0f b6 90 f1 71 00 00 	movzbl 0x71f1(%eax),%edx
  102124:	83 e2 9f             	and    $0xffffff9f,%edx
  102127:	88 90 f1 71 00 00    	mov    %dl,0x71f1(%eax)
  10212d:	0f b6 90 f1 71 00 00 	movzbl 0x71f1(%eax),%edx
  102134:	83 ca 80             	or     $0xffffff80,%edx
  102137:	88 90 f1 71 00 00    	mov    %dl,0x71f1(%eax)
  10213d:	c7 c2 58 27 10 00    	mov    $0x102758,%edx
  102143:	c1 ea 10             	shr    $0x10,%edx
  102146:	66 89 90 f2 71 00 00 	mov    %dx,0x71f2(%eax)
  10214d:	c7 c2 5e 27 10 00    	mov    $0x10275e,%edx
  102153:	66 89 90 f4 71 00 00 	mov    %dx,0x71f4(%eax)
  10215a:	66 c7 80 f6 71 00 00 	movw   $0x8,0x71f6(%eax)
  102161:	08 00 
  102163:	0f b6 90 f8 71 00 00 	movzbl 0x71f8(%eax),%edx
  10216a:	83 e2 e0             	and    $0xffffffe0,%edx
  10216d:	88 90 f8 71 00 00    	mov    %dl,0x71f8(%eax)
  102173:	0f b6 90 f8 71 00 00 	movzbl 0x71f8(%eax),%edx
  10217a:	83 e2 1f             	and    $0x1f,%edx
  10217d:	88 90 f8 71 00 00    	mov    %dl,0x71f8(%eax)
  102183:	0f b6 90 f9 71 00 00 	movzbl 0x71f9(%eax),%edx
  10218a:	83 e2 f0             	and    $0xfffffff0,%edx
  10218d:	83 ca 0e             	or     $0xe,%edx
  102190:	88 90 f9 71 00 00    	mov    %dl,0x71f9(%eax)
  102196:	0f b6 90 f9 71 00 00 	movzbl 0x71f9(%eax),%edx
  10219d:	83 e2 ef             	and    $0xffffffef,%edx
  1021a0:	88 90 f9 71 00 00    	mov    %dl,0x71f9(%eax)
  1021a6:	0f b6 90 f9 71 00 00 	movzbl 0x71f9(%eax),%edx
  1021ad:	83 e2 9f             	and    $0xffffff9f,%edx
  1021b0:	88 90 f9 71 00 00    	mov    %dl,0x71f9(%eax)
  1021b6:	0f b6 90 f9 71 00 00 	movzbl 0x71f9(%eax),%edx
  1021bd:	83 ca 80             	or     $0xffffff80,%edx
  1021c0:	88 90 f9 71 00 00    	mov    %dl,0x71f9(%eax)
  1021c6:	c7 c2 5e 27 10 00    	mov    $0x10275e,%edx
  1021cc:	c1 ea 10             	shr    $0x10,%edx
  1021cf:	66 89 90 fa 71 00 00 	mov    %dx,0x71fa(%eax)
  1021d6:	c7 c2 64 27 10 00    	mov    $0x102764,%edx
  1021dc:	66 89 90 fc 71 00 00 	mov    %dx,0x71fc(%eax)
  1021e3:	66 c7 80 fe 71 00 00 	movw   $0x8,0x71fe(%eax)
  1021ea:	08 00 
  1021ec:	0f b6 90 00 72 00 00 	movzbl 0x7200(%eax),%edx
  1021f3:	83 e2 e0             	and    $0xffffffe0,%edx
  1021f6:	88 90 00 72 00 00    	mov    %dl,0x7200(%eax)
  1021fc:	0f b6 90 00 72 00 00 	movzbl 0x7200(%eax),%edx
  102203:	83 e2 1f             	and    $0x1f,%edx
  102206:	88 90 00 72 00 00    	mov    %dl,0x7200(%eax)
  10220c:	0f b6 90 01 72 00 00 	movzbl 0x7201(%eax),%edx
  102213:	83 e2 f0             	and    $0xfffffff0,%edx
  102216:	83 ca 0e             	or     $0xe,%edx
  102219:	88 90 01 72 00 00    	mov    %dl,0x7201(%eax)
  10221f:	0f b6 90 01 72 00 00 	movzbl 0x7201(%eax),%edx
  102226:	83 e2 ef             	and    $0xffffffef,%edx
  102229:	88 90 01 72 00 00    	mov    %dl,0x7201(%eax)
  10222f:	0f b6 90 01 72 00 00 	movzbl 0x7201(%eax),%edx
  102236:	83 e2 9f             	and    $0xffffff9f,%edx
  102239:	88 90 01 72 00 00    	mov    %dl,0x7201(%eax)
  10223f:	0f b6 90 01 72 00 00 	movzbl 0x7201(%eax),%edx
  102246:	83 ca 80             	or     $0xffffff80,%edx
  102249:	88 90 01 72 00 00    	mov    %dl,0x7201(%eax)
  10224f:	c7 c2 64 27 10 00    	mov    $0x102764,%edx
  102255:	c1 ea 10             	shr    $0x10,%edx
  102258:	66 89 90 02 72 00 00 	mov    %dx,0x7202(%eax)
  10225f:	c7 c2 6a 27 10 00    	mov    $0x10276a,%edx
  102265:	66 89 90 04 72 00 00 	mov    %dx,0x7204(%eax)
  10226c:	66 c7 80 06 72 00 00 	movw   $0x8,0x7206(%eax)
  102273:	08 00 
  102275:	0f b6 90 08 72 00 00 	movzbl 0x7208(%eax),%edx
  10227c:	83 e2 e0             	and    $0xffffffe0,%edx
  10227f:	88 90 08 72 00 00    	mov    %dl,0x7208(%eax)
  102285:	0f b6 90 08 72 00 00 	movzbl 0x7208(%eax),%edx
  10228c:	83 e2 1f             	and    $0x1f,%edx
  10228f:	88 90 08 72 00 00    	mov    %dl,0x7208(%eax)
  102295:	0f b6 90 09 72 00 00 	movzbl 0x7209(%eax),%edx
  10229c:	83 e2 f0             	and    $0xfffffff0,%edx
  10229f:	83 ca 0e             	or     $0xe,%edx
  1022a2:	88 90 09 72 00 00    	mov    %dl,0x7209(%eax)
  1022a8:	0f b6 90 09 72 00 00 	movzbl 0x7209(%eax),%edx
  1022af:	83 e2 ef             	and    $0xffffffef,%edx
  1022b2:	88 90 09 72 00 00    	mov    %dl,0x7209(%eax)
  1022b8:	0f b6 90 09 72 00 00 	movzbl 0x7209(%eax),%edx
  1022bf:	83 e2 9f             	and    $0xffffff9f,%edx
  1022c2:	88 90 09 72 00 00    	mov    %dl,0x7209(%eax)
  1022c8:	0f b6 90 09 72 00 00 	movzbl 0x7209(%eax),%edx
  1022cf:	83 ca 80             	or     $0xffffff80,%edx
  1022d2:	88 90 09 72 00 00    	mov    %dl,0x7209(%eax)
  1022d8:	c7 c2 6a 27 10 00    	mov    $0x10276a,%edx
  1022de:	c1 ea 10             	shr    $0x10,%edx
  1022e1:	66 89 90 0a 72 00 00 	mov    %dx,0x720a(%eax)
  1022e8:	c7 c2 70 27 10 00    	mov    $0x102770,%edx
  1022ee:	66 89 90 0c 72 00 00 	mov    %dx,0x720c(%eax)
  1022f5:	66 c7 80 0e 72 00 00 	movw   $0x8,0x720e(%eax)
  1022fc:	08 00 
  1022fe:	0f b6 90 10 72 00 00 	movzbl 0x7210(%eax),%edx
  102305:	83 e2 e0             	and    $0xffffffe0,%edx
  102308:	88 90 10 72 00 00    	mov    %dl,0x7210(%eax)
  10230e:	0f b6 90 10 72 00 00 	movzbl 0x7210(%eax),%edx
  102315:	83 e2 1f             	and    $0x1f,%edx
  102318:	88 90 10 72 00 00    	mov    %dl,0x7210(%eax)
  10231e:	0f b6 90 11 72 00 00 	movzbl 0x7211(%eax),%edx
  102325:	83 e2 f0             	and    $0xfffffff0,%edx
  102328:	83 ca 0e             	or     $0xe,%edx
  10232b:	88 90 11 72 00 00    	mov    %dl,0x7211(%eax)
  102331:	0f b6 90 11 72 00 00 	movzbl 0x7211(%eax),%edx
  102338:	83 e2 ef             	and    $0xffffffef,%edx
  10233b:	88 90 11 72 00 00    	mov    %dl,0x7211(%eax)
  102341:	0f b6 90 11 72 00 00 	movzbl 0x7211(%eax),%edx
  102348:	83 e2 9f             	and    $0xffffff9f,%edx
  10234b:	88 90 11 72 00 00    	mov    %dl,0x7211(%eax)
  102351:	0f b6 90 11 72 00 00 	movzbl 0x7211(%eax),%edx
  102358:	83 ca 80             	or     $0xffffff80,%edx
  10235b:	88 90 11 72 00 00    	mov    %dl,0x7211(%eax)
  102361:	c7 c2 70 27 10 00    	mov    $0x102770,%edx
  102367:	c1 ea 10             	shr    $0x10,%edx
  10236a:	66 89 90 12 72 00 00 	mov    %dx,0x7212(%eax)
  102371:	c7 c2 76 27 10 00    	mov    $0x102776,%edx
  102377:	66 89 90 14 72 00 00 	mov    %dx,0x7214(%eax)
  10237e:	66 c7 80 16 72 00 00 	movw   $0x8,0x7216(%eax)
  102385:	08 00 
  102387:	0f b6 90 18 72 00 00 	movzbl 0x7218(%eax),%edx
  10238e:	83 e2 e0             	and    $0xffffffe0,%edx
  102391:	88 90 18 72 00 00    	mov    %dl,0x7218(%eax)
  102397:	0f b6 90 18 72 00 00 	movzbl 0x7218(%eax),%edx
  10239e:	83 e2 1f             	and    $0x1f,%edx
  1023a1:	88 90 18 72 00 00    	mov    %dl,0x7218(%eax)
  1023a7:	0f b6 90 19 72 00 00 	movzbl 0x7219(%eax),%edx
  1023ae:	83 e2 f0             	and    $0xfffffff0,%edx
  1023b1:	83 ca 0e             	or     $0xe,%edx
  1023b4:	88 90 19 72 00 00    	mov    %dl,0x7219(%eax)
  1023ba:	0f b6 90 19 72 00 00 	movzbl 0x7219(%eax),%edx
  1023c1:	83 e2 ef             	and    $0xffffffef,%edx
  1023c4:	88 90 19 72 00 00    	mov    %dl,0x7219(%eax)
  1023ca:	0f b6 90 19 72 00 00 	movzbl 0x7219(%eax),%edx
  1023d1:	83 e2 9f             	and    $0xffffff9f,%edx
  1023d4:	88 90 19 72 00 00    	mov    %dl,0x7219(%eax)
  1023da:	0f b6 90 19 72 00 00 	movzbl 0x7219(%eax),%edx
  1023e1:	83 ca 80             	or     $0xffffff80,%edx
  1023e4:	88 90 19 72 00 00    	mov    %dl,0x7219(%eax)
  1023ea:	c7 c2 76 27 10 00    	mov    $0x102776,%edx
  1023f0:	c1 ea 10             	shr    $0x10,%edx
  1023f3:	66 89 90 1a 72 00 00 	mov    %dx,0x721a(%eax)
  1023fa:	c7 c2 7c 27 10 00    	mov    $0x10277c,%edx
  102400:	66 89 90 1c 72 00 00 	mov    %dx,0x721c(%eax)
  102407:	66 c7 80 1e 72 00 00 	movw   $0x8,0x721e(%eax)
  10240e:	08 00 
  102410:	0f b6 90 20 72 00 00 	movzbl 0x7220(%eax),%edx
  102417:	83 e2 e0             	and    $0xffffffe0,%edx
  10241a:	88 90 20 72 00 00    	mov    %dl,0x7220(%eax)
  102420:	0f b6 90 20 72 00 00 	movzbl 0x7220(%eax),%edx
  102427:	83 e2 1f             	and    $0x1f,%edx
  10242a:	88 90 20 72 00 00    	mov    %dl,0x7220(%eax)
  102430:	0f b6 90 21 72 00 00 	movzbl 0x7221(%eax),%edx
  102437:	83 e2 f0             	and    $0xfffffff0,%edx
  10243a:	83 ca 0e             	or     $0xe,%edx
  10243d:	88 90 21 72 00 00    	mov    %dl,0x7221(%eax)
  102443:	0f b6 90 21 72 00 00 	movzbl 0x7221(%eax),%edx
  10244a:	83 e2 ef             	and    $0xffffffef,%edx
  10244d:	88 90 21 72 00 00    	mov    %dl,0x7221(%eax)
  102453:	0f b6 90 21 72 00 00 	movzbl 0x7221(%eax),%edx
  10245a:	83 e2 9f             	and    $0xffffff9f,%edx
  10245d:	88 90 21 72 00 00    	mov    %dl,0x7221(%eax)
  102463:	0f b6 90 21 72 00 00 	movzbl 0x7221(%eax),%edx
  10246a:	83 ca 80             	or     $0xffffff80,%edx
  10246d:	88 90 21 72 00 00    	mov    %dl,0x7221(%eax)
  102473:	c7 c2 7c 27 10 00    	mov    $0x10277c,%edx
  102479:	c1 ea 10             	shr    $0x10,%edx
  10247c:	66 89 90 22 72 00 00 	mov    %dx,0x7222(%eax)
  102483:	c7 c2 82 27 10 00    	mov    $0x102782,%edx
  102489:	66 89 90 24 72 00 00 	mov    %dx,0x7224(%eax)
  102490:	66 c7 80 26 72 00 00 	movw   $0x8,0x7226(%eax)
  102497:	08 00 
  102499:	0f b6 90 28 72 00 00 	movzbl 0x7228(%eax),%edx
  1024a0:	83 e2 e0             	and    $0xffffffe0,%edx
  1024a3:	88 90 28 72 00 00    	mov    %dl,0x7228(%eax)
  1024a9:	0f b6 90 28 72 00 00 	movzbl 0x7228(%eax),%edx
  1024b0:	83 e2 1f             	and    $0x1f,%edx
  1024b3:	88 90 28 72 00 00    	mov    %dl,0x7228(%eax)
  1024b9:	0f b6 90 29 72 00 00 	movzbl 0x7229(%eax),%edx
  1024c0:	83 e2 f0             	and    $0xfffffff0,%edx
  1024c3:	83 ca 0e             	or     $0xe,%edx
  1024c6:	88 90 29 72 00 00    	mov    %dl,0x7229(%eax)
  1024cc:	0f b6 90 29 72 00 00 	movzbl 0x7229(%eax),%edx
  1024d3:	83 e2 ef             	and    $0xffffffef,%edx
  1024d6:	88 90 29 72 00 00    	mov    %dl,0x7229(%eax)
  1024dc:	0f b6 90 29 72 00 00 	movzbl 0x7229(%eax),%edx
  1024e3:	83 e2 9f             	and    $0xffffff9f,%edx
  1024e6:	88 90 29 72 00 00    	mov    %dl,0x7229(%eax)
  1024ec:	0f b6 90 29 72 00 00 	movzbl 0x7229(%eax),%edx
  1024f3:	83 ca 80             	or     $0xffffff80,%edx
  1024f6:	88 90 29 72 00 00    	mov    %dl,0x7229(%eax)
  1024fc:	c7 c2 82 27 10 00    	mov    $0x102782,%edx
  102502:	c1 ea 10             	shr    $0x10,%edx
  102505:	66 89 90 2a 72 00 00 	mov    %dx,0x722a(%eax)
  10250c:	c7 c2 b8 27 10 00    	mov    $0x1027b8,%edx
  102512:	66 89 90 2c 72 00 00 	mov    %dx,0x722c(%eax)
  102519:	66 c7 80 2e 72 00 00 	movw   $0x8,0x722e(%eax)
  102520:	08 00 
  102522:	0f b6 90 30 72 00 00 	movzbl 0x7230(%eax),%edx
  102529:	83 e2 e0             	and    $0xffffffe0,%edx
  10252c:	88 90 30 72 00 00    	mov    %dl,0x7230(%eax)
  102532:	0f b6 90 30 72 00 00 	movzbl 0x7230(%eax),%edx
  102539:	83 e2 1f             	and    $0x1f,%edx
  10253c:	88 90 30 72 00 00    	mov    %dl,0x7230(%eax)
  102542:	0f b6 90 31 72 00 00 	movzbl 0x7231(%eax),%edx
  102549:	83 e2 f0             	and    $0xfffffff0,%edx
  10254c:	83 ca 0e             	or     $0xe,%edx
  10254f:	88 90 31 72 00 00    	mov    %dl,0x7231(%eax)
  102555:	0f b6 90 31 72 00 00 	movzbl 0x7231(%eax),%edx
  10255c:	83 e2 ef             	and    $0xffffffef,%edx
  10255f:	88 90 31 72 00 00    	mov    %dl,0x7231(%eax)
  102565:	0f b6 90 31 72 00 00 	movzbl 0x7231(%eax),%edx
  10256c:	83 ca 60             	or     $0x60,%edx
  10256f:	88 90 31 72 00 00    	mov    %dl,0x7231(%eax)
  102575:	0f b6 90 31 72 00 00 	movzbl 0x7231(%eax),%edx
  10257c:	83 ca 80             	or     $0xffffff80,%edx
  10257f:	88 90 31 72 00 00    	mov    %dl,0x7231(%eax)
  102585:	c7 c2 b8 27 10 00    	mov    $0x1027b8,%edx
  10258b:	c1 ea 10             	shr    $0x10,%edx
  10258e:	66 89 90 32 72 00 00 	mov    %dx,0x7232(%eax)
  102595:	c7 c2 be 27 10 00    	mov    $0x1027be,%edx
  10259b:	66 89 90 9c 78 00 00 	mov    %dx,0x789c(%eax)
  1025a2:	66 c7 80 9e 78 00 00 	movw   $0x8,0x789e(%eax)
  1025a9:	08 00 
  1025ab:	0f b6 90 a0 78 00 00 	movzbl 0x78a0(%eax),%edx
  1025b2:	83 e2 e0             	and    $0xffffffe0,%edx
  1025b5:	88 90 a0 78 00 00    	mov    %dl,0x78a0(%eax)
  1025bb:	0f b6 90 a0 78 00 00 	movzbl 0x78a0(%eax),%edx
  1025c2:	83 e2 1f             	and    $0x1f,%edx
  1025c5:	88 90 a0 78 00 00    	mov    %dl,0x78a0(%eax)
  1025cb:	0f b6 90 a1 78 00 00 	movzbl 0x78a1(%eax),%edx
  1025d2:	83 e2 f0             	and    $0xfffffff0,%edx
  1025d5:	83 ca 0e             	or     $0xe,%edx
  1025d8:	88 90 a1 78 00 00    	mov    %dl,0x78a1(%eax)
  1025de:	0f b6 90 a1 78 00 00 	movzbl 0x78a1(%eax),%edx
  1025e5:	83 e2 ef             	and    $0xffffffef,%edx
  1025e8:	88 90 a1 78 00 00    	mov    %dl,0x78a1(%eax)
  1025ee:	0f b6 90 a1 78 00 00 	movzbl 0x78a1(%eax),%edx
  1025f5:	83 e2 9f             	and    $0xffffff9f,%edx
  1025f8:	88 90 a1 78 00 00    	mov    %dl,0x78a1(%eax)
  1025fe:	0f b6 90 a1 78 00 00 	movzbl 0x78a1(%eax),%edx
  102605:	83 ca 80             	or     $0xffffff80,%edx
  102608:	88 90 a1 78 00 00    	mov    %dl,0x78a1(%eax)
  10260e:	c7 c2 be 27 10 00    	mov    $0x1027be,%edx
  102614:	c1 ea 10             	shr    $0x10,%edx
  102617:	66 89 90 a2 78 00 00 	mov    %dx,0x78a2(%eax)
  10261e:	0f 01 98 1c 05 00 00 	lidtl  0x51c(%eax)
  102625:	90                   	nop
  102626:	c9                   	leave
  102627:	c3                   	ret

00102628 <intr_init>:
  102628:	55                   	push   %ebp
  102629:	89 e5                	mov    %esp,%ebp
  10262b:	53                   	push   %ebx
  10262c:	e8 e4 dd ff ff       	call   100415 <__x86.get_pc_thunk.bx>
  102631:	81 c3 c3 a9 00 00    	add    $0xa9c3,%ebx
  102637:	0f b6 83 ac 78 00 00 	movzbl 0x78ac(%ebx),%eax
  10263e:	3c 01                	cmp    $0x1,%al
  102640:	74 0e                	je     102650 <intr_init+0x28>
  102642:	e8 36 ec ff ff       	call   10127d <intr_init_idt>
  102647:	c6 83 ac 78 00 00 01 	movb   $0x1,0x78ac(%ebx)
  10264e:	eb 01                	jmp    102651 <intr_init+0x29>
  102650:	90                   	nop
  102651:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  102654:	c9                   	leave
  102655:	c3                   	ret
  102656:	66 90                	xchg   %ax,%ax
  102658:	66 90                	xchg   %ax,%ax
  10265a:	66 90                	xchg   %ax,%ax
  10265c:	66 90                	xchg   %ax,%ax
  10265e:	66 90                	xchg   %ax,%ax

00102660 <Xdivide>:
  102660:	6a 00                	push   $0x0
  102662:	6a 00                	push   $0x0
  102664:	e9 67 01 00 00       	jmp    1027d0 <_alltraps>
  102669:	90                   	nop

0010266a <Xdebug>:
  10266a:	6a 00                	push   $0x0
  10266c:	6a 01                	push   $0x1
  10266e:	e9 5d 01 00 00       	jmp    1027d0 <_alltraps>
  102673:	90                   	nop

00102674 <Xnmi>:
  102674:	6a 00                	push   $0x0
  102676:	6a 02                	push   $0x2
  102678:	e9 53 01 00 00       	jmp    1027d0 <_alltraps>
  10267d:	90                   	nop

0010267e <Xbrkpt>:
  10267e:	6a 00                	push   $0x0
  102680:	6a 03                	push   $0x3
  102682:	e9 49 01 00 00       	jmp    1027d0 <_alltraps>
  102687:	90                   	nop

00102688 <Xoflow>:
  102688:	6a 00                	push   $0x0
  10268a:	6a 04                	push   $0x4
  10268c:	e9 3f 01 00 00       	jmp    1027d0 <_alltraps>
  102691:	90                   	nop

00102692 <Xbound>:
  102692:	6a 00                	push   $0x0
  102694:	6a 05                	push   $0x5
  102696:	e9 35 01 00 00       	jmp    1027d0 <_alltraps>
  10269b:	90                   	nop

0010269c <Xillop>:
  10269c:	6a 00                	push   $0x0
  10269e:	6a 06                	push   $0x6
  1026a0:	e9 2b 01 00 00       	jmp    1027d0 <_alltraps>
  1026a5:	90                   	nop

001026a6 <Xdevice>:
  1026a6:	6a 00                	push   $0x0
  1026a8:	6a 07                	push   $0x7
  1026aa:	e9 21 01 00 00       	jmp    1027d0 <_alltraps>
  1026af:	90                   	nop

001026b0 <Xdblflt>:
  1026b0:	6a 08                	push   $0x8
  1026b2:	e9 19 01 00 00       	jmp    1027d0 <_alltraps>
  1026b7:	90                   	nop

001026b8 <Xcoproc>:
  1026b8:	6a 00                	push   $0x0
  1026ba:	6a 09                	push   $0x9
  1026bc:	e9 0f 01 00 00       	jmp    1027d0 <_alltraps>
  1026c1:	90                   	nop

001026c2 <Xtss>:
  1026c2:	6a 0a                	push   $0xa
  1026c4:	e9 07 01 00 00       	jmp    1027d0 <_alltraps>
  1026c9:	90                   	nop

001026ca <Xsegnp>:
  1026ca:	6a 0b                	push   $0xb
  1026cc:	e9 ff 00 00 00       	jmp    1027d0 <_alltraps>
  1026d1:	90                   	nop

001026d2 <Xstack>:
  1026d2:	6a 0c                	push   $0xc
  1026d4:	e9 f7 00 00 00       	jmp    1027d0 <_alltraps>
  1026d9:	90                   	nop

001026da <Xgpflt>:
  1026da:	6a 0d                	push   $0xd
  1026dc:	e9 ef 00 00 00       	jmp    1027d0 <_alltraps>
  1026e1:	90                   	nop

001026e2 <Xpgflt>:
  1026e2:	6a 0e                	push   $0xe
  1026e4:	e9 e7 00 00 00       	jmp    1027d0 <_alltraps>
  1026e9:	90                   	nop

001026ea <Xres>:
  1026ea:	6a 00                	push   $0x0
  1026ec:	6a 0f                	push   $0xf
  1026ee:	e9 dd 00 00 00       	jmp    1027d0 <_alltraps>
  1026f3:	90                   	nop

001026f4 <Xfperr>:
  1026f4:	6a 00                	push   $0x0
  1026f6:	6a 10                	push   $0x10
  1026f8:	e9 d3 00 00 00       	jmp    1027d0 <_alltraps>
  1026fd:	90                   	nop

001026fe <Xalign>:
  1026fe:	6a 11                	push   $0x11
  102700:	e9 cb 00 00 00       	jmp    1027d0 <_alltraps>
  102705:	90                   	nop

00102706 <Xmchk>:
  102706:	6a 00                	push   $0x0
  102708:	6a 12                	push   $0x12
  10270a:	e9 c1 00 00 00       	jmp    1027d0 <_alltraps>
  10270f:	90                   	nop

00102710 <Xirq_timer>:
  102710:	6a 00                	push   $0x0
  102712:	6a 20                	push   $0x20
  102714:	e9 b7 00 00 00       	jmp    1027d0 <_alltraps>
  102719:	90                   	nop

0010271a <Xirq_kbd>:
  10271a:	6a 00                	push   $0x0
  10271c:	6a 21                	push   $0x21
  10271e:	e9 ad 00 00 00       	jmp    1027d0 <_alltraps>
  102723:	90                   	nop

00102724 <Xirq_slave>:
  102724:	6a 00                	push   $0x0
  102726:	6a 22                	push   $0x22
  102728:	e9 a3 00 00 00       	jmp    1027d0 <_alltraps>
  10272d:	90                   	nop

0010272e <Xirq_serial2>:
  10272e:	6a 00                	push   $0x0
  102730:	6a 23                	push   $0x23
  102732:	e9 99 00 00 00       	jmp    1027d0 <_alltraps>
  102737:	90                   	nop

00102738 <Xirq_serial1>:
  102738:	6a 00                	push   $0x0
  10273a:	6a 24                	push   $0x24
  10273c:	e9 8f 00 00 00       	jmp    1027d0 <_alltraps>
  102741:	90                   	nop

00102742 <Xirq_lpt>:
  102742:	6a 00                	push   $0x0
  102744:	6a 25                	push   $0x25
  102746:	e9 85 00 00 00       	jmp    1027d0 <_alltraps>
  10274b:	90                   	nop

0010274c <Xirq_floppy>:
  10274c:	6a 00                	push   $0x0
  10274e:	6a 26                	push   $0x26
  102750:	eb 7e                	jmp    1027d0 <_alltraps>

00102752 <Xirq_spurious>:
  102752:	6a 00                	push   $0x0
  102754:	6a 27                	push   $0x27
  102756:	eb 78                	jmp    1027d0 <_alltraps>

00102758 <Xirq_rtc>:
  102758:	6a 00                	push   $0x0
  10275a:	6a 28                	push   $0x28
  10275c:	eb 72                	jmp    1027d0 <_alltraps>

0010275e <Xirq9>:
  10275e:	6a 00                	push   $0x0
  102760:	6a 29                	push   $0x29
  102762:	eb 6c                	jmp    1027d0 <_alltraps>

00102764 <Xirq10>:
  102764:	6a 00                	push   $0x0
  102766:	6a 2a                	push   $0x2a
  102768:	eb 66                	jmp    1027d0 <_alltraps>

0010276a <Xirq11>:
  10276a:	6a 00                	push   $0x0
  10276c:	6a 2b                	push   $0x2b
  10276e:	eb 60                	jmp    1027d0 <_alltraps>

00102770 <Xirq_mouse>:
  102770:	6a 00                	push   $0x0
  102772:	6a 2c                	push   $0x2c
  102774:	eb 5a                	jmp    1027d0 <_alltraps>

00102776 <Xirq_coproc>:
  102776:	6a 00                	push   $0x0
  102778:	6a 2d                	push   $0x2d
  10277a:	eb 54                	jmp    1027d0 <_alltraps>

0010277c <Xirq_ide1>:
  10277c:	6a 00                	push   $0x0
  10277e:	6a 2e                	push   $0x2e
  102780:	eb 4e                	jmp    1027d0 <_alltraps>

00102782 <Xirq_ide2>:
  102782:	6a 00                	push   $0x0
  102784:	6a 2f                	push   $0x2f
  102786:	eb 48                	jmp    1027d0 <_alltraps>

00102788 <Xirq_ehci1>:
  102788:	6a 00                	push   $0x0
  10278a:	6a 30                	push   $0x30
  10278c:	eb 42                	jmp    1027d0 <_alltraps>

0010278e <Xirq17>:
  10278e:	6a 00                	push   $0x0
  102790:	6a 31                	push   $0x31
  102792:	eb 3c                	jmp    1027d0 <_alltraps>

00102794 <Xirq18>:
  102794:	6a 00                	push   $0x0
  102796:	6a 32                	push   $0x32
  102798:	eb 36                	jmp    1027d0 <_alltraps>

0010279a <Xirq19>:
  10279a:	6a 00                	push   $0x0
  10279c:	6a 33                	push   $0x33
  10279e:	eb 30                	jmp    1027d0 <_alltraps>

001027a0 <Xirq20>:
  1027a0:	6a 00                	push   $0x0
  1027a2:	6a 34                	push   $0x34
  1027a4:	eb 2a                	jmp    1027d0 <_alltraps>

001027a6 <Xirq21>:
  1027a6:	6a 00                	push   $0x0
  1027a8:	6a 35                	push   $0x35
  1027aa:	eb 24                	jmp    1027d0 <_alltraps>

001027ac <Xirq22>:
  1027ac:	6a 00                	push   $0x0
  1027ae:	6a 36                	push   $0x36
  1027b0:	eb 1e                	jmp    1027d0 <_alltraps>

001027b2 <Xirq_ehci2>:
  1027b2:	6a 00                	push   $0x0
  1027b4:	6a 37                	push   $0x37
  1027b6:	eb 18                	jmp    1027d0 <_alltraps>

001027b8 <Xsyscall>:
  1027b8:	6a 00                	push   $0x0
  1027ba:	6a 30                	push   $0x30
  1027bc:	eb 12                	jmp    1027d0 <_alltraps>

001027be <Xdefault>:
  1027be:	68 fe 00 00 00       	push   $0xfe
  1027c3:	eb 0b                	jmp    1027d0 <_alltraps>
  1027c5:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  1027cc:	00 
  1027cd:	8d 76 00             	lea    0x0(%esi),%esi

001027d0 <_alltraps>:
  1027d0:	fa                   	cli
  1027d1:	1e                   	push   %ds
  1027d2:	06                   	push   %es
  1027d3:	60                   	pusha
  1027d4:	b8 10 00 00 00       	mov    $0x10,%eax
  1027d9:	8e d8                	mov    %eax,%ds
  1027db:	8e c0                	mov    %eax,%es
  1027dd:	54                   	push   %esp
  1027de:	e8 69 21 00 00       	call   10494c <trap>
  1027e3:	f4                   	hlt
  1027e4:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  1027eb:	00 
  1027ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

001027f0 <trap_return>:
  1027f0:	8b 64 24 04          	mov    0x4(%esp),%esp
  1027f4:	61                   	popa
  1027f5:	07                   	pop    %es
  1027f6:	1f                   	pop    %ds
  1027f7:	83 c4 08             	add    $0x8,%esp
  1027fa:	c3                   	ret

001027fb <memset>:
  1027fb:	55                   	push   %ebp
  1027fc:	89 e5                	mov    %esp,%ebp
  1027fe:	57                   	push   %edi
  1027ff:	e8 09 dc ff ff       	call   10040d <__x86.get_pc_thunk.ax>
  102804:	05 f0 a7 00 00       	add    $0xa7f0,%eax
  102809:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
  10280d:	75 05                	jne    102814 <memset+0x19>
  10280f:	8b 45 08             	mov    0x8(%ebp),%eax
  102812:	eb 5c                	jmp    102870 <memset+0x75>
  102814:	8b 45 08             	mov    0x8(%ebp),%eax
  102817:	83 e0 03             	and    $0x3,%eax
  10281a:	85 c0                	test   %eax,%eax
  10281c:	75 41                	jne    10285f <memset+0x64>
  10281e:	8b 45 10             	mov    0x10(%ebp),%eax
  102821:	83 e0 03             	and    $0x3,%eax
  102824:	85 c0                	test   %eax,%eax
  102826:	75 37                	jne    10285f <memset+0x64>
  102828:	81 65 0c ff 00 00 00 	andl   $0xff,0xc(%ebp)
  10282f:	8b 45 0c             	mov    0xc(%ebp),%eax
  102832:	c1 e0 18             	shl    $0x18,%eax
  102835:	89 c2                	mov    %eax,%edx
  102837:	8b 45 0c             	mov    0xc(%ebp),%eax
  10283a:	c1 e0 10             	shl    $0x10,%eax
  10283d:	09 c2                	or     %eax,%edx
  10283f:	8b 45 0c             	mov    0xc(%ebp),%eax
  102842:	c1 e0 08             	shl    $0x8,%eax
  102845:	09 d0                	or     %edx,%eax
  102847:	09 45 0c             	or     %eax,0xc(%ebp)
  10284a:	8b 45 10             	mov    0x10(%ebp),%eax
  10284d:	c1 e8 02             	shr    $0x2,%eax
  102850:	89 c1                	mov    %eax,%ecx
  102852:	8b 55 08             	mov    0x8(%ebp),%edx
  102855:	8b 45 0c             	mov    0xc(%ebp),%eax
  102858:	89 d7                	mov    %edx,%edi
  10285a:	fc                   	cld
  10285b:	f3 ab                	rep stos %eax,%es:(%edi)
  10285d:	eb 0e                	jmp    10286d <memset+0x72>
  10285f:	8b 55 08             	mov    0x8(%ebp),%edx
  102862:	8b 45 0c             	mov    0xc(%ebp),%eax
  102865:	8b 4d 10             	mov    0x10(%ebp),%ecx
  102868:	89 d7                	mov    %edx,%edi
  10286a:	fc                   	cld
  10286b:	f3 aa                	rep stos %al,%es:(%edi)
  10286d:	8b 45 08             	mov    0x8(%ebp),%eax
  102870:	8b 7d fc             	mov    -0x4(%ebp),%edi
  102873:	c9                   	leave
  102874:	c3                   	ret

00102875 <memmove>:
  102875:	55                   	push   %ebp
  102876:	89 e5                	mov    %esp,%ebp
  102878:	57                   	push   %edi
  102879:	56                   	push   %esi
  10287a:	53                   	push   %ebx
  10287b:	83 ec 10             	sub    $0x10,%esp
  10287e:	e8 8a db ff ff       	call   10040d <__x86.get_pc_thunk.ax>
  102883:	05 71 a7 00 00       	add    $0xa771,%eax
  102888:	8b 45 0c             	mov    0xc(%ebp),%eax
  10288b:	89 45 f0             	mov    %eax,-0x10(%ebp)
  10288e:	8b 45 08             	mov    0x8(%ebp),%eax
  102891:	89 45 ec             	mov    %eax,-0x14(%ebp)
  102894:	8b 45 f0             	mov    -0x10(%ebp),%eax
  102897:	3b 45 ec             	cmp    -0x14(%ebp),%eax
  10289a:	73 6d                	jae    102909 <memmove+0x94>
  10289c:	8b 55 f0             	mov    -0x10(%ebp),%edx
  10289f:	8b 45 10             	mov    0x10(%ebp),%eax
  1028a2:	01 d0                	add    %edx,%eax
  1028a4:	39 45 ec             	cmp    %eax,-0x14(%ebp)
  1028a7:	73 60                	jae    102909 <memmove+0x94>
  1028a9:	8b 45 10             	mov    0x10(%ebp),%eax
  1028ac:	01 45 f0             	add    %eax,-0x10(%ebp)
  1028af:	8b 45 10             	mov    0x10(%ebp),%eax
  1028b2:	01 45 ec             	add    %eax,-0x14(%ebp)
  1028b5:	8b 45 f0             	mov    -0x10(%ebp),%eax
  1028b8:	83 e0 03             	and    $0x3,%eax
  1028bb:	85 c0                	test   %eax,%eax
  1028bd:	75 2f                	jne    1028ee <memmove+0x79>
  1028bf:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1028c2:	83 e0 03             	and    $0x3,%eax
  1028c5:	85 c0                	test   %eax,%eax
  1028c7:	75 25                	jne    1028ee <memmove+0x79>
  1028c9:	8b 45 10             	mov    0x10(%ebp),%eax
  1028cc:	83 e0 03             	and    $0x3,%eax
  1028cf:	85 c0                	test   %eax,%eax
  1028d1:	75 1b                	jne    1028ee <memmove+0x79>
  1028d3:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1028d6:	83 e8 04             	sub    $0x4,%eax
  1028d9:	8b 55 f0             	mov    -0x10(%ebp),%edx
  1028dc:	83 ea 04             	sub    $0x4,%edx
  1028df:	8b 4d 10             	mov    0x10(%ebp),%ecx
  1028e2:	c1 e9 02             	shr    $0x2,%ecx
  1028e5:	89 c7                	mov    %eax,%edi
  1028e7:	89 d6                	mov    %edx,%esi
  1028e9:	fd                   	std
  1028ea:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
  1028ec:	eb 18                	jmp    102906 <memmove+0x91>
  1028ee:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1028f1:	8d 50 ff             	lea    -0x1(%eax),%edx
  1028f4:	8b 45 f0             	mov    -0x10(%ebp),%eax
  1028f7:	8d 58 ff             	lea    -0x1(%eax),%ebx
  1028fa:	8b 45 10             	mov    0x10(%ebp),%eax
  1028fd:	89 d7                	mov    %edx,%edi
  1028ff:	89 de                	mov    %ebx,%esi
  102901:	89 c1                	mov    %eax,%ecx
  102903:	fd                   	std
  102904:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
  102906:	fc                   	cld
  102907:	eb 45                	jmp    10294e <memmove+0xd9>
  102909:	8b 45 f0             	mov    -0x10(%ebp),%eax
  10290c:	83 e0 03             	and    $0x3,%eax
  10290f:	85 c0                	test   %eax,%eax
  102911:	75 2b                	jne    10293e <memmove+0xc9>
  102913:	8b 45 ec             	mov    -0x14(%ebp),%eax
  102916:	83 e0 03             	and    $0x3,%eax
  102919:	85 c0                	test   %eax,%eax
  10291b:	75 21                	jne    10293e <memmove+0xc9>
  10291d:	8b 45 10             	mov    0x10(%ebp),%eax
  102920:	83 e0 03             	and    $0x3,%eax
  102923:	85 c0                	test   %eax,%eax
  102925:	75 17                	jne    10293e <memmove+0xc9>
  102927:	8b 45 10             	mov    0x10(%ebp),%eax
  10292a:	c1 e8 02             	shr    $0x2,%eax
  10292d:	89 c1                	mov    %eax,%ecx
  10292f:	8b 45 ec             	mov    -0x14(%ebp),%eax
  102932:	8b 55 f0             	mov    -0x10(%ebp),%edx
  102935:	89 c7                	mov    %eax,%edi
  102937:	89 d6                	mov    %edx,%esi
  102939:	fc                   	cld
  10293a:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
  10293c:	eb 10                	jmp    10294e <memmove+0xd9>
  10293e:	8b 45 ec             	mov    -0x14(%ebp),%eax
  102941:	8b 55 f0             	mov    -0x10(%ebp),%edx
  102944:	8b 4d 10             	mov    0x10(%ebp),%ecx
  102947:	89 c7                	mov    %eax,%edi
  102949:	89 d6                	mov    %edx,%esi
  10294b:	fc                   	cld
  10294c:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
  10294e:	8b 45 08             	mov    0x8(%ebp),%eax
  102951:	83 c4 10             	add    $0x10,%esp
  102954:	5b                   	pop    %ebx
  102955:	5e                   	pop    %esi
  102956:	5f                   	pop    %edi
  102957:	5d                   	pop    %ebp
  102958:	c3                   	ret

00102959 <memcpy>:
  102959:	55                   	push   %ebp
  10295a:	89 e5                	mov    %esp,%ebp
  10295c:	e8 ac da ff ff       	call   10040d <__x86.get_pc_thunk.ax>
  102961:	05 93 a6 00 00       	add    $0xa693,%eax
  102966:	ff 75 10             	push   0x10(%ebp)
  102969:	ff 75 0c             	push   0xc(%ebp)
  10296c:	ff 75 08             	push   0x8(%ebp)
  10296f:	e8 01 ff ff ff       	call   102875 <memmove>
  102974:	83 c4 0c             	add    $0xc,%esp
  102977:	c9                   	leave
  102978:	c3                   	ret

00102979 <strncmp>:
  102979:	55                   	push   %ebp
  10297a:	89 e5                	mov    %esp,%ebp
  10297c:	e8 8c da ff ff       	call   10040d <__x86.get_pc_thunk.ax>
  102981:	05 73 a6 00 00       	add    $0xa673,%eax
  102986:	eb 0c                	jmp    102994 <strncmp+0x1b>
  102988:	83 6d 10 01          	subl   $0x1,0x10(%ebp)
  10298c:	83 45 08 01          	addl   $0x1,0x8(%ebp)
  102990:	83 45 0c 01          	addl   $0x1,0xc(%ebp)
  102994:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
  102998:	74 1a                	je     1029b4 <strncmp+0x3b>
  10299a:	8b 45 08             	mov    0x8(%ebp),%eax
  10299d:	0f b6 00             	movzbl (%eax),%eax
  1029a0:	84 c0                	test   %al,%al
  1029a2:	74 10                	je     1029b4 <strncmp+0x3b>
  1029a4:	8b 45 08             	mov    0x8(%ebp),%eax
  1029a7:	0f b6 10             	movzbl (%eax),%edx
  1029aa:	8b 45 0c             	mov    0xc(%ebp),%eax
  1029ad:	0f b6 00             	movzbl (%eax),%eax
  1029b0:	38 c2                	cmp    %al,%dl
  1029b2:	74 d4                	je     102988 <strncmp+0xf>
  1029b4:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
  1029b8:	75 07                	jne    1029c1 <strncmp+0x48>
  1029ba:	ba 00 00 00 00       	mov    $0x0,%edx
  1029bf:	eb 14                	jmp    1029d5 <strncmp+0x5c>
  1029c1:	8b 45 08             	mov    0x8(%ebp),%eax
  1029c4:	0f b6 00             	movzbl (%eax),%eax
  1029c7:	0f b6 d0             	movzbl %al,%edx
  1029ca:	8b 45 0c             	mov    0xc(%ebp),%eax
  1029cd:	0f b6 00             	movzbl (%eax),%eax
  1029d0:	0f b6 c0             	movzbl %al,%eax
  1029d3:	29 c2                	sub    %eax,%edx
  1029d5:	89 d0                	mov    %edx,%eax
  1029d7:	5d                   	pop    %ebp
  1029d8:	c3                   	ret

001029d9 <strnlen>:
  1029d9:	55                   	push   %ebp
  1029da:	89 e5                	mov    %esp,%ebp
  1029dc:	83 ec 10             	sub    $0x10,%esp
  1029df:	e8 29 da ff ff       	call   10040d <__x86.get_pc_thunk.ax>
  1029e4:	05 10 a6 00 00       	add    $0xa610,%eax
  1029e9:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  1029f0:	eb 0c                	jmp    1029fe <strnlen+0x25>
  1029f2:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  1029f6:	83 45 08 01          	addl   $0x1,0x8(%ebp)
  1029fa:	83 6d 0c 01          	subl   $0x1,0xc(%ebp)
  1029fe:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
  102a02:	74 0a                	je     102a0e <strnlen+0x35>
  102a04:	8b 45 08             	mov    0x8(%ebp),%eax
  102a07:	0f b6 00             	movzbl (%eax),%eax
  102a0a:	84 c0                	test   %al,%al
  102a0c:	75 e4                	jne    1029f2 <strnlen+0x19>
  102a0e:	8b 45 fc             	mov    -0x4(%ebp),%eax
  102a11:	c9                   	leave
  102a12:	c3                   	ret

00102a13 <strcmp>:
  102a13:	55                   	push   %ebp
  102a14:	89 e5                	mov    %esp,%ebp
  102a16:	e8 f2 d9 ff ff       	call   10040d <__x86.get_pc_thunk.ax>
  102a1b:	05 d9 a5 00 00       	add    $0xa5d9,%eax
  102a20:	eb 08                	jmp    102a2a <strcmp+0x17>
  102a22:	83 45 08 01          	addl   $0x1,0x8(%ebp)
  102a26:	83 45 0c 01          	addl   $0x1,0xc(%ebp)
  102a2a:	8b 45 08             	mov    0x8(%ebp),%eax
  102a2d:	0f b6 00             	movzbl (%eax),%eax
  102a30:	84 c0                	test   %al,%al
  102a32:	74 10                	je     102a44 <strcmp+0x31>
  102a34:	8b 45 08             	mov    0x8(%ebp),%eax
  102a37:	0f b6 10             	movzbl (%eax),%edx
  102a3a:	8b 45 0c             	mov    0xc(%ebp),%eax
  102a3d:	0f b6 00             	movzbl (%eax),%eax
  102a40:	38 c2                	cmp    %al,%dl
  102a42:	74 de                	je     102a22 <strcmp+0xf>
  102a44:	8b 45 08             	mov    0x8(%ebp),%eax
  102a47:	0f b6 00             	movzbl (%eax),%eax
  102a4a:	0f b6 d0             	movzbl %al,%edx
  102a4d:	8b 45 0c             	mov    0xc(%ebp),%eax
  102a50:	0f b6 00             	movzbl (%eax),%eax
  102a53:	0f b6 c0             	movzbl %al,%eax
  102a56:	29 c2                	sub    %eax,%edx
  102a58:	89 d0                	mov    %edx,%eax
  102a5a:	5d                   	pop    %ebp
  102a5b:	c3                   	ret

00102a5c <strchr>:
  102a5c:	55                   	push   %ebp
  102a5d:	89 e5                	mov    %esp,%ebp
  102a5f:	83 ec 04             	sub    $0x4,%esp
  102a62:	e8 a6 d9 ff ff       	call   10040d <__x86.get_pc_thunk.ax>
  102a67:	05 8d a5 00 00       	add    $0xa58d,%eax
  102a6c:	8b 45 0c             	mov    0xc(%ebp),%eax
  102a6f:	88 45 fc             	mov    %al,-0x4(%ebp)
  102a72:	eb 14                	jmp    102a88 <strchr+0x2c>
  102a74:	8b 45 08             	mov    0x8(%ebp),%eax
  102a77:	0f b6 00             	movzbl (%eax),%eax
  102a7a:	38 45 fc             	cmp    %al,-0x4(%ebp)
  102a7d:	75 05                	jne    102a84 <strchr+0x28>
  102a7f:	8b 45 08             	mov    0x8(%ebp),%eax
  102a82:	eb 13                	jmp    102a97 <strchr+0x3b>
  102a84:	83 45 08 01          	addl   $0x1,0x8(%ebp)
  102a88:	8b 45 08             	mov    0x8(%ebp),%eax
  102a8b:	0f b6 00             	movzbl (%eax),%eax
  102a8e:	84 c0                	test   %al,%al
  102a90:	75 e2                	jne    102a74 <strchr+0x18>
  102a92:	b8 00 00 00 00       	mov    $0x0,%eax
  102a97:	c9                   	leave
  102a98:	c3                   	ret

00102a99 <memzero>:
  102a99:	55                   	push   %ebp
  102a9a:	89 e5                	mov    %esp,%ebp
  102a9c:	e8 6c d9 ff ff       	call   10040d <__x86.get_pc_thunk.ax>
  102aa1:	05 53 a5 00 00       	add    $0xa553,%eax
  102aa6:	ff 75 0c             	push   0xc(%ebp)
  102aa9:	6a 00                	push   $0x0
  102aab:	ff 75 08             	push   0x8(%ebp)
  102aae:	e8 48 fd ff ff       	call   1027fb <memset>
  102ab3:	83 c4 0c             	add    $0xc,%esp
  102ab6:	c9                   	leave
  102ab7:	c3                   	ret

00102ab8 <debug_info>:
  102ab8:	55                   	push   %ebp
  102ab9:	89 e5                	mov    %esp,%ebp
  102abb:	53                   	push   %ebx
  102abc:	83 ec 14             	sub    $0x14,%esp
  102abf:	e8 49 d9 ff ff       	call   10040d <__x86.get_pc_thunk.ax>
  102ac4:	05 30 a5 00 00       	add    $0xa530,%eax
  102ac9:	8d 55 0c             	lea    0xc(%ebp),%edx
  102acc:	89 55 f4             	mov    %edx,-0xc(%ebp)
  102acf:	8b 55 f4             	mov    -0xc(%ebp),%edx
  102ad2:	83 ec 08             	sub    $0x8,%esp
  102ad5:	52                   	push   %edx
  102ad6:	ff 75 08             	push   0x8(%ebp)
  102ad9:	89 c3                	mov    %eax,%ebx
  102adb:	e8 68 02 00 00       	call   102d48 <vdprintf>
  102ae0:	83 c4 10             	add    $0x10,%esp
  102ae3:	90                   	nop
  102ae4:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  102ae7:	c9                   	leave
  102ae8:	c3                   	ret

00102ae9 <debug_normal>:
  102ae9:	55                   	push   %ebp
  102aea:	89 e5                	mov    %esp,%ebp
  102aec:	53                   	push   %ebx
  102aed:	83 ec 14             	sub    $0x14,%esp
  102af0:	e8 20 d9 ff ff       	call   100415 <__x86.get_pc_thunk.bx>
  102af5:	81 c3 ff a4 00 00    	add    $0xa4ff,%ebx
  102afb:	83 ec 04             	sub    $0x4,%esp
  102afe:	ff 75 0c             	push   0xc(%ebp)
  102b01:	ff 75 08             	push   0x8(%ebp)
  102b04:	8d 83 23 b1 ff ff    	lea    -0x4edd(%ebx),%eax
  102b0a:	50                   	push   %eax
  102b0b:	e8 ac 02 00 00       	call   102dbc <dprintf>
  102b10:	83 c4 10             	add    $0x10,%esp
  102b13:	8d 45 14             	lea    0x14(%ebp),%eax
  102b16:	89 45 f4             	mov    %eax,-0xc(%ebp)
  102b19:	8b 45 f4             	mov    -0xc(%ebp),%eax
  102b1c:	83 ec 08             	sub    $0x8,%esp
  102b1f:	50                   	push   %eax
  102b20:	ff 75 10             	push   0x10(%ebp)
  102b23:	e8 20 02 00 00       	call   102d48 <vdprintf>
  102b28:	83 c4 10             	add    $0x10,%esp
  102b2b:	90                   	nop
  102b2c:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  102b2f:	c9                   	leave
  102b30:	c3                   	ret

00102b31 <debug_trace>:
  102b31:	55                   	push   %ebp
  102b32:	89 e5                	mov    %esp,%ebp
  102b34:	83 ec 10             	sub    $0x10,%esp
  102b37:	e8 d1 d8 ff ff       	call   10040d <__x86.get_pc_thunk.ax>
  102b3c:	05 b8 a4 00 00       	add    $0xa4b8,%eax
  102b41:	8b 45 08             	mov    0x8(%ebp),%eax
  102b44:	89 45 f8             	mov    %eax,-0x8(%ebp)
  102b47:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  102b4e:	eb 23                	jmp    102b73 <debug_trace+0x42>
  102b50:	8b 45 fc             	mov    -0x4(%ebp),%eax
  102b53:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
  102b5a:	8b 45 0c             	mov    0xc(%ebp),%eax
  102b5d:	01 c2                	add    %eax,%edx
  102b5f:	8b 45 f8             	mov    -0x8(%ebp),%eax
  102b62:	8b 40 04             	mov    0x4(%eax),%eax
  102b65:	89 02                	mov    %eax,(%edx)
  102b67:	8b 45 f8             	mov    -0x8(%ebp),%eax
  102b6a:	8b 00                	mov    (%eax),%eax
  102b6c:	89 45 f8             	mov    %eax,-0x8(%ebp)
  102b6f:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  102b73:	83 7d fc 09          	cmpl   $0x9,-0x4(%ebp)
  102b77:	7f 21                	jg     102b9a <debug_trace+0x69>
  102b79:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
  102b7d:	75 d1                	jne    102b50 <debug_trace+0x1f>
  102b7f:	eb 19                	jmp    102b9a <debug_trace+0x69>
  102b81:	8b 45 fc             	mov    -0x4(%ebp),%eax
  102b84:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
  102b8b:	8b 45 0c             	mov    0xc(%ebp),%eax
  102b8e:	01 d0                	add    %edx,%eax
  102b90:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  102b96:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  102b9a:	83 7d fc 09          	cmpl   $0x9,-0x4(%ebp)
  102b9e:	7e e1                	jle    102b81 <debug_trace+0x50>
  102ba0:	90                   	nop
  102ba1:	90                   	nop
  102ba2:	c9                   	leave
  102ba3:	c3                   	ret

00102ba4 <debug_panic>:
  102ba4:	55                   	push   %ebp
  102ba5:	89 e5                	mov    %esp,%ebp
  102ba7:	53                   	push   %ebx
  102ba8:	83 ec 44             	sub    $0x44,%esp
  102bab:	e8 65 d8 ff ff       	call   100415 <__x86.get_pc_thunk.bx>
  102bb0:	81 c3 44 a4 00 00    	add    $0xa444,%ebx
  102bb6:	83 ec 04             	sub    $0x4,%esp
  102bb9:	ff 75 0c             	push   0xc(%ebp)
  102bbc:	ff 75 08             	push   0x8(%ebp)
  102bbf:	8d 83 2f b1 ff ff    	lea    -0x4ed1(%ebx),%eax
  102bc5:	50                   	push   %eax
  102bc6:	e8 f1 01 00 00       	call   102dbc <dprintf>
  102bcb:	83 c4 10             	add    $0x10,%esp
  102bce:	8d 45 14             	lea    0x14(%ebp),%eax
  102bd1:	89 45 c4             	mov    %eax,-0x3c(%ebp)
  102bd4:	8b 45 c4             	mov    -0x3c(%ebp),%eax
  102bd7:	83 ec 08             	sub    $0x8,%esp
  102bda:	50                   	push   %eax
  102bdb:	ff 75 10             	push   0x10(%ebp)
  102bde:	e8 65 01 00 00       	call   102d48 <vdprintf>
  102be3:	83 c4 10             	add    $0x10,%esp
  102be6:	89 e8                	mov    %ebp,%eax
  102be8:	89 45 f0             	mov    %eax,-0x10(%ebp)
  102beb:	8b 45 f0             	mov    -0x10(%ebp),%eax
  102bee:	83 ec 08             	sub    $0x8,%esp
  102bf1:	8d 55 c8             	lea    -0x38(%ebp),%edx
  102bf4:	52                   	push   %edx
  102bf5:	50                   	push   %eax
  102bf6:	e8 36 ff ff ff       	call   102b31 <debug_trace>
  102bfb:	83 c4 10             	add    $0x10,%esp
  102bfe:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  102c05:	eb 1e                	jmp    102c25 <debug_panic+0x81>
  102c07:	8b 45 f4             	mov    -0xc(%ebp),%eax
  102c0a:	8b 44 85 c8          	mov    -0x38(%ebp,%eax,4),%eax
  102c0e:	83 ec 08             	sub    $0x8,%esp
  102c11:	50                   	push   %eax
  102c12:	8d 83 3b b1 ff ff    	lea    -0x4ec5(%ebx),%eax
  102c18:	50                   	push   %eax
  102c19:	e8 9e 01 00 00       	call   102dbc <dprintf>
  102c1e:	83 c4 10             	add    $0x10,%esp
  102c21:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  102c25:	83 7d f4 09          	cmpl   $0x9,-0xc(%ebp)
  102c29:	7f 0b                	jg     102c36 <debug_panic+0x92>
  102c2b:	8b 45 f4             	mov    -0xc(%ebp),%eax
  102c2e:	8b 44 85 c8          	mov    -0x38(%ebp,%eax,4),%eax
  102c32:	85 c0                	test   %eax,%eax
  102c34:	75 d1                	jne    102c07 <debug_panic+0x63>
  102c36:	83 ec 0c             	sub    $0xc,%esp
  102c39:	8d 83 49 b1 ff ff    	lea    -0x4eb7(%ebx),%eax
  102c3f:	50                   	push   %eax
  102c40:	e8 77 01 00 00       	call   102dbc <dprintf>
  102c45:	83 c4 10             	add    $0x10,%esp
  102c48:	e8 e0 0c 00 00       	call   10392d <halt>
  102c4d:	90                   	nop
  102c4e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  102c51:	c9                   	leave
  102c52:	c3                   	ret

00102c53 <debug_warn>:
  102c53:	55                   	push   %ebp
  102c54:	89 e5                	mov    %esp,%ebp
  102c56:	53                   	push   %ebx
  102c57:	83 ec 14             	sub    $0x14,%esp
  102c5a:	e8 b6 d7 ff ff       	call   100415 <__x86.get_pc_thunk.bx>
  102c5f:	81 c3 95 a3 00 00    	add    $0xa395,%ebx
  102c65:	83 ec 04             	sub    $0x4,%esp
  102c68:	ff 75 0c             	push   0xc(%ebp)
  102c6b:	ff 75 08             	push   0x8(%ebp)
  102c6e:	8d 83 5b b1 ff ff    	lea    -0x4ea5(%ebx),%eax
  102c74:	50                   	push   %eax
  102c75:	e8 42 01 00 00       	call   102dbc <dprintf>
  102c7a:	83 c4 10             	add    $0x10,%esp
  102c7d:	8d 45 14             	lea    0x14(%ebp),%eax
  102c80:	89 45 f4             	mov    %eax,-0xc(%ebp)
  102c83:	8b 45 f4             	mov    -0xc(%ebp),%eax
  102c86:	83 ec 08             	sub    $0x8,%esp
  102c89:	50                   	push   %eax
  102c8a:	ff 75 10             	push   0x10(%ebp)
  102c8d:	e8 b6 00 00 00       	call   102d48 <vdprintf>
  102c92:	83 c4 10             	add    $0x10,%esp
  102c95:	90                   	nop
  102c96:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  102c99:	c9                   	leave
  102c9a:	c3                   	ret

00102c9b <cputs>:
  102c9b:	55                   	push   %ebp
  102c9c:	89 e5                	mov    %esp,%ebp
  102c9e:	53                   	push   %ebx
  102c9f:	83 ec 04             	sub    $0x4,%esp
  102ca2:	e8 6e d7 ff ff       	call   100415 <__x86.get_pc_thunk.bx>
  102ca7:	81 c3 4d a3 00 00    	add    $0xa34d,%ebx
  102cad:	eb 19                	jmp    102cc8 <cputs+0x2d>
  102caf:	8b 45 08             	mov    0x8(%ebp),%eax
  102cb2:	0f b6 00             	movzbl (%eax),%eax
  102cb5:	0f be c0             	movsbl %al,%eax
  102cb8:	83 ec 0c             	sub    $0xc,%esp
  102cbb:	50                   	push   %eax
  102cbc:	e8 64 d8 ff ff       	call   100525 <cons_putc>
  102cc1:	83 c4 10             	add    $0x10,%esp
  102cc4:	83 45 08 01          	addl   $0x1,0x8(%ebp)
  102cc8:	8b 45 08             	mov    0x8(%ebp),%eax
  102ccb:	0f b6 00             	movzbl (%eax),%eax
  102cce:	84 c0                	test   %al,%al
  102cd0:	75 dd                	jne    102caf <cputs+0x14>
  102cd2:	90                   	nop
  102cd3:	90                   	nop
  102cd4:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  102cd7:	c9                   	leave
  102cd8:	c3                   	ret

00102cd9 <putch>:
  102cd9:	55                   	push   %ebp
  102cda:	89 e5                	mov    %esp,%ebp
  102cdc:	83 ec 08             	sub    $0x8,%esp
  102cdf:	e8 29 d7 ff ff       	call   10040d <__x86.get_pc_thunk.ax>
  102ce4:	05 10 a3 00 00       	add    $0xa310,%eax
  102ce9:	8b 45 0c             	mov    0xc(%ebp),%eax
  102cec:	8b 00                	mov    (%eax),%eax
  102cee:	8d 48 01             	lea    0x1(%eax),%ecx
  102cf1:	8b 55 0c             	mov    0xc(%ebp),%edx
  102cf4:	89 0a                	mov    %ecx,(%edx)
  102cf6:	8b 55 08             	mov    0x8(%ebp),%edx
  102cf9:	89 d1                	mov    %edx,%ecx
  102cfb:	8b 55 0c             	mov    0xc(%ebp),%edx
  102cfe:	88 4c 02 08          	mov    %cl,0x8(%edx,%eax,1)
  102d02:	8b 45 0c             	mov    0xc(%ebp),%eax
  102d05:	8b 00                	mov    (%eax),%eax
  102d07:	3d ff 01 00 00       	cmp    $0x1ff,%eax
  102d0c:	75 28                	jne    102d36 <putch+0x5d>
  102d0e:	8b 45 0c             	mov    0xc(%ebp),%eax
  102d11:	8b 00                	mov    (%eax),%eax
  102d13:	8b 55 0c             	mov    0xc(%ebp),%edx
  102d16:	c6 44 02 08 00       	movb   $0x0,0x8(%edx,%eax,1)
  102d1b:	8b 45 0c             	mov    0xc(%ebp),%eax
  102d1e:	83 c0 08             	add    $0x8,%eax
  102d21:	83 ec 0c             	sub    $0xc,%esp
  102d24:	50                   	push   %eax
  102d25:	e8 71 ff ff ff       	call   102c9b <cputs>
  102d2a:	83 c4 10             	add    $0x10,%esp
  102d2d:	8b 45 0c             	mov    0xc(%ebp),%eax
  102d30:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  102d36:	8b 45 0c             	mov    0xc(%ebp),%eax
  102d39:	8b 40 04             	mov    0x4(%eax),%eax
  102d3c:	8d 50 01             	lea    0x1(%eax),%edx
  102d3f:	8b 45 0c             	mov    0xc(%ebp),%eax
  102d42:	89 50 04             	mov    %edx,0x4(%eax)
  102d45:	90                   	nop
  102d46:	c9                   	leave
  102d47:	c3                   	ret

00102d48 <vdprintf>:
  102d48:	55                   	push   %ebp
  102d49:	89 e5                	mov    %esp,%ebp
  102d4b:	53                   	push   %ebx
  102d4c:	81 ec 14 02 00 00    	sub    $0x214,%esp
  102d52:	e8 b6 d6 ff ff       	call   10040d <__x86.get_pc_thunk.ax>
  102d57:	05 9d a2 00 00       	add    $0xa29d,%eax
  102d5c:	c7 85 f0 fd ff ff 00 	movl   $0x0,-0x210(%ebp)
  102d63:	00 00 00 
  102d66:	c7 85 f4 fd ff ff 00 	movl   $0x0,-0x20c(%ebp)
  102d6d:	00 00 00 
  102d70:	ff 75 0c             	push   0xc(%ebp)
  102d73:	ff 75 08             	push   0x8(%ebp)
  102d76:	8d 95 f0 fd ff ff    	lea    -0x210(%ebp),%edx
  102d7c:	52                   	push   %edx
  102d7d:	8d 90 e5 5c ff ff    	lea    -0xa31b(%eax),%edx
  102d83:	52                   	push   %edx
  102d84:	89 c3                	mov    %eax,%ebx
  102d86:	e8 d6 01 00 00       	call   102f61 <vprintfmt>
  102d8b:	83 c4 10             	add    $0x10,%esp
  102d8e:	8b 85 f0 fd ff ff    	mov    -0x210(%ebp),%eax
  102d94:	c6 84 05 f8 fd ff ff 	movb   $0x0,-0x208(%ebp,%eax,1)
  102d9b:	00 
  102d9c:	83 ec 0c             	sub    $0xc,%esp
  102d9f:	8d 85 f0 fd ff ff    	lea    -0x210(%ebp),%eax
  102da5:	83 c0 08             	add    $0x8,%eax
  102da8:	50                   	push   %eax
  102da9:	e8 ed fe ff ff       	call   102c9b <cputs>
  102dae:	83 c4 10             	add    $0x10,%esp
  102db1:	8b 85 f4 fd ff ff    	mov    -0x20c(%ebp),%eax
  102db7:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  102dba:	c9                   	leave
  102dbb:	c3                   	ret

00102dbc <dprintf>:
  102dbc:	55                   	push   %ebp
  102dbd:	89 e5                	mov    %esp,%ebp
  102dbf:	83 ec 18             	sub    $0x18,%esp
  102dc2:	e8 46 d6 ff ff       	call   10040d <__x86.get_pc_thunk.ax>
  102dc7:	05 2d a2 00 00       	add    $0xa22d,%eax
  102dcc:	8d 45 0c             	lea    0xc(%ebp),%eax
  102dcf:	89 45 f0             	mov    %eax,-0x10(%ebp)
  102dd2:	8b 45 f0             	mov    -0x10(%ebp),%eax
  102dd5:	83 ec 08             	sub    $0x8,%esp
  102dd8:	50                   	push   %eax
  102dd9:	ff 75 08             	push   0x8(%ebp)
  102ddc:	e8 67 ff ff ff       	call   102d48 <vdprintf>
  102de1:	83 c4 10             	add    $0x10,%esp
  102de4:	89 45 f4             	mov    %eax,-0xc(%ebp)
  102de7:	8b 45 f4             	mov    -0xc(%ebp),%eax
  102dea:	c9                   	leave
  102deb:	c3                   	ret

00102dec <printnum>:
  102dec:	55                   	push   %ebp
  102ded:	89 e5                	mov    %esp,%ebp
  102def:	57                   	push   %edi
  102df0:	56                   	push   %esi
  102df1:	53                   	push   %ebx
  102df2:	83 ec 1c             	sub    $0x1c,%esp
  102df5:	e8 b2 04 00 00       	call   1032ac <__x86.get_pc_thunk.si>
  102dfa:	81 c6 fa a1 00 00    	add    $0xa1fa,%esi
  102e00:	8b 45 10             	mov    0x10(%ebp),%eax
  102e03:	89 45 e0             	mov    %eax,-0x20(%ebp)
  102e06:	8b 45 14             	mov    0x14(%ebp),%eax
  102e09:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  102e0c:	8b 45 18             	mov    0x18(%ebp),%eax
  102e0f:	ba 00 00 00 00       	mov    $0x0,%edx
  102e14:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
  102e17:	39 45 e0             	cmp    %eax,-0x20(%ebp)
  102e1a:	19 d1                	sbb    %edx,%ecx
  102e1c:	72 4d                	jb     102e6b <printnum+0x7f>
  102e1e:	8b 45 1c             	mov    0x1c(%ebp),%eax
  102e21:	8d 78 ff             	lea    -0x1(%eax),%edi
  102e24:	8b 45 18             	mov    0x18(%ebp),%eax
  102e27:	ba 00 00 00 00       	mov    $0x0,%edx
  102e2c:	52                   	push   %edx
  102e2d:	50                   	push   %eax
  102e2e:	ff 75 e4             	push   -0x1c(%ebp)
  102e31:	ff 75 e0             	push   -0x20(%ebp)
  102e34:	89 f3                	mov    %esi,%ebx
  102e36:	e8 65 41 00 00       	call   106fa0 <__udivdi3>
  102e3b:	83 c4 10             	add    $0x10,%esp
  102e3e:	83 ec 04             	sub    $0x4,%esp
  102e41:	ff 75 20             	push   0x20(%ebp)
  102e44:	57                   	push   %edi
  102e45:	ff 75 18             	push   0x18(%ebp)
  102e48:	52                   	push   %edx
  102e49:	50                   	push   %eax
  102e4a:	ff 75 0c             	push   0xc(%ebp)
  102e4d:	ff 75 08             	push   0x8(%ebp)
  102e50:	e8 97 ff ff ff       	call   102dec <printnum>
  102e55:	83 c4 20             	add    $0x20,%esp
  102e58:	eb 1b                	jmp    102e75 <printnum+0x89>
  102e5a:	83 ec 08             	sub    $0x8,%esp
  102e5d:	ff 75 0c             	push   0xc(%ebp)
  102e60:	ff 75 20             	push   0x20(%ebp)
  102e63:	8b 45 08             	mov    0x8(%ebp),%eax
  102e66:	ff d0                	call   *%eax
  102e68:	83 c4 10             	add    $0x10,%esp
  102e6b:	83 6d 1c 01          	subl   $0x1,0x1c(%ebp)
  102e6f:	83 7d 1c 00          	cmpl   $0x0,0x1c(%ebp)
  102e73:	7f e5                	jg     102e5a <printnum+0x6e>
  102e75:	8b 4d 18             	mov    0x18(%ebp),%ecx
  102e78:	bb 00 00 00 00       	mov    $0x0,%ebx
  102e7d:	8b 45 e0             	mov    -0x20(%ebp),%eax
  102e80:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  102e83:	53                   	push   %ebx
  102e84:	51                   	push   %ecx
  102e85:	52                   	push   %edx
  102e86:	50                   	push   %eax
  102e87:	89 f3                	mov    %esi,%ebx
  102e89:	e8 42 42 00 00       	call   1070d0 <__umoddi3>
  102e8e:	83 c4 10             	add    $0x10,%esp
  102e91:	8d 8e 68 b1 ff ff    	lea    -0x4e98(%esi),%ecx
  102e97:	01 c8                	add    %ecx,%eax
  102e99:	0f b6 00             	movzbl (%eax),%eax
  102e9c:	0f be c0             	movsbl %al,%eax
  102e9f:	83 ec 08             	sub    $0x8,%esp
  102ea2:	ff 75 0c             	push   0xc(%ebp)
  102ea5:	50                   	push   %eax
  102ea6:	8b 45 08             	mov    0x8(%ebp),%eax
  102ea9:	ff d0                	call   *%eax
  102eab:	83 c4 10             	add    $0x10,%esp
  102eae:	90                   	nop
  102eaf:	8d 65 f4             	lea    -0xc(%ebp),%esp
  102eb2:	5b                   	pop    %ebx
  102eb3:	5e                   	pop    %esi
  102eb4:	5f                   	pop    %edi
  102eb5:	5d                   	pop    %ebp
  102eb6:	c3                   	ret

00102eb7 <getuint>:
  102eb7:	55                   	push   %ebp
  102eb8:	89 e5                	mov    %esp,%ebp
  102eba:	e8 4e d5 ff ff       	call   10040d <__x86.get_pc_thunk.ax>
  102ebf:	05 35 a1 00 00       	add    $0xa135,%eax
  102ec4:	83 7d 0c 01          	cmpl   $0x1,0xc(%ebp)
  102ec8:	7e 14                	jle    102ede <getuint+0x27>
  102eca:	8b 45 08             	mov    0x8(%ebp),%eax
  102ecd:	8b 00                	mov    (%eax),%eax
  102ecf:	8d 48 08             	lea    0x8(%eax),%ecx
  102ed2:	8b 55 08             	mov    0x8(%ebp),%edx
  102ed5:	89 0a                	mov    %ecx,(%edx)
  102ed7:	8b 50 04             	mov    0x4(%eax),%edx
  102eda:	8b 00                	mov    (%eax),%eax
  102edc:	eb 30                	jmp    102f0e <getuint+0x57>
  102ede:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
  102ee2:	74 16                	je     102efa <getuint+0x43>
  102ee4:	8b 45 08             	mov    0x8(%ebp),%eax
  102ee7:	8b 00                	mov    (%eax),%eax
  102ee9:	8d 48 04             	lea    0x4(%eax),%ecx
  102eec:	8b 55 08             	mov    0x8(%ebp),%edx
  102eef:	89 0a                	mov    %ecx,(%edx)
  102ef1:	8b 00                	mov    (%eax),%eax
  102ef3:	ba 00 00 00 00       	mov    $0x0,%edx
  102ef8:	eb 14                	jmp    102f0e <getuint+0x57>
  102efa:	8b 45 08             	mov    0x8(%ebp),%eax
  102efd:	8b 00                	mov    (%eax),%eax
  102eff:	8d 48 04             	lea    0x4(%eax),%ecx
  102f02:	8b 55 08             	mov    0x8(%ebp),%edx
  102f05:	89 0a                	mov    %ecx,(%edx)
  102f07:	8b 00                	mov    (%eax),%eax
  102f09:	ba 00 00 00 00       	mov    $0x0,%edx
  102f0e:	5d                   	pop    %ebp
  102f0f:	c3                   	ret

00102f10 <getint>:
  102f10:	55                   	push   %ebp
  102f11:	89 e5                	mov    %esp,%ebp
  102f13:	e8 f5 d4 ff ff       	call   10040d <__x86.get_pc_thunk.ax>
  102f18:	05 dc a0 00 00       	add    $0xa0dc,%eax
  102f1d:	83 7d 0c 01          	cmpl   $0x1,0xc(%ebp)
  102f21:	7e 14                	jle    102f37 <getint+0x27>
  102f23:	8b 45 08             	mov    0x8(%ebp),%eax
  102f26:	8b 00                	mov    (%eax),%eax
  102f28:	8d 48 08             	lea    0x8(%eax),%ecx
  102f2b:	8b 55 08             	mov    0x8(%ebp),%edx
  102f2e:	89 0a                	mov    %ecx,(%edx)
  102f30:	8b 50 04             	mov    0x4(%eax),%edx
  102f33:	8b 00                	mov    (%eax),%eax
  102f35:	eb 28                	jmp    102f5f <getint+0x4f>
  102f37:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
  102f3b:	74 12                	je     102f4f <getint+0x3f>
  102f3d:	8b 45 08             	mov    0x8(%ebp),%eax
  102f40:	8b 00                	mov    (%eax),%eax
  102f42:	8d 48 04             	lea    0x4(%eax),%ecx
  102f45:	8b 55 08             	mov    0x8(%ebp),%edx
  102f48:	89 0a                	mov    %ecx,(%edx)
  102f4a:	8b 00                	mov    (%eax),%eax
  102f4c:	99                   	cltd
  102f4d:	eb 10                	jmp    102f5f <getint+0x4f>
  102f4f:	8b 45 08             	mov    0x8(%ebp),%eax
  102f52:	8b 00                	mov    (%eax),%eax
  102f54:	8d 48 04             	lea    0x4(%eax),%ecx
  102f57:	8b 55 08             	mov    0x8(%ebp),%edx
  102f5a:	89 0a                	mov    %ecx,(%edx)
  102f5c:	8b 00                	mov    (%eax),%eax
  102f5e:	99                   	cltd
  102f5f:	5d                   	pop    %ebp
  102f60:	c3                   	ret

00102f61 <vprintfmt>:
  102f61:	55                   	push   %ebp
  102f62:	89 e5                	mov    %esp,%ebp
  102f64:	57                   	push   %edi
  102f65:	56                   	push   %esi
  102f66:	53                   	push   %ebx
  102f67:	83 ec 2c             	sub    $0x2c,%esp
  102f6a:	e8 41 03 00 00       	call   1032b0 <__x86.get_pc_thunk.di>
  102f6f:	81 c7 85 a0 00 00    	add    $0xa085,%edi
  102f75:	eb 17                	jmp    102f8e <vprintfmt+0x2d>
  102f77:	85 db                	test   %ebx,%ebx
  102f79:	0f 84 24 03 00 00    	je     1032a3 <.L21+0x2d>
  102f7f:	83 ec 08             	sub    $0x8,%esp
  102f82:	ff 75 0c             	push   0xc(%ebp)
  102f85:	53                   	push   %ebx
  102f86:	8b 45 08             	mov    0x8(%ebp),%eax
  102f89:	ff d0                	call   *%eax
  102f8b:	83 c4 10             	add    $0x10,%esp
  102f8e:	8b 45 10             	mov    0x10(%ebp),%eax
  102f91:	8d 50 01             	lea    0x1(%eax),%edx
  102f94:	89 55 10             	mov    %edx,0x10(%ebp)
  102f97:	0f b6 00             	movzbl (%eax),%eax
  102f9a:	0f b6 d8             	movzbl %al,%ebx
  102f9d:	83 fb 25             	cmp    $0x25,%ebx
  102fa0:	75 d5                	jne    102f77 <vprintfmt+0x16>
  102fa2:	c6 45 cb 20          	movb   $0x20,-0x35(%ebp)
  102fa6:	c7 45 d4 ff ff ff ff 	movl   $0xffffffff,-0x2c(%ebp)
  102fad:	c7 45 d0 ff ff ff ff 	movl   $0xffffffff,-0x30(%ebp)
  102fb4:	c7 45 d8 00 00 00 00 	movl   $0x0,-0x28(%ebp)
  102fbb:	c7 45 cc 00 00 00 00 	movl   $0x0,-0x34(%ebp)
  102fc2:	eb 04                	jmp    102fc8 <vprintfmt+0x67>
  102fc4:	90                   	nop
  102fc5:	eb 01                	jmp    102fc8 <vprintfmt+0x67>
  102fc7:	90                   	nop
  102fc8:	8b 45 10             	mov    0x10(%ebp),%eax
  102fcb:	8d 50 01             	lea    0x1(%eax),%edx
  102fce:	89 55 10             	mov    %edx,0x10(%ebp)
  102fd1:	0f b6 00             	movzbl (%eax),%eax
  102fd4:	0f b6 d8             	movzbl %al,%ebx
  102fd7:	8d 43 dd             	lea    -0x23(%ebx),%eax
  102fda:	83 f8 55             	cmp    $0x55,%eax
  102fdd:	0f 87 93 02 00 00    	ja     103276 <.L21>
  102fe3:	c1 e0 02             	shl    $0x2,%eax
  102fe6:	8b 84 38 80 b1 ff ff 	mov    -0x4e80(%eax,%edi,1),%eax
  102fed:	01 f8                	add    %edi,%eax
  102fef:	ff e0                	jmp    *%eax

00102ff1 <.L33>:
  102ff1:	c6 45 cb 2d          	movb   $0x2d,-0x35(%ebp)
  102ff5:	eb d1                	jmp    102fc8 <vprintfmt+0x67>

00102ff7 <.L31>:
  102ff7:	c6 45 cb 30          	movb   $0x30,-0x35(%ebp)
  102ffb:	eb cb                	jmp    102fc8 <vprintfmt+0x67>

00102ffd <.L30>:
  102ffd:	c7 45 d0 00 00 00 00 	movl   $0x0,-0x30(%ebp)
  103004:	8b 55 d0             	mov    -0x30(%ebp),%edx
  103007:	89 d0                	mov    %edx,%eax
  103009:	c1 e0 02             	shl    $0x2,%eax
  10300c:	01 d0                	add    %edx,%eax
  10300e:	01 c0                	add    %eax,%eax
  103010:	01 d8                	add    %ebx,%eax
  103012:	83 e8 30             	sub    $0x30,%eax
  103015:	89 45 d0             	mov    %eax,-0x30(%ebp)
  103018:	8b 45 10             	mov    0x10(%ebp),%eax
  10301b:	0f b6 00             	movzbl (%eax),%eax
  10301e:	0f be d8             	movsbl %al,%ebx
  103021:	83 fb 2f             	cmp    $0x2f,%ebx
  103024:	7e 3d                	jle    103063 <.L36+0xc>
  103026:	83 fb 39             	cmp    $0x39,%ebx
  103029:	7f 38                	jg     103063 <.L36+0xc>
  10302b:	83 45 10 01          	addl   $0x1,0x10(%ebp)
  10302f:	eb d3                	jmp    103004 <.L30+0x7>

00103031 <.L34>:
  103031:	8b 45 14             	mov    0x14(%ebp),%eax
  103034:	8d 50 04             	lea    0x4(%eax),%edx
  103037:	89 55 14             	mov    %edx,0x14(%ebp)
  10303a:	8b 00                	mov    (%eax),%eax
  10303c:	89 45 d0             	mov    %eax,-0x30(%ebp)
  10303f:	eb 23                	jmp    103064 <.L36+0xd>

00103041 <.L32>:
  103041:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
  103045:	0f 89 79 ff ff ff    	jns    102fc4 <vprintfmt+0x63>
  10304b:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
  103052:	e9 6d ff ff ff       	jmp    102fc4 <vprintfmt+0x63>

00103057 <.L36>:
  103057:	c7 45 cc 01 00 00 00 	movl   $0x1,-0x34(%ebp)
  10305e:	e9 65 ff ff ff       	jmp    102fc8 <vprintfmt+0x67>
  103063:	90                   	nop
  103064:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
  103068:	0f 89 59 ff ff ff    	jns    102fc7 <vprintfmt+0x66>
  10306e:	8b 45 d0             	mov    -0x30(%ebp),%eax
  103071:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  103074:	c7 45 d0 ff ff ff ff 	movl   $0xffffffff,-0x30(%ebp)
  10307b:	e9 47 ff ff ff       	jmp    102fc7 <vprintfmt+0x66>

00103080 <.L27>:
  103080:	83 45 d8 01          	addl   $0x1,-0x28(%ebp)
  103084:	e9 3f ff ff ff       	jmp    102fc8 <vprintfmt+0x67>

00103089 <.L29>:
  103089:	8b 45 14             	mov    0x14(%ebp),%eax
  10308c:	8d 50 04             	lea    0x4(%eax),%edx
  10308f:	89 55 14             	mov    %edx,0x14(%ebp)
  103092:	8b 00                	mov    (%eax),%eax
  103094:	83 ec 08             	sub    $0x8,%esp
  103097:	ff 75 0c             	push   0xc(%ebp)
  10309a:	50                   	push   %eax
  10309b:	8b 45 08             	mov    0x8(%ebp),%eax
  10309e:	ff d0                	call   *%eax
  1030a0:	83 c4 10             	add    $0x10,%esp
  1030a3:	e9 f6 01 00 00       	jmp    10329e <.L21+0x28>

001030a8 <.L25>:
  1030a8:	8b 45 14             	mov    0x14(%ebp),%eax
  1030ab:	8d 50 04             	lea    0x4(%eax),%edx
  1030ae:	89 55 14             	mov    %edx,0x14(%ebp)
  1030b1:	8b 30                	mov    (%eax),%esi
  1030b3:	85 f6                	test   %esi,%esi
  1030b5:	75 06                	jne    1030bd <.L25+0x15>
  1030b7:	8d b7 79 b1 ff ff    	lea    -0x4e87(%edi),%esi
  1030bd:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
  1030c1:	7e 71                	jle    103134 <.L25+0x8c>
  1030c3:	80 7d cb 2d          	cmpb   $0x2d,-0x35(%ebp)
  1030c7:	74 6b                	je     103134 <.L25+0x8c>
  1030c9:	8b 45 d0             	mov    -0x30(%ebp),%eax
  1030cc:	83 ec 08             	sub    $0x8,%esp
  1030cf:	50                   	push   %eax
  1030d0:	56                   	push   %esi
  1030d1:	89 fb                	mov    %edi,%ebx
  1030d3:	e8 01 f9 ff ff       	call   1029d9 <strnlen>
  1030d8:	83 c4 10             	add    $0x10,%esp
  1030db:	29 45 d4             	sub    %eax,-0x2c(%ebp)
  1030de:	eb 17                	jmp    1030f7 <.L25+0x4f>
  1030e0:	0f be 45 cb          	movsbl -0x35(%ebp),%eax
  1030e4:	83 ec 08             	sub    $0x8,%esp
  1030e7:	ff 75 0c             	push   0xc(%ebp)
  1030ea:	50                   	push   %eax
  1030eb:	8b 45 08             	mov    0x8(%ebp),%eax
  1030ee:	ff d0                	call   *%eax
  1030f0:	83 c4 10             	add    $0x10,%esp
  1030f3:	83 6d d4 01          	subl   $0x1,-0x2c(%ebp)
  1030f7:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
  1030fb:	7f e3                	jg     1030e0 <.L25+0x38>
  1030fd:	eb 35                	jmp    103134 <.L25+0x8c>
  1030ff:	83 7d cc 00          	cmpl   $0x0,-0x34(%ebp)
  103103:	74 1c                	je     103121 <.L25+0x79>
  103105:	83 fb 1f             	cmp    $0x1f,%ebx
  103108:	7e 05                	jle    10310f <.L25+0x67>
  10310a:	83 fb 7e             	cmp    $0x7e,%ebx
  10310d:	7e 12                	jle    103121 <.L25+0x79>
  10310f:	83 ec 08             	sub    $0x8,%esp
  103112:	ff 75 0c             	push   0xc(%ebp)
  103115:	6a 3f                	push   $0x3f
  103117:	8b 45 08             	mov    0x8(%ebp),%eax
  10311a:	ff d0                	call   *%eax
  10311c:	83 c4 10             	add    $0x10,%esp
  10311f:	eb 0f                	jmp    103130 <.L25+0x88>
  103121:	83 ec 08             	sub    $0x8,%esp
  103124:	ff 75 0c             	push   0xc(%ebp)
  103127:	53                   	push   %ebx
  103128:	8b 45 08             	mov    0x8(%ebp),%eax
  10312b:	ff d0                	call   *%eax
  10312d:	83 c4 10             	add    $0x10,%esp
  103130:	83 6d d4 01          	subl   $0x1,-0x2c(%ebp)
  103134:	89 f0                	mov    %esi,%eax
  103136:	8d 70 01             	lea    0x1(%eax),%esi
  103139:	0f b6 00             	movzbl (%eax),%eax
  10313c:	0f be d8             	movsbl %al,%ebx
  10313f:	85 db                	test   %ebx,%ebx
  103141:	74 26                	je     103169 <.L25+0xc1>
  103143:	83 7d d0 00          	cmpl   $0x0,-0x30(%ebp)
  103147:	78 b6                	js     1030ff <.L25+0x57>
  103149:	83 6d d0 01          	subl   $0x1,-0x30(%ebp)
  10314d:	83 7d d0 00          	cmpl   $0x0,-0x30(%ebp)
  103151:	79 ac                	jns    1030ff <.L25+0x57>
  103153:	eb 14                	jmp    103169 <.L25+0xc1>
  103155:	83 ec 08             	sub    $0x8,%esp
  103158:	ff 75 0c             	push   0xc(%ebp)
  10315b:	6a 20                	push   $0x20
  10315d:	8b 45 08             	mov    0x8(%ebp),%eax
  103160:	ff d0                	call   *%eax
  103162:	83 c4 10             	add    $0x10,%esp
  103165:	83 6d d4 01          	subl   $0x1,-0x2c(%ebp)
  103169:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
  10316d:	7f e6                	jg     103155 <.L25+0xad>
  10316f:	e9 2a 01 00 00       	jmp    10329e <.L21+0x28>

00103174 <.L28>:
  103174:	83 ec 08             	sub    $0x8,%esp
  103177:	ff 75 d8             	push   -0x28(%ebp)
  10317a:	8d 45 14             	lea    0x14(%ebp),%eax
  10317d:	50                   	push   %eax
  10317e:	e8 8d fd ff ff       	call   102f10 <getint>
  103183:	83 c4 10             	add    $0x10,%esp
  103186:	89 45 e0             	mov    %eax,-0x20(%ebp)
  103189:	89 55 e4             	mov    %edx,-0x1c(%ebp)
  10318c:	8b 45 e0             	mov    -0x20(%ebp),%eax
  10318f:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  103192:	85 d2                	test   %edx,%edx
  103194:	79 23                	jns    1031b9 <.L28+0x45>
  103196:	83 ec 08             	sub    $0x8,%esp
  103199:	ff 75 0c             	push   0xc(%ebp)
  10319c:	6a 2d                	push   $0x2d
  10319e:	8b 45 08             	mov    0x8(%ebp),%eax
  1031a1:	ff d0                	call   *%eax
  1031a3:	83 c4 10             	add    $0x10,%esp
  1031a6:	8b 45 e0             	mov    -0x20(%ebp),%eax
  1031a9:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  1031ac:	f7 d8                	neg    %eax
  1031ae:	83 d2 00             	adc    $0x0,%edx
  1031b1:	f7 da                	neg    %edx
  1031b3:	89 45 e0             	mov    %eax,-0x20(%ebp)
  1031b6:	89 55 e4             	mov    %edx,-0x1c(%ebp)
  1031b9:	c7 45 dc 0a 00 00 00 	movl   $0xa,-0x24(%ebp)
  1031c0:	eb 7e                	jmp    103240 <.L22+0x1f>

001031c2 <.L24>:
  1031c2:	83 ec 08             	sub    $0x8,%esp
  1031c5:	ff 75 d8             	push   -0x28(%ebp)
  1031c8:	8d 45 14             	lea    0x14(%ebp),%eax
  1031cb:	50                   	push   %eax
  1031cc:	e8 e6 fc ff ff       	call   102eb7 <getuint>
  1031d1:	83 c4 10             	add    $0x10,%esp
  1031d4:	89 45 e0             	mov    %eax,-0x20(%ebp)
  1031d7:	89 55 e4             	mov    %edx,-0x1c(%ebp)
  1031da:	c7 45 dc 0a 00 00 00 	movl   $0xa,-0x24(%ebp)
  1031e1:	eb 5d                	jmp    103240 <.L22+0x1f>

001031e3 <.L26>:
  1031e3:	83 ec 08             	sub    $0x8,%esp
  1031e6:	ff 75 0c             	push   0xc(%ebp)
  1031e9:	6a 30                	push   $0x30
  1031eb:	8b 45 08             	mov    0x8(%ebp),%eax
  1031ee:	ff d0                	call   *%eax
  1031f0:	83 c4 10             	add    $0x10,%esp
  1031f3:	83 ec 08             	sub    $0x8,%esp
  1031f6:	ff 75 0c             	push   0xc(%ebp)
  1031f9:	6a 78                	push   $0x78
  1031fb:	8b 45 08             	mov    0x8(%ebp),%eax
  1031fe:	ff d0                	call   *%eax
  103200:	83 c4 10             	add    $0x10,%esp
  103203:	8b 45 14             	mov    0x14(%ebp),%eax
  103206:	8d 50 04             	lea    0x4(%eax),%edx
  103209:	89 55 14             	mov    %edx,0x14(%ebp)
  10320c:	8b 00                	mov    (%eax),%eax
  10320e:	89 45 e0             	mov    %eax,-0x20(%ebp)
  103211:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
  103218:	c7 45 dc 10 00 00 00 	movl   $0x10,-0x24(%ebp)
  10321f:	eb 1f                	jmp    103240 <.L22+0x1f>

00103221 <.L22>:
  103221:	83 ec 08             	sub    $0x8,%esp
  103224:	ff 75 d8             	push   -0x28(%ebp)
  103227:	8d 45 14             	lea    0x14(%ebp),%eax
  10322a:	50                   	push   %eax
  10322b:	e8 87 fc ff ff       	call   102eb7 <getuint>
  103230:	83 c4 10             	add    $0x10,%esp
  103233:	89 45 e0             	mov    %eax,-0x20(%ebp)
  103236:	89 55 e4             	mov    %edx,-0x1c(%ebp)
  103239:	c7 45 dc 10 00 00 00 	movl   $0x10,-0x24(%ebp)
  103240:	0f be 55 cb          	movsbl -0x35(%ebp),%edx
  103244:	8b 45 dc             	mov    -0x24(%ebp),%eax
  103247:	83 ec 04             	sub    $0x4,%esp
  10324a:	52                   	push   %edx
  10324b:	ff 75 d4             	push   -0x2c(%ebp)
  10324e:	50                   	push   %eax
  10324f:	ff 75 e4             	push   -0x1c(%ebp)
  103252:	ff 75 e0             	push   -0x20(%ebp)
  103255:	ff 75 0c             	push   0xc(%ebp)
  103258:	ff 75 08             	push   0x8(%ebp)
  10325b:	e8 8c fb ff ff       	call   102dec <printnum>
  103260:	83 c4 20             	add    $0x20,%esp
  103263:	eb 39                	jmp    10329e <.L21+0x28>

00103265 <.L35>:
  103265:	83 ec 08             	sub    $0x8,%esp
  103268:	ff 75 0c             	push   0xc(%ebp)
  10326b:	53                   	push   %ebx
  10326c:	8b 45 08             	mov    0x8(%ebp),%eax
  10326f:	ff d0                	call   *%eax
  103271:	83 c4 10             	add    $0x10,%esp
  103274:	eb 28                	jmp    10329e <.L21+0x28>

00103276 <.L21>:
  103276:	83 ec 08             	sub    $0x8,%esp
  103279:	ff 75 0c             	push   0xc(%ebp)
  10327c:	6a 25                	push   $0x25
  10327e:	8b 45 08             	mov    0x8(%ebp),%eax
  103281:	ff d0                	call   *%eax
  103283:	83 c4 10             	add    $0x10,%esp
  103286:	83 6d 10 01          	subl   $0x1,0x10(%ebp)
  10328a:	eb 04                	jmp    103290 <.L21+0x1a>
  10328c:	83 6d 10 01          	subl   $0x1,0x10(%ebp)
  103290:	8b 45 10             	mov    0x10(%ebp),%eax
  103293:	83 e8 01             	sub    $0x1,%eax
  103296:	0f b6 00             	movzbl (%eax),%eax
  103299:	3c 25                	cmp    $0x25,%al
  10329b:	75 ef                	jne    10328c <.L21+0x16>
  10329d:	90                   	nop
  10329e:	e9 eb fc ff ff       	jmp    102f8e <vprintfmt+0x2d>
  1032a3:	90                   	nop
  1032a4:	8d 65 f4             	lea    -0xc(%ebp),%esp
  1032a7:	5b                   	pop    %ebx
  1032a8:	5e                   	pop    %esi
  1032a9:	5f                   	pop    %edi
  1032aa:	5d                   	pop    %ebp
  1032ab:	c3                   	ret

001032ac <__x86.get_pc_thunk.si>:
  1032ac:	8b 34 24             	mov    (%esp),%esi
  1032af:	c3                   	ret

001032b0 <__x86.get_pc_thunk.di>:
  1032b0:	8b 3c 24             	mov    (%esp),%edi
  1032b3:	c3                   	ret

001032b4 <seg_init>:
  1032b4:	55                   	push   %ebp
  1032b5:	89 e5                	mov    %esp,%ebp
  1032b7:	53                   	push   %ebx
  1032b8:	83 ec 14             	sub    $0x14,%esp
  1032bb:	e8 55 d1 ff ff       	call   100415 <__x86.get_pc_thunk.bx>
  1032c0:	81 c3 34 9d 00 00    	add    $0x9d34,%ebx
  1032c6:	8d 83 0c 80 00 00    	lea    0x800c(%ebx),%eax
  1032cc:	c7 c2 e0 28 11 00    	mov    $0x1128e0,%edx
  1032d2:	29 d0                	sub    %edx,%eax
  1032d4:	83 ec 08             	sub    $0x8,%esp
  1032d7:	50                   	push   %eax
  1032d8:	c7 c0 e0 28 11 00    	mov    $0x1128e0,%eax
  1032de:	50                   	push   %eax
  1032df:	e8 b5 f7 ff ff       	call   102a99 <memzero>
  1032e4:	83 c4 10             	add    $0x10,%esp
  1032e7:	c7 c0 00 b0 99 01    	mov    $0x199b000,%eax
  1032ed:	89 c2                	mov    %eax,%edx
  1032ef:	8d 83 0c 80 00 00    	lea    0x800c(%ebx),%eax
  1032f5:	29 c2                	sub    %eax,%edx
  1032f7:	8d 82 00 f0 ff ff    	lea    -0x1000(%edx),%eax
  1032fd:	89 c2                	mov    %eax,%edx
  1032ff:	8d 83 0c 90 00 00    	lea    0x900c(%ebx),%eax
  103305:	83 ec 08             	sub    $0x8,%esp
  103308:	52                   	push   %edx
  103309:	50                   	push   %eax
  10330a:	e8 8a f7 ff ff       	call   102a99 <memzero>
  10330f:	83 c4 10             	add    $0x10,%esp
  103312:	c7 83 0c 90 04 00 00 	movl   $0x0,0x4900c(%ebx)
  103319:	00 00 00 
  10331c:	c7 83 10 90 04 00 00 	movl   $0x0,0x49010(%ebx)
  103323:	00 00 00 
  103326:	66 c7 83 14 90 04 00 	movw   $0xffff,0x49014(%ebx)
  10332d:	ff ff 
  10332f:	66 c7 83 16 90 04 00 	movw   $0x0,0x49016(%ebx)
  103336:	00 00 
  103338:	c6 83 18 90 04 00 00 	movb   $0x0,0x49018(%ebx)
  10333f:	0f b6 83 19 90 04 00 	movzbl 0x49019(%ebx),%eax
  103346:	83 e0 f0             	and    $0xfffffff0,%eax
  103349:	83 c8 0a             	or     $0xa,%eax
  10334c:	88 83 19 90 04 00    	mov    %al,0x49019(%ebx)
  103352:	0f b6 83 19 90 04 00 	movzbl 0x49019(%ebx),%eax
  103359:	83 c8 10             	or     $0x10,%eax
  10335c:	88 83 19 90 04 00    	mov    %al,0x49019(%ebx)
  103362:	0f b6 83 19 90 04 00 	movzbl 0x49019(%ebx),%eax
  103369:	83 e0 9f             	and    $0xffffff9f,%eax
  10336c:	88 83 19 90 04 00    	mov    %al,0x49019(%ebx)
  103372:	0f b6 83 19 90 04 00 	movzbl 0x49019(%ebx),%eax
  103379:	83 c8 80             	or     $0xffffff80,%eax
  10337c:	88 83 19 90 04 00    	mov    %al,0x49019(%ebx)
  103382:	0f b6 83 1a 90 04 00 	movzbl 0x4901a(%ebx),%eax
  103389:	83 c8 0f             	or     $0xf,%eax
  10338c:	88 83 1a 90 04 00    	mov    %al,0x4901a(%ebx)
  103392:	0f b6 83 1a 90 04 00 	movzbl 0x4901a(%ebx),%eax
  103399:	83 e0 ef             	and    $0xffffffef,%eax
  10339c:	88 83 1a 90 04 00    	mov    %al,0x4901a(%ebx)
  1033a2:	0f b6 83 1a 90 04 00 	movzbl 0x4901a(%ebx),%eax
  1033a9:	83 e0 df             	and    $0xffffffdf,%eax
  1033ac:	88 83 1a 90 04 00    	mov    %al,0x4901a(%ebx)
  1033b2:	0f b6 83 1a 90 04 00 	movzbl 0x4901a(%ebx),%eax
  1033b9:	83 c8 40             	or     $0x40,%eax
  1033bc:	88 83 1a 90 04 00    	mov    %al,0x4901a(%ebx)
  1033c2:	0f b6 83 1a 90 04 00 	movzbl 0x4901a(%ebx),%eax
  1033c9:	83 c8 80             	or     $0xffffff80,%eax
  1033cc:	88 83 1a 90 04 00    	mov    %al,0x4901a(%ebx)
  1033d2:	c6 83 1b 90 04 00 00 	movb   $0x0,0x4901b(%ebx)
  1033d9:	66 c7 83 1c 90 04 00 	movw   $0xffff,0x4901c(%ebx)
  1033e0:	ff ff 
  1033e2:	66 c7 83 1e 90 04 00 	movw   $0x0,0x4901e(%ebx)
  1033e9:	00 00 
  1033eb:	c6 83 20 90 04 00 00 	movb   $0x0,0x49020(%ebx)
  1033f2:	0f b6 83 21 90 04 00 	movzbl 0x49021(%ebx),%eax
  1033f9:	83 e0 f0             	and    $0xfffffff0,%eax
  1033fc:	83 c8 02             	or     $0x2,%eax
  1033ff:	88 83 21 90 04 00    	mov    %al,0x49021(%ebx)
  103405:	0f b6 83 21 90 04 00 	movzbl 0x49021(%ebx),%eax
  10340c:	83 c8 10             	or     $0x10,%eax
  10340f:	88 83 21 90 04 00    	mov    %al,0x49021(%ebx)
  103415:	0f b6 83 21 90 04 00 	movzbl 0x49021(%ebx),%eax
  10341c:	83 e0 9f             	and    $0xffffff9f,%eax
  10341f:	88 83 21 90 04 00    	mov    %al,0x49021(%ebx)
  103425:	0f b6 83 21 90 04 00 	movzbl 0x49021(%ebx),%eax
  10342c:	83 c8 80             	or     $0xffffff80,%eax
  10342f:	88 83 21 90 04 00    	mov    %al,0x49021(%ebx)
  103435:	0f b6 83 22 90 04 00 	movzbl 0x49022(%ebx),%eax
  10343c:	83 c8 0f             	or     $0xf,%eax
  10343f:	88 83 22 90 04 00    	mov    %al,0x49022(%ebx)
  103445:	0f b6 83 22 90 04 00 	movzbl 0x49022(%ebx),%eax
  10344c:	83 e0 ef             	and    $0xffffffef,%eax
  10344f:	88 83 22 90 04 00    	mov    %al,0x49022(%ebx)
  103455:	0f b6 83 22 90 04 00 	movzbl 0x49022(%ebx),%eax
  10345c:	83 e0 df             	and    $0xffffffdf,%eax
  10345f:	88 83 22 90 04 00    	mov    %al,0x49022(%ebx)
  103465:	0f b6 83 22 90 04 00 	movzbl 0x49022(%ebx),%eax
  10346c:	83 c8 40             	or     $0x40,%eax
  10346f:	88 83 22 90 04 00    	mov    %al,0x49022(%ebx)
  103475:	0f b6 83 22 90 04 00 	movzbl 0x49022(%ebx),%eax
  10347c:	83 c8 80             	or     $0xffffff80,%eax
  10347f:	88 83 22 90 04 00    	mov    %al,0x49022(%ebx)
  103485:	c6 83 23 90 04 00 00 	movb   $0x0,0x49023(%ebx)
  10348c:	66 c7 83 24 90 04 00 	movw   $0xffff,0x49024(%ebx)
  103493:	ff ff 
  103495:	66 c7 83 26 90 04 00 	movw   $0x0,0x49026(%ebx)
  10349c:	00 00 
  10349e:	c6 83 28 90 04 00 00 	movb   $0x0,0x49028(%ebx)
  1034a5:	0f b6 83 29 90 04 00 	movzbl 0x49029(%ebx),%eax
  1034ac:	83 e0 f0             	and    $0xfffffff0,%eax
  1034af:	83 c8 0a             	or     $0xa,%eax
  1034b2:	88 83 29 90 04 00    	mov    %al,0x49029(%ebx)
  1034b8:	0f b6 83 29 90 04 00 	movzbl 0x49029(%ebx),%eax
  1034bf:	83 c8 10             	or     $0x10,%eax
  1034c2:	88 83 29 90 04 00    	mov    %al,0x49029(%ebx)
  1034c8:	0f b6 83 29 90 04 00 	movzbl 0x49029(%ebx),%eax
  1034cf:	83 c8 60             	or     $0x60,%eax
  1034d2:	88 83 29 90 04 00    	mov    %al,0x49029(%ebx)
  1034d8:	0f b6 83 29 90 04 00 	movzbl 0x49029(%ebx),%eax
  1034df:	83 c8 80             	or     $0xffffff80,%eax
  1034e2:	88 83 29 90 04 00    	mov    %al,0x49029(%ebx)
  1034e8:	0f b6 83 2a 90 04 00 	movzbl 0x4902a(%ebx),%eax
  1034ef:	83 c8 0f             	or     $0xf,%eax
  1034f2:	88 83 2a 90 04 00    	mov    %al,0x4902a(%ebx)
  1034f8:	0f b6 83 2a 90 04 00 	movzbl 0x4902a(%ebx),%eax
  1034ff:	83 e0 ef             	and    $0xffffffef,%eax
  103502:	88 83 2a 90 04 00    	mov    %al,0x4902a(%ebx)
  103508:	0f b6 83 2a 90 04 00 	movzbl 0x4902a(%ebx),%eax
  10350f:	83 e0 df             	and    $0xffffffdf,%eax
  103512:	88 83 2a 90 04 00    	mov    %al,0x4902a(%ebx)
  103518:	0f b6 83 2a 90 04 00 	movzbl 0x4902a(%ebx),%eax
  10351f:	83 c8 40             	or     $0x40,%eax
  103522:	88 83 2a 90 04 00    	mov    %al,0x4902a(%ebx)
  103528:	0f b6 83 2a 90 04 00 	movzbl 0x4902a(%ebx),%eax
  10352f:	83 c8 80             	or     $0xffffff80,%eax
  103532:	88 83 2a 90 04 00    	mov    %al,0x4902a(%ebx)
  103538:	c6 83 2b 90 04 00 00 	movb   $0x0,0x4902b(%ebx)
  10353f:	66 c7 83 2c 90 04 00 	movw   $0xffff,0x4902c(%ebx)
  103546:	ff ff 
  103548:	66 c7 83 2e 90 04 00 	movw   $0x0,0x4902e(%ebx)
  10354f:	00 00 
  103551:	c6 83 30 90 04 00 00 	movb   $0x0,0x49030(%ebx)
  103558:	0f b6 83 31 90 04 00 	movzbl 0x49031(%ebx),%eax
  10355f:	83 e0 f0             	and    $0xfffffff0,%eax
  103562:	83 c8 02             	or     $0x2,%eax
  103565:	88 83 31 90 04 00    	mov    %al,0x49031(%ebx)
  10356b:	0f b6 83 31 90 04 00 	movzbl 0x49031(%ebx),%eax
  103572:	83 c8 10             	or     $0x10,%eax
  103575:	88 83 31 90 04 00    	mov    %al,0x49031(%ebx)
  10357b:	0f b6 83 31 90 04 00 	movzbl 0x49031(%ebx),%eax
  103582:	83 c8 60             	or     $0x60,%eax
  103585:	88 83 31 90 04 00    	mov    %al,0x49031(%ebx)
  10358b:	0f b6 83 31 90 04 00 	movzbl 0x49031(%ebx),%eax
  103592:	83 c8 80             	or     $0xffffff80,%eax
  103595:	88 83 31 90 04 00    	mov    %al,0x49031(%ebx)
  10359b:	0f b6 83 32 90 04 00 	movzbl 0x49032(%ebx),%eax
  1035a2:	83 c8 0f             	or     $0xf,%eax
  1035a5:	88 83 32 90 04 00    	mov    %al,0x49032(%ebx)
  1035ab:	0f b6 83 32 90 04 00 	movzbl 0x49032(%ebx),%eax
  1035b2:	83 e0 ef             	and    $0xffffffef,%eax
  1035b5:	88 83 32 90 04 00    	mov    %al,0x49032(%ebx)
  1035bb:	0f b6 83 32 90 04 00 	movzbl 0x49032(%ebx),%eax
  1035c2:	83 e0 df             	and    $0xffffffdf,%eax
  1035c5:	88 83 32 90 04 00    	mov    %al,0x49032(%ebx)
  1035cb:	0f b6 83 32 90 04 00 	movzbl 0x49032(%ebx),%eax
  1035d2:	83 c8 40             	or     $0x40,%eax
  1035d5:	88 83 32 90 04 00    	mov    %al,0x49032(%ebx)
  1035db:	0f b6 83 32 90 04 00 	movzbl 0x49032(%ebx),%eax
  1035e2:	83 c8 80             	or     $0xffffff80,%eax
  1035e5:	88 83 32 90 04 00    	mov    %al,0x49032(%ebx)
  1035eb:	c6 83 33 90 04 00 00 	movb   $0x0,0x49033(%ebx)
  1035f2:	8d 83 0c 80 00 00    	lea    0x800c(%ebx),%eax
  1035f8:	05 00 10 00 00       	add    $0x1000,%eax
  1035fd:	89 83 50 cb 04 00    	mov    %eax,0x4cb50(%ebx)
  103603:	66 c7 83 54 cb 04 00 	movw   $0x10,0x4cb54(%ebx)
  10360a:	10 00 
  10360c:	66 c7 83 34 90 04 00 	movw   $0xeb,0x49034(%ebx)
  103613:	eb 00 
  103615:	8d 83 4c cb 04 00    	lea    0x4cb4c(%ebx),%eax
  10361b:	66 89 83 36 90 04 00 	mov    %ax,0x49036(%ebx)
  103622:	8d 83 4c cb 04 00    	lea    0x4cb4c(%ebx),%eax
  103628:	c1 e8 10             	shr    $0x10,%eax
  10362b:	88 83 38 90 04 00    	mov    %al,0x49038(%ebx)
  103631:	0f b6 83 39 90 04 00 	movzbl 0x49039(%ebx),%eax
  103638:	83 e0 f0             	and    $0xfffffff0,%eax
  10363b:	83 c8 09             	or     $0x9,%eax
  10363e:	88 83 39 90 04 00    	mov    %al,0x49039(%ebx)
  103644:	0f b6 83 39 90 04 00 	movzbl 0x49039(%ebx),%eax
  10364b:	83 c8 10             	or     $0x10,%eax
  10364e:	88 83 39 90 04 00    	mov    %al,0x49039(%ebx)
  103654:	0f b6 83 39 90 04 00 	movzbl 0x49039(%ebx),%eax
  10365b:	83 e0 9f             	and    $0xffffff9f,%eax
  10365e:	88 83 39 90 04 00    	mov    %al,0x49039(%ebx)
  103664:	0f b6 83 39 90 04 00 	movzbl 0x49039(%ebx),%eax
  10366b:	83 c8 80             	or     $0xffffff80,%eax
  10366e:	88 83 39 90 04 00    	mov    %al,0x49039(%ebx)
  103674:	0f b6 83 3a 90 04 00 	movzbl 0x4903a(%ebx),%eax
  10367b:	83 e0 f0             	and    $0xfffffff0,%eax
  10367e:	88 83 3a 90 04 00    	mov    %al,0x4903a(%ebx)
  103684:	0f b6 83 3a 90 04 00 	movzbl 0x4903a(%ebx),%eax
  10368b:	83 e0 ef             	and    $0xffffffef,%eax
  10368e:	88 83 3a 90 04 00    	mov    %al,0x4903a(%ebx)
  103694:	0f b6 83 3a 90 04 00 	movzbl 0x4903a(%ebx),%eax
  10369b:	83 e0 df             	and    $0xffffffdf,%eax
  10369e:	88 83 3a 90 04 00    	mov    %al,0x4903a(%ebx)
  1036a4:	0f b6 83 3a 90 04 00 	movzbl 0x4903a(%ebx),%eax
  1036ab:	83 c8 40             	or     $0x40,%eax
  1036ae:	88 83 3a 90 04 00    	mov    %al,0x4903a(%ebx)
  1036b4:	0f b6 83 3a 90 04 00 	movzbl 0x4903a(%ebx),%eax
  1036bb:	83 e0 7f             	and    $0x7f,%eax
  1036be:	88 83 3a 90 04 00    	mov    %al,0x4903a(%ebx)
  1036c4:	8d 83 4c cb 04 00    	lea    0x4cb4c(%ebx),%eax
  1036ca:	c1 e8 18             	shr    $0x18,%eax
  1036cd:	88 83 3b 90 04 00    	mov    %al,0x4903b(%ebx)
  1036d3:	0f b6 83 39 90 04 00 	movzbl 0x49039(%ebx),%eax
  1036da:	83 e0 ef             	and    $0xffffffef,%eax
  1036dd:	88 83 39 90 04 00    	mov    %al,0x49039(%ebx)
  1036e3:	66 c7 45 ee 2f 00    	movw   $0x2f,-0x12(%ebp)
  1036e9:	8d 83 0c 90 04 00    	lea    0x4900c(%ebx),%eax
  1036ef:	89 45 f0             	mov    %eax,-0x10(%ebp)
  1036f2:	0f 01 55 ee          	lgdtl  -0x12(%ebp)
  1036f6:	b8 10 00 00 00       	mov    $0x10,%eax
  1036fb:	8e e8                	mov    %eax,%gs
  1036fd:	b8 10 00 00 00       	mov    $0x10,%eax
  103702:	8e e0                	mov    %eax,%fs
  103704:	b8 10 00 00 00       	mov    $0x10,%eax
  103709:	8e c0                	mov    %eax,%es
  10370b:	b8 10 00 00 00       	mov    $0x10,%eax
  103710:	8e d8                	mov    %eax,%ds
  103712:	b8 10 00 00 00       	mov    $0x10,%eax
  103717:	8e d0                	mov    %eax,%ss
  103719:	ea 20 37 10 00 08 00 	ljmp   $0x8,$0x103720
  103720:	83 ec 0c             	sub    $0xc,%esp
  103723:	6a 00                	push   $0x0
  103725:	e8 70 01 00 00       	call   10389a <lldt>
  10372a:	83 c4 10             	add    $0x10,%esp
  10372d:	83 ec 0c             	sub    $0xc,%esp
  103730:	6a 28                	push   $0x28
  103732:	e8 2f 03 00 00       	call   103a66 <ltr>
  103737:	83 c4 10             	add    $0x10,%esp
  10373a:	83 ec 08             	sub    $0x8,%esp
  10373d:	68 00 3b 00 00       	push   $0x3b00
  103742:	8d 83 4c 90 04 00    	lea    0x4904c(%ebx),%eax
  103748:	50                   	push   %eax
  103749:	e8 4b f3 ff ff       	call   102a99 <memzero>
  10374e:	83 c4 10             	add    $0x10,%esp
  103751:	83 ec 08             	sub    $0x8,%esp
  103754:	68 00 00 04 00       	push   $0x40000
  103759:	8d 83 0c 90 00 00    	lea    0x900c(%ebx),%eax
  10375f:	50                   	push   %eax
  103760:	e8 34 f3 ff ff       	call   102a99 <memzero>
  103765:	83 c4 10             	add    $0x10,%esp
  103768:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  10376f:	e9 9d 00 00 00       	jmp    103811 <seg_init+0x55d>
  103774:	8b 45 f4             	mov    -0xc(%ebp),%eax
  103777:	c1 e0 0c             	shl    $0xc,%eax
  10377a:	89 c2                	mov    %eax,%edx
  10377c:	8d 83 0c 90 00 00    	lea    0x900c(%ebx),%eax
  103782:	01 d0                	add    %edx,%eax
  103784:	8d 90 00 10 00 00    	lea    0x1000(%eax),%edx
  10378a:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  10378d:	8d 83 50 90 04 00    	lea    0x49050(%ebx),%eax
  103793:	69 c9 ec 00 00 00    	imul   $0xec,%ecx,%ecx
  103799:	01 c8                	add    %ecx,%eax
  10379b:	89 10                	mov    %edx,(%eax)
  10379d:	8b 55 f4             	mov    -0xc(%ebp),%edx
  1037a0:	8d 83 54 90 04 00    	lea    0x49054(%ebx),%eax
  1037a6:	69 d2 ec 00 00 00    	imul   $0xec,%edx,%edx
  1037ac:	01 d0                	add    %edx,%eax
  1037ae:	66 c7 00 10 00       	movw   $0x10,(%eax)
  1037b3:	8b 55 f4             	mov    -0xc(%ebp),%edx
  1037b6:	8d 83 52 90 04 00    	lea    0x49052(%ebx),%eax
  1037bc:	69 d2 ec 00 00 00    	imul   $0xec,%edx,%edx
  1037c2:	01 d0                	add    %edx,%eax
  1037c4:	83 c0 60             	add    $0x60,%eax
  1037c7:	66 c7 00 68 00       	movw   $0x68,(%eax)
  1037cc:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1037cf:	69 c0 ec 00 00 00    	imul   $0xec,%eax,%eax
  1037d5:	8d 50 60             	lea    0x60(%eax),%edx
  1037d8:	8d 83 4c 90 04 00    	lea    0x4904c(%ebx),%eax
  1037de:	01 d0                	add    %edx,%eax
  1037e0:	83 c0 08             	add    $0x8,%eax
  1037e3:	83 ec 08             	sub    $0x8,%esp
  1037e6:	68 80 00 00 00       	push   $0x80
  1037eb:	50                   	push   %eax
  1037ec:	e8 a8 f2 ff ff       	call   102a99 <memzero>
  1037f1:	83 c4 10             	add    $0x10,%esp
  1037f4:	8b 55 f4             	mov    -0xc(%ebp),%edx
  1037f7:	8d 83 54 90 04 00    	lea    0x49054(%ebx),%eax
  1037fd:	69 d2 ec 00 00 00    	imul   $0xec,%edx,%edx
  103803:	01 d0                	add    %edx,%eax
  103805:	05 e0 00 00 00       	add    $0xe0,%eax
  10380a:	c6 00 ff             	movb   $0xff,(%eax)
  10380d:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  103811:	83 7d f4 3f          	cmpl   $0x3f,-0xc(%ebp)
  103815:	0f 86 59 ff ff ff    	jbe    103774 <seg_init+0x4c0>
  10381b:	90                   	nop
  10381c:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  10381f:	c9                   	leave
  103820:	c3                   	ret

00103821 <max>:
  103821:	55                   	push   %ebp
  103822:	89 e5                	mov    %esp,%ebp
  103824:	e8 e4 cb ff ff       	call   10040d <__x86.get_pc_thunk.ax>
  103829:	05 cb 97 00 00       	add    $0x97cb,%eax
  10382e:	8b 55 0c             	mov    0xc(%ebp),%edx
  103831:	8b 45 08             	mov    0x8(%ebp),%eax
  103834:	39 c2                	cmp    %eax,%edx
  103836:	0f 43 c2             	cmovae %edx,%eax
  103839:	5d                   	pop    %ebp
  10383a:	c3                   	ret

0010383b <min>:
  10383b:	55                   	push   %ebp
  10383c:	89 e5                	mov    %esp,%ebp
  10383e:	e8 ca cb ff ff       	call   10040d <__x86.get_pc_thunk.ax>
  103843:	05 b1 97 00 00       	add    $0x97b1,%eax
  103848:	8b 55 0c             	mov    0xc(%ebp),%edx
  10384b:	8b 45 08             	mov    0x8(%ebp),%eax
  10384e:	39 c2                	cmp    %eax,%edx
  103850:	0f 46 c2             	cmovbe %edx,%eax
  103853:	5d                   	pop    %ebp
  103854:	c3                   	ret

00103855 <rounddown>:
  103855:	55                   	push   %ebp
  103856:	89 e5                	mov    %esp,%ebp
  103858:	e8 b0 cb ff ff       	call   10040d <__x86.get_pc_thunk.ax>
  10385d:	05 97 97 00 00       	add    $0x9797,%eax
  103862:	8b 45 08             	mov    0x8(%ebp),%eax
  103865:	ba 00 00 00 00       	mov    $0x0,%edx
  10386a:	f7 75 0c             	divl   0xc(%ebp)
  10386d:	8b 45 08             	mov    0x8(%ebp),%eax
  103870:	29 d0                	sub    %edx,%eax
  103872:	5d                   	pop    %ebp
  103873:	c3                   	ret

00103874 <roundup>:
  103874:	55                   	push   %ebp
  103875:	89 e5                	mov    %esp,%ebp
  103877:	e8 91 cb ff ff       	call   10040d <__x86.get_pc_thunk.ax>
  10387c:	05 78 97 00 00       	add    $0x9778,%eax
  103881:	8b 55 08             	mov    0x8(%ebp),%edx
  103884:	8b 45 0c             	mov    0xc(%ebp),%eax
  103887:	01 d0                	add    %edx,%eax
  103889:	83 e8 01             	sub    $0x1,%eax
  10388c:	ff 75 0c             	push   0xc(%ebp)
  10388f:	50                   	push   %eax
  103890:	e8 c0 ff ff ff       	call   103855 <rounddown>
  103895:	83 c4 08             	add    $0x8,%esp
  103898:	c9                   	leave
  103899:	c3                   	ret

0010389a <lldt>:
  10389a:	55                   	push   %ebp
  10389b:	89 e5                	mov    %esp,%ebp
  10389d:	83 ec 04             	sub    $0x4,%esp
  1038a0:	e8 68 cb ff ff       	call   10040d <__x86.get_pc_thunk.ax>
  1038a5:	05 4f 97 00 00       	add    $0x974f,%eax
  1038aa:	8b 45 08             	mov    0x8(%ebp),%eax
  1038ad:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
  1038b1:	0f b7 45 fc          	movzwl -0x4(%ebp),%eax
  1038b5:	0f 00 d0             	lldt   %eax
  1038b8:	90                   	nop
  1038b9:	c9                   	leave
  1038ba:	c3                   	ret

001038bb <cli>:
  1038bb:	55                   	push   %ebp
  1038bc:	89 e5                	mov    %esp,%ebp
  1038be:	e8 4a cb ff ff       	call   10040d <__x86.get_pc_thunk.ax>
  1038c3:	05 31 97 00 00       	add    $0x9731,%eax
  1038c8:	fa                   	cli
  1038c9:	90                   	nop
  1038ca:	5d                   	pop    %ebp
  1038cb:	c3                   	ret

001038cc <sti>:
  1038cc:	55                   	push   %ebp
  1038cd:	89 e5                	mov    %esp,%ebp
  1038cf:	e8 39 cb ff ff       	call   10040d <__x86.get_pc_thunk.ax>
  1038d4:	05 20 97 00 00       	add    $0x9720,%eax
  1038d9:	fb                   	sti
  1038da:	90                   	nop
  1038db:	90                   	nop
  1038dc:	5d                   	pop    %ebp
  1038dd:	c3                   	ret

001038de <rdmsr>:
  1038de:	55                   	push   %ebp
  1038df:	89 e5                	mov    %esp,%ebp
  1038e1:	83 ec 10             	sub    $0x10,%esp
  1038e4:	e8 24 cb ff ff       	call   10040d <__x86.get_pc_thunk.ax>
  1038e9:	05 0b 97 00 00       	add    $0x970b,%eax
  1038ee:	8b 45 08             	mov    0x8(%ebp),%eax
  1038f1:	89 c1                	mov    %eax,%ecx
  1038f3:	0f 32                	rdmsr
  1038f5:	89 45 f8             	mov    %eax,-0x8(%ebp)
  1038f8:	89 55 fc             	mov    %edx,-0x4(%ebp)
  1038fb:	8b 45 f8             	mov    -0x8(%ebp),%eax
  1038fe:	8b 55 fc             	mov    -0x4(%ebp),%edx
  103901:	c9                   	leave
  103902:	c3                   	ret

00103903 <wrmsr>:
  103903:	55                   	push   %ebp
  103904:	89 e5                	mov    %esp,%ebp
  103906:	83 ec 08             	sub    $0x8,%esp
  103909:	e8 ff ca ff ff       	call   10040d <__x86.get_pc_thunk.ax>
  10390e:	05 e6 96 00 00       	add    $0x96e6,%eax
  103913:	8b 45 0c             	mov    0xc(%ebp),%eax
  103916:	89 45 f8             	mov    %eax,-0x8(%ebp)
  103919:	8b 45 10             	mov    0x10(%ebp),%eax
  10391c:	89 45 fc             	mov    %eax,-0x4(%ebp)
  10391f:	8b 45 f8             	mov    -0x8(%ebp),%eax
  103922:	8b 55 fc             	mov    -0x4(%ebp),%edx
  103925:	8b 4d 08             	mov    0x8(%ebp),%ecx
  103928:	0f 30                	wrmsr
  10392a:	90                   	nop
  10392b:	c9                   	leave
  10392c:	c3                   	ret

0010392d <halt>:
  10392d:	55                   	push   %ebp
  10392e:	89 e5                	mov    %esp,%ebp
  103930:	e8 d8 ca ff ff       	call   10040d <__x86.get_pc_thunk.ax>
  103935:	05 bf 96 00 00       	add    $0x96bf,%eax
  10393a:	f4                   	hlt
  10393b:	90                   	nop
  10393c:	5d                   	pop    %ebp
  10393d:	c3                   	ret

0010393e <rdtsc>:
  10393e:	55                   	push   %ebp
  10393f:	89 e5                	mov    %esp,%ebp
  103941:	83 ec 10             	sub    $0x10,%esp
  103944:	e8 c4 ca ff ff       	call   10040d <__x86.get_pc_thunk.ax>
  103949:	05 ab 96 00 00       	add    $0x96ab,%eax
  10394e:	0f 31                	rdtsc
  103950:	89 45 f8             	mov    %eax,-0x8(%ebp)
  103953:	89 55 fc             	mov    %edx,-0x4(%ebp)
  103956:	8b 45 f8             	mov    -0x8(%ebp),%eax
  103959:	8b 55 fc             	mov    -0x4(%ebp),%edx
  10395c:	c9                   	leave
  10395d:	c3                   	ret

0010395e <enable_sse>:
  10395e:	55                   	push   %ebp
  10395f:	89 e5                	mov    %esp,%ebp
  103961:	83 ec 20             	sub    $0x20,%esp
  103964:	e8 a4 ca ff ff       	call   10040d <__x86.get_pc_thunk.ax>
  103969:	05 8b 96 00 00       	add    $0x968b,%eax
  10396e:	0f 20 e0             	mov    %cr4,%eax
  103971:	89 45 ec             	mov    %eax,-0x14(%ebp)
  103974:	8b 45 ec             	mov    -0x14(%ebp),%eax
  103977:	80 cc 06             	or     $0x6,%ah
  10397a:	89 45 fc             	mov    %eax,-0x4(%ebp)
  10397d:	0f ae f0             	mfence
  103980:	8b 45 fc             	mov    -0x4(%ebp),%eax
  103983:	89 45 f0             	mov    %eax,-0x10(%ebp)
  103986:	8b 45 f0             	mov    -0x10(%ebp),%eax
  103989:	0f 22 e0             	mov    %eax,%cr4
  10398c:	90                   	nop
  10398d:	0f 20 c0             	mov    %cr0,%eax
  103990:	89 45 f4             	mov    %eax,-0xc(%ebp)
  103993:	8b 45 f4             	mov    -0xc(%ebp),%eax
  103996:	83 c8 02             	or     $0x2,%eax
  103999:	89 45 f8             	mov    %eax,-0x8(%ebp)
  10399c:	0f ae f0             	mfence
  10399f:	83 65 f8 f3          	andl   $0xfffffff3,-0x8(%ebp)
  1039a3:	90                   	nop
  1039a4:	c9                   	leave
  1039a5:	c3                   	ret

001039a6 <cpuid>:
  1039a6:	55                   	push   %ebp
  1039a7:	89 e5                	mov    %esp,%ebp
  1039a9:	53                   	push   %ebx
  1039aa:	83 ec 10             	sub    $0x10,%esp
  1039ad:	e8 5b ca ff ff       	call   10040d <__x86.get_pc_thunk.ax>
  1039b2:	05 42 96 00 00       	add    $0x9642,%eax
  1039b7:	8b 45 08             	mov    0x8(%ebp),%eax
  1039ba:	0f a2                	cpuid
  1039bc:	89 45 f8             	mov    %eax,-0x8(%ebp)
  1039bf:	89 5d f4             	mov    %ebx,-0xc(%ebp)
  1039c2:	89 4d f0             	mov    %ecx,-0x10(%ebp)
  1039c5:	89 55 ec             	mov    %edx,-0x14(%ebp)
  1039c8:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
  1039cc:	74 08                	je     1039d6 <cpuid+0x30>
  1039ce:	8b 45 0c             	mov    0xc(%ebp),%eax
  1039d1:	8b 55 f8             	mov    -0x8(%ebp),%edx
  1039d4:	89 10                	mov    %edx,(%eax)
  1039d6:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
  1039da:	74 08                	je     1039e4 <cpuid+0x3e>
  1039dc:	8b 45 10             	mov    0x10(%ebp),%eax
  1039df:	8b 55 f4             	mov    -0xc(%ebp),%edx
  1039e2:	89 10                	mov    %edx,(%eax)
  1039e4:	83 7d 14 00          	cmpl   $0x0,0x14(%ebp)
  1039e8:	74 08                	je     1039f2 <cpuid+0x4c>
  1039ea:	8b 45 14             	mov    0x14(%ebp),%eax
  1039ed:	8b 55 f0             	mov    -0x10(%ebp),%edx
  1039f0:	89 10                	mov    %edx,(%eax)
  1039f2:	83 7d 18 00          	cmpl   $0x0,0x18(%ebp)
  1039f6:	74 08                	je     103a00 <cpuid+0x5a>
  1039f8:	8b 45 18             	mov    0x18(%ebp),%eax
  1039fb:	8b 55 ec             	mov    -0x14(%ebp),%edx
  1039fe:	89 10                	mov    %edx,(%eax)
  103a00:	90                   	nop
  103a01:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  103a04:	c9                   	leave
  103a05:	c3                   	ret

00103a06 <rcr3>:
  103a06:	55                   	push   %ebp
  103a07:	89 e5                	mov    %esp,%ebp
  103a09:	83 ec 10             	sub    $0x10,%esp
  103a0c:	e8 fc c9 ff ff       	call   10040d <__x86.get_pc_thunk.ax>
  103a11:	05 e3 95 00 00       	add    $0x95e3,%eax
  103a16:	0f 20 d8             	mov    %cr3,%eax
  103a19:	89 45 fc             	mov    %eax,-0x4(%ebp)
  103a1c:	8b 45 fc             	mov    -0x4(%ebp),%eax
  103a1f:	c9                   	leave
  103a20:	c3                   	ret

00103a21 <outl>:
  103a21:	55                   	push   %ebp
  103a22:	89 e5                	mov    %esp,%ebp
  103a24:	e8 e4 c9 ff ff       	call   10040d <__x86.get_pc_thunk.ax>
  103a29:	05 cb 95 00 00       	add    $0x95cb,%eax
  103a2e:	8b 45 0c             	mov    0xc(%ebp),%eax
  103a31:	8b 55 08             	mov    0x8(%ebp),%edx
  103a34:	ef                   	out    %eax,(%dx)
  103a35:	90                   	nop
  103a36:	5d                   	pop    %ebp
  103a37:	c3                   	ret

00103a38 <inl>:
  103a38:	55                   	push   %ebp
  103a39:	89 e5                	mov    %esp,%ebp
  103a3b:	83 ec 10             	sub    $0x10,%esp
  103a3e:	e8 ca c9 ff ff       	call   10040d <__x86.get_pc_thunk.ax>
  103a43:	05 b1 95 00 00       	add    $0x95b1,%eax
  103a48:	8b 45 08             	mov    0x8(%ebp),%eax
  103a4b:	89 c2                	mov    %eax,%edx
  103a4d:	ed                   	in     (%dx),%eax
  103a4e:	89 45 fc             	mov    %eax,-0x4(%ebp)
  103a51:	8b 45 fc             	mov    -0x4(%ebp),%eax
  103a54:	c9                   	leave
  103a55:	c3                   	ret

00103a56 <smp_wmb>:
  103a56:	55                   	push   %ebp
  103a57:	89 e5                	mov    %esp,%ebp
  103a59:	e8 af c9 ff ff       	call   10040d <__x86.get_pc_thunk.ax>
  103a5e:	05 96 95 00 00       	add    $0x9596,%eax
  103a63:	90                   	nop
  103a64:	5d                   	pop    %ebp
  103a65:	c3                   	ret

00103a66 <ltr>:
  103a66:	55                   	push   %ebp
  103a67:	89 e5                	mov    %esp,%ebp
  103a69:	83 ec 04             	sub    $0x4,%esp
  103a6c:	e8 9c c9 ff ff       	call   10040d <__x86.get_pc_thunk.ax>
  103a71:	05 83 95 00 00       	add    $0x9583,%eax
  103a76:	8b 45 08             	mov    0x8(%ebp),%eax
  103a79:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
  103a7d:	0f b7 45 fc          	movzwl -0x4(%ebp),%eax
  103a81:	0f 00 d8             	ltr    %eax
  103a84:	90                   	nop
  103a85:	c9                   	leave
  103a86:	c3                   	ret

00103a87 <lcr0>:
  103a87:	55                   	push   %ebp
  103a88:	89 e5                	mov    %esp,%ebp
  103a8a:	e8 7e c9 ff ff       	call   10040d <__x86.get_pc_thunk.ax>
  103a8f:	05 65 95 00 00       	add    $0x9565,%eax
  103a94:	8b 45 08             	mov    0x8(%ebp),%eax
  103a97:	0f 22 c0             	mov    %eax,%cr0
  103a9a:	90                   	nop
  103a9b:	5d                   	pop    %ebp
  103a9c:	c3                   	ret

00103a9d <rcr0>:
  103a9d:	55                   	push   %ebp
  103a9e:	89 e5                	mov    %esp,%ebp
  103aa0:	83 ec 10             	sub    $0x10,%esp
  103aa3:	e8 65 c9 ff ff       	call   10040d <__x86.get_pc_thunk.ax>
  103aa8:	05 4c 95 00 00       	add    $0x954c,%eax
  103aad:	0f 20 c0             	mov    %cr0,%eax
  103ab0:	89 45 fc             	mov    %eax,-0x4(%ebp)
  103ab3:	8b 45 fc             	mov    -0x4(%ebp),%eax
  103ab6:	c9                   	leave
  103ab7:	c3                   	ret

00103ab8 <rcr2>:
  103ab8:	55                   	push   %ebp
  103ab9:	89 e5                	mov    %esp,%ebp
  103abb:	83 ec 10             	sub    $0x10,%esp
  103abe:	e8 4a c9 ff ff       	call   10040d <__x86.get_pc_thunk.ax>
  103ac3:	05 31 95 00 00       	add    $0x9531,%eax
  103ac8:	0f 20 d0             	mov    %cr2,%eax
  103acb:	89 45 fc             	mov    %eax,-0x4(%ebp)
  103ace:	8b 45 fc             	mov    -0x4(%ebp),%eax
  103ad1:	c9                   	leave
  103ad2:	c3                   	ret

00103ad3 <lcr3>:
  103ad3:	55                   	push   %ebp
  103ad4:	89 e5                	mov    %esp,%ebp
  103ad6:	e8 32 c9 ff ff       	call   10040d <__x86.get_pc_thunk.ax>
  103adb:	05 19 95 00 00       	add    $0x9519,%eax
  103ae0:	8b 45 08             	mov    0x8(%ebp),%eax
  103ae3:	0f 22 d8             	mov    %eax,%cr3
  103ae6:	90                   	nop
  103ae7:	5d                   	pop    %ebp
  103ae8:	c3                   	ret

00103ae9 <lcr4>:
  103ae9:	55                   	push   %ebp
  103aea:	89 e5                	mov    %esp,%ebp
  103aec:	e8 1c c9 ff ff       	call   10040d <__x86.get_pc_thunk.ax>
  103af1:	05 03 95 00 00       	add    $0x9503,%eax
  103af6:	8b 45 08             	mov    0x8(%ebp),%eax
  103af9:	0f 22 e0             	mov    %eax,%cr4
  103afc:	90                   	nop
  103afd:	5d                   	pop    %ebp
  103afe:	c3                   	ret

00103aff <rcr4>:
  103aff:	55                   	push   %ebp
  103b00:	89 e5                	mov    %esp,%ebp
  103b02:	83 ec 10             	sub    $0x10,%esp
  103b05:	e8 03 c9 ff ff       	call   10040d <__x86.get_pc_thunk.ax>
  103b0a:	05 ea 94 00 00       	add    $0x94ea,%eax
  103b0f:	0f 20 e0             	mov    %cr4,%eax
  103b12:	89 45 fc             	mov    %eax,-0x4(%ebp)
  103b15:	8b 45 fc             	mov    -0x4(%ebp),%eax
  103b18:	c9                   	leave
  103b19:	c3                   	ret

00103b1a <inb>:
  103b1a:	55                   	push   %ebp
  103b1b:	89 e5                	mov    %esp,%ebp
  103b1d:	83 ec 10             	sub    $0x10,%esp
  103b20:	e8 e8 c8 ff ff       	call   10040d <__x86.get_pc_thunk.ax>
  103b25:	05 cf 94 00 00       	add    $0x94cf,%eax
  103b2a:	8b 45 08             	mov    0x8(%ebp),%eax
  103b2d:	89 c2                	mov    %eax,%edx
  103b2f:	ec                   	in     (%dx),%al
  103b30:	88 45 ff             	mov    %al,-0x1(%ebp)
  103b33:	0f b6 45 ff          	movzbl -0x1(%ebp),%eax
  103b37:	c9                   	leave
  103b38:	c3                   	ret

00103b39 <insl>:
  103b39:	55                   	push   %ebp
  103b3a:	89 e5                	mov    %esp,%ebp
  103b3c:	57                   	push   %edi
  103b3d:	53                   	push   %ebx
  103b3e:	e8 ca c8 ff ff       	call   10040d <__x86.get_pc_thunk.ax>
  103b43:	05 b1 94 00 00       	add    $0x94b1,%eax
  103b48:	8b 55 08             	mov    0x8(%ebp),%edx
  103b4b:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  103b4e:	8b 45 10             	mov    0x10(%ebp),%eax
  103b51:	89 cb                	mov    %ecx,%ebx
  103b53:	89 df                	mov    %ebx,%edi
  103b55:	89 c1                	mov    %eax,%ecx
  103b57:	fc                   	cld
  103b58:	f2 6d                	repnz insl (%dx),%es:(%edi)
  103b5a:	89 c8                	mov    %ecx,%eax
  103b5c:	89 fb                	mov    %edi,%ebx
  103b5e:	89 5d 0c             	mov    %ebx,0xc(%ebp)
  103b61:	89 45 10             	mov    %eax,0x10(%ebp)
  103b64:	90                   	nop
  103b65:	5b                   	pop    %ebx
  103b66:	5f                   	pop    %edi
  103b67:	5d                   	pop    %ebp
  103b68:	c3                   	ret

00103b69 <outb>:
  103b69:	55                   	push   %ebp
  103b6a:	89 e5                	mov    %esp,%ebp
  103b6c:	83 ec 04             	sub    $0x4,%esp
  103b6f:	e8 99 c8 ff ff       	call   10040d <__x86.get_pc_thunk.ax>
  103b74:	05 80 94 00 00       	add    $0x9480,%eax
  103b79:	8b 45 0c             	mov    0xc(%ebp),%eax
  103b7c:	88 45 fc             	mov    %al,-0x4(%ebp)
  103b7f:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
  103b83:	8b 55 08             	mov    0x8(%ebp),%edx
  103b86:	ee                   	out    %al,(%dx)
  103b87:	90                   	nop
  103b88:	c9                   	leave
  103b89:	c3                   	ret

00103b8a <outsw>:
  103b8a:	55                   	push   %ebp
  103b8b:	89 e5                	mov    %esp,%ebp
  103b8d:	56                   	push   %esi
  103b8e:	53                   	push   %ebx
  103b8f:	e8 79 c8 ff ff       	call   10040d <__x86.get_pc_thunk.ax>
  103b94:	05 60 94 00 00       	add    $0x9460,%eax
  103b99:	8b 55 08             	mov    0x8(%ebp),%edx
  103b9c:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  103b9f:	8b 45 10             	mov    0x10(%ebp),%eax
  103ba2:	89 cb                	mov    %ecx,%ebx
  103ba4:	89 de                	mov    %ebx,%esi
  103ba6:	89 c1                	mov    %eax,%ecx
  103ba8:	fc                   	cld
  103ba9:	f2 66 6f             	repnz outsw %ds:(%esi),(%dx)
  103bac:	89 c8                	mov    %ecx,%eax
  103bae:	89 f3                	mov    %esi,%ebx
  103bb0:	89 5d 0c             	mov    %ebx,0xc(%ebp)
  103bb3:	89 45 10             	mov    %eax,0x10(%ebp)
  103bb6:	90                   	nop
  103bb7:	5b                   	pop    %ebx
  103bb8:	5e                   	pop    %esi
  103bb9:	5d                   	pop    %ebp
  103bba:	c3                   	ret

00103bbb <mon_help>:
  103bbb:	55                   	push   %ebp
  103bbc:	89 e5                	mov    %esp,%ebp
  103bbe:	56                   	push   %esi
  103bbf:	53                   	push   %ebx
  103bc0:	83 ec 10             	sub    $0x10,%esp
  103bc3:	e8 4d c8 ff ff       	call   100415 <__x86.get_pc_thunk.bx>
  103bc8:	81 c3 2c 94 00 00    	add    $0x942c,%ebx
  103bce:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  103bd5:	eb 44                	jmp    103c1b <mon_help+0x60>
  103bd7:	8b 55 f4             	mov    -0xc(%ebp),%edx
  103bda:	8d 8b 30 05 00 00    	lea    0x530(%ebx),%ecx
  103be0:	89 d0                	mov    %edx,%eax
  103be2:	01 c0                	add    %eax,%eax
  103be4:	01 d0                	add    %edx,%eax
  103be6:	c1 e0 02             	shl    $0x2,%eax
  103be9:	01 c8                	add    %ecx,%eax
  103beb:	8b 08                	mov    (%eax),%ecx
  103bed:	8b 55 f4             	mov    -0xc(%ebp),%edx
  103bf0:	8d b3 2c 05 00 00    	lea    0x52c(%ebx),%esi
  103bf6:	89 d0                	mov    %edx,%eax
  103bf8:	01 c0                	add    %eax,%eax
  103bfa:	01 d0                	add    %edx,%eax
  103bfc:	c1 e0 02             	shl    $0x2,%eax
  103bff:	01 f0                	add    %esi,%eax
  103c01:	8b 00                	mov    (%eax),%eax
  103c03:	83 ec 04             	sub    $0x4,%esp
  103c06:	51                   	push   %ecx
  103c07:	50                   	push   %eax
  103c08:	8d 83 4c b3 ff ff    	lea    -0x4cb4(%ebx),%eax
  103c0e:	50                   	push   %eax
  103c0f:	e8 a8 f1 ff ff       	call   102dbc <dprintf>
  103c14:	83 c4 10             	add    $0x10,%esp
  103c17:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  103c1b:	8b 45 f4             	mov    -0xc(%ebp),%eax
  103c1e:	83 f8 02             	cmp    $0x2,%eax
  103c21:	76 b4                	jbe    103bd7 <mon_help+0x1c>
  103c23:	b8 00 00 00 00       	mov    $0x0,%eax
  103c28:	8d 65 f8             	lea    -0x8(%ebp),%esp
  103c2b:	5b                   	pop    %ebx
  103c2c:	5e                   	pop    %esi
  103c2d:	5d                   	pop    %ebp
  103c2e:	c3                   	ret

00103c2f <mon_kerninfo>:
  103c2f:	55                   	push   %ebp
  103c30:	89 e5                	mov    %esp,%ebp
  103c32:	53                   	push   %ebx
  103c33:	83 ec 14             	sub    $0x14,%esp
  103c36:	e8 da c7 ff ff       	call   100415 <__x86.get_pc_thunk.bx>
  103c3b:	81 c3 b9 93 00 00    	add    $0x93b9,%ebx
  103c41:	83 ec 0c             	sub    $0xc,%esp
  103c44:	8d 83 55 b3 ff ff    	lea    -0x4cab(%ebx),%eax
  103c4a:	50                   	push   %eax
  103c4b:	e8 6c f1 ff ff       	call   102dbc <dprintf>
  103c50:	83 c4 10             	add    $0x10,%esp
  103c53:	83 ec 08             	sub    $0x8,%esp
  103c56:	c7 c0 b4 4c 10 00    	mov    $0x104cb4,%eax
  103c5c:	50                   	push   %eax
  103c5d:	8d 83 6e b3 ff ff    	lea    -0x4c92(%ebx),%eax
  103c63:	50                   	push   %eax
  103c64:	e8 53 f1 ff ff       	call   102dbc <dprintf>
  103c69:	83 c4 10             	add    $0x10,%esp
  103c6c:	83 ec 08             	sub    $0x8,%esp
  103c6f:	c7 c0 16 72 10 00    	mov    $0x107216,%eax
  103c75:	50                   	push   %eax
  103c76:	8d 83 7d b3 ff ff    	lea    -0x4c83(%ebx),%eax
  103c7c:	50                   	push   %eax
  103c7d:	e8 3a f1 ff ff       	call   102dbc <dprintf>
  103c82:	83 c4 10             	add    $0x10,%esp
  103c85:	83 ec 08             	sub    $0x8,%esp
  103c88:	c7 c0 e0 28 11 00    	mov    $0x1128e0,%eax
  103c8e:	50                   	push   %eax
  103c8f:	8d 83 8c b3 ff ff    	lea    -0x4c74(%ebx),%eax
  103c95:	50                   	push   %eax
  103c96:	e8 21 f1 ff ff       	call   102dbc <dprintf>
  103c9b:	83 c4 10             	add    $0x10,%esp
  103c9e:	83 ec 08             	sub    $0x8,%esp
  103ca1:	c7 c0 00 b0 99 01    	mov    $0x199b000,%eax
  103ca7:	50                   	push   %eax
  103ca8:	8d 83 9b b3 ff ff    	lea    -0x4c65(%ebx),%eax
  103cae:	50                   	push   %eax
  103caf:	e8 08 f1 ff ff       	call   102dbc <dprintf>
  103cb4:	83 c4 10             	add    $0x10,%esp
  103cb7:	c7 c0 00 b0 99 01    	mov    $0x199b000,%eax
  103cbd:	89 c1                	mov    %eax,%ecx
  103cbf:	c7 c0 b4 4c 10 00    	mov    $0x104cb4,%eax
  103cc5:	89 c2                	mov    %eax,%edx
  103cc7:	89 c8                	mov    %ecx,%eax
  103cc9:	29 d0                	sub    %edx,%eax
  103ccb:	89 45 f4             	mov    %eax,-0xc(%ebp)
  103cce:	c7 45 f0 00 04 00 00 	movl   $0x400,-0x10(%ebp)
  103cd5:	8b 55 f4             	mov    -0xc(%ebp),%edx
  103cd8:	8b 45 f0             	mov    -0x10(%ebp),%eax
  103cdb:	01 d0                	add    %edx,%eax
  103cdd:	83 e8 01             	sub    $0x1,%eax
  103ce0:	89 45 ec             	mov    %eax,-0x14(%ebp)
  103ce3:	8b 45 f0             	mov    -0x10(%ebp),%eax
  103ce6:	89 45 e8             	mov    %eax,-0x18(%ebp)
  103ce9:	8b 45 ec             	mov    -0x14(%ebp),%eax
  103cec:	99                   	cltd
  103ced:	f7 7d e8             	idivl  -0x18(%ebp)
  103cf0:	8b 45 ec             	mov    -0x14(%ebp),%eax
  103cf3:	29 d0                	sub    %edx,%eax
  103cf5:	8d 90 ff 03 00 00    	lea    0x3ff(%eax),%edx
  103cfb:	85 c0                	test   %eax,%eax
  103cfd:	0f 48 c2             	cmovs  %edx,%eax
  103d00:	c1 f8 0a             	sar    $0xa,%eax
  103d03:	83 ec 08             	sub    $0x8,%esp
  103d06:	50                   	push   %eax
  103d07:	8d 83 ac b3 ff ff    	lea    -0x4c54(%ebx),%eax
  103d0d:	50                   	push   %eax
  103d0e:	e8 a9 f0 ff ff       	call   102dbc <dprintf>
  103d13:	83 c4 10             	add    $0x10,%esp
  103d16:	b8 00 00 00 00       	mov    $0x0,%eax
  103d1b:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  103d1e:	c9                   	leave
  103d1f:	c3                   	ret

00103d20 <mon_backtrace>:
  103d20:	55                   	push   %ebp
  103d21:	89 e5                	mov    %esp,%ebp
  103d23:	e8 e5 c6 ff ff       	call   10040d <__x86.get_pc_thunk.ax>
  103d28:	05 cc 92 00 00       	add    $0x92cc,%eax
  103d2d:	b8 00 00 00 00       	mov    $0x0,%eax
  103d32:	5d                   	pop    %ebp
  103d33:	c3                   	ret

00103d34 <mon_start_user>:
  103d34:	55                   	push   %ebp
  103d35:	89 e5                	mov    %esp,%ebp
  103d37:	53                   	push   %ebx
  103d38:	83 ec 14             	sub    $0x14,%esp
  103d3b:	e8 d5 c6 ff ff       	call   100415 <__x86.get_pc_thunk.bx>
  103d40:	81 c3 b4 92 00 00    	add    $0x92b4,%ebx
  103d46:	8b 83 38 cc 04 00    	mov    0x4cc38(%ebx),%eax
  103d4c:	85 c0                	test   %eax,%eax
  103d4e:	74 1c                	je     103d6c <mon_start_user+0x38>
  103d50:	83 ec 0c             	sub    $0xc,%esp
  103d53:	8d 83 d8 b3 ff ff    	lea    -0x4c28(%ebx),%eax
  103d59:	50                   	push   %eax
  103d5a:	e8 5d f0 ff ff       	call   102dbc <dprintf>
  103d5f:	83 c4 10             	add    $0x10,%esp
  103d62:	b8 00 00 00 00       	mov    $0x0,%eax
  103d67:	e9 81 00 00 00       	jmp    103ded <mon_start_user+0xb9>
  103d6c:	c7 c0 00 f0 10 00    	mov    $0x10f000,%eax
  103d72:	89 45 f4             	mov    %eax,-0xc(%ebp)
  103d75:	83 ec 0c             	sub    $0xc,%esp
  103d78:	6a 00                	push   $0x0
  103d7a:	e8 a1 1c 00 00       	call   105a20 <container_get_quota>
  103d7f:	83 c4 10             	add    $0x10,%esp
  103d82:	83 ec 08             	sub    $0x8,%esp
  103d85:	50                   	push   %eax
  103d86:	6a 00                	push   $0x0
  103d88:	e8 73 30 00 00       	call   106e00 <alloc_mem_quota>
  103d8d:	83 c4 10             	add    $0x10,%esp
  103d90:	89 83 38 cc 04 00    	mov    %eax,0x4cc38(%ebx)
  103d96:	8b 83 38 cc 04 00    	mov    0x4cc38(%ebx),%eax
  103d9c:	83 ec 08             	sub    $0x8,%esp
  103d9f:	50                   	push   %eax
  103da0:	ff 75 f4             	push   -0xc(%ebp)
  103da3:	e8 48 05 00 00       	call   1042f0 <elf_load>
  103da8:	83 c4 10             	add    $0x10,%esp
  103dab:	83 ec 08             	sub    $0x8,%esp
  103dae:	ff 75 f4             	push   -0xc(%ebp)
  103db1:	8d 83 34 b4 ff ff    	lea    -0x4bcc(%ebx),%eax
  103db7:	50                   	push   %eax
  103db8:	e8 ff ef ff ff       	call   102dbc <dprintf>
  103dbd:	83 c4 10             	add    $0x10,%esp
  103dc0:	8b 83 38 cc 04 00    	mov    0x4cc38(%ebx),%eax
  103dc6:	83 ec 0c             	sub    $0xc,%esp
  103dc9:	50                   	push   %eax
  103dca:	e8 51 20 00 00       	call   105e20 <set_pdir_base>
  103dcf:	83 c4 10             	add    $0x10,%esp
  103dd2:	83 ec 0c             	sub    $0xc,%esp
  103dd5:	ff 75 f4             	push   -0xc(%ebp)
  103dd8:	e8 d3 07 00 00       	call   1045b0 <elf_entry>
  103ddd:	83 c4 10             	add    $0x10,%esp
  103de0:	89 45 f0             	mov    %eax,-0x10(%ebp)
  103de3:	8b 45 f0             	mov    -0x10(%ebp),%eax
  103de6:	ff d0                	call   *%eax
  103de8:	b8 00 00 00 00       	mov    $0x0,%eax
  103ded:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  103df0:	c9                   	leave
  103df1:	c3                   	ret

00103df2 <runcmd>:
  103df2:	55                   	push   %ebp
  103df3:	89 e5                	mov    %esp,%ebp
  103df5:	53                   	push   %ebx
  103df6:	83 ec 54             	sub    $0x54,%esp
  103df9:	e8 17 c6 ff ff       	call   100415 <__x86.get_pc_thunk.bx>
  103dfe:	81 c3 f6 91 00 00    	add    $0x91f6,%ebx
  103e04:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  103e0b:	8b 45 f4             	mov    -0xc(%ebp),%eax
  103e0e:	c7 44 85 b0 00 00 00 	movl   $0x0,-0x50(%ebp,%eax,4)
  103e15:	00 
  103e16:	eb 0c                	jmp    103e24 <runcmd+0x32>
  103e18:	8b 45 08             	mov    0x8(%ebp),%eax
  103e1b:	8d 50 01             	lea    0x1(%eax),%edx
  103e1e:	89 55 08             	mov    %edx,0x8(%ebp)
  103e21:	c6 00 00             	movb   $0x0,(%eax)
  103e24:	8b 45 08             	mov    0x8(%ebp),%eax
  103e27:	0f b6 00             	movzbl (%eax),%eax
  103e2a:	84 c0                	test   %al,%al
  103e2c:	74 20                	je     103e4e <runcmd+0x5c>
  103e2e:	8b 45 08             	mov    0x8(%ebp),%eax
  103e31:	0f b6 00             	movzbl (%eax),%eax
  103e34:	0f be c0             	movsbl %al,%eax
  103e37:	83 ec 08             	sub    $0x8,%esp
  103e3a:	50                   	push   %eax
  103e3b:	8d 83 4f b4 ff ff    	lea    -0x4bb1(%ebx),%eax
  103e41:	50                   	push   %eax
  103e42:	e8 15 ec ff ff       	call   102a5c <strchr>
  103e47:	83 c4 10             	add    $0x10,%esp
  103e4a:	85 c0                	test   %eax,%eax
  103e4c:	75 ca                	jne    103e18 <runcmd+0x26>
  103e4e:	8b 45 08             	mov    0x8(%ebp),%eax
  103e51:	0f b6 00             	movzbl (%eax),%eax
  103e54:	84 c0                	test   %al,%al
  103e56:	74 69                	je     103ec1 <runcmd+0xcf>
  103e58:	83 7d f4 0f          	cmpl   $0xf,-0xc(%ebp)
  103e5c:	75 1e                	jne    103e7c <runcmd+0x8a>
  103e5e:	83 ec 08             	sub    $0x8,%esp
  103e61:	6a 10                	push   $0x10
  103e63:	8d 83 54 b4 ff ff    	lea    -0x4bac(%ebx),%eax
  103e69:	50                   	push   %eax
  103e6a:	e8 4d ef ff ff       	call   102dbc <dprintf>
  103e6f:	83 c4 10             	add    $0x10,%esp
  103e72:	b8 00 00 00 00       	mov    $0x0,%eax
  103e77:	e9 e5 00 00 00       	jmp    103f61 <runcmd+0x16f>
  103e7c:	8b 45 f4             	mov    -0xc(%ebp),%eax
  103e7f:	8d 50 01             	lea    0x1(%eax),%edx
  103e82:	89 55 f4             	mov    %edx,-0xc(%ebp)
  103e85:	8b 55 08             	mov    0x8(%ebp),%edx
  103e88:	89 54 85 b0          	mov    %edx,-0x50(%ebp,%eax,4)
  103e8c:	eb 04                	jmp    103e92 <runcmd+0xa0>
  103e8e:	83 45 08 01          	addl   $0x1,0x8(%ebp)
  103e92:	8b 45 08             	mov    0x8(%ebp),%eax
  103e95:	0f b6 00             	movzbl (%eax),%eax
  103e98:	84 c0                	test   %al,%al
  103e9a:	74 88                	je     103e24 <runcmd+0x32>
  103e9c:	8b 45 08             	mov    0x8(%ebp),%eax
  103e9f:	0f b6 00             	movzbl (%eax),%eax
  103ea2:	0f be c0             	movsbl %al,%eax
  103ea5:	83 ec 08             	sub    $0x8,%esp
  103ea8:	50                   	push   %eax
  103ea9:	8d 83 4f b4 ff ff    	lea    -0x4bb1(%ebx),%eax
  103eaf:	50                   	push   %eax
  103eb0:	e8 a7 eb ff ff       	call   102a5c <strchr>
  103eb5:	83 c4 10             	add    $0x10,%esp
  103eb8:	85 c0                	test   %eax,%eax
  103eba:	74 d2                	je     103e8e <runcmd+0x9c>
  103ebc:	e9 63 ff ff ff       	jmp    103e24 <runcmd+0x32>
  103ec1:	90                   	nop
  103ec2:	8b 45 f4             	mov    -0xc(%ebp),%eax
  103ec5:	c7 44 85 b0 00 00 00 	movl   $0x0,-0x50(%ebp,%eax,4)
  103ecc:	00 
  103ecd:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  103ed1:	75 0a                	jne    103edd <runcmd+0xeb>
  103ed3:	b8 00 00 00 00       	mov    $0x0,%eax
  103ed8:	e9 84 00 00 00       	jmp    103f61 <runcmd+0x16f>
  103edd:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  103ee4:	eb 58                	jmp    103f3e <runcmd+0x14c>
  103ee6:	8b 55 f0             	mov    -0x10(%ebp),%edx
  103ee9:	8d 8b 2c 05 00 00    	lea    0x52c(%ebx),%ecx
  103eef:	89 d0                	mov    %edx,%eax
  103ef1:	01 c0                	add    %eax,%eax
  103ef3:	01 d0                	add    %edx,%eax
  103ef5:	c1 e0 02             	shl    $0x2,%eax
  103ef8:	01 c8                	add    %ecx,%eax
  103efa:	8b 10                	mov    (%eax),%edx
  103efc:	8b 45 b0             	mov    -0x50(%ebp),%eax
  103eff:	83 ec 08             	sub    $0x8,%esp
  103f02:	52                   	push   %edx
  103f03:	50                   	push   %eax
  103f04:	e8 0a eb ff ff       	call   102a13 <strcmp>
  103f09:	83 c4 10             	add    $0x10,%esp
  103f0c:	85 c0                	test   %eax,%eax
  103f0e:	75 2a                	jne    103f3a <runcmd+0x148>
  103f10:	8b 55 f0             	mov    -0x10(%ebp),%edx
  103f13:	8d 8b 34 05 00 00    	lea    0x534(%ebx),%ecx
  103f19:	89 d0                	mov    %edx,%eax
  103f1b:	01 c0                	add    %eax,%eax
  103f1d:	01 d0                	add    %edx,%eax
  103f1f:	c1 e0 02             	shl    $0x2,%eax
  103f22:	01 c8                	add    %ecx,%eax
  103f24:	8b 00                	mov    (%eax),%eax
  103f26:	83 ec 04             	sub    $0x4,%esp
  103f29:	ff 75 0c             	push   0xc(%ebp)
  103f2c:	8d 55 b0             	lea    -0x50(%ebp),%edx
  103f2f:	52                   	push   %edx
  103f30:	ff 75 f4             	push   -0xc(%ebp)
  103f33:	ff d0                	call   *%eax
  103f35:	83 c4 10             	add    $0x10,%esp
  103f38:	eb 27                	jmp    103f61 <runcmd+0x16f>
  103f3a:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  103f3e:	8b 45 f0             	mov    -0x10(%ebp),%eax
  103f41:	83 f8 02             	cmp    $0x2,%eax
  103f44:	76 a0                	jbe    103ee6 <runcmd+0xf4>
  103f46:	8b 45 b0             	mov    -0x50(%ebp),%eax
  103f49:	83 ec 08             	sub    $0x8,%esp
  103f4c:	50                   	push   %eax
  103f4d:	8d 83 71 b4 ff ff    	lea    -0x4b8f(%ebx),%eax
  103f53:	50                   	push   %eax
  103f54:	e8 63 ee ff ff       	call   102dbc <dprintf>
  103f59:	83 c4 10             	add    $0x10,%esp
  103f5c:	b8 00 00 00 00       	mov    $0x0,%eax
  103f61:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  103f64:	c9                   	leave
  103f65:	c3                   	ret

00103f66 <monitor>:
  103f66:	55                   	push   %ebp
  103f67:	89 e5                	mov    %esp,%ebp
  103f69:	53                   	push   %ebx
  103f6a:	83 ec 14             	sub    $0x14,%esp
  103f6d:	e8 a3 c4 ff ff       	call   100415 <__x86.get_pc_thunk.bx>
  103f72:	81 c3 82 90 00 00    	add    $0x9082,%ebx
  103f78:	83 ec 0c             	sub    $0xc,%esp
  103f7b:	8d 83 88 b4 ff ff    	lea    -0x4b78(%ebx),%eax
  103f81:	50                   	push   %eax
  103f82:	e8 35 ee ff ff       	call   102dbc <dprintf>
  103f87:	83 c4 10             	add    $0x10,%esp
  103f8a:	83 ec 0c             	sub    $0xc,%esp
  103f8d:	8d 83 b4 b4 ff ff    	lea    -0x4b4c(%ebx),%eax
  103f93:	50                   	push   %eax
  103f94:	e8 23 ee ff ff       	call   102dbc <dprintf>
  103f99:	83 c4 10             	add    $0x10,%esp
  103f9c:	83 ec 0c             	sub    $0xc,%esp
  103f9f:	8d 83 88 b4 ff ff    	lea    -0x4b78(%ebx),%eax
  103fa5:	50                   	push   %eax
  103fa6:	e8 11 ee ff ff       	call   102dbc <dprintf>
  103fab:	83 c4 10             	add    $0x10,%esp
  103fae:	83 ec 0c             	sub    $0xc,%esp
  103fb1:	8d 83 e0 b4 ff ff    	lea    -0x4b20(%ebx),%eax
  103fb7:	50                   	push   %eax
  103fb8:	e8 ff ed ff ff       	call   102dbc <dprintf>
  103fbd:	83 c4 10             	add    $0x10,%esp
  103fc0:	83 ec 0c             	sub    $0xc,%esp
  103fc3:	8d 83 05 b5 ff ff    	lea    -0x4afb(%ebx),%eax
  103fc9:	50                   	push   %eax
  103fca:	e8 e2 c5 ff ff       	call   1005b1 <readline>
  103fcf:	83 c4 10             	add    $0x10,%esp
  103fd2:	89 45 f4             	mov    %eax,-0xc(%ebp)
  103fd5:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  103fd9:	74 e5                	je     103fc0 <monitor+0x5a>
  103fdb:	83 ec 08             	sub    $0x8,%esp
  103fde:	ff 75 08             	push   0x8(%ebp)
  103fe1:	ff 75 f4             	push   -0xc(%ebp)
  103fe4:	e8 09 fe ff ff       	call   103df2 <runcmd>
  103fe9:	83 c4 10             	add    $0x10,%esp
  103fec:	85 c0                	test   %eax,%eax
  103fee:	78 02                	js     103ff2 <monitor+0x8c>
  103ff0:	eb ce                	jmp    103fc0 <monitor+0x5a>
  103ff2:	90                   	nop
  103ff3:	90                   	nop
  103ff4:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  103ff7:	c9                   	leave
  103ff8:	c3                   	ret

00103ff9 <pt_copyin>:
  103ff9:	55                   	push   %ebp
  103ffa:	89 e5                	mov    %esp,%ebp
  103ffc:	53                   	push   %ebx
  103ffd:	83 ec 14             	sub    $0x14,%esp
  104000:	e8 10 c4 ff ff       	call   100415 <__x86.get_pc_thunk.bx>
  104005:	81 c3 ef 8f 00 00    	add    $0x8fef,%ebx
  10400b:	81 7d 0c ff ff ff 3f 	cmpl   $0x3fffffff,0xc(%ebp)
  104012:	76 0f                	jbe    104023 <pt_copyin+0x2a>
  104014:	8b 55 0c             	mov    0xc(%ebp),%edx
  104017:	8b 45 14             	mov    0x14(%ebp),%eax
  10401a:	01 d0                	add    %edx,%eax
  10401c:	3d 00 00 00 f0       	cmp    $0xf0000000,%eax
  104021:	76 0a                	jbe    10402d <pt_copyin+0x34>
  104023:	b8 00 00 00 00       	mov    $0x0,%eax
  104028:	e9 d7 00 00 00       	jmp    104104 <pt_copyin+0x10b>
  10402d:	8b 55 10             	mov    0x10(%ebp),%edx
  104030:	8b 45 14             	mov    0x14(%ebp),%eax
  104033:	01 d0                	add    %edx,%eax
  104035:	3d 00 00 00 f0       	cmp    $0xf0000000,%eax
  10403a:	76 0a                	jbe    104046 <pt_copyin+0x4d>
  10403c:	b8 00 00 00 00       	mov    $0x0,%eax
  104041:	e9 be 00 00 00       	jmp    104104 <pt_copyin+0x10b>
  104046:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  10404d:	e9 a5 00 00 00       	jmp    1040f7 <pt_copyin+0xfe>
  104052:	83 ec 08             	sub    $0x8,%esp
  104055:	ff 75 0c             	push   0xc(%ebp)
  104058:	ff 75 08             	push   0x8(%ebp)
  10405b:	e8 30 22 00 00       	call   106290 <get_ptbl_entry_by_va>
  104060:	83 c4 10             	add    $0x10,%esp
  104063:	89 45 f0             	mov    %eax,-0x10(%ebp)
  104066:	8b 45 f0             	mov    -0x10(%ebp),%eax
  104069:	83 e0 01             	and    $0x1,%eax
  10406c:	85 c0                	test   %eax,%eax
  10406e:	75 27                	jne    104097 <pt_copyin+0x9e>
  104070:	83 ec 04             	sub    $0x4,%esp
  104073:	6a 07                	push   $0x7
  104075:	ff 75 0c             	push   0xc(%ebp)
  104078:	ff 75 08             	push   0x8(%ebp)
  10407b:	e8 30 2d 00 00       	call   106db0 <alloc_page>
  104080:	83 c4 10             	add    $0x10,%esp
  104083:	83 ec 08             	sub    $0x8,%esp
  104086:	ff 75 0c             	push   0xc(%ebp)
  104089:	ff 75 08             	push   0x8(%ebp)
  10408c:	e8 ff 21 00 00       	call   106290 <get_ptbl_entry_by_va>
  104091:	83 c4 10             	add    $0x10,%esp
  104094:	89 45 f0             	mov    %eax,-0x10(%ebp)
  104097:	8b 45 f0             	mov    -0x10(%ebp),%eax
  10409a:	25 00 f0 ff ff       	and    $0xfffff000,%eax
  10409f:	89 c2                	mov    %eax,%edx
  1040a1:	8b 45 0c             	mov    0xc(%ebp),%eax
  1040a4:	25 ff 0f 00 00       	and    $0xfff,%eax
  1040a9:	09 d0                	or     %edx,%eax
  1040ab:	89 45 f0             	mov    %eax,-0x10(%ebp)
  1040ae:	8b 45 f0             	mov    -0x10(%ebp),%eax
  1040b1:	25 ff 0f 00 00       	and    $0xfff,%eax
  1040b6:	89 c2                	mov    %eax,%edx
  1040b8:	b8 00 10 00 00       	mov    $0x1000,%eax
  1040bd:	29 d0                	sub    %edx,%eax
  1040bf:	8b 55 14             	mov    0x14(%ebp),%edx
  1040c2:	39 c2                	cmp    %eax,%edx
  1040c4:	0f 46 c2             	cmovbe %edx,%eax
  1040c7:	89 45 ec             	mov    %eax,-0x14(%ebp)
  1040ca:	8b 45 f0             	mov    -0x10(%ebp),%eax
  1040cd:	83 ec 04             	sub    $0x4,%esp
  1040d0:	ff 75 ec             	push   -0x14(%ebp)
  1040d3:	50                   	push   %eax
  1040d4:	ff 75 10             	push   0x10(%ebp)
  1040d7:	e8 7d e8 ff ff       	call   102959 <memcpy>
  1040dc:	83 c4 10             	add    $0x10,%esp
  1040df:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1040e2:	29 45 14             	sub    %eax,0x14(%ebp)
  1040e5:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1040e8:	01 45 0c             	add    %eax,0xc(%ebp)
  1040eb:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1040ee:	01 45 10             	add    %eax,0x10(%ebp)
  1040f1:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1040f4:	01 45 f4             	add    %eax,-0xc(%ebp)
  1040f7:	83 7d 14 00          	cmpl   $0x0,0x14(%ebp)
  1040fb:	0f 85 51 ff ff ff    	jne    104052 <pt_copyin+0x59>
  104101:	8b 45 f4             	mov    -0xc(%ebp),%eax
  104104:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  104107:	c9                   	leave
  104108:	c3                   	ret

00104109 <pt_copyout>:
  104109:	55                   	push   %ebp
  10410a:	89 e5                	mov    %esp,%ebp
  10410c:	53                   	push   %ebx
  10410d:	83 ec 14             	sub    $0x14,%esp
  104110:	e8 00 c3 ff ff       	call   100415 <__x86.get_pc_thunk.bx>
  104115:	81 c3 df 8e 00 00    	add    $0x8edf,%ebx
  10411b:	81 7d 10 ff ff ff 3f 	cmpl   $0x3fffffff,0x10(%ebp)
  104122:	76 0f                	jbe    104133 <pt_copyout+0x2a>
  104124:	8b 55 10             	mov    0x10(%ebp),%edx
  104127:	8b 45 14             	mov    0x14(%ebp),%eax
  10412a:	01 d0                	add    %edx,%eax
  10412c:	3d 00 00 00 f0       	cmp    $0xf0000000,%eax
  104131:	76 0a                	jbe    10413d <pt_copyout+0x34>
  104133:	b8 00 00 00 00       	mov    $0x0,%eax
  104138:	e9 d7 00 00 00       	jmp    104214 <pt_copyout+0x10b>
  10413d:	8b 55 08             	mov    0x8(%ebp),%edx
  104140:	8b 45 14             	mov    0x14(%ebp),%eax
  104143:	01 d0                	add    %edx,%eax
  104145:	3d 00 00 00 f0       	cmp    $0xf0000000,%eax
  10414a:	76 0a                	jbe    104156 <pt_copyout+0x4d>
  10414c:	b8 00 00 00 00       	mov    $0x0,%eax
  104151:	e9 be 00 00 00       	jmp    104214 <pt_copyout+0x10b>
  104156:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  10415d:	e9 a5 00 00 00       	jmp    104207 <pt_copyout+0xfe>
  104162:	83 ec 08             	sub    $0x8,%esp
  104165:	ff 75 10             	push   0x10(%ebp)
  104168:	ff 75 0c             	push   0xc(%ebp)
  10416b:	e8 20 21 00 00       	call   106290 <get_ptbl_entry_by_va>
  104170:	83 c4 10             	add    $0x10,%esp
  104173:	89 45 f0             	mov    %eax,-0x10(%ebp)
  104176:	8b 45 f0             	mov    -0x10(%ebp),%eax
  104179:	83 e0 01             	and    $0x1,%eax
  10417c:	85 c0                	test   %eax,%eax
  10417e:	75 27                	jne    1041a7 <pt_copyout+0x9e>
  104180:	83 ec 04             	sub    $0x4,%esp
  104183:	6a 07                	push   $0x7
  104185:	ff 75 10             	push   0x10(%ebp)
  104188:	ff 75 0c             	push   0xc(%ebp)
  10418b:	e8 20 2c 00 00       	call   106db0 <alloc_page>
  104190:	83 c4 10             	add    $0x10,%esp
  104193:	83 ec 08             	sub    $0x8,%esp
  104196:	ff 75 10             	push   0x10(%ebp)
  104199:	ff 75 0c             	push   0xc(%ebp)
  10419c:	e8 ef 20 00 00       	call   106290 <get_ptbl_entry_by_va>
  1041a1:	83 c4 10             	add    $0x10,%esp
  1041a4:	89 45 f0             	mov    %eax,-0x10(%ebp)
  1041a7:	8b 45 f0             	mov    -0x10(%ebp),%eax
  1041aa:	25 00 f0 ff ff       	and    $0xfffff000,%eax
  1041af:	89 c2                	mov    %eax,%edx
  1041b1:	8b 45 10             	mov    0x10(%ebp),%eax
  1041b4:	25 ff 0f 00 00       	and    $0xfff,%eax
  1041b9:	09 d0                	or     %edx,%eax
  1041bb:	89 45 f0             	mov    %eax,-0x10(%ebp)
  1041be:	8b 45 f0             	mov    -0x10(%ebp),%eax
  1041c1:	25 ff 0f 00 00       	and    $0xfff,%eax
  1041c6:	89 c2                	mov    %eax,%edx
  1041c8:	b8 00 10 00 00       	mov    $0x1000,%eax
  1041cd:	29 d0                	sub    %edx,%eax
  1041cf:	8b 55 14             	mov    0x14(%ebp),%edx
  1041d2:	39 c2                	cmp    %eax,%edx
  1041d4:	0f 46 c2             	cmovbe %edx,%eax
  1041d7:	89 45 ec             	mov    %eax,-0x14(%ebp)
  1041da:	8b 45 f0             	mov    -0x10(%ebp),%eax
  1041dd:	83 ec 04             	sub    $0x4,%esp
  1041e0:	ff 75 ec             	push   -0x14(%ebp)
  1041e3:	ff 75 08             	push   0x8(%ebp)
  1041e6:	50                   	push   %eax
  1041e7:	e8 6d e7 ff ff       	call   102959 <memcpy>
  1041ec:	83 c4 10             	add    $0x10,%esp
  1041ef:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1041f2:	29 45 14             	sub    %eax,0x14(%ebp)
  1041f5:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1041f8:	01 45 10             	add    %eax,0x10(%ebp)
  1041fb:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1041fe:	01 45 08             	add    %eax,0x8(%ebp)
  104201:	8b 45 ec             	mov    -0x14(%ebp),%eax
  104204:	01 45 f4             	add    %eax,-0xc(%ebp)
  104207:	83 7d 14 00          	cmpl   $0x0,0x14(%ebp)
  10420b:	0f 85 51 ff ff ff    	jne    104162 <pt_copyout+0x59>
  104211:	8b 45 f4             	mov    -0xc(%ebp),%eax
  104214:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  104217:	c9                   	leave
  104218:	c3                   	ret

00104219 <pt_memset>:
  104219:	55                   	push   %ebp
  10421a:	89 e5                	mov    %esp,%ebp
  10421c:	53                   	push   %ebx
  10421d:	83 ec 24             	sub    $0x24,%esp
  104220:	e8 f0 c1 ff ff       	call   100415 <__x86.get_pc_thunk.bx>
  104225:	81 c3 cf 8d 00 00    	add    $0x8dcf,%ebx
  10422b:	8b 45 10             	mov    0x10(%ebp),%eax
  10422e:	88 45 e4             	mov    %al,-0x1c(%ebp)
  104231:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  104238:	e9 a1 00 00 00       	jmp    1042de <pt_memset+0xc5>
  10423d:	83 ec 08             	sub    $0x8,%esp
  104240:	ff 75 0c             	push   0xc(%ebp)
  104243:	ff 75 08             	push   0x8(%ebp)
  104246:	e8 45 20 00 00       	call   106290 <get_ptbl_entry_by_va>
  10424b:	83 c4 10             	add    $0x10,%esp
  10424e:	89 45 f0             	mov    %eax,-0x10(%ebp)
  104251:	8b 45 f0             	mov    -0x10(%ebp),%eax
  104254:	83 e0 01             	and    $0x1,%eax
  104257:	85 c0                	test   %eax,%eax
  104259:	75 27                	jne    104282 <pt_memset+0x69>
  10425b:	83 ec 04             	sub    $0x4,%esp
  10425e:	6a 07                	push   $0x7
  104260:	ff 75 0c             	push   0xc(%ebp)
  104263:	ff 75 08             	push   0x8(%ebp)
  104266:	e8 45 2b 00 00       	call   106db0 <alloc_page>
  10426b:	83 c4 10             	add    $0x10,%esp
  10426e:	83 ec 08             	sub    $0x8,%esp
  104271:	ff 75 0c             	push   0xc(%ebp)
  104274:	ff 75 08             	push   0x8(%ebp)
  104277:	e8 14 20 00 00       	call   106290 <get_ptbl_entry_by_va>
  10427c:	83 c4 10             	add    $0x10,%esp
  10427f:	89 45 f0             	mov    %eax,-0x10(%ebp)
  104282:	8b 45 f0             	mov    -0x10(%ebp),%eax
  104285:	25 00 f0 ff ff       	and    $0xfffff000,%eax
  10428a:	89 c2                	mov    %eax,%edx
  10428c:	8b 45 0c             	mov    0xc(%ebp),%eax
  10428f:	25 ff 0f 00 00       	and    $0xfff,%eax
  104294:	09 d0                	or     %edx,%eax
  104296:	89 45 f0             	mov    %eax,-0x10(%ebp)
  104299:	8b 45 f0             	mov    -0x10(%ebp),%eax
  10429c:	25 ff 0f 00 00       	and    $0xfff,%eax
  1042a1:	89 c2                	mov    %eax,%edx
  1042a3:	b8 00 10 00 00       	mov    $0x1000,%eax
  1042a8:	29 d0                	sub    %edx,%eax
  1042aa:	8b 55 14             	mov    0x14(%ebp),%edx
  1042ad:	39 c2                	cmp    %eax,%edx
  1042af:	0f 46 c2             	cmovbe %edx,%eax
  1042b2:	89 45 ec             	mov    %eax,-0x14(%ebp)
  1042b5:	0f be 55 e4          	movsbl -0x1c(%ebp),%edx
  1042b9:	8b 45 f0             	mov    -0x10(%ebp),%eax
  1042bc:	83 ec 04             	sub    $0x4,%esp
  1042bf:	ff 75 ec             	push   -0x14(%ebp)
  1042c2:	52                   	push   %edx
  1042c3:	50                   	push   %eax
  1042c4:	e8 32 e5 ff ff       	call   1027fb <memset>
  1042c9:	83 c4 10             	add    $0x10,%esp
  1042cc:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1042cf:	29 45 14             	sub    %eax,0x14(%ebp)
  1042d2:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1042d5:	01 45 0c             	add    %eax,0xc(%ebp)
  1042d8:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1042db:	01 45 f4             	add    %eax,-0xc(%ebp)
  1042de:	83 7d 14 00          	cmpl   $0x0,0x14(%ebp)
  1042e2:	0f 85 55 ff ff ff    	jne    10423d <pt_memset+0x24>
  1042e8:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1042eb:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1042ee:	c9                   	leave
  1042ef:	c3                   	ret

001042f0 <elf_load>:
  1042f0:	55                   	push   %ebp
  1042f1:	89 e5                	mov    %esp,%ebp
  1042f3:	53                   	push   %ebx
  1042f4:	83 ec 34             	sub    $0x34,%esp
  1042f7:	e8 19 c1 ff ff       	call   100415 <__x86.get_pc_thunk.bx>
  1042fc:	81 c3 f8 8c 00 00    	add    $0x8cf8,%ebx
  104302:	8b 45 08             	mov    0x8(%ebp),%eax
  104305:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  104308:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  10430b:	89 45 e0             	mov    %eax,-0x20(%ebp)
  10430e:	8b 45 e0             	mov    -0x20(%ebp),%eax
  104311:	8b 00                	mov    (%eax),%eax
  104313:	3d 7f 45 4c 46       	cmp    $0x464c457f,%eax
  104318:	74 1f                	je     104339 <elf_load+0x49>
  10431a:	8d 83 0c b5 ff ff    	lea    -0x4af4(%ebx),%eax
  104320:	50                   	push   %eax
  104321:	8d 83 25 b5 ff ff    	lea    -0x4adb(%ebx),%eax
  104327:	50                   	push   %eax
  104328:	6a 26                	push   $0x26
  10432a:	8d 83 42 b5 ff ff    	lea    -0x4abe(%ebx),%eax
  104330:	50                   	push   %eax
  104331:	e8 6e e8 ff ff       	call   102ba4 <debug_panic>
  104336:	83 c4 10             	add    $0x10,%esp
  104339:	8b 45 e0             	mov    -0x20(%ebp),%eax
  10433c:	0f b7 40 32          	movzwl 0x32(%eax),%eax
  104340:	66 85 c0             	test   %ax,%ax
  104343:	75 1f                	jne    104364 <elf_load+0x74>
  104345:	8d 83 54 b5 ff ff    	lea    -0x4aac(%ebx),%eax
  10434b:	50                   	push   %eax
  10434c:	8d 83 25 b5 ff ff    	lea    -0x4adb(%ebx),%eax
  104352:	50                   	push   %eax
  104353:	6a 27                	push   $0x27
  104355:	8d 83 42 b5 ff ff    	lea    -0x4abe(%ebx),%eax
  10435b:	50                   	push   %eax
  10435c:	e8 43 e8 ff ff       	call   102ba4 <debug_panic>
  104361:	83 c4 10             	add    $0x10,%esp
  104364:	8b 45 e0             	mov    -0x20(%ebp),%eax
  104367:	8b 50 20             	mov    0x20(%eax),%edx
  10436a:	8b 45 e0             	mov    -0x20(%ebp),%eax
  10436d:	01 d0                	add    %edx,%eax
  10436f:	89 45 dc             	mov    %eax,-0x24(%ebp)
  104372:	8b 45 e0             	mov    -0x20(%ebp),%eax
  104375:	0f b7 40 30          	movzwl 0x30(%eax),%eax
  104379:	0f b7 d0             	movzwl %ax,%edx
  10437c:	89 d0                	mov    %edx,%eax
  10437e:	c1 e0 02             	shl    $0x2,%eax
  104381:	01 d0                	add    %edx,%eax
  104383:	c1 e0 03             	shl    $0x3,%eax
  104386:	89 c2                	mov    %eax,%edx
  104388:	8b 45 dc             	mov    -0x24(%ebp),%eax
  10438b:	01 d0                	add    %edx,%eax
  10438d:	89 45 d8             	mov    %eax,-0x28(%ebp)
  104390:	8b 45 e0             	mov    -0x20(%ebp),%eax
  104393:	0f b7 40 32          	movzwl 0x32(%eax),%eax
  104397:	0f b7 d0             	movzwl %ax,%edx
  10439a:	89 d0                	mov    %edx,%eax
  10439c:	c1 e0 02             	shl    $0x2,%eax
  10439f:	01 d0                	add    %edx,%eax
  1043a1:	c1 e0 03             	shl    $0x3,%eax
  1043a4:	89 c2                	mov    %eax,%edx
  1043a6:	8b 45 dc             	mov    -0x24(%ebp),%eax
  1043a9:	01 d0                	add    %edx,%eax
  1043ab:	8b 50 10             	mov    0x10(%eax),%edx
  1043ae:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  1043b1:	01 d0                	add    %edx,%eax
  1043b3:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  1043b6:	8b 45 e0             	mov    -0x20(%ebp),%eax
  1043b9:	0f b7 40 32          	movzwl 0x32(%eax),%eax
  1043bd:	0f b7 d0             	movzwl %ax,%edx
  1043c0:	89 d0                	mov    %edx,%eax
  1043c2:	c1 e0 02             	shl    $0x2,%eax
  1043c5:	01 d0                	add    %edx,%eax
  1043c7:	c1 e0 03             	shl    $0x3,%eax
  1043ca:	89 c2                	mov    %eax,%edx
  1043cc:	8b 45 dc             	mov    -0x24(%ebp),%eax
  1043cf:	01 d0                	add    %edx,%eax
  1043d1:	8b 40 04             	mov    0x4(%eax),%eax
  1043d4:	83 f8 03             	cmp    $0x3,%eax
  1043d7:	74 1f                	je     1043f8 <elf_load+0x108>
  1043d9:	8d 83 74 b5 ff ff    	lea    -0x4a8c(%ebx),%eax
  1043df:	50                   	push   %eax
  1043e0:	8d 83 25 b5 ff ff    	lea    -0x4adb(%ebx),%eax
  1043e6:	50                   	push   %eax
  1043e7:	6a 2d                	push   $0x2d
  1043e9:	8d 83 42 b5 ff ff    	lea    -0x4abe(%ebx),%eax
  1043ef:	50                   	push   %eax
  1043f0:	e8 af e7 ff ff       	call   102ba4 <debug_panic>
  1043f5:	83 c4 10             	add    $0x10,%esp
  1043f8:	8b 45 e0             	mov    -0x20(%ebp),%eax
  1043fb:	8b 50 1c             	mov    0x1c(%eax),%edx
  1043fe:	8b 45 e0             	mov    -0x20(%ebp),%eax
  104401:	01 d0                	add    %edx,%eax
  104403:	89 45 f4             	mov    %eax,-0xc(%ebp)
  104406:	8b 45 e0             	mov    -0x20(%ebp),%eax
  104409:	0f b7 40 2c          	movzwl 0x2c(%eax),%eax
  10440d:	0f b7 c0             	movzwl %ax,%eax
  104410:	c1 e0 05             	shl    $0x5,%eax
  104413:	89 c2                	mov    %eax,%edx
  104415:	8b 45 f4             	mov    -0xc(%ebp),%eax
  104418:	01 d0                	add    %edx,%eax
  10441a:	89 45 d0             	mov    %eax,-0x30(%ebp)
  10441d:	e9 5f 01 00 00       	jmp    104581 <elf_load+0x291>
  104422:	8b 45 f4             	mov    -0xc(%ebp),%eax
  104425:	8b 00                	mov    (%eax),%eax
  104427:	83 f8 01             	cmp    $0x1,%eax
  10442a:	0f 85 4c 01 00 00    	jne    10457c <elf_load+0x28c>
  104430:	8b 45 f4             	mov    -0xc(%ebp),%eax
  104433:	8b 40 04             	mov    0x4(%eax),%eax
  104436:	83 ec 08             	sub    $0x8,%esp
  104439:	68 00 10 00 00       	push   $0x1000
  10443e:	50                   	push   %eax
  10443f:	e8 11 f4 ff ff       	call   103855 <rounddown>
  104444:	83 c4 10             	add    $0x10,%esp
  104447:	8b 55 e0             	mov    -0x20(%ebp),%edx
  10444a:	01 d0                	add    %edx,%eax
  10444c:	89 45 f0             	mov    %eax,-0x10(%ebp)
  10444f:	8b 45 f4             	mov    -0xc(%ebp),%eax
  104452:	8b 40 08             	mov    0x8(%eax),%eax
  104455:	83 ec 08             	sub    $0x8,%esp
  104458:	68 00 10 00 00       	push   $0x1000
  10445d:	50                   	push   %eax
  10445e:	e8 f2 f3 ff ff       	call   103855 <rounddown>
  104463:	83 c4 10             	add    $0x10,%esp
  104466:	89 45 ec             	mov    %eax,-0x14(%ebp)
  104469:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10446c:	8b 50 08             	mov    0x8(%eax),%edx
  10446f:	8b 45 f4             	mov    -0xc(%ebp),%eax
  104472:	8b 40 10             	mov    0x10(%eax),%eax
  104475:	01 d0                	add    %edx,%eax
  104477:	89 45 cc             	mov    %eax,-0x34(%ebp)
  10447a:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10447d:	8b 50 08             	mov    0x8(%eax),%edx
  104480:	8b 45 f4             	mov    -0xc(%ebp),%eax
  104483:	8b 40 14             	mov    0x14(%eax),%eax
  104486:	01 d0                	add    %edx,%eax
  104488:	83 ec 08             	sub    $0x8,%esp
  10448b:	68 00 10 00 00       	push   $0x1000
  104490:	50                   	push   %eax
  104491:	e8 de f3 ff ff       	call   103874 <roundup>
  104496:	83 c4 10             	add    $0x10,%esp
  104499:	89 45 c8             	mov    %eax,-0x38(%ebp)
  10449c:	c7 45 e8 05 00 00 00 	movl   $0x5,-0x18(%ebp)
  1044a3:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1044a6:	8b 40 18             	mov    0x18(%eax),%eax
  1044a9:	83 e0 02             	and    $0x2,%eax
  1044ac:	85 c0                	test   %eax,%eax
  1044ae:	0f 84 ba 00 00 00    	je     10456e <elf_load+0x27e>
  1044b4:	83 4d e8 02          	orl    $0x2,-0x18(%ebp)
  1044b8:	e9 b1 00 00 00       	jmp    10456e <elf_load+0x27e>
  1044bd:	8b 45 0c             	mov    0xc(%ebp),%eax
  1044c0:	83 ec 04             	sub    $0x4,%esp
  1044c3:	ff 75 e8             	push   -0x18(%ebp)
  1044c6:	ff 75 ec             	push   -0x14(%ebp)
  1044c9:	50                   	push   %eax
  1044ca:	e8 e1 28 00 00       	call   106db0 <alloc_page>
  1044cf:	83 c4 10             	add    $0x10,%esp
  1044d2:	83 ec 08             	sub    $0x8,%esp
  1044d5:	68 00 10 00 00       	push   $0x1000
  1044da:	ff 75 cc             	push   -0x34(%ebp)
  1044dd:	e8 73 f3 ff ff       	call   103855 <rounddown>
  1044e2:	83 c4 10             	add    $0x10,%esp
  1044e5:	39 45 ec             	cmp    %eax,-0x14(%ebp)
  1044e8:	73 1a                	jae    104504 <elf_load+0x214>
  1044ea:	8b 55 0c             	mov    0xc(%ebp),%edx
  1044ed:	8b 45 f0             	mov    -0x10(%ebp),%eax
  1044f0:	68 00 10 00 00       	push   $0x1000
  1044f5:	ff 75 ec             	push   -0x14(%ebp)
  1044f8:	52                   	push   %edx
  1044f9:	50                   	push   %eax
  1044fa:	e8 0a fc ff ff       	call   104109 <pt_copyout>
  1044ff:	83 c4 10             	add    $0x10,%esp
  104502:	eb 5c                	jmp    104560 <elf_load+0x270>
  104504:	8b 45 ec             	mov    -0x14(%ebp),%eax
  104507:	3b 45 cc             	cmp    -0x34(%ebp),%eax
  10450a:	73 3e                	jae    10454a <elf_load+0x25a>
  10450c:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10450f:	8b 40 10             	mov    0x10(%eax),%eax
  104512:	85 c0                	test   %eax,%eax
  104514:	74 34                	je     10454a <elf_load+0x25a>
  104516:	8b 45 0c             	mov    0xc(%ebp),%eax
  104519:	68 00 10 00 00       	push   $0x1000
  10451e:	6a 00                	push   $0x0
  104520:	ff 75 ec             	push   -0x14(%ebp)
  104523:	50                   	push   %eax
  104524:	e8 f0 fc ff ff       	call   104219 <pt_memset>
  104529:	83 c4 10             	add    $0x10,%esp
  10452c:	8b 45 cc             	mov    -0x34(%ebp),%eax
  10452f:	2b 45 ec             	sub    -0x14(%ebp),%eax
  104532:	89 c1                	mov    %eax,%ecx
  104534:	8b 55 0c             	mov    0xc(%ebp),%edx
  104537:	8b 45 f0             	mov    -0x10(%ebp),%eax
  10453a:	51                   	push   %ecx
  10453b:	ff 75 ec             	push   -0x14(%ebp)
  10453e:	52                   	push   %edx
  10453f:	50                   	push   %eax
  104540:	e8 c4 fb ff ff       	call   104109 <pt_copyout>
  104545:	83 c4 10             	add    $0x10,%esp
  104548:	eb 16                	jmp    104560 <elf_load+0x270>
  10454a:	8b 45 0c             	mov    0xc(%ebp),%eax
  10454d:	68 00 10 00 00       	push   $0x1000
  104552:	6a 00                	push   $0x0
  104554:	ff 75 ec             	push   -0x14(%ebp)
  104557:	50                   	push   %eax
  104558:	e8 bc fc ff ff       	call   104219 <pt_memset>
  10455d:	83 c4 10             	add    $0x10,%esp
  104560:	81 45 ec 00 10 00 00 	addl   $0x1000,-0x14(%ebp)
  104567:	81 45 f0 00 10 00 00 	addl   $0x1000,-0x10(%ebp)
  10456e:	8b 45 ec             	mov    -0x14(%ebp),%eax
  104571:	3b 45 c8             	cmp    -0x38(%ebp),%eax
  104574:	0f 82 43 ff ff ff    	jb     1044bd <elf_load+0x1cd>
  10457a:	eb 01                	jmp    10457d <elf_load+0x28d>
  10457c:	90                   	nop
  10457d:	83 45 f4 20          	addl   $0x20,-0xc(%ebp)
  104581:	8b 45 f4             	mov    -0xc(%ebp),%eax
  104584:	3b 45 d0             	cmp    -0x30(%ebp),%eax
  104587:	0f 82 95 fe ff ff    	jb     104422 <elf_load+0x132>
  10458d:	8b 45 0c             	mov    0xc(%ebp),%eax
  104590:	68 00 10 00 00       	push   $0x1000
  104595:	68 00 00 00 e0       	push   $0xe0000000
  10459a:	50                   	push   %eax
  10459b:	8d 83 0c 10 00 00    	lea    0x100c(%ebx),%eax
  1045a1:	50                   	push   %eax
  1045a2:	e8 62 fb ff ff       	call   104109 <pt_copyout>
  1045a7:	83 c4 10             	add    $0x10,%esp
  1045aa:	90                   	nop
  1045ab:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1045ae:	c9                   	leave
  1045af:	c3                   	ret

001045b0 <elf_entry>:
  1045b0:	55                   	push   %ebp
  1045b1:	89 e5                	mov    %esp,%ebp
  1045b3:	53                   	push   %ebx
  1045b4:	83 ec 14             	sub    $0x14,%esp
  1045b7:	e8 51 be ff ff       	call   10040d <__x86.get_pc_thunk.ax>
  1045bc:	05 38 8a 00 00       	add    $0x8a38,%eax
  1045c1:	8b 55 08             	mov    0x8(%ebp),%edx
  1045c4:	89 55 f4             	mov    %edx,-0xc(%ebp)
  1045c7:	8b 55 f4             	mov    -0xc(%ebp),%edx
  1045ca:	89 55 f0             	mov    %edx,-0x10(%ebp)
  1045cd:	8b 55 f0             	mov    -0x10(%ebp),%edx
  1045d0:	8b 12                	mov    (%edx),%edx
  1045d2:	81 fa 7f 45 4c 46    	cmp    $0x464c457f,%edx
  1045d8:	74 21                	je     1045fb <elf_entry+0x4b>
  1045da:	8d 90 0c b5 ff ff    	lea    -0x4af4(%eax),%edx
  1045e0:	52                   	push   %edx
  1045e1:	8d 90 25 b5 ff ff    	lea    -0x4adb(%eax),%edx
  1045e7:	52                   	push   %edx
  1045e8:	6a 5b                	push   $0x5b
  1045ea:	8d 90 42 b5 ff ff    	lea    -0x4abe(%eax),%edx
  1045f0:	52                   	push   %edx
  1045f1:	89 c3                	mov    %eax,%ebx
  1045f3:	e8 ac e5 ff ff       	call   102ba4 <debug_panic>
  1045f8:	83 c4 10             	add    $0x10,%esp
  1045fb:	8b 45 f0             	mov    -0x10(%ebp),%eax
  1045fe:	8b 40 18             	mov    0x18(%eax),%eax
  104601:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  104604:	c9                   	leave
  104605:	c3                   	ret

00104606 <trap_dump>:
  104606:	55                   	push   %ebp
  104607:	89 e5                	mov    %esp,%ebp
  104609:	53                   	push   %ebx
  10460a:	83 ec 14             	sub    $0x14,%esp
  10460d:	e8 03 be ff ff       	call   100415 <__x86.get_pc_thunk.bx>
  104612:	81 c3 e2 89 00 00    	add    $0x89e2,%ebx
  104618:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  10461c:	0f 84 4f 02 00 00    	je     104871 <trap_dump+0x26b>
  104622:	8b 45 08             	mov    0x8(%ebp),%eax
  104625:	89 45 f4             	mov    %eax,-0xc(%ebp)
  104628:	ff 75 f4             	push   -0xc(%ebp)
  10462b:	8d 83 a4 b5 ff ff    	lea    -0x4a5c(%ebx),%eax
  104631:	50                   	push   %eax
  104632:	6a 12                	push   $0x12
  104634:	8d 83 b5 b5 ff ff    	lea    -0x4a4b(%ebx),%eax
  10463a:	50                   	push   %eax
  10463b:	e8 a9 e4 ff ff       	call   102ae9 <debug_normal>
  104640:	83 c4 10             	add    $0x10,%esp
  104643:	8b 45 08             	mov    0x8(%ebp),%eax
  104646:	8b 10                	mov    (%eax),%edx
  104648:	8b 45 08             	mov    0x8(%ebp),%eax
  10464b:	83 ec 04             	sub    $0x4,%esp
  10464e:	52                   	push   %edx
  10464f:	50                   	push   %eax
  104650:	8d 83 c5 b5 ff ff    	lea    -0x4a3b(%ebx),%eax
  104656:	50                   	push   %eax
  104657:	e8 5c e4 ff ff       	call   102ab8 <debug_info>
  10465c:	83 c4 10             	add    $0x10,%esp
  10465f:	8b 45 08             	mov    0x8(%ebp),%eax
  104662:	8b 40 04             	mov    0x4(%eax),%eax
  104665:	8b 55 08             	mov    0x8(%ebp),%edx
  104668:	83 c2 04             	add    $0x4,%edx
  10466b:	83 ec 04             	sub    $0x4,%esp
  10466e:	50                   	push   %eax
  10466f:	52                   	push   %edx
  104670:	8d 83 db b5 ff ff    	lea    -0x4a25(%ebx),%eax
  104676:	50                   	push   %eax
  104677:	e8 3c e4 ff ff       	call   102ab8 <debug_info>
  10467c:	83 c4 10             	add    $0x10,%esp
  10467f:	8b 45 08             	mov    0x8(%ebp),%eax
  104682:	8b 40 08             	mov    0x8(%eax),%eax
  104685:	8b 55 08             	mov    0x8(%ebp),%edx
  104688:	83 c2 08             	add    $0x8,%edx
  10468b:	83 ec 04             	sub    $0x4,%esp
  10468e:	50                   	push   %eax
  10468f:	52                   	push   %edx
  104690:	8d 83 f1 b5 ff ff    	lea    -0x4a0f(%ebx),%eax
  104696:	50                   	push   %eax
  104697:	e8 1c e4 ff ff       	call   102ab8 <debug_info>
  10469c:	83 c4 10             	add    $0x10,%esp
  10469f:	8b 45 08             	mov    0x8(%ebp),%eax
  1046a2:	8b 40 0c             	mov    0xc(%eax),%eax
  1046a5:	8b 55 08             	mov    0x8(%ebp),%edx
  1046a8:	83 c2 0c             	add    $0xc,%edx
  1046ab:	83 ec 04             	sub    $0x4,%esp
  1046ae:	50                   	push   %eax
  1046af:	52                   	push   %edx
  1046b0:	8d 83 07 b6 ff ff    	lea    -0x49f9(%ebx),%eax
  1046b6:	50                   	push   %eax
  1046b7:	e8 fc e3 ff ff       	call   102ab8 <debug_info>
  1046bc:	83 c4 10             	add    $0x10,%esp
  1046bf:	8b 45 08             	mov    0x8(%ebp),%eax
  1046c2:	8b 40 10             	mov    0x10(%eax),%eax
  1046c5:	8b 55 08             	mov    0x8(%ebp),%edx
  1046c8:	83 c2 10             	add    $0x10,%edx
  1046cb:	83 ec 04             	sub    $0x4,%esp
  1046ce:	50                   	push   %eax
  1046cf:	52                   	push   %edx
  1046d0:	8d 83 1d b6 ff ff    	lea    -0x49e3(%ebx),%eax
  1046d6:	50                   	push   %eax
  1046d7:	e8 dc e3 ff ff       	call   102ab8 <debug_info>
  1046dc:	83 c4 10             	add    $0x10,%esp
  1046df:	8b 45 08             	mov    0x8(%ebp),%eax
  1046e2:	8b 40 14             	mov    0x14(%eax),%eax
  1046e5:	8b 55 08             	mov    0x8(%ebp),%edx
  1046e8:	83 c2 14             	add    $0x14,%edx
  1046eb:	83 ec 04             	sub    $0x4,%esp
  1046ee:	50                   	push   %eax
  1046ef:	52                   	push   %edx
  1046f0:	8d 83 33 b6 ff ff    	lea    -0x49cd(%ebx),%eax
  1046f6:	50                   	push   %eax
  1046f7:	e8 bc e3 ff ff       	call   102ab8 <debug_info>
  1046fc:	83 c4 10             	add    $0x10,%esp
  1046ff:	8b 45 08             	mov    0x8(%ebp),%eax
  104702:	8b 40 18             	mov    0x18(%eax),%eax
  104705:	8b 55 08             	mov    0x8(%ebp),%edx
  104708:	83 c2 18             	add    $0x18,%edx
  10470b:	83 ec 04             	sub    $0x4,%esp
  10470e:	50                   	push   %eax
  10470f:	52                   	push   %edx
  104710:	8d 83 49 b6 ff ff    	lea    -0x49b7(%ebx),%eax
  104716:	50                   	push   %eax
  104717:	e8 9c e3 ff ff       	call   102ab8 <debug_info>
  10471c:	83 c4 10             	add    $0x10,%esp
  10471f:	8b 45 08             	mov    0x8(%ebp),%eax
  104722:	8b 40 1c             	mov    0x1c(%eax),%eax
  104725:	8b 55 08             	mov    0x8(%ebp),%edx
  104728:	83 c2 1c             	add    $0x1c,%edx
  10472b:	83 ec 04             	sub    $0x4,%esp
  10472e:	50                   	push   %eax
  10472f:	52                   	push   %edx
  104730:	8d 83 5f b6 ff ff    	lea    -0x49a1(%ebx),%eax
  104736:	50                   	push   %eax
  104737:	e8 7c e3 ff ff       	call   102ab8 <debug_info>
  10473c:	83 c4 10             	add    $0x10,%esp
  10473f:	8b 45 08             	mov    0x8(%ebp),%eax
  104742:	0f b7 40 20          	movzwl 0x20(%eax),%eax
  104746:	0f b7 c0             	movzwl %ax,%eax
  104749:	8b 55 08             	mov    0x8(%ebp),%edx
  10474c:	83 c2 20             	add    $0x20,%edx
  10474f:	83 ec 04             	sub    $0x4,%esp
  104752:	50                   	push   %eax
  104753:	52                   	push   %edx
  104754:	8d 83 75 b6 ff ff    	lea    -0x498b(%ebx),%eax
  10475a:	50                   	push   %eax
  10475b:	e8 58 e3 ff ff       	call   102ab8 <debug_info>
  104760:	83 c4 10             	add    $0x10,%esp
  104763:	8b 45 08             	mov    0x8(%ebp),%eax
  104766:	0f b7 40 24          	movzwl 0x24(%eax),%eax
  10476a:	0f b7 c0             	movzwl %ax,%eax
  10476d:	8b 55 08             	mov    0x8(%ebp),%edx
  104770:	83 c2 24             	add    $0x24,%edx
  104773:	83 ec 04             	sub    $0x4,%esp
  104776:	50                   	push   %eax
  104777:	52                   	push   %edx
  104778:	8d 83 8b b6 ff ff    	lea    -0x4975(%ebx),%eax
  10477e:	50                   	push   %eax
  10477f:	e8 34 e3 ff ff       	call   102ab8 <debug_info>
  104784:	83 c4 10             	add    $0x10,%esp
  104787:	8b 45 08             	mov    0x8(%ebp),%eax
  10478a:	8b 40 28             	mov    0x28(%eax),%eax
  10478d:	8b 55 08             	mov    0x8(%ebp),%edx
  104790:	83 c2 28             	add    $0x28,%edx
  104793:	83 ec 04             	sub    $0x4,%esp
  104796:	50                   	push   %eax
  104797:	52                   	push   %edx
  104798:	8d 83 a1 b6 ff ff    	lea    -0x495f(%ebx),%eax
  10479e:	50                   	push   %eax
  10479f:	e8 14 e3 ff ff       	call   102ab8 <debug_info>
  1047a4:	83 c4 10             	add    $0x10,%esp
  1047a7:	8b 45 08             	mov    0x8(%ebp),%eax
  1047aa:	8b 40 2c             	mov    0x2c(%eax),%eax
  1047ad:	8b 55 08             	mov    0x8(%ebp),%edx
  1047b0:	83 c2 2c             	add    $0x2c,%edx
  1047b3:	83 ec 04             	sub    $0x4,%esp
  1047b6:	50                   	push   %eax
  1047b7:	52                   	push   %edx
  1047b8:	8d 83 b7 b6 ff ff    	lea    -0x4949(%ebx),%eax
  1047be:	50                   	push   %eax
  1047bf:	e8 f4 e2 ff ff       	call   102ab8 <debug_info>
  1047c4:	83 c4 10             	add    $0x10,%esp
  1047c7:	8b 45 08             	mov    0x8(%ebp),%eax
  1047ca:	8b 40 30             	mov    0x30(%eax),%eax
  1047cd:	8b 55 08             	mov    0x8(%ebp),%edx
  1047d0:	83 c2 30             	add    $0x30,%edx
  1047d3:	83 ec 04             	sub    $0x4,%esp
  1047d6:	50                   	push   %eax
  1047d7:	52                   	push   %edx
  1047d8:	8d 83 cd b6 ff ff    	lea    -0x4933(%ebx),%eax
  1047de:	50                   	push   %eax
  1047df:	e8 d4 e2 ff ff       	call   102ab8 <debug_info>
  1047e4:	83 c4 10             	add    $0x10,%esp
  1047e7:	8b 45 08             	mov    0x8(%ebp),%eax
  1047ea:	0f b7 40 34          	movzwl 0x34(%eax),%eax
  1047ee:	0f b7 c0             	movzwl %ax,%eax
  1047f1:	8b 55 08             	mov    0x8(%ebp),%edx
  1047f4:	83 c2 34             	add    $0x34,%edx
  1047f7:	83 ec 04             	sub    $0x4,%esp
  1047fa:	50                   	push   %eax
  1047fb:	52                   	push   %edx
  1047fc:	8d 83 e3 b6 ff ff    	lea    -0x491d(%ebx),%eax
  104802:	50                   	push   %eax
  104803:	e8 b0 e2 ff ff       	call   102ab8 <debug_info>
  104808:	83 c4 10             	add    $0x10,%esp
  10480b:	8b 45 08             	mov    0x8(%ebp),%eax
  10480e:	8b 40 38             	mov    0x38(%eax),%eax
  104811:	8b 55 08             	mov    0x8(%ebp),%edx
  104814:	83 c2 38             	add    $0x38,%edx
  104817:	83 ec 04             	sub    $0x4,%esp
  10481a:	50                   	push   %eax
  10481b:	52                   	push   %edx
  10481c:	8d 83 f9 b6 ff ff    	lea    -0x4907(%ebx),%eax
  104822:	50                   	push   %eax
  104823:	e8 90 e2 ff ff       	call   102ab8 <debug_info>
  104828:	83 c4 10             	add    $0x10,%esp
  10482b:	8b 45 08             	mov    0x8(%ebp),%eax
  10482e:	8b 40 3c             	mov    0x3c(%eax),%eax
  104831:	8b 55 08             	mov    0x8(%ebp),%edx
  104834:	83 c2 3c             	add    $0x3c,%edx
  104837:	83 ec 04             	sub    $0x4,%esp
  10483a:	50                   	push   %eax
  10483b:	52                   	push   %edx
  10483c:	8d 83 07 b6 ff ff    	lea    -0x49f9(%ebx),%eax
  104842:	50                   	push   %eax
  104843:	e8 70 e2 ff ff       	call   102ab8 <debug_info>
  104848:	83 c4 10             	add    $0x10,%esp
  10484b:	8b 45 08             	mov    0x8(%ebp),%eax
  10484e:	0f b7 40 40          	movzwl 0x40(%eax),%eax
  104852:	0f b7 c0             	movzwl %ax,%eax
  104855:	8b 55 08             	mov    0x8(%ebp),%edx
  104858:	83 c2 40             	add    $0x40,%edx
  10485b:	83 ec 04             	sub    $0x4,%esp
  10485e:	50                   	push   %eax
  10485f:	52                   	push   %edx
  104860:	8d 83 0f b7 ff ff    	lea    -0x48f1(%ebx),%eax
  104866:	50                   	push   %eax
  104867:	e8 4c e2 ff ff       	call   102ab8 <debug_info>
  10486c:	83 c4 10             	add    $0x10,%esp
  10486f:	eb 01                	jmp    104872 <trap_dump+0x26c>
  104871:	90                   	nop
  104872:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  104875:	c9                   	leave
  104876:	c3                   	ret

00104877 <pgflt_handler>:
  104877:	55                   	push   %ebp
  104878:	89 e5                	mov    %esp,%ebp
  10487a:	53                   	push   %ebx
  10487b:	83 ec 14             	sub    $0x14,%esp
  10487e:	e8 92 bb ff ff       	call   100415 <__x86.get_pc_thunk.bx>
  104883:	81 c3 71 87 00 00    	add    $0x8771,%ebx
  104889:	8b 45 08             	mov    0x8(%ebp),%eax
  10488c:	8b 40 2c             	mov    0x2c(%eax),%eax
  10488f:	89 45 f4             	mov    %eax,-0xc(%ebp)
  104892:	e8 21 f2 ff ff       	call   103ab8 <rcr2>
  104897:	89 45 f0             	mov    %eax,-0x10(%ebp)
  10489a:	8b 45 08             	mov    0x8(%ebp),%eax
  10489d:	8b 50 30             	mov    0x30(%eax),%edx
  1048a0:	c7 c0 2c 9c 15 00    	mov    $0x159c2c,%eax
  1048a6:	8b 00                	mov    (%eax),%eax
  1048a8:	83 ec 0c             	sub    $0xc,%esp
  1048ab:	52                   	push   %edx
  1048ac:	50                   	push   %eax
  1048ad:	ff 75 f4             	push   -0xc(%ebp)
  1048b0:	ff 75 f0             	push   -0x10(%ebp)
  1048b3:	8d 83 28 b7 ff ff    	lea    -0x48d8(%ebx),%eax
  1048b9:	50                   	push   %eax
  1048ba:	e8 fd e4 ff ff       	call   102dbc <dprintf>
  1048bf:	83 c4 20             	add    $0x20,%esp
  1048c2:	8b 45 08             	mov    0x8(%ebp),%eax
  1048c5:	8b 40 2c             	mov    0x2c(%eax),%eax
  1048c8:	83 e0 01             	and    $0x1,%eax
  1048cb:	85 c0                	test   %eax,%eax
  1048cd:	74 23                	je     1048f2 <pgflt_handler+0x7b>
  1048cf:	83 ec 0c             	sub    $0xc,%esp
  1048d2:	ff 75 f4             	push   -0xc(%ebp)
  1048d5:	ff 75 f0             	push   -0x10(%ebp)
  1048d8:	8d 83 6c b7 ff ff    	lea    -0x4894(%ebx),%eax
  1048de:	50                   	push   %eax
  1048df:	6a 32                	push   $0x32
  1048e1:	8d 83 b5 b5 ff ff    	lea    -0x4a4b(%ebx),%eax
  1048e7:	50                   	push   %eax
  1048e8:	e8 b7 e2 ff ff       	call   102ba4 <debug_panic>
  1048ed:	83 c4 20             	add    $0x20,%esp
  1048f0:	eb 2a                	jmp    10491c <pgflt_handler+0xa5>
  1048f2:	83 ec 08             	sub    $0x8,%esp
  1048f5:	68 00 10 00 00       	push   $0x1000
  1048fa:	ff 75 f0             	push   -0x10(%ebp)
  1048fd:	e8 53 ef ff ff       	call   103855 <rounddown>
  104902:	83 c4 10             	add    $0x10,%esp
  104905:	c7 c2 2c 9c 15 00    	mov    $0x159c2c,%edx
  10490b:	8b 12                	mov    (%edx),%edx
  10490d:	83 ec 04             	sub    $0x4,%esp
  104910:	6a 07                	push   $0x7
  104912:	50                   	push   %eax
  104913:	52                   	push   %edx
  104914:	e8 97 24 00 00       	call   106db0 <alloc_page>
  104919:	83 c4 10             	add    $0x10,%esp
  10491c:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  10491f:	c9                   	leave
  104920:	c3                   	ret

00104921 <checkpoint>:
  104921:	55                   	push   %ebp
  104922:	89 e5                	mov    %esp,%ebp
  104924:	53                   	push   %ebx
  104925:	83 ec 04             	sub    $0x4,%esp
  104928:	e8 e0 ba ff ff       	call   10040d <__x86.get_pc_thunk.ax>
  10492d:	05 c7 86 00 00       	add    $0x86c7,%eax
  104932:	83 ec 0c             	sub    $0xc,%esp
  104935:	8d 90 9d b7 ff ff    	lea    -0x4863(%eax),%edx
  10493b:	52                   	push   %edx
  10493c:	89 c3                	mov    %eax,%ebx
  10493e:	e8 75 e1 ff ff       	call   102ab8 <debug_info>
  104943:	83 c4 10             	add    $0x10,%esp
  104946:	90                   	nop
  104947:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  10494a:	c9                   	leave
  10494b:	c3                   	ret

0010494c <trap>:
  10494c:	55                   	push   %ebp
  10494d:	89 e5                	mov    %esp,%ebp
  10494f:	53                   	push   %ebx
  104950:	83 ec 04             	sub    $0x4,%esp
  104953:	e8 bd ba ff ff       	call   100415 <__x86.get_pc_thunk.bx>
  104958:	81 c3 9c 86 00 00    	add    $0x869c,%ebx
  10495e:	8b 45 08             	mov    0x8(%ebp),%eax
  104961:	8b 40 28             	mov    0x28(%eax),%eax
  104964:	83 f8 0e             	cmp    $0xe,%eax
  104967:	75 1d                	jne    104986 <trap+0x3a>
  104969:	83 ec 0c             	sub    $0xc,%esp
  10496c:	6a 00                	push   $0x0
  10496e:	e8 ad 14 00 00       	call   105e20 <set_pdir_base>
  104973:	83 c4 10             	add    $0x10,%esp
  104976:	83 ec 0c             	sub    $0xc,%esp
  104979:	ff 75 08             	push   0x8(%ebp)
  10497c:	e8 f6 fe ff ff       	call   104877 <pgflt_handler>
  104981:	83 c4 10             	add    $0x10,%esp
  104984:	eb 48                	jmp    1049ce <trap+0x82>
  104986:	8b 45 08             	mov    0x8(%ebp),%eax
  104989:	8b 40 28             	mov    0x28(%eax),%eax
  10498c:	50                   	push   %eax
  10498d:	8d 83 aa b7 ff ff    	lea    -0x4856(%ebx),%eax
  104993:	50                   	push   %eax
  104994:	6a 45                	push   $0x45
  104996:	8d 83 b5 b5 ff ff    	lea    -0x4a4b(%ebx),%eax
  10499c:	50                   	push   %eax
  10499d:	e8 47 e1 ff ff       	call   102ae9 <debug_normal>
  1049a2:	83 c4 10             	add    $0x10,%esp
  1049a5:	83 ec 0c             	sub    $0xc,%esp
  1049a8:	ff 75 08             	push   0x8(%ebp)
  1049ab:	e8 56 fc ff ff       	call   104606 <trap_dump>
  1049b0:	83 c4 10             	add    $0x10,%esp
  1049b3:	83 ec 04             	sub    $0x4,%esp
  1049b6:	8d 83 be b7 ff ff    	lea    -0x4842(%ebx),%eax
  1049bc:	50                   	push   %eax
  1049bd:	6a 47                	push   $0x47
  1049bf:	8d 83 b5 b5 ff ff    	lea    -0x4a4b(%ebx),%eax
  1049c5:	50                   	push   %eax
  1049c6:	e8 d9 e1 ff ff       	call   102ba4 <debug_panic>
  1049cb:	83 c4 10             	add    $0x10,%esp
  1049ce:	c7 c0 2c 9c 15 00    	mov    $0x159c2c,%eax
  1049d4:	8b 00                	mov    (%eax),%eax
  1049d6:	83 ec 0c             	sub    $0xc,%esp
  1049d9:	50                   	push   %eax
  1049da:	e8 41 14 00 00       	call   105e20 <set_pdir_base>
  1049df:	83 c4 10             	add    $0x10,%esp
  1049e2:	83 ec 0c             	sub    $0xc,%esp
  1049e5:	ff 75 08             	push   0x8(%ebp)
  1049e8:	e8 03 de ff ff       	call   1027f0 <trap_return>
  1049ed:	83 c4 10             	add    $0x10,%esp
  1049f0:	90                   	nop
  1049f1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1049f4:	c9                   	leave
  1049f5:	c3                   	ret
  1049f6:	66 90                	xchg   %ax,%ax
  1049f8:	66 90                	xchg   %ax,%ax
  1049fa:	66 90                	xchg   %ax,%ax
  1049fc:	66 90                	xchg   %ax,%ax
  1049fe:	66 90                	xchg   %ax,%ax

00104a00 <kern_init>:
    monitor(NULL);
#endif
}

void kern_init(uintptr_t mbi_addr)
{
  104a00:	56                   	push   %esi
  104a01:	53                   	push   %ebx
  104a02:	e8 0e ba ff ff       	call   100415 <__x86.get_pc_thunk.bx>
  104a07:	81 c3 ed 85 00 00    	add    $0x85ed,%ebx
  104a0d:	83 ec 10             	sub    $0x10,%esp
#ifdef TEST
    pdir_init_kern(mbi_addr);
  104a10:	ff 74 24 1c          	push   0x1c(%esp)
  104a14:	e8 07 20 00 00       	call   106a20 <pdir_init_kern>
#else
    paging_init(mbi_addr);
#endif

    KERN_DEBUG("Kernel initialized.\n");
  104a19:	8d b3 da b7 ff ff    	lea    -0x4826(%ebx),%esi
  104a1f:	83 c4 0c             	add    $0xc,%esp
  104a22:	8d 83 c5 b7 ff ff    	lea    -0x483b(%ebx),%eax
  104a28:	50                   	push   %eax
  104a29:	6a 5a                	push   $0x5a
  104a2b:	56                   	push   %esi
  104a2c:	e8 b8 e0 ff ff       	call   102ae9 <debug_normal>
    KERN_DEBUG("In kernel main.\n\n");
  104a31:	83 c4 0c             	add    $0xc,%esp
  104a34:	8d 83 eb b7 ff ff    	lea    -0x4815(%ebx),%eax
  104a3a:	50                   	push   %eax
  104a3b:	6a 18                	push   $0x18
  104a3d:	56                   	push   %esi
  104a3e:	e8 a6 e0 ff ff       	call   102ae9 <debug_normal>
    dprintf("Testing the MATIntro layer...\n");
  104a43:	8d 83 1c bb ff ff    	lea    -0x44e4(%ebx),%eax
  104a49:	89 04 24             	mov    %eax,(%esp)
  104a4c:	e8 6b e3 ff ff       	call   102dbc <dprintf>
    if (test_MATIntro() == 0)
  104a51:	e8 0a 0a 00 00       	call   105460 <test_MATIntro>
  104a56:	83 c4 10             	add    $0x10,%esp
  104a59:	85 c0                	test   %eax,%eax
  104a5b:	0f 85 7f 01 00 00    	jne    104be0 <kern_init+0x1e0>
        dprintf("All tests passed.\n");
  104a61:	83 ec 0c             	sub    $0xc,%esp
  104a64:	8d 83 fd b7 ff ff    	lea    -0x4803(%ebx),%eax
  104a6a:	50                   	push   %eax
  104a6b:	e8 4c e3 ff ff       	call   102dbc <dprintf>
  104a70:	83 c4 10             	add    $0x10,%esp
    dprintf("\n");
  104a73:	83 ec 0c             	sub    $0xc,%esp
  104a76:	8d b3 fb b7 ff ff    	lea    -0x4805(%ebx),%esi
  104a7c:	56                   	push   %esi
  104a7d:	e8 3a e3 ff ff       	call   102dbc <dprintf>
    dprintf("Testing the MContainer layer...\n");
  104a82:	8d 83 3c bb ff ff    	lea    -0x44c4(%ebx),%eax
  104a88:	89 04 24             	mov    %eax,(%esp)
  104a8b:	e8 2c e3 ff ff       	call   102dbc <dprintf>
    if (test_MContainer() == 0)
  104a90:	e8 6b 13 00 00       	call   105e00 <test_MContainer>
  104a95:	83 c4 10             	add    $0x10,%esp
  104a98:	84 c0                	test   %al,%al
  104a9a:	0f 85 f0 01 00 00    	jne    104c90 <kern_init+0x290>
        dprintf("All tests passed.\n");
  104aa0:	83 ec 0c             	sub    $0xc,%esp
  104aa3:	8d 83 fd b7 ff ff    	lea    -0x4803(%ebx),%eax
  104aa9:	50                   	push   %eax
  104aaa:	e8 0d e3 ff ff       	call   102dbc <dprintf>
  104aaf:	83 c4 10             	add    $0x10,%esp
    dprintf("\n");
  104ab2:	83 ec 0c             	sub    $0xc,%esp
  104ab5:	56                   	push   %esi
  104ab6:	e8 01 e3 ff ff       	call   102dbc <dprintf>
    dprintf("Testing the MPTIntro layer...\n");
  104abb:	8d 83 60 bb ff ff    	lea    -0x44a0(%ebx),%eax
  104ac1:	89 04 24             	mov    %eax,(%esp)
  104ac4:	e8 f3 e2 ff ff       	call   102dbc <dprintf>
    if (test_MPTIntro() == 0)
  104ac9:	e8 a2 17 00 00       	call   106270 <test_MPTIntro>
  104ace:	83 c4 10             	add    $0x10,%esp
  104ad1:	84 c0                	test   %al,%al
  104ad3:	0f 85 97 01 00 00    	jne    104c70 <kern_init+0x270>
        dprintf("All tests passed.\n");
  104ad9:	83 ec 0c             	sub    $0xc,%esp
  104adc:	8d 83 fd b7 ff ff    	lea    -0x4803(%ebx),%eax
  104ae2:	50                   	push   %eax
  104ae3:	e8 d4 e2 ff ff       	call   102dbc <dprintf>
  104ae8:	83 c4 10             	add    $0x10,%esp
    dprintf("\n");
  104aeb:	83 ec 0c             	sub    $0xc,%esp
  104aee:	56                   	push   %esi
  104aef:	e8 c8 e2 ff ff       	call   102dbc <dprintf>
    dprintf("Testing the MPTOp layer...\n");
  104af4:	8d 83 1e b8 ff ff    	lea    -0x47e2(%ebx),%eax
  104afa:	89 04 24             	mov    %eax,(%esp)
  104afd:	e8 ba e2 ff ff       	call   102dbc <dprintf>
    if (test_MPTOp() == 0)
  104b02:	e8 b9 1b 00 00       	call   1066c0 <test_MPTOp>
  104b07:	83 c4 10             	add    $0x10,%esp
  104b0a:	84 c0                	test   %al,%al
  104b0c:	0f 85 3e 01 00 00    	jne    104c50 <kern_init+0x250>
        dprintf("All tests passed.\n");
  104b12:	83 ec 0c             	sub    $0xc,%esp
  104b15:	8d 83 fd b7 ff ff    	lea    -0x4803(%ebx),%eax
  104b1b:	50                   	push   %eax
  104b1c:	e8 9b e2 ff ff       	call   102dbc <dprintf>
  104b21:	83 c4 10             	add    $0x10,%esp
    dprintf("\n");
  104b24:	83 ec 0c             	sub    $0xc,%esp
  104b27:	56                   	push   %esi
  104b28:	e8 8f e2 ff ff       	call   102dbc <dprintf>
    dprintf("Testing the MPTComm layer...\n");
  104b2d:	8d 83 3a b8 ff ff    	lea    -0x47c6(%ebx),%eax
  104b33:	89 04 24             	mov    %eax,(%esp)
  104b36:	e8 81 e2 ff ff       	call   102dbc <dprintf>
    if (test_MPTComm() == 0)
  104b3b:	e8 c0 1e 00 00       	call   106a00 <test_MPTComm>
  104b40:	83 c4 10             	add    $0x10,%esp
  104b43:	84 c0                	test   %al,%al
  104b45:	0f 85 e5 00 00 00    	jne    104c30 <kern_init+0x230>
        dprintf("All tests passed.\n");
  104b4b:	83 ec 0c             	sub    $0xc,%esp
  104b4e:	8d 83 fd b7 ff ff    	lea    -0x4803(%ebx),%eax
  104b54:	50                   	push   %eax
  104b55:	e8 62 e2 ff ff       	call   102dbc <dprintf>
  104b5a:	83 c4 10             	add    $0x10,%esp
    dprintf("\n");
  104b5d:	83 ec 0c             	sub    $0xc,%esp
  104b60:	56                   	push   %esi
  104b61:	e8 56 e2 ff ff       	call   102dbc <dprintf>
    dprintf("Testing the MPTKern layer...\n");
  104b66:	8d 83 58 b8 ff ff    	lea    -0x47a8(%ebx),%eax
  104b6c:	89 04 24             	mov    %eax,(%esp)
  104b6f:	e8 48 e2 ff ff       	call   102dbc <dprintf>
    if (test_MPTKern() == 0)
  104b74:	e8 e7 21 00 00       	call   106d60 <test_MPTKern>
  104b79:	83 c4 10             	add    $0x10,%esp
  104b7c:	84 c0                	test   %al,%al
  104b7e:	0f 85 94 00 00 00    	jne    104c18 <kern_init+0x218>
        dprintf("All tests passed.\n");
  104b84:	83 ec 0c             	sub    $0xc,%esp
  104b87:	8d 83 fd b7 ff ff    	lea    -0x4803(%ebx),%eax
  104b8d:	50                   	push   %eax
  104b8e:	e8 29 e2 ff ff       	call   102dbc <dprintf>
  104b93:	83 c4 10             	add    $0x10,%esp
    dprintf("\n");
  104b96:	83 ec 0c             	sub    $0xc,%esp
  104b99:	56                   	push   %esi
  104b9a:	e8 1d e2 ff ff       	call   102dbc <dprintf>
    dprintf("Testing the MPTNew layer...\n");
  104b9f:	8d 83 76 b8 ff ff    	lea    -0x478a(%ebx),%eax
  104ba5:	89 04 24             	mov    %eax,(%esp)
  104ba8:	e8 0f e2 ff ff       	call   102dbc <dprintf>
    if (test_MPTNew() == 0)
  104bad:	e8 de 23 00 00       	call   106f90 <test_MPTNew>
  104bb2:	83 c4 10             	add    $0x10,%esp
  104bb5:	84 c0                	test   %al,%al
  104bb7:	75 47                	jne    104c00 <kern_init+0x200>
        dprintf("All tests passed.\n");
  104bb9:	83 ec 0c             	sub    $0xc,%esp
  104bbc:	8d 83 fd b7 ff ff    	lea    -0x4803(%ebx),%eax
  104bc2:	50                   	push   %eax
  104bc3:	e8 f4 e1 ff ff       	call   102dbc <dprintf>
  104bc8:	83 c4 10             	add    $0x10,%esp
    dprintf("\nTest complete. Please Use Ctrl-a x to exit qemu.");
  104bcb:	83 ec 0c             	sub    $0xc,%esp
  104bce:	8d 83 80 bb ff ff    	lea    -0x4480(%ebx),%eax
  104bd4:	50                   	push   %eax
  104bd5:	e8 e2 e1 ff ff       	call   102dbc <dprintf>

    kern_main();
  104bda:	83 c4 14             	add    $0x14,%esp
  104bdd:	5b                   	pop    %ebx
  104bde:	5e                   	pop    %esi
  104bdf:	c3                   	ret
        dprintf("Test failed.\n");
  104be0:	83 ec 0c             	sub    $0xc,%esp
  104be3:	8d 83 10 b8 ff ff    	lea    -0x47f0(%ebx),%eax
  104be9:	50                   	push   %eax
  104bea:	e8 cd e1 ff ff       	call   102dbc <dprintf>
  104bef:	83 c4 10             	add    $0x10,%esp
  104bf2:	e9 7c fe ff ff       	jmp    104a73 <kern_init+0x73>
  104bf7:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  104bfe:	00 
  104bff:	90                   	nop
        dprintf("Test failed.\n");
  104c00:	83 ec 0c             	sub    $0xc,%esp
  104c03:	8d 83 10 b8 ff ff    	lea    -0x47f0(%ebx),%eax
  104c09:	50                   	push   %eax
  104c0a:	e8 ad e1 ff ff       	call   102dbc <dprintf>
  104c0f:	83 c4 10             	add    $0x10,%esp
  104c12:	eb b7                	jmp    104bcb <kern_init+0x1cb>
  104c14:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        dprintf("Test failed.\n");
  104c18:	83 ec 0c             	sub    $0xc,%esp
  104c1b:	8d 83 10 b8 ff ff    	lea    -0x47f0(%ebx),%eax
  104c21:	50                   	push   %eax
  104c22:	e8 95 e1 ff ff       	call   102dbc <dprintf>
  104c27:	83 c4 10             	add    $0x10,%esp
  104c2a:	e9 67 ff ff ff       	jmp    104b96 <kern_init+0x196>
  104c2f:	90                   	nop
        dprintf("Test failed.\n");
  104c30:	83 ec 0c             	sub    $0xc,%esp
  104c33:	8d 83 10 b8 ff ff    	lea    -0x47f0(%ebx),%eax
  104c39:	50                   	push   %eax
  104c3a:	e8 7d e1 ff ff       	call   102dbc <dprintf>
  104c3f:	83 c4 10             	add    $0x10,%esp
  104c42:	e9 16 ff ff ff       	jmp    104b5d <kern_init+0x15d>
  104c47:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  104c4e:	00 
  104c4f:	90                   	nop
        dprintf("Test failed.\n");
  104c50:	83 ec 0c             	sub    $0xc,%esp
  104c53:	8d 83 10 b8 ff ff    	lea    -0x47f0(%ebx),%eax
  104c59:	50                   	push   %eax
  104c5a:	e8 5d e1 ff ff       	call   102dbc <dprintf>
  104c5f:	83 c4 10             	add    $0x10,%esp
  104c62:	e9 bd fe ff ff       	jmp    104b24 <kern_init+0x124>
  104c67:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  104c6e:	00 
  104c6f:	90                   	nop
        dprintf("Test failed.\n");
  104c70:	83 ec 0c             	sub    $0xc,%esp
  104c73:	8d 83 10 b8 ff ff    	lea    -0x47f0(%ebx),%eax
  104c79:	50                   	push   %eax
  104c7a:	e8 3d e1 ff ff       	call   102dbc <dprintf>
  104c7f:	83 c4 10             	add    $0x10,%esp
  104c82:	e9 64 fe ff ff       	jmp    104aeb <kern_init+0xeb>
  104c87:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  104c8e:	00 
  104c8f:	90                   	nop
        dprintf("Test failed.\n");
  104c90:	83 ec 0c             	sub    $0xc,%esp
  104c93:	8d 83 10 b8 ff ff    	lea    -0x47f0(%ebx),%eax
  104c99:	50                   	push   %eax
  104c9a:	e8 1d e1 ff ff       	call   102dbc <dprintf>
  104c9f:	83 c4 10             	add    $0x10,%esp
  104ca2:	e9 0b fe ff ff       	jmp    104ab2 <kern_init+0xb2>
  104ca7:	90                   	nop
  104ca8:	02 b0 ad 1b 03 00    	add    0x31bad(%eax),%dh
  104cae:	00 00                	add    %al,(%eax)
  104cb0:	fb                   	sti
  104cb1:	4f                   	dec    %edi
  104cb2:	52                   	push   %edx
  104cb3:	e4                   	.byte 0xe4

00104cb4 <start>:
  104cb4:	fa                   	cli
  104cb5:	3d 02 b0 ad 2b       	cmp    $0x2badb002,%eax
  104cba:	75 27                	jne    104ce3 <spin>
  104cbc:	89 1d e4 4c 10 00    	mov    %ebx,0x104ce4
  104cc2:	66 c7 05 72 04 00 00 	movw   $0x1234,0x472
  104cc9:	34 12 
  104ccb:	6a 02                	push   $0x2
  104ccd:	9d                   	popf
  104cce:	bd 00 00 00 00       	mov    $0x0,%ebp
  104cd3:	bc 00 60 11 00       	mov    $0x116000,%esp
  104cd8:	ff 35 e4 4c 10 00    	push   0x104ce4
  104cde:	e8 1d fd ff ff       	call   104a00 <kern_init>

00104ce3 <spin>:
  104ce3:	f4                   	hlt

00104ce4 <multiboot_ptr>:
  104ce4:	00 00                	add    %al,(%eax)
  104ce6:	00 00                	add    %al,(%eax)
  104ce8:	66 90                	xchg   %ax,%ax
  104cea:	66 90                	xchg   %ax,%ax
  104cec:	66 90                	xchg   %ax,%ax
  104cee:	66 90                	xchg   %ax,%ax

00104cf0 <pmm_init_freelists>:
static int free_list[MAX_ORDER];


// Initialize the freelists to empty
void pmm_init_freelists(void) {
    for (int i = 0; i < MAX_ORDER; i++) {
  104cf0:	e8 18 b7 ff ff       	call   10040d <__x86.get_pc_thunk.ax>
  104cf5:	05 ff 82 00 00       	add    $0x82ff,%eax
  104cfa:	8d 80 4c cc 44 01    	lea    0x144cc4c(%eax),%eax
  104d00:	8d 50 28             	lea    0x28(%eax),%edx
  104d03:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        free_list[i] = -1;
  104d08:	c7 00 ff ff ff ff    	movl   $0xffffffff,(%eax)
    for (int i = 0; i < MAX_ORDER; i++) {
  104d0e:	83 c0 08             	add    $0x8,%eax
        free_list[i] = -1;
  104d11:	c7 40 fc ff ff ff ff 	movl   $0xffffffff,-0x4(%eax)
    for (int i = 0; i < MAX_ORDER; i++) {
  104d18:	39 d0                	cmp    %edx,%eax
  104d1a:	75 ec                	jne    104d08 <pmm_init_freelists+0x18>
    }
}
  104d1c:	c3                   	ret
  104d1d:	8d 76 00             	lea    0x0(%esi),%esi

00104d20 <get_nps>:

// Getter function for NUM_PAGES.
unsigned int get_nps(void) {
    return NUM_PAGES;
  104d20:	e8 e8 b6 ff ff       	call   10040d <__x86.get_pc_thunk.ax>
  104d25:	05 cf 82 00 00       	add    $0x82cf,%eax
  104d2a:	8b 80 74 cc 44 01    	mov    0x144cc74(%eax),%eax
}
  104d30:	c3                   	ret
  104d31:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  104d38:	00 
  104d39:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00104d40 <set_nps>:

// Setter function for NUM_PAGES.
void set_nps(unsigned int nps) {
    NUM_PAGES = nps;
  104d40:	e8 c8 b6 ff ff       	call   10040d <__x86.get_pc_thunk.ax>
  104d45:	05 af 82 00 00       	add    $0x82af,%eax
  104d4a:	8b 54 24 04          	mov    0x4(%esp),%edx
  104d4e:	89 90 74 cc 44 01    	mov    %edx,0x144cc74(%eax)
}
  104d54:	c3                   	ret
  104d55:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  104d5c:	00 
  104d5d:	8d 76 00             	lea    0x0(%esi),%esi

00104d60 <at_is_norm>:

// Getter function for page permission.
unsigned int at_is_norm(unsigned int page_index) {
    if (page_index < NUM_PAGES && AT[page_index].perm > 1) {
  104d60:	e8 f8 01 00 00       	call   104f5d <__x86.get_pc_thunk.cx>
  104d65:	81 c1 8f 82 00 00    	add    $0x828f,%ecx
unsigned int at_is_norm(unsigned int page_index) {
  104d6b:	8b 44 24 04          	mov    0x4(%esp),%eax
        return 1;
    }
    return 0;
  104d6f:	31 d2                	xor    %edx,%edx
    if (page_index < NUM_PAGES && AT[page_index].perm > 1) {
  104d71:	3b 81 74 cc 44 01    	cmp    0x144cc74(%ecx),%eax
  104d77:	73 10                	jae    104d89 <at_is_norm+0x29>
  104d79:	8d 04 80             	lea    (%eax,%eax,4),%eax
  104d7c:	31 d2                	xor    %edx,%edx
  104d7e:	83 bc 81 4c cc 04 00 	cmpl   $0x1,0x4cc4c(%ecx,%eax,4)
  104d85:	01 
  104d86:	0f 97 c2             	seta   %dl
}
  104d89:	89 d0                	mov    %edx,%eax
  104d8b:	c3                   	ret
  104d8c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00104d90 <at_set_perm>:

// Setter function for page permission.
void at_set_perm(unsigned int page_index, unsigned int perm) {
    if (page_index < NUM_PAGES) {
  104d90:	e8 78 b6 ff ff       	call   10040d <__x86.get_pc_thunk.ax>
  104d95:	05 5f 82 00 00       	add    $0x825f,%eax
void at_set_perm(unsigned int page_index, unsigned int perm) {
  104d9a:	8b 54 24 04          	mov    0x4(%esp),%edx
    if (page_index < NUM_PAGES) {
  104d9e:	3b 90 74 cc 44 01    	cmp    0x144cc74(%eax),%edx
  104da4:	73 1c                	jae    104dc2 <at_set_perm+0x32>
        AT[page_index].perm = perm;
  104da6:	8b 4c 24 08          	mov    0x8(%esp),%ecx
  104daa:	8d 14 92             	lea    (%edx,%edx,4),%edx
  104dad:	c1 e2 02             	shl    $0x2,%edx
  104db0:	89 8c 10 4c cc 04 00 	mov    %ecx,0x4cc4c(%eax,%edx,1)
        AT[page_index].allocated = 0;
  104db7:	c7 84 10 50 cc 04 00 	movl   $0x0,0x4cc50(%eax,%edx,1)
  104dbe:	00 00 00 00 
    }
}
  104dc2:	c3                   	ret
  104dc3:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  104dca:	00 
  104dcb:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

00104dd0 <at_is_allocated>:

// Getter function for page allocation status.
unsigned int at_is_allocated(unsigned int page_index) {
    if (page_index < NUM_PAGES && AT[page_index].allocated > 0) {
  104dd0:	e8 88 01 00 00       	call   104f5d <__x86.get_pc_thunk.cx>
  104dd5:	81 c1 1f 82 00 00    	add    $0x821f,%ecx
unsigned int at_is_allocated(unsigned int page_index) {
  104ddb:	8b 44 24 04          	mov    0x4(%esp),%eax
        return 1;
    }
    return 0;
  104ddf:	31 d2                	xor    %edx,%edx
    if (page_index < NUM_PAGES && AT[page_index].allocated > 0) {
  104de1:	3b 81 74 cc 44 01    	cmp    0x144cc74(%ecx),%eax
  104de7:	73 11                	jae    104dfa <at_is_allocated+0x2a>
  104de9:	8d 04 80             	lea    (%eax,%eax,4),%eax
  104dec:	31 d2                	xor    %edx,%edx
  104dee:	8b 84 81 50 cc 04 00 	mov    0x4cc50(%ecx,%eax,4),%eax
  104df5:	85 c0                	test   %eax,%eax
  104df7:	0f 95 c2             	setne  %dl
}
  104dfa:	89 d0                	mov    %edx,%eax
  104dfc:	c3                   	ret
  104dfd:	8d 76 00             	lea    0x0(%esi),%esi

00104e00 <at_set_allocated>:

// Setter function for page allocation status.
void at_set_allocated(unsigned int page_index, unsigned int allocated) {
    if (page_index < NUM_PAGES) {
  104e00:	e8 0c b6 ff ff       	call   100411 <__x86.get_pc_thunk.dx>
  104e05:	81 c2 ef 81 00 00    	add    $0x81ef,%edx
void at_set_allocated(unsigned int page_index, unsigned int allocated) {
  104e0b:	8b 44 24 04          	mov    0x4(%esp),%eax
    if (page_index < NUM_PAGES) {
  104e0f:	3b 82 74 cc 44 01    	cmp    0x144cc74(%edx),%eax
  104e15:	73 0e                	jae    104e25 <at_set_allocated+0x25>
        AT[page_index].allocated = allocated;
  104e17:	8b 4c 24 08          	mov    0x8(%esp),%ecx
  104e1b:	8d 04 80             	lea    (%eax,%eax,4),%eax
  104e1e:	89 8c 82 50 cc 04 00 	mov    %ecx,0x4cc50(%edx,%eax,4)
    }
}
  104e25:	c3                   	ret
  104e26:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  104e2d:	00 
  104e2e:	66 90                	xchg   %ax,%ax

00104e30 <get_free_list_head>:

int get_free_list_head(unsigned int order) {
    if (order >= MAX_ORDER) return -1;
  104e30:	e8 dc b5 ff ff       	call   100411 <__x86.get_pc_thunk.dx>
  104e35:	81 c2 bf 81 00 00    	add    $0x81bf,%edx
int get_free_list_head(unsigned int order) {
  104e3b:	8b 44 24 04          	mov    0x4(%esp),%eax
    if (order >= MAX_ORDER) return -1;
  104e3f:	83 f8 09             	cmp    $0x9,%eax
  104e42:	77 0c                	ja     104e50 <get_free_list_head+0x20>
    return free_list[order];
  104e44:	8b 84 82 4c cc 44 01 	mov    0x144cc4c(%edx,%eax,4),%eax
  104e4b:	c3                   	ret
  104e4c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if (order >= MAX_ORDER) return -1;
  104e50:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
  104e55:	c3                   	ret
  104e56:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  104e5d:	00 
  104e5e:	66 90                	xchg   %ax,%ax

00104e60 <at_list_add>:

// Add a page to the free list at the specified order.
void at_list_add(unsigned int order, unsigned int page_index) {
    if (order >= MAX_ORDER || page_index >= NUM_PAGES) return;
  104e60:	e8 f8 00 00 00       	call   104f5d <__x86.get_pc_thunk.cx>
  104e65:	81 c1 8f 81 00 00    	add    $0x818f,%ecx
void at_list_add(unsigned int order, unsigned int page_index) {
  104e6b:	55                   	push   %ebp
  104e6c:	57                   	push   %edi
  104e6d:	56                   	push   %esi
  104e6e:	53                   	push   %ebx
  104e6f:	8b 44 24 14          	mov    0x14(%esp),%eax
  104e73:	8b 54 24 18          	mov    0x18(%esp),%edx
    if (order >= MAX_ORDER || page_index >= NUM_PAGES) return;
  104e77:	83 f8 09             	cmp    $0x9,%eax
  104e7a:	77 44                	ja     104ec0 <at_list_add+0x60>
  104e7c:	3b 91 74 cc 44 01    	cmp    0x144cc74(%ecx),%edx
  104e82:	73 3c                	jae    104ec0 <at_list_add+0x60>

    int current_head = free_list[order];
  104e84:	8d b9 4c cc 44 01    	lea    0x144cc4c(%ecx),%edi
    
    AT[page_index].order = order;
  104e8a:	8d 1c 92             	lea    (%edx,%edx,4),%ebx
  104e8d:	c1 e3 02             	shl    $0x2,%ebx
    int current_head = free_list[order];
  104e90:	8b 34 87             	mov    (%edi,%eax,4),%esi
    AT[page_index].order = order;
  104e93:	8d ac 19 4c cc 04 00 	lea    0x4cc4c(%ecx,%ebx,1),%ebp
    AT[page_index].next = current_head;
    AT[page_index].prev = -1;
  104e9a:	c7 84 19 5c cc 04 00 	movl   $0xffffffff,0x4cc5c(%ecx,%ebx,1)
  104ea1:	ff ff ff ff 
  104ea5:	8d 89 4c cc 04 00    	lea    0x4cc4c(%ecx),%ecx
    AT[page_index].order = order;
  104eab:	89 45 08             	mov    %eax,0x8(%ebp)
    AT[page_index].next = current_head;
  104eae:	89 75 0c             	mov    %esi,0xc(%ebp)

    if (current_head != -1) {
  104eb1:	83 fe ff             	cmp    $0xffffffff,%esi
  104eb4:	74 07                	je     104ebd <at_list_add+0x5d>
        AT[current_head].prev = (int)page_index;
  104eb6:	8d 1c b6             	lea    (%esi,%esi,4),%ebx
  104eb9:	89 54 99 10          	mov    %edx,0x10(%ecx,%ebx,4)
    }
    free_list[order] = (int)page_index;
  104ebd:	89 14 87             	mov    %edx,(%edi,%eax,4)
}
  104ec0:	5b                   	pop    %ebx
  104ec1:	5e                   	pop    %esi
  104ec2:	5f                   	pop    %edi
  104ec3:	5d                   	pop    %ebp
  104ec4:	c3                   	ret
  104ec5:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  104ecc:	00 
  104ecd:	8d 76 00             	lea    0x0(%esi),%esi

00104ed0 <at_list_remove>:

// Removes a page from the free list at the specified order.
void at_list_remove(unsigned int order, unsigned int page_index) {
    if (order >= MAX_ORDER || page_index >= NUM_PAGES) return;
  104ed0:	e8 38 b5 ff ff       	call   10040d <__x86.get_pc_thunk.ax>
  104ed5:	05 1f 81 00 00       	add    $0x811f,%eax
void at_list_remove(unsigned int order, unsigned int page_index) {
  104eda:	55                   	push   %ebp
  104edb:	57                   	push   %edi
  104edc:	56                   	push   %esi
  104edd:	53                   	push   %ebx
    if (order >= MAX_ORDER || page_index >= NUM_PAGES) return;
  104ede:	83 7c 24 14 09       	cmpl   $0x9,0x14(%esp)
  104ee3:	77 66                	ja     104f4b <at_list_remove+0x7b>
  104ee5:	8b b0 74 cc 44 01    	mov    0x144cc74(%eax),%esi
  104eeb:	39 74 24 18          	cmp    %esi,0x18(%esp)
  104eef:	73 5a                	jae    104f4b <at_list_remove+0x7b>

    int n = AT[page_index].next;
  104ef1:	8b 7c 24 18          	mov    0x18(%esp),%edi
  104ef5:	8d 14 bd 00 00 00 00 	lea    0x0(,%edi,4),%edx
  104efc:	89 d3                	mov    %edx,%ebx
  104efe:	01 fb                	add    %edi,%ebx
  104f00:	8d 3d 4c cc 04 00    	lea    0x4cc4c,%edi
  104f06:	c1 e3 02             	shl    $0x2,%ebx
    int p = AT[page_index].prev;
  104f09:	8d 34 07             	lea    (%edi,%eax,1),%esi
    int n = AT[page_index].next;
  104f0c:	8b 8c 18 58 cc 04 00 	mov    0x4cc58(%eax,%ebx,1),%ecx
    int p = AT[page_index].prev;
  104f13:	8b 5c 33 10          	mov    0x10(%ebx,%esi,1),%ebx

    if (p != -1) {
  104f17:	83 fb ff             	cmp    $0xffffffff,%ebx
  104f1a:	74 34                	je     104f50 <at_list_remove+0x80>
        AT[p].next = n;
  104f1c:	8d 2c 9b             	lea    (%ebx,%ebx,4),%ebp
  104f1f:	8d 2c a8             	lea    (%eax,%ebp,4),%ebp
  104f22:	89 4c 2f 0c          	mov    %ecx,0xc(%edi,%ebp,1)
    } else {
        free_list[order] = n;
    }

    if (n != -1) {
  104f26:	83 f9 ff             	cmp    $0xffffffff,%ecx
  104f29:	74 07                	je     104f32 <at_list_remove+0x62>
        AT[n].prev = p;
  104f2b:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
  104f2e:	89 5c 8e 10          	mov    %ebx,0x10(%esi,%ecx,4)
    }

    AT[page_index].next = -1;
  104f32:	03 54 24 18          	add    0x18(%esp),%edx
  104f36:	c1 e2 02             	shl    $0x2,%edx
  104f39:	01 d0                	add    %edx,%eax
    AT[page_index].prev = -1;
  104f3b:	c7 44 32 10 ff ff ff 	movl   $0xffffffff,0x10(%edx,%esi,1)
  104f42:	ff 
    AT[page_index].next = -1;
  104f43:	c7 44 07 0c ff ff ff 	movl   $0xffffffff,0xc(%edi,%eax,1)
  104f4a:	ff 
}
  104f4b:	5b                   	pop    %ebx
  104f4c:	5e                   	pop    %esi
  104f4d:	5f                   	pop    %edi
  104f4e:	5d                   	pop    %ebp
  104f4f:	c3                   	ret
        free_list[order] = n;
  104f50:	8b 6c 24 14          	mov    0x14(%esp),%ebp
  104f54:	89 8c a8 4c cc 44 01 	mov    %ecx,0x144cc4c(%eax,%ebp,4)
  104f5b:	eb c9                	jmp    104f26 <at_list_remove+0x56>

00104f5d <__x86.get_pc_thunk.cx>:
  104f5d:	8b 0c 24             	mov    (%esp),%ecx
  104f60:	c3                   	ret
  104f61:	66 90                	xchg   %ax,%ax
  104f63:	66 90                	xchg   %ax,%ax
  104f65:	66 90                	xchg   %ax,%ax
  104f67:	66 90                	xchg   %ax,%ax
  104f69:	66 90                	xchg   %ax,%ax
  104f6b:	66 90                	xchg   %ax,%ax
  104f6d:	66 90                	xchg   %ax,%ax
  104f6f:	90                   	nop

00104f70 <MATIntro_test1>:
int MATIntro_test1() {
  104f70:	55                   	push   %ebp
  104f71:	57                   	push   %edi
  104f72:	56                   	push   %esi
    for (i = 0; i < 10; i++) {
  104f73:	31 f6                	xor    %esi,%esi
int MATIntro_test1() {
  104f75:	53                   	push   %ebx
  104f76:	e8 9a b4 ff ff       	call   100415 <__x86.get_pc_thunk.bx>
  104f7b:	81 c3 79 80 00 00    	add    $0x8079,%ebx
  104f81:	83 ec 4c             	sub    $0x4c,%esp
    int rn10[] = { 1, 3, 5, 6, 78, 3576, 32, 8, 0, 100 };
  104f84:	c7 44 24 18 01 00 00 	movl   $0x1,0x18(%esp)
  104f8b:	00 
  104f8c:	8d 7c 24 18          	lea    0x18(%esp),%edi
  104f90:	c7 44 24 1c 03 00 00 	movl   $0x3,0x1c(%esp)
  104f97:	00 
  104f98:	c7 44 24 20 05 00 00 	movl   $0x5,0x20(%esp)
  104f9f:	00 
  104fa0:	c7 44 24 24 06 00 00 	movl   $0x6,0x24(%esp)
  104fa7:	00 
  104fa8:	c7 44 24 28 4e 00 00 	movl   $0x4e,0x28(%esp)
  104faf:	00 
  104fb0:	c7 44 24 2c f8 0d 00 	movl   $0xdf8,0x2c(%esp)
  104fb7:	00 
  104fb8:	c7 44 24 30 20 00 00 	movl   $0x20,0x30(%esp)
  104fbf:	00 
  104fc0:	c7 44 24 34 08 00 00 	movl   $0x8,0x34(%esp)
  104fc7:	00 
  104fc8:	c7 44 24 38 00 00 00 	movl   $0x0,0x38(%esp)
  104fcf:	00 
  104fd0:	c7 44 24 3c 64 00 00 	movl   $0x64,0x3c(%esp)
  104fd7:	00 
    int nps = get_nps();
  104fd8:	e8 43 fd ff ff       	call   104d20 <get_nps>
  104fdd:	89 44 24 0c          	mov    %eax,0xc(%esp)
    for (i = 0; i < 10; i++) {
  104fe1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        set_nps(rn10[i]);
  104fe8:	8b 2c b7             	mov    (%edi,%esi,4),%ebp
  104feb:	83 ec 0c             	sub    $0xc,%esp
  104fee:	55                   	push   %ebp
  104fef:	e8 4c fd ff ff       	call   104d40 <set_nps>
        if (get_nps() != rn10[i]) {
  104ff4:	e8 27 fd ff ff       	call   104d20 <get_nps>
  104ff9:	83 c4 10             	add    $0x10,%esp
  104ffc:	39 c5                	cmp    %eax,%ebp
  104ffe:	75 30                	jne    105030 <MATIntro_test1+0xc0>
    for (i = 0; i < 10; i++) {
  105000:	83 c6 01             	add    $0x1,%esi
  105003:	83 fe 0a             	cmp    $0xa,%esi
  105006:	75 e0                	jne    104fe8 <MATIntro_test1+0x78>
    set_nps(nps);
  105008:	83 ec 0c             	sub    $0xc,%esp
  10500b:	ff 74 24 18          	push   0x18(%esp)
  10500f:	e8 2c fd ff ff       	call   104d40 <set_nps>
    dprintf("test 1 passed.\n");
  105014:	8d 83 93 b8 ff ff    	lea    -0x476d(%ebx),%eax
  10501a:	89 04 24             	mov    %eax,(%esp)
  10501d:	e8 9a dd ff ff       	call   102dbc <dprintf>
    return 0;
  105022:	83 c4 10             	add    $0x10,%esp
  105025:	31 c0                	xor    %eax,%eax
}
  105027:	83 c4 4c             	add    $0x4c,%esp
  10502a:	5b                   	pop    %ebx
  10502b:	5e                   	pop    %esi
  10502c:	5f                   	pop    %edi
  10502d:	5d                   	pop    %ebp
  10502e:	c3                   	ret
  10502f:	90                   	nop
            dprintf("test 1.1 failed (i = %d): (%d != %d)\n", i, get_nps(), rn10[i]);
  105030:	e8 eb fc ff ff       	call   104d20 <get_nps>
  105035:	55                   	push   %ebp
  105036:	50                   	push   %eax
  105037:	8d 83 b4 bb ff ff    	lea    -0x444c(%ebx),%eax
  10503d:	56                   	push   %esi
  10503e:	50                   	push   %eax
  10503f:	e8 78 dd ff ff       	call   102dbc <dprintf>
            set_nps(nps);
  105044:	58                   	pop    %eax
  105045:	ff 74 24 18          	push   0x18(%esp)
  105049:	e8 f2 fc ff ff       	call   104d40 <set_nps>
            return 1;
  10504e:	83 c4 10             	add    $0x10,%esp
  105051:	b8 01 00 00 00       	mov    $0x1,%eax
}
  105056:	83 c4 4c             	add    $0x4c,%esp
  105059:	5b                   	pop    %ebx
  10505a:	5e                   	pop    %esi
  10505b:	5f                   	pop    %edi
  10505c:	5d                   	pop    %ebp
  10505d:	c3                   	ret
  10505e:	66 90                	xchg   %ax,%ax

00105060 <MATIntro_test2>:
int MATIntro_test2() {
  105060:	56                   	push   %esi
  105061:	53                   	push   %ebx
  105062:	e8 ae b3 ff ff       	call   100415 <__x86.get_pc_thunk.bx>
  105067:	81 c3 8d 7f 00 00    	add    $0x7f8d,%ebx
  10506d:	83 ec 0c             	sub    $0xc,%esp
    at_set_perm(0, 0);
  105070:	6a 00                	push   $0x0
  105072:	6a 00                	push   $0x0
  105074:	e8 17 fd ff ff       	call   104d90 <at_set_perm>
    if (at_is_norm(0) != 0 || at_is_allocated(0) != 0) {
  105079:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  105080:	e8 db fc ff ff       	call   104d60 <at_is_norm>
  105085:	83 c4 10             	add    $0x10,%esp
  105088:	85 c0                	test   %eax,%eax
  10508a:	75 11                	jne    10509d <MATIntro_test2+0x3d>
  10508c:	83 ec 0c             	sub    $0xc,%esp
  10508f:	6a 00                	push   $0x0
  105091:	e8 3a fd ff ff       	call   104dd0 <at_is_allocated>
  105096:	83 c4 10             	add    $0x10,%esp
  105099:	85 c0                	test   %eax,%eax
  10509b:	74 43                	je     1050e0 <MATIntro_test2+0x80>
        dprintf("test 2.1 failed: (%d != 0 || %d != 0)\n", at_is_norm(0), at_is_allocated(0));
  10509d:	83 ec 0c             	sub    $0xc,%esp
  1050a0:	6a 00                	push   $0x0
  1050a2:	e8 29 fd ff ff       	call   104dd0 <at_is_allocated>
  1050a7:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  1050ae:	89 c6                	mov    %eax,%esi
  1050b0:	e8 ab fc ff ff       	call   104d60 <at_is_norm>
  1050b5:	83 c4 0c             	add    $0xc,%esp
  1050b8:	56                   	push   %esi
  1050b9:	50                   	push   %eax
  1050ba:	8d 83 dc bb ff ff    	lea    -0x4424(%ebx),%eax
        dprintf("test 2.2 failed: (%d != 0 || %d != 0)\n", at_is_norm(0), at_is_allocated(0));
  1050c0:	50                   	push   %eax
  1050c1:	e8 f6 dc ff ff       	call   102dbc <dprintf>
        at_set_perm(0, 0);
  1050c6:	58                   	pop    %eax
  1050c7:	5a                   	pop    %edx
  1050c8:	6a 00                	push   $0x0
  1050ca:	6a 00                	push   $0x0
  1050cc:	e8 bf fc ff ff       	call   104d90 <at_set_perm>
        return 1;
  1050d1:	83 c4 10             	add    $0x10,%esp
        return 1;
  1050d4:	b8 01 00 00 00       	mov    $0x1,%eax
}
  1050d9:	83 c4 04             	add    $0x4,%esp
  1050dc:	5b                   	pop    %ebx
  1050dd:	5e                   	pop    %esi
  1050de:	c3                   	ret
  1050df:	90                   	nop
    at_set_perm(0, 1);
  1050e0:	83 ec 08             	sub    $0x8,%esp
  1050e3:	6a 01                	push   $0x1
  1050e5:	6a 00                	push   $0x0
  1050e7:	e8 a4 fc ff ff       	call   104d90 <at_set_perm>
    if (at_is_norm(0) != 0 || at_is_allocated(0) != 0) {
  1050ec:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  1050f3:	e8 68 fc ff ff       	call   104d60 <at_is_norm>
  1050f8:	83 c4 10             	add    $0x10,%esp
  1050fb:	85 c0                	test   %eax,%eax
  1050fd:	75 11                	jne    105110 <MATIntro_test2+0xb0>
  1050ff:	83 ec 0c             	sub    $0xc,%esp
  105102:	6a 00                	push   $0x0
  105104:	e8 c7 fc ff ff       	call   104dd0 <at_is_allocated>
  105109:	83 c4 10             	add    $0x10,%esp
  10510c:	85 c0                	test   %eax,%eax
  10510e:	74 28                	je     105138 <MATIntro_test2+0xd8>
        dprintf("test 2.2 failed: (%d != 0 || %d != 0)\n", at_is_norm(0), at_is_allocated(0));
  105110:	83 ec 0c             	sub    $0xc,%esp
  105113:	6a 00                	push   $0x0
  105115:	e8 b6 fc ff ff       	call   104dd0 <at_is_allocated>
  10511a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  105121:	89 c6                	mov    %eax,%esi
  105123:	e8 38 fc ff ff       	call   104d60 <at_is_norm>
  105128:	83 c4 0c             	add    $0xc,%esp
  10512b:	56                   	push   %esi
  10512c:	50                   	push   %eax
  10512d:	8d 83 04 bc ff ff    	lea    -0x43fc(%ebx),%eax
  105133:	eb 8b                	jmp    1050c0 <MATIntro_test2+0x60>
  105135:	8d 76 00             	lea    0x0(%esi),%esi
    at_set_perm(0, 2);
  105138:	83 ec 08             	sub    $0x8,%esp
  10513b:	6a 02                	push   $0x2
  10513d:	6a 00                	push   $0x0
  10513f:	e8 4c fc ff ff       	call   104d90 <at_set_perm>
    if (at_is_norm(0) != 1 || at_is_allocated(0) != 0) {
  105144:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  10514b:	e8 10 fc ff ff       	call   104d60 <at_is_norm>
  105150:	83 c4 10             	add    $0x10,%esp
  105153:	83 f8 01             	cmp    $0x1,%eax
  105156:	75 11                	jne    105169 <MATIntro_test2+0x109>
  105158:	83 ec 0c             	sub    $0xc,%esp
  10515b:	6a 00                	push   $0x0
  10515d:	e8 6e fc ff ff       	call   104dd0 <at_is_allocated>
  105162:	83 c4 10             	add    $0x10,%esp
  105165:	85 c0                	test   %eax,%eax
  105167:	74 2f                	je     105198 <MATIntro_test2+0x138>
        dprintf("test 2.3 failed: (%d != 1 || %d != 0)\n", at_is_norm(0), at_is_allocated(0));
  105169:	83 ec 0c             	sub    $0xc,%esp
  10516c:	6a 00                	push   $0x0
  10516e:	e8 5d fc ff ff       	call   104dd0 <at_is_allocated>
  105173:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  10517a:	89 c6                	mov    %eax,%esi
  10517c:	e8 df fb ff ff       	call   104d60 <at_is_norm>
  105181:	83 c4 0c             	add    $0xc,%esp
  105184:	56                   	push   %esi
  105185:	50                   	push   %eax
  105186:	8d 83 2c bc ff ff    	lea    -0x43d4(%ebx),%eax
  10518c:	e9 2f ff ff ff       	jmp    1050c0 <MATIntro_test2+0x60>
  105191:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    at_set_perm(0, 100);
  105198:	83 ec 08             	sub    $0x8,%esp
  10519b:	6a 64                	push   $0x64
  10519d:	6a 00                	push   $0x0
  10519f:	e8 ec fb ff ff       	call   104d90 <at_set_perm>
    if (at_is_norm(0) != 1 || at_is_allocated(0) != 0) {
  1051a4:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  1051ab:	e8 b0 fb ff ff       	call   104d60 <at_is_norm>
  1051b0:	83 c4 10             	add    $0x10,%esp
  1051b3:	83 f8 01             	cmp    $0x1,%eax
  1051b6:	75 38                	jne    1051f0 <MATIntro_test2+0x190>
  1051b8:	83 ec 0c             	sub    $0xc,%esp
  1051bb:	6a 00                	push   $0x0
  1051bd:	e8 0e fc ff ff       	call   104dd0 <at_is_allocated>
  1051c2:	83 c4 10             	add    $0x10,%esp
  1051c5:	85 c0                	test   %eax,%eax
  1051c7:	75 27                	jne    1051f0 <MATIntro_test2+0x190>
    at_set_perm(0, 0);
  1051c9:	83 ec 08             	sub    $0x8,%esp
  1051cc:	6a 00                	push   $0x0
  1051ce:	6a 00                	push   $0x0
  1051d0:	e8 bb fb ff ff       	call   104d90 <at_set_perm>
    dprintf("test 2 passed.\n");
  1051d5:	8d 83 a3 b8 ff ff    	lea    -0x475d(%ebx),%eax
  1051db:	89 04 24             	mov    %eax,(%esp)
  1051de:	e8 d9 db ff ff       	call   102dbc <dprintf>
    return 0;
  1051e3:	83 c4 10             	add    $0x10,%esp
  1051e6:	31 c0                	xor    %eax,%eax
  1051e8:	e9 ec fe ff ff       	jmp    1050d9 <MATIntro_test2+0x79>
  1051ed:	8d 76 00             	lea    0x0(%esi),%esi
        dprintf("test 2.4 failed: (%d != 1 || %d != 0)\n", at_is_norm(0), at_is_allocated(0));
  1051f0:	83 ec 0c             	sub    $0xc,%esp
  1051f3:	6a 00                	push   $0x0
  1051f5:	e8 d6 fb ff ff       	call   104dd0 <at_is_allocated>
  1051fa:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  105201:	89 c6                	mov    %eax,%esi
  105203:	e8 58 fb ff ff       	call   104d60 <at_is_norm>
  105208:	83 c4 0c             	add    $0xc,%esp
  10520b:	56                   	push   %esi
  10520c:	50                   	push   %eax
  10520d:	8d 83 54 bc ff ff    	lea    -0x43ac(%ebx),%eax
  105213:	e9 a8 fe ff ff       	jmp    1050c0 <MATIntro_test2+0x60>
  105218:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10521f:	00 

00105220 <MATIntro_test3>:
int MATIntro_test3() {
  105220:	53                   	push   %ebx
  105221:	e8 ef b1 ff ff       	call   100415 <__x86.get_pc_thunk.bx>
  105226:	81 c3 ce 7d 00 00    	add    $0x7dce,%ebx
  10522c:	83 ec 10             	sub    $0x10,%esp
    at_set_allocated(1, 0);
  10522f:	6a 00                	push   $0x0
  105231:	6a 01                	push   $0x1
  105233:	e8 c8 fb ff ff       	call   104e00 <at_set_allocated>
    if (at_is_allocated(1) != 0) {
  105238:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  10523f:	e8 8c fb ff ff       	call   104dd0 <at_is_allocated>
  105244:	83 c4 10             	add    $0x10,%esp
  105247:	85 c0                	test   %eax,%eax
  105249:	0f 85 89 00 00 00    	jne    1052d8 <MATIntro_test3+0xb8>
    at_set_allocated(1, 1);
  10524f:	83 ec 08             	sub    $0x8,%esp
  105252:	6a 01                	push   $0x1
  105254:	6a 01                	push   $0x1
  105256:	e8 a5 fb ff ff       	call   104e00 <at_set_allocated>
    if (at_is_allocated(1) != 1) {
  10525b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  105262:	e8 69 fb ff ff       	call   104dd0 <at_is_allocated>
  105267:	83 c4 10             	add    $0x10,%esp
  10526a:	83 f8 01             	cmp    $0x1,%eax
  10526d:	74 31                	je     1052a0 <MATIntro_test3+0x80>
        dprintf("test 3.2 failed: (%d != 1)\n", at_is_allocated(1));
  10526f:	83 ec 0c             	sub    $0xc,%esp
  105272:	6a 01                	push   $0x1
  105274:	e8 57 fb ff ff       	call   104dd0 <at_is_allocated>
  105279:	59                   	pop    %ecx
  10527a:	5a                   	pop    %edx
  10527b:	50                   	push   %eax
  10527c:	8d 83 cf b8 ff ff    	lea    -0x4731(%ebx),%eax
  105282:	50                   	push   %eax
  105283:	e8 34 db ff ff       	call   102dbc <dprintf>
        at_set_allocated(1, 0);
  105288:	58                   	pop    %eax
  105289:	5a                   	pop    %edx
  10528a:	6a 00                	push   $0x0
  10528c:	6a 01                	push   $0x1
  10528e:	e8 6d fb ff ff       	call   104e00 <at_set_allocated>
        return 1;
  105293:	83 c4 10             	add    $0x10,%esp
        return 1;
  105296:	b8 01 00 00 00       	mov    $0x1,%eax
}
  10529b:	83 c4 08             	add    $0x8,%esp
  10529e:	5b                   	pop    %ebx
  10529f:	c3                   	ret
    at_set_allocated(1, 100);
  1052a0:	83 ec 08             	sub    $0x8,%esp
  1052a3:	6a 64                	push   $0x64
  1052a5:	6a 01                	push   $0x1
  1052a7:	e8 54 fb ff ff       	call   104e00 <at_set_allocated>
    if (at_is_allocated(1) != 1) {
  1052ac:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  1052b3:	e8 18 fb ff ff       	call   104dd0 <at_is_allocated>
  1052b8:	83 c4 10             	add    $0x10,%esp
  1052bb:	83 f8 01             	cmp    $0x1,%eax
  1052be:	74 30                	je     1052f0 <MATIntro_test3+0xd0>
        dprintf("test 3.3 failed: (%d != 1)\n", at_is_allocated(1));
  1052c0:	83 ec 0c             	sub    $0xc,%esp
  1052c3:	6a 01                	push   $0x1
  1052c5:	e8 06 fb ff ff       	call   104dd0 <at_is_allocated>
  1052ca:	5a                   	pop    %edx
  1052cb:	59                   	pop    %ecx
  1052cc:	50                   	push   %eax
  1052cd:	8d 83 eb b8 ff ff    	lea    -0x4715(%ebx),%eax
  1052d3:	eb ad                	jmp    105282 <MATIntro_test3+0x62>
  1052d5:	8d 76 00             	lea    0x0(%esi),%esi
        dprintf("test 3.1 failed: (%d != 0)\n", at_is_allocated(1));
  1052d8:	83 ec 0c             	sub    $0xc,%esp
  1052db:	6a 01                	push   $0x1
  1052dd:	e8 ee fa ff ff       	call   104dd0 <at_is_allocated>
  1052e2:	59                   	pop    %ecx
  1052e3:	5a                   	pop    %edx
  1052e4:	50                   	push   %eax
  1052e5:	8d 83 b3 b8 ff ff    	lea    -0x474d(%ebx),%eax
  1052eb:	eb 95                	jmp    105282 <MATIntro_test3+0x62>
  1052ed:	8d 76 00             	lea    0x0(%esi),%esi
    at_set_allocated(1, 0);
  1052f0:	83 ec 08             	sub    $0x8,%esp
  1052f3:	6a 00                	push   $0x0
  1052f5:	6a 01                	push   $0x1
  1052f7:	e8 04 fb ff ff       	call   104e00 <at_set_allocated>
    dprintf("test 3 passed.\n");
  1052fc:	8d 83 07 b9 ff ff    	lea    -0x46f9(%ebx),%eax
  105302:	89 04 24             	mov    %eax,(%esp)
  105305:	e8 b2 da ff ff       	call   102dbc <dprintf>
    return 0;
  10530a:	83 c4 10             	add    $0x10,%esp
  10530d:	31 c0                	xor    %eax,%eax
}
  10530f:	83 c4 08             	add    $0x8,%esp
  105312:	5b                   	pop    %ebx
  105313:	c3                   	ret
  105314:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10531b:	00 
  10531c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00105320 <MATIntro_test_buddy>:
int MATIntro_test_buddy() {
  105320:	53                   	push   %ebx
  105321:	e8 ef b0 ff ff       	call   100415 <__x86.get_pc_thunk.bx>
  105326:	81 c3 ce 7c 00 00    	add    $0x7cce,%ebx
  10532c:	83 ec 08             	sub    $0x8,%esp
    pmm_init_freelists();
  10532f:	e8 bc f9 ff ff       	call   104cf0 <pmm_init_freelists>
    set_nps(1024); // Simulate 1024 pages
  105334:	83 ec 0c             	sub    $0xc,%esp
  105337:	68 00 04 00 00       	push   $0x400
  10533c:	e8 ff f9 ff ff       	call   104d40 <set_nps>
    at_list_add(0, 10);
  105341:	59                   	pop    %ecx
  105342:	58                   	pop    %eax
  105343:	6a 0a                	push   $0xa
  105345:	6a 00                	push   $0x0
  105347:	e8 14 fb ff ff       	call   104e60 <at_list_add>
    at_list_add(0, 20);
  10534c:	58                   	pop    %eax
  10534d:	5a                   	pop    %edx
  10534e:	6a 14                	push   $0x14
  105350:	6a 00                	push   $0x0
  105352:	e8 09 fb ff ff       	call   104e60 <at_list_add>
    if (get_free_list_head(0) != 20) {
  105357:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  10535e:	e8 cd fa ff ff       	call   104e30 <get_free_list_head>
  105363:	83 c4 10             	add    $0x10,%esp
  105366:	83 f8 14             	cmp    $0x14,%eax
  105369:	74 25                	je     105390 <MATIntro_test_buddy+0x70>
        dprintf("Buddy Test failed: Head should be 20\n");
  10536b:	83 ec 0c             	sub    $0xc,%esp
  10536e:	8d 83 7c bc ff ff    	lea    -0x4384(%ebx),%eax
  105374:	50                   	push   %eax
  105375:	e8 42 da ff ff       	call   102dbc <dprintf>
        return 1;
  10537a:	83 c4 10             	add    $0x10,%esp
  10537d:	b8 01 00 00 00       	mov    $0x1,%eax
}
  105382:	83 c4 08             	add    $0x8,%esp
  105385:	5b                   	pop    %ebx
  105386:	c3                   	ret
  105387:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10538e:	00 
  10538f:	90                   	nop
    int head = get_free_list_head(0);
  105390:	83 ec 0c             	sub    $0xc,%esp
  105393:	6a 00                	push   $0x0
  105395:	e8 96 fa ff ff       	call   104e30 <get_free_list_head>
    if (AT[head].next != 10) {  // AT should be accessible now
  10539a:	c7 c2 40 9c 15 00    	mov    $0x159c40,%edx
  1053a0:	83 c4 10             	add    $0x10,%esp
  1053a3:	8d 04 80             	lea    (%eax,%eax,4),%eax
  1053a6:	8d 04 82             	lea    (%edx,%eax,4),%eax
  1053a9:	83 78 0c 0a          	cmpl   $0xa,0xc(%eax)
  1053ad:	74 19                	je     1053c8 <MATIntro_test_buddy+0xa8>
        dprintf("Buddy Test failed: 20's next should be 10\n");
  1053af:	83 ec 0c             	sub    $0xc,%esp
  1053b2:	8d 83 a4 bc ff ff    	lea    -0x435c(%ebx),%eax
  1053b8:	50                   	push   %eax
  1053b9:	e8 fe d9 ff ff       	call   102dbc <dprintf>
        return 1;
  1053be:	83 c4 10             	add    $0x10,%esp
  1053c1:	eb ba                	jmp    10537d <MATIntro_test_buddy+0x5d>
  1053c3:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
    at_list_remove(0, 20);
  1053c8:	83 ec 08             	sub    $0x8,%esp
  1053cb:	6a 14                	push   $0x14
  1053cd:	6a 00                	push   $0x0
  1053cf:	e8 fc fa ff ff       	call   104ed0 <at_list_remove>
    if (get_free_list_head(0) != 10) {
  1053d4:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  1053db:	e8 50 fa ff ff       	call   104e30 <get_free_list_head>
  1053e0:	83 c4 10             	add    $0x10,%esp
  1053e3:	83 f8 0a             	cmp    $0xa,%eax
  1053e6:	75 40                	jne    105428 <MATIntro_test_buddy+0x108>
    at_list_add(9, 512); // Add a 2MB block starting at page 512
  1053e8:	83 ec 08             	sub    $0x8,%esp
  1053eb:	68 00 02 00 00       	push   $0x200
  1053f0:	6a 09                	push   $0x9
  1053f2:	e8 69 fa ff ff       	call   104e60 <at_list_add>
    if (get_free_list_head(9) != 512) {
  1053f7:	c7 04 24 09 00 00 00 	movl   $0x9,(%esp)
  1053fe:	e8 2d fa ff ff       	call   104e30 <get_free_list_head>
  105403:	83 c4 10             	add    $0x10,%esp
  105406:	3d 00 02 00 00       	cmp    $0x200,%eax
  10540b:	74 33                	je     105440 <MATIntro_test_buddy+0x120>
        dprintf("Buddy Test failed: Order 9 head mismatch\n");
  10540d:	83 ec 0c             	sub    $0xc,%esp
  105410:	8d 83 08 bd ff ff    	lea    -0x42f8(%ebx),%eax
  105416:	50                   	push   %eax
  105417:	e8 a0 d9 ff ff       	call   102dbc <dprintf>
        return 1;
  10541c:	83 c4 10             	add    $0x10,%esp
  10541f:	e9 59 ff ff ff       	jmp    10537d <MATIntro_test_buddy+0x5d>
  105424:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        dprintf("Buddy Test failed: Head should be 10 after removing 20\n");
  105428:	83 ec 0c             	sub    $0xc,%esp
  10542b:	8d 83 d0 bc ff ff    	lea    -0x4330(%ebx),%eax
  105431:	50                   	push   %eax
  105432:	e8 85 d9 ff ff       	call   102dbc <dprintf>
        return 1;
  105437:	83 c4 10             	add    $0x10,%esp
  10543a:	e9 3e ff ff ff       	jmp    10537d <MATIntro_test_buddy+0x5d>
  10543f:	90                   	nop
    dprintf("Buddy list tests passed.\n");
  105440:	83 ec 0c             	sub    $0xc,%esp
  105443:	8d 83 17 b9 ff ff    	lea    -0x46e9(%ebx),%eax
  105449:	50                   	push   %eax
  10544a:	e8 6d d9 ff ff       	call   102dbc <dprintf>
    return 0;
  10544f:	83 c4 10             	add    $0x10,%esp
  105452:	31 c0                	xor    %eax,%eax
  105454:	e9 29 ff ff ff       	jmp    105382 <MATIntro_test_buddy+0x62>
  105459:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00105460 <test_MATIntro>:
int test_MATIntro() {
  105460:	53                   	push   %ebx
  105461:	83 ec 08             	sub    $0x8,%esp
    return MATIntro_test1() + MATIntro_test2() + MATIntro_test3() + MATIntro_test_buddy();
  105464:	e8 07 fb ff ff       	call   104f70 <MATIntro_test1>
  105469:	89 c3                	mov    %eax,%ebx
  10546b:	e8 f0 fb ff ff       	call   105060 <MATIntro_test2>
  105470:	01 c3                	add    %eax,%ebx
  105472:	e8 a9 fd ff ff       	call   105220 <MATIntro_test3>
  105477:	01 c3                	add    %eax,%ebx
  105479:	e8 a2 fe ff ff       	call   105320 <MATIntro_test_buddy>
}
  10547e:	83 c4 08             	add    $0x8,%esp
    return MATIntro_test1() + MATIntro_test2() + MATIntro_test3() + MATIntro_test_buddy();
  105481:	01 d8                	add    %ebx,%eax
}
  105483:	5b                   	pop    %ebx
  105484:	c3                   	ret
  105485:	66 90                	xchg   %ax,%ax
  105487:	66 90                	xchg   %ax,%ax
  105489:	66 90                	xchg   %ax,%ax
  10548b:	66 90                	xchg   %ax,%ax
  10548d:	66 90                	xchg   %ax,%ax
  10548f:	90                   	nop

00105490 <pmem_init>:
 *    based on the information available in the physical memory map table.
 *    Review import.h in the current directory for the list of available
 *    getter and setter functions.
 */
void pmem_init(unsigned int mbi_addr)
{
  105490:	55                   	push   %ebp
  105491:	57                   	push   %edi
  105492:	56                   	push   %esi
  105493:	53                   	push   %ebx
  105494:	e8 7c af ff ff       	call   100415 <__x86.get_pc_thunk.bx>
  105499:	81 c3 5b 7b 00 00    	add    $0x7b5b,%ebx
  10549f:	83 ec 38             	sub    $0x38,%esp
    unsigned int start, len;
    unsigned int perm;

    // Calls the lower layer initialization primitive.
    // The parameter mbi_addr should not be used in the further code.
    devinit(mbi_addr);
  1054a2:	ff 74 24 4c          	push   0x4c(%esp)
  1054a6:	e8 ab b6 ff ff       	call   100b56 <devinit>
     * store it into the local variable nps.
     * Hint: Think of it as the highest address in the ranges of the memory map table,
     *       divided by the page size.
     */
    // TODO
       n_entries = get_size();
  1054ab:	e8 f4 bb ff ff       	call   1010a4 <get_size>
    for (i = 0; i < n_entries; i++) {
  1054b0:	83 c4 10             	add    $0x10,%esp
  1054b3:	85 c0                	test   %eax,%eax
  1054b5:	0f 84 2e 01 00 00    	je     1055e9 <pmem_init+0x159>
  1054bb:	89 44 24 0c          	mov    %eax,0xc(%esp)
    unsigned int highest_addr = 0;
  1054bf:	31 ed                	xor    %ebp,%ebp
    for (i = 0; i < n_entries; i++) {
  1054c1:	31 ff                	xor    %edi,%edi
  1054c3:	89 ee                	mov    %ebp,%esi
  1054c5:	8d 76 00             	lea    0x0(%esi),%esi
        start = get_mms(i);
  1054c8:	83 ec 0c             	sub    $0xc,%esp
  1054cb:	57                   	push   %edi
  1054cc:	e8 e8 bb ff ff       	call   1010b9 <get_mms>
        len = get_mml(i);
  1054d1:	89 3c 24             	mov    %edi,(%esp)
        start = get_mms(i);
  1054d4:	89 c5                	mov    %eax,%ebp
        len = get_mml(i);
  1054d6:	e8 44 bc ff ff       	call   10111f <get_mml>
        if ((start + len) > highest_addr) {
  1054db:	01 e8                	add    %ebp,%eax
  1054dd:	39 c6                	cmp    %eax,%esi
  1054df:	0f 42 f0             	cmovb  %eax,%esi
    for (i = 0; i < n_entries; i++) {
  1054e2:	83 c4 10             	add    $0x10,%esp
  1054e5:	89 f8                	mov    %edi,%eax
  1054e7:	8d 7f 01             	lea    0x1(%edi),%edi
  1054ea:	39 7c 24 0c          	cmp    %edi,0xc(%esp)
  1054ee:	75 d8                	jne    1054c8 <pmem_init+0x38>
  1054f0:	89 f5                	mov    %esi,%ebp
            highest_addr = start + len;
        }
    }
    nps = highest_addr / PAGESIZE;
  1054f2:	89 44 24 0c          	mov    %eax,0xc(%esp)

    set_nps(nps);  // Setting the value computed above to NUM_PAGES.
  1054f6:	83 ec 0c             	sub    $0xc,%esp
    nps = highest_addr / PAGESIZE;
  1054f9:	c1 ed 0c             	shr    $0xc,%ebp
  1054fc:	89 6c 24 1c          	mov    %ebp,0x1c(%esp)
  105500:	89 ee                	mov    %ebp,%esi
    set_nps(nps);  // Setting the value computed above to NUM_PAGES.
  105502:	55                   	push   %ebp
     *    the addresses are in a usable range. Currently, we do not utilize partial pages,
     *    so in that case, you should consider those pages as unavailable.
     */
    // TODO

    for (i = 0; i < nps; i++) {
  105503:	31 ed                	xor    %ebp,%ebp
    set_nps(nps);  // Setting the value computed above to NUM_PAGES.
  105505:	e8 36 f8 ff ff       	call   104d40 <set_nps>
    for (i = 0; i < nps; i++) {
  10550a:	83 c4 10             	add    $0x10,%esp
  10550d:	85 f6                	test   %esi,%esi
  10550f:	0f 84 cc 00 00 00    	je     1055e1 <pmem_init+0x151>
  105515:	89 ef                	mov    %ebp,%edi
  105517:	8b 6c 24 0c          	mov    0xc(%esp),%ebp
  10551b:	eb 1b                	jmp    105538 <pmem_init+0xa8>
  10551d:	8d 76 00             	lea    0x0(%esi),%esi
        if (i < VM_USERLO_PI || i >= VM_USERHI_PI) {
            at_set_perm(i, 1);
  105520:	83 ec 08             	sub    $0x8,%esp
  105523:	6a 01                	push   $0x1
  105525:	52                   	push   %edx
  105526:	e8 65 f8 ff ff       	call   104d90 <at_set_perm>
  10552b:	83 c4 10             	add    $0x10,%esp
    for (i = 0; i < nps; i++) {
  10552e:	39 7c 24 10          	cmp    %edi,0x10(%esp)
  105532:	0f 84 a9 00 00 00    	je     1055e1 <pmem_init+0x151>
        if (i < VM_USERLO_PI || i >= VM_USERHI_PI) {
  105538:	89 fa                	mov    %edi,%edx
    for (i = 0; i < nps; i++) {
  10553a:	83 c7 01             	add    $0x1,%edi
        if (i < VM_USERLO_PI || i >= VM_USERHI_PI) {
  10553d:	8d 82 00 00 fc ff    	lea    -0x40000(%edx),%eax
  105543:	3d ff ff 0a 00       	cmp    $0xaffff,%eax
  105548:	77 d6                	ja     105520 <pmem_init+0x90>
  10554a:	89 d1                	mov    %edx,%ecx
        } else {
            perm = 0;
            for (j = 0; j < n_entries; j++) {
  10554c:	31 f6                	xor    %esi,%esi
  10554e:	89 7c 24 1c          	mov    %edi,0x1c(%esp)
  105552:	c1 e1 0c             	shl    $0xc,%ecx
  105555:	89 54 24 18          	mov    %edx,0x18(%esp)
  105559:	89 f7                	mov    %esi,%edi
  10555b:	8d 81 00 10 00 00    	lea    0x1000(%ecx),%eax
  105561:	89 4c 24 0c          	mov    %ecx,0xc(%esp)
  105565:	89 44 24 14          	mov    %eax,0x14(%esp)
  105569:	eb 0e                	jmp    105579 <pmem_init+0xe9>
  10556b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
  105570:	8d 47 01             	lea    0x1(%edi),%eax
  105573:	39 fd                	cmp    %edi,%ebp
  105575:	74 49                	je     1055c0 <pmem_init+0x130>
  105577:	89 c7                	mov    %eax,%edi
                if (is_usable(j)) {
  105579:	83 ec 0c             	sub    $0xc,%esp
  10557c:	57                   	push   %edi
  10557d:	e8 0d bc ff ff       	call   10118f <is_usable>
  105582:	83 c4 10             	add    $0x10,%esp
  105585:	85 c0                	test   %eax,%eax
  105587:	74 e7                	je     105570 <pmem_init+0xe0>
                    start = get_mms(j);
  105589:	83 ec 0c             	sub    $0xc,%esp
  10558c:	57                   	push   %edi
  10558d:	e8 27 bb ff ff       	call   1010b9 <get_mms>
                    len = get_mml(j);
  105592:	89 3c 24             	mov    %edi,(%esp)
                    start = get_mms(j);
  105595:	89 c6                	mov    %eax,%esi
                    len = get_mml(j);
  105597:	e8 83 bb ff ff       	call   10111f <get_mml>
                    // Check if the page falls entirely within the usable range
                    if (start <= (i * PAGESIZE) && (start + len) >= ((i + 1) * PAGESIZE)) {
  10559c:	83 c4 10             	add    $0x10,%esp
  10559f:	39 74 24 0c          	cmp    %esi,0xc(%esp)
  1055a3:	72 cb                	jb     105570 <pmem_init+0xe0>
  1055a5:	8d 0c 06             	lea    (%esi,%eax,1),%ecx
  1055a8:	8b 44 24 14          	mov    0x14(%esp),%eax
  1055ac:	39 c1                	cmp    %eax,%ecx
  1055ae:	72 c0                	jb     105570 <pmem_init+0xe0>
                        perm = 2;
  1055b0:	8b 54 24 18          	mov    0x18(%esp),%edx
  1055b4:	8b 7c 24 1c          	mov    0x1c(%esp),%edi
  1055b8:	b8 02 00 00 00       	mov    $0x2,%eax
  1055bd:	eb 0b                	jmp    1055ca <pmem_init+0x13a>
  1055bf:	90                   	nop
            perm = 0;
  1055c0:	8b 54 24 18          	mov    0x18(%esp),%edx
  1055c4:	8b 7c 24 1c          	mov    0x1c(%esp),%edi
  1055c8:	31 c0                	xor    %eax,%eax
                        break;
                    }
                }
            }
            at_set_perm(i, perm);
  1055ca:	83 ec 08             	sub    $0x8,%esp
  1055cd:	50                   	push   %eax
  1055ce:	52                   	push   %edx
  1055cf:	e8 bc f7 ff ff       	call   104d90 <at_set_perm>
  1055d4:	83 c4 10             	add    $0x10,%esp
    for (i = 0; i < nps; i++) {
  1055d7:	39 7c 24 10          	cmp    %edi,0x10(%esp)
  1055db:	0f 85 57 ff ff ff    	jne    105538 <pmem_init+0xa8>
        }
    }
  1055e1:	83 c4 2c             	add    $0x2c,%esp
  1055e4:	5b                   	pop    %ebx
  1055e5:	5e                   	pop    %esi
  1055e6:	5f                   	pop    %edi
  1055e7:	5d                   	pop    %ebp
  1055e8:	c3                   	ret
    set_nps(nps);  // Setting the value computed above to NUM_PAGES.
  1055e9:	83 ec 0c             	sub    $0xc,%esp
  1055ec:	6a 00                	push   $0x0
  1055ee:	e8 4d f7 ff ff       	call   104d40 <set_nps>
  1055f3:	83 c4 10             	add    $0x10,%esp
  1055f6:	83 c4 2c             	add    $0x2c,%esp
  1055f9:	5b                   	pop    %ebx
  1055fa:	5e                   	pop    %esi
  1055fb:	5f                   	pop    %edi
  1055fc:	5d                   	pop    %ebp
  1055fd:	c3                   	ret
  1055fe:	66 90                	xchg   %ax,%ax

00105600 <MATInit_test1>:
#define VM_USERHI    0xF0000000
#define VM_USERLO_PI (VM_USERLO / PAGESIZE)
#define VM_USERHI_PI (VM_USERHI / PAGESIZE)

int MATInit_test1()
{
  105600:	57                   	push   %edi
  105601:	56                   	push   %esi
  105602:	31 f6                	xor    %esi,%esi
  105604:	53                   	push   %ebx
  105605:	e8 0b ae ff ff       	call   100415 <__x86.get_pc_thunk.bx>
  10560a:	81 c3 ea 79 00 00    	add    $0x79ea,%ebx
    int i;
    int nps = get_nps();
  105610:	e8 0b f7 ff ff       	call   104d20 <get_nps>
  105615:	89 c7                	mov    %eax,%edi
    if (nps <= 1000) {
  105617:	3d e8 03 00 00       	cmp    $0x3e8,%eax
  10561c:	7f 11                	jg     10562f <MATInit_test1+0x2f>
  10561e:	e9 ad 00 00 00       	jmp    1056d0 <MATInit_test1+0xd0>
  105623:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        dprintf("test 1.1 failed: (%d <= 1000)\n", nps);
        return 1;
    }
    for (i = 0; i < nps; i++) {
  105628:	83 c6 01             	add    $0x1,%esi
  10562b:	39 f7                	cmp    %esi,%edi
  10562d:	74 51                	je     105680 <MATInit_test1+0x80>
        if (at_is_allocated(i) != 0) {
  10562f:	83 ec 0c             	sub    $0xc,%esp
  105632:	56                   	push   %esi
  105633:	e8 98 f7 ff ff       	call   104dd0 <at_is_allocated>
  105638:	83 c4 10             	add    $0x10,%esp
  10563b:	85 c0                	test   %eax,%eax
  10563d:	75 61                	jne    1056a0 <MATInit_test1+0xa0>
            dprintf("test 1.2 failed (i = %d): (%d != 0)\n", i, at_is_allocated(i));
            return 1;
        }
        if ((i < VM_USERLO_PI || VM_USERHI_PI <= i)
  10563f:	8d 86 00 00 fc ff    	lea    -0x40000(%esi),%eax
  105645:	3d ff ff 0a 00       	cmp    $0xaffff,%eax
  10564a:	76 dc                	jbe    105628 <MATInit_test1+0x28>
            && at_is_norm(i) != 0) {
  10564c:	83 ec 0c             	sub    $0xc,%esp
  10564f:	56                   	push   %esi
  105650:	e8 0b f7 ff ff       	call   104d60 <at_is_norm>
  105655:	83 c4 10             	add    $0x10,%esp
  105658:	85 c0                	test   %eax,%eax
  10565a:	74 cc                	je     105628 <MATInit_test1+0x28>
            dprintf("test 1.3 failed (i = %d): (%d != 0)\n", i, at_is_norm(i));
  10565c:	83 ec 0c             	sub    $0xc,%esp
  10565f:	56                   	push   %esi
  105660:	e8 fb f6 ff ff       	call   104d60 <at_is_norm>
  105665:	83 c4 0c             	add    $0xc,%esp
  105668:	50                   	push   %eax
  105669:	8d 83 7c bd ff ff    	lea    -0x4284(%ebx),%eax
  10566f:	56                   	push   %esi
  105670:	50                   	push   %eax
  105671:	e8 46 d7 ff ff       	call   102dbc <dprintf>
            return 1;
  105676:	83 c4 10             	add    $0x10,%esp
  105679:	eb 42                	jmp    1056bd <MATInit_test1+0xbd>
  10567b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        }
    }
    dprintf("test 1 passed.\n");
  105680:	83 ec 0c             	sub    $0xc,%esp
  105683:	8d 83 93 b8 ff ff    	lea    -0x476d(%ebx),%eax
  105689:	50                   	push   %eax
  10568a:	e8 2d d7 ff ff       	call   102dbc <dprintf>
    return 0;
  10568f:	83 c4 10             	add    $0x10,%esp
  105692:	31 c0                	xor    %eax,%eax
}
  105694:	5b                   	pop    %ebx
  105695:	5e                   	pop    %esi
  105696:	5f                   	pop    %edi
  105697:	c3                   	ret
  105698:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10569f:	00 
            dprintf("test 1.2 failed (i = %d): (%d != 0)\n", i, at_is_allocated(i));
  1056a0:	83 ec 0c             	sub    $0xc,%esp
  1056a3:	56                   	push   %esi
  1056a4:	e8 27 f7 ff ff       	call   104dd0 <at_is_allocated>
  1056a9:	83 c4 0c             	add    $0xc,%esp
  1056ac:	50                   	push   %eax
  1056ad:	8d 83 54 bd ff ff    	lea    -0x42ac(%ebx),%eax
  1056b3:	56                   	push   %esi
  1056b4:	50                   	push   %eax
  1056b5:	e8 02 d7 ff ff       	call   102dbc <dprintf>
            return 1;
  1056ba:	83 c4 10             	add    $0x10,%esp
}
  1056bd:	5b                   	pop    %ebx
        return 1;
  1056be:	b8 01 00 00 00       	mov    $0x1,%eax
}
  1056c3:	5e                   	pop    %esi
  1056c4:	5f                   	pop    %edi
  1056c5:	c3                   	ret
  1056c6:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  1056cd:	00 
  1056ce:	66 90                	xchg   %ax,%ax
        dprintf("test 1.1 failed: (%d <= 1000)\n", nps);
  1056d0:	83 ec 08             	sub    $0x8,%esp
  1056d3:	50                   	push   %eax
  1056d4:	8d 83 34 bd ff ff    	lea    -0x42cc(%ebx),%eax
  1056da:	50                   	push   %eax
  1056db:	e8 dc d6 ff ff       	call   102dbc <dprintf>
        return 1;
  1056e0:	83 c4 10             	add    $0x10,%esp
  1056e3:	eb d8                	jmp    1056bd <MATInit_test1+0xbd>
  1056e5:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  1056ec:	00 
  1056ed:	8d 76 00             	lea    0x0(%esi),%esi

001056f0 <MATInit_test_own>:
int MATInit_test_own()
{
    // TODO (optional)
    // dprintf("own test passed.\n");
    return 0;
}
  1056f0:	31 c0                	xor    %eax,%eax
  1056f2:	c3                   	ret
  1056f3:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  1056fa:	00 
  1056fb:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

00105700 <test_MATInit>:

int test_MATInit()
{
    return MATInit_test1() + MATInit_test_own();
  105700:	e9 fb fe ff ff       	jmp    105600 <MATInit_test1>
  105705:	66 90                	xchg   %ax,%ax
  105707:	66 90                	xchg   %ax,%ax
  105709:	66 90                	xchg   %ax,%ax
  10570b:	66 90                	xchg   %ax,%ax
  10570d:	66 90                	xchg   %ax,%ax
  10570f:	90                   	nop

00105710 <palloc>:
 *    return 0.
 * 2. Optimize the code using memoization so that you do not have to
 *    scan the allocation table from scratch every time.
 */
unsigned int palloc()
{
  105710:	57                   	push   %edi
  105711:	56                   	push   %esi
  105712:	53                   	push   %ebx
  105713:	e8 fd ac ff ff       	call   100415 <__x86.get_pc_thunk.bx>
  105718:	81 c3 dc 78 00 00    	add    $0x78dc,%ebx
    // TODO
    static unsigned int next_alloc_idx = 0;
    unsigned int i;
    unsigned int nps = get_nps();
  10571e:	e8 fd f5 ff ff       	call   104d20 <get_nps>

    for (i = next_alloc_idx; i < nps; i++) {
  105723:	8b b3 78 cc 44 01    	mov    0x144cc78(%ebx),%esi
  105729:	39 c6                	cmp    %eax,%esi
  10572b:	73 59                	jae    105786 <palloc+0x76>
  10572d:	89 c7                	mov    %eax,%edi
  10572f:	eb 0e                	jmp    10573f <palloc+0x2f>
  105731:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  105738:	83 c6 01             	add    $0x1,%esi
  10573b:	39 f7                	cmp    %esi,%edi
  10573d:	74 41                	je     105780 <palloc+0x70>
        if (at_is_norm(i) && !at_is_allocated(i)) {
  10573f:	83 ec 0c             	sub    $0xc,%esp
  105742:	56                   	push   %esi
  105743:	e8 18 f6 ff ff       	call   104d60 <at_is_norm>
  105748:	83 c4 10             	add    $0x10,%esp
  10574b:	85 c0                	test   %eax,%eax
  10574d:	74 e9                	je     105738 <palloc+0x28>
  10574f:	83 ec 0c             	sub    $0xc,%esp
  105752:	56                   	push   %esi
  105753:	e8 78 f6 ff ff       	call   104dd0 <at_is_allocated>
  105758:	83 c4 10             	add    $0x10,%esp
  10575b:	85 c0                	test   %eax,%eax
  10575d:	75 d9                	jne    105738 <palloc+0x28>
        }
    }

    for (i = 0; i < next_alloc_idx; i++) {
        if (at_is_norm(i) && !at_is_allocated(i)) {
            at_set_allocated(i, 1);
  10575f:	83 ec 08             	sub    $0x8,%esp
  105762:	6a 01                	push   $0x1
  105764:	56                   	push   %esi
  105765:	e8 96 f6 ff ff       	call   104e00 <at_set_allocated>
            next_alloc_idx = i + 1;
  10576a:	8d 46 01             	lea    0x1(%esi),%eax
            return i;
  10576d:	83 c4 10             	add    $0x10,%esp
            next_alloc_idx = i + 1;
  105770:	89 83 78 cc 44 01    	mov    %eax,0x144cc78(%ebx)
        }
    }

    return 0;
}
  105776:	89 f0                	mov    %esi,%eax
  105778:	5b                   	pop    %ebx
  105779:	5e                   	pop    %esi
  10577a:	5f                   	pop    %edi
  10577b:	c3                   	ret
  10577c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    for (i = 0; i < next_alloc_idx; i++) {
  105780:	8b b3 78 cc 44 01    	mov    0x144cc78(%ebx),%esi
  105786:	85 f6                	test   %esi,%esi
  105788:	74 3c                	je     1057c6 <palloc+0xb6>
  10578a:	31 f6                	xor    %esi,%esi
  10578c:	eb 0d                	jmp    10579b <palloc+0x8b>
  10578e:	66 90                	xchg   %ax,%ax
  105790:	83 c6 01             	add    $0x1,%esi
  105793:	3b b3 78 cc 44 01    	cmp    0x144cc78(%ebx),%esi
  105799:	73 2b                	jae    1057c6 <palloc+0xb6>
        if (at_is_norm(i) && !at_is_allocated(i)) {
  10579b:	83 ec 0c             	sub    $0xc,%esp
  10579e:	56                   	push   %esi
  10579f:	e8 bc f5 ff ff       	call   104d60 <at_is_norm>
  1057a4:	83 c4 10             	add    $0x10,%esp
  1057a7:	85 c0                	test   %eax,%eax
  1057a9:	74 e5                	je     105790 <palloc+0x80>
  1057ab:	83 ec 0c             	sub    $0xc,%esp
  1057ae:	56                   	push   %esi
  1057af:	e8 1c f6 ff ff       	call   104dd0 <at_is_allocated>
  1057b4:	83 c4 10             	add    $0x10,%esp
  1057b7:	85 c0                	test   %eax,%eax
  1057b9:	74 a4                	je     10575f <palloc+0x4f>
    for (i = 0; i < next_alloc_idx; i++) {
  1057bb:	83 c6 01             	add    $0x1,%esi
  1057be:	3b b3 78 cc 44 01    	cmp    0x144cc78(%ebx),%esi
  1057c4:	72 d5                	jb     10579b <palloc+0x8b>
    return 0;
  1057c6:	31 f6                	xor    %esi,%esi
}
  1057c8:	5b                   	pop    %ebx
  1057c9:	89 f0                	mov    %esi,%eax
  1057cb:	5e                   	pop    %esi
  1057cc:	5f                   	pop    %edi
  1057cd:	c3                   	ret
  1057ce:	66 90                	xchg   %ax,%ax

001057d0 <pfree>:
 * in the allocation table.
 *
 * Hint: Simple.
 */
void pfree(unsigned int pfree_index)
{
  1057d0:	53                   	push   %ebx
  1057d1:	e8 3f ac ff ff       	call   100415 <__x86.get_pc_thunk.bx>
  1057d6:	81 c3 1e 78 00 00    	add    $0x781e,%ebx
  1057dc:	83 ec 10             	sub    $0x10,%esp
    // TODO
    at_set_allocated(pfree_index, 0);
  1057df:	6a 00                	push   $0x0
  1057e1:	ff 74 24 1c          	push   0x1c(%esp)
  1057e5:	e8 16 f6 ff ff       	call   104e00 <at_set_allocated>
  1057ea:	83 c4 18             	add    $0x18,%esp
  1057ed:	5b                   	pop    %ebx
  1057ee:	c3                   	ret
  1057ef:	90                   	nop

001057f0 <MATOp_test1>:
#define VM_USERHI    0xF0000000
#define VM_USERLO_PI (VM_USERLO / PAGESIZE)
#define VM_USERHI_PI (VM_USERHI / PAGESIZE)

int MATOp_test1()
{
  1057f0:	56                   	push   %esi
  1057f1:	53                   	push   %ebx
  1057f2:	e8 1e ac ff ff       	call   100415 <__x86.get_pc_thunk.bx>
  1057f7:	81 c3 fd 77 00 00    	add    $0x77fd,%ebx
  1057fd:	83 ec 04             	sub    $0x4,%esp
    int page_index = palloc();
  105800:	e8 0b ff ff ff       	call   105710 <palloc>
  105805:	89 c6                	mov    %eax,%esi
    if (page_index < VM_USERLO_PI || VM_USERHI_PI <= page_index) {
  105807:	2d 00 00 04 00       	sub    $0x40000,%eax
  10580c:	3d ff ff 0a 00       	cmp    $0xaffff,%eax
  105811:	0f 87 91 00 00 00    	ja     1058a8 <MATOp_test1+0xb8>
        dprintf("test 1.1 failed: (%d < VM_USERLO_PI || VM_USERHI_PI <= %d)\n", page_index, page_index);
        pfree(page_index);
        return 1;
    }
    if (at_is_norm(page_index) != 1) {
  105817:	83 ec 0c             	sub    $0xc,%esp
  10581a:	56                   	push   %esi
  10581b:	e8 40 f5 ff ff       	call   104d60 <at_is_norm>
  105820:	83 c4 10             	add    $0x10,%esp
  105823:	83 f8 01             	cmp    $0x1,%eax
  105826:	74 38                	je     105860 <MATOp_test1+0x70>
        dprintf("test 1.2 failed: (%d != 1)\n", at_is_norm(page_index));
  105828:	83 ec 0c             	sub    $0xc,%esp
  10582b:	56                   	push   %esi
  10582c:	e8 2f f5 ff ff       	call   104d60 <at_is_norm>
  105831:	5a                   	pop    %edx
  105832:	59                   	pop    %ecx
  105833:	50                   	push   %eax
  105834:	8d 83 45 b9 ff ff    	lea    -0x46bb(%ebx),%eax
  10583a:	50                   	push   %eax
  10583b:	e8 7c d5 ff ff       	call   102dbc <dprintf>
        pfree(page_index);
  105840:	89 34 24             	mov    %esi,(%esp)
  105843:	e8 88 ff ff ff       	call   1057d0 <pfree>
        return 1;
  105848:	83 c4 10             	add    $0x10,%esp
        dprintf("test 1.4 failed: (%d != 0)\n", at_is_allocated(page_index));
        return 1;
    }
    dprintf("test 1 passed.\n");
    return 0;
}
  10584b:	83 c4 04             	add    $0x4,%esp
        return 1;
  10584e:	b8 01 00 00 00       	mov    $0x1,%eax
}
  105853:	5b                   	pop    %ebx
  105854:	5e                   	pop    %esi
  105855:	c3                   	ret
  105856:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10585d:	00 
  10585e:	66 90                	xchg   %ax,%ax
    if (at_is_allocated(page_index) != 1) {
  105860:	83 ec 0c             	sub    $0xc,%esp
  105863:	56                   	push   %esi
  105864:	e8 67 f5 ff ff       	call   104dd0 <at_is_allocated>
  105869:	83 c4 10             	add    $0x10,%esp
  10586c:	83 f8 01             	cmp    $0x1,%eax
  10586f:	75 47                	jne    1058b8 <MATOp_test1+0xc8>
    pfree(page_index);
  105871:	83 ec 0c             	sub    $0xc,%esp
  105874:	56                   	push   %esi
  105875:	e8 56 ff ff ff       	call   1057d0 <pfree>
    if (at_is_allocated(page_index) != 0) {
  10587a:	89 34 24             	mov    %esi,(%esp)
  10587d:	e8 4e f5 ff ff       	call   104dd0 <at_is_allocated>
  105882:	83 c4 10             	add    $0x10,%esp
  105885:	85 c0                	test   %eax,%eax
  105887:	75 47                	jne    1058d0 <MATOp_test1+0xe0>
    dprintf("test 1 passed.\n");
  105889:	83 ec 0c             	sub    $0xc,%esp
  10588c:	8d 83 93 b8 ff ff    	lea    -0x476d(%ebx),%eax
  105892:	50                   	push   %eax
  105893:	e8 24 d5 ff ff       	call   102dbc <dprintf>
    return 0;
  105898:	83 c4 10             	add    $0x10,%esp
  10589b:	31 c0                	xor    %eax,%eax
}
  10589d:	83 c4 04             	add    $0x4,%esp
  1058a0:	5b                   	pop    %ebx
  1058a1:	5e                   	pop    %esi
  1058a2:	c3                   	ret
  1058a3:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        dprintf("test 1.1 failed: (%d < VM_USERLO_PI || VM_USERHI_PI <= %d)\n", page_index, page_index);
  1058a8:	83 ec 04             	sub    $0x4,%esp
  1058ab:	8d 83 a4 bd ff ff    	lea    -0x425c(%ebx),%eax
  1058b1:	56                   	push   %esi
  1058b2:	56                   	push   %esi
  1058b3:	eb 85                	jmp    10583a <MATOp_test1+0x4a>
  1058b5:	8d 76 00             	lea    0x0(%esi),%esi
        dprintf("test 1.3 failed: (%d != 1)\n", at_is_allocated(page_index));
  1058b8:	83 ec 0c             	sub    $0xc,%esp
  1058bb:	56                   	push   %esi
  1058bc:	e8 0f f5 ff ff       	call   104dd0 <at_is_allocated>
  1058c1:	5a                   	pop    %edx
  1058c2:	59                   	pop    %ecx
  1058c3:	50                   	push   %eax
  1058c4:	8d 83 61 b9 ff ff    	lea    -0x469f(%ebx),%eax
  1058ca:	e9 6b ff ff ff       	jmp    10583a <MATOp_test1+0x4a>
  1058cf:	90                   	nop
        dprintf("test 1.4 failed: (%d != 0)\n", at_is_allocated(page_index));
  1058d0:	83 ec 0c             	sub    $0xc,%esp
  1058d3:	56                   	push   %esi
  1058d4:	e8 f7 f4 ff ff       	call   104dd0 <at_is_allocated>
  1058d9:	5a                   	pop    %edx
  1058da:	59                   	pop    %ecx
  1058db:	50                   	push   %eax
  1058dc:	8d 83 7d b9 ff ff    	lea    -0x4683(%ebx),%eax
  1058e2:	50                   	push   %eax
  1058e3:	e8 d4 d4 ff ff       	call   102dbc <dprintf>
        return 1;
  1058e8:	83 c4 10             	add    $0x10,%esp
  1058eb:	e9 5b ff ff ff       	jmp    10584b <MATOp_test1+0x5b>

001058f0 <MATOp_test_own>:
int MATOp_test_own()
{
    // TODO (optional)
    // dprintf("own test passed.\n");
    return 0;
}
  1058f0:	31 c0                	xor    %eax,%eax
  1058f2:	c3                   	ret
  1058f3:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  1058fa:	00 
  1058fb:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

00105900 <test_MATOp>:

int test_MATOp()
{
    return MATOp_test1() + MATOp_test_own();
  105900:	e9 eb fe ff ff       	jmp    1057f0 <MATOp_test1>
  105905:	66 90                	xchg   %ax,%ax
  105907:	66 90                	xchg   %ax,%ax
  105909:	66 90                	xchg   %ax,%ax
  10590b:	66 90                	xchg   %ax,%ax
  10590d:	66 90                	xchg   %ax,%ax
  10590f:	90                   	nop

00105910 <container_init>:
/**
 * Initializes the container data for the root process (the one with index 0).
 * The root process is the one that gets spawned first by the kernel.
 */
void container_init(unsigned int mbi_addr)
{
  105910:	55                   	push   %ebp
  105911:	57                   	push   %edi
  105912:	56                   	push   %esi
  105913:	53                   	push   %ebx
  105914:	e8 fc aa ff ff       	call   100415 <__x86.get_pc_thunk.bx>
  105919:	81 c3 db 76 00 00    	add    $0x76db,%ebx
  10591f:	83 ec 18             	sub    $0x18,%esp
  unsigned int real_quota;
  unsigned int nps;
  unsigned int i;
  // TODO: define your local variables here.
 
  pmem_init(mbi_addr);
  105922:	ff 74 24 2c          	push   0x2c(%esp)
  105926:	e8 65 fb ff ff       	call   105490 <pmem_init>
  /**
   * TODO: compute the available quota and store it into the variable real_quota.
   * It should be the number of the unallocated pages with the normal permission
   * in the physical memory allocation table.
   */
  nps = get_nps();
  10592b:	e8 f0 f3 ff ff       	call   104d20 <get_nps>
  for(i = 0;i < nps; i++){
  105930:	83 c4 10             	add    $0x10,%esp
  105933:	85 c0                	test   %eax,%eax
  105935:	0f 84 95 00 00 00    	je     1059d0 <container_init+0xc0>
  10593b:	89 c7                	mov    %eax,%edi
  10593d:	31 f6                	xor    %esi,%esi
  real_quota = 0;
  10593f:	31 ed                	xor    %ebp,%ebp
  105941:	eb 0c                	jmp    10594f <container_init+0x3f>
  105943:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
  for(i = 0;i < nps; i++){
  105948:	83 c6 01             	add    $0x1,%esi
  10594b:	39 f7                	cmp    %esi,%edi
  10594d:	74 29                	je     105978 <container_init+0x68>
    if(at_is_norm(i) && !at_is_allocated(i)){
  10594f:	83 ec 0c             	sub    $0xc,%esp
  105952:	56                   	push   %esi
  105953:	e8 08 f4 ff ff       	call   104d60 <at_is_norm>
  105958:	83 c4 10             	add    $0x10,%esp
  10595b:	85 c0                	test   %eax,%eax
  10595d:	74 e9                	je     105948 <container_init+0x38>
  10595f:	83 ec 0c             	sub    $0xc,%esp
  105962:	56                   	push   %esi
  105963:	e8 68 f4 ff ff       	call   104dd0 <at_is_allocated>
  105968:	83 c4 10             	add    $0x10,%esp
      real_quota++; 
  10596b:	83 f8 01             	cmp    $0x1,%eax
  10596e:	83 d5 00             	adc    $0x0,%ebp
  for(i = 0;i < nps; i++){
  105971:	83 c6 01             	add    $0x1,%esi
  105974:	39 f7                	cmp    %esi,%edi
  105976:	75 d7                	jne    10594f <container_init+0x3f>
    }
  }
  KERN_DEBUG("\nreal quota: %d\n\n", real_quota);

  CONTAINER[0].quota = real_quota;
  105978:	89 ee                	mov    %ebp,%esi
  KERN_DEBUG("\nreal quota: %d\n\n", real_quota);
  10597a:	8d 83 99 b9 ff ff    	lea    -0x4667(%ebx),%eax
  105980:	55                   	push   %ebp
  105981:	50                   	push   %eax
  105982:	8d 83 e0 bd ff ff    	lea    -0x4220(%ebx),%eax
  105988:	6a 29                	push   $0x29
  10598a:	50                   	push   %eax
  10598b:	e8 59 d1 ff ff       	call   102ae9 <debug_normal>
  CONTAINER[0].quota = real_quota;
  105990:	89 b3 8c cc 44 01    	mov    %esi,0x144cc8c(%ebx)
  CONTAINER[0].usage = 0;
  105996:	c7 83 90 cc 44 01 00 	movl   $0x0,0x144cc90(%ebx)
  10599d:	00 00 00 
  CONTAINER[0].parent = 0;
  1059a0:	c7 83 94 cc 44 01 00 	movl   $0x0,0x144cc94(%ebx)
  1059a7:	00 00 00 
  CONTAINER[0].nchildren = 0;
  1059aa:	c7 83 98 cc 44 01 00 	movl   $0x0,0x144cc98(%ebx)
  1059b1:	00 00 00 
  CONTAINER[0].used = 1;
  1059b4:	c7 83 9c cc 44 01 01 	movl   $0x1,0x144cc9c(%ebx)
  1059bb:	00 00 00 
}
  1059be:	83 c4 1c             	add    $0x1c,%esp
  1059c1:	5b                   	pop    %ebx
  1059c2:	5e                   	pop    %esi
  1059c3:	5f                   	pop    %edi
  1059c4:	5d                   	pop    %ebp
  1059c5:	c3                   	ret
  1059c6:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  1059cd:	00 
  1059ce:	66 90                	xchg   %ax,%ax
  real_quota = 0;
  1059d0:	31 ed                	xor    %ebp,%ebp
  for(i = 0;i < nps; i++){
  1059d2:	31 f6                	xor    %esi,%esi
  1059d4:	eb a4                	jmp    10597a <container_init+0x6a>
  1059d6:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  1059dd:	00 
  1059de:	66 90                	xchg   %ax,%ax

001059e0 <container_get_parent>:
// get the id of parent process of process # [id]
unsigned int container_get_parent(unsigned int id)
{
  // TODO

  return CONTAINER[id].parent;
  1059e0:	e8 2c aa ff ff       	call   100411 <__x86.get_pc_thunk.dx>
  1059e5:	81 c2 0f 76 00 00    	add    $0x760f,%edx
{
  1059eb:	8b 44 24 04          	mov    0x4(%esp),%eax
  return CONTAINER[id].parent;
  1059ef:	8d 04 80             	lea    (%eax,%eax,4),%eax
  1059f2:	8b 84 82 94 cc 44 01 	mov    0x144cc94(%edx,%eax,4),%eax
}
  1059f9:	c3                   	ret
  1059fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00105a00 <container_get_nchildren>:

// get the number of children of process # [id]
unsigned int container_get_nchildren(unsigned int id)
{
  // TODO
  return CONTAINER[id].nchildren;
  105a00:	e8 0c aa ff ff       	call   100411 <__x86.get_pc_thunk.dx>
  105a05:	81 c2 ef 75 00 00    	add    $0x75ef,%edx
{
  105a0b:	8b 44 24 04          	mov    0x4(%esp),%eax
  return CONTAINER[id].nchildren;
  105a0f:	8d 04 80             	lea    (%eax,%eax,4),%eax
  105a12:	8b 84 82 98 cc 44 01 	mov    0x144cc98(%edx,%eax,4),%eax
}
  105a19:	c3                   	ret
  105a1a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00105a20 <container_get_quota>:

// get the maximum memory quota of process # [id]
unsigned int container_get_quota(unsigned int id)
{
  // TODO
  return CONTAINER[id].quota;
  105a20:	e8 ec a9 ff ff       	call   100411 <__x86.get_pc_thunk.dx>
  105a25:	81 c2 cf 75 00 00    	add    $0x75cf,%edx
{
  105a2b:	8b 44 24 04          	mov    0x4(%esp),%eax
  return CONTAINER[id].quota;
  105a2f:	8d 04 80             	lea    (%eax,%eax,4),%eax
  105a32:	8b 84 82 8c cc 44 01 	mov    0x144cc8c(%edx,%eax,4),%eax
}
  105a39:	c3                   	ret
  105a3a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00105a40 <container_get_usage>:

// get the current memory usage of process # [id]
unsigned int container_get_usage(unsigned int id)
{
  // TODO
  return CONTAINER[id].usage;
  105a40:	e8 cc a9 ff ff       	call   100411 <__x86.get_pc_thunk.dx>
  105a45:	81 c2 af 75 00 00    	add    $0x75af,%edx
{
  105a4b:	8b 44 24 04          	mov    0x4(%esp),%eax
  return CONTAINER[id].usage;
  105a4f:	8d 04 80             	lea    (%eax,%eax,4),%eax
  105a52:	8b 84 82 90 cc 44 01 	mov    0x144cc90(%edx,%eax,4),%eax
}
  105a59:	c3                   	ret
  105a5a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00105a60 <container_can_consume>:
// determines whether the process # [id] can consume extra
// [n] pages of memory. If so, returns 1, o.w., returns 0.
unsigned int container_can_consume(unsigned int id, unsigned int n)
{
  // TODO
  return CONTAINER[id].quota - CONTAINER[id].usage >= n;
  105a60:	e8 ac a9 ff ff       	call   100411 <__x86.get_pc_thunk.dx>
  105a65:	81 c2 8f 75 00 00    	add    $0x758f,%edx
{
  105a6b:	8b 44 24 04          	mov    0x4(%esp),%eax
  return CONTAINER[id].quota - CONTAINER[id].usage >= n;
  105a6f:	8d 0c 80             	lea    (%eax,%eax,4),%ecx
  105a72:	8b 84 8a 8c cc 44 01 	mov    0x144cc8c(%edx,%ecx,4),%eax
  105a79:	2b 84 8a 90 cc 44 01 	sub    0x144cc90(%edx,%ecx,4),%eax
  105a80:	3b 44 24 08          	cmp    0x8(%esp),%eax
  105a84:	0f 93 c0             	setae  %al
  105a87:	0f b6 c0             	movzbl %al,%eax
}
  105a8a:	c3                   	ret
  105a8b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

00105a90 <container_split>:
 * dedicates [quota] pages of memory for a new child process.
 * you can assume it is safe to allocate [quota] pages (i.e., the check is already done outside before calling this function)
 * returns the container index for the new child process.
 */
unsigned int container_split(unsigned int id, unsigned int quota)
{
  105a90:	57                   	push   %edi
  105a91:	56                   	push   %esi
  105a92:	53                   	push   %ebx
  105a93:	8b 54 24 10          	mov    0x10(%esp),%edx
  105a97:	e8 79 a9 ff ff       	call   100415 <__x86.get_pc_thunk.bx>
  105a9c:	81 c3 58 75 00 00    	add    $0x7558,%ebx
  105aa2:	8b 74 24 14          	mov    0x14(%esp),%esi
  unsigned int child, nc;

  nc = CONTAINER[id].nchildren;
  105aa6:	8d 04 92             	lea    (%edx,%edx,4),%eax
  105aa9:	8d 8c 83 8c cc 44 01 	lea    0x144cc8c(%ebx,%eax,4),%ecx
  child = id * MAX_CHILDREN + 1 + nc; //container index for the child process
  105ab0:	8d 44 52 01          	lea    0x1(%edx,%edx,2),%eax
  nc = CONTAINER[id].nchildren;
  105ab4:	8b 79 0c             	mov    0xc(%ecx),%edi
  /**
   * TODO: update the container structure of both parent and child process appropriately.
   */
  //update parent
  CONTAINER[id].nchildren++;
  CONTAINER[id].usage += quota;
  105ab7:	01 71 04             	add    %esi,0x4(%ecx)
  child = id * MAX_CHILDREN + 1 + nc; //container index for the child process
  105aba:	01 f8                	add    %edi,%eax
  CONTAINER[id].nchildren++;
  105abc:	83 c7 01             	add    $0x1,%edi
  105abf:	89 79 0c             	mov    %edi,0xc(%ecx)

  //update child
  CONTAINER[child].quota = quota;
  105ac2:	8d 0c 80             	lea    (%eax,%eax,4),%ecx
  105ac5:	c1 e1 02             	shl    $0x2,%ecx
  105ac8:	8d bc 0b 8c cc 44 01 	lea    0x144cc8c(%ebx,%ecx,1),%edi
  105acf:	89 37                	mov    %esi,(%edi)
  CONTAINER[child].usage = 0;
  105ad1:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%edi)
  CONTAINER[child].parent = id;
  105ad8:	89 57 08             	mov    %edx,0x8(%edi)
  CONTAINER[child].nchildren = 0;
  105adb:	c7 47 0c 00 00 00 00 	movl   $0x0,0xc(%edi)
  CONTAINER[child].used = 1;
  105ae2:	c7 47 10 01 00 00 00 	movl   $0x1,0x10(%edi)
  return child;
}
  105ae9:	5b                   	pop    %ebx
  105aea:	5e                   	pop    %esi
  105aeb:	5f                   	pop    %edi
  105aec:	c3                   	ret
  105aed:	8d 76 00             	lea    0x0(%esi),%esi

00105af0 <container_alloc>:
 * allocates one more page for process # [id], given that its usage would not exceed the quota.
 * the container structure should be updated accordingly after the allocation.
 * returns the page index of the allocated page, or 0 in the case of failure.
 */
unsigned int container_alloc(unsigned int id)
{
  105af0:	56                   	push   %esi
  105af1:	53                   	push   %ebx
  105af2:	e8 1e a9 ff ff       	call   100415 <__x86.get_pc_thunk.bx>
  105af7:	81 c3 fd 74 00 00    	add    $0x74fd,%ebx
  105afd:	83 ec 04             	sub    $0x4,%esp
  105b00:	8b 74 24 10          	mov    0x10(%esp),%esi
  /*
   * TODO: implement the function here.
   */
  unsigned int pid; //page id

  pid = palloc();
  105b04:	e8 07 fc ff ff       	call   105710 <palloc>
  if(pid == 0) return 0; //failure
  105b09:	85 c0                	test   %eax,%eax
  105b0b:	74 0b                	je     105b18 <container_alloc+0x28>

  CONTAINER[id].usage++;
  105b0d:	8d 14 b6             	lea    (%esi,%esi,4),%edx
  105b10:	83 84 93 90 cc 44 01 	addl   $0x1,0x144cc90(%ebx,%edx,4)
  105b17:	01 
  return pid;
}
  105b18:	83 c4 04             	add    $0x4,%esp
  105b1b:	5b                   	pop    %ebx
  105b1c:	5e                   	pop    %esi
  105b1d:	c3                   	ret
  105b1e:	66 90                	xchg   %ax,%ax

00105b20 <container_free>:

// frees the physical page and reduces the usage by 1.
void container_free(unsigned int id, unsigned int page_index)
{
  105b20:	56                   	push   %esi
  105b21:	53                   	push   %ebx
  105b22:	e8 ee a8 ff ff       	call   100415 <__x86.get_pc_thunk.bx>
  105b27:	81 c3 cd 74 00 00    	add    $0x74cd,%ebx
  105b2d:	83 ec 10             	sub    $0x10,%esp
  105b30:	8b 74 24 1c          	mov    0x1c(%esp),%esi
  // TODO
  pfree(page_index);
  105b34:	ff 74 24 20          	push   0x20(%esp)
  105b38:	e8 93 fc ff ff       	call   1057d0 <pfree>
  CONTAINER[id].usage--;
  105b3d:	8d 04 b6             	lea    (%esi,%esi,4),%eax
  105b40:	83 ac 83 90 cc 44 01 	subl   $0x1,0x144cc90(%ebx,%eax,4)
  105b47:	01 
  105b48:	83 c4 14             	add    $0x14,%esp
  105b4b:	5b                   	pop    %ebx
  105b4c:	5e                   	pop    %esi
  105b4d:	c3                   	ret
  105b4e:	66 90                	xchg   %ax,%ax

00105b50 <MContainer_test1>:
#include <lib/debug.h>
#include "export.h"

int MContainer_test1()
{
  105b50:	53                   	push   %ebx
  105b51:	e8 bf a8 ff ff       	call   100415 <__x86.get_pc_thunk.bx>
  105b56:	81 c3 9e 74 00 00    	add    $0x749e,%ebx
  105b5c:	83 ec 14             	sub    $0x14,%esp
    if (container_get_quota(0) <= 10000) {
  105b5f:	6a 00                	push   $0x0
  105b61:	e8 ba fe ff ff       	call   105a20 <container_get_quota>
  105b66:	83 c4 10             	add    $0x10,%esp
  105b69:	3d 10 27 00 00       	cmp    $0x2710,%eax
  105b6e:	0f 86 7c 00 00 00    	jbe    105bf0 <MContainer_test1+0xa0>
        dprintf("test 1.1 failed: (%d <= 10000)\n", container_get_quota(0));
        return 1;
    }
    if (container_can_consume(0, 10000) != 1) {
  105b74:	83 ec 08             	sub    $0x8,%esp
  105b77:	68 10 27 00 00       	push   $0x2710
  105b7c:	6a 00                	push   $0x0
  105b7e:	e8 dd fe ff ff       	call   105a60 <container_can_consume>
  105b83:	83 c4 10             	add    $0x10,%esp
  105b86:	83 f8 01             	cmp    $0x1,%eax
  105b89:	75 35                	jne    105bc0 <MContainer_test1+0x70>
        dprintf("test 1.2 failed: (%d != 1)\n", container_can_consume(0, 10000));
        return 1;
    }
    if (container_can_consume(0, 10000000) != 0) {
  105b8b:	83 ec 08             	sub    $0x8,%esp
  105b8e:	68 80 96 98 00       	push   $0x989680
  105b93:	6a 00                	push   $0x0
  105b95:	e8 c6 fe ff ff       	call   105a60 <container_can_consume>
  105b9a:	83 c4 10             	add    $0x10,%esp
  105b9d:	85 c0                	test   %eax,%eax
  105b9f:	75 6f                	jne    105c10 <MContainer_test1+0xc0>
        dprintf("test 1.3 failed: (%d != 0)\n", container_can_consume(0, 10000000));
        return 1;
    }
    dprintf("test 1 passed.\n");
  105ba1:	83 ec 0c             	sub    $0xc,%esp
  105ba4:	8d 83 93 b8 ff ff    	lea    -0x476d(%ebx),%eax
  105baa:	50                   	push   %eax
  105bab:	e8 0c d2 ff ff       	call   102dbc <dprintf>
    return 0;
  105bb0:	83 c4 10             	add    $0x10,%esp
  105bb3:	31 c0                	xor    %eax,%eax
}
  105bb5:	83 c4 08             	add    $0x8,%esp
  105bb8:	5b                   	pop    %ebx
  105bb9:	c3                   	ret
  105bba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        dprintf("test 1.2 failed: (%d != 1)\n", container_can_consume(0, 10000));
  105bc0:	83 ec 08             	sub    $0x8,%esp
  105bc3:	68 10 27 00 00       	push   $0x2710
  105bc8:	6a 00                	push   $0x0
  105bca:	e8 91 fe ff ff       	call   105a60 <container_can_consume>
  105bcf:	5a                   	pop    %edx
  105bd0:	59                   	pop    %ecx
  105bd1:	50                   	push   %eax
  105bd2:	8d 83 45 b9 ff ff    	lea    -0x46bb(%ebx),%eax
  105bd8:	50                   	push   %eax
  105bd9:	e8 de d1 ff ff       	call   102dbc <dprintf>
        return 1;
  105bde:	83 c4 10             	add    $0x10,%esp
}
  105be1:	83 c4 08             	add    $0x8,%esp
        return 1;
  105be4:	b8 01 00 00 00       	mov    $0x1,%eax
}
  105be9:	5b                   	pop    %ebx
  105bea:	c3                   	ret
  105beb:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        dprintf("test 1.1 failed: (%d <= 10000)\n", container_get_quota(0));
  105bf0:	83 ec 0c             	sub    $0xc,%esp
  105bf3:	6a 00                	push   $0x0
  105bf5:	e8 26 fe ff ff       	call   105a20 <container_get_quota>
  105bfa:	5a                   	pop    %edx
  105bfb:	59                   	pop    %ecx
  105bfc:	50                   	push   %eax
  105bfd:	8d 83 04 be ff ff    	lea    -0x41fc(%ebx),%eax
  105c03:	50                   	push   %eax
  105c04:	e8 b3 d1 ff ff       	call   102dbc <dprintf>
        return 1;
  105c09:	83 c4 10             	add    $0x10,%esp
  105c0c:	eb d3                	jmp    105be1 <MContainer_test1+0x91>
  105c0e:	66 90                	xchg   %ax,%ax
        dprintf("test 1.3 failed: (%d != 0)\n", container_can_consume(0, 10000000));
  105c10:	83 ec 08             	sub    $0x8,%esp
  105c13:	68 80 96 98 00       	push   $0x989680
  105c18:	6a 00                	push   $0x0
  105c1a:	e8 41 fe ff ff       	call   105a60 <container_can_consume>
  105c1f:	5a                   	pop    %edx
  105c20:	59                   	pop    %ecx
  105c21:	50                   	push   %eax
  105c22:	8d 83 ab b9 ff ff    	lea    -0x4655(%ebx),%eax
  105c28:	50                   	push   %eax
  105c29:	e8 8e d1 ff ff       	call   102dbc <dprintf>
        return 1;
  105c2e:	83 c4 10             	add    $0x10,%esp
  105c31:	eb ae                	jmp    105be1 <MContainer_test1+0x91>
  105c33:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  105c3a:	00 
  105c3b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

00105c40 <MContainer_test2>:

int MContainer_test2()
{
  105c40:	55                   	push   %ebp
  105c41:	57                   	push   %edi
  105c42:	56                   	push   %esi
  105c43:	53                   	push   %ebx
  105c44:	e8 cc a7 ff ff       	call   100415 <__x86.get_pc_thunk.bx>
  105c49:	81 c3 ab 73 00 00    	add    $0x73ab,%ebx
  105c4f:	83 ec 38             	sub    $0x38,%esp
    unsigned int old_usage = container_get_usage(0);
  105c52:	6a 00                	push   $0x0
  105c54:	e8 e7 fd ff ff       	call   105a40 <container_get_usage>
    unsigned int old_nchildren = container_get_nchildren(0);
  105c59:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    unsigned int old_usage = container_get_usage(0);
  105c60:	89 c5                	mov    %eax,%ebp
    unsigned int old_nchildren = container_get_nchildren(0);
  105c62:	e8 99 fd ff ff       	call   105a00 <container_get_nchildren>
  105c67:	89 c7                	mov    %eax,%edi
    unsigned int chid = container_split(0, 100);
  105c69:	58                   	pop    %eax
  105c6a:	5a                   	pop    %edx
  105c6b:	6a 64                	push   $0x64
  105c6d:	6a 00                	push   $0x0
  105c6f:	e8 1c fe ff ff       	call   105a90 <container_split>
    if (container_get_quota(chid) != 100
  105c74:	89 04 24             	mov    %eax,(%esp)
    unsigned int chid = container_split(0, 100);
  105c77:	89 c6                	mov    %eax,%esi
    if (container_get_quota(chid) != 100
  105c79:	e8 a2 fd ff ff       	call   105a20 <container_get_quota>
  105c7e:	83 c4 10             	add    $0x10,%esp
  105c81:	83 f8 64             	cmp    $0x64,%eax
  105c84:	0f 84 8e 00 00 00    	je     105d18 <MContainer_test2+0xd8>
        || container_get_parent(chid) != 0
        || container_get_usage(chid) != 0
        || container_get_nchildren(chid) != 0
        || container_get_usage(0) != old_usage + 100
  105c8a:	8d 45 64             	lea    0x64(%ebp),%eax
  105c8d:	89 44 24 10          	mov    %eax,0x10(%esp)
        || container_get_nchildren(0) != old_nchildren + 1) {
  105c91:	8d 47 01             	lea    0x1(%edi),%eax
  105c94:	89 44 24 0c          	mov    %eax,0xc(%esp)
        dprintf("test 2.1 failed:\n"
  105c98:	83 ec 0c             	sub    $0xc,%esp
  105c9b:	6a 00                	push   $0x0
  105c9d:	e8 5e fd ff ff       	call   105a00 <container_get_nchildren>
  105ca2:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  105ca9:	89 44 24 2c          	mov    %eax,0x2c(%esp)
  105cad:	e8 8e fd ff ff       	call   105a40 <container_get_usage>
  105cb2:	89 34 24             	mov    %esi,(%esp)
  105cb5:	89 44 24 28          	mov    %eax,0x28(%esp)
  105cb9:	e8 42 fd ff ff       	call   105a00 <container_get_nchildren>
  105cbe:	89 34 24             	mov    %esi,(%esp)
  105cc1:	89 44 24 24          	mov    %eax,0x24(%esp)
  105cc5:	e8 76 fd ff ff       	call   105a40 <container_get_usage>
  105cca:	89 34 24             	mov    %esi,(%esp)
  105ccd:	89 c5                	mov    %eax,%ebp
  105ccf:	e8 0c fd ff ff       	call   1059e0 <container_get_parent>
  105cd4:	89 34 24             	mov    %esi,(%esp)
  105cd7:	89 c7                	mov    %eax,%edi
  105cd9:	e8 42 fd ff ff       	call   105a20 <container_get_quota>
  105cde:	5e                   	pop    %esi
  105cdf:	ff 74 24 18          	push   0x18(%esp)
  105ce3:	8b 54 24 2c          	mov    0x2c(%esp),%edx
  105ce7:	52                   	push   %edx
  105ce8:	ff 74 24 24          	push   0x24(%esp)
  105cec:	8b 4c 24 30          	mov    0x30(%esp),%ecx
  105cf0:	51                   	push   %ecx
  105cf1:	ff 74 24 30          	push   0x30(%esp)
  105cf5:	55                   	push   %ebp
  105cf6:	57                   	push   %edi
  105cf7:	50                   	push   %eax
  105cf8:	8d 83 24 be ff ff    	lea    -0x41dc(%ebx),%eax
  105cfe:	50                   	push   %eax
  105cff:	e8 b8 d0 ff ff       	call   102dbc <dprintf>
                container_get_parent(chid),
                container_get_usage(chid),
                container_get_nchildren(chid),
                container_get_usage(0), old_usage + 100,
                container_get_nchildren(0), old_nchildren + 1);
        return 1;
  105d04:	83 c4 30             	add    $0x30,%esp
  105d07:	b8 01 00 00 00       	mov    $0x1,%eax
        dprintf("test 2.2 failed: (%d != 1)\n", container_get_usage(chid));
        return 1;
    }
    dprintf("test 2 passed.\n");
    return 0;
}
  105d0c:	83 c4 2c             	add    $0x2c,%esp
  105d0f:	5b                   	pop    %ebx
  105d10:	5e                   	pop    %esi
  105d11:	5f                   	pop    %edi
  105d12:	5d                   	pop    %ebp
  105d13:	c3                   	ret
  105d14:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        || container_get_parent(chid) != 0
  105d18:	83 ec 0c             	sub    $0xc,%esp
        || container_get_usage(0) != old_usage + 100
  105d1b:	83 c5 64             	add    $0x64,%ebp
        || container_get_parent(chid) != 0
  105d1e:	56                   	push   %esi
  105d1f:	e8 bc fc ff ff       	call   1059e0 <container_get_parent>
        || container_get_nchildren(0) != old_nchildren + 1) {
  105d24:	8d 57 01             	lea    0x1(%edi),%edx
        || container_get_usage(0) != old_usage + 100
  105d27:	89 6c 24 20          	mov    %ebp,0x20(%esp)
        || container_get_nchildren(0) != old_nchildren + 1) {
  105d2b:	89 54 24 1c          	mov    %edx,0x1c(%esp)
        || container_get_parent(chid) != 0
  105d2f:	83 c4 10             	add    $0x10,%esp
  105d32:	85 c0                	test   %eax,%eax
  105d34:	0f 85 5e ff ff ff    	jne    105c98 <MContainer_test2+0x58>
        || container_get_usage(chid) != 0
  105d3a:	83 ec 0c             	sub    $0xc,%esp
  105d3d:	56                   	push   %esi
  105d3e:	e8 fd fc ff ff       	call   105a40 <container_get_usage>
  105d43:	83 c4 10             	add    $0x10,%esp
  105d46:	85 c0                	test   %eax,%eax
  105d48:	0f 85 4a ff ff ff    	jne    105c98 <MContainer_test2+0x58>
        || container_get_nchildren(chid) != 0
  105d4e:	83 ec 0c             	sub    $0xc,%esp
  105d51:	56                   	push   %esi
  105d52:	e8 a9 fc ff ff       	call   105a00 <container_get_nchildren>
  105d57:	83 c4 10             	add    $0x10,%esp
  105d5a:	85 c0                	test   %eax,%eax
  105d5c:	0f 85 36 ff ff ff    	jne    105c98 <MContainer_test2+0x58>
        || container_get_usage(0) != old_usage + 100
  105d62:	83 ec 0c             	sub    $0xc,%esp
  105d65:	6a 00                	push   $0x0
  105d67:	e8 d4 fc ff ff       	call   105a40 <container_get_usage>
  105d6c:	83 c4 10             	add    $0x10,%esp
  105d6f:	39 e8                	cmp    %ebp,%eax
  105d71:	0f 85 21 ff ff ff    	jne    105c98 <MContainer_test2+0x58>
        || container_get_nchildren(0) != old_nchildren + 1) {
  105d77:	83 ec 0c             	sub    $0xc,%esp
  105d7a:	6a 00                	push   $0x0
  105d7c:	e8 7f fc ff ff       	call   105a00 <container_get_nchildren>
  105d81:	8b 4c 24 1c          	mov    0x1c(%esp),%ecx
  105d85:	83 c4 10             	add    $0x10,%esp
  105d88:	39 c8                	cmp    %ecx,%eax
  105d8a:	0f 85 08 ff ff ff    	jne    105c98 <MContainer_test2+0x58>
    container_alloc(chid);
  105d90:	83 ec 0c             	sub    $0xc,%esp
  105d93:	56                   	push   %esi
  105d94:	e8 57 fd ff ff       	call   105af0 <container_alloc>
    if (container_get_usage(chid) != 1) {
  105d99:	89 34 24             	mov    %esi,(%esp)
  105d9c:	e8 9f fc ff ff       	call   105a40 <container_get_usage>
  105da1:	83 c4 10             	add    $0x10,%esp
  105da4:	83 f8 01             	cmp    $0x1,%eax
  105da7:	74 20                	je     105dc9 <MContainer_test2+0x189>
        dprintf("test 2.2 failed: (%d != 1)\n", container_get_usage(chid));
  105da9:	83 ec 0c             	sub    $0xc,%esp
  105dac:	56                   	push   %esi
  105dad:	e8 8e fc ff ff       	call   105a40 <container_get_usage>
  105db2:	5a                   	pop    %edx
  105db3:	59                   	pop    %ecx
  105db4:	50                   	push   %eax
  105db5:	8d 83 c7 b9 ff ff    	lea    -0x4639(%ebx),%eax
  105dbb:	50                   	push   %eax
  105dbc:	e8 fb cf ff ff       	call   102dbc <dprintf>
        return 1;
  105dc1:	83 c4 10             	add    $0x10,%esp
  105dc4:	e9 3e ff ff ff       	jmp    105d07 <MContainer_test2+0xc7>
    dprintf("test 2 passed.\n");
  105dc9:	83 ec 0c             	sub    $0xc,%esp
  105dcc:	8d 83 a3 b8 ff ff    	lea    -0x475d(%ebx),%eax
  105dd2:	50                   	push   %eax
  105dd3:	e8 e4 cf ff ff       	call   102dbc <dprintf>
    return 0;
  105dd8:	83 c4 10             	add    $0x10,%esp
  105ddb:	31 c0                	xor    %eax,%eax
  105ddd:	e9 2a ff ff ff       	jmp    105d0c <MContainer_test2+0xcc>
  105de2:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  105de9:	00 
  105dea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00105df0 <MContainer_test_own>:
int MContainer_test_own()
{
    // TODO (optional)
    // dprintf("own test passed.\n");
    return 0;
}
  105df0:	31 c0                	xor    %eax,%eax
  105df2:	c3                   	ret
  105df3:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  105dfa:	00 
  105dfb:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

00105e00 <test_MContainer>:

int test_MContainer()
{
  105e00:	53                   	push   %ebx
  105e01:	83 ec 08             	sub    $0x8,%esp
    return MContainer_test1() + MContainer_test2() + MContainer_test_own();
  105e04:	e8 47 fd ff ff       	call   105b50 <MContainer_test1>
  105e09:	89 c3                	mov    %eax,%ebx
  105e0b:	e8 30 fe ff ff       	call   105c40 <MContainer_test2>
}
  105e10:	83 c4 08             	add    $0x8,%esp
    return MContainer_test1() + MContainer_test2() + MContainer_test_own();
  105e13:	01 d8                	add    %ebx,%eax
}
  105e15:	5b                   	pop    %ebx
  105e16:	c3                   	ret
  105e17:	66 90                	xchg   %ax,%ax
  105e19:	66 90                	xchg   %ax,%ax
  105e1b:	66 90                	xchg   %ax,%ax
  105e1d:	66 90                	xchg   %ax,%ax
  105e1f:	90                   	nop

00105e20 <set_pdir_base>:
unsigned int IDPTbl[1024][1024] gcc_aligned(PAGESIZE);


// sets the CR3 register with the start address of the page structure for process # [index]
void set_pdir_base(unsigned int index)
{
  105e20:	53                   	push   %ebx
  105e21:	e8 ef a5 ff ff       	call   100415 <__x86.get_pc_thunk.bx>
  105e26:	81 c3 ce 71 00 00    	add    $0x71ce,%ebx
  105e2c:	83 ec 14             	sub    $0x14,%esp
    // TODO
    set_cr3(PDirPool[index]);
  105e2f:	8b 44 24 1c          	mov    0x1c(%esp),%eax
  105e33:	c1 e0 0c             	shl    $0xc,%eax
  105e36:	8d 84 03 0c e0 84 01 	lea    0x184e00c(%ebx,%eax,1),%eax
  105e3d:	50                   	push   %eax
  105e3e:	e8 bc b3 ff ff       	call   1011ff <set_cr3>
}
  105e43:	83 c4 18             	add    $0x18,%esp
  105e46:	5b                   	pop    %ebx
  105e47:	c3                   	ret
  105e48:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  105e4f:	00 

00105e50 <get_pdir_entry>:
// this can be used to test whether the page directory entry is mapped
unsigned int get_pdir_entry(unsigned int proc_index, unsigned int pde_index)
{
    // TODO??? return pagetable base address of entire 
    // TODO TODO TODO
    return (unsigned int)PDirPool[proc_index][pde_index];
  105e50:	e8 bc a5 ff ff       	call   100411 <__x86.get_pc_thunk.dx>
  105e55:	81 c2 9f 71 00 00    	add    $0x719f,%edx
  105e5b:	8b 44 24 04          	mov    0x4(%esp),%eax
  105e5f:	c1 e0 0a             	shl    $0xa,%eax
  105e62:	03 44 24 08          	add    0x8(%esp),%eax
  105e66:	8b 84 82 0c e0 84 01 	mov    0x184e00c(%edx,%eax,4),%eax
}   
  105e6d:	c3                   	ret
  105e6e:	66 90                	xchg   %ax,%ax

00105e70 <set_pdir_entry>:
void set_pdir_entry(unsigned int proc_index, unsigned int pde_index, unsigned int page_index)
{
    // TODO
    // bit 31-12 is the base address of page table
    unsigned int value = (page_index << 12) | PT_PERM_PTU; 
    PDirPool[proc_index][pde_index] = (char *)value;
  105e70:	e8 e8 f0 ff ff       	call   104f5d <__x86.get_pc_thunk.cx>
  105e75:	81 c1 7f 71 00 00    	add    $0x717f,%ecx
    unsigned int value = (page_index << 12) | PT_PERM_PTU; 
  105e7b:	8b 54 24 0c          	mov    0xc(%esp),%edx
    PDirPool[proc_index][pde_index] = (char *)value;
  105e7f:	8b 44 24 04          	mov    0x4(%esp),%eax
    unsigned int value = (page_index << 12) | PT_PERM_PTU; 
  105e83:	c1 e2 0c             	shl    $0xc,%edx
    PDirPool[proc_index][pde_index] = (char *)value;
  105e86:	c1 e0 0a             	shl    $0xa,%eax
  105e89:	03 44 24 08          	add    0x8(%esp),%eax
    unsigned int value = (page_index << 12) | PT_PERM_PTU; 
  105e8d:	83 ca 07             	or     $0x7,%edx
  105e90:	89 94 81 0c e0 84 01 	mov    %edx,0x184e00c(%ecx,%eax,4)
    
}   
  105e97:	c3                   	ret
  105e98:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  105e9f:	00 

00105ea0 <set_pdir_entry_identity>:
void set_pdir_entry_identity(unsigned int proc_index, unsigned int pde_index)
{   
    // TODO
    // the address of IDPTbl[pde_index] is aligned to 4096
    // so the low 12bits are all 0
    unsigned int value = (unsigned int)IDPTbl[pde_index];
  105ea0:	e8 b8 f0 ff ff       	call   104f5d <__x86.get_pc_thunk.cx>
  105ea5:	81 c1 4f 71 00 00    	add    $0x714f,%ecx
{   
  105eab:	53                   	push   %ebx
  105eac:	8b 5c 24 0c          	mov    0xc(%esp),%ebx
    unsigned int value = (unsigned int)IDPTbl[pde_index];
  105eb0:	89 d8                	mov    %ebx,%eax
  105eb2:	c1 e0 0c             	shl    $0xc,%eax
  105eb5:	8d 94 01 0c e0 44 01 	lea    0x144e00c(%ecx,%eax,1),%edx
    value |= PT_PERM_PTU;
    PDirPool[proc_index][pde_index] = (char *)value;
  105ebc:	8b 44 24 08          	mov    0x8(%esp),%eax
    value |= PT_PERM_PTU;
  105ec0:	83 ca 07             	or     $0x7,%edx
    PDirPool[proc_index][pde_index] = (char *)value;
  105ec3:	c1 e0 0a             	shl    $0xa,%eax
  105ec6:	01 d8                	add    %ebx,%eax
}   
  105ec8:	5b                   	pop    %ebx
    value |= PT_PERM_PTU;
  105ec9:	89 94 81 0c e0 84 01 	mov    %edx,0x184e00c(%ecx,%eax,4)
}   
  105ed0:	c3                   	ret
  105ed1:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  105ed8:	00 
  105ed9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00105ee0 <rmv_pdir_entry>:
// removes specified page directory entry (set the page directory entry to 0).
// don't forget to cast the value to (char *).
void rmv_pdir_entry(unsigned int proc_index, unsigned int pde_index)
{
    // TODO
    PDirPool[proc_index][pde_index] = (char *)0x00000000;
  105ee0:	e8 2c a5 ff ff       	call   100411 <__x86.get_pc_thunk.dx>
  105ee5:	81 c2 0f 71 00 00    	add    $0x710f,%edx
  105eeb:	8b 44 24 04          	mov    0x4(%esp),%eax
  105eef:	c1 e0 0a             	shl    $0xa,%eax
  105ef2:	03 44 24 08          	add    0x8(%esp),%eax
  105ef6:	c7 84 82 0c e0 84 01 	movl   $0x0,0x184e00c(%edx,%eax,4)
  105efd:	00 00 00 00 
}   
  105f01:	c3                   	ret
  105f02:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  105f09:	00 
  105f0a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00105f10 <get_ptbl_entry>:
// returns the specified page table entry.
// do not forget that the permission info is also stored in the page directory entries.
unsigned int get_ptbl_entry(unsigned int proc_index, unsigned int pde_index, unsigned int pte_index)
{   // PdirPool[proc_index][pde_index] stores the bass address of a page table
    // pte_index * 4 means each page table entry is 4 byte.
    unsigned int pte_addr = (unsigned int )PDirPool[proc_index][pde_index];
  105f10:	e8 fc a4 ff ff       	call   100411 <__x86.get_pc_thunk.dx>
  105f15:	81 c2 df 70 00 00    	add    $0x70df,%edx
  105f1b:	8b 44 24 04          	mov    0x4(%esp),%eax
  105f1f:	c1 e0 0a             	shl    $0xa,%eax
  105f22:	03 44 24 08          	add    0x8(%esp),%eax
  105f26:	8b 84 82 0c e0 84 01 	mov    0x184e00c(%edx,%eax,4),%eax
    pte_addr &= 0xfffff000; //remove perm bits
    pte_addr += pte_index << 2;//
    return *(unsigned int *)pte_addr; 
  105f2d:	8b 54 24 0c          	mov    0xc(%esp),%edx
    pte_addr &= 0xfffff000; //remove perm bits
  105f31:	25 00 f0 ff ff       	and    $0xfffff000,%eax
    return *(unsigned int *)pte_addr; 
  105f36:	8b 04 90             	mov    (%eax,%edx,4),%eax
}
  105f39:	c3                   	ret
  105f3a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00105f40 <set_ptbl_entry>:
void set_ptbl_entry(unsigned int proc_index, unsigned int pde_index, unsigned int pte_index, unsigned int page_index, unsigned int perm)
{   
    // TODO
    // each page table entry is 4 byte, char * is also 4 byte
    unsigned int* pte;
    unsigned int pte_addr =  (unsigned int )PDirPool[proc_index][pde_index];
  105f40:	e8 cc a4 ff ff       	call   100411 <__x86.get_pc_thunk.dx>
  105f45:	81 c2 af 70 00 00    	add    $0x70af,%edx
  105f4b:	8b 44 24 04          	mov    0x4(%esp),%eax
    pte_addr += pte_index << 2;

    pte = (unsigned int *)pte_addr;
    *pte &= 0x00000000;
    *pte = page_index << 12;
    *pte |= (perm & 0x00000fff);
  105f4f:	8b 4c 24 14          	mov    0x14(%esp),%ecx
    unsigned int pte_addr =  (unsigned int )PDirPool[proc_index][pde_index];
  105f53:	c1 e0 0a             	shl    $0xa,%eax
  105f56:	03 44 24 08          	add    0x8(%esp),%eax
    *pte |= (perm & 0x00000fff);
  105f5a:	81 e1 ff 0f 00 00    	and    $0xfff,%ecx
    unsigned int pte_addr =  (unsigned int )PDirPool[proc_index][pde_index];
  105f60:	8b 94 82 0c e0 84 01 	mov    0x184e00c(%edx,%eax,4),%edx
    *pte = page_index << 12;
  105f67:	8b 44 24 10          	mov    0x10(%esp),%eax
  105f6b:	c1 e0 0c             	shl    $0xc,%eax
    pte_addr &= 0xfffff000;//rmove perm bits
  105f6e:	81 e2 00 f0 ff ff    	and    $0xfffff000,%edx
    *pte |= (perm & 0x00000fff);
  105f74:	09 c8                	or     %ecx,%eax
  105f76:	8b 4c 24 0c          	mov    0xc(%esp),%ecx
  105f7a:	89 04 8a             	mov    %eax,(%edx,%ecx,4)
}   
  105f7d:	c3                   	ret
  105f7e:	66 90                	xchg   %ax,%ax

00105f80 <set_ptbl_entry_identity>:
// you should also set the given permission
void set_ptbl_entry_identity(unsigned int pde_index, unsigned int pte_index, unsigned int perm)
{
    // TODO
    IDPTbl[pde_index][pte_index] = ((pde_index << 10) + pte_index) << 12;
    IDPTbl[pde_index][pte_index] |= perm;
  105f80:	e8 d8 ef ff ff       	call   104f5d <__x86.get_pc_thunk.cx>
  105f85:	81 c1 6f 70 00 00    	add    $0x706f,%ecx
  105f8b:	8b 44 24 04          	mov    0x4(%esp),%eax
  105f8f:	c1 e0 0a             	shl    $0xa,%eax
  105f92:	03 44 24 08          	add    0x8(%esp),%eax
    IDPTbl[pde_index][pte_index] = ((pde_index << 10) + pte_index) << 12;
  105f96:	89 c2                	mov    %eax,%edx
  105f98:	c1 e2 0c             	shl    $0xc,%edx
    IDPTbl[pde_index][pte_index] |= perm;
  105f9b:	0b 54 24 0c          	or     0xc(%esp),%edx
  105f9f:	89 94 81 0c e0 44 01 	mov    %edx,0x144e00c(%ecx,%eax,4)
}
  105fa6:	c3                   	ret
  105fa7:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  105fae:	00 
  105faf:	90                   	nop

00105fb0 <rmv_ptbl_entry>:
// sets the specified page table entry to 0
void rmv_ptbl_entry(unsigned int proc_index, unsigned int pde_index, unsigned int pte_index)
{
    // TODO   
    unsigned int * pte;
    unsigned int pte_addr = (unsigned int)PDirPool[proc_index][pde_index];
  105fb0:	e8 5c a4 ff ff       	call   100411 <__x86.get_pc_thunk.dx>
  105fb5:	81 c2 3f 70 00 00    	add    $0x703f,%edx
  105fbb:	8b 44 24 04          	mov    0x4(%esp),%eax
  105fbf:	c1 e0 0a             	shl    $0xa,%eax
  105fc2:	03 44 24 08          	add    0x8(%esp),%eax
  105fc6:	8b 84 82 0c e0 84 01 	mov    0x184e00c(%edx,%eax,4),%eax
    pte_addr &= 0xfffff000;//remove perm bits
    pte_addr += pte_index << 2;
    pte = (unsigned int *)pte_addr;
    *pte &= 0x00000000;
  105fcd:	8b 54 24 0c          	mov    0xc(%esp),%edx
    pte_addr &= 0xfffff000;//remove perm bits
  105fd1:	25 00 f0 ff ff       	and    $0xfffff000,%eax
    *pte &= 0x00000000;
  105fd6:	c7 04 90 00 00 00 00 	movl   $0x0,(%eax,%edx,4)
  105fdd:	c3                   	ret
  105fde:	66 90                	xchg   %ax,%ax

00105fe0 <MPTIntro_test1>:

extern char *PDirPool[NUM_IDS][1024];
extern unsigned int IDPTbl[1024][1024];

int MPTIntro_test1()
{
  105fe0:	56                   	push   %esi
  105fe1:	53                   	push   %ebx
  105fe2:	e8 2e a4 ff ff       	call   100415 <__x86.get_pc_thunk.bx>
  105fe7:	81 c3 0d 70 00 00    	add    $0x700d,%ebx
  105fed:	83 ec 10             	sub    $0x10,%esp
    set_pdir_base(0);
  105ff0:	6a 00                	push   $0x0
  105ff2:	e8 29 fe ff ff       	call   105e20 <set_pdir_base>
    if ((unsigned int) PDirPool[0] != rcr3()) {
  105ff7:	e8 0a da ff ff       	call   103a06 <rcr3>
  105ffc:	c7 c6 00 b0 95 01    	mov    $0x195b000,%esi
  106002:	83 c4 10             	add    $0x10,%esp
  106005:	39 f0                	cmp    %esi,%eax
  106007:	74 27                	je     106030 <MPTIntro_test1+0x50>
        dprintf("test 1.1 failed: (%d != %d)\n",
  106009:	e8 f8 d9 ff ff       	call   103a06 <rcr3>
  10600e:	83 ec 04             	sub    $0x4,%esp
  106011:	50                   	push   %eax
  106012:	8d 83 e3 b9 ff ff    	lea    -0x461d(%ebx),%eax
  106018:	56                   	push   %esi
  106019:	50                   	push   %eax
  10601a:	e8 9d cd ff ff       	call   102dbc <dprintf>
                (unsigned int) PDirPool[0], rcr3());
        return 1;
  10601f:	83 c4 10             	add    $0x10,%esp
  106022:	b8 01 00 00 00       	mov    $0x1,%eax
                get_pdir_entry(1, 1), get_pdir_entry(1, 2));
        return 1;
    }
    dprintf("test 1 passed.\n");
    return 0;
}
  106027:	83 c4 04             	add    $0x4,%esp
  10602a:	5b                   	pop    %ebx
  10602b:	5e                   	pop    %esi
  10602c:	c3                   	ret
  10602d:	8d 76 00             	lea    0x0(%esi),%esi
    set_pdir_entry_identity(1, 1);
  106030:	83 ec 08             	sub    $0x8,%esp
  106033:	6a 01                	push   $0x1
  106035:	6a 01                	push   $0x1
  106037:	e8 64 fe ff ff       	call   105ea0 <set_pdir_entry_identity>
    set_pdir_entry(1, 2, 100);
  10603c:	83 c4 0c             	add    $0xc,%esp
  10603f:	6a 64                	push   $0x64
  106041:	6a 02                	push   $0x2
  106043:	6a 01                	push   $0x1
  106045:	e8 26 fe ff ff       	call   105e70 <set_pdir_entry>
    if (get_pdir_entry(1, 1) != (unsigned int) IDPTbl[1] + 7) {
  10604a:	58                   	pop    %eax
  10604b:	5a                   	pop    %edx
  10604c:	6a 01                	push   $0x1
  10604e:	6a 01                	push   $0x1
  106050:	e8 fb fd ff ff       	call   105e50 <get_pdir_entry>
  106055:	c7 c6 00 b0 55 01    	mov    $0x155b000,%esi
  10605b:	83 c4 10             	add    $0x10,%esp
  10605e:	81 c6 07 10 00 00    	add    $0x1007,%esi
  106064:	39 c6                	cmp    %eax,%esi
  106066:	74 28                	je     106090 <MPTIntro_test1+0xb0>
        dprintf("test 1.2 failed: (%d != %d)\n",
  106068:	83 ec 08             	sub    $0x8,%esp
  10606b:	6a 01                	push   $0x1
  10606d:	6a 01                	push   $0x1
  10606f:	e8 dc fd ff ff       	call   105e50 <get_pdir_entry>
  106074:	83 c4 0c             	add    $0xc,%esp
  106077:	56                   	push   %esi
  106078:	50                   	push   %eax
  106079:	8d 83 00 ba ff ff    	lea    -0x4600(%ebx),%eax
  10607f:	50                   	push   %eax
  106080:	e8 37 cd ff ff       	call   102dbc <dprintf>
        return 1;
  106085:	83 c4 10             	add    $0x10,%esp
  106088:	eb 98                	jmp    106022 <MPTIntro_test1+0x42>
  10608a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    if (get_pdir_entry(1, 2) != 409607) {
  106090:	83 ec 08             	sub    $0x8,%esp
  106093:	6a 02                	push   $0x2
  106095:	6a 01                	push   $0x1
  106097:	e8 b4 fd ff ff       	call   105e50 <get_pdir_entry>
  10609c:	83 c4 10             	add    $0x10,%esp
  10609f:	3d 07 40 06 00       	cmp    $0x64007,%eax
  1060a4:	75 72                	jne    106118 <MPTIntro_test1+0x138>
    rmv_pdir_entry(1, 1);
  1060a6:	83 ec 08             	sub    $0x8,%esp
  1060a9:	6a 01                	push   $0x1
  1060ab:	6a 01                	push   $0x1
  1060ad:	e8 2e fe ff ff       	call   105ee0 <rmv_pdir_entry>
    rmv_pdir_entry(1, 2);
  1060b2:	59                   	pop    %ecx
  1060b3:	5e                   	pop    %esi
  1060b4:	6a 02                	push   $0x2
  1060b6:	6a 01                	push   $0x1
  1060b8:	e8 23 fe ff ff       	call   105ee0 <rmv_pdir_entry>
    if (get_pdir_entry(1, 1) != 0 || get_pdir_entry(1, 2) != 0) {
  1060bd:	58                   	pop    %eax
  1060be:	5a                   	pop    %edx
  1060bf:	6a 01                	push   $0x1
  1060c1:	6a 01                	push   $0x1
  1060c3:	e8 88 fd ff ff       	call   105e50 <get_pdir_entry>
  1060c8:	83 c4 10             	add    $0x10,%esp
  1060cb:	85 c0                	test   %eax,%eax
  1060cd:	75 13                	jne    1060e2 <MPTIntro_test1+0x102>
  1060cf:	83 ec 08             	sub    $0x8,%esp
  1060d2:	6a 02                	push   $0x2
  1060d4:	6a 01                	push   $0x1
  1060d6:	e8 75 fd ff ff       	call   105e50 <get_pdir_entry>
  1060db:	83 c4 10             	add    $0x10,%esp
  1060de:	85 c0                	test   %eax,%eax
  1060e0:	74 5e                	je     106140 <MPTIntro_test1+0x160>
        dprintf("test 1.4 failed: (%d != 0 || %d != 0)\n",
  1060e2:	83 ec 08             	sub    $0x8,%esp
  1060e5:	6a 02                	push   $0x2
  1060e7:	6a 01                	push   $0x1
  1060e9:	e8 62 fd ff ff       	call   105e50 <get_pdir_entry>
  1060ee:	89 c6                	mov    %eax,%esi
  1060f0:	58                   	pop    %eax
  1060f1:	5a                   	pop    %edx
  1060f2:	6a 01                	push   $0x1
  1060f4:	6a 01                	push   $0x1
  1060f6:	e8 55 fd ff ff       	call   105e50 <get_pdir_entry>
  1060fb:	83 c4 0c             	add    $0xc,%esp
  1060fe:	56                   	push   %esi
  1060ff:	50                   	push   %eax
  106100:	8d 83 a0 be ff ff    	lea    -0x4160(%ebx),%eax
  106106:	50                   	push   %eax
  106107:	e8 b0 cc ff ff       	call   102dbc <dprintf>
        return 1;
  10610c:	83 c4 10             	add    $0x10,%esp
  10610f:	e9 0e ff ff ff       	jmp    106022 <MPTIntro_test1+0x42>
  106114:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        dprintf("test 1.3 failed: (%d != 409607)\n", get_pdir_entry(1, 2));
  106118:	83 ec 08             	sub    $0x8,%esp
  10611b:	6a 02                	push   $0x2
  10611d:	6a 01                	push   $0x1
  10611f:	e8 2c fd ff ff       	call   105e50 <get_pdir_entry>
  106124:	59                   	pop    %ecx
  106125:	5e                   	pop    %esi
  106126:	50                   	push   %eax
  106127:	8d 83 7c be ff ff    	lea    -0x4184(%ebx),%eax
  10612d:	50                   	push   %eax
  10612e:	e8 89 cc ff ff       	call   102dbc <dprintf>
        return 1;
  106133:	83 c4 10             	add    $0x10,%esp
  106136:	e9 e7 fe ff ff       	jmp    106022 <MPTIntro_test1+0x42>
  10613b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
    dprintf("test 1 passed.\n");
  106140:	83 ec 0c             	sub    $0xc,%esp
  106143:	8d 83 93 b8 ff ff    	lea    -0x476d(%ebx),%eax
  106149:	50                   	push   %eax
  10614a:	e8 6d cc ff ff       	call   102dbc <dprintf>
    return 0;
  10614f:	83 c4 10             	add    $0x10,%esp
  106152:	31 c0                	xor    %eax,%eax
  106154:	e9 ce fe ff ff       	jmp    106027 <MPTIntro_test1+0x47>
  106159:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00106160 <MPTIntro_test2>:

int MPTIntro_test2()
{
  106160:	53                   	push   %ebx
  106161:	e8 af a2 ff ff       	call   100415 <__x86.get_pc_thunk.bx>
  106166:	81 c3 8e 6e 00 00    	add    $0x6e8e,%ebx
  10616c:	83 ec 0c             	sub    $0xc,%esp
    set_pdir_entry(1, 1, 10000);
  10616f:	68 10 27 00 00       	push   $0x2710
  106174:	6a 01                	push   $0x1
  106176:	6a 01                	push   $0x1
  106178:	e8 f3 fc ff ff       	call   105e70 <set_pdir_entry>
    set_ptbl_entry(1, 1, 1, 10000, 259);
  10617d:	c7 04 24 03 01 00 00 	movl   $0x103,(%esp)
  106184:	68 10 27 00 00       	push   $0x2710
  106189:	6a 01                	push   $0x1
  10618b:	6a 01                	push   $0x1
  10618d:	6a 01                	push   $0x1
  10618f:	e8 ac fd ff ff       	call   105f40 <set_ptbl_entry>
    if (get_ptbl_entry(1, 1, 1) != 40960259) {
  106194:	83 c4 1c             	add    $0x1c,%esp
  106197:	6a 01                	push   $0x1
  106199:	6a 01                	push   $0x1
  10619b:	6a 01                	push   $0x1
  10619d:	e8 6e fd ff ff       	call   105f10 <get_ptbl_entry>
  1061a2:	83 c4 10             	add    $0x10,%esp
  1061a5:	3d 03 01 71 02       	cmp    $0x2710103,%eax
  1061aa:	74 34                	je     1061e0 <MPTIntro_test2+0x80>
        dprintf("test 2.1 failed: (%d != 40960259)\n", get_ptbl_entry(1, 1, 1));
  1061ac:	83 ec 04             	sub    $0x4,%esp
  1061af:	6a 01                	push   $0x1
  1061b1:	6a 01                	push   $0x1
  1061b3:	6a 01                	push   $0x1
  1061b5:	e8 56 fd ff ff       	call   105f10 <get_ptbl_entry>
  1061ba:	5a                   	pop    %edx
  1061bb:	59                   	pop    %ecx
  1061bc:	50                   	push   %eax
  1061bd:	8d 83 c8 be ff ff    	lea    -0x4138(%ebx),%eax
  1061c3:	50                   	push   %eax
  1061c4:	e8 f3 cb ff ff       	call   102dbc <dprintf>
        return 1;
  1061c9:	83 c4 10             	add    $0x10,%esp
        return 1;
    }
    rmv_pdir_entry(1, 1);
    dprintf("test 2 passed.\n");
    return 0;
}
  1061cc:	83 c4 08             	add    $0x8,%esp
        return 1;
  1061cf:	b8 01 00 00 00       	mov    $0x1,%eax
}
  1061d4:	5b                   	pop    %ebx
  1061d5:	c3                   	ret
  1061d6:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  1061dd:	00 
  1061de:	66 90                	xchg   %ax,%ax
    rmv_ptbl_entry(1, 1, 1);
  1061e0:	83 ec 04             	sub    $0x4,%esp
  1061e3:	6a 01                	push   $0x1
  1061e5:	6a 01                	push   $0x1
  1061e7:	6a 01                	push   $0x1
  1061e9:	e8 c2 fd ff ff       	call   105fb0 <rmv_ptbl_entry>
    if (get_ptbl_entry(1, 1, 1) != 0) {
  1061ee:	83 c4 0c             	add    $0xc,%esp
  1061f1:	6a 01                	push   $0x1
  1061f3:	6a 01                	push   $0x1
  1061f5:	6a 01                	push   $0x1
  1061f7:	e8 14 fd ff ff       	call   105f10 <get_ptbl_entry>
  1061fc:	83 c4 10             	add    $0x10,%esp
  1061ff:	85 c0                	test   %eax,%eax
  106201:	75 2d                	jne    106230 <MPTIntro_test2+0xd0>
    rmv_pdir_entry(1, 1);
  106203:	83 ec 08             	sub    $0x8,%esp
  106206:	6a 01                	push   $0x1
  106208:	6a 01                	push   $0x1
  10620a:	e8 d1 fc ff ff       	call   105ee0 <rmv_pdir_entry>
    dprintf("test 2 passed.\n");
  10620f:	8d 83 a3 b8 ff ff    	lea    -0x475d(%ebx),%eax
  106215:	89 04 24             	mov    %eax,(%esp)
  106218:	e8 9f cb ff ff       	call   102dbc <dprintf>
    return 0;
  10621d:	83 c4 10             	add    $0x10,%esp
  106220:	31 c0                	xor    %eax,%eax
}
  106222:	83 c4 08             	add    $0x8,%esp
  106225:	5b                   	pop    %ebx
  106226:	c3                   	ret
  106227:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10622e:	00 
  10622f:	90                   	nop
        dprintf("test 2.2 failed: (%d != 0)\n", get_ptbl_entry(1, 1, 1));
  106230:	83 ec 04             	sub    $0x4,%esp
  106233:	6a 01                	push   $0x1
  106235:	6a 01                	push   $0x1
  106237:	6a 01                	push   $0x1
  106239:	e8 d2 fc ff ff       	call   105f10 <get_ptbl_entry>
  10623e:	5a                   	pop    %edx
  10623f:	59                   	pop    %ecx
  106240:	50                   	push   %eax
  106241:	8d 83 1d ba ff ff    	lea    -0x45e3(%ebx),%eax
  106247:	50                   	push   %eax
  106248:	e8 6f cb ff ff       	call   102dbc <dprintf>
        return 1;
  10624d:	83 c4 10             	add    $0x10,%esp
  106250:	e9 77 ff ff ff       	jmp    1061cc <MPTIntro_test2+0x6c>
  106255:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10625c:	00 
  10625d:	8d 76 00             	lea    0x0(%esi),%esi

00106260 <MPTIntro_test_own>:
int MPTIntro_test_own()
{
    // TODO (optional)
    // dprintf("own test passed.\n");
    return 0;
}
  106260:	31 c0                	xor    %eax,%eax
  106262:	c3                   	ret
  106263:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10626a:	00 
  10626b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

00106270 <test_MPTIntro>:

int test_MPTIntro()
{
  106270:	53                   	push   %ebx
  106271:	83 ec 08             	sub    $0x8,%esp
    return MPTIntro_test1() + MPTIntro_test2() + MPTIntro_test_own();
  106274:	e8 67 fd ff ff       	call   105fe0 <MPTIntro_test1>
  106279:	89 c3                	mov    %eax,%ebx
  10627b:	e8 e0 fe ff ff       	call   106160 <MPTIntro_test2>
}
  106280:	83 c4 08             	add    $0x8,%esp
    return MPTIntro_test1() + MPTIntro_test2() + MPTIntro_test_own();
  106283:	01 d8                	add    %ebx,%eax
}
  106285:	5b                   	pop    %ebx
  106286:	c3                   	ret
  106287:	66 90                	xchg   %ax,%ax
  106289:	66 90                	xchg   %ax,%ax
  10628b:	66 90                	xchg   %ax,%ax
  10628d:	66 90                	xchg   %ax,%ax
  10628f:	90                   	nop

00106290 <get_ptbl_entry_by_va>:
 * Returns the page table entry corresponding to the virtual address,
 * according to the page structure of process # [proc_index].
 * Returns 0 if the mapping does not exist.
 */
unsigned int get_ptbl_entry_by_va(unsigned int proc_index, unsigned int vaddr)
{
  106290:	55                   	push   %ebp
  106291:	57                   	push   %edi
  106292:	56                   	push   %esi
  106293:	53                   	push   %ebx
  106294:	e8 7c a1 ff ff       	call   100415 <__x86.get_pc_thunk.bx>
  106299:	81 c3 5b 6d 00 00    	add    $0x6d5b,%ebx
  10629f:	83 ec 14             	sub    $0x14,%esp
  1062a2:	8b 74 24 2c          	mov    0x2c(%esp),%esi
  1062a6:	8b 7c 24 28          	mov    0x28(%esp),%edi
    // TODO
    unsigned int pde_index = (vaddr & VA_PDIR_MASK) >> 22;
  1062aa:	89 f5                	mov    %esi,%ebp
  1062ac:	c1 ed 16             	shr    $0x16,%ebp
    unsigned int pte_index = (vaddr & VA_PTBL_MASK) >> 12;

    unsigned int pde = get_pdir_entry(proc_index, pde_index);
  1062af:	55                   	push   %ebp
  1062b0:	57                   	push   %edi
  1062b1:	e8 9a fb ff ff       	call   105e50 <get_pdir_entry>
    // check the present bit of page directory entry
    if ((pde & PTE_P) == 0) {
  1062b6:	83 c4 10             	add    $0x10,%esp
  1062b9:	a8 01                	test   $0x1,%al
  1062bb:	75 13                	jne    1062d0 <get_ptbl_entry_by_va+0x40>
    //check the present bit of page table entry
    if ((pte & PTE_P) == 0) {
        return 0;
    }
    return pte;
}         
  1062bd:	83 c4 0c             	add    $0xc,%esp
        return 0;
  1062c0:	31 c0                	xor    %eax,%eax
}         
  1062c2:	5b                   	pop    %ebx
  1062c3:	5e                   	pop    %esi
  1062c4:	5f                   	pop    %edi
  1062c5:	5d                   	pop    %ebp
  1062c6:	c3                   	ret
  1062c7:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  1062ce:	00 
  1062cf:	90                   	nop
    unsigned int pte_index = (vaddr & VA_PTBL_MASK) >> 12;
  1062d0:	c1 ee 0c             	shr    $0xc,%esi
    unsigned int pte = get_ptbl_entry(proc_index, pde_index, pte_index);
  1062d3:	83 ec 04             	sub    $0x4,%esp
    unsigned int pte_index = (vaddr & VA_PTBL_MASK) >> 12;
  1062d6:	81 e6 ff 03 00 00    	and    $0x3ff,%esi
    unsigned int pte = get_ptbl_entry(proc_index, pde_index, pte_index);
  1062dc:	56                   	push   %esi
  1062dd:	55                   	push   %ebp
  1062de:	57                   	push   %edi
  1062df:	e8 2c fc ff ff       	call   105f10 <get_ptbl_entry>
    if ((pte & PTE_P) == 0) {
  1062e4:	83 c4 10             	add    $0x10,%esp
  1062e7:	a8 01                	test   $0x1,%al
  1062e9:	74 d2                	je     1062bd <get_ptbl_entry_by_va+0x2d>
}         
  1062eb:	83 c4 0c             	add    $0xc,%esp
  1062ee:	5b                   	pop    %ebx
  1062ef:	5e                   	pop    %esi
  1062f0:	5f                   	pop    %edi
  1062f1:	5d                   	pop    %ebp
  1062f2:	c3                   	ret
  1062f3:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  1062fa:	00 
  1062fb:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

00106300 <get_pdir_entry_by_va>:

// returns the page directory entry corresponding to the given virtual address
unsigned int get_pdir_entry_by_va(unsigned int proc_index, unsigned int vaddr)
{
  106300:	53                   	push   %ebx
  106301:	e8 0f a1 ff ff       	call   100415 <__x86.get_pc_thunk.bx>
  106306:	81 c3 ee 6c 00 00    	add    $0x6cee,%ebx
  10630c:	83 ec 10             	sub    $0x10,%esp
    // TODO
    unsigned int pde_index = (vaddr & VA_PDIR_MASK) >> 22;
  10630f:	8b 44 24 1c          	mov    0x1c(%esp),%eax
  106313:	c1 e8 16             	shr    $0x16,%eax
    unsigned int pde = get_pdir_entry(proc_index, pde_index);
  106316:	50                   	push   %eax
  106317:	ff 74 24 1c          	push   0x1c(%esp)
  10631b:	e8 30 fb ff ff       	call   105e50 <get_pdir_entry>
    return pde;
}
  106320:	83 c4 18             	add    $0x18,%esp
  106323:	5b                   	pop    %ebx
  106324:	c3                   	ret
  106325:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10632c:	00 
  10632d:	8d 76 00             	lea    0x0(%esi),%esi

00106330 <rmv_ptbl_entry_by_va>:

// removes the page table entry for the given virtual address
void rmv_ptbl_entry_by_va(unsigned int proc_index, unsigned int vaddr)
{
  106330:	55                   	push   %ebp
  106331:	57                   	push   %edi
  106332:	56                   	push   %esi
  106333:	53                   	push   %ebx
  106334:	e8 dc a0 ff ff       	call   100415 <__x86.get_pc_thunk.bx>
  106339:	81 c3 bb 6c 00 00    	add    $0x6cbb,%ebx
  10633f:	83 ec 14             	sub    $0x14,%esp
  106342:	8b 74 24 2c          	mov    0x2c(%esp),%esi
  106346:	8b 7c 24 28          	mov    0x28(%esp),%edi
    // TODO
    unsigned int pde_index = (vaddr & VA_PDIR_MASK) >> 22;
  10634a:	89 f5                	mov    %esi,%ebp
  10634c:	c1 ed 16             	shr    $0x16,%ebp
    unsigned int pte_index = (vaddr & VA_PTBL_MASK) >> 12;

    unsigned int pde = get_pdir_entry(proc_index, pde_index);
  10634f:	55                   	push   %ebp
  106350:	57                   	push   %edi
  106351:	e8 fa fa ff ff       	call   105e50 <get_pdir_entry>
    // check the present bit of page directory entry
    if ((pde & PTE_P) == 0) {
  106356:	83 c4 10             	add    $0x10,%esp
  106359:	a8 01                	test   $0x1,%al
  10635b:	74 17                	je     106374 <rmv_ptbl_entry_by_va+0x44>
    unsigned int pte_index = (vaddr & VA_PTBL_MASK) >> 12;
  10635d:	c1 ee 0c             	shr    $0xc,%esi
    // the page directory entry is not valid for address translation
        return;
    }
    rmv_ptbl_entry(proc_index, pde_index, pte_index);
  106360:	83 ec 04             	sub    $0x4,%esp
    unsigned int pte_index = (vaddr & VA_PTBL_MASK) >> 12;
  106363:	81 e6 ff 03 00 00    	and    $0x3ff,%esi
    rmv_ptbl_entry(proc_index, pde_index, pte_index);
  106369:	56                   	push   %esi
  10636a:	55                   	push   %ebp
  10636b:	57                   	push   %edi
  10636c:	e8 3f fc ff ff       	call   105fb0 <rmv_ptbl_entry>
  106371:	83 c4 10             	add    $0x10,%esp
}
  106374:	83 c4 0c             	add    $0xc,%esp
  106377:	5b                   	pop    %ebx
  106378:	5e                   	pop    %esi
  106379:	5f                   	pop    %edi
  10637a:	5d                   	pop    %ebp
  10637b:	c3                   	ret
  10637c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00106380 <rmv_pdir_entry_by_va>:

// removes the page directory entry for the given virtual address
void rmv_pdir_entry_by_va(unsigned int proc_index, unsigned int vaddr)
{
  106380:	53                   	push   %ebx
  106381:	e8 8f a0 ff ff       	call   100415 <__x86.get_pc_thunk.bx>
  106386:	81 c3 6e 6c 00 00    	add    $0x6c6e,%ebx
  10638c:	83 ec 10             	sub    $0x10,%esp
    // TODO
    unsigned int pde_index = (vaddr & VA_PDIR_MASK) >> 22;
  10638f:	8b 44 24 1c          	mov    0x1c(%esp),%eax
  106393:	c1 e8 16             	shr    $0x16,%eax
    rmv_pdir_entry(proc_index, pde_index);
  106396:	50                   	push   %eax
  106397:	ff 74 24 1c          	push   0x1c(%esp)
  10639b:	e8 40 fb ff ff       	call   105ee0 <rmv_pdir_entry>
}
  1063a0:	83 c4 18             	add    $0x18,%esp
  1063a3:	5b                   	pop    %ebx
  1063a4:	c3                   	ret
  1063a5:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  1063ac:	00 
  1063ad:	8d 76 00             	lea    0x0(%esi),%esi

001063b0 <set_ptbl_entry_by_va>:

// maps the virtual address [vaddr] to the physical page # [page_index] with permission [perm]
// you do not need to worry about the page directory entry. just map the page table entry.
void set_ptbl_entry_by_va(unsigned int proc_index, unsigned int vaddr, unsigned int page_index, unsigned int perm)
{
  1063b0:	53                   	push   %ebx
  1063b1:	e8 5f a0 ff ff       	call   100415 <__x86.get_pc_thunk.bx>
  1063b6:	81 c3 3e 6c 00 00    	add    $0x6c3e,%ebx
  1063bc:	83 ec 14             	sub    $0x14,%esp
  1063bf:	8b 44 24 20          	mov    0x20(%esp),%eax
    // TODO
    unsigned int pde_index = (vaddr & VA_PDIR_MASK) >> 22;
    unsigned int pte_index = (vaddr & VA_PTBL_MASK) >> 12;
    set_ptbl_entry(proc_index, pde_index, pte_index, page_index, perm);
  1063c3:	ff 74 24 28          	push   0x28(%esp)
  1063c7:	ff 74 24 28          	push   0x28(%esp)
    unsigned int pte_index = (vaddr & VA_PTBL_MASK) >> 12;
  1063cb:	89 c2                	mov    %eax,%edx
    unsigned int pde_index = (vaddr & VA_PDIR_MASK) >> 22;
  1063cd:	c1 e8 16             	shr    $0x16,%eax
    unsigned int pte_index = (vaddr & VA_PTBL_MASK) >> 12;
  1063d0:	c1 ea 0c             	shr    $0xc,%edx
  1063d3:	81 e2 ff 03 00 00    	and    $0x3ff,%edx
    set_ptbl_entry(proc_index, pde_index, pte_index, page_index, perm);
  1063d9:	52                   	push   %edx
  1063da:	50                   	push   %eax
  1063db:	ff 74 24 2c          	push   0x2c(%esp)
  1063df:	e8 5c fb ff ff       	call   105f40 <set_ptbl_entry>
}
  1063e4:	83 c4 28             	add    $0x28,%esp
  1063e7:	5b                   	pop    %ebx
  1063e8:	c3                   	ret
  1063e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

001063f0 <set_pdir_entry_by_va>:

// registers the mapping from [vaddr] to physical page # [page_index] in the page directory
void set_pdir_entry_by_va(unsigned int proc_index, unsigned int vaddr, unsigned int page_index)
{
  1063f0:	53                   	push   %ebx
  1063f1:	e8 1f a0 ff ff       	call   100415 <__x86.get_pc_thunk.bx>
  1063f6:	81 c3 fe 6b 00 00    	add    $0x6bfe,%ebx
  1063fc:	83 ec 0c             	sub    $0xc,%esp
    // TODO
    unsigned int pde_index = (vaddr & VA_PDIR_MASK) >> 22;
    set_pdir_entry(proc_index, pde_index, page_index);
  1063ff:	ff 74 24 1c          	push   0x1c(%esp)
    unsigned int pde_index = (vaddr & VA_PDIR_MASK) >> 22;
  106403:	8b 44 24 1c          	mov    0x1c(%esp),%eax
  106407:	c1 e8 16             	shr    $0x16,%eax
    set_pdir_entry(proc_index, pde_index, page_index);
  10640a:	50                   	push   %eax
  10640b:	ff 74 24 1c          	push   0x1c(%esp)
  10640f:	e8 5c fa ff ff       	call   105e70 <set_pdir_entry>
}   
  106414:	83 c4 18             	add    $0x18,%esp
  106417:	5b                   	pop    %ebx
  106418:	c3                   	ret
  106419:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00106420 <idptbl_init>:

// initializes the identity page table
// the permission for the kernel memory should be PTE_P, PTE_W, and PTE_G,
// while the permission for the rest should be PTE_P and PTE_W.
void idptbl_init(unsigned int mbi_adr)
{
  106420:	56                   	push   %esi
    //
    container_init(mbi_adr);

    // TODO
    unsigned int addr;
    for (addr = 0; addr < 0xFFFFF000; addr += PAGESIZE) {
  106421:	31 f6                	xor    %esi,%esi
{
  106423:	53                   	push   %ebx
  106424:	e8 ec 9f ff ff       	call   100415 <__x86.get_pc_thunk.bx>
  106429:	81 c3 cb 6b 00 00    	add    $0x6bcb,%ebx
  10642f:	83 ec 10             	sub    $0x10,%esp
    container_init(mbi_adr);
  106432:	ff 74 24 1c          	push   0x1c(%esp)
  106436:	e8 d5 f4 ff ff       	call   105910 <container_init>
  10643b:	83 c4 10             	add    $0x10,%esp
  10643e:	66 90                	xchg   %ax,%ax
        unsigned int pde_index = (addr & VA_PDIR_MASK) >> 22;
        unsigned int pte_index = (addr & VA_PTBL_MASK) >> 12;
  106440:	89 f0                	mov    %esi,%eax
        unsigned int pde_index = (addr & VA_PDIR_MASK) >> 22;
  106442:	89 f2                	mov    %esi,%edx
        if (addr < VM_USERLO || addr >= VM_USERHI) {
  106444:	8d 8e 00 00 00 c0    	lea    -0x40000000(%esi),%ecx
        unsigned int pte_index = (addr & VA_PTBL_MASK) >> 12;
  10644a:	c1 e8 0c             	shr    $0xc,%eax
        unsigned int pde_index = (addr & VA_PDIR_MASK) >> 22;
  10644d:	c1 ea 16             	shr    $0x16,%edx
        unsigned int pte_index = (addr & VA_PTBL_MASK) >> 12;
  106450:	25 ff 03 00 00       	and    $0x3ff,%eax
        if (addr < VM_USERLO || addr >= VM_USERHI) {
  106455:	81 f9 ff ff ff af    	cmp    $0xafffffff,%ecx
  10645b:	76 26                	jbe    106483 <idptbl_init+0x63>
            //kernel pages
            set_ptbl_entry_identity(pde_index, pte_index, PT_PERM_PWG);
  10645d:	83 ec 04             	sub    $0x4,%esp
    for (addr = 0; addr < 0xFFFFF000; addr += PAGESIZE) {
  106460:	81 c6 00 10 00 00    	add    $0x1000,%esi
            set_ptbl_entry_identity(pde_index, pte_index, PT_PERM_PWG);
  106466:	68 03 01 00 00       	push   $0x103
  10646b:	50                   	push   %eax
  10646c:	52                   	push   %edx
  10646d:	e8 0e fb ff ff       	call   105f80 <set_ptbl_entry_identity>
    for (addr = 0; addr < 0xFFFFF000; addr += PAGESIZE) {
  106472:	83 c4 10             	add    $0x10,%esp
  106475:	81 fe 00 f0 ff ff    	cmp    $0xfffff000,%esi
  10647b:	75 c3                	jne    106440 <idptbl_init+0x20>
        }else {
            //not kernel pages
            set_ptbl_entry_identity(pde_index, pte_index, PT_PERM_PW);
        }
    }
  10647d:	83 c4 04             	add    $0x4,%esp
  106480:	5b                   	pop    %ebx
  106481:	5e                   	pop    %esi
  106482:	c3                   	ret
            set_ptbl_entry_identity(pde_index, pte_index, PT_PERM_PW);
  106483:	51                   	push   %ecx
    for (addr = 0; addr < 0xFFFFF000; addr += PAGESIZE) {
  106484:	81 c6 00 10 00 00    	add    $0x1000,%esi
            set_ptbl_entry_identity(pde_index, pte_index, PT_PERM_PW);
  10648a:	6a 03                	push   $0x3
  10648c:	50                   	push   %eax
  10648d:	52                   	push   %edx
  10648e:	e8 ed fa ff ff       	call   105f80 <set_ptbl_entry_identity>
    for (addr = 0; addr < 0xFFFFF000; addr += PAGESIZE) {
  106493:	83 c4 10             	add    $0x10,%esp
  106496:	eb a8                	jmp    106440 <idptbl_init+0x20>
  106498:	66 90                	xchg   %ax,%ax
  10649a:	66 90                	xchg   %ax,%ax
  10649c:	66 90                	xchg   %ax,%ax
  10649e:	66 90                	xchg   %ax,%ax

001064a0 <MPTOp_test1>:
#include <lib/debug.h>
#include "export.h"

int MPTOp_test1()
{
  1064a0:	53                   	push   %ebx
  1064a1:	e8 6f 9f ff ff       	call   100415 <__x86.get_pc_thunk.bx>
  1064a6:	81 c3 4e 6b 00 00    	add    $0x6b4e,%ebx
  1064ac:	83 ec 10             	sub    $0x10,%esp
    unsigned int vaddr = 4096 * 1024 * 300;
    if (get_ptbl_entry_by_va(10, vaddr) != 0) {
  1064af:	68 00 00 00 4b       	push   $0x4b000000
  1064b4:	6a 0a                	push   $0xa
  1064b6:	e8 d5 fd ff ff       	call   106290 <get_ptbl_entry_by_va>
  1064bb:	83 c4 10             	add    $0x10,%esp
  1064be:	85 c0                	test   %eax,%eax
  1064c0:	0f 85 0a 01 00 00    	jne    1065d0 <MPTOp_test1+0x130>
        dprintf("test 1.1 failed: (%d != 0)\n", get_ptbl_entry_by_va(10, vaddr));
        return 1;
    }
    if (get_pdir_entry_by_va(10, vaddr) != 0) {
  1064c6:	83 ec 08             	sub    $0x8,%esp
  1064c9:	68 00 00 00 4b       	push   $0x4b000000
  1064ce:	6a 0a                	push   $0xa
  1064d0:	e8 2b fe ff ff       	call   106300 <get_pdir_entry_by_va>
  1064d5:	83 c4 10             	add    $0x10,%esp
  1064d8:	85 c0                	test   %eax,%eax
  1064da:	0f 85 c0 00 00 00    	jne    1065a0 <MPTOp_test1+0x100>
        dprintf("test 1.2 failed: (%d != 0)\n", get_pdir_entry_by_va(10, vaddr));
        return 1;
    }
    set_pdir_entry_by_va(10, vaddr, 100);
  1064e0:	83 ec 04             	sub    $0x4,%esp
  1064e3:	6a 64                	push   $0x64
  1064e5:	68 00 00 00 4b       	push   $0x4b000000
  1064ea:	6a 0a                	push   $0xa
  1064ec:	e8 ff fe ff ff       	call   1063f0 <set_pdir_entry_by_va>
    set_ptbl_entry_by_va(10, vaddr, 100, 259);
  1064f1:	68 03 01 00 00       	push   $0x103
  1064f6:	6a 64                	push   $0x64
  1064f8:	68 00 00 00 4b       	push   $0x4b000000
  1064fd:	6a 0a                	push   $0xa
  1064ff:	e8 ac fe ff ff       	call   1063b0 <set_ptbl_entry_by_va>
    if (get_ptbl_entry_by_va(10, vaddr) == 0) {
  106504:	83 c4 18             	add    $0x18,%esp
  106507:	68 00 00 00 4b       	push   $0x4b000000
  10650c:	6a 0a                	push   $0xa
  10650e:	e8 7d fd ff ff       	call   106290 <get_ptbl_entry_by_va>
  106513:	83 c4 10             	add    $0x10,%esp
  106516:	85 c0                	test   %eax,%eax
  106518:	0f 84 02 01 00 00    	je     106620 <MPTOp_test1+0x180>
        dprintf("test 1.3 failed: (%d == 0)\n", get_ptbl_entry_by_va(10, vaddr));
        return 1;
    }
    if (get_pdir_entry_by_va(10, vaddr) == 0) {
  10651e:	83 ec 08             	sub    $0x8,%esp
  106521:	68 00 00 00 4b       	push   $0x4b000000
  106526:	6a 0a                	push   $0xa
  106528:	e8 d3 fd ff ff       	call   106300 <get_pdir_entry_by_va>
  10652d:	83 c4 10             	add    $0x10,%esp
  106530:	85 c0                	test   %eax,%eax
  106532:	0f 84 c0 00 00 00    	je     1065f8 <MPTOp_test1+0x158>
        dprintf("test 1.4 failed: (%d == 0)\n", get_pdir_entry_by_va(10, vaddr));
        return 1;
    }
    rmv_ptbl_entry_by_va(10, vaddr);
  106538:	83 ec 08             	sub    $0x8,%esp
  10653b:	68 00 00 00 4b       	push   $0x4b000000
  106540:	6a 0a                	push   $0xa
  106542:	e8 e9 fd ff ff       	call   106330 <rmv_ptbl_entry_by_va>
    rmv_pdir_entry_by_va(10, vaddr);
  106547:	58                   	pop    %eax
  106548:	5a                   	pop    %edx
  106549:	68 00 00 00 4b       	push   $0x4b000000
  10654e:	6a 0a                	push   $0xa
  106550:	e8 2b fe ff ff       	call   106380 <rmv_pdir_entry_by_va>
    if (get_ptbl_entry_by_va(10, vaddr) != 0) {
  106555:	59                   	pop    %ecx
  106556:	58                   	pop    %eax
  106557:	68 00 00 00 4b       	push   $0x4b000000
  10655c:	6a 0a                	push   $0xa
  10655e:	e8 2d fd ff ff       	call   106290 <get_ptbl_entry_by_va>
  106563:	83 c4 10             	add    $0x10,%esp
  106566:	85 c0                	test   %eax,%eax
  106568:	0f 85 e2 00 00 00    	jne    106650 <MPTOp_test1+0x1b0>
        dprintf("test 1.5 failed: (%d != 0)\n", get_ptbl_entry_by_va(10, vaddr));
        return 1;
    }
    if (get_pdir_entry_by_va(10, vaddr) != 0) {
  10656e:	83 ec 08             	sub    $0x8,%esp
  106571:	68 00 00 00 4b       	push   $0x4b000000
  106576:	6a 0a                	push   $0xa
  106578:	e8 83 fd ff ff       	call   106300 <get_pdir_entry_by_va>
  10657d:	83 c4 10             	add    $0x10,%esp
  106580:	85 c0                	test   %eax,%eax
  106582:	0f 85 f8 00 00 00    	jne    106680 <MPTOp_test1+0x1e0>
        dprintf("test 1.6 failed: (%d != 0)\n", get_pdir_entry_by_va(10, vaddr));
        return 1;
    }
    dprintf("test 1 passed.\n");
  106588:	83 ec 0c             	sub    $0xc,%esp
  10658b:	8d 83 93 b8 ff ff    	lea    -0x476d(%ebx),%eax
  106591:	50                   	push   %eax
  106592:	e8 25 c8 ff ff       	call   102dbc <dprintf>
    return 0;
  106597:	83 c4 10             	add    $0x10,%esp
  10659a:	31 c0                	xor    %eax,%eax
  10659c:	eb 28                	jmp    1065c6 <MPTOp_test1+0x126>
  10659e:	66 90                	xchg   %ax,%ax
        dprintf("test 1.2 failed: (%d != 0)\n", get_pdir_entry_by_va(10, vaddr));
  1065a0:	83 ec 08             	sub    $0x8,%esp
  1065a3:	68 00 00 00 4b       	push   $0x4b000000
  1065a8:	6a 0a                	push   $0xa
  1065aa:	e8 51 fd ff ff       	call   106300 <get_pdir_entry_by_va>
  1065af:	5a                   	pop    %edx
  1065b0:	59                   	pop    %ecx
  1065b1:	50                   	push   %eax
  1065b2:	8d 83 55 ba ff ff    	lea    -0x45ab(%ebx),%eax
  1065b8:	50                   	push   %eax
  1065b9:	e8 fe c7 ff ff       	call   102dbc <dprintf>
        return 1;
  1065be:	83 c4 10             	add    $0x10,%esp
        return 1;
  1065c1:	b8 01 00 00 00       	mov    $0x1,%eax
}
  1065c6:	83 c4 08             	add    $0x8,%esp
  1065c9:	5b                   	pop    %ebx
  1065ca:	c3                   	ret
  1065cb:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        dprintf("test 1.1 failed: (%d != 0)\n", get_ptbl_entry_by_va(10, vaddr));
  1065d0:	83 ec 08             	sub    $0x8,%esp
  1065d3:	68 00 00 00 4b       	push   $0x4b000000
  1065d8:	6a 0a                	push   $0xa
  1065da:	e8 b1 fc ff ff       	call   106290 <get_ptbl_entry_by_va>
  1065df:	5a                   	pop    %edx
  1065e0:	59                   	pop    %ecx
  1065e1:	50                   	push   %eax
  1065e2:	8d 83 39 ba ff ff    	lea    -0x45c7(%ebx),%eax
  1065e8:	50                   	push   %eax
  1065e9:	e8 ce c7 ff ff       	call   102dbc <dprintf>
        return 1;
  1065ee:	83 c4 10             	add    $0x10,%esp
  1065f1:	eb ce                	jmp    1065c1 <MPTOp_test1+0x121>
  1065f3:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        dprintf("test 1.4 failed: (%d == 0)\n", get_pdir_entry_by_va(10, vaddr));
  1065f8:	83 ec 08             	sub    $0x8,%esp
  1065fb:	68 00 00 00 4b       	push   $0x4b000000
  106600:	6a 0a                	push   $0xa
  106602:	e8 f9 fc ff ff       	call   106300 <get_pdir_entry_by_va>
  106607:	5a                   	pop    %edx
  106608:	59                   	pop    %ecx
  106609:	50                   	push   %eax
  10660a:	8d 83 8d ba ff ff    	lea    -0x4573(%ebx),%eax
  106610:	50                   	push   %eax
  106611:	e8 a6 c7 ff ff       	call   102dbc <dprintf>
        return 1;
  106616:	83 c4 10             	add    $0x10,%esp
  106619:	eb a6                	jmp    1065c1 <MPTOp_test1+0x121>
  10661b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        dprintf("test 1.3 failed: (%d == 0)\n", get_ptbl_entry_by_va(10, vaddr));
  106620:	83 ec 08             	sub    $0x8,%esp
  106623:	68 00 00 00 4b       	push   $0x4b000000
  106628:	6a 0a                	push   $0xa
  10662a:	e8 61 fc ff ff       	call   106290 <get_ptbl_entry_by_va>
  10662f:	5a                   	pop    %edx
  106630:	59                   	pop    %ecx
  106631:	50                   	push   %eax
  106632:	8d 83 71 ba ff ff    	lea    -0x458f(%ebx),%eax
  106638:	50                   	push   %eax
  106639:	e8 7e c7 ff ff       	call   102dbc <dprintf>
        return 1;
  10663e:	83 c4 10             	add    $0x10,%esp
  106641:	e9 7b ff ff ff       	jmp    1065c1 <MPTOp_test1+0x121>
  106646:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10664d:	00 
  10664e:	66 90                	xchg   %ax,%ax
        dprintf("test 1.5 failed: (%d != 0)\n", get_ptbl_entry_by_va(10, vaddr));
  106650:	83 ec 08             	sub    $0x8,%esp
  106653:	68 00 00 00 4b       	push   $0x4b000000
  106658:	6a 0a                	push   $0xa
  10665a:	e8 31 fc ff ff       	call   106290 <get_ptbl_entry_by_va>
  10665f:	5a                   	pop    %edx
  106660:	59                   	pop    %ecx
  106661:	50                   	push   %eax
  106662:	8d 83 a9 ba ff ff    	lea    -0x4557(%ebx),%eax
  106668:	50                   	push   %eax
  106669:	e8 4e c7 ff ff       	call   102dbc <dprintf>
        return 1;
  10666e:	83 c4 10             	add    $0x10,%esp
  106671:	e9 4b ff ff ff       	jmp    1065c1 <MPTOp_test1+0x121>
  106676:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10667d:	00 
  10667e:	66 90                	xchg   %ax,%ax
        dprintf("test 1.6 failed: (%d != 0)\n", get_pdir_entry_by_va(10, vaddr));
  106680:	83 ec 08             	sub    $0x8,%esp
  106683:	68 00 00 00 4b       	push   $0x4b000000
  106688:	6a 0a                	push   $0xa
  10668a:	e8 71 fc ff ff       	call   106300 <get_pdir_entry_by_va>
  10668f:	5a                   	pop    %edx
  106690:	59                   	pop    %ecx
  106691:	50                   	push   %eax
  106692:	8d 83 c5 ba ff ff    	lea    -0x453b(%ebx),%eax
  106698:	50                   	push   %eax
  106699:	e8 1e c7 ff ff       	call   102dbc <dprintf>
        return 1;
  10669e:	83 c4 10             	add    $0x10,%esp
  1066a1:	e9 1b ff ff ff       	jmp    1065c1 <MPTOp_test1+0x121>
  1066a6:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  1066ad:	00 
  1066ae:	66 90                	xchg   %ax,%ax

001066b0 <MPTOp_test_own>:
int MPTOp_test_own()
{
    // TODO (optional)
    // dprintf("own test passed.\n");
    return 0;
}
  1066b0:	31 c0                	xor    %eax,%eax
  1066b2:	c3                   	ret
  1066b3:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  1066ba:	00 
  1066bb:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

001066c0 <test_MPTOp>:

int test_MPTOp()
{
    return MPTOp_test1() + MPTOp_test_own();
  1066c0:	e9 db fd ff ff       	jmp    1064a0 <MPTOp_test1>
  1066c5:	66 90                	xchg   %ax,%ax
  1066c7:	66 90                	xchg   %ax,%ax
  1066c9:	66 90                	xchg   %ax,%ax
  1066cb:	66 90                	xchg   %ax,%ax
  1066cd:	66 90                	xchg   %ax,%ax
  1066cf:	90                   	nop

001066d0 <pdir_init>:
 * For each process from id 0 to NUM_IDS -1,
 * set the page directory entries sothat the kernel portion of the map as identity map,
 * and the rest of page directories are unmmaped.
 */
void pdir_init(unsigned int mbi_adr)
{
  1066d0:	57                   	push   %edi
    int i, j;
    
    idptbl_init(mbi_adr);

    //set other processes
    for(i = 0; i < NUM_IDS; i++){
  1066d1:	31 ff                	xor    %edi,%edi
{
  1066d3:	56                   	push   %esi
  1066d4:	53                   	push   %ebx
  1066d5:	e8 3b 9d ff ff       	call   100415 <__x86.get_pc_thunk.bx>
  1066da:	81 c3 1a 69 00 00    	add    $0x691a,%ebx
    idptbl_init(mbi_adr);
  1066e0:	83 ec 0c             	sub    $0xc,%esp
  1066e3:	ff 74 24 1c          	push   0x1c(%esp)
  1066e7:	e8 34 fd ff ff       	call   106420 <idptbl_init>
  1066ec:	83 c4 10             	add    $0x10,%esp
  1066ef:	90                   	nop
      //kernel address, set to identity
      for(j = 0; j < (VM_USERLO_PI >> 10); j++){
  1066f0:	31 f6                	xor    %esi,%esi
  1066f2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        set_pdir_entry_identity(i, j);
  1066f8:	83 ec 08             	sub    $0x8,%esp
  1066fb:	56                   	push   %esi
      for(j = 0; j < (VM_USERLO_PI >> 10); j++){
  1066fc:	83 c6 01             	add    $0x1,%esi
        set_pdir_entry_identity(i, j);
  1066ff:	57                   	push   %edi
  106700:	e8 9b f7 ff ff       	call   105ea0 <set_pdir_entry_identity>
      for(j = 0; j < (VM_USERLO_PI >> 10); j++){
  106705:	83 c4 10             	add    $0x10,%esp
  106708:	81 fe 00 01 00 00    	cmp    $0x100,%esi
  10670e:	75 e8                	jne    1066f8 <pdir_init+0x28>
      }
      //normal address, set to unmap
      for(j = VM_USERLO_PI >> 10; j < VM_USERHI_PI >> 10; j++){
        rmv_pdir_entry(i, j);
  106710:	83 ec 08             	sub    $0x8,%esp
  106713:	56                   	push   %esi
      for(j = VM_USERLO_PI >> 10; j < VM_USERHI_PI >> 10; j++){
  106714:	83 c6 01             	add    $0x1,%esi
        rmv_pdir_entry(i, j);
  106717:	57                   	push   %edi
  106718:	e8 c3 f7 ff ff       	call   105ee0 <rmv_pdir_entry>
      for(j = VM_USERLO_PI >> 10; j < VM_USERHI_PI >> 10; j++){
  10671d:	83 c4 10             	add    $0x10,%esp
  106720:	81 fe c0 03 00 00    	cmp    $0x3c0,%esi
  106726:	75 e8                	jne    106710 <pdir_init+0x40>
  106728:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10672f:	00 
      }
      //kernel address, set to identity
      for(j = VM_USERHI_PI >> 10; j < 1024; j++){
        set_pdir_entry_identity(i, j);
  106730:	83 ec 08             	sub    $0x8,%esp
  106733:	56                   	push   %esi
      for(j = VM_USERHI_PI >> 10; j < 1024; j++){
  106734:	83 c6 01             	add    $0x1,%esi
        set_pdir_entry_identity(i, j);
  106737:	57                   	push   %edi
  106738:	e8 63 f7 ff ff       	call   105ea0 <set_pdir_entry_identity>
      for(j = VM_USERHI_PI >> 10; j < 1024; j++){
  10673d:	83 c4 10             	add    $0x10,%esp
  106740:	81 fe 00 04 00 00    	cmp    $0x400,%esi
  106746:	75 e8                	jne    106730 <pdir_init+0x60>
    for(i = 0; i < NUM_IDS; i++){
  106748:	83 c7 01             	add    $0x1,%edi
  10674b:	83 ff 40             	cmp    $0x40,%edi
  10674e:	75 a0                	jne    1066f0 <pdir_init+0x20>
      }
    }
    
}
  106750:	5b                   	pop    %ebx
  106751:	5e                   	pop    %esi
  106752:	5f                   	pop    %edi
  106753:	c3                   	ret
  106754:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10675b:	00 
  10675c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00106760 <alloc_ptbl>:
 * and clears (set to 0) the whole page table entries for this newly mapped page table.
 * It returns the page index of the newly allocated physical page.
 * In the case when there's no physical page available, it returns 0.
 */
unsigned int alloc_ptbl(unsigned int proc_index, unsigned int vadr)
{
  106760:	57                   	push   %edi
  106761:	56                   	push   %esi
  106762:	53                   	push   %ebx
  106763:	8b 7c 24 10          	mov    0x10(%esp),%edi
  106767:	e8 a9 9c ff ff       	call   100415 <__x86.get_pc_thunk.bx>
  10676c:	81 c3 88 68 00 00    	add    $0x6888,%ebx
  // TODO
  unsigned int addr;
  unsigned int page_index;
  page_index = container_alloc(proc_index);
  106772:	83 ec 0c             	sub    $0xc,%esp
  106775:	57                   	push   %edi
  106776:	e8 75 f3 ff ff       	call   105af0 <container_alloc>
  if(page_index == 0) return 0;//no physical page vailable
  10677b:	83 c4 10             	add    $0x10,%esp
  page_index = container_alloc(proc_index);
  10677e:	89 c6                	mov    %eax,%esi
  if(page_index == 0) return 0;//no physical page vailable
  106780:	85 c0                	test   %eax,%eax
  106782:	75 0c                	jne    106790 <alloc_ptbl+0x30>
  // addr increases 4 per step, since entry is 4 bytes
  for(addr = page_index << 12; addr < (page_index + 1) << 12; addr += 4){
    *(unsigned int *)addr &= 0x00000000; 
  }
  return page_index;
}
  106784:	89 f0                	mov    %esi,%eax
  106786:	5b                   	pop    %ebx
  106787:	5e                   	pop    %esi
  106788:	5f                   	pop    %edi
  106789:	c3                   	ret
  10678a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  set_pdir_entry_by_va(proc_index, vadr, page_index);
  106790:	83 ec 04             	sub    $0x4,%esp
  106793:	50                   	push   %eax
  106794:	ff 74 24 1c          	push   0x1c(%esp)
  106798:	57                   	push   %edi
  106799:	e8 52 fc ff ff       	call   1063f0 <set_pdir_entry_by_va>
  for(addr = page_index << 12; addr < (page_index + 1) << 12; addr += 4){
  10679e:	89 f0                	mov    %esi,%eax
  1067a0:	8d 56 01             	lea    0x1(%esi),%edx
  1067a3:	83 c4 10             	add    $0x10,%esp
  1067a6:	c1 e0 0c             	shl    $0xc,%eax
  1067a9:	c1 e2 0c             	shl    $0xc,%edx
  1067ac:	39 d0                	cmp    %edx,%eax
  1067ae:	73 d4                	jae    106784 <alloc_ptbl+0x24>
    *(unsigned int *)addr &= 0x00000000; 
  1067b0:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  for(addr = page_index << 12; addr < (page_index + 1) << 12; addr += 4){
  1067b6:	83 c0 04             	add    $0x4,%eax
  1067b9:	39 d0                	cmp    %edx,%eax
  1067bb:	73 c7                	jae    106784 <alloc_ptbl+0x24>
  1067bd:	b9 01 00 00 00       	mov    $0x1,%ecx
  1067c2:	85 c9                	test   %ecx,%ecx
  1067c4:	74 12                	je     1067d8 <alloc_ptbl+0x78>
    *(unsigned int *)addr &= 0x00000000; 
  1067c6:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  for(addr = page_index << 12; addr < (page_index + 1) << 12; addr += 4){
  1067cc:	83 c0 04             	add    $0x4,%eax
  1067cf:	39 d0                	cmp    %edx,%eax
  1067d1:	73 b1                	jae    106784 <alloc_ptbl+0x24>
  1067d3:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
    *(unsigned int *)addr &= 0x00000000; 
  1067d8:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  for(addr = page_index << 12; addr < (page_index + 1) << 12; addr += 4){
  1067de:	83 c0 08             	add    $0x8,%eax
    *(unsigned int *)addr &= 0x00000000; 
  1067e1:	c7 40 fc 00 00 00 00 	movl   $0x0,-0x4(%eax)
  for(addr = page_index << 12; addr < (page_index + 1) << 12; addr += 4){
  1067e8:	39 d0                	cmp    %edx,%eax
  1067ea:	72 ec                	jb     1067d8 <alloc_ptbl+0x78>
  1067ec:	eb 96                	jmp    106784 <alloc_ptbl+0x24>
  1067ee:	66 90                	xchg   %ax,%ax

001067f0 <free_ptbl>:

// Reverse operation of alloc_ptbl.
// Removes corresponding page directory entry,
// and frees the page for the page table entries (with container_free).
void free_ptbl(unsigned int proc_index, unsigned int vadr)
{
  1067f0:	55                   	push   %ebp
  1067f1:	57                   	push   %edi
  1067f2:	56                   	push   %esi
  1067f3:	53                   	push   %ebx
  1067f4:	e8 1c 9c ff ff       	call   100415 <__x86.get_pc_thunk.bx>
  1067f9:	81 c3 fb 67 00 00    	add    $0x67fb,%ebx
  1067ff:	83 ec 14             	sub    $0x14,%esp
  106802:	8b 7c 24 28          	mov    0x28(%esp),%edi
  106806:	8b 6c 24 2c          	mov    0x2c(%esp),%ebp
  // TODO
  unsigned int pdir_entry;
  unsigned int page_index;
  pdir_entry = get_pdir_entry_by_va(proc_index, vadr);
  10680a:	55                   	push   %ebp
  10680b:	57                   	push   %edi
  10680c:	e8 ef fa ff ff       	call   106300 <get_pdir_entry_by_va>
  106811:	89 c6                	mov    %eax,%esi
  page_index = pdir_entry >> 12;
  // remove page directory entry
  rmv_pdir_entry_by_va(proc_index, vadr);
  106813:	58                   	pop    %eax
  106814:	5a                   	pop    %edx
  106815:	55                   	push   %ebp
  106816:	57                   	push   %edi
  page_index = pdir_entry >> 12;
  106817:	c1 ee 0c             	shr    $0xc,%esi
  rmv_pdir_entry_by_va(proc_index, vadr);
  10681a:	e8 61 fb ff ff       	call   106380 <rmv_pdir_entry_by_va>

  //free the page for the page table entities
  container_free(proc_index, page_index);
  10681f:	59                   	pop    %ecx
  106820:	5d                   	pop    %ebp
  106821:	56                   	push   %esi
  106822:	57                   	push   %edi
  106823:	e8 f8 f2 ff ff       	call   105b20 <container_free>
  106828:	83 c4 1c             	add    $0x1c,%esp
  10682b:	5b                   	pop    %ebx
  10682c:	5e                   	pop    %esi
  10682d:	5f                   	pop    %edi
  10682e:	5d                   	pop    %ebp
  10682f:	c3                   	ret

00106830 <MPTComm_test1>:
#include <pmm/MContainer/export.h>
#include <vmm/MPTOp/export.h>
#include "export.h"

int MPTComm_test1()
{
  106830:	55                   	push   %ebp
  106831:	57                   	push   %edi
  106832:	bf 03 01 00 00       	mov    $0x103,%edi
  106837:	56                   	push   %esi
    unsigned int i;
    for (i = 0; i < 1024; i++) {
  106838:	31 f6                	xor    %esi,%esi
{
  10683a:	53                   	push   %ebx
  10683b:	e8 d5 9b ff ff       	call   100415 <__x86.get_pc_thunk.bx>
  106840:	81 c3 b4 67 00 00    	add    $0x67b4,%ebx
  106846:	83 ec 0c             	sub    $0xc,%esp
  106849:	eb 0e                	jmp    106859 <MPTComm_test1+0x29>
  10684b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
    for (i = 0; i < 1024; i++) {
  106850:	83 c6 01             	add    $0x1,%esi
  106853:	81 c7 00 00 40 00    	add    $0x400000,%edi
        if (i < 256 || i >= 960) {
  106859:	8d 86 00 ff ff ff    	lea    -0x100(%esi),%eax
  10685f:	3d bf 02 00 00       	cmp    $0x2bf,%eax
  106864:	76 ea                	jbe    106850 <MPTComm_test1+0x20>
            if (get_ptbl_entry_by_va(10, i * 4096 * 1024) !=
  106866:	89 f5                	mov    %esi,%ebp
  106868:	52                   	push   %edx
  106869:	c1 e5 16             	shl    $0x16,%ebp
  10686c:	52                   	push   %edx
  10686d:	55                   	push   %ebp
  10686e:	6a 0a                	push   $0xa
  106870:	e8 1b fa ff ff       	call   106290 <get_ptbl_entry_by_va>
  106875:	83 c4 10             	add    $0x10,%esp
  106878:	39 f8                	cmp    %edi,%eax
  10687a:	75 2d                	jne    1068a9 <MPTComm_test1+0x79>
    for (i = 0; i < 1024; i++) {
  10687c:	83 c6 01             	add    $0x1,%esi
  10687f:	81 c7 00 00 40 00    	add    $0x400000,%edi
  106885:	81 fe 00 04 00 00    	cmp    $0x400,%esi
  10688b:	75 cc                	jne    106859 <MPTComm_test1+0x29>
                        i * 4096 * 1024 + 259);
                return 1;
            }
        }
    }
    dprintf("test 1 passed.\n");
  10688d:	83 ec 0c             	sub    $0xc,%esp
  106890:	8d 83 93 b8 ff ff    	lea    -0x476d(%ebx),%eax
  106896:	50                   	push   %eax
  106897:	e8 20 c5 ff ff       	call   102dbc <dprintf>
    return 0;
  10689c:	83 c4 10             	add    $0x10,%esp
  10689f:	31 c0                	xor    %eax,%eax
}
  1068a1:	83 c4 0c             	add    $0xc,%esp
  1068a4:	5b                   	pop    %ebx
  1068a5:	5e                   	pop    %esi
  1068a6:	5f                   	pop    %edi
  1068a7:	5d                   	pop    %ebp
  1068a8:	c3                   	ret
                dprintf("test 1.1 failed (i = %d): (%d != %d)\n",
  1068a9:	50                   	push   %eax
  1068aa:	50                   	push   %eax
  1068ab:	55                   	push   %ebp
  1068ac:	6a 0a                	push   $0xa
  1068ae:	e8 dd f9 ff ff       	call   106290 <get_ptbl_entry_by_va>
  1068b3:	57                   	push   %edi
  1068b4:	50                   	push   %eax
  1068b5:	8d 83 b4 bb ff ff    	lea    -0x444c(%ebx),%eax
  1068bb:	56                   	push   %esi
  1068bc:	50                   	push   %eax
  1068bd:	e8 fa c4 ff ff       	call   102dbc <dprintf>
                return 1;
  1068c2:	83 c4 20             	add    $0x20,%esp
  1068c5:	b8 01 00 00 00       	mov    $0x1,%eax
  1068ca:	eb d5                	jmp    1068a1 <MPTComm_test1+0x71>
  1068cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

001068d0 <MPTComm_test2>:

int MPTComm_test2()
{
  1068d0:	53                   	push   %ebx
  1068d1:	e8 3f 9b ff ff       	call   100415 <__x86.get_pc_thunk.bx>
  1068d6:	81 c3 1e 67 00 00    	add    $0x671e,%ebx
  1068dc:	83 ec 10             	sub    $0x10,%esp
    unsigned int vaddr = 300 * 4096 * 1024;
    container_split(0, 100);
  1068df:	6a 64                	push   $0x64
  1068e1:	6a 00                	push   $0x0
  1068e3:	e8 a8 f1 ff ff       	call   105a90 <container_split>
    alloc_ptbl(1, vaddr);
  1068e8:	59                   	pop    %ecx
  1068e9:	58                   	pop    %eax
  1068ea:	68 00 00 00 4b       	push   $0x4b000000
  1068ef:	6a 01                	push   $0x1
  1068f1:	e8 6a fe ff ff       	call   106760 <alloc_ptbl>
    if (get_pdir_entry_by_va(1, vaddr) == 0) {
  1068f6:	58                   	pop    %eax
  1068f7:	5a                   	pop    %edx
  1068f8:	68 00 00 00 4b       	push   $0x4b000000
  1068fd:	6a 01                	push   $0x1
  1068ff:	e8 fc f9 ff ff       	call   106300 <get_pdir_entry_by_va>
  106904:	83 c4 10             	add    $0x10,%esp
  106907:	85 c0                	test   %eax,%eax
  106909:	0f 84 89 00 00 00    	je     106998 <MPTComm_test2+0xc8>
        dprintf("test 2.1 failed: (%d == 0)\n", get_pdir_entry_by_va(1, vaddr));
        return 1;
    }
    if (get_ptbl_entry_by_va(1, vaddr) != 0) {
  10690f:	83 ec 08             	sub    $0x8,%esp
  106912:	68 00 00 00 4b       	push   $0x4b000000
  106917:	6a 01                	push   $0x1
  106919:	e8 72 f9 ff ff       	call   106290 <get_ptbl_entry_by_va>
  10691e:	83 c4 10             	add    $0x10,%esp
  106921:	85 c0                	test   %eax,%eax
  106923:	75 43                	jne    106968 <MPTComm_test2+0x98>
        dprintf("test 2.2 failed: (%d != 0)\n", get_ptbl_entry_by_va(1, vaddr));
        return 1;
    }
    free_ptbl(1, vaddr);
  106925:	83 ec 08             	sub    $0x8,%esp
  106928:	68 00 00 00 4b       	push   $0x4b000000
  10692d:	6a 01                	push   $0x1
  10692f:	e8 bc fe ff ff       	call   1067f0 <free_ptbl>
    if (get_pdir_entry_by_va(1, vaddr) != 0) {
  106934:	58                   	pop    %eax
  106935:	5a                   	pop    %edx
  106936:	68 00 00 00 4b       	push   $0x4b000000
  10693b:	6a 01                	push   $0x1
  10693d:	e8 be f9 ff ff       	call   106300 <get_pdir_entry_by_va>
  106942:	83 c4 10             	add    $0x10,%esp
  106945:	85 c0                	test   %eax,%eax
  106947:	75 77                	jne    1069c0 <MPTComm_test2+0xf0>
        dprintf("test 2.3 failed: (%d != 0)\n", get_pdir_entry_by_va(1, vaddr));
        return 1;
    }
    dprintf("test 2 passed.\n");
  106949:	83 ec 0c             	sub    $0xc,%esp
  10694c:	8d 83 a3 b8 ff ff    	lea    -0x475d(%ebx),%eax
  106952:	50                   	push   %eax
  106953:	e8 64 c4 ff ff       	call   102dbc <dprintf>
    return 0;
  106958:	83 c4 10             	add    $0x10,%esp
  10695b:	31 c0                	xor    %eax,%eax
}
  10695d:	83 c4 08             	add    $0x8,%esp
  106960:	5b                   	pop    %ebx
  106961:	c3                   	ret
  106962:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        dprintf("test 2.2 failed: (%d != 0)\n", get_ptbl_entry_by_va(1, vaddr));
  106968:	83 ec 08             	sub    $0x8,%esp
  10696b:	68 00 00 00 4b       	push   $0x4b000000
  106970:	6a 01                	push   $0x1
  106972:	e8 19 f9 ff ff       	call   106290 <get_ptbl_entry_by_va>
  106977:	59                   	pop    %ecx
  106978:	5a                   	pop    %edx
  106979:	50                   	push   %eax
  10697a:	8d 83 1d ba ff ff    	lea    -0x45e3(%ebx),%eax
  106980:	50                   	push   %eax
  106981:	e8 36 c4 ff ff       	call   102dbc <dprintf>
        return 1;
  106986:	83 c4 10             	add    $0x10,%esp
}
  106989:	83 c4 08             	add    $0x8,%esp
        return 1;
  10698c:	b8 01 00 00 00       	mov    $0x1,%eax
}
  106991:	5b                   	pop    %ebx
  106992:	c3                   	ret
  106993:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        dprintf("test 2.1 failed: (%d == 0)\n", get_pdir_entry_by_va(1, vaddr));
  106998:	83 ec 08             	sub    $0x8,%esp
  10699b:	68 00 00 00 4b       	push   $0x4b000000
  1069a0:	6a 01                	push   $0x1
  1069a2:	e8 59 f9 ff ff       	call   106300 <get_pdir_entry_by_va>
  1069a7:	59                   	pop    %ecx
  1069a8:	5a                   	pop    %edx
  1069a9:	50                   	push   %eax
  1069aa:	8d 83 e1 ba ff ff    	lea    -0x451f(%ebx),%eax
  1069b0:	50                   	push   %eax
  1069b1:	e8 06 c4 ff ff       	call   102dbc <dprintf>
        return 1;
  1069b6:	83 c4 10             	add    $0x10,%esp
  1069b9:	eb ce                	jmp    106989 <MPTComm_test2+0xb9>
  1069bb:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        dprintf("test 2.3 failed: (%d != 0)\n", get_pdir_entry_by_va(1, vaddr));
  1069c0:	83 ec 08             	sub    $0x8,%esp
  1069c3:	68 00 00 00 4b       	push   $0x4b000000
  1069c8:	6a 01                	push   $0x1
  1069ca:	e8 31 f9 ff ff       	call   106300 <get_pdir_entry_by_va>
  1069cf:	5a                   	pop    %edx
  1069d0:	59                   	pop    %ecx
  1069d1:	50                   	push   %eax
  1069d2:	8d 83 fd ba ff ff    	lea    -0x4503(%ebx),%eax
  1069d8:	50                   	push   %eax
  1069d9:	e8 de c3 ff ff       	call   102dbc <dprintf>
        return 1;
  1069de:	83 c4 10             	add    $0x10,%esp
  1069e1:	eb a6                	jmp    106989 <MPTComm_test2+0xb9>
  1069e3:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  1069ea:	00 
  1069eb:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

001069f0 <MPTComm_test_own>:
int MPTComm_test_own()
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

00106a00 <test_MPTComm>:

int test_MPTComm()
{
  106a00:	53                   	push   %ebx
  106a01:	83 ec 08             	sub    $0x8,%esp
    return MPTComm_test1() + MPTComm_test2() + MPTComm_test_own();
  106a04:	e8 27 fe ff ff       	call   106830 <MPTComm_test1>
  106a09:	89 c3                	mov    %eax,%ebx
  106a0b:	e8 c0 fe ff ff       	call   1068d0 <MPTComm_test2>
}
  106a10:	83 c4 08             	add    $0x8,%esp
    return MPTComm_test1() + MPTComm_test2() + MPTComm_test_own();
  106a13:	01 d8                	add    %ebx,%eax
}
  106a15:	5b                   	pop    %ebx
  106a16:	c3                   	ret
  106a17:	66 90                	xchg   %ax,%ax
  106a19:	66 90                	xchg   %ax,%ax
  106a1b:	66 90                	xchg   %ax,%ax
  106a1d:	66 90                	xchg   %ax,%ax
  106a1f:	90                   	nop

00106a20 <pdir_init_kern>:
/**
 * Sets the entire page map for process 0 as identity map.
 * Note that part of the task is already completed by pdir_init.
 */
void pdir_init_kern(unsigned int mbi_adr)
{
  106a20:	56                   	push   %esi
    // TODO: define your local variables here.

    pdir_init(mbi_adr);
    
    //TODO
    unsigned int pde_index = 0;
  106a21:	31 f6                	xor    %esi,%esi
{
  106a23:	53                   	push   %ebx
  106a24:	e8 ec 99 ff ff       	call   100415 <__x86.get_pc_thunk.bx>
  106a29:	81 c3 cb 65 00 00    	add    $0x65cb,%ebx
  106a2f:	83 ec 10             	sub    $0x10,%esp
    pdir_init(mbi_adr);
  106a32:	ff 74 24 1c          	push   0x1c(%esp)
  106a36:	e8 95 fc ff ff       	call   1066d0 <pdir_init>
  106a3b:	83 c4 10             	add    $0x10,%esp
  106a3e:	66 90                	xchg   %ax,%ax
    for (; pde_index < 1024; pde_index++) {
        set_pdir_entry_identity(0, pde_index);
  106a40:	83 ec 08             	sub    $0x8,%esp
  106a43:	56                   	push   %esi
    for (; pde_index < 1024; pde_index++) {
  106a44:	83 c6 01             	add    $0x1,%esi
        set_pdir_entry_identity(0, pde_index);
  106a47:	6a 00                	push   $0x0
  106a49:	e8 52 f4 ff ff       	call   105ea0 <set_pdir_entry_identity>
    for (; pde_index < 1024; pde_index++) {
  106a4e:	83 c4 10             	add    $0x10,%esp
  106a51:	81 fe 00 04 00 00    	cmp    $0x400,%esi
  106a57:	75 e7                	jne    106a40 <pdir_init_kern+0x20>
    }
}
  106a59:	83 c4 04             	add    $0x4,%esp
  106a5c:	5b                   	pop    %ebx
  106a5d:	5e                   	pop    %esi
  106a5e:	c3                   	ret
  106a5f:	90                   	nop

00106a60 <map_page>:
 * In the case of error, it returns the constant MagicNumber defined in lib/x86.h,
 * otherwise, it returns the physical page index registered in the page directory,
 * e.g., the return value of get_pdir_entry_by_va or alloc_ptbl.
 */
unsigned int map_page(unsigned int proc_index, unsigned int vadr, unsigned int page_index, unsigned int perm)
{   
  106a60:	57                   	push   %edi
  106a61:	56                   	push   %esi
  106a62:	53                   	push   %ebx
  106a63:	8b 74 24 10          	mov    0x10(%esp),%esi
  106a67:	e8 a9 99 ff ff       	call   100415 <__x86.get_pc_thunk.bx>
  106a6c:	81 c3 88 65 00 00    	add    $0x6588,%ebx
  106a72:	8b 7c 24 14          	mov    0x14(%esp),%edi
  // TODO
  unsigned int pde = get_pdir_entry_by_va(proc_index, vadr);
  106a76:	83 ec 08             	sub    $0x8,%esp
  106a79:	57                   	push   %edi
  106a7a:	56                   	push   %esi
  106a7b:	e8 80 f8 ff ff       	call   106300 <get_pdir_entry_by_va>
  unsigned int ptbl;
  if ((pde & PTE_P) == 0) {
  106a80:	83 c4 10             	add    $0x10,%esp
  106a83:	a8 01                	test   $0x1,%al
  106a85:	75 11                	jne    106a98 <map_page+0x38>
    ptbl = alloc_ptbl(proc_index, vadr);
  106a87:	83 ec 08             	sub    $0x8,%esp
  106a8a:	57                   	push   %edi
  106a8b:	56                   	push   %esi
  106a8c:	e8 cf fc ff ff       	call   106760 <alloc_ptbl>
    if (ptbl == 0) {
  106a91:	83 c4 10             	add    $0x10,%esp
  106a94:	85 c0                	test   %eax,%eax
  106a96:	74 28                	je     106ac0 <map_page+0x60>
      //no physical page available
      return MagicNumber;
    }
  }
  set_ptbl_entry_by_va(proc_index, vadr, page_index, perm);
  106a98:	ff 74 24 1c          	push   0x1c(%esp)
  106a9c:	ff 74 24 1c          	push   0x1c(%esp)
  106aa0:	57                   	push   %edi
  106aa1:	56                   	push   %esi
  106aa2:	e8 09 f9 ff ff       	call   1063b0 <set_ptbl_entry_by_va>
  pde = get_pdir_entry_by_va(proc_index, vadr);
  106aa7:	58                   	pop    %eax
  106aa8:	5a                   	pop    %edx
  106aa9:	57                   	push   %edi
  106aaa:	56                   	push   %esi
  106aab:	e8 50 f8 ff ff       	call   106300 <get_pdir_entry_by_va>
  return pde >> 12;
  106ab0:	83 c4 10             	add    $0x10,%esp
}
  106ab3:	5b                   	pop    %ebx
  return pde >> 12;
  106ab4:	c1 e8 0c             	shr    $0xc,%eax
}
  106ab7:	5e                   	pop    %esi
  106ab8:	5f                   	pop    %edi
  106ab9:	c3                   	ret
  106aba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  106ac0:	5b                   	pop    %ebx
      return MagicNumber;
  106ac1:	b8 01 00 10 00       	mov    $0x100001,%eax
}
  106ac6:	5e                   	pop    %esi
  106ac7:	5f                   	pop    %edi
  106ac8:	c3                   	ret
  106ac9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00106ad0 <unmap_page>:
 * Nothing should be done if the mapping no longer exists.
 * You do not need to unmap the page table from the page directory.
 * It should return the corresponding page table entry.
 */
unsigned int unmap_page(unsigned int proc_index, unsigned int vadr)
{
  106ad0:	57                   	push   %edi
  106ad1:	56                   	push   %esi
  106ad2:	53                   	push   %ebx
  106ad3:	8b 74 24 10          	mov    0x10(%esp),%esi
  106ad7:	e8 39 99 ff ff       	call   100415 <__x86.get_pc_thunk.bx>
  106adc:	81 c3 18 65 00 00    	add    $0x6518,%ebx
  106ae2:	8b 7c 24 14          	mov    0x14(%esp),%edi
  // TODO
  unsigned int pte = get_ptbl_entry_by_va(proc_index, vadr);
  106ae6:	83 ec 08             	sub    $0x8,%esp
  106ae9:	57                   	push   %edi
  106aea:	56                   	push   %esi
  106aeb:	e8 a0 f7 ff ff       	call   106290 <get_ptbl_entry_by_va>
  if ((pte & PTE_P) == 0) {
  106af0:	83 c4 10             	add    $0x10,%esp
  106af3:	a8 01                	test   $0x1,%al
  106af5:	74 16                	je     106b0d <unmap_page+0x3d>
    return pte;
  }
  rmv_ptbl_entry_by_va(proc_index, vadr);
  106af7:	83 ec 08             	sub    $0x8,%esp
  106afa:	57                   	push   %edi
  106afb:	56                   	push   %esi
  106afc:	e8 2f f8 ff ff       	call   106330 <rmv_ptbl_entry_by_va>
  pte = get_ptbl_entry_by_va(proc_index, vadr);
  106b01:	58                   	pop    %eax
  106b02:	5a                   	pop    %edx
  106b03:	57                   	push   %edi
  106b04:	56                   	push   %esi
  106b05:	e8 86 f7 ff ff       	call   106290 <get_ptbl_entry_by_va>
  return pte;
  106b0a:	83 c4 10             	add    $0x10,%esp
  106b0d:	5b                   	pop    %ebx
  106b0e:	5e                   	pop    %esi
  106b0f:	5f                   	pop    %edi
  106b10:	c3                   	ret
  106b11:	66 90                	xchg   %ax,%ax
  106b13:	66 90                	xchg   %ax,%ax
  106b15:	66 90                	xchg   %ax,%ax
  106b17:	66 90                	xchg   %ax,%ax
  106b19:	66 90                	xchg   %ax,%ax
  106b1b:	66 90                	xchg   %ax,%ax
  106b1d:	66 90                	xchg   %ax,%ax
  106b1f:	90                   	nop

00106b20 <MPTKern_test1>:
#include <pmm/MContainer/export.h>
#include <vmm/MPTOp/export.h>
#include "export.h"

int MPTKern_test1()
{
  106b20:	53                   	push   %ebx
  106b21:	e8 ef 98 ff ff       	call   100415 <__x86.get_pc_thunk.bx>
  106b26:	81 c3 ce 64 00 00    	add    $0x64ce,%ebx
  106b2c:	83 ec 10             	sub    $0x10,%esp
    unsigned int vaddr = 4096 * 1024 * 300;
    container_split(0, 100);
  106b2f:	6a 64                	push   $0x64
  106b31:	6a 00                	push   $0x0
  106b33:	e8 58 ef ff ff       	call   105a90 <container_split>
    if (get_ptbl_entry_by_va(1, vaddr) != 0) {
  106b38:	58                   	pop    %eax
  106b39:	5a                   	pop    %edx
  106b3a:	68 00 00 00 4b       	push   $0x4b000000
  106b3f:	6a 01                	push   $0x1
  106b41:	e8 4a f7 ff ff       	call   106290 <get_ptbl_entry_by_va>
  106b46:	83 c4 10             	add    $0x10,%esp
  106b49:	85 c0                	test   %eax,%eax
  106b4b:	0f 85 cf 00 00 00    	jne    106c20 <MPTKern_test1+0x100>
        dprintf("test 1.1 failed: (%d != 0)\n", get_ptbl_entry_by_va(1, vaddr));
        return 1;
    }
    if (get_pdir_entry_by_va(1, vaddr) != 0) {
  106b51:	83 ec 08             	sub    $0x8,%esp
  106b54:	68 00 00 00 4b       	push   $0x4b000000
  106b59:	6a 01                	push   $0x1
  106b5b:	e8 a0 f7 ff ff       	call   106300 <get_pdir_entry_by_va>
  106b60:	83 c4 10             	add    $0x10,%esp
  106b63:	85 c0                	test   %eax,%eax
  106b65:	0f 85 85 00 00 00    	jne    106bf0 <MPTKern_test1+0xd0>
        dprintf("test 1.2 failed: (%d != 0)\n", get_pdir_entry_by_va(1, vaddr));
        return 1;
    }
    map_page(1, vaddr, 100, 7);
  106b6b:	6a 07                	push   $0x7
  106b6d:	6a 64                	push   $0x64
  106b6f:	68 00 00 00 4b       	push   $0x4b000000
  106b74:	6a 01                	push   $0x1
  106b76:	e8 e5 fe ff ff       	call   106a60 <map_page>
    if (get_ptbl_entry_by_va(1, vaddr) == 0) {
  106b7b:	59                   	pop    %ecx
  106b7c:	58                   	pop    %eax
  106b7d:	68 00 00 00 4b       	push   $0x4b000000
  106b82:	6a 01                	push   $0x1
  106b84:	e8 07 f7 ff ff       	call   106290 <get_ptbl_entry_by_va>
  106b89:	83 c4 10             	add    $0x10,%esp
  106b8c:	85 c0                	test   %eax,%eax
  106b8e:	0f 84 dc 00 00 00    	je     106c70 <MPTKern_test1+0x150>
        dprintf("test 1.3 failed: (%d == 0)\n", get_ptbl_entry_by_va(1, vaddr));
        return 1;
    }
    if (get_pdir_entry_by_va(1, vaddr) == 0) {
  106b94:	83 ec 08             	sub    $0x8,%esp
  106b97:	68 00 00 00 4b       	push   $0x4b000000
  106b9c:	6a 01                	push   $0x1
  106b9e:	e8 5d f7 ff ff       	call   106300 <get_pdir_entry_by_va>
  106ba3:	83 c4 10             	add    $0x10,%esp
  106ba6:	85 c0                	test   %eax,%eax
  106ba8:	0f 84 9a 00 00 00    	je     106c48 <MPTKern_test1+0x128>
        dprintf("test 1.4 failed: (%d == 0)\n", get_pdir_entry_by_va(1, vaddr));
        return 1;
    }
    unmap_page(1, vaddr);
  106bae:	83 ec 08             	sub    $0x8,%esp
  106bb1:	68 00 00 00 4b       	push   $0x4b000000
  106bb6:	6a 01                	push   $0x1
  106bb8:	e8 13 ff ff ff       	call   106ad0 <unmap_page>
    if (get_ptbl_entry_by_va(1, vaddr) != 0) {
  106bbd:	58                   	pop    %eax
  106bbe:	5a                   	pop    %edx
  106bbf:	68 00 00 00 4b       	push   $0x4b000000
  106bc4:	6a 01                	push   $0x1
  106bc6:	e8 c5 f6 ff ff       	call   106290 <get_ptbl_entry_by_va>
  106bcb:	83 c4 10             	add    $0x10,%esp
  106bce:	85 c0                	test   %eax,%eax
  106bd0:	0f 85 ca 00 00 00    	jne    106ca0 <MPTKern_test1+0x180>
        dprintf("test 1.5 failed: (%d != 0)\n", get_ptbl_entry_by_va(1, vaddr));
        return 1;
    }
    dprintf("test 1 passed.\n");
  106bd6:	83 ec 0c             	sub    $0xc,%esp
  106bd9:	8d 83 93 b8 ff ff    	lea    -0x476d(%ebx),%eax
  106bdf:	50                   	push   %eax
  106be0:	e8 d7 c1 ff ff       	call   102dbc <dprintf>
    return 0;
  106be5:	83 c4 10             	add    $0x10,%esp
  106be8:	31 c0                	xor    %eax,%eax
}
  106bea:	83 c4 08             	add    $0x8,%esp
  106bed:	5b                   	pop    %ebx
  106bee:	c3                   	ret
  106bef:	90                   	nop
        dprintf("test 1.2 failed: (%d != 0)\n", get_pdir_entry_by_va(1, vaddr));
  106bf0:	83 ec 08             	sub    $0x8,%esp
  106bf3:	68 00 00 00 4b       	push   $0x4b000000
  106bf8:	6a 01                	push   $0x1
  106bfa:	e8 01 f7 ff ff       	call   106300 <get_pdir_entry_by_va>
  106bff:	5a                   	pop    %edx
  106c00:	59                   	pop    %ecx
  106c01:	50                   	push   %eax
  106c02:	8d 83 55 ba ff ff    	lea    -0x45ab(%ebx),%eax
  106c08:	50                   	push   %eax
  106c09:	e8 ae c1 ff ff       	call   102dbc <dprintf>
        return 1;
  106c0e:	83 c4 10             	add    $0x10,%esp
}
  106c11:	83 c4 08             	add    $0x8,%esp
        return 1;
  106c14:	b8 01 00 00 00       	mov    $0x1,%eax
}
  106c19:	5b                   	pop    %ebx
  106c1a:	c3                   	ret
  106c1b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        dprintf("test 1.1 failed: (%d != 0)\n", get_ptbl_entry_by_va(1, vaddr));
  106c20:	83 ec 08             	sub    $0x8,%esp
  106c23:	68 00 00 00 4b       	push   $0x4b000000
  106c28:	6a 01                	push   $0x1
  106c2a:	e8 61 f6 ff ff       	call   106290 <get_ptbl_entry_by_va>
  106c2f:	5a                   	pop    %edx
  106c30:	59                   	pop    %ecx
  106c31:	50                   	push   %eax
  106c32:	8d 83 39 ba ff ff    	lea    -0x45c7(%ebx),%eax
  106c38:	50                   	push   %eax
  106c39:	e8 7e c1 ff ff       	call   102dbc <dprintf>
        return 1;
  106c3e:	83 c4 10             	add    $0x10,%esp
  106c41:	eb ce                	jmp    106c11 <MPTKern_test1+0xf1>
  106c43:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        dprintf("test 1.4 failed: (%d == 0)\n", get_pdir_entry_by_va(1, vaddr));
  106c48:	83 ec 08             	sub    $0x8,%esp
  106c4b:	68 00 00 00 4b       	push   $0x4b000000
  106c50:	6a 01                	push   $0x1
  106c52:	e8 a9 f6 ff ff       	call   106300 <get_pdir_entry_by_va>
  106c57:	59                   	pop    %ecx
  106c58:	5a                   	pop    %edx
  106c59:	50                   	push   %eax
  106c5a:	8d 83 8d ba ff ff    	lea    -0x4573(%ebx),%eax
  106c60:	50                   	push   %eax
  106c61:	e8 56 c1 ff ff       	call   102dbc <dprintf>
        return 1;
  106c66:	83 c4 10             	add    $0x10,%esp
  106c69:	eb a6                	jmp    106c11 <MPTKern_test1+0xf1>
  106c6b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        dprintf("test 1.3 failed: (%d == 0)\n", get_ptbl_entry_by_va(1, vaddr));
  106c70:	83 ec 08             	sub    $0x8,%esp
  106c73:	68 00 00 00 4b       	push   $0x4b000000
  106c78:	6a 01                	push   $0x1
  106c7a:	e8 11 f6 ff ff       	call   106290 <get_ptbl_entry_by_va>
  106c7f:	59                   	pop    %ecx
  106c80:	5a                   	pop    %edx
  106c81:	50                   	push   %eax
  106c82:	8d 83 71 ba ff ff    	lea    -0x458f(%ebx),%eax
  106c88:	50                   	push   %eax
  106c89:	e8 2e c1 ff ff       	call   102dbc <dprintf>
        return 1;
  106c8e:	83 c4 10             	add    $0x10,%esp
  106c91:	e9 7b ff ff ff       	jmp    106c11 <MPTKern_test1+0xf1>
  106c96:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  106c9d:	00 
  106c9e:	66 90                	xchg   %ax,%ax
        dprintf("test 1.5 failed: (%d != 0)\n", get_ptbl_entry_by_va(1, vaddr));
  106ca0:	83 ec 08             	sub    $0x8,%esp
  106ca3:	68 00 00 00 4b       	push   $0x4b000000
  106ca8:	6a 01                	push   $0x1
  106caa:	e8 e1 f5 ff ff       	call   106290 <get_ptbl_entry_by_va>
  106caf:	5a                   	pop    %edx
  106cb0:	59                   	pop    %ecx
  106cb1:	50                   	push   %eax
  106cb2:	8d 83 a9 ba ff ff    	lea    -0x4557(%ebx),%eax
  106cb8:	50                   	push   %eax
  106cb9:	e8 fe c0 ff ff       	call   102dbc <dprintf>
        return 1;
  106cbe:	83 c4 10             	add    $0x10,%esp
  106cc1:	e9 4b ff ff ff       	jmp    106c11 <MPTKern_test1+0xf1>
  106cc6:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  106ccd:	00 
  106cce:	66 90                	xchg   %ax,%ax

00106cd0 <MPTKern_test2>:

int MPTKern_test2()
{
  106cd0:	57                   	push   %edi
  106cd1:	56                   	push   %esi
  106cd2:	be 03 00 00 40       	mov    $0x40000003,%esi
  106cd7:	53                   	push   %ebx
  106cd8:	e8 38 97 ff ff       	call   100415 <__x86.get_pc_thunk.bx>
  106cdd:	81 c3 17 63 00 00    	add    $0x6317,%ebx
  106ce3:	eb 11                	jmp    106cf6 <MPTKern_test2+0x26>
  106ce5:	8d 76 00             	lea    0x0(%esi),%esi
    unsigned int i;
    for (i = 256; i < 960; i++) {
  106ce8:	81 c6 00 00 40 00    	add    $0x400000,%esi
  106cee:	81 fe 03 00 00 f0    	cmp    $0xf0000003,%esi
  106cf4:	74 3d                	je     106d33 <MPTKern_test2+0x63>
        if (get_ptbl_entry_by_va(0, i * 4096 * 1024L) !=
  106cf6:	83 ec 08             	sub    $0x8,%esp
  106cf9:	8d 7e fd             	lea    -0x3(%esi),%edi
  106cfc:	57                   	push   %edi
  106cfd:	6a 00                	push   $0x0
  106cff:	e8 8c f5 ff ff       	call   106290 <get_ptbl_entry_by_va>
  106d04:	83 c4 10             	add    $0x10,%esp
  106d07:	39 f0                	cmp    %esi,%eax
  106d09:	74 dd                	je     106ce8 <MPTKern_test2+0x18>
            i * 4096 * 1024L + 3) {
            dprintf("test 2.1 failed (i = %d): (%d != %d)\n",
  106d0b:	83 ec 08             	sub    $0x8,%esp
  106d0e:	57                   	push   %edi
  106d0f:	6a 00                	push   $0x0
  106d11:	e8 7a f5 ff ff       	call   106290 <get_ptbl_entry_by_va>
  106d16:	83 c4 0c             	add    $0xc,%esp
  106d19:	56                   	push   %esi
  106d1a:	50                   	push   %eax
  106d1b:	8d 83 ec be ff ff    	lea    -0x4114(%ebx),%eax
  106d21:	50                   	push   %eax
  106d22:	e8 95 c0 ff ff       	call   102dbc <dprintf>
                    get_ptbl_entry_by_va(0, i * 4096 * 1024L),
                    i * 4096 * 1024L + 3);
            return 1;
  106d27:	83 c4 10             	add    $0x10,%esp
  106d2a:	b8 01 00 00 00       	mov    $0x1,%eax
        }
    }
    dprintf("test 2 passed.\n");
    return 0;
}
  106d2f:	5b                   	pop    %ebx
  106d30:	5e                   	pop    %esi
  106d31:	5f                   	pop    %edi
  106d32:	c3                   	ret
    dprintf("test 2 passed.\n");
  106d33:	83 ec 0c             	sub    $0xc,%esp
  106d36:	8d 83 a3 b8 ff ff    	lea    -0x475d(%ebx),%eax
  106d3c:	50                   	push   %eax
  106d3d:	e8 7a c0 ff ff       	call   102dbc <dprintf>
    return 0;
  106d42:	83 c4 10             	add    $0x10,%esp
  106d45:	31 c0                	xor    %eax,%eax
}
  106d47:	5b                   	pop    %ebx
  106d48:	5e                   	pop    %esi
  106d49:	5f                   	pop    %edi
  106d4a:	c3                   	ret
  106d4b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

00106d50 <MPTKern_test_own>:
int MPTKern_test_own()
{
    // TODO (optional)
    // dprintf("own test passed.\n");
    return 0;
}
  106d50:	31 c0                	xor    %eax,%eax
  106d52:	c3                   	ret
  106d53:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  106d5a:	00 
  106d5b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

00106d60 <test_MPTKern>:

int test_MPTKern()
{
  106d60:	53                   	push   %ebx
  106d61:	83 ec 08             	sub    $0x8,%esp
    return MPTKern_test1() + MPTKern_test2() + MPTKern_test_own();
  106d64:	e8 b7 fd ff ff       	call   106b20 <MPTKern_test1>
  106d69:	89 c3                	mov    %eax,%ebx
  106d6b:	e8 60 ff ff ff       	call   106cd0 <MPTKern_test2>
}
  106d70:	83 c4 08             	add    $0x8,%esp
    return MPTKern_test1() + MPTKern_test2() + MPTKern_test_own();
  106d73:	01 d8                	add    %ebx,%eax
}
  106d75:	5b                   	pop    %ebx
  106d76:	c3                   	ret
  106d77:	66 90                	xchg   %ax,%ax
  106d79:	66 90                	xchg   %ax,%ax
  106d7b:	66 90                	xchg   %ax,%ax
  106d7d:	66 90                	xchg   %ax,%ax
  106d7f:	90                   	nop

00106d80 <paging_init>:
/**
 * Initializes the page structures, moves to the kernel page structure (0),
 * and turns on the paging.
 */
void paging_init(unsigned int mbi_addr)
{
  106d80:	53                   	push   %ebx
  106d81:	e8 8f 96 ff ff       	call   100415 <__x86.get_pc_thunk.bx>
  106d86:	81 c3 6e 62 00 00    	add    $0x626e,%ebx
  106d8c:	83 ec 14             	sub    $0x14,%esp
    pdir_init_kern(mbi_addr);
  106d8f:	ff 74 24 1c          	push   0x1c(%esp)
  106d93:	e8 88 fc ff ff       	call   106a20 <pdir_init_kern>
    set_pdir_base(0);
  106d98:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  106d9f:	e8 7c f0 ff ff       	call   105e20 <set_pdir_base>
    enable_paging();
  106da4:	e8 7e a4 ff ff       	call   101227 <enable_paging>
}
  106da9:	83 c4 18             	add    $0x18,%esp
  106dac:	5b                   	pop    %ebx
  106dad:	c3                   	ret
  106dae:	66 90                	xchg   %ax,%ax

00106db0 <alloc_page>:
 * It should return the physical page index registered in the page directory, i.e., the
 * return value from map_page.
 * In the case of error, it should return the MagicNumber.
 */
unsigned int alloc_page (unsigned int proc_index, unsigned int vaddr, unsigned int perm)
{
  106db0:	56                   	push   %esi
  106db1:	53                   	push   %ebx
  106db2:	e8 5e 96 ff ff       	call   100415 <__x86.get_pc_thunk.bx>
  106db7:	81 c3 3d 62 00 00    	add    $0x623d,%ebx
  106dbd:	83 ec 10             	sub    $0x10,%esp
  106dc0:	8b 74 24 1c          	mov    0x1c(%esp),%esi
	// TODO
	unsigned int page_index;
	unsigned int ptbl;
        page_index = container_alloc(proc_index);
  106dc4:	56                   	push   %esi
  106dc5:	e8 26 ed ff ff       	call   105af0 <container_alloc>
	if(page_index == 0) return MagicNumber;
  106dca:	83 c4 10             	add    $0x10,%esp
  106dcd:	ba 01 00 10 00       	mov    $0x100001,%edx
  106dd2:	85 c0                	test   %eax,%eax
  106dd4:	74 14                	je     106dea <alloc_page+0x3a>
        ptbl = map_page(proc_index, vaddr, page_index, perm);
  106dd6:	ff 74 24 18          	push   0x18(%esp)
  106dda:	50                   	push   %eax
  106ddb:	ff 74 24 1c          	push   0x1c(%esp)
  106ddf:	56                   	push   %esi
  106de0:	e8 7b fc ff ff       	call   106a60 <map_page>
        return ptbl;
  106de5:	83 c4 10             	add    $0x10,%esp
        ptbl = map_page(proc_index, vaddr, page_index, perm);
  106de8:	89 c2                	mov    %eax,%edx
}
  106dea:	83 c4 04             	add    $0x4,%esp
  106ded:	89 d0                	mov    %edx,%eax
  106def:	5b                   	pop    %ebx
  106df0:	5e                   	pop    %esi
  106df1:	c3                   	ret
  106df2:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  106df9:	00 
  106dfa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00106e00 <alloc_mem_quota>:

/**
 * Designate some memory quota for the next child process.
 */
unsigned int alloc_mem_quota (unsigned int id, unsigned int quota)
{
  106e00:	53                   	push   %ebx
  106e01:	e8 0f 96 ff ff       	call   100415 <__x86.get_pc_thunk.bx>
  106e06:	81 c3 ee 61 00 00    	add    $0x61ee,%ebx
  106e0c:	83 ec 10             	sub    $0x10,%esp
	unsigned int child;
	child = container_split (id, quota);
  106e0f:	ff 74 24 1c          	push   0x1c(%esp)
  106e13:	ff 74 24 1c          	push   0x1c(%esp)
  106e17:	e8 74 ec ff ff       	call   105a90 <container_split>
	return child;
}
  106e1c:	83 c4 18             	add    $0x18,%esp
  106e1f:	5b                   	pop    %ebx
  106e20:	c3                   	ret
  106e21:	66 90                	xchg   %ax,%ax
  106e23:	66 90                	xchg   %ax,%ax
  106e25:	66 90                	xchg   %ax,%ax
  106e27:	66 90                	xchg   %ax,%ax
  106e29:	66 90                	xchg   %ax,%ax
  106e2b:	66 90                	xchg   %ax,%ax
  106e2d:	66 90                	xchg   %ax,%ax
  106e2f:	90                   	nop

00106e30 <MPTNew_test1>:
#include <vmm/MPTOp/export.h>
#include <vmm/MPTNew/export.h>
#include "export.h"

int MPTNew_test1()
{
  106e30:	53                   	push   %ebx
  106e31:	e8 df 95 ff ff       	call   100415 <__x86.get_pc_thunk.bx>
  106e36:	81 c3 be 61 00 00    	add    $0x61be,%ebx
  106e3c:	83 ec 10             	sub    $0x10,%esp
    unsigned int vaddr = 4096 * 1024 * 400;
    container_split(0, 100);
  106e3f:	6a 64                	push   $0x64
  106e41:	6a 00                	push   $0x0
  106e43:	e8 48 ec ff ff       	call   105a90 <container_split>
    if (get_ptbl_entry_by_va(1, vaddr) != 0) {
  106e48:	59                   	pop    %ecx
  106e49:	58                   	pop    %eax
  106e4a:	68 00 00 00 64       	push   $0x64000000
  106e4f:	6a 01                	push   $0x1
  106e51:	e8 3a f4 ff ff       	call   106290 <get_ptbl_entry_by_va>
  106e56:	83 c4 10             	add    $0x10,%esp
  106e59:	85 c0                	test   %eax,%eax
  106e5b:	0f 85 9f 00 00 00    	jne    106f00 <MPTNew_test1+0xd0>
        dprintf("test 1.1 failed: (%d != 0)\n", get_ptbl_entry_by_va(1, vaddr));
        return 1;
    }
    if (get_pdir_entry_by_va(1, vaddr) != 0) {
  106e61:	83 ec 08             	sub    $0x8,%esp
  106e64:	68 00 00 00 64       	push   $0x64000000
  106e69:	6a 01                	push   $0x1
  106e6b:	e8 90 f4 ff ff       	call   106300 <get_pdir_entry_by_va>
  106e70:	83 c4 10             	add    $0x10,%esp
  106e73:	85 c0                	test   %eax,%eax
  106e75:	75 59                	jne    106ed0 <MPTNew_test1+0xa0>
        dprintf("test 1.2 failed: (%d != 0)\n", get_pdir_entry_by_va(1, vaddr));
        return 1;
    }
    alloc_page(1, vaddr, 7);
  106e77:	83 ec 04             	sub    $0x4,%esp
  106e7a:	6a 07                	push   $0x7
  106e7c:	68 00 00 00 64       	push   $0x64000000
  106e81:	6a 01                	push   $0x1
  106e83:	e8 28 ff ff ff       	call   106db0 <alloc_page>
    if (get_ptbl_entry_by_va(1, vaddr) == 0) {
  106e88:	58                   	pop    %eax
  106e89:	5a                   	pop    %edx
  106e8a:	68 00 00 00 64       	push   $0x64000000
  106e8f:	6a 01                	push   $0x1
  106e91:	e8 fa f3 ff ff       	call   106290 <get_ptbl_entry_by_va>
  106e96:	83 c4 10             	add    $0x10,%esp
  106e99:	85 c0                	test   %eax,%eax
  106e9b:	0f 84 af 00 00 00    	je     106f50 <MPTNew_test1+0x120>
        dprintf("test 1.3 failed: (%d == 0)\n", get_ptbl_entry_by_va(1, vaddr));
        return 1;
    }
    if (get_pdir_entry_by_va(1, vaddr) == 0) {
  106ea1:	83 ec 08             	sub    $0x8,%esp
  106ea4:	68 00 00 00 64       	push   $0x64000000
  106ea9:	6a 01                	push   $0x1
  106eab:	e8 50 f4 ff ff       	call   106300 <get_pdir_entry_by_va>
  106eb0:	83 c4 10             	add    $0x10,%esp
  106eb3:	85 c0                	test   %eax,%eax
  106eb5:	74 71                	je     106f28 <MPTNew_test1+0xf8>
        dprintf("test 1.4 failed: (%d == 0)\n", get_pdir_entry_by_va(1, vaddr));
        return 1;
    }
    dprintf("test 1 passed.\n");
  106eb7:	83 ec 0c             	sub    $0xc,%esp
  106eba:	8d 83 93 b8 ff ff    	lea    -0x476d(%ebx),%eax
  106ec0:	50                   	push   %eax
  106ec1:	e8 f6 be ff ff       	call   102dbc <dprintf>
    return 0;
  106ec6:	83 c4 10             	add    $0x10,%esp
  106ec9:	31 c0                	xor    %eax,%eax
}
  106ecb:	83 c4 08             	add    $0x8,%esp
  106ece:	5b                   	pop    %ebx
  106ecf:	c3                   	ret
        dprintf("test 1.2 failed: (%d != 0)\n", get_pdir_entry_by_va(1, vaddr));
  106ed0:	83 ec 08             	sub    $0x8,%esp
  106ed3:	68 00 00 00 64       	push   $0x64000000
  106ed8:	6a 01                	push   $0x1
  106eda:	e8 21 f4 ff ff       	call   106300 <get_pdir_entry_by_va>
  106edf:	59                   	pop    %ecx
  106ee0:	5a                   	pop    %edx
  106ee1:	50                   	push   %eax
  106ee2:	8d 83 55 ba ff ff    	lea    -0x45ab(%ebx),%eax
  106ee8:	50                   	push   %eax
  106ee9:	e8 ce be ff ff       	call   102dbc <dprintf>
        return 1;
  106eee:	83 c4 10             	add    $0x10,%esp
}
  106ef1:	83 c4 08             	add    $0x8,%esp
        return 1;
  106ef4:	b8 01 00 00 00       	mov    $0x1,%eax
}
  106ef9:	5b                   	pop    %ebx
  106efa:	c3                   	ret
  106efb:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        dprintf("test 1.1 failed: (%d != 0)\n", get_ptbl_entry_by_va(1, vaddr));
  106f00:	83 ec 08             	sub    $0x8,%esp
  106f03:	68 00 00 00 64       	push   $0x64000000
  106f08:	6a 01                	push   $0x1
  106f0a:	e8 81 f3 ff ff       	call   106290 <get_ptbl_entry_by_va>
  106f0f:	59                   	pop    %ecx
  106f10:	5a                   	pop    %edx
  106f11:	50                   	push   %eax
  106f12:	8d 83 39 ba ff ff    	lea    -0x45c7(%ebx),%eax
  106f18:	50                   	push   %eax
  106f19:	e8 9e be ff ff       	call   102dbc <dprintf>
        return 1;
  106f1e:	83 c4 10             	add    $0x10,%esp
  106f21:	eb ce                	jmp    106ef1 <MPTNew_test1+0xc1>
  106f23:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        dprintf("test 1.4 failed: (%d == 0)\n", get_pdir_entry_by_va(1, vaddr));
  106f28:	83 ec 08             	sub    $0x8,%esp
  106f2b:	68 00 00 00 64       	push   $0x64000000
  106f30:	6a 01                	push   $0x1
  106f32:	e8 c9 f3 ff ff       	call   106300 <get_pdir_entry_by_va>
  106f37:	5a                   	pop    %edx
  106f38:	59                   	pop    %ecx
  106f39:	50                   	push   %eax
  106f3a:	8d 83 8d ba ff ff    	lea    -0x4573(%ebx),%eax
  106f40:	50                   	push   %eax
  106f41:	e8 76 be ff ff       	call   102dbc <dprintf>
        return 1;
  106f46:	83 c4 10             	add    $0x10,%esp
  106f49:	eb a6                	jmp    106ef1 <MPTNew_test1+0xc1>
  106f4b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        dprintf("test 1.3 failed: (%d == 0)\n", get_ptbl_entry_by_va(1, vaddr));
  106f50:	83 ec 08             	sub    $0x8,%esp
  106f53:	68 00 00 00 64       	push   $0x64000000
  106f58:	6a 01                	push   $0x1
  106f5a:	e8 31 f3 ff ff       	call   106290 <get_ptbl_entry_by_va>
  106f5f:	5a                   	pop    %edx
  106f60:	59                   	pop    %ecx
  106f61:	50                   	push   %eax
  106f62:	8d 83 71 ba ff ff    	lea    -0x458f(%ebx),%eax
  106f68:	50                   	push   %eax
  106f69:	e8 4e be ff ff       	call   102dbc <dprintf>
        return 1;
  106f6e:	83 c4 10             	add    $0x10,%esp
  106f71:	e9 7b ff ff ff       	jmp    106ef1 <MPTNew_test1+0xc1>
  106f76:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  106f7d:	00 
  106f7e:	66 90                	xchg   %ax,%ax

00106f80 <MPTNew_test_own>:
int MPTNew_test_own()
{
    // TODO (optional)
    // dprintf("own test passed.\n");
    return 0;
}
  106f80:	31 c0                	xor    %eax,%eax
  106f82:	c3                   	ret
  106f83:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  106f8a:	00 
  106f8b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

00106f90 <test_MPTNew>:

int test_MPTNew()
{
    return MPTNew_test1() + MPTNew_test_own();
  106f90:	e9 9b fe ff ff       	jmp    106e30 <MPTNew_test1>
  106f95:	66 90                	xchg   %ax,%ax
  106f97:	66 90                	xchg   %ax,%ax
  106f99:	66 90                	xchg   %ax,%ax
  106f9b:	66 90                	xchg   %ax,%ax
  106f9d:	66 90                	xchg   %ax,%ax
  106f9f:	90                   	nop

00106fa0 <__udivdi3>:
  106fa0:	f3 0f 1e fb          	endbr32
  106fa4:	55                   	push   %ebp
  106fa5:	89 e5                	mov    %esp,%ebp
  106fa7:	57                   	push   %edi
  106fa8:	56                   	push   %esi
  106fa9:	53                   	push   %ebx
  106faa:	83 ec 1c             	sub    $0x1c,%esp
  106fad:	8b 7d 08             	mov    0x8(%ebp),%edi
  106fb0:	8b 45 14             	mov    0x14(%ebp),%eax
  106fb3:	8b 75 0c             	mov    0xc(%ebp),%esi
  106fb6:	8b 5d 10             	mov    0x10(%ebp),%ebx
  106fb9:	89 7d e4             	mov    %edi,-0x1c(%ebp)
  106fbc:	85 c0                	test   %eax,%eax
  106fbe:	75 20                	jne    106fe0 <__udivdi3+0x40>
  106fc0:	39 de                	cmp    %ebx,%esi
  106fc2:	73 54                	jae    107018 <__udivdi3+0x78>
  106fc4:	89 f8                	mov    %edi,%eax
  106fc6:	31 ff                	xor    %edi,%edi
  106fc8:	89 f2                	mov    %esi,%edx
  106fca:	f7 f3                	div    %ebx
  106fcc:	89 fa                	mov    %edi,%edx
  106fce:	83 c4 1c             	add    $0x1c,%esp
  106fd1:	5b                   	pop    %ebx
  106fd2:	5e                   	pop    %esi
  106fd3:	5f                   	pop    %edi
  106fd4:	5d                   	pop    %ebp
  106fd5:	c3                   	ret
  106fd6:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  106fdd:	00 
  106fde:	66 90                	xchg   %ax,%ax
  106fe0:	39 c6                	cmp    %eax,%esi
  106fe2:	73 14                	jae    106ff8 <__udivdi3+0x58>
  106fe4:	31 ff                	xor    %edi,%edi
  106fe6:	31 c0                	xor    %eax,%eax
  106fe8:	89 fa                	mov    %edi,%edx
  106fea:	83 c4 1c             	add    $0x1c,%esp
  106fed:	5b                   	pop    %ebx
  106fee:	5e                   	pop    %esi
  106fef:	5f                   	pop    %edi
  106ff0:	5d                   	pop    %ebp
  106ff1:	c3                   	ret
  106ff2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  106ff8:	0f bd f8             	bsr    %eax,%edi
  106ffb:	83 f7 1f             	xor    $0x1f,%edi
  106ffe:	75 48                	jne    107048 <__udivdi3+0xa8>
  107000:	39 f0                	cmp    %esi,%eax
  107002:	72 07                	jb     10700b <__udivdi3+0x6b>
  107004:	31 c0                	xor    %eax,%eax
  107006:	39 5d e4             	cmp    %ebx,-0x1c(%ebp)
  107009:	72 dd                	jb     106fe8 <__udivdi3+0x48>
  10700b:	b8 01 00 00 00       	mov    $0x1,%eax
  107010:	eb d6                	jmp    106fe8 <__udivdi3+0x48>
  107012:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  107018:	89 d9                	mov    %ebx,%ecx
  10701a:	85 db                	test   %ebx,%ebx
  10701c:	75 0b                	jne    107029 <__udivdi3+0x89>
  10701e:	b8 01 00 00 00       	mov    $0x1,%eax
  107023:	31 d2                	xor    %edx,%edx
  107025:	f7 f3                	div    %ebx
  107027:	89 c1                	mov    %eax,%ecx
  107029:	31 d2                	xor    %edx,%edx
  10702b:	89 f0                	mov    %esi,%eax
  10702d:	f7 f1                	div    %ecx
  10702f:	89 c6                	mov    %eax,%esi
  107031:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  107034:	89 f7                	mov    %esi,%edi
  107036:	f7 f1                	div    %ecx
  107038:	89 fa                	mov    %edi,%edx
  10703a:	83 c4 1c             	add    $0x1c,%esp
  10703d:	5b                   	pop    %ebx
  10703e:	5e                   	pop    %esi
  10703f:	5f                   	pop    %edi
  107040:	5d                   	pop    %ebp
  107041:	c3                   	ret
  107042:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  107048:	89 f9                	mov    %edi,%ecx
  10704a:	ba 20 00 00 00       	mov    $0x20,%edx
  10704f:	29 fa                	sub    %edi,%edx
  107051:	d3 e0                	shl    %cl,%eax
  107053:	89 45 e0             	mov    %eax,-0x20(%ebp)
  107056:	89 d1                	mov    %edx,%ecx
  107058:	89 d8                	mov    %ebx,%eax
  10705a:	d3 e8                	shr    %cl,%eax
  10705c:	89 c1                	mov    %eax,%ecx
  10705e:	8b 45 e0             	mov    -0x20(%ebp),%eax
  107061:	09 c1                	or     %eax,%ecx
  107063:	89 f0                	mov    %esi,%eax
  107065:	89 4d e0             	mov    %ecx,-0x20(%ebp)
  107068:	89 f9                	mov    %edi,%ecx
  10706a:	d3 e3                	shl    %cl,%ebx
  10706c:	89 d1                	mov    %edx,%ecx
  10706e:	d3 e8                	shr    %cl,%eax
  107070:	89 5d dc             	mov    %ebx,-0x24(%ebp)
  107073:	89 f9                	mov    %edi,%ecx
  107075:	8b 5d e4             	mov    -0x1c(%ebp),%ebx
  107078:	d3 e6                	shl    %cl,%esi
  10707a:	89 d1                	mov    %edx,%ecx
  10707c:	d3 eb                	shr    %cl,%ebx
  10707e:	09 f3                	or     %esi,%ebx
  107080:	89 c6                	mov    %eax,%esi
  107082:	89 f2                	mov    %esi,%edx
  107084:	89 d8                	mov    %ebx,%eax
  107086:	f7 75 e0             	divl   -0x20(%ebp)
  107089:	89 d6                	mov    %edx,%esi
  10708b:	89 c3                	mov    %eax,%ebx
  10708d:	f7 65 dc             	mull   -0x24(%ebp)
  107090:	89 55 e0             	mov    %edx,-0x20(%ebp)
  107093:	39 d6                	cmp    %edx,%esi
  107095:	72 21                	jb     1070b8 <__udivdi3+0x118>
  107097:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  10709a:	89 f9                	mov    %edi,%ecx
  10709c:	d3 e2                	shl    %cl,%edx
  10709e:	39 c2                	cmp    %eax,%edx
  1070a0:	73 07                	jae    1070a9 <__udivdi3+0x109>
  1070a2:	8b 55 e0             	mov    -0x20(%ebp),%edx
  1070a5:	39 d6                	cmp    %edx,%esi
  1070a7:	74 0f                	je     1070b8 <__udivdi3+0x118>
  1070a9:	89 d8                	mov    %ebx,%eax
  1070ab:	31 ff                	xor    %edi,%edi
  1070ad:	e9 36 ff ff ff       	jmp    106fe8 <__udivdi3+0x48>
  1070b2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  1070b8:	8d 43 ff             	lea    -0x1(%ebx),%eax
  1070bb:	31 ff                	xor    %edi,%edi
  1070bd:	e9 26 ff ff ff       	jmp    106fe8 <__udivdi3+0x48>
  1070c2:	66 90                	xchg   %ax,%ax
  1070c4:	66 90                	xchg   %ax,%ax
  1070c6:	66 90                	xchg   %ax,%ax
  1070c8:	66 90                	xchg   %ax,%ax
  1070ca:	66 90                	xchg   %ax,%ax
  1070cc:	66 90                	xchg   %ax,%ax
  1070ce:	66 90                	xchg   %ax,%ax

001070d0 <__umoddi3>:
  1070d0:	f3 0f 1e fb          	endbr32
  1070d4:	55                   	push   %ebp
  1070d5:	89 e5                	mov    %esp,%ebp
  1070d7:	57                   	push   %edi
  1070d8:	56                   	push   %esi
  1070d9:	53                   	push   %ebx
  1070da:	83 ec 2c             	sub    $0x2c,%esp
  1070dd:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  1070e0:	8b 45 14             	mov    0x14(%ebp),%eax
  1070e3:	8b 75 08             	mov    0x8(%ebp),%esi
  1070e6:	8b 7d 10             	mov    0x10(%ebp),%edi
  1070e9:	89 da                	mov    %ebx,%edx
  1070eb:	85 c0                	test   %eax,%eax
  1070ed:	75 19                	jne    107108 <__umoddi3+0x38>
  1070ef:	39 fb                	cmp    %edi,%ebx
  1070f1:	73 5d                	jae    107150 <__umoddi3+0x80>
  1070f3:	89 f0                	mov    %esi,%eax
  1070f5:	f7 f7                	div    %edi
  1070f7:	89 d0                	mov    %edx,%eax
  1070f9:	31 d2                	xor    %edx,%edx
  1070fb:	83 c4 2c             	add    $0x2c,%esp
  1070fe:	5b                   	pop    %ebx
  1070ff:	5e                   	pop    %esi
  107100:	5f                   	pop    %edi
  107101:	5d                   	pop    %ebp
  107102:	c3                   	ret
  107103:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
  107108:	89 75 e0             	mov    %esi,-0x20(%ebp)
  10710b:	39 c3                	cmp    %eax,%ebx
  10710d:	73 11                	jae    107120 <__umoddi3+0x50>
  10710f:	89 f0                	mov    %esi,%eax
  107111:	83 c4 2c             	add    $0x2c,%esp
  107114:	5b                   	pop    %ebx
  107115:	5e                   	pop    %esi
  107116:	5f                   	pop    %edi
  107117:	5d                   	pop    %ebp
  107118:	c3                   	ret
  107119:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  107120:	0f bd c8             	bsr    %eax,%ecx
  107123:	83 f1 1f             	xor    $0x1f,%ecx
  107126:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
  107129:	75 45                	jne    107170 <__umoddi3+0xa0>
  10712b:	39 d8                	cmp    %ebx,%eax
  10712d:	0f 82 d5 00 00 00    	jb     107208 <__umoddi3+0x138>
  107133:	39 fe                	cmp    %edi,%esi
  107135:	0f 83 cd 00 00 00    	jae    107208 <__umoddi3+0x138>
  10713b:	8b 45 e0             	mov    -0x20(%ebp),%eax
  10713e:	83 c4 2c             	add    $0x2c,%esp
  107141:	5b                   	pop    %ebx
  107142:	5e                   	pop    %esi
  107143:	5f                   	pop    %edi
  107144:	5d                   	pop    %ebp
  107145:	c3                   	ret
  107146:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10714d:	00 
  10714e:	66 90                	xchg   %ax,%ax
  107150:	89 f9                	mov    %edi,%ecx
  107152:	85 ff                	test   %edi,%edi
  107154:	75 0b                	jne    107161 <__umoddi3+0x91>
  107156:	b8 01 00 00 00       	mov    $0x1,%eax
  10715b:	31 d2                	xor    %edx,%edx
  10715d:	f7 f7                	div    %edi
  10715f:	89 c1                	mov    %eax,%ecx
  107161:	89 d8                	mov    %ebx,%eax
  107163:	31 d2                	xor    %edx,%edx
  107165:	f7 f1                	div    %ecx
  107167:	89 f0                	mov    %esi,%eax
  107169:	f7 f1                	div    %ecx
  10716b:	eb 8a                	jmp    1070f7 <__umoddi3+0x27>
  10716d:	8d 76 00             	lea    0x0(%esi),%esi
  107170:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
  107173:	ba 20 00 00 00       	mov    $0x20,%edx
  107178:	29 ca                	sub    %ecx,%edx
  10717a:	d3 e0                	shl    %cl,%eax
  10717c:	89 45 dc             	mov    %eax,-0x24(%ebp)
  10717f:	89 d1                	mov    %edx,%ecx
  107181:	89 f8                	mov    %edi,%eax
  107183:	d3 e8                	shr    %cl,%eax
  107185:	89 55 e0             	mov    %edx,-0x20(%ebp)
  107188:	0f b6 4d e4          	movzbl -0x1c(%ebp),%ecx
  10718c:	89 c2                	mov    %eax,%edx
  10718e:	8b 45 dc             	mov    -0x24(%ebp),%eax
  107191:	d3 e7                	shl    %cl,%edi
  107193:	09 c2                	or     %eax,%edx
  107195:	8b 45 e0             	mov    -0x20(%ebp),%eax
  107198:	89 7d d8             	mov    %edi,-0x28(%ebp)
  10719b:	89 f7                	mov    %esi,%edi
  10719d:	89 55 dc             	mov    %edx,-0x24(%ebp)
  1071a0:	89 da                	mov    %ebx,%edx
  1071a2:	89 c1                	mov    %eax,%ecx
  1071a4:	d3 ea                	shr    %cl,%edx
  1071a6:	0f b6 4d e4          	movzbl -0x1c(%ebp),%ecx
  1071aa:	d3 e3                	shl    %cl,%ebx
  1071ac:	89 c1                	mov    %eax,%ecx
  1071ae:	d3 ef                	shr    %cl,%edi
  1071b0:	0f b6 4d e4          	movzbl -0x1c(%ebp),%ecx
  1071b4:	89 f8                	mov    %edi,%eax
  1071b6:	d3 e6                	shl    %cl,%esi
  1071b8:	09 d8                	or     %ebx,%eax
  1071ba:	f7 75 dc             	divl   -0x24(%ebp)
  1071bd:	89 d3                	mov    %edx,%ebx
  1071bf:	89 75 d4             	mov    %esi,-0x2c(%ebp)
  1071c2:	89 f7                	mov    %esi,%edi
  1071c4:	f7 65 d8             	mull   -0x28(%ebp)
  1071c7:	89 c6                	mov    %eax,%esi
  1071c9:	89 d1                	mov    %edx,%ecx
  1071cb:	39 d3                	cmp    %edx,%ebx
  1071cd:	72 06                	jb     1071d5 <__umoddi3+0x105>
  1071cf:	75 0e                	jne    1071df <__umoddi3+0x10f>
  1071d1:	39 c7                	cmp    %eax,%edi
  1071d3:	73 0a                	jae    1071df <__umoddi3+0x10f>
  1071d5:	2b 45 d8             	sub    -0x28(%ebp),%eax
  1071d8:	1b 55 dc             	sbb    -0x24(%ebp),%edx
  1071db:	89 d1                	mov    %edx,%ecx
  1071dd:	89 c6                	mov    %eax,%esi
  1071df:	8b 45 d4             	mov    -0x2c(%ebp),%eax
  1071e2:	8b 7d e4             	mov    -0x1c(%ebp),%edi
  1071e5:	29 f0                	sub    %esi,%eax
  1071e7:	19 cb                	sbb    %ecx,%ebx
  1071e9:	0f b6 4d e0          	movzbl -0x20(%ebp),%ecx
  1071ed:	89 da                	mov    %ebx,%edx
  1071ef:	d3 e2                	shl    %cl,%edx
  1071f1:	89 f9                	mov    %edi,%ecx
  1071f3:	d3 e8                	shr    %cl,%eax
  1071f5:	d3 eb                	shr    %cl,%ebx
  1071f7:	09 d0                	or     %edx,%eax
  1071f9:	89 da                	mov    %ebx,%edx
  1071fb:	83 c4 2c             	add    $0x2c,%esp
  1071fe:	5b                   	pop    %ebx
  1071ff:	5e                   	pop    %esi
  107200:	5f                   	pop    %edi
  107201:	5d                   	pop    %ebp
  107202:	c3                   	ret
  107203:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
  107208:	89 da                	mov    %ebx,%edx
  10720a:	29 fe                	sub    %edi,%esi
  10720c:	19 c2                	sbb    %eax,%edx
  10720e:	89 75 e0             	mov    %esi,-0x20(%ebp)
  107211:	e9 25 ff ff ff       	jmp    10713b <__umoddi3+0x6b>
