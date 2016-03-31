parsers
caseInsensitiveKeywords: aCollection
	^ (PPChoiceParser withAll: (aCollection collect: [ :each | each asParser caseInsensitive ])) token