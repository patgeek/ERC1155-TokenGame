//const Token = artifacts.require("./Token.sol");
const Token = artifacts.require("GameToken");
const MarketPlace = artifacts.require("MarketPlace");



module.exports = (deployer) => deployer
  .then(() => deployMarketplace(deployer));




function deployMarketplace(deployer){
  return deployer.deploy(
      MarketPlace,
      Token.address
    );
}
