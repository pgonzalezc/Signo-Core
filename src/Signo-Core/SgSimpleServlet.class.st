Class {
	#name : #SgSimpleServlet,
	#superclass : #WARequestHandler,
	#category : #'Signo-Core-Web'
}

{ #category : #'as yet unclassified' }
SgSimpleServlet class >> initialize [

	<script>
	WAAdmin register: self at: 'SimpleServlet' 
]

{ #category : #'as yet unclassified' }
SgSimpleServlet >> generaListaLenguajes [

	| tr |
	tr := '<tr><td>{1}</td><td>{2}</td></tr>'.
	^ String streamContents: [ :s |
		s << '<html><head><meta charset="utf-8"/><title>iso2 Languages</title></head><body>'.
		s << '<h2>Iso2 Languages</h2>'.
		s << '<table><thead><tr><th>Código</th><th>Lenguaje</th></tr></thead><tbody>'.
		WALocale iso2Languages associationsDo: [ :each | 
			s << (tr format: { each key . each value })
			 ].
		s << '</tbody></table></body></html>'
		]
	
]

{ #category : #handling }
SgSimpleServlet >> handleFiltered: aRequestContext [ 
	
	aRequestContext respond: [ :response |
		response  
			status: WAResponse statusOk;
			contentType: WAMimeType textHtml;
			nextPutAll: self generaListaLenguajes ]
]
