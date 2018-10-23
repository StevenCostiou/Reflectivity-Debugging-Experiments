defaults
iconBlock: aNode
	^ [ :seg | aNode allTracepoints do: [ :link | aNode removeLink: link ] ]