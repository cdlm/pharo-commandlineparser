fixtures
command
	^ (CLICommandParser named: 'foo')
		aliases: #('fu' 'f');
		options: {
			self optionBoth parameter: self anyOf.
			self optionLong.
			self optionShort };
		parameters: { self any }