as yet unclassified
getSuperclassForDef: aDefinition
	"Respond with a Class that represents the
	desired Superclass for the Class that will
	be created according to the provided definition
	dict. Note that this definition dict is one of
	the results of parsing. Defaults to Object"
	| tailName |
	(aDefinition at: #extends) ifEmpty: [ ^ Object ].
	tailName := (aDefinition at: #extends) last.
	^ (self createdClassPrefix,tailName) asClass