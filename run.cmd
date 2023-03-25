@echo off
cd /D "%~dp0"


:start
echo "Start VENV"
call .venv\Scripts\activate.bat
goto :run

:run
echo "Start WebUI"
python webui.py --precision int4-qe
pause
