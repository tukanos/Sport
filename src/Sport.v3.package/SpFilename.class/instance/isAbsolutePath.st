testing
isAbsolutePath
	"Answer true if this name is absolute (e.g. not relative to the
	'current directory')."

	| str |
	(str := self asString) size = 0 ifTrue:	[^false].
	^(str at: 1) == FileDirectory pathNameDelimiter