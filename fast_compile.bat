@echo off
:compile
del "Game\rh-atlus.gba"
copy "Game\rh-jpn.gba" "Game\rh-atlus.gba"
atlas "Game\rh-atlus.gba" script_fix.txt
armips.exe compile.asm -sym mysym.sym
flips "Font Hack 4 - 1px spacer.ips" "Game\rh-fra.gba"
flips "accents.ips" "Game\rh-fra.gba"
pause
goto compile