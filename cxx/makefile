../DecryptNaN.out: NaturalCrack.o XorEncryptor.o DecryptNaN.cpp
	c++ -o ../DecryptNaN.out NaturalCrack.o XorEncryptor.o DecryptNaN.cpp
NaturalCrack.o: XorEncryptor.o

.PHONY: clean
clean:
	rm -f *.o ../DecryptNaN.out
