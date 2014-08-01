@echo off
SETLOCAL ENABLEDELAYEDEXPANSION

set runcommand=cscript //nologo "%~dp0lessc-1.3.wsf" %1  %2

if "%~1"=="" (
 echo Usage:
 echo  Single file: %~nx0 input.less [output.css] [logfile]
 echo  Directory:   %~nx0 inputdir outputdir [logfile]
 exit /b
)
set log=%~dpnx1.log
if NOT "%~3"=="" (
 set log=%~dpnx3.log
) else (
 set log=%log:\=-%
 set log=%temp%\!log::=!
)

echo %date% %time% %cd% %~nx0 %1 %2 to "%log%"
echo %date% %time% %cd% %~nx0 > "%log%" 2>&1
echo %runcommand% >> "%log%" 2>&1

%runcommand% >> "%log%" 2>&1
echo %date% %time%. Done >> "%log%" 2>&1

rem echo RESULT of %2
rem type %2 >> "%log%" 2>&1

type "%log%
find /i "error" %log% >nul  && (echo Some errors. See below or log at %log% && exit /b 1 )


rem start /b /w %~dp0less-convert-min.bat %1  %~n2-min%~x2

exit /b 0
