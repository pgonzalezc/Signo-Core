Class {
	#name : #SgIBAN,
	#superclass : #Object,
	#instVars : [
		'fields',
		'errors'
	],
	#classVars : [
		'Specifications'
	],
	#category : #'Signo-Core-Common'
}

{ #category : #'as yet unclassified' }
SgIBAN class >> adSpecs [
	"Andorra"

	^ SgIBANSpecification
		length: 24
		bBANFormat: '^\d{8}[a-zA-Z0-9]{12}$' asRegex
		fieldFormats: '^(AD)(\d{2})(\d{4})(\d{4})([a-zA-Z0-9]{12})$' asRegex
		fieldNames:
			#(#countryCode #checkDigits #nationalBankCode #branchCode #accountNumber)
]

{ #category : #'as yet unclassified' }
SgIBAN class >> aeSpecs [
	"United Arab Emirates"

	^ SgIBANSpecification
		length: 23
		bBANFormat: '^\d{19}$' asRegex
		fieldFormats: '^(AE)(\d{2})(\d{3})(\d{16})$' asRegex
		fieldNames: #(#countryCode #checkDigits #nationalBankCode #accountNumber)
]

{ #category : #'as yet unclassified' }
SgIBAN class >> alSpecs [
	"Albania"

	^ SgIBANSpecification
		length: 28
		bBANFormat: '^\d{8}[A-Za-z0-9]{16}$' asRegex
		fieldFormats: '^(AL)(\d{2})(\d{3})(\d{4})(\d)(\d{16})$' asRegex
		fieldNames:
			#(#countryCode #checkDigits #nationalBankCode #branchCode #nationalCheckDigits #accountNumber)
]

{ #category : #'as yet unclassified' }
SgIBAN class >> atSpecs [
	^ SgIBANSpecification
		length: 20
		bBANFormat: '^\d{16}$' asRegex
		fieldFormats: '^(AT)(\d{2})(\d{5})(\d{11})$' asRegex
		fieldNames: #(#countryCode #checkDigits #nationalBankCode #accountNumber)
]

{ #category : #'as yet unclassified' }
SgIBAN class >> azSpecs [
	^ SgIBANSpecification
		length: 28
		bBANFormat: '^([a-zA-Z0-9]{4})(\d{20})$' asRegex
		fieldFormats: '^(AZ)(\d{2})([a-zA-Z0-9]{4})(\d{20})$' asRegex
		fieldNames: #(#countryCode #checkDigits #nationalBankCode #accountNumber)
]

{ #category : #'as yet unclassified' }
SgIBAN class >> baSpecs [
	"Bosnia and Herzegovina"

	^ SgIBANSpecification
		length: 20
		bBANFormat: '^\d{16}$' asRegex
		fieldFormats: '^(BA)(\d{2})(\d{3})(\d{3})(\d{8})(\d{2})$' asRegex
		fieldNames:
			#(#countryCode #checkDigits #nationalBankCode #branchCode #accountNumber #nationalCheckDigits)
]

{ #category : #'as yet unclassified' }
SgIBAN class >> beSpecs [
	^ SgIBANSpecification
		length: 16
		bBANFormat: '^\d{12}$' asRegex
		fieldFormats: '^(BE)(\d{2})(\d{3})(\d{7})(\d{2})' asRegex
		fieldNames:
			#(#countryCode #checkDigits #nationalBankCode #accountNumber #nationalCheckDigits)
]

{ #category : #'as yet unclassified' }
SgIBAN class >> bgSpecs [
	"Bulgaria"

	^ SgIBANSpecification
		length: 22
		bBANFormat: '^[A-Z]{4}\d{6}[a-zA-Z0-9]{8}$' asRegex
		fieldFormats: '^(BG)(\d{2})([A-Z]{4})(\d{4})(\d{2})([a-zA-Z0-9]{8})$' asRegex
		fieldNames:
			#(#countryCode #checkDigits #bicBankCode #branchNumber #accountType #accountNumber)
]

{ #category : #'as yet unclassified' }
SgIBAN class >> bhSpecs [
	^ SgIBANSpecification
		length: 22
		bBANFormat: '^[A-Z]{4}[a-zA-Z0-9]{14}$' asRegex
		fieldFormats: '^(BH)(\d{2})([A-Z]{4})([a-zA-Z0-9]{14})$' asRegex
		fieldNames: #(#countryCode #checkDigits #nationalBankCode #accountNumber)
]

{ #category : #'as yet unclassified' }
SgIBAN class >> brSpecs [
	"Brazil"

	^ SgIBANSpecification
		length: 29
		bBANFormat: '^\d{23}[A-Z][A-Za-z0-9]$' asRegex
		fieldFormats: '^(BR)(\d{2})(\d{8})(\d{5})(\d{10})([A-Z])([A-Za-z0-9])$' asRegex
		fieldNames:
			#(#countryCode #checkDigits #nationalBankCode #branchCode #accountNumber #accountType #ownerAccountNumber)
]

{ #category : #'as yet unclassified' }
SgIBAN class >> bySpecs [
	"Belarus"

	^ SgIBANSpecification
		length: 28
		bBANFormat: '^[A-Z]{4}\d{4}[a-zA-Z0-9]{16}$' asRegex
		fieldFormats: '^(BY)(\d{2})([A-Za-z0-9]{4})(\d{4})([a-zA-Z0-9]{16})$' asRegex
		fieldNames:
			#(#countryCode #checkDigits #nationalBankCode #balanceAccountNumber #accountNumber)
]

{ #category : #'as yet unclassified' }
SgIBAN class >> chSpecs [
	"Switzerland"

	^ SgIBANSpecification
		length: 21
		bBANFormat: '^\d{5}[A-Za-z0-9]{12}$' asRegex
		fieldFormats: '^(CH)(\d{2})(\d{5})(\d{12})$' asRegex
		fieldNames: #(#countryCode #checkDigits #nationalBankCode #accountCode)
]

{ #category : #'as yet unclassified' }
SgIBAN class >> crSpecs [
	"Costa Rica"

	^ SgIBANSpecification
		length: 22
		bBANFormat: '^\d{18}$' asRegex
		fieldFormats: '^(CR)(\d{2})0(\d{3})(\d{14})$' asRegex
		fieldNames: #(#countryCode #checkDigits #bankCode #accountNumber)
]

{ #category : #'as yet unclassified' }
SgIBAN class >> cySpecs [
	"Cyprus"

	^ SgIBANSpecification
		length: 28
		bBANFormat: '^\d{8}[A-Za-z0-9]{16}$' asRegex
		fieldFormats: '^(CY)(\d{2})(\d{3})(\d{5})([A-Za-z0-9]{16})$' asRegex
		fieldNames:
			#(#countryCode #checkDigits #nationalBankCode #branchCode #accountNumber)
]

{ #category : #'as yet unclassified' }
SgIBAN class >> czSpecs [
	"Czech Republic"

	^ SgIBANSpecification
		length: 24
		bBANFormat: '^\d{20}$' asRegex
		fieldFormats: '^(CZ)(\d{2})(\d{4})(\d{6})(\d{10})$' asRegex
		fieldNames:
			#(#countryCode #checkDigits #nationalBankCode #accountNumberPrefix #accountNumber)
]

{ #category : #'as yet unclassified' }
SgIBAN class >> deSpecs [
	"Germany"

	^ SgIBANSpecification
		length: 22
		bBANFormat: '^\d{18}$' asRegex
		fieldFormats: '^(DE)(\d{2})(\d{8})(\d{10})$' asRegex
		fieldNames: #(#countryCode #checkDigits #nationalBankCode #accountNumber)
]

{ #category : #'as yet unclassified' }
SgIBAN class >> dkSpecs [
	"Denmark"

	^ SgIBANSpecification
		length: 18
		bBANFormat: '^\d{14}$' asRegex
		fieldFormats: '^(DK)(\d{2})(\d{4})(\d{9})(\d)$' asRegex
		fieldNames:
			#(#countryCode #checkDigits #nationalBankCode #accountNumber #nationalCheckDigits)
]

{ #category : #'as yet unclassified' }
SgIBAN class >> doSpecs [
	"Dominican Republic"

	^ SgIBANSpecification
		length: 28
		bBANFormat: '^[A-Z]{4}\d{20}$' asRegex
		fieldFormats: '^(DO)(\d{2})([A-Z]{4})(\d{20})$' asRegex
		fieldNames: #(#countryCode #checkDigits #bankIdentifier #accountNumber)
]

{ #category : #'as yet unclassified' }
SgIBAN class >> eeSpecs [
	"Estonia"

	^ SgIBANSpecification
		length: 20
		bBANFormat: '^\d{16}$' asRegex
		fieldFormats: '^(EE)(\d{2})(\d{2})(\d{2})(\d{11})(\d)$' asRegex
		fieldNames:
			#(#countryCode #checkDigits #nationalBankCode #branchCode #accountNumber #nationalCheckDigits)
]

{ #category : #'as yet unclassified' }
SgIBAN class >> egSpecs [
	"Egypt"

	^ SgIBANSpecification
		length: 29
		bBANFormat: '^\d{25}$' asRegex
		fieldFormats: '^(EG)(\d{2})(\d{4})(\d{4})(\d{17})$' asRegex
		fieldNames:
			#(#countryCode #checkDigits #nationalBankCode #branchCode #accountNumber)
]

{ #category : #'as yet unclassified' }
SgIBAN class >> esSpecs [
	^ SgIBANSpecification
		length: 24
		bBANFormat: '^\d{20}$' asRegex
		fieldFormats: '^(ES)(\d{2})(\d{4})(\d{4})(\d{2})(\d{10})$' asRegex
		fieldNames:
			#(#countryCode #checkDigits #nationalBankCode #branchCode #nationalCheckDigits #accountNumber)
]

{ #category : #'as yet unclassified' }
SgIBAN class >> fiSpecs [
	"Finland"

	^ SgIBANSpecification
		length: 18
		bBANFormat: '^\d{14}$' asRegex
		fieldFormats: '^(FI)(\d{2})(\d{6})(\d{7})(\d)$' asRegex
		fieldNames:
			#(#countryCode #checkDigits #nationalBankCode #accountNumber #nationalCheckDigits)
]

{ #category : #'as yet unclassified' }
SgIBAN class >> foSpecs [
	"Faroe Islands"

	^ SgIBANSpecification
		length: 18
		bBANFormat: '^\d{14}$' asRegex
		fieldFormats: '^(FO)(\d{2})(\d{4})(\d{9})(\d)$' asRegex
		fieldNames:
			#(#countryCode #checkDigits #nationalBankCode #accountNumber #nationalCheckDigits)
]

{ #category : #'as yet unclassified' }
SgIBAN class >> frSpecs [
	"France"

	^ SgIBANSpecification
		length: 27
		bBANFormat: '^\d{10}[A-Za-z0-9]{11}\d{2}$' asRegex
		fieldFormats: '^(FR)(\d{2})(\d{5})(\d{5})([a-zA-Z0-9]{11})(\d{2})$' asRegex
		fieldNames:
			#(#countryCode #checkDigits #nationalBankCode #branchCode #accountNumber #nationalCheckDigits)
]

{ #category : #'instance creation' }
SgIBAN class >> fromString: aIBANString [
	| iban countryCode specs fields names bban errors results |
	errors := OrderedCollection new.
	iban := aIBANString copyReplaceAll: ' ' with: ''.
	countryCode := iban copyFrom: 1 to: 2.
	specs := Specifications
		at: countryCode
		ifAbsent: [ errors add: ('Country [{1}] not supported. ' format: countryCode) ].
	specs length ~= iban size
		ifTrue: [ errors add: 'Iban with invalid length. ' ].
	bban := iban copyFrom: 5 to: iban size.
	(specs bBANFormat matches: bban)
		ifFalse: [ errors add: 'Bban with invalid format. ' ].
	(specs fieldFormats matches: iban)
		ifFalse: [ errors add: 'Iban with invalid format. ' ].
	fields := (1 to: specs fieldFormats subexpressionCount)
		collect: [ :idx | specs fieldFormats subexpression: idx ].
	names := specs fieldNames copy.
	results := Dictionary new.
	errors isEmpty
		ifTrue: [ results
				addAll:
					((names asOrderedCollection
						addFirst: #iban;
						yourself) with: fields collect: [ :key :value | key -> value ])
						asDictionary ]
		ifFalse: [ results at: #iban put: iban ].
	^ self basicNew setFields: results andErrors: errors
]

{ #category : #'as yet unclassified' }
SgIBAN class >> gbSpecs [
	"United Kingdom"

	^ SgIBANSpecification
		length: 22
		bBANFormat: '^[A-Z]{4}\d{14}$' asRegex
		fieldFormats: '^(GB)(\d{2})([A-Z]{4})(\d{6})(\d{8})$' asRegex
		fieldNames: #(#countryCode #checkDigits #bicBankCode #branchCode #accountNumber)
]

{ #category : #'as yet unclassified' }
SgIBAN class >> geSpecs [
	"Georgia"

	^ SgIBANSpecification
		length: 22
		bBANFormat: '^[A-Za-z0-9]{2}\d{16}$' asRegex
		fieldFormats: '^(GE)(\d{2})([A-Za-z0-9]{2})(\d{16})$' asRegex
		fieldNames: #(#countryCode #checkDigits #nationalBankCode #accountNumber)
]

{ #category : #'as yet unclassified' }
SgIBAN class >> giSpecs [
	"Gibraltar"

	^ SgIBANSpecification
		length: 23
		bBANFormat: '^[A-Z]{4}[A-Za-z0-9]{15}$' asRegex
		fieldFormats: '^(GI)(\d{2})([A-Z]{4})([A-Za-z0-9]{15})$' asRegex
		fieldNames: #(#countryCode #checkDigits #bicBankCode #accountNumber)
]

{ #category : #'as yet unclassified' }
SgIBAN class >> glSpecs [
	"Greenland"

	^ SgIBANSpecification
		length: 18
		bBANFormat: '^\d{14}$' asRegex
		fieldFormats: '^(GL)(\d{2})(\d{4})(\d{9})(\d)$' asRegex
		fieldNames:
			#(#countryCode #checkDigits #nationalBankCode #accountNumber #nationalCheckDigits)
]

{ #category : #'as yet unclassified' }
SgIBAN class >> grSpecs [
	"Greecer"

	^ SgIBANSpecification
		length: 27
		bBANFormat: '^\d{7}[A-Za-z0-9]{16}$' asRegex
		fieldFormats: '^(GR)(\d{2})(\d{3})(\d{4})([A-Za-z0-9]{16})$' asRegex
		fieldNames:
			#(#countryCode #checkDigits #nationalBankCode #branchCode #accountNumber)
]

{ #category : #'as yet unclassified' }
SgIBAN class >> gtSpecs [
	"Guatemala"

	^ SgIBANSpecification
		length: 28
		bBANFormat: '^[A-Za-z0-9]{4}\d{20}$' asRegex
		fieldFormats:
			'^(GT)(\d{2})([A-Za-z0-9]{4})([A-Za-z0-9]{2})([A-Za-z0-9]{2})([A-Za-z0-9]{16})$'
				asRegex
		fieldNames:
			#(#countryCode #checkDigits #nationalBankCode #currencyCode #accountType #accountNumber)
]

{ #category : #'as yet unclassified' }
SgIBAN class >> hrSpecs [
	"Croatia"

	^ SgIBANSpecification
		length: 21
		bBANFormat: '^\d{17}$' asRegex
		fieldFormats: '^(HR)(\d{2})(\d{7})(\d{10})$' asRegex
		fieldNames: #(#countryCode #checkDigits #bankCode #accountNumber)
]

{ #category : #'as yet unclassified' }
SgIBAN class >> huSpecs [
	"Hungary"

	^ SgIBANSpecification
		length: 28
		bBANFormat: '^\d{24}$' asRegex
		fieldFormats: '^(HU)(\d{2})(\d{3})(\d{4})(\d{16})(\d)$' asRegex
		fieldNames:
			#(#countryCode #checkDigits #nationalBankCode #branchCode #accountNumber #nationalCheckDigits)
]

{ #category : #'as yet unclassified' }
SgIBAN class >> ieSpecs [
	"Ireland"

	^ SgIBANSpecification
		length: 22
		bBANFormat: '^[A-Za-z0-9]{4}\d{14}$' asRegex
		fieldFormats: '^(IE)(\d{2})([A-Za-z0-9]{4})(\d{6})(\d{8})$' asRegex
		fieldNames: #(#countryCode #checkDigits #bicBankCode #branchCode #accountNumber)
]

{ #category : #'as yet unclassified' }
SgIBAN class >> ilSpecs [
	"Israel"

	^ SgIBANSpecification
		length: 23
		bBANFormat: '^\d{19}$' asRegex
		fieldFormats: '^(IL)(\d{2})(\d{3})(\d{3})(\d{13})$' asRegex
		fieldNames:
			#(#countryCode #checkDigits #nationalBankCode #branchCode #accountNumber)
]

{ #category : #'class initialization' }
SgIBAN class >> initialize [
	<script>
	Specifications := {('AL' -> self alSpecs).
	('AD' -> self adSpecs).
	('AT' -> self atSpecs).
	('BE' -> self beSpecs).
	('AZ' -> self azSpecs).
	('BH' -> self bhSpecs).
	('BY' -> self bySpecs).
	('BA' -> self baSpecs).
	('BR' -> self brSpecs).
	('BG' -> self bgSpecs).
	('CR' -> self crSpecs).
	('HR' -> self hrSpecs).
	('CY' -> self cySpecs).
	('CZ' -> self czSpecs).
	('DK' -> self dkSpecs).
	('DO' -> self doSpecs).
	('TL' -> self tlSpecs).
	('EG' -> self egSpecs).
	('SV' -> self svSpecs).
	('EE' -> self eeSpecs).
	('FO' -> self foSpecs).
	('FI' -> self fiSpecs).
	('FR' -> self frSpecs).
	('GE' -> self geSpecs).
	('DE' -> self deSpecs).
	('GI' -> self giSpecs).
	('GR' -> self grSpecs).
	('GL' -> self glSpecs).
	('GT' -> self gtSpecs).
	('HU' -> self huSpecs).
	('IS' -> self isSpecs).
	('IQ' -> self iqSpecs).
	('IE' -> self ieSpecs).
	('IL' -> self ilSpecs).
	('IT' -> self itSpecs).
	('JO' -> self joSpecs).
	('KZ' -> self kzSpecs).
	('XK' -> self xkSpecs).
	('KW' -> self kwSpecs).
	('LV' -> self lvSpecs).
	('LB' -> self lbSpecs).
	('LY' -> self lySpecs).
	('LI' -> self liSpecs).
	('LT' -> self ltSpecs).
	('LU' -> self luSpecs).
	('MK' -> self mkSpecs).
	('MT' -> self mtSpecs).
	('MR' -> self mrSpecs).
	('MU' -> self muSpecs).
	('MC' -> self mcSpecs).
	('MD' -> self mdSpecs).
	('ME' -> self meSpecs).
	('NL' -> self nlSpecs).
	('NO' -> self noSpecs).
	('PK' -> self pkSpecs).
	('PS' -> self psSpecs).
	('PL' -> self plSpecs).
	('PT' -> self ptSpecs).
	('QA' -> self qaSpecs).
	('RO' -> self roSpecs).
	('LC' -> self lcSpecs).
	('SM' -> self smSpecs).
	('ST' -> self stSpecs).
	('SA' -> self saSpecs).
	('RS' -> self rsSpecs).
	('SC' -> self scSpecs).
	('SK' -> self skSpecs).
	('SI' -> self siSpecs).
	('ES' -> self esSpecs).
	('SD' -> self sdSpecs).
	('SE' -> self seSpecs).
	('CH' -> self chSpecs).
	('TN' -> self tnSpecs).
	('TR' -> self trSpecs).
	('UA' -> self uaSpecs).
	('AE' -> self aeSpecs).
	('GB' -> self gbSpecs).
	('VA' -> self vaSpecs).
	('VG' -> self vgSpecs)} asDictionary.
	self inform: 'Cargados los formatos de IBAN de los países'
]

{ #category : #'as yet unclassified' }
SgIBAN class >> iqSpecs [
	"Iraq"

	^ SgIBANSpecification
		length: 23
		bBANFormat: '^[A-Z]{4}\d{15}$' asRegex
		fieldFormats: '^(IQ)(\d{2})([A-Z]{4})(\d{3})(\d{12})$' asRegex
		fieldNames: #(#countryCode #checkDigits #bicBankCode #branchCode #accountNumber)
]

{ #category : #'as yet unclassified' }
SgIBAN class >> isSpecs [
	"Iceland"

	^ SgIBANSpecification
		length: 26
		bBANFormat: '^\d{22}$' asRegex
		fieldFormats: '^(IS)(\d{2})(\d{2})(\d{2})(\d{2})(\d{6})(\d{10})$' asRegex
		fieldNames:
			#(#countryCode #checkDigits #nationalBankCode #branchCode #accountType #accountNumber #nationalIdentificationNumber)
]

{ #category : #'as yet unclassified' }
SgIBAN class >> itSpecs [
	"Italy"

	^ SgIBANSpecification
		length: 27
		bBANFormat: '^[A-Z]\d{10}[A-Za-z0-9]{12}$' asRegex
		fieldFormats: '^(IT)(\d{2})([A-Z])(\d{5})(\d{5})([A-Za-z0-9]{12})$' asRegex
		fieldNames:
			#(#countryCode #checkDigits #checkCharacter #nationalBankCode #branchCode #accountNumber)
]

{ #category : #'as yet unclassified' }
SgIBAN class >> joSpecs [
	"Jordan"

	^ SgIBANSpecification
		length: 30
		bBANFormat: '^[A-Z]{4}\d{22}$' asRegex
		fieldFormats: '^(JO)(\d{2})([A-Z]{4})(\d{4})(\d{18})$' asRegex
		fieldNames:
			#(#countryCode #checkDigits #nationalBankCode #branchCode #accountNumber)
]

{ #category : #'as yet unclassified' }
SgIBAN class >> kwSpecs [
	"Kuwait"

	^ SgIBANSpecification
		length: 30
		bBANFormat: '^[A-Z]{4}[A-Za-z0-9]{22}$' asRegex
		fieldFormats: '^(KW)(\d{2})([A-Z]{4})([A-Za-z0-9]{22})$' asRegex
		fieldNames: #(#countryCode #checkDigits #nationalBankCode #accountNumber)
]

{ #category : #'as yet unclassified' }
SgIBAN class >> kzSpecs [
	"Jordan"

	^ SgIBANSpecification
		length: 20
		bBANFormat: '^\d{3}[A-Za-z0-9]{13}$' asRegex
		fieldFormats: '^(KZ)(\d{2})(\d{3})([A-Za-z0-9]{13})$' asRegex
		fieldNames: #(#countryCode #checkDigits #nationalBankCode #accountNumber)
]

{ #category : #'as yet unclassified' }
SgIBAN class >> lbSpecs [
	"Lebanon"

	^ SgIBANSpecification
		length: 28
		bBANFormat: '^\d{4}[A-Za-z0-9]{20}$' asRegex
		fieldFormats: '^(LB)(\d{2})(\d{4})([A-Za-z0-9]{20})$' asRegex
		fieldNames: #(#countryCode #checkDigits #nationalBankCode #accountNumber)
]

{ #category : #'as yet unclassified' }
SgIBAN class >> lcSpecs [
	"Saint Lucio"

	^ SgIBANSpecification
		length: 32
		bBANFormat: '^[A-Z]{4}[A-Za-z0-9]{24}$' asRegex
		fieldFormats: '^(LC)(\d{2})([A-Z]{4})([A-Za-z0-9]{24})$' asRegex
		fieldNames: #(#countryCode #checkDigits #bankCode #accountNumber)
]

{ #category : #'as yet unclassified' }
SgIBAN class >> liSpecs [
	"Liechtenstein"

	^ SgIBANSpecification
		length: 21
		bBANFormat: '^\d{5}[A-Za-z0-9]{12}$' asRegex
		fieldFormats: '^(LI)(\d{2})(\d{5})([A-Za-z0-9]{12})$' asRegex
		fieldNames: #(#countryCode #checkDigits #nationalBankCode #accountNumber)
]

{ #category : #'as yet unclassified' }
SgIBAN class >> ltSpecs [
	"Lithuania"

	^ SgIBANSpecification
		length: 20
		bBANFormat: '^\d{16}$' asRegex
		fieldFormats: '^(LT)(\d{2})(\d{5})(\d{11})$' asRegex
		fieldNames: #(#countryCode #checkDigits #nationalBankCode #accountNumber)
]

{ #category : #'as yet unclassified' }
SgIBAN class >> luSpecs [
	"Luxembourg"

	^ SgIBANSpecification
		length: 20
		bBANFormat: '^\d{3}[A-Za-z0-9]{13}$' asRegex
		fieldFormats: '^(LU)(\d{2})(\d{3})([A-Za-z0-9]{13})$' asRegex
		fieldNames: #(#countryCode #checkDigits #nationalBankCode #accountNumber)
]

{ #category : #'as yet unclassified' }
SgIBAN class >> lvSpecs [
	"Latvia"

	^ SgIBANSpecification
		length: 21
		bBANFormat: '^[A-Z]{4}\d{13}$' asRegex
		fieldFormats: '^(LV)(\d{2})([A-Z]{4})(\d{13})$' asRegex
		fieldNames: #(#countryCode #checkDigits #nationalBankCode #accountNumber)
]

{ #category : #'as yet unclassified' }
SgIBAN class >> lySpecs [
	"libya"

	^ SgIBANSpecification
		length: 25
		bBANFormat: '^\d{21}$' asRegex
		fieldFormats: '^(LY)(\d{2})(\d{3})(\d{3})(\d{15})$' asRegex
		fieldNames:
			#(#countryCode #checkDigits #nationalBankCode #branchCode #accountNumber)
]

{ #category : #'as yet unclassified' }
SgIBAN class >> mcSpecs [
	"Monaco"

	^ SgIBANSpecification
		length: 27
		bBANFormat: '^\d{10}[A-Za-z0-9]{11}(\d{2})$' asRegex
		fieldFormats: '^(MC)(\d{2})(\d{5})(\d{5})([A-Za-z0-9]{11})(\d{2})$' asRegex
		fieldNames:
			#(#countryCode #checkDigits #nationalBankCode #branchCode #accountNumber #nationalCheckDigits)
]

{ #category : #'as yet unclassified' }
SgIBAN class >> mdSpecs [
	"Moldova"

	^ SgIBANSpecification
		length: 24
		bBANFormat: '^[A-Za-z0-9]{20}$' asRegex
		fieldFormats: '^(MD)(\d{2})([A-Za-z0-9]{2})([A-Za-z0-9]{18})$' asRegex
		fieldNames: #(#countryCode #checkDigits #nationalBankCode #accountNumber)
]

{ #category : #'as yet unclassified' }
SgIBAN class >> meSpecs [
	"Montenegro"

	^ SgIBANSpecification
		length: 22
		bBANFormat: '^\d{18}$' asRegex
		fieldFormats: '^(ME)(\d{2})(\d{3})(\d{13})(\d{2})$' asRegex
		fieldNames:
			#(#countryCode #checkDigits #bankCode #accountNumber #nationalCheckDigits)
]

{ #category : #'as yet unclassified' }
SgIBAN class >> mkSpecs [
	"North Macedonia"

	^ SgIBANSpecification
		length: 19
		bBANFormat: '^\d{3}[A-Za-z0-9]{10}\d{2}$' asRegex
		fieldFormats: '^(MK)(\d{2})(\d{3})([A-Za-z0-9]{10})(\d{2})$' asRegex
		fieldNames:
			#(#countryCode #checkDigits #nationalBankCode #accountNumber #nationalCheckDigits)
]

{ #category : #'as yet unclassified' }
SgIBAN class >> mrSpecs [
	"Mauritania"

	^ SgIBANSpecification
		length: 27
		bBANFormat: '^\d{23}$' asRegex
		fieldFormats: '^(MR)(\d{2})(\d{5})(\d{5})(\d{11})(\d{2})$' asRegex
		fieldNames:
			#(#countryCode #checkDigits #nationalBankCode #branchCode #accountNumber #nationalCheckDigits)
]

{ #category : #'as yet unclassified' }
SgIBAN class >> mtSpecs [
	"Malta"

	^ SgIBANSpecification
		length: 31
		bBANFormat: '^[A-Z]{4}\d{5}[A-Za-z0-9]{18}$' asRegex
		fieldFormats: '^(MT)(\d{2})([A-Z]{4})(\d{5})([A-Za-z0-9]{18})$' asRegex
		fieldNames:
			#(#countryCode #checkDigits #nationalBankCode #branchCode #accountNumber)
]

{ #category : #'as yet unclassified' }
SgIBAN class >> muSpecs [
	"Mauritius"

	^ SgIBANSpecification
		length: 30
		bBANFormat: '^[A-Z]{4}\d{19}([A-Z]{3})$' asRegex
		fieldFormats: '^(MU)(\d{2})([A-Z0-9]{6})(\d{2})(\d{15})([A-Z]{3})$' asRegex
		fieldNames:
			#(#countryCode #checkDigits #nationalBankCode #branchCode #accountNumber #currencyCode)
]

{ #category : #'as yet unclassified' }
SgIBAN class >> nlSpecs [
	"Netherlands"

	^ SgIBANSpecification
		length: 18
		bBANFormat: '^[A-Z]{4}\d{10}$' asRegex
		fieldFormats: '^(NL)(\d{2})([A-Z]{4})(\d{10})$' asRegex
		fieldNames: #(#countryCode #checkDigits #bicBankCode #accountNumber)
]

{ #category : #'as yet unclassified' }
SgIBAN class >> noSpecs [
	"Norway"

	^ SgIBANSpecification
		length: 15
		bBANFormat: '^\d{11}$' asRegex
		fieldFormats: '^(NO)(\d{2})(\d{4})(\d{6})(\d)$' asRegex
		fieldNames:
			#(#countryCode #checkDigits #nationalBankCode #accountNumber #nationalCheckDigits)
]

{ #category : #'as yet unclassified' }
SgIBAN class >> pkSpecs [
	"Pakistan"

	^ SgIBANSpecification
		length: 24
		bBANFormat: '^[A-Za-z0-9]{4}\d{16}$' asRegex
		fieldFormats: '^(PK)(\d{2})([A-Za-z0-9]{4})(\d{16})$' asRegex
		fieldNames: #(#countryCode #checkDigits #nationalBankCode #accountNumber)
]

{ #category : #'as yet unclassified' }
SgIBAN class >> plSpecs [
	"Poland"

	^ SgIBANSpecification
		length: 28
		bBANFormat: '^\d{24}$' asRegex
		fieldFormats: '^(PL)(\d{2})(\d{3})(\d{4})(\d)(\d{16})$' asRegex
		fieldNames:
			#(#countryCode #checkDigits #nationalBankCode #branchCode #nationalCheckDigits #accountNumber)
]

{ #category : #'as yet unclassified' }
SgIBAN class >> psSpecs [
	"Palestinian territories"

	^ SgIBANSpecification
		length: 29
		bBANFormat: '^[A-Za-z0-9]{4}\d{21}$' asRegex
		fieldFormats: '^(PS)(\d{2})([A-Za-z0-9]{4})(\d{21})$' asRegex
		fieldNames: #(#countryCode #checkDigits #nationalBankCode #accountNumber)
]

{ #category : #'as yet unclassified' }
SgIBAN class >> ptSpecs [
	"Portugal"

	^ SgIBANSpecification
		length: 25
		bBANFormat: '^\d{21}$' asRegex
		fieldFormats: '^(PT)(\d{2})(\d{4})(\d{4})(\d{11})(\d{2})$' asRegex
		fieldNames:
			#(#countryCode #checkDigits #nationalBankCode #branchCode #accountNumber #nationalCheckDigits)
]

{ #category : #'as yet unclassified' }
SgIBAN class >> qaSpecs [
	"Qatar"

	^ SgIBANSpecification
		length: 29
		bBANFormat: '^[A-Z]{4}[A-Za-z0-9]{21}$' asRegex
		fieldFormats: '^(QA)(\d{2})([A-Z]{4})([A-Za-z0-9]{21})$' asRegex
		fieldNames: #(#countryCode #checkDigits #nationalBankCode #accountNumber)
]

{ #category : #'as yet unclassified' }
SgIBAN class >> roSpecs [
	"Romania"

	^ SgIBANSpecification
		length: 24
		bBANFormat: '^[A-Z]{4}[A-Za-z0-9]{16}$' asRegex
		fieldFormats: '^(RO)(\d{2})([A-Z]{4})([A-Za-z0-9]{16})$' asRegex
		fieldNames: #(#countryCode #checkDigits #bicBankCode #accountNumber)
]

{ #category : #'as yet unclassified' }
SgIBAN class >> rsSpecs [
	"Serbia"

	^ SgIBANSpecification
		length: 22
		bBANFormat: '^\d{18}$' asRegex
		fieldFormats: '^(RS)(\d{2})(\d{3})(\d{13})(\d{2})$' asRegex
		fieldNames:
			#(#countryCode #checkDigits #nationalBankCode #accountNumber #nationalCheckDigits)
]

{ #category : #'as yet unclassified' }
SgIBAN class >> saSpecs [
	"Saudi Arabia"

	^ SgIBANSpecification
		length: 24
		bBANFormat: '^\d{2}[A-Za-z0-9]{18}$' asRegex
		fieldFormats: '^(SA)(\d{2})(\d{2})([A-Za-z0-9]{18})$' asRegex
		fieldNames: #(#countryCode #checkDigits #nationalBankCode #accountNumber)
]

{ #category : #'as yet unclassified' }
SgIBAN class >> scSpecs [
	"Seychelles"

	^ SgIBANSpecification
		length: 31
		bBANFormat: '^[A-Z0-9]{6}\d{18}[A-Z]{3}$' asRegex
		fieldFormats: '^(SC)(\d{2})([A-Z0-9]{6})(\d{2})(\d{16})([A-Z]{3})$' asRegex
		fieldNames:
			#(#countryCode #checkDigits #bankCode #accountType #accountNumber #currencyCode)
]

{ #category : #'as yet unclassified' }
SgIBAN class >> sdSpecs [
	"Sudan"

	^ SgIBANSpecification
		length: 18
		bBANFormat: '^\d{14}$' asRegex
		fieldFormats: '^(SD)(\d{2})(\d{2})(\d{12})$' asRegex
		fieldNames: #(#countryCode #checkDigits #nationalBankCode #accountNumber)
]

{ #category : #'as yet unclassified' }
SgIBAN class >> seSpecs [
	"Sweden"

	^ SgIBANSpecification
		length: 24
		bBANFormat: '^\d{20}$' asRegex
		fieldFormats: '^(SE)(\d{2})(\d{3})(\d{17})$' asRegex
		fieldNames: #(#countryCode #checkDigits #nationalBankCode #accountNumber)
]

{ #category : #'as yet unclassified' }
SgIBAN class >> siSpecs [
	"Slovenia"

	^ SgIBANSpecification
		length: 19
		bBANFormat: '^\d{15}$' asRegex
		fieldFormats: '^(SI)(\d{2})(\d{2})(\d{3})(\d{8})(\d{2})$' asRegex
		fieldNames:
			#(#countryCode #checkDigits #nationalBankCode #branchCode #accountNumber #nationalCheckDigits)
]

{ #category : #'as yet unclassified' }
SgIBAN class >> skSpecs [
	"Slovakia"

	^ SgIBANSpecification
		length: 24
		bBANFormat: '^\d{20}$' asRegex
		fieldFormats: '^(SK)(\d{2})(\d{4})(\d{6})(\d{10})$' asRegex
		fieldNames:
			#(#countryCode #checkDigits #nationalBankCode #accountNumberPrefix #accountNumber)
]

{ #category : #'as yet unclassified' }
SgIBAN class >> smSpecs [
	"San Marino"

	^ SgIBANSpecification
		length: 27
		bBANFormat: '^[A-Z]\d{10}[A-Za-z0-9]{12}$' asRegex
		fieldFormats: '^(SM)(\d{2})([A-Z])(\d{5})(\d{5})([A-Za-z0-9]{12})$' asRegex
		fieldNames:
			#(#countryCode #checkDigits #nationalCheckDigits #nationalBankCode #branchCode #accountNumber)
]

{ #category : #'as yet unclassified' }
SgIBAN class >> specifications [

	^ Specifications
]

{ #category : #'as yet unclassified' }
SgIBAN class >> stSpecs [
	"Sao Tome and Principe"

	^ SgIBANSpecification
		length: 25
		bBANFormat: '^\d{21}$' asRegex
		fieldFormats: '^(ST)(\d{2})(\d{4})(\d{4})(\d{13})$' asRegex
		fieldNames:
			#(#countryCode #checkDigits #nationalBankCode #branchCode #accountNumber)
]

{ #category : #'as yet unclassified' }
SgIBAN class >> svSpecs [
	"El Salvador"

	^ SgIBANSpecification
		length: 28
		bBANFormat: '^[A-Z]{4}\d{20}$' asRegex
		fieldFormats: '^(SV)(\d{2})([A-Z]{4})(\d{20})$' asRegex
		fieldNames: #(#countryCode #checkDigits #nationalBankCode #accountNumber)
]

{ #category : #'as yet unclassified' }
SgIBAN class >> tlSpecs [
	"East Timor"

	^ SgIBANSpecification
		length: 23
		bBANFormat: '^\d{19}$' asRegex
		fieldFormats: '^(TL)(\d{2})(\d{3})(\d{14})(\d{2})$' asRegex
		fieldNames:
			#(#countryCode #checkDigits #bankIdentifier #accountNumber #nationalCheckDigits)
]

{ #category : #'as yet unclassified' }
SgIBAN class >> tnSpecs [
	"Tunisia"

	^ SgIBANSpecification
		length: 24
		bBANFormat: '^\d{20}$' asRegex
		fieldFormats: '^(TN)(\d{2})(\d{2})(\d{3})(\d{13})(\d{2})$' asRegex
		fieldNames:
			#(#countryCode #checkDigits #nationalBankCode #branchCode #accountNumber #nationalCheckDigits)
]

{ #category : #'as yet unclassified' }
SgIBAN class >> trSpecs [
	"Turkey"

	^ SgIBANSpecification
		length: 26
		bBANFormat: '^\d{5}0[A-Za-z0-9]{16}$' asRegex
		fieldFormats: '^(TR)(\d{2})(\d{5})0([A-Za-z0-9]{16})$' asRegex
		fieldNames: #(#countryCode #checkDigits #nationalBankCode #accountNumber)
]

{ #category : #'as yet unclassified' }
SgIBAN class >> uaSpecs [
	"Ukraine"

	^ SgIBANSpecification
		length: 29
		bBANFormat: '^\d{6}[A-Za-z0-9]{19}$' asRegex
		fieldFormats: '^(UA)(\d{2})(\d{6})([A-Za-z0-9]{19})$' asRegex
		fieldNames: #(#countryCode #checkDigits #bankCode #accountNumber)
]

{ #category : #'as yet unclassified' }
SgIBAN class >> vaSpecs [
	"Vatican city"

	^ SgIBANSpecification
		length: 22
		bBANFormat: '^\d{18}$' asRegex
		fieldFormats: '^(VA)(\d{2})(\d{3})(\d{15})$' asRegex
		fieldNames: #(#countryCode #checkDigits #nationalBankCode #accountNumber)
]

{ #category : #'as yet unclassified' }
SgIBAN class >> vgSpecs [
	"Virgin Islands, British"

	^ SgIBANSpecification
		length: 24
		bBANFormat: '^[A-Za-z0-9]{4}\d{16}$' asRegex
		fieldFormats: '^(VG)(\d{2})([A-Za-z0-9]{4})(\d{16})$' asRegex
		fieldNames: #(#countryCode #checkDigits #nationalBankCode #accountNumber)
]

{ #category : #'as yet unclassified' }
SgIBAN class >> xkSpecs [
	"Kosovo"

	^ SgIBANSpecification
		length: 20
		bBANFormat: '^\d{16}$' asRegex
		fieldFormats: '^(XK)(\d{2})(\d{4})(\d{12})$' asRegex
		fieldNames: #(#countryCode #checkDigits #nationalBankCode #accountNumber)
]

{ #category : #'as yet unclassified' }
SgIBAN >> accountCode [

	^ fields at: #accountCode ifAbsent: [ '' ]
]

{ #category : #accessing }
SgIBAN >> accountNumber [

	^ fields at: #accountNumber ifAbsent: [ '' ]
]

{ #category : #'as yet unclassified' }
SgIBAN >> accountNumberPrefix [

	^ fields at: #accountNumberPrefix ifAbsent: [ '' ]
]

{ #category : #'as yet unclassified' }
SgIBAN >> accountType [

	^ fields at: #accountType ifAbsent: [ '' ]
]

{ #category : #converting }
SgIBAN >> asSimpleString [
	^ fields at: #iban
]

{ #category : #converting }
SgIBAN >> asStandardString [
	"Return an IBAN string in standard format"

	| iban |
	iban := fields at: #iban.
	^ String
		streamContents: [ :s | 
			iban
				withIndexDo: [ :char :idx | 
					s << char.
					((idx rem: 4) = 0
						and: [ iban size ~= idx ])
						ifTrue: [ s << Character space ] ] ]
]

{ #category : #'as yet unclassified' }
SgIBAN >> balanceAccountNumber [

	^ fields at: #balanceAccountNumber ifAbsent: [ '' ]
]

{ #category : #'as yet unclassified' }
SgIBAN >> bankCode [
	^ fields at: #bankCode ifAbsent: [ '' ]
]

{ #category : #'as yet unclassified' }
SgIBAN >> bankIdentifier [

	^ fields at: #bankIdentifier ifAbsent: [ '' ]
]

{ #category : #accessing }
SgIBAN >> bban [
	^ (fields at: #iban) copyFrom: 5 to: (Specifications at: self country) length
]

{ #category : #'as yet unclassified' }
SgIBAN >> bicBankCode [

	^ fields at: #bicBankCode ifAbsent: [ '' ]
]

{ #category : #accessing }
SgIBAN >> branchCode [
	^ fields at: #branchCode ifAbsent: [ '' ]
]

{ #category : #'as yet unclassified' }
SgIBAN >> branchNumber [

	^ fields at: #branchNumber ifAbsent: [ '' ]
]

{ #category : #'as yet unclassified' }
SgIBAN >> checkCharacter [
	^ fields at: #checkCharacter ifAbsent: [ '' ]
]

{ #category : #accessing }
SgIBAN >> checkDigits [
	^ fields at: #checkDigits 
]

{ #category : #testing }
SgIBAN >> checkIban [
	"Apply the following algorithm: "

	"
		1.- Check that the total IBAN length is correct as per the country. If not, the IBAN is invalid
    	2.- Move the four initial characters to the end of the string
    	3.- Replace each letter in the string with two digits, thereby expanding the string, where A = 10, B = 11, ..., Z = 35
    	4.- Interpret the string as a decimal integer and compute the remainder of that number on division by 97
	"

	^ (((String
		streamContents: [ :s | 
			s << (self asSimpleString copyFrom: 5 to: self asSimpleString size).
			s << (self asSimpleString copyFrom: 1 to: 4) ]) asUppercase
		inject: ''
		into: [ :acc :char | 
			String
				streamContents: [ :s | 
					s << acc.
					s
						<<
							(char isDigit
								ifFalse: [ (10 + (char asciiValue - $A asciiValue)) asString ]
								ifTrue: [ char asString ]) ] ]) asInteger rem: 97) = 1
]

{ #category : #accessing }
SgIBAN >> country [
	^ (fields at: #iban) copyFrom: 1 to: 2
	
]

{ #category : #'as yet unclassified' }
SgIBAN >> countryCode [ 
	^ fields at: #countryCode ifAbsent: [ '' ]
]

{ #category : #'as yet unclassified' }
SgIBAN >> currencyCode [
	^ fields at: #currencyCode ifAbsent: [ '' ]
]

{ #category : #accessors }
SgIBAN >> errors [
	^ errors
]

{ #category : #testing }
SgIBAN >> isValid [
	
	^ errors isEmpty and: [ self checkIban ]
]

{ #category : #accessing }
SgIBAN >> nationalBankCode [
	^ fields at: #nationalBankCode ifAbsent: [ '' ]
]

{ #category : #accessing }
SgIBAN >> nationalCheckDigits [
	^ fields at: #nationalCheckDigits ifAbsent: [ '' ]
]

{ #category : #'as yet unclassified' }
SgIBAN >> nationalIdentificationNumber [

	^ fields at: #nationalIdentificationNumber ifAbsent: [ '' ]
]

{ #category : #'as yet unclassified' }
SgIBAN >> ownerAccountNumber [

	^ fields at: #ownerAccountNumber ifAbsent: [ '' ]
]

{ #category : #printing }
SgIBAN >> printOn: aStream [
	| names |
	names := (Specifications at: self country) fieldNames.
	aStream nextPutAll: (self perform: names first).
	aStream nextPutAll: (self perform: names second).
	aStream nextPut: Character space.
	(names copyFrom: 3 to: names size)
		do: [ :each | 
			aStream
				nextPutAll: (self perform: each).
				names last ~= each ifTrue: [aStream nextPut: Character space ]]
]

{ #category : #'private-initialization' }
SgIBAN >> setFields: aDictionary [

	fields := aDictionary
]

{ #category : #'private-initialization' }
SgIBAN >> setFields: aDictionary andErrors: aCollection [
	fields := aDictionary.
	errors := aCollection
]
