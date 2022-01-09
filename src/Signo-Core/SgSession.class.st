Class {
	#name : #SgSession,
	#superclass : #WASession,
	#instVars : [
		'user'
	],
	#category : #'Signo-Core-Web'
}

{ #category : #initialization }
SgSession >> setUser: aUser [

	user := aUser
]

{ #category : #accessing }
SgSession >> user [ 

	^ user
]
