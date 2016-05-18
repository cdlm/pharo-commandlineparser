as yet unclassified
recognizeIn: shellWords startingAt: index onFailure: failBlock
	^ (shellWords size >= 1 and: [ name = shellWords first ])
		ifTrue: [ CLICommand new name: name; yourself ]
		ifFalse: [ failBlock value ]