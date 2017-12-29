#!/usr/bin/python3

import fileinput

def given_verify(ciphr_0, plain_0, ciphr_3, plain_3):
    presumed_key = ciphr_0 ^ plain_0
    return ciphr_3 ^ plain_3 == presumed_key

def arrage_key(start, keys):
    for i in range( start ):
        keys.insert( 0, keys.pop() )
    return keys

def decrypt(line):
    ciphers = eval( line )
    Natural = "Natural"
    keys = []
    key_len = 3
    for i in range( len(ciphers) - key_len ):
        for j in range( len(Natural) - key_len ):
            if not given_verify( ciphers[i + j], ord( Natural[j] ), 
                    ciphers[i + j + key_len], ord( Natural[j + key_len] ) ):
                break
        if j == len(Natural) - key_len - 1:
            for k in range( key_len ):
                keys.append( ciphers[i + k] ^ ord( Natural[ k ] ) )
            keys = arrage_key( i, keys)
            break
        elif( j!=0 ):
            i += j - 1
    if len(keys) == 0:
        print("No 'Natural' word found! ")
    #else: print(keys)

    for i in range( len(ciphers) ):
        plain = ciphers[ i ] ^ keys[ i % 3 ]
        print( chr(plain), end = "")
    print()

if __name__=="__main__":
    for line in fileinput.input():
        decrypt(line)
