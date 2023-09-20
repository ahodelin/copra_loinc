select * from loinc.loinc_german_translation lgt where "LONG_COMMON_NAME" like '%Beatmung%';


select count(*) from copra.co6_config_variables ccv ;

drop table loinc_copra.copra_name_words;
select words copra_words, count(words) quantity into loinc_copra.copra_name_words from
(select regexp_split_to_table(name, '_') words
from copra.co6_config_variables where parent in (1, 20)) as t
group by words order by quantity desc;

drop table loinc_copra.loinc_lcn_words;
select words loinc_lcn_words, count(words) quantity into loinc_copra.loinc_lcn_words from
(select regexp_split_to_table("LONG_COMMON_NAME", ' ') words
from loinc.loinc_german_translation) as t
group by words order by quantity desc;

select * from loinc_copra.loinc_lcn_words order by loinc_lcn_words;


select copra_words into loinc_copra.copra_name_loinc_lcn_word_same_words
from loinc_copra.copra_name_words
where copra_words in (
  select loinc_lcn_words from loinc_copra.loinc_lcn_words
) order by copra_words;


select * from loinc_copra.copra_name_loinc_lcn_word_same_words;


select co.id, lo."LOINC_NUM", co.name, lo."LONG_COMMON_NAME"
from copra.co6_config_variables co
join loinc_copra.copra_name_loinc_lcn_word_same_words sm 
  on co."name" ~ sm.copra_words
join loinc.loinc_german_translation_tmp lo
  on lo."LONG_COMMON_NAME" ~ sm.copra_words
where length(sm.copra_words) > 1
and sm.copra_words not in('bei', 'andere', 'nach', 'Volumen');


alter table loinc_copra.copra_name_words 
rename relevan to relevant ;

update loinc_copra.copra_name_words 
set relevant = true 
where copra_words in (select * from loinc_copra.copra_name_loinc_lcn_word_same_words);


update loinc_copra.copra_name_words 
set relevant = false 
where copra_words in (
  '1', 'E', '2', 'Liste', 'V',
  'T', 'P', 'I', 'andere', 'in',
  'A', 'nach', 'Volumen', 'bei',
  'C', 'Tag', 'gesamt', 'pro',
  '4', '3', 'B', 'Fall', 'Patient'
  'Aufnahme', 'Untersuchung', 'F',
  'Status', 'Name'
);


update loinc_copra.copra_name_words 
set relevant = false
where length(copra_words) = 1

update loinc_copra.copra_name_words 
set relevant = false 
where copra_words in (
  'ID', 'bei', 'nichtErhoben', 'InspZeit',
  'DruckvorFilterDruck', 'AufnKO', 'Balken',
  'Schrittmacher', 'Aufnahme', 'Pallas', 
  'Messung', 'Therapiebetten', 'Lungenersatzverfahren',
  'Leoni', 'Evita4', 'VisionA', 'Evita2'
  'Backup', 'Wertsachen', 'Impella', 'ml', 'VigilanceC'
  'VONierenersatzverfahren', 'PROCNierenersatzverfahren',
  'IEVerhaeltnis', 'Genius', 'Betreuer', 'TabelleAerzte',
  'EinweisenderArzt', 'AutoCat', 'Angehoerige1', 'Angehoerige2',
  'Angehoerige3', 'Hausarzt', 'Ptief', 'Betreuer2', 'Vigileo',
  'ja', 'nein', 'COPRA', 'PLZ', '3100A', 'drei', 'TMP', 
  'Vorname', '3100B', 'Telefon', 'IsoUFZiel',
  'AnaConDa', 'DatascopeCS100', 'Allergie', 'TelefonMobil',
  'Platzhalter', 'IE', 'Betreuung', 'IABPAufblasen',
  'AutoPeep', 'Kleidungsstuecke', 'rePause', 'Wertgegenstaende',
  'Multi', '4008onl'
);

