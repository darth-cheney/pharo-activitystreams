as yet unclassified
findActorTypeDefTableIn: aSoup
	"Responds with a Soup object corresponding
	to the table containing Activity Extension Types
	in the W3C ActivityStream spec document"
	| section table |
	section := (aSoup findAllTags: #section) select: [ :tag | tag id = 'actor-types' ].
	table := section first findTag: #table.
	table ifNil: [ Error signal: 'Could not find tag #table in Soup for Actor Extensions!' ].
	^ table.