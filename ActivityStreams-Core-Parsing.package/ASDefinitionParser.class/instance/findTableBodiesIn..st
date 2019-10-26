as yet unclassified
findTableBodiesIn: aSoup
	"Respond with an Array of the tbody elements
	in a given table of ActivityStream descriptions"
	| tbodies |
	tbodies := aSoup findAllChildTags: #tbody.
	tbodies ifEmpty: [ Error signal: 'Soup did not contain any tbody elements!' ].
	^ tbodies.
	