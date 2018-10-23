instance creation
onAST: aNode
	| tracepointDefPresenter |
	tracepointDefPresenter := self basicNew.
	tracepointDefPresenter node: aNode.
	tracepointDefPresenter initialize.
	tracepointDefPresenter extent: 400 @ 600.
	tracepointDefPresenter openWithSpec