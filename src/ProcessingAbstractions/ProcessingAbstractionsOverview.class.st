Class {
	#name : 'ProcessingAbstractionsOverview',
	#superclass : 'PrioritySlideshow',
	#category : 'ProcessingAbstractions-Slides',
	#package : 'ProcessingAbstractions',
	#tag : 'Slides'
}

{ #category : 'utility' }
ProcessingAbstractionsOverview class >> show [
	super show
]

{ #category : 'slides' }
ProcessingAbstractionsOverview >> abstract: aSlide [
	<gtSlide>
	^ aSlide text
		setPriority;
		textMargin: 5;
		newTextWithFormat: (self asBigText: 'Ideen/Absichten') bold;
		newTextWithFormat: (self asText: 'Schüler:innen können ...') bold;
		newTextWithFormat: (self asText: '- Programme untersuchen');
		newTextWithFormat: (self asText: '- Programme verändern');
		newTextWithFormat: (self asText: '- Programme selbst schreiben');
		newTextWithFormat: (self asText: 'Lehrpersonen können ...') bold;
		newTextWithFormat: (self asText: '- interaktive Einheiten kreieren');
		newTextWithFormat: (self asText: '- durch Abstraktionsstufen führen')
]

{ #category : 'slides' }
ProcessingAbstractionsOverview >> introQuestion2: aSlide [
	<gtSlide>
	^ aSlide elementAndElement
		setPriority;
		newTextWithFormat: (self asBigText: 'Was geschieht hier?') bold;
		leftElement: [ ((ProcessingSource
				fromString: 'a = 1
b = 1
while a < 15:
	a += b
	b = a - b
print(a)') renderLiveView: #gtSourceCodeFor:) asElement ];
		rightElement: [ (self introQuestion3: GtProtoLiveSlide new) asElement ]
]

{ #category : 'slides' }
ProcessingAbstractionsOverview >> introQuestion3: aSlide [
	<gtSlide>
	^ aSlide text
		newTextWithFormat: (self asText: '- einzelne Befehle?') , self cr , (self asText: '- Ergebnis?')
				, self cr , (self asText: '- in der Maschine?')
]

{ #category : 'slides' }
ProcessingAbstractionsOverview >> introQuestion: aSlide [
	<gtSlide>
	^ aSlide labelAndElement
		setPriority;
		newTextWithFormat: (self asBigText: 'Was geschieht hier?') bold;
		element: [ (ProcessingSource
				fromString: 'a = 1
b = 1
while a < 15:
	a += b
	b = a - b
print(a)') renderLiveView: #gtSourceCodeFor: ]
]

{ #category : 'slides' }
ProcessingAbstractionsOverview >> introQuestionLepiter: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		setPriority;
		pageNamed: 'Beispiel: Was geschieht hier?'
			from: 'zeniko:processing-abstractions';
		yourself
]

{ #category : 'accessing' }
ProcessingAbstractionsOverview >> slidePriorities [
	^ #(title: #introQuestion: #introQuestion2: #abstract: #introQuestionLepiter:)
]

{ #category : 'slides' }
ProcessingAbstractionsOverview >> title: aSlide [
	<gtSlide>
	<text: '# Ein Überblick über *Processing Abstractions*

Diese Präsentation bietet eine kurze Einführung in die Ideen der [*Processing Abstractions*](https://github.com/zeniko/processing-abstractions) Lernumgebung, welche als Teil einer [GymInf-Abschlussarbeit](https://github.com/zeniko/gyminf-thesis) entstanden ist.

Die Präsentation zeigt Inhalte *live* und wird folgendermassen gestartet:
```
ProcessingAbstractionsOverview new
```
'>
	^ aSlide titleWithFooter
		setPriority;
		titleBottomPadding: 30;
		subtitleBottomPadding: 40;
		titleWithFormat: (self asTitle: 'Programmier-Abstraktionen');
		subtitleWithFormat: (self asTitle: '(neue Lernumgebung)');
		footerWithFormat: (self asBigText: 'simon.buenzli@gymneufeld.ch')
]
