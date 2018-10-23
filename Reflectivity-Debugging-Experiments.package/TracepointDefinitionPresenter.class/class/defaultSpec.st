specs
defaultSpec
	^ SpecLayout composed
		newColumn: [ :mainColumn | 
			mainColumn
				newRow: #nodeLabel height: self toolbarHeight;
				newRow: #nodePresenter;
				newRow: #reificationLabel height: self toolbarHeight;
				newRow: #reificationPresenter;
				newRow: #controlLabel height: self toolbarHeight;
				newRow: #controlPresenter height: self toolbarHeight;
				newRow: #traceLabel height: self toolbarHeight;
				newRow: #tracePresenter;
				newRow: [ :row | 
					row
						add: #acceptButton;
						add: #cancelButton ] height: self buttonHeight ]