#include "XorEncryptor.h"
//XorEncryptor::encrypt(const string& plain, const string& psswd)
string XorEncryptor::encrypt(string plain, string psswd)
{
	string cipher;
	for(int i=0; i<plain.size(); i++)
		cipher += plain[i] ^ psswd[ i%psswd.size() ];
	return cipher;
}

string XorEncryptor::decrypt(vector<int> ciphr, string psswd)
{
	string plain;
	for(int i=0; i<ciphr.size(); i++)
		plain += (char)ciphr[i] ^ psswd[ i%psswd.size() ];
	return plain;
}
