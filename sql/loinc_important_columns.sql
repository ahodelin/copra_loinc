-- LOINC COMPONENT
/*copy(
select "LOINC_NUM" ||';'||"COMPONENT" 
from loinc.v_loinc_german_translation vlgt
where "COMPONENT" NOTNULL
group by "LOINC_NUM", "COMPONENT" 
having COUNT("COMPONENT") = 1 -- because there are some repetitions 
) to  '/home/ahodelin/git_repos/copra_loinc/csv/loinc_component.csv' csv delimiter E';'
;*/

-- LOINC LONG_COMMON_NAME
copy(
select "LOINC_NUM" || ';' || "LONG_COMMON_NAME" 
from loinc.v_loinc_german_translation vlgt
where "LONG_COMMON_NAME" NOTNULL
group by "LOINC_NUM", "LONG_COMMON_NAME" 
having COUNT("LONG_COMMON_NAME") = 1 -- because there are some repetitions
) to  '/home/ahodelin/git_repos/copra_loinc/csv/loinc_long_common_name.csv' csv delimiter E';'
;

-- LOINC SHORTNAME
copy(
select "LOINC_NUM" || ';' || "SHORTNAME" 
from loinc.v_loinc_german_translation vlgt
where "SHORTNAME" NOTNULL
group by "LOINC_NUM", "SHORTNAME" 
having COUNT("SHORTNAME") = 1 -- because there are some repetitions
) to  '/home/ahodelin/git_repos/copra_loinc/csv/loinc_shortname.csv' csv delimiter E';'
;
