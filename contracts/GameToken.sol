//pragma solidity 0.5.1;
pragma solidity >=0.4.22 <0.9.0;

import "../lib/ERC1155.sol";
import "../lib/ERC1155Mintable.sol";

contract GameToken is ERC1155, ERC1155Mintable{

  constructor() public{

  }

  function mint(uint256 _id,address[] memory  to, uint256[] memory tokenNumber) public   {
        mint(_id, to , tokenNumber );
        //mint(uint256 _id, address[] calldata _to, uint256[] calldata _quantities)

    }


}
