#include "NaturalCrack.h"

int main()
{
	vector<int> plain;
	int ctext;
	while(cin>>ctext) 
	{
		plain.push_back(ctext);
		cin.get();
	}
	NaturalCrack nc;
	cout<<nc.crack(plain);
	return 0;
}
