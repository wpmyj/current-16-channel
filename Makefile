# MPLAB IDE generated this makefile for use with GNU make.
# Project: String.mcp
# Date: Fri May 22 20:51:32 2015

AS = pic30-as.exe
CC = pic30-gcc.exe
LD = pic30-ld.exe
AR = pic30-ar.exe
HX = pic30-bin2hex.exe
RM = rm

String.hex : String.cof
	$(HX) "String.cof"

String.cof : main.o timer.o sci.o ecan.o collect.o
	$(CC) -mcpu=33FJ64GP706 "main.o" "timer.o" "sci.o" "ecan.o" "collect.o" -o"String.cof" -Wl,-Tp33FJ64GP706.gld,--defsym=__MPLAB_BUILD=1,-Map="String.map",--report-mem

main.o : collect.h ecan.h sci.h adc.h timer.h c:/program\ files/microchip/mplab\ c30/support/dsPIC33F/h/p33FJ64GP706.h c:/program\ files/microchip/mplab\ c30/support/dsPIC33F/h/p33Fxxxx.h main.c
	$(CC) -mcpu=33FJ64GP706 -x c -c "main.c" -o"main.o" -g -Wall

timer.o : c:/program\ files/microchip/mplab\ c30/support/dsPIC33F/h/p33FJ64GP706.h c:/program\ files/microchip/mplab\ c30/support/dsPIC33F/h/p33Fxxxx.h timer.h timer.c
	$(CC) -mcpu=33FJ64GP706 -x c -c "timer.c" -o"timer.o" -g -Wall

sci.o : sci.h c:/program\ files/microchip/mplab\ c30/support/dsPIC33F/h/p33FJ64GP706.h c:/program\ files/microchip/mplab\ c30/support/dsPIC33F/h/p33Fxxxx.h sci.c
	$(CC) -mcpu=33FJ64GP706 -x c -c "sci.c" -o"sci.o" -g -Wall

ecan.o : ecan.h c:/program\ files/microchip/mplab\ c30/support/dsPIC33F/h/p33FJ64GP706.h c:/program\ files/microchip/mplab\ c30/support/dsPIC33F/h/p33Fxxxx.h ecan.c
	$(CC) -mcpu=33FJ64GP706 -x c -c "ecan.c" -o"ecan.o" -g -Wall

collect.o : collect.h c:/program\ files/microchip/mplab\ c30/support/dsPIC33F/h/p33FJ64GP706.h c:/program\ files/microchip/mplab\ c30/support/dsPIC33F/h/p33Fxxxx.h collect.c
	$(CC) -mcpu=33FJ64GP706 -x c -c "collect.c" -o"collect.o" -g -Wall

clean : 
	$(RM) "main.o" "timer.o" "sci.o" "ecan.o" "collect.o" "String.cof" "String.hex"

