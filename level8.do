
	 
	
	 
	
	 
	 second_source_finance 122-122
	 hospitalisation_state 123-124
	 str nss 127-129
	 str ncc 130-132
	 str mlt 133-142
}

infix using "C:\Users\Dweepobotee Brahma\Documents\NSSO\NSSO Data\Nss71_25.0\Data\level8.dct", using ("C:\Users\Dweepobotee Brahma\Documents\NSSO\NSSO Data\Nss71_25.0\Data\R71250L08.txt")

************************************
** Labelling variables and values **
************************************

label var  prsn_sl "25.0.9.1 sl no of hh member"

label var  age "25.0.9.2 Age (in years)"

label var free_medical_advice "25.0.9.3 Whether any medical service provided free"
label define free_lbl 1"Govt" 2"private" 3"no"
label values  free_medical_advice free_lbl

label var surgery "25.0.9.4 Surgery"
label define medical_lbl 1"not received" 2"received free" 3"partly free" 4"on payment"
label  values surgery medical_lbl

label var  medicine_received "25.0.9.5 Medicines received (AYUSH)"
label values  medicine_received medical_lbl

label var  medicine_received_other "25.0.9.6 Medicines received (Other than AYUSH)"
label values  medicine_received_other medical_lbl

label var  tests "25.0.9.7 X-ray/ECG/EEG/Scan"
label values  tests medical_lbl

label var  other_tests "25.0.9.8 Other diagnostic tests"
label values  other_tests medical_lbl

label var doctor_fee "25.0.9.9 Doctor's/surgeon's fee (in rupees)"

label var  medicine_AYUSH_fee "25.0.9.10 Medicines_AYUSH_exp (in rupees)"

label var  medicine_other_fee "25.0.9.11 Medicines_non-AYUSH_exp (in rupees)"

label var  tests_fee "25.0.9.12 Diagnostic test expenses (in rupees)"

label var  medical_expenses_fee "25.0.9.13 Other medical expenses (in rupees)"

label var  total_med_expense "25.0.9.14 Total medical expenses (in rupees)"

label var  transport "25.0.9.15 transport for patient (in rupees)"

label var  non_medical_expenses "25.0.9.16 other expenses incurred by household (in rupees)"

label var  total_expenditure "25.0.9.17 Total expenditure(in rupees)"

label var amt_reimbursed "25.0.9.18 Amount reimbursed by medical insurance (in rupees)"

label var major_source_finance "25.0.9.19 Major source of finance"
label define finance_lbl 1"household income/savings" 2"borrowings" 3"sale of physical assets" 4"contributions from relatives/friends" 9"other sources"
label values  major_source_finance finance_lbl

label var second_source_finance "25.0.9.20 Second source of finance"
label values  second_source_finance finance_lbl

label var hospitalisation_state "25.0.9.21 Place of hospitalisation(state)"

egen hhid=concat( fsu sub_block_num sss_num hhnum)
label var  hhid "Household ID"

egen personid=concat(hhid prsn_sl)
label var personid "Person ID"

label var fsu "First Stage Unit, sl no"
label var  sub_block_num "Sub-Block sl no"
label var  sss_num "Second-stage stratum sl. no"
label var  hhnum "Household sl. no"
label var  level " Level 8"
label var  filler "Filler"
label var  common_id " Common ID"

label define sector 1"Rural" 2"Urban"
label values sector sector
label var sector "Sector (Rural/Urban)"
