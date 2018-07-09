
infix using "<insert path name to dictionary file here>", using ("C:\Users\Dweepobotee Brahma\Documents\NSSO\NSSO Data\Nss71_25.0\Data\R71250L03.txt")
*************************
** Labelling variables **
*************************

label var person_id "25.0.5.1sl. no. of deceased person"

label var sex "25.0.5.3 sex of deceased person"
label define sex_lbl 1"Male" 2"Female"
label values sex sex_lbl

label var age_at_death "25.0.5.4 Age at death (years)"

label var medical_atn "25.0.5.5 Whether received medical attention before death"
label define medical_lbl 1"Yes" 2"No"
label values medical_atn medical_lbl

label var hospitalised "25.0.5.6 Whether hospitalised"
label define hospital_lbl 1"Yes" 2"No"
label values hospitalised hospital_lbl

label var no_hospitalised "25.0.5.7 Number of times hospitalised"

label var pregnant "25.0.5.8 Whether pregnant during last 365 days"
label define pregnant_lbl 1"Yes" 2"No"
label values pregnant pregnant_lbl

label var time_death "25.0.5.9 Time of pregnancy related death"
label define death_lbl 1"during pregnancy" 2"during delivery" 3"during abortion" 4"within 6 wks of delivery/abortion" 9"other deaths"
label values time_death death_lbl

egen hhid=concat( fsu sub_block_num sss_num hhnum)
label var  hhid "Household ID"

label var fsu "First Stage Unit, sl no"
label var  sub_block_num "Sub-Block sl no"
label var  sss_num "Second-stage stratum sl. no"
label var  hhnum "Household sl. no"
label var  level " Level 3"
label var  filler "Filler"
label var  common_id " Common ID"

label define sector 1"Rural" 2"Urban"
label values sector sector
label var sector "Sector (Rural/Urban)"
