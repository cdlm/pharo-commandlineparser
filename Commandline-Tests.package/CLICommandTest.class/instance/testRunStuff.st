tests-running
testRunStuff
	command runOn: #('dostuff' '--stuff' 'stuff just for you') in: environment.
	self assert: environment err isEmpty.
	self
		assert: 'Doing stuff just for you!
'
		equals: environment out contents