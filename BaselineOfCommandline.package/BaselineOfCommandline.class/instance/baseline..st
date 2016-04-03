baseline
baseline: spec
	<baseline>
	spec for: #'common' do: [
		spec
			package: 'Commandline' with: [ spec requires: #('PetitParser') ];
			package: 'Commandline-Tests' with: [ spec requires: #('Commandline') ];
			project: 'PetitParser' with: [
				spec
					className: 'ConfigurationOfPetitParser';
					version: #stable;
					repository: 'http://smalltalkhub.com/mc/Moose/PetitParser/main' ] ]
