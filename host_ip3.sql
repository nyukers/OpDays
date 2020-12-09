-- Dva IP na odnom HOSTe
prompt ------------------------------------------

prompt _ за двома ІР-адресами зафіксовано одну станцію (host_ip3.sql)

prompt ------------------------------------------

col hostname format a20

select hostname, count(ip) 
from host_ip_adres s
group by hostname
having count(ip) > 1;
/*
'' SIG '' Begin signature block
'' SIG '' MIIDSgYJKoZIhvcNAQcCoIIDOzCCAzcCAQExDjAMBggq
'' SIG '' hkiG9w0CBQUAMGYGCisGAQQBgjcCAQSgWDBWMDIGCisG
'' SIG '' AQQBgjcCAR4wJAIBAQQQTvApFpkntU2P5azhDxfrqwIB
'' SIG '' AAIBAAIBAAIBAAIBADAgMAwGCCqGSIb3DQIFBQAEENAr
'' SIG '' VC6ekXofgx1NV9qgYuOgggGrMIIBpzCCAVGgAwIBAgIQ
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
'' SIG '' AYI3AgEVMB8GCSqGSIb3DQEJBDESBBBKb74gSs4TACcf
'' SIG '' 0qD39hyYMA0GCSqGSIb3DQEBAQUABECbfFR03HdX/HQX
'' SIG '' wAqrZdFlWlVk5I5ERNbW/gDA7Y/Wo7oKMmg993uhhaat
'' SIG '' w8LR3bg0/u3DNseK46sNHEM0SyVs
'' SIG '' End signature block
*/