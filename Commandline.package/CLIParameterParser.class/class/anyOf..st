factory
anyOf: anArray
	^ self new
		setParser: (PPPredicateObjectParser anyOf: anArray);
		name: ('|' join: anArray)