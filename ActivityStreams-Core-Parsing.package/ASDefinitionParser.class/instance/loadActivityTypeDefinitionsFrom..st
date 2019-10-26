as yet unclassified
loadActivityTypeDefinitionsFrom: aSoup
	"Populate this instance's internal dictionary
	of ActivityStream Extension Activity Type definitions based on an
	incoming Soup of the W3C stanard document"
	| table tableBodies |
	table := self findActivityTypeDefTableIn: aSoup.
	tableBodies := self findTableBodiesIn: table.
	tableBodies do: [ :tbody |
		self loadTypeDefinitionFrom: tbody ].