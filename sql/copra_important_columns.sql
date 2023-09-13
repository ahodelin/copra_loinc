-- copra names
--copy(
 select id_syst, regexp_replace(name, '_|COPRA|KlinikStamm_|Tabelle|KlinikExtraemitaeten|Beatmung_Anordnung_|Behandlung|Computer_|Leistung|Leistungen|CO6_|KlinikKopf_|KlinikThorax_|Belegung|Medikamentengabe|Behandlung_INPULS|CO_Arzt_Verordnungen|Beatmung_Einstellung|CO_Filter|Freitext|Verordnung|Beatmung_Messung_|VerlPfl_Befind_', '', 'g'), name
 from icu_copra.copra_config_vars
 order by id_syst 
--) to '/home/ahodelin/git_repos/copra_loinc/csv/copra_name.csv' csv delimiter E';'
;

-- copra descriptions
copy(
 select id_syst, regexp_replace(description, '^"|^" | "$|"$', '','g')
 from icu_copra.copra_config_vars
 where description notnull
 order by id_syst 
-- having count(description) = 1 -- because there are some repetitions  
) to '/home/ahodelin/git_repos/copra_loinc/csv/copra_description.csv' csv delimiter E';'
;

-- copra displaynames
copy(
 select id_syst, regexp_replace(displayname, '^"|^" | "$|"$', '','g')  
 from icu_copra.copra_config_vars
 where displayname notnull
 order by id_syst
 --group by id_syst, displayname 
 --having count(displayname) = 1 -- because there are some repetitions  
) to '/home/ahodelin/git_repos/copra_loinc/csv/copra_displayname.csv' csv delimiter E';';
