as yet unclassified
loadObjectTypeDefinitionsFrom: aSoup
	"Populate this instance's internal dictionary
	of ActivityStream Extension Object Type definitions based on an
	incoming Soup of the W3C stanard document"
	| table tableBodies |
	table := self findObjectTypeDefTableIn: aSoup.
	tableBodies := self findTableBodiesIn: table.
	tableBodies do: [ :tbody |
		self loadTypeDefinitionFrom: tbody ].