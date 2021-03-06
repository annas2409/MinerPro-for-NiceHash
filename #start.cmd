@echo off
:: CONFIG STARTS
SET LOCALDIR=%~dp0
SET CONSOLE_LOG_LEVEL=2
SET FILE_LOG_LEVEL=0
SET WEB_PORT=38080
SET WEB_HOST=0.0.0.0
SET TOKEN=MyCoolToken
SET PORT=33333
SET HOST=0.0.0.0
SET RESTART_DELAY=0
:: CONFIG ENDS
cd /d "%LOCALDIR%"
:start
SET COMMAND_FILE=ExcavatorServer.json

excavator.exe -c %LOCALDIR%%COMMAND_FILE% -d %CONSOLE_LOG_LEVEL% -f %FILE_LOG_LEVEL% -wp %WEB_PORT% -wi %WEB_HOST% -wa %TOKEN% -p %PORT% -i %HOST%  

timeout /T %RESTART_DELAY%
goto start
