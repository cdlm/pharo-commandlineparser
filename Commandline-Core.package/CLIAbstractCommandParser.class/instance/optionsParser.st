parsing
optionsParser
	^ self options
		ifEmpty: [ nil asParser ]
		ifNotEmptyDo: [ :opts | (PPChoiceParser withAll: opts) star ]