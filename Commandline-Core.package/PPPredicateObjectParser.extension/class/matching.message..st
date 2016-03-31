*Commandline-Core
matching: elementParser message: aString
	| result |
	^ self any ==> [:node | elementParser parse: node]
