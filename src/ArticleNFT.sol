// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.17;
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract ArticleNFT is Ownable, ERC721URIStorage {
    constructor() ERC721("ArticleNFT", "ARTICLE") {}
}
