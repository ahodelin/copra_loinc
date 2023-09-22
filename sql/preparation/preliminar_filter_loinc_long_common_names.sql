drop table loinc_copra.loinc_lcn_words ;
select 
  distinct "LOINC_NUM", 
  regexp_split_to_table("LONG_COMMON_NAME", '\s|\W') loinc_lcn_words, 
  "LONG_COMMON_NAME", 
  false relevant 
  into loinc_copra.loinc_lcn_words 
from loinc.loinc_german_translation lgt 
order by loinc_lcn_words;


select * from loinc_copra.loinc_lcn_words where loinc_lcn_words = '';
delete from loinc_copra.loinc_lcn_words where loinc_lcn_words = '';

select * from loinc_copra.loinc_lcn_words where length(loinc_lcn_words) = 1;
delete from loinc_copra.loinc_lcn_words where length(loinc_lcn_words) = 1;

select * from loinc_copra.loinc_lcn_words where loinc_lcn_words ~ '^\d+$';
delete from loinc_copra.loinc_lcn_words where loinc_lcn_words ~ '^\d+$';

update loinc_copra.loinc_lcn_words
set relevant = true where 
loinc_lcn_words ~ '^\d+\w+$'


drop table if exists loinc_copra.loinc_lcn_only_words;
select
  distinct 
  loinc_lcn_words,  
  relevant
into loinc_copra.loinc_lcn_only_words
from loinc_copra.loinc_lcn_words
--where not relevant 
order by loinc_lcn_words;


alter table loinc_copra.loinc_lcn_only_words
add column id serial not null; 

select * from loinc_copra.loinc_lcn_only_words;

select * 
from loinc_copra.loinc_lcn_only_words 
where not relevant
and id > 56;

update loinc_copra.loinc_lcn_only_words 
set relevant = true 
where not relevant 
and id between 57 and 129;


select * 
from loinc_copra.loinc_lcn_only_words 
where not relevant
and id > 131;


update loinc_copra.loinc_lcn_only_words 
set relevant = true 
where not relevant 
and id between 132 and 142;

select * 
from loinc_copra.loinc_lcn_only_words 
where not relevant
and id > 146;


update loinc_copra.loinc_lcn_only_words 
set relevant = true 
where not relevant 
and id between 147 and 160;


select * 
from loinc_copra.loinc_lcn_only_words 
where not relevant
and id > 162;


update loinc_copra.loinc_lcn_only_words 
set relevant = true 
where not relevant 
and id between 163 and 173;


select * 
from loinc_copra.loinc_lcn_only_words 
where not relevant
and id > 174;

update loinc_copra.loinc_lcn_only_words 
set relevant = true 
where not relevant 
and id between 175 and 177;


select * 
from loinc_copra.loinc_lcn_only_words 
where not relevant
and id > 178;

update loinc_copra.loinc_lcn_only_words 
set relevant = true 
where not relevant 
and id between 179 and 220;

select * 
from loinc_copra.loinc_lcn_only_words 
where not relevant
and id > 221;

update loinc_copra.loinc_lcn_only_words 
set relevant = true 
where not relevant 
and id between 222 and 230;

select * 
from loinc_copra.loinc_lcn_only_words 
where not relevant
and id > 235;

update loinc_copra.loinc_lcn_only_words 
set relevant = true 
where not relevant 
and id between 236 and 241;


select * 
from loinc_copra.loinc_lcn_only_words 
where not relevant
and id > 242;

update loinc_copra.loinc_lcn_only_words 
set relevant = true 
where not relevant 
and id between 243 and 243;


select * 
from loinc_copra.loinc_lcn_only_words 
where not relevant
and id > 244;

update loinc_copra.loinc_lcn_only_words 
set relevant = true 
where not relevant 
and id between 245 and 248;

select * 
from loinc_copra.loinc_lcn_only_words 
where not relevant
and id > 249;

update loinc_copra.loinc_lcn_only_words 
set relevant = true 
where not relevant 
and id between 250 and 364;


select * 
from loinc_copra.loinc_lcn_only_words 
where not relevant
and id > 368;

