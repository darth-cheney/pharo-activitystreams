as yet unclassified
findTypeDefTableIn: aSoup
	"Responds with a Soup tag of the table
	that contains all of the ActivityStream
	Type definitions"
	| section table |
	section := (aSoup findAllTags: #section) select: [:tag | tag id = #types].
	table := section first table.
	table ifNil: [ Error signal: 'Could not find tag #table in Soup!' ].
	^ table