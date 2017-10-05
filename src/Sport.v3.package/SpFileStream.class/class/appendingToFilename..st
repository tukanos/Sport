instance creation
appendingToFilename: anSpFilename 
	"^an SpFileStream
I create a new instance of myself to append to the file identified by anSpFilename."

	^self new appendingToFilename: anSpFilename
