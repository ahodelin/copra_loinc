-- copra names
copy(
 select id_syst, 
 regexp_replace(regexp_replace(name, '_', ' ', 'g'), '"|COPRA|CO6', '', 'g')
 from icu_copra.copra_config_vars
 where parent in (1, 20)
 and "name" !~* 'Betreuer|Anordnung|Balken|Angehoerige|Pseudonym|Archivdruck|telefon|MergeSource|MergeTarget|ToDo|Dekanuelierungsplan|Koerperpflege|AllgBefund|IstPflege|VerlPfl|Tabelle|Behandlungsstrategie|KlinikNervensys|PROCDiagnosMassnahm|Verlegung|Arztbriefunterstuetzung|Schrittmacher|Beruf|Sprache|Religion|name'
 order by id_syst 
) to '/home/ahodelin/git_repos/copra_loinc/csv/copra_name.csv' csv delimiter E';'
;
select * from icu_copra.copra_config_vars ccv where description ~* 'Kumulativ$';
-- copra descriptions
copy(
 select id_syst, regexp_replace(description, '"|COPRA|CO6', '','g')
 from icu_copra.copra_config_vars
 where description notnull
 and parent in (1, 20)
 and "name" !~* 'Betreuer|Anordnung|Balken|Angehoerige|Pseudonym|Archivdruck|telefon|MergeSource|MergeTarget|ToDo|Dekanuelierungsplan|Koerperpflege|AllgBefund|IstPflege|VerlPfl|Tabelle|Behandlungsstrategie|KlinikNervensys|PROCDiagnosMassnahm|Verlegung|Arztbriefunterstuetzung|Schrittmacher|Beruf|Sprache|Religion|name'
 and description !~* 'Liste|^l/min|Monitoring$|ml/b|Kumulativ|Organspenderausweis|Schrittmacher|Tempertatu Celsius|Testzwecken|Ein/Aus'
 order by id_syst 
-- having count(description) = 1 -- because there are some repetitions  
) to '/home/ahodelin/git_repos/copra_loinc/csv/copra_description.csv' csv delimiter E';'
;

-- copra displaynames
copy(
 select id_syst, regexp_replace(displayname, '"', '','g')  
 from icu_copra.copra_config_vars
 where displayname notnull
 and parent in (1, 20)
 and "name" !~* 'Betreuer|Anordnung|Balken|Angehoerige|Pseudonym|Archivdruck|telefon|MergeSource|MergeTarget|ToDo|Dekanuelierungsplan|Koerperpflege|AllgBefund|IstPflege|VerlPfl|Tabelle|Behandlungsstrategie|KlinikNervensys|PROCDiagnosMassnahm|Verlegung|Arztbriefunterstuetzung|Schrittmacher|Beruf|Sprache|Religion|name'
 and displayname !~* 'nicht bekannt|Besuchsrechte|kulturelle'
 order by id_syst
) to '/home/ahodelin/git_repos/copra_loinc/csv/copra_displayname.csv' csv delimiter E';';
