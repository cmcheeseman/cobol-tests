all:
	cobc -m getsum.cob
	cobc -x test.cob
