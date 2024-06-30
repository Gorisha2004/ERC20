# ERC20 Token <br />
**Overview** <br />
MyNewContract is a simple ERC20 token contract built using Solidity. This contract allows the deployment of an ERC20 token named "WORLDCUP" with the symbol "WC". The contract includes functionalities for minting new tokens, burning tokens, and transferring tokens. <br />

**Description**<br />
This program has a contract named "MyNewContract" which is inheriting the properties of ERC20 token. It has one pulic variable address which will contain the address of the owner. Then a modifier is defined named "onlyOwner" which has conditions that only owner can access that function. Next, we have the constructor which is initializing the name and symbol for our token. <br />
**Functions**<br />
--> mintTokens- it allows the owner to mint new tokens to any address. <br />
--> burn- it allows any token holder to burn their tokens with the amount they will pass.<br />
--> transferToken- it allows to transfer amount to any account or from any account. <br />

**Usage**<br />
Compile the below written code : <br />
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
Deploy the contract using Remix(platform to compile and deploy solidity contracts) and implement all the functionalities by passing suitable values. 

