as yet unclassified
createCommentFor: anASType with: aCommentString
	"Respond with a String that is the concatenation
	of the passed comment preceded by any cached value
	stored at the Class level."
	| preceding |
	preceding := self class cachedComments at: anASType ifAbsent: [ '' ].
	^ (String streamContents: [:s |
		s
			nextPutAll: preceding;
			nextPut: Character cr;
			nextPutAll: '==========';
			nextPut: Character cr;
			nextPutAll: aCommentString;
			nextPut: Character cr.
			] )