-- Analyse by loinc_long_common_name & copra_name 

-- Diagnostik
select * from loinc_copra.loinc_long_common_name_copra_name_tmp where copra_name = 'Diagnostik';
delete from loinc_copra.loinc_long_common_name_copra_name_tmp where copra_name = 'Diagnostik';

-- Fall
select * from loinc_copra.loinc_long_common_name_copra_name_tmp where copra_name = 'Fall';
delete from loinc_copra.loinc_long_common_name_copra_name_tmp where copra_name = 'Fall';

-- Diagnose
select * from loinc_copra.loinc_long_common_name_copra_name_tmp where copra_name = 'Diagnose';
delete from loinc_copra.loinc_long_common_name_copra_name_tmp 
where copra_name = 'Diagnose' 
and loinc_num not in ('29308-4', '29548-5');

-- SV
select * from loinc_copra.loinc_long_common_name_copra_name_tmp where copra_name = 'SV';
delete from loinc_copra.loinc_long_common_name_copra_name_tmp where copra_name = 'SV';


-- SM Empfindlichkeit
select * from loinc_copra.loinc_long_common_name_copra_name_tmp where copra_name = 'SM Empfindlichkeit';
delete from loinc_copra.loinc_long_common_name_copra_name_tmp where copra_name = 'SM Empfindlichkeit';

-- ABP1, ABP2
select * from loinc_copra.loinc_long_common_name_copra_name_tmp where copra_name like 'ABP%';
delete from loinc_copra.loinc_long_common_name_copra_name_tmp where copra_id in (106777, 106776);

-- Allergie
select * from loinc_copra.loinc_long_common_name_copra_name_tmp where copra_name like 'Allergie';
delete from loinc_copra.loinc_long_common_name_copra_name_tmp where copra_id = 100065;

-- ...
delete from loinc_copra.loinc_long_common_name_copra_name_tmp 
where copra_id in (108155, 108156, 108157, 108158, 108106, 108112, 108111, 108242, 100243, 102539, 108171, 108169, 108282, 108281, 108280, 102057, 110935, 103751, 100132, 108510, 105041, 108153, 108154, 108276, 108279, 108159, 108160, 108247, 103408);

-- Aufnahme Geburt
select * from loinc_copra.loinc_long_common_name_copra_name_tmp 
where copra_name like 'Aufnahme Geburt%';
delete from loinc_copra.loinc_long_common_name_copra_name_tmp where copra_name like 'Aufnahme Geburt%'

-- akt. Schwangerschaftwoche
delete from loinc_copra.loinc_long_common_name_copra_name_tmp 
where copra_id = 100037 and loinc_num not in ('82810-3', '90767-5')

select * from loinc_copra.loinc_long_common_name_copra_name_tmp order by copra_name;
----------------------------------

--select * from loinc_copra.loinc_long_common_name_copra_name_tmp where loinc_long_common_name = 'Anamnese' and loinc_num <> '35090-0';


select count(accuracy), accuracy
from loinc_copra.loinc_long_common_name_copra_name_tmp
group by accuracy
order by accuracy desc;



-- ^ABP1, ABP2
select * from loinc_copra.loinc_long_common_name_copra_name_tmp
where copra_name like 'ABP%'
;

delete from loinc_copra.loinc_long_common_name_copra_name_tmp
where copra_name like 'ABP%';


-- ^AICD
select * from loinc_copra.loinc_long_common_name_copra_name_tmp
where copra_name like 'AICD%'
;

delete from loinc_copra.loinc_long_common_name_copra_name_tmp
where copra_name like 'AICD%';

-- ^Allergie
select * from loinc_copra.loinc_long_common_name_copra_name_tmp
where copra_name like 'Allergie%'
;

delete from loinc_copra.loinc_long_common_name_copra_name_tmp
where copra_name like 'Allergie%';

-- ^Anfeuchtung, ^Angehoerige, ^Arztbriefunterstuetzung
select * from loinc_copra.loinc_long_common_name_copra_name_tmp
where copra_name ~ '^Anfeuchtung|^Angehoerige|^Arztbriefunterstuetzung'
;

