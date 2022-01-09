Class {
	#name : #SgWorkbench,
	#superclass : #WAComponent,
	#instVars : [
		'children'
	],
	#category : #'Signo-Core-Web'
}

{ #category : #testing }
SgWorkbench class >> canBeRoot [

	^true
]

{ #category : #initialization }
SgWorkbench class >> initialize [
	WAAdmin register: self asApplicationAt: 'workbench/iban/offer'
]

{ #category : #hooks }
SgWorkbench >> children [ 

	^ children
]

{ #category : #initialization }
SgWorkbench >> initialize [
	super initialize.
	children := OrderedCollection new.
	children
		add:
			((SgIBANView
				forIban: (SgIBAN fromString: 'ES79 2100 0813 6101 2345 6789 0'))
				setViewType: #panel).
	children
		add:
			((SgIBANView forIban: (SgIBAN fromString: 'BE71 0961 2345 6769'))
				setViewType: #panel).
	children
		add:
			(SgIBANView
				forIban: (SgIBAN fromString: 'BY13 NBRB 3600 9000 0000 2Z00 AB00')).
	children
		add:
			((SgIBANView
				forIban: (SgIBAN fromString: 'CY17 0020 0128 0000 0012 0052 7600'))
				setViewType: #panel).
	children
		add:
			((SgIBANView
				forIban: (SgIBAN fromString: 'CZ65 0800 0000 1920 0014 5399'))
				setViewType: #panel).
	children
		add:
			(SgIBANView
				forIban: (SgIBAN fromString: 'LB62 0999 0000 0001 0019 0122 9114'))
]

{ #category : #rendering }
SgWorkbench >> renderContentOn: html [
	"Actualizamos children para que tenga un número par de entradas"

	"children size \\ 2 ~= 0
		ifTrue: [ children add: nil ].
	html
		tbsContainer: [ (children
				pairsCollect: [ :a :b | 
					{a.
					b} ])
				do: [ :pair | 
					html
						tbsRow: [ html tbsColumn
								smallSize: 6;
								with: [ html render: pair first ].
							pair second
								ifNotNil: [ html tbsColumn
										smallSize: 6;
										with: [ html render: pair second ] ] ] ] ]"
	html tbsContainer: [ 
		children do: [ :each | html tbsColumn smallSize: 12; with: [ html render: each ] ]
		 ]

	
]

{ #category : #updating }
SgWorkbench >> updateRoot: aHtmlRoot [

	super updateRoot: aHtmlRoot.
	aHtmlRoot title: 'workbench'
]
