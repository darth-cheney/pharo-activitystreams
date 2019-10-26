compiling
compileAccessorsFor: aClass using: aDefinition
	"Compiles basic accessor methods for the given
	class based on the properties enumerated in the
	incoming definition dictionary"
	| properties pragmaDef |
	properties := aDefinition at: #properties.
	pragmaDef := '<ActStreamBase>'.
	properties do: [ :propName |
		| method setMethodName setMethod |
		method := (String streamContents: [ :s |
			s
				nextPutAll: propName;
				nextPut: Character cr;
				nextPut: Character tab;
				nextPutAll: pragmaDef;
				nextPut: Character cr;
				nextPut: Character tab;
				nextPutAll: '^ ';
				nextPutAll: propName ]).
		setMethodName := propName,':'.
		setMethod := (String streamContents: [ :s |
			s
				nextPutAll: setMethodName;
				nextPutAll: ' anObject';
				nextPut: Character cr;
				nextPut: Character tab;
				nextPutAll: pragmaDef;
				nextPut: Character cr;
				nextPut: Character tab;
				nextPutAll: propName;
				nextPutAll: ' := anObject']).
		aClass compile: method.
		aClass compile: setMethod ].
		
