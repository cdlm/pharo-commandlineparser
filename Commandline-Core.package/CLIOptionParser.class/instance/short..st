initialization
short: aStringOrCharacter
	| name |
	name := aStringOrCharacter asString.
	name size ~= 1 ifTrue: [ CLIInvalidSpec signal: 'Short form must be a single character' ].
	name first == $- ifTrue: [ CLIInvalidSpec signal: 'Short form option cannot be --' ].
	short := name asSymbol.
	self resetParser.