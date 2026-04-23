@echo off
title DBVault Uninstaller
color 0C
echo.
echo  ==========================================
echo   DBVault - Uninstaller
echo  ==========================================
echo.

set "INSTALL_DIR=%LOCALAPPDATA%\DBVault"

set /p CONFIRM="  Remove DBVault from your computer? (Y/N): "
if /i not "%CONFIRM%"=="Y" (
    echo  Uninstall cancelled.
    pause
    exit /b
)

echo.
echo  Removing files...
taskkill /F /IM DBVault.exe >nul 2>&1
if exist "%INSTALL_DIR%" rmdir /S /Q "%INSTALL_DIR%"

echo  Removing desktop shortcut...
del "%USERPROFILE%\Desktop\DBVault.lnk" >nul 2>&1

echo  Removing Start Menu shortcut...
del "%APPDATA%\Microsoft\Windows\Start Menu\Programs\DBVault.lnk" >nul 2>&1

echo.
echo  DBVault has been removed.
echo.
pause
