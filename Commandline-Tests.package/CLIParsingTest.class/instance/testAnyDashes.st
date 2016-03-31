tests-fixme
testAnyDashes
	<expectedFailure>
	"There is an ambiguity: should we accept an argument even if it looks like an option flag?"
	self assert: any fail: #('-x').
	self assert: any fail: #('--foo').
	
	self assert: anyPlus parse: #('foo' '-x') to: #('foo') end: 1.
	
	self assert: anyStar fail: #('--foo' '-x') end: 0.
	self assert: anyStar parse: #('--foo' '-x') to: #() end: 0.