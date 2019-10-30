as yet unclassified
createJsonMappingFor: aClass
	"Adds the class side method
	#neoJsonMapping: to the given
	class"
	| method |
	method := (String streamContents: [ :s |
		s
			nextPutAll: 'neoJsonMapping: mapper';
			nextPut: Character cr;
			nextPut: Character tab;
			nextPutAll: 'super neoJsonMapping: mapper.';
			nextPut: Character cr;
			nextPut: Character tab;
			nextPutAll: 'mapper for: self do: [ :mapping |';
			nextPut: Character cr;
			nextPut: Character tab;
			nextPut: Character tab;
			nextPutAll: 'mapping mapInstVars: self jsonMappedInstVars ].' ]).
	aClass class compile: method.
	