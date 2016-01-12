#include "NaturalCrack.h"
#include <fstream>
#include <string>

int main( int argc, char *argv[] )
{
	ifstream fin;
	for(int i=1; i<argc; i++)
	{
		fin.open( argv[i] );
		vector<int> plain;
		int ctext;
		while(fin>>ctext) 
		{
			plain.push_back(ctext);
			fin.get();
		}
		fin.close();

		NaturalCrack nc;
		cout<<nc.crack(plain);
	}
	return 0;
}
