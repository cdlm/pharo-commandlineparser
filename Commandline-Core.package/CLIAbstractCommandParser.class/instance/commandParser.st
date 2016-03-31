parsing
commandParser
	^ (PPPredicateObjectParser anyOf: (self aliases copyWithFirst: self name)) token