baseline
baseline: spec
	<baseline>
	spec for: #'common' do: [
		spec
			package: 'Commandline-Core' with: [ spec requires: #('PetitParser') ];
			package: 'Commandline-Tests' with: [ spec requires: #('Commandline-Core') ];
			project: 'PetitParser' with: [
				spec
					className: 'ConfigurationOfetitParser';
					version: 'stable';
					smalltalkhubUser: 'Moose' project: 'PetitParser' ] ]
