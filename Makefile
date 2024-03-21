all:
	cobc -m getsum.cob
	cobc -x test.cob
	make -C 'linked-list/'

clean:
	rm *.so test ll
