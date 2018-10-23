widgets
buildCancelButton
	^ self newButton
		label: 'Cancel';
		action: [ self window close ];
		yourself