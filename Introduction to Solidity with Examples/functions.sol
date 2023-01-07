// SPDX-License-Identifier: MIT

//define which compiler to use
pragma solidity ^0.5.0;

//contract name is MyFirstContract
contract MyFirstContract {

//create a string state variable called name

    string private name;


//use the setName function to set a name
    function setName(string memory newName) public {
        name = newName;
    }

//use the getName function to get the name you set
    function getName () public view returns (string memory) {
        return name;
    }
}
