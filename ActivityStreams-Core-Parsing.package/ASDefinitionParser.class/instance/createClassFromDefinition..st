as yet unclassified
createClassFromDefinition: aDefinition
	"Creates a ew ActivityStream object class
	based on a Dictionary instance that is the
	result of parsing by this object."
	| superCls cls className propertyNames |
	superCls := self getSuperclassForDef: aDefinition.
	className := self createdClassPrefix, (aDefinition at: #type).
	propertyNames := ' ' join: (aDefinition at: #properties).
	cls := superCls 
				subclass: className asSymbol
				instanceVariableNames: propertyNames
				classVariableNames: ''
				package: 'ActivityStreams-Core-Objects'.
	self
		compileAccessorsFor: cls using: (aDefinition).
	cls comment: (aDefinition at: #notes) asString.