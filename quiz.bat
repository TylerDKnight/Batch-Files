@echo off

:start
set /a gmade=0
cls
color 0B
echo Guess My Number!
echo.
echo Press any key to continue to the game!
pause>null
goto game

:game
cls
set /a answer=%random:~-2%
set /a answer=%answer%+1
set /a qsleft=10
goto loop

:loop
cls
if %qsleft% LEQ 0 goto gmovr
echo %qsleft% guesses left
echo What is your guess, 0-99?
set /p guess=____
set /a eval=%guess%*1
if %eval% LSS 0 goto invalid
if %eval% GTR 99 goto invalid
goto valid

:invalid
echo Invalid answer. Enter integer guess 0-99.
pause
goto loop

:valid
set /a gmade=%gmade%+1
set /a qsleft=%qsleft%-1
if %guess%==%answer% goto equal
if %guess% LSS %answer% goto less
if %guess% GTR %answer% goto more
echo Error...something went wrong...
goto loop

:less
echo Answer is higher!
pause
goto loop

:more
echo Answer is lower!
pause
goto loop

:equal
cls
color 0a
echo Congratulations!
echo You correctly guessed my number in only %gmade% tries!
echo.
pause
exit

:gmovr
cls
color 0c
echo Sorry, you ran out of guesses!
echo The answer was %answer%.
echo.
pause
exit
