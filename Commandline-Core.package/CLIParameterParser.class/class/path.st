factory
path
	self shouldBeImplemented.
	"^ self new
		setParser: (PPPredicateObjectParser matching: FilesystemPathParser message: 'path expected');
		name: 'path'
	"