# DecryptNaN
Team NaN's solution to EMC China COE 2015 X-Challenge security problem: decipher a piece of cipher text encrypted with xor-encryption via a 3-charter key and is known to contain the string "Natural" in its plain text. 

The solution is implemented in three programming languages to compare the running speed. The conclusion is roughly

* C++ is much faster than Perl, and Perl is twice as fast as Python

The encryption method is also implemented in C++ for testing purpose. 

## Build & Run
To build everything in C++ in this project run `make` in project directory. 

To compare the running speed of this algorithm in C++, Perl and Python, run script `speedtest.sh`. To verify the result of the implementations, run script `verify.sh`

Usage of all executable files are listed as follows:

```shell
# "Natural" Crack
$ ./DecryptNaN.out cipher.txt
$ perl DecryptNaN.pl cipher.txt
$ python3 DecryptNaN.py cipher.txt

# Decrypt
$ ./decrypt key < cipher.txt

# Encrypt
$ ./encrypt key < plain.txt
```

## Idea
A important property of xor operation is that it is its own inverse. 

* If a xor b = c, then a xor c = b

Given the fact that string "Natural" appears in plain text and the length of the key is 3, it can be inferred that the xor of the cipher text of "Natural" and string "Natural" should have the structure of "ABCABCA". In other words, every pair of letters that are three characters away should be encrypted with the same letter. 

Thus we could try to "match" string "Natural" in the cipher text, so that the xor of the string and a substring of the cipher text appears in this structure. Specifically, the xor of the cipher text of 'N' and 'u' should be equal to 'N' xor 'u' for a substring to be matched. If so, then we try to match the cipher text of 'a' and 'r'. Then, we go on to 't' and 'a', and so on.

If, for example, 'a' and 'r' is matched but 't' and 'a' is not, then we could skip the characters we've already matched and start matching 'N' and 'a' again at the point where we failed. We could do that because we can easily prove that the pair of characters matching 'a' and 'r' can never match 'N' and 'a', since 'a' xor 'r' != 'N' xor 'a'. The same holds true for all pair of characters three letters away in the string "Natural". 

Thus in this matching, we never have to look back. The whole process is like what we do in KMP algorithm except that the pre-processing is done by hand. This way we could process the whole text within O(n) time. 

This algorithm is not complete because there could strings other than "Natural" that match this property, but it can be shown that this is quite unlikely to happen if the plain text is in English. 
