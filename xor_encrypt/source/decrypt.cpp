#include "XorEncryptor.h"

int main(int argc, char* argv[])
{
	if(argc < 2)
	{
		cout<<"Please input the key! "<<endl;
		return 1;
	}
	vector<int> plain;
	int ctext;
	while(cin>>ctext) 
	{
		plain.push_back(ctext);
		cin.get();
	}
	XorEncryptor xe;
	cout<<xe.decrypt(plain, argv[1]);
	return 0;
}
