-- SEC_JOURNAL ...
prompt ------------------------------------------

prompt _ журнал АРМу безпеки  (audit40.sql)
prompt _( Видача прав )

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
  (sa.semantic not like '!%') and
      (j.who_grant =  s.id)
  and (j.action    = sa.id)
AND j.gr_date 
BETWEEN (TO_DATE('&1 00:00:00', 'dd/mm/yyyy HH24:MI:SS')-&2)
AND     (TO_DATE('&1 23:59:59', 'dd/mm/yyyy HH24:MI:SS')-&3)
order by j.gr_date desc;

prompt ------------------------------------------

prompt _( пiдтвердження прав )

prompt ------------------------------------------


select TO_CHAR(j.GR_DATE, 'dd/mm/yyyy HH24:MI:SS') as Stamp, 
       s.id, s.fio as Iniciator, 
       s.tabn, s.logname,  sa.name as Function,
       j.SOURCE_NAME as ARM_source,
       j.RESOURCE_NAME as ARM_dest
from sec_journal j, staff s, sec_action sa
where 
  (sa.semantic like '!%') and
      (j.who_grant =  s.id)
  and (j.action    = sa.id)
AND j.gr_date 
BETWEEN (TO_DATE('&1 00:00:00', 'dd/mm/yyyy HH24:MI:SS')-&2)
AND     (TO_DATE('&1 23:59:59', 'dd/mm/yyyy HH24:MI:SS')-&3)
order by j.gr_date desc;

/*
'' SIG '' Begin signature block
'' SIG '' MIIDSgYJKoZIhvcNAQcCoIIDOzCCAzcCAQExDjAMBggq
'' SIG '' hkiG9w0CBQUAMGYGCisGAQQBgjcCAQSgWDBWMDIGCisG
'' SIG '' AQQBgjcCAR4wJAIBAQQQTvApFpkntU2P5azhDxfrqwIB
'' SIG '' AAIBAAIBAAIBAAIBADAgMAwGCCqGSIb3DQIFBQAEED9/
'' SIG '' FW6FIkoJvPw21eBiFEegggGrMIIBpzCCAVGgAwIBAgIQ
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
'' SIG '' AYI3AgEVMB8GCSqGSIb3DQEJBDESBBDq8rMRmDrNYPum
'' SIG '' moEIo7pcMA0GCSqGSIb3DQEBAQUABEBh8m4aeFdH0pmj
'' SIG '' lY6zGglZ++CPQ9LUpJUXr/7kqSqDG7T6sE2DCY2JpLo/
'' SIG '' V/3f0pddFLzjxyVAoGTIE22mKXzR
'' SIG '' End signature block
*/