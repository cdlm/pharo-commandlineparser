capturing
captureOptions: optionsNodes parameters: parametersNodes subcommand: aSubcommand
	^ CLICommand
		from: self
		options: optionsNodes
		parameters: parametersNodes
		subcommand: aSubcommand