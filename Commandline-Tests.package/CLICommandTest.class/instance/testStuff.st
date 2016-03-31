tests-parsing
testStuff
	self assert: command parse: #('dostuff' '-s' 'foo').
	self assert: command parse: #('dostuff' '--stuff' 'foo').
	self assert: command fail:  #('dostuff' '-stuff' 'foo').
	self assert: command fail:  #('dostuff' '--s' 'foo').

	self assert: command fail: #('dostuff' '-s').
	self assert: command fail: #('dostuff' '--stuff').
	self assert: command fail: #('dostuff' '-s' 'foo' 'bar').
	self assert: command fail: #('dostuff' '--stuff' 'foo' 'bar').
