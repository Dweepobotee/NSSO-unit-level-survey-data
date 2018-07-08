
infix using "<insert path name to dictionary file>", using ("<insert path name to level 2 .txt file>")

***********************************
** Labelling variables and values**
***********************************

label var religion "25.0.3.5 religion of hh"
label define religion_lbl 1"Hinduism" 2"Islam" 3"Christianity" 4"Sikhism" 5"Jainism" 6"Buddhism" 7"Zoroastrianism" 9"Others"
label values religion religion_lbl

label var social_grp "25.0.3.6 social group/caste"
label define social_lbl 1"ST" 2"SC" 3"OBC" 9"Others"
label values social_grp social_lbl


label var latrine_type "25.0.3.7 type of latrine"
label define latrine_lbl 1"service" 2"pit" 3"septic tank/flush" 4"no latrine" 9"others"
label values latrine_type latrine_lbl

label var drainage_type "25.0.3.8 type of draninage"
label define drainage_lbl 1"open kutcha" 2"open pucca" 3"covered pucca" 4"undeground" 5"no drainage"
label values drainage_type drainage_lbl

label var drinking_source "25.0.3.9. Source of drinking water"
label define drinking_lbl 1"bottled water" 2"tap" 3"tube-well/hand-pump" 4"tankers" 5"pucca well" 6"tank/pond reserved for drinking" 7"river/canal" 9"Others"
label values drinking_source drinking_lbl

label var energy_cooking "25.0.3.10.source of cooking energy in last 30 days"
label define energy_lbl 1"coke/coal" 2"firewood chips" 3"LPG" 4"gobar gas" 5"dung cake" 6"charcoal" 7"kerosene" 8"electricity" 9"others" 10"no cooking arrangement"
label values energy_cooking energy_lbl

label var hh_consumer_exp "25.0.3.12 monthly consumption expenditure(Rs)"
label var medical_premium "25.0.3.11 medical insurance premium paid last year(Rs)"
label var hh_size "25.0.3.1 household size"

egen hhid=concat( fsu sub_block_num sss_num hhnum)
label var  hhid "Household ID"

label var fsu "First Stage Unit, sl no"
label var sector "Sector (rural/urban)"
label var  sub_block_num "Sub-Block sl no"
label var  sss_num "Second-stage stratum sl. no"
label var  hhnum "Household sl. no"
label var  level " Level 2"
label var  filler "Filler"
label var  common_id " Common ID"
label var  state_code " Code for State"
label var state_name " Name of the State"
label define state_code 1"Jammu & Kashmir" 2"Himachal Pradesh" 3"Punjab" 4"Chandigarh" 5"Uttaranchal" 6"Haryana" 7"Delhi" 8"Rajasthan" 9"Uttar Pradesh" 10"Bihar" 11"Sikkim" 12"Arunachal Pradesh" 13"Nagaland" 14"Manipur" 15"Mizoram" 16"Tripura" 17"Meghalaya" 18"Assam" 19"West Bengal" 20"Jharkhand" 21"Odisha" 22"Chhattisgarh" 23"Madhya Pradesh" 24"Gujarat" 25"Daman & Diu" 26"D&N Haveli" 27"Maharashtra" 28"Andhra Pradesh" 29"Karnataka" 30"Goa" 31"Lakshadweep" 32"Kerala" 33"Tamil Nadu" 34"Puducherry" 35"A&N Islands" 36"Telengana"
label values state_name state_code
label var district_code "Code for District"

label define sector 1"Rural" 2"Urban"
label values sector sector

** The hh_type variable was recoded to make labelling values easier. Compare with questionaire. **

recode hh_type (1=6) (2=7) (3=8) if sector==2
label define hhtype 1"Self employed in agriculture" 2"Self employed in non-agriculture" 3"regular wage/salary earning" 4"casual labor in agriculture" 5"casual labor in non-agriculture" 6"self-employed in urban sector" 7"regular wage/salary earning in urban sector" 8"casual labor in urban sector" 9"others"
label values hh_type hhtype
label var hh_type "25.0.3.4 Household type"