update loinc_copra.copra_name_words 
set relevant = false 
where copra_words in (
  'Patient', '4008HS', 'Einstellung', 'Anordnung',
  '5008onl', 'Einstell', 'Avea', 'Evita2', 'PD',
  'Ort', 'Backup', 'CardioHelpMaquet', 'Vt', 'Osypka203H',
  'BariAir', 'Waermesysteme', 'VigilanceC', 'VONierenersatzverfahren',
  'BlutflussSNPumpe', 'Option', 'Giraffe', 'DatascopeCS300',
  'Strasse', 'exsp', 'Verlauf', 'Hemolung', 'Kopf', 'Verfahren',
  'Geraet', 'Mit', 'ueber', 'unbekannt', 'DraegerBabytherm', 'Gerät',
  'SpülloesungAntikoag', 'InfantWarmer', 'BedingteVerordnung',
  'zwei', 'ExtremitaetenLeiste', 'Ja', 's', 'Nierenersatztherapie',
  'PflegedokumentationI', 'Auslandsaufenthalt', 'AbschlussBeurteilung',
  'neu', 'Titel', 'Email', '4008', 'bevor', 'LiqouGuard', 
  'verheiratet', 'MergeSource', 'I:E', 'Besonderheiten',
  'SpüllösungAntikoag', 'K', 'SonstVerfahren', 
  'Pflegeuntensilien', 'Papiere', 'Behandlungsmodi'
);


update loinc_copra.copra_name_words 
set relevant = false 
where copra_words in (
  'Rankin', 'spont', 'Pflegekategorie', 'rechts',
  'VerhaeltnisTiTe', 'AufnIndikationIntensivBehandlung',
  'Ereignisse Vitlaparameter Graphisch', 'AufnChronischeMetastasierenNeoplasie',
  'AngehörigeBetreuungPatVerfuegung', 'Dokumentationszeitpunkt',
  'EntlNachKeineVerlegungExitus', 'KlinikThorax', 'EntlPostVisiteBeeintraechtigungPassager',
  'Verfuegung', 'Matratzen', 'Beurteilung', 'AufnChronischeHaematologischeNeoplasie',
  'AutoTubuskompentationEin', 'EntlPostVisiteBeeintraechtigungDauerhaf',
  'AssistenzBeiPflegerischenMassnahmen', 'I:EInsp', 'Unterstuetzungsverhaeltnis',
  'AbbruchkriterienAllgemein', 'EntlZustandRestitutioAdIntegrum',
  '4008onll', 'Nummer', 'Sorgerecht', 'TabelleOPSAnaesthesie', 
  'EntlInfoMaximaleTherapieAufStation', 'result', 'Vorhanden',
  'Patientenleckage', 'SpontanatemtestVoraussetzung', 'Aktuell',
  'Befund', 'zusätzliche', 'EntlNachExterneSpezialklinik',
  'Tabelle mit Fehlermeldungen', 'Organspenderausweis',
  'AufnArzt', 'BehandlungszeitAktuell', 'gruen', 'akt.',
  'IstSoziale', 'zuhause', 'Medikamentenverordnung',
  'PreviousDataSet', 'BesonderheitenICUVerlaufs',
  'EntlInfoBarthelIndexErhoben', 'SonsitgeVerfahren',
  'KalibrierenVenoesenMesskopf', 'TestvariableDec',
  'Nullabgleich', 'Klinik', 'Anschrift', 
  'AufnIndikationSchwerstkrankerPatient',
  'EntlPostVisiteUeberlebenErheblicherDefe',
  'AufnUngeplantChirurgisch',
  'AufnVonIntensivstationWachstation',
  'IsoUFVolumenKumulativ',
  'EntlPostVisiteExitusImKrankenhaus',
  'PrimarerAufnahmeGrund',
  'PrimarerAufnahmeGrund',
  'EntlNachAndereIntensivstation',
  'Keine', 'PersoenlicheAspekte',
  'ausgehaendigt', 'HFAnsaetzeAspirierenSpuelen',
  'AufnBeatmungsstundenbiszurAufnahme',
  'AufnVonPeriphererStation',
  'TabelleAerzteAnamnese', 'Arzt', 
  'ZugangBalken', 'AnordnungSedierungPCAPDA',
  'Sicherheit', 'Soll', 'Versicherung',
  'AufnIndikationIntensivUeberwachung',
  'TabelleVormedikamente', 'TabelleAerzteAufnahmestatus',
  'EntlZustandGeringBeeintraechtigungPassa',
  'VigilanceCGeraet', 'vorhanden', 'Null', 'am',
  'Bemerkung', 'Besucherregelung', 'Sprache'
  'Output', 'sonstige', 'Verfügung', 'komplett',
  'Versicherungsnummer', 'VerantwortlicherMitarbeiter',
  'Abschlussbeurteilung', '5008', 'Differenz'
  'EntlPostVisiteRestitutioAdIntegrum', 'Religion'
);

