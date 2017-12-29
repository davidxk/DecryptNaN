#!/bin/bash

xor_encrypt/make_sample < testcases/test_z.txt | sed -n "s/Ciphr: //p" > ciph
echo KMP one-run implementation in C++: 
time ./DecryptNaN.out ciph > /dev/null
echo
echo KMP one-run implementation in Perl: 
time perl DecryptNaN.pl ciph > /dev/null
echo
echo KMP one-run implementation in Python: 
time python3 DecryptNaN.py ciph > /dev/null
echo

rm ciph
