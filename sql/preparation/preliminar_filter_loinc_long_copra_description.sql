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

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1133 and 1136;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1138 and 1140;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1144 and 1151;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1155 and 1155;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1157 and 1157;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1159 and 1159;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1161 and 1161;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1167 and 1167;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1164 and 1166;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1164 and 1166;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1170 and 1174;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1180 and 1187;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1191 and 1198;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1201 and 1205;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1218 and 1218;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1220 and 1220;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1222 and 1225;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1238 and 1239;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1247 and 1252;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1265 and 1273;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1275 and 1284;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id = 1285;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1290 and 1291;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1299 and 1303;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1305 and 1317;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1321 and 1321;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1323 and 1332;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1333 and 1351;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1357 and 1357;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1359 and 1361;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1363 and 1368;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1377 and 1380;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1382 and 1382;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1384 and 1384;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1390 and 1391;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1395 and 1405;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1408 and 1408;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1411 and 1411;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1415 and 1416;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1419 and 1434;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1438 and 1440;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1454 and 1454;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1461 and 1468;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1470 and 1470;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1474 and 1475;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1479 and 1484;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1488 and 1491;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1494 and 1495;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1497 and 1497;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1499 and 1499;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1501 and 1502;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1509 and 1512;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1518 and 1534;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1537 and 1539;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1549 and 1549;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1552 and 1556;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1559 and 1566;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1568 and 1568;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1570 and 1575;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1582 and 1582;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1584 and 1587;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1589 and 1592;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1594 and 1595;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1597 and 1638;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1642 and 1644;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1646 and 1646;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1647 and 1654;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1663 and 1670;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1680 and 1693;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1696 and 1696;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1698 and 1713;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1716 and 1726;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1730 and 1730;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1738 and 1742;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1744 and 1744;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1746 and 1749;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1752 and 1757;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1759 and 1760;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1763 and 1764;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1767 and 1769;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1772 and 1772;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1777 and 1779;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1785 and 1786;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1793 and 1810;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1812 and 1815;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1817 and 1818;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1820 and 1820;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1824 and 1828;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1831 and 1834;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1837 and 1837;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1841 and 1844;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1846 and 1849;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1854 and 1855;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1858 and 1860;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1863 and 1866;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1873 and 1874;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1876 and 1879;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1883 and 1883;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1885 and 1886;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1890 and 1891;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1894 and 1905;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1907 and 1908;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1910 and 1911;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1913 and 1920;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1923 and 1932;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id = 1941;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1943 and 1946;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1948 and 1948;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1965 and 1968;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1970 and 1974;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 1980 and 1992;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 2002 and 2004;

update loinc_copra.copra_description_only_words
set relevant = true 
where not relevant 
and id between 2006 and 2006;

select * 
from loinc_copra.copra_description_only_words
where not relevant
and id > 2006
order by id
;

