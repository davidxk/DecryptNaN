DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
PROJ_ROOT="$DIR"/../..	# /.. depends on proj org
ENCRYPT_ROOT=$PROJ_ROOT/xor_encrypt
DECRYPT_ROOT=$PROJ_ROOT/xor_decrypt

LIBS_DIR=$ENCRYPT_ROOT/libs
MAKE_DIR=$ENCRYPT_ROOT/makeproject
OUT_DIR=$ENCRYPT_ROOT/out
