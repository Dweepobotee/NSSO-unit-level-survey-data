
infix using "<Insert path name to ductionary file>", using ("C:\Users\Dweepobotee Brahma\Documents\NSSO\NSSO Data\Nss71_25.0\Data\R71250L04.txt")

************************************
** Labelling variables and values **
************************************

label var prsn_sl "25.0.4.1 sl no of hh member"

label var relation_head "25.0.4.3 Relationship to hh head"
label define rltn_head 1"Self" 2"Spouse" 3"Married child" 4"Spouse of married child" 5"Unmarried child" 6"Grandchild" 7"father/mother/father-in-law/mother-in-law" 8"brother/sister/brother-in-law/sister-in-law" 9"servant/employees/other non-relatives"
label values relation_head rltn_head

label var sex "25.0.4.4 Sex of the individual"
label define sex_lbl 1"Male" 2"Female"
label values sex sex_lbl

label var age "25.0.4.5 Age (in years)"

label var marital_status "25.0.4.6 Marital status"
label define marital_lbl 1"Never Married" 2"Currently Married" 3"Widowed" 4"Divorced/Separated"
label values marital_status marital_lbl

label var education "25.0.4.7 General education level"
label define edu_lbl 1"Not literate" 2"Literate without any schooling" 3"Literate without formal schooling(NFEC)" 4"Literate through TLC/AEC" 5"Others" 6"Below Primary" 7"Primary" 8"Upper Primary/Middle" 10"Secondary" 11"Higher Secondary" 12"Diploma/Certificate(Secondary)" 13"Diploma/Certificate(Higher Secondary)" 14"Diploma/Certificate(Graduation and above)" 15"Graduate" 16"Postgraduate and above"
label values education edu_lbl

label var resident_hostel "25.0.4.8 Whether resident of student hostel"
label define hostel_lbl 1"Yes" 2"No"
label values resident_hostel hostel_lbl

label var hospitalised "25.0.4.9 Whether hospitalised last year"
label define hospital_lbl 1"Yes" 2"No"
label values hospitalised hospital_lbl

label var no_hospitalised "25.0.4.10 Number of times hospitalised"

label var chronic_ailment "25.0.4.11 Whether suffering from any chronic ailment"
label define chronic_lbl 1"Yes" 2"No"
label values chronic_ailment chronic_lbl

label var other_ailment_15days  "25.0.4.12 Whether suffering from any ailment in the last 15 days"
label values other_ailment_15days chronic_lbl

label var other_ailment_daybefore "25.0.4.13 Whether suffering from any ailment day before survey"
label values other_ailment_daybefore chronic_lbl

label var health_scheme "25.0.4.14 Whether covered by any health insurance scheme"
label define scheme_lbl 1"government-funded" 2"employer-funded" 3"insurance companies" 4"others" 5"not covered"
label values health_scheme scheme_lbl

label var reporting "25.0.4.15 Who reported"
label define report_lbl 1"self" 2"proxy"
label values reporting report_lbl

egen hhid=concat( fsu sub_block_num sss_num hhnum)
label var  hhid "Household ID"

egen personid=concat(hhid prsn_sl)
label var personid "Person ID"

label var fsu "First Stage Unit, sl no"
label var  sub_block_num "Sub-Block sl no"
label var  sss_num "Second-stage stratum sl. no"
label var  hhnum "Household sl. no"
label var  level " Level 4"
label var  filler "Filler"
label var  common_id " Common ID"

label define sector 1"Rural" 2"Urban"
label values sector sector
label var sector "Sector (Rural/Urban)"
