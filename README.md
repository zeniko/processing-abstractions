Processing Abstractions
=======================
Content for teaching the [Processing](https://processing.org/) programming language and computer architecture based on [GtExploration](https://github.com/zeniko/gt-exploration) for [Glamorous Toolkit](https://gtoolkit.com/) - in German.

Developed as part of a [thesis](https://github.com/zeniko/gyminf-thesis) at [Software Engineering Group at UniBE](https://seg.inf.unibe.ch/).

## Installation
See <https://inf.zeniko.ch/processing-abstractions/> for a prepackaged executable for students.

For development, run the following Smalltalk code:
```st
Smalltalk globals
	at: #BaselineOfGtExploration
	ifAbsent: [
		Metacello new
			repository: 'github://zeniko/gt-exploration:main/src';
			baseline: 'GtExploration';
			load.
	].
Metacello new
	repository: 'github://zeniko/processing-abstractions:main/src';
	baseline: 'ProcessingAbstractions';
	load
```
