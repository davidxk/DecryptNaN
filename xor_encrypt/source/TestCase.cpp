#include "TestCase.h"

TestCase::TestCase(string pl, string ps, string ci):
	plain(pl), psswd(ps), cipher(ci) { }

void TestCase::print()
{
	cout<<"Plain: "<<endl<<plain<<endl
		<<"Psswd: "<<endl<<psswd<<endl
		<<"Ciphr: ";
	printCipher();
}

void TestCase::printCipher()
{
	for(int i=0; i<cipher.size(); i++)
		cout<<(int)cipher[i]<<',';
}
