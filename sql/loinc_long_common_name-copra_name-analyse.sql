select * from loinc_copra.loinc_long_common_name_copra_name;

select 
  l."LOINC_NUM", 
  c.id,
  l."LONG_COMMON_NAME",
  c.name,
  m.accuracy,
  m.is_match
from loinc_copra.loinc_long_common_name_copra_name m
join loinc.loinc_german_translation l
  on l."LOINC_NUM" = m.loinc_num 
join copra.co6_config_variables c
  on c.id = m.copra_id 
order by c.name;

update loinc_copra.loinc_long_common_name_copra_name m
set loinc_long_common_name = l."LONG_COMMON_NAME"
from loinc.loinc_german_translation l
where l."LOINC_NUM" = m.loinc_num

update loinc_copra.loinc_long_common_name_copra_name m
set copra_name = c.name
from copra.co6_config_variables c
where c.id = m.copra_id;


select * into loinc_copra.loinc_long_common_name_copra_name_analyse from loinc_copra.loinc_long_common_name_copra_name order by copra_name ;

select * from loinc_copra.loinc_long_common_name_copra_name_analyse;

alter table loinc_copra.loinc_long_common_name_copra_name_analyse
add column id serial not null;


update loinc_copra.loinc_long_common_name_copra_name
set is_match = true
where accuracy = 100
and loinc_num = '35090-0'
and copra_id = 106649
and not is_match
;



update loinc_copra.loinc_long_common_name_copra_name
set is_match = true
where accuracy = 100
and loinc_num in ('39156-5', '59574-4')
and copra_id = 101473
and not is_match
;

update loinc_copra.loinc_long_common_name_copra_name
set is_match = true
where accuracy = 100
and loinc_num in ('12457-8')
and copra_id in (103124,103045 )
and not is_match
;


update loinc_copra.loinc_long_common_name_copra_name_analyse
set is_match = true 
where id = 2;

update loinc_copra.loinc_long_common_name_copra_name_analyse
set is_match = true 
where id = 656;

update loinc_copra.loinc_long_common_name_copra_name_analyse
set is_match = true 
where id = 657;

update loinc_copra.loinc_long_common_name_copra_name_analyse
set is_match = true 
where id = 669;


update loinc_copra.loinc_long_common_name_copra_name_analyse
set is_match = true 
where id = 671;


update loinc_copra.loinc_long_common_name_copra_name_analyse
set is_match = true 
where id = 674;


update loinc_copra.loinc_long_common_name_copra_name_analyse
set is_match = true 
where id = 675;


update loinc_copra.loinc_long_common_name_copra_name_analyse
set is_match = true 
where id = 736;


update loinc_copra.loinc_long_common_name_copra_name_analyse
set is_match = true 
where id = 1069;

update loinc_copra.loinc_long_common_name_copra_name_analyse
set is_match = true 
where id = 1102;


update loinc_copra.loinc_long_common_name_copra_name_analyse
set is_match = true 
where id = 1118;

update loinc_copra.loinc_long_common_name_copra_name_analyse
set is_match = true 
where id = 1121;


update loinc_copra.loinc_long_common_name_copra_name_analyse
set is_match = true 
where id = 1124;

update loinc_copra.loinc_long_common_name_copra_name_analyse
set is_match = true 
where id = 1125;

update loinc_copra.loinc_long_common_name_copra_name_analyse
set is_match = true 
where id = 1129;

update loinc_copra.loinc_long_common_name_copra_name_analyse
set is_match = true 
where id = 1131;

update loinc_copra.loinc_long_common_name_copra_name_analyse
set is_match = true 
where id = 1145;

update loinc_copra.loinc_long_common_name_copra_name_analyse
set is_match = true 
where id = 1191;

update loinc_copra.loinc_long_common_name_copra_name_analyse
set is_match = true 
where id = 1300;

update loinc_copra.loinc_long_common_name_copra_name_analyse
set is_match = true 
where id = 1302;

update loinc_copra.loinc_long_common_name_copra_name_analyse
set is_match = true 
where id = 2443;


update loinc_copra.loinc_long_common_name_copra_name_analyse
set is_match = true 
where id = 2449;

update loinc_copra.loinc_long_common_name_copra_name_analyse
set is_match = true 
where id = 2478;

update loinc_copra.loinc_long_common_name_copra_name_analyse
set is_match = true 
where id = 2528;

update loinc_copra.loinc_long_common_name_copra_name_analyse
set is_match = true 
where id = 2781;


update loinc_copra.loinc_long_common_name_copra_name_analyse
set is_match = true 
where id = 2819;


update loinc_copra.loinc_long_common_name_copra_name_analyse
set is_match = true 
where id = 2839;


update loinc_copra.loinc_long_common_name_copra_name_analyse
set is_match = true 
where id = 2857;

update loinc_copra.loinc_long_common_name_copra_name_analyse
set is_match = true 
where id = 3031;


update loinc_copra.loinc_long_common_name_copra_name_analyse
set is_match = true 
where id = 3059;


update loinc_copra.loinc_long_common_name_copra_name_analyse
set is_match = true 
where id = 3273;


update loinc_copra.loinc_long_common_name_copra_name_analyse
set is_match = true 
where id = 3289;


update loinc_copra.loinc_long_common_name_copra_name_analyse
set is_match = true 
where id = 3326;


update loinc_copra.loinc_long_common_name_copra_name_analyse
set is_match = true 
where id = 3350;


update loinc_copra.loinc_long_common_name_copra_name_analyse
set is_match = true 
where id = 3490;


update loinc_copra.loinc_long_common_name_copra_name_analyse
set is_match = true 
where id = 3729;

update loinc_copra.loinc_long_common_name_copra_name_analyse
set is_match = true 
where id = 3744;

update loinc_copra.loinc_long_common_name_copra_name_analyse
set is_match = true 
where id = 3745;

update loinc_copra.loinc_long_common_name_copra_name_analyse
set is_match = true 
where id between 3746 and 3747;

update loinc_copra.loinc_long_common_name_copra_name_analyse
set is_match = true 
where id = 3771;

update loinc_copra.loinc_long_common_name_copra_name_analyse
set is_match = true 
where id = 3773
or id = 3776;

update loinc_copra.loinc_long_common_name_copra_name_analyse
set is_match = true 
where id = 3944;

update loinc_copra.loinc_long_common_name_copra_name_analyse
set is_match = true 
where id = 3993;


update loinc_copra.loinc_long_common_name_copra_name_analyse
set is_match = true 
where id = 4084;

update loinc_copra.loinc_long_common_name_copra_name_analyse
set is_match = true 
where id in (4093, 4094, 4100, 4101, 4106, 4107, 4109, 4207);

update loinc_copra.loinc_long_common_name_copra_name_analyse
set is_match = true 
where id = 4210;

update loinc_copra.loinc_long_common_name_copra_name_analyse
set is_match = true 
where id = 4958;



select loinc_long_common_name, copra_name, accuracy, is_match, id 
from loinc_copra.loinc_long_common_name_copra_name_analyse
where not is_match
and id > 4958
order by id;

select * from loinc_copra.loinc_long_common_name_copra_name_analyse where is_match;

