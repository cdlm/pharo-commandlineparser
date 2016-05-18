tests
testParameterSpec
	| spec param |
	spec := CLIParameterSpecification new name: 'file'.
	self assert: spec name equals: 'file'.
	
	param := spec recognizeIn: #( 'foo/bar/baz.qux' ) startingAt: 1 onFailure: [ self fail ].
	self assert: param name equals: 'file'.
	self assert: param value equals: 'foo/bar/baz.qux'