Class {
	#name : #SgCountryCode,
	#superclass : #WARequestHandler,
	#category : #'Signo-Core-Web'
}

{ #category : #'class initialization' }
SgCountryCode class >> initialize [ 

	<script>
	WAAdmin register: self at: 'CountryCode'
]

{ #category : #'as yet unclassified' }
SgCountryCode >> getCountryFor: aCountryCode [

	^ WALocale iso2Countries keyAtValue: aCountryCode asUppercase 
]

{ #category : #handling }
SgCountryCode >> handleFiltered: aRequestContext [ 
	
	| pais |
	pais := aRequestContext request at: 'pais' ifAbsent: 'No hay datos que procesar'.
	
	aRequestContext respond: [ :response | | text |
		text := '{1} = {2}'.
		response 
			status: WAResponse statusOk;
			contentType: WAMimeType textPlain;
			nextPutAll: (text format: { pais . self getCountryFor: pais })
		 ] 
]
