initialize-release
writingToFileNamed: aString 
	"^self
I initialize myself to write to a file named aString."

	filename := aString.
	underlyingStream := GsFile open: aString mode: 'w' onClient: FileDirectory onClient.
	^self
