@echo off 
cscript EVTQUERY.vbs /FO LIST /V /L Security /FI "Type eq FailureAudit" /FI "Datetime eq 04/16/2007,01:00:00AM-04/16/2007,12:59:59PM" 
cscript EVTQUERY.vbs /FO LIST /V /L Security /FI "Category eq Изменение политики" /FI "Datetime eq 04/16/2007,01:00:00AM-04/16/2007,12:59:59PM" 
cscript EVTQUERY.vbs /FO LIST /V /L Security /FI "ID eq 517" /FI "Datetime eq 04/16/2007,01:00:00AM-04/16/2007,12:59:59PM" 
