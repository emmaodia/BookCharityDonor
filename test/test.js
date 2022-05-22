const { expect } = require("chai");
const { ethers } = require("hardhat");

describe("BookCharityDonor", function () {
  it("Check Price for Book is in Ethers", async function () {
    // const Contract = await ethers.getContractFactory("BookCharityDonor");
    // const contract = await Contract.deploy();
    // await contract.deployed();
    const amount = ethers.utils.parseEther("5").toString();
    expect(amount).to.equal("5000000000000000000");
  });
});
