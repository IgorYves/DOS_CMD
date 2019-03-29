setlocal EnableDelayedExpansion
echo entrez un par un les parametres 'a passer au fichier
echo laissez vide si n'a plus besoin des parametres
::set compte=0
::array n'existe pas pour les argumets ?
set choix11=
set /p choix11=premier parametre : 
if not "!choix11!"=="" (
	echo !choix11!
	::set /a compte="!compte!+1"
	pause
	
)


