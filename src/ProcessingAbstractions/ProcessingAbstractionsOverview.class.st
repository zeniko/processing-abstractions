Class {
	#name : 'ProcessingAbstractionsOverview',
	#superclass : 'PrioritySlideshow',
	#category : 'ProcessingAbstractions-Slides',
	#package : 'ProcessingAbstractions',
	#tag : 'Slides'
}

{ #category : 'slides' }
ProcessingAbstractionsOverview >> aboutGt: aSlide [
	<gtSlide>
	^ aSlide text
		setPriority;
		textMargin: 5;
		newTextWithFormat: (self asBigText: 'Glamorous Toolkit') bold;
		newTextWithFormat: (self
				asText: 'GT ist eine open source Smalltalk-Umgebung in der Tradition von Squeak und Pharo.');
		newTextWithFormat: (self
				asText: 'GT enthält ein Abbild des laufenden Codes, eine Smalltalk VM, Lepiter Notebooks, etc.');
		newTextWithFormat: (self asText: 'gtoolkit.com/download')
]

{ #category : 'slides' }
ProcessingAbstractionsOverview >> abstract: aSlide [
	<gtSlide>
	^ aSlide text
		setPriority;
		textMargin: 5;
		newTextWithFormat: (self asBigText: 'Ideen/Absichten') bold;
		newTextWithFormat: (self asText: 'Lehrpersonen können ...') bold;
		newTextWithFormat: (self asText: '- durch Abstraktionsstufen führen');
		newTextWithFormat: (self asText: '- interaktive Einheiten kreieren');
		newTextWithFormat: (self asText: 'Schüler:innen können ...') bold;
		newTextWithFormat: (self asText: '- Programme untersuchen');
		newTextWithFormat: (self asText: '- Programme verändern');
		newTextWithFormat: (self asText: '- Programme selbst schreiben')
]

{ #category : 'slides' }
ProcessingAbstractionsOverview >> introQuestion1: aSlide [
	<gtSlide>
	^ aSlide labelAndElement
		setPriority;
		newTextWithFormat: (self asBigText: 'Was machen die Befehle?') bold;
		element: [ (ProcessingSource
				fromString: 'a = 1
b = 1
while a < 15:
	a += b
	b = a - b
print(a)') renderLiveView: #gtSourceCodeFor: ]
]

{ #category : 'slides' }
ProcessingAbstractionsOverview >> introQuestion2: aSlide [
	<gtSlide>
	^ aSlide labelAndElement
		setPriority;
		newTextWithFormat: (self asBigText: 'Was gibt dieses Programm aus?') bold;
		element: [ (ProcessingSource
				fromString: 'a = 1
b = 1
while a < 15:
	a += b
	b = a - b
print(a)') renderLiveView: #gtSourceCodeFor: ]
]

{ #category : 'slides' }
ProcessingAbstractionsOverview >> introQuestion3: aSlide [
	<gtSlide>
	^ aSlide labelAndElement
		setPriority;
		newTextWithFormat: (self asBigText: 'Was geschieht in der Maschine?') bold;
		element: [ (ProcessingSource
				fromString: 'a = 1
b = 1
while a < 15:
	a += b
	b = a - b
print(a)') renderLiveView: #gtSourceCodeFor: ]
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
		pageNamed: 'Überblick für Lehrpersonen'
			from: 'zeniko:processing-abstractions';
		yourself
]

{ #category : 'slides' }
ProcessingAbstractionsOverview >> quickStartQr: aSlide [
	<gtSlide>
	^ aSlide textAndElement
		elementWeight: 0.5;
		setPriority;
		newTextWithFormat: (self asBigText: 'Build zum Testen');
		element: [ GtFilePictureLiveSlide new
				fileReference: FileLocator gtResource
						/ 'zeniko/processing-abstractions/lepiter/attachments/3k98bdok2eo1r8x76ipxmek68/Processing Abstractions QR.png' ]
]

{ #category : 'accessing' }
ProcessingAbstractionsOverview >> slidePriorities [
	^ #(title: #introQuestion: #introQuestion1: #introQuestion2: #introQuestion3: #abstract: #introQuestionLepiter: #aboutGt: #quickStartQr:)
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
