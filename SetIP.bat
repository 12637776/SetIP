@echo off
chcp 936 > nul
setlocal enabledelayedexpansion
%~d0
cd %~dp0
set "csvFile=result.csv"
for /f "skip=1 tokens=1 delims=," %%i in (%csvFile%) do (
	warp-cli.exe tunnel endpoint reset
	echo �˵�����Ϊ %%i
	warp-cli.exe tunnel endpoint set %%i
	echo �����������һ���˵������Ctrl+C�˳�
	pause
)
endlocal
pause