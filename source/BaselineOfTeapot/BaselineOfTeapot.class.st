Class {
	#name : #BaselineOfTeapot,
	#superclass : #BaselineOf,
	#category : #BaselineOfTeapot
}

{ #category : #baselines }
BaselineOfTeapot >> baseline: spec [

	<baseline>
	spec
		for: #common
		do: [
			self setUpDependencies: spec.
			
			spec
				package: 'Teapot-Core' with: [ spec requires: #('NeoJSON') ];
				package: 'Teapot-Tests' with: [ spec requires: 'Teapot-Core' ];
				package: 'Teapot-Tools' with: [ spec requires: 'Teapot-Core' ].

			spec
				group: 'Tests' with: #('Teapot-Tests');
				group: 'Tools' with: #('Teapot-Tools');
				group: 'Deployment' with: #('Teapot-Core');
				group: 'Development' with: #('Tests' 'Tools');
				group: 'default' with: 'Development' ]
]

{ #category : #baselines }
BaselineOfTeapot >> setUpDependencies: spec [

	spec
		baseline: 'NeoJSON'
		with: [ spec
				repository: 'github://svenvc/NeoJSON:v17/repository';
				loads: #('core') ]
]
