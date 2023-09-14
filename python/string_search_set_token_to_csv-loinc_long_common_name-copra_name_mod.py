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
loincFile.columns=['loincNum', 'loincPar']
loincFile['loincPar'] = [x.strip() for x in loincFile['loincPar']]
loincFile['loincPar'] = loincFile['loincPar'].values.tolist()
loincFile.set_index('loincNum', inplace=True)

copraFile = pd.read_csv('/home/ahodelin/git_repos/copra_loinc/csv/copra_name.csv', header=None, sep=';', quotechar='"')
copraFile.columns=['copraId', 'copraPar']
copraFile['copraPar'] = [x.strip() for x in copraFile['copraPar']]
copraFile['copraPar'] = copraFile['copraPar'].values.tolist()
copraFile.set_index('copraId', inplace=True)

for index, row in loincFile.iterrows():
    match_ratios = process.extract(row['loincPar'], copraFile['copraPar'], scorer=fuzz.token_set_ratio)
    for loinc_match_copra in match_ratios:
      print(index, ';', loinc_match_copra[2], ';', row['loincPar'], ';', loinc_match_copra[0],';', loinc_match_copra[1])

