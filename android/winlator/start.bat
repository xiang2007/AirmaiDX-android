@echo off
rem Template: run from the game folder (next to Sinmai.exe / inject.exe).
rem Adjust the Sinmai.exe arguments to match your package.
cd /d "%~dp0"
if not defined SEGATOOLS_CONFIG_PATH set SEGATOOLS_CONFIG_PATH=%~dp0segatools.ini
start "" /min inject.exe -d -k mai2hook.dll amdaemon.exe -f -c config_common.json config_server.json config_client.json
timeout /t 3 >nul
Sinmai.exe -screen-fullscreen 0 -popupwindow -screen-width 1080 -screen-height 1920
