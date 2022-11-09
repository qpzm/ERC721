// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract ArticleNFT is Ownable, ERC721URIStorage {
    constructor() ERC721("ArticleNFT", "ARTICLE") {}
    uint256 totalMinted;

    function mint(address _receiver, string memory _uri) public onlyOwner {
        uint256 currentId = totalMinted;
        ++totalMinted;
        _safeMint(_receiver, currentId);
        _setTokenURI(currentId, _uri);
    }
}
