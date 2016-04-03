*Commandline
matching: elementParser
	^ self
		matching: elementParser
		message: 'object matching ' , elementParser printString , ' expected'