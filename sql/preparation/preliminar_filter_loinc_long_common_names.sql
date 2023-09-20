drop table loinc_copra.loinc_lcn_words ;
select distinct "LOINC_NUM", regexp_split_to_table("LONG_COMMON_NAME", ' ') loinc_lcn_words, "LONG_COMMON_NAME", false relevant into loinc_copra.loinc_lcn_words from loinc.loinc_german_translation lgt order by loinc_lcn_words;



select * from loinc_copra.loinc_lcn_words where loinc_lcn_words ~ '^[A-Za-z](\d|S)$'

update loinc_copra.loinc_lcn_words
set relevant = true where loinc_lcn_words ~ '^[A-Za-z](\d|S)$';

--select distinct loinc_lcn_words from loinc_copra.loinc_lcn_words
--where loinc_lcn_words not in 
(
select distinct loinc_lcn_words from loinc_copra.loinc_lcn_words 
where not relevant 
and length(loinc_lcn_words) > 1
and loinc_lcn_words ~ '^\W+|((\d+\W?)+|[au][nu][dfs]?[\W]*|im|in|\w\W+|mg|[Oo][bsf]|sp|µg|\W+\w+[\W]?|bei|[Zz]u[mr]?|sv|[dp]e[mnsr]|die|f[oü]r|mit|vo[rmn]|XXX|bzw\.|nach|oder|ohne|über|ist|unter)$'
order by loinc_lcn_words
);

select distinct loinc_lcn_words from loinc_copra.loinc_lcn_words 
where not relevant 
and length(loinc_lcn_words) > 1
and loinc_lcn_words ~ '^\w+$'
and loinc_lcn_words !~ '^(\d+|[kK]lein[e]?[rs]\|\d+|aktuelle[nr]?|alle[n]?|[aA]n[d]?|[aA]ndere[rs]?|[aA]u[sf]|bei|[dD]e[rsmn]|[gG]ro[bß][e]?|die|durch|eine[mrs]?|f[oü]r|i[nm]|ist|mg|mit|nach|näher|nicht|Nombre|of|ohne|oder|os|per|pro|s[pv]|vo[mnr]|wegen|w[eu]rde[n]?|[zZ]u[rm]?|Korrektur|Zwei|µg|korrigiert|während|XXX|[oO]b)$'
order by loinc_lcn_words;

update loinc_copra.loinc_lcn_words
set relevant = true
where not relevant 
and length(loinc_lcn_words) > 1
and loinc_lcn_words ~ '^\w+$'
and loinc_lcn_words !~ '^(\d+|[kK]lein[e]?[rs]\|\d+|aktuelle[nr]?|alle[n]?|[aA]n[d]?|[aA]ndere[rs]?|[aA]u[sf]|bei|[dD]e[rsmn]|[gG]ro[bß][e]?|die|durch|eine[mrs]?|f[oü]r|i[nm]|ist|mg|mit|nach|näher|nicht|Nombre|of|ohne|oder|os|per|pro|s[pv]|vo[mnr]|wegen|w[eu]rde[n]?|[zZ]u[rm]?|Korrektur|Zwei|µg|korrigiert|während|XXX|[oO]b)$'
--order by loinc_lcn_words


select distinct loinc_lcn_words from loinc_copra.loinc_lcn_words 
where not relevant 
and length(loinc_lcn_words) > 1
and loinc_lcn_words !~ '^\w+$'
and loinc_lcn_words !~ '^(\W*\d*\W*|(\d+\W+)+(\d+)?|auf\W*|\W*(a[mn]|bei)|bzw\.|\w\W*|g/kg|können\W*|\WListe\W|\W*nach\W*|\W*nicht\W*|\[.+\])$'
order by loinc_lcn_words;
