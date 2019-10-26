as yet unclassified
loadActorTypeDefinitionsFrom: aSoup
	"Populate this instance's internal dictionary
	of ActivityStream Extension ActorType definitions based on an
	incoming Soup of the W3C stanard document"
	| table tableBodies |
	table := self findActorTypeDefTableIn: aSoup.
	tableBodies := self findTableBodiesIn: table.
	tableBodies do: [ :tbody |
		self loadTypeDefinitionFrom: tbody ].