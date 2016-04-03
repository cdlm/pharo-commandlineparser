accessing-documentation
synopsis
	"Typical patterns of invocation"
	
	^ String streamContents: [ :s |
		s nextPutAll: self name.
		self hasOptions ifTrue: [ s nextPutAll: ' [options...]' ].
		self hasParameters ifTrue: [ s nextPutAll: ' [arguments...]' ].
		self hasSubcommands ifTrue: [ s nextPutAll: '[command]' ].
	]