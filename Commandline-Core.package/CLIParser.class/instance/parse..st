parsing
parse: anObject
	^ super parse:
		(anObject isString
			ifTrue: [ Character space split: anObject ]
			ifFalse: [ anObject ])
