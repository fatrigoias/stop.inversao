@echo off
chcp 65001 >nul
cd /d "%~dp0"

set /p VAGAS="Quantas vagas com desconto restantes? "

powershell -ExecutionPolicy Bypass -File "%~dp0atualizar-vagas.ps1" -vagas "%VAGAS%"

git add index.html
git commit -m "Atualiza vagas com desconto: %VAGAS% restantes"
git push origin main

echo.
echo Pronto! Site atualizado com %VAGAS% vagas restantes.
pause
