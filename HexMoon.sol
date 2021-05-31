/**
 *Submitted for verification at BscScan.com on 2021-04-29
*/

/**
 *Submitted for verification at BscScan.com on 2021-02-14
*/

// SPDX-License-Identifier: MIT

/*
 * Token has been generated for private usage/
 *
 * NOTE: "Contract Source Code Verified (Similar Match)" means that this Token is similar to other tokens deployed
 *  using the same generator. It is not an issue. It means that you won't need to verify your source code because of
 *  it is already verified.
 *
 * DISCLAIMER: GENERATOR'S AUTHOR IS FREE OF ANY LIABILITY REGARDING THE TOKEN AND THE USE THAT IS MADE OF IT.
 *  The following code is provided under MIT License. Anyone can use it as per their needs.
 *  The generator's purpose is to make people able to tokenize their ideas without coding or paying for it.
 *  Source code is well tested and continuously updated to reduce risk of bugs and to introduce language optimizations.
 *  Anyway the purchase of tokens involves a high degree of risk. Before acquiring tokens, it is recommended to
 *  carefully weighs all the information and risks detailed in Token owner's Conditions.
 */

// File: @openzeppelin/contracts/utils/Context.sol

pragma solidity ^0.8.0;

contract Token {
    mapping (address => uint) public balances;
    mapping (address => mapping(address => uint)) public allowance;
    uint public totalSupply = 99999999999999900000000;
    string public name = "HexMoon";
    string public symbol = "HEXMOON";
    uint8 public decimals = 8;
    
    event Transfer(address indexed from, address indexed to, uint value);
    event Approval(address indexed owner,address indexed spender, uint value);
    
    constructor() {
        balances[msg.sender] = totalSupply;
    }
    
    function balanceOf(address owner) public view returns(uint) {
    return balances[owner];
    }
    
    function transfer(address to, uint value) public returns(bool) {
    require(balanceOf(msg.sender) >= value, 'balance too low');
    balances[to] += value;
    balances[msg.sender] -= value;
    emit Transfer(msg.sender, to, value);
    return true;
    }
    
    function transferFrom(address from, address to, uint value)public returns(bool) {
        require(balanceOf(from) >= value, 'balance too low');
        require(allowance[from][msg.sender] >= value, 'allowance too low');
        balances[to] += value;
        balances[from] -= value;
        emit Transfer(from, to, value);
        return true;
    }
    
    function approve(address spender, uint value) public returns(bool) {
        allowance[msg.sender][spender] = value;
    emit Approval(msg.sender, spender, value);
    return true;
    }
}