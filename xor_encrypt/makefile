CXX=g++

## Source List
sources=main.cpp \
TestCase.cpp \
XorEncryptor.cpp \
CipherGen.cpp \
#EncryptTest.cpp \

## .o & .d List
objects=$(subst .cpp,.o,$(sources))
mkfiles=$(subst .cpp,.d,$(sources))

## Target
game: $(objects)
	$(CXX) -o game $(objects)

## Includes
include makefile.include 
#include $(sources:.cpp=.d)	# include the dot d files

##Clean
.PHONY: clean
clean: 
	rm -f $(objects) $(mkfiles)
