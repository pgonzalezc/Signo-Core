Class {
	#name : #TestSgIBAN,
	#superclass : #TestCase,
	#category : #'Signo-Core-Tests'
}

{ #category : #tests }
TestSgIBAN >> testErroneousLengthIBAN [
	| iban |
	iban := SgIBAN fromString: 'AL47 2121 1009 0000 0002 3569 8741 0'.
	self assert: iban errors isNotEmpty.
	self assert: iban errors size equals: 2
]

{ #category : #tests }
TestSgIBAN >> testIBANAlbania [
	| iban |
	iban := SgIBAN fromString: 'AL47 2121 1009 0000 0002 3569 8741'.
	self assert: iban countryCode equals: 'AL'.
	self assert: iban checkDigits equals: '47'.
	self assert: iban nationalBankCode equals: '212'.
	self assert: iban branchCode equals: '1100'.
	self assert: iban nationalCheckDigits equals: '9'.
	self assert: iban accountNumber equals: '0000000235698741'.
	self assert: iban isValid
]

{ #category : #tests }
TestSgIBAN >> testIBANAndorra [
	| iban |
	iban := SgIBAN fromString: 'AD12 0001 2030 2003 5910 0100'.
	self assert: iban countryCode equals: 'AD'.
	self assert: iban checkDigits equals: '12'.
	self assert: iban nationalBankCode equals: '0001'.
	self assert: iban branchCode equals: '2030'.
	self assert: iban accountNumber equals: '200359100100'.

	self assert: iban isValid
]

{ #category : #tests }
TestSgIBAN >> testIBANAustria [
	| iban |
	iban := SgIBAN fromString: 'AT61 1904 3002 3457 3201'.
	self assert: iban countryCode equals: 'AT'.
	self assert: iban checkDigits equals: '61'.
	self assert: iban nationalBankCode equals: '19043'.
	
	self assert: iban accountNumber equals: '00234573201'.
	self assert: iban isValid
]

{ #category : #tests }
TestSgIBAN >> testIBANAzerbaijan [
	| iban |
	iban := SgIBAN fromString: 'AZ21 NABZ 0000 0000 1370 1000 1944'.
	self assert: iban countryCode equals: 'AZ'.
	self assert: iban checkDigits equals: '21'.
	self assert: iban nationalBankCode equals: 'NABZ'.
	self assert: iban accountNumber equals: '00000000137010001944'.
	self assert: iban isValid
]

{ #category : #tests }
TestSgIBAN >> testIBANBahrain [
	| iban |
	iban := SgIBAN fromString: 'BH67 BMAG 0000 1299 1234 56'.
	self assert: iban countryCode equals: 'BH'.
	self assert: iban checkDigits equals: '67'.
	self assert: iban nationalBankCode equals: 'BMAG'.
	self assert: iban accountNumber equals: '00001299123456'.
	self assert: iban isValid
]

{ #category : #tests }
TestSgIBAN >> testIBANBelarus [
	| iban |
	iban := SgIBAN fromString: 'BY13 NBRB 3600 9000 0000 2Z00 AB00'.
	self assert: iban countryCode equals: 'BY'.
	self assert: iban checkDigits equals: '13'.
	self assert: iban nationalBankCode equals: 'NBRB'.
	self assert: iban balanceAccountNumber equals: '3600'.
	self assert: iban accountNumber equals: '900000002Z00AB00'.
	self assert: iban isValid
]

{ #category : #tests }
TestSgIBAN >> testIBANBelgium [
	| iban |
	iban := SgIBAN fromString: 'BE68 5390 0754 7034'.
	self assert: iban countryCode equals: 'BE'.
	self assert: iban checkDigits equals: '68'.
	self assert: iban nationalBankCode equals: '539'.
	self assert: iban accountNumber equals: '0075470'.
	self assert: iban nationalCheckDigits equals: '34'.
	self assert: iban isValid
]

{ #category : #tests }
TestSgIBAN >> testIBANBosniaAndHerzegovina [
	| iban |
	iban := SgIBAN fromString: 'BA39 1290 0794 0102 8494'.
	self assert: iban countryCode equals: 'BA'.
	self assert: iban checkDigits equals: '39'.
	self assert: iban nationalBankCode equals: '129'.
	self assert: iban branchCode equals: '007'.
	self assert: iban accountNumber equals: '94010284'.
	self assert: iban nationalCheckDigits equals: '94'.
	self assert: iban isValid
]

{ #category : #tests }
TestSgIBAN >> testIBANBrazil [
	| iban |
	iban := SgIBAN fromString: 'BR15 0000 0000 0000 1093 2840 814 P2'.
	self assert: iban countryCode equals: 'BR'.
	self assert: iban checkDigits equals: '15'.
	self assert: iban nationalBankCode equals: '00000000'.
	self assert: iban branchCode equals: '00001'.
	self assert: iban accountNumber equals: '0932840814'.
	self assert: iban accountType equals: 'P'.
	self assert: iban ownerAccountNumber equals: '2'.
	self assert: iban isValid
]

{ #category : #tests }
TestSgIBAN >> testIBANBulgaria [
	| iban |
	iban := SgIBAN fromString: 'BG80 BNBG 9661 1020 3456 78'.
	self assert: iban countryCode equals: 'BG'.
	self assert: iban checkDigits equals: '80'.
	self assert: iban bicBankCode equals: 'BNBG'.
	self assert: iban branchNumber equals: '9661'.
	self assert: iban accountType  equals: '10'.
	self assert: iban accountNumber equals: '20345678'.
	
	self assert: iban isValid
]

{ #category : #tests }
TestSgIBAN >> testIBANCostaRica [
	| iban |
	iban := SgIBAN fromString: 'CR05 0152 0200 1026 2840 66'.
	self assert: iban country equals: 'CR'.
	self assert: iban checkDigits equals: '05'.
	self assert: iban bankCode equals: '152'.
	self assert: iban accountNumber equals: '02001026284066'.
	self assert: iban isValid
]

{ #category : #tests }
TestSgIBAN >> testIBANCroatia [
	| iban |
	iban := SgIBAN fromString: 'HR12 1001 0051 8630 0016 0'.
	self assert: iban country equals: 'HR'.
	self assert: iban checkDigits equals: '12'.
	self assert: iban bankCode equals: '1001005'.
	self assert: iban accountNumber equals: '1863000160'.
	self assert: iban isValid
]

{ #category : #tests }
TestSgIBAN >> testIBANCyprus [
	| iban |
	iban := SgIBAN fromString: 'CY17 0020 0128 0000 0012 0052 7600'.
	self assert: iban country equals: 'CY'.
	self assert: iban checkDigits equals: '17'.
	self assert: iban nationalBankCode equals: '002'.
	self assert: iban branchCode equals: '00128'.
	self assert: iban accountNumber equals: '0000001200527600'.
	self assert: iban isValid
]

{ #category : #tests }
TestSgIBAN >> testIBANCzechRepublic [
	| iban |
	iban := SgIBAN fromString: 'CZ65 0800 0000 1920 0014 5399'.
	self assert: iban country equals: 'CZ'.
	self assert: iban checkDigits equals: '65'.
	self assert: iban nationalBankCode equals: '0800'.
	self assert: iban accountNumberPrefix equals: '000019'.
	self assert: iban accountNumber equals: '2000145399'.
	self assert: iban isValid
]

{ #category : #tests }
TestSgIBAN >> testIBANDenmark [
	| iban |
	iban := SgIBAN fromString: 'DK50 0040 0440 1162 43'.
	self assert: iban country equals: 'DK'.
	self assert: iban checkDigits equals: '50'.
	self assert: iban nationalBankCode equals: '0040'.
	self assert: iban accountNumber equals: '044011624'.
	self assert: iban nationalCheckDigits equals: '3'.
	self assert: iban isValid
]

{ #category : #tests }
TestSgIBAN >> testIBANDominicanRepublic [
	| iban |
	iban := SgIBAN fromString: 'DO28 BAGR 0000 0001 2124 5361 1324'.
	self assert: iban country equals: 'DO'.
	self assert: iban checkDigits equals: '28'.
	self assert: iban bankIdentifier equals: 'BAGR'.
	self assert: iban accountNumber equals: '00000001212453611324'.
	self assert: iban isValid
]

{ #category : #tests }
TestSgIBAN >> testIBANEastTimor [
	| iban |
	iban := SgIBAN fromString: 'TL38 0080 0123 4567 8910 157 '.
	self assert: iban countryCode equals: 'TL'.
	self assert: iban checkDigits equals: '38'.
	self assert: iban bankIdentifier  equals: '008'.
	self assert: iban accountNumber equals: '00123456789101'.
	self assert: iban nationalCheckDigits equals: '57'.
	self assert: iban isValid
]

{ #category : #tests }
TestSgIBAN >> testIBANEgypt [
	| iban |
	iban := SgIBAN fromString: ' EG 38 0019 0005 00000000263180002'.
	self assert: iban country equals: 'EG'.
	self assert: iban checkDigits equals: '38'.
	self assert: iban nationalBankCode equals: '0019'.
	self assert: iban branchCode equals: '0005'.
	self assert: iban accountNumber equals: '00000000263180002'.
	self assert: iban isValid
]

{ #category : #tests }
TestSgIBAN >> testIBANElSalvador [
	| iban |
	iban := SgIBAN fromString: 'SV62CENR00000000000000700025'.
	self assert: iban country equals: 'SV'.
	self assert: iban checkDigits equals: '62'.
	self assert: iban nationalBankCode equals: 'CENR'.
	self assert: iban accountNumber equals: '00000000000000700025'.
	self assert: iban isValid
]

{ #category : #tests }
TestSgIBAN >> testIBANEstonia [
	| iban |
	iban := SgIBAN fromString: 'EE38 2200 2210 2014 5685'.
	self assert: iban country equals: 'EE'.
	self assert: iban checkDigits equals: '38'.
	self assert: iban nationalBankCode equals: '22'.
	self assert: iban branchCode equals: '00'.
	self assert: iban accountNumber equals: '22102014568'.
	self assert: iban nationalCheckDigits equals: '5'.
	self assert: iban isValid
]

{ #category : #tests }
TestSgIBAN >> testIBANFaroeIslands [
	| iban |
	iban := SgIBAN fromString: 'FO62 6460 0001 6316 34'.
	self assert: iban country equals: 'FO'.
	self assert: iban checkDigits equals: '62'.
	self assert: iban nationalBankCode equals: '6460'.
	self assert: iban accountNumber equals: '000163163'.
	self assert: iban nationalCheckDigits equals: '4'.
	self assert: iban isValid
]

{ #category : #tests }
TestSgIBAN >> testIBANFinland [
	| iban |
	iban := SgIBAN fromString: 'FI21 1234 5600 0007 85'.
	self assert: iban country equals: 'FI'.
	self assert: iban checkDigits equals: '21'.
	self assert: iban nationalBankCode equals: '123456'.
	self assert: iban accountNumber equals: '0000078'.
	self assert: iban nationalCheckDigits equals: '5'.
	self assert: iban isValid
]

{ #category : #tests }
TestSgIBAN >> testIBANFrance [
	| iban |
	iban := SgIBAN fromString: 'FR14 2004 1010 0505 0001 3M02 606'.
	self assert: iban country equals: 'FR'.
	self assert: iban checkDigits equals: '14'.
	self assert: iban nationalBankCode equals: '20041'.
	self assert: iban branchCode equals: '01005'.
	self assert: iban accountNumber equals: '0500013M026'.
	self assert: iban nationalCheckDigits equals: '06'.
	self assert: iban isValid
]

{ #category : #tests }
TestSgIBAN >> testIBANGeorgia [
	| iban |
	iban := SgIBAN fromString: 'GE29 NB00 0000 0101 9049 17'.
	self assert: iban country equals: 'GE'.
	self assert: iban checkDigits equals: '29'.
	self assert: iban nationalBankCode equals: 'NB'.
	self assert: iban accountNumber equals: '0000000101904917'.
	self assert: iban isValid
]

{ #category : #tests }
TestSgIBAN >> testIBANGermany [
	| iban |
	iban := SgIBAN fromString: 'DE89 3704 0044 0532 0130 00'.
	self assert: iban country equals: 'DE'.
	self assert: iban checkDigits equals: '89'.
	self assert: iban nationalBankCode equals: '37040044'.
	self assert: iban accountNumber equals: '0532013000'.
	self assert: iban isValid
]

{ #category : #tests }
TestSgIBAN >> testIBANGibraltar [
	| iban |
	iban := SgIBAN fromString: 'GI75 NWBK 0000 0000 7099 453'.
	self assert: iban country equals: 'GI'.
	self assert: iban checkDigits equals: '75'.
	self assert: iban bicBankCode equals: 'NWBK'.
	self assert: iban accountNumber equals: '000000007099453'.
	self assert: iban isValid
]

{ #category : #tests }
TestSgIBAN >> testIBANGreece [
	| iban |
	iban := SgIBAN fromString: 'GR16 0110 1250 0000 0001 2300 695'.
	self assert: iban country equals: 'GR'.
	self assert: iban checkDigits equals: '16'.
	self assert: iban nationalBankCode equals: '011'.
	self
		assert: iban branchCode
		equals: '0125'. self
		assert: iban accountNumber
		equals: '0000000012300695'.
	self assert: iban isValid
]

{ #category : #tests }
TestSgIBAN >> testIBANGreenland [
	| iban |
	iban := SgIBAN fromString: 'GL89 6471 0001 0002 06'.
	self assert: iban country equals: 'GL'.
	self assert: iban checkDigits equals: '89'.
	self assert: iban nationalBankCode equals: '6471'.
	self assert: iban accountNumber equals: '000100020'.
	self assert: iban nationalCheckDigits  equals: '6'.
	self assert: iban isValid
]

{ #category : #tests }
TestSgIBAN >> testIBANGuatemala [
	| iban |
	iban := SgIBAN fromString: 'GT82 TRAJ 0102 0000 0012 1002 9690'.
	self assert: iban country equals: 'GT'.
	self assert: iban checkDigits equals: '82'.
	self assert: iban nationalBankCode equals: 'TRAJ'.
	self assert: iban currencyCode equals: '01'.
	self assert: iban accountType equals: '02'.
	self assert: iban accountNumber equals: '0000001210029690'.
	self assert: iban isValid
]

{ #category : #tests }
TestSgIBAN >> testIBANHungary [
	| iban |
	iban := SgIBAN fromString: 'HU42 1177 3016 1111 1018 0000 0000'.
	self assert: iban country equals: 'HU'.
	self assert: iban checkDigits equals: '42'.
	self assert: iban nationalBankCode equals: '117'.
	self assert: iban branchCode equals: '7301'.
	self assert: iban accountNumber equals: '6111110180000000'.
	self assert: iban nationalCheckDigits equals: '0'.
	self assert: iban isValid
]

{ #category : #tests }
TestSgIBAN >> testIBANIceland [
	| iban |
	iban := SgIBAN fromString: 'IS14 0159 2600 7654 5510 7303 39'.
	self assert: iban country equals: 'IS'.
	self assert: iban checkDigits equals: '14'.
	self assert: iban nationalBankCode equals: '01'.
	self assert: iban branchCode equals: '59'.
	self assert: iban accountType equals: '26'.
	self assert: iban accountNumber equals: '007654'.
	self assert: iban nationalIdentificationNumber equals: '5510730339'.
	self assert: iban isValid
]

{ #category : #tests }
TestSgIBAN >> testIBANIraq [
	| iban |
	iban := SgIBAN fromString: 'IQ98 NBIQ 8501 2345 6789 012'.
	self assert: iban country equals: 'IQ'.
	self assert: iban checkDigits equals: '98'.
	self assert: iban bicBankCode equals: 'NBIQ'.
	self assert: iban branchCode equals: '850'.
	self assert: iban accountNumber equals: '123456789012'.
	self assert: iban isValid
]

{ #category : #tests }
TestSgIBAN >> testIBANIreland [
	| iban |
	iban := SgIBAN fromString: 'IE29 AIBK 9311 5212 3456 78'.
	self assert: iban country equals: 'IE'.
	self assert: iban checkDigits equals: '29'.
	self assert: iban bicBankCode equals: 'AIBK'.
	self assert: iban branchCode equals: '931152'.
	self assert: iban accountNumber equals: '12345678'.
	self assert: iban isValid
]

{ #category : #tests }
TestSgIBAN >> testIBANIsrael [
	| iban |
	iban := SgIBAN fromString: 'IL62 0108 0000 0009 9999 999'.
	self assert: iban country equals: 'IL'.
	self assert: iban checkDigits equals: '62'.
	self assert: iban nationalBankCode equals: '010'.
	self assert: iban branchCode equals: '800'.
	self assert: iban accountNumber equals: '0000099999999'.
	self assert: iban isValid
]

{ #category : #tests }
TestSgIBAN >> testIBANItaly [
	| iban |
	iban := SgIBAN fromString: 'IT60 X054 2811 1010 0000 0123 456'.
	self assert: iban country equals: 'IT'.
	self assert: iban checkDigits equals: '60'.
	self assert: iban checkCharacter equals: 'X'.
	self assert: iban nationalBankCode equals: '05428'.
	self assert: iban branchCode equals: '11101'.
	self assert: iban accountNumber equals: '000000123456'.
	self assert: iban isValid
]

{ #category : #tests }
TestSgIBAN >> testIBANJordan [
	| iban |
	iban := SgIBAN fromString: 'JO94 CBJO 0010 0000 0000 0131 000302'.
	self assert: iban country equals: 'JO'.
	self assert: iban checkDigits equals: '94'.
	self assert: iban nationalBankCode equals: 'CBJO'.
	self assert: iban branchCode equals: '0010'.
	self assert: iban accountNumber equals: '000000000131000302'.
	self assert: iban isValid
]

{ #category : #tests }
TestSgIBAN >> testIBANKazakhstan [
	| iban |
	iban := SgIBAN fromString: 'KZ86 125K ZT50 0410 0100'.
	self assert: iban country equals: 'KZ'.
	self assert: iban checkDigits equals: '86'.
	self assert: iban nationalBankCode equals: '125'.
	self assert: iban accountNumber equals: 'KZT5004100100'.
	self assert: iban isValid
]

{ #category : #tests }
TestSgIBAN >> testIBANKosovo [
	| iban |
	iban := SgIBAN fromString: 'XK05 1212 0123 4567 8906'.
	self assert: iban country equals: 'XK'.
	self assert: iban checkDigits equals: '05'.
	self assert: iban nationalBankCode equals: '1212'.
	self assert: iban accountNumber equals: '012345678906'.
	self assert: iban isValid
]

{ #category : #tests }
TestSgIBAN >> testIBANKuwait [
	| iban |
	iban := SgIBAN fromString: 'KW81 CBKU 0000 0000 0000 1234 560101'.
	self assert: iban country equals: 'KW'.
	self assert: iban checkDigits equals: '81'.
	self assert: iban nationalBankCode equals: 'CBKU'.
	self assert: iban accountNumber equals: '0000000000001234560101'.
	self assert: iban isValid
]

{ #category : #tests }
TestSgIBAN >> testIBANLatvia [
	| iban |
	iban := SgIBAN fromString: 'LV80 BANK 0000 4351 9500 1'.
	self assert: iban country equals: 'LV'.
	self assert: iban checkDigits equals: '80'.
	self assert: iban nationalBankCode equals: 'BANK'.
	self assert: iban accountNumber equals: '0000435195001'.
	self assert: iban isValid
]

{ #category : #tests }
TestSgIBAN >> testIBANLebanon [
	| iban |
	iban := SgIBAN fromString: 'LB62 0999 0000 0001 0019 0122 9114'.
	self assert: iban country equals: 'LB'.
	self assert: iban checkDigits equals: '62'.
	self assert: iban nationalBankCode equals: '0999'.
	self assert: iban accountNumber equals: '00000001001901229114'.
	self assert: iban isValid
]

{ #category : #tests }
TestSgIBAN >> testIBANLibya [
	| iban |
	iban := SgIBAN fromString: 'LY83 002 048 000020100120361'.
	self assert: iban countryCode equals: 'LY'.
	self assert: iban checkDigits  equals: '83'.
	self assert: iban nationalBankCode  equals: '002'.
	self assert: iban branchCode equals: '048'.
	self assert: iban accountNumber equals: '000020100120361'.
	self assert: iban isValid
]

{ #category : #tests }
TestSgIBAN >> testIBANLiechtenstein [
	| iban |
	iban := SgIBAN fromString: 'LI21 0881 0000 2324 013A A'.
	self assert: iban country equals: 'LI'.
	self assert: iban checkDigits equals: '21'.
	self assert: iban nationalBankCode equals: '08810'.
	self assert: iban accountNumber equals: '0002324013AA'.
	self assert: iban isValid
]

{ #category : #tests }
TestSgIBAN >> testIBANLithuania [
	| iban |
	iban := SgIBAN fromString: 'LT12 1000 0111 0100 1000'.
	self assert: iban country equals: 'LT'.
	self assert: iban checkDigits equals: '12'.
	self assert: iban nationalBankCode equals: '10000'.
	self assert: iban accountNumber equals: '11101001000'.
	self assert: iban isValid
]

{ #category : #tests }
TestSgIBAN >> testIBANLuxembourg [
	| iban |
	iban := SgIBAN fromString: 'LU28 0019 4006 4475 0000'.
	self assert: iban country equals: 'LU'.
	self assert: iban checkDigits equals: '28'.
	self assert: iban nationalBankCode equals: '001'.
	self assert: iban accountNumber equals: '9400644750000'.
	self assert: iban isValid
]

{ #category : #tests }
TestSgIBAN >> testIBANMalta [
	| iban |
	iban := SgIBAN fromString: 'MT84 MALT 0110 0001 2345 MTLC AST0 01S'.
	self assert: iban country equals: 'MT'.
	self assert: iban checkDigits equals: '84'.
	self assert: iban nationalBankCode equals: 'MALT'.
	self assert: iban branchCode equals: '01100'.
	self assert: iban accountNumber equals: '0012345MTLCAST001S'.
	self assert: iban isValid
]

{ #category : #tests }
TestSgIBAN >> testIBANMauritania [
	| iban |
	iban := SgIBAN fromString: 'MR13 0002 0001 0100 0012 3456 753'.
	self assert: iban country equals: 'MR'.
	self assert: iban checkDigits equals: '13'.
	self assert: iban nationalBankCode equals: '00020'.
	self assert: iban branchCode equals: '00101'.
	self assert: iban accountNumber equals: '00001234567'.
	self assert: iban nationalCheckDigits equals: '53'.
	self assert: iban isValid
]

{ #category : #tests }
TestSgIBAN >> testIBANMauritius [
	| iban |
	iban := SgIBAN fromString: 'MU17 BOMM 0101 1010 3030 0200 000M UR'.
	self assert: iban country equals: 'MU'.
	self assert: iban checkDigits equals: '17'.
	self assert: iban nationalBankCode equals: 'BOMM01'.
	self assert: iban branchCode equals: '01'.
	self assert: iban accountNumber equals: '101030300200000'.
	self assert: iban currencyCode equals: 'MUR'.
	self assert: iban isValid
]

{ #category : #tests }
TestSgIBAN >> testIBANMoldova [
	| iban |
	iban := SgIBAN fromString: 'MD24 AG00 0225 1000 1310 4168'.
	self assert: iban country equals: 'MD'.
	self assert: iban checkDigits equals: '24'.
	self assert: iban nationalBankCode equals: 'AG'.
	self assert: iban accountNumber equals: '000225100013104168'.
	self assert: iban isValid
]

{ #category : #tests }
TestSgIBAN >> testIBANMonaco [
	| iban |
	iban := SgIBAN fromString: 'MC58 1122 2000 0101 2345 6789 030'.
	self assert: iban country equals: 'MC'.
	self assert: iban checkDigits equals: '58'.
	self assert: iban nationalBankCode equals: '11222'.
	self assert: iban branchCode equals: '00001'.
	self assert: iban accountNumber equals: '01234567890'.
	self assert: iban nationalCheckDigits  equals: '30'.
	self assert: iban isValid
]

{ #category : #tests }
TestSgIBAN >> testIBANMontenegro [ 	
	| iban |
	iban := SgIBAN fromString: 'ME25 5050 0001 2345 6789 51'.
	self assert: iban country equals: 'ME'.
	self assert: iban checkDigits equals: '25'.
	self assert: iban bankCode equals: '505'.
	self assert: iban accountNumber equals: '0000123456789'.
	self assert: iban nationalCheckDigits equals: '51'.
	self assert: iban isValid
]

{ #category : #tests }
TestSgIBAN >> testIBANNetherlands [
	| iban |
	iban := SgIBAN fromString: 'NL91 ABNA 0417 1643 00'.
	self assert: iban country equals: 'NL'.
	self assert: iban checkDigits equals: '91'.
	self assert: iban bicBankCode equals: 'ABNA'.
	self assert: iban accountNumber equals: '0417164300'.
	self assert: iban isValid
]

{ #category : #tests }
TestSgIBAN >> testIBANNorthMacedonia [
	| iban |
	iban := SgIBAN fromString: 'MK07 2501 2000 0058 984'.
	self assert: iban country equals: 'MK'.
	self assert: iban checkDigits equals: '07'.
	self assert: iban nationalBankCode equals: '250'.
	self assert: iban accountNumber equals: '1200000589'.
	self assert: iban nationalCheckDigits equals: '84'.
	self assert: iban isValid
]

{ #category : #tests }
TestSgIBAN >> testIBANNorway [
	| iban |
	iban := SgIBAN fromString: 'NO93 8601 1117 947'.
	self assert: iban country equals: 'NO'.
	self assert: iban checkDigits equals: '93'.
	self assert: iban nationalBankCode equals: '8601'.
	self assert: iban accountNumber equals: '111794'.
	self assert: iban nationalCheckDigits equals: '7'.
	self assert: iban isValid
]

{ #category : #tests }
TestSgIBAN >> testIBANPakistan [
	| iban |
	iban := SgIBAN fromString: 'PK36 SCBL 0000 0011 2345 6702'.
	self assert: iban country equals: 'PK'.
	self assert: iban checkDigits equals: '36'.
	self assert: iban nationalBankCode equals: 'SCBL'.
	self assert: iban accountNumber equals: '0000001123456702'.
	
	self assert: iban isValid
]

{ #category : #tests }
TestSgIBAN >> testIBANPalestinianTerritories [
	| iban |
	iban := SgIBAN fromString: 'PS92 PALS 0000 0000 0400 1234 5670 2'.
	self assert: iban country equals: 'PS'.
	self assert: iban checkDigits equals: '92'.
	self assert: iban nationalBankCode equals: 'PALS'.
	self assert: iban accountNumber equals: '000000000400123456702'.
	self assert: iban isValid
]

{ #category : #tests }
TestSgIBAN >> testIBANPoland [
	| iban |
	iban := SgIBAN fromString: 'PL61 1090 1014 0000 0712 1981 2874'.
	self assert: iban countryCode equals: 'PL'.
	self assert: iban checkDigits equals: '61'.
	self assert: iban nationalBankCode equals: '109'.
	self assert: iban branchCode equals: '0101'.
	self assert: iban nationalCheckDigits equals: '4'.
	self assert: iban accountNumber equals: '0000071219812874'.
	self assert: iban isValid
]

{ #category : #tests }
TestSgIBAN >> testIBANPortugal [
	| iban |
	iban := SgIBAN fromString: 'PT50 0002 0123 1234 5678 9015 4'.
	self assert: iban countryCode equals: 'PT'.
	self assert: iban checkDigits equals: '50'.
	self assert: iban nationalBankCode equals: '0002'.
	self assert: iban branchCode equals: '0123'.
	self assert: iban accountNumber equals: '12345678901'.
	self assert: iban nationalCheckDigits equals: '54'.
	self assert: iban isValid
]

{ #category : #tests }
TestSgIBAN >> testIBANQatar [
	| iban |
	iban := SgIBAN fromString: 'QA58 DOHB 0000 1234 5678 90AB CDEF G'.
	self assert: iban countryCode equals: 'QA'.
	self assert: iban checkDigits equals: '58'.
	self assert: iban nationalBankCode equals: 'DOHB'.
	
	self assert: iban accountNumber equals: '00001234567890ABCDEFG'.
	
	self assert: iban isValid
]

{ #category : #tests }
TestSgIBAN >> testIBANRomania [
	| iban |
	iban := SgIBAN fromString: 'RO49 AAAA 1B31 0075 9384 0000'.
	self assert: iban countryCode equals: 'RO'.
	self assert: iban checkDigits equals: '49'.
	self assert: iban bicBankCode equals: 'AAAA'.
	self assert: iban accountNumber equals: '1B31007593840000'.
	self assert: iban isValid
]

{ #category : #tests }
TestSgIBAN >> testIBANSaintLucia [
	| iban |
	iban := SgIBAN fromString: 'LC55 HEMM 0001 0001 0012 0012 00023015'.
	self assert: iban countryCode equals: 'LC'.
	self assert: iban checkDigits equals: '55'.
	self assert: iban bankCode equals: 'HEMM'.
	self assert: iban accountNumber equals: '000100010012001200023015'.
	self assert: iban isValid
]

{ #category : #tests }
TestSgIBAN >> testIBANSanMarino [
	| iban |
	iban := SgIBAN fromString: 'SM86 U032 2509 8000 0000 0270 100'.
	self assert: iban countryCode equals: 'SM'.
	self assert: iban checkDigits equals: '86'.
	self assert: iban nationalCheckDigits equals: 'U'.
	self assert: iban nationalBankCode equals: '03225'.
	self assert: iban branchCode equals: '09800'.
	self assert: iban accountNumber equals: '000000270100'.
	self assert: iban isValid
]

{ #category : #tests }
TestSgIBAN >> testIBANSaoTomeAndPrincipe [
	| iban |
	iban := SgIBAN fromString: 'ST68 0001 0001 0051 8453 1011 2'.
	self assert: iban countryCode equals: 'ST'.
	self assert: iban checkDigits equals: '68'.
	self assert: iban nationalBankCode equals: '0001'.
	self assert: iban branchCode equals: '0001'.
	self assert: iban accountNumber equals: '0051845310112'.
	self assert: iban isValid
]

{ #category : #tests }
TestSgIBAN >> testIBANSaudiArabia [
	| iban |
	iban := SgIBAN fromString: 'SA03 8000 0000 6080 1016 7519'.
	self assert: iban countryCode equals: 'SA'.
	self assert: iban checkDigits equals: '03'.
	self assert: iban nationalBankCode equals: '80'.
	
	self assert: iban accountNumber equals: '000000608010167519'.
	self assert: iban isValid
]

{ #category : #tests }
TestSgIBAN >> testIBANSerbia [
	| iban |
	iban := SgIBAN fromString: 'RS35 2600 0560 1001 6113 79'.
	self assert: iban countryCode equals: 'RS'.
	self assert: iban checkDigits equals: '35'.
	self assert: iban nationalBankCode equals: '260'.
	self assert: iban accountNumber equals: '0056010016113'.
	self assert: iban nationalCheckDigits  equals: '79'.
	self assert: iban isValid
]

{ #category : #tests }
TestSgIBAN >> testIBANSeychelles [
	| iban |
	iban := SgIBAN fromString: 'SC18 SSCB 1101 0000 0000 0000 1497 USD'.
	self assert: iban countryCode equals: 'SC'.
	self assert: iban checkDigits equals: '18'.
	self assert: iban bankCode equals: 'SSCB11'.
	self assert: iban accountType equals: '01'. 
	self assert: iban accountNumber equals: '0000000000001497'.
	self assert: iban currencyCode equals: 'USD'.
	self assert: iban isValid
]

{ #category : #tests }
TestSgIBAN >> testIBANSlovakia [
	| iban |
	iban := SgIBAN fromString: 'SK31 1200 0000 1987 4263 7541'.
	self assert: iban countryCode equals: 'SK'.
	self assert: iban checkDigits equals: '31'.
	self assert: iban nationalBankCode equals: '1200'.
	self assert: iban accountNumberPrefix equals: '000019'.
	self assert: iban accountNumber equals: '8742637541'.
	
	self assert: iban isValid
]

{ #category : #tests }
TestSgIBAN >> testIBANSlovenia [
	| iban |
	iban := SgIBAN fromString: 'SI56 2633 0001 2039 086'.
	self assert: iban countryCode equals: 'SI'.
	self assert: iban checkDigits equals: '56'.
	self assert: iban nationalBankCode equals: '26'.
	self assert: iban branchCode equals: '330'.
	self assert: iban accountNumber equals: '00120390'.
	self assert: iban nationalCheckDigits equals: '86'.
	self assert: iban isValid
]

{ #category : #tests }
TestSgIBAN >> testIBANSpain [
	| iban |
	iban := SgIBAN fromString: 'ES79 2100 0813 6101 2345 6789'.
	self assert: iban country equals: 'ES'.
	self assert: iban nationalBankCode equals: '2100'.
	self assert: iban branchCode equals: '0813'.
	self assert: iban nationalCheckDigits equals: '61'.
	self assert: iban accountNumber equals: '0123456789'.
	self assert: iban bban equals: '21000813610123456789'.
	self assert: iban asString equals: 'ES79 2100 0813 61 0123456789'.
	self assert: iban isValid
]

{ #category : #tests }
TestSgIBAN >> testIBANSudan [
	| iban |
	iban := SgIBAN fromString: 'SD21 2901 0501 2340 01'.
	self assert: iban countryCode equals: 'SD'.
	self assert: iban checkDigits equals: '21'.
	self assert: iban nationalBankCode equals: '29'.
	
	self assert: iban accountNumber equals: '010501234001'.
	
	self assert: iban isValid
]

{ #category : #tests }
TestSgIBAN >> testIBANSweden [
	| iban |
	iban := SgIBAN fromString: 'SE45 5000 0000 0583 9825 7466'.
	self assert: iban countryCode equals: 'SE'.
	self assert: iban checkDigits equals: '45'.
	self assert: iban nationalBankCode equals: '500'.
	self assert: iban accountNumber equals: '00000058398257466'.
	self assert: iban isValid
]

{ #category : #tests }
TestSgIBAN >> testIBANSwitzerland [
	| iban |
	iban := SgIBAN fromString: 'CH93 0076 2011 6238 5295 7'.
	self assert: iban countryCode equals: 'CH'.
	self assert: iban checkDigits equals: '93'.
	self assert: iban nationalBankCode equals: '00762'.
	self assert: iban accountCode equals: '011623852957'.
	self assert: iban isValid
]

{ #category : #tests }
TestSgIBAN >> testIBANTunisia [
	| iban |
	iban := SgIBAN fromString: 'TN59 1000 6035 1835 9847 8831'.
	self assert: iban countryCode equals: 'TN'.
	self assert: iban checkDigits equals: '59'.
	self assert: iban nationalBankCode equals: '10'.
	self assert: iban branchCode equals: '006'.
	self assert: iban accountNumber equals: '0351835984788'.
	self assert: iban nationalCheckDigits equals: '31'.
	self assert: iban isValid
]

{ #category : #tests }
TestSgIBAN >> testIBANTurkey [
	| iban |
	iban := SgIBAN fromString: 'TR33 0006 1005 1978 6457 8413 26'.
	self assert: iban countryCode equals: 'TR'.
	self assert: iban checkDigits equals: '33'.
	self assert: iban nationalBankCode equals: '00061'.
	
	self assert: iban accountNumber equals: '0519786457841326'.
	
	self assert: iban isValid
]

{ #category : #tests }
TestSgIBAN >> testIBANUkraine [
	| iban |
	iban := SgIBAN fromString: 'UA21 3223 1300 0002 6007 2335 6600 1'.
	self assert: iban countryCode equals: 'UA'.
	self assert: iban checkDigits equals: '21'.
	self assert: iban bankCode equals: '322313'.
	self assert: iban accountNumber equals: '0000026007233566001'.
	self assert: iban isValid
]

{ #category : #tests }
TestSgIBAN >> testIBANUnitedArabEmirates [
	| iban |
	iban := SgIBAN fromString: 'AE07 0331 2345 6789 0123 456'.
	self assert: iban countryCode equals: 'AE'.
	self assert: iban checkDigits equals: '07'.
	self assert: iban nationalBankCode equals: '033'.
	self assert: iban accountNumber equals: '1234567890123456'.
	self assert: iban isValid
]

{ #category : #tests }
TestSgIBAN >> testIBANUnitedKingdom [
	| iban |
	iban := SgIBAN fromString: 'GB29 NWBK 6016 1331 9268 19'.
	self assert: iban countryCode equals: 'GB'.
	self assert: iban checkDigits equals: '29'.
	self assert: iban bicBankCode equals: 'NWBK'.
	self assert: iban branchCode equals: '601613'.
	self assert: iban accountNumber equals: '31926819'.
	self assert: iban isValid
]

{ #category : #tests }
TestSgIBAN >> testIBANVaticanCity [
	| iban |
	iban := SgIBAN fromString: 'VA59 001 1230 0001 2345 678'.
	self assert: iban countryCode equals: 'VA'.
	self assert: iban checkDigits equals: '59'.
	self assert: iban nationalBankCode equals: '001'.
	
	self assert: iban accountNumber equals: '123000012345678'.
	self assert: iban isValid
]

{ #category : #tests }
TestSgIBAN >> testIBANVirginIslandsBritish [
	| iban |
	iban := SgIBAN fromString: 'VG96 VPVG 0000 0123 4567 8901'.
	self assert: iban countryCode equals: 'VG'.
	self assert: iban checkDigits equals: '96'.
	self assert: iban nationalBankCode equals: 'VPVG'.
	self assert: iban accountNumber equals: '0000012345678901'.
	self assert: iban isValid
]

{ #category : #tests }
TestSgIBAN >> testStandardString [
	| iban |
	iban := SgIBAN fromString: 'VG96 VPVG 0000 0123 4567 8901'.
	self
		assert: iban asStandardString
		equals: 'VG96 VPVG 0000 0123 4567 8901'.
	iban := SgIBAN fromString: 'SI56263300012039086'.
	self assert: iban asStandardString equals: 'SI56 2633 0001 2039 086'.
	iban := SgIBAN fromString: 'ST68 0001 0001 0051 8453 1011 2'.
	self assert: iban asStandardString equals: 'ST68 0001 0001 0051 8453 1011 2'
]

{ #category : #tests }
TestSgIBAN >> testString [
	| iban |
	iban := SgIBAN fromString: 'VG96 VPVG 0000 0123 4567 8901'.
	self assert: iban asString equals: 'VG96 VPVG 0000012345678901'
]
