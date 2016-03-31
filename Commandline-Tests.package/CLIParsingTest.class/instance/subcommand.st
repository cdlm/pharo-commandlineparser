fixtures
subcommand
	^ (CLICommandParser named: 'bar')
		subcommands: { self command }