// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;



interface IERC20 {
    function name() external view returns (string memory);
    function symbol() external view returns (string memory);
    function decimals() external view returns (uint8);
    function totalSupply() external view returns (uint256);

    function balanceOf(address _owner) external view returns (uint256);
    function transfer(address _to, uint256 _value) external returns (bool);

    function transferFrom(address _from, address _to, uint256 _value) external returns (bool);
    function approve(address _spender, uint256 _value) external returns (bool);
    function allowance(address _owner, address _spender) external view returns (uint256);

    event Transfer(address indexed _from, address indexed _to, uint256 _value);
    event Approval(address indexed _owner, address indexed _spender, uint256 _value);
}


contract omacCoin  is IERC20 {

    string public name = "omacCoin";
    string public symbol = "OC";

    uint8 public decimals = 0;
    uint public totalSupply = 0;

    mapping (address => uint) public balances;
    mapping (address => mapping (address => uint)) public allowances;

    function balanceOf(address _owner) external view returns (uint256) {
        return(balances[_owner]);
    }

    function allowance(address _owner, address _spender) external view returns (uint256) {
        return(allowances[_owner][_spender]);
    }

    function transfer(address _to, uint256 _value) external returns (bool) {
        if (_value > balances[msg.sender]) {
            revert(" you can't transfer an amount of omacCoins you don't have");
        }
        balances[msg.sender] -= _value;
        balances[_to] += _value;
        emit Transfer(msg.sender,_to, _value);
        return true;
    }

    function transferFrom(address _from, address _to, uint256 _value) external returns (bool) {
        if (_value > allowances[_from][msg.sender] ) {
            revert(" you have not been approved to spend omacCoins from the user you provided");
        }
        if (_value > balances[_from]) {
            revert(" the user you provided doesn't have enough omacCoin currently");
        }

        balances[_from] -= _value;
        balances[_to] += _value;
        allowances[_from][msg.sender] -= _value;
        emit Transfer(_from, _to, _value);
        return true;
    }

    function approve(address _spender, uint256 _value) external returns (bool) {
        allowances[msg.sender][_spender] = _value;
        emit Approval(msg.sender, _spender, _value);
        return true;
    }

    function burn (uint256 _value) external returns(bool) {
        if (_value > balances[msg.sender]) {
            revert("you can't burn more omacCoins than you have");
        }
        balances[msg.sender] -= _value;
        totalSupply -= _value;
        return true;
    }

    address public contractOwner;

    constructor() {
        contractOwner= msg.sender;
    }

    function mint(address _recipient, uint256 _value) external returns(bool) {
        require(msg.sender == contractOwner, "only contract owner address can mint omacCoins");
        balances[_recipient] += _value;
        totalSupply += _value;
        return true;
    }

}
