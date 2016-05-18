tests
testParseMatching
	| result |
	result := self namedSpecification
		recognizeIn: self matchingArgv
		startingAt: 1
		onFailure: [ self fail ].

	self assert: result name equals: 'foo'