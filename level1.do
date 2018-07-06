infix dictionary
{
     str centre_round 1-3
	 str fsu 4-8
	 str round 9-10
	 str schedule 11-13
	 str sample 14-14
	 str sector 15-15
	 str nss_region 16-18
	 str district 19-20
	 str stratum 21-23
	 str sub_stratum 24-25
	 str sub_round 26-26
	 str sub_sample 27-27
	 str fod_sub_region 28-31
	 str sub_block_num 32-32
	 str sss_num 33-33
	 str hhnum 34-35
	 str level 36-37
	 str filler 38-42
	 str informant_num 43-44
	 str response_code 45-45
	 str survey_code 46-46
	 str casualty_code 47-47
	 str employee_code1 48-51
	 str employee_code2 52-55
	 str employee_code3 56-59
	 str dt_survey 60-65
	 str dt_despatch 66-71
	 str time_to_canvass 72-74
	 str num_of_invstgtr 75-75
	 str remarks1 76-76
	 str remarks2 77-77
	 str remarks3 78-78
	 str remarks4 79-79
	 str blanks 80-126
	 str nss 127-129
	 str nsc 130-132
	 str mlt 133-142
}

infix using "C:\Users\Dweepobotee Brahma\Documents\NSSO\NSSO Data\Nss71_25.0\Data\level1.dct", using ("C:\Users\Dweepobotee Brahma\Documents\NSSO\NSSO Data\Nss71_25.0\Data\R71250L01.txt")
egen hhid=concat( fsu sub_block_num sss_num hhnum)
