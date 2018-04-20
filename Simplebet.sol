pragma solidity ^0.4.0;

contract Simplebet {

    address house;
    
    constructor(address _house) public {
        house = _house;
    }
    
    function bet() public payable {
        
        uint randomvalue = block.timestamp % 2; //This creates a somewhat random value...
        
        if (randomvalue == 1){
            house.transfer(msg.value);
        }
        else{
            msg.sender.transfer(msg.value);
        }
    }



}
