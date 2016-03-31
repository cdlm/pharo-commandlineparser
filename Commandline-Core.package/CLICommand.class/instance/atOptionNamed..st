accessing
atOptionNamed: aSymbol
	^ self atOptionNamed: aSymbol ifNone: [ NotFound signalFor: aSymbol ]