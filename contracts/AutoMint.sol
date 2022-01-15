// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract AutoMint is ERC721, Ownable {

    ///bytes32 tokenId;
    uint256 tokenCounter;
    uint256 public constant carPrice = 2 ether;

    mapping(uint256 => address) public requestIdToSender;
    ///mapping(uint256 => string) public requestIdToTokenURI;
    ///mapping(uint256 => uint256) public requestIdToTokenId;
    ///event purchasedAuto(bytes32 indexed carId);

    constructor() ERC721 ("AutoMint", "AUT") {
        tokenCounter = 0;
    }
 
    ///function tokenURI(uint256 _tokenId) public view virtual override returns (string memory) {
    ///   return string(abi.encodePacked(super.tokenURI(_tokenId),".json"));
    ///}

    ///function createAuto(uint256 carId) public {
       /// requestIdToSender[carId] = msg.sender;
        ///requestIdToTokenURI[carId] = tokenURI;
        ///emit purchasedAuto(carId);

   /// }

    function mintCar() public payable {
        ///require(carPrice <= msg.value);
        ///address carOwner = requestIdToSender[carId];
        ///string memory tokenURI = requestIdToTokenURI;
        uint256 newItemId = tokenCounter;
        _safeMint(msg.sender, newItemId);
       /// _setTokenURI(newItemId, tokenURI);
        ///requestIdToTokenId[carId] = newItemId;
        tokenCounter += tokenCounter;
        
    }

   /// function setTokenURI(uint256 _tokenId, string memory _tokenURI) public {
    ///    require(
    ///        _isApprovedOrOwner(_msgSender(), _tokenId),
    ///        "ERC721: transfer caller is not owner nor approved"
    ///    );
    ///    _setTokenURI(_tokenId, _tokenURI);
    ///}

}