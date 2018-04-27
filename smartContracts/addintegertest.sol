pragma solidity ^0.4.19;
contract AddIntegerTest{
    
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