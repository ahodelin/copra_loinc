#! /usr/bin/python3

# copra
# copra_description.csv
# copra_displayname.csv
# copra_name_spaces.csv

# loinc
# loinc_component.csv
# loinc_long_common_name.csv
# loinc_shortname.csv


from thefuzz import process, fuzz

with open("/home/ahodelin/git_repos/copra_loinc/csv/loinc_long_common_name_mod.csv") as fp: # profils_names.csv
    prn = fp.readlines()

prn = [x.strip() for x in prn]

with open("/home/ahodelin/git_repos/copra_loinc/csv/copra_name_mod.csv") as fc: # config_vars_names.csv
    cvn = fc.readlines()

cvn = [x.strip() for x in cvn]

for profil in prn:
    match_ratios = process.extract(profil, cvn, scorer=fuzz.token_set_ratio)
#    print(profil)
    #print(profil, match_ratios)
    for prn_match_cvn in match_ratios:
      print(profil, prn_match_cvn) 

