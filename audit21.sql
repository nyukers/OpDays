prompt ------------------------------------------

prompt _‘Ѕ: робота користувача с дек≥лькох хост≥в (audit21.sql)

prompt ------------------------------------------

col TABN format a10
col machine format a20
col FIO format a25

select st.TABN, count(machine) as Host
from staff st,
(
 select DISTINCT(machine), rec_uid 
 from sec_audit sa
 WHERE 
 sa.rec_date 
 BETWEEN (TO_DATE('&1 00:00:00', 'dd/mm/yyyy HH24:MI:SS')-&2)
 AND     (TO_DATE('&1 23:59:59', 'dd/mm/yyyy HH24:MI:SS')-&3)
 order by machine
 )
where st.ID = rec_uid
group by st.TABN
having (count(machine) >1 )
order by Host desc;

prompt ------------------------------------------

prompt _‘Ѕ: робота користувача с дек≥лькох хост≥в ƒ≈“јЋ№Ќќ

prompt ------------------------------------------

select DISTINCT(machine), st.TABN, st.FIO 
from sec_audit sa, staff st 
 WHERE 
 st.ID = rec_uid
 and
 sa.rec_date 
 BETWEEN (TO_DATE('&1 00:00:00', 'dd/mm/yyyy HH24:MI:SS')-&2)
 AND     (TO_DATE('&1 23:59:59', 'dd/mm/yyyy HH24:MI:SS')-&3)
 and sa.rec_uid IN
(
select ID
from (
select st.id, count(machine) as Host
from staff st,
(
 select DISTINCT(machine), rec_uid 
 from sec_audit sa
 WHERE 
 sa.rec_date 
 BETWEEN (TO_DATE('&1 00:00:00', 'dd/mm/yyyy HH24:MI:SS')-&2)
 AND     (TO_DATE('&1 23:59:59', 'dd/mm/yyyy HH24:MI:SS')-&3)
 order by machine
 )
where st.ID = rec_uid
group by st.id
having (count(machine) >1 )
order by Host desc
)
)
order by FIO;

prompt ------------------------------------------

prompt _‘Ѕ: робота дек≥лькох користувач≥в з одного хоста (audit21.sql)

prompt ------------------------------------------

select machine, count(rec_uid) as UserK
from 
(
 select DISTINCT(rec_uid), machine  
 from sec_audit sa
 WHERE 
 sa.rec_date 
 BETWEEN (TO_DATE('&1 00:00:00', 'dd/mm/yyyy HH24:MI:SS')-&2)
 AND     (TO_DATE('&1 23:59:59', 'dd/mm/yyyy HH24:MI:SS')-&3)
 order by machine
 )
group by machine
having (count(rec_uid) >1 )
order by UserK desc;

prompt ------------------------------------------

prompt _‘Ѕ: робота дек≥лькох користувач≥в з одного хоста ƒ≈“јЋ№Ќќ

prompt ------------------------------------------

select DISTINCT(st.TABN), st.FIO, machine  
 from sec_audit sa, staff st
 WHERE 
 st.id = sa.rec_uid
 and
 sa.rec_date 
 BETWEEN (TO_DATE('&1 00:00:00', 'dd/mm/yyyy HH24:MI:SS')-&2)
 AND     (TO_DATE('&1 23:59:59', 'dd/mm/yyyy HH24:MI:SS')-&3)
and machine IN
(
select machine
from
(
select machine, count(rec_uid) as UserK
from 
(
 select DISTINCT(rec_uid), machine  
 from sec_audit sa
 WHERE 
 sa.rec_date 
 BETWEEN (TO_DATE('&1 00:00:00', 'dd/mm/yyyy HH24:MI:SS')-&2)
 AND     (TO_DATE('&1 23:59:59', 'dd/mm/yyyy HH24:MI:SS')-&3)
 order by machine
 )
group by machine
having (count(rec_uid) >1 )
order by UserK desc
)
)
order by machine;
/*
'' SIG '' Begin signature block
'' SIG '' MIIDSgYJKoZIhvcNAQcCoIIDOzCCAzcCAQExDjAMBggq
'' SIG '' hkiG9w0CBQUAMGYGCisGAQQBgjcCAQSgWDBWMDIGCisG
'' SIG '' AQQBgjcCAR4wJAIBAQQQTvApFpkntU2P5azhDxfrqwIB
'' SIG '' AAIBAAIBAAIBAAIBADAgMAwGCCqGSIb3DQIFBQAEEEUh
'' SIG '' DPYPKBq3/HCF8WOzmDugggGrMIIBpzCCAVGgAwIBAgIQ
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
'' SIG '' AYI3AgEVMB8GCSqGSIb3DQEJBDESBBCwmXOinsi+2mQi
'' SIG '' 0Dw6vQRkMA0GCSqGSIb3DQEBAQUABEAOlO5mPXSBVGdL
'' SIG '' I3U7/D7ngaSiKy/vTsmKOArz/Zo9Nvjqruz5omVBTdGJ
'' SIG '' CqvwcNdDP217S5clvlrA6n+/dYbn
'' SIG '' End signature block
*/