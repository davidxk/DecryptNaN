#ifndef _CIPHER_GEN_
#define _CIPHER_GEN_

#include "TestCase.h"
#include "XorEncryptor.h"

class CipherGen
{
public:
	CipherGen();
	string genPsswd();
	TestCase genCase(string plain);
	XorEncryptor xe;
};
#endif
