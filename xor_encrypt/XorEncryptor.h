#ifndef _XOR_ENCRYPTOR_
#define _XOR_ENCRYPTOR_

#include <iostream>
#include <vector>
using namespace std;

//XorEncryptor is a class dedicated to the encryption process
//Its only job is to encrypt given plain text with the given password
class XorEncryptor
{
public:
	string encrypt(const string& plain, const string& psswd);
	string intVec2Str(const vector<int>& ciphr);
	string decrypt(const vector<int>& ciphr, const string& psswd);
};
#endif
