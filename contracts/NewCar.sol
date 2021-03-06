// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

/// @title A contract for purchasing a NFT corresponding to ownership of a motor vehicle
/// @author Guy Jackson
/// @notice Allows a user to purchase a NFT corresponding to ownership of a motor vehicle
/// @dev TBD

contract newCar is ERC721, ERC721Enumerable, Ownable {
    
    /// @dev Tracks the number of vehicle tokens
    uint256 public tokenCounter;

    /// @dev amount, in ether, to mint a vehicle token 
    uint256 public newCarPrice;

    /// @notice Emitted when a vehicle is minted
    /// @param tokenId minted vehicle id
    event newMint(uint256 indexed tokenId);
    constructor() ERC721("newCar", "NCR") {
        
        tokenCounter = 0;   
        setCarPrice(0.02 ether);
    }

   /// @dev overrides the inhereted function
    function _beforeTokenTransfer(address from, address to, uint256 tokenId) internal override(ERC721, ERC721Enumerable)
    {
        super._beforeTokenTransfer(from, to, tokenId);
    }

    /// @dev overrides the inhereted function
    function supportsInterface(bytes4 interfaceId) public view override(ERC721, ERC721Enumerable) returns (bool)
    {
        return super.supportsInterface(interfaceId);
    }
    
    /// @notice Mints a new vehicle token to msg.sender
    /// @dev requires that the value sent with the token is not less than the newCarPrice
    function mintCar() public payable {
        require(msg.value >= newCarPrice, "insufficient ETH");
        uint256 tokenId = tokenCounter; 
        tokenCounter = tokenCounter +1;
        _safeMint(msg.sender, tokenId); 
        emit newMint(tokenId);
    }
    /// @notice Transfers a vehicle token to another ethereum address
    /// @param newOwner is the ethereum address of the transferee
    /// @param tokenId is the vehicle Id of the token that you are transferring
    function transferCar(address newOwner, uint256 tokenId) public payable {
        safeTransferFrom(msg.sender, newOwner, tokenId); 
    }
    
    function getCarPrice() public view returns (uint256) {
        return newCarPrice;
    }
    
    /// @notice Set the price to mint a new vehicle token
    /// @param carPrice is the price, in ether, of the new mint price
    /// @dev needs to ensure that the price is in ether
    function setCarPrice(uint256 carPrice) public onlyOwner {
        newCarPrice = carPrice;
    }

}