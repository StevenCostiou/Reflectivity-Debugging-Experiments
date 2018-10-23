widgets
buildControl
	| dynamicBuilder |
	dynamicBuilder := DynamicPresentersListBuilder new
		modelObjects: #(before after);
		presenter: CheckBoxPresenter
			configuredAs: [ :presenter :modelObject | 
			presenter label: modelObject asString.
			presenter
				whenActivatedDo: [ selectedControl add: modelObject ];
				whenDeactivatedDo: [ selectedControl remove: modelObject ] ];
		layoutBuilder: (DynamicLeftToRightColumnsLayout columns: 4);
		yourself.
	self newDynamicPresentersListIn: #controlPresenter usingBuilder: dynamicBuilder