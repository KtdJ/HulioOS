@echo off
title HulioOS BootLoader

::VALUES::
MEM=1000
GMEM=1000

:bootcycle
CLS
IF EXIST kernal.bat goto loader

:bootcycle2
IF NOT EXIST kernal.bat goto kerror

:kerror
CLS
title Internal Error
echo.
echo There was an internal error, please restart the system..
pause
exit

:loader
CLS
title Loader$
echo.
echo The OS is currenlty checking for missing files...
IF NOT EXIST kernal.bat goto kerror
IF EXIST kernal.bat goto load
goto load


:load
CLS
title Loading HulioOS
echo.
echo Loading.
ping localhost -n 4 >nul
cls
echo.
echo Loading..
ping localhost -n 5 >nul
cls
echo.
echo Loading...
ping localhost -n 4 >nul
cls
echo.
echo Loading.
ping localhost -n 4 >nul
cls
echo.
echo Loading..
ping localhost -n 5 >nul
cls
echo.
echo Loading...
ping localhost -n 4 >nul
goto OSmenu

:OSmenu
CLS
color 0a
title HulioOS V0.1.0 (c) Battysoft 2018
echo.
echo (C) Battysoft 2018
echo ==================
echo.
echo [1] Calculator
echo [2] Time/Date
echo [3] Shutdown
echo [4] Restart
set /p menu=Enter:
if %menu% == 1 goto calc