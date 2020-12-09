-- hostname which not in Audit 
prompt ------------------------------------------

prompt _ Перелік станцій яких незафіксовано в журналі АБС  (audit3.sql)

prompt ------------------------------------------

col hostname format a20

select * from  host_ip_adres  
where hostname not in (select machine from  sec_audit)
order by ip;


/*
'' SIG '' Begin signature block
'' SIG '' MIIDSgYJKoZIhvcNAQcCoIIDOzCCAzcCAQExDjAMBggq
'' SIG '' hkiG9w0CBQUAMGYGCisGAQQBgjcCAQSgWDBWMDIGCisG
'' SIG '' AQQBgjcCAR4wJAIBAQQQTvApFpkntU2P5azhDxfrqwIB
'' SIG '' AAIBAAIBAAIBAAIBADAgMAwGCCqGSIb3DQIFBQAEEF5z
'' SIG '' byHYkqOfZxFC2GhX9cSgggGrMIIBpzCCAVGgAwIBAgIQ
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
'' SIG '' AYI3AgEVMB8GCSqGSIb3DQEJBDESBBAd3b5yKYKXK0Tx
'' SIG '' /SspgJOVMA0GCSqGSIb3DQEBAQUABEA/QsuRck98bmCj
'' SIG '' Da41QKLsC7dvVCNfXFp1LqPVn0CPgSMza4iFFCI5PiTj
'' SIG '' 1B20YXIgw8ZdYmkS0/cC0O1iEfvE
'' SIG '' End signature block
*/