# NSSO-unit-level-survey-data
## This repository is constantly being updated.

This repository contains STATA codes on constructing unit-level survey data from NSSO's 71st round on Health and Education consumtion in .dta format from the ASCII format given to users.

### About the data
The data is provided in ASCII format and is flat/line sequential, also called a fixed width file. The data is accompanied by an excel sheet with the details of the layout of the data. The entire dataset is provided in ten txt files covering eleven blocks of data. 
To import any txt file into STATA, one has to first create a dictionary file (.dct) following the layout of the data, and then import it into STATA using the infix command through the dictionary file. 

### Layout of the data
* Block 3 (level 2): Household characteristics
* Block 4 (level 4): Demographic particulars of household members
* Block 5 (level 3): Particulars of former household members who died during the last 365 days
* Block 6 (level 5): Particulars of medical treatment received as in-patient of a medical institution during the last 365 days
* Block 7 (level 6): Expenses incurred during the last 365 days for treatment of members as in-patient of medical institution
* Block 8 (level 7): Particulars of spells of ailment of household members during the last 15 days (including hospitalisation)
* Block 9 (level 8): Expenses incurred during the last 15 days for treatment of members (not as an in-patient of medical institution)
* Block 10 (level 9):	Particulars of economic independence and state of health of persons aged 60 years and above
* Block 11 (level 10):	Particulars of pre-natal and post-natal care for women of age 15-49 years during the last 365 days

The layout of the data in each block is given in the excel file 'datalay71250.xls'.

The first 35 bytes of data in each block of data contain the 'common id'.

* The unique household id can be constructed by concatenating FSU serial number + Segment Number + Second Stage stratum Number + Household Number.
* The unique person id can be constructed by concatenating FSU serial number + Segment Number + Second Stage stratum Number + Household Number + Person Number.
* The unique hospitalization id can be constructed by concatenating FSU serial number + Segment Number + Second Stage stratum Number + Household Number + Person Number + Hospitalization Number.

* Sector refers to whether the household is located in the urban sector or rural sector where 1=Rural and 2=Urban. This information is located in byte 15 with the common id.
