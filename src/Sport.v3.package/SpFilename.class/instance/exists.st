testing
exists
	"^a Boolian
I return true if the file I represent actually exists, otherwise false."

	^(GsFile _exists: self absoluteFilename asString onClient: FileDirectory onClient ) == true.
