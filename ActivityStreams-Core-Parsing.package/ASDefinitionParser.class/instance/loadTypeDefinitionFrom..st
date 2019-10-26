as yet unclassified
loadTypeDefinitionFrom: aTBodySoup
	"Loads a single type definition into this
	instance's dictionary from a Soup object on
	the tbody in the W3C definition file"
	| definition |
	definition := Dictionary new.
	definition
		at: #type put: (self findTypeNameIn: aTBodySoup);
		at: #extends put: (self findTypeExtendsIn: aTBodySoup);
		at: #notes put: (self findTypeNotesIn: aTBodySoup);
		at: #properties put: (self findTypePropertiesIn: aTBodySoup).
	resultDict at: (definition at: #type) put: definition.
	results add: definition.