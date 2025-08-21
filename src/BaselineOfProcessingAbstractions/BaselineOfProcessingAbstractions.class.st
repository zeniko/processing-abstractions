Class {
	#name : #BaselineOfProcessingAbstractions,
	#superclass : #BaselineOf,
	#category : #BaselineOfProcessingAbstractions
}

{ #category : #loading }
BaselineOfProcessingAbstractions class >> loadLepiter [
	IceRepository registry
		detect: [ :aRepository |
			aRepository name = 'processing-abstractions' ]
		ifFound: [ :aRepository | 
			| defaultDatabase currentProperties |
			defaultDatabase := LeDatabasesRegistry defaultLogicalDatabase.
			currentProperties := defaultDatabase properties.
			currentProperties addRegisteredDirectory: aRepository repositoryDirectory / 'lepiter'.
			defaultDatabase reload ]
		ifNone: [
			self inform: 'Repository not found.' ]
]

{ #category : #baseline }
BaselineOfProcessingAbstractions >> baseline: spec [
	<baseline>
	^ spec for: #common do: [
		spec
			baseline: 'GtExploration'
				with: [ spec repository: 'github://zeniko/gt-exploration:thesis/src' ];
			package: 'ProcessingAbstractions'
				with: [ spec requires: 'GtExploration' ]
	]
]
