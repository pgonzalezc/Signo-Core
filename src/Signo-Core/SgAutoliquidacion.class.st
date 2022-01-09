Class {
	#name : #SgAutoliquidacion,
	#superclass : #SgTipoNrc,
	#classVars : [
		'UniqueInstance'
	],
	#category : #'Signo-Core-Common'
}

{ #category : #accessing }
SgAutoliquidacion class >> instance [ 

	UniqueInstance ifNil: [ UniqueInstance := SgAutoliquidacion basicNew inicializaCodigo: 'AUT' descripcion: 'AutoLiquidación' ].
	^ UniqueInstance
]

{ #category : #'as yet unclassified' }
SgAutoliquidacion >> tieneIngreso [

	^ true
]
