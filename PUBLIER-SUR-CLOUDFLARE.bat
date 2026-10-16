@echo off
chcp 65001 >nul
title Publication de portfolio.dlogistique.com (DLogistique)
cd /d "%~dp0"

echo ============================================================================
echo   DLOGISTIQUE - PUBLICATION OFFICIELLE SUR PORTFOLIO.DLOGISTIQUE.COM
echo   Entreprise enregistree au Quebec (NEQ) - Alexandre Damour
echo ============================================================================
echo.
echo [1/2] Verification de la connexion Cloudflare...
call npx wrangler whoami >nul 2>&1
if %errorlevel% neq 0 (
    echo.
    echo Une fenetre de votre navigateur va s'ouvrir pour autoriser Cloudflare.
    echo Cliquez simplement sur "Allow" ^(Autoriser^) dans votre navigateur...
    call npx wrangler login
)

echo.
echo [2/2] Envoi du portfolio et branchement automatique du domaine portfolio.dlogistique.com...
call npx wrangler deploy

echo.
echo ============================================================================
echo   TERMINE ! Votre site est en ligne sur : https://portfolio.dlogistique.com
echo ============================================================================
start https://portfolio.dlogistique.com
pause
