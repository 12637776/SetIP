@echo off
chcp 936 > nul
setlocal enabledelayedexpansion
%~d0
cd %~dp0
set "csvFile=result.csv"
for /f "skip=1 tokens=1 delims=," %%i in (%csvFile%) do (
	warp-cli.exe tunnel endpoint reset
	echo 端点已设为 %%i
	warp-cli.exe tunnel endpoint set %%i
	echo 按任意键换下一个端点或者用Ctrl+C退出
	pause
)
endlocal
pause