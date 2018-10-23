*Reflectivity-Debugging-Experiments
allTracepoints
	self links ifNil: [ ^ #() ].
	^ self links select: [ :link | link metaObject class == Tracepoint ]