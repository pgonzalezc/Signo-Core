Class {
	#name : #SgUser,
	#superclass : #Object,
	#instVars : [
		'nif',
		'denominacion',
		'credential'
	],
	#category : #'Signo-Core-Common'
}

{ #category : #'as yet unclassified' }
SgUser class >> forNif: aNif denominacion: aString [

	^ (self basicNew)
		setNif: aNif;
		setDenominacion: aString;
		yourself
]

{ #category : #accessing }
SgUser >> credential [
	^ credential
]

{ #category : #accessing }
SgUser >> denominacion [
	^ denominacion
]

{ #category : #accessing }
SgUser >> nif [
	^ nif
]

{ #category : #'private-initialization' }
SgUser >> setCredential: aCertificate [

	credential := aCertificate
]

{ #category : #'private-initialization' }
SgUser >> setDenominacion: aString [

	denominacion := aString

	
]

{ #category : #'private-initialization' }
SgUser >> setNif: aNif [

	nif := aNif
]
