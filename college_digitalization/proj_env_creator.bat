@echo off
cls
if exist ".\env\" (
    rd /s /q .\env\
)
python -m pip install --upgrade wheel setuptools pip
python -m venv env
CALL env\Scripts\activate
python -m pip install --upgrade wheel setuptools pip
python -m pip install -r requirements.txt