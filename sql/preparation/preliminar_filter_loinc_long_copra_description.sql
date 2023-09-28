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

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 673 and 676;


update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 680 and 680;


update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 682 and 683;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 686 and 690;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 692 and 699;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 703 and 704;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 709 and 711;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 709 and 711;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 732 and 737;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 753 and 753;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 756 and 759;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 764 and 775;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 783 and 783;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 785 and 792;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 809 and 813;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 819 and 823;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 827 and 840;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 855 and 863;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 873 and 874;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 876 and 876;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 879 and 883;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 886 and 889;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 891 and 896;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 900 and 900;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 917 and 919;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 923 and 924;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 928 and 929;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 932 and 933;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 936 and 937;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 939 and 940;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 953 and 953;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 955 and 955;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 962 and 967;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 969 and 969;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 972 and 973;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 976 and 977;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 979 and 985;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 988 and 989;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 993 and 993;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 996 and 1015;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1017 and 1017;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1021 and 1022;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1026 and 1040;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1050 and 1050;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1053 and 1055;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1057 and 1057;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1062 and 1064;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1067 and 1069;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1073 and 1073;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1075 and 1094;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1097 and 1097;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1104 and 1104;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1107 and 1123;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1127 and 1128;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1131 and 1131;


select * 
from loinc_copra.copra_description_only_words
where not relevant
and id > 1127
order by id
;