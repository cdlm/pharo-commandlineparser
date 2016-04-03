factory
keyword: aString
	^ self new
		setParser: (PPPredicateObjectParser expect: aString message: aString , ' expected');
		name: aString
		