//SPDX-License-Identifier:MIT
pragma solidity ^0.8.18;
import {SimpleStorage} from "./SimpleStorage.sol";
contract AddFiveStorage is SimpleStorage {
   function sayHello() public pure returns(string memory) {
    return "Hello";
}
   function store(uint256 _newFavNumber) public override {
       favnum = _newFavNumber + 5;

   }
}