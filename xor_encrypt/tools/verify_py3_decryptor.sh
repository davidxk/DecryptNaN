source proj_path.sh

SAMP_DIR=$OUT_DIR/sample
CIPH_DIR=$OUT_DIR/cipher
TEST_RESULT=$OUT_DIR/test_result.diff

rm -f $TEST_RESULT

for each in $(ls $LIBS_DIR); do 
	sample_each=$SAMP_DIR/sample_$each
	cipher_each=$CIPH_DIR/cipher_$each
	python3 $DECRYPT_ROOT/DecryptKMP.py < $cipher_each > work
	sed -n "s/Plain: //p" $sample_each > answ
	difference=$( diff answ work ) 
	if [[ -n $difference ]]; then 
		echo "$each $difference" >> $TEST_RESULT
		echo " Case fail! Test:" $each
	fi
	rm work answ
done

