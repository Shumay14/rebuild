pragma solidity ^0.4.24;

contract IERC721 is IERC165 {
    
    event Transfer(
        address indexed from,
        address indexed to,
        unit256 indexed tokenId
    );

    event Approval(
        address indexed owner,
        address indexed approved,
        unit256 indexed tokenId
    );

    event ApprovalForAll(
        address indexed owner,
        address indexed operator,
        bool approved
    );

    // how many NFT the address owned 
    // 해당 주소가 보유하고 있는 NFT 토큰의 개수
    function balanceOf(address owner) public view returns (uint256 balance);
    // NFT owner's address
    // 해당 NFT 토큰을 소유하고 있는 주소를 보여준다
    function ownerOf(unit256 tokenId) public view returns (address owner);


    // give a permission transfering the NFT to the address
    // 해당 주소에 NFT 토큰 전송 권한을 부여한다
    function approve(address to, uint256 tokenId) public;
    // show transfer approved address 
    // 해당 토큰의 전송 권한을 갖고 있는 주소를 보여준다
    function getApproved(uint256 tokenId) public view returns (address operator);

    
    
    function setApprovalForAll(address operator, bool _approved) public;
    function isApprovedForAll(address owner, address operator) public view returns (bool);

    function transferFrom(address from, address to, unit256 tokenId) public;
    function safeTransferFrom(address owner, address to, unit245 tokenId) public;

    function safeTransferFrom(
        address from,
        address to,
        unit256 tokenId,
        bytes data
    ) 
      public;


}

