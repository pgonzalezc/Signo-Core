Class {
	#name : #SgIdentView,
	#superclass : #WADecoration,
	#category : #'Signo-Core-Web'
}

{ #category : #hooks }
SgIdentView >> initialRequest: aRequest [

	self session user ifNil: [ | dn cert matcher | 
		dn := aRequest headers at: 'ssl_client_s_dn'.
		cert := aRequest headers at: 'ssl_client_cert'.
		matcher := '^CN=(.+),SN=.+$' asRegex .
		(matcher matches: dn ) ifNotNil: [  | cn idx nif deno | 
			cn := matcher subexpression: 2 .
			idx := cn indexOfSubCollection: ' - '.
			deno := cn copyFrom: 1 to: idx.
			nif := cn copyFrom: idx + 3 to: cn size.
			self session setUser: ((SgUser forNif: nif denominacion: deno) setCredential: cert)
			]
		]
]

{ #category : #rendering }
SgIdentView >> renderContentOn: html [ 

	| user |
	
	user := self session user.
	user ifNotNil: [  
	html tbsWell beSmall; class: 'container text-right'; with: [ 
		html text: (String streamContents: [ :s | 
			s << self session user nif;
				 << ' - ';
				 << self session user denominacion ]).
			].
		].
	self renderNextOn: html
	
]
