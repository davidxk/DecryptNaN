cd cxx_compare/makeproject/
make
cp DecryptKMP ../../natural_crack/
cd ../../xor_encrypt/tools/
chmod 700 nul_speed_first.sh kmp_speed_first.sh cxx_speed_first.sh proj_path.sh
echo N..u..t first algorithm:
time ./nul_speed_first.sh
echo KMP implementation: 
time ./kmp_speed_first.sh
echo KMP implementation in C++ for comparison: 
time ./cxx_speed_first.sh
