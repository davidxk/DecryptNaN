#!/bin/bash

for each in $(ls $LIBS_DIR); do 
	cat $LIBS_DIR/$each | xor_encrypt/make_sample | sed -n "s/Ciphr: //p" > ciph
	python3 DecryptNaN.py tmp > res
	difference=$(diff $LIBS_DIR/$each res) 
	if [[ -n $difference ]]; then 
		echo "$each $difference" >> $TEST_RESULT
		echo " Case fail! Test:" $each
	fi
	rm -f ciph res
done


