## Const Path Variable
src_path=$(proj_path)/source 

## Implicit Variable
VPATH+=$(src_path) 
CXXFLAGS+=-I $(src_path) 

## Source List
sources+= TestCase.cpp \
XorEncryptor.cpp \
CipherGen.cpp \
