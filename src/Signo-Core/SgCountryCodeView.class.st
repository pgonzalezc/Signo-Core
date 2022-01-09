Class {
	#name : #SgCountryCodeView,
	#superclass : #WAComponent,
	#instVars : [
		'pais',
		'codigo'
	],
	#category : #'Signo-Core-Web'
}

{ #category : #testing }
SgCountryCodeView class >> canBeRoot [

	^ true
]

{ #category : #'class initialization' }
SgCountryCodeView class >> initialize [ 
	
	| application |
	application := WAAdmin register: self  asApplicationAt: 'Country/Code'.
]

{ #category : #accessing }
SgCountryCodeView >> codigo [ 
	
	^ codigo
]

{ #category : #'as yet unclassified' }
SgCountryCodeView >> doProcess [

	"Aqui tenemos que ver si nos llega pais o código y realizar la operacion adecuada"

	(pais isNotEmpty and: [ codigo isNotEmpty ])
		ifTrue: [ | p c |
			p := WALocale iso2Countries at: codigo asUppercase ifAbsent: [ '**Desconocido***' ].
			c := WALocale iso2Countries keyAtValue: pais asUppercase ifAbsent: [ '**Desconocido**' ].
			(p = pais and: [ c = codigo ]) 
				ifFalse: [ codigo := ''. pais := '' ]
			 ]
		ifFalse: [ 
			pais isNotEmpty
				ifTrue: [codigo := WALocale iso2Countries keyAtValue: pais asUppercase ifAbsent: [ '**Desconocido**' ]. ^ self].
			codigo isNotEmpty
				ifTrue: [ pais := WALocale iso2Countries at: codigo asUppercase ifAbsent: [ '**Desconocido***' ]. ^ self]
			 ]
	
]

{ #category : #initialization }
SgCountryCodeView >> initialize [ 

	super initialize.
	self addDecoration: SgIdentView new.
]

{ #category : #accessing }
SgCountryCodeView >> pais [ 
	
	^ pais
]

{ #category : #rendering }
SgCountryCodeView >> renderCodigoCaptionOn: html [

	html tbsFormGroup: [ 
		html label for: 'codigo-caption'; with: 'Código'.
		html textInput tbsFormControl
			id: 'codigo-caption';
			callback: [ :value | codigo := value ];
			value: self codigo
	]
	
]

{ #category : #rendering }
SgCountryCodeView >> renderContentOn: html [ 

	html form class: 'container'; with: [ 
		html heading level:2; with: 'Conversor de código de país'.
		self renderPaisCaptionOn: html.
		self renderCodigoCaptionOn: html.
		self renderSubmitButtonOn: html
	]
]

{ #category : #rendering }
SgCountryCodeView >> renderPaisCaptionOn: html [

	html tbsFormGroup: [ 
		html label for: 'pais-caption'; with: 'País'.
		html textInput tbsFormControl 
			id: 'pais-caption';
			callback: [ :value | pais := value ];
			value: self pais
		 ]
]

{ #category : #rendering }
SgCountryCodeView >> renderSubmitButtonOn: html [

	html tbsButton bePrimary 
		callback: [ self doProcess ];
		value: 'Enviar'
]

{ #category : #updating }
SgCountryCodeView >> updateRoot: aHtmlRoot [

	super updateRoot: aHtmlRoot.
	aHtmlRoot title: 'Conversor paises'.
	"aHtmlRoot stylesheet url: '/static-files/css/bootstrap.min.4.3.1.css'.
	aHtmlRoot javascript url: '/static-files/js/jquery.min.js'.
	aHtmlRoot javascript url: '/static-files/js/bootstrap.min.4.3.1.js'"
]
