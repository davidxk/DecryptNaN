## Provide project path
proj_path=$(shell pwd)/..
include source.mk

## Add main Entrance
main=encrypt.cpp 
sources+=$(main)
exec=encrypt

## Always include last.mk
include last.mk
