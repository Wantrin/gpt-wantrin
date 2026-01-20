@echo off
echo Creating virtual environment with Python 3.11...

REM Try to use the py launcher to select Python 3.11
py -3.11 -m venv venv
IF %ERRORLEVEL% NEQ 0 (
    echo "py -3.11" command failed. Falling back to "python"...
    echo Please ensure "python" is version 3.11.
    python -m venv venv
)

echo Activating virtual environment...
call venv\Scripts\activate

echo Current Python version:
python --version

echo Installing dependencies from backend/requirements.txt...
pip install -r backend\requirements.txt

echo.
echo Virtual environment created successfully!
echo To activate it in the future, run: venv\Scripts\activate
pause