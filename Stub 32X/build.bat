@echo off

set AS_MSGPATH=../../AS/Win32
set USEANSI=n
"../../AS/Win32/asw.exe" -xx -q -E -A -L code.asm

IF NOT EXIST code.p goto LABELERROR

set AS_MSGPATH=p2bin
"p2bin/p2bin.exe" code.p code.bin -r 0x-0x

IF EXIST code.log goto LABELWARNING

del code.p

exit /b

:LABELERROR
echo There were build errors. Check code.log.
pause
exit /b

:LABELWARNING
echo There were build warnings. Check code.log.
pause
exit /b
