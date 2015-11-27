#include "XorEncryptor.h"
//XorEncryptor::encrypt(const string& plain, const string& psswd)
string XorEncryptor::encrypt(string plain, string psswd)
{
	const int lenPsswd=3;
	string cipher;
	for(int i=0; i<plain.size(); i++)
		cipher += plain[i] ^ psswd[ i%lenPsswd ];
	return cipher;
}
