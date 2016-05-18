tests
testParseMismatchFails
	self namedSpecification
		recognizeIn: self mismatchArgv
		startingAt: 1
		onFailure: [ ^ self ].

	self fail