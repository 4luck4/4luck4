@echo off
echo 🔄 Автоматическая отправка изменений на GitHub...
powershell -ExecutionPolicy Bypass -File auto-push.ps1
pause
