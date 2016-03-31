tests-commands
testSubcommand
	self assert: subcommand parse: #('bar' 'foo' 'xyz' ).
	self assert: subcommand parse: #('bar' 'fu' 'xyz' ).
	self assert: subcommand parse: #('bar' 'f' 'xyz' ).
	
	self assert: subcommand fail: #('notbar' 'foo' 'xyz').
	
	self assert: subcommand parse: #('bar' 'foo' '-s' 'xyz' ).
	self assert: subcommand parse: #('bar' 'foo' '--long' 'xyz' ).
	self assert: subcommand parse: #('bar' 'foo' '-b' 'right' 'xyz' ).
	self assert: subcommand parse: #('bar' 'foo' '--both' 'down' '--long' '-s' 'xyz' ).
