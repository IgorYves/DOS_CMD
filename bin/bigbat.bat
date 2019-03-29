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
cls
echo -----------------------------
echo -----------------------------
echo -----------------------------
echo 0 - sortie
echo 1 - calcul jusqu'a bon reponse
echo 2 - calcul juste pour voir si c'est bon
echo 3 - remplacement des lettres dans un string
echo 4 - creation/effacement repertoire test
echo 5 - Zzzzzips
echo 6 - enigme1 (enigme simple)
echo 7 - enigme2 (avec indications)
echo 8 - afficher la date, l'heure
echo 9 - n'est pas fini, bugs!!!! appel de fichier externe et passage de parametres
echo 10 - bond, james bond

echo 0 - sortie
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
) else if !choixprimo!==6 (
	goto markgle6
) else if !choixprimo!==7 (
	goto markgle7
) else if !choixprimo!==8 (
	goto markgle8
) else if !choixprimo!==9 (
	goto markgle9
) else if !choixprimo!==10 (
	goto markgle10
) else (
	echo choix pas correct
	pause
	goto markdebut
)
pause
goto markfin

:markgle1
cls
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
cls
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
cls
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
cls
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
		echo test2 est cree
		echo -----------------------------
	) else (
		echo -----------------------------
		echo test2 n'est pas cree
		echo -----------------------------
		tree d:\ /f
		echo -----------------------------
		echo test2 n'est pas cree
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
		echo test2 est effacee
		echo -----------------------------
	) else (
		echo -----------------------------
		echo test2 n'est pas effacee
		echo -----------------------------
		tree d:\ /f
		echo -----------------------------
		echo test2 n'est pas effacee
		echo -----------------------------
	)
)
echo -----------------------------
pause
goto markdebut

:markgle5
cls
::path
::set path=%path%;C:\Program Files\7-Zip
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
if !choix6!==y (
	7z l 7zcmnds.zip
	echo -----------------------------
	7z t 7zcmnds.zip * -r
	echo -----------------------------
) else (
	echo -----------------------------
	echo archive n'a pas ete verifie
	echo -----------------------------
)



echo -----------------------------
pause
goto markdebut

:markgle6
cls
::echo nothing yet
echo -----------------------------
echo devinez le chiffre de 0 a 9
::*************debut generation chiffre
set chiffre=
::set chiffre=4
set /a "chiffre=%random% %%10"
::pause
::goto markdebut
::*************fin generation chiffre
set coups=0
:markenigme1
set choix7=
set /p choix7=votre chiffre : 
::*************debut traitement reponse
::echo !chiffre!
::echo %choix7%
if !choix7!==!chiffre! (
	echo bonne reponse !
	set /a coups="!coups!+1"
	echo nombre de coups : !coups!
) else (
	echo pas bon
	set /a coups="!coups!+1"
	echo essayez encore
	echo !coups!
	::pause
	goto markenigme1
)
::*************fin traitement reponse
pause
echo -----------------------------
set choix8=
echo rejouer ?
set /p choix8=y ou non : 
echo -----------------------------
if !choix8!==y (
	goto markgle6
) else (
	goto markdebut
)
goto markdebut

:markgle7
cls
::echo nothing yet
echo -----------------------------
echo devinez le chiffre de 0 a 9
::*************debut generation chiffre
set chiffre=
::set chiffre=4
set /a "chiffre=%random% %%10"
::pause
::goto markdebut
::*************fin generation chiffre
set coups=0
:markenigme2
set choix9=
set /p choix9=votre chiffre : 
::*************debut traitement reponse
::echo !chiffre!
::echo %choix9%
if !choix9!==!chiffre! (
	echo bonne reponse !
	set /a coups="!coups!+1"
	echo nombre de coups : !coups!
) else if !choix9! gtr !chiffre! (
	echo trop grand
	set /a coups="!coups!+1"
	echo nombre de coups : !coups!
	goto markenigme2
) else if !choix9! lss !chiffre! (
	echo trop petit
	set /a coups="!coups!+1"
	echo nombre de coups : !coups!
	goto markenigme2
) else (
	echo pas bon
	set /a coups="!coups!+1"
	echo essayez encore
	echo !coups!
	::pause
	goto markenigme2
)
::*************fin traitement reponse
pause
echo -----------------------------
set choix10=
echo rejouer ?
set /p choix10=y ou non : 
echo -----------------------------
if !choix10!==y (
	goto markgle7
) else (
	goto markdebut
)
goto markdebut

