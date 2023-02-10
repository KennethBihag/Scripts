rem a module, call only from another script
rem no escape sequence needed for input string
set "str=%~1"
if [!str!]==[] (
    echo Please provide a string as argument!
    exit /b 1
)
call :strLen str strlen
rem echo String is %strlen% characters long
if not [%~2]==[] set %2=%strlen%
exit /b

:strLen
set len=0
:strLen_Loop
if not "!%1:~%len%!"=="" (
 set /A len+=1
 goto :strLen_Loop
)
set %2=%len%