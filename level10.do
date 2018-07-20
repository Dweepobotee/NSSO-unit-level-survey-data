
	 sl_no_pregnancy 47-47
	 tetanus 48-48
	 IFA 49-49
	 prenatal 50-50
	 nature_prenatal 51-51
	 exp_prenatal 52-59
	 outcome 60-60
	 plc_delivery 61-61
	 postnatal 62-62
	 nature_postnatal 63-63
	 exp_postnatal 64-71
	 blank 72-126
	 str nss 127-129
	 str ncc 130-132
	 str mlt 134-142
}

infix using "C:\Users\Dweepobotee Brahma\Documents\NSSO\NSSO Data\Nss71_25.0\Data\level10.dct", using ("C:\Users\Dweepobotee Brahma\Documents\NSSO\NSSO Data\Nss71_25.0\Data\R71250L10.txt")

************************************
** Labelling variables and values **
************************************

label var  prsn_sl "25.0.11.1 sl no of hh member"
label var  age "25.0.11.2 Age (in years)"
label var  pregnant "25.0.11.3 Whether pregnant anytime in the last 365 days"
label define yn_lbl 1"Yes" 2"No"
label values  pregnant yn_lbl

label var sl_no_pregnancy "25.0.11.4 sl no of the pregnancy"
label var  tetanus "25.0.11.5 Whether received tt vaccine during pregnancy"
label values  tetanus yn_lbl

label var  IFA "25.0.11.6 Whether IFA during pregnancy"
label values  IFA yn_lbl

label var  prenatal "25.0.11.7 Whether any prenatal care received"
label define care_lbl 1"yes, from HSC/ANM/ASHA/AWW" 2"yes, from PHC/dispensary/CHC/mobile medical unit" 3"yes, from public hospital" 4"yes, from private doctor/clinic" 5"yes, from private hospital" 8"no"
label values   prenatal care_lbl

label var  nature_prenatal "25.0.11.8 Nature of pre-natal care received"
label define ayush_lbl 1"AYUSH" 2"non-AYUSH" 3"both"
label values  nature_prenatal ayush_lbl

label var  exp_prenatal "25.0.11.9 Total expenditure on pre-natal care (in rupees)"
label var  outcome "25.0.11.10 Outcome of pregnancy (code)"
label define outcome_lbl 1"live birth" 2"stillbirth" 3"abortion" 4"pregnancy continuing" 9"other"
label values  outcome outcome_lbl

label var  plc_delivery "25.0.11.11 Place of delivery/abortion (code)"
label define place_lbl 1"in HSC" 2"in PHC/dispensary/CHC/mobile medical unit" 3"in public hospital" 4"in private clinic" 5"in private hospital" 6"at home"
label values  plc_delivery place_lbl

label var  postnatal "25.0.11.12 Whether any post-natal care received (code)"
label values  postnatal care_lbl

label var  nature_postnatal "25.0.11.13 Nature of post-care received"
label values  nature_postnatal ayush_lbl

label var  exp_postnatal "25.0.11.14 Expenditure on post-natal care (in rupees)"

egen hhid=concat( fsu sub_block_num sss_num hhnum)
label var  hhid "Household ID"

egen personid=concat(hhid prsn_sl)
label var personid "Person ID"

label var fsu "First Stage Unit, sl no"
label var  sub_block_num "Sub-Block sl no"
label var  sss_num "Second-stage stratum sl. no"
label var  hhnum "Household sl. no"
label var  level " Level 10"
label var  filler "Filler"
label var  common_id " Common ID"

label define sector 1"Rural" 2"Urban"
label values sector sector
label var sector "Sector (Rural/Urban)"

