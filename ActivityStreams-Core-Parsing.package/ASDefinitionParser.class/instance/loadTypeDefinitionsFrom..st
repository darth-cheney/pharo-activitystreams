as yet unclassified
loadTypeDefinitionsFrom: aSoup
	"Populate this instance's internal dictionary
	of ActivityStream Type definitions based on an
	incoming Soup of the W3C stanard document"
	| table tableBodies |
	table := self findTypeDefTableIn: aSoup.
	tableBodies := self findTableBodiesIn: table.
	tableBodies do: [ :tbody |
		self loadTypeDefinitionFrom: tbody ].
	