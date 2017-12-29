.PHONY: clean all

all: DecryptNaN.out xor_encrypt/make_sample
DecryptNaN.out:
	@cd cxx; make; cd ..
xor_encrypt/make_sample:
	@cd xor_encrypt; make; cd ..
clean:
	@cd cxx; make clean; cd ..
	@cd xor_encrypt; make clean; cd ..
