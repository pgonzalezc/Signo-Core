Class {
	#name : #SgTablaNrc,
	#superclass : #Object,
	#category : #'Signo-Core-Tablas'
}

{ #category : #'as yet unclassified' }
SgTablaNrc class >> detalleDe: unNrc [

	| conn stmt resp |
	conn := self pgConn.
	stmt := conn prepare: 'SELECT nrc, tipo, estado, ejercicio, importe, modelo, periodo, fecha_generacion, fecha_consolidacion, fecha_ingreso, fecha_anulacion, extra_info FROM signo.nrc WHERE nrc = $1'.
	resp := stmt query: { unNrc }.
	stmt close.
	conn close.
	^ resp data asOrderedCollection 
]

{ #category : #'as yet unclassified' }
SgTablaNrc class >> pgConn [

	"Devuelve la conexión por defecto a la base de datos"
	
	^ P3Client new url: 'psql://ratodalua:rat0da.ua@localhost:5432/pgonzalez'
]
