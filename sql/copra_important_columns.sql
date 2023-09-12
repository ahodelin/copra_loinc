-- copra names
copy(
 select id_syst || ';' || name 
 from icu_copra.copra_config_vars 
) to '/home/ahodelin/git_repos/copra_loinc/csv/copra_name.csv' csv delimiter E';';

-- copra descriptions
copy(
 select id_syst || ';' || description 
 from icu_copra.copra_config_vars
 where description notnull
 group by id_syst, description
 having count(description) = 1 -- because there are some repetitions  
) to '/home/ahodelin/git_repos/copra_loinc/csv/copra_description.csv' csv delimiter E';';

-- copra displaynames
copy(
 select id_syst || ';' || displayname  
 from icu_copra.copra_config_vars
 where displayname notnull
 group by id_syst, displayname 
 having count(displayname) = 1 -- because there are some repetitions  
) to '/home/ahodelin/git_repos/copra_loinc/csv/copra_displayname.csv' csv delimiter E';';
