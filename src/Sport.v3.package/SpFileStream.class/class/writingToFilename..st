instance creation
writingToFilename: anSpFilename 
	"^an SpFileStream
I create a new instance of myself to append to the file identified by anSpFilename."

	^self new writingToFilename: anSpFilename
