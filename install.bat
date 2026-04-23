@echo off
title DBVault Installer v1.0.0
color 0B
echo.
echo  ==========================================
echo   DBVault v1.0.0 - Installer
echo   Database Management Tool
echo  ==========================================
echo.

set "INSTALL_DIR=%LOCALAPPDATA%\DBVault"

echo  Install location: %INSTALL_DIR%
echo.
set /p CONFIRM="  Proceed with installation? (Y/N): "
if /i not "%CONFIRM%"=="Y" (
    echo  Installation cancelled.
    pause
    exit /b
)

echo.
echo  [1/4] Creating install directory...
if not exist "%INSTALL_DIR%" mkdir "%INSTALL_DIR%"

echo  [2/4] Copying files...
xcopy /E /I /Y /Q "%~dp0..\dist\DBVault\*" "%INSTALL_DIR%\" >nul 2>&1
if errorlevel 1 (
    echo  ERROR: Failed to copy files. Make sure dist\DBVault exists.
    echo  Run build_installer.py first to create the executable.
    pause
    exit /b 1
)

echo  [3/4] Creating desktop shortcut...
powershell -Command "$ws = New-Object -ComObject WScript.Shell; $s = $ws.CreateShortcut([System.IO.Path]::Combine([Environment]::GetFolderPath('Desktop'), 'DBVault.lnk')); $s.TargetPath = '%INSTALL_DIR%\DBVault.exe'; $s.WorkingDirectory = '%INSTALL_DIR%'; $s.Description = 'DBVault - Database Management Tool'; $s.Save()" >nul 2>&1

echo  [4/4] Creating Start Menu shortcut...
set "STARTMENU=%APPDATA%\Microsoft\Windows\Start Menu\Programs"
powershell -Command "$ws = New-Object -ComObject WScript.Shell; $s = $ws.CreateShortcut([System.IO.Path]::Combine('%STARTMENU%', 'DBVault.lnk')); $s.TargetPath = '%INSTALL_DIR%\DBVault.exe'; $s.WorkingDirectory = '%INSTALL_DIR%'; $s.Description = 'DBVault - Database Management Tool'; $s.Save()" >nul 2>&1

echo.
echo  ==========================================
echo   Installation Complete!
echo  ==========================================
echo.
echo   Location: %INSTALL_DIR%
echo   Desktop shortcut: Created
echo   Start Menu: Created
echo.
echo   Double-click "DBVault" on your desktop to start.
echo.
set /p LAUNCH="  Launch DBVault now? (Y/N): "
if /i "%LAUNCH%"=="Y" start "" "%INSTALL_DIR%\DBVault.exe"
echo.
pause
