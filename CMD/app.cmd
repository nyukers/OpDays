@echo off 
cscript EVTQUERY.vbs /FO LIST /V /L Application /FI "Type eq Error" /FI "Datetime eq 04/16/2007,01:00:00AM-04/16/2007,12:59:59PM" 
cscript EVTQUERY.vbs /FO LIST /V /L Application /FI "Source eq DrWatson" /FI "Datetime eq 04/16/2007,01:00:00AM-04/16/2007,12:59:59PM" 
cscript EVTQUERY.vbs /FO LIST /V /L Application /FI "Source eq SceCli"   /FI "Datetime eq 04/16/2007,01:00:00AM-04/16/2007,12:59:59PM" 
cscript EVTQUERY.vbs /FO LIST /V /L Application /FI "Source eq ISS"      /FI "Datetime eq 04/16/2007,01:00:00AM-04/16/2007,12:59:59PM" 
