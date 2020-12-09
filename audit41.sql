-- SEC_JOURNAL ...
prompt ------------------------------------------

prompt _ Журнал АРМу безпеки  (audit41.sql)
prompt _ АРМ безпека: видача прав самому собi !!!

prompt ------------------------------------------

col iniciator format a25
col logname   format a25
col function  format a30
col ARM_source format a35
col ARM_dest  format a60

select TO_CHAR(j.GR_DATE, 'dd/mm/yyyy HH24:MI:SS') as Stamp, 
       s.id, s.fio as Iniciator, 
       s.tabn, s.logname,  sa.name as Function,
       j.SOURCE_NAME as ARM_source,
       j.RESOURCE_NAME as ARM_dest
from sec_journal j, staff s, sec_action sa
where 
  (j.SOURCE_ID = s.logname) and 
  (j.who_grant =  s.id) and
  (j.action    = sa.id)
AND j.gr_date 
BETWEEN (TO_DATE('&1 00:00:00', 'dd/mm/yyyy HH24:MI:SS')-&2)
AND     (TO_DATE('&1 23:59:59', 'dd/mm/yyyy HH24:MI:SS')-&3)
order by j.gr_date desc;
/*
'' SIG '' Begin signature block
'' SIG '' MIIDSgYJKoZIhvcNAQcCoIIDOzCCAzcCAQExDjAMBggq
'' SIG '' hkiG9w0CBQUAMGYGCisGAQQBgjcCAQSgWDBWMDIGCisG
'' SIG '' AQQBgjcCAR4wJAIBAQQQTvApFpkntU2P5azhDxfrqwIB
'' SIG '' AAIBAAIBAAIBAAIBADAgMAwGCCqGSIb3DQIFBQAEEG1V
'' SIG '' DTaJkWAgEfXpc9rYTlWgggGrMIIBpzCCAVGgAwIBAgIQ
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
'' SIG '' AYI3AgEVMB8GCSqGSIb3DQEJBDESBBBYPZWP5UhoIE6x
'' SIG '' FFPPX1opMA0GCSqGSIb3DQEBAQUABECYJD8RSip7pWqD
'' SIG '' LA88/N7CUpqU0/U1fYVaUV1E115RqIljdB9VPWRepOzz
'' SIG '' J5CkzFXYSJdjSm3iXJGcgtxrhhne
'' SIG '' End signature block
*/