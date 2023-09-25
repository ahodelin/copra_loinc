drop schema if exists loinc_copra cascade;
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



select loinc_num, copra_id, loinc_entity loinc_long_common_name, copra_entity copra_description, accuracy
into loinc_copra.loinc_long_common_name_copra_description
from loinc_copra.from_script
order by accuracy desc;

select loinc_num, loinc_entity loinc_long_common_name, copra_id, copra_entity copra_description, accuracy
into loinc_copra.loinc_long_common_name_copra_description_tmp
from loinc_copra.from_script
order by accuracy desc;

truncate loinc_copra.from_script;