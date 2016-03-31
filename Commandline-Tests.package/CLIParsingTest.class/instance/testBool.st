tests-parameters
testBool
	self assert: (CLIParameterParser boolean) fail: #('falsely').
	self
		assert: (CLIParameterParser boolean) star
		parse: #('true' 'false' 'yes' 'no' 'No' 'NO')
		to: #(true false true false false false)