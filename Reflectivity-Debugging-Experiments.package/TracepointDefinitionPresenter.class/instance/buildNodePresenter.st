widgets
buildNodePresenter
	^ (self instantiate: TextPresenter)
		beForCode;
		aboutToStyle: true;
		text: node methodNode source;
		behavior: node methodNode methodClass;
		setSelectionInterval: (node start to: node stop);
		disable;
		yourself