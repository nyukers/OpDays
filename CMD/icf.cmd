@echo off 
cscript EVTQUERY.vbs /FO LIST /V /L Security /FI "ID ge 848" /FI "Datetime eq 04/16/2007,01:00:00AM-04/16/2007,12:59:59PM" 
