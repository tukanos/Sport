accessing
absoluteFilename
	"Answer a Filename pointing to the same file using absolute path.
	The method may answer the receiver it it is already absolute."

	^self isAbsolutePath
		ifTrue: [self]
		ifFalse: [
			self class named: 
				(FileDirectory default pathName, 
				FileDirectory slash, 
				(self asString copyReplaceAll: './' with: '')) ]