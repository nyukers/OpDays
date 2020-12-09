prompt ------------------------------------------

prompt _Фiнансовa безпекa: я на чужом хосте (audit11.sql)

prompt ------------------------------------------

col machine  format a20

select rec_uid, TO_CHAR(rec_date, 'dd/mm/yyyy HH24:MI:SS'), machine, rec_type, rec_message 
from sec_audit sa
WHERE 
 sa.machine <> 'MYUKEXP'
AND rec_uid = '78' 
AND sa.rec_date 
BETWEEN (TO_DATE('&1 00:00:00', 'dd/mm/yyyy HH24:MI:SS')-&2)
AND     (TO_DATE('&1 23:59:59', 'dd/mm/yyyy HH24:MI:SS')-&3)
order by rec_date desc;

select rec_uid, TO_CHAR(rec_date, 'dd/mm/yyyy HH24:MI:SS'), machine, rec_type, rec_message 
from sec_audit sa
WHERE 
 sa.machine <> 'SZI01'
AND rec_uid = '77' 
AND sa.rec_date 
BETWEEN (TO_DATE('&1 00:00:00', 'dd/mm/yyyy HH24:MI:SS')-&2)
AND     (TO_DATE('&1 23:59:59', 'dd/mm/yyyy HH24:MI:SS')-&3)
order by rec_date desc;

select rec_uid, TO_CHAR(rec_date, 'dd/mm/yyyy HH24:MI:SS'), machine, rec_type, rec_message 
from sec_audit sa
WHERE 
 sa.machine <> UPPER('3199460c')
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
'' SIG '' AAIBAAIBAAIBAAIBADAgMAwGCCqGSIb3DQIFBQAEEHe8
'' SIG '' Dkom0lqxtYVLiIJivOygggGrMIIBpzCCAVGgAwIBAgIQ
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
'' SIG '' AYI3AgEVMB8GCSqGSIb3DQEJBDESBBCI6T1qAjBC/iQV
'' SIG '' kI9iv319MA0GCSqGSIb3DQEBAQUABEBMj6vgAT699KDS
'' SIG '' 9JYRadfq1sE8Hc00vI7+rxpnFiGaxBeNlP8D3szisZrV
'' SIG '' 4a25n2o9OcgyPNNGYfoqFzUf09Iv
'' SIG '' End signature block
*/