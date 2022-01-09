Class {
	#name : #ConsultaPorNrc,
	#superclass : #WAComponent,
	#instVars : [
		'nrc',
		'errores',
		'detalle'
	],
	#category : #'Signo-Core-Web'
}

{ #category : #testing }
ConsultaPorNrc class >> canBeRoot [

	^ true
]

{ #category : #'class initialization' }
ConsultaPorNrc class >> initialize [ 

	<script>
	WAAdmin register: self asApplicationAt: 'consulta/nrc'
]

{ #category : #action }
ConsultaPorNrc >> consultar [

	nrc size ~= 22
		ifTrue: [ errores add: 'NRC incorrecto. Reintroduzca' ].
	detalle := SgTablaNrc detalleDe: nrc
]

{ #category : #testing }
ConsultaPorNrc >> hayDatos [

	^ detalle isNotNil and: [detalle isNotEmpty]
]

{ #category : #testing }
ConsultaPorNrc >> hayErrores [
	
	^ errores isNotEmpty 
]

{ #category : #initialization }
ConsultaPorNrc >> initialize [ 
	
	super initialize.
	errores := OrderedCollection new.
]

{ #category : #accessing }
ConsultaPorNrc >> nrc [
	^ nrc
]

{ #category : #accessing }
ConsultaPorNrc >> nrc: anObject [
	nrc := anObject
]

{ #category : #rendering }
ConsultaPorNrc >> renderContentOn: html [ 

	html document addLoadScript: (html jQuery id: 'nrc') triggerSelect.
	self renderHeaderOn: html.
	self hayErrores ifTrue: [ self renderErroresOn: html ].
	self renderFormOn: html.
	self hayDatos ifTrue: [ self renderDatosOn: html ]
]

{ #category : #rendering }
ConsultaPorNrc >> renderDatosOn: html [

	| headers rows |
	headers := [ 
		html tableHeading: 'Nrc'.
		html tableHeading: 'Tipo'.
		html tableHeading: 'Estado'.
		html tableHeading: 'Modelo'.
		html tableHeading: 'Importe'.
		html tableHeading: 'Modelo'.
		html tableHeading: 'Período'.
		html tableHeading: 'Fecha generación'.
		html tableHeading: 'Extra info'
		 ].
	
	rows := [ 
		html tableHead: (headers).
		html tableBody: [ 
			detalle do: [ :row | html tableRow: [ row do: [ :col | html tableData: col] ] ]
			 ]
		 ].
	
	html heading level: 4; with: 'Detalle del NRC'.
	html tbsTable 
		beStriped;
		with: rows.
		
	detalle removeAll
	
]

{ #category : #rendering }
ConsultaPorNrc >> renderErroresOn: html [

	html tbsAlert 
		beWarning 
		with: [ 
			html unorderedList class: 'text-decoration-none'; with: [ 
				errores do: [ :each |
					html listItem: each
					 ]
				 ]
			 ].
	errores removeAll
]

{ #category : #rendering }
ConsultaPorNrc >> renderFormOn: html [

	html form
		id: 'form-consulta-nrc';
		class: 'container';
		with: [ 
			html tbsFormGroup: [ 
				html label for: 'nrc'; with: 'Introduzca un NRC: '.
				html textInput formControl id: 'nrc'; 
					value: self nrc;
					callback: [ :aValue | self nrc: aValue ];
					maxLength: 22;
					placeholder: 'un nrc'
				 ].
				html submitButton on: #consultar of: self 
			 ]
]

{ #category : #rendering }
ConsultaPorNrc >> renderHeaderOn: html [

	html tbsWell beLarge;
		with: [ html heading level: 4; with: 'Consulta por NRC' ]
]

{ #category : #updating }
ConsultaPorNrc >> updateRoot: aRootHtml [

	super updateRoot: aRootHtml.
	aRootHtml stylesheet url: 'static-files/css/bootstrap.min.css'.
	aRootHtml javascript url: 'static-files/js/jquery.js'
]
