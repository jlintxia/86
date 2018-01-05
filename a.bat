
@echo off
set a=文字
set b=%a: =%
:loop
set c=%b:~0,1%
set b=%b:~1%
if not "%c%"=="~0,1" (set/p=%c%<nul&ping -n 2 127.1>nul) else (echo;&goto :next)
goto :loop
:next 
pause 
