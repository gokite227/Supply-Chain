
//SPDX-License-Identifier: MIT

pragma solidity >=0.4.21 <8.10.0;

contract Ownable {
    address public _owner;

    constructor() {
        _owner = msg.sender;
    }
    
    modifier onlyOwner() {
        require(isOwner(),"You are not the owner");
        _;
    }

    function isOwner() public view returns(bool) {
        return (msg.sender == _owner);
    }
}