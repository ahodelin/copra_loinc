
select * from loinc_copra.loinc_shortname_copra_name;


update loinc_copra.loinc_shortname_copra_name
set is_match = true
where id = 556
and not is_match
;

update loinc_copra.loinc_shortname_copra_name
set is_match = true
where id = 559
and not is_match
;

update loinc_copra.loinc_shortname_copra_name
set is_match = true
where id = 1133
and not is_match
;

update loinc_copra.loinc_shortname_copra_name
set is_match = true
where id = 1136
and not is_match
;

update loinc_copra.loinc_shortname_copra_name
set is_match = true
where id = 1138
and not is_match
;

update loinc_copra.loinc_shortname_copra_name
set is_match = true
where id = 1466
and not is_match
;

update loinc_copra.loinc_shortname_copra_name
set is_match = true
where id between 1470 and 1475
and not is_match
;

update loinc_copra.loinc_shortname_copra_name
set is_match = true
where id = 1483
and not is_match
;

update loinc_copra.loinc_shortname_copra_name
set is_match = true
where id = 1485
and not is_match
;

update loinc_copra.loinc_shortname_copra_name
set is_match = true
where id between 1504 and 1516
and not is_match
;

select id, loinc_shortname, copra_name, accuracy, is_match 
from loinc_copra.loinc_shortname_copra_name 
where not is_match 
and id > 1516
order by id;
/*
select * from loinc_copra.loinc_long_common_name_copra_description 
where is_match
and copra_id not in (select copra_id from loinc_copra.loinc_long_common_name_copra_name_analyse llcncna where is_match);

select * from loinc_copra.loinc_long_common_name_copra_name_analyse llcncna where is_match ;
*/