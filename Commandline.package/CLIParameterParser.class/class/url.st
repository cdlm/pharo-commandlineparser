factory
url
	self shouldBeImplemented.
	"^ self new
		setParser: (PPPredicateObjectParser matching: urlParser message: 'URL expected');
		name: 'url'
	"