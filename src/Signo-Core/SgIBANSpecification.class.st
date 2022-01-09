Class {
	#name : #SgIBANSpecification,
	#superclass : #Object,
	#instVars : [
		'length',
		'bBANFormat',
		'fieldsFormat',
		'fieldsNames'
	],
	#category : #'Signo-Core-Common'
}

{ #category : #'as yet unclassified' }
SgIBANSpecification class >> length: anInteger bBANFormat: aBBANRegex fieldFormats: aFieldsRegex fieldNames: anArray [
	^ self basicNew
		setLength: anInteger
		bBANFormat: aBBANRegex
		fieldFormats: aFieldsRegex
		fieldNames: anArray
]

{ #category : #accessing }
SgIBANSpecification >> bBANFormat [
	^ bBANFormat
]

{ #category : #accessing }
SgIBANSpecification >> fieldFormats [
	^ fieldsFormat
]

{ #category : #accessing }
SgIBANSpecification >> fieldNames [
	^ fieldsNames
]

{ #category : #accessing }
SgIBANSpecification >> length [
	^ length
]

{ #category : #'private-initialization' }
SgIBANSpecification >> setLength: anInteger bBANFormat: aBBANRegex fieldFormats: aFieldsRegex fieldNames: anArray [

	length := anInteger.
	bBANFormat := aBBANRegex.
	fieldsFormat := aFieldsRegex.
	fieldsNames := anArray
]
