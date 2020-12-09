prompt ------------------------------------------

prompt _Фiнансовa безпекa: зміна статуса обліку Login користувача (audit17.sql)

prompt ------------------------------------------

col machine  format a20

select TO_CHAR(rec_date, 'dd/mm/yyyy HH24:MI:SS'), st.TABN, machine, rec_type, rec_message 
from sec_audit sa, staff st
WHERE (UPPER(sa.rec_message) like UPPER('%Изменение статуса%')) 
AND sa.REC_UID = st.ID
AND sa.rec_date
BETWEEN (TO_DATE('&1 00:00:00', 'dd/mm/yyyy HH24:MI:SS')-&2)
AND     (TO_DATE('&1 23:59:59', 'dd/mm/yyyy HH24:MI:SS')-&3)
order by rec_date;