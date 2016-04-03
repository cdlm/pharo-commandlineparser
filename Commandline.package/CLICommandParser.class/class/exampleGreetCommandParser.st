examples
exampleGreetCommandParser
	| cmdParser |
	cmdParser := (self named: 'greet')
                    aliases: #('g');
                    summary: 'Greets you nicely';
                    description: 'This command is here to greet you nicely. I hope you will enjoy it.'.

	cmdParser option
    	-'h';
    	--'help';
    	description: 'Display help for this command.';
    	do: [ :cmd |
        	cmd err << cmd help.
        	cmd exitSuccess ].

	cmdParser option
	    -'n';
	    --'name';
	    any;
	    description: 'Set the name of the person to greet.'.

	cmdParser do: [ :cmd |
	    cmd 
			<< ('Hello {1}' format: { cmd atOptionNamed: #name ifNone: [ 'you' ] });
			cr;
			exitSuccess	 ].
	
	^ cmdParser