#ifndef _CIPHER_GEN_
#define _CIPHER_GEN_

#include "TestCase.h"
#include "XorEncryptor.h"

//A Cipher Generator is a integrated module 
//It provides additional service of encryption with random 3-byte password
//It outputs a complete TestCase with all the needed data
class CipherGen
{
public:
	CipherGen();
	string genPsswd();
	TestCase genCase(string plain, string psswd="");
	XorEncryptor xe;
};
#endif
