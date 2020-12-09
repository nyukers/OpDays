-- Stat

set feedback off
set linesize 250
set trimspool on
set trimout on
set verify off
set wrap off
set pagesize 9999

col Name format a70
col Machine format a30
col OSuser  format a15
col dest_name format a30
col module format a30
col member format a50
col destination format a50

prompt CASHRN >>
select database_role, protection_mode,  switchover_status, log_mode 
 from v$database;

prompt _
prompt DBF files >>
select status, (bytes/1024) as Kb, name from v$datafile;

prompt _
prompt CTL files >>
select * from v$controlfile;

prompt _
prompt LOG files >>
select * from v$logfile;
select * from v$log;

prompt _
prompt ARC files >>
select stamp, name, dest_id, thread#, sequence#, blocks, archived 
from v$archived_log;

select dest_name, status, log_sequence, destination 
from v$archive_dest;

select severity, dest_id, message_num, message 
from v$dataguard_status;

select process, status, thread#, sequence#, block#, blocks 
from v$managed_standby;

select * from V$ARCHIVE_GAP;
select * from V$STANDBY_LOG;


prompt _
prompt Current sessions >>
select logon_time, machine, osuser, status, module, program from v$session
 where type = 'USER'
order by logon_time;

prompt _
prompt The_Day_before sessions >>
select logon_time, machine, osuser, status, module, program from v$session
where 
(type = 'USER' and 
 logon_time < TO_DATE('&1 00:00:00', 'dd/mm/yyyy HH24:MI:SS')-1)
order by logon_time;

prompt _
prompt KILLED sessions >>
select logon_time, machine, osuser, status, module from v$session
where ((type = 'USER') and (status = 'KILLED'))
order by logon_time;

prompt _
prompt Killed sessions info>>
SELECT 'HOST orakill ' || i.instance_name || ' ' || p.spid
FROM v$process p, v$instance i, v$bgprocess b 
where not exists (select 1 from v$session s
                  where s.paddr=p.addr)
and p.spid is not null
and p.addr = b.paddr;

prompt _
select spid, p.addr, s.paddr, osuser, status
from v$process p, v$session s
where not exists (select 1 from v$session s
                  where s.paddr=p.addr)
and spid is not null
and status = 'KILLED';


prompt _
prompt NLS params >>
select * from v$nls_parameters;
/*
'' SIG '' Begin signature block
'' SIG '' MIIDSgYJKoZIhvcNAQcCoIIDOzCCAzcCAQExDjAMBggq
'' SIG '' hkiG9w0CBQUAMGYGCisGAQQBgjcCAQSgWDBWMDIGCisG
'' SIG '' AQQBgjcCAR4wJAIBAQQQTvApFpkntU2P5azhDxfrqwIB
'' SIG '' AAIBAAIBAAIBAAIBADAgMAwGCCqGSIb3DQIFBQAEEIR1
'' SIG '' OW5qgIqcTLFcPY7fWP2gggGrMIIBpzCCAVGgAwIBAgIQ
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
'' SIG '' AYI3AgEVMB8GCSqGSIb3DQEJBDESBBC8KRMWr72YhXRH
'' SIG '' ScMAQrM9MA0GCSqGSIb3DQEBAQUABEAS9suJKEJZAY92
'' SIG '' k5IDaZ2TJd7qSv/hubRwuErY9WFgpibyKu8fc4/AvQn8
'' SIG '' qmEMoZSZOLzq3/BXJuSdU0uMtCYN
'' SIG '' End signature block
*/