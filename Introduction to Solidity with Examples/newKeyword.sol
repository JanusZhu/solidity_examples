// SPDX-License-Identifier: MIT


pragma solidity ^0.8.7;

contract UserAccount {
    address public company;
    address public user;
    string public name;

    constructor(address _user, string memory _name) payable {
        company = msg.sender;
        user = _user;
        name = _name;
    } 

}

// The AccountFactory contract below will deploy the code in the UserAccount contract above
contract AccountFactory {
    // state variable array to keep track of the accounts that are created with this contract
    UserAccount[] public useraccounts;


    // this function takes two parameters.  A users account number and a name
    function CreateUserAccount(address _user, string memory _name) external payable{
        // the new keyword is used to create a new contract
        // UserAccount is the name of the contract the NEW keyword will call
        // in the () add the data that needs to be passed to the constructor in the contract above
        // to send ether to the new contract use UserAccount{value: "amount"}(_user, _name);
        // to assign the new contract as a variable call it UserAccount
        UserAccount account = new UserAccount(_user, _name);
        // after the contract is deployed push the new contract account into the array to keep track of newly created contracts
        useraccounts.push(account);
    }


}
