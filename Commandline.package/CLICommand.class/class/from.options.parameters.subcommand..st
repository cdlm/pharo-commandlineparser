instance creation
from: specification options: optionsArray parameters: parametersArray subcommand: aSubcommand 
	^ self basicNew
		initializeWith: specification
		options: optionsArray
		parameters: parametersArray
		subcommand: aSubcommand