

	
	 
	
	
	

	 
	
	 
}
infix using "C:\Users\Dweepobotee Brahma\Documents\NSSO\NSSO Data\Nss71_25.0\Data\level7.dct", using ("C:\Users\Dweepobotee Brahma\Documents\NSSO\NSSO Data\Nss71_25.0\Data\R71250L07.txt")

************************************
** Labelling variables and values **
************************************

label var  ailment_sl " 25.0.8.1 sl no of spell of ailment"

label var  prsn_sl "25.0.8.2 sl no of hh member"

label var  age "25.0.8.3 Age (in years)"

label var  days_ill "25.0.8.4 No of days within the ref period ill"

label var  days_restricted "25.0.8.5 No of days within the ref period on restricted activity"

label var  days_bedrest "25.0.8.6 No of days within the ref period confined to bed"

label var  nature_of_ailment "25.0.8.7 Nature of ailment (code)"

label var  chronic "25.0.8.8 Whether chronic"
label define yn_lbl 1"Yes" 2"No"
label values  chronic yn_lbl

label var  ailment_status "25.0.8.9 status of ailment (code)"
label define status_lbl 1"started more than 15 days ago and is still continuing" 2"started more than 15 days ago and has ended" 3"started within 15 days and is continuing" 4"started within 15 days and has ended"
label values  ailment_status status_lbl

label var  ailment_duration "25.0.8.10 total duration of ailment (in days)"

label var nature_of_treatment "25.0.8.11 Nature of treatment (code)"
label define treatment_lbl 1"Allopathy" 2"Indian system of medicine" 3"Homeopathy" 4"Yoga and Naturopathy" 5"No treatment" 9"Other"
label values  nature_of_treatment treatment_lbl

label var  hospitalised "25.0.8.12 Whether hospitalised"
label values  hospitalised yn_lbl

label var  treatment " 25.0.8.13 Whether treatment taken on medical advice"
label values  treatment yn_lbl

label var  level_of_care " 25.0.8.14 Level of care (code)"
label define care_lbl 1"HSC/ANM/ASHA/AWW" 2"PHC/Dispensary/CHC/mobile medical unit" 3"public hospital" 4"private doctor/clinic" 5"private hospital"
label values  level_of_care care_lbl

label var  reason_not_govt_service "25.0.8.15 Reason for not availing govt sources (code)"
label define govt_lbl 1"required specific services not available" 2"available but quality not satisfactory" 3"quality satisfactory but facility too far" 4"quality satisfactory but involves long waiting" 5"financial constraint" 9"other"
label values  reason_not_govt_service govt_lbl

label var  reason_not_medical_advice "25.0.8.16 Reason for not seeking medical advice (code)"
label define medical_lbl 1"no medical facility available in the neighborhood" 2"facility of satisfactory quality not available" 3"facility of satisfactory quality too expensive" 4" facility of satisfactory quality involves long waiting" 5"ailment not considered serious" 9"other"
label values  reason_not_medical_advice medical_lbl

label var  whom_consulted "25.0.8.17 Whom consulted (code)"

label var  loss_of_income "loss of household income (in Rs)"

egen hhid=concat( fsu sub_block_num sss_num hhnum)
label var  hhid "Household ID"

egen personid=concat(hhid prsn_sl)
label var personid "Person ID"

egen ailmentid=concat (personid  ailment_sl)
label var ailmentid "Ailment spell ID"

label var fsu "First Stage Unit, sl no"
label var  sub_block_num "Sub-Block sl no"
label var  sss_num "Second-stage stratum sl. no"
label var  hhnum "Household sl. no"
label var  level " Level 7"
label var  filler "Filler"
label var  common_id " Common ID"

label define sector 1"Rural" 2"Urban"
label values sector sector
label var sector "Sector (Rural/Urban)"

