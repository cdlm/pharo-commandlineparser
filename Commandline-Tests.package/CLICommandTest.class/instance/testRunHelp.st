tests-todo
testRunHelp
	command runOn: #('dostuff' '--help' '--more') in: environment.
	self deny: environment err isEmpty.
	self assert: environment out isEmpty "it should have exited just after displaying the help"