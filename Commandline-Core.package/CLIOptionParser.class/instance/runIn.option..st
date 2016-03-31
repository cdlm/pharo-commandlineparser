running
runIn: commandContext option: optionContext
	action	ifNotNil: [ action cull: commandContext cull: optionContext ]