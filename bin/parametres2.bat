@echo off
echo -----------------------------
echo debut fichier parametres2.bat
echo.

if "%1"=="" echo pas de parametres

:debut
if not "%1"=="" (
	echo %1
	shift
	goto debut
)

echo.
echo fin de fichier parametres2.bat
echo -----------------------------