tests
testSimpleCommand
	| args spec cmd |
	args := #('ls').
	spec := (CLICommandSpecification new name: 'ls').
	cmd := spec
		recognizeIn: args
		startingAt: 1
		onFailure: [ self fail ].
	self assert: cmd spec equals: spec