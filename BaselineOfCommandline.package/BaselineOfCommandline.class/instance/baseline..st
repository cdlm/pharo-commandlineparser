baseline
baseline: spec
	<baseline>
	spec for: #'common' do: [
		spec
			package: 'Commandline-Core' with: [ spec requires: #('PetitParser') ];
			package: 'Commandline-Tests' with: [ spec requires: #('Commandline-Core') ];
			project: 'PetitParser' with: [
				spec
					className: 'ConfigurationOfPetitParser';
					version: #stable;
					repository: 'http://smalltalkhub.com/mc/Moose/PetitParser/main' ] ]
