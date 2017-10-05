services
delete
	| absolutePath dir |
	absolutePath := (self class named:
		(FileDirectory default pathName, (String with: FileDirectory pathNameDelimiter), (self asString copyReplaceAll: './' with: ''))) asString.
	dir := FileDirectory forFileName: absolutePath.
	((GsFile _isDirectory: absolutePath onClient: FileDirectory onClient) == true)
		ifTrue: [dir deleteDirectory: self asString]
		ifFalse: [	| index nm tail |	
			nm := self asString.
			tail := (index := nm lastIndexOf: FileDirectory pathNameDelimiter ifAbsent: [nil]) notNil
				ifTrue: [ nm copyFrom: index+1 to: nm size ]
				ifFalse: [ nm copy ].
			dir deleteFileNamed: tail ifAbsent: [] ]