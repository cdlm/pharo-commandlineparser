parsing
parser
	"A parser that will recognize this command at the beginning of a stream of arguments"

	^ parser ifNil: [
		self commandParser , self argumentsParser
			==> [ :nodes | nodes second ] ]