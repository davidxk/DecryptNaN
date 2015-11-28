#include "CipherGen.h"

int main(int argc, char* argv[])
{
	if(argc < 2)
	{
		cout<<"Please input the key! "<<endl;
		return 1;
	}
	string plain;
	getline(cin, plain, '\0');
	CipherGen cg;
	TestCase tc=cg.genCase(plain, argv[1]);
	tc.printCipher();
	return 0;
}
