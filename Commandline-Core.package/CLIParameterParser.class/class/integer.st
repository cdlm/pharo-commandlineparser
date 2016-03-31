factory
integer
	^ self new setParser:
		(PPElementParser
				on: #digit asParser plus token end ==> [ :token | token inputValue asNumber ]
				message: 'positive integer expected');
			name: 'num'
		