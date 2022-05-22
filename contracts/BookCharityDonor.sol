// SPDX-License-Identifier: GPL-3

pragma solidity ^0.8.14;

// import "../node_modules/hardhat/console.sol";

contract BookCharityDonor {

    address public owner;
    address payable public charity;
    address payable public author;
    uint256 public bookPrice;

    event BookPurchase (
        address indexed _author,
        address indexed _charity
    );

    event AuthorPaid (
        address indexed _author,
        uint _amount
    );

    event CharityDonation (
        address indexed _charity,
        uint _amount
    );

    function setBookPrice(uint256 _amount) external returns (uint256 _value){
        bookPrice = _amount;
        return bookPrice;
    }


    function buyBook(address payable _author, address payable _charity) public payable {
        require(bookPrice == msg.value, "Provide enough funds for Book Purchase");
        require(msg.sender != _charity, "You cannot set yourself as the charity to donate to");
        author = _author;
        charity = _charity;

        emit BookPurchase(_author, _charity);
    }

    function payAuthor() public payable {
        
        require(msg.sender == author);
        
        // console.log(author.balance);
        
        bookPrice = bookPrice -  100000000;
      
        (bool sent, ) = author.call{value: (bookPrice)}("");
        // console.log(msg.value);
        // console.log(author.balance);
        // console.log(bookPrice);
        require(sent, "Failed to send Ether");

        emit AuthorPaid(msg.sender, msg.value);
        
    }

    function donateToCharity() public payable {
        require(msg.sender == author);
        (bool sent, ) = charity.call{value: (1000000000)}("");

        require(sent, "Failed to donate to Charity");

        emit CharityDonation(msg.sender, msg.value);
    }
    
}

