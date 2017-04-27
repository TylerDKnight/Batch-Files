@echo off
title Batch Terrain Generator
set /a maxlen= 80
set /a len=1
set string=*
set concat=o
color 0A

:loop

set /a iseven = (%random%) %% 2
if %iseven% EQU 0 goto even
if not %iseven% EQU 0 goto odd

:even
if %len% GTR 1 set string=%string:~0,-1%
if %len% LEQ 1 goto print
set /a len=%len%-1
goto print

:odd
if %len% LSS %maxlen% set string=%string%%concat%
if %len% GEQ %maxlen% goto print
set /a len=%len%+1
goto print

:print
echo %string%

goto loop