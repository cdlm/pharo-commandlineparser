tests-parsing
testHelp
	| cmd |
	cmd := self assert: command parse: #('dostuff' '-h').
	self assert: (cmd hasOptionNamed: #help).
	
	cmd := self assert: command parse: #('dostuff' '--help').
	self assert: (cmd hasOptionNamed: #help).

	self assert: command fail:  #('dostuff' '-help').
	self assert: command fail:  #('dostuff' '--h').
