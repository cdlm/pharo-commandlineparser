parsing
argumentsParser
	^ (self optionsParser , self parametersParser , self subcommandParser) end
		==> [ :nodes |
				self
					captureOptions: nodes first
					parameters: nodes second
					subcommand: nodes third ]