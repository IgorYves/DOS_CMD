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