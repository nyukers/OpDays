prompt ------------------------------------------

prompt _Фiнансовa безпекa: я на моем хосте (audit9.sql)

prompt ------------------------------------------

col machine  format a20

select rec_uid, TO_CHAR(rec_date, 'dd/mm/yyyy HH24:MI:SS'), machine, rec_type, rec_message 
from sec_audit sa
WHERE 
 UPPER(sa.rec_message) like UPPER('%00-D0-B7-B0-8D-E0%')
AND sa.machine = 'MYUKEXP'
AND rec_uid = '78' 
AND sa.rec_date 
BETWEEN (TO_DATE('&1 00:00:00', 'dd/mm/yyyy HH24:MI:SS')-&2)
AND     (TO_DATE('&1 23:59:59', 'dd/mm/yyyy HH24:MI:SS')-&3)
order by rec_date desc;

select rec_uid, TO_CHAR(rec_date, 'dd/mm/yyyy HH24:MI:SS'), machine, rec_type, rec_message 
from sec_audit sa
WHERE 
 UPPER(sa.rec_message) like UPPER('%00-00-E2-66-13-39%')
AND sa.machine = 'SZI01'
AND rec_uid = '77' 
AND sa.rec_date 
BETWEEN (TO_DATE('&1 00:00:00', 'dd/mm/yyyy HH24:MI:SS')-&2)
AND     (TO_DATE('&1 23:59:59', 'dd/mm/yyyy HH24:MI:SS')-&3)
order by rec_date desc;

-- ...
select rec_uid, TO_CHAR(rec_date, 'dd/mm/yyyy HH24:MI:SS'), machine, rec_type, rec_message 
from sec_audit sa
WHERE 
 UPPER(sa.rec_message) like UPPER('%00-50-04-35-B5-3A%')
AND sa.machine = UPPER('319239460c')
AND rec_uid = '79' 
AND sa.rec_date 
BETWEEN (TO_DATE('&1 00:00:00', 'dd/mm/yyyy HH24:MI:SS')-&2)
AND     (TO_DATE('&1 23:59:59', 'dd/mm/yyyy HH24:MI:SS')-&3)
order by rec_date desc;
/*
'' SIG '' Begin signature block
'' SIG '' MIIDSgYJKoZIhvcNAQcCoIIDOzCCAzcCAQExDjAMBggq
'' SIG '' hkiG9w0CBQUAMGYGCisGAQQBgjcCAQSgWDBWMDIGCisG
'' SIG '' AQQBgjcCAR4wJAIBAQQQTvApFpkntU2P5azhDxfrqwIB
'' SIG '' AAIBAAIBAAIBAAIBADAgMAwGCCqGSIb3DQIFBQAEEJGP
'' SIG '' d8EX4C4E19dwobwBXi2gggGrMIIBpzCCAVGgAwIBAgIQ
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
'' SIG '' AYI3AgEVMB8GCSqGSIb3DQEJBDESBBA/aiW5n61Tw3Y9
'' SIG '' c2rILwekMA0GCSqGSIb3DQEBAQUABEAwAWE90a+ZjQMv
'' SIG '' NJoYvgrwg6z8/2knyyFbMqbUz6aJQurM5xuVXtznY0im
'' SIG '' 0VWOXgibf0UblaE0/MH8kR+go+dS
'' SIG '' End signature block
*/