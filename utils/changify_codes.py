from sys import stdin

out = ""

for line in stdin:
	line = line.strip()
	pairs = map(lambda x,y: y+x, line[0:][::2], line[1:][::2])
	out += "".join(pairs)[::-1]

print out
