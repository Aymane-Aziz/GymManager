@echo off
for /f "tokens=5" %%a in ('netstat -aon ^| findstr :5173') do (
    if not "%%a"=="0" taskkill /PID %%a /F >nul 2>&1
)
cd C:\Users\AZIZ\OneDrive\Desktop\App\app
start /b cmd /c "npm run dev" >nul 2>&1
timeout /t 2 >nul
start http://localhost:5173/ >nul 2>&1
exit
