tests-options
testOptionLong
	self assert: optionLong
		parse: #('--long')
		to: (optionLong capture).
	
	self assert: optionLong fail: #('--long-long').