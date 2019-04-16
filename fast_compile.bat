@echo off
del "Game\rh-atlus.gba"
copy "Game\rh-jpn.gba" "Game\rh-fra.gba"
atlas "Game\rh-fra.gba" script_fix.txt
armips.exe compile.asm -sym mysym.sym