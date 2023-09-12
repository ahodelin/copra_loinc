#! /usr/bin/python3

# copra_name_descrip_displa.csv
# loinc_all.csv


from thefuzz import process, fuzz

with open("loinc_all.csv") as fp: # profils_names.csv
    prn = fp.readlines()

prn = [x.strip() for x in prn]

with open("copra_name_descrip_displa.csv") as fc: # config_vars_names.csv
    cvn = fc.readlines()

cvn = [x.strip() for x in cvn]

for profil in prn:
    match_ratios = process.extract(profil, cvn, scorer=fuzz.token_set_ratio)
#    print(profil)
    #print(profil, match_ratios)
    for prn_match_cvn in match_ratios:
      print(profil, prn_match_cvn) 

