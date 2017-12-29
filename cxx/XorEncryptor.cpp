#include "XorEncryptor.h"

string XorEncryptor::encrypt(const string& plain, const string& psswd)
{
	string cipher;
	for(int i=0; i<plain.size(); i++)
		cipher += plain[i] ^ psswd[ i%psswd.size() ];
	return cipher;
}

string XorEncryptor::decrypt(const vector<int>& ciphr, const string& psswd)
{
	string plain;
	for(int i=0; i<ciphr.size(); i++)
		plain += (char)ciphr[i] ^ psswd[ i%psswd.size() ];
	return plain;
}
