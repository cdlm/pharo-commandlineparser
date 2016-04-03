I am responsible of the construction of the command parser (options included).
I can parse the using input from an array of string or from a string.

You can look at an example of a simple command parser building in my class-side
message #exampleGreetCommandParser.

To test this example you can do:
| env cmdParser |
env := CLIAdhocEnvironment in: nil out: String new writeStream err: String new writeStream.
cmdParser := CLICommandParser exampleGreetCommandParser.
cmdParser runOn: #('greet' '--help') in: env.
cmdParser runOn: 'greet' in: env.
cmdParser runOn: 'greet -n John' in: env.
env out contents inspect. "Here you will find two greeting."
env err contents inspect. "Here you will find the help of the command."