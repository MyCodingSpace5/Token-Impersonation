@echo off
call :Start

:Start
set /p Username = "Enter the Username of the Account you wish to spoof"
set /p EnterFilePath = "Enter path of file"
echo %username% is correct right?
set /p boolean = "y/n"


if boolean == "y" (
   powershell -ExecutionPolicy Bypass -File %EnterFilePath% -username %Username%
)
)else(
   call :Start    
)
