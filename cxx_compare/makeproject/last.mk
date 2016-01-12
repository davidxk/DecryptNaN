## Implicit Variable
CXX=g++
CXXFLAGS+=-O3

## .o & .d List
objects=$(subst .cpp,.o,$(sources))
mkfiles=$(subst .cpp,.d,$(sources))

objects_one=$(subst .cpp,.o,$(sources_one))
mkfiles_one=$(subst .cpp,.d,$(sources_one))

## Target
$(exec): $(objects)
	$(CXX) -o $(exec) $(objects)
	cp $(exec) ../../natural_crack/
$(exec_one): $(objects_one)
	$(CXX) -o $(exec_one) $(objects_one)
	cp $(exec_one) ../../natural_crack/
both: $(exec) $(exec_one)

## Includes
include makefile.include 
#include $(sources:.cpp=.d)	# include the dot d files

##Clean
.PHONY: clean
clean: 
	rm -f $(objects) $(mkfiles) $(exec) *.d.* *.o *.d
