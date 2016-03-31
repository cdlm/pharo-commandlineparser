fixtures
anyOf
	^ (CLIParameterParser anyOf: #(left right up down))
		name: 'direction'