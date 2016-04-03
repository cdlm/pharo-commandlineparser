accessing
parser
	^ parser ifNil: [ | choices |
		choices := OrderedCollection new: 2.
		self shortForm ifNotNilDo: [ :it | choices add: it asParser ].
		self longForm ifNotNilDo: [ :it | choices add: it asParser ].
		parser := PPElementParser
			on: (PPChoiceParser withAll: choices) token end
			message: 'Option ' , self name , ' expected'.
		parser := parameter isNil
			ifTrue: [ parser ==> [:node | self capture ] ]
			ifFalse: [ parser , parameter ==> [:nodes | self capture: nodes second ] ]
	]