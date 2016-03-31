tests-running
testRunMore
	command runOn: #('dostuff' '--more') in: environment.
	self assert: environment err isEmpty.
	self
		assert: 'Doing generic stuff!
Doing it even more!
'
		equals: environment out contents