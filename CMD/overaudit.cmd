:: Audit events everyday
@echo off
if %1.==. goto noname

call app.cmd     >%1_app.log
call system.cmd  >%1_sys.log
call sec.cmd     >%1_sec.log
call ora.cmd     >%1_ora.log

call wall.cmd    >%1_wall.log

:noname

