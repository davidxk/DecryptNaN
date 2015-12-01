## Implicit Variable
CXX=g++
CXXFLAGS+=-O3

## .o & .d List
objects=$(subst .cpp,.o,$(sources))
mkfiles=$(subst .cpp,.d,$(sources))

## Target
$(exec): $(objects)
	$(CXX) -o $(exec) $(objects)

## Includes
include makefile.include 
#include $(sources:.cpp=.d)	# include the dot d files

##Clean
.PHONY: clean
clean: 
	rm -f $(objects) $(mkfiles) $(exec) *.d.* *.o *.d