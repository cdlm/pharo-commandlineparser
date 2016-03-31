tests-parameters
testAnyStar

	self assert: anyStar parse: #('abc') to: #('abc').
	self assert: anyStar parse: #('123') to: #('123').
	self assert: anyStar parse: #('x & ;') to: #('x & ;').
	self assert: anyStar parse: #('') to: #('').
	
	self assert: anyStar parse: #('123' 'abc' 'jk6') to: #('123' 'abc' 'jk6').
	
	self assert: anyStar parse: #() to: #().
