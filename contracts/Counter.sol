pragma solidity ^0.8.0;

contract Counter{// stores count on blockchain
    uint count;// state variable

    constructor(){
        count =0;
    }

    function getCount() public view returns(uint){
        return count;
    }

    function incrementCount() public {
        count++;
    }
}