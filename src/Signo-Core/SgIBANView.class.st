Class {
	#name : #SgIBANView,
	#superclass : #WAComponent,
	#instVars : [
		'iban',
		'viewType'
	],
	#category : #'Signo-Core-Web'
}

{ #category : #'as yet unclassified' }
SgIBANView class >> forIban: anIban [
	^ self new setIban: anIban
]

{ #category : #'private-accessing' }
SgIBANView >> countryNameFromCode: aISO2Code [

	^ WALocale iso2Countries at: aISO2Code ifAbsent: [ '' ]
]

{ #category : #initialization }
SgIBANView >> initialize [ 
	
	super initialize.
	viewType := #offer
]

{ #category : #rendering }
SgIBANView >> renderContentAsOfferOn: html [
	
html tbsOffer
		beRounded;
		class:
			(iban isValid
				ifTrue: [ 'offer-success' ]
				ifFalse: [ 'offer-danger' ]);
		with: [ html tbsOfferShape: [ html tbsOfferShapeText: 'Iban' ].
			html
				tbsOfferContent: [ html break.
					self renderIbanHeadingOn: html.
					html horizontalRule.
					self renderIbanInfoRowOn: html ] ]
]

{ #category : #rendering }
SgIBANView >> renderContentAsPanelOn: html [
	| panel |
	panel := html tbsPanel.
	iban isValid
		ifFalse: [ panel beDanger.
			panel
				with: [ html
						tbsPanelHeading: [ html tbsPanelTitle: [ self renderIbanHeadingOn: html ] ].
					html tbsPanelBody: [ self renderErrorRowOn: html ] ] ]
		ifTrue: [ panel beSuccess.
			panel
				with: [ html
						tbsPanelHeading: [ html
								tbsPanelTitle: [ self renderIbanHeadingOn: html
									] ].
					html tbsPanelBody: [ self renderIbanInfoRowOn: html ] ] ]
]

{ #category : #rendering }
SgIBANView >> renderContentOn: html [

	viewType = #offer
		ifTrue: [ self renderContentAsOfferOn: html ].
	viewType = #panel
		ifTrue: [ self renderContentAsPanelOn: html ]
		ifFalse: [ self renderContentAsOfferOn: html ]
]

{ #category : #rendering }
SgIBANView >> renderErrorRowOn: html [
	iban errors
		do: [ :each | 
			html
				tbsRow: [ html tbsColumn
						smallSize: 12;
						with: [ html tbsColumn
										smallSize: 12;
										with: [ html emphasis: each ] ] ] ]
]

{ #category : #rendering }
SgIBANView >> renderIbanHeadingOn: html [
	html strong
		with: [ iban isValid
				ifTrue: [ html tbsLabel
						beSuccess;
						with: 'Iban' ]
				ifFalse: [ html tbsLabel
						beDanger;
						with: 'Iban' ].
			html space.
			html text: iban asStandardString.
			html
				text: (' ({1})' format: {(self countryNameFromCode: iban country)}).
			html button
				class: 'text-right';
				with: [ html tbsGlyphIcon iconChevronDown ] ]
]

{ #category : #rendering }
SgIBANView >> renderIbanInfoRowOn: html [
	html tbsRow: [ 
		(iban class specifications at: iban country) fieldNames
								do: [ :each | 
									html tbsColumn
										smallSize: 4;
										with: [ html emphasis: each asString ].
									html tbsColumn
										smallSize: 2;
										with: (iban perform: each) ]
		 ]
	
]

{ #category : #initialization }
SgIBANView >> setIban: anIban [

	iban := anIban
]

{ #category : #initialization }
SgIBANView >> setViewType: aType [
	viewType := aType
]

{ #category : #hooks }
SgIBANView >> style [
	^ '
.offer-shape{	
	border-style: solid; 
	border-width: 0 70px 40px 0; float:right; height: 0px; width: 0px;
	-ms-transform:rotate(360deg); /* IE 9 */
	-o-transform: rotate(360deg);  /* Opera 10.5 */
	-webkit-transform:rotate(360deg); /* Safari and Chrome */
	transform:rotate(360deg);
}
.offer {
	background:#fff; 
	border:1px solid #ddd; 
	box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2); 
	margin: 15px 0; 
	overflow:hidden;
}

.offer-rounded {
	border-radius:7px;
}

.offer-danger {	border-color: #d9534f; }
.offer-danger .offer-shape{
	border-color: transparent #d9534f transparent transparent;
	border-color: rgba(255,255,255,0) #d9534f rgba(255,255,255,0) rgba(255,255,255,0);
}

.offer-success {
	border-color: #5cb85c; }	
.offer-success .offer-shape{
	border-color: transparent #5cb85c transparent transparent;
	border-color: rgba(255,255,255,0) #5cb85c rgba(255,255,255,0) rgba(255,255,255,0);
}

.offer-default {	border-color: #999999; }	
.offer-default .offer-shape{
	border-color: transparent #999999 transparent transparent;
	border-color: rgba(255,255,255,0) #999999 rgba(255,255,255,0) rgba(255,255,255,0);
}

.offer-primary {	border-color: #428bca; }
.offer-primary .offer-shape{
	border-color: transparent #428bca transparent transparent;
	border-color: rgba(255,255,255,0) #428bca rgba(255,255,255,0) rgba(255,255,255,0);
}

.offer-info {	border-color: #5bc0de; }
.offer-info .offer-shape{
	border-color: transparent #5bc0de transparent transparent;
	border-color: rgba(255,255,255,0) #5bc0de rgba(255,255,255,0) rgba(255,255,255,0);
}

.offer-warning {	border-color: #f0ad4e; }
.offer-warning .offer-shape{
	border-color: transparent #f0ad4e transparent transparent;
	border-color: rgba(255,255,255,0) #f0ad4e rgba(255,255,255,0) rgba(255,255,255,0);
}

.offer-shape-text{
	color:#fff; 
	font-size:12px; 
	font-weight:bold; 
	position:relative; 
	right:-40px; 
	top:2px; 
	white-space: nowrap;
	-ms-transform:rotate(30deg); /* IE 9 */
	-o-transform: rotate(360deg);  /* Opera 10.5 */
	-webkit-transform:rotate(30deg); /* Safari and Chrome */
	transform:rotate(30deg);
}

.panel { 
	box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2); 
 }
	
.offer-content{
	padding:0 20px 10px;
}

.badge { 
	padding:4px 3px 3px
 }
'
]
