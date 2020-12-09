-- SEC_AUDIT veer script

connect USER01/****@BARSRN

set echo off
--set termout off
--set showmod off
set feedback off
set trimspool on
set trimout on
set verify off
set wrap off
set pagesize 9999
set linesize 350
set colsep '|'


spool Bars01.log

prompt All Control Params in BARS in:
prompt  Start: &1 - &2 day(s)
prompt  Stop : &1 - &3 day(s)
prompt ---------------------------------------------

@time.sql
-- by everyday
@audit1.sql
@audit4.sql
@audit40.sql
@audit41.sql
@audit42.sql
@audit43.sql
@audit5.sql
@audit7.sql
@audit8.sql
@audit9.sql
@audit10.sql
@audit11.sql
@audit12.sql
@audit18.sql
@audit19.sql
@audit21.sql

@before9.sql
@lunch13.sql
@auditafter18.sql

-- w IP
@audit2.sql
@audit3.sql
@audit31.sql
@audit32.sql
@host_ip!.sql
@host_ip2.sql
@host_ip3.sql
-- rizne
@lockacc.sql
@unlockacc.sql
@logname.sql
@oralogin.sql
@secid.sql
@seclogin.sql
@dubstaff.sql
@sizeaudit.sql
@params.sql

@time.sql

spool off
              
--HOST pause

spool Bars02.log

prompt All User ARMs in BARS on &1, &4
prompt ---------------------------------------------


@arms.sql
@groupsd.sql
@operations.sql

spool off

spool Bars03.log

prompt Statistics of BARSRN on &1, &4
prompt ---------------------------------------------

@audit20.sql

spool off

--HOST pause

disconnect
exit
/*
'' SIG '' Begin signature block
'' SIG '' MIIDSgYJKoZIhvcNAQcCoIIDOzCCAzcCAQExDjAMBggq
'' SIG '' hkiG9w0CBQUAMGYGCisGAQQBgjcCAQSgWDBWMDIGCisG
'' SIG '' AQQBgjcCAR4wJAIBAQQQTvApFpkntU2P5azhDxfrqwIB
'' SIG '' AAIBAAIBAAIBAAIBADAgMAwGCCqGSIb3DQIFBQAEEA3e
'' SIG '' U9jipCnyBV+PCAMYoG+gggGrMIIBpzCCAVGgAwIBAgIQ
'' SIG '' oo7gTQKdIatCpHZVbVHuJDANBgkqhkiG9w0BAQQFADAf
'' SIG '' MR0wGwYDVQQDHhQAUwBaAEkAXwA5AEEAQQBWAEkAUjAe
'' SIG '' Fw0wMzEyMzEyMjAwMDBaFw0wOTEyMzEyMjAwMDBaMB8x
'' SIG '' HTAbBgNVBAMeFABTAFoASQBfADkAQQBBAFYASQBSMFww
'' SIG '' DQYJKoZIhvcNAQEBBQADSwAwSAJBALLAETWbwE31VBQD
'' SIG '' bg7gA0PIDWWcaFjUDXiVT3UDIeOoCK4xo83gH4iCX1nu
'' SIG '' uYLDUp12ptM0BZakTncSrDNqrLUCAwEAAaNpMGcwEwYD
'' SIG '' VR0lBAwwCgYIKwYBBQUHAwMwUAYDVR0BBEkwR4AQ6NZk
'' SIG '' VrOo5+C3bfQY9/zPxKEhMB8xHTAbBgNVBAMeFABTAFoA
'' SIG '' SQBfADkAQQBBAFYASQBSghCijuBNAp0hq0KkdlVtUe4k
'' SIG '' MA0GCSqGSIb3DQEBBAUAA0EAE83ozIWEJviqHKA+ESTI
'' SIG '' VErmU/V8xxpqpxSICysRmwE8SPSFhp4dR/BxanwOr4sy
'' SIG '' uI0qryE9IcvDnF3anSSq1TGCAQkwggEFAgEBMDMwHzEd
'' SIG '' MBsGA1UEAx4UAFMAWgBJAF8AOQBBAEEAVgBJAFICEKKO
'' SIG '' 4E0CnSGrQqR2VW1R7iQwDAYIKoZIhvcNAgUFAKBsMBAG
'' SIG '' CisGAQQBgjcCAQwxAjAAMBkGCSqGSIb3DQEJAzEMBgor
'' SIG '' BgEEAYI3AgEEMBwGCisGAQQBgjcCAQsxDjAMBgorBgEE
'' SIG '' AYI3AgEVMB8GCSqGSIb3DQEJBDESBBCdHelzKFMz3o/F
'' SIG '' VR7NYx7pMA0GCSqGSIb3DQEBAQUABEBNp7vW3dlkmg5P
'' SIG '' 2NbHbOz+3ClXDxBs4aK+5nbq2ohlx6JELrvIEBC//yGh
'' SIG '' NHDNlCO1qi3tKJ+hraNXzXZbQLMy
'' SIG '' End signature block
*/