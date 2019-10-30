as yet unclassified
createClassFromDefinition: aDefinition
	"Creates a ew ActivityStream object class
	based on a Dictionary instance that is the
	result of parsing by this object."
	| type superCls cls className propertyNames |
	type := (aDefinition at: #type).
	superCls := self getSuperclassForDef: aDefinition.
	className := self createdClassPrefix, type.
	propertyNames := ' ' join: (aDefinition at: #properties).
	cls := superCls 
				subclass: className asSymbol
				instanceVariableNames: propertyNames
				classVariableNames: ''
				package: 'ActivityStreams-Core-',(aDefinition at: #category).
	self
		compileAccessorsFor: cls using: (aDefinition);
		createMappedInstVars: (aDefinition at: #properties) on: cls;
		createJsonMappingFor: cls with: aDefinition.
	cls comment: (self createCommentFor: type with: ((aDefinition at: #notes) asString)).