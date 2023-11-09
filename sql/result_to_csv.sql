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

--insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l.loinc_num, ccv.id, l.long_common_name, ccv.name 
from loinc.loinc l, copra.co6_config_variables ccv 
where l.loinc_num in ('75923-3')
and ccv.id in (104743)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_till_now lctn);

--insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l.loinc_num, ccv.id, l.long_common_name, ccv.name 
from loinc.loinc l, copra.co6_config_variables ccv 
where l.loinc_num in ('75925-8')
and ccv.id in (104745)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_till_now lctn);

insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l.loinc_num, ccv.id, l.long_common_name, ccv.name 
from loinc.loinc l, copra.co6_config_variables ccv 
where l.loinc_num in ('76297-1')
and ccv.id in (104760)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_till_now lctn);

insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l.loinc_num, ccv.id, l.long_common_name, ccv.name 
from loinc.loinc l, copra.co6_config_variables ccv 
where l.loinc_num in ('60821-6')
and ccv.id in (107812)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_till_now lctn);

--insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l.loinc_num, ccv.id, l.long_common_name, ccv.name 
from loinc.loinc l, copra.co6_config_variables ccv 
where l.loinc_num in ('64099-5')
and ccv.id in (107873)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_till_now lctn);


insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l.loinc_num, ccv.id, l.long_common_name, ccv.name 
from loinc.loinc l, copra.co6_config_variables ccv 
where l.loinc_num in ('60948-7')
and ccv.id in (107878)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_till_now lctn);

insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l.loinc_num, ccv.id, l.long_common_name, ccv.name 
from loinc.loinc l, copra.co6_config_variables ccv 
where l.loinc_num in ('19994-3')
and ccv.id in (107879)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_till_now lctn);

insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l.loinc_num, ccv.id, l.long_common_name, ccv.name 
from loinc.loinc l, copra.co6_config_variables ccv 
where l.loinc_num in ('76004-1')
and ccv.id in (107880)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_till_now lctn);

insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l.loinc_num, ccv.id, l.long_common_name, ccv.name 
from loinc.loinc l, copra.co6_config_variables ccv 
where l.loinc_num in ('75948-0')
and ccv.id in (107888)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_till_now lctn);

insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l.loinc_num, ccv.id, l.long_common_name, ccv.name 
from loinc.loinc l, copra.co6_config_variables ccv 
where l.loinc_num in ('64099-5')
and ccv.id in (108032)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_till_now lctn);

insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l.loinc_num, ccv.id, l.long_common_name, ccv.name 
from loinc.loinc l, copra.co6_config_variables ccv 
where l.loinc_num in ('60948-7')
and ccv.id in (108033)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_till_now lctn);

--insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l.loinc_num, ccv.id, l.long_common_name, ccv.name 
from loinc.loinc l, copra.co6_config_variables ccv 
where l.loinc_num in ('76004-1')
and ccv.id in (108038)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_till_now lctn);

--insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l.loinc_num, ccv.id, l.long_common_name, ccv.name 
from loinc.loinc l, copra.co6_config_variables ccv 
where l.loinc_num in ('8518-3', '8534-0', '8553-0')
and ccv.id in (108503)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_till_now lctn);


--insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l.loinc_num, ccv.id, l.long_common_name, ccv.name 
from loinc.loinc l, copra.co6_config_variables ccv 
where l.loinc_num in ('8519-1', '8535-7', '8554-8')
and ccv.id in (108504)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_till_now lctn);

insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l.loinc_num, ccv.id, l.long_common_name, ccv.name 
from loinc.loinc l, copra.co6_config_variables ccv 
where l.loinc_num in ('8514-2', '8530-8', '8546-4')
and ccv.id in (108505)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_till_now lctn);

insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l.loinc_num, ccv.id, l.long_common_name, ccv.name 
from loinc.loinc l, copra.co6_config_variables ccv 
where l.loinc_num in ('8515-9', '8531-6', '8547-2')
and ccv.id in (108506)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_till_now lctn);

insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l.loinc_num, ccv.id, l.long_common_name, ccv.name 
from loinc.loinc l, copra.co6_config_variables ccv 
where l.loinc_num in ('33437-5')
and ccv.id in (108508)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_till_now lctn);

insert into loinc_copra.loinc_copra_till_now(copra_id, loinc_num, name, "LONG_COMMON_NAME")
select copra_id, loinc_num, copra_name, loinc_long_common_name  from loinc_copra.loinc_copra_hand lch 
where copra_id not in (select copra_id from loinc_copra.loinc_copra_till_now lctn);

insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l.loinc_num, ccv.id, l.long_common_name, ccv.name 
from loinc.loinc l, copra.co6_config_variables ccv 
where l.loinc_num in ('60988-3')
and ccv.id in (110919)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_till_now lctn);

--insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l.loinc_num, ccv.id, l.long_common_name, ccv.name 
from loinc.loinc l, copra.co6_config_variables ccv 
where l.loinc_num in ('60996-6')
and ccv.id in (110921)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_till_now lctn);

insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l.loinc_num, ccv.id, l.long_common_name, ccv.name 
from loinc.loinc l, copra.co6_config_variables ccv 
where l.loinc_num in ('60956-0')
and ccv.id in (110923)
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
and id > 112021
and description notnull
and description !~* 'Liste|Bezeichnung|^Anlage |^kumulativ$|^Medikament$| Tidalvol|PEEP|CPAP|plateau|i:e|complianc|spontan'
and id not in (select copra_id from loinc_copra.loinc_copra_till_now lctn)
order by id 
;


-- loincl
select loinc_num, long_common_name, shortname from loinc.loinc l where long_common_name ~* 'temperature' and long_common_name not like '%Deprecated%' order by long_common_name ;
select loinc_num, long_common_name, shortname from loinc.loinc l where shortname  ~* 'SpO2' order by long_common_name ;

-- german loinc
select "LOINC_NUM", "LONG_COMMON_NAME" from loinc.loinc_german_translation where "LOINC_NUM" = '8302-2';

-- copra
select * from copra.co6_config_variables ccv where description ~* 'no2' and parent = 1 and co6_config_variabletypes_id in (3, 6, 5, 12) order by id;

select * from copra.co6_config_variables ccv where name = 'SvO2';



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
  (104726, 'LP101940-7', 'Beatmung_MS_Pallas_Vt', 'Tidal volume');
 
 
insert into loinc_copra.loinc_copra_till_now
values
  (108503, '8517-5', 'P_NBP_liBein', 'Dorsal pedal artery - left Diastolic blood pressure'),
  (108503, '8532-4', 'P_NBP_liBein', 'Dorsal pedal artery - left Mean blood pressure'),
  (108503, '8550-6', 'P_NBP_liBein', 'Dorsal pedal artery - left Systolic blood pressure'),
  (108504, '8516-7', 'P_NBP_reBein', 'Dorsal pedal artery - right Diastolic blood pressure'),
  (108504, '8533-2', 'P_NBP_reBein', 'Dorsal pedal artery - right Mean blood pressure'),
  (108504, '8551-4', 'P_NBP_reBein', 'Dorsal pedal artery - right Systolic blood pressure');




delete from loinc_copra.loinc_copra_till_now where copra_id = 5 and loinc_num = '21840-4';
delete from loinc_copra.loinc_copra_till_now where copra_id = 11 and loinc_num = '8289-1';
delete from loinc_copra.loinc_copra_till_now where copra_id = 14 and loinc_num = '18833-4';
delete from loinc_copra.loinc_copra_till_now where copra_id = 1274 and loinc_num = '19220-3';
delete from loinc_copra.loinc_copra_till_now where copra_id = 1276 and loinc_num in ('76215-3', '76213-8');
delete from loinc_copra.loinc_copra_till_now where copra_id = 100093 and loinc_num in ('76215-3', '76213-8');
delete from loinc_copra.loinc_copra_till_now where copra_id = 101473 and loinc_num = '59574-4';
delete from loinc_copra.loinc_copra_till_now where copra_id = 103045 and loinc_num = '12457-8';
delete from loinc_copra.loinc_copra_till_now where copra_id = 110904 and loinc_num = '29463-7';

-- 8462-4, Diastolischer Blutdruck
-- 8478-0, Mittlerer Blutdruck
-- 8480-6, Systolischer Blutdruck

update loinc_copra.loinc_copra_till_now 
set loinc_num = '49051-6',
"LONG_COMMON_NAME" = 'Gestational age in weeks'
where copra_id = 9;

update loinc_copra.loinc_copra_till_now 
set loinc_num = '49051-6',
"LONG_COMMON_NAME" = 'Gestational age in weeks'
where copra_id = 100037;

update loinc_copra.loinc_copra_till_now 
set loinc_num = 'LP35925-4',
"LONG_COMMON_NAME" = 'Body mass index'
where copra_id = 101473;

update loinc_copra.loinc_copra_till_now 
set loinc_num = '99712-2',
"LONG_COMMON_NAME" = 'Dialysate flow rate Renal replacement therapy circuit'
where copra_id = 103124;

--110929|8310-5   |P_Temperatur_Tympanal       |Körpertemperatur

update loinc_copra.loinc_copra_till_now 
set loinc_num = '8310-5',
"LONG_COMMON_NAME" = 'Ear temperature'
where copra_id = 110929;

-- 110928|8310-5   |P_Temperatur_Oesophagial    |Körpertemperatur

update loinc_copra.loinc_copra_till_now 
set loinc_num = '60836-4',
"LONG_COMMON_NAME" = 'Esophageal temperature'
where copra_id = 110928;

-- 110927|8310-5   |P_Temperatur_Naso           |Körpertemperatur

