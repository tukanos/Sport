initialize-release
appendingToFilename: anSpFilename 
	filename := anSpFilename absoluteFilename asString.
	underlyingStream := GsFile open: filename mode: 'a' onClient: FileDirectory onClient.
	^self