update loinc_copra.loinc_lcn_only_words 
set relevant = true 
where not relevant 
and id between 369 and 373;

select * 
from loinc_copra.loinc_lcn_only_words 
where not relevant
and id > 374;

update loinc_copra.loinc_lcn_only_words 
set relevant = true 
where not relevant 
and id between 369 and 463;

select * 
from loinc_copra.loinc_lcn_only_words 
where not relevant
and id > 464;

update loinc_copra.loinc_lcn_only_words 
set relevant = true 
where not relevant 
and id between 465 and 483;

select * 
from loinc_copra.loinc_lcn_only_words 
where not relevant
and id > 484;

update loinc_copra.loinc_lcn_only_words 
set relevant = true 
where not relevant 
and id between 485 and 487;


select * 
from loinc_copra.loinc_lcn_only_words 
where not relevant
and id > 488;

update loinc_copra.loinc_lcn_only_words 
set relevant = true 
where not relevant 
and id between 489 and 625;

select * 
from loinc_copra.loinc_lcn_only_words 
where not relevant
and id > 626;

update loinc_copra.loinc_lcn_only_words 
set relevant = true 
where not relevant 
and id between 626 and 1012;

select * 
from loinc_copra.loinc_lcn_only_words 
where not relevant
and id > 1013;

update loinc_copra.loinc_lcn_only_words 
set relevant = true 
where not relevant 
and id between 1014 and 1016;

select * 
from loinc_copra.loinc_lcn_only_words 
where not relevant
and id > 1017;

update loinc_copra.loinc_lcn_only_words 
set relevant = true 
where not relevant 
and id between 1018 and 1018;

select * 
from loinc_copra.loinc_lcn_only_words 
where not relevant
and id > 1019;

update loinc_copra.loinc_lcn_only_words 
set relevant = true 
where not relevant 
and id between 1020 and 1054;


select * 
from loinc_copra.loinc_lcn_only_words 
where not relevant
and id > 1055;

update loinc_copra.loinc_lcn_only_words 
set relevant = true 
where not relevant 
and id between 1056 and 1096;


select * 
from loinc_copra.loinc_lcn_only_words 
where not relevant
and id > 1098;

update loinc_copra.loinc_lcn_only_words 
set relevant = true 
where not relevant 
and id between 1099 and 1161;

select * 
from loinc_copra.loinc_lcn_only_words 
where not relevant
and id > 1166;

update loinc_copra.loinc_lcn_only_words 
set relevant = true 
where not relevant 
and id between 1167 and 1338;

select * 
from loinc_copra.loinc_lcn_only_words 
where not relevant
and id > 1339;

update loinc_copra.loinc_lcn_only_words 
set relevant = true 
where not relevant 
and id between 1340 and 1423;


select * 
from loinc_copra.loinc_lcn_only_words 
where not relevant
and id > 1424;

update loinc_copra.loinc_lcn_only_words 
set relevant = true 
where not relevant 
and id between 1425 and 1471;


select * 
from loinc_copra.loinc_lcn_only_words 
where not relevant
and id > 1472;

update loinc_copra.loinc_lcn_only_words 
set relevant = true 
where not relevant 
and id between 1473 and 1567;


select * 
from loinc_copra.loinc_lcn_only_words 
where not relevant
and id > 1569;

update loinc_copra.loinc_lcn_only_words 
set relevant = true 
where not relevant 
and id between 1570 and 1801;


select * 
from loinc_copra.loinc_lcn_only_words 
where not relevant
and id > 1802;

update loinc_copra.loinc_lcn_only_words 
set relevant = true 
where not relevant 
and id between 1803 and 1806;


select * 
from loinc_copra.loinc_lcn_only_words 
where not relevant
and id > 1810;

update loinc_copra.loinc_lcn_only_words 
set relevant = true 
where not relevant 
and id between 1811 and 1914;

select * 
from loinc_copra.loinc_lcn_only_words 
where not relevant
and id > 1915;

update loinc_copra.loinc_lcn_only_words 
set relevant = true 
where not relevant 
and id between 1916 and 1937;


select * 
from loinc_copra.loinc_lcn_only_words 
where not relevant
and id > 1938;

