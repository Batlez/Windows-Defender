MODE 90,10
@echo off
SETLOCAL EnableDelayedExpansion
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do     rem"') do (
  set "DEL=%%a"
)
title Windows Defender - Enable or Disable - Batlez#3740
goto :WU

:WU
cls
echo.[======================================================================================]
echo.	
call :colorEcho 0a "Press [1] to Enable Windows Defender"
echo.
call :colorEcho 0b "Press [2] to Disable Windows Defender"
echo.
call :colorEcho 0C "Press [3] to Quit"
echo.
echo.[======================================================================================]
choice /C:123 /N /M "Enter Your Number: "
if errorlevel == 3 goto :Quit
if errorlevel == 2 goto :Disable
if errorlevel == 1 goto :Enable

:Quit
exit

:Enable
@start /b "Batlez - Enable WinDefend - TrustedInstaller" "%~dp0bin\NSudoLG.exe" -U:T -P:E "%~dp0bin\Enable_Defender.bat"
goto :EOF

:Disable
@start /b "Batlez - Disable WinDefend - TrustedInstaller" "%~dp0bin\NSudoLG.exe" -U:T -P:E "%~dp0bin\Disable_Defender.bat"
goto :EOF

:EOF

:colorEcho
echo off
<nul set /p ".=%DEL%" > "%~2"
findstr /v /a:%1 /R "^$" "%~2" nul
del "%~2" > nul 2>&1i