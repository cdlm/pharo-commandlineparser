running
exitWithStatus: anInteger 
	"Quit the VM process, returning anInteger to the parent process."
	
	self flag: #vmDoesNotKnowHowToProperlyExit.
	SmalltalkImage current snapshot: false andQuit: true