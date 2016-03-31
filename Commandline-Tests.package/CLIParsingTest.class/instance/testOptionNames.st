tests-options
testOptionNames
	self assert: optionShort displayName = '-s'.
	self assert: optionLong displayName = '--long'.
	self assert: optionBoth displayName = '-b/--both'.
	
	self assert: optionShort name = #s.
	self assert: optionLong name = #long.
	self assert: optionBoth name = #both