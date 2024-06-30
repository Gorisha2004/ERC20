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
Deploy the contract using Remix(platform to compile and deploy solidity contracts) and implement all the functionalities by passing suitable values. 

