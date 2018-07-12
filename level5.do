
 
infix using "<Insert path name to dictionary file for level 5>", using ("C:\Users\Dweepobotee Brahma\Documents\NSSO\NSSO Data\Nss71_25.0\Data\R71250L05.txt")

************************************
** Labelling variables and values **
************************************
label var hospitalisation_sl "25.0.6.1 Sl no of hospitalisation case"

label var prsn_sl "25.0.6.2 Sl no. of hh member"

label var age "25.0.6.3 Age (in years)"

label var ailment "25.0.6.4 Nature of ailment (code)"

label var treatment "25.0.6.5 Nature of treatment (code)"
label define treatment_lbl 1"Allopathy" 2"Indian system of Medicine" 3"Homeopathy" 4"Yoga and Naturopathy" 9"Other"
label values treatment treatment_lbl

label var level_of_care "25.0.6.6 Level of care (Code)"
label define care_lbl 1"HSC/ANM/ASHA/AWW" 2"PHC/dispensary/CHC/mobile medical unit" 3"Public hospital" 4"private doctor/clinic" 5"private hospital"
label values  level_of_care care_lbl

label var ward "25.0.6.7 Type of ward"
label define ward_lbl 1"free" 2"paying general" 3"paying special"
label  values ward ward_lbl

label var when_admitted "25.0.6.8 When admitted to a hospital"
label define admitted_lbl 1"during last 15 days" 2"16 to 365 days ago" 3"more than 365 days ago"
label values when_admitted admitted_lbl

label var when_discharged "25.0.6.9 When discharged from hospital"
label define discharged 1"not yet" 2"during last 15 days" 3"16 to 365 days ago"
label values when_discharged discharged

label var duration_of_stay "25.0.6.10 Duration of hospital stay (in days)"

label var surgery "25.0.6.11 Surgery"
label define medical_lbl 1"not received" 2"received free" 3"partly free" 4"on payment"
label  values surgery medical_lbl

label var medicine "25.0.6.12 Medicine"
label  values medicine medical_lbl

label var tests "25.0.6.13 X-ray/ECG/EEG/Scan"
label  values tests medical_lbl

label var other_tests "25.0.6.14 Other diagnostic tests"
label  values other_tests medical_lbl

label var treated_before_hosp "25.0.6.15 Whether treated on medical advice before hospitalisation"
label define yn_lbl 1"Yes" 2"No"
label values  treated_before_hosp yn_lbl

label var bh_nature_of_treatment "25.0.6.16 Nature of treatment before hospitalisation"
label values  bh_nature_of_treatment treatment_lbl

label var bh_level_of_care "25.0.6.17 Level of care before hospitalisation"
label values  bh_level_of_care care_lbl

label var bh_duration_of_treatment "25.0.6.18 Duration of treatment before hospitalisation (in days)"

label var trtmnt_post_dischrg "25.0.6.19 Whether treatment continued after discharge"
label values  trtmnt_post_dischrg yn_lbl

label var ah_nature_of_treatment "25.0.6.20 Nature of treatment after hospitalisation"
label values  ah_nature_of_treatment treatment_lbl

label var ah_level_of_care "25.0.6.21 Level of care after discharge"
label values  ah_level_of_care care_lbl

label var ah_duration_of_treatment "25.0.6.22 Duration of treatment after discharge (in days)"

egen hhid=concat( fsu sub_block_num sss_num hhnum)
label var  hhid "Household ID"

egen personid=concat(hhid prsn_sl)
label var personid "Person ID"

egen hospid=concat(personid  hospitalisation_sl)
label var hospid "Hospitalisation ID"

label var fsu "First Stage Unit, sl no"
label var  sub_block_num "Sub-Block sl no"
label var  sss_num "Second-stage stratum sl. no"
label var  hhnum "Household sl. no"
label var  level " Level 5"
label var  filler "Filler"
label var  common_id " Common ID"

label define sector 1"Rural" 2"Urban"
label values sector sector
label var sector "Sector (Rural/Urban)"
