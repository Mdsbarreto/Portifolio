@echo off
cls

echo ===========================================
echo  SCRIPT DE COMMIT - DIARIO DE ESTUDOS
echo ===========================================
echo.

REM Adiciona todos os arquivos ao stage
echo [1/3] Adicionando arquivos (git add .)
git add .
echo.

REM Pede ao usuario a mensagem do commit
echo [2/3] Por favor, descreva o que voce estudou hoje:
set /p msg="Mensagem do Commit: "
echo.

REM Executa o commit com a mensagem digitada
echo [2/3] Commitando...
git commit -m "%msg%"
echo.

REM Envia o push para o repositorio remoto
echo [3/3] Enviando para o GitHub (git push)...
git push
echo.

echo ===========================================
echo  PROCESSO CONCLUIDO!
echo ===========================================
echo.
pause