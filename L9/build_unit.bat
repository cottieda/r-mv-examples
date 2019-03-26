REM set current directory to location of batch file, regardless of location called from
cd %~dp0

REM Pass the current directory to the R file so R can knit all R files in ./source
Rscript.exe ../_script/build_unit.r %~dp0
REM Rscript.exe "C:/Stat/New/Stat 505/r-mv-examples/_script" %~dp0
pause