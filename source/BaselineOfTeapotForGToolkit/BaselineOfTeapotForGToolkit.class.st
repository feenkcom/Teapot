Class {
	#name : #BaselineOfTeapotForGToolkit,
	#superclass : #BaselineOf,
	#category : #BaselineOfTeapotForGToolkit
}

{ #category : #baseline }
BaselineOfTeapotForGToolkit >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ spec
				baseline: 'NeoJSON'
				with: [ spec
						repository: 'github://svenvc/NeoJSON:master/repository';
						loads: #('core') ].

			spec
				package: 'Teapot-Core' with: [ spec requires: #('NeoJSON') ];
				package: 'Teapot-Tests' with: [ spec requires: 'Teapot-Core' ] ]
]
