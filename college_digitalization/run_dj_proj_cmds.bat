@ECHO OFF

REM Prompt for user input
SET /P ENV_NAME=Enter the Django project environment name (default: env): 
SET /P PORT=Enter the port number (default: 8000): 

REM Set default values if input is empty
IF "%ENV_NAME%"=="" SET ENV_NAME=env
IF "%PORT%"=="" SET PORT=8000

REM Activate virtual environment
CALL %ENV_NAME%\Scripts\activate

REM Run the server on the specified port
python manage.py runserver 0.0.0.0:%PORT%
