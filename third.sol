// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

/**
 * @title Storage
 * @dev Store & retrieve value in a variable
 * @custom:dev-run-script ./scripts/deploy_with_ethers.ts
 */

 contract My3Contract
 {
    Person [] public people;
    uint256 peoplecount;
    struct Person{
        string _firstname;
        string _lastname;

    }

    function addperson(string memory _firstname,string memory _lastname )public
    {
        people.push(Person(_firstname,_lastname));
    }
 }