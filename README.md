# ERC20 Token <br />
## Overview <br />
MyNewContract is a simple ERC20 token contract built using Solidity. This contract allows the deployment of an ERC20 token named "WORLDCUP" with the symbol "WC". The contract includes functionalities for minting new tokens, burning tokens, and transferring tokens. <br />

# Description<br />
This program has a contract named "MyNewContract" which inherits the properties of the ERC20 token. It has one public variable owner which contains the address of the contract owner. A modifier named onlyOwner is defined to ensure that only the owner can access certain functions. The constructor initializes the name and symbol for our token.<br />
## Functions<br />
* mintTokens: Allows the owner to mint new tokens to any address.
* burn: Allows any token holder to burn their tokens by specifying the amount.
* transferTokens: Allows transferring tokens to any account.

# Getting Started<br />
To run this program, you can use Remix, an online Solidity IDE. To get started, go to the [Remix website](https://remix.ethereum.org/). <br />
# Installation
1. Open Remix IDE.
2. Create a new file by clicking on the "+" icon in the left-hand sidebar.
3. Save the file with a .sol extension (e.g., MyNewContract.sol).
4. Copy and paste the following code into the file:
```
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/contracts/token/ERC20/ERC20.sol";

contract MyNewContract is ERC20 {
    
    address public owner;
    modifier onlyOwner() 
    {
        require(msg.sender == owner, "Only owner can call this function");
        _;
    }
    // Constructor used to initialize  token with a name and symbol
    constructor() ERC20("WORLDCUP", "WC") 
    {
        owner = msg.sender;
    }
 
     // Function to mint new tokens and assign them to a specific address
    function mintTokens(address _add, uint _value) public onlyOwner
    {
        _mint(_add, _value);
    }
        // function used to tranfer token to specific addresss
    function transferTokens(address _to, uint _amount) public 
    {
        transfer(_to, _amount);
    }
    // Function to burn (destroy) tokens from a specific address
    function burn(uint _amount) public 
    {
        _burn(msg.sender , _amount);
    }
}
```
# Executing Program
Deploy the contract using Remix (a platform to compile and deploy Solidity contracts) and implement all the functionalities by passing suitable values.

