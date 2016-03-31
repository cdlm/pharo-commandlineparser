accessing
displayName
	| forms |
	forms := OrderedCollection new: 2.
	self shortForm ifNotNilDo: [ :it | forms add: it ].
	self longForm ifNotNilDo: [ :it | forms add: it ].
	^ $/ join: forms