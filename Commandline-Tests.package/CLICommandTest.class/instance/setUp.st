running
setUp
	"example taken from http://rubydoc.info/gems/cri/2.0.2/file/README.md"
	environment := CLIAdhocEnvironment in: nil out: String new writeStream err: String new writeStream.
	
	command := (CLICommandParser named: 'dostuff')
		aliases: #('ds' 'stuff');
		summary: 'does stuff';
		description: 'This command does a lot of stuff. I really mean a lot.'.
		
	h := command option -'h' --'help';
		description: 'show help for this command';
		do: [ :cmd |
			cmd err << cmd help.
			cmd exitSuccess ].
	
	m := command option -'m' --'more';
		description: 'do even more stuff'.

	s := command option -'s' --'stuff'; any;
		 description: 'specify stuff to do'.
	
	command do: [ :cmd | |stuff|
		stuff := cmd atOptionNamed: #stuff ifNone: [ 'generic stuff' ].
		cmd << 'Doing ' << stuff << '!'; cr.
		(cmd hasOptionNamed: #more)
			ifTrue: [ cmd << 'Doing it even more!'; cr ]
	]