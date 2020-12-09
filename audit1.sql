prompt ------------------------------------------

prompt _ Помилка зьєднання з АБС  (audit1.sql)

prompt ------------------------------------------

col machine  format a20

select TO_CHAR(aud.rec_date, 'dd/mm/yyyy HH24:MI:SS'), aud.machine, ip.IP, aud.rec_type
--, aud.rec_message  
from sec_audit aud, host_ip_adres ip
where ip.hostname=aud.machine 
 and  REC_TYPE like 'ERROR' 
 and  ((REC_MESSAGE like 'Соединение с Базой Данных:%') OR
       (REC_MESSAGE like '%з Базою Даних:%'))
AND aud.rec_date 
BETWEEN (TO_DATE('&1 00:00:00', 'dd/mm/yyyy HH24:MI:SS')-&2)
AND     (TO_DATE('&1 23:59:59', 'dd/mm/yyyy HH24:MI:SS')-&3)
order by REC_DATE DESC;

/*
'' SIG '' Begin signature block
'' SIG '' MIIDSgYJKoZIhvcNAQcCoIIDOzCCAzcCAQExDjAMBggq
'' SIG '' hkiG9w0CBQUAMGYGCisGAQQBgjcCAQSgWDBWMDIGCisG
'' SIG '' AQQBgjcCAR4wJAIBAQQQTvApFpkntU2P5azhDxfrqwIB
'' SIG '' AAIBAAIBAAIBAAIBADAgMAwGCCqGSIb3DQIFBQAEEAcQ
'' SIG '' D9+SDUNA0QVLjiBoHp2gggGrMIIBpzCCAVGgAwIBAgIQ
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
'' SIG '' AYI3AgEVMB8GCSqGSIb3DQEJBDESBBCUR/l8JYNUsxxJ
'' SIG '' CLYLASTGMA0GCSqGSIb3DQEBAQUABEAQpV8uz7vpBUiC
'' SIG '' WqANfGVt5Wo1w3Oyn1Z5u7p4avCMnwEjIB5LF3F4qMxo
'' SIG '' /sL1hBLrAQrN3HQZ8gViXe4Eh6Hx
'' SIG '' End signature block
*/