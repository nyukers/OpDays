@echo off 
cscript EVTQUERY.vbs /FO LIST /V /L Application /FI "Source eq Oracle.barsrn" /FI "Datetime eq 04/16/2007,01:00:00AM-04/16/2007,12:59:59PM" 
cscript EVTQUERY.vbs /FO LIST /V /L Application /FI "Source eq Oracle.cashrn" /FI "Datetime eq 04/16/2007,01:00:00AM-04/16/2007,12:59:59PM" 
