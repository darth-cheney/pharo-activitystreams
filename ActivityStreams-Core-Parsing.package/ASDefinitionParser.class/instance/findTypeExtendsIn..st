as yet unclassified
findTypeExtendsIn: aTBodySoup
	"Responds with a list of Strings corresponding
	to other ActivityStream Types that this Type
	extends, as it appears in the definition table tbody"
	| rows extendsRow defnameTags |
	rows := aTBodySoup findAllChildTags: #tr.
	rows ifEmpty: [ Error signal: 'tbody does not contain any tr elements!' ].
	extendsRow := rows third.
	((extendsRow findChildTag: #td) text = 'Extends:')
		ifTrue: [ 
			defnameTags := extendsRow findAllTags: #a.
			^ defnameTags collect: [ :tag | tag text ]].
	^ Array new.