-- Analyse by loinc_long_common_name & copra_name 
-- Gesamt
select * from loinc_copra.loinc_long_common_name_copra_name_tmp where copra_name = 'Gesamt';
delete from loinc_copra.loinc_long_common_name_copra_name_tmp where copra_name = 'Gesamt';

-- Datum
select * from loinc_copra.loinc_long_common_name_copra_name_tmp where copra_name = 'Datum';
delete from loinc_copra.loinc_long_common_name_copra_name_tmp where copra_name = 'Datum';

-- Gruppe
select * from loinc_copra.loinc_long_common_name_copra_name_tmp where copra_name = 'Gruppe';
delete from loinc_copra.loinc_long_common_name_copra_name_tmp where copra_name = 'Gruppe';

-- Diagnostik
select * from loinc_copra.loinc_long_common_name_copra_name_tmp where copra_name = 'Diagnostik';
delete from loinc_copra.loinc_long_common_name_copra_name_tmp where copra_name = 'Diagnostik';

-- Fall
select * from loinc_copra.loinc_long_common_name_copra_name_tmp where copra_name = 'Fall';
delete from loinc_copra.loinc_long_common_name_copra_name_tmp where copra_name = 'Fall';

-- Untersuchung
select * from loinc_copra.loinc_long_common_name_copra_name_tmp where copra_name = 'Untersuchung';
delete from loinc_copra.loinc_long_common_name_copra_name_tmp where copra_name = 'Untersuchung';

-- Anamnese
select * from loinc_copra.loinc_long_common_name_copra_name_tmp where copra_name = 'Anamnese';
delete from loinc_copra.loinc_long_common_name_copra_name_tmp where copra_name = 'Anamnese' and loinc_num <> '35090-0';

-- Diagnose
select * from loinc_copra.loinc_long_common_name_copra_name_tmp where copra_name = 'Diagnose';
delete from loinc_copra.loinc_long_common_name_copra_name_tmp where copra_name = 'Diagnose' and loinc_num <> '29308-4';

-- Dokumentation
select * from loinc_copra.loinc_long_common_name_copra_name_tmp where copra_name = 'Dokumentation';
delete from loinc_copra.loinc_long_common_name_copra_name_tmp 
where copra_name = 'Dokumentation' 
and loinc_num <> '77599-9' 
and loinc_num <> '55107-7'
and loinc_num <> '56446-8';

-- SV
select * from loinc_copra.loinc_long_common_name_copra_name_tmp where copra_name = 'SV';
delete from loinc_copra.loinc_long_common_name_copra_name_tmp where copra_name = 'SV';

-- PT
select * from loinc_copra.loinc_long_common_name_copra_name_tmp where copra_name = 'PT';
delete from loinc_copra.loinc_long_common_name_copra_name_tmp where copra_name = 'PT';


-- SM Empfindlichkeit
select * from loinc_copra.loinc_long_common_name_copra_name_tmp where copra_name = 'SM Empfindlichkeit';
delete from loinc_copra.loinc_long_common_name_copra_name_tmp where copra_name = 'SM Empfindlichkeit';

-- A AT02 2, A AT03 2
select * from loinc_copra.loinc_long_common_name_copra_name_tmp where copra_name = 'A AT02 2';
delete from loinc_copra.loinc_long_common_name_copra_name_tmp where copra_id in (101806, 101812);

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
