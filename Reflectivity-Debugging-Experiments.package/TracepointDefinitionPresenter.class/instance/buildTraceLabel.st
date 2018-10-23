widgets
buildTraceLabel
	| ws |
	ws := WriteStream on: String new.
	ws nextPutAll: 'Trace code:'.
	ws space.
	selectedReifications
		do: [ :reification | 
			ws nextPutAll: reification asString.
			ws nextPut: $..
			ws space ].
	^ self newLabel
		label: ws contents;
		emphasis: #bold;
		yourself