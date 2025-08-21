Processing Abstractions
=======================
Content for teaching the [Processing](https://processing.org/) programming language and computer architecture based on [GtExploration](https://github.com/zeniko/gt-exploration) for [Glamorous Toolkit](https://gtoolkit.com/).

Developed as part of a [thesis](https://github.com/zeniko/gyminf-thesis) at [Software Engineering Group at UniBE](https://seg.inf.unibe.ch/).

## Installation

```st
Smalltalk globals
	at: #BaselineOfGtExploration
	ifAbsent: [
		Metacello new
			repository: 'github://zeniko/gt-exploration:thesis/src';
			baseline: 'GtExploration';
			load.
	].
Metacello new
	repository: 'github://zeniko/processing-abstractions:thesis/src';
	baseline: 'ProcessingAbstractions';
	load
```

## Load Lepiter

After installing with Metacello, you will be able to execute

```
#BaselineOfProcessingAbstractions asClass loadLepiter
```
