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
	^ GtHomeCard page
		title: 'Unterrichtseinheiten';
		description: 'Material für Schüler:innen';
		setPriority;
		databaseName: 'zeniko:processing-abstractions';
		pageName: 'Einleitung';
		assertInvariant;
		yourself
]

{ #category : #initialization }
ProcessingAbstractionsHomeSection >> sectionTitle [
	^ 'Processing Abstractions (zeniko)'
]
