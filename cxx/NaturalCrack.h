#ifndef _NATURAL_CRACK_H_
#define _NATURAL_CRACK_H_

#include "XorEncryptor.h"
#include <iostream>
#include <vector>
using namespace std;

//description of the class here
class NaturalCrack
{
public:
	string crack(const vector<int>& cipher);
private:
	string getKey(const vector<int>& cipher);
	bool givenVerify(char ciphr0, char plain0, char ciphr3, char plain3);
	void arrangeKey(int start, string& key);
	XorEncryptor xe;
	static const int keyLen;
	static const string NATURAL;
};
#endif
