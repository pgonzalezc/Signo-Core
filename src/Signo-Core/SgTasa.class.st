Class {
	#name : #SgTasa,
	#superclass : #SgTipoNrc,
	#classVars : [
		'UniqueInstance'
	],
	#category : #'Signo-Core-Common'
}

{ #category : #accessing }
SgTasa class >> instance [ 

	UniqueInstance ifNil: [ UniqueInstance := SgAutoliquidacion basicNew inicializaCodigo: 'AUT' descripcion: 'AutoLiquidación' ].
	^ UniqueInstance
]

{ #category : #'as yet unclassified' }
SgTasa >> tieneIngreso [

	^ true
]
