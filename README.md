# Book Charity Donor

This a Smart Contract that Authors can use to sell thier Books and donate ether from the Book sale to the purchasers' charity of choice.

This project demonstrates Upgradable Smart Contracts using the Transparent Proxy use case. It coontains 2 version of a BookCharityDonor Contract, a test for the contract, and scripts that deploy the v1 and v2 of the contract.

To have it runnig on your machine, run the following commands after cloning.

```shell
npx hardhat compile
npx hardhat test
```

Tests are still a WIP. 

You can deploy your version to any Testnet of choice, using:

```shell
npx hardhat run scripts/deploy_v2.js --network <network>
```

I recommend using goerli network
 
 &nbsp;

## The contracts are deployed on the Goerli Testnet

Proxy: https://goerli.etherscan.io/address/0x2a137f83a7862e0ed7e74b1c30f9d9252f92e0df#writeProxyContract

Implementation V1: https://goerli.etherscan.io/address/0x26656eb15fb5779c2e886e019ee23b1810a59421#code

Implementation V2: https://goerli.etherscan.io/address/0x58963dda453bad58ca519d3f5498be56d4e3c83b#code
