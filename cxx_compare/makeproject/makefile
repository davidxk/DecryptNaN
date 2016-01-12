## Provide project path
proj_path=$(shell pwd)/..
include source.mk

## Add main Entrance
main_one=DecryptOne.cpp
sources_one:=$(sources) $(main_one)
exec_one=DecryptOne

main=DecryptKMP.cpp
sources+=$(main)
exec=DecryptKMP

## Always include last.mk
include last.mk
