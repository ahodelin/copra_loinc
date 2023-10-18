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

insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
select l.loinc_num, ccv.id, l.long_common_name, ccv.name 
from loinc.loinc l, copra.co6_config_variables ccv 
where l.loinc_num in ('60829-9')
and ccv.id in (101447, 103262, 103283, 103438, 104721, 107886, 108023)
and ccv.id not in (select copra_id from loinc_copra.loinc_copra_hand);

insert into loinc_copra.loinc_copra_hand (loinc_num, copra_id, loinc_long_common_name, copra_name)
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
and id > 103265
and description notnull
and description !~* 'Liste|Bezeichnung|^Anlage |^kumulativ$|^Medikament$| Tidalvol|PEEP|CPAP|plateau'
--and description like '%ndex%'
order by id 
--limit 20;

select loinc_num, long_common_name, shortname from loinc.loinc l where long_common_name like '%lateau%' order by long_common_name ;
select loinc_num, long_common_name, shortname from loinc.loinc l where loinc_num = '35410-0' ;

/*
60829-9  |Pressure.plateau Respiratory system airway                  
76259-1  |Pressure.plateau Respiratory system airway --on ventilator  
*/



select "LOINC_NUM", "LONG_COMMON_NAME" from loinc.loinc_german_translation where "LOINC_NUM" = '60985-9'; -- german
select loinc_num , long_common_name from loinc.loinc where loinc_num LIKE '%19466-9%'

-- LP73417-5 - Stroke volume -> 102030 - SV
-- LP19466-9 - Cardiac output -> 102021 - CO
-- LP19466-9 - Cardiac output -> 102040 - p-CO
-- LP19466-9 - Cardiac output -> 102051 - HZV
-- LP19466-9 - Cardiac output -> 102173 - PICCO_HZV
-- LP19466-9 - Cardiac output -> 102184 - VigilanceC_HZV
-- LP73417-5 - Stroke volume -> 102186 - VigilanceC_SV
-- LP73417-5 - Stroke volume -> 102874 - Beatmung_ES_VisionA_Schlagvolumen
-- LP73417-5 - Stroke volume -> 102408 - p-SV
-- LP101940-7 - Tidal volume -> 103132 - Beatmung_MS_BiPAPV_Vt
-- LP101940-7 - Tidal volume -> 100101 - Beatmung_Einstellung_VT
-- LP101940-7 - Tidal volume -> 103084 - Beatmung_MS_VisionA_Tidalvolumen
-- LP101940-7 - Tidal volume -> 103421 - Beatmung_MS_Avea_Vte
-- LP101940-7 - Tidal volume -> 103431 - Beatmung_MS_Avea_MandVte
-- LP101940-7 - Tidal volume -> 104284 - Beatmung_ES_Servoi_Vt
-- LP101940-7 - Tidal volume -> 104726 - Beatmung_MS_Pallas_Vt


select * from loinc_copra.loinc_copra_hand;

select * from copra.co6_config_variables ccv where description ~* 'plateau' and parent = 1 and co6_config_variabletypes_id in (3, 6, 5, 12) order by id;

/*
 
76246-8  |Intrinsic dynamic PEEP Respiratory system|Intrinsic dyn PEEP Respiratory
38199-6  |Intrinsic PEEP Respiratory system        |Intrinsic PEEP Respiratory    
20076-6  |Minimum PEEP setting Ventilator alarm    |Min PEEP setting Vent alarm                 
76248-4  |PEEP Respiratory system --on ventilator  |PEEP on vent Respiratory      
83388-9  |Total dynamic PEEP Respiratory system    |Total dynamic PEEP Respiratory
76247-6  |Total PEEP Respiratory system            |Total PEEP Respiratory        
*/

-- 83386-3  Extrinsic PEEP Respiratory system
-- 38199-6  Intrinsic PEEP Respiratory system
-- 20075-8  PEEP Respiratory system

