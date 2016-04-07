running
run
	[
		options do: [ :each | each runIn: self ].
		specification runIn: self
	]
	on: Exit do: [ :exit |
		self exitStatus: exit status.
		environment exitWithStatus: exitStatus ]