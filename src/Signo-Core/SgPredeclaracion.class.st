Class {
	#name : #SgPredeclaracion,
	#superclass : #SgTipoNrc,
	#classVars : [
		'UniqueInstance'
	],
	#category : #'Signo-Core-Common'
}

{ #category : #accessing }
SgPredeclaracion class >> instance [ 
	
	UniqueInstance ifNil: [ UniqueInstance := SgAutoliquidacion basicNew inicializaCodigo: 'AUT' descripcion: 'AutoLiquidación' ].
	^ UniqueInstance
]

{ #category : #'as yet unclassified' }
SgPredeclaracion >> tieneIngreso [

	 ^ true
	
]
