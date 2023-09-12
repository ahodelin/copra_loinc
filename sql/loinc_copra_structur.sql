drop schema if exists loinc_copra cascade;
create schema if not exists loinc_copra;

create table if not exists loinc_copra.from_script(
  loinc_num varchar,
  loinc_entity varchar,
  copra_id bigint,
  copra_entity varchar,
  accuracy int
);

copy loinc_copra.from_script 
from '/home/ahodelin/git_repos/copra_loinc/csv/results/loinc_long_common_name-copra_name_mod.csv'
csv delimiter E';';

select loinc_num, loinc_entity loinc_long_common_name, copra_id, copra_entity copra_name, accuracy
into loinc_copra.loinc_long_common_name_copra_name
from loinc_copra.from_script
order by accuracy desc;

select loinc_num, loinc_entity loinc_long_common_name, copra_id, copra_entity copra_name, accuracy
into loinc_copra.loinc_long_common_name_copra_name_tmp
from loinc_copra.from_script
order by accuracy desc;

truncate loinc_copra.from_script;

