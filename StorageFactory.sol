// SPDX-License-Identifier:MIT
pragma solidity ^0.8.18;

import {SimpleStorage} from "./SimpleStorage.sol";
contract SimpleFactory{
    SimpleStorage[] public listofsimpleStoragecontracts; //ListofSmart contracts

    function createSimpleStorageContract() public { //creating and putting each smart contract into array
        SimpleStorage simplestoragecontractvariable = new SimpleStorage();
        listofsimpleStoragecontracts.push(simplestoragecontractvariable);
    }
    function sfstore(uint _simplestorageindex , uint _simplestoragenumber) public{
        listofsimpleStoragecontracts[_simplestorageindex].store(_simplestoragenumber);
    }
    function sfGet(uint256 _simpleStorageIndex) public view returns (uint256) {
        return listofsimpleStoragecontracts[_simpleStorageIndex].retrieve();
    }
}