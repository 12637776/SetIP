@echo off
chcp 936 > nul
setlocal enabledelayedexpansion
%~d0
cd %~dp0
set "csvFile=result.csv"
set n=1
echo 端点列表：
for /f "skip=1 tokens=1 delims=," %%i in (%csvFile%) do (
        echo [!n!] %%i
		set /a n+=1
)
echo.
echo 端点状态：
for /f "skip=1 tokens=1 delims=," %%i in (%csvFile%) do (
	echo ①端点重置
	warp-cli.exe tunnel endpoint reset	
	echo ②端点设为 %%i
	warp-cli.exe tunnel endpoint set %%i
	echo %%i>ipp.txt
	type ipp.txt | clip
	del ipp.txt
	echo 按任意键换下一个端点或者用Ctrl+C退出
	pause
)
endlocal
