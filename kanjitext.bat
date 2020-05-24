@echo off
setlocal
@echo Script by asakura42
@echo Here you can take a look at the files that this script uses:
echo %~dp0
echo.
@echo Now you will need to insert the full path to the file with a list of your kanji.
echo.
@echo You can copy it by right-clicking on the file with the Shift button pressed and pressing "Copy as path"
echo.
@echo Insertion method depends on your version of Windows. It can be Ctrl-V (Win 10) or right-click (Win 7).
echo.
@echo Insert the path here:
SET /P yourkanjilist=" "
echo.
@echo Do the same with the file with texts: 
SET /P yourtextlist=" "
echo.
:choice
@echo Press "y" you want to divide your text into sentences. (Press "n" if it is already divided or you don't want it). [Y/N]
SET /P divide=" "
echo.
if /I "%divide%" EQU "Y" goto :dvd_true
if /I "%divide%" EQU "N" goto :dvd_false
goto :choice

:dvd_true
%~dp0\sed "s/。/\n/g;s/！/\n/g;s/？/\n/g" %yourtextlist% > yourtextlistdivided.txt
SET yourtextlist=yourtextlistdivided.txt
goto :dvd_false

:dvd_false
%~dp0\sed.exe "/^$/d;s/\t\t*/\n/g" %yourkanjilist% > %~dp0\normkanjilist.txt
%~dp0\grep.exe -v -F -f %~dp0\normkanjilist.txt %~dp0\all.txt | %~dp0\sed.exe "/^$/d" > %~dp0\nolist.txt
%~dp0\grep.exe -F -f %~dp0\normkanjilist.txt %yourtextlist% | %~dp0\grep.exe -v -F -f %~dp0\nolist.txt > output.txt
set yourkanjilist=%yourkanjilist:"=%
FOR %%i IN ("%yourkanjilist%") DO (
SET outputfolder=%%~di%%~pi
)
echo F|xcopy /F output.txt %outputfolder%\output.txt
