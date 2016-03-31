tests-running
testRun
	command runOn: #('dostuff') in: environment.
	self assert: environment err isEmpty.
	self assert: environment out contents = 'Doing generic stuff!
'