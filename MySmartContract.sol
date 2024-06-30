//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SmartContract {
    uint public value;
    function setPositiveValue(uint _value) external {
        require(_value > 0, "Value must be greater than zero.");
        value = _value;
    }

    function increaseValueWithAssertion(uint _newValue) external {
        uint diff = _newValue - value;
        uint expectedDiff = 100; 
        assert(diff == expectedDiff);
        
        value = _newValue;
    }
    function withdrawWithZeroCheck() external {
        uint amount = value;
        if (amount == 0) {
            revert("Withdraw reverted. Amount is zero.");
        }
        
        value = 0;
    }
}
