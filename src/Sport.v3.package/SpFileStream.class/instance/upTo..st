services
upTo: anObject 
	"^a Collection
I return the content of my underlying file up to anObject or the end of the file, excluding anObject.  The stream (file) is left positioned *after* anObject."

	| targetStream |
	targetStream := WriteStream on: String new.
	[self underlyingStream atEnd or: [self underlyingStream peek == anObject]] 
		whileFalse: [targetStream nextPut: self underlyingStream next].
	self underlyingStream atEnd ifFalse: [self underlyingStream next].
	^targetStream contents
