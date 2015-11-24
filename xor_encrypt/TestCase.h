#ifndef _TESTCASE_
#define _TESTCASE_

#include <iostream>
using namespace std;

class TestCase
{
public:
	string plain;
	string psswd;
	string cipher;
public:
	TestCase(string pl, string ps, string ci);
	void print();
	void printCipher();
};
#endif
