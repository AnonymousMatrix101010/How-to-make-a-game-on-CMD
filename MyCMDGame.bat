@echo off
title [Oblivion]
Color 0A
if "%1" neq "" ( goto %1)
:Menu
cls
echo 1. Start
echo 2. Credits
echo 3. Exit
set /p answer=Type the number of your option and press enter : 
if %answer%==1 goto Start_1
if %answer%==2 goto Credits
if %answer%==3 goto Exit
:Credits
cls
echo Credits
echo Made by nikajuris nicolas
echo Thank you for playing [oblivion]!
pause
goto Menu
:Start_1
cls
echo Oh no! You're surrounded by enemies.
echo There are five of them, and they're all armed.
echo If you fight them, you are having a high chance of winning.
set /p answer=Would you like to fight or run?
if %answer%==fight goto Fight_1
if %answer%==run goto Run_1
pause
:Run_1
cls
echo You live to fight another day.
pause
goto Start_1
:Fight_1
echo Prepare to fight.
echo The enemies suddenly rush you all at once.
set /p answer= Choose from the numbers 1,2,3 or 4 and type it and press Enter to continue.
if %answer%==1 goto Fight_1_Loop
:Fight_1_Loop
set /a num=%random%
if %num% gtr 4 goto Fight_1_Loop
if %num% lss 1 goto Fight_1_Loop
if %num%==1 goto Lose_Fight_1
if %num%==2 goto Win_Fight_1
if %num%==3 goto Win_Fight_1
if %num%==4 goto Win_Fight_1
:Lose_Fight_1
cls
echo You were defeated. Play again?
pause
goto Menu
:Win_Fight_1
cls
echo You are victorious!
set /p answer=Would you like to save? [y/n]
if %answer%=='y' goto 'Start_2'
if %answer%=='n' goto 'Start_2'
goto Start_2:
echo You found a sword! 
echo Pick it up?
set /p answer=Would you like to pick it up or leave it? 
if %answer%==Pick it up goto Pick it up_2
if %answer%==leave it goto Leave it_2
pause
:Leave_it_2_Loop
echo You live to fight another day.
pause
cls
set /a num=%random%
if %num% gtr 4 goto Pick_it_up_2_Loop
if %num% lss 1 goto Leave_it_2_Loop
:Pick it up_2
echo You have a sword! good job!
pause
goto Menu
:
cls
echo You are victorious!
set /p answer=Would you like to save? [y/n]
if %answer%=='y' goto 'Save'
if %answer%=='n' The game is finnished thank you for playing
:Save
