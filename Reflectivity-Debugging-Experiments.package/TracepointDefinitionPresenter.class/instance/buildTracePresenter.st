widgets
buildTracePresenter
	^ (self instantiate: TextPresenter)
		autoAccept: true;
		beForCode;
		aboutToStyle: true;
		text: String new;
		yourself