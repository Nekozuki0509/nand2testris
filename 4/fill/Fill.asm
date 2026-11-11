// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Fill.asm

// Runs an infinite loop that listens to the keyboard input. 
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed, 
// the screen should be cleared.

//// Replace this comment with your code.
@8192
D=A
@n
M=D
(LOOP)
  @i
  M=0
  @KBD
  D=M
  @WHITE
  D;JEQ
  @BLACK
  0;JMP
(BLACK)
  @color
  M=-1
  @WRITE
  0;JMP
(WHITE)
  @color
  M=0
  @WRITE
  0;JMP
(WRITE)
  @i
  D=M
  @n
  D=D-M
  @LOOP
  D;JEQ
  @i
  D=M
  @SCREEN
  D=A+D
  @m
  M=D
  @color
  D=M
  @m
  A=M
  M=D
  @i
  M=M+1
  @WRITE
  0;JMP
