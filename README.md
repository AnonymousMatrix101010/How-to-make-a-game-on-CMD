# How to make a game on CMD
In this ReadMe file i will teach you how to make a simple game on cmd. I will also include an example game.

# Step 1: Open Notepad
Open Notepad. Notepad is a free text editor which is pre-installed on all Windows computers. You'll use Notepad to input your code. To open it, do the following:
* Click start or Windows + R 
* Type in `notepad`
* Click `enter`
Then Notepad will start

# Step 2: Adding the title to your game

Add the title you want to your game

```
@echo off
Title [Your title here]
```

# Step 3: Adding colors to your game

Now you can choose the text color and the background color of your game. 

Command Prompt offers several colors that you can add you can add to your game. 

To trigger it type in a color like `Color 0A`.

`0` Gives our game a black background 

`A` Gives our game a green color to our text

Codes of common colors are included on the following

* Text Colors — Use A, B, C, D, E, or F to refer to light-green, light-aqua, light-red, light-purple, light-yellow, or bright-white.

* Background Colors — Use 0, 1, 2, 3, 4, 5, 6, 7, 8, or 9 to refer to black, blue, green, aqua, red, purple, yellow, white, grey, or light-blue.

* For example, the standard black-and-white Command Prompt interface would use the code "0F".

# Step 4: Setting your game's colors


Enter the following text into Notepad—making sure to replace "0A" with your preferred background and text combination—and then press `enter`

```
@echo off
title Batch Game
color 0A
if "%1" neq "" ( goto %1)
```

# Step 5: Adding a menu on your game


Create the game menu. This is going to be the game's startup menu. 
Enter the following text into Notepad, then press `↵ Enter`:

```
:Menu
cls
echo 1. Start
echo 2. Credits
echo 3. Exit
set /p answer=Type the number of your option and press enter : 
if %answer%==1 goto Start_1
if %answer%==2 goto Credits
if %answer%==3 goto Exit
```

# Step 6: Adding an exit option


Add an Exit option. 
This is how players will be able to exit the game. 
Enter the following text into Notepad, then press `↵ Enter`

```
:Exit
cls
echo Thanks for playing!
pause
exit
```

# Step 7: Adding credits to your game

To represent the people who made this game, you must add a Credits option
Enter the following text into Notepad, then press `↵ Enter`

```
:Credits
cls
echo.
echo Thank you for playing [Title]!
pause
goto Menu
```

# Step 8: Adding the Start or level of the game
In order the player can play the game you must create a Start code... 
This code allows the player to start a new game:

```
:Start_1
cls
echo Oh no! You're surrounded by trolls.
echo There are five of them, and they're all armed.
echo If you fight them, you are having a high chance of winning.
set /p answer=Would you like to fight or run?
if %answer%==fight goto Fight_1
if %answer%==run goto Run_1
pause
```

# Step 9: Adding the action code
Add the action code. Finally, you'll enter the following code to dictate the action of the game:

```
:Run_1
cls
echo You live to fight another day.
pause
goto Start_1
:Fight_1
echo Prepare to fight.
echo The enemies suddenly rush you all at once.
set /p answer= Type 1 and press Enter to continue.
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
if %answer%=='y' goto 'Save'
if %answer%=='n' goto 'Start_2'
:Save
goto Start_2
```

# Step 10: Saving your game

Click `File`. It's in the top-left corner of the Notepad window. A drop-down menu will appear.


Click `Save As…` It's in the File drop-down menu. Doing so will open a Save As window.

Enter a file name followed by the `.bat` extension. In the `File name` text box that's near the bottom of the window, type in whatever you want to name the game followed by .bat to ensure that the game will save as a Command Prompt file.
For example, to name your game "RPG CMD", you would type in `RPG_CMD.bat` here.

Change the file type. Click the *Save as type* drop-down box at the bottom of the window, then click `All Files` in the resulting drop-down menu.

Select the desktop as the save location. Click Desktop in the left-hand sidebar to do so. You may first have to scroll up or down on the sidebar in order to find the Desktop folder.

Click `Save`. It's in the bottom-right corner of the window. Doing so will save your game as a BAT file.

Run your game. Double-click the BAT file to open your game in Command Prompt, then follow the on-screen prompts.
For example, you'll press 1 to start the game.


Experiment with the code. Now that you have the basic groundwork laid out for the game, you can edit the code to change the in-game text, add options, and more.
To edit your game's code, right-click the BAT file and then click Edit in the drop-down menu. You can then press `Ctrl+S` to save any changes.
Make sure you read through the code to understand what each line of text does.
