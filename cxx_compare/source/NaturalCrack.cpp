#include "NaturalCrack.h"

const int NaturalCrack::keyLen = 3;
const string NaturalCrack::NATURAL = "Natural";

string NaturalCrack::crack(const vector<int>& cipher)
{
	string key = getKey(cipher);
	if( key.empty() ) return key;

	return xe.decrypt( cipher, key ) + '\n';
}

string NaturalCrack::getKey(const vector<int>& cipher)
{
	string key;
	for(int i=0; i<cipher.size()-keyLen; i++)
	{
		// try match Natural
		int j;
		for(j=0; j<NATURAL.size()-keyLen; j++)
			if( !givenVerify((char)cipher[i + j], NATURAL[j], 
						(char)cipher[ i+j+keyLen ], NATURAL[j + keyLen]) )
				break;

		// if match Natural, get key
		if(j == NATURAL.size()-keyLen)
		{
			for(int k=0; k<keyLen; k++)
				key += (char)cipher[i+k] ^ NATURAL[k];
			arrangeKey(i % keyLen, key);
			break;
		}

		// else rush to failling position
		else
		{
			if(j != 0)
				i += j - 1 ;		// minus one for $i++
		}
	}
	if(key.size() == 0)
	{
		cout<<"No 'Natural' word found! \n";
		return key;
	}
	return key;
}

bool NaturalCrack::givenVerify(char ciphr_0, char plain_0,
	   	char ciphr_3, char plain_3)
{
	char presumedKey = ciphr_0 ^ plain_0;
	return ( plain_3 ^ presumedKey ) == ciphr_3;
}

void NaturalCrack::arrangeKey(int start, string& key)
{
	int size = key.size();
	key = key.substr(size - start, start) + key.substr(0, size - start);
}
