## Provide project path
proj_path=$(shell pwd)/..
include source.mk

## Add main Entrance
main=decrypt.cpp 
sources+=$(main)
exec=decrypt

## Always include last.mk
include last.mk
