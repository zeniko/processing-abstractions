Class {
	#name : #ProcessingAbstractionsHomeSection,
	#superclass : #GtHomeMultiCardSection,
	#category : #'ProcessingAbstractions-Sections'
}

{ #category : #initialization }
ProcessingAbstractionsHomeSection >> cardPriorities [
	^ #(
		projectCard
	)
]

{ #category : #card }
ProcessingAbstractionsHomeSection >> projectCard [
	<gtSectionCard>
	^ GtHomeCard lazy
		title: 'Unterrichtseinheiten';
		description: 'Material für Schüler:innen';
		databaseName: 'zeniko:processing-abstractions';
		pageName: 'Einleitung';
		setPriority;
		loadLepiter: [
			Metacello new
				repository: 'github://zeniko/gt-exploration:main/src';
				baseline: 'GtExploration';
				load.
			#BaselineOfGtExploration asClass loadLepiter.
			Metacello new
				repository: 'github://zeniko/processing-abstractions:main/src';
				baseline: 'ProcessingAbstractions';
				load.
			#BaselineOfProcessingAbstractions asClass loadLepiter.
			self class updateGtWorld
		];
		assertInvariant;
		yourself
]

{ #category : #initialization }
ProcessingAbstractionsHomeSection >> sectionTitle [
	^ 'Processing Abstractions (zeniko)'
]
