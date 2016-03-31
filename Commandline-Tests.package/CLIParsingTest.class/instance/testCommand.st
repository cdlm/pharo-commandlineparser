tests-commands
testCommand
	self assert: command parse: #('foo' 'xyz' ).
	self assert: command parse: #('fu' 'xyz' ).
	self assert: command parse: #('f' 'xyz' ).
	
	self assert: command fail: #('notfoo' 'xyz').
	
	self assert: command parse: #('foo' '-s' 'xyz' ).
	self assert: command parse: #('foo' '--long' 'xyz' ).
	self assert: command parse: #('foo' '-b' 'right' 'xyz' ).
	self assert: command parse: #('foo' '--both' 'down' '--long' '-s' 'xyz' ).
