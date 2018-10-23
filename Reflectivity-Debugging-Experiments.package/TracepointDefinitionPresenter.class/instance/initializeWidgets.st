initialization
initializeWidgets
	reificationPresenter := self newNullPresenter.
	controlPresenter := self newNullPresenter.
	nodePresenter := self buildNodePresenter.
	tracePresenter := self buildTracePresenter.
	acceptButton := self buildAcceptButton.
	cancelButton := self buildCancelButton.
	nodeLabel := self newLabelOn: 'Instrumented source'.
	reificationLabel := self newLabelOn: 'Available reifications'.
	controlLabel := self newLabelOn: 'Control (before if none)'.
	traceLabel := self buildTraceLabel