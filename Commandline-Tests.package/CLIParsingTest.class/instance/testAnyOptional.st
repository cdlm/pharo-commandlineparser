tests-parameters
testAnyOptional
	| p |
	p := any optional.
	self assert: p parse: #('abc') to: 'abc'.
	self assert: p parse: #('123') to: '123'.
	self assert: p parse: #('x & ;') to: 'x & ;'.
	self assert: p parse: #('') to: ''.
	
	self assert: p parse: #('123' 'abc') end: 1.
	
	self assert: p parse: #() to: nil.
