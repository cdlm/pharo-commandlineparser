testing
hasOptionNamed: aSymbol 
	self atOptionNamed: aSymbol ifNone: [ ^ false ].
	^ true