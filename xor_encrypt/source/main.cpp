#include "CipherGen.h"

int main()
{
	string plain;
	getline(cin, plain);
	CipherGen cg;
	TestCase tc=cg.genCase(plain);
	tc.print();
	return 0;
}
