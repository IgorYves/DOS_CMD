@echo off

if not exist "d:\TP_DOS\test2\" (
	echo d:\TP_DOS\test2\ existe pas
	echo creer un ?
	set /p "var8=y ou non : "
	echo var8 %var8%
)else (echo d:\TP_DOS\test2\ existe
	echo effaser ?
	)
pause
set /p "var9=y ou non : "
echo var9 %var9%


