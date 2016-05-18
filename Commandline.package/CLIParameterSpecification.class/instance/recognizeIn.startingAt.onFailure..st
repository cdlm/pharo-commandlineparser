parsing
recognizeIn: shellWords startingAt: index onFailure: failBlock
	shellWords
		ifEmpty: [ failBlock value ]
		ifNotEmpty: [ CLIParameter from: self with: shellWords first ]