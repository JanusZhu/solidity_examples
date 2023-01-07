// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract A {
    uint public a;
    uint public x;
    uint public y;
    address public owner;
    uint public createdAt;

//use the constructor below to set variables at time of deployment
//pass in a value for x and y into the constructor to set the state variable
//the owner of the contract is the msg.sender (the contract creator)
//the createdAt state variable will contain the block time stamp at when the constructor was created
    constructor (uint _x, uint _y) {
            x=_x;
            y=_y;
            owner = msg.sender;
            createdAt = block.timestamp;

    }
}
