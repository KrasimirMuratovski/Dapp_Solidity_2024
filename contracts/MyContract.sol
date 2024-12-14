//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


struct MyStruct {
    uint32 val;
    string name;
};

uint[] public myArray = [1,2,3];
string[][] public myArr = [['a', 'b'], ['c']];

MyStruct publict km_struct =    MyStruct(15, 'Kras')