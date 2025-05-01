PROCEDURE tigermain
# Before canonicalization: 
MOVE(
 TEMP $v0,
 ESEQ(
  MOVE(
   TEMP t33,
   CONST 5),
  BINOP(PLUS,
   TEMP t33,
   CONST 1)))
# After canonicalization: 
MOVE(
 TEMP t33,
 CONST 5)
MOVE(
 TEMP $v0,
 BINOP(PLUS,
  TEMP t33,
  CONST 1))
# Basic Blocks: 
#
LABEL L1
MOVE(
 TEMP t33,
 CONST 5)
MOVE(
 TEMP $v0,
 BINOP(PLUS,
  TEMP t33,
  CONST 1))
JUMP(
 NAME L0)
LABEL L0
# Trace Scheduled: 
LABEL L1
MOVE(
 TEMP t33,
 CONST 5)
MOVE(
 TEMP $v0,
 BINOP(PLUS,
  TEMP t33,
  CONST 1))
JUMP(
 NAME L0)
LABEL L0
# Instructions: 
L1:
li t34,5
move t33,t34
add t35, t33,1
move $v0,t35
j L0
L0:
END tigermain
