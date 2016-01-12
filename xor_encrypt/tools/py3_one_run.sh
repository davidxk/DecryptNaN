source proj_path.sh

SAMP_DIR=$OUT_DIR/sample
CIPH_DIR=$OUT_DIR/cipher
TEST_RESULT=$OUT_DIR/test_result.diff

CIPH_LIST=$(echo " "$(ls $LIBS_DIR) | sed -e "s# # $CIPH_DIR/cipher_$each#g")
python3 $DECRYPT_ROOT/DecryptOne.py $CIPH_LIST > /dev/null
