accessing
atOption: anOptionParser
	^ self atOption: anOptionParser ifNone: [ NotFound signalFor: anOptionParser ]