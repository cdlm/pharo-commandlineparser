running
exitWithStatus: anInteger 
	"Quit the VM process, returning anInteger to the parent process."
	
	(Exit status: anInteger) signal