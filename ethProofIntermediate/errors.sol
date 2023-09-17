// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract errors{

    address public student;
    uint public score;
    string public name;

    function setscore(uint _score) public{
        if (_score>101){
            revert("the student's score should be lesser than or equal to 100");
        }
        score = _score ;
    }

    function newname(string memory _name) public{
        require(bytes(_name).length > 4, "the student's name is too short");
            name= _name ;     
        }

    // address 0 = 0x0000000000000000000000000000000000000000
    function newstudent(address _student) public{
        assert( _student!= address(0));
        student = _student ;     
    }

    constructor() {
        student = msg.sender;
        name = 'omac' ; 
    }
}
