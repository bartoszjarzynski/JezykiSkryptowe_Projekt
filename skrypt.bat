@echo off 

:menu
cls

echo =====PROJEKT==ZLICZ==LITERKI===== 
echo ==============MENU===============
echo ===    Start   - wybierz 1    === 
echo ===    Backup  - wybierz 2    === 
echo ===    Info    - wybierz 3    === 
echo ===    Wyjscie - wybierz 4    === 
echo ================================= 

set /p variable=[ Wybierz opcje [1-4] ] 
IF %variable%==1 GOTO startt 
IF %variable%==2 GOTO backup 
IF %variable%==3 goto info 
IF %variable%==4 goto exitt 

:startt
set /P n=[Podaj n:]
set /P Jas=[Jas:]
set /P Malgosia=[Malgosia:]
cd C:\Users\bartj\Desktop\Studia\SKRYPTY\Projekt\projektPython
echo %n% > input.txt
echo %Jas% >> input.txt
echo %Malgosia% >> input.txt
cd C:\Users\bartj\Desktop\Studia\SKRYPTY\Projekt\projektPython
start main.py
start chrome.exe C:\Users\bartj\Desktop\Studia\SKRYPTY\Projekt\projekt.html

pause
cd C:\Users\bartj\Desktop\Studia\SKRYPTY\Projekt\projektPython
del input.txt
del statystyka.txt
del output.txt

goto menu 
:backup 
cd C:\Users\bartj\Desktop
SET DT=%date:/=-%
mkdir %DT%
xcopy C:\Users\bartj\Desktop\Studia\SKRYPTY\Projekt C:\Users\bartj\Desktop\%DT% /E /H /C /I
echo Pliki projektu zostaly skopiowane i mozna je znalezc na pulpicie.
pause 

goto menu 
:info
echo Projekt zaliczeniowy
echo Tytul: Zlicz literki, XIX Olimpiada Informatyczna etap I
echo Autor: Bartosz Jarzynski
echo Przedmiot: Jezyki skryptowe, Grudzien 2021 
echo Program oblicza, w ile krokow jestesmy w stanie z jednego napisu stworzyc anagram drugiego napisu.
pause 

goto menu 
:exitt 
pause