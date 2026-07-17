@echo off
for /f "tokens=1-6 delims=/: " %%a in ("%DATE% %TIME%") do (
    set YY=%%a
    set MM=%%b
    set DD=%%c
    set HH=%%d
    set MIN=%%e
    set SS=%%f
)
set TS=%YY%%MM%%DD%_%HH%%MIN%%SS%
echo Backing up FOCUS-BATCH-CONNECT...
copy "index.html" "index_%TS%.html"
echo Done. Backup: index_%TS%.html
pause
