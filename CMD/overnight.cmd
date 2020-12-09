:: Audit archive files at morning
:: Arcname is YYMMDDhhmm
@echo off
set DayStart=1
set DayStop=1

set ww=%date:~0,2%
set dd=%date:~0,2%
set mm=%date:~3,2%
set yy=%date:~6,4%

set hh=%time:~0,2%
set min=%time:~3,2%

@IF %hh% LSS 10 set hh=0%time:~1,1%
@IF %ww% EQU è≠ set DayStart=3
@IF %ww% EQU è≠ set DayStop=3

set tim=%hh%:%min%
set curdat=%dd%/%mm%/%yy%

@echo Current DDMMYYYY %curdat%
@echo Time is hhmm %tim%
@echo Current day %ww%
@echo DayStart is  %DayStart%
@echo DayStop is  %DayStop%
::pause

SET ORACLE_SID=BARSRN
start SQLPLUS -S /nolog @veer.sql %curdat% %DayStart% %DayStop% %tim%

SET ORACLE_SID=CASHRN
start SQLPLUS -S /nolog @veer2.sql %curdat% %DayStart% %DayStop% %tim%

