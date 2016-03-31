tests-parsing
testAlone
	| cmd |
	cmd := self assert: command parse: #('dostuff').
	self assert: cmd options isEmpty.
	self assert: cmd parameters isEmpty.
	self assert: cmd subcommand isNil