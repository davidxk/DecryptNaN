#ifndef _TESTCASE_
#define _TESTCASE_

#include <iostream>
using namespace std;

//A TestCase is a data structure that models an actual test case
//It knows how to print itself
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
