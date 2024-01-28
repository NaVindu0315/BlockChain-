// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

/**
 * @title Storage
 * @dev Store & retrieve value in a variable
 * @custom:dev-run-script ./scripts/deploy_with_ethers.ts
 */

 contract My3Contract
 {
    //Person [] public people;

    uint256 public peoplecount = 0;
    mapping (uint=>Person) public people;
    struct Person{
        uint _id;
        string _firstname;
        string _lastname;

    }

    function addperson(string memory _firstname,string memory _lastname )public
    {
        peoplecount +=1;
        people[peoplecount] = Person(peoplecount,_firstname,_lastname);
       // people.push(Person(_firstname,_lastname));
        
    }
 }