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
import pandas as pd

loincFile = pd.read_csv('/home/ahodelin/git_repos/copra_loinc/csv/loinc_long_common_name.csv', header=None, sep=';', quotechar='"')
# print(loincFile[1].to_string(index=False))

#exit()
copraFile = pd.read_csv('/home/ahodelin/git_repos/copra_loinc/csv/copra_name.csv', header=None, sep=';', quotechar='"')

for loincRow in loincFile:
    match_ratios = process.extract(loincRow[1].to_string(index=False), copraFile[1].to_string(index=False), scorer=fuzz.token_set_ratio)
    for loinc_match_copra in match_ratios:
      print(loincRow[0].to_string(index=False), copraFile[0].to_string(index=False), loincRow[1].to_string(index=False), loinc_match_copra) 

