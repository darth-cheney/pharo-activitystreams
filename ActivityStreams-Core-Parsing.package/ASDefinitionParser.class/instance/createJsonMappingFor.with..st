as yet unclassified
createJsonMappingFor: aClass with: aDefinition
	"Adds the class side method
	#neoJsonMapping: to the given
	class"
	| method isSubclass |
	isSubclass := (aDefinition at: #extends) isNotEmpty.
	method := (String streamContents: [ :s |
		s
			nextPutAll: 'neoJsonMapping: mapper';
			nextPut: Character cr;
			nextPut: Character tab.
		isSubclass ifTrue: [ 
			s
				nextPutAll: 'super neoJsonMapping: mapper.';
				nextPut: Character cr;
				nextPut: Character tab ].
		s
			nextPutAll: 'mapper for: self do: [ :mapping |';
			nextPut: Character cr;
			nextPut: Character tab;
			nextPut: Character tab;
			nextPutAll: 'mapping mapInstVars: self jsonMappedInstVars ].' ]).
	aClass class compile: method.
	