initialization
long: aString
	aString isEmpty ifTrue: [ CLIInvalidSpec signal: 'Long form cannot be ''--''' ].
	long := aString asSymbol.
	self resetParser.