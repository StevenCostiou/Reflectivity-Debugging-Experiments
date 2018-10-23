widgets
buildReifications
	| dynamicBuilder |
	dynamicBuilder := DynamicPresentersListBuilder new
		modelObjects: node availableReifications;
		presenter: CheckBoxPresenter
			configuredAs: [ :presenter :modelObject | 
			presenter
				label: modelObject asString;
				whenActivatedDo: [ selectedReifications add: modelObject.
					self buildTraceLabel. self rebuild ];
				whenDeactivatedDo: [ selectedReifications remove: modelObject.
					self buildTraceLabel ] ];
		layoutBuilder: (DynamicLeftToRightColumnsLayout columns: 5);
		yourself.
	self newDynamicPresentersListIn: #reificationPresenter usingBuilder: dynamicBuilder