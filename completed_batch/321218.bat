
call reset.bat
set proj_Num=%~n0

set pathBefore=E:
@REM set pathAfter=ansys

@REM set sourcePre=x:\ins
@REM set sourceFile=s-alt.in

@REM set redirect=1
@REM set extVar=1
@REM set nPrefix=m

for /l %%b in (4 1 4) do (
@REM for %%b in (1 2) do (

  set bq=%%b

  set interval=1800 1 1820
  set interval2=10!bq! 100 10!bq!
    call calc.bat

)
