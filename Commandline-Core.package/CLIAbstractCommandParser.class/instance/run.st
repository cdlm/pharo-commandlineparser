running
run
	"Run the command, for real (actual stdin/out/err, exit does exit).
	For testing inside an image, you want a CLIAdhocEnvironment instead"
	| coralParameters |
	coralParameters := CommandLine uniqueInstance allParameters copyAfter: '--coral'. 
	^ self
		runAsRootOn: coralParameters
		in: CLIEnvironment new