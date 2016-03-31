accessing
atOptionNamed: aSymbol ifNone: aBlock
	| opt |
	opt := options
				detect: [:o | o name == aSymbol ]
				ifNone: [ ^ aBlock value ].
	^ opt parameter