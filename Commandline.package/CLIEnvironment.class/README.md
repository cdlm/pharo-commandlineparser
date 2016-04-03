I am the environment for a command parser to be run in.

I hold the three common stream used in CLI program:
- stdin -> #in
- stdout -> #out
- stderr -> #err

I also define #exitWithStatus: to exit the VM with the status (integer)
given as parameter.