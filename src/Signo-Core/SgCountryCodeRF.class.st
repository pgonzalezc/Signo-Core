Class {
	#name : #SgCountryCodeRF,
	#superclass : #WARestfulHandler,
	#category : #'Signo-Core-Web'
}

{ #category : #'class initialization' }
SgCountryCodeRF class >> initialize [ 

	<script>
	WAAdmin register: self  at: 'Services'
]

{ #category : #'as yet unclassified' }
SgCountryCodeRF >> countryCode: aCountryCode [

	<get>	
	<path: 'country/name/{aCountryCode}'>
	<produces: 'application/json'>
	
	| name |
	name := WALocale iso2Countries keyAtValue: aCountryCode asUppercase ifAbsent: [ 
		^ { #status -> 'KO' . #codigo -> aCountryCode . #causa -> ('El pais [{1}] no se encuentra la base de datos' format: { aCountryCode })} 
			asDictionary asJson
		 ].
	^ { #status -> 'OK' . #codigo -> aCountryCode . #pais -> name } asDictionary asJson
]

{ #category : #'as yet unclassified' }
SgCountryCodeRF >> countryName: aCountryCode [

	<get>
	<path: 'country/code/{aCountryCode}'>
	<produces: 'application/json'>
	
	| name |
	
	name := WALocale iso2Countries at: aCountryCode asUppercase ifAbsent: [
		^ { #codigo -> aCountryCode . #status -> 'KO' . #causa -> ('El código [{1}] no se encuentra en la base de datos' format: { aCountryCode})} asDictionary asJson
		].
	
	^ { #codigo -> aCountryCode . #status -> 'OK' . #pais ->  name} asDictionary asJson 
]

{ #category : #'as yet unclassified' }
SgCountryCodeRF >> err403 [
	| builder |
	builder := WAHtmlCanvas builder.
	builder
		rootBlock:
			[ :aRoot | aRoot addStyle: '/static-files/css/bootstrap.min.4.3.1..css' ].
	^ builder
		fullDocument: true;
		render: [ :html | html render: SgErr403View new ]
]

{ #category : #handling }
SgCountryCodeRF >> handleFiltered: aRequestContext [
	| dn matcher |
	dn := aRequestContext request headers
		at: 'ssl_client_s_dn'
		ifAbsent: [ '' ].
	matcher := '^.+,serialNumber=IDCES\-([A-Z0-9]{9}).+$' asRegex.
	((matcher matches: dn)
		and: [ (matcher subexpression: 2) = '09759005X' ])
		ifTrue: [ super handleFiltered: aRequestContext ]
		ifFalse: [ aRequestContext
				respond: [ :response | 
					response
						status: WAResponse statusForbidden;
						contentType: WAMimeType textHtml;
						nextPutAll: self err403 ] ]
]
