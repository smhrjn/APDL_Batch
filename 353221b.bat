
call reset.bat
@REM set proj_Num=%~n0
set proj_Num=353221

@REM set pathBefore=D:
set pathAfter=ansysb

@REM set sourcePre=x:\ins
@REM set sourceFile=s-alt.in

@REM set redirect=0
@REM set extVar=1
@REM set nPrefix=m

for /l %%b in (1 1 1) do (
@REM for %%b in (1 2) do (

  set bq=%%b

  set interval=1600 1 1620
  @REM set interval2=20!bq! 100 20!bq!
  set interval2=10!bq! 100 10!bq!
  @REM set interval2=40!bq! 100 40!bq!
    call calc.bat

)


call extra_cmd.bat