select * from loinc_copra.copra_name_words cnw where relevant; 

drop table loinc_copra.copra_name_words_to_clean;
select co.id, 
 regexp_replace(regexp_replace(co.name, '_', ' ', 'g'), 'OP-Tag|Befunde|Fax|Geraete|F_|_1_|_2_|_Ja|_ja|_nein|_Nein|Schule|Kindergarten|Anzahl|Arztbrief2|AufnASA1|AufnASA2|AufnASA3|AufnASA4|AufnASA5|Decimal|Differenz|_am_|ES|HD|ID|IE|ml|PD|VO|Vt|_bei_|I:E|Mit|neu|NEV|Ort|PLZ|pro|Tag|TMP|4008|5008|akt.|_Arzt|Arzt_|Avea|Doku_|drei|exsp|Fall|nach|Name|Null|Soll|zwei|3100A|3100B|bevor|COPRA|Email|Gerät|Geraet|gruen|Keine|Leoni|Liste|Multi|Ptief|spont|Titel|ueber|4008HS|andere|Anzahl|AufnKO|Backup|Balken|Befund|Evita2|Evita4|Genius|Geraet|gesamt|Klinik|Nummer|Option|Pallas|Rankin|rechts|result|Status|4008onl|5008onl|Aktuell|AutoCat|BariAir|Decimal|Giraffe|I:EInsp|Impella|Messung|Papiere|Patient|rePause|Strasse|Telefon|Verlauf|Vigileo|VisionA|Volumen|Vorname|zuhause|4008onll|Allergie|AnaConDa|Aufnahme|AufnArzt|AufnASA1|AufnASA2|AufnASA3|AufnASA4|AufnASA5|AutoPeep|Beatmung|Betreuer|Einstell|Hausarzt|Hemolung|InspZeit|komplett|Religion|sonstige|Anordnung|Anschrift|Bemerkung|Betreuer2|Betreuung|Differenz|IsoUFZiel|Matratzen|unbekannt|Verfahren|Verfügung|vorhanden|Vorhanden|Arztbrief2|IstSoziale|LiqouGuard|Osypka203H|Sicherheit|Sorgerecht|Verfuegung|VigilanceC|Wertsachen|Beurteilung|Einstellung|MergeSource|Platzhalter|verheiratet|zusätzliche|Angehoerige1|Angehoerige2|Angehoerige3|Angehoeriger|InfantWarmer|KlinikThorax|nichtErhoben|Nullabgleich|TelefonMobil|Telefon|Mobil|Untersuchung|Versicherung|ZugangBalken|ausgehaendigt|IABPAufblasen|IEVerhaeltnis|Verhaeltnis|Schrittmacher|TabelleAerzte|Waermesysteme|Besonderheiten|DatascopeCS100|DatascopeCS300|SonstVerfahren|Therapiebetten|Behandlungsmodi|Nierenverfahren|Pflegekategorie|PreviousDataSet|TestvariableDec|VerhaeltnisTiTe|Abbruchkriterien|Besucherregelung|BlutflussSNPumpe|CardioHelpMaquet|DraegerBabytherm|EinweisenderArzt|Kleidungsstuecke|Patientenleckage|VigilanceCGeraet|Wertgegenstaende|Pflegeuntensilien|SonsitgeVerfahren|Auslandsaufenthalt|BedingteVerordnung|SpüllösungAntikoag|DruckvorFilterDruck|ExtremitaetenLeiste|Organspenderausweis|PersoenlicheAspekte|SpülloesungAntikoag|Versicherungsnummer|Abschlussbeurteilung|AbschlussBeurteilung|Nierenersatztherapie|PflegedokumentationI|IsoUFVolumenKumulativ|Lungenersatzverfahren|Nierenersatzverfahren|TabelleAerzteAnamnese|TabelleOPSAnaesthesie|TabelleVormedikamente|BehandlungszeitAktuell|Medikamentenverordnung|Dokumentationszeitpunkt|VONierenersatzverfahren|AnordnungSedierungPCAPDA|AufnUngeplantChirurgisch|AufnVonPeriphererStation|AutoTubuskompentationEin|AbbruchkriterienAllgemein|BesonderheitenICUVerlaufs|PROCNierenersatzverfahren|Unterstuetzungsverhaeltnis|EntlInfoBarthelIndexErhoben|HFAnsaetzeAspirierenSpuelen|KalibrierenVenoesenMesskopf|TabelleAerzteAufnahmestatus|Tabelle mit Fehlermeldungen|VerantwortlicherMitarbeiter|EntlNachExterneSpezialklinik|EntlNachKeineVerlegungExitus|SpontanatemtestVoraussetzung|EntlNachAndereIntensivstation|EntlZustandRestitutioAdIntegrum|AngehörigeBetreuungPatVerfuegung|AufnIndikationIntensivBehandlung|AufnVonIntensivstationWachstation|EntlPostVisiteExitusImKrankenhaus|AufnBeatmungsstundenbiszurAufnahme|AufnIndikationIntensivUeberwachung|EntlInfoMaximaleTherapieAufStation|AssistenzBeiPflegerischenMassnahmen|Ereignisse Vitlaparameter Graphisch|AufnChronischeMetastasierenNeoplasie|AufnIndikationSchwerstkrankerPatient|AufnChronischeHaematologischeNeoplasie|EntlPostVisiteBeeintraechtigungDauerhaf|EntlPostVisiteBeeintraechtigungPassager|EntlPostVisiteUeberlebenErheblicherDefe|EntlZustandGeringBeeintraechtigungPassa', '', 'g') names_mod, co."name" into loinc_copra.copra_name_words_to_clean
 from copra.co6_config_variables co
 where co.parent in (1, 20)
 order by id;

