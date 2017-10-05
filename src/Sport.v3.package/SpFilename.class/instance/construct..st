private
construct: extraFn
  "Make a new instance, treating the receiver as a directory, and
	the string argument as a file within the pathname."

  ^ self class named: self filename , (String with: self separator) , extraFn