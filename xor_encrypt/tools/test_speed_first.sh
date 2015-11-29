source proj_path.sh

SAMP_DIR=$OUT_DIR/sample
CIPH_DIR=$OUT_DIR/cipher
TEST_RESULT=$OUT_DIR/test_result.diff

for each in $(ls $LIBS_DIR); do 
	cipher_each=$CIPH_DIR/cipher_$each
	perl $DECRYPT_ROOT/DecryptPro.pl $cipher_each > /dev/null
done
