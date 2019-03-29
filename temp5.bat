setlocal EnableDelayedExpansion
cls
echo -----------------------------
echo entrez les parametres 'a passer au fichier en les separant par les espaces

set choixx=
set /p choixx=parametre(s) : 

pause
if not "!choixx!"=="" ( 
echo %choixx% 
call parametres2 %choixx%
)
