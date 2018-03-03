pragma solidity ^0.4.19;

contract ERC20Contract {
    
    /*
        Key word glossary:
        
        constant - function cannot change the state variable(s)of a smart contract
        view - alias for constant (ie view only)
        pure - promises to neither modify nor read from the state of a contract
        indexed - allow events to be logged, and searched via the parameters
    */
    
    /* Functinons that need to be implemented */
    
    /* ERC20 specifieed function that acts as a getter for the total number of 
    tokens in circulation*/
    function totalSupply() 
        public constant returns (uint);
    
    /* ERC20 function to return the balance of the token at a given address */
    function balanceOf(address tokenOwner) 
        public constant returns (uint balance);
    
    /*ERC20 function to return the amount of tokens that could be
    transferrred between two addresses */
    function allowance(address tokenOwner, address spender)
        public constant returns(uint remaining);
    
    /*ERC20 function to define an amount of tokens to send to send to the
    given address from the calling address*/
    function transfer(address to, uint tokens) 
        public returns (bool success);
    
    /*ERC20 function used by a given address to approve the transfer of a given 
    token amount*/
    function approve(address spender, uint tokens)
        public returns (bool success);  
    
    /*ERC20 function to transfer a given token amount between two addresses*/
    function transferFrom(address from, address to, uint tokens)
        public returns (bool success);
        
    /* Events related to protocol */
    
    /*An event that is fired to alert client code and the blockchain about a 
    transfer that has taken place. Should be called inside both of transfer and 
    transferFrom*/    
    event Transfer(address indexed from, address indexed to, uint tokens);
    
    event Approval(address indexed tokenOwner, address indexed spender, uint tokens);

}\