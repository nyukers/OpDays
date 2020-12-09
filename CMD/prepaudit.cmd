:: Audit archive files at morning
:: Arcname is YYMMDDhhmm
@echo off
set ww=%date:~0,2%
set dd=%date:~0,2%
set mm=%date:~3,2%
set yy=%date:~6,4%

set hh=%time:~0,2%
set min=%time:~3,2%

@IF %hh% LSS 10 set hh=0%time:~1,1%

set tim=%hh%:%min%
set curdat=%mm%/%dd%/%yy%

@echo Current MMDDYYYY %curdat%
@echo Time is hhmm %tim%
@echo Current day %ww%
:pause

:: Application
echo @echo off >app.cmd
echo cscript EVTQUERY.vbs /FO LIST /V /L Application /FI "Type eq Error" /FI "Datetime eq %curdat%,01:00:00AM-%curdat%,12:59:59PM" >>app.cmd
echo cscript EVTQUERY.vbs /FO LIST /V /L Application /FI "Source eq DrWatson" /FI "Datetime eq %curdat%,01:00:00AM-%curdat%,12:59:59PM" >>app.cmd
echo cscript EVTQUERY.vbs /FO LIST /V /L Application /FI "Source eq SceCli"   /FI "Datetime eq %curdat%,01:00:00AM-%curdat%,12:59:59PM" >>app.cmd
echo cscript EVTQUERY.vbs /FO LIST /V /L Application /FI "Source eq ISS"      /FI "Datetime eq %curdat%,01:00:00AM-%curdat%,12:59:59PM" >>app.cmd

echo @echo off >ora.cmd
echo cscript EVTQUERY.vbs /FO LIST /V /L Application /FI "Source eq Oracle.barsrn" /FI "Datetime eq %curdat%,01:00:00AM-%curdat%,12:59:59PM" >>ora.cmd
echo cscript EVTQUERY.vbs /FO LIST /V /L Application /FI "Source eq Oracle.cashrn" /FI "Datetime eq %curdat%,01:00:00AM-%curdat%,12:59:59PM" >>ora.cmd

:: System
echo @echo off >system.cmd
echo cscript EVTQUERY.vbs /FO LIST /V /L System /FI "Type eq Error" /FI "Datetime eq %curdat%,01:00:00AM-%curdat%,12:59:59PM" >>system.cmd
echo cscript EVTQUERY.vbs /FO LIST /V /L System /FI "Source eq W32Time" /FI "Datetime eq %curdat%,01:00:00AM-%curdat%,12:59:59PM" >>system.cmd
echo cscript EVTQUERY.vbs /FO LIST /V /L System /FI "Source eq eventlog" /FI "Datetime eq %curdat%,01:00:00AM-%curdat%,12:59:59PM" >>system.cmd
echo cscript EVTQUERY.vbs /FO LIST /V /L System /FI "Source eq tcpip"    /FI "Datetime eq %curdat%,01:00:00AM-%curdat%,12:59:59PM" >>system.cmd
echo cscript EVTQUERY.vbs /FO LIST /V /L System /FI "Source eq Application Popup" /FI "Datetime eq %curdat%,01:00:00AM-%curdat%,12:59:59PM" >>system.cmd
echo cscript EVTQUERY.vbs /FO LIST /V /L System /FI "Source eq Windows File Protection" /FI "Datetime eq %curdat%,01:00:00AM-%curdat%,12:59:59PM" >>system.cmd
echo cscript EVTQUERY.vbs /FO LIST /V /L System /FI "Source eq Srv" /FI "Datetime eq %curdat%,01:00:00AM-%curdat%,12:59:59PM" >>system.cmd

:: Security
echo @echo off >sec.cmd
echo cscript EVTQUERY.vbs /FO LIST /V /L Security /FI "Type eq FailureAudit" /FI "Datetime eq %curdat%,01:00:00AM-%curdat%,12:59:59PM" >>sec.cmd
echo cscript EVTQUERY.vbs /FO LIST /V /L Security /FI "Category eq Изменение политики" /FI "Datetime eq %curdat%,01:00:00AM-%curdat%,12:59:59PM" >>sec.cmd
echo cscript EVTQUERY.vbs /FO LIST /V /L Security /FI "ID eq 517" /FI "Datetime eq %curdat%,01:00:00AM-%curdat%,12:59:59PM" >>sec.cmd

:: ICF
echo @echo off >icf.cmd
echo cscript EVTQUERY.vbs /FO LIST /V /L Security /FI "ID ge 848" /FI "Datetime eq %curdat%,01:00:00AM-%curdat%,12:59:59PM" >>icf.cmd

:end

