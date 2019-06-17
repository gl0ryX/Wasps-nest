#!/usr/bin/python

import sys

badChars = []


for bad in sys.argv[1:]:
	badChars.append(int(bad, 0))

counter = 0x00

badcharacter = '"'

while counter <= 0xFF:
	
	if counter not in badChars:
		badcharacter += "\\x%02x" %counter
	

	counter += 1

badcharacter += '"'


print badcharacter + "\n\n"
