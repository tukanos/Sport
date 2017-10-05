services-status
setOptionForLevel: aLevelNumber optionID: anOptionNumber value: aValue 
	"^self
	see man 2 setsockopt
	From the manpage:
	Getsockopt  and  setsockopt  manipulate  the  options associated with a
       socket.  Options may exist at multiple protocol levels; they are always
       present at the uppermost socket level."

	1 halt: 'Doh!  - can''t do this in GemStone yet.'.
	self underlyingSocket 
		setOptionsLevel: aLevelNumber
		name: anOptionNumber
		value: aValue.
	^self
