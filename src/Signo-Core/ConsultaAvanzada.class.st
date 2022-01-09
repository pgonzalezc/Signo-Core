Class {
	#name : #ConsultaAvanzada,
	#superclass : #WAComponent,
	#category : #'Signo-Core-Web'
}

{ #category : #testing }
ConsultaAvanzada class >> canBeRoot [

	^ true
]

{ #category : #'class initialization' }
ConsultaAvanzada class >> initialize [ 

	<script>
	WAAdmin register: self asApplicationAt: 'consulta/avanzada'
]

{ #category : #'as yet unclassified' }
ConsultaAvanzada >> doLogout [

	self session setUser: nil
]

{ #category : #hooks }
ConsultaAvanzada >> initialRequest: aRequest [

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

{ #category : #initialization }
ConsultaAvanzada >> initialize [ 

	super initialize.
	self addDecoration: SgIdentView new
]

{ #category : #rendering }
ConsultaAvanzada >> renderContentOn: html [ 

	html form: [ 
		html div 
			class: 'container';
			with: [ 
				html tbsWell beLarge with: 'Consulta Avanzada'.
				html form class: 'container'; with: [ 
					self renderTipoCaptionOn: html.
				]
		 ]
	] 

	
]

{ #category : #rendering }
ConsultaAvanzada >> renderTipoCaptionOn: html [

	html tbsFormGroup: [ 
		html label for: 'tipo-nrc'; with: 'Tipo de Nrc: '.html break.
		html select 
			id: 'tipo-nrc';
			name: 'tipo-nrc';
			list: ((SgTipoNrc tipos collect: [:each | each descripcion ]) asOrderedCollection addFirst: '--Seleccione--'; yourself)
		 ]
	
]

{ #category : #updating }
ConsultaAvanzada >> updateRoot: aRoot [

	super updateRoot: aRoot.
	aRoot title: 'Búsqueda avanzada'.
	aRoot stylesheet url: '/static-files/css/bootstrap.min.4.3.1.css'
]
