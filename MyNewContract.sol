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
