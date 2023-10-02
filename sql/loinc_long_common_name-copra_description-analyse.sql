
select * from loinc_copra.loinc_long_common_name_copra_description;


update loinc_copra.loinc_long_common_name_copra_description
set is_match = true
where id = 1
and not is_match
;

update loinc_copra.loinc_long_common_name_copra_description
set is_match = true
where id between 76 and 80
and not is_match
;

update loinc_copra.loinc_long_common_name_copra_description
set is_match = true
where id between 105 and 109
and not is_match
;

update loinc_copra.loinc_long_common_name_copra_description
set is_match = true
where id = 144
and not is_match
;

update loinc_copra.loinc_long_common_name_copra_description
set is_match = true
where id = 154
or id = 155
and not is_match
;

update loinc_copra.loinc_long_common_name_copra_description
set is_match = true
where id = 161
and not is_match
;

update loinc_copra.loinc_long_common_name_copra_description
set is_match = true
where id = 175
and not is_match
;

update loinc_copra.loinc_long_common_name_copra_description
set is_match = true
where id = 352
and not is_match
;

update loinc_copra.loinc_long_common_name_copra_description
set is_match = true
where id = 353
and not is_match
;

update loinc_copra.loinc_long_common_name_copra_description
set is_match = true
where (
  id = 420
  or id = 421
  or id = 423
  or id = 424
)
and not is_match
;

update loinc_copra.loinc_long_common_name_copra_description
set is_match = true
where id = 1218
and not is_match
;

update loinc_copra.loinc_long_common_name_copra_description
set is_match = true
where id = 1219
and not is_match
;

update loinc_copra.loinc_long_common_name_copra_description
set is_match = true
where id = 1224
and not is_match
;

update loinc_copra.loinc_long_common_name_copra_description
set is_match = true
where id = 1233
and not is_match
;

update loinc_copra.loinc_long_common_name_copra_description
set is_match = true
where id = 1234
and not is_match
;

update loinc_copra.loinc_long_common_name_copra_description
set is_match = true
where id = 1238
and not is_match
;

update loinc_copra.loinc_long_common_name_copra_description
set is_match = true
where id = 1245
and not is_match
;

update loinc_copra.loinc_long_common_name_copra_description
set is_match = true
where id = 1375
and not is_match
;

update loinc_copra.loinc_long_common_name_copra_description
set is_match = true
where id = 1412
and not is_match
;

update loinc_copra.loinc_long_common_name_copra_description
set is_match = true
where id = 1421
and not is_match
;


select id, loinc_long_common_name, copra_description, accuracy, is_match 
from loinc_copra.loinc_long_common_name_copra_description 
where not is_match 
and id > 1421
order by id

