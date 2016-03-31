tests-parameters
testNumbers
	| numbers |
	numbers := #('123' '42' '-12' '3.14').
	self assert: (CLIParameterParser integer) star
		parse: numbers to: #(123 42) end: 2.
	self assert: (CLIParameterParser relativeInteger) star
		parse: numbers to: #(123 42 -12) end: 3.
	self assert: (CLIParameterParser number) star
		parse: numbers to: #(123 42 -12 3.14).
