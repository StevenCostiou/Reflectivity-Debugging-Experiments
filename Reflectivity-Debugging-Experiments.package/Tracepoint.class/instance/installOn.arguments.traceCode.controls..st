installation
installOn: aNode arguments: argumentsSet traceCode: aString controls: controlSet
	| args |
	args := argumentsSet asArray.
	controlSet
		do: [ :control | 
			| link |
			link := self traceLink.
			link arguments: args.
			link control: control.
			aNode link: link ].
	traceBlock := self compileTraceBlockFromSource: aString withArguments: args