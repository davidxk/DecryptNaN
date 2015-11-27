#include "CipherGen.h"
#include <cstdlib>
#include <ctime>

CipherGen::CipherGen()
{
	srand(time(0));
}

TestCase CipherGen::genCase(string plain)
{
	string psswd=genPsswd();
	string cipher=xe.encrypt(plain, psswd);
	return TestCase(plain, psswd, cipher);
}

string CipherGen::genPsswd()
{
	string psswd;
	for(int i=0; i<3; i++)
		psswd+=(char) ( rand()%128 );
	return psswd;
}
