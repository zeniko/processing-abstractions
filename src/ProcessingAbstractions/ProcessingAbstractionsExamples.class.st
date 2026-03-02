Class {
	#name : 'ProcessingAbstractionsExamples',
	#superclass : 'Object',
	#category : 'ProcessingAbstractions-Examples',
	#package : 'ProcessingAbstractions',
	#tag : 'Examples'
}

{ #category : 'examples' }
ProcessingAbstractionsExamples >> aufgabe1a [
	<gtExample>
	| sourceCode source |
	sourceCode := '
size(200, 200)
rect(0, 0, 100, 100)'.
	source := ProcessingSource fromString: sourceCode.
	self assert: source program compilation notNil.
	^ source
]

{ #category : 'examples' }
ProcessingAbstractionsExamples >> aufgabe1b [
	<gtExample>
	| sourceCode source |
	sourceCode := '
size(200, 200)
rect(100, 0, 100, 100)
rect(0, 100, 100, 100)'.
	source := ProcessingSource fromString: sourceCode.
	self assert: source program compilation notNil.
	^ source
]

{ #category : 'examples' }
ProcessingAbstractionsExamples >> aufgabe1c [
	<gtExample>
	| sourceCode source |
	sourceCode := '
size(200, 200)
rect(0, 0, 100, 100)
rect(50, 50, 100, 100)
rect(100, 100, 100, 100)'.
	source := ProcessingSource fromString: sourceCode.
	self assert: source program compilation notNil.
	^ source
]

{ #category : 'examples' }
ProcessingAbstractionsExamples >> aufgabe2a [
	<gtExample>
	| sourceCode source |
	sourceCode := '
size(200, 200)
ellipse(50, 50, 100, 100)
ellipse(150, 150, 100, 100)'.
	source := ProcessingSource fromString: sourceCode.
	self assert: source program compilation notNil.
	^ source
]

{ #category : 'examples' }
ProcessingAbstractionsExamples >> aufgabe2b [
	<gtExample>
	| sourceCode source |
	sourceCode := '
size(200, 200)
ellipse(100, 50, 200, 100)
rect(0, 125, 200, 50)'.
	source := ProcessingSource fromString: sourceCode.
	self assert: source program compilation notNil.
	^ source
]

{ #category : 'examples' }
ProcessingAbstractionsExamples >> aufgabe2c [
	<gtExample>
	| sourceCode source |
	sourceCode := '
size(200, 200)
rect(50, 50, 100, 100)
ellipse(100, 100, 100, 100)'.
	source := ProcessingSource fromString: sourceCode.
	self assert: source program compilation notNil.
	^ source
]

{ #category : 'examples' }
ProcessingAbstractionsExamples >> aufgabe2d [
	<gtExample>
	| sourceCode source |
	sourceCode := '
size(200, 200)
ellipse(100, 100, 200, 200)
ellipse(50, 75, 50, 50)
ellipse(150, 75, 50, 25)
rect(50, 125, 100, 25)'.
	source := ProcessingSource fromString: sourceCode.
	self assert: source program compilation notNil.
	^ source
]

{ #category : 'examples' }
ProcessingAbstractionsExamples >> aufgabe3a [
	<gtExample>
	| sourceCode source |
	sourceCode := '
size(200, 200)
rect(0, 0, 200, 200)
fill(255, 0, 0)
ellipse(100, 100, 100, 100)'.
	source := ProcessingSource fromString: sourceCode.
	self assert: source program compilation notNil.
	^ source
]

{ #category : 'examples' }
ProcessingAbstractionsExamples >> aufgabe3b [
	<gtExample>
	| sourceCode source |
	sourceCode := '
size(200, 200)
fill(255, 0, 0)
rect(0, 0, 200, 200)
fill(255, 255, 255)
rect(75, 25, 50, 150)
rect(25, 75, 150, 50)'.
	source := ProcessingSource fromString: sourceCode.
	self assert: source program compilation notNil.
	^ source
]

{ #category : 'examples' }
ProcessingAbstractionsExamples >> aufgabe3c [
	<gtExample>
	| sourceCode source |
	sourceCode := '
size(200, 200)
fill(0, 0, 255)
ellipse(150, 150, 100, 100)
fill(0, 255, 0)
rect(50, 50, 100, 100)
fill(255, 0, 0)
ellipse(50, 50, 100, 100)'.
	source := ProcessingSource fromString: sourceCode.
	self assert: source program compilation notNil.
	^ source
]

{ #category : 'examples' }
ProcessingAbstractionsExamples >> aufgabe3d [
	<gtExample>
	| sourceCode source |
	sourceCode := '
size(200, 200)
fill(0, 255, 255)
rect(0, 100, 100, 200)
fill(255, 255, 0)
ellipse(100, 100, 200, 200)
fill(0, 255, 255)
rect(0, 0, 200, 100)
fill(255, 0, 255)
rect(0, 75, 200, 50)'.
	source := ProcessingSource fromString: sourceCode.
	self assert: source program compilation notNil.
	^ source
]

{ #category : 'examples' }
ProcessingAbstractionsExamples >> aufgabe4a: var [
	<gtExample>
	| sourceCode source |
	sourceCode := '
size(200, 200)
x = ' , var asString
			, '
rect(x, x/2, 50, 100)'.
	source := ProcessingSource fromString: sourceCode.
	self assert: source program compilation notNil.
	^ source
]

{ #category : 'examples' }
ProcessingAbstractionsExamples >> aufgabe4b: var [
	<gtExample>
	| sourceCode source |
	sourceCode := '
size(200, 200)
x = ' , var asString
			, '
ellipse(x, 50, 100, 100)
ellipse(200 - x, 150, 100, 100)'.
	source := ProcessingSource fromString: sourceCode.
	self assert: source program compilation notNil.
	^ source
]

{ #category : 'examples' }
ProcessingAbstractionsExamples >> aufgabe5a [
	<gtExample>
	| sourceCode source |
	sourceCode := '
size(200, 200)
x = 200
while x > 0:
	ellipse(100, 100, x, x)
	x = x - 50'.
	source := ProcessingSource fromString: sourceCode.
	self assert: source program compilation notNil.
	^ source
]

{ #category : 'examples' }
ProcessingAbstractionsExamples >> aufgabe5c [
	<gtExample>
	| sourceCode source |
	sourceCode := '
size(200, 200)
x = 200
while x > 0:
	fill(x, 0, 255 - x)
	rect((200 - x) / 2, (200 - x) / 2, x, x)
	ellipse(100, 100, x, x)
	x = x - 50'.
	source := ProcessingSource fromString: sourceCode.
	self assert: source program compilation notNil.
	^ source
]

{ #category : 'examples' }
ProcessingAbstractionsExamples >> aufgabe9 [
	<gtExample>
	| sourceCode source |
	sourceCode := '
# Kompakte Variablendeklaration (spart hier Platz)
x = 50; y = 50; breite = 100; hoehe = 50

def setup():
	size(200, 200)

def draw():
	background(192, 192, 192) # hellgrau
	
	fill(255, 255, 255) # weiss
	# ist die Maus im Rechteck?
	if x <= mouseX < x + breite and y <= mouseY < y + hoehe:
		fill(255, 0, 0) # rot
	
	rect(x, y, breite, hoehe)'.
	source := ProcessingSource fromString: sourceCode.
	self assert: source program compilation notNil.
	^ source
]

{ #category : 'examples' }
ProcessingAbstractionsExamples >> koordinatenSystem [
	<gtExample>
	| sourceCode source |
	sourceCode := '
size(200, 200)
fill(0)
# x-Achse
line(10, 10, 185, 10)
line(185, 10, 180, 5)
line(185, 10, 180, 15)
text("x", 190, 20)
# y-Achse
line(10, 10, 10, 185)
line(10, 185, 5, 180)
line(10, 185, 15, 180)
text("y", 7, 200)'.
	source := ProcessingSource fromString: sourceCode.
	self assert: source program compilation notNil.
	^ source
]

{ #category : 'examples' }
ProcessingAbstractionsExamples >> prellenderBall [
	<gtExample>
	| sourceCode source |
	sourceCode := '
y = 50; dy = 0

# called once after global code
def setup():
    size(100, 200)

# called repeatedly for every frame
def draw():
    global y, dy
    background(192)
    ellipse(50, y, 50, 50)
    y += dy; dy += 1
    if y > height - 25:
        dy = -0.9 * dy
'.
	source := ProcessingSource fromString: sourceCode.
	self assert: source program compilation notNil.
	^ source
]