delete from loinc_copra.copra_name_words where copra_words = 'nein';
select * from loinc_copra.copra_name_words cnw order by copra_words ;

copy
(
  select copra_words from loinc_copra.copra_name_words
  where not relevant 
  order by length(copra_words), copra_words  
)
to '/home/ahodelin/git_repos/copra_loinc/csv/copra_no_relevant_words.csv' csv;


select * from loinc_copra.copra_name_words cnw where not relevant order by copra_words;

insert into loinc_copra.copra_name_words 
values
  ('Abbruchkriterien', 0, false);
  
update loinc_copra.copra_name_words 
set relevant = false where copra_words in ('Schule', 'Kindergarten', 'Angehoeriger', 'Anzahl', 'Arztbrief2', 'AufnASA1', 'AufnASA2', 'AufnASA3', 'AufnASA4', 'AufnASA5', 'Decimal', 'Differenz')


select id, regexp_replace(regexp_replace(names_mod, '^\s+|\s+$', ''), '\s+', ' ', 'g') names_mod from loinc_copra.copra_name_words_to_clean order by names_mod;

select * from loinc_copra.copra_name_words_to_clean order by names_mod;

select * from loinc_copra.copra_name_words_to_clean
where names_mod ~ ' VT$' ;

delete from loinc_copra.copra_name_words_to_clean
where names_mod ~ ' VT$';





