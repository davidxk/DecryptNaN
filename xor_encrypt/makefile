all: make_sample encrypt decrypt
make_sample: TestCase.o CipherGen.o XorEncryptor.o make_sample.cpp
	g++ -o make_sample TestCase.o CipherGen.o XorEncryptor.o make_sample.cpp
encrypt: XorEncryptor.o encrypt.cpp
	g++ -o encrypt XorEncryptor.o encrypt.cpp
decrypt: XorEncryptor.o decrypt.cpp
	g++ -o decrypt XorEncryptor.o decrypt.cpp

.PHONY: clean all
clean:
	rm -f *.o make_sample encrypt decrypt
