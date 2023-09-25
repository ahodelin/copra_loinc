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