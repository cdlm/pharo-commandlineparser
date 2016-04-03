accessing-documentation
help
	^ String streamContents: [ :help |
		help << 'Usage: ' << self synopsis; cr.
		help << self summary; cr
	]