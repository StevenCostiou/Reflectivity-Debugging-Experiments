breakpoints
isValidForContext
	^self hasUnacceptedEdits not and:[ super isValidForContext ]