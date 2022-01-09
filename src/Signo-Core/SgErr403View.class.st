Class {
	#name : #SgErr403View,
	#superclass : #WAComponent,
	#category : #'Signo-Core-Web'
}

{ #category : #rendering }
SgErr403View >> renderContentOn: html [

	html
		tbsJumbotron: [ html heading
				level: 2;
				with: '403'.
			html paragraph: 'Usted no está autorizado a acceder a esta página.' ]
]
