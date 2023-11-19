@echo off
:Loop
REM Get the current date and time
for /F "tokens=1-6 delims=/: " %%a in ('date /t') do (set day=%%a& set month=%%b& set date=%%c& set year=%%d)
for /F "tokens=1-6 delims=/: " %%a in ('time /t') do (set hour=%%a& set minute=%%b& set ampm=%%c)

REM Create a filename based on the current date and time
set filename=%year%-%month%-%date%_%hour%-%minute%-%ampm%.jpg

REM Use CommandCam to take a picture and save it with the created filename
CommandCam /filename %filename%

REM Wait for 5 minutes
timeout /t 300

REM Go back to the beginning of the loop
goto Loop
