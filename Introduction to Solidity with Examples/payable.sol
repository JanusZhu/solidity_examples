// SPDX-License-Identifier: MIT

pragma solidity ^0.7.0;

contract  payableSample {

    //add the keyword payable to the state variable
    address payable public Owner;
    

    //set the owner to the msg.sender
    constructor () {
        Owner = msg.sender; 
    }
    
    modifier enoughBalance(){
        require(address(msg.sender).balance >= msg.value);
        _;
    }

    //create a modifier that the msg.sender must be the owner
    modifier onlyOwner() {
        require(msg.sender == Owner, 'Not owner');
        _;
    }
    

    //the owner can withdraw from the contract because payable was added to the state variable above
    function withdraw () public payable enoughBalance{
        Owner.transfer(msg.value); 
    }
    

    //to.transfer works because we made the address above payable.
    function transfer(address payable _to) public payable onlyOwner enoughBalance{
        _to.transfer(msg.value); //to.transfer works because we made the address above payable.
    }

    function getBalance() public view returns(uint256){
        return address(Owner).balance;
    }
}
