
call reset.bat
@REM set proj_Num=%~n0
set proj_Num=343120

@REM set pathBefore=E:
set pathAfter=ansysA

@REM set sourcePre=x:\ins
@REM set sourceFile=s-alt.in

@REM set redirect=1
@REM set extVar=1
@REM set nPrefix=t

for /l %%b in (1 1 1) do (
@REM for %%b in (1 2) do (

  set bq=%%b

  set interval=1000 1000 1000
  @REM set interval2=20!bq! 100 20!bq!
  set interval2=30!bq! 100 30!bq!
  @REM set interval2=40!bq! 100 40!bq!
    call calc.bat

)
