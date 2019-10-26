as yet unclassified
findTypePropertiesIn: aTBodySoup
	"Responds with an Array of property names
	for the given ActivityStream Type definition
	as present in a definition tbody"
	| rows propsRow allProps |
	rows := aTBodySoup findAllChildTags: #tr.
	rows ifEmpty: [ Error signal: 'tbody does not have any tr elements!' ].
	propsRow := rows fourth.
	allProps := (propsRow findAllTags: #a) collect: [ :tag | tag text ].
	
	"Reject any names starting with cap letters.
	These are references to other Types that are 
	sloppily in the given table cell."
	^ allProps reject: [ :propName | propName = (propName capitalized) ].