accessing
atOption: anOptionParser ifNone: aBlock
	| opt |
	opt := options
				detect: [:o | o specification == anOptionParser ]
				ifNone: [ ^ aBlock value ].
	^ opt parameter