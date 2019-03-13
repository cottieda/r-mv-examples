REM set directory to directory of this batch file
cd %~dp0

REM build the full website
Rscript.exe build_all.r

REM open website
start chrome "%~dp0/../../_web/_site/index.html"

REM pause console to allow review of errors / messages
pause