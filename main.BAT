@echo off
title MultiTool - by xvvsb
chcp 65001 >nul
color 5


:start
call :banner

:banner

echo.
echo.
echo           				[38;2;255;0;0m██╗  ██╗██╗   ██╗██╗   ██╗███████╗██████╗ [0m
echo          				[38;2;255;51;0m╚██╗██╔╝██║   ██║██║   ██║██╔════╝██╔══██╗[0m
echo          				[38;2;255;102;0m╚███╔╝ ██║   ██║██║   ██║███████╗██████╔╝[0m
echo          				[38;2;255;153;0m██╔██╗ ╚██╗ ██╔╝╚██╗ ██╔╝╚════██║██╔══██╗[0m
echo         				[38;2;255;204;0m██╔╝ ██╗ ╚████╔╝  ╚████╔╝ ███████║██████╔╝[0m
echo         				[38;2;255;255;0m╚═╝  ╚═╝  ╚═══╝    ╚═══╝  ╚══════╝╚═════╝ [0m
echo.
echo.
pause

:menu
echo [38;2;255;255;0m 			   Page 1
echo [38;2;255;0;0m        ╔═(1) Discord[0m  
echo [38;2;255;51;0m        ║[0m  
echo [38;2;255;102;0m        ╠══(2) Spotify[0m  
echo [38;2;255;153;0m        ║[0m  
echo [38;2;255;204;0m        ╠═══(3) Virtualbox[0m  
echo [38;2;255;255;0m        ║[0m  
echo [38;2;255;255;0m        ╠════(4) Firefox[0m
echo [38;2;255;255;0m        ║[0m  
echo [38;2;255;255;0m        ╠═════(5) OBS[0m  
echo [38;2;255;255;0m        ║[0m 
echo [38;2;255;255;0m        ╠══════(6) Change Page[0m  
echo [38;2;255;255;0m        ╚═══════(7) Leave[0m  
pause

:menu2
echo menu2

set /p escolha="Press the number of the software to install: "

if "%escolha%"=="1" goto instalar_discord
if "%escolha%"=="2" goto instalar_spotify
if "%escolha%"=="3" goto instalar_virtualbox
if "%escolha%"=="4" goto instalar_firefox
if "%escolha%"=="5" goto instalar_obs
if "%escolha%"=="6" goto mudar_pagina
if "%escolha%"=="7" goto sair

echo Invalid Option! Please choose valid option!(1-5).
pause
goto menu

:instalar_discord
cls
echo Downloading and installing Discord...
bitsadmin /transfer DiscordDownload /download /priority foreground https://discord.com/api/download?platform=win "%temp%\DiscordSetup.exe"
start /wait "" "%temp%\DiscordSetup.exe"
echo Discord installed with success!
pause
goto menu

:instalar_spotify
cls
echo Downloading and installing Spotify...
bitsadmin /transfer SpotifyDownload /download /priority foreground https://download.scdn.co/SpotifySetup.exe "%temp%\SpotifySetup.exe"
start /wait "" "%temp%\SpotifySetup.exe"
echo Spotify installed with success!
pause
goto menu

:instalar_virtualbox
cls
echo Downloading and installing VirtualBox...
bitsadmin /transfer VBoxDownload /download /priority foreground https://download.virtualbox.org/virtualbox/7.0.6/VirtualBox-7.0.6-155176-Win.exe "%temp%\VirtualBoxSetup.exe"
start /wait "" "%temp%\VirtualBoxSetup.exe"
echo VirtualBox installed with success!
pause
goto menu

:instalar_firefox
cls
echo Downloading and installing Firefox...
bitsadmin /transfer FirefoxDownload /download /priority foreground https://download.mozilla.org/?product=firefox-latest&os=win64&lang=de "%temp%\FirefoxSetup.exe"
start /wait msiexec /i "%temp%\PuttySetup.msi"
echo Firefox installed with success!
pause
goto menu

:instalar_obs
cls
echo Downloading and installing OBS...
bitsadmin /transfer OBS-StudioDownload /download /priority foreground https://cdn-fastly.obsproject.com/downloads/OBS-Studio-30.2.3-Windows-Installer.exe "%temp%\OBS-Studio.exe"
start /wait msiexec /i "%temp%\PuttySetup.msi"
echo Firefox installed with success!
pause
goto menu

:mudar_pagina
cls
goto :menu2

:sair
cls
echo Exiting Multitool...
exit
