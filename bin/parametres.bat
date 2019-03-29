@echo off
echo -----------------------------
echo debut fichier parametres.bat
echo.
::echo %1
::if not exist %1 echo ok
::if not defined %1 echo ok2
::if not %1=="" echo ok3
::echo %1
::set tmp=%1
if not "%1"=="" (
	echo premier parametre est %1
) else (
	echo premier parametre n'est pas defini
)
if not "%2"=="" (
	echo deuxieme parametre est %2
) else (
	echo deusieme parametre n'est pas defini
)
if not "%3"=="" (
	echo troisieme parametre est %3
) else (
	echo troisieme parametre n'est pas defini
)
if not "%4"=="" (
	echo quatrieme parametre est %4
) else (
	echo quatrieme parametre n'est pas defini
)

if not "%4"=="" (
	echo.
	echo on n'a pas cherche' plus loin...
	echo on ne sais pas s'il en a encore
)
echo.
echo fin de fichier parametres.bat
echo -----------------------------