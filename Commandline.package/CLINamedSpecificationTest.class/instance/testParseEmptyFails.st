tests
testParseEmptyFails
	self namedSpecification
		recognizeIn: #()
		startingAt: 1
		onFailure: [ ^ self ].
	
	self fail