delete from loinc_copra.loinc_long_common_name_copra_name_tmp
where copra_name ~ '^Anfeuchtung|^Angehoerige|^Arztbriefunterstuetzung'
;

-- ^Assistenz
select * from loinc_copra.loinc_long_common_name_copra_name_tmp
where copra_name ~ '^Assistenz'
;

delete from loinc_copra.loinc_long_common_name_copra_name_tmp
where copra_name ~ '^Assistenz'
;

-- ^AT+space
select * from loinc_copra.loinc_long_common_name_copra_name_tmp
where copra_name ~ '^AT '
;

delete from loinc_copra.loinc_long_common_name_copra_name_tmp
where copra_name ~ '^AT '
;

-- ^Atemwege
select * from loinc_copra.loinc_long_common_name_copra_name_tmp
where copra_name ~ '^Atemwege'
;

delete from loinc_copra.loinc_long_common_name_copra_name_tmp
where copra_name ~ '^Atemwege'
;

-- ^AtmenKreislaufTemp, ^AtmenKreislTemp
select * from loinc_copra.loinc_long_common_name_copra_name_tmp
where copra_name ~ '^AtmenKreislaufTemp|^AtmenKreislTemp'
;

delete from loinc_copra.loinc_long_common_name_copra_name_tmp
where copra_name ~ '^AtmenKreislaufTemp|^AtmenKreislTemp'
;

-- ^Atmung
select * from loinc_copra.loinc_long_common_name_copra_name_tmp
where copra_name ~ '^Atmung' --and loinc_long_common_name ~* 'atmung'
;

delete from loinc_copra.loinc_long_common_name_copra_name_tmp
where copra_name ~ '^Atmung'
;

-- ^Aufnahme Viruslast
select * from loinc_copra.loinc_long_common_name_copra_name_tmp
where copra_name ~ '^Aufnahme Viruslast'
;

delete from loinc_copra.loinc_long_common_name_copra_name_tmp
where copra_name ~ '^Aufnahme Viruslast'
;


-- ^Aufnahme Schwangerschaft
select * from loinc_copra.loinc_long_common_name_copra_name_tmp
where copra_name ~ '^Aufnahme Schwangerschaft'
;

delete from loinc_copra.loinc_long_common_name_copra_name_tmp
where copra_name ~ '^Aufnahme Schwangerschaft' and loinc_long_common_name !~ 'Schwangerschaftsstatus'
;

-- ^Aufnahme Abdomen
select * from loinc_copra.loinc_long_common_name_copra_name_tmp
where copra_name ~ '^Aufnahme Abdomen'
;

delete from loinc_copra.loinc_long_common_name_copra_name_tmp
where copra_name ~ '^Aufnahme Abdomen'
;


-- ^Aufnahme AKS
select * from loinc_copra.loinc_long_common_name_copra_name_tmp
where copra_name ~ '^Aufnahme AKS'
;

delete from loinc_copra.loinc_long_common_name_copra_name_tmp
where copra_name ~ '^Aufnahme AKS'
;

-- ^Aufnahme Alkohol
select * from loinc_copra.loinc_long_common_name_copra_name_tmp
where copra_name ~ '^Aufnahme Alkohol'
;

delete from loinc_copra.loinc_long_common_name_copra_name_tmp
where copra_name ~ '^Aufnahme Alkohol'
;


-- ^Aufnahme allgemein
select * from loinc_copra.loinc_long_common_name_copra_name_tmp
where copra_name ~ '^Aufnahme allgemein'
;

delete from loinc_copra.loinc_long_common_name_copra_name_tmp
where copra_name ~ '^Aufnahme allgemein'
;
--------------------------
select * from loinc_copra.loinc_long_common_name_copra_name_tmp order by copra_name;

delete from loinc_copra.loinc_long_common_name_copra_name_tmp where accuracy < 50;
