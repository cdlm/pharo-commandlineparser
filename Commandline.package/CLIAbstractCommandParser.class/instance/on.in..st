running
on: argvArray in: environment 
	| context |
	context := self parse: argvArray.
	context isPetitFailure
		ifTrue: [ CLIInvalidInvocation signalWith: argvArray ].
	
	^ context environment: environment