parsing
parseOn: aStream
	| result |
	aStream atEnd ifTrue: [ ^ PPFailure message: 'element expected' at: aStream position ].
	result := parser "end" parse: aStream uncheckedPeek.
	^ result isPetitFailure
		ifFalse: [
			aStream next.
			result ]
		ifTrue: [
			PPFailure
				message: (message ifNil: ['error: ' , result printString , ' in element'])
				at: aStream position ]
