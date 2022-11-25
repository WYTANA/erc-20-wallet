// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract ERC20Wallet {
    address payable public owner;

    constructor() {
        owner = payable(msg.sender);
    }

    function deposit() public payable {}

    function withdraw(address payable receiver, uint256 amount) public {
        require(
            msg.sender == owner,
            "ERC20Wallet: only owner can withdraw ether"
        );
        receiver.transfer(amount);
    }

    function balanceOf() public view returns(uint256) {
        return address(this).balance; 
    }
}
