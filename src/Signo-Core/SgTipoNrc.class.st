Class {
	#name : #SgTipoNrc,
	#superclass : #Object,
	#instVars : [
		'codigo',
		'descripcion'
	],
	#classVars : [
		'Tipos'
	],
	#category : #'Signo-Core-Common'
}

{ #category : #accessors }
SgTipoNrc class >> autoliquidacion [

	^ Tipos at: #autoliquidacion
]

{ #category : #accessors }
SgTipoNrc class >> aval [

	^ Tipos at: #aval
]

{ #category : #'as yet unclassified' }
SgTipoNrc class >> delCodigo: aString [

	Tipos values do: [ :each  | each codigo = (aString asUppercase) ifTrue: [ ^ each ] ].
	^ nil
]

{ #category : #accessors }
SgTipoNrc class >> descripciones [

	^ Tipos tipos collect: [ :each | each descripcion ]
]

{ #category : #initialization }
SgTipoNrc class >> inicializarTipos [

	<script>
	"Inicializamos la instancia de clase 'Tipos' con los valores de los tipos de Nrc que existen"
	Tipos := Dictionary new.
	Tipos at: #liquidacion put:SgLiquidacion instance.
	Tipos at: #autoliquidacion put: SgAutoliquidacion instance.
	Tipos at: #tasa put: SgTasa instance.
	Tipos at: #aval put: SgAval instance.
	Tipos at: #predeclaracion put: SgPredeclaracion instance
]

{ #category : #accessors }
SgTipoNrc class >> liquidacion [

	^ Tipos at: #liquidacion
]

{ #category : #'instance creation' }
SgTipoNrc class >> new [

	self error: 'Clase abstracta. No se puede tener instancias'
]

{ #category : #accessors }
SgTipoNrc class >> predeclaracion [

	^ Tipos at: #predeclaracion
]

{ #category : #accessors }
SgTipoNrc class >> tasa [

	^ Tipos at: #tasa
]

{ #category : #accessing }
SgTipoNrc class >> tipos [ 

	"Devuelve un conjunto de todos los tipo (SgTipoNrc) definidos en el sistema"
	^ Tipos values
]

{ #category : #accessing }
SgTipoNrc >> codigo [
	^ codigo
]

{ #category : #accessing }
SgTipoNrc >> descripcion [
	^ descripcion
]

{ #category : #'as yet unclassified' }
SgTipoNrc >> inicializaCodigo: aString descripcion: otherString [

	codigo := aString.
	descripcion := otherString
]

{ #category : #printing }
SgTipoNrc >> printOn: aStream [
	"Append a sequence of characters to aStream that identify the receiver."

	super printOn: aStream.
	aStream
		nextPutAll: ' descripcion: ';
		print: descripcion.
	aStream
		nextPutAll: ' codigo: ';
		print: codigo
]

{ #category : #'private-initialization' }
SgTipoNrc >> setCodigo: aString yDescripcion: anotherString [

	"designated initializer"
	
	self initialize.
	codigo := aString.
	descripcion := anotherString
]

{ #category : #'as yet unclassified' }
SgTipoNrc >> tieneIngreso [

	self subclassResponsibility 
]
