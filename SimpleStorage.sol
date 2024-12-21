//SPDX-License-Identifier:MIT
pragma solidity ^0.8.19;
//parent contract
contract SimpleStorage {
    uint256 public favnum;
    mapping(string=>uint256) public nametofavnum;
    //uint256[] favnums;
    struct Person{
        uint256 favvvno;//its just a number
        string name;
    }
    Person[] public listofPeople;
    // Person public myfriend = Person({favvvno:7,name:"ajay"});
    function store(uint256 _favnum) public virtual {
         favnum = _favnum;
    }
    function retrieve() public view returns(uint256){
        return favnum;
    }
    function addperson(uint256 _favnom,string memory naame) public {
            
             listofPeople.push(Person(_favnom,naame));
             nametofavnum[naame]=_favnom;
    }


}