installation
compileTraceBlockFromSource: aString withArguments: args
	| ws |
	ws := WriteStream on: String new.
	ws nextPut: $[.
	ws space.
	args
		do: [ :arg | 
			ws nextPut: $:.
			ws nextPutAll: arg asString.
			ws space ].
	args ifNotEmpty: [ ws nextPut: $| ].
	ws nextPutAll: aString.
	ws nextPut: $].
	^ Smalltalk compiler evaluate: ws contents