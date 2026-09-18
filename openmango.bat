@echo off
if "%1" neq "conhost" (
    start "" conhost.exe cmd /k "%~f0" conhost
    exit
)
chcp 65001 >nul
title screenshot - dc wbh




:banner
echo.
echo.                                                                                                     
echo         ▄▄▄▄▄▄▄                                ▄▄▄▄▄▄▄ ▄▄                               ▄▄   ▄▄              
echo        █████▀▀▀                               █████▀▀▀ ██           ██    ██            ██   ██          ▀▀  
echo        ▀████▄  ▄████ ████▄ ▄█▀█▄ ▄█▀█▄ ████▄  ▀████▄  ████▄ ▄███▄ ▀██▀▀ ▀██▀▀ ▄█▀█▄ ▄████   ████▄ ▄███▄ ██  
echo          ▀████ ██    ██ ▀▀ ██▄█▀ ██▄█▀ ██ ██    ▀████ ██ ██ ██ ██  ██    ██   ██▄█▀ ██ ██   ██ ██ ██ ██ ██  
echo       ███████▀ ▀████ ██    ▀█▄▄▄ ▀█▄▄▄ ██ ██ ███████▀ ██ ██ ▀███▀  ██    ██   ▀█▄▄▄ ▀████   ████▀ ▀███▀ ██▄ 
echo.                                                                                                     
echo.   
 
python mango.py
pause 