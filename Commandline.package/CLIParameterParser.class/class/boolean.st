factory
boolean
	| trueToken falseToken |
	trueToken := (self caseInsensitiveKeywords: #('true' 'yes')) end ==> [:token | true].
	falseToken := (self caseInsensitiveKeywords: #('false' 'no')) end ==> [:token | false].
	^ self new
		setParser: (PPElementParser on: trueToken / falseToken message: 'boolean expected');
		name: 'bool'