#include "CipherGen.h"

int main()
{
	//EncryptTest et;
	//et.run();
	string plain;
	getline(cin, plain);
	CipherGen cg;
	TestCase tc=cg.genCase(plain);
	tc.printCipher();
	return 0;
}
