const newCar = artifacts.require("newCar");

/*
 * uncomment accounts to access the test accounts made available by the
 * Ethereum client
 * See docs: https://www.trufflesuite.com/docs/truffle/testing/writing-tests-in-javascript
 */
contract("newCar", function ( accounts ) {

  // this test checks that the contract is deployed
  it("should assert true", async function () {
    await newCar.deployed();
    return assert.isTrue(true);
  });

  // this test ensures that the token counter starts off with a zero
  it("has an initial value of 0", async () => {
    const newCarInstance = await newCar.deployed();

    const tokenCounter = await newCarInstance.tokenCounter.call();

    assert.equal(tokenCounter, 0, 'Token counter should be zero');
  })

  // ensures that the initial mint price, deployed with the constructor is 0.02 ether
  it("has an initial mint price of 0.02 ether", async () => {
    const newCarInstance = await newCar.deployed();

    const newCarPrice = await newCarInstance.newCarPrice.call();

    assert.equal(newCarPrice, 20000000000000000, 'newCarPrice should be 0.02 ether');
  })

  // this test checks that a token is created when the mintCar function is called
  it("creates a new token when mintCar function is called", async () => {
    const newCarInstance = await newCar.deployed();

    await newCarInstance.mintCar({ value: 20000000000000000 });

    const newToken = await newCarInstance.tokenCounter.call();

    assert.equal(newToken, 1, 'There should be 1 token');
  })

  // this test checks that the token that is transferred to the caller's address
  it("mints the token to the user's address", async () => {
    const newCarInstance = await newCar.deployed();

    await newCarInstance.mintCar({ value: 20000000000000000 });

    const newTokenAddress = await newCarInstance.ownerOf(0);

    assert.equal(newTokenAddress, accounts[0], 'not the correct owner');
  })

  // it("sets new car price to 0.03 ether", async () => {
  //   const newCarInstance = await newCar.deployed();

  //   const setNewPrice = await newCarInstance.setCarPrice({ value: web3.utils.toWei('0.03', "ether")});

  //   assert.equal(setNewPrice, 30000000000000000, 'newCarPrice should be 0.03 ether');
  // })

});

