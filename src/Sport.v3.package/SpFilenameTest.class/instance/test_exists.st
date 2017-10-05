tests
test_exists
	"on my machine I don't have permisions for the directory /var/log/samba and exists returns nil - nil returned on error from GsFile class>>exists:"
	
	self deny: (SpFilename named: '/var/log/samba/blue') exists