import { expect } from "chai";
import viem from "hardhat";

describe("Bank", function () {
  let bank: any;
  let owner: any;
  let addr1: any;
  let addr2: any;

  beforeEach(async function () {
    const Bank = await viem.getContractFactory("Bank");
    bank = await Bank.deploy();
    await bank.waitForDeployment();

    [owner, addr1, addr2] = await viem.getSigners();
  });

  it("Should deploy successfully", async function () {
    const address = await bank.getAddress();
    expect(address).to.be.a("string");
    expect(address).to.match(/^0x[a-fA-F0-9]{40}$/);
  });
});
