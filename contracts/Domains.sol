// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.10;

import "hardhat/console.sol";

contract Domains {

  mapping(string => address) public domains;

  mapping(string => string) public records;

  constructor() {

  }

  function register(string memory _name) public {
    require(domains[_name] == address(0));
    domains[_name] = msg.sender;
  }

  function getAddress(string memory _name) public view {
    domains[_name];
  }

  function setRecord(string memory _name, string memory record) public {
    require(domains[_name] == msg.sender);
    records[_name] = record;
  }

  function getRecord(string calldata name) public view returns(string memory) {
      return records[name];
  }
}
