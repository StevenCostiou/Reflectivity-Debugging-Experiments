initialization
initialize
	selectedReifications := Set new.
	selectedControl := Set new.
	super initialize.
	self buildReifications.
	self buildControl