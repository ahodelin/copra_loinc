
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

update loinc_copra.loinc_long_common_name_copra_description
set is_match = true
where id = 1444
and not is_match
;

update loinc_copra.loinc_long_common_name_copra_description
set is_match = true
where id = 1445
and not is_match
;

update loinc_copra.loinc_long_common_name_copra_description
set is_match = true
where id = 1451
and not is_match
;

update loinc_copra.loinc_long_common_name_copra_description
set is_match = true
where id = 1492
and not is_match
;

update loinc_copra.loinc_long_common_name_copra_description
set is_match = true
where id = 1494
and not is_match
;

update loinc_copra.loinc_long_common_name_copra_description
set is_match = true
where( 
  id = 1617
  or id = 1619
  or id = 1621
  or id = 1646
)
and not is_match
;

update loinc_copra.loinc_long_common_name_copra_description
set is_match = true
where id = 1661
and not is_match
;

update loinc_copra.loinc_long_common_name_copra_description
set is_match = true
where (
  id = 1665
  or id = 1666
)
and not is_match
;

update loinc_copra.loinc_long_common_name_copra_description
set is_match = true
where id = 1670
and not is_match
;

update loinc_copra.loinc_long_common_name_copra_description
set is_match = true
where id = 1936
and not is_match
;

update loinc_copra.loinc_long_common_name_copra_description
set is_match = true
where id = 2311
and not is_match
;

update loinc_copra.loinc_long_common_name_copra_description
set is_match = true
where id = 2386
and not is_match
;

update loinc_copra.loinc_long_common_name_copra_description
set is_match = true
where id = 2392
and not is_match
;


select id, loinc_long_common_name, copra_description, accuracy, is_match 
from loinc_copra.loinc_long_common_name_copra_description 
where not is_match 
and id > 2392
order by id

select * from loinc_copra.loinc_long_common_name_copra_description 
where is_match
and copra_id not in (select copra_id from loinc_copra.loinc_long_common_name_copra_name_analyse llcncna where is_match);

select * from loinc_copra.loinc_long_common_name_copra_name_analyse llcncna where is_match ;

