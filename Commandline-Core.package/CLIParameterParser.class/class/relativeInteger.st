factory
relativeInteger
	^ self new setParser:
		(PPElementParser
				on: ($- asParser optional , #digit asParser plus) token end ==> [ :token | token inputValue asNumber ]
				message: 'relative integer expected');
			name: 'num'
		