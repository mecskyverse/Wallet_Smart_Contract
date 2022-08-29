const { ethers } = require("hardhat");
const { asser, expect } = require("chai");

describe("Allowance", function () {
  let allowance, allowanceFactory;
  beforeEach(async function () {
    allowanceFactory = await ethers.getContractFactory("Allowance");
    allowance = await allowanceFactory.deploy();
  });
});
