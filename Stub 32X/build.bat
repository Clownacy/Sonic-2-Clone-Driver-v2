@echo off
REM asmsh /q /p /o i+ /o psh2 /o w- "code.asm","code.bin", ,"out.out"
set AS_MSGPATH=../../AS/Win32
set USEANSI=n
"../../AS/Win32/asw.exe" -xx -q -E -A -L code.asm
set AS_MSGPATH=p2bin
"p2bin/p2bin.exe" code.p code.bin -r 0x-0x
