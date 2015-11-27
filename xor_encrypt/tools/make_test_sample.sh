source proj_path.sh

EXEC=$MAKE_DIR/make_sample
SAMP_DIR=$OUT_DIR/sample
CIPH_DIR=$OUT_DIR/cipher

for each in $(ls $LIBS_DIR); do 
	sample_each=$SAMP_DIR/sample_$each
	cipher_each=$CIPH_DIR/cipher_$each
	EXEC < $each > $sample_each
	sed "s/Ciphr: //p" $sample_each > $cipher_each
done
