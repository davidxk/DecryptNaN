cd cxx_compare/makeproject/
make both
#cp DecryptKMP ../../natural_crack/
cd ../../xor_encrypt/tools/
chmod 700 nul_speed_first.sh kmp_speed_first.sh cxx_speed_first.sh proj_path.sh
echo N..u..l first algorithm:
time ./nul_speed_first.sh
echo KMP implementation in C++: 
time ./cxx_speed_first.sh
echo KMP implementation in Perl: 
time ./kmp_speed_first.sh
echo KMP implementation in Python: 
time ./py3_speed_first.sh
echo; echo; echo
echo KMP one-run implementation in C++: 
time ./cxx_one_run.sh
echo KMP one-run implementation in Perl: 
time ./kmp_one_run.sh
echo KMP one-run implementation in Python: 
time ./py3_one_run.sh
