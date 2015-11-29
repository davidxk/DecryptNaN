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
	string encrypt(string plain, string psswd);
	string decrypt(vector<int> ciphr, string psswd);
};
#endif
