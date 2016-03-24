
REM read Argument
set drive=%1
if exist lastRun.txt (
	echo "last run exists."
) else (
	echo "test"> lastRun.txt
)
if exist lastLic.txt (
	echo "last license exists."
) else (
	echo "test"> lastLic.txt
)

setlocal EnableDelayedExpansion	

		hostname.exe>hostname.txt
		set /p host=<hostname.txt
		echo Hostname: !host!

		if "!host!" equ "ansys2" (
			if %drive% equ 1 (
				set pathBefore=D:\maharjan
				set pathAfter=ANSYS
			) else (
				set pathBefore=E:\maharjan
				set pathAfter=ANSYS
			)
		) else (
			if %drive% equ 1 (
				set pathBefore=D:
				set pathAfter=ANSYS
			) else (
				set pathBefore=E:
				set pathAfter=ANSYS
			)
		)
		if %drive% equ 3 (
			set pathBefore=\\ansys2\maharjan
			set pathAfter=ANSYS
		)

REM set proj_Num="test"
set /p proj_Num=<lastRun.txt

set /p proj_Num2=Enter The Project Num (Folder, default: %proj_Num%):%=%
if not "%proj_Num2%" == "" (
	REM echo Project : %proj_Num%
	(echo %proj_Num2%) > lastRun.txt
	set proj_Num=%proj_Num2%
	echo.
) else (
	REM set proj_Num="test"
	REM echo Default Project  : !proj_Num!
)

set /p proj_sub=Enter The SubFolder (Folder, default: %pathAfter%):%=%
if not "%proj_sub%" == "" (
	REM echo Project : %proj_sub%
	set pathAfter=%proj_sub%
	echo.
)

REM set ansj=preppost
set /p ansj=<lastLic.txt
set /p r=Enter License to Use (1: struct, 2: prflns, 3: prepost; default: %ansj%):%=%
if "%r%" equ "1" (
	REM set ansj=struct
	set ansj=ansys
)
if "%r%" equ "2" (
	set ansj=prfnls
)
if "%r%" equ "3" (
	set ansj=preppost
)
(echo %ansj%) > lastLic.txt

set /p disp=Enter The Display Device Num (1 (default): 3d, 2: win32c, 3: win32):%=%
if not "%disp%" == "" (
	echo Display Num: %disp%
) else (
	set disp=1
	REM echo Default Display Num  : !disp!
)
set dispName=3D
if "%disp%" == "2" (
	set dispName=win32c
)
if "%disp%" == "3" (
	set dispName=win32
)

echo License: !ansj!
echo Project: %proj_Num%
echo Display Device: %dispName%	

call Timer.bat :StartTimer

set apdlCMD="C:\Program Files\ANSYS Inc\v170\ANSYS\bin\winx64\ansys170.exe"  -g -p !ansj! ^
 -dir "!pathBefore!\%proj_Num%\!pathAfter!" -j "file1" -s read -l en-us -t -d %dispName% ^
 -m 8192 -db 4096

echo.
echo !apdlCMD!
echo.

REM goto :takeTime
REM start "" /B !apdlCMD!
!apdlCMD!

call Timer.bat :StopTimer	
call Timer.bat :DisplayTimerResult	
echo Time Used: !elTime!

endlocal
timeout /t 5

