breakpoints
breakpointHitCount
	(UIManager default request: 'Break on count?' initialAnswer: '1')
		ifNotNil: [ :answer | 
			HitCount new
				node: context selectedNode;
				hitCount:
					([ answer asNumber ]
						on: Error
						do: [ 1 ]);
				install ]