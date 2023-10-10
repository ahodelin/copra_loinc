--drop schema if exists loinc_copra cascade;
create schema if not exists loinc_copra;


create table if not exists loinc_copra.from_script(
  loinc_num varchar,
  copra_id bigint,
  loinc_entity varchar,
  copra_entity varchar,
  accuracy int
);

copy loinc_copra.from_script 
from '/home/ahodelin/git_repos/copra_loinc/csv/results/loinc_long_common_name-copra_name.csv'
csv delimiter E';' quote '"';

drop table loinc_copra.loinc_long_common_name_copra_name;

select loinc_num, copra_id, loinc_entity loinc_long_common_name, copra_entity copra_name, accuracy, false is_match
into loinc_copra.loinc_long_common_name_copra_name
from loinc_copra.from_script
order by accuracy desc;


truncate loinc_copra.from_script;


copy loinc_copra.from_script 
from '/home/ahodelin/git_repos/copra_loinc/csv/results/loinc_long_common_name-copra_description.csv'
csv delimiter E';' quote '"';


--drop table loinc_copra.loinc_long_common_name_copra_description;
select distinct loinc_num, copra_id, lgt."LONG_COMMON_NAME" loinc_long_common_name, ccv.description copra_description, accuracy, false to_match
into loinc_copra.loinc_long_common_name_copra_description
from loinc_copra.from_script fsc
join copra.co6_config_variables ccv 
  on ccv.id = fsc.copra_id 
join loinc.loinc_german_translation lgt 
  on lgt."LOINC_NUM" = fsc.loinc_num 
order by copra_description;

alter table loinc_copra.loinc_long_common_name_copra_description
add column id serial not null;

truncate loinc_copra.from_script;

copy loinc_copra.from_script 
from '/home/ahodelin/git_repos/copra_loinc/csv/results/loinc_shortname-copra_name.csv'
csv delimiter E';' quote '"';

select 
  distinct lgt.loinc_num, 
  copra_id, 
  shortname loinc_shortname, 
  ccv.name copra_name, 
  accuracy, 
  false is_match
into loinc_copra.loinc_shortname_copra_name
from loinc_copra.from_script fsc
join copra.co6_config_variables ccv 
  on ccv.id = fsc.copra_id 
join loinc.loinc lgt 
  on lgt.loinc_num = fsc.loinc_num 
order by copra_name;

alter table loinc_copra.loinc_shortname_copra_name
add column id serial not null;


-- loinc_shortname copra_description

copy loinc_copra.from_script 
from '/home/ahodelin/git_repos/copra_loinc/csv/results/loinc_shortname-copra_description.csv'
csv delimiter E';' quote '"';

select 
  distinct lgt.loinc_num, 
  copra_id, 
  shortname loinc_shortname, 
  ccv.description copra_description, 
  accuracy, 
  false is_match
into loinc_copra.loinc_shortname_copra_description
from loinc_copra.from_script fsc
join copra.co6_config_variables ccv 
  on ccv.id = fsc.copra_id 
join loinc.loinc lgt 
  on lgt.loinc_num = fsc.loinc_num 
order by copra_description;

alter table loinc_copra.loinc_shortname_copra_description
add column id serial not null;