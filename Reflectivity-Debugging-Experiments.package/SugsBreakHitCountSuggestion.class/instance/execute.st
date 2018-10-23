breakpoints
execute
	context hasUnacceptedEdits ifTrue: [ ^context sourceTextArea acceptEdits].
	
	self selectedNodeHasBreakpoint 
		ifFalse: [ self breakpointHitCount ]
		ifTrue: [ Breakpoint removeFrom: context selectedNode]