
call reset.bat

REM set pathBefore=E:
REM set pathAfter=ANSYS

REM set sourcePre=R:\maharjan
REM set sourceFile=s.in

REM set redirect=0
REM set extVar=0

set proj_Num=311017a

REM REM +ve CS 1
REM 	set interval=2009 10 2009
REM 	set interval2=14 1 16
REM 		call calc.bat

REM +ve CS 1
	set interval=2009 10 2009
	set interval2=14 1 16
		call calc.bat

REM +ve CS 4
	set interval=2019 10 2099
	set interval2=14 1 14
		call calc.bat

REM +ve CS 4
	set interval=2119 10 2199
	set interval2=14 1 14
		call calc.bat

REM +ve CS 4
	set interval=2019 10 2099
	set interval2=24 1 24
		call calc.bat

REM +ve CS 4
	set interval=2119 10 2199
	set interval2=24 1 24
		call calc.bat

REM REM +ve CS 4
REM 	set interval=2009 10 2009
REM 	set interval2=16 10 26
REM 		call calc.bat

REM REM -ve CS 4
REM 	set interval=2039 30 2099
REM 	set interval2=14 10 14
REM 		call calc.bat

REM REM -ve CS 4
REM 	set interval=2139 30 2139
REM 	set interval2=14 10 14
REM 		call calc.bat
