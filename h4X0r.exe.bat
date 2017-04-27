@echo off
cls
title SERVER-CRYPANALYSIS.://BREAKKEYCODE.VRS
color 02
set /a loop=2000
set /a blinker=%loop%-(%random:~-2%*5)
set /a a=0
:loop
set /a a=%a%+1
if %a% GTR %blinker% color 0c
if %a% LEQ %blinker% color 02
if %a% GTR %loop% set /a a=0
echo ACCESS_KEY: %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
goto loop