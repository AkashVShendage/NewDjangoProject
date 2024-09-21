@ECHO OFF

REM Prompt for user input
SET /P ENV_NAME=Enter the Django project environment name (default: env): 
SET /P PROJECT_NAME=Enter the Django project name (default: college_digitalization): 
SET /P APP_NAME=Enter the Django app name (default: home): 
SET /P PORT=Enter the port number (default: 8000): 

REM Set default values if input is empty
IF "%ENV_NAME%"=="" SET ENV_NAME=env
IF "%PROJECT_NAME%"=="" SET PROJECT_NAME=college_digitalization
IF "%APP_NAME%"=="" SET APP_NAME=home
IF "%PORT%"=="" SET PORT=8000

REM Upgrade pip and setuptools
python -m pip install --upgrade setuptools pip

REM Create virtual environment
python -m venv %ENV_NAME%

REM Activate virtual environment
CALL %ENV_NAME%\Scripts\activate

REM Upgrade pip again inside virtual environment
python -m pip install --upgrade setuptools pip

REM Install Django and Pillow
python -m pip install django pillow

REM Start new Django project
django-admin startproject %PROJECT_NAME%

REM Navigate into the project directory
cd %PROJECT_NAME%

REM Start new Django app
python manage.py startapp %APP_NAME%

REM Run migrations
python manage.py makemigrations
python manage.py migrate

REM Run the server on the specified port
python manage.py runserver 0.0.0.0:%PORT%