update loinc_copra.loinc_lcn_only_words 
set relevant = true 
where not relevant 
and id between 1939 and 2019;



select * 
from loinc_copra.loinc_lcn_only_words 
where not relevant
and id > 2020;

update loinc_copra.loinc_lcn_only_words 
set relevant = true 
where not relevant 
and id between 2021 and 2114 ;


select * 
from loinc_copra.loinc_lcn_only_words 
where not relevant
and id > 2120;

update loinc_copra.loinc_lcn_only_words 
set relevant = true 
where not relevant 
and id between 2121 and  2149;



select * 
from loinc_copra.loinc_lcn_only_words 
where not relevant
and id > 2151;

update loinc_copra.loinc_lcn_only_words 
set relevant = true 
where not relevant 
and id between 2121 and 2281 ;


select * 
from loinc_copra.loinc_lcn_only_words 
where not relevant
and id > 2283;

update loinc_copra.loinc_lcn_only_words 
set relevant = true 
where not relevant 
and id between 2284 and  2321;


select * 
from loinc_copra.loinc_lcn_only_words 
where not relevant
and id > 2322;

update loinc_copra.loinc_lcn_only_words 
set relevant = true 
where not relevant 
and id between 2323 and  2529;


select * 
from loinc_copra.loinc_lcn_only_words 
where not relevant
and id > 2530;

update loinc_copra.loinc_lcn_only_words 
set relevant = true 
where not relevant 
and id between 2531 and  2564;


select * 
from loinc_copra.loinc_lcn_only_words 
where not relevant
and id > 2565;

update loinc_copra.loinc_lcn_only_words 
set relevant = true 
where not relevant 
and id between 2566 and  2666;



select * 
from loinc_copra.loinc_lcn_only_words 
where not relevant
and id > 2667;

update loinc_copra.loinc_lcn_only_words 
set relevant = true 
where not relevant 
and id between 2566 and  2726;


select * 
from loinc_copra.loinc_lcn_only_words 
where not relevant
and id > 2726;

update loinc_copra.loinc_lcn_only_words 
set relevant = true 
where not relevant 
and id between 2729 and  2729;


select * 
from loinc_copra.loinc_lcn_only_words 
where not relevant
and id > 2731;

update loinc_copra.loinc_lcn_only_words 
set relevant = true 
where not relevant 
and id between 2732 and  2823;


select * 
from loinc_copra.loinc_lcn_only_words 
where not relevant
and id > 2823;

update loinc_copra.loinc_lcn_only_words 
set relevant = true 
where not relevant 
and id between 2826 and 2833 ;



select * 
from loinc_copra.loinc_lcn_only_words 
where not relevant
and id > 2833;

update loinc_copra.loinc_lcn_only_words 
set relevant = true 
where not relevant 
and id between 2835 and 2835 ;


select * 
from loinc_copra.loinc_lcn_only_words 
where not relevant
and id > 2836;

update loinc_copra.loinc_lcn_only_words 
set relevant = true 
where not relevant 
and id between 2837 and 2839 ;



select * 
from loinc_copra.loinc_lcn_only_words 
where not relevant
and id > 2840;

update loinc_copra.loinc_lcn_only_words 
set relevant = true 
where not relevant 
and id between 2837 and 2886 ;



select * 
from loinc_copra.loinc_lcn_only_words 
where not relevant
and id > 2887;

update loinc_copra.loinc_lcn_only_words 
set relevant = true 
where not relevant 
and id between 2888 and 2994 ;


select * 
from loinc_copra.loinc_lcn_only_words 
where not relevant
and id > 2996;

update loinc_copra.loinc_lcn_only_words 
set relevant = true 
where not relevant 
and id between 2997 and 2997 ;


select * 
from loinc_copra.loinc_lcn_only_words 
where not relevant
and id > 2998;

update loinc_copra.loinc_lcn_only_words 
set relevant = true 
where not relevant 
and id between 2999 and 3015;



select * 
from loinc_copra.loinc_lcn_only_words 
where not relevant
and id > 3016;

