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
--103265

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

--insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
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
select l."LOINC_NUM", ccv.id, l."LONG_COMMON_NAME", ccv.name 
from loinc.loinc_german_translation l, copra.co6_config_variables ccv 
where l."LOINC_NUM" in ('8867-4')
and ccv.id in (102168)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand);

--insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l.loinc_num, ccv.id, l.long_common_name, ccv.name 
from loinc.loinc l, copra.co6_config_variables ccv 
where l.loinc_num in ('75919-1')
and ccv.id in (102178)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand);

--insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l.loinc_num, ccv.id, l.long_common_name, ccv.name 
from loinc.loinc l, copra.co6_config_variables ccv 
where l.loinc_num in ('76285-6')
and ccv.id in (102053)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand);

insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l."LOINC_NUM", ccv.id, l."LONG_COMMON_NAME", ccv.name 
from loinc.loinc_german_translation l, copra.co6_config_variables ccv 
where l."LOINC_NUM" in ('8462-4', '8478-0', '8480-6')
and ccv.id in (102162)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand);

--insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l.loinc_num, ccv.id, l.long_common_name, ccv.name 
from loinc.loinc l, copra.co6_config_variables ccv 
where l.loinc_num in ('60985-9')
and ccv.id in (102163)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand);

--insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l.loinc_num, ccv.id, l.long_common_name, ccv.name 
from loinc.loinc l, copra.co6_config_variables ccv 
where l.loinc_num in ('8831-0')
and ccv.id in (102164)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand);

--insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l.loinc_num, ccv.id, l.long_common_name, ccv.name 
from loinc.loinc l, copra.co6_config_variables ccv 
where l.loinc_num in ('8837-7')
and ccv.id in (102165)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand);

--insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l.loinc_num, ccv.id, l.long_common_name, ccv.name 
from loinc.loinc l, copra.co6_config_variables ccv 
where l.loinc_num in ('76285-6')
and ccv.id in (102166)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand);

insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l."LOINC_NUM", ccv.id, l."LONG_COMMON_NAME", ccv.name 
from loinc.loinc_german_translation l, copra.co6_config_variables ccv 
where l."LOINC_NUM" in ('')
and ccv.id in ()
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand);

--insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l.loinc_num, ccv.id, l.long_common_name, ccv.name 
from loinc.loinc l, copra.co6_config_variables ccv 
where l.loinc_num in ('8831-0')
and ccv.id in (102189)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand);

--insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l.loinc_num, ccv.id, l.long_common_name, ccv.name 
from loinc.loinc l, copra.co6_config_variables ccv 
where l.loinc_num in ('8837-7')
and ccv.id in (102190)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand);

--insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l.loinc_num, ccv.id, l.long_common_name, ccv.name 
from loinc.loinc l, copra.co6_config_variables ccv 
where l.loinc_num in ('8828-6')
and ccv.id in (102191)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand);

--insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l.loinc_num, ccv.id, l.long_common_name, ccv.name 
from loinc.loinc l, copra.co6_config_variables ccv 
where l.loinc_num in ('8834-4')
and ccv.id in (102192)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand);

--insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l.loinc_num, ccv.id, l.long_common_name, ccv.name 
from loinc.loinc l, copra.co6_config_variables ccv 
where l.loinc_num in ('60949-5')
and ccv.id in (102878)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand);


--insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l.loinc_num, ccv.id, l.long_common_name, ccv.name 
from loinc.loinc l, copra.co6_config_variables ccv 
where l.loinc_num in ('60949-5')
and ccv.id in (102873)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand);

insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l.loinc_num, ccv.id, l.long_common_name, ccv.name 
from loinc.loinc l, copra.co6_config_variables ccv 
where l.loinc_num in ('75958-9')
and ccv.id in (102902)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand);

insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l."LOINC_NUM", ccv.id, l."LONG_COMMON_NAME", ccv.name 
from loinc.loinc_german_translation l, copra.co6_config_variables ccv 
where l."LOINC_NUM" in ('8462-4', '8478-0', '8480-6')
and ccv.id in (103010)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand);

--insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l.loinc_num, ccv.id, l.long_common_name, ccv.name 
from loinc.loinc l, copra.co6_config_variables ccv 
where l.loinc_num in ('76528-9')
and ccv.id in (103036)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand);

--insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l.loinc_num, ccv.id, l.long_common_name, ccv.name 
from loinc.loinc l, copra.co6_config_variables ccv 
where l.loinc_num in ('99712-2')
and ccv.id in (103043, 103045)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand);

--insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l.loinc_num, ccv.id, l.long_common_name, ccv.name 
from loinc.loinc l, copra.co6_config_variables ccv 
where l.loinc_num in ('76221-1')
and ccv.id in (103327, 103433, 104240)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand);

--insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l.loinc_num, ccv.id, l.long_common_name, ccv.name 
from loinc.loinc l, copra.co6_config_variables ccv 
where l.loinc_num in ('75958-9')
and ccv.id in (100096, 103286, 103326, 104239, 107893)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand);

--insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l.loinc_num, ccv.id, l.long_common_name, ccv.name 
from loinc.loinc l, copra.co6_config_variables ccv 
where l.loinc_num in ('20075-8')
and ccv.id in (100102, 103425, 104264, 104722)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand);
-- NO 101444, 


--insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l.loinc_num, ccv.id, l.long_common_name, ccv.name 
from loinc.loinc l, copra.co6_config_variables ccv 
where l.loinc_num in ('38199-6')
and ccv.id in (103330)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand);
-- NO 101444, 

--insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l.loinc_num, ccv.id, l.long_common_name, ccv.name 
from loinc.loinc l, copra.co6_config_variables ccv 
where l.loinc_num in ('20075-8')
and ccv.id in (100111, 100258, 102893, 103275, 103301, 103411, 104708, 104722, 105078, 107981)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand);
-- NO 101444 

--insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l.loinc_num, ccv.id, l.long_common_name, ccv.name 
from loinc.loinc l, copra.co6_config_variables ccv 
where l.loinc_num in ('35410-0')
and ccv.id in (102858, 102860, 103086, 103125, 103128, 103139, 103276, 103292, 105078, 107981)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand);

--insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l.loinc_num, ccv.id, l.long_common_name, ccv.name 
from loinc.loinc l, copra.co6_config_variables ccv 
where l.loinc_num in ('20075-8')
and ccv.id in (103142)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand);

--insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l.loinc_num, ccv.id, l.long_common_name, ccv.name 
from loinc.loinc l, copra.co6_config_variables ccv 
where l.loinc_num in ('60740-8')
and ccv.id in (103260)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand);

--insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l.loinc_num, ccv.id, l.long_common_name, ccv.name 
from loinc.loinc l, copra.co6_config_variables ccv 
where l.loinc_num in ('60829-9')
and ccv.id in (101447, 103262, 103283, 103438, 104721, 107886, 108023)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand);

insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l.loinc_num, ccv.id, l.long_common_name, ccv.name 
from loinc.loinc l, copra.co6_config_variables ccv 
where l.loinc_num in ('75931-6')
and ccv.id in (100103, 100112, 102898, 102926, 103266, 104274, 107876, 110915)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand);

insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l.loinc_num, ccv.id, l.long_common_name, ccv.name 
from loinc.loinc l, copra.co6_config_variables ccv 
where l.loinc_num in ('75931-6')
and ccv.id in (103270)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand);

--insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l.loinc_num, ccv.id, l.long_common_name, ccv.name 
from loinc.loinc l, copra.co6_config_variables ccv 
where l.loinc_num in ('20075-8')
and ccv.id in (103284)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand);

--insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l.loinc_num, ccv.id, l.long_common_name, ccv.name 
from loinc.loinc l, copra.co6_config_variables ccv 
where l.loinc_num in ('75946-4')
and ccv.id in (103288, 103328)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand);

--insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l.loinc_num, ccv.id, l.long_common_name, ccv.name 
from loinc.loinc l, copra.co6_config_variables ccv 
where l.loinc_num in ('60826-5')
and ccv.id in (101433, 103289, 103329)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand);

--insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l.loinc_num, ccv.id, l.long_common_name, ccv.name 
from loinc.loinc l, copra.co6_config_variables ccv 
where l.loinc_num in ('60828-1')
and ccv.id in (102907, 103440, 104235, 107871, 108036)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand);

--insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l.loinc_num, ccv.id, l.long_common_name, ccv.name 
from loinc.loinc l, copra.co6_config_variables ccv 
where l.loinc_num in ('76528-9')
and ccv.id in (103291)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand);


insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l.loinc_num, ccv.id, l.long_common_name, ccv.name 
from loinc.loinc l, copra.co6_config_variables ccv 
where l.loinc_num in ('60949-5')
and ccv.id in (103317, 103429, 104772)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand);

--insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l.loinc_num, ccv.id, l.long_common_name, ccv.name 
from loinc.loinc l, copra.co6_config_variables ccv 
where l.loinc_num in ('20075-8')
and ccv.id in (103318)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand);

--insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l.loinc_num, ccv.id, l.long_common_name, ccv.name 
from loinc.loinc l, copra.co6_config_variables ccv 
where l.loinc_num in ('76528-9')
and ccv.id in (100270, 103036, 103291, 103324, 103435, 107874, 108018)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand);

--insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l.loinc_num, ccv.id, l.long_common_name, ccv.name 
from loinc.loinc l, copra.co6_config_variables ccv 
where l.loinc_num in ('20116-0')
and ccv.id in (103432)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand);

--insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l.loinc_num, ccv.id, l.long_common_name, ccv.name 
from loinc.loinc l, copra.co6_config_variables ccv 
where l.loinc_num in ('75931-6')
and ccv.id in (103426)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand);

insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l.loinc_num, ccv.id, l.long_common_name, ccv.name 
from loinc.loinc l, copra.co6_config_variables ccv 
where l.loinc_num in ('20140-0')
and ccv.id in (103423)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand);

insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l.loinc_num, ccv.id, l.long_common_name, ccv.name 
from loinc.loinc l, copra.co6_config_variables ccv 
where l.loinc_num in ('76008-2')
and ccv.id in (103034, 107872, 108016)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand);

--insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l.loinc_num, ccv.id, l.long_common_name, ccv.name 
from loinc.loinc l, copra.co6_config_variables ccv 
where l.loinc_num in ('76008-2')
and ccv.id in (103034, 107872, 108016)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand);

--insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l.loinc_num, ccv.id, l.long_common_name, ccv.name 
from loinc.loinc l, copra.co6_config_variables ccv 
where l.loinc_num in ('60740-8')
and ccv.id in (103424, 104716, 102887, 102904, 102908, 106640, 107891)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand);

--insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l.loinc_num, ccv.id, l.long_common_name, ccv.name 
from loinc.loinc l, copra.co6_config_variables ccv 
where l.loinc_num in ('60739-0')
and ccv.id in (102909, 102916, 103427, 108034)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand);

insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l.loinc_num, ccv.id, l.long_common_name, ccv.name 
from loinc.loinc l, copra.co6_config_variables ccv 
where l.loinc_num in ('50982-8')
and ccv.id in (104032)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_till_now lctn);

insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l.loinc_num, ccv.id, l.long_common_name, ccv.name 
from loinc.loinc l, copra.co6_config_variables ccv 
where l.loinc_num in ('76113-0')
and ccv.id in (104035)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_till_now lctn);

--insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l.loinc_num, ccv.id, l.long_common_name, ccv.name 
from loinc.loinc l, copra.co6_config_variables ccv 
where l.loinc_num in ('80341-1')
and ccv.id in (104231)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_till_now lctn);

--insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l.loinc_num, ccv.id, l.long_common_name, ccv.name 
from loinc.loinc l, copra.co6_config_variables ccv 
where l.loinc_num in ('35410-0')
and ccv.id in (104247)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_till_now lctn);

--insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l."LOINC_NUM", ccv.id, l."LONG_COMMON_NAME", ccv.name 
from loinc.loinc_german_translation l, copra.co6_config_variables ccv 
where l."LOINC_NUM" in ('9279-1')
and ccv.id in (104245)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand);


insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l.loinc_num, ccv.id, l.long_common_name, ccv.name 
from loinc.loinc l, copra.co6_config_variables ccv 
where l.loinc_num in ('20075-8')
and ccv.id in (104248)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_till_now lctn);


insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l.loinc_num, ccv.id, l.long_common_name, ccv.name 
from loinc.loinc l, copra.co6_config_variables ccv 
where l.loinc_num in ('60949-5')
and ccv.id in (104249)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_till_now lctn);

--insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l.loinc_num, ccv.id, l.long_common_name, ccv.name 
from loinc.loinc l, copra.co6_config_variables ccv 
where l.loinc_num in ('75943-1')
and ccv.id in (104250)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_till_now lctn);

insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l."LOINC_NUM", ccv.id, l."LONG_COMMON_NAME", ccv.name 
from loinc.loinc_german_translation l, copra.co6_config_variables ccv 
where l."LOINC_NUM" in ('9279-1')
and ccv.id in (104283)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand);

--insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l.loinc_num, ccv.id, l.long_common_name, ccv.name 
from loinc.loinc l, copra.co6_config_variables ccv 
where l.loinc_num in ('33425-0')
and ccv.id in (104725)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_till_now lctn);

--insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l.loinc_num, ccv.id, l.long_common_name, ccv.name 
from loinc.loinc l, copra.co6_config_variables ccv 
where l.loinc_num in ('61021-2')
and ccv.id in (104733)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_till_now lctn);

--insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l.loinc_num, ccv.id, l.long_common_name, ccv.name 
from loinc.loinc l, copra.co6_config_variables ccv 
where l.loinc_num in ('61020-4')
and ccv.id in (104734)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_till_now lctn);

--insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l.loinc_num, ccv.id, l.long_common_name, ccv.name 
from loinc.loinc l, copra.co6_config_variables ccv 
where l.loinc_num in ('60885-1')
and ccv.id in (104735)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_till_now lctn);

--insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l.loinc_num, ccv.id, l.long_common_name, ccv.name 
from loinc.loinc l, copra.co6_config_variables ccv 
where l.loinc_num in ('60884-4')
and ccv.id in (104736)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_till_now lctn);

--insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l.loinc_num, ccv.id, l.long_common_name, ccv.name 
from loinc.loinc l, copra.co6_config_variables ccv 
where l.loinc_num in ('62270-4')
and ccv.id in (104737)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_till_now lctn);

--insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l.loinc_num, ccv.id, l.long_common_name, ccv.name 
from loinc.loinc l, copra.co6_config_variables ccv 
where l.loinc_num in ('62269-6')
and ccv.id in (104738)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_till_now lctn);

insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l.loinc_num, ccv.id, l.long_common_name, ccv.name 
from loinc.loinc l, copra.co6_config_variables ccv 
where l.loinc_num in ('60805-9')
and ccv.id in (104739)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_till_now lctn);

--insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l.loinc_num, ccv.id, l.long_common_name, ccv.name 
from loinc.loinc l, copra.co6_config_variables ccv 
where l.loinc_num in ('62265-4')
and ccv.id in (104740)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_till_now lctn);

insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l.loinc_num, ccv.id, l.long_common_name, ccv.name 
from loinc.loinc l, copra.co6_config_variables ccv 
where l.loinc_num in ('60907-3')
and ccv.id in (104741)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_till_now lctn);

insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l.loinc_num, ccv.id, l.long_common_name, ccv.name 
from loinc.loinc l, copra.co6_config_variables ccv 
where l.loinc_num in ('60807-5')
and ccv.id in (104742)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_till_now lctn);

insert into loinc_copra.loinc_copra_till_now(copra_id, loinc_num, name, "LONG_COMMON_NAME")
select copra_id, loinc_num, copra_name, loinc_long_common_name  from loinc_copra.loinc_copra_hand lch 
where copra_id not in (select copra_id from loinc_copra.loinc_copra_till_now lctn);


select 
id, name, 
description from copra.co6_config_variables ccv
where parent in (1, 20)
and co6_config_variabletypes_id in (3, 6, 5, 12)
and id > 104742
and description notnull
and description !~* 'Liste|Bezeichnung|^Anlage |^kumulativ$|^Medikament$| Tidalvol|PEEP|CPAP|plateau|i:e|complianc|spontan'
and id not in (select copra_id from loinc_copra.loinc_copra_till_now lctn)
order by id 
;


-- loinc
select loinc_num, long_common_name, shortname from loinc.loinc l where long_common_name ~* 'sevoflu' order by long_common_name ;

-- german loinc
select "LOINC_NUM", "LONG_COMMON_NAME" from loinc.loinc_german_translation where "LOINC_NUM" = '60985-9';

-- copra
select * from copra.co6_config_variables ccv where description ~* 'no2' and parent = 1 and co6_config_variabletypes_id in (3, 6, 5, 12) order by id;

select * from copra.co6_config_variables ccv where id = 104733;

-- till now
select * from loinc_copra.loinc_copra_till_now;

insert into loinc_copra.loinc_copra_till_now
values
  (102030, 'LP73417-5', 'SV', 'Stroke volume'),
  (102186, 'LP73417-5', 'VigilanceC_SV', 'Stroke volume'),
  (102874, 'LP73417-5', 'Beatmung_ES_VisionA_Schlagvolumen', 'Stroke volume'),
  (102408, 'LP73417-5', 'p-SV', 'Stroke volume'),
  (102021, 'LP19466-9', 'CO', 'Cardiac output'),
  (102040, 'LP19466-9', 'p-CO', 'Cardiac output'),
  (102051, 'LP19466-9', 'HZV', 'Cardiac output'),
  (102173, 'LP19466-9', 'PICCO_HZV', 'Cardiac output'),
  (102184, 'LP19466-9', 'VigilanceC_HZV', 'Cardiac output'),
  (103132, 'LP101940-7', 'Beatmung_MS_BiPAPV_Vt', 'Tidal volume'),
  (100101, 'LP101940-7', 'Beatmung_Einstellung_VT', 'Tidal volume'),
  (103084, 'LP101940-7', 'Beatmung_MS_VisionA_Tidalvolumen', 'Tidal volume'),
  (103421, 'LP101940-7', 'Beatmung_MS_Avea_Vte', 'Tidal volume'),
  (103431, 'LP101940-7', 'Beatmung_MS_Avea_MandVte', 'Tidal volume'),
  (104284, 'LP101940-7', 'Beatmung_ES_Servoi_Vt', 'Tidal volume'),
  (104726, 'LP101940-7', 'Beatmung_MS_Pallas_Vt', 'Tidal volume')



select * from loinc_copra.loinc_copra_till_now lctn;
