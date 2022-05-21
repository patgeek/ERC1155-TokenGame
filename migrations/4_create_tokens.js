//const Token = artifacts.require("./Token.sol");
const Token = artifacts.require("GameToken");
const MarketPlace = artifacts.require("MarketPlace");



module.exports = (deployer) => deployer
  .then( () => createToken1())
  .then( () => createToken2())
  .then( () => createToken3())
  .then( () => mintTokens() );



async function createToken1(){
  (await Token.deployed()).create(0, "");
  //create(uint256 _initialSupply, string calldata _uri) vient de ERC1155Mintable
  //crerate a new type of token
}



async function createToken2(){
  (await Token.deployed()).create(0, "");
  //create(uint256 _initialSupply, string calldata _uri) vient de ERC1155Mintable
  //crerate a new type of token
}



async function createToken3(){
  (await Token.deployed()).create(0, "");
  //create(uint256 _initialSupply, string calldata _uri) vient de ERC1155Mintable
  //crerate a new type of token
}



function mintTokens(){
  Token.deployed().then( instance =>{
      instance.mint(1, [MarketPlace.address], [30]);
      // mint(uint256 _id, address[] calldata _to, uint256[] calldata _quantities)
      // vient de ERC1155Mintable
      instance.mint(2, [MarketPlace.address], [20]);
      instance.mint(3, [MarketPlace.address], [10]);
  })
}