update loinc_copra.loinc_copra_till_now 
set loinc_num = '76010-8',
"LONG_COMMON_NAME" = 'Nasal temperature'
where copra_id = 110927;

-- 110933|8310-5   |P_Temperatur_Kern           |Körpertemperatur

update loinc_copra.loinc_copra_till_now 
set loinc_num = '8329-5',
"LONG_COMMON_NAME" = 'Body temperature - Core'
where copra_id = 110933;

-- 110936|8310-5   |P_Temperatur_Messung_OrtKern|Körpertemperatur

update loinc_copra.loinc_copra_till_now 
set loinc_num = '8329-5',
"LONG_COMMON_NAME" = 'Body temperature - Core'
where copra_id = 110936;

-- 110930|8310-5   |P_Temperatur_Rektal         |Körpertemperatur
update loinc_copra.loinc_copra_till_now 
set loinc_num = '8332-9',
"LONG_COMMON_NAME" = 'Rectal temperature'
where copra_id = 110930;

-- 110926|8310-5   |P_Temperatur_Haut           |Körpertemperatur
update loinc_copra.loinc_copra_till_now 
set loinc_num = '39106-0',
"LONG_COMMON_NAME" = 'Temperature of Skin'
where copra_id = 110926;

-- 110924|8310-5   |P_Temperatur_Venoes         |Körpertemperatur
update loinc_copra.loinc_copra_till_now 
set loinc_num = '75987-8',
"LONG_COMMON_NAME" = 'Venous blood temperature'
where copra_id = 110924;

select loinc_num, long_common_name, shortname from loinc.loinc l where long_common_name ~* 'clear' and long_common_name not like '%Deprecated%' order by long_common_name ;


select * from loinc_copra.loinc_copra_till_now lctn 
where loinc_num = 'LP19466-9'
order by copra_id;



select * from copra.co6_config_variables ccv 
where "name" ~* 'Schlagvolumen'
and parent in (1, 20)
and co6_config_variabletypes_id in (3, 6, 5, 12)
and id in (select copra_id from loinc_copra.loinc_copra_till_now lctn);

insert into loinc_copra.loinc_copra_till_now
values
  (102061, '75931-6', 'Beatmung_Messung_ExpirationszeitI:E', 'Inspiration/Expiration time Ratio'),
  (100290, '75931-6', 'Beatmung_Messung_InspirationszeitI:E', 'Inspiration/Expiration time Ratio'),
  (102069, '75931-6', 'Beatmung_Messung_I:EVerhaeltnisI', 'Inspiration/Expiration time Ratio'),
  (102070, '75931-6', 'Beatmung_Messung_I:EVerhaeltnisE', 'Inspiration/Expiration time Ratio'),
  (102529, '75931-6', 'Beatmung_Einstellung_I:EInsp', 'Inspiration/Expiration time Ratio'),
  (102530, '75931-6', 'Beatmung_Einstellung_I:EExsp', 'Inspiration/Expiration time Ratio');

insert into loinc_copra.loinc_copra_till_now
values
  (103716, '60834-9', 'TempBT', 'Blood temperature');
 
insert into loinc_copra.loinc_copra_till_now
values
  (7, '8302-2', 'Patient_Groesse', 'Körpergröße');
 
 insert into loinc_copra.loinc_copra_till_now
values
  (100098, '76009-0', 'Beatmung_Messung_MV', 'Inspired minute Volume during Mechanical ventilation');
 
insert into loinc_copra.loinc_copra_till_now
values
  (100300, '76531-3', 'Beatmung_Messung_Pmax', 'Pressure.max Respiratory system airway --on ventilator');
 
insert into loinc_copra.loinc_copra_till_now
values
  (102036, '76297-1', 'p-SVI', 'Left ventricular Cardiac index'),
  (102179, '76297-1', 'Vigileo_SVI', 'Left ventricular Cardiac index'),
  (102187, '76297-1', 'VigilanceC_SVI', 'Left ventricular Cardiac index');
 

update loinc_copra.loinc_copra_till_now 
set loinc_num = '20562-5',
"LONG_COMMON_NAME" = 'Left ventricular Stroke volume'
where copra_id in (102030, 102186, 102408);  

update loinc_copra.loinc_copra_till_now 
set loinc_num = '8741-1',
"LONG_COMMON_NAME" = 'Left ventricular Cardiac output'
where copra_id in (102051, 102173, 102184); 

update loinc_copra.loinc_copra_till_now 
set loinc_num = '20562-5',
"LONG_COMMON_NAME" = 'Left ventricular Stroke volume'
where copra_id in (102874, 104758); 

-- --'76297-1', 'p-SVI', 'Left ventricular Cardiac index'


select * from loinc_copra.loinc_copra_till_now lctn 
where copra_id > 102874
order by copra_id;


select * from loinc_copra.loinc_copra_till_now lctn 
where name ~ 'SV'; 
  
