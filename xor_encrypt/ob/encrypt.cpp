#include <iostream>
#include <string>
using namespace std;

class XorEncryptor
{
public:
	string readPlain()
	{
		string plain;
		getline(cin, plain);
		return plain;
	}
	void start()
	{
		string plain=readPlain();
		string encrypt=getEncrypted(readEncrypt());
		cout<<"Password: \n"<<XOR(plain, encrypt);
	}
	vector<int> readEncrypt()
	{
		int nn;
		vector<int> list;
		while(cin>>nn)
			list.push_back(nn);
		return list;
	}
	string getEncrypted(vector<int> list)
	{
		string encrypted;
		for(const auto& it: list)
			encrypted+=(char)it;
		return encrypted;
	}
	string XOR(string aa, string bb)
	{
		if(aa.size()!=bb.size()) 
		{
			cout<<"Length not equal!\n";
			return string;
		}
		string cc;
		for(int i=0; i<aa.size(); i++)
			cc=aa[i]^bb[i];
		return cc;
	}
};

int main()
{
	XorEncryptor xe;
	xe.start();
	return 0;
}	
