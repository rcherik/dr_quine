i = 5
while i >= 0:
	file_name = "Sully_" + str(i) + ".py"
	fp = open(file_name, "w+")
	s = "i = %d%cwhile i >= 0:%c%cfile_name = %cSully_%c + str(i) + %c.py%c%c%cfp = open(file_name, %cw+%c)%c%cs = %c%s%c%c"
	fp.write(s % (i, 10, 10, 9, 34, 34, 34, 34, 10, 9, 34, 34, 10, 9, 34, s, 34, 10))
	cs = "%cfp.write(s %c (i, 10, 10, 9, 34, 34, 34, 34, 10, 9, 34, 34, 10, 9, 34, s, 34, 10))%c%ccs = %c%s%c%c%cfp.write(cs %c (9, 37, 10, 9, 34, cs, 34, 10, 9, 37, 10, 9, 10))%c%ci -= 1%c"
	fp.write(cs % (9, 37, 10, 9, 34, cs, 34, 10, 9, 37, 10, 9, 10))
	i -= 1
