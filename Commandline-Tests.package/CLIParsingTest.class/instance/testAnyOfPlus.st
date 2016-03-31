tests-parameters
testAnyOfPlus
	| p |
	p := anyOf plus.
	self assert: p parse: #('down' 'right' 'incorrect' 'left') to: #('down' 'right') end: 2.
