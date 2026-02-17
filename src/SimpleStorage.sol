// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18; //stating our solidity version

contract SimpleStorage {
    uint256 myfavoriteNumber;

    struct Person {
        uint256 favoriteNumber;
        string name;
        bool isItCold;
    }

    Person[] public listOfpeople; //[]

    mapping(string => uint256) public nameToFavoriteNumber;

    function store(uint256 _favoriteNumber) public virtual {
        myfavoriteNumber = _favoriteNumber;
    }

    // view, pure
    function retrieve() public view returns (uint256) {
        return myfavoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber, bool _isItCold) public {
        listOfpeople.push(Person(_favoriteNumber, _name, _isItCold));

        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}
//creating a contract named SimpleStorage
