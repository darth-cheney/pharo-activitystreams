as yet unclassified
createAllClasses
	"Creates classes for all definitions"
	self definitions do: [ :def |
		self createClassFromDefinition: def ]