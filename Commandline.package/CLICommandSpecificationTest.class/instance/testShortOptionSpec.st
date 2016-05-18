tests
testShortOptionSpec
	| spec opt |
	spec := CLIOptionSpecification new short: $x.
	self assert: spec short equals: $x.
	self deny: spec hasParameters.
	
	opt := spec recognizeIn: #( '-x' ) startingAt: 1 onFailure: [ self fail ].
	self assert: opt short equals: $x.
	self