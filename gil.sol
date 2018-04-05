pragma solidity ^0.4.21;

//simple example of how to create a token, we're going to create a way for people to transfer gil
//to each other. Just keep track of who owns how many gil
//we will use a simple map data structure
// we can come up with any pricing scheme, i.e. doubles after every 1000 minted coins

contract Gil {
    mapping(address => uint) public balances; //a map just takes the data types of the key value pair
    //in this case, the address is the person and the integer is how much money is in the account
    address public owner;
    uint public PRICE = 3000000000000000000; //3 ether in wei... 10^18 wei = 1 eth
    
    function Gil(){
        owner = msg.sender;
    }
    
}
