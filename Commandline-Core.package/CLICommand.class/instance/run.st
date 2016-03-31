running
run
	[
		options do: [ :each | each runIn: self ].
		specification runIn: self
	]
	on: CLIExit do: [ :exit |
		self exitStatus: exit exitStatus.
		environment exitWithStatus: exitStatus ]