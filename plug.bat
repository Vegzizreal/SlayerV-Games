@echo off
title TERPENE TYCOON // SECURE LINE
color 0a
echo.
echo  _____                   ____
echo  ^|_   _^|__ _ __ _ __   / ___^|_ __ ___
echo    ^| ^|/ _ \ '__^| '_ \ ^| ^|   _ / _ \/ __^|
echo    ^| ^|^|  __/ ^|  ^| ^|_) ^|^| ^|__^| ^|  __/\__ \
echo    ^|_^|\___^|_^|  ^| .__/ \____^|_^|\___^|\___/
echo                ^|_^|
echo.
echo  [+] Initializing secure connection...
ping -n 2 127.0.0.1 ^>nul
echo  [+] Secure channel established.
echo.
set /p "code=[?] Enter your plug code: "
echo.
:: Validate plug code format: XXXXX-XXXXX-XXXXX (alphanumeric)
echo %code% ^| findstr /R "^[A-Za-z0-9][A-Za-z0-9][A-Za-z0-9][A-Za-z0-9][A-Za-z0-9]-[A-Za-z0-9][A-Za-z0-9][A-Za-z0-9][A-Za-z0-9][A-Za-z0-9]-[A-Za-z0-9][A-Za-z0-9][A-Za-z0-9][A-Za-z0-9][A-Za-z0-9]$" ^>nul
if errorlevel 1 (
    echo  [!] Invalid plug code.
    echo  [!] Check your purchase email for the correct code.
    echo.
    pause
    exit /b 1
)
echo  [+] Code accepted. Unlocking...
ping -n 2 127.0.0.1 ^>nul
echo  [+] Welcome back.
ping -n 2 127.0.0.1 ^>nul
start "" "https://vegzizreal.github.io/SlayerV-Games/trap-tycoon/?src=terminal&unlock=%code%"
exit
