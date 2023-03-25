@echo off
cd /D "%~dp0"


:start
echo "Start VENV"
call .venv\Scripts\activate.bat
goto :run

:run
echo "Start WebUI"
python webui.py --precision int4-qe --cache-path ./cache --model-path  "THUDM/chatglm-6b-int4-qe"
pause
