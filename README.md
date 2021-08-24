# Eth-Todo-List

This is a to-do list dApp created with Solidity, some form of JS front end, Ganache, Truffle, and maybe a few other dev tools. This is my first guided project 
but I have plans to spruce it up after the tutorial is completed with my own implemented features. The specific tutorial I followed was created by Greg @ Dapp University
and can be found here: https://youtu.be/rzvk2kdjr2I

Yes, anybody can copy code which is why I plan to add my own style/design choices as well as added functionality to show what I've truly learned in the last several months.

Additions to original code (fixes/features):

- web3.eth.defaultAccount = web3.eth.accounts[0] is necessary in app.js file otherwise an invalid address error occurs
- <script src="vendor/web3/dist/web3.js"></script> added to index.html file above the script from truffle-contract; web3 not defined error
