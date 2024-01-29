// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

import "@openzeppelin/contracts/access/Ownable.sol"; // Import once

contract My3Contract is Ownable {
    // Constructor (no need to set owner manually as Ownable handles it)
    constructor(address _initialOwner) Ownable(_initialOwner) {
        // Other initialization code if needed
    }

    // Storage for people
    uint256 public peopleCount = 0;
    mapping(uint => Person) public people;

    struct Person {
        uint _id;
        string _firstName;
        string _lastName;
    }

    // Function to add a person (using default onlyOwner from Ownable)
    function addPerson(
        string memory _firstName, string memory _lastName
        )
         public 
        // onlyOwner
        onlyWhileopen
          {
        incrementCount();
        people[peopleCount] = Person(peopleCount, _firstName, _lastName);
           }

    // Internal function to increment people count
    function incrementCount() internal {
        peopleCount += 1;
    }
}

