select 
  count(id) quantity,
  is_match
from loinc_copra.loinc_long_common_name_copra_name
group by is_match;

copy loinc_copra.loinc_long_common_name_copra_name 
to '/home/ahodelin/git_repos/copra_loinc/csv/results/sql_to_loinc_long_common_name_copra_name.csv'
delimiter E';' header csv;

select 
  count(id) quantity,
  is_match
from loinc_copra.loinc_long_common_name_copra_description
group by is_match;

copy loinc_copra.loinc_long_common_name_copra_description 
to '/home/ahodelin/git_repos/copra_loinc/csv/results/sql_to_loinc_long_common_name_copra_description.csv'
delimiter E';' header csv;

select 
  count(id) quantity,
  is_match
from loinc_copra.loinc_shortname_copra_name
group by is_match;

copy loinc_copra.loinc_shortname_copra_name 
to '/home/ahodelin/git_repos/copra_loinc/csv/results/sql_to_loinc_shortname_copra_name.csv'
delimiter E';' header csv;

select 
  count(id) quantity,
  is_match
from loinc_copra.loinc_shortname_copra_description
group by is_match;

select copra_id, llcncd.loinc_num, accuracy, name, "LONG_COMMON_NAME"  
from loinc_copra.loinc_long_common_name_copra_description llcncd 
join copra.co6_config_variables ccv 
  on ccv.id = copra_id
join loinc.loinc_german_translation lgt 
  on "LOINC_NUM" = llcncd.loinc_num
where is_match
  union
select copra_id, llcncd.loinc_num, accuracy, name, "LONG_COMMON_NAME"  
from loinc_copra.loinc_long_common_name_copra_name llcncd 
join copra.co6_config_variables ccv 
  on ccv.id = copra_id
join loinc.loinc_german_translation lgt 
  on "LOINC_NUM" = llcncd.loinc_num
where is_match
  union
select copra_id, llcncd.loinc_num, accuracy, name, "LONG_COMMON_NAME"  
from loinc_copra.loinc_shortname_copra_name llcncd 
join copra.co6_config_variables ccv 
  on ccv.id = copra_id
join loinc.loinc_german_translation lgt 
  on "LOINC_NUM" = llcncd.loinc_num
where is_match
  union 
select copra_id, loinc_num, 100, copra_name, loinc_long_common_name 
from loinc_copra.loinc_copra_hand
order by copra_id, loinc_num;

select * from loinc_copra.loinc_shortname_copra_name llcnc where is_match ;
update loinc_copra.loinc_shortname_copra_name
set is_match = false 
where is_match 
and id = 559






create table loinc_copra.loinc_copra_hand(
  id serial primary key,
  loinc_num varchar references loinc.loinc(loinc_num) not null,
  copra_id bigint references copra.co6_config_variables(id) not null,
  loinc_long_common_name varchar not null,
  copra_name varchar not null
);

--insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l.loinc_num, ccv.id, l.long_common_name, ccv.name 
from loinc.loinc l, copra.co6_config_variables ccv 
where l.loinc_num = '75919-1'
and ccv.id in (102535, 100072, 102185, 102167, 102035, 110922)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand);


--insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l.loinc_num, ccv.id, l.long_common_name, ccv.name 
from loinc.loinc l, copra.co6_config_variables ccv 
where l.loinc_num in ('8865-8', '44974-4')
and ccv.id in (1268)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand);


--insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l.loinc_num, ccv.id, l.long_common_name, ccv.name 
from loinc.loinc l, copra.co6_config_variables ccv 
where l.loinc_num in ('60985-9')
and ccv.id in (1269)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand);

--insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l.loinc_num, ccv.id, l.long_common_name, ccv.name 
from loinc.loinc l, copra.co6_config_variables ccv 
where l.loinc_num in ('76533-9')
and ccv.id in (1275)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand);

--insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l.loinc_num, ccv.id, l.long_common_name, ccv.name 
from loinc.loinc l, copra.co6_config_variables ccv 
where l.loinc_num in ('8837-7')
and ccv.id in (100073)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand);

insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l.loinc_num, ccv.id, l.long_common_name, ccv.name 
from loinc.loinc l, copra.co6_config_variables ccv 
where l.loinc_num in ('8831-0')
and ccv.id in (100074)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand);

--insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l.loinc_num, ccv.id, l.long_common_name, ccv.name 
from loinc.loinc l, copra.co6_config_variables ccv 
where l.loinc_num in ('61017-0')
and ccv.id in (100086)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand);

--insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l.loinc_num, ccv.id, l.long_common_name, ccv.name 
from loinc.loinc l, copra.co6_config_variables ccv 
where l.loinc_num in ('60956-0')
and ccv.id in (100088)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand);

--insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l.loinc_num, ccv.id, l.long_common_name, ccv.name 
from loinc.loinc l, copra.co6_config_variables ccv 
where l.loinc_num in ('3150-0')
and ccv.id in (100100)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand);

--insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l.loinc_num, ccv.id, l.long_common_name, ccv.name 
from loinc.loinc l, copra.co6_config_variables ccv 
where l.loinc_num in ('60826-5')
and ccv.id in (101433)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand);

--insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l."LOINC_NUM", ccv.id, l."LONG_COMMON_NAME", ccv.name 
from loinc.loinc_german_translation l, copra.co6_config_variables ccv 
where l."LOINC_NUM" in ('9279-1')
and ccv.id in (101442)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand);

--insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l.loinc_num, ccv.id, l.long_common_name, ccv.name 
from loinc.loinc l, copra.co6_config_variables ccv 
where l.loinc_num in ('38199-6')
and ccv.id in (101444)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand);

--insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l."LOINC_NUM", ccv.id, l."LONG_COMMON_NAME", ccv.name 
from loinc.loinc_german_translation l, copra.co6_config_variables ccv 
where l."LOINC_NUM" in ('59408-5')
and ccv.id in (102010)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand);

--insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l.loinc_num, ccv.id, l.long_common_name, ccv.name 
from loinc.loinc l, copra.co6_config_variables ccv 
where l.loinc_num in ('96976-6')
and ccv.id in (102012)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand);

--insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l.loinc_num, ccv.id, l.long_common_name, ccv.name 
from loinc.loinc l, copra.co6_config_variables ccv 
where l.loinc_num in ('8400-4')
and ccv.id in (102016)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand);

insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l.loinc_num, ccv.id, l.long_common_name, ccv.name 
from loinc.loinc l, copra.co6_config_variables ccv 
where l.loinc_num in ('75994-4')
and ccv.id in (102018)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand);

insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l.loinc_num, ccv.id, l.long_common_name, ccv.name 
from loinc.loinc l, copra.co6_config_variables ccv 
where l.loinc_num in ('8414-5')
and ccv.id in (102019)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand);

--insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l.loinc_num, ccv.id, l.long_common_name, ccv.name 
from loinc.loinc l, copra.co6_config_variables ccv 
where l.loinc_num in ('')
and ccv.id in ()
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand);

--insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l.loinc_num, ccv.id, l.long_common_name, ccv.name 
from loinc.loinc l, copra.co6_config_variables ccv 
where l.loinc_num in ('8861-7')
and ccv.id in (102023)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand);

--insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l.loinc_num, ccv.id, l.long_common_name, ccv.name 
from loinc.loinc l, copra.co6_config_variables ccv 
where l.loinc_num in ('76297-1')
and ccv.id in (102024)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand);

--insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l.loinc_num, ccv.id, l.long_common_name, ccv.name 
from loinc.loinc l, copra.co6_config_variables ccv 
where l.loinc_num in ('8862-5')
and ccv.id in (102028)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand);

--insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l.loinc_num, ccv.id, l.long_common_name, ccv.name 
from loinc.loinc l, copra.co6_config_variables ccv 
where l.loinc_num in ('8864-1')
and ccv.id in (102029)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand);

--insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l.loinc_num, ccv.id, l.long_common_name, ccv.name 
from loinc.loinc l, copra.co6_config_variables ccv 
where l.loinc_num in ('8828-6')
and ccv.id in (102032)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand);

--insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l.loinc_num, ccv.id, l.long_common_name, ccv.name 
from loinc.loinc l, copra.co6_config_variables ccv 
where l.loinc_num in ('60975-0')
and ccv.id in (102033)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand);

--insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l.loinc_num, ccv.id, l.long_common_name, ccv.name 
from loinc.loinc l, copra.co6_config_variables ccv 
where l.loinc_num in ('75919-1')
and ccv.id in (102035)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand);

insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l.loinc_num, ccv.id, l.long_common_name, ccv.name 
from loinc.loinc l, copra.co6_config_variables ccv 
where l.loinc_num in ('8831-0')
and ccv.id in (102037)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand);

--insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l.loinc_num, ccv.id, l.long_common_name, ccv.name 
from loinc.loinc l, copra.co6_config_variables ccv 
where l.loinc_num in ('8837-7')
and ccv.id in (102038)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand);

insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l.loinc_num, ccv.id, l.long_common_name, ccv.name 
from loinc.loinc l, copra.co6_config_variables ccv 
where l.loinc_num in ('76284-9')
and ccv.id in (102050)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand);

--insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l.loinc_num, ccv.id, l.long_common_name, ccv.name 
from loinc.loinc l, copra.co6_config_variables ccv 
where l.loinc_num in ('')
and ccv.id in ()
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand);


select 
id, name, 
description from copra.co6_config_variables ccv
where parent in (1, 20)
and co6_config_variabletypes_id in (3, 6, 5, 12)
and id > 102050
and description notnull
--and description like '%ndex%'
order by id ;

select loinc_num, long_common_name, shortname from loinc.loinc l where long_common_name like '%nary%ressure%' order by long_common_name ;

select "LOINC_NUM", "LONG_COMMON_NAME" from loinc.loinc_german_translation where "LOINC_NUM" = '8864-1'; -- german
select loinc_num , long_common_name from loinc.loinc where loinc_num LIKE '%19466-9%'

-- LP73417-5 - Stroke volume -> 102030 - SV
-- LP19466-9 - Cardiac output -> 102021 - CO
-- LP19466-9 - Cardiac output -> 102040 - p-CO
-- LP19466-9 - Cardiac output -> 102051 - HZV

select * from loinc_copra.loinc_copra_hand;

select * from copra.co6_config_variables ccv where id = 110922;

