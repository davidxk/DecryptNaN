#include "XorEncryptor.h"
//XorEncryptor::encrypt(const string& plain, const string& psswd)
string XorEncryptor::encrypt(const string& plain, const string& psswd)
{
	string cipher;
	for(int i=0; i<plain.size(); i++)
		cipher += plain[i] ^ psswd[ i%psswd.size() ];
	return cipher;
}

string XorEncryptor::intVec2Str(const vector<int>& ciphr)
{
	string str;
	for(int i=0; i<ciphr.size(); i++)
		str += (char) ciphr[i];
	return str;
}

string XorEncryptor::decrypt(const vector<int>& ciphr, const string& psswd)
{
	//faster decryption over encrypt(intVec2Str(ciphr), psswd);
	string plain;
	for(int i=0; i<ciphr.size(); i++)
		plain += (char)ciphr[i] ^ psswd[ i%psswd.size() ];
	return plain;
}
