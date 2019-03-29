@echo off

::echo %1
::echo %2
:debut
if "%1"=="bond" (
	if "%2"=="007" (
		goto ok
	)
	goto nok
)
goto nok

:ok
echo bonjour, Mr Bond
goto fin

:nok
echo pas bon

:fin