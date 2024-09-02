@echo off
call :Start
goto :eof
:Start
set /p Username="Enter the Username of the Account you wish to spoof: "
set /p EnterFilePath="Enter path of file: "
set /p boolean="y/n: "
echo %username% is correct right?

if /i "%boolean%"=="y" (
   powershell -ExecutionPolicy Bypass -File "%EnterFilePath%" -username "%Username%"
)
)else(
   call :Start    
)
goto :eof
