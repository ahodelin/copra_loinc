drop table loinc_copra.copra_description_words ;
select 
  distinct id, 
  regexp_split_to_table(description, '\s|\W') copra_description_words, 
  description, 
  false relevant 
  into loinc_copra.copra_description_words 
from copra.co6_config_variables ccv  
where description notnull
order by copra_description_words;


select * from loinc_copra.copra_description_words where copra_description_words = '';
delete from loinc_copra.copra_description_words where copra_description_words = '';

select * from loinc_copra.copra_description_words where length(copra_description_words) = 1;
delete from loinc_copra.copra_description_words where length(copra_description_words) = 1;

select * from loinc_copra.copra_description_words where copra_description_words ~ '^\d+$';
delete from loinc_copra.copra_description_words where copra_description_words ~ '^\d+\w+$';

drop table loinc_copra.copra_description_only_words;
select
  distinct 
  copra_description_words,  
  relevant
into loinc_copra.copra_description_only_words
from loinc_copra.copra_description_words
--where not relevant 
order by copra_description_words;


alter table loinc_copra.copra_description_only_words
add column id serial not null; 



select * from loinc_copra.copra_description_only_words;

select * 
from loinc_copra.copra_description_only_words
where not relevant
--and id > 56
order by id
;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 13 and 13;


select * 
from loinc_copra.copra_description_only_words
where not relevant
and id > 13
order by id
;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 16 and 18;


select * 
from loinc_copra.copra_description_only_words
where not relevant
and id > 18
order by id
;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 27 and 28;


select * 
from loinc_copra.copra_description_only_words
where not relevant
and id > 28
order by id
;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 30 and 30;


select * 
from loinc_copra.copra_description_only_words
where not relevant
and id > 30
order by id
;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 32 and 33;


select * 
from loinc_copra.copra_description_only_words
where not relevant
and id > 33
order by id
;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 46 and 46;


select * 
from loinc_copra.copra_description_only_words
where not relevant
and id > 46
order by id
;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 54 and 54;


select * 
from loinc_copra.copra_description_only_words
where not relevant
and id > 54
order by id
;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 60 and 60;

select * 
from loinc_copra.copra_description_only_words
where not relevant
and id > 60
order by id
;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 64 and 64;

select * 
from loinc_copra.copra_description_only_words
where not relevant
and id > 64
order by id
;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 67 and 75;


select * 
from loinc_copra.copra_description_only_words
where not relevant
and id > 75
order by id
;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 93 and 93;


select * 
from loinc_copra.copra_description_only_words
where not relevant
and id > 93
order by id
;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 106 and 106;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 110 and 116;


update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 129 and 134;


update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 139 and 141;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 144 and 146;


update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 149 and 152;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 161 and 162;


update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 167 and 168;


update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 170 and 197;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 199 and 200;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 218 and 223;


update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 227 and 232;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 244 and 245;


update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 249 and 250;


update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 254 and 255;


update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 265 and 266;


update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 268 and 271;


update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 277 and 277;


update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 282 and 282;


update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 286 and 287;


update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 289 and 289;


update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 292 and 292;


update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 298 and 298;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 302 and 305;


update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 314 and 315;

select * 
from loinc_copra.copra_description_only_words
where not relevant
and id > 315
order by id
;