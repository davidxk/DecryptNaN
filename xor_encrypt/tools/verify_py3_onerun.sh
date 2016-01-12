source proj_path.sh

SAMP_DIR=$OUT_DIR/sample
CIPH_DIR=$OUT_DIR/cipher
TEST_RESULT=$OUT_DIR/test_result.diff

rm -f $TEST_RESULT work answ

CIPH_LIST=$(echo " "$(ls $LIBS_DIR) | sed -e "s# # $CIPH_DIR/cipher_$each#g")
python3 $DECRYPT_ROOT/DecryptOne.py $CIPH_LIST >> work

for each in $(ls $LIBS_DIR); do 
	sample_each=$SAMP_DIR/sample_$each
	sed -n "s/Plain: //p" $sample_each >> answ
done

difference=$( diff answ work ) 
rm -f work answ
if [[ -n $difference ]]; then 
	echo "$difference" >> $TEST_RESULT
	echo " Case fail! "
fi
