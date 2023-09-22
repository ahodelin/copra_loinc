import re

def replace(filePath, to_delete, subs, flags=0):
  with open(file_path, "r+") as file:
    file_contents = file.read()
    text_pattern = re.compile(to_delete, flags)
    file_contents = text_pattern.sub(subs, file_contents)
    file.seek(0)
    file.truncate()
    file.write(file_contents)

file_path = "/home/ahodelin/git_repos/copra_loinc/csv/test_delete_words/loinc_long_common_name.csv"
to_delete_1path=r"\[.+\]"

to_delete_2path=r"(\s|\W+)(Abgegebene|ähnlicher|ähnliches|aktuell|aktuelle|aktuellen|aktueller|alle|allen|Alter|am|an|and|andere|Andere|anderer|Anderes|Angabe|angepasst|Anhang|auf|Aufbaus|aufgenommen|Aufnahme|bei|bestimmten|dem|der|des|die|einem|einer|eines|Einheiten|Einsatz|Fall|for|für|gesamt|Gesamt|hoch|Hoechst|hohe|Hohe|hoher|im|in|ist|klein|Klein|kleine|kleines|Kleines|Klinische|Letzte|letzten|Liste|mg|mit|New|ng|nicht|Nicht|Ob|oberem|oder|of|os|Patient|Patienten|Patientin|per|sp|sv|über|Überwachung|Uhr|unbekannter|unbestimmtem|und|unter|unteren|unterer|Untersuchung|Untersuchungen|voller|Volumen|vom|von|vor|während|wegen|werden|zu|Zu|zum|zur|µg|Dokumentation|ohne|XXX|nach)(\s|\W)"
subs=" "


replace(file_path, to_delete_1path, subs)
replace(file_path, to_delete_2path, subs)
