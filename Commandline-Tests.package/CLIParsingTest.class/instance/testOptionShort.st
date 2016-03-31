tests-options
testOptionShort
	self assert: optionShort shortForm = '-s'.
	self assert: optionShort longForm = nil.
	
	self assert: optionShort parse: #('-s') to: optionShort capture.
	self assert: optionShort fail: #('--s').
	self assert: optionShort fail: #('-ss').