:markgle8
cls
::echo nothing yet
echo -----------------------------
date /t
echo on est %date%
echo -----------------------------
time /t
echo il fait %time%
echo -----------------------------
echo appel de fichier externe dt.bat
echo debut dt.bat
call dt
echo fin dt.bat
echo -----------------------------
pause
goto markdebut

:markgle9
cls
::echo nothing yet
echo -----------------------------
echo appel de fichier externe parametres.bac sans aucun parametre
echo -----------------------------
call parametres
echo -----------------------------
pause
echo -----------------------------
echo entrez un par un les parametres (sans espase) 'a passer au fichier
echo laissez vide si n'a plus besoin des parametres
::set compte=0
::array n'existe pas pour les argumets ?
::*************** ceci est utilisation if, utilisation goto est plus bas *****************
set choix11=
set /p choix11=premier parametre : 
::pause
if not "!choix11!"=="" (
	::set /a compte="!compte!+1"
	set choix12=
	set /p choix12=deuxieme parametre : 
	if not "!choix12!"=="" (
		::set /a compte="!compte!+1"
		set choix13=
		set /p choix13=troisieme parametre : 
		if not "!choix13!"=="" (
			set choix14=
			set /p choix14=quatrieme parametre : 
			if not "!choix14!"=="" (
				set choix15=
				set /p choix15=cinquieme parametre : 
				if not "!choix15!"=="" (
					set choix16=
					set /p choix16=sixieme paratemre : 
					if not "!choix16!"=="" (
						echo on arrete, trop des parametres et il n'y a pas d'array pour les ranger
						echo on appel parametres.bac avec 5 parametres !choix11!, !choix13!, !choix13!, !choix14! et !choix15!
						pause
						call parametres !choix11! !choix12! !choix13! !choix14! !choix15!
					) else (
						echo on appel parametres.bac avec 5 parametres !choix11!, !choix13!, !choix13!, !choix14! et !choix15!
						pause
						call parametres !choix11! !choix12! !choix13! !choix14! !choix15!
					)
				) else (
					echo on appel parametres.bac avec 4 parametres !choix11!, !choix13!, !choix13! et !choix14!
					pause
					call parametres !choix11! !choix12! !choix13! !choix14!
				)				
			) else (
				echo on appel parametres.bac avec 3 parametres !choix11!, !choix13! et !choix13!
				pause
				call parametres !choix11! !choix12! !choix13!
			)			
		) else (
			echo on appel parametres.bac avec 2 parametres !choix11! et !choix12!
			pause
			call parametres !choix11! !choix12!
		)
	) else (
		echo on appel parametres.bac avec 1 parametre !choix11!
		pause
		call parametres !choix11!
	)
) else (
	echo pas des parametres, on appel parametres.bac sans parametres
	pause
	call parametres
)
pause

::******************** utilisation goto **********************
cls
echo -----------------------------
echo entrez un par un les parametres 'a passer au fichier
echo laissez vide si n'a plus besoin des parametres
set choixx=



::********************** tous les parametres en un string ******************
cls
echo -----------------------------
echo entrez les parametres 'a passer au fichier en les separant par les espaces

set choix=
set /p choix=parametre(s) : 
::pause

pause
if not "!choixx!"=="" ( 
echo %choixx% 
call parametres2 %choixx%
)


pause

if not "!choix!"=="" (
	echo on appel parametres2.bac avec parametre(s) %choix%
	pause
	call parametres2 %choix%
)
set choix=




pause
echo -----------------------------
set choix120=
echo encore une fois ?
set /p choix120=y ou non : 
echo -----------------------------
if !choix120!==y (
	goto markgle9
) else (
	goto markdebut
)
goto markdebut


:markgle10
cls
::echo nothing yet
echo -----------------------------
set choixx=
echo identifiez vous
set /p choixx=
call agentsecret %choixx%



pause
goto markdebut



::markgle
::cls
::echo nothing yet
::echo -----------------------------
::pause
::goto markdebut


::pause
::set /p "var7=y ou non : "
::echo %var7%
:markfin
echo -----------------------------
echo fin
echo -----------------------------







