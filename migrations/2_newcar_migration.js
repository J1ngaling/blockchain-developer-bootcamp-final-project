const NewCar = artifacts.require("NewCar");

module.exports = function (deployer) {
  deployer.deploy(NewCar);
};