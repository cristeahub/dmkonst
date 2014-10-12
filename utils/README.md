Utils to make this easier for us
===

## `changify_codes.py`
# Change program to match endianness in hostcomm

In hostcomm you need to change the endianness. This program works like this:

input.txt contains:

	AC030007
	DEADBEEF
	CAFEBABB

Use this command in the terminal:

	python changify_codes.py < input.txt >> out.txt

A copyable string is now in out.txt that can be pasted right into hostcomm
