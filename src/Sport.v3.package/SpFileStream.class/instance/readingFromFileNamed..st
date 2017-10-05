initialize-release
readingFromFileNamed: aString 
	"^self
I initialize myself to read from a file named aString."

	filename := aString.
	underlyingStream := GsFile open: aString mode: 'r' onClient: FileDirectory onClient.
	^self
