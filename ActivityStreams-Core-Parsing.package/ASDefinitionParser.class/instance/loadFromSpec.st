as yet unclassified
loadFromSpec
	| soup |
	soup := Soup fromString: (self specUrl) asUrl retrieveContents.
	self loadAllFrom: soup.