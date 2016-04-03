I am specialized environment for which you can set the streams I should use
for stdin, stdout and stderr.

Example:
env := CLIAdhocEnvironment in: nil out: String new writeStream err: String new writeStream.
env inspect.

I am mainly used for debugging and testing.