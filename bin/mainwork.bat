::@echo salut 1
::@echo salut 2
::rem echo salut 3
@echo off
setlocal EnableDelayedExpansion
::rem echo salut 3.1
::echo salut 4
::echo on
::set vartest=5
::goto mark1
::echo salut 5
:::mark1
::echo salut 6
::echo errorlevel = %errorlevel%
::echo %errorlevel%
::pause
::echo.
::echo
::echo ^
::%%
::echo random %random%
::set vartest=
::echo %vartest%
::set /p vartest=entrez valeur : 
::echo %vartest%
:markdebut
echo -----------------------------
echo sortie tapez 0
echo calcul jusqu'a bon reponse tapez 1
echo calcul juste pour voir si c'est bon tapez 2
echo remplacement des lettres dans un string tapez 3
echo creation/effacement repertoire test tapez 4
echo Zzzzzips tapez 5
echo -----------------------------

set choixprimo=
set /p choixprimo=votre choix ? 
::echo %choixprimo%
::echo !choixprimo!
::pause
if !choixprimo!==0 (
	goto markfin
) else if !choixprimo!==1 (
	goto markgle1
) else if !choixprimo!==2 (
	goto markgle2
) else if !choixprimo!==3 (
	goto markgle3
) else if !choixprimo!==4 (
	goto markgle4
) else if !choixprimo!==5 (
	goto markgle5
) else (
	echo choix pas correct
	pause
	goto markdebut
)
pause
goto markfin

:markgle1
set vari=0
:mark2
set vartest=
set /p vartest=5 + 2 egale ? : 
if !vartest!==7 (echo OK
		if "!vari!"=="1" (echo "finallement ^!"))^
else (echo pas bon
		set vari=1
		goto mark2)
echo -----------------------------
pause
goto markdebut

:markgle2
set /p vartest=2 + 2 egale ? : 
if not !vartest! == 4 (
	echo pas bon
) else (
	echo ok
)
echo -----------------------------
pause
goto markdebut

:markgle3
set "var2=lorem ipsum"
::set var2
echo %var2%
set var3=lorem ipsum dolor sit amet
echo variable ^= %var3%
echo remplassement i par I : %var3:i=I%
echo remplassement *i^=I : %var3:*i=I%
::if exist "d:\test\" echo test not exist
echo -----------------------------
pause
goto markdebut

:markgle4
::echo debut if dir
::pause
::set var5=0
::set /p "var5=test2 existe pas, creer test ? y ou non : "
::if !var5!==y echo %var5%
::echo %var5% 1fois
echo.
::pause
::echo debut
::if exist test2 echo 1
::if not exist test2 echo 2
::echo fin

if not exist test2 (
	echo -----------------------------
	echo test2 existe pas
	echo creer un ?
	set var6=
	set /p "var6=y ou non : "
	if !var6!==y (
		mkdir test2
		echo -----------------------------
		echo test2 est cree
		echo -----------------------------
		tree d:\ /f
		echo -----------------------------
	) else (
		echo -----------------------------
		echo test2 n'est pas cree
		echo -----------------------------
		tree d:\ /f
		echo -----------------------------
	)
) else (
	echo -----------------------------
	echo test2 existe
	echo effacer ?
	set var7=
	set /p "var7=y ou non : "
	if !var7!==y (
		rmdir test2
		echo -----------------------------
		echo test2 est effacee
		echo -----------------------------
		tree d:\ /f
		echo -----------------------------
	) else (
		echo -----------------------------
		echo test2 n'est pas effacee
		echo -----------------------------
		tree d:\ /f
		echo -----------------------------
	)
)
echo -----------------------------
pause
goto markdebut

:markgle5
::path
set path=%path%;C:\Program Files\7-Zip
::path
::"%programfiles%\7-zip\7z"
echo mettre file 7z-commands.txt dans l'archive ?
set choix5=
set /p choix5=y ou non ? 
if !choix5!==y (
	7z a 7zcmnds.zip 7z-commands.txt
	
	echo -----------------------------
	echo file a ete mis dans l'archive 7zcmnds.zip
	echo -----------------------------
) else (
	echo -----------------------------
	echo file n'a pas ete mis dans l'archive
	echo -----------------------------
)
pause
echo -----------------------------
echo verifier archive 7zcmnds.zip ?
set choix6=
set /p choix6=y ou non ? 
if !choix5!==y (
	7z l 7zcmnds.zip
	echo -----------------------------
) else (
	echo -----------------------------
	echo archive n'a pas ete verifie
	echo -----------------------------
)



echo -----------------------------
pause
goto markdebut

::pause
::set /p "var7=y ou non : "
::echo %var7%
:markfin
echo -----------------------------
echo fin
echo -----------------------------







