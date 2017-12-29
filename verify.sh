#!/bin/bash

TESTCASE=testcases

function verify {
	for each in $(ls $TESTCASE); do 
		xor_encrypt/make_sample < $TESTCASE/$each | sed -n "s/Ciphr: //p" > ciph
		$1 $2 ciph > res
		difference=$(diff $TESTCASE/$each res) 
		if [[ -n $difference ]]; then 
			echo "$each $difference" >> $TEST_RESULT
			echo " Case fail! Test:" $each
			exit
		fi
		rm -f ciph res
	done
	echo "$2 All test passed!"
}

verify perl DecryptNaN.pl
verify python3 DecryptNaN.py
verify " " ./DecryptNaN.out
