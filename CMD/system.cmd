@echo off 
cscript EVTQUERY.vbs /FO LIST /V /L System /FI "Type eq Error" /FI "Datetime eq 04/16/2007,01:00:00AM-04/16/2007,12:59:59PM" 
cscript EVTQUERY.vbs /FO LIST /V /L System /FI "Source eq W32Time" /FI "Datetime eq 04/16/2007,01:00:00AM-04/16/2007,12:59:59PM" 
cscript EVTQUERY.vbs /FO LIST /V /L System /FI "Source eq eventlog" /FI "Datetime eq 04/16/2007,01:00:00AM-04/16/2007,12:59:59PM" 
cscript EVTQUERY.vbs /FO LIST /V /L System /FI "Source eq tcpip"    /FI "Datetime eq 04/16/2007,01:00:00AM-04/16/2007,12:59:59PM" 
cscript EVTQUERY.vbs /FO LIST /V /L System /FI "Source eq Application Popup" /FI "Datetime eq 04/16/2007,01:00:00AM-04/16/2007,12:59:59PM" 
cscript EVTQUERY.vbs /FO LIST /V /L System /FI "Source eq Windows File Protection" /FI "Datetime eq 04/16/2007,01:00:00AM-04/16/2007,12:59:59PM" 
cscript EVTQUERY.vbs /FO LIST /V /L System /FI "Source eq Srv" /FI "Datetime eq 04/16/2007,01:00:00AM-04/16/2007,12:59:59PM" 
