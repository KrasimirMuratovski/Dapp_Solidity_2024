//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyContract{// stores count on blockchain
    address public owner;
    uint count=0;// state variable

    mapping (uint  => string ) public names;
    mapping (uint => Book) public books;
    mapping(address => mapping(uint=> Book)) public myBooks;//Nested mapping; like library

    struct Book{
        string title;
        string author;
    }

    constructor(){
    owner = msg.sender;

        names[1]='Pesho';
        names[2]='Gosho';
    }

    function addBook(uint _id, string memory _title, string memory _author) public {
        books[_id] = Book(_title, _author);// _ > local var
        
    }

    function addMyBook(uint _id, string memory _title, string memory _author) public {
        myBooks[msg.sender][_id] = Book(_title, _author);
        // msg.sender (address)- Solidity has global VAR msg; exposed for every SC
}
}