api
hitCount: anInteger

	counter := ExecutionCounter installOn: self node.
	condition := [ counter count = anInteger ].
	self link: self breakLinkConditional