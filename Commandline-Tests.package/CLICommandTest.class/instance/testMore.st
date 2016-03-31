tests-parsing
testMore
	| cmd |
	cmd := self assert: command parse: #('dostuff' '-m').
	self assert: (cmd hasOptionNamed: #more).

	cmd := self assert: command parse: #('dostuff' '--more').
	self assert: (cmd hasOptionNamed: #more).

	self assert: command fail:  #('dostuff' '-more').
	self assert: command fail:  #('dostuff' '--m').
