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
order by copra_id, loinc_num;


select id, name, description from copra.co6_config_variables ccv
where parent in (1, 20)
and co6_config_variabletypes_id in (3, 6, 5, 12)
and id > 1268
--and description like '%ndex%'
order by id ;


select loinc_num, long_common_name, shortname from loinc.loinc l where long_common_name like '%Pulse%'

select "LOINC_NUM", "LONG_COMMON_NAME" from loinc.loinc_german_translation where "LOINC_NUM" in ('8865-8', '44974-4')

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
