
call reset.bat

@REM set pathBefore=D:\Maharjan
set pathAfter=ansysq

@REM set sourcePre=R:\maharjan
@REM set sourceFile=s.in

@REM set redirect=0
@REM set extVar=0

set proj_Num=306416

@REM FS+MS
  set interval=2002 10 2002
  set interval2=31 10 51
    call calc.bat

@REM @REM SSW ohne vv
@REM   set interval=1007 70 1007
@REM   set interval2=11 1 11
@REM     call calc.bat

@REM @REM SSW +ve
@REM   set interval=1017 70 1087
@REM   set interval2=11 1 11
@REM     call calc.bat

@REM @REM ssw -ve
@REM   set interval=1117 70 1187
@REM   set interval2=11 1 11
@REM     call calc.bat

@REM @REM ssw +ve
@REM   set interval=1037 30 1097
@REM   set interval2=11 1 11
@REM     call calc.bat

@REM @REM ssw -ve
@REM   set interval=1137 30 1197
@REM   set interval2=11 1 11
@REM     call calc.bat
