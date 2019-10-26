as yet unclassified
findTypeNameIn: aTBodySoup
	"Responds with a string corresponding to
	the ActivityStream Type's name as present in
	a tbody.
	Note that the first #tr contains the name information."
	| rows nameRow |
	rows := aTBodySoup findAllChildTags: #tr.
	rows ifEmpty: [ Error signal: 'tbody Soup does not contain any tr elements!' ].
	nameRow := rows first.
	^ (nameRow findTag: #dfn) text.