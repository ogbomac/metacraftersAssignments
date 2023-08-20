// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;


contract MyCoin {

    // public variables here
    string public tokenName = "OMACOIN";
    string public tokenAbbrv = "OMC";

    uint public totalSupply = 0;

    // mapping variable here
    mapping (address => uint) public balances;

    // mint function
    function mint(address _person, uint _amount) public {
        totalSupply += _amount;
        balances[_person] += _amount;
    }

    // burn function
    function burn(address _person, uint _amount) public {

        require(balances[_person] >= _amount, "The person should have the number of OMACOINs you want to destroy");

        totalSupply -= _amount;
        balances[_person] -= _amount;
    }

}
