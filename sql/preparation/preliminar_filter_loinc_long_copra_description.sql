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


update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 321 and 321;


update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 338 and 338;


update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 343 and 343;


update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 348 and 348;


update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 360 and 360;


update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 370 and 370;


update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id = 377;


update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 382 and 382;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 386 and 389;


update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 392 and 411;


update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 414 and 422;


update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 425 and 432;


update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 434 and 442;


update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 446 and 447;


update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id = 450;


update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 459 and 459;


update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 463 and 471;


update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 485 and 489;


update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 491 and 493;


update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 500 and 504;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id = 506;


update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id = 514;


update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 517 and 518;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 524 and 529;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 524 and 529;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 531 and 533;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 549 and 551;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 571 and 578;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 581 and 581;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 585 and 586;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 593 and 594;


update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 598 and 598;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 612 and 623;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 650 and 651;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 654 and 655;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 670 and 670;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 670 and 670;

select * 
from loinc_copra.copra_description_only_words
where not relevant
and id > 670
order by id
;