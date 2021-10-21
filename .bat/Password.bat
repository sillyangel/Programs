@echo off
color 09
:start
cls
echo -create (Make a Password)
echo -check (Check your Password)
echo.
set /p PROGRAM= What do you want to do?:
goto %PROGRAM%



:create
cls
set /p PASSWORD= What do you want your password to be?
echo %PASSWORD% > Password.txt
pause
goto start

:check
cls
set /p PASSWORD1= What is your password?

for /f "Delims=" %%a in (Password.txt) do (
set TEXT=%%a
)
if %PASSWORD1%==%TEXT% goto correct
echo you are wrong
pause
goto start

:correct 
echo you are right!!
pause
goto start