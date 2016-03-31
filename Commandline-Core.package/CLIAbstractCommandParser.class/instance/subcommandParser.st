parsing
subcommandParser
	^ self subcommands
		ifEmpty: [ nil asParser ]
		ifNotEmptyDo: [ :subs | PPChoiceParser withAll: subs ]