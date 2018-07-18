
infix using "<Insert path name to dictionary file for level 9>", using ("C:\Users\Dweepobotee Brahma\Documents\NSSO\NSSO Data\Nss71_25.0\Data\R71250L09.txt")

************************************
** Labelling variables and values **
************************************

label var prsn_sl "25.0.10.1 sl no of hh members"

label var age "25.0.10.2 Age (in years)"

label var  no_living_son "25.0.10.3 Number of sons living"

label var  no_living_daughter "25.0.10.4 Number of daughters living"

label var  state_econ_dependence "25.0.10.5 state of economic dependence (code)"
label define econ_lbl 1"not dependent on others" 2"partially dependent on others" 3"fully dependent on others"
label values  state_econ_dependence econ_lbl

label var  no_dependents "25.0.10.6 no of dependents"

label var  prsn_fncly_sup_old "25.0.10.7 person financially supporting aged person (code)"
label define support_lbl 1"spouse" 2"own children" 3"grandchildren" 9"others"
label values  prsn_fncly_sup_old support_lbl

label var  living_arngmnt "25.0.10.8 living arrangements (code)"
label define living_lbl 1"living alone:as an inmate of old age home" 2"living alone:not as an inmate of old age home " 3"living with spouse only" 4"living with spouse and other members" 5"living without spouse but with: children" 6"other relations" 9" non-relations"
label values  living_arngmnt living_lbl

label var  physical_mobility "25.0.10.9 physical mobility (code)"
label define physical_lbl 1"physically immobile: confined to bed" 2"confined to home" 3"able to move outside but only in a wheelchair" 4"physically mobile"
label values  physical_mobility physical_lbl

label var  prsn_helping "25.0.10. 10 person helping (code)"

label var  curent_health "25.0.10.11 Own perception of current state of health (code)"
label define ownhealth_lbl 1"excellent/very good" 2"good/fair" 3"poor"
label  values curent_health ownhealth_lbl

label var  change_in_health "25.0.10.12 Own perception about change in state of health (code)"
label define chng_hlth_lbl 1"compared to previous year: much better" 2"somewhat better" 3"nearly the same" 4"somewhat worse" 5"worse"
label values  change_in_health chng_hlth_lbl

egen hhid=concat( fsu sub_block_num sss_num hhnum)
label var  hhid "Household ID"

egen personid=concat(hhid prsn_sl)
label var personid "Person ID"

label var fsu "First Stage Unit, sl no"
label var  sub_block_num "Sub-Block sl no"
label var  sss_num "Second-stage stratum sl. no"
label var  hhnum "Household sl. no"
label var  level " Level 9"
label var  filler "Filler"
label var  common_id " Common ID"

label define sector 1"Rural" 2"Urban"
label values sector sector
label var sector "Sector (Rural/Urban)"
