tests
testResetHitCount
	| node |
	node := (self class >> #loop) ast statements second arguments second statements first.
	hitCount
		node: node;
		hitCount: 5;
		install.
	self should: [ self loop ] raise: Break.
	self assert: hitCount counter count equals: 5.
	self shouldnt: [ self loop ] raise: Break.
	hitCount reset.
	self should: [ self loop ] raise: Break.
	self assert: hitCount counter count equals: 5