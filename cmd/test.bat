@ECHO OFF
SetLocal  EnableExtensions EnableDelayedExpansion
ECHO testing...
REM test enclosing with quotes
@REM set "var1=%~1"
@REM set var2="%~1"
@REM set var3=%1
@REM set var4="%1"
@REM set var5=%~1
@REM echo With quotes : "!var1!"
@REM echo With no quotes : !var1!
@REM echo set with quotes : !var2!
@REM echo retained arg quotes : !var3!
@REM echo retained arg quotes,set with  quotes : !var4!
@REM echo removed quotes in arg : !var5!
@REM ECHO ...done
rem test custom module
call strlen.bat "%~1" var1
echo !var1! %var1%
EndLocal