source proj_path.sh

TEST_RESULT=$OUT_DIR/test_result.diff

for each in $(ls $LIBS_DIR); do 
	sample_each=$SAMP_DIR/sample_$each
	cipher_each=$CIPH_DIR/cipher_$each
	perl $DECRYPT_ROOT/DecryptPro.pl $cipher_each > work
	sed -n "s/Plain: //p" $sample_each > answ
	diff answ work > $TEST_RESULT
	rm work answ
done
