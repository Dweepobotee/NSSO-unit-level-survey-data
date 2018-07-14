infix dictionary
{
     str common_id 1-35
	 str fsu 4-8
	 sector 15-15
	 str sub_block_num 32-32
	 str sss_num 33-33
	 str hhnum 34-35
	 str level 36-37
	 str filler 38-38
	 str hospitalisation_sl 39-40
	 str prsn_sl 41-42
	 age 43-45
	 free_medical_advice 46-46
	 package_component 47-53
	 doctor_fee 54-60
	 medicine 61-67
	 diagnostic_tests 68-73
	 bed_charges 74-80
	 other_expenses 81-87
	 total_med_expense 88-94
	 transport 95-100
	 non_medical_expenses 101-107
	 total_expense 108-115
	 amt_reimbursed 116-122
	 major_source_finance 123-123
	 second_source_finance 124-124
	 hospitalisation_state 125-126
	 str nss 127-129
	 str nsc 130-132
	 str mlt 133-142
}

infix using "C:\Users\Dweepobotee Brahma\Documents\NSSO\NSSO Data\Nss71_25.0\Data\level6.dct", using ("C:\Users\Dweepobotee Brahma\Documents\NSSO\NSSO Data\Nss71_25.0\Data\R71250L06.txt")

************************************
** Labelling variables and values **
************************************

label var hospitalisation_sl "25.0.7.1 Sl no of hospitalisation case"

label var prsn_sl "25.0.7.2 Sl no. of hh member"

label var age "25.0.7.3 Age (in years)"

label var free_medical_advice "25.0.7.4 Whether any medical service provided free"
label define free_lbl 1"Govt" 2"private" 3"no"
label values  free_medical_advice free_lbl

label var package_component "25.0.7.5 Package component (in rupees)"

label var doctor_fee "25.0.7.6 Doctor's/surgeon's fee (in rupees)"

label var medicine "25.0.7.7 Medicines_exp (in rupees)"

label var diagnostic_tests "25.0.7.8 Diagnostic tests exp (in rupees)"

label var bed_charges "25.0.7.9 Bed Charges (in rupees)"

label var other_expenses "25.0.7.10 Other medical expenses (in rupees)"

label var total_med_expense "25.0.7.11 Total Medical Expenses (in rupees)"

label var transport "25.0.7.12 Transport for patient (in rupees)"

label var non_medical_expenses "25.0.7.13 Other non-medical expenses incurred (in rupees)"

label var total_expense "25.0.7.14 Total expenditure (in rupees)"

label var amt_reimbursed "25.0.7.14 Amount reimbursed by medical insurance (in rupees)"

label var major_source_finance "25.0.7.15 Major source of finance"

label define finance_lbl 1"household income/savings" 2"borrowings" 3"sale of physical assets" 4"contributions from relatives/friends" 9"other sources"
label values  major_source_finance finance_lbl

label var second_source_finance "25.0.7.16 Second source of finance"
label values  second_source_finance finance_lbl

label var hospitalisation_state "25.0.7.18 Place of hospitalisation(state)"

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
label var  level " Level 6"
label var  filler "Filler"
label var  common_id " Common ID"

label define sector 1"Rural" 2"Urban"
label values sector sector
label var sector "Sector (Rural/Urban)"
