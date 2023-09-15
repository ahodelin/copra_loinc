-- copra names
copy(
 select id_syst, regexp_replace(regexp_replace(name, '_', ' ', 'g'), 'COPRA|CO6|Koerperpflege|AllgBefund|IstPflege|VerlPfl|Tabelle|Behandlungsstrategie|KlinikNervensys|PROCDiagnosMassnahm|B Verlegung|Arztbriefunterstuetzung', '', 'g')
 from icu_copra.copra_config_vars
 order by id_syst 
) to '/home/ahodelin/git_repos/copra_loinc/csv/copra_name.csv' csv delimiter E';'
;

-- copra descriptions
copy(
 select id_syst, regexp_replace(description, '"', '','g')
 from icu_copra.copra_config_vars
 where description notnull
 order by id_syst 
-- having count(description) = 1 -- because there are some repetitions  
) to '/home/ahodelin/git_repos/copra_loinc/csv/copra_description.csv' csv delimiter E';'
;

-- copra displaynames
copy(
 select id_syst, regexp_replace(displayname, '"', '','g')  
 from icu_copra.copra_config_vars
 where displayname notnull
 order by id_syst
 --group by id_syst, displayname 
 --having count(displayname) = 1 -- because there are some repetitions  
) to '/home/ahodelin/git_repos/copra_loinc/csv/copra_displayname.csv' csv delimiter E';';
