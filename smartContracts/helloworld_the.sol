pragma solidity ^0.4.19;
contract HelloWorld_The{
    
    /*The idea is to code a Real Hello World Smart Contract.
    So we gone pass a Greeting string from the front-end 
    to be write on BKCH by pay that transaction   
    and this args will react in a private function which 
    trigger an Event passing Hello World & Greetings to front-end
    To sign the book will use a mapping of address with Greetings.
    Will be an public view function to count many logs
    */
    
    uint result=0;
    
    event IntegersAdded (uint x, uint y, uint result);
    
    function added(uint _x, uint _y) public {
         result = _x + _y;
        
        //fire an event to let the app know the function was called;
        IntegersAdded(_x,_y,result);
    }
    
    function yesAdd(string _name)public{
        if (keccak256(_name)!=keccak256('')) added(4,7);
    }
    
    /*function showResult () public view{
        
    }*/
    
}