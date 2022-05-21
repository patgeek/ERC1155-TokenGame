//pragma solidity 0.5.1;
pragma solidity >=0.4.22 <0.9.0;

import "../lib/IERC1155.sol";


contract MarketPlace{

  IERC1155 private _token;

  mapping(uint256 => uint256) price;

  constructor(IERC1155 token)  public{
      require(address(token) != address(0));
      //Within an Ethereum transaction, the zero-account
      //is just a special case used to indicate that a new contract is being deployed
      _token = token;
      price[1] = 100000000000000;
      price[2] = 200000000000000;
      price[3] = 300000000000000;

  }

function ()  external payable{
    //on dépose dans le contrat depuis l'extérieur du contrat
    buyToken(1);
}

function buyToken(uint256 tokenId) public payable{

    uint256 weiAmount = msg.value;
    require(weiAmount >= price[tokenId] && price[tokenId] != 0);

    _token.safeTransferFrom(address(this), msg.sender, tokenId, 1, "");
    //tansfer 1 token du contrat vers l'adresse de celui qui achète 1 token
    //address(this) ==>adresse du contract
    // msg.sender ===>adress de celui qui achète le token
    //tokenId ===>id du tokens
    //1 ===> nombre de token acheté
}



function onERC1155Received(address _operator, address _from, uint256 _id, uint256 _value,bytes calldata _data)
 external returns(bytes4){

    return bytes4(keccak256("onERC1155Received(address,address,uint256,uint256,bytes)"));
    //Hashing Functions In Solidity Using Keccak256 ==> hash of string
    //return a hash of string as stamp when transfer is done
}

}
