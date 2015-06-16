echo off
rem ===========Clipper================
SET INCLUDE=E:\CLIPPER\INCLUDE;E:\CLIPPER\CATOOLS\INCLUDE
SET LIB=E:\CLIPPER\LIB;E:\CLIPPER\CATOOLS\LIB
SET OBJ=E:\CLIPPER\OBJ;E:\CLIPPER\CATOOLS\OBJ
SET PLL=E:\CLIPPER\PLL;E:\CLIPPER\CATOOLS\PLL

PATH=D:\CLIPPER5\BIN;%path%
rem ==================================
E:\CLIPPER\clipper crack_mo.prg /a /m /n
E:\CLIPPER\rtlink file crack_mo.obj lib ct.lib




