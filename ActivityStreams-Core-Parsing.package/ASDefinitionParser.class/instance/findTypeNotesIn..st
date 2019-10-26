as yet unclassified
findTypeNotesIn: aTBodySoup
	"Responds with a String of the Notes for
	the given ActivityStream Type definition as
	it appears in the table's tbody element"
	| rows notesRow |
	rows := aTBodySoup findAllChildTags: #tr.
	rows ifEmpty: [ Error signal: 'tbody contains no tr elements!' ].
	notesRow := rows second.
	^ notesRow text.