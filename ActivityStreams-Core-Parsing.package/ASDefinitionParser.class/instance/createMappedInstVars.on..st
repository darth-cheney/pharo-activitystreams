as yet unclassified
createMappedInstVars: aCollection on: aClass
	"Compiles a class-side method on the passed-in class
	that returns a list of the names of inst vars that should
	be mapped to JSON"
	| method methodName |
	methodName := #jsonMappedInstVars.
	method := (String streamContents: [ :s | 
		s
			nextPutAll: methodName;
			nextPut: Character cr;
			nextPut: Character tab;
			nextPutAll: '^ {'.
		aCollection do: [ :propertyName |
			s 
				nextPutAll: propertyName printString;
				nextPut: $.;
				nextPut: Character cr;
				nextPut: Character tab ].
		s
			nextPutAll: '}' ]).
	aClass class compile: method.