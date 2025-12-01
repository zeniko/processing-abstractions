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
	^ aSlide textAndElement
		setPriority;
		newTextWithFormat: (self asBigText: 'Glamorous Toolkit') bold;
		newTextWithFormat: (self
				asText: 'GT ist eine open source Smalltalk-Umgebung in der Tradition von Squeak und Pharo.');
		newTextWithFormat: (self
				asText: 'GT enthält ein Abbild des laufenden Codes, eine Smalltalk VM, Lepiter Notebooks, etc.');
		newTextWithFormat: (self asText: 'Verfügbar von gtoolkit.com/download');
		element: [ (GtCoderElement forClass: ProcessingSource) createInPager maximized ]
]

{ #category : 'slides' }
ProcessingAbstractionsOverview >> abstract: aSlide [
	<gtSlide>
	^ aSlide text
		setPriority;
		textMargin: 5;
		horizontalWeight: 1;
		newTextWithFormat: (self asBigText: 'Ideen/Absichten') bold , self cr;
		newTextWithFormat: (self asText: 'Lehrpersonen können ...') bold;
		newTextWithFormat: (self asText: '• durch Abstraktionsstufen führen');
		newTextWithFormat: (self asText: '• Abstraktionen anschaulich vermitteln');
		newTextWithFormat: (self asText: '• interaktive Lerneinheiten kreieren') , self cr;
		newTextWithFormat: (self asText: 'Unterstützte Themen:') bold;
		newTextWithFormat: (self asText: '• Programmiereinführung');
		newTextWithFormat: (self asText: '• Verknüpfung mit Hardware');
		newTextWithFormat: (self asText: '• Compiler-Einblicke')
]

{ #category : 'slides' }
ProcessingAbstractionsOverview >> abstractions: aSlide [
	<gtSlide>
	^ aSlide labelAndElement
		setPriority;
		newTextWithFormat: (self asBigText: 'Was geschieht hier?') bold;
		element: [ self exampleSourceElement: #gtStepsFor: ]
]

{ #category : 'accessing' }
ProcessingAbstractionsOverview >> exampleSource [
	| page snippet |
	page := self lepiterPage: 'Überblick für Lehrpersonen'.
	snippet := (page children select: [ :snip | snip isKindOf: LePythonSnippet ])
			first.
	^ ProcessingSource fromSnippet: snippet
]

{ #category : 'accessing' }
ProcessingAbstractionsOverview >> exampleSourceElement: aView [
	| element |
	element := GtInspector
			forObject: self exampleSource program
			viewSelector: aView.
	aView = #gtSourceCodeFor:
		ifTrue: [ element transform
				topLeftOrigin;
				scaleBy: 3;
				apply ].
	^ element
]

{ #category : 'slides' }
ProcessingAbstractionsOverview >> introQuestion: aSlide [
	<gtSlide>
	^ aSlide labelAndElement
		setPriority;
		newTextWithFormat: (self asBigText: 'Was geschieht hier?') bold;
		element: [ self exampleSourceElement: #gtSourceCodeFor: ]
]

{ #category : 'slides' }
ProcessingAbstractionsOverview >> introQuestionLepiter: aSlide [
	<gtSlide>
	^ aSlide labelAndElement
		setPriority;
		newFadedText: 'Demo: Eine interaktive Notebook-Seite';
		element: [ (GtPagerSettings usedPager
				createWrappedOn: (LePagePhlowTool page: (self lepiterPage: 'Überblick für Lehrpersonen')))
				maximized ]
]

{ #category : 'accessing' }
ProcessingAbstractionsOverview >> lepiterPage: aName [
	| myDB |
	myDB := LeDatabasesRegistry default currentLoadedDefaultLogicalDatabase
			databaseNamed: 'zeniko:processing-abstractions'.
	^ myDB pageNamed: aName
]

{ #category : 'slides' }
ProcessingAbstractionsOverview >> questions: aSlide [
	<gtSlide>
	^ aSlide text
		setPriority;
		textMargin: 5;
		horizontalWeight: 1;
		newTextWithFormat: (self asBigText: 'Fragen') bold , self cr;
		newTextWithFormat: (self asText: '• Potential?');
		newTextWithFormat: (self asText: '• Bedürfnisse?');
		newTextWithFormat: (self asText: '• Interesse?') , self cr , self cr;
		newTextWithFormat: (self asText: 'simon.buenzli@gymneufeld.ch')
]

{ #category : 'slides' }
ProcessingAbstractionsOverview >> quickStartQr: aSlide [
	<gtSlide>
	^ aSlide textAndElement
		elementWeight: 0.5;
		setPriority;
		newTextWithFormat: (self asBigText: 'Build zum Testen:');
		newTextWithFormat: (self asText: 'inf.zeniko.ch/processing-abstractions');
		element: [ GtFilePictureLiveSlide new
				fileReference: FileLocator gtResource
						/ 'zeniko/processing-abstractions/lepiter/attachments/3k98bdok2eo1r8x76ipxmek68/Processing Abstractions QR.png' ]
]

{ #category : 'accessing' }
ProcessingAbstractionsOverview >> slidePriorities [
	^ #(title: #introQuestion: #abstract: #abstractions: #introQuestionLepiter: #aboutGt: #quickStartQr: #unitProgramming: #unitHardware: #unitCompiler: #questions:)
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
		titleWithFormat: (self asTitle: 'Abstraktionsebenen beim Programmieren');
		subtitleWithFormat: (self asTitle: '(neue Lernumgebung)');
		footerWithFormat: (self asBigText: 'simon.buenzli@gymneufeld.ch')
]

{ #category : 'slides' }
ProcessingAbstractionsOverview >> unitCompiler: aSlide [
	<gtSlide>
	^ aSlide labelAndElement
		setPriority;
		newFadedText: 'Compiler-Einblicke';
		element: [ (GtPagerSettings usedPager
				createWrappedOn: (LePagePhlowTool
						page: (self lepiterPage: 'Compiler: Maschinensprache generieren')))
				maximized ]
]

{ #category : 'slides' }
ProcessingAbstractionsOverview >> unitHardware: aSlide [
	<gtSlide>
	^ aSlide labelAndElement
		setPriority;
		newFadedText: 'Verknüpfung Hardware und Programmieren';
		element: [ (GtPagerSettings usedPager
				createWrappedOn: (LePagePhlowTool page: (self lepiterPage: 'Hochsprache und Maschinensprache')))
				maximized ]
]

{ #category : 'slides' }
ProcessingAbstractionsOverview >> unitProgramming: aSlide [
	<gtSlide>
	^ aSlide labelAndElement
		setPriority;
		newFadedText: 'Einstieg ins Programmieren';
		element: [ (GtPagerSettings usedPager
				createWrappedOn: (LePagePhlowTool page: (self lepiterPage: 'Erste Programme')))
				maximized ]
]
