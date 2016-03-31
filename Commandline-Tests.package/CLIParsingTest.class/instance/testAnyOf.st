tests-parameters
testAnyOf
	self assert: anyOf parse: #('left') to: 'left'.
	self assert: anyOf parse: #('up') to: 'up'.
	
	self assert: anyOf parse: #('down' 'right') to: 'down' end: 1.
	
	self assert: anyOf fail: #('upper').
	self assert: anyOf fail: #('leftmost').
	self assert: anyOf fail: #('incorrect')
