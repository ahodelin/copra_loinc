
select * from loinc_copra.loinc_shortname_copra_name;


update loinc_copra.loinc_shortname_copra_name
set is_match = true
where id = 556
and not is_match
;


select * from loinc_copra.loinc_shortname_copra_name lscn where is_match;

/*
select * from loinc_copra.loinc_long_common_name_copra_description 
where is_match
and copra_id not in (select copra_id from loinc_copra.loinc_long_common_name_copra_name_analyse llcncna where is_match);

select * from loinc_copra.loinc_long_common_name_copra_name_analyse llcncna where is_match ;
*/