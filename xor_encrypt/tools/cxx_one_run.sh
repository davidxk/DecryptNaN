source proj_path.sh

SAMP_DIR=$OUT_DIR/sample
CIPH_DIR=$OUT_DIR/cipher
TEST_RESULT=$OUT_DIR/test_result.diff

CIPH_LIST=$(echo " "$(ls $LIBS_DIR) | sed -e "s# # $CIPH_DIR/cipher_$each#g")
$DECRYPT_ROOT/DecryptOne $CIPH_LIST > /dev/null
