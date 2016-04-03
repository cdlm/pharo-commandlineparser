running
asRootOn: argvArray in: environment 
	| context |
	context := self parseArguments: argvArray.
	context isPetitFailure
		ifTrue: [ CLIInvalidInvocation signalWith: argvArray ].
	
	^ context environment: environment