Design patterns used


Access Control Design Patterns

Ownable design pattern used in the setCarPrice() function. This ensures that only the owner of the contract, the vehicle manufacturer, can set the purchase price of the motor vehicle.


Inheritance and Interfaces

The contract inherits the OpenZeppelin ERC721, ERC721Enumerable, Ownable contracts. The ineritence of these contracts allows the following functions:
    ER721 - Gives the contract access to safeMint() and safeTransferFrom() allowing for the safe creation and transfer of the Non Fungible Tokens.
    ERC721Enumerable - Enables the contract to be able to tokenOfOwnerByIndex() and totalSupply() functions allowing the front-end to read the supply of tokens and the related owners of those tokens.
    Ownable - only the contract owner can set the price of the motor vehicle.