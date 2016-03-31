accessing-documentation
manual
	"Full documentation (manpage-like)"
	
	^ String streamContents: [:man |
		man << 'NAME'; cr.
		man << '    ' << self name << ' -- ' << self summary; cr; cr.
		
		man << 'SYNOPSIS'; cr.
		man << '    ' << self synopsis; cr; cr.
		
		self description ifNotEmptyDo: [ :desc |
			man << 'DESCRIPTION'; cr.
			man << '    ' << desc; cr; cr ].
	
		self options ifNotEmptyDo: [ :opts |
			man << 'OPTIONS'; cr.
			opts do: [ :each |
				man << '    ' << each displayName; cr.
				man << '        ' << each description; cr	] ].

		self documentation ifNotEmptyDo: [ :doc |
			man << 'DOCUMENTATION'; cr.
			man << '    ' << doc; cr; cr ].

	]