services
appendStream
	"^an SpFileStream
I create an append stream on the file I represent."

	^SpFileStream appendingToFilename: self
