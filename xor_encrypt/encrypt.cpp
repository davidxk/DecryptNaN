#include "XorEncryptor.h"

// This is file contains the main() for a stand alone xor-encryption executable
// Usage: ./encrypt password < plain_text.txt
int main(int argc, char* argv[])
{
	if(argc < 2)
	{
		cout<<"Please input the key! "<<endl;
		return 1;
	}
	string plain;
	getline(cin, plain, '\0');
	XorEncryptor xe;
	string cipher = xe.encrypt(plain, argv[1]);
	for(int i=0; i<cipher.size(); i++)
		cout<<(int)cipher[i]<<',';
	return 0;
}
