parsing
parseArguments: anObject
	^ self argumentsParser parse:
		(anObject isString
			ifTrue: [ Character space split: anObject ]
			ifFalse: [ anObject ])
