as yet unclassified
cachedComments
	"Respond with a dictionary of cached Class Comments that should be used for
	the constructed classes of a given ActivityStream object type.
	Note that these were composed by hand, and are added here so that
	re-parsing can recreate the appropriate comments."
	CachedComments ifNil: [
		CachedComments := self initCachedComments ].
	^ CachedComments