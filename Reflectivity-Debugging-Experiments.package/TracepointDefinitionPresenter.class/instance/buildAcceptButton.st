widgets
buildAcceptButton
	^ self newButton
		label: 'Accept';
		action: [ | traceSource |
			traceSource := tracePresenter text.
			selectedControl ifEmpty: [ selectedControl add: #before ].
			Tracepoint new
				installOn: node
				arguments: selectedReifications
				traceCode: traceSource
				controls: selectedControl.
			self window close ];
		yourself