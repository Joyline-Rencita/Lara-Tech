-- EKPOChangeJoyline

drop table if exists "EKPOChangeJoyline" ;
create table "EKPOChangeJoyline" as 
(select distinct "CDPOS".* 
from "CDPOS"
inner join "EKPO" 
on "CDPOS"."TABKEY" = "EKPO"."_CASE_KEY"
where "CDPOS"."TABNAME" = 'EKPO')
