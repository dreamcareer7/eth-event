var EventList = artifacts.require("./EventList.sol");

module.exports = function(deployer) {
  deployer.deploy(EventList);
};