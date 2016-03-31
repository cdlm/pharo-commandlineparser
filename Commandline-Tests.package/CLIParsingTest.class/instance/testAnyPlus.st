tests-parameters
testAnyPlus

	self assert: anyPlus parse: #('abc') to: #('abc').
	self assert: anyPlus parse: #('123') to: #('123').
	self assert: anyPlus parse: #('x & ;') to: #('x & ;').
	self assert: anyPlus parse: #('') to: #('').
	
	self assert: anyPlus parse: #('123' 'abc' 'jk6') to: #('123' 'abc' 'jk6').
	
	self assert: anyPlus fail: #().
