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
loincParam = loincFile[1].values.tolist()
loincParam = [x.strip() for x in loincParam]
# print(loincParam)
# print(loincFile[1].to_string(index=False).to_list())

# exit()
copraFile = pd.read_csv('/home/ahodelin/git_repos/copra_loinc/csv/copra_name.csv', header=None, sep=';', quotechar='"')
copraParam = copraFile[1].values.tolist()
copraParam = [x.strip() for x in copraParam]
# print(copraParam)
# exit()

for loincElement in loincParam:
    match_ratios = process.extract(loincElement, copraParam, scorer=fuzz.token_set_ratio)
    for loinc_match_copra in match_ratios:
      print(loincElement, ';', loinc_match_copra[0],';', loinc_match_copra[1]) 

