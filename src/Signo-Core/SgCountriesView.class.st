Class {
	#name : #SgCountriesView,
	#superclass : #WAComponent,
	#category : #'Signo-Core-Web'
}

{ #category : #testing }
SgCountriesView class >> canBeRoot [

	^ true
]

{ #category : #'class initialization' }
SgCountriesView class >> initialize [ 
	
	WAAdmin register: self asApplicationAt: 'Country/Listado'.
]

{ #category : #rendering }
SgCountriesView >> renderContentOn: html [ 

	html div class: 'container'; with: [ 
	html heading level:2; with: 'Paises y sus códigos ISO'.
	html tbsTable: [ 
		html tableHead: [ 
			html tableHeading: 'Código'.
			html tableHeading: 'Nombre'
			 ].
		html tableBody: [ 
			WALocale iso2Countries associationsDo: [ :assoc |
				html tableRow: [ 
					html tableData: assoc key.
					html tableData: assoc value
					 ]
				 ]
			 ]
		 ] ]
]

{ #category : #updating }
SgCountriesView >> updateRoot: aHtmlRoot [

	super updateRoot: aHtmlRoot.
	aHtmlRoot title: 'Lista de países'.
	
]
