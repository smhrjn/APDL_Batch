
call reset.bat

REM set pathBefore=E:
REM set pathAfter=ansys

REM set sourcePre=R:\maharjan
REM set sourceFile=s.in

REM set redirect=0
REM set extVar=0
REM if %extVar% equ 1 (
REM   set nPrefix=d
REM )

set proj_Num=311017ew

REM for /l %%b in (1 1 1) do (
REM   REM REM +ve CS 1-6
REM   REM set bq=%%b
REM   REM   set interval=1086 10 1096
REM   REM   set interval2=1!bq! 1 1!bq!
REM   REM     call calc.bat

REM   REM +ve CS 1-6
REM   set bq=%%b
REM     set interval=1156 10 1196
REM     set interval2=1!bq! 1 1!bq!
REM       call calc.bat
REM )

for %%b in (3 6) do (
  REM +ve CS 1-6
  set bq=%%b
    set interval=1006 10 1096
    set interval2=1!bq! 1 1!bq!
      call calc.bat

  REM +ve CS 1-6
  set bq=%%b
    set interval=1116 10 1196
    set interval2=1!bq! 1 1!bq!
      call calc.bat
)
