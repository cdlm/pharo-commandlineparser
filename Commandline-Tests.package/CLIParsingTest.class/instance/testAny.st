tests-parameters
testAny
	self assert: any parse: #('abc') to: 'abc'.
	self assert: any parse: #('123') to: '123'.
	self assert: any parse: #('x & ;') to: 'x & ;'.
	self assert: any parse: #('') to: ''.
	
	self assert: any parse: #('123' 'abc') end: 1.
	
	self assert: any fail: #().
