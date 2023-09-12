-- loinc_long_common_name-copra_name

select count(accuracy), accuracy
from loinc_copra.loinc_long_common_name_copra_name_tmp
group by accuracy
order by accuracy desc;

-- Analyse by copra_name

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
