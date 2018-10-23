installation
compileTraceBlockFromSource: aString withArguments: args
	| ws |
	ws := WriteStream on: String new.
	ws nextPut: $[.
	args
		do: [ :arg | 
			ws nextPut: $:.
			ws nextPutAll: arg asString.
			ws space ].
	ws nextPut: $|.
	ws space.
	ws nextPutAll: aString.
	ws nextPut: $].
	^ Smalltalk compiler evaluate: ws contents