// ERC-721 defines a minimum interface a smart contract must implement 
// to allow unique tokens to be managed, owned, and traded.
// It does not madate a standard for token metadata 
// or restrict adding supplemental functions.

pragma solidity ^0.4.20;

/// @title ERC-721 Non-Fungible Token Standard
/// @dev See https://github.com/ethereum/EIPs/blob/master/EIPS/eip-721.md
///  Note: the ERC-165 identifier for this interface is 0x80ac58cd

interface ERC721 /* is ERC165 */ {
    /// @dev This emits when owenrship of any NFT changes by any mechanism.
    /// This event emits when NFTs are created (`from` == 0) and destroyed (`to` == 0).
    
    /// Exception: during contract creation, any number of NFTs may be created and 
    /// assigned without emitting Transfer. 
    /// At the time of any transfer, the approved address for that NFT (if any) 
    /// is reset to none.
    event Transfer(address indexed _from, address indexed _to, uint256 indexed _tokenId);


    /// @dev This emits when the approved address for an NFT is changed or reaffirmed.
    /// The zero address indicates there is no approved address.
    /// When a Transfer event emits, this also indicates that the approved address for
    /// that NFT (if any) is reset to none.
    event Approval(address indexed _owner, address indexed _approved, unit256 _tokenId);

    /// @dev This emits when an operator is enabled or disabled for an owner.
    /// The operator can manage all NFTs of the owneer.
    event ApprovalForAll(address indexed _owner, address indexed _operator, bool _approved);


    /// @notice Count all NFTs assigned to an owner
    /// 소유자의 NFT 개수를 카운트
    /// @dev NFTs assigned to the zero address are considered invalid, and this
    /// function throws for queries about the zero address.
    /// @param _owner An address for whom to query the balance
    /// @return The number of NFTs owned by `_owner`, possibly zero
    function balanceOf(address _owner) external view returns (unit256);

    /// @notice Find the owner of an NFT
    /// @dev NFTs assigned to zero address are considered invalid, 
    /// and queries about them do throw.
    /// @param _tokenId The identifier for an NFT
    /// @return The address of the owner of the NFT
    function ownerOf(uint256 _tokenId) external view returns (address);

    /// @notice Transfers the ownership of an NFT from one address to another address
    /// NFT 소유권을 다른사람의 주소로 이전
    /// @dev Throws unless `msg.sendr` is the current owner, and authorized
    /// operator, or the approved address for this NFT.
    /// Throws if `_from` is not the current owner. 
    /// Throws if `_to` is the zero address.
    /// Throws if `_tokenId` is not a valid NFT. 
    /// When transfer is complete, this function checks if `_to` is a smart contract (code size > 0).
    /// If so, it calls `onERC721Resceived` on `_to` 
    /// and throws if the return value is not `bytes4(keccak256("onERC721Received(address, address, uint256, bytes)")`.
    /// @param _from The current owner of the NFT
    /// @param _to The new owner
    /// @param _tokenId The NFT to transfer
    /// @param data Additional data with no specified format, sent in call to `_to`
    function safeTransferFrom(address _from, address _to, uint256 _tokenId, bytes data) external payable;


    /// @notice Transfers the ownership of an NFT from one address to another address
    /// NFT 소유권을 다른 사람의 주소로 이전
    /// @dev This works identically to the other function with an extra data parameter,
    ///     except this function just set data to ""
    /// @param _from The current owner of the NFT
    /// @param _to The new owner
    /// @param _tokenId The NFT to transfer
    function safeTransferFrom(address _from, address _to, uint256 _tokenId) external payable;


    /// @notice Transfer ownership of and NFT -- THE CALLER IS RESPONSIBLE 
    /// TO CONFIRM THAT `_to` IS CAPABLE OF RECEIVING NFTS OR ELSE THEY MAY BE PERMANENTLY LOST
    /// @dev Throws unless `msg.sender` is the current NFT owner, or an authorized operator of the current owner.
    /// Throw if `_from` is not the current owner.
    /// Throws if `_to` is the zero address.
    /// Throws if `_tokenId` is not a valid NFT.
    /// @param _from The current owner of the NFT
    /// @param _to The new owner
    /// @param _tokenId The NFT to transfer
    function transactionFrom(address _from, address _to, uint256 _tokenId) external payable;




    function approve(address _approved, uint256 _tokenId) external payable;

    function setApprovalForAll(address _operator, bool _approved) external;

    function getApproved(uint256 _tokenId) external view returns (address);

    





    

}