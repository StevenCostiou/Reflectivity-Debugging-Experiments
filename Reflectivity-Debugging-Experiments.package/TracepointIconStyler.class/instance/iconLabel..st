defaults
iconLabel: aNode
	| ws |
	ws := WriteStream on: String new.
	aNode allTracepoints
		do: [ :link | 
			ws nextPutAll: link control asString.
			ws nextPut: $:.
			ws space.
			ws nextPutAll: link metaObject traceBlock printString.
			ws cr ].
	^ ws contents