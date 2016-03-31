CLIParameter defines positional parameters to either a command or an option.
Parameters with >= multiplicities can be defined by having the parser match more than one ARGV element.

Instance Variables:
	name	<ProtoObject | PseudoContext>
	isOptional	<Boolean>
	isMultiple	<Boolean>
	parser	<PPParser>