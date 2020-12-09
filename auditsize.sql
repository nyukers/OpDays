set echo off
spool AuditSize.log
connect SYSTEM/******

select (sum(bytes)/1024)/1024 as AuditDBs_size_in_Mb 
from dba_extents
where 
 (segment_name = 'SEC_AUDIT' or
  segment_name = 'SEC_JOURNAL')
 and owner='BARS';

spool off
--HOST pause
disconnect
exit