update loinc_copra.loinc_lcn_only_words 
set relevant = true 
where not relevant 
and id between 3017 and 3632;


select * 
from loinc_copra.loinc_lcn_only_words 
where not relevant
and id > 3633;

update loinc_copra.loinc_lcn_only_words 
set relevant = true 
where not relevant 
and id between 3634 and 3761;


select * 
from loinc_copra.loinc_lcn_only_words 
where not relevant
and id > 3762;

update loinc_copra.loinc_lcn_only_words 
set relevant = true 
where not relevant 
and id between 3763 and 4000;


select * 
from loinc_copra.loinc_lcn_only_words 
where not relevant
and id > 4001;

update loinc_copra.loinc_lcn_only_words 
set relevant = true 
where not relevant 
and id between 4002 and 4005;


select * 
from loinc_copra.loinc_lcn_only_words 
where not relevant
and id > 4007;

update loinc_copra.loinc_lcn_only_words 
set relevant = true 
where not relevant 
and id between 4008 and 4013;


select * 
from loinc_copra.loinc_lcn_only_words 
where not relevant
and id > 4016;

update loinc_copra.loinc_lcn_only_words 
set relevant = true 
where not relevant 
and id between 4017 and 4027;


select * 
from loinc_copra.loinc_lcn_only_words 
where not relevant
and id > 4028;

update loinc_copra.loinc_lcn_only_words 
set relevant = true 
where not relevant 
and id between 4029 and 4031 ;


select * 
from loinc_copra.loinc_lcn_only_words 
where not relevant
and id > 4035;

update loinc_copra.loinc_lcn_only_words 
set relevant = true 
where not relevant 
and id between 4036 and 4145 ;


select * 
from loinc_copra.loinc_lcn_only_words 
where not relevant
and id > 4147;

update loinc_copra.loinc_lcn_only_words 
set relevant = true 
where not relevant 
and id between 4148 and 4149 ;


select * 
from loinc_copra.loinc_lcn_only_words 
where not relevant
and id > 4152;

update loinc_copra.loinc_lcn_only_words 
set relevant = true 
where not relevant 
and id between 4153 and 4166 ;


select * 
from loinc_copra.loinc_lcn_only_words 
where not relevant
and id > 4167;

update loinc_copra.loinc_lcn_only_words 
set relevant = true 
where not relevant 
and id between 4168 and 4170 ;


select * 
from loinc_copra.loinc_lcn_only_words 
where not relevant
and id > 4171;

update loinc_copra.loinc_lcn_only_words 
set relevant = true 
where not relevant 
and id between 4172 and 4179 ;


select * 
from loinc_copra.loinc_lcn_only_words 
where not relevant
and id > 4180;

update loinc_copra.loinc_lcn_only_words 
set relevant = true 
where not relevant 
and id between 4181 and 4197 ;


select * 
from loinc_copra.loinc_lcn_only_words 
where not relevant
and id > 4198;

update loinc_copra.loinc_lcn_only_words 
set relevant = true 
where not relevant 
and id between 4181 and 4259 ;



select * 
from loinc_copra.loinc_lcn_only_words 
where not relevant
and id > 4261;

update loinc_copra.loinc_lcn_only_words 
set relevant = true 
where not relevant 
and id between 4262 and 4264;


select * 
from loinc_copra.loinc_lcn_only_words 
where not relevant
and id > 4266;

update loinc_copra.loinc_lcn_only_words 
set relevant = true 
where not relevant 
and id between 4267 and 4286;



copy
(
  select loinc_lcn_words from loinc_copra.loinc_lcn_only_words
  where not relevant
)
to '/home/ahodelin/git_repos/copra_loinc/csv/loinc_lcn_only_to_delete_words.csv' delimiter E';' csv;



select "LOINC_NUM", "LONG_COMMON_NAME" into loinc_copra.loinc_lcn_tmp from loinc.loinc_german_translation lgt ;

select "LOINC_NUM", regexp_replace("LONG_COMMON_NAME", '(\s+|\W+)\w+(\s+|\W+)', '', 'g') chang, "LONG_COMMON_NAME" 
from loinc_copra.loinc_lcn_tmp