tests-options
testOptionArguments
	| p |
	p := optionShort parameter: any.
	self assert: p parse: #('-s' '42' '51' '1337')
		to: (p capture: '42')
		end: 2.
	
	p := optionShort parameter: anyOf , anyOf.
	self assert: p parse: #('-s' 'up' 'left' '1337')
		to: (CLIOption from: p parameter: #('up' 'left'))
		end: 3.
	